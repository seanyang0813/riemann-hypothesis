module

public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.ArithRes
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.PenHost
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.TargetSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.AmpleSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.EqZeroOfSecTraceMulEqZero
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.HSClosing
public import ReciprocityTheory.GeometryOfNumbers.AsymptoticSequences.DefectSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.MoriwakiSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.AMDefs
import Mathlib.Tactic.Linter.Style
import GroundTheory.HeightsAndTheta.Heights.BlockScaling

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry ReciprocityTheory.GeometryOfNumbersTheory Filter Asymptotics MeasureTheory
  Topology

noncomputable section

set_option linter.unusedSectionVars false

section Objects

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]


open Classical in
def genDeg (P : Ideal (MRing ι)) (D : ℕ) (a : K → ℤ) : ℤ :=
  GroundTheory.Heights₂.Heights.NumbersDVR.intNum ℚ (P.map (MvPolynomial.map (Int.castRingHom ℚ))) (fun _ : Fin D => a)

def fibreIdeal {Ω : Type} [Field Ω] (ℓ : ℕ) (y : (Σ k, ι k) → Ω) : Ideal (MRingOver (ZMod ℓ) ι) :=
  (mCoordIdeal y).map (MvPolynomial.map (Int.castRingHom (ZMod ℓ)))

def IsBoundedH {Ω : Type} [Field Ω] (P : Ideal (MRing ι)) (y : (Σ k, ι k) → Ω) (A : HermLine ι) (τ : ℕ)
    (c : ℝ) (s : Ω) : Prop :=
  ∀ (dg dh : K → ℕ) (g h : MRing ι) (z : (Σ k, ι k) → ℂ),
    IsMultiHomog g dg → IsMultiHomog h dh → (∀ k, (dg k : ℤ) = dh k + τ * A.a k) →
    aeval y g = s * aeval y h → z ∈ mcPts P →
    ‖eval z (map (Int.castRingHom ℂ) g)‖ ≤ c * ‖eval z (map (Int.castRingHom ℂ) h)‖ * A.h z ^ τ

def HermLine.zcomb (A B : HermLine ι) (p q : ℤ) : HermLine ι where
  a := p • A.a + q • B.a
  h z := A.h z ^ p * B.h z ^ q
  pos z hz := mul_pos (zpow_pos (A.pos z hz) p) (zpow_pos (B.pos z hz) q)
  smul c z hc := by
    rw [A.smul c z hc, B.smul c z hc, mul_zpow, mul_zpow, ← Finset.prod_zpow, ← Finset.prod_zpow]
    have : ∀ k, (‖c k‖ ^ A.a k) ^ p * (‖c k‖ ^ B.a k) ^ q = ‖c k‖ ^ (p • A.a + q • B.a) k := by
      intro k
      have hck : ‖c k‖ ≠ 0 := norm_ne_zero_iff.mpr (hc k)
      rw [← zpow_mul, ← zpow_mul, ← zpow_add₀ hck]
      simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
      ring_nf
    rw [← Finset.prod_congr rfl fun k _ => this k, Finset.prod_mul_distrib]
    ring

def fsH (ι : K → Type) [∀ k, Fintype (ι k)] : HermLine ι :=
  HermLine.ofMetrics (fun k => fsMetric (ι := ι k)) 1

structure IsSmallGeneratedDatum {Ω : Type} [Field Ω] (P0 : Ideal (MRing ι)) (y : (Σ k, ι k) → Ω) (D : ℕ)
    (A : HermLine ι) : Prop where
  normalForm_baseLattice_le_dualSpan_sup_line : P0 ≤ mCoordIdeal y
  semipos : IsSemipositiveRel P0 (mCoordIdeal y) A
  deg_pos : 0 < genDeg (mCoordIdeal y) D A.a
  gen : ∃ (q : ℕ) (w : Fin q → Ω), (∀ j, w j ∈ chartLat y A.a 1) ∧ KH.GeneratesOn y A.a w ∧
    ∀ j, IsSmallH (mCoordIdeal y) y A 1 (w j)

structure IsNefBigDatum {Ω : Type} [Field Ω] (P0 : Ideal (MRing ι)) (y : (Σ k, ι k) → Ω) (D : ℕ)
    (M : HermLine ι) : Prop where
  normalForm_baseLattice_le_dualSpan_sup_line : P0 ≤ mCoordIdeal y
  semipos : IsSemipositiveRel P0 (mCoordIdeal y) M
  conjInv : IsConjInvariantH M
  nef : NefOnFibres (mCoordIdeal y) M.a
  big : 0 < genDeg (mCoordIdeal y) D M.a

def PtBoundOn {Ω : Type} [Field Ω] (y : (Σ k, ι k) → Ω) (M L' : HermLine ι) (n : ℕ) (U : Set ((Σ k, ι k) → ℂ))
    (c : ℝ) (f f' : Ω) : Prop :=
  ∀ (dg dh dg' dh' : K → ℕ) (g h g' h' : MRing ι),
    IsMultiHomog g dg → IsMultiHomog h dh → (∀ k, (dg k : ℤ) = dh k + n * M.a k) → aeval y g = f * aeval y h →
    IsMultiHomog g' dg' → IsMultiHomog h' dh' → (∀ k, (dg' k : ℤ) = dh' k + n * L'.a k) →
    aeval y g' = f' * aeval y h' → ∀ z ∈ U,
    eval z (map (Int.castRingHom ℂ) h) ≠ 0 → eval z (map (Int.castRingHom ℂ) h') ≠ 0 →
    ‖eval z (map (Int.castRingHom ℂ) g')‖ / (‖eval z (map (Int.castRingHom ℂ) h')‖ * L'.h z ^ n) ≤
      c * (‖eval z (map (Int.castRingHom ℂ) g)‖ / (‖eval z (map (Int.castRingHom ℂ) h)‖ * M.h z ^ n))

def IsBoundedHOver {Ω : Type} [Field Ω] {F : Type} [Field F] [Algebra F Ω] (P : Ideal (MRing ι))
    (y : (Σ k, ι k) → Ω) (A : HermLine ι) (τ : ℕ) (c : (F →+* ℂ) → ℝ) (s : Ω) : Prop :=
  ∀ (sg : F →+* ℂ) (dg dh : K → ℕ) (g h : MRing ι) (z : (Σ k, ι k) → ℂ),
    IsMultiHomog g dg → IsMultiHomog h dh → (∀ k, (dg k : ℤ) = dh k + τ * A.a k) →
    aeval y g = s * aeval y h → z ∈ mcPts P → LiesOver y sg z →
    ‖eval z (map (Int.castRingHom ℂ) g)‖ ≤ c sg * ‖eval z (map (Int.castRingHom ℂ) h)‖ * A.h z ^ τ

end Objects

theorem coordIdeal_eq_mCoordIdeal {Ω : Type} [Field Ω] {κ : Type} [Fintype κ] (x : Ix κ → Ω) : coordIdeal ℤ x = mCoordIdeal (ι := GlobalTheory κ) x := by
  have key : ((MvPolynomial.uniqueAlgEquiv Ω Unit).toAlgHom.restrictScalars ℤ).comp
      (mConeMap (ι := GlobalTheory κ) x) = coneMap ℤ x := by
    apply MvPolynomial.algHom_ext
    intro p
    simp [mConeMap, coneMap]
  ext f
  show f ∈ RingHom.ker (coneMap ℤ x) ↔ f ∈ RingHom.ker (mConeMap (ι := GlobalTheory κ) x)
  rw [RingHom.mem_ker, RingHom.mem_ker, ← key]
  exact map_eq_zero_iff _ (MvPolynomial.uniqueAlgEquiv Ω Unit).injective

section OneBlock

variable {Ω : Type} [Field Ω] [CharZero Ω] {κ : Type} [Fintype κ]

def latLogIndex (x x' : Ix κ → Ω) (n : ℕ) : ℝ :=
  Real.log ((sec ℤ x n).toAddSubgroup.relIndex (sec ℤ x' n).toAddSubgroup) -
    Real.log ((sec ℤ x' n).toAddSubgroup.relIndex (sec ℤ x n).toAddSubgroup)

end OneBlock

section BlockBirationality

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]

def BlockBirational (y : (Σ k, ι k) → Ω) (k₀ : K) : Prop :=
  ∀ (d : K → ℕ) (g h : MRing ι), IsMultiHomog g d → IsMultiHomog h d → aeval y h ≠ 0 →
    ∃ (n : ℕ) (g' h' : MRing ι), IsMultiHomog g' (blockDeg k₀ n) ∧ IsMultiHomog h' (blockDeg k₀ n) ∧
      aeval y h' ≠ 0 ∧ aeval y g * aeval y h' = aeval y g' * aeval y h

end BlockBirationality



structure HSMBlockDatum (D : ℕ) (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
    (Ω : Type) [Field Ω] [CharZero Ω] where

  y : (Σ k, ι k) → Ω

  k₀ : K

  A : HermLine ι

  P0 : Ideal (MRing ι)

  J : Ideal (MRing ι)

  R : AnRes (mCoordIdeal y) J D
  [meas : MeasurableSpace R.X]
  [borel : BorelSpace R.X]

  dV : Measure R.X
  one_le : 1 ≤ D
  arith : IsArithVar (mCoordIdeal y) (D + 1)
  birat : BlockBirational y k₀
  deg : A.a = unitDeg k₀
  conjInv : IsConjInvariantH A
  normalForm_baseLattice_le_dualSpan_sup_line : P0 ≤ mCoordIdeal y

  semipos : IsSemipositiveRel P0 (mCoordIdeal y) A
  vol : IsSmoothVolume R.A dV

attribute [instance] HSMBlockDatum.meas HSMBlockDatum.borel

section Block

variable {D : ℕ} {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {Ω : Type} [Field Ω] [CharZero Ω]

def blockPt (d : HSMBlockDatum D K ι Ω) (x : d.R.X) : (Σ k, ι k) → ℂ := d.R.lift x x

def pairValH (A : HermLine ι) (n : ℕ) (b b' : MvPolynomial (Σ k, ι k) ℚ) (z : (Σ k, ι k) → ℂ) : ℂ :=
  eval z (map (algebraMap ℚ ℂ) b) * starRingEnd ℂ (eval z (map (algebraMap ℚ ℂ) b')) /
    ((A.h z ^ (2 * n) : ℝ) : ℂ)

def blockGram (d : HSMBlockDatum D K ι Ω) (n : ℕ) {r : ℕ} (b : Fin r → MvPolynomial (Σ k, ι k) ℚ) :
    Matrix (Fin r) (Fin r) ℝ :=
  fun k l => (1 / 2) * ((∫ x, pairValH d.A n (b k) (b l) (blockPt d x) ∂d.dV).re +
    (∫ x, pairValH d.A n (b k) (b l) (conjPt (blockPt d x)) ∂d.dV).re)


open Classical in
def blockChi (d : HSMBlockDatum D K ι Ω) (n : ℕ) : ℝ :=
  if h : ∃ p : (Σ r : ℕ, Fin r → MvPolynomial (Σ k, ι k) ℚ), IsSecBasisM d.y d.k₀ n p.2 then
    -(1 / 2) * Real.log (blockGram d n h.choose.2).det
  else 0

def blockL2Norm (d : HSMBlockDatum D K ι Ω) (n : ℕ) (f : MRing ι) : ℝ :=
  Real.sqrt ((1 / 2) *
    ((∫ x, (‖eval (blockPt d x) (map (Int.castRingHom ℂ) f)‖ / d.A.h (blockPt d x) ^ n) ^ 2 ∂d.dV) +
      ∫ x, (‖eval (conjPt (blockPt d x)) (map (Int.castRingHom ℂ) f)‖ /
        d.A.h (conjPt (blockPt d x)) ^ n) ^ 2 ∂d.dV))

end Block

def ChangeOfLattice.Statement : Prop :=
  ∀ (D : ℕ) (Ω : Type) [Field Ω] [CharZero Ω] (κ : Type) [Fintype κ] (I : AllFam) (x : Ix κ → Ω)
    (B : Matrix (Ix κ) (Ix κ) ℚ) (m m' : ConeMetric ℂ (Ix κ)),
    I.IsFamily → IsArithVar (ι := GlobalTheory κ) (coordIdeal ℤ x) (D + 1) → LinearIndependent ℤ x → IsInvMat B →
    IsSmoothMetric m → (∀ z, m'.ρ (matActC B z) = m.ρ z) →
    (fun n : ℕ => latLogIndex x (matAct B x) n -
        (top I (matAct B x) m' D - top I x m D) * (n : ℝ) ^ (D + 1) / ((D + 1).factorial : ℝ))
      =O[atTop] fun n : ℕ => (n : ℝ) ^ D

def ProjectionBounds.Statement : Prop :=
  ∀ (D : ℕ) (Ω : Type) [Field Ω] [CharZero Ω] (κ : Type) [Fintype κ] (d : HSMDatum D Ω κ)
    (e : Fin (D + 1) → Ix κ),
    IsProjFrame d.x e → IsPullFS d.x e d.m →
    ∃ (k : ℕ) (E : Fin (projDeg d.x e) → MvPolynomial (Ix κ) ℤ) (C : ℝ),
      (∀ l, (E l).IsHomogeneous k) ∧
      LinearIndependent (fnField (d.x ∘ e)) (fun l => aeval d.x (E l)) ∧
      (∀ (n : ℕ) (s : Ω) (l : Fin (projDeg d.x e)), s ∈ sec ℤ d.x n →
        secTrace d.x e (n + k) (s * aeval d.x (E l)) ∈ sec ℤ (d.x ∘ e) (n + k)) ∧
      (∀ (n : ℕ) (s : Ω), s ∈ sec ℤ d.x n →
        (∀ l, secTrace d.x e (n + k) (s * aeval d.x (E l)) = 0) → s = 0) ∧
      (∀ n : ℕ, |(Module.finrank ℤ (sec ℤ d.x n) : ℝ) - (projDeg d.x e : ℝ) * (n : ℝ) ^ D / (D.factorial : ℝ)| ≤
        C * ((n : ℝ) + 1) ^ (D - 1)) ∧
      (∀ (n : ℕ) (f : MvPolynomial (Ix κ) ℤ) (g : MvPolynomial (Fin (D + 1)) ℤ) (l : Fin (projDeg d.x e))
          (c : ℝ),
        f.IsHomogeneous n → g.IsHomogeneous (n + k) →
        aeval (d.x ∘ e) g = secTrace d.x e (n + k) (aeval d.x f * aeval d.x (E l)) →
        (∀ z ∈ pts (coordIdeal ℤ d.x), ptNorm d.m (Int.castRingHom ℂ) n f z ≤ c) →
        ∀ t : Fin (D + 1) → ℂ, t ≠ 0 →
          ptNorm (fsMetric (ι := Fin (D + 1))) (Int.castRingHom ℂ) (n + k) g t ≤ C * c) ∧
      (∀ (n : ℕ) (Q : Fin (projDeg d.x e) → MvPolynomial (Fin (D + 1)) ℤ) (c : Fin (projDeg d.x e) → ℝ),
        k ≤ n → (∀ l, (Q l).IsHomogeneous (n - k)) →
        (∀ l, ∀ t : Fin (D + 1) → ℂ, t ≠ 0 →
          ptNorm (fsMetric (ι := Fin (D + 1))) (Int.castRingHom ℂ) (n - k) (Q l) t ≤ c l) →
        ∀ z ∈ pts (coordIdeal ℤ d.x),
          ptNorm d.m (Int.castRingHom ℂ) n (∑ l, rename e (Q l) * E l) z ≤ C * ∑ l, c l) ∧
      (∀ n : ℕ, k + 1 ≤ n →
        (projDeg d.x e : ℝ) * chiP D (n - k) - C * (n : ℝ) ^ D * Real.log (n + 1) ≤ resChi d n ∧
        resChi d n ≤ (projDeg d.x e : ℝ) * chiP D (n + k) + C * (n : ℝ) ^ D * Real.log (n + 1))

def ReductionToProjective.Statement : Prop :=
  ∀ (D : ℕ) (Ω : Type) [Field Ω] [CharZero Ω] (κ : Type) [Fintype κ] (I : AllFam) (d : HSMDatum D Ω κ),
    I.IsFamily →
    (∀ e : Fin (D + 1) → Ix κ, IsProjFrame d.x e → IsPullFS d.x e d.m →
      (fun n => hsDefect D (resChi d) (top I d.x d.m D) n -
          (projDeg d.x e : ℝ) * hsDefect D (chiP D) (hhOf I D) n)
        =O[atTop] fun n : ℕ => (n : ℝ) ^ D * Real.log ((n : ℝ) + 1)) ∧
    (fun n => hsDefect D (resChi d) (top I d.x d.m D) n -
        (genDeg (ι := GlobalTheory κ) (coordIdeal ℤ d.x) D 1 : ℝ) * hsDefect D (chiP D) (hhOf I D) n) =o[atTop] pw D

def HilbertSamuelProjective.Statement : Prop :=
  ∀ (D : ℕ) (I : AllFam), I.IsFamily → hsDefect D (chiP D) (hhOf I D) =o[atTop] pw D

def TheoremHSMBlock.Statement : Prop :=
  ∀ (D : ℕ) (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω]
    [CharZero Ω] (I : AllFam) (d : HSMBlockDatum D K ι Ω),
    I.IsFamily →
    hsDefect D (blockChi d) (I K ι (mCoordIdeal d.y) (D + 1) fun _ => d.A) =o[atTop] pw D ∧
    ∃ C : ℝ, ∀ n : ℕ, 1 ≤ n → ∀ f : MRing ι, IsMultiHomog f (blockDeg d.k₀ n) →
      ∀ z ∈ mcPts (mCoordIdeal d.y),
        ‖eval z (map (Int.castRingHom ℂ) f)‖ / d.A.h z ^ n ≤ C * (n : ℝ) ^ ((D : ℝ) / 2) * blockL2Norm d n f

def G1.Statement : Prop := ArithmeticIntersectionNonneg

def SuccessiveMinimaSpan.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] [CharZero Ω]
    (y : (Σ k, ι k) → Ω) (D : ℕ) (A : HermLine ι) (P0 : Ideal (MRing ι)),
    1 ≤ D → IsArithVar (mCoordIdeal y) (D + 1) → Birational y → IsSmallGeneratedDatum P0 y D A →
    ∃ C : ℝ, ∀ n : ℕ,
      AddSubgroup.closure {s | s ∈ chartLat y A.a n ∧ IsBoundedH (mCoordIdeal y) y A n C s} = chartLat y A.a n

def G2.Statement : Prop :=
  ∀ (K : Type) [Fintype K] [LinearOrder K] (ι : K → Type) [∀ k, Fintype (ι k)] [∀ k, LinearOrder (ι k)]
    (Ω : Type) [Field Ω] [CharZero Ω] (y : (Σ k, ι k) → Ω) (D : ℕ) (M : HermLine ι)
    (P0 : Ideal (MRing ι)) (II : IntersectionSystem),
    1 ≤ D → IsIntersectionSystem II → IsArithVar (mCoordIdeal y) (D + 1) → Birational y →
    IsNefBigDatum P0 y D M →
    ∃ (k : ℕ) (e : Ω) (C : ℝ), 1 ≤ k ∧ 0 ≤ C ∧ e ≠ 0 ∧ e ∈ chartLat y ((k : ℤ) • M.a - 1) 1 ∧
      IsBoundedH (mCoordIdeal y) y (HermLine.zcomb M (fsH ι) k (-1)) 1 (Real.exp C) e ∧
      (∀ p q : ℕ, 0 < p → k * p < q →
        IsSemipositiveRel P0 (mCoordIdeal y) (HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p) ∧
        IsConjInvariantH (HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p) ∧
        KH.AmpleV ℚ (KH.genIdeal y) (HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p).a ∧
        (∀ ℓ : ℕ, ℓ.Prime →
          KH.AmpleV (ZMod ℓ) (fibreIdeal ℓ y) (HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p).a) ∧
        ∀ (n : ℕ) (s : Ω), s ∈ chartLat y (HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p).a n →
          s * e ^ (p * n) ∈ chartLat y M.a (q * n) ∧
          ∀ c : ℝ, IsBoundedH (mCoordIdeal y) y (HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p) n c s →
            IsBoundedH (mCoordIdeal y) y M (q * n) (c * Real.exp ((p * n : ℕ) * C)) (s * e ^ (p * n))) ∧
      ∀ ε : ℝ, 0 < ε → ∃ δ : ℝ, 0 < δ ∧ ∀ p q : ℕ, 0 < p → 0 < q → (p : ℝ) / q < δ →
        |II K ι (mCoordIdeal y) (D + 1) (fun _ => HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p) /
            (q : ℝ) ^ (D + 1) - II K ι (mCoordIdeal y) (D + 1) (fun _ => M)| < ε ∧
        |(genDeg (mCoordIdeal y) D (HermLine.zcomb M (fsH ι) ((q : ℤ) - k * p) p).a : ℝ) / (q : ℝ) ^ D -
            genDeg (mCoordIdeal y) D M.a| < ε

def G3.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] [CharZero Ω]
    (y : (Σ k, ι k) → Ω) (D : ℕ) (M L' : HermLine ι) (P0 P0' : Ideal (MRing ι)) (II : IntersectionSystem)
    (a : ℕ) (iota : ℕ → Ω →+ Ω),
    1 ≤ D → IsIntersectionSystem II → IsArithVar (mCoordIdeal y) (D + 1) → Birational y →
    IsNefBigDatum P0 y D M → IsSmallGeneratedDatum P0' y D L' → IsConjInvariantH L' → 1 ≤ a →
    (∀ n, a ∣ n → Set.InjOn (iota n) (chartLat y M.a n) ∧
      Set.MapsTo (iota n) (chartLat y M.a n) (chartLat y L'.a n)) →
    (∀ η : ℝ, 0 < η → ∃ (n₀ : ℕ) (O : Set ((Σ k, ι k) → ℂ)), IsOpen O ∧
      mcPts (mCoordIdeal y) ⊆ closure (O ∩ mcPts (mCoordIdeal y)) ∧
      ∀ n, n₀ ≤ n → a ∣ n → ∀ f ∈ chartLat y M.a n,
        PtBoundOn y M L' n (O ∩ mcPts (mCoordIdeal y)) (Real.exp (n * η)) f (iota n f)) →
    II K ι (mCoordIdeal y) (D + 1) (fun _ => M) ≤ II K ι (mCoordIdeal y) (D + 1) (fun _ => L')

def ArithmeticVolumeMultiplicative.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] [CharZero Ω]
    (F : Type) [Field F] [NumberField F] [Algebra F Ω]
    (y : (Σ k, ι k) → Ω) (D : ℕ) (M L : HermLine ι) (P0 P0' : Ideal (MRing ι)) (II : IntersectionSystem)
    (a : ℕ) (iota : ℕ → Ω →+ Ω) (Λ t : (F →+* ℂ) → ℝ),
    1 ≤ D → IsIntersectionSystem II → IsArithVar (mCoordIdeal y) (D + 1) → Birational y →
    IsNefBigDatum P0 y D M → P0' ≤ mCoordIdeal y → IsSemipositiveRel P0' (mCoordIdeal y) L →
    IsConjInvariantH L → 0 < genDeg (mCoordIdeal y) D L.a →
    (∀ z ∈ mcPts (mCoordIdeal y), ∃! sg : F →+* ℂ, LiesOver y sg z) →
    (∀ sg, 0 < Λ sg) → (∀ sg, Λ (NumberField.ComplexEmbedding.conjugate sg) = Λ sg) →
    (∀ sg, t (NumberField.ComplexEmbedding.conjugate sg) = t sg) →
    (∃ (q : ℕ) (w : Fin q → Ω), (∀ j, w j ∈ chartLat y L.a 1) ∧ KH.GeneratesOn y L.a w ∧
      ∀ j, IsBoundedHOver (mCoordIdeal y) y L 1 Λ (w j)) →
    ∑ sg, Real.log (Λ sg) ≤ ∑ sg, t sg → 1 ≤ a →
    (∀ n, a ∣ n → Set.InjOn (iota n) (chartLat y M.a n) ∧
      Set.MapsTo (iota n) (chartLat y M.a n) (chartLat y L.a n) ∧
      ∀ (θ : F) (f : Ω), iota n (algebraMap F Ω θ * f) = algebraMap F Ω θ * iota n f) →
    (∀ η : ℝ, 0 < η → ∃ (n₀ : ℕ) (O : Set ((Σ k, ι k) → ℂ)), IsOpen O ∧
      mcPts (mCoordIdeal y) ⊆ closure (O ∩ mcPts (mCoordIdeal y)) ∧
      ∀ n, n₀ ≤ n → a ∣ n → ∀ f ∈ chartLat y M.a n, ∀ sg : F →+* ℂ,
        PtBoundOn y M L n (O ∩ mcPts (mCoordIdeal y) ∩ {z | LiesOver y sg z})
          (Real.exp (n * (t sg + η))) f (iota n f)) →
    II K ι (mCoordIdeal y) (D + 1) (fun _ => M) ≤
      II K ι (mCoordIdeal y) (D + 1) (fun _ => L) +
        ((D + 1 : ℕ) : ℝ) * genDeg (mCoordIdeal y) D L.a * ((∑ sg, t sg) / Fintype.card (F →+* ℂ))

def G4.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] [CharZero Ω]
    (y : (Σ k, ι k) → Ω) (D : ℕ) (M : HermLine ι) (P0 : Ideal (MRing ι)) (II : IntersectionSystem),
    1 ≤ D → IsIntersectionSystem II → IsArithVar (mCoordIdeal y) (D + 1) → Birational y →
    IsNefBigDatum P0 y D M → 0 < II K ι (mCoordIdeal y) (D + 1) (fun _ => M) →
    ∃ (n : ℕ) (s : Ω), 1 ≤ n ∧ s ∈ chartLat y M.a n ∧ s ≠ 0 ∧
      ∃ c : ℝ, c < 1 ∧ IsBoundedH (mCoordIdeal y) y M n c s

def G5.Statement : Prop := SuccessiveMinimaLowerBound

def G6.StatementB : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] [CharZero Ω]
    (y : (Σ k, ι k) → Ω) (D : ℕ) (M : HermLine ι) (P0 : Ideal (MRing ι)) (II : IntersectionSystem),
    1 ≤ D → IsIntersectionSystem II → IsArithVar (mCoordIdeal y) (D + 1) → Birational y →
    IsNefBigDatum P0 y D M →
    II K ι (mCoordIdeal y) (D + 1) (fun _ => M) ≤ arVolP (IsSmallH (mCoordIdeal y) y M) (chartLat y M.a) 1 D

def ArithmeticVolumeBig.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω]
    (y : (Σ k, ι k) → Ω) (D : ℕ) (A : HermLine ι) (P0 : Ideal (MRing ι)) (II : IntersectionSystem),
    1 ≤ D → IsIntersectionSystem II → IsArithVar (mCoordIdeal y) (D + 1) → Birational y →
    P0 ≤ mCoordIdeal y → IsSemipositiveRel P0 (mCoordIdeal y) A → NefOnFibres (mCoordIdeal y) A.a →
    IsConjInvariantH A →
    II K ι (mCoordIdeal y) (D + 1) (fun _ => A) ≤ arVolP (IsSmallH (mCoordIdeal y) y A) (chartLat y A.a) 1 D

def NefOnGenericOfSemipos.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (P P0 : Ideal (MRing ι)) (A : HermLine ι),
    P0 ≤ P → IsSemipositiveRel P0 P A → NefOnGeneric P A

theorem ArithmeticVolumeBig.of_moriwakiBig (hN : NefOnGenericOfSemipos.Statement) (hM : MoriwakiBigStatement) :
    ArithmeticVolumeBig.Statement := by
  intro K _ ι _ Ω _ y D A P0 II _ hII har hb hP0 hs hnef hc
  exact hM K ι Ω y D A P0 II hII har hb hP0 hs hc hnef (hN K ι _ P0 A hP0 hs)

theorem ArithmeticVolumeBig.arithmeticVolumeBig_smoothFibre (h : ArithmeticVolumeBig.Statement) : ArithmeticVolumeLowerBound := by
  intro K _ ι _ Ω _ _ y D A II hD hII har hb _ hs hnef hc
  exact h K ι Ω y D A (mCoordIdeal y) II hD hII har hb le_rfl hs hnef hc

def G7.Statement : Prop :=
  ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] [CharZero Ω]
    (y : (Σ k, ι k) → Ω) (D : ℕ) (A : HermLine ι) (P0 : Ideal (MRing ι)) (II : IntersectionSystem),
    1 ≤ D → IsIntersectionSystem II → IsArithVar (mCoordIdeal y) (D + 1) → Birational y →
    IsSmallGeneratedDatum P0 y D A → IsConjInvariantH A →
    limsup (fun n : ℕ => smallSectionCount (IsSmallH (mCoordIdeal y) y A) (chartLat y A.a) n /
        ((n : ℝ) ^ (D + 1) / ((D + 1).factorial : ℝ))) atTop ≤
      II K ι (mCoordIdeal y) (D + 1) (fun _ => A)

def ArithmeticVolumeNef.Statement : Prop := ArithmeticHilbertSamuelUpperBound

def ArithmeticVolumeNefDual.Statement : Prop := ArithmeticHilbertSamuelUpperBoundNumberField

namespace ProjLine

theorem mConeMap_eq_of_isMultiHomog {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {Ω : Type} [Field Ω] (y : (Σ k, ι k) → Ω) {f : MRing ι} {d : K → ℕ} (hf : IsMultiHomog f d) :
    mConeMap y f = MvPolynomial.C (aeval y f) * ∏ k, MvPolynomial.X k ^ d k :=
  BlockScaling.aeval_cone_block y hf

theorem geoNum_zero_nonneg {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (V : Ideal (MRing ι))
    (a : Fin 0 → K → ℤ) : 0 ≤ geoNum 0 V a := by
  unfold geoNum
  split_ifs <;> positivity

theorem nefOnFibres_of_nonneg {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (P : Ideal (MRing ι))
    (a : K → ℤ) (ha : ∀ k, 0 ≤ a k) : NefOnFibres P a := by
  intro W _ _ _ _
  rw [geoNum]
  split_ifs with h
  · refine Finset.sum_nonneg fun k _ => mul_nonneg (ha k) ?_
    exact finsum_nonneg fun W' => finsum_nonneg fun _ =>
      mul_nonneg (Nat.cast_nonneg _) (geoNum_zero_nonneg _ _)
  · exact le_rfl

end ProjLine

section Inhabitants

open ProjLine

end Inhabitants

end

end GroundTheory.Heights₂.Heights.HilbertSamuel

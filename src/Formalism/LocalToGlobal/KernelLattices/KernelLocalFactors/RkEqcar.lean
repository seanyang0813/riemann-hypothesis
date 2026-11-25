module

public import Formalism.LocalToGlobal.KernelLattices.ThDistC
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThIndEqAmbOfOf
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.ConjHSymmApply
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.AlternatingFormStandardHermitian
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.KerEquivGen
public import Formalism.LocalToGlobal.KernelLattices.ThEquiv
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkThind
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.SelfDualFourfoldCurveIdealLattice
public import Formalism.LocalToGlobal.KernelLattices.ColInst
public import Formalism.LocalToGlobal.KernelLattices.ColumnData
public import Formalism.LocalToGlobal.KernelLattices.MuProd
public import Formalism.LocalToGlobal.KernelLattices.RatKDeg
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.AmbOfENeSd
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SplitPairOfGen
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkConj
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOfTiesD
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.TripleEighthProof
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPStepCIff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MLConjTranspose, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MemHalfBOEquiv, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkThindEq, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkEqcar

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MLConjTranspose =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MLConjTranspose", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ThDistC\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThIndEqAmbOfOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.Ker.TI

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker
open Formalism.L2.Th1.H (IsIsom imgLat)

section Mat

variable {E : Type} [Field E] {ι : Type} (emb : ι → E →+* ℂ)

def mL {n m : ℕ} (f : Sp E n →ₗ[E] Sp E m) (τ : ι) : Matrix (Fin m) (Fin n) ℂ :=
  Matrix.of fun i k => emb τ (f (Pi.single k 1) i)

theorem mL_apply {n m : ℕ} (f : Sp E n →ₗ[E] Sp E m) (τ : ι) (i : Fin m) (k : Fin n) :
    mL emb f τ i k = emb τ (f (Pi.single k 1) i) := rfl

theorem lin_apply_eq_sum {n m : ℕ} (f : Sp E n →ₗ[E] Sp E m) (v : Sp E n) (i : Fin m) :
    f v i = ∑ k, v k * f (Pi.single k 1) i := by
  classical
  have h := LinearMap.pi_apply_eq_sum_univ f v
  have e : ∀ k : Fin n, (fun j => if k = j then (1 : E) else 0) = Pi.single k 1 := by
    intro k; funext j; simp [Pi.single_apply, eq_comm]
  rw [h, Finset.sum_apply]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [e k, Pi.smul_apply, smul_eq_mul]

theorem mL_comp {n m l : ℕ} (f : Sp E m →ₗ[E] Sp E l) (g : Sp E n →ₗ[E] Sp E m) (τ : ι) :
    mL emb (f ∘ₗ g) τ = mL emb f τ * mL emb g τ := by
  ext i j

  rw [Matrix.mul_apply, mL_apply, LinearMap.comp_apply, lin_apply_eq_sum f (g (Pi.single j 1)) i, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_mul, mul_comm]
  rfl

theorem mL_id {n : ℕ} (τ : ι) : mL emb (LinearMap.id : Sp E n →ₗ[E] Sp E n) τ = 1 := by
  classical
  ext i j
  rw [mL_apply, LinearMap.id_apply, Matrix.one_apply, Pi.single_apply]
  split_ifs <;> simp

theorem mL_equiv {n : ℕ} (g : Sp E n ≃ₗ[E] Sp E n) (τ : ι) : mL emb g.toLinearMap τ * mL emb g.symm.toLinearMap τ = 1 := by
  rw [← mL_comp]
  have : g.toLinearMap ∘ₗ g.symm.toLinearMap = LinearMap.id := by ext v i; simp
  rw [this, mL_id]

theorem mL_equiv' {n : ℕ} (g : Sp E n ≃ₗ[E] Sp E n) (τ : ι) : mL emb g.symm.toLinearMap τ * mL emb g.toLinearMap τ = 1 := by
  rw [← mL_comp]
  have : g.symm.toLinearMap ∘ₗ g.toLinearMap = LinearMap.id := by ext v i; simp
  rw [this, mL_id]

end Mat

section Unit

variable {E : Type} [Field E] [NumberField E] [StarRing E] {ι : Type} (emb : ι → E →+* ℂ)

theorem mL_conjTranspose (hst : ∀ τ x, emb τ (star x) = star (emb τ x)) {n : ℕ} (γ : UF E n) (τ : ι) :
    (mL emb γ.1.toLinearMap τ).conjTranspose = mL emb γ.1.symm.toLinearMap τ := by
  ext i k
  rw [Matrix.conjTranspose_apply, mL_apply, mL_apply, LinearEquiv.coe_coe, LinearEquiv.coe_coe, TE.ufInv_apply γ i k, hst]

end Unit

section RVdef

variable {X : Fields} (A : Amb X) {a b : ℕ}

abbrev zM (z : VCx X.Tau a b) (τ : X.Tau) : Matrix (Fin b) (Fin a) ℂ := Matrix.of (z τ)

def mulM (h : X.Tau → Matrix (Fin b) (Fin b) ℂ) (g : X.Tau → Matrix (Fin a) (Fin a) ℂ) (z : VCx X.Tau a b) : VCx X.Tau a b :=
  fun τ => Matrix.of.symm (h τ * zM z τ * g τ)

theorem zM_mulM (h : X.Tau → Matrix (Fin b) (Fin b) ℂ) (g : X.Tau → Matrix (Fin a) (Fin a) ℂ) (z : VCx X.Tau a b) (τ : X.Tau) :
    zM (mulM h g z) τ = h τ * zM z τ * g τ := by
  ext i j
  rfl

theorem mulM_apply (h : X.Tau → Matrix (Fin b) (Fin b) ℂ) (g : X.Tau → Matrix (Fin a) (Fin a) ℂ) (z : VCx X.Tau a b) (τ : X.Tau) (i : Fin b) (j : Fin a) :
    mulM h g z τ i j = (h τ * zM z τ * g τ) i j := rfl

theorem mulM_mulM (h h' : X.Tau → Matrix (Fin b) (Fin b) ℂ) (g g' : X.Tau → Matrix (Fin a) (Fin a) ℂ) (z : VCx X.Tau a b) :
    mulM h g (mulM h' g' z) = mulM (fun τ => h τ * h' τ) (fun τ => g' τ * g τ) z := by
  funext τ
  simp only [mulM, zM_mulM, Matrix.mul_assoc]

theorem mulM_one (z : VCx X.Tau a b) : mulM (fun _ => (1 : Matrix (Fin b) (Fin b) ℂ)) (fun _ => (1 : Matrix (Fin a) (Fin a) ℂ)) z = z := by
  funext τ
  simp [mulM, zM]

def RV (γ : UF X.E a) (γ' : UF X.E b) : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b where
  toFun := mulM (mL (X.embC A.σ₀) γ'.1.toLinearMap) (mL (X.embC A.σ₀) γ.1.symm.toLinearMap)
  invFun := mulM (mL (X.embC A.σ₀) γ'.1.symm.toLinearMap) (mL (X.embC A.σ₀) γ.1.toLinearMap)
  map_add' z w := by
    funext τ i j
    rw [Pi.add_apply, Pi.add_apply, Pi.add_apply, mulM_apply, mulM_apply, mulM_apply]
    have e : zM (z + w) τ = zM z τ + zM w τ := rfl
    rw [e, Matrix.mul_add, Matrix.add_mul, Matrix.add_apply]
  map_smul' c z := by
    funext τ i j
    rw [Pi.smul_apply, Pi.smul_apply, Pi.smul_apply, mulM_apply, mulM_apply, RingHom.id_apply]
    have e : zM (c • z) τ = c • zM z τ := rfl
    rw [e, Matrix.mul_smul, Matrix.smul_mul, Matrix.smul_apply]
  left_inv z := by
    show mulM _ _ (mulM _ _ z) = z
    rw [mulM_mulM]
    simp only [mL_equiv']
    exact mulM_one z
  right_inv z := by
    show mulM _ _ (mulM _ _ z) = z
    rw [mulM_mulM]
    simp only [mL_equiv]
    exact mulM_one z

theorem RV_apply (γ : UF X.E a) (γ' : UF X.E b) (z : VCx X.Tau a b) :
    RV A γ γ' z = mulM (mL (X.embC A.σ₀) γ'.1.toLinearMap) (mL (X.embC A.σ₀) γ.1.symm.toLinearMap) z := rfl

theorem RV_symm_apply (γ : UF X.E a) (γ' : UF X.E b) (z : VCx X.Tau a b) : (RV A γ γ').symm z = A.pullV a b γ.1 γ'.1 z := by
  show mulM _ _ z = _
  funext τ i j
  simp only [mulM, zM, Amb.pullV, Matrix.mul_apply, Matrix.of_apply, Matrix.of_symm_apply, mL_apply, Finset.sum_mul]
  rw [Finset.sum_comm]
  rfl

theorem RV_embH (γ : UF X.E a) (γ' : UF X.E b) (y : HomE X.E a b) :
    RV A γ γ' (embH (X.embC A.σ₀) A.δ y) = embH (X.embC A.σ₀) A.δ (γ'.1.toLinearMap ∘ₗ y ∘ₗ γ.1.symm.toLinearMap) := by
  have e : ∀ τ, zM (embH (X.embC A.σ₀) A.δ y) τ = A.δ • mL (X.embC A.σ₀) y τ := by
    intro τ; ext i j; simp [zM, embH, mL_apply]
  funext τ i j
  rw [RV_apply, mulM_apply, e, Matrix.mul_smul, Matrix.smul_mul, ← mL_comp, ← mL_comp, Matrix.smul_apply, mL_apply, smul_eq_mul]
  rfl

end RVdef

section Iso

variable {X : Fields} (A : Amb X) {a b : ℕ}

theorem HV_eq_trace (sc : ℝ) (z w : VCx X.Tau a b) :
    HV sc z w = (sc : ℂ) * ∑ τ, (zM z τ * (zM w τ).conjTranspose).trace := by
  show (sc : ℂ) * ∑ τ, ∑ i, ∑ j, z τ i j * (starRingEnd ℂ) (w τ i j) = _
  congr 1

theorem isIsom_RV (hst : ∀ τ x, X.embC A.σ₀ τ (star x) = star (X.embC A.σ₀ τ x)) (γ : UF X.E a) (γ' : UF X.E b) :
    IsIsom (HV A.sc) (HV A.sc) (RV A γ γ' : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) := by
  intro z w
  show HV A.sc (RV A γ γ' z) (RV A γ γ' w) = HV A.sc z w
  rw [HV_eq_trace, HV_eq_trace]
  congr 1
  refine Finset.sum_congr rfl fun τ _ => ?_
  simp only [RV_apply, zM_mulM, Matrix.conjTranspose_mul]
  set P := mL (X.embC A.σ₀) γ'.1.toLinearMap τ
  set Q := mL (X.embC A.σ₀) γ.1.symm.toLinearMap τ
  have hP : P.conjTranspose * P = 1 := by
    rw [mL_conjTranspose _ hst γ' τ]; exact mL_equiv' _ γ'.1 τ
  have hQ : Q * Q.conjTranspose = 1 := by
    have h1 := mL_conjTranspose _ hst γ τ
    have h2 : Q.conjTranspose = mL (X.embC A.σ₀) γ.1.toLinearMap τ := by
      show (mL (X.embC A.σ₀) γ.1.symm.toLinearMap τ).conjTranspose = _
      rw [← h1, Matrix.conjTranspose_conjTranspose]
    rw [h2]; exact mL_equiv' _ γ.1 τ
  calc (P * zM z τ * Q * (Q.conjTranspose * ((zM w τ).conjTranspose * P.conjTranspose))).trace
      = (P * (zM z τ * (Q * Q.conjTranspose) * (zM w τ).conjTranspose) * P.conjTranspose).trace := by
        simp only [Matrix.mul_assoc]
    _ = (P.conjTranspose * P * (zM z τ * (zM w τ).conjTranspose)).trace := by
        rw [hQ, Matrix.mul_one, Matrix.trace_mul_comm, ← Matrix.mul_assoc]
    _ = (zM z τ * (zM w τ).conjTranspose).trace := by rw [hP, Matrix.one_mul]

theorem alV_RV (hst : ∀ τ x, X.embC A.σ₀ τ (star x) = star (X.embC A.σ₀ τ x)) (γ : UF X.E a) (γ' : UF X.E b) (z : VCx X.Tau a b) :
    alV A.d A.sc (RV A γ γ' z) = alV A.d A.sc z := by
  unfold alV Formalism.L2.Th1.H.alphaQ Formalism.L2.Th1.H.qOf
  rw [show HV A.sc (RV A γ γ' z) (RV A γ γ' z) = HV A.sc z z from isIsom_RV A hst γ γ' z z]

theorem imgLat_laV (γ : UF X.E a) (γ' : UF X.E b) (M M' : Submodule (𝓞 X.E) (HomE X.E a b))
    (h : ∀ y, y ∈ M' ↔ γ'.1.symm.toLinearMap ∘ₗ y ∘ₗ γ.1.toLinearMap ∈ M) :
    imgLat (RV A γ γ' : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (laV (X.embC A.σ₀) A.δ M) = laV (X.embC A.σ₀) A.δ M' := by
  ext v
  simp only [imgLat, laV, AddSubgroup.mem_map, Submodule.mem_toAddSubgroup]
  constructor
  · rintro ⟨w, ⟨y, hy, rfl⟩, rfl⟩
    refine ⟨γ'.1.toLinearMap ∘ₗ y ∘ₗ γ.1.symm.toLinearMap, (h _).2 ?_, ?_⟩
    · have e : γ'.1.symm.toLinearMap ∘ₗ (γ'.1.toLinearMap ∘ₗ y ∘ₗ γ.1.symm.toLinearMap) ∘ₗ γ.1.toLinearMap = y := by
        ext v i; simp
      rw [e]; exact hy
    · exact (RV_embH A γ γ' y).symm
  · rintro ⟨y, hy, rfl⟩
    refine ⟨embH (X.embC A.σ₀) A.δ (γ'.1.symm.toLinearMap ∘ₗ y ∘ₗ γ.1.toLinearMap), ⟨_, (h y).1 hy, rfl⟩, ?_⟩
    show RV A γ γ' _ = _
    rw [RV_embH]
    congr 1
    ext v i; simp

end Iso

end Formalism.L2.Ker.TI
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MLConjTranspose =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MemHalfBOEquiv =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MemHalfBOEquiv", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.ConjHSymmApply\npublic import Formalism.LocalToGlobal.KernelLattices.ThDistC\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.AlternatingFormStandardHermitian\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.KerEquivGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.Ker.TI

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E]
variable {W : Type} [AddCommGroup W] [Module E W] [Module (𝓞 E) W] [IsScalarTower (𝓞 E) E W]

theorem equiv_osmulW (φ : W ≃ₗ[E] W) (r : 𝓞 E) (x : W) : φ (r • x) = r • φ x := by
  rw [← algebraMap_smul E r x, map_smul, algebraMap_smul]

theorem mem_localization_equiv (φ : W ≃ₗ[E] W) {M M' : Submodule (𝓞 E) W} (hM : ∀ y, y ∈ M' ↔ φ.symm y ∈ M)
    (Q : HeightOneSpectrum (𝓞 E)) (y : W) : y ∈ localization₂ Q.asIdeal M' ↔ φ.symm y ∈ localization₂ Q.asIdeal M := by
  rw [mem_locP, mem_locP]
  constructor
  · rintro ⟨s, hs, h⟩
    refine ⟨s, hs, ?_⟩
    rw [← equiv_osmulW]
    exact (hM _).1 h
  · rintro ⟨s, hs, h⟩
    refine ⟨s, hs, (hM _).2 ?_⟩
    rw [equiv_osmulW]
    exact h

theorem mem_twO_equiv (φ : W ≃ₗ[E] W) {M M' : Submodule (𝓞 E) W} (hM : ∀ y, y ∈ M' ↔ φ.symm y ∈ M)
    (c : ℕ) (e : HeightOneSpectrum (𝓞 E) → ℤ) (y : W) : y ∈ twist₂ M' c e ↔ φ.symm y ∈ twist₂ M c e := by
  rw [mem_twO, mem_twO]
  refine forall_congr' fun Q => ?_
  rw [mem_localization_equiv φ hM Q, map_smul]

theorem mem_halfAO_equiv {a b : ℕ} (φ : HomE E a b ≃ₗ[E] HomE E a b) {M M' : Submodule (𝓞 E) (HomE E a b)}
    (hM : ∀ y, y ∈ M' ↔ φ.symm y ∈ M) (SS : Finset (HeightOneSpectrum (𝓞 E))) (c : ℕ) (y : HomE E a b) :
    y ∈ halfAO SS M' c ↔ φ.symm y ∈ halfAO SS M c :=
  mem_twO_equiv φ hM c _ y

theorem mem_halfBO_equiv {a b : ℕ} (φ : HomE E a b ≃ₗ[E] HomE E a b) {M M' : Submodule (𝓞 E) (HomE E a b)}
    (hM : ∀ y, y ∈ M' ↔ φ.symm y ∈ M) (SS : Finset (HeightOneSpectrum (𝓞 E))) (c : ℕ) (y : HomE E a b) :
    y ∈ halfBO SS M' c ↔ φ.symm y ∈ halfBO SS M c :=
  mem_twO_equiv φ hM c _ y

theorem mem_mulLat_equiv (φ : W ≃ₗ[E] W) {M M' : Submodule (𝓞 E) W} (hM : ∀ y, y ∈ M' ↔ φ.symm y ∈ M)
    (c : ℕ) (y : W) : y ∈ mulLat c M' ↔ φ.symm y ∈ mulLat c M := by
  simp only [mulLat, Submodule.mem_map, LinearMap.smul_apply, LinearMap.id_apply]
  constructor
  · rintro ⟨z, hz, rfl⟩
    exact ⟨φ.symm z, (hM z).1 hz, by rw [equiv_osmulW]⟩
  · rintro ⟨z, hz, hzy⟩
    refine ⟨φ z, (hM _).2 (by simpa using hz), ?_⟩
    rw [← equiv_osmulW, hzy, LinearEquiv.apply_symm_apply]

end Gen

section Lat

variable {E : Type} [Field E] [NumberField E] [StarRing E] {a b : ℕ}

theorem mem_homO_gmap (γ : Sp E a ≃ₗ[E] Sp E a) (γ' : Sp E b ≃ₗ[E] Sp E b) (N : Submodule (𝓞 E) (Sp E a))
    (N' : Submodule (𝓞 E) (Sp E b)) (y : HomE E a b) : y ∈ homO (gmap γ N) (gmap γ' N') ↔ (conjH γ γ').symm y ∈ homO N N' := by
  change (∀ v ∈ gmap γ N, y v ∈ gmap γ' N') ↔ ∀ u ∈ N, ((conjH γ γ').symm y) u ∈ N'
  constructor
  · intro h u hu
    have := h (γ u) ((mem_gmap γ N _).2 (by simpa using hu))
    rw [mem_gmap] at this
    simpa [conjH_symm_apply] using this
  · intro h v hv
    rw [mem_gmap]
    have := h (γ.symm v) ((mem_gmap γ N v).1 hv)
    simpa [conjH_symm_apply] using this

theorem mem_perO_gmap (AA : Submodule (𝓞 E) E) (γ : Sp E a ≃ₗ[E] Sp E a) (γ' : Sp E b ≃ₗ[E] Sp E b) (N : Submodule (𝓞 E) (Sp E a))
    (N' : Submodule (𝓞 E) (Sp E b)) (y : HomE E a b) : y ∈ perO AA (gmap γ N) (gmap γ' N') ↔ (conjH γ γ').symm y ∈ perO AA N N' := by
  have key : perO AA (gmap γ N) (gmap γ' N') = (perO AA N N').map (conjE γ γ' : HomE E a b →ₗ[𝓞 E] HomE E a b) := by
    unfold perO
    rw [Submodule.map_span]
    congr 1
    ext z
    simp only [Set.mem_ofPred_eq, Set.mem_image]
    constructor
    · rintro ⟨r, hr, x, hx, rfl⟩
      refine ⟨r • (conjE γ γ').symm x, ⟨r, hr, _, (mem_homO_gmap γ γ' N N' x).1 hx, rfl⟩, ?_⟩
      show conjH γ γ' (r • (conjH γ γ').symm x) = r • x
      rw [map_smul, LinearEquiv.apply_symm_apply]
    · rintro ⟨w, ⟨r, hr, x, hx, rfl⟩, rfl⟩
      refine ⟨r, hr, conjE γ γ' x, (mem_homO_gmap γ γ' N N' _).2 ?_, ?_⟩
      · show (conjH γ γ').symm (conjH γ γ' x) ∈ homO N N'
        rw [LinearEquiv.symm_apply_apply]; exact hx
      · show conjH γ γ' (r • x) = r • conjH γ γ' x
        rw [map_smul]
  rw [key, Submodule.mem_map_equiv]
  rfl

theorem mem_homAt_gmap (S : Finset (HeightOneSpectrum (𝓞 E))) (γ : Sp E a ≃ₗ[E] Sp E a) (γ' : Sp E b ≃ₗ[E] Sp E b)
    (N : Submodule (𝓞 E) (Sp E a)) (N' : Submodule (𝓞 E) (Sp E b)) (y : HomE E a b) :
    y ∈ homAt S (gmap γ N) (gmap γ' N') ↔ (conjH γ γ').symm y ∈ homAt S N N' := by
  rw [homAt_gmap, Submodule.mem_map_equiv]
  rfl

end Lat

section Lift

variable {X : Fields} (A : Amb X) {a b : ℕ}

theorem isLift_conj (S : Finset (HeightOneSpectrum (𝓞 X.E))) (γ : Sp X.E a ≃ₗ[X.E] Sp X.E a) (γ' : Sp X.E b ≃ₗ[X.E] Sp X.E b)
    (N : Submodule (𝓞 X.E) (Sp X.E a)) (N' : Submodule (𝓞 X.E) (Sp X.E b)) (c : ℕ) (x s' : HomE X.E a b)
    (h : A.IsLift S (gmap γ N) (gmap γ' N') c (conjH γ γ' x) s') : A.IsLift S N N' c x ((conjH γ γ').symm s') := by
  obtain ⟨⟨c', hc', hs⟩, hx⟩ := h
  refine ⟨⟨c', hc', (mem_halfAO_equiv (conjH γ γ') (mem_perO_gmap A.AA γ γ' N N') S c' s').1 hs⟩, ?_⟩
  have := (mem_mulLat_equiv (conjH γ γ') (mem_homAt_gmap S γ γ' N N') c _).1 hx
  rwa [map_sub, LinearEquiv.symm_apply_apply] at this

end Lift

end Formalism.L2.Ker.TI
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MemHalfBOEquiv =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkThindEq =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkThindEq", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ThEquiv\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.AlternatingFormStandardHermitian\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MLConjTranspose\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.MemHalfBOEquiv\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.KerEquivGen\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkThind\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.SelfDualFourfoldCurveIdealLattice\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.TripleEighthProof\nimport Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.HermitianHalfLattice.ConjHSymmApply\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Th1.H

section SlopeTestRemainingChoices

variable {V : Type} [AddCommGroup V] [Module ℂ V]

theorem sumU_eq_inter {H : Sesq V} {α : V → ℂ} {Λ₁ Λ₂ : AddSubgroup V} {F : V → ℂ} {S : Finset V} (hH : IsHerm H)
    (hS : IsSemiChar H Λ₂ α) (hF : F ∈ fixedBy H α Λ₁) (hSr : IsReps Λ₁ Λ₂ S) (hidx : relIdx Λ₁ Λ₂ ≠ 0) (z : V) :
    sumU H α S F z = ((Real.sqrt (relIdx Λ₁ Λ₂) : ℝ) : ℂ) * inter H α Λ₁ Λ₂ F z := by
  rw [Formalism.L2.Th1.H.interReps V H hH Λ₁ Λ₂ α hS F hF S hSr z]
  have h3 : ((Real.sqrt (relIdx Λ₁ Λ₂) : ℝ) : ℂ) ≠ 0 := by
    rw [Ne, Complex.ofReal_eq_zero]; exact (Real.sqrt_pos.2 (Nat.cast_pos.2 (Nat.pos_of_ne_zero hidx))).ne'
  field_simp

end SlopeTestRemainingChoices

section Lift

variable {X : Fields} (A : Amb X) {a b : ℕ} (S : Finset (HeightOneSpectrum (𝓞 X.E)))
  (N : Submodule (𝓞 X.E) (Sp X.E a)) (N' : Submodule (𝓞 X.E) (Sp X.E b))

theorem homE_zero_of_aa_bot (hLa : A.LaHyp a b S) (hN : IsSdLat N) (hN' : IsSdLat N') (h : A.AA = ⊥) (f : HomE X.E a b) : f = 0 := by
  rcases Nat.eq_zero_or_pos a with ha | ha
  · refine LinearMap.ext fun v => ?_
    have hv : v = 0 := funext fun i => (Fin.cast ha i).elim0
    rw [hv, map_zero, LinearMap.zero_apply]
  rcases Nat.eq_zero_or_pos b with hb | hb
  · exact LinearMap.ext fun v => funext fun i => (Fin.cast hb i).elim0
  exfalso
  have hsd := ((hLa.2.2.2.2.2 N N' hN hN').2).1
  obtain ⟨τ⟩ := hLa.2.1
  have hL : LamC (X.embC A.σ₀) A.δ A.AA N N' = ⊥ := by
    unfold LamC laV; rw [h, perO_bot]; simp
  rw [hL] at hsd
  have hv : (show VCx X.Tau a b from fun _ _ _ => (1 : ℂ)) ∈ dualLat (HV A.sc) (⊥ : AddSubgroup (VCx X.Tau a b)) := by
    intro y hy
    rw [AddSubgroup.mem_bot] at hy
    exact ⟨0, by simp [hy, altE]⟩
  unfold IsSelfDual at hsd
  rw [hsd, AddSubgroup.mem_bot] at hv
  have := congrFun (congrFun (congrFun hv τ) ⟨0, hb⟩) ⟨0, ha⟩
  simp at this

theorem exists_isLift (hLa : A.LaHyp a b S) (hN : IsSdLat N) (hN' : IsSdLat N') {c D : ℕ} (hD : 0 < D) (hcD : c ∣ D) {x : HomE X.E a b}
    (hx : x ∈ divLat D (homAt S N N')) : ∃ s, A.IsLift S N N' c x s := by
  by_cases hAA0 : A.AA = ⊥
  · refine ⟨0, ⟨⟨1, one_pos, zero_mem _⟩, ?_⟩⟩
    rw [homE_zero_of_aa_bot A S N N' hLa hN hN' hAA0 x, sub_zero]
    exact zero_mem _
  · obtain ⟨s, hs⟩ := lf_exists_liftS A S hLa.2.2.2.1 hAA0 N N' hN hN' hD hx
    exact ⟨s, lf_isLift_of_liftS A S hLa.2.2.2.1 N N' hD hcD hs⟩

end Lift

theorem theta_coset_indicator_natural : ThIndOfEq := by
  intro X A a b Sall D hst hD hLa hEq
  unfold Amb.ThIndEq
  intro γ γ' N N' c x hR z
  obtain ⟨hN, hN', hc, hcD, hx⟩ := hR
  obtain ⟨w, rfl⟩ := (TI.RV A γ γ').surjective z
  have hgN : IsSdLat (gmap γ.1 N) := isSdLat_gmap hN γ
  have hgN' : IsSdLat (gmap γ'.1 N') := isSdLat_gmap hN' γ'
  have hpull : ∀ v, A.pullV a b γ.1 γ'.1 ((TI.RV A γ γ') v) = v := fun v => by
    rw [← TI.RV_symm_apply, LinearEquiv.symm_apply_apply]

  have hx' : γ'.1.toLinearMap ∘ₗ x ∘ₗ γ.1.symm.toLinearMap ∈ divLat D (homAt Sall (gmap γ.1 N) (gmap γ'.1 N')) := by
    show ((D : 𝓞 X.E) • (LinearMap.id : HomE X.E a b →ₗ[𝓞 X.E] HomE X.E a b)) (TI.conjH γ.1 γ'.1 x) ∈ homAt Sall (gmap γ.1 N) (gmap γ'.1 N')
    rw [TI.mem_homAt_gmap, LinearMap.smul_apply, LinearMap.id_apply, TI.equiv_osmulW, LinearEquiv.symm_apply_apply]
    exact hx
  obtain ⟨s', hs'⟩ := exists_isLift A Sall (gmap γ.1 N) (gmap γ'.1 N') hLa hgN hgN' hD hcD hx'
  have hs : A.IsLift Sall N N' c x ((TI.conjH γ.1 γ'.1).symm s') := TI.isLift_conj A Sall γ.1 γ'.1 N N' c x s' hs'
  have hemb : embH (X.embC A.σ₀) A.δ s' = (TI.RV A γ γ') (embH (X.embC A.σ₀) A.δ ((TI.conjH γ.1 γ'.1).symm s')) := by
    rw [TI.RV_embH]
    congr 1
    exact ((TI.conjH γ.1 γ'.1).apply_symm_apply s').symm
  rw [thInd_eq_lift' A Sall (gmap γ.1 N) (gmap γ'.1 N') hLa hgN hgN' c hc _ s' hs' _,
    thInd_eq_lift' A Sall N N' hLa hN hN' c hc x _ hs _, hpull]

  have hL : LamC (X.embC A.σ₀) A.δ A.AA (gmap γ.1 N) (gmap γ'.1 N') = imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (LamC (X.embC A.σ₀) A.δ A.AA N N') :=
    (TI.imgLat_laV A γ γ' _ _ fun y => TI.mem_perO_gmap A.AA γ.1 γ'.1 N N' y).symm
  have hAc : AC (X.embC A.σ₀) A.δ A.AA Sall (gmap γ.1 N) (gmap γ'.1 N') c = imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (AC (X.embC A.σ₀) A.δ A.AA Sall N N' c) :=
    (TI.imgLat_laV A γ γ' _ _ fun y => TI.mem_halfAO_equiv (TI.conjH γ.1 γ'.1) (TI.mem_perO_gmap A.AA γ.1 γ'.1 N N') Sall c y).symm
  have hBc : BC (X.embC A.σ₀) A.δ A.AA Sall (gmap γ.1 N) (gmap γ'.1 N') c = imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c) :=
    (TI.imgLat_laV A γ γ' _ _ fun y => TI.mem_halfBO_equiv (TI.conjH γ.1 γ'.1) (TI.mem_perO_gmap A.AA γ.1 γ'.1 N N') Sall c y).symm
  have hI : imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) ((LamC (X.embC A.σ₀) A.δ A.AA N N') ⊓ (AC (X.embC A.σ₀) A.δ A.AA Sall N N' c)) = imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (LamC (X.embC A.σ₀) A.δ A.AA N N') ⊓ imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (AC (X.embC A.σ₀) A.δ A.AA Sall N N' c) := by
    ext y
    rw [AddSubgroup.mem_inf, KS.MM.mem_imgLat, KS.MM.mem_imgLat, KS.MM.mem_imgLat, AddSubgroup.mem_inf]
  rw [hL, hAc, hBc]

  obtain ⟨hθ, hlev⟩ := (heisHyp_of A a b Sall hLa).2.2.2.2 N N' hN hN'
  obtain ⟨hSc, hr1, hr2, -⟩ := hlev c hc
  have hIso : IsIsom (HV A.sc) (HV A.sc) ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) := TI.isIsom_RV A hst γ γ'
  have hα : ∀ v, alV A.d A.sc ((TI.RV A γ γ') v) = alV A.d A.sc v := TI.alV_RV A hst γ γ'

  have hcard : (repsOf (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c)) (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (LamC (X.embC A.σ₀) A.δ A.AA N N') ⊓ imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (AC (X.embC A.σ₀) A.δ A.AA Sall N N' c))).card =
      (repsOf (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c) ((LamC (X.embC A.σ₀) A.δ A.AA N N') ⊓ (AC (X.embC A.σ₀) A.δ A.AA Sall N N' c))).card := by
    have hr1' : relIdx (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c)) (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (LamC (X.embC A.σ₀) A.δ A.AA N N') ⊓ imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (AC (X.embC A.σ₀) A.δ A.AA Sall N N' c)) ≠ 0 := by
      rw [← hI, KS.MM.relIdx_map]; exact hr1
    rw [Formalism.L2.Th1.H.Tri.card_reps (repsOf_spec _ _ hr1'), Formalism.L2.Th1.H.Tri.card_reps (repsOf_spec _ _ hr1), ← hI]
    exact KS.MM.relIdx_map _ _ _

  have he : ∀ v, A.e a b (gmap γ.1 N) (gmap γ'.1 N') ((TI.RV A γ γ') v) = A.e a b N N' v := fun v => by
    rw [hEq γ γ' N N' hN hN' ((TI.RV A γ γ') v), hpull]
  have hsum : ∀ v, sumU (HV A.sc) (alV A.d A.sc) (repsOf (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (LamC (X.embC A.σ₀) A.δ A.AA N N')) (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c))) (A.e a b (gmap γ.1 N) (gmap γ'.1 N')) ((TI.RV A γ γ') v) =
      sumU (HV A.sc) (alV A.d A.sc) (repsOf (LamC (X.embC A.σ₀) A.δ A.AA N N') (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c)) (A.e a b N N') v := by
    intro v
    have hr2' : relIdx (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (LamC (X.embC A.σ₀) A.δ A.AA N N')) (imgLat ((TI.RV A γ γ' : VCx X.Tau a b ≃ₗ[ℂ] VCx X.Tau a b) : VCx X.Tau a b →ₗ[ℂ] VCx X.Tau a b) (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c)) ≠ 0 := by
      rw [KS.MM.relIdx_map]; exact hr2
    have hSB' := KS.MM.semiChar_map (HV A.sc) (HV A.sc) (TI.RV A γ γ') hIso (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c) (alV A.d A.sc) (alV A.d A.sc) hα hSc.2.2.1
    have hfix' := KS.MM.fixedBy_map (HV A.sc) (HV A.sc) (TI.RV A γ γ') hIso (LamC (X.embC A.σ₀) A.δ A.AA N N') (alV A.d A.sc) (alV A.d A.sc) hα
      (A.e a b N N') (A.e a b (gmap γ.1 N) (gmap γ'.1 N')) he hθ
    rw [sumU_eq_inter hSc.1 hSB' hfix' (repsOf_spec _ _ hr2') hr2' ((TI.RV A γ γ') v), sumU_eq_inter hSc.1 hSc.2.2.1 hθ (repsOf_spec _ _ hr2) hr2 v,
      KS.MM.inter_map (HV A.sc) (HV A.sc) hSc.1 hSc.1 (TI.RV A γ γ') hIso (LamC (X.embC A.σ₀) A.δ A.AA N N') (BC (X.embC A.σ₀) A.δ A.AA Sall N N' c) (alV A.d A.sc) (alV A.d A.sc) hα hSc.2.2.1 hr2
        (A.e a b N N') (A.e a b (gmap γ.1 N) (gmap γ'.1 N')) he hθ v, KS.MM.relIdx_map]
  rw [hcard, hemb, hα, ← map_neg (TI.RV A γ γ'),
    KS.MM.opU_map (HV A.sc) (HV A.sc) (TI.RV A γ γ') hIso _ _ hsum]

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkThindEq =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkEqcar =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkEqcar", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColInst\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData\npublic import Formalism.LocalToGlobal.KernelLattices.MuProd\npublic import Formalism.LocalToGlobal.KernelLattices.RatKDeg\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.AmbOfENeSd\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SplitPairOfGen\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkConj\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkThindEq\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOfTiesD\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPStepCIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.Ker.Cd.CarC

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.MainNotions

section Step

variable {X : Fields} {Pr : Primes X} {R : Ranks} {W : Wts X Pr.Word R} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {G : ChGlob X R.m} (u : Pr.Word)
  {D : Car} (s : Cd.Seam D X) {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Cd.Base D cc δ) (χ : Cd.TaylorLogMetric.IdE D → ℂ) (cD : D.what₂.Tau → ℂ)

theorem thIndEq_ambOf_car (hok : s.Ok) (hcc : Cd.TaylorLogMetric.IsCurveIdeal D cc) (hδ : Cd.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hχ : Cd.TaylorLogMetric.IsChi D χ)
    {a b : ℕ} (ha : Even a) (hb : Even b) (Sall : Finset (HeightOneSpectrum (𝓞 X.E))) {D' : ℕ} (hD : 0 < D')
    (hLa : (Cd.ambOf s B χ cD : Amb X).LaHyp a b Sall) : (Cd.ambOf s B χ cD : Amb X).ThIndEq a b Sall D' :=
  theta_coset_indicator_natural X _ a b Sall D' (ambOf_conj s B χ cD hok) hD hLa
    (eqLaw_ambOf_of s B χ cD hok (Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SqG.eqP_car B hcc hδ χ hχ) ha hb)

theorem thEquivP_ambOf_tiesD (hok : s.Ok) (hcc : Cd.TaylorLogMetric.IsCurveIdeal D cc) (hδ : Cd.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hχ : Cd.TaylorLogMetric.IsChi D χ)
    (hX : X.AbelianUnramifiedExtensionConditions) (hPr : Pr.Ok) (hsel : IsSel X sel)
    (hg : XiOffG Pr (mu : Chr X.F X.E X.K)) (hT : LawTies W Ch sel mu cst G) (hTu : 0 < Pr.T u) {i : ℕ} (hi : i < R.m) (e : X.Tau → ℤ)
    (he : ∀ τ, (e τ : ℚ) = (W.row τ).e ⟨i, hi⟩)
    (hLa : (Cd.ambOf s B χ cD : Amb X).LaHyp (R.N i) (R.N (i + 1)) (Sall sel mu u))
    (hrat : (Cd.ambOf s B χ cD : Amb X).JetsRatDeg (R.N i) (R.N (i + 1)) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u) (stepDeg W u i)) :
    ThEquivP (stepT W Ch sel mu cst (Cd.ambOf s B χ cD) u i (W.lamTrue u (i + 1))) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u)
      (colValF W sel mu u i).rho (colValF W sel mu u (i + 1)).rho := by
  have he' : ∀ τ, (e τ : ℚ) = (W.hc u τ).e ⟨i, hi⟩ := by
    intro τ
    rw [he τ, ← hT.2.2.2 u τ]
    rfl
  exact thEquivP_stepT_ofD W Ch sel mu cst (Cd.ambOf s B χ cD) u hi e he' hrat (eOmega_ambOf_of s B χ cD (B.stdOK hcc hδ) _ _)
    (thIndEq_ambOf_car s B χ cD hok hcc hδ hχ (even_rankN R i) (even_rankN R (i + 1)) _ (modulus_pos sel mu cst u hTu) hLa)
    (chiLaw_ambOf_of s B χ cD hok hχ (even_rankN R i) (even_rankN R (i + 1)))
    (muProdLaw_of hX hPr hsel hg hT i hi e he _) (muProdLaw_of hX hPr hsel hg hT i hi e he _)

end Step

section All

variable {X : Fields} {Pr : Primes X} {R : Ranks} {W : Wts X Pr.Word R} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ} {u : Pr.Word} {m2 : ℕ}
  {D : Car} (s : Cd.Seam D X) {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Cd.Base D cc δ) (χ : Cd.TaylorLogMetric.IdE D → ℂ) (cD : D.what₂.Tau → ℂ)

end All

end Formalism.L2.Ker.Cd.CarC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RkEqcar =====

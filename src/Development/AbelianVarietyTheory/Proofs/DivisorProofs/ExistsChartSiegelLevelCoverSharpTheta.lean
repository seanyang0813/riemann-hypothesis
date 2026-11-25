module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelObjectLoweredLevel
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsThetaCompact
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsPolAVHypSRetract
public import Development.AbelianVarietyTheory.Definitions.Degenerations.ArithBase
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsChartFiniteEtaleCoverGenericPoint
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelCoverMatrices
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSharpGen
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SharpPolarizationPullbackStable
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothProjectiveStalkFactorial
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsIsE8IsSharpBasis
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsIsSharpAndPrim
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsThetaLevelAbelianSchemePullback
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.TheoremOfCubePolAbelianScheme
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaLevelShapePrimitivityPullbackDescent
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.ZH
open scoped CategoryTheory.Obj
open GlobalTheory.Poinc

noncomputable section

namespace GlobalTheory.PoincChart
open GlobalTheory.SiegLev GlobalTheory.AbLaw

theorem chartL : ∀ (n N : ℕ) (X Y : Scheme.{0}) (sX : X ⟶ Sp (cycAway n)) (sY : Y ⟶ Sp (cycAway N)) (q : Y ⟶ X), 0 < n → 0 < N → Smooth sX → Smooth sY → IsFinite q → Etale q → Surjective q → ∀ η ∈ genericPoints X, ∃ (Ω : Type) (_ : Field Ω) (_ : Algebra (cycAway N) Ω) (_ : ArithBase (cycAway N) Ω) (R : Subalgebra (cycAway N) Ω) (y : Sp R ⟶ Y), R.FG ∧ (∀ z : Ω, ∃ a ∈ R, ∃ c ∈ R, z = a / c) ∧ y ≫ sY = spMap (algebraMap (cycAway N) R) ∧ (∀ w, (spMap R.val.toRingHom ≫ y ≫ q) w = η) ∧ ((spMap R.val.toRingHom ≫ y ≫ q).stalkMap (genericPoint (Sp Ω))).hom.Finite := _root_.GlobalTheory.Poinc.Chart.exists_chart

theorem exists_isSharpBasis (h : ℕ) (W : Matrix (Fin 8) (Fin 8) ℤ) (hW : IsE8 W) :
    ∃ bas : (Fin (2 * (8 * h)) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ)), IsSharpBasis W bas := by
  have hS : (W + W.transpose).transpose = W + W.transpose := by
    rw [Matrix.transpose_add, Matrix.transpose_transpose, add_comm]
  have h1 : (W + W.transpose) * (W + W.transpose).adjugate = 1 := by rw [Matrix.mul_adjugate, hW.2, one_smul]
  have h2 : (W + W.transpose).adjugate * (W + W.transpose) = 1 := by rw [Matrix.adjugate_mul, hW.2, one_smul]
  let e : (Fin 8 → (Fin h ⊕ Fin h → ℤ)) ≃ₗ[ℤ] (Fin 8 → (Fin h ⊕ Fin h → ℤ)) :=
    { twistSnd (W + W.transpose).adjugate with
      invFun := twistSnd (W + W.transpose)
      left_inv := twistSnd_twistSnd _ _ h1
      right_inv := twistSnd_twistSnd _ _ h2 }
  refine ⟨(sharpReindex h).trans e, fun i j => ?_⟩
  rw [← sum_omegaStd_single h i j]
  exact sum_omegaStd_twistSnd _ _ hS h1 _ _

section
open MonObj

def powBaseR {n k : ℕ} (hn : n ≠ 0) (hk : k ≠ 0) : TBase (cycAway (n * k)) k where
  ζ := (cycBase (mul_ne_zero hn hk)).ζ ^ n
  unit := by
    have h : IsUnit ((n : cycAway (n * k)) * (k : cycAway (n * k))) := by
      rw [← Nat.cast_mul]
      exact isUnit_natCast (mul_ne_zero hn hk)
    exact isUnit_of_mul_isUnit_right h
  prim K _ β := by
    rw [Units.val_pow_eq_pow_val, map_pow, cycBase_ζ]
    exact (isPrimitiveRoot_map (mul_ne_zero hn hk) β).pow (Nat.pos_of_ne_zero (mul_ne_zero hn hk)) rfl

theorem powBaseR_pow {n k : ℕ} (hn : n ≠ 0) (hk : k ≠ 0) : (powBaseR hn hk).ζ ^ k = 1 := by
  show ((cycBase (mul_ne_zero hn hk)).ζ ^ n) ^ k = 1
  rw [← pow_mul]
  exact Units.ext ((Units.val_pow_eq_pow_val _ _).trans
    (Subtype.ext (Complex.isPrimitiveRoot_exp _ (mul_ne_zero hn hk)).pow_eq_one))

def lowerTo {h M N d : ℕ} {B : Type} [CommRing B] {ζ' ζ : B} {S : Scheme.{0}} {s : S ⟶ Sp B}
    (C : SiegPre h M ζ' s) (hM : M = N * d) (h0 : M ≠ 0) (hζ : ζ = ζ' ^ d) : SiegPre h N ζ s where
  A := C.A
  ab := C.ab
  P := C.P
  isLB := C.isLB
  rig₁ := C.rig₁
  rig₂ := C.rig₂
  symm := C.symm
  lev a := C.lev a ^ d
  lev_add := (SiegLower.lower C hM h0 (RingHom.id B) hζ).lev_add
  lev_tors := (SiegLower.lower C hM h0 (RingHom.id B) hζ).lev_tors
  geom K _ _ x β z hx hz := (SiegLower.lower C hM h0 (RingHom.id B) hζ).geom K x β z
    (by rw [show spMap (RingHom.id B) = 𝟙 _ from Spec.map_id _, Category.comp_id]; exact hx) hz

theorem exists_sharpOver_cover (g n k : ℕ) (F : SFam g n (zetaAway n)) (F' : SFam g (n * k) (zetaAway (n * k)))
    (κ : cycAway n →+* cycAway (n * k)) (q : F'.X ⟶ F.X) (hn : 0 < n) (hk3 : 3 ≤ k) (hko : Odd k)
    (hζ : κ (zetaAway n) = zetaAway (n * k) ^ k) (hqs : q ≫ F.s = F'.s ≫ spMap κ)
    (hq : SiegLev.SRel F'.univ F.univ k 1 q) (W : Matrix (Fin 8) (Fin 8) ℤ) (J : Type) [Finite J]
    (a : J → Matrix (Fin 8) (Fin 8) ℤ) (w w' : J)
    (bas : (Fin (2 * (8 * g)) → ℤ) ≃ₗ[ℤ] (Fin 8 → (Fin g ⊕ Fin g → ℤ))) (hW : IsE8 W) (hb : IsSharpBasis W bas)
    (hw : (W + W.transpose) * a w = W) (hw' : (W + W.transpose) * a w' = W.transpose)
    (hs : ∀ u v, ∃ j, a j = Matrix.single u v 1) :
    ∃ (b : TBase (cycAway (n * k)) k) (t : TObj (8 * g) k J b F'.s), t.Prim w w' ∧ SharpOver F W t.pol q := by
  have hk : k ≠ 0 := by omega
  have hnk : n * k ≠ 0 := mul_ne_zero hn.ne' hk
  let b := powBaseR hn.ne' hk
  have hbζ : (b.ζ : cycAway (n * k)) = zetaAway (n * k) ^ n := Units.val_pow_eq_pow_val _ _
  let c : SiegPre g k (b.ζ : cycAway (n * k)) F'.s := lowerTo F'.univ (mul_comm n k) hnk hbζ
  have hc : c.Principal := F'.princ
  have hd : SmoothOfRelativeDimension g c.A.hom :=
    SiegSharpCover.smoothDim c (by omega) b.ζ.isUnit b.unit
  obtain ⟨L₁, L₂⟩ := abelianSchemeLaws_all
  haveI : IsDedekindDomain (cycAway (n * k)) := GlobalTheory.CycAwayReg.isDedekindDomain_cycAway _
  haveI : IsLocallyNoetherian (Sp (cycAway (n * k))) :=
    inferInstanceAs (IsLocallyNoetherian (Spec (CommRingCat.of _)))
  haveI := F'.smooth
  haveI : Smooth F'.s := SmoothOfRelativeDimension.smooth (g * (g + 1) / 2) F'.s
  haveI : IsLocallyNoetherian F'.X := LocallyOfFiniteType.isLocallyNoetherian F'.s
  obtain ⟨t, ht, hp⟩ := GlobalTheory.exists_isSharp_and_prim L₁ L₂ _root_.GlobalTheory.AbLaw.CubeAssembly.cube_gen g (8 * g) W J a w w' bas hW hb hw hw'
    hs k (cycAway (n * k)) b F'.X F'.s c (powBaseR_pow hn.ne' hk) hko hc hd
  refine ⟨b, t, hp, ?_⟩
  let cT : SiegPre g n (zetaAway n) (F'.s ≫ spMap κ) := SiegLower.lower F'.univ (n := n) (d := k) rfl hnk κ hζ
  have hPB : SiegPB cT F.univ q := by
    obtain ⟨φ, hφ, ⟨φ₂, hsq, hP⟩, hlev⟩ := hq
    exact ⟨φ, φ₂, hφ, hsq, hP, fun a => by have e := hlev a; rw [pow_one] at e; exact e⟩
  obtain ⟨pr, h1, h2, h3, -, -⟩ := ht
  unfold SharpOver
  rw [hqs]
  exact ⟨cT, hPB, pr, h1, h2, h3⟩

end

theorem exists_chart : ∀ (g n : ℕ), 1 ≤ g → 3 ≤ n → Odd n → ∀ (F : SFam g n (zetaAway n)) (W : Matrix (Fin 8) (Fin 8) ℤ), IsE8 W → ∀ η ∈ genericPoints F.X, ∃ ℓ : ℕ, ℓ.Prime ∧ Odd ℓ ∧ ∀ j : ℕ, 1 ≤ j → ∃ (o Ω : Type) (_ : CommRing o) (_ : Field Ω) (_ : Algebra o Ω) (_ : ArithBase o Ω) (κ : cycAway n →+* o) (R : Subalgebra o Ω) (J : Type) (b : TBase o ((ℓ ^ j) ^ 2)) (t : TObj (8 * g) ((ℓ ^ j) ^ 2) J b (spMap (algebraMap o R))) (w w' : J) (x : Sp R ⟶ F.X), R.FG ∧ (∀ y : Ω, ∃ a ∈ R, ∃ c ∈ R, y = a / c) ∧ t.Prim w w' ∧ (∀ (T : Scheme.{0}) (f : T ⟶ Sp R) (P : PolAV T) (φ : P.A.left ⟶ t.A.left), IsGrpPullback P.A t.A f φ → LBIso P.L (t.L.pull φ) → SharpOver F W P (f ≫ x)) ∧ (∀ w, (spMap R.val.toRingHom ≫ x) w = η) ∧ spMap R.val.toRingHom ≫ x ≫ F.s = spMap ((algebraMap o Ω).comp κ) ∧ κ.Finite ∧ ((spMap R.val.toRingHom ≫ x).stalkMap (genericPoint (Sp Ω))).hom.Finite := by
  intro g n hg hn hodd F W hW η hη
  have hℓ : n.minFac.Prime := Nat.minFac_prime (by omega)
  have hℓn : n.minFac ∣ n := Nat.minFac_dvd n
  have hℓo : Odd n.minFac := Odd.of_dvd_nat hodd hℓn
  refine ⟨n.minFac, hℓ, hℓo, fun j hj => ?_⟩
  have h3 : 3 ≤ n.minFac := by
    have h2 := hℓ.two_le
    have : n.minFac ≠ 2 := fun e => by rw [e] at hℓo; exact absurd hℓo (by decide)
    omega
  have hk3 : 3 ≤ (n.minFac ^ j) ^ 2 :=
    le_trans (le_trans h3 (Nat.le_self_pow (by omega) _)) (Nat.le_self_pow (by omega) _)
  have hko : Odd ((n.minFac ^ j) ^ 2) := hℓo.pow.pow
  obtain ⟨κ, F', q, ⟨-, hζ, hfin, -, -⟩, ⟨hqs, hqfin, hqet, hqsurj, hq⟩, -⟩ :=
    GlobalTheory.SiegLevCover.exists_levelCover g n n.minFac j F hg hn hodd hℓ hℓn hj
  haveI := F.smooth
  haveI : Smooth F.s := SmoothOfRelativeDimension.smooth (g * (g + 1) / 2) F.s
  haveI := F'.smooth
  haveI : Smooth F'.s := SmoothOfRelativeDimension.smooth (g * (g + 1) / 2) F'.s
  obtain ⟨Ω, _, _, _, R, y, hRfg, hfrac, hys, hpt, hstalk⟩ :=
    chartL n (n * (n.minFac ^ j) ^ 2) F.X F'.X F.s F'.s q (by omega) (Nat.mul_pos (by omega) (pow_pos (pow_pos hℓ.pos _) _)) inferInstance inferInstance
      hqfin hqet hqsurj η hη
  obtain ⟨bas, hbas⟩ := exists_isSharpBasis g W hW
  obtain ⟨a, w, w', hw, hw', hs⟩ := EighthPowerFactor.exists_matrices hW.2
  obtain ⟨b, t', hp', hsh'⟩ := exists_sharpOver_cover g n _ F F' κ q (by omega) hk3 hko hζ hqs hq W _ a w w' bas
    hW hbas hw hw' hs
  obtain ⟨t, ht⟩ := GlobalTheory.tObj_pull _ (8 * g) _ _ b F'.X (Sp R) F'.s (spMap (algebraMap _ R)) y t' hys
  have hp : t.Prim w w' :=
    (GlobalTheory.shape_prim_pull_and_descend _ _ _ _ b (fun _ => 0) 0 w w' _ _ _ _ y t' t ht).2.1 hp'
  obtain ⟨ψ, hψ, hψL, -, -⟩ := ht
  have hsh : SharpOver F W t.pol (y ≫ q) := _root_.GlobalTheory.Poinc.sharpOver_pullback _ _ _ _ F W _ _ t'.pol t.pol q y ψ hsh' hψ hψL
  refine ⟨cycAway (n * (n.minFac ^ j) ^ 2), Ω, inferInstance, inferInstance, inferInstance, inferInstance, κ, R, _,
    b, t, w, w', y ≫ q, hRfg, hfrac, hp, fun T f P φ h1 h2 => ?_, hpt, ?_, ((IsFinite.SpecMap_iff _).1 hfin), hstalk⟩
  · have e := _root_.GlobalTheory.Poinc.sharpOver_pullback _ _ _ _ F W _ _ t.pol P (y ≫ q) f φ hsh h1 h2
    exact e
  · rw [Category.assoc, hqs, ← Category.assoc y, hys]
    simp only [spMap, ← Spec.map_comp]
    rfl

end GlobalTheory.PoincChart

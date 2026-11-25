module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeAlgebraMapOC
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinLatticeExponentsAinfComparison
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIterateDerivative
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InstTameDescentExponentDataPadicThree
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitToBFrobEis
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ToBcrisPhi
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TeichmullerSubOneAinfPropertiesCompatibleRoots
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CmpSemilinearPair, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisComparisonKisinLattice, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PhiWInclLEPow, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinBcrisComparisonFrobeniusNaturality

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CmpSemilinearPair =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CmpSemilinearPair", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeAlgebraMapOC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory.BKGal



theorem cmp_semilinear_pair : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] [TameDescentExponentData K l e a] (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e) (ι : Type) [Fintype ι] [DecidableEq ι] (P : PhiMod O K l e a ι) (T : LocLat (Gl l) ℚ_[l] K O) (I : Ident t ϖ P T) (jB : (ι → OB l O) ≃ₗ[OB l O] TW (OB l O) T), IsCrisCmp I jB → ∀ (μ : OA l O), IsUnit (toB l O μ) → (∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O μ • v) = TWincl (inclO l O) T z) → ∀ (σA : OA l O →ₐ[O] OA l O) (σW : OW l O →ₐ[O] OW l O) (σB : OB l O →ₐ[O] OB l O) (h : ↥T.L.T →ₗ[O] ↥T.L.T) (F : (ι → OW l O) →ₗ[O] (ι → OW l O)) (lam : OA l O) (Γ : Matrix ι ι (OA l O)), (∀ x, inclO l O (σA x) = σW (inclO l O x)) → (∀ x, toB l O (σA x) = σB (toB l O x)) → (∀ v, I.j (F v) = TensorProduct.map σW.toLinearMap h (I.j v)) → (∀ (r : OW l O) v, F (r • v) = σW r • F v) → (∀ c, inclO l O lam • F (inclL t ϖ P c) = inclL t ϖ P (Γ *ᵥ fun i => σA (c i))) → ∀ v : ι → OB l O, jB (Γ.map (toB l O) *ᵥ fun i => σB (v i)) = toB l O lam • TensorProduct.map σB.toLinearMap h (jB v) := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ _ t ϖ ι _ _ P T I jB hC μ hμ hL σA σW σB h F lam Γ h1 h2 h3 h4 h5

  have hmapB : ∀ (r : OB l O) (z : TW (OB l O) T),
      TensorProduct.map σB.toLinearMap h (r • z) = σB r • TensorProduct.map σB.toLinearMap h z := by
    intro r z
    induction z using TensorProduct.induction_on with
    | zero => simp only [smul_zero, map_zero]
    | add x y hx hy => simp only [smul_add, map_add (f := _), hx, hy]
    | tmul b x => simp [TensorProduct.smul_tmul', TensorProduct.map_tmul]
  have hmapW : ∀ z : TW (OA l O) T, TensorProduct.map σW.toLinearMap h (TWincl (inclO l O) T z) =
      TWincl (inclO l O) T (TensorProduct.map σA.toLinearMap h z) := by
    intro z
    induction z using TensorProduct.induction_on with
    | zero => simp only [map_zero]
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul b x => simp [TWincl, TensorProduct.map_tmul, h1]
  have hmapBA : ∀ z : TW (OA l O) T, TensorProduct.map σB.toLinearMap h (TWincl (toB l O) T z) =
      TWincl (toB l O) T (TensorProduct.map σA.toLinearMap h z) := by
    intro z
    induction z using TensorProduct.induction_on with
    | zero => simp only [map_zero]
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul b x => simp [TWincl, TensorProduct.map_tmul, h2]
  have hsmulL : ∀ (m : OA l O) (c : ι → OA l O), inclO l O m • inclL t ϖ P c = inclL t ϖ P (m • c) := by
    intro m c
    rw [inclL_apply, inclL_apply, ← Matrix.mulVec_smul]
    congr 1
    funext k
    simp [map_mul]
  have htoB : ∀ (m : OA l O) (c : ι → OA l O), (fun k => toB l O ((m • c) k)) = toB l O m • fun k => toB l O (c k) := by
    intro m c; funext k; simp [map_mul]

  have key : ∀ i : ι, jB (fun k => toB l O (Γ k i)) =
      toB l O lam • TensorProduct.map σB.toLinearMap h (jB (Pi.single i 1)) := by
    intro i
    set c : ι → OA l O := Pi.single i 1 with hc
    have hcB : (fun k => toB l O (c k)) = (Pi.single i 1 : ι → OB l O) := by
      funext k; by_cases hk : k = i
      · subst hk; simp [hc]
      · simp [hc, hk]
    obtain ⟨z, hz⟩ := hL (inclL t ϖ P c) ⟨c, rfl⟩
    rw [hsmulL] at hz
    have hz1 : toB l O μ • jB (Pi.single i 1) = TWincl (toB l O) T z := by
      rw [← hC _ _ hz, htoB, hcB, map_smul]
    have hσc : (fun k => σA ((μ • c) k)) = σA μ • c := by
      funext k; by_cases hk : k = i
      · subst hk; simp [hc]
      · simp [hc, hk]
    have hF : I.j (inclL t ϖ P (σA μ • (Γ *ᵥ c))) =
        TWincl (inclO l O) T (lam • TensorProduct.map σA.toLinearMap h z) := by
      rw [← Matrix.mulVec_smul, ← hσc, ← h5, map_smul, h3, hz, hmapW, GlobalTheory.Cyc.Decomp.TWincl_smul]
    have h6 := hC _ _ hF
    rw [htoB, GlobalTheory.Cyc.Decomp.TWincl_smul, ← hmapBA, ← hz1, hmapB, h2, map_smul] at h6
    have hΓ : (fun k => toB l O ((Γ *ᵥ c) k)) = fun k => toB l O (Γ k i) := by
      funext k; simp [hc, Matrix.mulVec_single]
    rw [hΓ, smul_comm (toB l O lam)] at h6
    exact ((hμ.map σB).smul_left_cancel).1 h6
  intro v
  let Pr : (ι → OB l O) → Prop := fun v =>
    jB (Γ.map (toB l O) *ᵥ fun i => σB (v i)) = toB l O lam • TensorProduct.map σB.toLinearMap h (jB v)
  have h0 : Pr 0 := by
    have h00 : (fun i => σB ((0 : ι → OB l O) i)) = 0 := by funext i; simp
    simp only [Pr]
    rw [h00, Matrix.mulVec_zero, map_zero, map_zero, smul_zero]
  have hadd : ∀ v w, Pr v → Pr w → Pr (v + w) := by
    intro v w hv hw
    simp only [Pr] at hv hw ⊢
    have : (fun i => σB ((v + w) i)) = (fun i => σB (v i)) + fun i => σB (w i) := by
      funext i; simp
    rw [this, Matrix.mulVec_add, map_add (f := _), hv, hw, map_add (f := _), map_add (f := _), smul_add]
  have hsm : ∀ (r : OB l O) v, Pr v → Pr (r • v) := by
    intro r v hv
    simp only [Pr] at hv ⊢
    have : (fun i => σB ((r • v) i)) = σB r • fun i => σB (v i) := by
      funext i; simp [map_mul]
    rw [this]
    rw [Matrix.mulVec_smul]
    rw [map_smul, hv, map_smul, hmapB]
    rw [smul_smul, smul_smul, mul_comm]
  have hbas : ∀ i, Pr (Pi.single i 1) := by
    intro i
    simp only [Pr]
    have : (fun k => σB ((Pi.single i 1 : ι → OB l O) k)) = Pi.single i 1 := by
      funext k; by_cases hk : k = i
      · subst hk; simp
      · simp [hk]
    rw [this, Matrix.mulVec_single]
    convert key i using 2
    funext k; simp
  have hv : v = ∑ i, v i • (Pi.single i 1 : ι → OB l O) := by
    funext k; simp [Finset.sum_apply, Pi.single_apply]
  have := Finset.sum_induction (s := Finset.univ) (fun i => v i • (Pi.single i 1 : ι → OB l O)) Pr hadd h0
    (fun i _ => hsm _ _ (hbas i))
  rw [← hv] at this
  exact this

end GlobalTheory.BKGal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CmpSemilinearPair =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisComparisonKisinLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisComparisonKisinLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinLatticeExponentsAinfComparison\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TeichmullerSubOneAinfPropertiesCompatibleRoots\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

noncomputable section

namespace GlobalTheory.BKGal.CrisCmpExist

variable {l : ℕ} [Fact l.Prime] {a e : ℕ} [NeZero a] [NeZero e]
  {O K : Type} [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O]
  [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K]
  {t : Wq l a →ₐ[ℤ_[l]] O} {ϖ : PiSys l e} {ι : Type} [Fintype ι] [DecidableEq ι]
  {G : Type} [Group G] [TopologicalSpace G]
  {P : PhiMod O K l e a ι} {T : LocLat G ℚ_[l] K O}

theorem twincl_smul {R R' : Type} [CommRing R] [CommRing R'] [Algebra O R] [Algebra O R'] (f : R →ₐ[O] R')
    (r : R) (z : TW R T) : TWincl f T (r • z) = f r • TWincl f T z := by
  induction z using TensorProduct.induction_on with
  | zero => simp only [map_zero, smul_zero]
  | add x y hx hy => simp only [map_add (f := _), smul_add, hx, hy]
  | tmul b x => simp [TWincl, TensorProduct.smul_tmul']

theorem twincl_injective {R R' : Type} [CommRing R] [CommRing R'] [Algebra O R] [Algebra O R'] (f : R →ₐ[O] R')
    (hf : Function.Injective f) : Function.Injective (TWincl f T) := by
  haveI : Module.Free O ↥T.L.T := T.L.free
  exact Module.Flat.rTensor_preserves_injective_linearMap (M := ↥T.L.T) f.toLinearMap hf

theorem inclL_smul' (r : OA l O) (d : ι → OA l O) : inclL t ϖ P (r • d) = inclO l O r • inclL t ϖ P d := by
  rw [inclL_apply, inclL_apply, ← Matrix.mulVec_smul]
  exact congrArg _ (funext fun i => map_mul _ _ _)

variable {I : Ident t ϖ P T} {m n : OA l O}

def dFun (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (x : ↥T.L.T) : ι → OA l O :=
  (LinearMap.mem_range.1 (hn x)).choose

theorem dFun_spec (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (x : ↥T.L.T) :
    inclL t ϖ P (dFun hn x) = inclO l O n • I.ofT x :=
  (LinearMap.mem_range.1 (hn x)).choose_spec

def dMap (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) : ↥T.L.T →ₗ[O] (ι → OA l O) where
  toFun := dFun hn
  map_add' x y := inclL_injective t ϖ P (by
    rw [map_add (f := _), dFun_spec, dFun_spec, dFun_spec, map_add (f := _), smul_add])
  map_smul' r x := inclL_injective t ϖ P (by
    rw [LinearMap.map_smul, dFun_spec, dFun_spec, LinearMap.map_smul, RingHom.id_apply, smul_comm])

theorem dMap_spec (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (x : ↥T.L.T) :
    inclL t ϖ P (dMap hn x) = inclO l O n • I.ofT x :=
  dFun_spec hn x

def gA (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) : TW (OA l O) T →ₗ[OA l O] (ι → OA l O) :=
  LinearMap.liftBaseChange (OA l O) (dMap hn)

theorem inclL_gA (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (z : TW (OA l O) T) :
    inclL t ϖ P (gA hn z) = inclO l O n • I.j.symm (TWincl (inclO l O) T z) := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | add x y hx hy => simp only [map_add (f := _), smul_add, hx, hy]
  | tmul b x =>
    rw [gA, LinearMap.liftBaseChange_tmul, inclL_smul', dMap_spec]
    have : TWincl (inclO l O) T (b ⊗ₜ[O] x) = inclO l O b • ((1 : OW l O) ⊗ₜ[O] x) := by
      simp [TWincl, smul_tmul']
    rw [this, LinearEquiv.map_smul, smul_comm]
    rfl

def zz (hm : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O m • v) = TWincl (inclO l O) T z) (i : ι) :
    TW (OA l O) T :=
  (hm _ ⟨Pi.single i 1, rfl⟩).choose

theorem zz_spec (hm : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O m • v) = TWincl (inclO l O) T z)
    (i : ι) : I.j (inclO l O m • inclL t ϖ P (Pi.single i 1)) = TWincl (inclO l O) T (zz hm i) :=
  (hm _ ⟨Pi.single i 1, rfl⟩).choose_spec

def crisComparisonLToBcrisTensorMap (hm : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O m • v) = TWincl (inclO l O) T z) :
    (ι → OB l O) →ₗ[OB l O] TW (OB l O) T :=
  (Pi.basisFun (OB l O) ι).constr (OB l O) fun i => TWincl (toB l O) T (zz hm i)

def crisComparisonBcrisTensorToLMap (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) : TW (OB l O) T →ₗ[OB l O] (ι → OB l O) :=
  LinearMap.liftBaseChange (OB l O) (((toB l O).toLinearMap.compLeft ι) ∘ₗ dMap hn)

theorem kisin_jB_toB (hm : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O m • v) = TWincl (inclO l O) T z)
    (c : ι → OA l O) (z : TW (OA l O) T)
    (hz : I.j (inclO l O m • inclL t ϖ P c) = TWincl (inclO l O) T z) :
    crisComparisonLToBcrisTensorMap hm (fun i => toB l O (c i)) = TWincl (toB l O) T z := by
  have hz' : z = ∑ i, c i • zz hm i := by
    apply twincl_injective (T := T) (inclO l O) inclO_injective

    rw [← hz, map_sum]
    have hc : inclL t ϖ P c = ∑ i, inclO l O (c i) • inclL t ϖ P (Pi.single i 1) := by
      conv_lhs => rw [pi_eq_sum_univ' c]

      rw [map_sum]
      exact Finset.sum_congr rfl fun i _ => inclL_smul' _ _

    rw [hc, Finset.smul_sum, map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [twincl_smul, ← zz_spec hm i, smul_comm, LinearEquiv.map_smul]

  rw [hz', map_sum, crisComparisonLToBcrisTensorMap, Module.Basis.constr_apply_fintype]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [twincl_smul, Pi.basisFun_equivFun]
  rfl

theorem kisin_kB_tensor_incl (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (z : TW (OA l O) T) :
    crisComparisonBcrisTensorToLMap hn (TWincl (toB l O) T z) = fun i => toB l O (gA hn z i) := by
  induction z using TensorProduct.induction_on with
  | zero => funext i; simp
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, map_add (f := _)]; funext i; simp
  | tmul b x =>
    have : TWincl (toB l O) T (b ⊗ₜ[O] x) = toB l O b ⊗ₜ[O] x := by simp [TWincl]
    rw [this, crisComparisonBcrisTensorToLMap, gA, LinearMap.liftBaseChange_tmul, LinearMap.liftBaseChange_tmul]
    funext i
    simp

theorem kisin_kB_comp_jB (hm : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O m • v) = TWincl (inclO l O) T z)
    (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (v : ι → OB l O) :
    crisComparisonBcrisTensorToLMap hn (crisComparisonLToBcrisTensorMap hm v) = (toB l O m * toB l O n) • v := by
  have h : (crisComparisonBcrisTensorToLMap hn).comp (crisComparisonLToBcrisTensorMap hm) = (toB l O m * toB l O n) • LinearMap.id := by
    refine (Pi.basisFun (OB l O) ι).ext fun i => ?_
    rw [LinearMap.comp_apply, crisComparisonLToBcrisTensorMap, Module.Basis.constr_basis, kisin_kB_tensor_incl, LinearMap.smul_apply, LinearMap.id_apply]
    have hg : gA hn (zz hm i) = (m * n) • Pi.single i 1 := by
      apply inclL_injective t ϖ P
      rw [inclL_gA, ← zz_spec hm i, LinearEquiv.symm_apply_apply, inclL_smul', map_mul, mul_smul, smul_comm]
    rw [hg, Pi.basisFun_apply]
    funext j
    by_cases hij : j = i
    · subst hij; simp
    · simp [hij]
  exact LinearMap.congr_fun h v

theorem kisin_jB_comp_kB (hm : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O m • v) = TWincl (inclO l O) T z)
    (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (w : TW (OB l O) T) :
    crisComparisonLToBcrisTensorMap hm (crisComparisonBcrisTensorToLMap hn w) = (toB l O m * toB l O n) • w := by
  induction w using TensorProduct.induction_on with
  | zero => simp
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, smul_add]
  | tmul b x =>
    have h1 : b ⊗ₜ[O] x = b • ((1 : OB l O) ⊗ₜ[O] x) := by rw [smul_tmul', smul_eq_mul, mul_one]
    rw [h1, LinearMap.map_smul, LinearMap.map_smul, smul_comm]
    congr 1
    rw [crisComparisonBcrisTensorToLMap, LinearMap.liftBaseChange_tmul, one_smul]
    change crisComparisonLToBcrisTensorMap hm (fun i => toB l O (dMap hn x i)) = _
    rw [kisin_jB_toB hm (dMap hn x) ((m * n) ⊗ₜ[O] x)]
    · simp [TWincl, smul_tmul']
    · rw [dMap_spec, smul_smul, ← map_mul, LinearEquiv.map_smul, Ident.j_ofT]
      simp [TWincl, smul_tmul']

theorem exists_of (hm : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O m • v) = TWincl (inclO l O) T z)
    (hn : ∀ x, inclO l O n • I.ofT x ∈ LA t ϖ P) (hu : IsUnit (toB l O m)) (hv : IsUnit (toB l O n)) :
    ∃ jB, IsCrisCmp I jB := by
  obtain ⟨u, hu'⟩ := hu
  obtain ⟨v, hv'⟩ := hv
  let F : (ι → OB l O) →ₗ[OB l O] TW (OB l O) T := ((u⁻¹ : (OB l O)ˣ) : OB l O) • crisComparisonLToBcrisTensorMap hm
  let Gm : TW (OB l O) T →ₗ[OB l O] (ι → OB l O) := ((v⁻¹ : (OB l O)ˣ) : OB l O) • crisComparisonBcrisTensorToLMap hn
  have key : ((u⁻¹ : (OB l O)ˣ) : OB l O) * (((v⁻¹ : (OB l O)ˣ) : OB l O) * (toB l O m * toB l O n)) = 1 := by
    rw [← hu', ← hv']
    calc _ = (((u⁻¹ : (OB l O)ˣ) : OB l O) * u) * (((v⁻¹ : (OB l O)ˣ) : OB l O) * v) := by ring
      _ = 1 := by rw [Units.inv_mul, Units.inv_mul, mul_one]
  have key2 : ((v⁻¹ : (OB l O)ˣ) : OB l O) * (((u⁻¹ : (OB l O)ˣ) : OB l O) * (toB l O m * toB l O n)) = 1 := by
    rw [← key]; ring
  refine ⟨LinearEquiv.ofLinear F Gm ?_ ?_, ?_⟩
  · refine LinearMap.ext fun w => ?_
    simp only [F, Gm, LinearMap.comp_apply, LinearMap.smul_apply, LinearMap.map_smul, kisin_jB_comp_kB, smul_smul,
      LinearMap.id_apply]
    rw [key, one_smul]
  · refine LinearMap.ext fun w => ?_
    simp only [F, Gm, LinearMap.comp_apply, LinearMap.smul_apply, LinearMap.map_smul, kisin_kB_comp_jB, smul_smul,
      LinearMap.id_apply]
    rw [key2, one_smul]
  · intro c z hz
    rw [LinearEquiv.ofLinear_apply]
    have hz2 : I.j (inclO l O m • inclL t ϖ P c) = TWincl (inclO l O) T (m • z) := by
      rw [LinearEquiv.map_smul, hz, twincl_smul]
    simp only [F, LinearMap.smul_apply]
    rw [kisin_jB_toB hm c _ hz2, twincl_smul, smul_smul, ← hu', Units.inv_mul, one_smul]

end GlobalTheory.BKGal.CrisCmpExist

theorem GlobalTheory.BKGal.exists_isCrisCmp : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] [TameDescentExponentData K l e a] (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e) (ι : Type) [Fintype ι] [DecidableEq ι] (P : PhiMod O K l e a ι) (T : LocLat (Gl l) ℚ_[l] K O) (I : Ident t ϖ P T), ∃ jB, IsCrisCmp I jB := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ _ t ϖ ι _ _ P T I
  obtain ⟨α, β, hα, hβ⟩ := P.exists_exponents
  obtain ⟨ε, hε⟩ := (_root_.GlobalTheory.MuOfEps.main l).1
  obtain ⟨δ, hδ, -⟩ := hε.2
  obtain ⟨-, -, -, hunit, -, -, -⟩ := (_root_.GlobalTheory.MuOfEps.main l).2 ε δ hε hδ
  obtain ⟨-, -, h3, h4⟩ := _root_.GlobalTheory.BKExp.exponents l a e O K t ϖ ι P T I α β hα hβ ε δ hε hδ
  have hU : ∀ k : ℕ, IsUnit (toB l O (1 ⊗ₜ (muOf ε ^ k))) := fun k => by
    have : toB l O (1 ⊗ₜ (muOf ε ^ k)) = (Algebra.TensorProduct.includeRight : Per.Bcris l →ₐ[ℤ_[l]] OB l O)
        (acrisToBcris l (ainfToAcris l (muOf ε))) ^ k := by
      rw [← map_pow, ← map_pow, ← map_pow]
      rfl
    rw [this]
    exact (hunit.map _).pow k
  exact GlobalTheory.BKGal.CrisCmpExist.exists_of h4 h3 (hU α) (hU β)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisComparisonKisinLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PhiWInclLEPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PhiWInclLEPow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIterateDerivative\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InstTameDescentExponentDataPadicThree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory.BKReal

theorem phiW_inclL_E_pow : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] [TameDescentExponentData K l e a] (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e) (ι : Type) [Fintype ι] [DecidableEq ι] (P : PhiMod O K l e a ι) (α : ℕ) (Y : Matrix ι ι (OA l O)), (∀ i j, ∃ f : ZMod a → A O K, (∀ τ, (f τ : K⟦X⟧) = E K l e ^ α * P.mx τ i j) ∧ Y i j = ϖ.iTot t K f) → ∀ c : ι → OA l O, inclO l O (frobOA l O (1 ⊗ₜ ϖ.ev a (eis l a e))) ^ α • phiW t ϖ P (inclL t ϖ P c) = inclL t ϖ P (Y.map (frobOA l O) *ᵥ fun i => frobOA l O (c i)) := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ _ t ϖ ι _ _ P α Y hY c
  set s0 : OW l O := inclO l O (1 ⊗ₜ ϖ.ev a (eis l a e)) with hs0

  have key : Y.map (inclO l O) = s0 ^ α • frobMat t ϖ P := by
    ext i j
    obtain ⟨f, hf, hYij⟩ := hY i j
    rw [Matrix.map_apply, hYij, ← ϖ.iW_of_mem t K, Matrix.smul_apply, smul_eq_mul, hs0, ← ϖ.iTot_E t K,
      ← ϖ.iW_of_mem t K, ← map_pow, frobMat, Matrix.map_apply, Matrix.of_apply, ← map_mul]
    congr 1
    funext τ
    apply Subtype.ext
    simp only [Pi.mul_apply, Pi.pow_apply, Subalgebra.coe_mul, Subalgebra.coe_pow, hf τ]
    rfl
  have key2 : (Y.map (frobOA l O)).map (inclO l O) =
      inclO l O (frobOA l O (1 ⊗ₜ ϖ.ev a (eis l a e))) ^ α • (frobMat t ϖ P).map (frobOW l O) := by
    have h1 : (Y.map (frobOA l O)).map (inclO l O) = (Y.map (inclO l O)).map (frobOW l O) := by
      ext i j; simp only [Matrix.map_apply, frobOW_inclO]
    rw [h1, key]
    ext i j
    simp only [Matrix.map_apply, Matrix.smul_apply, smul_eq_mul, map_mul, map_pow, hs0, frobOW_inclO]
  rw [inclL_apply, phiW_apply, inclL_apply]
  have h2 : (fun i => frobOW l O ((frobMat t ϖ P *ᵥ fun i => inclO l O (c i)) i)) =
      (frobMat t ϖ P).map (frobOW l O) *ᵥ fun i => inclO l O (frobOA l O (c i)) := by
    ext i

    simp only [Matrix.mulVec, dotProduct, map_sum, map_mul, Matrix.map_apply, frobOW_inclO]
  have h3 : (fun i => inclO l O ((Y.map (frobOA l O) *ᵥ fun i => frobOA l O (c i)) i)) =
      (Y.map (frobOA l O)).map (inclO l O) *ᵥ fun i => inclO l O (frobOA l O (c i)) := by
    ext i

    simp only [Matrix.mulVec, dotProduct, map_sum, map_mul, Matrix.map_apply]
  rw [h2, h3, key2, Matrix.smul_mulVec, Matrix.mulVec_smul]

end GlobalTheory.BKReal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PhiWInclLEPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinBcrisComparisonFrobeniusNaturality =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinBcrisComparisonFrobeniusNaturality", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPotential\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinLatticeExponentsAinfComparison\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CmpSemilinearPair\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBcrisComparisonKisinLattice\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitToBFrobEis\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIterateDerivative\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InstTameDescentExponentDataPadicThree\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PhiWInclLEPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ToBcrisPhi\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TeichmullerSubOneAinfPropertiesCompatibleRoots\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BK GlobalTheory.BKReal GlobalTheory.BKGal GlobalTheory.Per Matrix
open scoped Formalism.Per

namespace GlobalTheory.CrisComparison

theorem toB_tmul' {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [Algebra ℤ_[l] O] (o : O) (w : Ainf l) :
    toB l O (o ⊗ₜ w) = o ⊗ₜ acrisToBcris l (ainfToAcris l w) := rfl

theorem toB_frobOA {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [Algebra ℤ_[l] O] (x : OA l O) :
    toB l O (frobOA l O x) = frobOB l O (toB l O x) := by
  simp only [toB, AlgHom.comp_apply, frobOB_toOB, frobOCr_toOCr]

theorem toB_galOA {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [Algebra ℤ_[l] O] (g : GQ l) (x : OA l O) :
    toB l O (galOA O g x) = galOB O g (toB l O x) := by
  simp only [toB, AlgHom.comp_apply, galOB_toOB, galOCr_toOCr]

theorem map_smul_tw {O R N : Type} [CommRing O] [CommRing R] [Algebra O R] [AddCommGroup N] [Module O N]
    (σ : R →ₐ[O] R) (h : N →ₗ[O] N) (r : R) (z : R ⊗[O] N) :
    TensorProduct.map σ.toLinearMap h (r • z) = σ r • TensorProduct.map σ.toLinearMap h z := by
  induction z using TensorProduct.induction_on with
  | zero => simp only [smul_zero, map_zero]
  | tmul x y => simp only [TensorProduct.smul_tmul', TensorProduct.map_tmul, AlgHom.toLinearMap_apply, smul_eq_mul, map_mul]
  | add x y hx hy => simp only [smul_add, map_add (f := _), hx, hy]

theorem inclL_smul' {l : ℕ} [Fact l.Prime] {a e : ℕ} [NeZero a] [NeZero e] {O K : Type} [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O]
    [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K]
    (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e) {ι : Type} [Fintype ι] [DecidableEq ι] (P : PhiMod O K l e a ι)
    (r : OA l O) (c : ι → OA l O) : inclL t ϖ P (r • c) = inclO l O r • inclL t ϖ P c := by
  rw [inclL_apply, inclL_apply, ← Matrix.mulVec_smul]
  exact congrArg _ (funext fun i => map_mul _ _ _)

theorem exists_Y : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] [TameDescentExponentData K l e a] (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e) (ι : Type) [Fintype ι] [DecidableEq ι] (P : PhiMod O K l e a ι) (α : ℕ), (∀ m ∈ P.L, E K l e ^ α • m ∈ P.M) → ∃ Y : Matrix ι ι (OA l O), (∀ i j, ∃ f : ZMod a → A O K, (∀ τ, (f τ : K⟦X⟧) = E K l e ^ α * P.mx τ i j) ∧ Y i j = ϖ.iTot t K f) := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ _ t ϖ ι _ _ P α hα
  have key : ∀ i j, ∃ f : ZMod a → A O K, (∀ τ, (f τ : K⟦X⟧) = E K l e ^ α * P.mx τ i j) := by
    intro i j
    have hv : (fun τ k => P.mx τ k j : Vec K a ι) ∈ P.L := mem_tot.2 fun τ => P.mem_extc.2
      ⟨Pi.single j 1, fun k => by
        by_cases hk : k = j
        · subst hk; simp only [Pi.single_eq_same]; exact one_mem _
        · rw [Pi.single_eq_of_ne hk]; exact zero_mem _, by
        ext1 k; simp [Matrix.mulVec_single]⟩
    have h := hα _ hv
    exact ⟨fun τ => ⟨E K l e ^ α * P.mx τ i j, mem_tot.1 h τ i⟩, fun τ => rfl⟩
  choose f hf using key
  exact ⟨fun i j => ϖ.iTot t K (f i j), fun i j => ⟨f i j, hf i j, rfl⟩⟩

theorem main : ∀ (l : ℕ) [Fact l.Prime] (a e : ℕ) [NeZero a] [NeZero e] (O K : Type) [CommRing O] [Algebra ℤ_[l] O] [Module.Free ℤ_[l] O] [Module.Finite ℤ_[l] O] [NormedField K] [IsUltrametricDist K] [Algebra O K] [IsUnitBall O K] [NormedAlgebra ℚ_[l] K] [TameDescentExponentData K l e a] (t : Wq l a →ₐ[ℤ_[l]] O) (ϖ : PiSys l e) (ι : Type) [Fintype ι] [DecidableEq ι] (P : PhiMod O K l e a ι) (T : LocLat (Gl l) ℚ_[l] K O) (I : Ident t ϖ P T), (∃ jB, IsCrisCmp I jB) ∧ ∀ (jB : (ι → OB l O) ≃ₗ[OB l O] TW (OB l O) T), IsCrisCmp I jB → (∀ (m m' : P.MMl), m'.1 = P.phi m.1 → jB (toBcris t ϖ P m') = TWmap (frobOB l O) T (jB (toBcris t ϖ P m))) ∧ (∀ w b b', IsCrisVal t ϖ P jB w b → IsCrisVal t ϖ P jB w b' → b = b') ∧ (∀ w b, IsCrisVal t ϖ P jB w b → IsCrisVal t ϖ P jB (phiW t ϖ P w) (TWmap (frobOB l O) T b)) ∧ (∀ x : ↥T.L.T, IsCrisVal t ϖ P jB (I.ofT x) ((1 : OB l O) ⊗ₜ[O] x)) ∧ (∀ g : Gl l, (∀ v ∈ LA t ϖ P, I.act (sQ l g) g v ∈ LA t ϖ P) → ∀ w b, IsCrisVal t ϖ P jB w b → IsCrisVal t ϖ P jB (I.act (sQ l g) g w) (actB (sQ l) T g b)) := by
  intro l _ a e _ _ O K _ _ _ _ _ _ _ _ _ _ t ϖ ι _ _ P T I
  obtain ⟨ε, hε⟩ := (_root_.GlobalTheory.MuOfEps.main l).1
  obtain ⟨δ, hδ, -⟩ := hε.2
  obtain ⟨-, -, -, hμB, -, -, -⟩ := (_root_.GlobalTheory.MuOfEps.main l).2 ε δ hε hδ
  obtain ⟨α, β, hα, hβ⟩ := P.exists_exponents
  obtain ⟨-, -, hK3, hK4⟩ := _root_.GlobalTheory.BKExp.exponents l a e O K t ϖ ι P T I α β hα hβ ε δ hε hδ
  have hunit : ∀ n : ℕ, IsUnit (toB l O (1 ⊗ₜ (muOf ε ^ n))) := fun n => by
    rw [toB_tmul', map_pow, map_pow]
    exact (hμB.pow n).map (Algebra.TensorProduct.includeRight : Per.Bcris l →ₐ[ℤ_[l]] OB l O)
  obtain ⟨Y, hY⟩ := exists_Y l a e O K t ϖ ι P α hα
  have hEu := _root_.GlobalTheory.BKGal.FrobEis.isUnit_toB_frob_eis l a e O ϖ
  have hYphi := _root_.GlobalTheory.BKReal.phiW_inclL_E_pow l a e O K t ϖ ι P α Y hY
  have hSl := _root_.GlobalTheory.BKGal.FrobCoord.toBcris_phi l a e O K t ϖ ι P α Y hY
  refine ⟨_root_.GlobalTheory.BKGal.exists_isCrisCmp l a e O K t ϖ ι P T I, fun jB hjB => ?_⟩
  have hμL : ∀ v ∈ LA t ϖ P, ∃ z : TW (OA l O) T, I.j (inclO l O (1 ⊗ₜ (muOf ε ^ α)) • v) = TWincl (inclO l O) T z :=
    hK4
  have keyφ := _root_.GlobalTheory.BKGal.cmp_semilinear_pair l a e O K t ϖ ι P T I jB hjB _ (hunit α) hμL (frobOA l O) (frobOW l O) (frobOB l O)
    LinearMap.id (phiW t ϖ P) (frobOA l O (1 ⊗ₜ ϖ.ev a (eis l a e)) ^ α) (Y.map (frobOA l O))
    (fun x => (frobOW_inclO x).symm) toB_frobOA (fun v => I.j_φ v) (phiW_smul t ϖ P)
    (fun c => by rw [map_pow]; exact hYphi c)
  refine ⟨fun m m' hmm => ?_, fun w b b' hb hb' => ?_, fun w b hb => ?_, fun x => ?_, fun g hg w b hb => ?_⟩
  · refine (hEu.pow α).smul_left_cancel.1 ?_
    rw [← LinearEquiv.map_smul, hSl m m' hmm, keyφ, map_pow]
    rfl
  · obtain ⟨m, c, hm, hw, hb⟩ := hb
    obtain ⟨m', c', hm', hw', hb'⟩ := hb'
    have h1 : m' • c = m • c' := inclL_injective t ϖ P (by
      rw [inclL_smul', inclL_smul', ← hw, ← hw', smul_smul, smul_smul, ← map_mul, ← map_mul, mul_comm])
    have h2 : ∀ (r : OA l O) (d : ι → OA l O), toB l O r • (fun i => toB l O (d i)) = fun i => toB l O ((r • d) i) :=
      fun r d => funext fun i => by simp only [Pi.smul_apply, smul_eq_mul, map_mul]
    refine ((hm.mul hm').smul_left_cancel).1 ?_
    rw [mul_comm, mul_smul, hb, mul_comm, mul_smul, hb', ← LinearEquiv.map_smul, ← LinearEquiv.map_smul, h2, h2, h1]
  · obtain ⟨m, c, hm, hw, hb⟩ := hb
    refine ⟨frobOA l O (1 ⊗ₜ ϖ.ev a (eis l a e)) ^ α * frobOA l O m, Y.map (frobOA l O) *ᵥ fun i => frobOA l O (c i), ?_, ?_, ?_⟩
    · rw [map_mul, map_pow, toB_frobOA m]
      exact (hEu.pow α).mul (hm.map _)
    · rw [map_mul, map_pow, mul_smul, ← frobOW_inclO m, ← phiW_smul, hw]
      exact hYphi c
    · have h3 := keyφ (fun i => toB l O (c i))
      rw [map_mul, mul_smul, toB_frobOA m]
      change _ • frobOB l O (toB l O m) • TensorProduct.map (frobOB l O).toLinearMap LinearMap.id b = _
      rw [← map_smul_tw, hb, ← h3]
      congr 1
      ext i
      simp [Matrix.mulVec, dotProduct, map_sum, map_mul, toB_frobOA]
  · obtain ⟨c, hc⟩ := hK3 x
    refine ⟨1 ⊗ₜ (muOf ε ^ β), c, hunit β, hc.symm, ?_⟩
    have h4 := hjB c ((1 ⊗ₜ (muOf ε ^ β)) ⊗ₜ x) (by
      rw [hc, LinearEquiv.map_smul, I.j_ofT, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
      rfl)
    rw [h4, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
    rfl
  · obtain ⟨m, c, hm, hw, hb⟩ := hb
    obtain ⟨Γ, hΓ⟩ := (I.exists_isLMat_iff (sQ l g) g).2 hg
    have key := _root_.GlobalTheory.BKGal.cmp_semilinear_pair l a e O K t ϖ ι P T I jB hjB _ (hunit α) hμL (galOA O (sQ l g)) (galOW O (sQ l g))
      (galOB O (sQ l g)) (T.actT g) (I.act (sQ l g) g) 1 Γ (fun x => (galOW_inclO _ x).symm) (toB_galOA _)
      (fun v => I.j_act _ _ v) (I.act_smul _ _) (fun c => by rw [map_one, one_smul]; exact hΓ c)
    refine ⟨galOA O (sQ l g) m, Γ *ᵥ fun i => galOA O (sQ l g) (c i), ?_, ?_, ?_⟩
    · rw [toB_galOA]
      exact hm.map _
    · rw [← galOW_inclO, ← I.act_smul, hw]
      exact hΓ c
    · have h3 := key (fun i => toB l O (c i))
      rw [map_one, one_smul] at h3
      rw [toB_galOA]
      change _ • TensorProduct.map (galOB O (sQ l g)).toLinearMap (T.actT g) b = _
      rw [← map_smul_tw, hb, ← h3]
      congr 1
      ext i
      simp [Matrix.mulVec, dotProduct, map_sum, map_mul, toB_galOA]

end GlobalTheory.CrisComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinBcrisComparisonFrobeniusNaturality =====

module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkOfInjective
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ToStkAInjective
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniformBaseChange.PullGt
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrigVal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionValueZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorFieldPointThroughGenericPoint
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightZeroSectionNonzeroAtOrigin
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaFamilyPrescribedLeadingTermStatement
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Linter.Style
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullGenPf
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.CstDvdOfCstMulEqZero
import Mathlib.Tactic.Basify
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FibreLawOfTestCartesian
import Mathlib.Tactic.Lemma
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesUnitSectionRigidificationUnit, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumNullFamilyCompleteLocal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedValueAtOrigin, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionOriginValuesSumModPow, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitRigidifiedValueAtOrigin, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginMemIdealPowOfVanishes, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginPullbackDegeneration, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitAdicSumOriginValuesIntegralFamily, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValueUnitSectionSmulGenericFibreSection, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaNormalisationConstantOrigin, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriesTransportUniformisingIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTraitScalarGenericFibreNonfield, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitScalarCancelOfIsField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitExpansionScalarsRescale, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraits, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraitsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesUnitSectionRigidificationUnit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesUnitSectionRigidificationUnit", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkOfInjective\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ToStkAInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniformBaseChange.PullGt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem stalkOf_cpt_bijective (W : Type) [CommRing W] [IsLocalRing W] : Function.Bijective (stalkOf (cpt W)) := by
  have e : stalkOf (cpt W) = (stalkClosedPointIso (.of W)).inv.hom := by
    have h := ΓSpecIso_hom_stalkClosedPointIso_inv (CommRingCat.of W)
    have h' : (stalkClosedPointIso (.of W)).inv = (Scheme.ΓSpecIso (CommRingCat.of W)).inv ≫
        (Sp W).presheaf.germ ⊤ (cpt W) trivial := by
      rw [Iso.eq_inv_comp]; exact h
    rw [h']; rfl
  rw [e]
  exact (stalkClosedPointIso (.of W)).symm.commRingCatIsoToRingEquiv.bijective

theorem exists_unit_stalkOf (W : Type) [CommRing W] [IsLocalRing W] (x : ((Sp W).presheaf.stalk (cpt W))ˣ) :
    ∃ ε : Wˣ, stalkOf (cpt W) (ε : W) = x.val := by
  let e := RingEquiv.ofBijective _ (stalkOf_cpt_bijective W)
  exact ⟨Units.map e.symm.toMonoidHom x, e.apply_symm_apply x.val⟩

theorem gs_scal_section {W : Type} [CommRing W] {Y : Scheme.{0}} (p : Y ⟶ Sp W) (e : Sp W ⟶ Y) (he : e ≫ p = 𝟙 _)
    (z : Sp W) (u : W) : gs e z ⊤ (scal p u) = stalkOf z u := by
  have h := gs_pull e p z ⊤ trivial ((Scheme.ΓSpecIso (CommRingCat.of W)).inv.hom u)
  rw [he] at h
  exact h.trans (gs_eq (𝟙 _) z ⊤ trivial _)

theorem gw_val_indep {X X' Y Y' Z : Scheme.{0}} {L : LB X} {L' : LB X'} {F : X' ⟶ X} (w : LB.Iso L' (L.pull F))
    (hw : w.IsGen) {s : Y ⟶ X} {s' : Y' ⟶ X'} (t : LB.Gen (L.pull s)) (ht : t.IsGen) (t' : LB.Gen (L'.pull s'))
    (ht' : t'.IsGen) (r : Z ⟶ Y) (r' : Z ⟶ Y') (e : Z ⟶ X') (he' : r' ≫ s' = e) (he : r ≫ s = e ≫ F) (z : Z)
    {I J : (Z ⟶ X) → L.ι} {I' J' : (Z ⟶ X') → L'.ι} (hI : Good L z I) (hJ : Good L z J) (hI' : Good L' z I')
    (hJ' : Good L' z J') :
    gw w e z (J (e ≫ F)) (J' e) * val t' r' z J' * (val t r z J)⁻¹ =
      gw w e z (I (e ≫ F)) (I' e) * val t' r' z I' * (val t r z I)⁻¹ := by
  have a := (isGen_iff w).1 hw Z e z (J (e ≫ F)) (I (e ≫ F)) (J' e) (I' e) (hJ (e ≫ F)) (hI (e ≫ F)) (hJ' e) (hI' e)
  have b : val t r z J = _ * val t r z I := gen_trans ht r z (hJ.mem _ r) (hI.mem _ r)
  have c : val t' r' z J' = _ * val t' r' z I' := gen_trans ht' r' z (hJ'.mem _ r') (hI'.mem _ r')
  rw [trF, Fintype.prod_unique, zpow_one] at b c
  subst he'
  rw [he] at b
  rw [a, b, c]
  generalize gm ((r' ≫ s') ≫ F) z _ _ = A
  generalize gm (r' ≫ s') z _ _ = B
  rw [mul_inv]
  generalize gw w _ _ _ _ = C
  generalize val t' r' z I' = D
  generalize (val t r z I)⁻¹ = E
  have : A * B⁻¹ * C * (B * D) * (A⁻¹ * E) = (A * A⁻¹) * (B * B⁻¹) * (C * D * E) := by ac_rfl
  rw [this]; simp

theorem Trait.carries_unit : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) (C : LabCover D) (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (k : ℕ) (u : W) (σ' : H0 T.U.LG.L k) (σ : SecK C.P.L.L T.β k), T.Carries u σ' σ → ∃ ε : Wˣ, ∀ J J', Good C.P.L.L (cpt W) J → Good T.U.LG.L (cpt W) J' → sval σ (unitW T.G) (cpt W) J * (val T.U.LG.rig (idW W) (cpt W) J').val ^ k = stalkOf (cpt W) (u * ε) * sval σ' (unitW T.G) (cpt W) J' * (val C.P.L.rig T.ξ (cpt W) J).val ^ k := by
  intro R _ _ _ D C W _ _ _ T k u σ' σ h
  obtain ⟨I, hI, -⟩ := exists_good C.P.L.L C.P.L.isLB (cpt W) (K := PEmpty.{1}) PEmpty.elim PEmpty.elim
    (fun a => a.elim) (fun a => a.elim)
  obtain ⟨I', hI', -⟩ := exists_good T.U.LG.L T.U.LG.isLB (cpt W) (K := PEmpty.{1}) PEmpty.elim PEmpty.elim
    (fun a => a.elim) (fun a => a.elim)
  have he : T.ξ ≫ eSec C.G = unitW T.G ≫ T.β := (PullGtPf.IsGrpPullback.one_left T.cart).symm
  obtain ⟨ε, hε⟩ := exists_unit_stalkOf W ((gw T.ℓ (unitW T.G) (cpt W) (I (unitW T.G ≫ T.β)) (I' (unitW T.G)) *
    val T.U.LG.rig (idW W) (cpt W) I' * (val C.P.L.rig T.ξ (cpt W) I)⁻¹) ^ k)
  refine ⟨ε, fun J J' hJ hJ' => ?_⟩
  have key := gw_val_indep T.ℓ T.ℓ_gen C.P.L.rig C.P.L.rigGen T.U.LG.rig T.U.LG.rigGen T.ξ (idW W) (unitW T.G)
    (Category.id_comp _) he (cpt W) hI hJ hI' hJ'
  rw [← key] at hε
  rw [h _ (unitW T.G) (cpt W) J J' hJ hJ', gs_scal_section T.G.hom (unitW T.G) (Over.w η[T.G]), map_mul, hε]
  generalize gw T.ℓ _ _ _ _ = A
  generalize val T.U.LG.rig _ _ _ = B
  generalize val C.P.L.rig _ _ _ = E
  have : (A * B * E⁻¹) ^ k * E ^ k = A ^ k * B ^ k := by rw [← mul_pow, ← mul_pow, inv_mul_cancel_right]
  have := congrArg Units.val this
  simp only [Units.val_mul, Units.val_pow_eq_pow_val] at this ⊢
  linear_combination (-(stalkOf (cpt W) u * sval σ' (unitW T.G) (cpt W) J')) * this

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesUnitSectionRigidificationUnit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumNullFamilyCompleteLocal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumNullFamilyCompleteLocal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
namespace GlobalTheory.Mum.AdicSum


open Classical in
theorem sum_sub_sum_mem {R : Type} [CommRing R] (J : Ideal R) {X : Type} (v : X → R)
    (S T : Finset X) (hS : ∀ α ∉ S, v α ∈ J) (hT : ∀ α ∉ T, v α ∈ J) :
    ∑ α ∈ S, v α - ∑ α ∈ T, v α ∈ J := by
  rw [← Finset.sum_sdiff_sub_sum_sdiff (s₁ := T) (s₂ := S)]
  exact J.sub_mem (J.sum_mem fun α hα => hT α (Finset.mem_sdiff.1 hα).2)
    (J.sum_mem fun α hα => hS α (Finset.mem_sdiff.1 hα).2)

theorem exists_adic_sum : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R →
    ∀ (X : Type) (v : X → R), (∀ e : ℕ, {α | v α ∉ maximalIdeal R ^ (e + 1)}.Finite) →
    ∃ s : R, ∀ (e : ℕ) (S : Finset X), (∀ α ∉ S, v α ∈ maximalIdeal R ^ (e + 1)) →
      s - ∑ α ∈ S, v α ∈ maximalIdeal R ^ (e + 1) := by
  intro R _ _ _ hR X v hfin
  have hC : IsAdicComplete (maximalIdeal R) R := hR.1.2.2.2
  have hfin' : ∀ n : ℕ, {α | v α ∉ maximalIdeal R ^ n}.Finite := fun n =>
    (hfin n).subset fun α (hα : v α ∉ maximalIdeal R ^ n) (h : v α ∈ maximalIdeal R ^ (n + 1)) =>
      hα (Ideal.pow_le_pow_right (Nat.le_succ n) h)
  let F : ℕ → Finset X := fun n => (hfin' n).toFinset
  have hF : ∀ n, ∀ α ∉ F n, v α ∈ maximalIdeal R ^ n := by
    intro n α hα
    by_contra h
    exact hα ((hfin' n).mem_toFinset.2 h)
  let f : ℕ → R := fun n => ∑ α ∈ F n, v α
  have hsm : ∀ n : ℕ, maximalIdeal R ^ n • (⊤ : Submodule R R) = maximalIdeal R ^ n := fun n => by
    rw [smul_eq_mul, Ideal.mul_top]
  obtain ⟨L, hL⟩ := (hC.toIsPrecomplete).prec (f := f) (by
    intro m n hmn
    rw [SModEq.sub_mem, hsm]
    exact sum_sub_sum_mem (maximalIdeal R ^ m) v (F m) (F n) (hF m)
      fun α hα => Ideal.pow_le_pow_right hmn (hF n α hα))
  refine ⟨L, fun e S hS => ?_⟩
  have h1 : f (e + 1) - L ∈ maximalIdeal R ^ (e + 1) := by
    have := hL (e + 1)
    rwa [SModEq.sub_mem, hsm] at this
  have h2 := sum_sub_sum_mem (maximalIdeal R ^ (e + 1)) v (F (e + 1)) S (hF (e + 1)) hS
  have : L - ∑ α ∈ S, v α = (f (e + 1) - ∑ α ∈ S, v α) - (f (e + 1) - L) := by ring
  rw [this]
  exact Ideal.sub_mem _ h2 h1

end GlobalTheory.Mum.AdicSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumNullFamilyCompleteLocal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedValueAtOrigin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedValueAtOrigin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrigVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.OrigValExists

theorem mem_of_closed {R : Type} [CommRing R] [IsLocalRing R] {X : Scheme.{0}} (f : Sp R ⟶ X) (U : X.Opens)
    (h : f (closedPoint R) ∈ U) (z : Sp R) : f z ∈ U := by
  have : f ⁻¹ᵁ U = ⊤ := (closedPoint_mem_iff (f ⁻¹ᵁ U)).1 h
  show z ∈ f ⁻¹ᵁ U
  rw [this]; trivial

theorem exists_stalkOf {R : Type} [CommRing R] {X : Scheme.{0}} (f : Sp R ⟶ X) (U : X.Opens)
    (h : ∀ z, f z ∈ U) (a : Γ(X, U)) : ∃ r : R, ∀ z, gs f z U a = stalkOf z r := by
  have hle : (⊤ : (Sp R).Opens) ≤ f ⁻¹ᵁ U := fun z _ => h z
  refine ⟨(Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom
    (((Sp R).presheaf.map (homOfLE hle).op).hom ((f.app U).hom a)), fun z => ?_⟩
  rw [gs_eq f z U (h z)]
  have e : ∀ x, (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom x) = x :=
    fun x => (Scheme.ΓSpecIso (CommRingCat.of R)).hom_inv_id_apply x
  refine Eq.trans ?_ (congrArg ((Sp R).presheaf.germ ⊤ z trivial).hom (e _)).symm
  exact (TopCat.Presheaf.germ_res_apply (Sp R).presheaf (homOfLE hle) z trivial _).symm

variable {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (α : D.X)

theorem unit_fam_zero : unitW D.P.A ≫ D.famφB α 0 = idW R ≫ eSec D.P.A :=
  (Category.comp_id _).trans (Category.id_comp _).symm

theorem unit_fam_one : unitW D.P.A ≫ D.famφB α 1 = unitW D.P.A ≫ D.famφB α 2 := by
  change η[D.P.A].left ≫ (padd D.P.A (𝟙 D.P.A) (toUnit _ ≫ D.c α)).left = η[D.P.A].left ≫ (toUnit D.P.A ≫ D.c α).left
  rw [← Over.comp_left, ← Over.comp_left]; congr 1
  simp only [padd, comp_lift_assoc, Category.comp_id]
  have := MonObj.lift_comp_one_left (𝟙 (𝟙_ (Over (Sp R)))) (η[D.P.A] ≫ toUnit D.P.A ≫ D.c α)
  rwa [Category.id_comp] at this

theorem unit_fam_three : unitW D.P.A ≫ D.famφB α 3 = idW R ≫ eSec D.P.A := by
  refine Eq.trans ?_ (Category.id_comp _).symm
  change η[D.P.A].left ≫ (toUnit D.P.A ≫ η[D.P.A]).left = η[D.P.A].left
  rw [← Over.comp_left]; congr 1
  rw [← Category.assoc, Subsingleton.elim (η[D.P.A] ≫ toUnit D.P.A) (𝟙 _), Category.id_comp]

theorem trF_unit (k : ℕ) (z : Sp R) (J I : (Sp R ⟶ D.P.A.left) → D.P.L.ι) :
    trF (L := D.P.L) (D.famφB α) (DegPre.famε k) (unitW D.P.A) z (fun i => J (unitW D.P.A ≫ D.famφB α i))
      (fun i => I (unitW D.P.A ≫ D.famφB α i)) =
    trF (L := D.P.L) (K := PUnit) (fun _ => eSec D.P.A) (fun _ => 1) (idW R) z (fun _ => J (idW R ≫ eSec D.P.A))
      (fun _ => I (idW R ≫ eSec D.P.A)) ^ k := by
  let h : (Sp R ⟶ D.P.A.left) → ((Sp R).presheaf.stalk z)ˣ :=
    fun ψ => gm ψ z (D.P.L.U (J ψ) ⊓ D.P.L.U (I ψ)) (D.P.L.g (J ψ) (I ψ))
  show ∏ i, h (unitW D.P.A ≫ D.famφB α i) ^ DegPre.famε k i = (∏ _i : PUnit, h (idW R ≫ eSec D.P.A) ^ (1 : ℤ)) ^ k
  rw [Fin.prod_univ_four, unit_fam_zero, unit_fam_one, unit_fam_three, Fintype.prod_unique]
  generalize h (idW R ≫ eSec D.P.A) = A
  generalize h (unitW D.P.A ≫ D.famφB α 2) = B
  show A ^ ((k : ℤ) - 1) * B ^ (1 : ℤ) * B ^ (-1 : ℤ) * A ^ (1 : ℤ) = (A ^ (1 : ℤ)) ^ k
  rw [zpow_sub_one, zpow_natCast, zpow_neg, zpow_one, zpow_one, mul_inv_cancel_right, inv_mul_cancel_right]

end GlobalTheory.Mum.OrigValExists

namespace GlobalTheory.Mum
open OrigValExists

theorem exists_origVal : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegPre R) (k : ℕ) (α : D.X) (b : D.SecB k α), ∃ v : R, OrigVal D b v := by
  intro R _ _ _ D k α b
  obtain ⟨I, hI₀, -⟩ := exists_good D.P.L D.P.isLB (Z := Sp R) (closedPoint R) (K := PEmpty.{1}) PEmpty.elim PEmpty.elim
    (fun a => a.elim) (fun a => a.elim)
  have hI : ∀ z, Good D.P.L z I := fun z ψ => mem_of_closed ψ _ (hI₀ ψ) z
  obtain ⟨a, ha⟩ := exists_stalkOf (unitW D.P.A) _ (fun z => (hI z).mem (D.famφB α) (unitW D.P.A))
    (b.f (fun i => I (unitW D.P.A ≫ D.famφB α i)))
  obtain ⟨u, hu⟩ := exists_stalkOf (idW R) _ (fun z => (hI z).mem (K := PUnit) (fun _ => eSec D.P.A) (idW R))
    ((D.rig.s (fun _ => I (idW R ≫ eSec D.P.A)))⁻¹).val
  refine ⟨a * u ^ k, fun z J hJ => ?_⟩
  have e₁ : sval b (unitW D.P.A) z J = _ * sval b (unitW D.P.A) z I :=
    sec_trans b (unitW D.P.A) z (hJ.mem _ _) ((hI z).mem _ _)
  have e₂ : val D.rig (idW R) z J = _ * val D.rig (idW R) z I :=
    gen_trans D.rig_gen (idW R) z (hJ.mem _ _) ((hI z).mem _ _)
  have e₃ : sval b (unitW D.P.A) z I = stalkOf z a := ha z
  have e₄ : stalkOf z u = ((val D.rig (idW R) z I)⁻¹).val :=
    (hu z).symm.trans ((gs_unit (idW R) z _ ((hI z).mem (K := PUnit) (fun _ => eSec D.P.A) (idW R)) _).trans
      (congrArg Units.val (map_inv _ _)))
  rw [e₁, e₂, e₃, trF_unit, map_mul, map_pow, e₄]
  generalize trF (K := PUnit) _ _ _ _ _ _ = A
  generalize val D.rig (idW R) z I = B
  rw [_root_.mul_assoc, ← mul_pow, ← Units.val_mul, _root_.mul_comm A B, inv_mul_cancel_left, Units.val_pow_eq_pow_val, _root_.mul_comm]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedValueAtOrigin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionOriginValuesSumModPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionOriginValuesSumModPow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrigVal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ToStkAInjective\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionValueZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullGenPf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem cst_id_eq_stalkOf {W : Type} [CommRing W] (z : Sp W) (a : W) : cst (𝟙 (Sp W)) z a = stalkOf z a :=
  gs_eq (𝟙 _) z ⊤ trivial _


open GlobalTheory.ExpansionValueZero in
theorem expandsAt_origVal : ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (D' : DegData W (maximalIdeal W)) (A : PolAV (Sp (FractionRing W))) (G : Over (Sp W)) [GrpObj G] [IsCommMonObj G] (U : UnifPre (maximalIdeal W) D' A G) (k e : ℕ) (σ' : H0 U.LG.L k) (f' : ∀ x, D'.toPre.SecB k x) (w : D'.toPre.X → W), (∀ x, OrigVal D'.toPre (f' x) (w x)) → U.ExpandsAt e k σ' f' → ∃ S : Finset D'.toPre.X, (∀ x ∉ S, w x ∈ maximalIdeal W ^ (e + 1)) ∧ ∀ J', Good U.LG.L (cpt W) J' → ∃ c ∈ maximalIdeal W ^ (e + 1), sval σ' (unitW G) (cpt W) J' = stalkOf (cpt W) (∑ x ∈ S, w x + c) * (val U.LG.rig (idW W) (cpt W) J').val ^ k := by
  intro W _ _ _ D' A G _ _ U k e σ' f' w hw hE
  classical
  choose a ha using fun α => exists_value D'.toPre k α (f' α)
  obtain rfl : w = a := funext fun α => stalkOf_injective (cpt W) (by
    choose J hJ using fun ψ : Sp W ⟶ D'.toPre.P.A.left => exists_chart D'.toPre.P.isLB (ψ (cpt W))
    have h₁ := ha α _ (𝟙 (Sp W)) (cpt W) J hJ
    have h₂ := hw α (cpt W) J hJ
    rw [cst_id_eq_stalkOf] at h₁
    rw [← Units.val_pow_eq_pow_val] at h₂
    have h₃ : sval (f' α) (𝟙 (Sp W) ≫ eSec D'.toPre.P.A) (cpt W) J = sval (f' α) (unitW D'.toPre.P.A) (cpt W) J :=
      congrArg (fun q => sval (f' α) q (cpt W) J) (Category.id_comp (unitW D'.toPre.P.A))
    exact (Units.mul_left_inj _).1 (h₂.symm.trans (h₃.symm.trans h₁)))
  obtain ⟨x, hx⟩ := exists_coeff (A := W) U.LG.isLB σ' (eSec G) (GeneratorPullback.powGen U.LG.L _ _ U.LG.rig k)
    (DVR.powGen_isGen _ _ _ _ U.LG.rigGen k) (fun W _ f => by simp)
  have hx' : ∀ (Z : Scheme.{0}) (r : Z ⟶ Sp W) (z : Z) (J), Good U.LG.L z J →
      sval σ' (r ≫ eSec G) z J = cst r z x * (val (L := U.LG.L) U.LG.rig r z J ^ k).val :=
    fun Z r z J hJ => (hx Z r z J hJ).trans (by rw [DVR.val_pow])
  obtain ⟨S, hS⟩ := value_sub_sum_mem U e k σ' f' hE x hx' w ha
  refine ⟨S, fun y hy => ?_, fun J' hJ' => ⟨x - ∑ α ∈ S, w α, hS S le_rfl, ?_⟩⟩
  · have h := Ideal.sub_mem _ (hS S le_rfl) (hS (insert y S) (Finset.subset_insert _ _))
    rw [Finset.sum_insert hy] at h
    convert h using 1
    ring
  · have h₁ := hx' _ (𝟙 (Sp W)) (cpt W) J' hJ'
    rw [cst_id_eq_stalkOf, Units.val_pow_eq_pow_val] at h₁
    rw [add_sub_cancel]
    exact (congrArg (fun q => sval σ' q (cpt W) J') (Category.id_comp (unitW G))).symm.trans h₁

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionOriginValuesSumModPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitRigidifiedValueAtOrigin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitRigidifiedValueAtOrigin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrigVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem stalkOf_closedPoint_isUnit {W : Type} [CommRing W] [IsLocalRing W] (v : W)
    (h : IsUnit (stalkOf (closedPoint W) v)) : IsUnit v := by
  have e : stalkOf (closedPoint W) = (stalkClosedPointIso (CommRingCat.of W)).inv.hom := by
    unfold stalkOf
    rw [← ΓSpecIso_hom_stalkClosedPointIso_inv]
    ext x
    simp
  rw [e] at h
  exact (isUnit_map_iff (stalkClosedPointIso (CommRingCat.of W)).symm.commRingCatIsoToRingEquiv v).1 h

theorem isUnit_origVal : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegPre R) (k : ℕ) (α : D.X) (b : D.SecB k α) (v : R), OrigVal D b v → eSec D.P.A (closedPoint R) ∈ nonzeroLocus b → IsUnit v := by
  intro R _ _ _ D k α b v hv hmem
  have hmem' : ∃ j, eSec D.P.A (closedPoint R) ∈ D.P.A.left.basicOpen (b.f j) := by
    unfold nonzeroLocus at hmem
    simpa [TopologicalSpace.Opens.mem_iSup] using hmem
  obtain ⟨j, hj⟩ := hmem'
  have hjU := D.P.A.left.basicOpen_le (b.f j) hj
  have hu := (Scheme.mem_basicOpen _ _ _ hjU).1 hj
  obtain ⟨J, hJ, -⟩ := exists_good (Z := Sp R) D.P.L D.P.isLB (closedPoint R) (K := Empty) Empty.elim Empty.elim
    (fun a => a.elim) (fun a => a.elim)
  have hsv := hv (closedPoint R) J hJ
  have e1 := sec_trans b (unitW D.P.A) (closedPoint R) (hJ.mem (D.famφB α) (unitW D.P.A)) hjU
  have hg : IsUnit (gs (unitW D.P.A) (closedPoint R) _ (b.f j)) := by
    rw [gs_eq _ _ _ hjU]
    have e2 := Scheme.Hom.germ_stalkMap_apply (eSec D.P.A) _ (closedPoint R) hjU (b.f j)
    exact e2 ▸ hu.map ((eSec D.P.A).stalkMap (closedPoint R)).hom
  have hs : IsUnit (sval b (unitW D.P.A) (closedPoint R) J) := by
    show IsUnit (gs _ _ _ _)
    rw [e1]
    exact (Units.isUnit _).mul hg
  rw [hsv] at hs
  exact stalkOf_closedPoint_isUnit v (isUnit_of_mul_isUnit_left hs)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitRigidifiedValueAtOrigin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginMemIdealPowOfVanishes =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginMemIdealPowOfVanishes", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrigVal\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.CstDvdOfCstMulEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.OrigVan

theorem stalkMap_stalkOf {R S : Type} [CommRing R] [CommRing S] (φ : R →+* S) (z : Sp S) (v : R) :
    ((Spec.map (CommRingCat.ofHom φ)).stalkMap z).hom (stalkOf ((Spec.map (CommRingCat.ofHom φ)) z) v) =
      stalkOf z (φ v) := by
  have e := congrArg (fun q => q.hom v) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom φ))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at e
  refine (Scheme.Hom.germ_stalkMap_apply (Spec.map (CommRingCat.ofHom φ)) ⊤ z trivial _).trans ?_
  exact congrArg ((Sp S).presheaf.germ ⊤ z trivial).hom e.symm

theorem eq_zero_of_stalkOf {S : Type} [CommRing S] (w : S) (h : ∀ z : Sp S, stalkOf z w = 0) : w = 0 := by
  have h1 : (Scheme.ΓSpecIso (CommRingCat.of S)).inv.hom w = 0 := by
    apply TopCat.Presheaf.section_ext (Sp S).sheaf ⊤
    intro x hx
    exact (h x).trans (map_zero _).symm
  have h2 := congrArg (Scheme.ΓSpecIso (CommRingCat.of S)).hom.hom h1
  simpa using h2

end GlobalTheory.Mum.OrigVan

namespace GlobalTheory.Mum
open OrigVan

theorem origVal_mem_of_vanMod : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R) (D : DegPre R) (k : ℕ) (α : D.X)
    (b : D.SecB k α) (v : R) (e : ℕ), OrigVal D b v → VanMod I b e → v ∈ I ^ (e + 1) := by
  intro R _ _ I D k α b v e hO hV
  rw [← Ideal.Quotient.eq_zero_iff_mem]
  refine eq_zero_of_stalkOf _ fun z => ?_
  choose J hJ using fun χ : Sp R ⟶ D.P.A.left => exists_chart D.P.isLB (χ (thick R I e z))
  have hG : Good D.P.L (thick R I e z) J := hJ
  have h1 := congrArg ((thick R I e).stalkMap z).hom (hO (thick R I e z) J hG)
  have hm := hG.mem (D.famφB α) (unitW D.P.A)
  have hu : unitW D.P.A ≫ D.P.A.hom = 𝟙 _ := Over.w (η[D.P.A])
  let s : Sp (R ⧸ I ^ (e + 1)) ⟶ pullback D.P.A.hom (thick R I e) :=
    pullback.lift (thick R I e ≫ unitW D.P.A) (𝟙 _) (by rw [Category.assoc, hu, Category.comp_id, Category.id_comp])
  have hs : s ≫ pullback.fst D.P.A.hom (thick R I e) = thick R I e ≫ unitW D.P.A := pullback.lift_fst _ _ _
  have hm' : (s ≫ pullback.fst D.P.A.hom (thick R I e)) z ∈
      LB.wchart D.P.L (D.famφB α) (fun k => J (unitW D.P.A ≫ D.famφB α k)) := by
    rw [hs]; exact hm
  have h0 : ((thick R I e).stalkMap z).hom (sval b (unitW D.P.A) (thick R I e z) J) = 0 := by
    refine (stalkMap_gs (thick R I e) (unitW D.P.A) z _ hm _).trans ?_
    rw [← hs]
    refine (gs_pull s _ z _ hm' _).symm.trans ?_
    refine (congrArg (gs s z _) (hV _)).trans ?_
    refine (gs_eq s z _ hm' _).trans ?_
    rw [map_zero, map_zero]
  rw [h0, map_mul, map_pow, stalkMap_stalkOf] at h1
  exact (((Units.isUnit _).map _).pow k).mul_left_eq_zero.1 h1.symm

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginMemIdealPowOfVanishes =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginPullbackDegeneration =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginPullbackDegeneration", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrigVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.OrigValPull

theorem stalkMap_stalkOf {R R' : Type} [CommRing R] [CommRing R'] (φ : R →+* R') (z : Sp R') (v : R) :
    ((spMap φ).stalkMap z).hom (stalkOf (spMap φ z) v) = stalkOf z (φ v) := by
  have h := congrArg (fun q => q.hom v) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom φ))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at h
  refine (Scheme.Hom.germ_stalkMap_apply (spMap φ) ⊤ z trivial _).trans ?_
  exact congrArg ((Sp R').presheaf.germ ⊤ z trivial).hom h.symm

theorem unit_fam {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (α : D.X) (κ : Fin 4) :
    unitW D.P.A ≫ D.famφB α κ = ![unitW D.P.A, (D.c α).left, (D.c α).left, unitW D.P.A] κ := by
  have u : η[D.P.A] ≫ toUnit D.P.A = 𝟙 _ := Subsingleton.elim _ _
  fin_cases κ
  · exact Category.comp_id _
  · show (η[D.P.A] ≫ padd D.P.A (𝟙 D.P.A) (toUnit _ ≫ D.c α)).left = (D.c α).left
    congr 1
    show η[D.P.A] ≫ (lift (𝟙 D.P.A) (toUnit _ ≫ D.c α) ≫ μ[D.P.A]) = _
    rw [← Category.assoc, comp_lift, Category.comp_id, ← Category.assoc, u, Category.id_comp]
    have := MonObj.lift_comp_one_left (𝟙 (𝟙_ (Over (Sp R)))) (D.c α)
    simpa using this
  · show (η[D.P.A] ≫ toUnit _ ≫ D.c α).left = (D.c α).left
    rw [← Category.assoc, u, Category.id_comp]
  · show (η[D.P.A] ≫ toUnit _ ≫ η[D.P.A]).left = η[D.P.A].left
    rw [← Category.assoc, u, Category.id_comp]

theorem origVal_pull : ∀ (R R' : Type) [CommRing R] [IsDomain R] [CommRing R'] [IsDomain R'] (φ : R →+* R') (D : DegPre R) (D' : DegPre R') (hD : IsPullDeg φ D D') (k : ℕ) (x : D'.X) (b : D.SecB k (hD.xe x)) (b' : D'.SecB k x) (v : R), PullB hD x b b' → OrigVal D b v → OrigVal D' b' (φ v) := by
  intro R R' _ _ _ _ φ D D' hD k x b b' v hP hO z J' hJ'
  choose J hJ using fun χ : Sp R ⟶ D.P.A.left => exists_chart D.P.isLB (χ (spMap φ z))
  have hJ : Good D.P.L (spMap φ z) J := hJ
  have he : unitW D'.P.A ≫ hD.e.hom.left ≫ pullback.fst D.P.A.hom (specOf φ) = spMap φ ≫ unitW D.P.A := hD.he
  have hc : ∀ κ, (unitW D'.P.A ≫ D'.famφB x κ) ≫ hD.e.hom.left ≫ pullback.fst D.P.A.hom (specOf φ) =
      spMap φ ≫ unitW D.P.A ≫ D.famφB (hD.xe x) κ := fun κ => by
    rw [unit_fam, unit_fam]
    fin_cases κ
    exacts [he, hD.c_pr x, hD.c_pr x, he]
  have h₁ := hP (Sp R') (unitW D'.P.A) z (fun κ => J (unitW D.P.A ≫ D.famφB (hD.xe x) κ))
    (fun κ => J' (unitW D'.P.A ≫ D'.famφB x κ))
    (fun κ => (congrArg (fun q : Sp R' ⟶ D.P.A.left => q z ∈ D.P.L.U (J (unitW D.P.A ≫ D.famφB (hD.xe x) κ))) (hc κ)).mpr
      (hJ _)) (fun κ => hJ' _)
  have hprod : (∏ κ, gw hD.w (unitW D'.P.A ≫ D'.famφB x κ) z (J (unitW D.P.A ≫ D.famφB (hD.xe x) κ))
      (J' (unitW D'.P.A ≫ D'.famφB x κ)) ^ (DegPre.famε k) κ) =
      gw hD.w (unitW D'.P.A) z (J (unitW D.P.A)) (J' (unitW D'.P.A)) ^ k := by
    simp only [unit_fam, Fin.prod_univ_four, DegPre.famε, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val]
    rw [_root_.mul_assoc (_ ^ _), ← zpow_add, add_neg_cancel, zpow_zero, _root_.mul_one, ← zpow_add, sub_add_cancel,
      zpow_natCast]
  have h₂ := (maps_iff hD.w _ (fun _ => eSec D.P.A) _ D'.rig D.rig (specOf φ) _
    (rigPull_le _ _ hD.he D.P.L) (fun _ => rfl)).1 hD.w_rig (Sp R') (idW R') z
    (fun _ => J (idW R ≫ eSec D.P.A)) (fun _ => J' (idW R' ≫ eSec D'.P.A))
    (fun _ => (congrArg (fun q : Sp R' ⟶ D.P.A.left => q z ∈ D.P.L.U (J (idW R ≫ eSec D.P.A))) he).mpr
      (hJ _)) (fun _ => hJ' _)
  have h₃ : ((spMap φ).stalkMap z).hom (val D.rig (idW R) (spMap φ z) J).val =
      (gw hD.w (unitW D'.P.A) z (J (unitW D.P.A)) (J' (unitW D'.P.A))).val * (val D'.rig (idW R') z J').val := by
    have i : idW R ≫ eSec D.P.A = unitW D.P.A := Category.id_comp _
    have i' : idW R' ≫ eSec D'.P.A = unitW D'.P.A := Category.id_comp _
    have c : spMap φ ≫ idW R = idW R' ≫ specOf φ := (Category.comp_id _).trans (Category.id_comp _).symm
    refine (_root_.GlobalTheory.PushInv.gm_comp (spMap φ) (idW R) z _ (hJ.mem (fun _ : PUnit => eSec D.P.A) (idW R)) _).symm.trans ?_
    rw [c, ← Units.val_mul]
    refine congrArg Units.val (h₂.trans (congrArg₂ (· * ·) ?_ rfl))
    rw [Fintype.prod_unique, zpow_one, i, i']
  have h₄ := congrArg ((spMap φ).stalkMap z).hom (hO (spMap φ z) J hJ)
  rw [map_mul, map_pow, stalkMap_stalkOf, h₃] at h₄
  have h₅ := (_root_.GlobalTheory.OneBasis.ThMove.gs_comp (spMap φ) (unitW D.P.A) z _ (hJ.mem (D.famφB (hD.xe x)) (unitW D.P.A)) _).trans h₄
  rw [he, hprod] at h₁
  have h₆ := h₁.symm.trans h₅
  rw [mul_pow, _root_.mul_left_comm, ← Units.val_pow_eq_pow_val] at h₆
  exact (Units.mul_right_inj _).1 h₆

end GlobalTheory.Mum.OrigValPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginPullbackDegeneration =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitAdicSumOriginValuesIntegralFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitAdicSumOriginValuesIntegralFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkOfInjective\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ToStkAInjective\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumNullFamilyCompleteLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrigVal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRigidifiedValueAtOrigin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionOriginValuesSumModPow\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitRigidifiedValueAtOrigin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginMemIdealPowOfVanishes\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedValueAtOriginPullbackDegeneration\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem exists_unit_origin_sum : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (C : LabCover D) (k : ℕ), 1 ≤ k → ∀ b₀ : D.toPre.SecB k 0, eSec D.toPre.P.A (closedPoint R) ∈ nonzeroLocus b₀ → ∀ F₀ : IntFam (maximalIdeal R) D.toPre k, F₀.Lead 0 b₀ → ∃ s₀ : R, IsUnit s₀ ∧ ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (σ' : H0 T.U.LG.L k) (f' : ∀ x, T.D'.toPre.SecB k x), (∀ x, PullB T.hD x (F₀.f (T.hD.xe x)) (f' x)) → (∀ e, T.U.ExpandsAt e k σ' f') → ∀ J', Good T.U.LG.L (cpt W) J' → sval σ' (unitW T.G) (cpt W) J' = stalkOf (cpt W) (T.φ s₀) * (val T.U.LG.rig (idW W) (cpt W) J').val ^ k := by
  intro R _ _ _ hB D C k hk b₀ hb₀ F₀ hL
  choose v hv using fun α => _root_.GlobalTheory.Mum.exists_origVal R D.toPre k α (F₀.f α)
  have hvm : ∀ α e, VanMod (maximalIdeal R) (F₀.f α) e → v α ∈ maximalIdeal R ^ (e + 1) :=
    fun α e h => _root_.GlobalTheory.Mum.origVal_mem_of_vanMod R _ D.toPre k α (F₀.f α) (v α) e (hv α) h
  have hfin : ∀ e : ℕ, {α | v α ∉ maximalIdeal R ^ (e + 1)}.Finite := fun e =>
    (F₀.small e).subset fun α h h' => h (hvm α e h')
  obtain ⟨s, hs⟩ := _root_.GlobalTheory.Mum.AdicSum.exists_adic_sum R hB D.toPre.X v hfin
  refine ⟨s, ?_, ?_⟩
  · have hv0 : IsUnit (v 0) := by
      have h0 := hv 0
      rw [hL.1] at h0
      exact _root_.GlobalTheory.Mum.isUnit_origVal R D.toPre k 0 b₀ (v 0) h0 hb₀
    have h1 : s - v 0 ∈ maximalIdeal R := by
      have := hs 0 {0} (fun α hα => hvm α 0 (hL.2 α (by simpa using hα)))
      simpa using this
    by_contra hn
    have hs' : s ∈ maximalIdeal R := (mem_maximalIdeal s).2 hn
    have : v 0 ∈ maximalIdeal R := by
      have := (maximalIdeal R).sub_mem hs' h1
      simpa using this
    exact ((mem_maximalIdeal _).1 this) hv0
  · intro W _ _ _ T σ' f' hP hE J' hJ'
    have hw : ∀ x, OrigVal T.D'.toPre (f' x) (T.φ (v (T.hD.xe x))) := fun x =>
      _root_.GlobalTheory.Mum.OrigValPull.origVal_pull R W T.φ D.toPre T.D'.toPre T.hD k x (F₀.f (T.hD.xe x)) (f' x) (v (T.hD.xe x)) (hP x) (hv _)
    haveI : IsLocalHom T.φ := T.loc
    have hmap : ∀ e, (maximalIdeal R ^ (e + 1)).map T.φ ≤ maximalIdeal W ^ (e + 1) := fun e => by
      rw [Ideal.map_pow]
      refine Ideal.pow_right_mono ?_ _
      refine Ideal.map_le_iff_le_comap.2 fun x hx => (mem_maximalIdeal _).2 fun hu =>
        (mem_maximalIdeal x).1 hx (isUnit_of_map_unit T.φ x hu)
    have step : ∀ e : ℕ, ∃ c ∈ maximalIdeal W ^ (e + 1),
        sval σ' (unitW T.G) (cpt W) J' = stalkOf (cpt W) (T.φ s + c) * (val T.U.LG.rig (idW W) (cpt W) J').val ^ k := by
      intro e
      obtain ⟨S, hS, hc⟩ := _root_.GlobalTheory.Mum.expandsAt_origVal W T.D' T.A T.G T.U.toUnifPre k e σ' f' _ hw (hE e)
      obtain ⟨c, hcm, heq⟩ := hc J' hJ'
      classical
      let S1 : Finset D.toPre.X := S.map T.hD.xe.toEquiv.toEmbedding
      let S2 : Finset D.toPre.X := S1 ∪ (hfin e).toFinset
      have h2 := hs e S2 (fun α hα => by
        by_contra h
        exact hα (Finset.mem_union_right _ ((hfin e).mem_toFinset.2 h)))
      have hsum1 : ∑ x ∈ S, T.φ (v (T.hD.xe x)) = T.φ (∑ α ∈ S1, v α) := by

        simp [S1, map_sum]
      have hdiff : T.φ (∑ α ∈ S2, v α) - T.φ (∑ α ∈ S1, v α) ∈ maximalIdeal W ^ (e + 1) := by

        rw [← map_sub, ← Finset.sum_sdiff (Finset.subset_union_left : S1 ⊆ S2), add_sub_cancel_right, map_sum]
        refine Ideal.sum_mem _ fun α hα => ?_
        have hα1 : α ∉ S1 := (Finset.mem_sdiff.1 hα).2
        have := hS (T.hD.xe.symm α) (fun hx => hα1 (by
          simp only [S1, Finset.mem_map_equiv]
          simpa using hx))
        simpa using this
      have h2' : T.φ s - T.φ (∑ α ∈ S2, v α) ∈ maximalIdeal W ^ (e + 1) := by
        rw [← map_sub]; exact hmap e (Ideal.mem_map_of_mem _ h2)
      refine ⟨c - (T.φ s - T.φ (∑ α ∈ S2, v α)) - (T.φ (∑ α ∈ S2, v α) - T.φ (∑ α ∈ S1, v α)),
        Ideal.sub_mem _ (Ideal.sub_mem _ hcm h2') hdiff, ?_⟩
      rw [heq, hsum1]
      congr 2
      ring
    haveI : IsDiscreteValuationRing W := ((GlobalTheory.LN.cDvr_iff W).1 T.cdvr).1
    choose c hc heq using step
    have hce : ∀ e, c e = c 0 := fun e => by
      have := (heq e).symm.trans (heq 0)
      have hu := (Units.isUnit ((val T.U.LG.rig (idW W) (cpt W) J') ^ k))
      rw [Units.val_pow_eq_pow_val] at hu
      have := hu.mul_right_cancel this
      apply add_left_cancel (a := T.φ s)
      apply stalkOf_injective (cpt W)
      exact this
    have h0 : c 0 = 0 := by
      have hm : c 0 ∈ ⨅ n : ℕ, maximalIdeal W ^ n := Submodule.mem_iInf _ |>.2 fun n => by
        rcases n with _ | n
        · simp
        · rw [← hce n]; exact hc n
      rwa [Ideal.iInf_pow_eq_bot_of_isLocalRing (maximalIdeal W) (maximalIdeal.isMaximal W).ne_top, Submodule.mem_bot] at hm
    rw [heq 0, h0, add_zero]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitAdicSumOriginValuesIntegralFamily =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValueUnitSectionSmulGenericFibreSection =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValueUnitSectionSmulGenericFibreSection", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkOfInjective\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ToStkAInjective\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FibreLawOfTestCartesian\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorFieldPointThroughGenericPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.UnitGen

def gv {A : Type} [CommRing A] {X : Scheme.{0}} (f : Sp A ⟶ X) (V : X.Opens) (h : ⊤ ≤ f ⁻¹ᵁ V) (c : Γ(X, V)) : A :=
  (Scheme.ΓSpecIso (CommRingCat.of A)).hom.hom (((Sp A).presheaf.map (homOfLE h).op).hom ((f.app V).hom c))

theorem gs_gv {A : Type} [CommRing A] {X : Scheme.{0}} (f : Sp A ⟶ X) (V : X.Opens) (h : ⊤ ≤ f ⁻¹ᵁ V) (c : Γ(X, V))
    (z : Sp A) : gs f z V c = stalkOf z (gv f V h c) := by
  rw [gs_eq f z V (h trivial)]
  simp only [stalkOf, gv, RingHom.comp_apply]
  rw [Iso.hom_inv_id_apply]
  exact (TopCat.Presheaf.germ_res_apply _ _ _ _ _).symm

theorem gs_spMap_top {A B : Type} [CommRing A] [CommRing B] (ψ : A →+* B) (e : Γ(Sp A, ⊤)) (z : Sp B) :
    gs (spMap ψ) z ⊤ e = stalkOf z (ψ ((Scheme.ΓSpecIso (CommRingCat.of A)).hom.hom e)) := by
  rw [gs_eq _ z ⊤ trivial]
  simp only [stalkOf, RingHom.comp_apply]
  have := congrArg (fun q => q.hom e) (Scheme.ΓSpecIso_naturality (CommRingCat.ofHom ψ))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at this
  rw [← this, Iso.hom_inv_id_apply]
  rfl

theorem gs_comp_gv {A B : Type} [CommRing A] [CommRing B] (ψ : A →+* B) {X : Scheme.{0}} (f : Sp A ⟶ X) (V : X.Opens)
    (h : ⊤ ≤ f ⁻¹ᵁ V) (c : Γ(X, V)) (z : Sp B) : gs (spMap ψ ≫ f) z V c = stalkOf z (ψ (gv f V h c)) := by
  rw [← gs_pull (spMap ψ) f z V (h trivial) c, ← gs_res (spMap ψ) z h trivial, gs_spMap_top]
  rfl

theorem sp_field_eq {F : Type} [Field F] (a b : Sp F) : a = b :=
  PrimeSpectrum.ext (by haveI := a.isPrime; haveI := b.isPrime; rw [Ideal.eq_bot_of_prime a.asIdeal, Ideal.eq_bot_of_prime b.asIdeal])

end GlobalTheory.Mum.UnitGen


open GlobalTheory.Mum.UnitGen in
theorem GlobalTheory.Mum.UnitGen.value_unit_generic : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (C : LabCover D) (k : ℕ) (s : SecK C.P.L.L C.α k), ∃ x y : R, y ≠ 0 ∧ ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (a : W) (σ : SecK C.P.L.L T.β k), (∀ (Z : Scheme.{0}) (p : Z ⟶ T.G.left) (p' : Z ⟶ C.A.A.left), p ≫ T.β = p' ≫ C.α → ∀ z J, Good C.P.L.L z J → sval σ p z J = gs p z ⊤ (scal T.G.hom a) * sval s p' z J) → ∀ J, Good C.P.L.L (cpt W) J → stalkOf (cpt W) (T.φ y) * sval σ (unitW T.G) (cpt W) J = stalkOf (cpt W) (a * T.φ x) * (val C.P.L.rig T.ξ (cpt W) J).val ^ k := by
  intro R _ _ _ hB D C k s
  have hL : C.P.L.L.IsLB := C.P.L.isLB
  have hrg : C.P.L.rig.IsGen := C.P.L.rigGen
  have hE : eSec C.A.A ≫ C.α = C.gp ≫ eSec C.G := GlobalTheory.ZJ.eSec_comp_of_isGrpPullback C.α_cart
  obtain ⟨i₀, hi₀⟩ := exists_chart hL ((C.gp ≫ eSec C.G) (cpt (FractionRing R)))
  have hs₀ : ⊤ ≤ (eSec C.A.A) ⁻¹ᵁ LB.wchart C.P.L.L (fun _ : Fin 1 => C.α) (fun _ => i₀) :=
    (top_le_iff_cpt _ _).2 (Set.mem_iInter.2 fun _ => by
      rw [Set.mem_preimage, ← Scheme.Hom.comp_apply, hE]; exact hi₀)
  have hr₀ : ⊤ ≤ C.gp ⁻¹ᵁ LB.wchart C.P.L.L (fun _ : PUnit => eSec C.G) (fun _ => i₀) :=
    (top_le_iff_cpt _ _).2 (Set.mem_iInter.2 fun _ => by
      rw [Set.mem_preimage, ← Scheme.Hom.comp_apply]; exact hi₀)
  set cs : FractionRing R := gv (eSec C.A.A) _ hs₀ (s.f (fun _ => i₀)) with hcs
  set cr : FractionRing R := gv C.gp _ hr₀ (C.P.L.rig.s (fun _ => i₀)).val with hcr
  have hcr0 : IsUnit cr := ((((C.P.L.rig.s (fun _ => i₀)).isUnit.map (C.gp.app _).hom).map _).map _)
  obtain ⟨x, y, hy, hxy⟩ := IsFractionRing.div_surjective (A := R) (cs / cr ^ k)
  refine ⟨x, y, nonZeroDivisors.ne_zero hy, ?_⟩
  intro W _ _ _ T a σ hσ J hJ

  have hinj : Function.Injective ((algebraMap W (FractionRing W)).comp T.φ) :=
    (IsFractionRing.injective W (FractionRing W)).comp T.inj
  obtain ⟨ga, hga, hgp⟩ := Modif.factor_gp R C.toModif (FractionRing W) ((algebraMap W _).comp T.φ) (jK W ≫ T.ξ) hinj (by
    rw [Category.assoc, T.ξ_π]
    exact (Spec.map_comp _ _).symm)
  have hjK : jK W = spMap (algebraMap W (FractionRing W)) := rfl
  have hU : unitW T.G ≫ T.β = T.ξ ≫ eSec C.G := GlobalTheory.ZJ.eSec_comp_of_isGrpPullback T.cart
  set g : Sp (FractionRing W) := cpt (FractionRing W)
  set p : Sp (FractionRing W) ⟶ T.G.left := jK W ≫ unitW T.G with hp
  set p' : Sp (FractionRing W) ⟶ C.A.A.left := spMap ga ≫ eSec C.A.A with hp'
  have hr : jK W ≫ T.ξ ≫ eSec C.G = spMap ga ≫ C.gp ≫ eSec C.G := by rw [← Category.assoc, hgp, Category.assoc]
  have hpp : p ≫ T.β = p' ≫ C.α := by
    rw [hp, hp', Category.assoc, Category.assoc, hU, hE, hr]
  set I := J (T.ξ ≫ eSec C.G) with hIdef
  have hI : (T.ξ ≫ eSec C.G) (cpt W) ∈ C.P.L.L.U I := hJ _
  have hItop : ⊤ ≤ (T.ξ ≫ eSec C.G) ⁻¹ᵁ C.P.L.L.U I := (top_le_iff_cpt _ _).2 hI
  have hpI : (p ≫ T.β) g ∈ C.P.L.L.U I := by
    rw [hp, Category.assoc, hU, Scheme.Hom.comp_apply]; exact hItop trivial
  have hpi₀ : (p ≫ T.β) g ∈ C.P.L.L.U i₀ := by
    rw [hp, Category.assoc, hU, ← Category.assoc, hgp, Category.assoc, Scheme.Hom.comp_apply,
      sp_field_eq ((spMap ga) g) (cpt (FractionRing R))]
    exact hi₀
  obtain ⟨J', hJ', hJ'e⟩ := exists_good C.P.L.L hL g (K := PUnit) (fun _ => p ≫ T.β) (fun _ => I) (fun _ _ _ => rfl)
    (fun _ => hpI)
  have e1 := hσ _ p p' hpp g J' hJ'
  rw [sval_of σ p g J' (fun _ => I) (fun _ => hJ'e ⟨⟩),
    sval_of s p' g J' (fun _ => I) (fun _ => by rw [← hpp]; exact hJ'e ⟨⟩)] at e1

  have hσtop : ⊤ ≤ unitW T.G ⁻¹ᵁ LB.wchart C.P.L.L (fun _ : Fin 1 => T.β) (fun _ => I) :=
    (top_le_iff_cpt _ _).2 (Set.mem_iInter.2 fun _ => by
      rw [Set.mem_preimage, ← Scheme.Hom.comp_apply, hU]; exact hI)
  have hρtop : ⊤ ≤ T.ξ ⁻¹ᵁ LB.wchart C.P.L.L (fun _ : PUnit => eSec C.G) (fun _ => I) :=
    (top_le_iff_cpt _ _).2 (Set.mem_iInter.2 fun _ => by
      rw [Set.mem_preimage, ← Scheme.Hom.comp_apply]; exact hI)
  set σv : W := gv (unitW T.G) _ hσtop (σ.f (fun _ => I)) with hσv
  set ρv : W := gv T.ξ _ hρtop (C.P.L.rig.s (fun _ => I)).val with hρv
  have eσ : gs p g (LB.wchart C.P.L.L (fun _ : Fin 1 => T.β) (fun _ => I)) (σ.f (fun _ => I)) =
      stalkOf g (algebraMap W _ σv) := by
    rw [hp, hjK]; exact gs_comp_gv _ _ _ hσtop _ g
  have hu : unitW T.G ≫ T.G.hom = 𝟙 _ := by simpa [unitW, eSec] using Over.w (η[T.G])
  have ea : gs p g ⊤ (scal T.G.hom a) = stalkOf g (algebraMap W _ a) := by
    have h1 : p ≫ T.G.hom = spMap (algebraMap W (FractionRing W)) := by
      rw [hp, Category.assoc, hu, Category.comp_id]
    have h2 := gs_pull p T.G.hom g ⊤ trivial ((Scheme.ΓSpecIso (CommRingCat.of W)).inv.hom a)
    rw [h1, gs_spMap_top, Iso.inv_hom_id_apply] at h2
    exact h2

  have hrp : (jK W ≫ T.ξ) ≫ eSec C.G = p ≫ T.β := by rw [hp, Category.assoc, Category.assoc, hU]
  have hp'i₀ : p' g ∈ LB.wchart C.P.L.L (fun _ : Fin 1 => C.α) (fun _ => i₀) := Set.mem_iInter.2 fun _ => by
    rw [Set.mem_preimage, ← Scheme.Hom.comp_apply, ← hpp]; exact hpi₀
  have hp'I : p' g ∈ LB.wchart C.P.L.L (fun _ : Fin 1 => C.α) (fun _ => I) := Set.mem_iInter.2 fun _ => by
    rw [Set.mem_preimage, ← Scheme.Hom.comp_apply, ← hpp]; exact hpI
  have hri₀ : (jK W ≫ T.ξ) g ∈ LB.wchart C.P.L.L (fun _ : PUnit => eSec C.G) (fun _ => i₀) := Set.mem_iInter.2 fun _ => by
    rw [Set.mem_preimage, ← Scheme.Hom.comp_apply, hrp]; exact hpi₀
  have hrI : (jK W ≫ T.ξ) g ∈ LB.wchart C.P.L.L (fun _ : PUnit => eSec C.G) (fun _ => I) := Set.mem_iInter.2 fun _ => by
    rw [Set.mem_preimage, ← Scheme.Hom.comp_apply, hrp]; exact hpI
  have e2 := sec_trans s p' g hp'i₀ hp'I
  have orbitMap_conj_smul_zero : gs p' g (LB.wchart C.P.L.L (fun _ : Fin 1 => C.α) (fun _ => i₀)) (s.f (fun _ => i₀)) = stalkOf g (ga cs) := by
    rw [hp']; exact gs_comp_gv ga _ _ hs₀ _ g
  have e3 := gen_trans hrg (jK W ≫ T.ξ) g hri₀ hrI
  have eB0 : (gm (jK W ≫ T.ξ) g (LB.wchart C.P.L.L (fun _ : PUnit => eSec C.G) (fun _ => i₀)) (C.P.L.rig.s (fun _ => i₀))).val = stalkOf g (ga cr) := by
    refine (gs_unit (jK W ≫ T.ξ) g _ hri₀ _).symm.trans ?_
    rw [hgp]; exact gs_comp_gv ga _ _ hr₀ _ g
  have eB : (gm (jK W ≫ T.ξ) g (LB.wchart C.P.L.L (fun _ : PUnit => eSec C.G) (fun _ => I)) (C.P.L.rig.s (fun _ => I))).val = stalkOf g (algebraMap W _ ρv) := by
    refine (gs_unit (jK W ≫ T.ξ) g _ hrI _).symm.trans ?_
    rw [hjK]; exact gs_comp_gv _ _ _ hρtop _ g
  have et : trF (L := C.P.L.L) (fun _ : Fin 1 => C.α) (fun _ => ((k : ℕ) : ℤ)) p' g (fun _ => i₀) (fun _ => I) =
      (trF (L := C.P.L.L) (fun _ : PUnit => eSec C.G) (fun _ => 1) (jK W ≫ T.ξ) g (fun _ => i₀) (fun _ => I)) ^ k := by
    simp only [trF]
    rw [show p' ≫ C.α = (jK W ≫ T.ξ) ≫ eSec C.G from hpp.symm.trans hrp.symm]
    simp

  rw [eσ, ea] at e1
  rw [orbitMap_conj_smul_zero, et] at e2
  have e3v := congrArg Units.val e3
  rw [Units.val_mul, eB0, eB] at e3v
  have hy0 : algebraMap R (FractionRing R) y ≠ 0 := IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hy
  have hxy' : algebraMap R _ x * cr ^ k = cs * algebraMap R _ y := by
    rw [div_eq_div_iff hy0 (pow_ne_zero _ hcr0.ne_zero)] at hxy; exact hxy
  have hXY := congrArg (fun q => stalkOf g (ga q)) hxy'
  simp only [map_mul, map_pow, hga, RingHom.comp_apply] at hXY
  rw [e3v, e2, Units.val_pow_eq_pow_val] at hXY
  have hW : T.φ y * σv = a * T.φ x * ρv ^ k := by
    apply ((stalkOf_injective g).comp (IsFractionRing.injective W (FractionRing W)))
    simp only [Function.comp_apply, map_mul, map_pow]
    refine ((trF (L := C.P.L.L) (fun _ : PUnit => eSec C.G) (fun _ => 1) (jK W ≫ T.ξ) g (fun _ => i₀)
      (fun _ => I)).isUnit.pow k).mul_left_inj.1 ?_
    rw [e1]
    linear_combination (-(stalkOf g (algebraMap W (FractionRing W) a))) * hXY
  have eBc : (gm T.ξ (cpt W) (LB.wchart C.P.L.L (fun _ : PUnit => eSec C.G) (fun _ => I)) (C.P.L.rig.s (fun _ => I))).val = stalkOf (cpt W) ρv :=
    (gs_unit T.ξ (cpt W) _ (hρtop trivial) _).symm.trans (gs_gv _ _ hρtop _ _)
  have eσc : gs (unitW T.G) (cpt W) (LB.wchart C.P.L.L (fun _ : Fin 1 => T.β) (fun _ => I)) (σ.f (fun _ => I)) =
      stalkOf (cpt W) σv := gs_gv _ _ hσtop _ _
  rw [sval_of σ (unitW T.G) (cpt W) J (fun _ => I) (fun _ => by rw [hU])]
  erw [eσc]
  rw [val_of C.P.L.rig T.ξ (cpt W) J (fun _ => I) (fun _ => rfl), eBc, ← map_mul, ← map_pow, ← map_mul, hW]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValueUnitSectionSmulGenericFibreSection =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaNormalisationConstantOrigin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaNormalisationConstantOrigin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkOfInjective\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ToStkAInjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriesUnitSectionRigidificationUnit\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitAdicSumOriginValuesIntegralFamily\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValueUnitSectionSmulGenericFibreSection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem exists_unit_value_at_unit : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (C : LabCover D) (k : ℕ), 1 ≤ k → ∀ b₀ : D.toPre.SecB k 0, eSec D.toPre.P.A (closedPoint R) ∈ nonzeroLocus b₀ → ∀ F₀ : IntFam (maximalIdeal R) D.toPre k, F₀.Lead 0 b₀ → ∃ s₀ : R, IsUnit s₀ ∧ ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (b : W) (σ : SecK C.P.L.L T.β k), T.ExpBy b σ F₀ → ∃ ε : Wˣ, ∀ J, Good C.P.L.L (cpt W) J → sval σ (unitW T.G) (cpt W) J = stalkOf (cpt W) (b * ε * T.φ s₀) * (val C.P.L.rig T.ξ (cpt W) J).val ^ k := by
  intro R _ _ _ hR D C k hk b₀ hb₀ F₀ hF₀
  obtain ⟨s₀, hs₀, h⟩ := _root_.GlobalTheory.Mum.exists_unit_origin_sum R hR D C k hk b₀ hb₀ F₀ hF₀
  refine ⟨s₀, hs₀, fun W _ _ _ T b σ hσ => ?_⟩
  obtain ⟨σ', f', hc, hp, he⟩ := hσ
  obtain ⟨ε, hε⟩ := _root_.GlobalTheory.Mum.Trait.carries_unit R D C W T k b σ' σ hc
  refine ⟨ε, fun J hJ => ?_⟩
  obtain ⟨J', hJ', -⟩ := exists_good T.U.LG.L T.U.LG.isLB (cpt W) (K := Empty) (fun e => e.elim) (fun e => e.elim)
    (fun e => e.elim) (fun e => e.elim)
  have e1 := hε J J' hJ hJ'
  rw [h W T σ' f' hp he J' hJ'] at e1
  refine mul_right_cancel₀ (pow_ne_zero k (Units.ne_zero (val T.U.LG.rig (idW W) (cpt W) J'))) ?_
  rw [e1]
  simp only [map_mul]
  ring

theorem exists_norm_const : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (C : LabCover D) (k : ℕ), 1 ≤ k → ∀ b₀ : D.toPre.SecB k 0, eSec D.toPre.P.A (closedPoint R) ∈ nonzeroLocus b₀ → ∀ F₀ : IntFam (maximalIdeal R) D.toPre k, F₀.Lead 0 b₀ → ∀ s : SecK C.P.L.L C.α k, ∃ c₁ c₂ : R, c₂ ≠ 0 ∧ ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (a b : W), a ≠ 0 → b ≠ 0 → T.Exp a b s F₀ → ∃ u : Wˣ, T.φ c₂ * (u : W) * a = T.φ c₁ * b := by
  intro R _ _ _ hR D C k hk b₀ hb₀ F₀ hF₀ s
  obtain ⟨x, y, hy, h1⟩ := _root_.GlobalTheory.Mum.UnitGen.value_unit_generic R hR D C k s
  obtain ⟨s₀, hs₀, h2⟩ := exists_unit_value_at_unit R hR D C k hk b₀ hb₀ F₀ hF₀
  have key : ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (a b : W), T.Exp a b s F₀ →
      ∃ ε : Wˣ, T.φ y * (b * ε * T.φ s₀) = a * T.φ x := by
    intro W _ _ _ T a b hE
    obtain ⟨σ, hσ, hgen⟩ := hE
    obtain ⟨ε, hε⟩ := h2 W T b σ hσ
    obtain ⟨J, hJ, -⟩ := exists_good C.P.L.L C.P.L.isLB (cpt W) (K := Empty) (fun e => e.elim) (fun e => e.elim)
      (fun e => e.elim) (fun e => e.elim)
    have e1 := h1 W T a σ hgen J hJ
    rw [hε J hJ, ← _root_.mul_assoc, ← map_mul] at e1
    refine ⟨ε, stalkOf_injective (cpt W) (mul_right_cancel₀ ?_ e1)⟩
    exact pow_ne_zero _ (Units.ne_zero _)
  by_cases hx : x = 0
  · refine ⟨0, 1, one_ne_zero, fun W _ _ _ T a b ha hb hE => ?_⟩
    exfalso
    obtain ⟨ε, e⟩ := key W T a b hE
    rw [hx, map_zero, mul_zero] at e
    have hφy : T.φ y ≠ 0 := fun h => hy (T.inj (h.trans (map_zero _).symm))
    have hφs : T.φ s₀ ≠ 0 := (hs₀.map T.φ).ne_zero
    exact mul_ne_zero hφy (mul_ne_zero (mul_ne_zero hb (Units.ne_zero ε)) hφs) e
  · refine ⟨s₀ * y, x, hx, fun W _ _ _ T a b ha hb hE => ?_⟩
    obtain ⟨ε, e⟩ := key W T a b hE
    refine ⟨ε⁻¹, ?_⟩
    rw [map_mul]
    have hinv : (ε : W) * ((ε⁻¹ : Wˣ) : W) = 1 := Units.mul_inv ε
    linear_combination (-(((ε⁻¹ : Wˣ) : W))) * e + (T.φ y * b * T.φ s₀) * hinv

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaNormalisationConstantOrigin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriesTransportUniformisingIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriesTransportUniformisingIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.SecTransport

open TopologicalSpace Opposite

variable {X Y : Scheme.{0}} {L : LB X} {M : LB Y} {β : Y ⟶ X}

lemma le_pull (j : Fin 1 → L.ι) (i : M.ι) :
    LB.wchart L (fun _ : Fin 1 => β) j ⊓ M.U i ≤ (L.pull β).U (fun _ => j 0) ⊓ M.U i :=
  fun _ hy => ⟨Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hy.1 0, hy.2⟩

lemma le_one (j : Fin 1 → L.ι) (i : M.ι) :
    LB.wchart L (fun _ : Fin 1 => β) j ⊓ M.U i ≤ LB.wchart M (fun _ : Fin 1 => 𝟙 Y) (fun _ => i) :=
  fun _ hy => Set.mem_iInter.2 fun _ => hy.2

def piece (ℓ : LB.Iso M (L.pull β)) (c : Γ(Y, ⊤)) (k : ℕ) (σ' : H0 M k) (j : Fin 1 → L.ι) (i : M.ι) :
    Γ(Y, LB.wchart L (fun _ : Fin 1 => β) j ⊓ M.U i) :=
  (Y.presheaf.map (homOfLE le_top).op).hom c * ((res (le_pull j i) (ℓ.s (fun _ => j 0, i))) ^ k).val *
    (Y.presheaf.map (homOfLE (le_one j i)).op).hom (σ'.f (fun _ => i))

theorem gs_piece (ℓ : LB.Iso M (L.pull β)) (c : Γ(Y, ⊤)) (k : ℕ) (σ' : H0 M k) (j : Fin 1 → L.ι) (i : M.ι)
    {Z : Scheme.{0}} (r : Z ⟶ Y) (z : Z) (hz : r z ∈ LB.wchart L (fun _ : Fin 1 => β) j ⊓ M.U i) :
    gs r z _ (piece ℓ c k σ' j i) = gs r z ⊤ c * (gw ℓ r z (j 0) i ^ k).val *
      gs r z (LB.wchart M (fun _ : Fin 1 => 𝟙 Y) (fun _ => i)) (σ'.f (fun _ => i)) := by
  exact (gs_mul r z _ hz _ _).trans (congrArg₂ (· * ·) ((gs_mul r z _ hz _ _).trans (congrArg₂ (· * ·)
    (gs_res r z le_top hz c) ((gs_unit r z _ hz _).trans (congrArg Units.val ((map_pow _ _ _).trans
      (congrArg (· ^ k) (gm_res r z (le_pull j i) hz _)))))))
    (gs_res r z (le_one j i) hz _))

theorem indep (hL : L.IsLB) (ℓ : LB.Iso M (L.pull β)) (hℓ : PGen ℓ) (k : ℕ) (σ' : H0 M k) {Z : Scheme.{0}}
    (r : Z ⟶ Y) (z : Z) (j₀ : L.ι) (i i' : M.ι) (hj : β (r z) ∈ L.U j₀) (hi : r z ∈ M.U i) (hi' : r z ∈ M.U i') :
    (gw ℓ r z j₀ i ^ k).val * gs r z (LB.wchart M (fun _ : Fin 1 => 𝟙 Y) (fun _ => i)) (σ'.f (fun _ => i)) =
      (gw ℓ r z j₀ i' ^ k).val * gs r z (LB.wchart M (fun _ : Fin 1 => 𝟙 Y) (fun _ => i')) (σ'.f (fun _ => i')) := by
  have e1 := hℓ Z r z j₀ j₀ i i' hj hj hi hi'
  rw [gm_self hL (r ≫ β) z hj, _root_.one_mul] at e1
  have hm : r z ∈ LB.wchart M (fun _ : Fin 1 => 𝟙 Y) (fun _ => i) := Set.mem_iInter.2 fun _ => hi
  have hm' : r z ∈ LB.wchart M (fun _ : Fin 1 => 𝟙 Y) (fun _ => i') := Set.mem_iInter.2 fun _ => hi'
  have e2 := sec_trans σ' r z hm hm'
  have e3 : trF (L := M) (fun _ : Fin 1 => 𝟙 Y) (fun _ => (k : ℤ)) r z (fun _ => i) (fun _ => i') =
      gm r z _ (M.g i i') ^ k := by
    simp only [trF, Fin.prod_univ_one, Category.comp_id, zpow_natCast]
  rw [e2, e3, ← _root_.mul_assoc, ← Units.val_mul, e1, mul_pow, inv_pow,
    _root_.mul_comm ((gm r z _ (M.g i i') ^ k)⁻¹), _root_.mul_assoc, _root_.inv_mul_cancel, _root_.mul_one]

theorem exists_transport (hL : L.IsLB) (hM : M.IsLB) (ℓ : LB.Iso M (L.pull β)) (hℓ : ℓ.IsGen) (c : Γ(Y, ⊤))
    (k : ℕ) (σ' : H0 M k) : ∃ σ : SecK L β k, ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) J J', Good L z J → Good M z J' →
      sval σ r z J = gs r z ⊤ c * (gw ℓ r z (J (r ≫ β)) (J' r) ^ k).val * sval σ' r z J' := by
  have hP := (isGen_iff ℓ).1 hℓ
  have glue : ∀ j : Fin 1 → L.ι, ∃ a : Γ(Y, LB.wchart L (fun _ : Fin 1 => β) j), ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z)
      (i : M.ι), r z ∈ LB.wchart L (fun _ : Fin 1 => β) j → r z ∈ M.U i →
      gs r z _ a = gs r z ⊤ c * (gw ℓ r z (j 0) i ^ k).val *
        gs r z (LB.wchart M (fun _ : Fin 1 => 𝟙 Y) (fun _ => i)) (σ'.f (fun _ => i)) := by
    intro j
    obtain ⟨a, ha, -⟩ := Y.sheaf.existsUnique_gluing' (fun i : M.ι => LB.wchart L (fun _ : Fin 1 => β) j ⊓ M.U i)
      (LB.wchart L (fun _ : Fin 1 => β) j) (fun i => homOfLE inf_le_left)
      (fun y hy => Opens.mem_iSup.2 ⟨(exists_chart hM y).choose, hy, (exists_chart hM y).choose_spec⟩)
      (fun i => piece ℓ c k σ' j i) (fun i i' => fn_ext fun y hy => by
        refine (gs_res (𝟙 Y) y inf_le_left hy _).trans (Eq.trans ?_ (gs_res (𝟙 Y) y inf_le_right hy _).symm)
        rw [gs_piece ℓ c k σ' j i (𝟙 Y) y hy.1, gs_piece ℓ c k σ' j i' (𝟙 Y) y hy.2, _root_.mul_assoc, _root_.mul_assoc]
        exact congrArg _ (indep hL ℓ hP k σ' (𝟙 Y) y (j 0) i i' (Set.mem_iInter.1 hy.1.1 0) hy.1.2 hy.2.2))
    refine ⟨a, fun Z r z i h₁ h₂ => ?_⟩
    have hz : r z ∈ LB.wchart L (fun _ : Fin 1 => β) j ⊓ M.U i := ⟨h₁, h₂⟩
    exact (gs_res r z inf_le_left hz a).symm.trans ((congrArg (gs r z _) (ha i)).trans (gs_piece ℓ c k σ' j i r z hz))
  choose a ha using glue
  refine ⟨⟨a, fun j j' => fn_ext fun y hy => ?_⟩, fun Z r z J J' hJ hJ' => ?_⟩
  · obtain ⟨i, hi⟩ := exists_chart hM y
    refine (gs_res (𝟙 Y) y _ hy _).trans (Eq.trans ?_ ((gs_mul (𝟙 Y) y _ hy _ _).trans (congrArg₂ (· * ·)
      ((gs_unit (𝟙 Y) y _ hy _).trans (congrArg Units.val (gm_linComb L _ _ (𝟙 Y) y j j' hy.1 hy.2)))
      (gs_res (𝟙 Y) y _ hy _))).symm)
    change gs (𝟙 Y) y (LB.wchart L (fun _ : Fin 1 => β) j) (a j) =
      _ * gs (𝟙 Y) y (LB.wchart L (fun _ : Fin 1 => β) j') (a j')
    rw [ha j _ (𝟙 Y) y i hy.1 hi, ha j' _ (𝟙 Y) y i hy.2 hi]
    have e1 := hP Y (𝟙 Y) y (j 0) (j' 0) i i (Set.mem_iInter.1 hy.1 0) (Set.mem_iInter.1 hy.2 0) hi hi
    rw [gm_self hM (𝟙 Y) y hi, inv_one, _root_.mul_one] at e1
    rw [e1]
    simp only [Fin.prod_univ_one, zpow_natCast, mul_pow, Units.val_mul, Units.val_pow_eq_pow_val]
    ring
  · rw [sval_of σ' r z J' (fun _ => J' r) (fun _ => by rw [Category.comp_id])]
    exact ha _ Z r z (J' r) (hJ.mem (fun _ : Fin 1 => β) r) (hJ' r)

end GlobalTheory.Mum.SecTransport

namespace GlobalTheory.Mum

theorem Trait.exists_carries : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R))
    (C : LabCover D) (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (k : ℕ) (u : W)
    (σ' : H0 T.U.LG.L k), ∃ σ'' : SecK C.P.L.L T.β k, T.Carries u σ' σ'' := by
  intro R _ _ _ D C W _ _ _ T k u σ'
  exact SecTransport.exists_transport C.P.L.isLB T.U.LG.isLB T.ℓ T.ℓ_gen (scal T.G.hom u) k σ'

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriesTransportUniformisingIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTraitScalarGenericFibreNonfield =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTraitScalarGenericFibreNonfield", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem unit_nonfield : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) (C : LabCover D) (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (Z : Scheme.{0}) (p : Z ⟶ T.G.left) (p' : Z ⟶ C.A.A.left), p ≫ T.β = p' ≫ C.α → ¬ IsField R → ∀ b : W, b ≠ 0 → ∀ z : Z, IsUnit (gs p z ⊤ (scal T.G.hom b)) := by
  intro R _ _ _ D C W _ _ _ T Z p p' hpp hR b hb z

  have hw : p ≫ T.G.hom ≫ spMap T.φ = p' ≫ C.A.A.hom ≫ jK R := by
    rw [← T.ξ_π, ← C.gp_π, ← Category.assoc T.G.hom, ← T.cart.1.w, ← Category.assoc C.A.A.hom, ← C.α_cart.1.w]
    simp only [← Category.assoc]; rw [hpp]
  have hpt := congrArg (fun g => (g z).asIdeal) hw
  simp only [Scheme.Hom.comp_apply] at hpt
  set P := ((p ≫ T.G.hom) z) with hP
  have hc : P.asIdeal.comap T.φ = ⊥ := by
    have e1 : (spMap T.φ ((T.G.hom) (p z))).asIdeal = P.asIdeal.comap T.φ := by
      rw [hP, Scheme.Hom.comp_apply]; rfl
    rw [← e1, hpt]
    have e2 : ((jK R) ((C.A.A.hom) (p' z))).asIdeal = ((C.A.A.hom) (p' z)).asIdeal.comap (algebraMap R (FractionRing R)) := rfl
    rw [e2]
    have hbot : ((C.A.A.hom) (p' z)).asIdeal = ⊥ := by
      have := ((C.A.A.hom) (p' z)).isPrime
      exact Ideal.eq_bot_of_prime _
    rw [hbot]
    exact (Ideal.comap_bot_of_injective _ (IsFractionRing.injective R (FractionRing R)))
  have hdvr : IsDiscreteValuationRing W := T.cdvr.1
  have hPbot : P.asIdeal = ⊥ := by
    by_contra hne
    have hmax : P.asIdeal.IsMaximal := Ideal.IsPrime.isMaximal P.isPrime hne
    have hm : P.asIdeal = maximalIdeal W := IsLocalRing.eq_maximalIdeal hmax
    have hRm : maximalIdeal R ≠ ⊥ := fun h => hR ((IsLocalRing.isField_iff_maximalIdeal_eq).2 h)
    obtain ⟨r, hr, hr0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hRm
    have hl := T.loc
    have hφr : T.φ r ∈ P.asIdeal := by
      rw [hm]
      exact (IsLocalRing.mem_maximalIdeal _).2 fun hu => (IsLocalRing.mem_maximalIdeal _).1 hr (isUnit_of_map_unit T.φ r hu)
    have : r ∈ P.asIdeal.comap T.φ := hφr
    rw [hc] at this
    exact hr0 ((Submodule.mem_bot R).1 this)
  have hmem : (p ≫ T.G.hom) z ∈ (Sp W).basicOpen ((Scheme.ΓSpecIso (CommRingCat.of W)).inv.hom b) := by
    rw [basicOpen_eq_of_affine]
    show b ∉ ((p ≫ T.G.hom) z).asIdeal
    rw [← hP, hPbot]; exact fun h => hb ((Submodule.mem_bot W).1 h)
  have hpull : gs p z ⊤ (scal T.G.hom b) = gs (p ≫ T.G.hom) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of W)).inv.hom b) :=
    gs_pull p T.G.hom z ⊤ trivial _
  rw [hpull, gs_eq _ z ⊤ trivial]
  have hz : z ∈ Z.basicOpen (((p ≫ T.G.hom).app ⊤).hom ((Scheme.ΓSpecIso (CommRingCat.of W)).inv.hom b)) := by
    rw [← Scheme.preimage_basicOpen]; exact hmem
  exact (Scheme.mem_basicOpen Z _ z (by trivial)).1 hz

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTraitScalarGenericFibreNonfield =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitScalarCancelOfIsField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitScalarCancelOfIsField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.CancelField

theorem isIso_jK {R : Type} [CommRing R] [IsDomain R] (hR : IsField R) : IsIso (jK R) := by
  have hb : Function.Bijective (algebraMap R (FractionRing R)) :=
    ⟨IsFractionRing.injective R (FractionRing R), IsFractionRing.surjective_iff_isField.2 hR⟩
  have : IsIso (CommRingCat.ofHom (algebraMap R (FractionRing R))) :=
    (ConcreteCategory.isIso_iff_bijective _).2 hb
  infer_instance

theorem isIso_gp {R : Type} [CommRing R] [IsDomain R] (M : Modif R) (hR : IsField R) : IsIso M.gp := by
  haveI := isIso_jK hR
  haveI := M.integral
  haveI := M.proper
  haveI := M.dominant
  haveI : IsClosedImmersion M.gp :=
    isClosedImmersion_of_comp_eq_id (M.π ≫ inv (jK R)) M.gp (by rw [← Category.assoc, M.gp_π, IsIso.hom_inv_id])
  haveI : Surjective M.gp := ⟨by
    have h1 := M.gp.isClosedEmbedding.isClosed_range
    have h2 := M.gp.denseRange
    exact Set.range_eq_univ.1 (h1.closure_eq ▸ h2.closure_range)⟩
  exact isIso_of_isClosedImmersion_of_surjective M.gp

theorem sval_comp {X Y₀ Y Z : Scheme.{0}} {L : LB X} {K : Type} [Fintype K] {φ : K → (Y₀ ⟶ X)} {ε : K → ℤ}
    (s : LB.Sec (LB.LinComb L φ ε)) (p : Z ⟶ Y) (r : Y ⟶ Y₀) (z : Z) (J : (Z ⟶ X) → L.ι) (hJ : Good L z J) :
    sval s (p ≫ r) z J = (p.stalkMap z).hom (sval s r (p z) (fun ψ => J (p ≫ ψ))) := by
  have hJ' : Good L (p z) (fun ψ => J (p ≫ ψ)) := fun ψ => hJ (p ≫ ψ)
  rw [sval_of s (p ≫ r) z J (fun k => J (p ≫ r ≫ φ k)) (fun k => by rw [Category.assoc])]
  exact gs_comp p r z _ (hJ'.mem φ r) _

theorem scal_cancel {W : Type} [CommRing W] [IsDomain W] {Y : Scheme.{0}} (f : Y ⟶ Sp W) [Flat f] (y : Y) {b : W}
    (hb : b ≠ 0) {u v : Y.presheaf.stalk y}
    (h : gs (𝟙 Y) y ⊤ (scal f b) * u = gs (𝟙 Y) y ⊤ (scal f b) * v) : u = v := by
  set c : Γ(Sp W, ⊤) := (Scheme.ΓSpecIso (CommRingCat.of W)).inv.hom b with hc
  have e1 : gs (𝟙 Y) y ⊤ (scal f b) = (f.stalkMap y).hom (gs (𝟙 (Sp W)) (f y) ⊤ c) := by
    have := gs_pull (𝟙 Y) f y ⊤ trivial c
    rw [Category.id_comp] at this
    refine this.trans ?_
    have := gs_comp f (𝟙 (Sp W)) y ⊤ trivial c
    rwa [Category.comp_id] at this
  have hc0 : c ≠ 0 := by
    intro h0
    apply hb
    have hi : Function.Injective (Scheme.ΓSpecIso (CommRingCat.of W)).inv.hom :=
      (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (CommRingCat.of W)).inv).1
    exact hi (h0.trans (map_zero _).symm)
  have he0 : gs (𝟙 (Sp W)) (f y) ⊤ c ≠ 0 := by
    rw [gs_eq (𝟙 (Sp W)) (f y) ⊤ trivial]
    intro h0
    apply hc0
    have hi := germ_injective_of_isIntegral (Sp W) (U := (𝟙 (Sp W)) ⁻¹ᵁ ⊤) (f y) trivial
    have := hi (h0.trans (map_zero _).symm)
    exact this
  letI := (f.stalkMap y).hom.toAlgebra
  haveI : Module.Flat _ (Y.presheaf.stalk y) := Flat.stalkMap f y
  have hreg := Module.Flat.isSMulRegular_of_nonZeroDivisors (M := Y.presheaf.stalk y) (mem_nonZeroDivisors_of_ne_zero he0)
  apply hreg
  simp only [Algebra.smul_def, RingHom.algebraMap_toAlgebra]
  rw [← e1]
  exact h

end GlobalTheory.Mum.CancelField

namespace GlobalTheory.Mum


open GlobalTheory.Mum.CancelField in
theorem cancel_field : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (C : LabCover D) (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (k : ℕ) (σ : SecK C.P.L.L T.β k) (s : SecK C.P.L.L C.α k) (b : W) (c : FractionRing R), IsField R → b ≠ 0 → (∀ (Z : Scheme.{0}) (p : Z ⟶ T.G.left) (p' : Z ⟶ C.A.A.left), p ≫ T.β = p' ≫ C.α → ∀ z J, Good C.P.L.L z J → gs p z ⊤ (scal T.G.hom b) * sval σ p z J = gs p z ⊤ (scal T.G.hom b) * (gs p' z ⊤ (scal C.A.A.hom c) * sval s p' z J)) → ∀ (Z : Scheme.{0}) (p : Z ⟶ T.G.left) (p' : Z ⟶ C.A.A.left), p ≫ T.β = p' ≫ C.α → ∀ z J, Good C.P.L.L z J → sval σ p z J = gs p' z ⊤ (scal C.A.A.hom c) * sval s p' z J := by
  intro R _ _ _ _ D C W _ _ _ T k σ s b c hR hb H Z p p' hp z J hJ
  haveI : IsIso C.α := C.α_cart.1.isIso_fst_of_isIso (isIso_gp C.toModif hR)
  haveI : Smooth C.G.hom := C.semi.smooth
  haveI : Flat C.G.hom := inferInstance
  haveI : Flat T.G.hom := MorphismProperty.of_isPullback (P := @Flat) T.cart.1 inferInstance
  obtain ⟨q, hq⟩ : ∃ q : T.G.left ⟶ C.A.A.left, q ≫ C.α = T.β := ⟨T.β ≫ inv C.α, by simp⟩
  have key : ∀ y J', Good C.P.L.L y J' → sval σ (𝟙 _) y J' = gs q y ⊤ (scal C.A.A.hom c) * sval s q y J' := by
    intro y J' hJ'
    exact scal_cancel T.G.hom y hb (H _ (𝟙 _) q (by rw [hq, Category.id_comp]) y J' hJ')
  obtain rfl : p' = p ≫ q := (cancel_mono C.α).1 (by rw [Category.assoc, hq]; exact hp.symm)
  have hJ' : Good C.P.L.L (p z) (fun ψ => J (p ≫ ψ)) := fun ψ => hJ (p ≫ ψ)
  have e1 := sval_comp σ p (𝟙 _) z J hJ
  rw [Category.comp_id] at e1
  rw [e1, sval_comp s p q z J hJ, gs_comp p q z ⊤ trivial, ← map_mul, key (p z) _ hJ']

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitScalarCancelOfIsField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitExpansionScalarsRescale =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitExpansionScalarsRescale", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriesTransportUniformisingIso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitTraitScalarGenericFibreNonfield\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitScalarCancelOfIsField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.TraitRescale

variable {X Z : Scheme.{0}}

noncomputable def gsTop (f : Z ⟶ X) (z : Z) : Γ(X, ⊤) →+* Z.presheaf.stalk z :=
  (Z.presheaf.germ (f ⁻¹ᵁ ⊤) z trivial).hom.comp (f.app ⊤).hom

theorem gs_top (f : Z ⟶ X) (z : Z) (a : Γ(X, ⊤)) : gs f z ⊤ a = gsTop f z a := gs_eq f z ⊤ trivial a

theorem scal_comp {A B : Type} [CommRing A] [CommRing B] {Y : Scheme.{0}} (q : Y ⟶ Sp B) (φ : A →+* B) (r : A) :
    scal q (φ r) = scal (q ≫ spMap φ) r := by
  have e := congrArg (fun h => h.hom r) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom φ))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at e
  simp only [scal, Scheme.Hom.comp_appTop, CommRingCat.hom_comp, RingHom.comp_apply]
  rw [e]

theorem scal_mul {A : Type} [CommRing A] {Y : Scheme.{0}} (q : Y ⟶ Sp A) (x y : A) :
    scal q (x * y) = scal q x * scal q y := by simp only [scal, map_mul]

theorem scal_one {A : Type} [CommRing A] {Y : Scheme.{0}} (q : Y ⟶ Sp A) : scal q 1 = 1 := by
  simp only [scal, map_one]

theorem gs_top_mul (f : Z ⟶ X) (z : Z) (a b : Γ(X, ⊤)) : gs f z ⊤ (a * b) = gs f z ⊤ a * gs f z ⊤ b :=
  gs_mul f z ⊤ trivial a b

alias gs_top_one := _root_.GlobalTheory.FramePull.gs_one

theorem gs_scal {A : Type} [CommRing A] {Y : Scheme.{0}} (p : Z ⟶ Y) (q : Y ⟶ Sp A) (z : Z) (r : A) :
    gs p z ⊤ (scal q r) = gs (p ≫ q) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom r) :=
  gs_pull p q z ⊤ trivial _

theorem gs_scal_compat {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] {D : DegData R (maximalIdeal R)}
    {C : LabCover D} {W : Type} [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W)
    (p : Z ⟶ T.G.left) (p' : Z ⟶ C.A.A.left) (h : p ≫ T.β = p' ≫ C.α) (z : Z) (c : R) :
    gs p z ⊤ (scal T.G.hom (T.φ c)) = gs p' z ⊤ (scal C.A.A.hom (algebraMap R (FractionRing R) c)) := by
  rw [scal_comp, scal_comp, gs_scal, gs_scal]
  have e : p ≫ T.G.hom ≫ spMap T.φ = p' ≫ C.A.A.hom ≫ spMap (algebraMap R (FractionRing R)) := by
    have h1 : T.β ≫ C.G.hom = T.G.hom ≫ T.ξ := T.cart.1.w
    have h2 : C.α ≫ C.G.hom = C.A.A.hom ≫ C.gp := C.α_cart.1.w
    have h3 : C.gp ≫ C.π = spMap (algebraMap R (FractionRing R)) := C.gp_π
    rw [← T.ξ_π, ← h3, ← Category.assoc T.G.hom, ← h1, ← Category.assoc C.A.A.hom, ← h2]
    simp only [← Category.assoc, h]
  rw [e]

theorem sval_smul {Y : Scheme.{0}} (L : LB X) {K : Type} [Fintype K] {φ : K → (Y ⟶ X)} {ε : K → ℤ}
    (a : Γ(Y, ⊤)) (s : LB.Sec (LB.LinComb L φ ε)) (r : Z ⟶ Y) (z : Z) {J : (Z ⟶ X) → L.ι} (hJ : Good L z J) :
    sval (a • s) r z J = gs r z ⊤ a * sval s r z J := by
  have hm := hJ.mem φ r
  unfold sval
  rw [show (a • s).f (fun k => J (r ≫ φ k)) = resG Y le_top a * s.f (fun k => J (r ≫ φ k)) from
    GlobalTheory.LB.smul_f a s _]
  exact (gs_mul r z _ hm _ _).trans (congrArg (· * _) (gs_res r z le_top hm a))

end GlobalTheory.Mum.TraitRescale


open GlobalTheory.Mum.TraitRescale in
theorem GlobalTheory.Mum.Trait.exp_rescale : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (C : LabCover D) (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W) (k : ℕ) (s : SecK C.P.L.L C.α k) (F : IntFam (maximalIdeal R) D.toPre k) (a b : W) (u : Wˣ) (c₁ c₂ : R), a ≠ 0 → c₂ ≠ 0 → T.φ c₂ * (u : W) * a = T.φ c₁ * b → T.Exp a b s F → T.Exp 1 u (scal C.A.A.hom (algebraMap R (FractionRing R) c₁ / algebraMap R (FractionRing R) c₂) • s) F := by
  intro R _ _ _ hB D C W _ _ _ T k s F a b u c₁ c₂ ha hc₂ hrel hExp
  obtain ⟨σ, ⟨σ', f', hcar, hpull, hexp⟩, hagree⟩ := hExp
  obtain ⟨σ'', hcar''⟩ := _root_.GlobalTheory.Mum.Trait.exists_carries R D C W T k (u : W) σ'
  refine ⟨σ'', ⟨σ', f', hcar'', hpull, hexp⟩, ?_⟩
  have hφ2 : T.φ c₂ ≠ 0 := fun h0 => hc₂ (T.inj (h0.trans (map_zero T.φ).symm))
  have hb : b ≠ 0 := by
    rintro rfl
    rw [mul_zero] at hrel
    exact (mul_ne_zero (mul_ne_zero hφ2 u.ne_zero) ha) hrel
  set c : FractionRing R := algebraMap R (FractionRing R) c₁ / algebraMap R (FractionRing R) c₂ with hc
  have hc₂K : algebraMap R (FractionRing R) c₂ ≠ 0 :=
    fun h0 => hc₂ (IsFractionRing.injective R (FractionRing R) (h0.trans (map_zero _).symm))
  have hcc : c * algebraMap R (FractionRing R) c₂ = algebraMap R (FractionRing R) c₁ := div_mul_cancel₀ _ hc₂K
  have key : ∀ (Z : Scheme.{0}) (p : Z ⟶ T.G.left) (p' : Z ⟶ C.A.A.left), p ≫ T.β = p' ≫ C.α → ∀ z J,
      Good C.P.L.L z J → gs p z ⊤ (scal T.G.hom b) * sval σ'' p z J =
        gs p z ⊤ (scal T.G.hom b) * (gs p' z ⊤ (scal C.A.A.hom c) * sval s p' z J) := by
    intro Z p p' h z J hJ
    choose J' hJ' using fun χ : Z ⟶ T.G.left => exists_chart T.U.LG.isLB (χ z)
    have e1 := hcar Z p z J J' hJ hJ'
    have e2 := hcar'' Z p z J J' hJ hJ'
    have e3 := hagree Z p p' h z J hJ

    have m : gs p z ⊤ (scal T.G.hom (T.φ c₂)) * gs p z ⊤ (scal T.G.hom (u : W)) * gs p z ⊤ (scal T.G.hom a) =
        gs p z ⊤ (scal T.G.hom (T.φ c₁)) * gs p z ⊤ (scal T.G.hom b) := by
      have := congrArg (fun w => gs p z ⊤ (scal T.G.hom w)) hrel
      simpa only [scal_mul, gs_top_mul] using this
    rw [gs_scal_compat T p p' h z c₁, gs_scal_compat T p p' h z c₂] at m
    have hC : gs p' z ⊤ (scal C.A.A.hom c) * gs p' z ⊤ (scal C.A.A.hom (algebraMap R (FractionRing R) c₂)) =
        gs p' z ⊤ (scal C.A.A.hom (algebraMap R (FractionRing R) c₁)) := by
      rw [← hcc, scal_mul, gs_top_mul]
    have hU : IsUnit (gs p' z ⊤ (scal C.A.A.hom (algebraMap R (FractionRing R) c₂))) := by
      obtain ⟨v, hv⟩ := Ne.isUnit hc₂K
      have : IsUnit (scal C.A.A.hom (algebraMap R (FractionRing R) c₂)) :=
        IsUnit.of_mul_eq_one (scal C.A.A.hom ((v⁻¹ : (FractionRing R)ˣ) : FractionRing R))
          (by rw [← scal_mul, ← hv, Units.mul_inv, scal_one])
      rw [gs_top]
      exact this.map _
    have e13 := e1.symm.trans e3
    rw [e2]
    apply hU.mul_right_cancel
    linear_combination (gs p z ⊤ (scal T.G.hom (u : W)) *
      gs p' z ⊤ (scal C.A.A.hom (algebraMap R (FractionRing R) c₂))) * e13 + sval s p' z J * m -
      (gs p z ⊤ (scal T.G.hom b) * sval s p' z J) * hC
  intro Z p p' h z J hJ
  rw [scal_one, gs_top_one, _root_.one_mul, sval_smul C.P.L.L _ s p' z hJ]
  by_cases hF : IsField R
  · exact _root_.GlobalTheory.Mum.cancel_field R hB D C W T k σ'' s b c hF hb key Z p p' h z J hJ
  · exact (_root_.GlobalTheory.Mum.unit_nonfield R D C W T Z p p' h hF b hb z).mul_left_cancel (key Z p p' h z J hJ)

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitExpansionScalarsRescale =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraits =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraits", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaFamilyPrescribedLeadingTermStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaNormalisationConstantOrigin\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightZeroSectionNonzeroAtOrigin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraitExpansionScalarsRescale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_unit_normalisation : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (C : LabCover D), ∃ k₀ : ℕ, ∀ k ≥ k₀, ∀ Φ : IntFam (maximalIdeal R) D.toPre k → SecK C.P.L.L C.α k, (∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W), ∃ a b : W, a ≠ 0 ∧ b ≠ 0 ∧ ∀ F, T.Exp a b (Φ F) F) → ∃ Φ' : IntFam (maximalIdeal R) D.toPre k → SecK C.P.L.L C.α k, ∀ (W : Type) [CommRing W] [IsDomain W] [IsLocalRing W] (T : Trait C W), ∃ u : Wˣ, ∀ F, T.Exp 1 u (Φ' F) F := by
  intro R _ _ _ hR D C
  obtain ⟨k₁, hk₁⟩ := _root_.GlobalTheory.Mum.exists_secB_zero_nonzero_origin R hR D
  refine ⟨max k₁ 1, fun k hk Φ hΦ => ?_⟩
  obtain ⟨b₀, hb₀⟩ := hk₁ k (le_of_max_le_left hk)
  have hk1 : 1 ≤ k := le_of_max_le_right hk
  obtain ⟨F₀, hF₀⟩ := (_root_.GlobalTheory.ThFam.exists_intFam_lead R hR D).2 k hk1 b₀
  obtain ⟨c₁, c₂, hc₂, hc⟩ := _root_.GlobalTheory.Mum.exists_norm_const R hR D C k hk1 b₀ hb₀ F₀ hF₀ (Φ F₀)
  refine ⟨fun F => scal C.A.A.hom (algebraMap R (FractionRing R) c₁ / algebraMap R (FractionRing R) c₂) • Φ F,
    fun W _ _ _ T => ?_⟩
  obtain ⟨a, b, ha, hb, hE⟩ := hΦ W T
  obtain ⟨u, hu⟩ := hc W T a b ha hb (hE F₀)
  exact ⟨u, fun F => _root_.GlobalTheory.Mum.Trait.exp_rescale R hR D C W T k (Φ F) F a b u c₁ c₂ ha hc₂ hu (hE F)⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraits =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraitsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraitsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOriginNormalisationUnitAtTraitsStatement =====

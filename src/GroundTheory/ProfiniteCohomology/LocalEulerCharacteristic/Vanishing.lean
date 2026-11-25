module

public import GroundTheory.ProfiniteCohomology.ContinuousCochains.Functoriality
public import GroundTheory.ProfiniteCohomology.InflationRestriction.CohomologyResMemCohomologyConjInvariants
public import GroundTheory.ProfiniteCohomology.ShapiroDefs
public import GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom
public import GroundTheory.ProfiniteCohomology.CohomologicalDimension.SubsingletonCohomologyOfPrimaryOfFinite
public import GroundTheory.ProfiniteCohomology.InflationRestriction
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Descent
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ConjAction
public import Mathlib.NumberTheory.LocalField.Basic
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.UnitsPower
public import GroundTheory.LocalFields.UnitsBasic
public import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.KummerOpen
public import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.Vanishing
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyKummer
import GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality
import GroundTheory.LocalFields.UnramifiedRootsOfUnity
import GroundTheory.ProfiniteCohomology.ClassFormations.CorestrictionDefs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingCore, GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingUnits, GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Vanishing

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingCore =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingCore", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.ContinuousCochains.Functoriality\npublic import GroundTheory.ProfiniteCohomology.InflationRestriction.CohomologyResMemCohomologyConjInvariants\npublic import GroundTheory.ProfiniteCohomology.ShapiroDefs\npublic import GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom\npublic import GroundTheory.ProfiniteCohomology.CohomologicalDimension.SubsingletonCohomologyOfPrimaryOfFinite\nimport GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality\npublic import GroundTheory.ProfiniteCohomology.InflationRestriction\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Descent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Mon\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ConjAction\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory Limits

universe u

section Trivial

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  (N : Subgroup G) [N.Normal]

def resTrivMor {X Y : Rep.{u} k G} (hX : ∀ (m : N) (x : X), X.ρ m x = x)
    (hY : ∀ (m : N) (y : Y), Y.ρ m y = y) (f : X →ₗ[k] Y) :
    Rep.res N.subtype X ⟶ Rep.res N.subtype Y :=
  Rep.ofHom ⟨f, fun m => by
    ext x
    change f (X.ρ m x) = Y.ρ m (f x)
    rw [hX, hY]⟩


theorem cohomologyMap_comp_cohomologyConj_of_apply {T A : Rep.{u} k G} [IsDiscreteRep T]
    [IsDiscreteRep A] (φ ψ : Rep.res N.subtype T ⟶ Rep.res N.subtype A) (g : G)
    (h : ∀ t : T, A.ρ g (φ.hom t) = ψ.hom (T.ρ g t)) (n : ℕ) :
    cohomologyMap φ n ≫ cohomologyConj A N n g = cohomologyConj T N n g ≫ cohomologyMap ψ n := by
  rw [← cohomologyMapAlong_id_eq_cohomologyMap, ← cohomologyMapAlong_id_eq_cohomologyMap,
    cohomologyConj, cohomologyConj, ← cohomologyMapAlong_comp, ← cohomologyMapAlong_comp]
  refine cohomologyMapAlong_congr _ _ _ _ (by ext s; simp) (fun t => ?_) n
  exact h t

theorem cohomologyConj_eq_cohomologyMap_of_sum {T A : Rep.{u} k G} [IsDiscreteRep T]
    [IsDiscreteRep A] (hT : ∀ (m : N) (t : T), T.ρ m t = t) (hA : ∀ (m : N) (a : A), A.ρ m a = a)
    {ι : Type} [Fintype ι] (i : ι → (T →ₗ[k] A)) (p : ι → (A →ₗ[k] T))
    (hip : ∑ j, i j ∘ₗ p j = LinearMap.id) (g : G) (hg : ∀ t : T, T.ρ g t = t) (n : ℕ)
    (hconj : cohomologyConj T N n g = 𝟙 _) :
    cohomologyConj A N n g = cohomologyMap (resTrivMor N hA hA (A.ρ g)) n := by
  have hipa : ∀ a : A, ∑ j, i j (p j a) = a := fun a => by
    have := congrArg (fun f : A →ₗ[k] A => f a) hip
    simpa [LinearMap.sum_apply] using this
  have hsum : ∑ j, resTrivMor N hA hT (p j) ≫ resTrivMor N hT hA (i j) = 𝟙 _ := by
    ext a
    rw [Rep.sum_hom, Representation.IntertwiningMap.toLinearMap_sum, LinearMap.sum_apply]
    exact hipa a
  have hsum' : ∑ j, resTrivMor N hA hT (p j) ≫ resTrivMor N hT hA (A.ρ g ∘ₗ i j) =
      resTrivMor N hA hA (A.ρ g) := by
    ext a
    rw [Rep.sum_hom, Representation.IntertwiningMap.toLinearMap_sum, LinearMap.sum_apply]
    change ∑ j, A.ρ g (i j (p j a)) = A.ρ g a

    rw [← map_sum, hipa]
  have hj : ∀ j, cohomologyMap (resTrivMor N hT hA (i j)) n ≫ cohomologyConj A N n g =
      cohomologyMap (resTrivMor N hT hA (A.ρ g ∘ₗ i j)) n := fun j => by
    rw [cohomologyMap_comp_cohomologyConj_of_apply N _ (resTrivMor N hT hA (A.ρ g ∘ₗ i j)) g
      (fun t => by rw [hg t]; rfl) n, hconj, Category.id_comp]
  calc cohomologyConj A N n g = 𝟙 _ ≫ cohomologyConj A N n g := (Category.id_comp _).symm
    _ = ∑ j, cohomologyMap (resTrivMor N hA hT (p j)) n ≫
          (cohomologyMap (resTrivMor N hT hA (i j)) n ≫ cohomologyConj A N n g) := by
        rw [← cohomologyMap_id, ← hsum, cohomologyMap_sum, Preadditive.sum_comp]
        simp only [cohomologyMap_comp, Category.assoc]
    _ = cohomologyMap (resTrivMor N hA hA (A.ρ g)) n := by
        simp only [hj, ← cohomologyMap_comp]
        rw [← cohomologyMap_sum, hsum']

end Trivial

section Descent

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [CompactSpace G] (U : OpenSubgroup G) [(U : Subgroup G).Normal]

attribute [local instance] Subgroup.fintypeQuotientOfFiniteIndex


omit [(U : Subgroup G).Normal] in
theorem sum_quotient_out_apply_eq_zero (A : Rep.{u} k G)
    (hA : ∀ (m : (U : Subgroup G)) (a : A), A.ρ m a = a)
    (hinv : ∀ a : A, (∀ g : G, A.ρ g a = a) → a = 0) (a : A) :
    ∑ c : G ⧸ (U : Subgroup G), A.ρ c.out a = 0 := by
  apply hinv
  intro g

  rw [map_sum]
  have hc : ∀ c : G ⧸ (U : Subgroup G), A.ρ g (A.ρ c.out a) = A.ρ (g • c).out a := by
    intro c
    obtain ⟨m, hm⟩ := QuotientGroup.mk_out_eq_mul (U : Subgroup G) (g * c.out)
    have e : (g • c).out = g * c.out * m := by
      rw [← hm]
      congr 1
      conv_lhs => rw [← QuotientGroup.out_eq' c]
      rfl
    rw [e, map_mul, Module.End.mul_apply, hA m, ← Module.End.mul_apply, ← map_mul]
  simp_rw [hc]
  exact Fintype.sum_equiv (MulAction.toPerm g) _ _ (fun _ => rfl)

theorem subsingleton_cohomology_of_cohomologyConj_eq (A : Rep.{u} k G) [IsDiscreteRep A]
    (hA : ∀ (m : (U : Subgroup G)) (a : A), A.ρ m a = a)
    (hinv : ∀ a : A, (∀ g : G, A.ρ g a = a) → a = 0)
    (hbij : Function.Bijective fun a : A => (U : Subgroup G).index • a) (n : ℕ)
    (hconj : ∀ g : G, cohomologyConj A (U : Subgroup G) n g =
      cohomologyMap (resTrivMor (U : Subgroup G) hA hA (A.ρ g)) n) :
    Subsingleton (cohomology A n) := by
  have hAU : Function.Bijective fun a : Rep.res (U : Subgroup G).subtype A =>
      (U : Subgroup G).index • a := hbij
  have hzero : ∑ c : G ⧸ (U : Subgroup G), resTrivMor (U : Subgroup G) hA hA (A.ρ c.out) = 0 := by
    ext a
    rw [Rep.sum_hom, Representation.IntertwiningMap.toLinearMap_sum, LinearMap.sum_apply]
    exact sum_quotient_out_apply_eq_zero U A hA hinv a
  refine ⟨fun x y => cohomologyRes_injective_of_bijective U A hbij n ?_⟩
  suffices h : ∀ z : cohomology A n, (cohomologyRes A (U : Subgroup G) n).hom z = 0 by
    rw [h x, h y]
  intro z
  set w := (cohomologyRes A (U : Subgroup G) n).hom z
  have hw : ∀ g : G, (cohomologyConj A (U : Subgroup G) n g).hom w = w :=
    cohomologyRes_apply_mem_cohomologyConjInvariants A _ n z
  apply (bijective_nsmul_cohomology (Rep.res (U : Subgroup G).subtype A) _ hAU n).1
  change (U : Subgroup G).index • w = (U : Subgroup G).index • 0
  rw [smul_zero]
  calc (U : Subgroup G).index • w = ∑ c : G ⧸ (U : Subgroup G), w := by
        rw [Finset.sum_const, Finset.card_univ, Subgroup.index_eq_card, Nat.card_eq_fintype_card]
    _ = ∑ c : G ⧸ (U : Subgroup G), (cohomologyConj A (U : Subgroup G) n c.out).hom w := by
        simp only [hw]
    _ = (cohomologyMap (∑ c : G ⧸ (U : Subgroup G),
          resTrivMor (U : Subgroup G) hA hA (A.ρ c.out)) n).hom w := by
        simp only [hconj, cohomologyMap_sum, ModuleCat.hom_sum, LinearMap.sum_apply]
    _ = 0 := by
        rw [hzero, cohomologyMap_zero]
        rfl

theorem subsingleton_cohomology_of_sum {T A : Rep.{u} k G} [IsDiscreteRep T] [IsDiscreteRep A]
    (hT : ∀ (g : G) (t : T), T.ρ g t = t) (hA : ∀ (m : (U : Subgroup G)) (a : A), A.ρ m a = a)
    (hinv : ∀ a : A, (∀ g : G, A.ρ g a = a) → a = 0)
    (hbij : Function.Bijective fun a : A => (U : Subgroup G).index • a)
    {ι : Type} [Fintype ι] (i : ι → (T →ₗ[k] A)) (p : ι → (A →ₗ[k] T))
    (hip : ∑ j, i j ∘ₗ p j = LinearMap.id) (n : ℕ)
    (hconj : ∀ g : G, cohomologyConj T (U : Subgroup G) n g = 𝟙 _) :
    Subsingleton (cohomology A n) :=
  subsingleton_cohomology_of_cohomologyConj_eq U A hA hinv hbij n fun g =>
    cohomologyConj_eq_cohomologyMap_of_sum (U : Subgroup G) (fun m t => hT m t) hA i p hip g
      (hT g) n (hconj g)

end Descent

section InfRes

variable {k Γ : Type u} [CommRing k] [Group Γ] [TopologicalSpace Γ] [IsTopologicalGroup Γ]

variable [CompactSpace Γ] [TotallyDisconnectedSpace Γ]

theorem subsingleton_cohomology_of_normal (W : Subgroup Γ) [W.Normal] (hW : IsClosed (W : Set Γ))
    (A : Rep.{u} k Γ) [IsDiscreteRep A] (hinv : ∀ a : A, (∀ w : W, A.ρ w a = a) → a = 0) (q : ℕ)
    (hq : ∀ i, 0 < i → i ≤ q → Subsingleton (cohomology (Rep.res W.subtype A) i)) :
    ∀ i ≤ q, Subsingleton (cohomology A i) := by
  intro i hi
  rcases Nat.eq_zero_or_pos i with rfl | hpos
  · have : Subsingleton (ModuleCat.of k A.ρ.invariants) := ⟨fun a b => Subtype.ext <| by
      rw [hinv a (fun w => a.2 w), hinv b (fun w => b.2 w)]⟩
    exact (H0Iso A).toLinearEquiv.toEquiv.subsingleton
  · have hz : ∀ j, 0 < j → j < i → IsZero (cohomology (Rep.res W.subtype A) j) := fun j hj hji =>
      (ModuleCat.isZero_iff_subsingleton).2 (hq j hj (by omega))
    have hex := infRes_exact A W (hN := hW) (Nat.pos_iff_ne_zero.1 hpos) hz
    have : Subsingleton (A.quotientToInvariants W) := ⟨fun a b => Subtype.ext <| by
      rw [hinv a (fun w => a.2 w), hinv b (fun w => b.2 w)]⟩
    have hs := subsingleton_cohomology_of_subsingleton (A.quotientToInvariants W) i
    have hres := hq i hpos hi
    have hmem : ∀ z : cohomology A i, z = 0 := by
      intro z
      have hk : z ∈ LinearMap.ker (cohomologyRes A W i).hom :=
        LinearMap.mem_ker.2 (Subsingleton.elim _ _)
      rw [← hex.2] at hk
      obtain ⟨y, rfl⟩ := hk
      rw [Subsingleton.elim y 0, map_zero]
    exact ⟨fun x y => by rw [hmem x, hmem y]⟩

end InfRes

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingCore =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingUnits =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingUnits", "h": "module\n\npublic import Mathlib.NumberTheory.LocalField.Basic\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.UnitsPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import GroundTheory.LocalFields.UnitsBasic\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open GroundTheory.LocalField ValuativeRel IsLocalRing

section Group

variable {G : Type*} [CommGroup G]

theorem mul_inv_mem_of_iterate_eq {l m : ℕ} (P O : Subgroup G) (s : G →* G)
    (hPl : ∀ y : G, y ^ l ∈ P) (hO : ∀ x : G, s x * x⁻¹ ∈ O)
    (hOP : ∀ e ∈ O, s e * e⁻¹ ∈ P) (hm : m.Coprime l) (hsm : ∀ x : G, s^[m] x = x) (x : G) :
    s x * x⁻¹ ∈ P := by
  have hPn : P.Normal := Subgroup.normal_of_isMulCommutative P
  have hq : ∀ a b : G, a * b⁻¹ ∈ P → (a : G ⧸ P) = b := fun a b h => by
    rw [QuotientGroup.eq]
    have := P.inv_mem h
    rwa [mul_inv_rev, inv_inv, mul_comm] at this
  set c := s x * x⁻¹ with hc
  have hOs : ∀ e ∈ O, s e ∈ O := fun e he => by
    have := O.mul_mem (hO e) he
    rwa [inv_mul_cancel_right] at this
  have hcO : ∀ j : ℕ, s^[j] c ∈ O := fun j => by
    induction j with
    | zero => exact hO x
    | succ j ih => rw [Function.iterate_succ_apply']; exact hOs _ ih
  have hcj : ∀ j : ℕ, ((s^[j] c : G) : G ⧸ P) = c := fun j => by
    induction j with
    | zero => rfl
    | succ j ih => rw [Function.iterate_succ_apply', hq _ _ (hOP _ (hcO j)), ih]
  have hsx : s x = x * c := by rw [hc, mul_comm (s x), mul_inv_cancel_left]
  have hxj : ∀ j : ℕ, ((s^[j] x : G) : G ⧸ P) = (x : G ⧸ P) * (c : G ⧸ P) ^ j := fun j => by
    induction j with
    | zero => simp
    | succ j ih =>
      rw [Function.iterate_succ_apply, hsx, iterate_map_mul, QuotientGroup.mk_mul, ih,
        hcj, pow_succ, mul_assoc]
  have h1 : (c : G ⧸ P) ^ m = 1 := by
    have h := hxj m
    rw [hsm] at h
    exact mul_left_cancel (h.symm.trans (mul_one _).symm)
  have h2 : (c : G ⧸ P) ^ l = 1 := by
    rw [← QuotientGroup.mk_pow, QuotientGroup.eq_one_iff]
    exact hPl c
  have h3 : (c : G ⧸ P) = 1 := by
    have h := (pow_gcd_eq_one (a := (c : G ⧸ P))).2 ⟨h1, h2⟩
    rwa [Nat.Coprime.gcd_eq_one hm, pow_one] at h
  exact (QuotientGroup.eq_one_iff c).1 h3

end Group

section LocalField

variable {F : Type*} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem exists_map_units_eq_mul_pow {l m : ℕ} (hl : (l : 𝓀[F]) ≠ 0) (σ : F ≃+* F)
    (hval : ∀ x : F, valuation F (σ x) = valuation F x)
    (hin : ∀ x : F, valuation F x ≤ 1 → valuation F (σ x - x) < 1)
    (hm : m.Coprime l) (hσm : ∀ x : F, σ^[m] x = x) (u : Fˣ) :
    ∃ y : Fˣ, Units.map (σ : F →* F) u = u * y ^ l := by
  set s : Fˣ →* Fˣ := Units.map (σ : F →* F) with hs_def
  have hs : ∀ x : Fˣ, ((s x : Fˣ) : F) = σ x := fun x => rfl
  let P : Subgroup Fˣ := (powMonoidHom l : Fˣ →* Fˣ).range
  let O : Subgroup Fˣ :=
    { carrier := {x | valuation F (x : F) = 1}
      one_mem' := by simp
      mul_mem' := fun {a b} ha hb => by
        simp only [Set.mem_ofPred_eq, Units.val_mul, map_mul] at ha hb ⊢
        rw [ha, hb, mul_one]
      inv_mem' := fun {a} ha => by
        simp only [Set.mem_ofPred_eq, Units.val_inv_eq_inv_val, map_inv₀] at ha ⊢
        rw [ha, inv_one] }
  have hmemO : ∀ x : Fˣ, x ∈ O ↔ valuation F (x : F) = 1 := fun x => Iff.rfl
  have hv0 : ∀ x : Fˣ, valuation F (x : F) ≠ 0 := fun x => (valuation F).ne_zero_iff.2 x.ne_zero
  have hO : ∀ x : Fˣ, s x * x⁻¹ ∈ O := fun x => by
    rw [hmemO, Units.val_mul, hs, map_mul, Units.val_inv_eq_inv_val, map_inv₀, hval,
      mul_inv_cancel₀ (hv0 x)]
  have hOP : ∀ e ∈ O, s e * e⁻¹ ∈ P := fun e he => by
    rw [hmemO] at he
    set t := s e * e⁻¹ with ht
    have htv : valuation F (t : F) = 1 := (hmemO t).1 (hO e)
    have ht1 : valuation F ((t : F) - 1) < 1 := by
      have e1 : (t : F) - 1 = (σ e - e) * (e : F)⁻¹ := by
        rw [ht, Units.val_mul, hs, Units.val_inv_eq_inv_val, sub_mul,
          mul_inv_cancel₀ e.ne_zero]
      rw [e1, map_mul, map_inv₀, he, inv_one, mul_one]
      exact hin _ he.le
    have hnt : normalizedValuation F (t : F) = 1 := by
      rw [← map_one (normalizedValuation F), normalizedValuation_eq_iff, map_one]
      exact htv
    obtain ⟨t', ht'⟩ := mem_range_unitsIncl_iff.2 hnt
    have ht'F : ((t' : 𝒪[F]) : F) = t := by rw [← coe_unitsIncl, ht']
    have hmem : t' ∈ unitFiltration F 1 := by
      rw [mem_unitFiltration, pow_one, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      have h1 := valuation_unit hu.unit
      rw [IsUnit.unit_spec] at h1
      have h2 : (((t' : 𝒪[F]) - 1 : 𝒪[F]) : F) = (t : F) - 1 := by
        push_cast
        rw [ht'F]
      rw [h2] at h1
      exact (lt_irrefl _ (h1 ▸ ht1))
    obtain ⟨z, -, hz⟩ := exists_pow_eq_of_mem_unitFiltration_one hl hmem
    refine ⟨unitsIncl F z, ?_⟩
    rw [powMonoidHom_apply, ← map_pow, hz, ht']
  have hiter : ∀ (j : ℕ) (x : Fˣ), ((s^[j] x : Fˣ) : F) = σ^[j] (x : F) := fun j => by
    induction j with
    | zero => intro x; rfl
    | succ j ih =>
      intro x
      rw [Function.iterate_succ_apply', Function.iterate_succ_apply', hs, ih]
  have hsm : ∀ x : Fˣ, s^[m] x = x := fun x => Units.ext (by rw [hiter, hσm])
  obtain ⟨y, hy⟩ := mul_inv_mem_of_iterate_eq P O s (fun y => ⟨y, rfl⟩) hO hOP hm hsm u
  refine ⟨y, ?_⟩
  rw [powMonoidHom_apply] at hy
  rw [hy, mul_comm (s u), mul_inv_cancel_left]

end LocalField

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingUnits =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Vanishing =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Vanishing", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.InflationRestriction.CohomologyResMemCohomologyConjInvariants\npublic import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.KummerOpen\nimport GroundTheory.LocalFields.UnramifiedRootsOfUnity\nimport GroundTheory.ProfiniteCohomology.ClassFormations.CorestrictionDefs\npublic import GroundTheory.ProfiniteCohomology.LocalClassFormation.FiniteVanishing.Vanishing\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyKummer\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingCore\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.VanishingUnits\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory GroundTheory.LocalField ValuativeRel IsLocalRing IntermediateField

section FixedField

variable {K Ksep : Type} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep] [ValuativeRel Ksep] [ValuativeExtension K Ksep]

theorem isNonarchimedeanLocalField_fixedField (V : OpenSubgroup Gal(Ksep/K)) :
    letI := (finiteExtensionStructure K (fixedField (V : Subgroup Gal(Ksep/K)))).top
    IsNonarchimedeanLocalField (fixedField (V : Subgroup Gal(Ksep/K))) := by
  have hrel := valuativeRel_eq_finiteExtensionStructure K (L := fixedField (V : Subgroup Gal(Ksep/K)))
  have h1 := finiteExtensionStructure_isNonarchimedeanLocalField K (fixedField (V : Subgroup Gal(Ksep/K)))
  rw [← hrel] at h1
  exact h1


omit [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K] [IsSepClosure K Ksep]
  [ValuativeExtension K Ksep] in
theorem valuation_le_valuation_iff_coe (E : IntermediateField K Ksep) (x y : E) :
    valuation E x ≤ valuation E y ↔ valuation Ksep (x : Ksep) ≤ valuation Ksep (y : Ksep) := by
  rw [← (valuation E).vle_iff_le, ← (valuation Ksep).vle_iff_le, IntermediateField.coe_vle_coe_iff]

omit [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K] [IsSepClosure K Ksep]
  [ValuativeExtension K Ksep] in
theorem valuation_le_one_iff_coe (E : IntermediateField K Ksep) (x : E) :
    valuation E x ≤ 1 ↔ valuation Ksep (x : Ksep) ≤ 1 := by
  rw [← map_one (valuation E), valuation_le_valuation_iff_coe, IntermediateField.coe_one, map_one]

omit [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K] [IsSepClosure K Ksep]
  [ValuativeExtension K Ksep] in
theorem valuation_lt_one_iff_coe (E : IntermediateField K Ksep) (x : E) :
    valuation E x < 1 ↔ valuation Ksep (x : Ksep) < 1 := by
  rw [← not_le, ← not_le, ← map_one (valuation E), valuation_le_valuation_iff_coe,
    IntermediateField.coe_one, map_one]

omit [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K] [IsSepClosure K Ksep]
  [ValuativeExtension K Ksep] in
theorem valuation_eq_iff_coe (E : IntermediateField K Ksep) (x y : E) :
    valuation E x = valuation E y ↔ valuation Ksep (x : Ksep) = valuation Ksep (y : Ksep) := by
  rw [le_antisymm_iff, le_antisymm_iff, valuation_le_valuation_iff_coe, valuation_le_valuation_iff_coe]

theorem natCast_residueField_fixedField_ne_zero {l : ℕ} (hl : (l : 𝓀[K]) ≠ 0)
    (V : OpenSubgroup Gal(Ksep/K)) :
    letI := (finiteExtensionStructure K (fixedField (V : Subgroup Gal(Ksep/K)))).top
    (l : 𝓀[fixedField (V : Subgroup Gal(Ksep/K))]) ≠ 0 := by
  let := (finiteExtensionStructure K (fixedField (V : Subgroup Gal(Ksep/K)))).top
  have := isNonarchimedeanLocalField_fixedField V
  have h := (algebraMap 𝓀[K] 𝓀[fixedField (V : Subgroup Gal(Ksep/K))]).injective.ne hl
  rwa [map_natCast, map_zero] at h


omit [IsSepClosure K Ksep] in
theorem natCast_ne_zero_of_residueField {l : ℕ} (hl : (l : 𝓀[K]) ≠ 0) : (l : K) ≠ 0 := by
  intro h
  apply hl
  have : ((l : 𝒪[K]) : K) = 0 := by push_cast; exact h
  have h0 : (l : 𝒪[K]) = 0 := Subtype.ext this
  rw [← map_natCast (residue 𝒪[K]), h0, map_zero]

end FixedField

end GroundTheory.ProfCoh

namespace GroundTheory.ProfCoh

open CategoryTheory GroundTheory.LocalField ValuativeRel IsLocalRing IntermediateField

section DegreeZero

universe u

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

theorem cohomologyConj_zero_eq_id_of_apply (A : Rep.{u} k G) [IsDiscreteRep A] (N : Subgroup G)
    [N.Normal] (g : G) (hg : ∀ a : A, A.ρ g a = a) : cohomologyConj A N 0 g = 𝟙 _ := by
  have hinj : Function.Injective (H0Iso (Rep.res N.subtype A)).hom.hom :=
    (ModuleCat.mono_iff_injective _).1 inferInstance
  refine ModuleCat.hom_ext (LinearMap.ext fun x => hinj ?_)
  rw [H0Iso_hom_cohomologyConj]
  exact Subtype.ext (hg _)

end DegreeZero

section Conj

variable {K Ksep : Type} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep] [ValuativeRel Ksep] [ValuativeExtension K Ksep]
  {l : ℕ} {W V : OpenSubgroup Gal(Ksep/K)}

theorem apply_eq_of_valuation_sub_lt_one (hl : (l : 𝓀[K]) ≠ 0)
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    {g : Gal(Ksep/K)}
    (hg : ∀ x ∈ fixedField (V : Subgroup Gal(Ksep/K)), valuation Ksep x ≤ 1 →
      valuation Ksep (g x - x) < 1)
    {ζ : Ksep} (hζ : ζ ^ l = 1) : g ζ = ζ := by
  let := (finiteExtensionStructure K (fixedField (V : Subgroup Gal(Ksep/K)))).top
  have := isNonarchimedeanLocalField_fixedField V
  have hlF := natCast_residueField_fixedField_ne_zero hl V
  have hl0 : l ≠ 0 := by rintro rfl; simp at hlF
  have hgζ : (g ζ) ^ l = 1 := by rw [← map_pow, hζ, map_one]
  let a : fixedField (V : Subgroup Gal(Ksep/K)) := ⟨ζ, hμ ζ hζ⟩
  let b : fixedField (V : Subgroup Gal(Ksep/K)) := ⟨g ζ, hμ _ hgζ⟩
  have ha : a ^ l = 1 := Subtype.ext (by simpa [a] using hζ)
  have hb : b ^ l = 1 := Subtype.ext (by simpa [b] using hgζ)
  let x : 𝒪[fixedField (V : Subgroup Gal(Ksep/K))] := ⟨a, mem_integer_of_pow_eq_one hl0 ha⟩
  let y : 𝒪[fixedField (V : Subgroup Gal(Ksep/K))] := ⟨b, mem_integer_of_pow_eq_one hl0 hb⟩
  have hx : x ^ l = 1 := Subtype.ext (by simpa [x] using ha)
  have hy : y ^ l = 1 := Subtype.ext (by simpa [y] using hb)
  have hres : residue 𝒪[fixedField (V : Subgroup Gal(Ksep/K))] y =
      residue 𝒪[fixedField (V : Subgroup Gal(Ksep/K))] x := by
    rw [← sub_eq_zero, ← (residue 𝒪[fixedField (V : Subgroup Gal(Ksep/K))]).map_sub,
      residue_eq_zero_iff, IsLocalRing.mem_maximalIdeal,
      mem_nonunits_iff]
    intro hu
    have h1 := valuation_unit hu.unit
    rw [IsUnit.unit_spec] at h1
    have hle : valuation Ksep ζ ≤ 1 :=
      (valuation_le_one_iff_coe _ a).1 ((Valuation.mem_integer_iff _ _).1 x.2)
    have hlt : valuation (fixedField (V : Subgroup Gal(Ksep/K))) (((y - x :
        𝒪[fixedField (V : Subgroup Gal(Ksep/K))])) : fixedField (V : Subgroup Gal(Ksep/K))) < 1 := by
      rw [valuation_lt_one_iff_coe]
      exact hg ζ (hμ ζ hζ) hle
    exact lt_irrefl _ (h1 ▸ hlt)
  have := eq_of_pow_eq_one_of_residue_eq hlF hy hx hres
  exact congrArg (fun z : 𝒪[fixedField (V : Subgroup Gal(Ksep/K))] =>
    ((z : fixedField (V : Subgroup Gal(Ksep/K))) : Ksep)) this

variable (h : V ≤ W) [((V : Subgroup Gal(Ksep/K)).subgroupOf (W : Subgroup Gal(Ksep/K))).Normal]


include h in
theorem cohomologyConj_one_galRootsOfUnity_eq_id (hl : (l : 𝓀[K]) ≠ 0)
    (hind : ((V : Subgroup Gal(Ksep/K)).relIndex W).Coprime l) (g : (W : Subgroup Gal(Ksep/K)))
    (hg : ∀ x ∈ fixedField (V : Subgroup Gal(Ksep/K)), valuation Ksep x ≤ 1 →
      valuation Ksep ((g : Gal(Ksep/K)) x - x) < 1) :
    cohomologyConj (Rep.res (W : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))
      ((V : Subgroup Gal(Ksep/K)).subgroupOf W) 1 g = 𝟙 _ := by
  have hlK := natCast_ne_zero_of_residueField hl
  let := (finiteExtensionStructure K (fixedField (V : Subgroup Gal(Ksep/K)))).top
  have := isNonarchimedeanLocalField_fixedField V
  have hlF := natCast_residueField_fixedField_ne_zero hl V
  set σ : fixedField (V : Subgroup Gal(Ksep/K)) ≃+* fixedField (V : Subgroup Gal(Ksep/K)) :=
    (fixedFieldConjHom h g).toRingEquiv with hσ
  have hσx : ∀ x : fixedField (V : Subgroup Gal(Ksep/K)),
      ((σ x : fixedField (V : Subgroup Gal(Ksep/K))) : Ksep) = (g : Gal(Ksep/K)) (x : Ksep) :=
    fun x => rfl
  have hval : ∀ x : fixedField (V : Subgroup Gal(Ksep/K)),
      valuation (fixedField (V : Subgroup Gal(Ksep/K))) (σ x) =
        valuation (fixedField (V : Subgroup Gal(Ksep/K))) x := fun x => by
    rw [valuation_eq_iff_coe, hσx]
    exact valuation_algEquiv_apply_of_isAlgebraic (K := K) (g : Gal(Ksep/K)) (x : Ksep)
  have hin : ∀ x : fixedField (V : Subgroup Gal(Ksep/K)),
      valuation (fixedField (V : Subgroup Gal(Ksep/K))) x ≤ 1 →
        valuation (fixedField (V : Subgroup Gal(Ksep/K))) (σ x - x) < 1 := fun x hx => by
    rw [valuation_lt_one_iff_coe]
    rw [valuation_le_one_iff_coe] at hx
    have e : (((σ x - x : fixedField (V : Subgroup Gal(Ksep/K)))) : Ksep) =
        (g : Gal(Ksep/K)) (x : Ksep) - x := by
      rw [← hσx]
      rfl
    rw [e]
    exact hg x x.2 hx
  have hiter : ∀ (j : ℕ) (x : fixedField (V : Subgroup Gal(Ksep/K))),
      ((σ^[j] x : fixedField (V : Subgroup Gal(Ksep/K))) : Ksep) = ((g : Gal(Ksep/K)) ^ j) (x : Ksep) := by
    intro j
    induction j with
    | zero => intro x; rfl
    | succ j ih =>
      intro x
      rw [Function.iterate_succ_apply', hσx, ih, pow_succ', AlgEquiv.mul_apply]
  have hσm : ∀ x : fixedField (V : Subgroup Gal(Ksep/K)),
      σ^[(V : Subgroup Gal(Ksep/K)).relIndex W] x = x := fun x => by
    apply Subtype.ext
    rw [hiter]
    have hmem := Subgroup.pow_index_mem ((V : Subgroup Gal(Ksep/K)).subgroupOf W) g
    rw [Subgroup.mem_subgroupOf, Subgroup.coe_pow] at hmem
    exact (mem_fixedField_iff _ _).1 x.2 _ hmem
  refine ModuleCat.hom_ext (LinearMap.ext fun x => ?_)
  obtain ⟨u, rfl⟩ := kummerOpenHom_surjective h hlK x
  change (cohomologyConj _ _ 1 g).hom (kummerOpenHom h hlK u) = kummerOpenHom h hlK u
  rw [← kummerOpenHom_smul, ← sub_eq_zero, ← map_sub, kummerOpenHom_eq_zero_iff]
  obtain ⟨y, hy⟩ := exists_map_units_eq_mul_pow hlF σ hval hin hind hσm (Additive.toMul u)
  refine ⟨Additive.ofMul y, ?_⟩
  have hsm : Additive.toMul (fixedFieldConjHom h g • u) =
      Units.map (σ : fixedField (V : Subgroup Gal(Ksep/K)) →* fixedField (V : Subgroup Gal(Ksep/K)))
        (Additive.toMul u) :=
    Units.ext (Subtype.ext rfl)
  rw [eq_sub_iff_add_eq, add_comm]
  apply Additive.toMul.injective
  rw [toMul_add, toMul_nsmul, toMul_ofMul, hsm, hy]


include h in
theorem cohomologyConj_galRootsOfUnity_eq_id (hl : (l : 𝓀[K]) ≠ 0)
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    (hind : ((V : Subgroup Gal(Ksep/K)).relIndex W).Coprime l) (g : (W : Subgroup Gal(Ksep/K)))
    (hg : ∀ x ∈ fixedField (V : Subgroup Gal(Ksep/K)), valuation Ksep x ≤ 1 →
      valuation Ksep ((g : Gal(Ksep/K)) x - x) < 1) {n : ℕ} (hn : n ≤ 2) :
    cohomologyConj (Rep.res (W : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l))
      ((V : Subgroup Gal(Ksep/K)).subgroupOf W) n g = 𝟙 _ := by
  interval_cases n
  · refine cohomologyConj_zero_eq_id_of_apply _ _ g fun a => ?_
    refine congrArg Additive.ofMul (Subtype.ext (Units.ext ?_))
    exact apply_eq_of_valuation_sub_lt_one hl hμ hg
      (by
        have h1 := congrArg Units.val ((mem_rootsOfUnity l _).1 (Additive.toMul a).2)
        rw [Units.val_pow_eq_pow_val, Units.val_one] at h1
        convert h1 using 2
        rfl)
  · exact cohomologyConj_one_galRootsOfUnity_eq_id h hl hind g hg
  · exact cohomologyConj_two_galRootsOfUnity_eq_id (natCast_ne_zero_of_residueField hl) h g

end Conj

end GroundTheory.ProfCoh

namespace GroundTheory.ProfCoh

open CategoryTheory GroundTheory.LocalField ValuativeRel IsLocalRing IntermediateField

section Helpers

def addHomToULiftLinear {M N : Type*} [AddCommGroup M] [AddCommGroup N] {iM : Module (ULift.{0} ℤ) M}
    {iN : Module (ULift.{0} ℤ) N} (f : M →+ N) :
    @LinearMap (ULift.{0} ℤ) (ULift.{0} ℤ) _ _ (RingHom.id _) M N _ _ iM iN where
  toFun := f
  map_add' := f.map_add
  map_smul' c x := by
    obtain ⟨n⟩ := c
    have h1 := @Int.cast_smul_eq_zsmul (ULift.{0} ℤ) M _ _ iM n x
    have h2 := @Int.cast_smul_eq_zsmul (ULift.{0} ℤ) N _ _ iN n (f x)
    have e : ((n : ℤ) : ULift.{0} ℤ) = ULift.up n := rfl
    rw [RingHom.id_apply, ← e, h1, h2, map_zsmul]

theorem addHomToULiftLinear_apply {M N : Type*} [AddCommGroup M] [AddCommGroup N]
    {iM : Module (ULift.{0} ℤ) M} {iN : Module (ULift.{0} ℤ) N} (f : M →+ N) (x : M) :
    (addHomToULiftLinear (iM := iM) (iN := iN) f) x = f x :=
  rfl

theorem exists_sum_addHom_comp_eq {l : ℕ} [Fact l.Prime] {T A : Type*} [AddCommGroup T]
    [AddCommGroup A] [Module (ZMod l) A] [Finite A] (e : ZMod l ≃+ T) :
    ∃ (ι : Type) (_ : Fintype ι) (i : ι → (T →+ A)) (p : ι → (A →+ T)),
      ∀ a : A, ∑ j, i j (p j a) = a := by
  obtain ⟨n, b⟩ : ∃ n : ℕ, Nonempty (Module.Basis (Fin n) (ZMod l) A) := by
    have : Module.Finite (ZMod l) A := Module.Finite.of_finite
    exact ⟨_, ⟨Module.finBasis (ZMod l) A⟩⟩
  obtain ⟨b⟩ := b
  refine ⟨Fin n, inferInstance, fun j => (LinearMap.toSpanSingleton (ZMod l) A (b j)).toAddMonoidHom.comp
    e.symm.toAddMonoidHom, fun j => e.toAddMonoidHom.comp (b.coord j).toAddMonoidHom, fun a => ?_⟩
  simp only [AddMonoidHom.coe_comp, Function.comp_apply, AddEquiv.coe_toAddMonoidHom,
    AddEquiv.symm_apply_apply, LinearMap.toAddMonoidHom_coe, LinearMap.toSpanSingleton_apply,
    Module.Basis.coord_apply]
  exact b.sum_repr a

end Helpers

section LemmaY

variable {K Ksep : Type} [Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]
  [Field Ksep] [Algebra K Ksep] [IsSepClosure K Ksep] [ValuativeRel Ksep] [ValuativeExtension K Ksep]
  {l : ℕ}

theorem subsingleton_cohomology_of_inertia_open (hlp : l.Prime) (hl : (l : 𝓀[K]) ≠ 0)
    {W V : OpenSubgroup Gal(Ksep/K)} (h : V ≤ W)
    [((V : Subgroup Gal(Ksep/K)).subgroupOf (W : Subgroup Gal(Ksep/K))).Normal]
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    (hin : ∀ g : (W : Subgroup Gal(Ksep/K)), ∀ x ∈ fixedField (V : Subgroup Gal(Ksep/K)),
      valuation Ksep x ≤ 1 → valuation Ksep ((g : Gal(Ksep/K)) x - x) < 1)
    (hind : ((V : Subgroup Gal(Ksep/K)).relIndex W).Coprime l)
    (A : Rep (ULift.{0} ℤ) (W : Subgroup Gal(Ksep/K))) [IsDiscreteRep A] [Finite A]
    (hA : ∀ a : A, l • a = 0)
    (hV : ∀ g : (W : Subgroup Gal(Ksep/K)), (g : Gal(Ksep/K)) ∈ (V : Subgroup Gal(Ksep/K)) →
      ∀ a : A, A.ρ g a = a)
    (hinv : ∀ a : A, (∀ g : (W : Subgroup Gal(Ksep/K)), A.ρ g a = a) → a = 0)
    {n : ℕ} (hn : n ≤ 2) : Subsingleton (cohomology A n) := by
  have hlK := natCast_ne_zero_of_residueField hl
  have : Fact l.Prime := ⟨hlp⟩
  obtain ⟨e⟩ := nonempty_zmod_addEquiv_rootsOfUnity K Ksep hlp hlK
  let : Module (ZMod l) A := AddCommGroup.zmodModule hA
  let T := Rep.res (W : Subgroup Gal(Ksep/K)).subtype (galRootsOfUnity.{0} K Ksep l)
  obtain ⟨ι, _, i, p, hip⟩ := exists_sum_addHom_comp_eq (T := T) (A := A) e
  have hT : ∀ (g : (W : Subgroup Gal(Ksep/K))) (t : T), T.ρ g t = t := fun g t => by
    refine congrArg Additive.ofMul (Subtype.ext (Units.ext ?_))
    exact apply_eq_of_valuation_sub_lt_one hl hμ (hin g) (by
      have h1 := congrArg Units.val ((mem_rootsOfUnity l _).1 (Additive.toMul t).2)
      rw [Units.val_pow_eq_pow_val, Units.val_one] at h1
      convert h1 using 2
      rfl)
  have hbij : Function.Bijective fun a : A =>
      ((openSubgroupOf W V : OpenSubgroup (W : Subgroup Gal(Ksep/K))) :
        Subgroup (W : Subgroup Gal(Ksep/K))).index • a := by
    set m := ((openSubgroupOf W V : OpenSubgroup (W : Subgroup Gal(Ksep/K))) :
        Subgroup (W : Subgroup Gal(Ksep/K))).index
    have hm : m.Coprime l := hind
    set u := ZMod.unitOfCoprime m hm
    have hu : ∀ a : A, m • a = (u : ZMod l) • a := fun a => by
      rw [ZMod.coe_unitOfCoprime, Nat.cast_smul_eq_nsmul]
    refine Function.bijective_iff_has_inverse.2 ⟨fun a => ((u⁻¹ : (ZMod l)ˣ) : ZMod l) • a,
      fun a => ?_, fun a => ?_⟩
    · simp only [hu, smul_smul, Units.inv_mul, one_smul]
    · simp only [hu, smul_smul, Units.mul_inv, one_smul]
  exact subsingleton_cohomology_of_sum (openSubgroupOf W V) hT
    (fun m a => hV m ((Subgroup.mem_subgroupOf).1 m.2) a) hinv hbij
    (fun j => addHomToULiftLinear (i j)) (fun j => addHomToULiftLinear (p j))
    (DFunLike.ext _ _ fun a => by simpa [LinearMap.sum_apply, addHomToULiftLinear_apply] using hip a) n
    (fun g => cohomologyConj_galRootsOfUnity_eq_id h hl hμ hind g (hin g) hn)

theorem subsingleton_cohomology_of_inertia (hlp : l.Prime) (hl : (l : 𝓀[K]) ≠ 0)
    {W V : OpenSubgroup Gal(Ksep/K)} (h : V ≤ W) [(W : Subgroup Gal(Ksep/K)).Normal]
    [((V : Subgroup Gal(Ksep/K)).subgroupOf (W : Subgroup Gal(Ksep/K))).Normal]
    (hμ : ∀ ζ : Ksep, ζ ^ l = 1 → ζ ∈ fixedField (V : Subgroup Gal(Ksep/K)))
    (hin : ∀ g ∈ (W : Subgroup Gal(Ksep/K)), ∀ x ∈ fixedField (V : Subgroup Gal(Ksep/K)),
      valuation Ksep x ≤ 1 → valuation Ksep (g x - x) < 1)
    (hind : ((V : Subgroup Gal(Ksep/K)).relIndex W).Coprime l)
    (M : Rep (ULift.{0} ℤ) Gal(Ksep/K)) [IsDiscreteRep M] [Finite M] (hM : ∀ m : M, l • m = 0)
    (hV : ∀ g ∈ (V : Subgroup Gal(Ksep/K)), ∀ m : M, M.ρ g m = m)
    (hW : ∀ m : M, (∀ g ∈ (W : Subgroup Gal(Ksep/K)), M.ρ g m = m) → m = 0)
    {i : ℕ} (hi : i ≤ 2) : Subsingleton (cohomology M i) := by
  refine subsingleton_cohomology_of_normal (W : Subgroup Gal(Ksep/K)) W.isClosed M
    (fun m hm => hW m fun g hg => hm ⟨g, hg⟩) 2 (fun j _ hj => ?_) i hi
  have : Finite (Rep.res (W : Subgroup Gal(Ksep/K)).subtype M) := ‹Finite M›
  exact subsingleton_cohomology_of_inertia_open hlp hl h hμ (fun g => hin g g.2) hind
    (Rep.res (W : Subgroup Gal(Ksep/K)).subtype M) hM (fun g hg m => hV g hg m)
    (fun m hm => hW m fun g hg => hm ⟨g, hg⟩) hj

end LemmaY

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Vanishing =====

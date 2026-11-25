module

public import GroundTheory.ProfiniteCohomology.CupProducts.Functoriality
public import GroundTheory.ProfiniteCohomology.CohomologicalDimension.SubsingletonCohomologyOfPrimaryOfFinite
public import Mathlib.Algebra.Homology.ShortComplex.Linear
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ConjAction
public import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Descent
import GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom
import GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.TwistDefs, GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyMapTensorRightMorCompCohomologyConj

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.TwistDefs =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.TwistDefs", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.CupProducts.Functoriality\npublic import GroundTheory.ProfiniteCohomology.CohomologicalDimension.SubsingletonCohomologyOfPrimaryOfFinite\npublic import Mathlib.Algebra.Homology.ShortComplex.Linear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory MonoidalCategory

universe u

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

section Smul

variable {A B : Rep.{u} k G} [IsDiscreteRep A] [IsDiscreteRep B]

theorem cochainsMap_smul (c : k) (f : A ⟶ B) : cochainsMap (c • f) = c • cochainsMap f := by
  ext n x : 3
  apply Subtype.ext
  funext y
  rfl


set_option backward.isDefEq.respectTransparency false in
theorem cohomologyMap_smul (c : k) (f : A ⟶ B) (n : ℕ) :
    cohomologyMap (c • f) n = c • cohomologyMap f n := by
  rw [cohomologyMap, cochainsMap_smul]
  dsimp [HomologicalComplex.homologyMap, cohomologyMap]
  rw [← ShortComplex.homologyMap_smul]
  rfl

end Smul

section Morphisms

variable (T : Rep.{u} k G) {M : Rep.{u} k G}


omit [TopologicalSpace G] [IsTopologicalGroup G] in
noncomputable def tensorRightMor (m : M) (hm : ∀ g : G, M.ρ g m = m) : T ⟶ T ⊗ M :=
  Rep.ofHom ⟨(TensorProduct.mk k T M).flip m, fun g => by
    ext t
    simp [Representation.tprod_apply, hm g]⟩



omit [TopologicalSpace G] [IsTopologicalGroup G] in
noncomputable def tensorFormMor (f : M →ₗ[k] k) (hf : ∀ (g : G) (m : M), f (M.ρ g m) = f m) :
    T ⊗ M ⟶ T :=
  Rep.ofHom ⟨(TensorProduct.rid k T).toLinearMap ∘ₗ LinearMap.lTensor T f, fun g => by
    ext t m
    simp [Representation.tprod_apply, hf g]⟩


end Morphisms

section TwistMap

variable (T : Rep.{u} k G) [IsDiscreteRep T] {M : Rep.{u} k G} [IsDiscreteRep M]
  (hM : ∀ (g : G) (m : M), M.ρ g m = m)

omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep T] [IsDiscreteRep M] in
theorem tensorRightMor_add (m m' : M) :
    tensorRightMor T (m + m') (fun g => hM g _) =
      tensorRightMor T m (fun g => hM g m) + tensorRightMor T m' (fun g => hM g m') := by
  ext t
  change t ⊗ₜ[k] (m + m') = t ⊗ₜ[k] m + t ⊗ₜ[k] m'
  exact TensorProduct.tmul_add _ _ _

omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep T] [IsDiscreteRep M] in
theorem tensorRightMor_smul (c : k) (m : M) :
    tensorRightMor T (c • m) (fun g => hM g _) = c • tensorRightMor T m (fun g => hM g m) := by
  ext t
  change t ⊗ₜ[k] (c • m) = c • t ⊗ₜ[k] m
  exact TensorProduct.tmul_smul _ _ _

noncomputable def twistMap (n : ℕ) :
    TensorProduct k (cohomology T n) M →ₗ[k] cohomology (T ⊗ M) n :=
  TensorProduct.lift
    { toFun := fun x =>
        { toFun := fun m => (cohomologyMap (tensorRightMor T m (fun g => hM g m)) n).hom x
          map_add' := fun m m' => by
            rw [tensorRightMor_add T hM, cohomologyMap_add]
            rfl
          map_smul' := fun c m => by
            rw [tensorRightMor_smul T hM, cohomologyMap_smul, ModuleCat.hom_smul,
              LinearMap.smul_apply, RingHom.id_apply] }
      map_add' := fun x y => by
        ext m
        simp
      map_smul' := fun c x => by
        ext m
        simp }

theorem twistMap_tmul (n : ℕ) (x : cohomology T n) (m : M) :
    twistMap T hM n (x ⊗ₜ[k] m) = (cohomologyMap (tensorRightMor T m (fun g => hM g m)) n).hom x :=
  rfl

end TwistMap

section Subgroup

variable (N : Subgroup G) (T M : Rep.{u} k G)

variable [IsDiscreteRep T] [IsDiscreteRep M] (hM : ∀ (g : N) (m : M), M.ρ g m = m)

noncomputable def twistResMap (n : ℕ) :
    TensorProduct k (cohomology (Rep.res N.subtype T) n) M →ₗ[k]
      cohomology (Rep.res N.subtype (T ⊗ M)) n :=
  (cohomologyMap (resTensorIso N.subtype T M).inv n).hom ∘ₗ
    twistMap (M := Rep.res N.subtype M) (Rep.res N.subtype T) hM n

theorem twistResMap_tmul (n : ℕ) (x : cohomology (Rep.res N.subtype T) n) (m : M) :
    twistResMap N T M hM n (x ⊗ₜ[k] m) =
      (cohomologyMap (tensorRightMor (M := Rep.res N.subtype M) (Rep.res N.subtype T) m
        (fun g => hM g m) ≫ (resTensorIso N.subtype T M).inv) n).hom x := by
  rw [cohomologyMap_comp]
  rfl

end Subgroup

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.TwistDefs =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyMapTensorRightMorCompCohomologyConj =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyMapTensorRightMorCompCohomologyConj", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.TwistDefs\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.ConjAction\nimport GroundTheory.ProfiniteCohomology.ClassFormations.IsIsoCohomologyMapAlongResSubgroupOfHom\nimport GroundTheory.ProfiniteCohomology.CohomologyFunctoriality.Naturality\npublic import GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.Descent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory MonoidalCategory

universe u

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

section Equiv

variable (T : Rep.{u} k G) [IsDiscreteRep T] {M : Rep.{u} k G} [IsDiscreteRep M]
  (hM : ∀ (g : G) (m : M), M.ρ g m = m)

include hM


omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep T] [IsDiscreteRep M] in
theorem form_invariant_of_forall_eq (f : M →ₗ[k] k) (g : G) (m : M) : f (M.ρ g m) = f m := by
  rw [hM]


omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep T] [IsDiscreteRep M] in
theorem tensorRightMor_comp_tensorFormMor (m : M) (f : M →ₗ[k] k) :
    tensorRightMor T m (fun g => hM g m) ≫
        tensorFormMor T f (form_invariant_of_forall_eq hM f) = f m • 𝟙 T := by
  ext t
  change f m • t = f m • t
  rfl


omit [TopologicalSpace G] [IsTopologicalGroup G] [IsDiscreteRep T] [IsDiscreteRep M] in
theorem sum_tensorFormMor_comp_tensorRightMor {ι : Type*} [Fintype ι] (b : Module.Basis ι k M) :
    ∑ i, tensorFormMor T (b.coord i) (form_invariant_of_forall_eq hM _) ≫
        tensorRightMor T (b i) (fun g => hM g (b i)) = 𝟙 (T ⊗ M) := by
  apply Rep.hom_ext
  apply Representation.IntertwiningMap.ext
  apply TensorProduct.ext'
  intro t m
  rw [Rep.sum_hom, Representation.IntertwiningMap.toLinearMap_sum, LinearMap.sum_apply]
  change ∑ i, (b.coord i m • t) ⊗ₜ[k] b i = t ⊗ₜ[k] m
  simp_rw [Module.Basis.coord_apply, TensorProduct.smul_tmul]
  rw [← TensorProduct.tmul_sum, b.sum_repr]

noncomputable def twistInv {ι : Type*} [Fintype ι] (b : Module.Basis ι k M) (n : ℕ) :
    cohomology (T ⊗ M) n →ₗ[k] TensorProduct k (cohomology T n) M :=
  ∑ i, (TensorProduct.mk k (cohomology T n) M).flip (b i) ∘ₗ
    (cohomologyMap (tensorFormMor T (b.coord i) (form_invariant_of_forall_eq hM _)) n).hom

theorem twistMap_comp_twistInv {ι : Type*} [Fintype ι] (b : Module.Basis ι k M) (n : ℕ) :
    twistMap T hM n ∘ₗ twistInv T hM b n = LinearMap.id := by
  ext y

  simp only [twistInv, LinearMap.comp_apply, LinearMap.sum_apply, map_sum,
  LinearMap.flip_apply, TensorProduct.mk_apply, twistMap_tmul, LinearMap.id_apply]
  simp_rw [← ModuleCat.comp_apply, ← cohomologyMap_comp]
  rw [← LinearMap.sum_apply, ← ModuleCat.hom_sum, ← cohomologyMap_sum,
    sum_tensorFormMor_comp_tensorRightMor, cohomologyMap_id]
  rfl

theorem twistInv_comp_twistMap {ι : Type*} [Fintype ι] (b : Module.Basis ι k M) (n : ℕ) :
    twistInv T hM b n ∘ₗ twistMap T hM n = LinearMap.id := by
  apply TensorProduct.ext'
  intro x m
  simp only [twistInv, LinearMap.comp_apply, LinearMap.sum_apply,
    LinearMap.flip_apply, TensorProduct.mk_apply, twistMap_tmul, LinearMap.id_apply]
  simp_rw [← ModuleCat.comp_apply, ← cohomologyMap_comp, tensorRightMor_comp_tensorFormMor,
    cohomologyMap_smul, cohomologyMap_id, ModuleCat.hom_smul, LinearMap.smul_apply,
    Module.Basis.coord_apply, TensorProduct.smul_tmul]
  rw [← TensorProduct.tmul_sum, b.sum_repr]
  rfl

noncomputable def twistEquiv [Module.Free k M] [Module.Finite k M] (n : ℕ) :
    TensorProduct k (cohomology T n) M ≃ₗ[k] cohomology (T ⊗ M) n :=
  LinearEquiv.ofLinearMap (twistMap T hM n) (twistInv T hM (Module.Free.chooseBasis k M) n)
    (twistMap_comp_twistInv T hM _ n) (twistInv_comp_twistMap T hM _ n)

theorem twistMap_bijective [Module.Free k M] [Module.Finite k M] (n : ℕ) :
    Function.Bijective (twistMap T hM n) :=
  (twistEquiv T hM n).bijective

end Equiv

section Subgroup

variable (N : Subgroup G) (T M : Rep.{u} k G) [IsDiscreteRep T] [IsDiscreteRep M]
  (hM : ∀ (g : N) (m : M), M.ρ g m = m)

theorem cohomologyMap_resTensorIso_inv_bijective (n : ℕ) :
    Function.Bijective (cohomologyMap (resTensorIso N.subtype T M).inv n).hom := by
  refine Function.bijective_iff_has_inverse.2
    ⟨(cohomologyMap (resTensorIso N.subtype T M).hom n).hom, fun x => ?_, fun x => ?_⟩
  · rw [← ModuleCat.comp_apply, ← cohomologyMap_comp, Iso.inv_hom_id, cohomologyMap_id]
    rfl
  · rw [← ModuleCat.comp_apply, ← cohomologyMap_comp, Iso.hom_inv_id, cohomologyMap_id]
    rfl

noncomputable def twistResEquiv [Module.Free k M] [Module.Finite k M] (n : ℕ) :
    TensorProduct k (cohomology (Rep.res N.subtype T) n) M ≃ₗ[k]
      cohomology (Rep.res N.subtype (T ⊗ M)) n :=
  LinearEquiv.ofBijective (twistResMap N T M hM n)
    ((cohomologyMap_resTensorIso_inv_bijective N T M n).comp
      (twistMap_bijective (M := Rep.res N.subtype M) (Rep.res N.subtype T) hM n))

theorem twistResEquiv_apply [Module.Free k M] [Module.Finite k M] (n : ℕ)
    (z : TensorProduct k (cohomology (Rep.res N.subtype T) n) M) :
    twistResEquiv N T M hM n z = twistResMap N T M hM n z :=
  rfl

variable [N.Normal]

theorem cohomologyMap_tensorRightMor_comp_cohomologyConj (n : ℕ) (g : G) (m : M) :
    cohomologyMap (tensorRightMor (M := Rep.res N.subtype M) (Rep.res N.subtype T) m
        (fun h => hM h m) ≫ (resTensorIso N.subtype T M).inv) n ≫ cohomologyConj (T ⊗ M) N n g =
      cohomologyConj T N n g ≫
        cohomologyMap (tensorRightMor (M := Rep.res N.subtype M) (Rep.res N.subtype T) (M.ρ g m)
          (fun h => hM h _) ≫ (resTensorIso N.subtype T M).inv) n := by
  rw [← cohomologyMapAlong_id_eq_cohomologyMap, ← cohomologyMapAlong_id_eq_cohomologyMap,
    cohomologyConj, cohomologyConj, ← cohomologyMapAlong_comp, ← cohomologyMapAlong_comp]
  refine cohomologyMapAlong_congr _ _ _ _ (by ext s; simp) (fun a => ?_) n
  change (T ⊗ M).ρ g (a ⊗ₜ[k] m) = T.ρ g a ⊗ₜ[k] M.ρ g m
  rfl

theorem cohomologyConj_twistResMap_tmul (n : ℕ) (g : G)
    (x : cohomology (Rep.res N.subtype T) n) (m : M) :
    (cohomologyConj (T ⊗ M) N n g).hom (twistResMap N T M hM n (x ⊗ₜ[k] m)) =
      twistResMap N T M hM n ((cohomologyConj T N n g).hom x ⊗ₜ[k] M.ρ g m) := by
  rw [twistResMap_tmul, twistResMap_tmul, ← ModuleCat.comp_apply, ← ModuleCat.comp_apply,
    cohomologyMap_tensorRightMor_comp_cohomologyConj]

theorem cohomologyConj_comp_twistResMap (n : ℕ) (g : G) :
    (cohomologyConj (T ⊗ M) N n g).hom ∘ₗ twistResMap N T M hM n =
      twistResMap N T M hM n ∘ₗ TensorProduct.map (cohomologyConj T N n g).hom (M.ρ g) := by
  apply TensorProduct.ext'
  intro x m
  rw [LinearMap.comp_apply, LinearMap.comp_apply, TensorProduct.map_tmul]
  exact cohomologyConj_twistResMap_tmul N T M hM n g x m

theorem cohomologyConj_twistResEquiv [Module.Free k M] [Module.Finite k M] (n : ℕ) (g : G)
    (z : TensorProduct k (cohomology (Rep.res N.subtype T) n) M) :
    (cohomologyConj (T ⊗ M) N n g).hom (twistResEquiv N T M hM n z) =
      twistResEquiv N T M hM n (TensorProduct.map (cohomologyConj T N n g).hom (M.ρ g) z) :=
  LinearMap.congr_fun (cohomologyConj_comp_twistResMap N T M hM n g) z

noncomputable def quotientRep : Representation k (G ⧸ N) M :=
  QuotientGroup.lift N M.ρ fun g hg => by
    ext m
    exact hM ⟨g, hg⟩ m

omit [IsDiscreteRep T] [IsDiscreteRep M] [TopologicalSpace G] [IsTopologicalGroup G] in
@[simp]
theorem quotientRep_mk (g : G) (m : M) : quotientRep N M hM (g : G ⧸ N) m = M.ρ g m :=
  rfl

variable [CompactSpace N]

theorem twistResEquiv_cohomologyConjRep [Module.Free k M] [Module.Finite k M] (n : ℕ)
    (q : G ⧸ N) (z : TensorProduct k (cohomology (Rep.res N.subtype T) n) M) :
    cohomologyConjRep (T ⊗ M) N n q (twistResEquiv N T M hM n z) =
      twistResEquiv N T M hM n
        (((cohomologyConjRep T N n).tprod (quotientRep N M hM)) q z) := by
  induction q using QuotientGroup.induction_on with
  | H g =>
    rw [cohomologyConjRep_mk, cohomologyConj_twistResEquiv, Representation.tprod_apply]
    congr 2
    apply TensorProduct.ext'
    intro x m
    rw [TensorProduct.map_tmul, TensorProduct.map_tmul, cohomologyConjRep_mk, quotientRep_mk]

noncomputable def twistInvariantsEquiv [Module.Free k M] [Module.Finite k M] (n : ℕ) :
    ((cohomologyConjRep T N n).tprod (quotientRep N M hM)).invariants ≃ₗ[k]
      cohomologyConjInvariants (T ⊗ M) N n :=
  (twistResEquiv N T M hM n).ofSubmodules _ _ (by
    ext y
    rw [Submodule.mem_map_equiv, mem_cohomologyConjInvariants_iff, Representation.mem_invariants,
      Representation.mem_invariants]
    refine ⟨fun h q => ?_, fun h q => ?_⟩
    · rw [← LinearEquiv.apply_symm_apply (twistResEquiv N T M hM n) y,
        twistResEquiv_cohomologyConjRep, h q]
    · apply (twistResEquiv N T M hM n).injective
      rw [← twistResEquiv_cohomologyConjRep, LinearEquiv.apply_symm_apply, h q])

theorem twistInvariantsEquiv_apply [Module.Free k M] [Module.Finite k M] (n : ℕ)
    (z : ((cohomologyConjRep T N n).tprod (quotientRep N M hM)).invariants) :
    (twistInvariantsEquiv N T M hM n z : cohomology (Rep.res N.subtype (T ⊗ M)) n) =
      twistResEquiv N T M hM n z :=
  rfl

end Subgroup

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.LocalEulerCharacteristic.CohomologyMapTensorRightMorCompCohomologyConj =====

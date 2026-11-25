module

public import Mathlib.LinearAlgebra.TensorProduct.Lift
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.Algebra.Module.PID
public import Mathlib.RingTheory.SimpleRing.Principal
public import Mathlib.RingTheory.Flat.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QCoreSt
public import Formalism.FilteredPoleLength.ReducedBasisBounds.LengthBaseChangeLocal
public import Formalism.FilteredPoleLength.LocalDescentLevels.LengthBaseChange
public import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.TieLDB
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QuotSt
public import Formalism.FilteredPoleLength.ReducedBasisBounds.ReductionQuotient
public import Formalism.FilteredPoleLength.LocalDescentLevels.MemSpanBasisFun
public import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QatOfBridge
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.TieLDA, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LenDescentOfLengthBaseChangeLocal, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QuotLocalOfQuotientLength, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QatOfBridgeAlt

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.TieLDA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.TieLDA", "h": "module\n\npublic import Mathlib.LinearAlgebra.TensorProduct.Lift\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.Algebra.Module.PID\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Flat.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Pj.QAt.TieLDA

open TensorProduct Module

def tm (K K₁ : Type*) [Field K] [Field K₁] [Algebra K K₁] {U : Type*} [AddCommGroup U]
    [Module K U] (u : U) : K₁ ⊗[K] U :=
  (1 : K₁) ⊗ₜ[K] u

section Base

variable {K K₁ : Type*} [Field K] [Field K₁] [Algebra K K₁]

abbrev modT (T : Subring K₁) (U : Type*) [AddCommGroup U] [Module K U] :
    Module T (K₁ ⊗[K] U) :=
  Module.compHom _ T.subtype

attribute [local instance] modT

abbrev modR (R : Type*) [CommRing R] [Algebra R K] (U : Type*) [AddCommGroup U] [Module K U] :
    Module R (K₁ ⊗[K] U) :=
  Module.compHom _ (algebraMap R K)

attribute [local instance] modR

variable {U : Type*} [AddCommGroup U] [Module K U]

theorem smulT_def (T : Subring K₁) (t : T) (l : K₁ ⊗[K] U) : t • l = (t : K₁) • l := rfl

theorem smulK_eq (k : K) (l : K₁ ⊗[K] U) : k • l = algebraMap K K₁ k • l := by
  induction l using TensorProduct.induction_on with
  | zero => simp
  | tmul a u =>
    rw [TensorProduct.smul_tmul', TensorProduct.smul_tmul', Algebra.smul_def]
    rfl
  | add x y hx hy => rw [smul_add, smul_add, hx, hy]

section R

variable {R : Type*} [CommRing R] [Algebra R K] [Module R U] [IsScalarTower R K U]

theorem smulR_def (r : R) (l : K₁ ⊗[K] U) : r • l = algebraMap R K r • l := rfl

def tmR : U →ₗ[R] K₁ ⊗[K] U where
  toFun u := tm K K₁ u
  map_add' x y := tmul_add _ _ _
  map_smul' r u := by
    change (1 : K₁) ⊗ₜ[K] (r • u) = algebraMap R K r • ((1 : K₁) ⊗ₜ[K] u)
    rw [← algebraMap_smul K r u, tmul_smul]

variable (T : Subring K₁) [Algebra R T]
  (hRT : ∀ r : R, ((algebraMap R T r : T) : K₁) = algebraMap K K₁ (algebraMap R K r))

include hRT in
theorem tower : IsScalarTower R T (K₁ ⊗[K] U) := by
  constructor
  intro r t l
  show ((r • t : T) : K₁) • l = algebraMap R K r • ((t : K₁) • l)
  rw [smulK_eq, smul_smul, Algebra.smul_def r t, Subring.coe_mul, hRT]

include hRT in
theorem tm_smul (r : R) (u : U) : tm K K₁ (r • u) = algebraMap R T r • tm K K₁ u := by
  have h := (tmR (K₁ := K₁) (K := K) (U := U) (R := R)).map_smul r u
  change tm K K₁ (r • u) = r • tm K K₁ u at h
  rw [h, smulR_def, smulT_def, hRT, smulK_eq]

noncomputable def Phi (X : Submodule R U) : T ⊗[R] X →ₗ[T] K₁ ⊗[K] U :=
  @LinearMap.liftBaseChange R X (K₁ ⊗[K] U) T _ _ _ _ _ _ _ _ (tower (U := U) T hRT)
    ((tmR (K₁ := K₁) (K := K) (U := U)).comp X.subtype)

theorem Phi_tmul (X : Submodule R U) (t : T) (x : X) :
    Phi T hRT X (t ⊗ₜ x) = (t : K₁) • tm K K₁ (x : U) := by
  unfold Phi
  erw [LinearMap.liftBaseChange_tmul]
  rfl

theorem Phi_range (X : Submodule R U) :
    LinearMap.range (Phi T hRT X) = Submodule.span T (tm K K₁ '' (X : Set U)) := by
  unfold Phi
  erw [LinearMap.range_liftBaseChange]
  congr 1
  ext y
  constructor
  · rintro ⟨x, rfl⟩
    exact ⟨x, x.2, rfl⟩
  · rintro ⟨x, hx, rfl⟩
    exact ⟨⟨x, hx⟩, rfl⟩

include hRT in
theorem span_tm_span (G : Set U) :
    Submodule.span T (tm K K₁ '' (Submodule.span R G : Set U)) = Submodule.span T (tm K K₁ '' G) := by
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    induction hx using Submodule.span_induction with
    | mem y hy => exact Submodule.subset_span ⟨y, hy, rfl⟩
    | zero =>
      show (1 : K₁) ⊗ₜ[K] (0 : U) ∈ _
      rw [tmul_zero]
      exact Submodule.zero_mem _
    | add y z _ _ hy hz =>
      show (1 : K₁) ⊗ₜ[K] (y + z) ∈ _
      rw [tmul_add]
      exact Submodule.add_mem _ hy hz
    | smul r y _ hy =>
      rw [tm_smul T hRT]
      exact Submodule.smul_mem _ _ hy
  · exact Submodule.span_mono (Set.image_mono Submodule.subset_span)

variable [IsDomain R] [IsPrincipalIdealRing R] [IsFractionRing R K]

include K in
theorem isTorsionFree_sub (X : Submodule R U) : Module.IsTorsionFree R X := by
  constructor
  intro r hr x y hxy
  have hr0 : r ≠ 0 := hr.ne_zero
  have hK : algebraMap R K r ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective R K)).mpr hr0
  apply Subtype.ext
  have h1 : r • (x : U) = r • (y : U) := congrArg Subtype.val hxy
  rw [← algebraMap_smul K r (x : U), ← algebraMap_smul K r (y : U)] at h1
  exact smul_right_injective U hK h1

theorem Phi_injective (X : Submodule R U) (hX : X.FG) : Function.Injective (Phi T hRT X) := by
  classical
  haveI : Module.Finite R X := Module.Finite.iff_fg.2 hX
  haveI : Module.IsTorsionFree R X := isTorsionFree_sub (K := K) X
  haveI : Module.Free R X := Module.free_of_finite_type_torsion_free'
  let b := Module.Free.chooseBasis R X
  let v : Module.Free.ChooseBasisIndex R X → K₁ ⊗[K] U := fun i => tm K K₁ ((b i : X) : U)
  have hR : LinearIndependent R (fun i => ((b i : X) : U)) :=
    b.linearIndependent.map' X.subtype (Submodule.ker_subtype X)
  have hK : LinearIndependent K (fun i => ((b i : X) : U)) := (LinearIndependent.iff_fractionRing R K).1 hR
  have hK₁ : LinearIndependent K₁ v := Module.Flat.linearIndependent_one_tmul hK
  have hT : LinearIndependent T v := by
    rw [linearIndependent_iff']
    intro s g hg i hi
    have h1 := (linearIndependent_iff'.1 hK₁) s (fun j => (g j : K₁)) (by exact hg) i hi
    exact Subtype.ext h1
  let b' := b.baseChange T
  have hcomp : (Phi T hRT X) ∘ₗ b'.repr.symm.toLinearMap = Finsupp.linearCombination T v := by
    refine Finsupp.lhom_ext' fun i => LinearMap.ext_ring ?_
    simp [b', v, Basis.baseChange_apply, Phi_tmul]
    first
      | exact (one_smul _ _).symm
  have key : ∀ z, Finsupp.linearCombination T v (b'.repr z) = Phi T hRT X z := by
    intro z
    rw [← hcomp]
    simp
  intro z w hzw
  apply b'.repr.injective
  exact hT (by rw [key, key, hzw])

include hRT in
theorem length_quot_eq (X Y : Submodule R U) (hX : X.FG) (hYX : Y ≤ X) :
    Module.length T (↥(Submodule.span T (tm K K₁ '' (X : Set U))) ⧸
        (Submodule.span T (tm K K₁ '' (Y : Set U))).comap
          (Submodule.span T (tm K K₁ '' (X : Set U))).subtype) =
      Module.length T (T ⊗[R] (X ⧸ Y.comap X.subtype)) := by
  classical
  let Y' := Y.comap X.subtype
  let Ψ : T ⊗[R] X →ₗ[T] T ⊗[R] (X ⧸ Y') := Y'.mkQ.baseChange T
  have h1 : (Ψ : T ⊗[R] X → T ⊗[R] (X ⧸ Y')) = Y'.mkQ.lTensor T := LinearMap.baseChange_eq_ltensor _
  have hΨ : Function.Surjective Ψ := by
    rw [h1]
    exact LinearMap.lTensor_surjective T (Submodule.mkQ_surjective Y')
  let ι' : T ⊗[R] Y' →ₗ[T] T ⊗[R] X := Y'.subtype.baseChange T
  have h2 : (ι' : T ⊗[R] Y' → T ⊗[R] X) = Y'.subtype.lTensor T := LinearMap.baseChange_eq_ltensor _
  have hker : LinearMap.ker Ψ = LinearMap.range ι' := by
    ext z
    have hex := lTensor_exact T (LinearMap.exact_subtype_mkQ Y') (Submodule.mkQ_surjective Y') z
    rw [LinearMap.mem_ker, LinearMap.mem_range, h1, hex, Set.mem_range, h2]
  let e1 : T ⊗[R] X ≃ₗ[T] Submodule.span T (tm K K₁ '' (X : Set U)) :=
    (LinearEquiv.ofInjective (Phi T hRT X) (Phi_injective T hRT X hX)).trans
      (LinearEquiv.ofEq _ _ (Phi_range T hRT X))
  have he1 : ∀ z, ((e1 z : Submodule.span T (tm K K₁ '' (X : Set U))) : K₁ ⊗[K] U) = Phi T hRT X z := by
    intro z
    rfl
  have hY : ∀ z, Phi T hRT X z ∈ Submodule.span T (tm K K₁ '' (Y : Set U)) ↔ z ∈ LinearMap.range ι' := by
    intro z
    constructor
    · intro hz
      have hle : Submodule.span T (tm K K₁ '' (Y : Set U)) ≤ (LinearMap.range ι').map (Phi T hRT X) := by
        rw [Submodule.span_le]
        rintro _ ⟨y, hy, rfl⟩
        refine ⟨ι' ((1 : T) ⊗ₜ ⟨⟨y, hYX hy⟩, hy⟩), ⟨_, rfl⟩, ?_⟩
        show Phi T hRT X ((1 : T) ⊗ₜ ⟨y, hYX hy⟩) = tm K K₁ y
        rw [Phi_tmul]
        simp
      obtain ⟨w, hw, hwz⟩ := hle hz
      rw [← Phi_injective T hRT X hX hwz]
      exact hw
    · rintro ⟨w, rfl⟩
      induction w using TensorProduct.induction_on with
      | zero => simp
      | tmul t y =>
        show Phi T hRT X (t ⊗ₜ (y : X)) ∈ _
        rw [Phi_tmul]
        exact Submodule.smul_mem _ t (Submodule.subset_span ⟨(y : X), y.2, rfl⟩)
      | add a c ha hc =>
        rw [map_add (f := _), map_add (f := _)]
        exact Submodule.add_mem _ ha hc
  have hmap : ((Submodule.span T (tm K K₁ '' (Y : Set U))).comap
      (Submodule.span T (tm K K₁ '' (X : Set U))).subtype).map (e1.symm : _ →ₗ[T] _) = LinearMap.range ι' := by
    ext z
    rw [Submodule.mem_map_equiv, LinearEquiv.symm_symm, Submodule.mem_comap, Submodule.subtype_apply, he1]
    exact hY z
  exact ((Submodule.Quotient.equiv _ _ e1.symm hmap).trans
    ((Submodule.quotEquivOfEq _ _ hker.symm).trans (Ψ.quotKerEquivOfSurjective hΨ))).length_eq

include hRT in
theorem span_inf_eq (X : Submodule R U) (hX : X.FG) (W : Submodule K U) :
    Submodule.span T (Submodule.span K₁ (tm K K₁ '' (W : Set U)) : Set (K₁ ⊗[K] U)) ⊓
        Submodule.span T (tm K K₁ '' (X : Set U)) =
      Submodule.span T (tm K K₁ '' ((X ⊓ W.restrictScalars R : Submodule R U) : Set U)) := by
  classical
  apply le_antisymm
  · intro z hz
    rw [Submodule.mem_inf] at hz
    obtain ⟨hzW, hzX⟩ := hz
    let fR : U →ₗ[R] U ⧸ W := W.mkQ.restrictScalars R
    let Xb : Submodule R (U ⧸ W) := X.map fR
    let g : X →ₗ[R] Xb := fR.submoduleMap X
    have hg : Function.Surjective g := LinearMap.submoduleMap_surjective fR X
    have hz0 : W.mkQ.baseChange K₁ z = 0 := by
      refine Submodule.span_induction (p := fun z _ => W.mkQ.baseChange K₁ z = 0) ?_ ?_ ?_ ?_ hzW
      · intro y hy
        refine Submodule.span_induction (p := fun y _ => W.mkQ.baseChange K₁ y = 0) ?_ ?_ ?_ ?_ hy
        · rintro _ ⟨w, hw, rfl⟩
          show W.mkQ.baseChange K₁ ((1 : K₁) ⊗ₜ[K] w) = 0
          rw [LinearMap.baseChange_tmul, Submodule.mkQ_apply, (Submodule.Quotient.mk_eq_zero W).2 hw,
            TensorProduct.tmul_zero]
        · simp
        · intro a b _ _ ha hb
          rw [map_add (f := _), ha, hb, add_zero]
        · intro c a _ ha
          rw [map_smul, ha, smul_zero]
      · simp
      · intro a b _ _ ha hb
        rw [map_add (f := _), ha, hb, add_zero]
      · intro t a _ ha
        show W.mkQ.baseChange K₁ ((t : K₁) • a) = 0
        rw [map_smul, ha, smul_zero]
    have hzR : z ∈ LinearMap.range (Phi T hRT X) := by
      rw [Phi_range]
      exact hzX
    obtain ⟨w, rfl⟩ := hzR
    have hsq : ∀ w, Phi T hRT Xb (g.baseChange T w) = W.mkQ.baseChange K₁ (Phi T hRT X w) := by
      intro w
      induction w using TensorProduct.induction_on with
      | zero => simp
      | tmul t x =>
        rw [LinearMap.baseChange_tmul, Phi_tmul, Phi_tmul]
        show (t : K₁) • tm K K₁ ((g x : Xb) : U ⧸ W) = W.mkQ.baseChange K₁ ((t : K₁) • (1 : K₁) ⊗ₜ[K] (x : U))
        rw [map_smul, LinearMap.baseChange_tmul]
        rfl
      | add a c ha hc =>
        rw [map_add (f := _), map_add (f := _), map_add (f := _), map_add (f := _), ha, hc]
    have hw0 : g.baseChange T w = 0 := by
      apply Phi_injective T hRT Xb (hX.map _)
      rw [hsq, map_zero]
      exact hz0
    have hex : Function.Exact (LinearMap.ker g).subtype g :=
      LinearMap.exact_iff.2 (Submodule.range_subtype _).symm
    have hw0' : g.lTensor T w = 0 := by
      rw [← congrFun (LinearMap.baseChange_eq_ltensor (A := T) g) w]
      exact hw0
    obtain ⟨v, rfl⟩ := (lTensor_exact T hex hg w).1 hw0'
    clear hzW hzX hz0 hw0 hw0'
    induction v using TensorProduct.induction_on with
    | zero => simp
    | tmul t y =>
      rw [LinearMap.lTensor_tmul, Submodule.subtype_apply, Phi_tmul]
      have hyW : ((y : X) : U) ∈ W := by
        have hy : g (y : X) = 0 := y.2
        have h' : W.mkQ ((y : X) : U) = 0 := congrArg Subtype.val hy
        exact (Submodule.Quotient.mk_eq_zero W).1 h'
      exact Submodule.smul_mem _ t (Submodule.subset_span ⟨(y : X), ⟨(y : X).2, hyW⟩, rfl⟩)
    | add a c ha hc =>
      rw [map_add (f := _), map_add (f := _)]
      exact Submodule.add_mem _ ha hc
  · rw [Submodule.span_le]
    rintro _ ⟨x, ⟨hxX, hxW⟩, rfl⟩
    refine ⟨?_, Submodule.subset_span ⟨x, hxX, rfl⟩⟩
    exact Submodule.subset_span (Submodule.subset_span ⟨x, hxW, rfl⟩)

end R

end Base

section DVR

theorem length_self_eq_top (T : Type*) [CommRing T] [IsDomain T] [IsDiscreteValuationRing T] :
    Module.length T T = ⊤ := by
  by_contra h
  have hfin := Module.length_ne_top_iff.mp h
  have hart : IsArtinianRing T := (isFiniteLength_iff_isNoetherian_isArtinian.mp hfin).2
  exact IsDiscreteValuationRing.not_isField T (IsArtinianRing.isField_of_isDomain T)

theorem length_quot_span_pow {R : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    {p : R} (hp : Irreducible p) (e : ℕ) : Module.length R (R ⧸ R ∙ p ^ e) = e := by
  have hm : IsLocalRing.maximalIdeal R = Ideal.span {p} :=
    (IsDiscreteValuationRing.irreducible_iff_uniformizer p).1 hp
  have h := IsDiscreteValuationRing.length_quotient_pow_maximalIdeal R e
  rw [hm, Ideal.span_singleton_pow] at h
  exact h

theorem length_tensor_eq_top {R T : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    [CommRing T] [IsDomain T] [IsDiscreteValuationRing T] [Algebra R T]
    (N : Type*) [AddCommGroup N] [Module R N] [Module.Finite R N] (h : Module.length R N = ⊤) :
    Module.length T (T ⊗[R] N) = ⊤ := by
  classical
  obtain ⟨n, ι, _, p, hp, e, ⟨f⟩⟩ := Module.equiv_free_prod_directSum R N
  rcases Nat.eq_zero_or_pos n with hn | hn
  · exfalso
    subst hn
    have h1 := f.length_eq
    rw [h, Module.length_prod, (DirectSum.linearEquivFunOnFintype R ι (fun i => R ⧸ R ∙ p i ^ e i)).length_eq,
      Module.length_pi_of_fintype] at h1
    have h0 : Module.length R (Fin 0 →₀ R) = 0 := by
      first
        | exact Module.length_eq_zero_iff.2 inferInstance
    rw [h0, zero_add] at h1
    have h2 : ∑ i, Module.length R (R ⧸ R ∙ p i ^ e i) = ((∑ i, e i : ℕ) : ℕ∞) := by
      rw [Nat.cast_sum]
      exact Finset.sum_congr rfl fun i _ => length_quot_span_pow (hp i) (e i)
    rw [h2] at h1
    exact ENat.coe_ne_top _ h1.symm
  · let g : N →ₗ[R] R := (Finsupp.lapply ⟨0, hn⟩) ∘ₗ (LinearMap.fst R _ _) ∘ₗ f.toLinearMap
    have hg : Function.Surjective g := by
      intro r
      refine ⟨f.symm (Finsupp.single ⟨0, hn⟩ r, 0), ?_⟩
      simp [g]
    let φ : T ⊗[R] N →ₗ[T] T := (TensorProduct.AlgebraTensorModule.rid R T T).toLinearMap ∘ₗ g.baseChange T
    have hφ : Function.Surjective φ := by
      have hb : Function.Surjective (g.baseChange T) := by
        rw [LinearMap.baseChange_eq_ltensor]
        exact LinearMap.lTensor_surjective T hg
      exact (TensorProduct.AlgebraTensorModule.rid R T T).surjective.comp hb
    have hle := Module.length_le_of_surjective φ hφ
    rw [length_self_eq_top] at hle
    exact top_le_iff.1 hle

end DVR

end Formalism.L2.Pj.QAt.TieLDA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.TieLDA =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LenDescentOfLengthBaseChangeLocal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LenDescentOfLengthBaseChangeLocal", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QCoreSt\npublic import Formalism.FilteredPoleLength.ReducedBasisBounds.LengthBaseChangeLocal\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Formalism.FilteredPoleLength.LocalDescentLevels.LengthBaseChange\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.TieLDA\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.TieLDB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Pj.QAt

namespace TieLD

open NumberField IsDedekindDomain Module ReciprocityTheory.ChartRestriction.G.FreeQuotientRank
open scoped TensorProduct

attribute [local instance] TieLDA.modT TieLDA.modR

theorem pow_maximalIdeal_inj {T : Type*} [CommRing T] [IsDomain T] [IsDiscreteValuationRing T]
    {a b : ℕ} (h : IsLocalRing.maximalIdeal T ^ a = IsLocalRing.maximalIdeal T ^ b) : a = b := by
  have h0 : IsLocalRing.maximalIdeal T ≠ ⊥ := IsDiscreteValuationRing.not_a_field T
  have h1 : IsLocalRing.maximalIdeal T ≠ ⊤ := (IsLocalRing.maximalIdeal.isMaximal T).ne_top
  exact (Ideal.pow_right_strictAnti _ h0 h1).injective h

variable {K K₁ : Type} [Field K] [NumberField K] [Field K₁] [NumberField K₁] [Algebra K K₁]

noncomputable abbrev Tw (w : HeightOneSpectrum (𝓞 K₁)) : Subring K₁ := (w.valuationSubringAtPrime K₁).toSubring

noncomputable abbrev algCT (w : HeightOneSpectrum (𝓞 K₁)) : Algebra (𝓞 K₁) (Tw w) :=
  inferInstanceAs (Algebra (𝓞 K₁) (w.valuationSubringAtPrime K₁))

attribute [local instance] algCT

theorem locT (w : HeightOneSpectrum (𝓞 K₁)) : IsLocalization w.asIdeal.primeCompl (Tw w) :=
  inferInstanceAs (IsLocalization w.asIdeal.primeCompl (w.valuationSubringAtPrime K₁))

attribute [local instance] locT

theorem dvrT (w : HeightOneSpectrum (𝓞 K₁)) : IsDiscreteValuationRing (Tw w) := by
  first
    | exact IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain (𝓞 K₁) w.ne_bot (Tw w)

attribute [local instance] dvrT

theorem dvrLa (la : HeightOneSpectrum (𝓞 K)) :
    IsDiscreteValuationRing (Localization.AtPrime la.asIdeal) := by
  first
    | exact IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain (𝓞 K) la.ne_bot _

attribute [local instance] dvrLa

noncomputable abbrev algLaK (la : HeightOneSpectrum (𝓞 K)) :
    Algebra (Localization.AtPrime la.asIdeal) K :=
  IsLocalization.localizationAlgebraOfSubmonoidLe _ K la.asIdeal.primeCompl
    (nonZeroDivisors (𝓞 K)) la.asIdeal.primeCompl_le_nonZeroDivisors

attribute [local instance] algLaK

theorem towerLaK (la : HeightOneSpectrum (𝓞 K)) :
    IsScalarTower (𝓞 K) (Localization.AtPrime la.asIdeal) K := by
  first
    | exact IsLocalization.localization_isScalarTower_of_submonoid_le _ _ _ _ _

attribute [local instance] towerLaK

theorem fracLaK (la : HeightOneSpectrum (𝓞 K)) :
    IsFractionRing (Localization.AtPrime la.asIdeal) K := by
  first
    | exact IsFractionRing.isFractionRing_of_isLocalization la.asIdeal.primeCompl _ _ la.asIdeal.primeCompl_le_nonZeroDivisors

attribute [local instance] fracLaK

theorem primeCompl_le (la : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 K₁))
    (hw : LiesOver w la) :
    la.asIdeal.primeCompl ≤ w.asIdeal.primeCompl.comap (algebraMap (𝓞 K) (𝓞 K₁)) := by
  intro x hx
  unfold LiesOver at hw
  rw [Submonoid.mem_comap, Ideal.mem_primeCompl_iff]
  rw [Ideal.mem_primeCompl_iff] at hx
  intro hxw
  apply hx
  rw [← hw]
  exact Ideal.mem_comap.mpr hxw

noncomputable def mapLaT (la : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 K₁))
    (hw : LiesOver w la) : Localization.AtPrime la.asIdeal →+* Tw w :=
  IsLocalization.map (M := la.asIdeal.primeCompl) (S := Localization.AtPrime la.asIdeal) (Tw w)
    (algebraMap (𝓞 K) (𝓞 K₁)) (T := w.asIdeal.primeCompl) (primeCompl_le la w hw)

theorem mapLaT_coe (la : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 K₁))
    (hw : LiesOver w la) (r : Localization.AtPrime la.asIdeal) :
    ((mapLaT la w hw r : Tw w) : K₁) =
      algebraMap K K₁ (algebraMap (Localization.AtPrime la.asIdeal) K r) := by
  have key : (Tw w).subtype.comp (mapLaT la w hw) =
      (algebraMap K K₁).comp (algebraMap (Localization.AtPrime la.asIdeal) K) := by
    apply IsLocalization.ringHom_ext la.asIdeal.primeCompl
    ext x
    simp only [RingHom.comp_apply, mapLaT, IsLocalization.map_eq]
    rw [← IsScalarTower.algebraMap_apply (𝓞 K) (Localization.AtPrime la.asIdeal) K]
    first
      | rfl
  exact RingHom.congr_fun key r

theorem ramificationIdx_ne_zero' (la : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 K₁))
    (hw : LiesOver w la) : w.asIdeal.ramificationIdx (𝓞 K) ≠ 0 := by
  unfold LiesOver at hw
  have hlo : w.asIdeal.LiesOver la.asIdeal := ⟨hw.symm⟩
  rw [← Ideal.ramificationIdx_eq_ramificationIdx' la.asIdeal w.asIdeal la.ne_bot]
  apply Ideal.IsDedekindDomain.ramificationIdx'_ne_zero <;>
    first
          | exact la.ne_bot
          | exact w.ne_bot
          | exact hlo
          | exact w.isPrime
          | infer_instance
          | exact Ideal.map_le_iff_le_comap.mpr hw.ge
          | exact (Ideal.map_eq_bot_iff_of_injective (FaithfulSMul.algebraMap_injective (𝓞 K) (𝓞 K₁))).not.mpr la.ne_bot

theorem exists_rel (la : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 K₁))
    (hw : LiesOver w la) :
    ∃ (ϖ : Localization.AtPrime la.asIdeal) (ϖ₁ : Tw w) (u : (Tw w)ˣ), Irreducible ϖ ∧
      Irreducible ϖ₁ ∧ mapLaT la w hw ϖ = u * ϖ₁ ^ (w.asIdeal.ramificationIdx (𝓞 K)) := by
  have : w.asIdeal.LiesOver la.asIdeal := ⟨hw.symm⟩
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible (Localization.AtPrime la.asIdeal)
  obtain ⟨ϖ₁, hϖ₁⟩ := IsDiscreteValuationRing.exists_irreducible (Tw w)
  have hinj : Function.Injective (mapLaT la w hw) := by
    intro x y hxy
    have h := congrArg (fun t : Tw w => (t : K₁)) hxy
    simp only [mapLaT_coe] at h
    exact IsFractionRing.injective (Localization.AtPrime la.asIdeal) K
      ((algebraMap K K₁).injective h)
  have h0 : mapLaT la w hw ϖ ≠ 0 := fun h => hϖ.ne_zero (hinj (h.trans (map_zero _).symm))
  obtain ⟨n, u, hu⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible h0 hϖ₁
  have hmap0 : la.asIdeal.map (algebraMap (𝓞 K) (𝓞 K₁)) ≠ ⊥ := Ideal.map_ne_bot_of_ne_bot la.ne_bot
  obtain ⟨Q, hQ, hfac⟩ := Ideal.eq_prime_pow_mul_coprime hmap0 w.asIdeal
  generalize hc : Multiset.count w.asIdeal
    (UniqueFactorizationMonoid.normalizedFactors (la.asIdeal.map (algebraMap (𝓞 K) (𝓞 K₁)))) = c
    at hfac
  have hQw : ¬ Q ≤ w.asIdeal := fun hle => by
    rw [sup_eq_left.2 hle] at hQ
    exact w.isPrime.ne_top hQ
  have h1 : (la.asIdeal.map (algebraMap (𝓞 K) (𝓞 K₁))).map (algebraMap (𝓞 K₁) (Tw w)) =
      IsLocalRing.maximalIdeal (Tw w) ^ c := by
    rw [hfac, Ideal.map_mul, Ideal.map_pow,
      IsLocalization.AtPrime.map_eq_maximalIdeal (p := w.asIdeal) (Rₚ := Tw w),
      IsLocalization.AtPrime.map_eq_top_of_not_le (S := Tw w) hQw, Ideal.mul_top]
  have hcomp : (mapLaT la w hw).comp (algebraMap (𝓞 K) (Localization.AtPrime la.asIdeal)) =
      (algebraMap (𝓞 K₁) (Tw w)).comp (algebraMap (𝓞 K) (𝓞 K₁)) :=
    IsLocalization.map_comp _
  have h2 : (la.asIdeal.map (algebraMap (𝓞 K) (𝓞 K₁))).map (algebraMap (𝓞 K₁) (Tw w)) =
      Ideal.span {mapLaT la w hw ϖ} := by
    rw [Ideal.map_map, ← hcomp, ← Ideal.map_map,
      IsLocalization.AtPrime.map_eq_maximalIdeal (p := la.asIdeal)
        (Rₚ := Localization.AtPrime la.asIdeal),
      hϖ.maximalIdeal_eq, Ideal.map_span, Set.image_singleton]
  have h3 : Ideal.span {mapLaT la w hw ϖ} = IsLocalRing.maximalIdeal (Tw w) ^ n := by
    rw [hu, Ideal.span_singleton_mul_left_unit u.isUnit, ← Ideal.span_singleton_pow,
      ← hϖ₁.maximalIdeal_eq]
  have hn : n = c := pow_maximalIdeal_inj (h3.symm.trans (h2.symm.trans h1))
  have he : n = w.asIdeal.ramificationIdx (𝓞 K) := by
    rw [hn, ← hc, ← Ideal.IsDedekindDomain.ramificationIdx'_eq_normalizedFactors_count hmap0
      w.isPrime w.ne_bot, Ideal.ramificationIdx'_eq_ramificationIdx la.asIdeal w.asIdeal la.ne_bot]
  exact ⟨ϖ, ϖ₁, u, hϖ, hϖ₁, by rw [hu, he]⟩

theorem main_eq (hL : Formalism.LatticeBaseChangeAlt.LengthBaseChangeLocal)
    {V : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]
    (M : Submodule (𝓞 K) V) (hMfg : M.FG) (W : Submodule K V) {ρ : ℕ} (θ : Fin ρ → M)
    (la : HeightOneSpectrum (𝓞 K)) (w : HeightOneSpectrum (𝓞 K₁)) (hw : LiesOver w la) :
    lenW w M W θ = (w.asIdeal.ramificationIdx (𝓞 K) : ℕ∞) *
      lenLa la (QuotMW M W ⧸ Submodule.span (𝓞 K)
        (Set.range fun j => (Submodule.Quotient.mk (θ j) : QuotMW M W))) := by
  let _ : Algebra (Localization.AtPrime la.asIdeal) (Tw w) := (mapLaT la w hw).toAlgebra
  have hRT : ∀ r : Localization.AtPrime la.asIdeal,
      ((algebraMap (Localization.AtPrime la.asIdeal) (Tw w) r : Tw w) : K₁) =
        algebraMap K K₁ (algebraMap (Localization.AtPrime la.asIdeal) K r) := mapLaT_coe la w hw
  let _ : Module (Localization.AtPrime la.asIdeal) V :=
    Module.compHom V (algebraMap (Localization.AtPrime la.asIdeal) K)
  have : IsScalarTower (Localization.AtPrime la.asIdeal) K V := ⟨fun o k v => by
    change (o • k) • v = algebraMap _ K o • (k • v)
    rw [Algebra.smul_def, mul_smul]⟩
  have : IsScalarTower (𝓞 K) (Localization.AtPrime la.asIdeal) V := ⟨fun a o v => by
    change algebraMap _ K (a • o) • v = a • (algebraMap _ K o • v)
    rw [Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply, mul_smul, algebraMap_smul]⟩

  let θ' : Fin ρ → V := fun j => (θ j : V)
  let S : Set V := ((M ⊓ W.restrictScalars (𝓞 K) : Submodule (𝓞 K) V) : Set V) ∪ Set.range θ'
  have hSM : S ⊆ (M : Set V) := by
    rintro x (hx | ⟨j, rfl⟩)
    · exact hx.1
    · exact (θ j).2
  let G : Submodule (𝓞 K) V := Submodule.span (𝓞 K) S
  have hGM : G ≤ M := Submodule.span_le.2 hSM
  let X : Submodule (Localization.AtPrime la.asIdeal) V :=
    Submodule.span (Localization.AtPrime la.asIdeal) (M : Set V)
  let Y : Submodule (Localization.AtPrime la.asIdeal) V :=
    Submodule.span (Localization.AtPrime la.asIdeal) S
  have hYG : Y = Submodule.span (Localization.AtPrime la.asIdeal) (G : Set V) := by
    show _ = Submodule.span _ (Submodule.span (𝓞 K) S : Set V)
    rw [Submodule.span_span_of_tower]

  let S₁ : Submodule (𝓞 K) M := (W.restrictScalars (𝓞 K)).comap M.subtype
  have hS₂ : G.comap M.subtype = S₁ ⊔ Submodule.span (𝓞 K) (Set.range θ) := by
    apply Submodule.map_injective_of_injective M.injective_subtype
    rw [Submodule.map_comap_subtype, inf_eq_right.2 hGM, Submodule.map_sup,
      Submodule.map_comap_subtype, Submodule.map_span, ← Set.range_comp]
    show Submodule.span (𝓞 K) S = _
    rw [Submodule.span_union, Submodule.span_eq]
    rfl
  have hmapQ : (G.comap M.subtype).map S₁.mkQ =
      Submodule.span (𝓞 K) (Set.range fun j => (Submodule.Quotient.mk (θ j) : QuotMW M W)) := by
    rw [hS₂, Submodule.map_sup, Submodule.mkQ_map_self, bot_sup_eq, Submodule.map_span,
      ← Set.range_comp]
    rfl
  have hle : S₁ ≤ G.comap M.subtype := by rw [hS₂]; exact le_sup_left
  let e1 : (QuotMW M W ⧸ Submodule.span (𝓞 K)
      (Set.range fun j => (Submodule.Quotient.mk (θ j) : QuotMW M W))) ≃ₗ[𝓞 K]
      M ⧸ G.comap M.subtype :=
    (Submodule.quotEquivOfEq _ _ hmapQ.symm).trans
      (Submodule.quotientQuotientEquivQuotient S₁ (G.comap M.subtype) hle)
  have hA : lenLa la (QuotMW M W ⧸ Submodule.span (𝓞 K)
      (Set.range fun j => (Submodule.Quotient.mk (θ j) : QuotMW M W))) =
      Module.length (Localization.AtPrime la.asIdeal) (X ⧸ Y.comap X.subtype) := by
    rw [hYG]
    exact TieLDB.length_localized_eq la.asIdeal M G e1

  have hXfg : X.FG := by
    obtain ⟨s, hs⟩ := hMfg
    refine ⟨s, ?_⟩
    show Submodule.span _ (s : Set V) = Submodule.span _ (M : Set V)
    rw [← hs, Submodule.span_span_of_tower]
  have hYX : Y ≤ X := Submodule.span_mono hSM
  have hMw : Submodule.span (Tw w) (TieLDA.tm K K₁ '' (M : Set V)) =
      Submodule.span (Tw w) (TieLDA.tm K K₁ '' (X : Set V)) :=
    (TieLDA.span_tm_span (Tw w) hRT (M : Set V)).symm
  have hNw : (Submodule.span (Tw w)
        (Submodule.span K₁ (TieLDA.tm K K₁ '' (W : Set V)) : Set (K₁ ⊗[K] V)) ⊓
        Submodule.span (Tw w) (TieLDA.tm K K₁ '' (X : Set V))) ⊔
      Submodule.span (Tw w) (Set.range fun j => TieLDA.tm K K₁ (θ' j)) =
      Submodule.span (Tw w) (TieLDA.tm K K₁ '' (Y : Set V)) := by
    rw [TieLDA.span_inf_eq (Tw w) hRT X hXfg W]
    have h1 : X ⊓ W.restrictScalars (Localization.AtPrime la.asIdeal) =
        Submodule.span (Localization.AtPrime la.asIdeal)
          ((M ⊓ W.restrictScalars (𝓞 K) : Submodule (𝓞 K) V) : Set V) :=
      (TieLDB.span_inf_eq la.asIdeal M (W.restrictScalars (Localization.AtPrime la.asIdeal))).symm
    rw [h1, TieLDA.span_tm_span (Tw w) hRT]
    show _ = Submodule.span (Tw w) (TieLDA.tm K K₁ ''
      (Submodule.span (Localization.AtPrime la.asIdeal) S : Set V))
    rw [TieLDA.span_tm_span (Tw w) hRT, Set.image_union, Submodule.span_union, ← Set.range_comp]
    rfl
  have hW : lenW w M W θ = Module.length (Tw w)
      (↥(Submodule.span (Tw w) (TieLDA.tm K K₁ '' (M : Set V))) ⧸
        ((Submodule.span (Tw w)
          (Submodule.span K₁ (TieLDA.tm K K₁ '' (W : Set V)) : Set (K₁ ⊗[K] V)) ⊓
          Submodule.span (Tw w) (TieLDA.tm K K₁ '' (M : Set V))) ⊔
          Submodule.span (Tw w) (Set.range fun j => TieLDA.tm K K₁ (θ' j))).comap
          (Submodule.span (Tw w) (TieLDA.tm K K₁ '' (M : Set V))).subtype) := rfl
  rw [hW, hMw, hNw, TieLDA.length_quot_eq (Tw w) hRT X Y hXfg hYX, hA]

  have hfinX : Module.Finite (Localization.AtPrime la.asIdeal) X := Module.Finite.iff_fg.2 hXfg
  by_cases hN : Module.length (Localization.AtPrime la.asIdeal) (X ⧸ Y.comap X.subtype) = ⊤
  · have he : ((w.asIdeal.ramificationIdx (𝓞 K) : ℕ) : ℕ∞) ≠ 0 := by
      exact_mod_cast ramificationIdx_ne_zero' la w hw
    rw [TieLDA.length_tensor_eq_top (T := Tw w) _ hN, hN, ENat.mul_top he]
  · obtain ⟨ϖ, ϖ₁, u, hϖ, hϖ₁, hrel⟩ := exists_rel la w hw
    exact hL (Localization.AtPrime la.asIdeal) (Tw w) (X ⧸ Y.comap X.subtype) ϖ ϖ₁ u _ hϖ hϖ₁
      hrel hN

end TieLD

open TieLD in
theorem lenDescent_of_lengthBaseChangeLocal (h : Formalism.LatticeBaseChangeAlt.LengthBaseChangeLocal) :
    ReciprocityTheory.ChartRestriction.G.FreeQuotientRank.LenDescentStatement := by
  unfold ReciprocityTheory.ChartRestriction.G.FreeQuotientRank.LenDescentStatement
  intro K K₁ V _ _ _ _ _ _ _ _ _ _ M hMfg _ W ρ θ la w hw
  exact TieLD.main_eq h M hMfg W θ la w hw

theorem lenDescent_holds : ReciprocityTheory.ChartRestriction.G.FreeQuotientRank.LenDescentStatement :=
  lenDescent_of_lengthBaseChangeLocal Formalism.LatticeBaseChangeAlt.lengthBaseChangeLocal

end Formalism.L2.Pj.QAt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LenDescentOfLengthBaseChangeLocal =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QuotLocalOfQuotientLength =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QuotLocalOfQuotientLength", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QuotSt\npublic import Formalism.FilteredPoleLength.ReducedBasisBounds.ReductionQuotient\npublic import Formalism.FilteredPoleLength.LocalDescentLevels.MemSpanBasisFun\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Pj.QAt

namespace TieQL

open Module

variable {O Q : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [AddCommGroup Q] [Module O Q] {ρ : ℕ}

noncomputable def coordK (b : Basis (Fin ρ) O Q) : Q →ₗ[O] (Fin ρ → FractionRing O) where
  toFun q k := algebraMap O (FractionRing O) (b.repr q k)
  map_add' x y := by ext k; simp
  map_smul' r x := by ext k; simp [Algebra.smul_def]

theorem coordK_injective (b : Basis (Fin ρ) O Q) : Function.Injective (coordK b) := by
  intro x y h
  apply b.repr.injective
  ext k
  have hk := congrFun h k
  simp only [coordK, LinearMap.coe_mk, AddHom.coe_mk] at hk
  exact IsFractionRing.injective O (FractionRing O) hk

noncomputable def matA (b : Basis (Fin ρ) O Q) (c : Fin ρ → (Q →ₗ[O] O)) :
    Matrix (Fin ρ) (Fin ρ) O :=
  Matrix.of fun i k => c i (b k)

theorem c_eq_sum (b : Basis (Fin ρ) O Q) (c : Fin ρ → (Q →ₗ[O] O)) (i : Fin ρ) (q : Q) :
    c i q = ∑ k, matA b c i k * b.repr q k := by
  conv_lhs => rw [← b.sum_repr q]

  rw [map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_smul, smul_eq_mul, mul_comm]
  rfl

noncomputable def cK (b : Basis (Fin ρ) O Q) (c : Fin ρ → (Q →ₗ[O] O)) :
    (Fin ρ → FractionRing O) →ₗ[FractionRing O] (Fin ρ → FractionRing O) :=
  Matrix.toLin' ((matA b c).map (algebraMap O (FractionRing O)))

theorem cK_coordK (b : Basis (Fin ρ) O Q) (c : Fin ρ → (Q →ₗ[O] O)) (q : Q) (i : Fin ρ) :
    cK b c (coordK b q) i = algebraMap O (FractionRing O) (c i q) := by

  rw [c_eq_sum b c i q, map_sum]
  simp only [cK, Matrix.toLin'_apply, Matrix.mulVec, dotProduct, Matrix.map_apply, coordK,
    LinearMap.coe_mk, AddHom.coe_mk, map_mul]

theorem det_mul_eq (b : Basis (Fin ρ) O Q) (c : Fin ρ → (Q →ₗ[O] O)) (th : Fin ρ → Q) :
    (Matrix.of fun i j => c i (th j)) = matA b c * Matrix.of fun k j => b.repr (th j) k := by
  ext i j
  rw [Matrix.of_apply, Matrix.mul_apply, c_eq_sum b c i (th j)]
  rfl

theorem inf_ker_eq_bot (b : Basis (Fin ρ) O Q) (c : Fin ρ → (Q →ₗ[O] O)) (th : Fin ρ → Q)
    (hdet : (Matrix.of fun i j => c i (th j)).det ≠ 0) :
    LinearMap.range (coordK b) ⊓ (LinearMap.ker (cK b c)).restrictScalars O = ⊥ := by
  rw [Submodule.eq_bot_iff]
  intro v hv
  rw [Submodule.mem_inf, LinearMap.mem_range] at hv
  obtain ⟨⟨q, rfl⟩, hv⟩ := hv
  rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at hv
  have hA : (matA b c).det ≠ 0 := by
    intro h0
    apply hdet
    rw [det_mul_eq b c th, Matrix.det_mul, h0, zero_mul]
  have hc : ∀ i, c i q = 0 := by
    intro i
    have h1 : cK b c (coordK b q) i = 0 := by rw [hv]; rfl
    rw [cK_coordK] at h1
    exact IsFractionRing.injective O (FractionRing O) (by rw [h1, map_zero])
  have hvec : (matA b c).mulVec (fun k => b.repr q k) = 0 := by
    funext i
    rw [Pi.zero_apply, ← hc i, c_eq_sum b c i q]
    rfl
  have hr := Matrix.eq_zero_of_mulVec_eq_zero hA hvec
  have hq : q = 0 := by
    apply b.repr.injective
    ext k
    simpa using congrFun hr k
  rw [hq, map_zero]

end TieQL

open TieQL in
theorem quotLocal_of_quotientLength (h : Formalism.LatticeBaseChangeAlt.QuotientLength) :
    ReciprocityTheory.ChartRestriction.G.FreeQuotientRank.QuotLocalStatement := by
  intro O Q _ _ _ _ _ ρ hb c th hdet
  obtain ⟨b⟩ := hb
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hmat : (Matrix.of fun i j => cK b c (coordK b (th j)) i) =
      (Matrix.of fun i j => c i (th j)).map (algebraMap O (FractionRing O)) := by
    ext i j
    simp only [Matrix.of_apply, Matrix.map_apply, cK_coordK]
  have hdetK : algebraMap O (FractionRing O) (Matrix.of fun i j => c i (th j)).det =
      (Matrix.of fun i j => cK b c (coordK b (th j)) i).det * algebraMap O (FractionRing O) 1 := by
    rw [map_one, mul_one, hmat, RingHom.map_det]
    rfl
  obtain ⟨m, hm, hle⟩ := h O (FractionRing O) (Fin ρ → FractionRing O) ϖ hϖ ρ (cK b c)
    (LinearMap.ker (cK b c)) le_rfl (LinearMap.range (coordK b)) 0 0 (fun j => coordK b (th j))
    (by
      rintro x ⟨q, rfl⟩ i
      exact ⟨c i q, by simp [cK_coordK]⟩)
    (by intro j; simp)
    _ 1 hdet one_ne_zero hdetK
  let eQ : Q ≃ₗ[O] LinearMap.range (coordK b) := LinearEquiv.ofInjective (coordK b) (coordK_injective b)
  have hT : ((LinearMap.range (coordK b) ⊓ (LinearMap.ker (cK b c)).restrictScalars O) ⊔
      Submodule.span O (Set.range fun j => (algebraMap O (FractionRing O) ϖ) ^ (0 : ℕ) • coordK b (th j))).comap
        (LinearMap.range (coordK b)).subtype =
      (Submodule.span O (Set.range th)).map (eQ : Q →ₗ[O] LinearMap.range (coordK b)) := by
    rw [inf_ker_eq_bot b c th hdet, bot_sup_eq]
    simp only [pow_zero, one_smul]
    ext ⟨v, hv⟩
    obtain ⟨q, rfl⟩ := LinearMap.mem_range.mp hv
    simp only [Submodule.mem_comap, Submodule.subtype_apply, Submodule.mem_map]
    constructor
    · intro hq
      have h1 : coordK b q ∈ (Submodule.span O (Set.range th)).map (coordK b) := by
        rw [Submodule.map_span, ← Set.range_comp]
        exact hq
      obtain ⟨y, hy, hyq⟩ := h1
      refine ⟨y, hy, Subtype.ext ?_⟩
      rw [LinearEquiv.coe_coe, LinearEquiv.ofInjective_apply]
      exact hyq
    · rintro ⟨y, hy, hyq⟩
      have h2 : coordK b y = coordK b q := by
        have h3 := congrArg Subtype.val hyq
        rwa [LinearEquiv.coe_coe, LinearEquiv.ofInjective_apply] at h3
      rw [← h2]
      have h4 := Submodule.mem_map_of_mem (f := coordK b) hy
      rw [Submodule.map_span, ← Set.range_comp] at h4
      exact h4
  have e := Submodule.Quotient.equiv (Submodule.span O (Set.range th)) _ eQ hT.symm
  have hm' : m ≤ (IsDiscreteValuationRing.addVal O (Matrix.of fun i j => c i (th j)).det).toNat := by
    simp at hle
    exact_mod_cast hle
  calc Module.length O (Q ⧸ Submodule.span O (Set.range th)) = (m : ℕ∞) := e.length_eq.trans hm
    _ ≤ _ := (Nat.cast_le.mpr hm').trans (ENat.coe_toNat_le_self _)

theorem quotLocal_holds : ReciprocityTheory.ChartRestriction.G.FreeQuotientRank.QuotLocalStatement := by
  exact quotLocal_of_quotientLength Formalism.LatticeBaseChangeAlt.quotientLength

end Formalism.L2.Pj.QAt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QuotLocalOfQuotientLength =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QatOfBridgeAlt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QatOfBridgeAlt", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QatOfBridge\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LenDescentOfLengthBaseChangeLocal\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QuotLocalOfQuotientLength\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Pj.QAt

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions

variable {D : D7}

theorem qat_of_bridge' (large₂ : SizeData₂ D) (B : WeightFamilies.Prov D) (j : ℕ) (ka : WeightFamilies.Wt D j)
    (CR Ck Ch Ah Cc Ac T c : ℝ) (hlat : Submodule.IsFullLattice B.KO (B.Mlat j ka))
    (hbr : QBridgeAt large₂ B j ka CR Ch Ah Cc Ac T c) :
    Formalism.MainNotions.Gaps.EtaleWeightGaps.QAt large₂ B j ka CR Ck Ch Ah Cc Ac T c :=
  qat_of_bridge quotLocal_holds lenDescent_holds large₂ B j ka CR Ck Ch Ah Cc Ac T c hlat hbr

end Formalism.L2.Pj.QAt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.QatOfBridgeAlt =====

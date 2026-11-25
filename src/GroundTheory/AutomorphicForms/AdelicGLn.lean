module

public import GroundTheory.GlobalFields.IdeleGroups.Restricted
public import GroundTheory.GlobalFields.LocalFieldAtPlace
public import GroundTheory.AutomorphicForms.GLnLocal
public import GroundTheory.GlobalFields.Adele.Approximation
public import GroundTheory.AutomorphicForms.LocallyProfinite
public import GroundTheory.GlobalFields.Adele.Compact
public import GroundTheory.GlobalFields.Adele.Discrete
import GroundTheory.GlobalFields.Adele.Topology

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.AutomorphicForms.RestrictedProductMatrix, GroundTheory.AutomorphicForms.AdelicGLn

-- ===== clump member: GroundTheory.AutomorphicForms.RestrictedProductMatrix =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.RestrictedProductMatrix", "h": "module\n\npublic import GroundTheory.GlobalFields.IdeleGroups.Restricted\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic

open Filter Topology Set
open scoped RestrictedProduct

noncomputable section

section Units

variable {A B : Type*} [Monoid A] [Monoid B] [TopologicalSpace A] [TopologicalSpace B]

def unitsCongr (e : A ≃* B) (he : Continuous e) (he' : Continuous e.symm) : Aˣ ≃ₜ* Bˣ where
  toMulEquiv := Units.mapEquiv e
  continuous_toFun :=
    Units.continuous_iff.2 ⟨he.comp Units.continuous_val, he.comp Units.continuous_coe_inv⟩
  continuous_invFun :=
    Units.continuous_iff.2 ⟨he'.comp Units.continuous_val, he'.comp Units.continuous_coe_inv⟩

end Units

section Prod

variable (m : Type*) [Fintype m] (R₁ R₂ : Type*) [Ring R₁] [Ring R₂]

def matrixProdRingEquiv : Matrix m m (R₁ × R₂) ≃+* Matrix m m R₁ × Matrix m m R₂ where
  toFun M := (M.map Prod.fst, M.map Prod.snd)
  invFun p := Matrix.of fun a b => (p.1 a b, p.2 a b)
  left_inv M := rfl
  right_inv p := rfl
  map_mul' M N := by
    ext a b
    · change ((M * N) a b).1 = (M.map Prod.fst * N.map Prod.fst) a b
      simp [Matrix.mul_apply, Prod.fst_sum]
    · change ((M * N) a b).2 = (M.map Prod.snd * N.map Prod.snd) a b
      simp [Matrix.mul_apply, Prod.snd_sum]
  map_add' M N := rfl

variable [TopologicalSpace R₁] [TopologicalSpace R₂]

theorem continuous_matrixProdRingEquiv : Continuous (matrixProdRingEquiv m R₁ R₂) :=
  (continuous_pi fun a => continuous_pi fun b =>
      continuous_fst.comp ((continuous_apply b).comp (continuous_apply a))).prodMk
    (continuous_pi fun a => continuous_pi fun b =>
      continuous_snd.comp ((continuous_apply b).comp (continuous_apply a)))

theorem continuous_matrixProdRingEquiv_symm : Continuous (matrixProdRingEquiv m R₁ R₂).symm :=
  continuous_pi fun a => continuous_pi fun b =>
    ((continuous_apply_apply a b).comp continuous_fst).prodMk
      ((continuous_apply_apply a b).comp continuous_snd)

variable [DecidableEq m]

def glProdEquiv : GL m (R₁ × R₂) ≃ₜ* GL m R₁ × GL m R₂ :=
  (unitsCongr (matrixProdRingEquiv m R₁ R₂).toMulEquiv (continuous_matrixProdRingEquiv m R₁ R₂)
    (continuous_matrixProdRingEquiv_symm m R₁ R₂)).trans
    { toMulEquiv := MulEquiv.prodUnits
      continuous_toFun := (Homeomorph.prodUnits (α := Matrix m m R₁)
        (β := Matrix m m R₂)).continuous_toFun
      continuous_invFun := (Homeomorph.prodUnits (α := Matrix m m R₁)
        (β := Matrix m m R₂)).continuous_invFun }

end Prod

section Pi

variable (m : Type*) [Fintype m] {ι : Type*} (R : ι → Type*) [∀ j, Ring (R j)]

def matrixPiRingEquiv : Matrix m m (Π j, R j) ≃+* Π j, Matrix m m (R j) where
  toFun M j := Matrix.of fun a b => M a b j
  invFun p := Matrix.of fun a b j => p j a b
  left_inv M := rfl
  right_inv p := rfl
  map_mul' M N := by
    ext j a b
    simp [Matrix.mul_apply, Finset.sum_apply]
  map_add' M N := rfl

variable [∀ j, TopologicalSpace (R j)]

theorem continuous_matrixPiRingEquiv : Continuous (matrixPiRingEquiv m R) :=
  continuous_pi fun j => continuous_pi fun a => continuous_pi fun b =>
    (continuous_apply j).comp ((continuous_apply b).comp (continuous_apply a))

theorem continuous_matrixPiRingEquiv_symm : Continuous (matrixPiRingEquiv m R).symm :=
  continuous_pi fun a => continuous_pi fun b => continuous_pi fun j =>
    (continuous_apply b).comp ((continuous_apply a).comp (continuous_apply j))

variable [DecidableEq m]

def glPiEquiv : GL m (Π j, R j) ≃ₜ* Π j, GL m (R j) :=
  (unitsCongr (matrixPiRingEquiv m R).toMulEquiv (continuous_matrixPiRingEquiv m R)
    (continuous_matrixPiRingEquiv_symm m R)).trans ContinuousMulEquiv.piUnits

end Pi

namespace RestrictedProduct

variable {ι : Type*} {R : ι → Type*} [∀ i, TopologicalSpace (R i)]

def congrSets {A A' : (i : ι) → Set (R i)} (h : ∀ i, A i = A' i) :
    Πʳ i, [R i, A i] ≃ₜ Πʳ i, [R i, A' i] where
  toFun x := _root_.RestrictedProduct.mk x.1 (x.2.mono fun i hi =>
    (congrArg (x.1 i ∈ ·) (h i)).mp hi)
  invFun x := _root_.RestrictedProduct.mk x.1 (x.2.mono fun i hi =>
    (congrArg (x.1 i ∈ ·) (h i)).mpr hi)
  left_inv _ := rfl
  right_inv _ := rfl
  continuous_toFun :=
    _root_.RestrictedProduct.mapAlong_continuous R R id tendsto_id (A₁ := A) (A₂ := A')
      (fun _ x => x) (.of_forall fun i x hx => (congrArg (x ∈ ·) (h i)).mp hx)
      fun _ => continuous_id
  continuous_invFun :=
    _root_.RestrictedProduct.mapAlong_continuous R R id tendsto_id (A₁ := A') (A₂ := A)
      (fun _ x => x) (.of_forall fun i x hx => (congrArg (x ∈ ·) (h i)).mpr hx)
      fun _ => continuous_id

def congrSetsMul [∀ i, Monoid (R i)] {S S' : ι → Type*} [∀ i, SetLike (S i) (R i)]
    [∀ i, SubmonoidClass (S i) (R i)] [∀ i, SetLike (S' i) (R i)]
    [∀ i, SubmonoidClass (S' i) (R i)] {B : Π i, S i} {B' : Π i, S' i}
    (h : ∀ i, (B i : Set (R i)) = B' i) :
    Πʳ i, [R i, B i] ≃ₜ* Πʳ i, [R i, B' i] where
  toEquiv := (congrSets h).toEquiv
  map_mul' _ _ := rfl
  continuous_toFun := (congrSets h).continuous
  continuous_invFun := (congrSets h).symm.continuous

section Pi

variable (m : Type*) [Finite m] {A : (i : ι) → Set (R i)}

def piEquiv (hA : ∀ i, IsOpen (A i)) :
    (m → Πʳ i, [R i, A i]) ≃ₜ Πʳ i, [m → R i, Set.pi univ fun _ => A i] where
  toFun x := _root_.RestrictedProduct.mk (A := fun i => Set.pi univ fun _ => A i)
    (fun i a => x a i)
    (((eventually_all (ι := m)).2 fun a => (x a).2).mono fun _ hi a _ => hi a)
  invFun y a := _root_.RestrictedProduct.mk (A := A) (fun i => y i a)
    (y.2.mono fun _ hi => hi a (mem_univ a))
  left_inv _ := rfl
  right_inv _ := rfl
  continuous_toFun := by
    refine (_root_.RestrictedProduct.continuous_dom_pi (A := fun _ i => R i)
      (C := fun _ i => A i) fun _ => hA).2 fun S hS => ?_
    exact (_root_.RestrictedProduct.continuous_inclusion hS).comp
      (f := fun x : (m → Πʳ i, [R i, A i]_[𝓟 S]) =>
        _root_.RestrictedProduct.mk (A := fun i => Set.pi univ fun _ => A i) (𝓕 := 𝓟 S)
          (fun i a => x a i) (eventually_principal.2 fun i hi a _ =>
            eventually_principal.1 (x a).2 i hi))
      (_root_.RestrictedProduct.continuous_rng_of_principal.2
        (continuous_pi fun i => continuous_pi fun a =>
          (_root_.RestrictedProduct.continuous_eval i).comp (continuous_apply a)))
  continuous_invFun := continuous_pi fun a =>
    _root_.RestrictedProduct.mapAlong_continuous (fun i => m → R i) R id tendsto_id
      (A₁ := fun i => Set.pi univ fun _ => A i) (A₂ := A)
      (fun _ y => y a) (.of_forall fun _ _ hy => hy a (mem_univ a)) fun _ => continuous_apply a

end Pi

section Matrix

variable (m : Type*) [Fintype m] [DecidableEq m]

def matrixHomeomorphSets {A : (i : ι) → Set (R i)} (hA : ∀ i, IsOpen (A i)) :
    Matrix m m (Πʳ i, [R i, A i]) ≃ₜ Πʳ i, [Matrix m m (R i), {M | ∀ a b, M a b ∈ A i}] :=
  ((Homeomorph.piCongrRight fun _ : m => piEquiv m hA).trans
    (piEquiv m fun i => isOpen_set_pi finite_univ fun _ _ => hA i)).trans
    (congrSets fun _ => Set.ext fun _ =>
      ⟨fun h a b => h a (mem_univ a) b (mem_univ b), fun h a _ b _ => h a b⟩)

variable [∀ i, Ring (R i)] {S : ι → Type*} [∀ i, SetLike (S i) (R i)]
  [∀ i, SubringClass (S i) (R i)] {B : Π i, S i} {C : Π i, Subring (Matrix m m (R i))}

def matrixRingEquiv (hC : ∀ i (M : Matrix m m (R i)), M ∈ C i ↔ ∀ a b, M a b ∈ B i) :
    Matrix m m (Πʳ i, [R i, B i]) ≃+* Πʳ i, [Matrix m m (R i), C i] where
  toFun M := _root_.RestrictedProduct.mk (A := fun i => (C i : Set (Matrix m m (R i))))
    (fun i => Matrix.of fun a b => M a b i)
    (((eventually_all (ι := m)).2 fun a => (eventually_all (ι := m)).2 fun b =>
      (M a b).2).mono fun i hi => (hC i _).2 fun a b => hi a b)
  invFun x := Matrix.of fun a b =>
    _root_.RestrictedProduct.mk (A := fun i => (B i : Set (R i))) (fun i => x i a b)
      (x.2.mono fun i hi => (hC i _).1 hi a b)
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' M N := by
    ext i a b
    change (M * N) a b i = ((Matrix.of fun a b => M a b i) * Matrix.of fun a b => N a b i) a b
    simp only [Matrix.mul_apply, Matrix.of_apply]
    exact map_sum (_root_.RestrictedProduct.evalRingHom R i) _ _
  map_add' _ _ := rfl


omit [∀ i, TopologicalSpace (R i)] [∀ i, SubringClass (S i) (R i)] in
theorem coe_eq_setOf (hC : ∀ i (M : Matrix m m (R i)), M ∈ C i ↔ ∀ a b, M a b ∈ B i) (i : ι) :
    (C i : Set (Matrix m m (R i))) = {M | ∀ a b, M a b ∈ B i} :=
  Set.ext fun M => hC i M

def matrixHomeomorph (hC : ∀ i (M : Matrix m m (R i)), M ∈ C i ↔ ∀ a b, M a b ∈ B i)
    (hB : ∀ i, IsOpen (B i : Set (R i))) :
    Matrix m m (Πʳ i, [R i, B i]) ≃ₜ Πʳ i, [Matrix m m (R i), C i] :=
  (matrixHomeomorphSets m hB).trans (congrSets fun i => (coe_eq_setOf m hC i).symm)


omit [∀ i, SubringClass (S i) (R i)] in
theorem isOpen_coe_of_forall (hC : ∀ i (M : Matrix m m (R i)), M ∈ C i ↔ ∀ a b, M a b ∈ B i)
    (hB : ∀ i, IsOpen (B i : Set (R i))) (i : ι) : IsOpen (C i : Set (Matrix m m (R i))) := by
  rw [coe_eq_setOf m hC i]
  simp only [Set.ofPred_forall]
  exact isOpen_iInter_of_finite fun a => isOpen_iInter_of_finite fun b =>
    (hB i).preimage (continuous_apply_apply a b)

def matrixUnitsEquiv (hC : ∀ i (M : Matrix m m (R i)), M ∈ C i ↔ ∀ a b, M a b ∈ B i)
    (hB : ∀ i, IsOpen (B i : Set (R i))) :
    GL m (Πʳ i, [R i, B i]) ≃ₜ* Πʳ i, [GL m (R i), (Submonoid.ofClass (C i)).units] :=
  (unitsCongr (matrixRingEquiv m hC).toMulEquiv (matrixHomeomorph m hC hB).continuous
    (matrixHomeomorph m hC hB).symm.continuous).trans
    (GroundTheory.Global.RestrictedProduct.continuousUnitsEquiv (isOpen_coe_of_forall m hC hB))

end Matrix

end RestrictedProduct

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.RestrictedProductMatrix =====

-- ===== clump member: GroundTheory.AutomorphicForms.AdelicGLn =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.AdelicGLn", "h": "module\n\npublic import GroundTheory.GlobalFields.LocalFieldAtPlace\npublic import GroundTheory.AutomorphicForms.GLnLocal\npublic import GroundTheory.AutomorphicForms.RestrictedProductMatrix\npublic import GroundTheory.GlobalFields.Adele.Approximation\npublic import GroundTheory.AutomorphicForms.LocallyProfinite\npublic import GroundTheory.GlobalFields.Adele.Compact\npublic import GroundTheory.GlobalFields.Adele.Discrete\nimport GroundTheory.GlobalFields.Adele.Topology\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Topology Filter Set
open scoped NumberField.AdeleRing RestrictedProduct

namespace GroundTheory.Automorphic

noncomputable section

instance locallyCompactSpace_matrix {m R : Type*} [Finite m] [TopologicalSpace R]
    [LocallyCompactSpace R] : LocallyCompactSpace (Matrix m m R) :=
  inferInstanceAs (LocallyCompactSpace (m → m → R))

namespace AdelicGLn

variable (K : Type*) [Field K] [NumberField K] (n : ℕ)

abbrev AdelicMatrix : Type _ := Matrix (Fin n) (Fin n) 𝔸[K]

abbrev AdelicGL : Type _ := GL (Fin n) 𝔸[K]

abbrev InfiniteAdelicGL : Type _ := GL (Fin n) (InfiniteAdeleRing K)

abbrev FiniteAdelicGL : Type _ := GL (Fin n) (FiniteAdeleRing (𝓞 K) K)

instance (priority := high) locallyCompactSpace : LocallyCompactSpace (AdelicGL K n) :=
  Units.instLocallyCompactSpaceOfT1SpaceOfContinuousMul

instance (priority := high) locallyCompactSpace_finite :
    LocallyCompactSpace (FiniteAdelicGL K n) :=
  Units.instLocallyCompactSpaceOfT1SpaceOfContinuousMul

instance (priority := high) locallyCompactSpace_infinite :
    LocallyCompactSpace (InfiniteAdelicGL K n) :=
  Units.instLocallyCompactSpaceOfT1SpaceOfContinuousMul

instance (priority := high) weaklyLocallyCompactSpace :
    WeaklyLocallyCompactSpace (AdelicGL K n) :=
  instWeaklyLocallyCompactSpaceOfLocallyCompactSpace

instance (priority := high) weaklyLocallyCompactSpace_finite :
    WeaklyLocallyCompactSpace (FiniteAdelicGL K n) :=
  instWeaklyLocallyCompactSpaceOfLocallyCompactSpace

instance (priority := high) weaklyLocallyCompactSpace_infinite :
    WeaklyLocallyCompactSpace (InfiniteAdelicGL K n) :=
  instWeaklyLocallyCompactSpaceOfLocallyCompactSpace

instance (priority := high) isTopologicalGroup : IsTopologicalGroup (AdelicGL K n) :=
  Units.instIsTopologicalGroupOfContinuousMul

instance (priority := high) isTopologicalGroup_finite :
    IsTopologicalGroup (FiniteAdelicGL K n) :=
  Units.instIsTopologicalGroupOfContinuousMul

omit [NumberField K] in
instance (priority := high) isTopologicalGroup_infinite :
    IsTopologicalGroup (InfiniteAdelicGL K n) :=
  Units.instIsTopologicalGroupOfContinuousMul

instance (priority := high) t2Space : T2Space (AdelicGL K n) :=
  Units.instT2Space

instance (priority := high) t2Space_finite : T2Space (FiniteAdelicGL K n) :=
  Units.instT2Space

omit [NumberField K] in
instance (priority := high) t2Space_infinite : T2Space (InfiniteAdelicGL K n) :=
  Units.instT2Space

instance (priority := high) t1Space : T1Space (AdelicGL K n) :=
  T2Space.t1Space

instance (priority := high) t1Space_finite : T1Space (FiniteAdelicGL K n) :=
  T2Space.t1Space

omit [NumberField K] in
instance (priority := high) t1Space_infinite : T1Space (InfiniteAdelicGL K n) :=
  T2Space.t1Space

instance (priority := high) t0Space : T0Space (AdelicGL K n) :=
  T1Space.t0Space

instance (priority := high) t0Space_finite : T0Space (FiniteAdelicGL K n) :=
  T1Space.t0Space

omit [NumberField K] in
instance (priority := high) t0Space_infinite : T0Space (InfiniteAdelicGL K n) :=
  T1Space.t0Space

instance (priority := high) r1Space : R1Space (AdelicGL K n) :=
  T2Space.r1Space

instance (priority := high) r1Space_finite : R1Space (FiniteAdelicGL K n) :=
  T2Space.r1Space

omit [NumberField K] in
instance (priority := high) r1Space_infinite : R1Space (InfiniteAdelicGL K n) :=
  T2Space.r1Space

instance (priority := high) regularSpace : RegularSpace (AdelicGL K n) :=
  IsTopologicalGroup.regularSpace _

instance (priority := high) regularSpace_finite : RegularSpace (FiniteAdelicGL K n) :=
  IsTopologicalGroup.regularSpace _

omit [NumberField K] in
instance (priority := high) regularSpace_infinite : RegularSpace (InfiniteAdelicGL K n) :=
  IsTopologicalGroup.regularSpace _

instance (priority := high) t3Space : T3Space (AdelicGL K n) :=
  instT3Space

instance (priority := high) t3Space_finite : T3Space (FiniteAdelicGL K n) :=
  instT3Space

omit [NumberField K] in
instance (priority := high) t3Space_infinite : T3Space (InfiniteAdelicGL K n) :=
  instT3Space

instance (priority := high) secondCountableTopology [SecondCountableTopology 𝔸[K]] :
    SecondCountableTopology (AdelicGL K n) := by
  have : SecondCountableTopology (AdelicMatrix K n) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → 𝔸[K]))
  have : SecondCountableTopology (AdelicMatrix K n)ᵐᵒᵖ :=
    MulOpposite.opHomeomorph.symm.isEmbedding.secondCountableTopology
  exact Units.isEmbedding_embedProduct.secondCountableTopology

instance (priority := high) secondCountableTopology_finite
    [SecondCountableTopology (FiniteAdeleRing (𝓞 K) K)] :
    SecondCountableTopology (FiniteAdelicGL K n) := by
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K)) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → FiniteAdeleRing (𝓞 K) K))
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K))ᵐᵒᵖ :=
    MulOpposite.opHomeomorph.symm.isEmbedding.secondCountableTopology
  exact Units.isEmbedding_embedProduct.secondCountableTopology

omit [NumberField K] in
instance (priority := high) secondCountableTopology_infinite
    [SecondCountableTopology (InfiniteAdeleRing K)] :
    SecondCountableTopology (InfiniteAdelicGL K n) := by
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) (InfiniteAdeleRing K)) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → InfiniteAdeleRing K))
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) (InfiniteAdeleRing K))ᵐᵒᵖ :=
    MulOpposite.opHomeomorph.symm.isEmbedding.secondCountableTopology
  exact Units.isEmbedding_embedProduct.secondCountableTopology

instance (priority := high) firstCountableTopology [SecondCountableTopology 𝔸[K]] :
    FirstCountableTopology (AdelicGL K n) :=
  TopologicalSpace.SecondCountableTopology.to_firstCountableTopology _

instance (priority := high) firstCountableTopology_finite
    [SecondCountableTopology (FiniteAdeleRing (𝓞 K) K)] :
    FirstCountableTopology (FiniteAdelicGL K n) :=
  TopologicalSpace.SecondCountableTopology.to_firstCountableTopology _

omit [NumberField K] in
instance (priority := high) firstCountableTopology_infinite
    [SecondCountableTopology (InfiniteAdeleRing K)] :
    FirstCountableTopology (InfiniteAdelicGL K n) :=
  TopologicalSpace.SecondCountableTopology.to_firstCountableTopology _

instance (priority := high) sigmaCompactSpace [SecondCountableTopology 𝔸[K]] :
    SigmaCompactSpace (AdelicGL K n) :=
  sigmaCompactSpace_of_locallyCompact_secondCountable

instance (priority := high) sigmaCompactSpace_finite
    [SecondCountableTopology (FiniteAdeleRing (𝓞 K) K)] :
    SigmaCompactSpace (FiniteAdelicGL K n) :=
  sigmaCompactSpace_of_locallyCompact_secondCountable

instance (priority := high) sigmaCompactSpace_infinite
    [SecondCountableTopology (InfiniteAdeleRing K)] :
    SigmaCompactSpace (InfiniteAdelicGL K n) :=
  sigmaCompactSpace_of_locallyCompact_secondCountable

def det : AdelicGL K n →* (𝔸[K])ˣ :=
  Matrix.GeneralLinearGroup.det

@[simp]
theorem coe_det (g : AdelicGL K n) : (det K n g : 𝔸[K]) = (g : AdelicMatrix K n).det :=
  rfl

theorem continuous_det : Continuous (det K n) := by
  refine Units.continuous_iff.2 ⟨Continuous.matrix_det (Units.continuous_val (M := AdelicMatrix K n)),
    ?_⟩
  have : (fun g : AdelicGL K n => (((det K n g)⁻¹ : (𝔸[K])ˣ) : 𝔸[K])) =
      fun g => ((g⁻¹ : AdelicGL K n) : AdelicMatrix K n).det := by
    funext g
    rw [← map_inv]
    rfl
  rw [this]
  exact Continuous.matrix_det (Units.continuous_coe_inv (M := AdelicMatrix K n))

def prodEquiv : AdelicGL K n ≃ₜ* InfiniteAdelicGL K n × FiniteAdelicGL K n :=
  glProdEquiv (Fin n) (InfiniteAdeleRing K) (FiniteAdeleRing (𝓞 K) K)

@[simp]
theorem prodEquiv_apply_fst (g : AdelicGL K n) (a b : Fin n) :
    (prodEquiv K n g).1 a b = (g a b).1 :=
  rfl

@[simp]
theorem prodEquiv_apply_snd (g : AdelicGL K n) (a b : Fin n) :
    (prodEquiv K n g).2 a b = (g a b).2 :=
  rfl

def infiniteEquiv : InfiniteAdelicGL K n ≃ₜ* Π w : InfinitePlace K, GL (Fin n) w.Completion :=
  glPiEquiv (Fin n) fun w : InfinitePlace K => w.Completion

omit [NumberField K] in
@[simp]
theorem infiniteEquiv_apply (g : InfiniteAdelicGL K n) (w : InfinitePlace K) (a b : Fin n) :
    infiniteEquiv K n g w a b = g a b w :=
  rfl

theorem mem_integralMatrices_adicCompletion (v : HeightOneSpectrum (𝓞 K))
    (M : Matrix (Fin n) (Fin n) (v.adicCompletion K)) :
    M ∈ GLnLocal.integralMatrices (v.adicCompletion K) n ↔
      ∀ a b, M a b ∈ v.adicCompletionIntegers K := by
  rw [GLnLocal.mem_integralMatrices]
  simp only [GroundTheory.Global.mem_valuationInteger_iff]

def finiteRestrictedEquiv :
    FiniteAdelicGL K n ≃ₜ* Πʳ v : HeightOneSpectrum (𝓞 K),
      [GL (Fin n) (v.adicCompletion K), GLnLocal.integralGL (v.adicCompletion K) n] :=
  (RestrictedProduct.matrixUnitsEquiv (Fin n)
    (R := fun v : HeightOneSpectrum (𝓞 K) => v.adicCompletion K)
    (B := fun v => v.adicCompletionIntegers K)
    (C := fun v => GLnLocal.integralMatrices (v.adicCompletion K) n)
    (mem_integralMatrices_adicCompletion K n)
    (fun v => Valued.isOpen_valuationSubring (v.adicCompletion K))).trans
    (RestrictedProduct.congrSetsMul fun v => by
      rw [GLnLocal.integralGL_eq_units]
      rfl)

@[simp]
theorem finiteRestrictedEquiv_apply (g : FiniteAdelicGL K n) (v : HeightOneSpectrum (𝓞 K))
    (a b : Fin n) :
    (finiteRestrictedEquiv K n g v : GL (Fin n) (v.adicCompletion K)) a b = g a b v :=
  rfl

def restrictedProductEquiv :
    AdelicGL K n ≃ₜ* (Π w : InfinitePlace K, GL (Fin n) w.Completion) ×
      Πʳ v : HeightOneSpectrum (𝓞 K),
        [GL (Fin n) (v.adicCompletion K), GLnLocal.integralGL (v.adicCompletion K) n] :=
  (prodEquiv K n).trans
    { toMulEquiv := MulEquiv.prodCongr (infiniteEquiv K n).toMulEquiv
        (finiteRestrictedEquiv K n).toMulEquiv
      continuous_toFun := ((infiniteEquiv K n).continuous.comp continuous_fst).prodMk
        ((finiteRestrictedEquiv K n).continuous.comp continuous_snd)
      continuous_invFun := ((infiniteEquiv K n).symm.continuous.comp continuous_fst).prodMk
        ((finiteRestrictedEquiv K n).symm.continuous.comp continuous_snd) }

theorem eventually_mem_integralGL (g : AdelicGL K n) :
    ∀ᶠ v in cofinite, (restrictedProductEquiv K n g).2 v ∈
      GLnLocal.integralGL (v.adicCompletion K) n :=
  ((restrictedProductEquiv K n g).2).2

def integralFiniteMatrices : Subring (Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K)) :=
  (RingHom.mapMatrix (GroundTheory.Global.integralFiniteAdeles (𝓞 K) K).subtype).range

theorem mem_integralFiniteMatrices {M : Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K)} :
    M ∈ integralFiniteMatrices K n ↔
      ∀ a b, M a b ∈ GroundTheory.Global.integralFiniteAdeles (𝓞 K) K := by
  constructor
  · rintro ⟨N, rfl⟩ a b
    exact (N a b).2
  · intro h
    exact ⟨Matrix.of fun a b => ⟨M a b, h a b⟩, rfl⟩

def integralFiniteGL : Subgroup (FiniteAdelicGL K n) :=
  (integralFiniteMatrices K n).toSubmonoid.units

theorem mem_integralFiniteGL_iff {g : FiniteAdelicGL K n} :
    g ∈ integralFiniteGL K n ↔
      (∀ a b, g a b ∈ GroundTheory.Global.integralFiniteAdeles (𝓞 K) K) ∧
        ∀ a b, (g⁻¹ : FiniteAdelicGL K n) a b ∈ GroundTheory.Global.integralFiniteAdeles (𝓞 K) K := by
  rw [integralFiniteGL, Submonoid.mem_units_iff, Subring.mem_toSubmonoid,
    Subring.mem_toSubmonoid, mem_integralFiniteMatrices, mem_integralFiniteMatrices]

theorem mem_integralFiniteGL_iff_forall {g : FiniteAdelicGL K n} :
    g ∈ integralFiniteGL K n ↔
      ∀ v, finiteRestrictedEquiv K n g v ∈ GLnLocal.integralGL (v.adicCompletion K) n := by
  have hinv : ∀ v a b, ((finiteRestrictedEquiv K n g v)⁻¹ : GL (Fin n) (v.adicCompletion K)) a b =
      (g⁻¹ : FiniteAdelicGL K n) a b v := fun v a b => by
    rw [← RestrictedProduct.inv_apply, ← map_inv]
    rfl
  simp only [mem_integralFiniteGL_iff, GLnLocal.mem_integralGL_iff, hinv,
    finiteRestrictedEquiv_apply, GroundTheory.Global.mem_valuationInteger_iff,
    GroundTheory.Global.mem_integralFiniteAdeles]
  constructor
  · rintro ⟨h1, h2⟩ v
    exact ⟨fun a b => h1 a b v, fun a b => h2 a b v⟩
  · intro h
    exact ⟨fun a b v => (h v).1 a b, fun a b v => (h v).2 a b⟩

theorem isOpen_integralFiniteMatrices :
    IsOpen (integralFiniteMatrices K n : Set (Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K))) := by
  have : (integralFiniteMatrices K n : Set (Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K))) =
      ⋂ a, ⋂ b, (fun M : Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K) => M a b) ⁻¹'
        (GroundTheory.Global.integralFiniteAdeles (𝓞 K) K) := by
    ext M
    simp [mem_integralFiniteMatrices]
  rw [this]
  exact isOpen_iInter_of_finite fun a => isOpen_iInter_of_finite fun b =>
    GroundTheory.Global.isOpen_integralFiniteAdeles.preimage (continuous_apply_apply a b)

theorem isCompact_integralFiniteMatrices :
    IsCompact (integralFiniteMatrices K n :
      Set (Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K))) := by
  have : (integralFiniteMatrices K n : Set (Matrix (Fin n) (Fin n) (FiniteAdeleRing (𝓞 K) K))) =
      Set.pi univ fun _ => Set.pi univ fun _ =>
        (GroundTheory.Global.integralFiniteAdeles (𝓞 K) K : Set (FiniteAdeleRing (𝓞 K) K)) := by
    exact Set.ext fun M =>
      ⟨fun h a _ b _ => (mem_integralFiniteMatrices K n).1 h a b,
        fun h => (mem_integralFiniteMatrices K n).2 fun a b => h a (mem_univ a) b (mem_univ b)⟩
  rw [this]
  exact isCompact_univ_pi fun _ => isCompact_univ_pi fun _ =>
    GroundTheory.Global.isCompact_integralFiniteAdeles K

theorem isOpen_integralFiniteGL : IsOpen (integralFiniteGL K n : Set (FiniteAdelicGL K n)) :=
  Submonoid.isOpen_units (isOpen_integralFiniteMatrices K n)

theorem isCompact_integralFiniteGL :
    IsCompact (integralFiniteGL K n : Set (FiniteAdelicGL K n)) := by
  have h := (isCompact_integralFiniteMatrices K n).prod
    (MulOpposite.opHomeomorph.symm.isCompact_preimage.2 (isCompact_integralFiniteMatrices K n))
  convert Units.isClosedEmbedding_embedProduct.isCompact_preimage h using 1
  ext u
  simp only [SetLike.mem_coe, integralFiniteGL, Submonoid.mem_units_iff, Set.mem_preimage,
    Set.mem_prod, Units.embedProduct_apply, Subring.mem_toSubmonoid]
  exact Iff.rfl

theorem totallyDisconnectedSpace_of_injective {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] [TotallyDisconnectedSpace Y] {f : X → Y} (hf : Continuous f)
    (hinj : Function.Injective f) : TotallyDisconnectedSpace X :=
  ⟨fun s _ hs => Set.subsingleton_of_image hinj s
    (isTotallyDisconnected_of_totallyDisconnectedSpace _ _ (Set.subset_univ _)
      (hs.image f hf.continuousOn))⟩

instance totallyDisconnectedSpace_finite : TotallyDisconnectedSpace (FiniteAdelicGL K n) :=
  totallyDisconnectedSpace_of_injective
    (f := fun g v => finiteRestrictedEquiv K n g v)
    (continuous_pi fun v =>
      (_root_.RestrictedProduct.continuous_eval v).comp (finiteRestrictedEquiv K n).continuous)
    fun _ _ hgh => (finiteRestrictedEquiv K n).injective
      (Subtype.ext (funext fun v => congrFun hgh v))

theorem finite_hasBasis_nhds_one :
    (𝓝 (1 : FiniteAdelicGL K n)).HasBasis
      (fun H : OpenSubgroup (FiniteAdelicGL K n) => IsCompact (H : Set (FiniteAdelicGL K n)))
      fun H => (H : Set (FiniteAdelicGL K n)) :=
  hasBasis_nhds_one_compactOpenSubgroup

def diagonal : GL (Fin n) K →* AdelicGL K n :=
  Units.map (algebraMap K 𝔸[K]).mapMatrix.toMonoidHom

@[simp]
theorem diagonal_apply (γ : GL (Fin n) K) (a b : Fin n) :
    diagonal K n γ a b = algebraMap K 𝔸[K] (γ a b) :=
  rfl

theorem diagonal_injective : Function.Injective (diagonal K n) := fun _ _ h =>
  Units.ext <| Matrix.ext fun a b =>
    NumberField.AdeleRing.algebraMap_injective (𝓞 K) K (congrArg (fun g : AdelicGL K n => g a b) h)

def rationalGL : Subgroup (AdelicGL K n) :=
  (diagonal K n).range

theorem exists_isOpen_inter_eq_zero :
    ∃ V : Set 𝔸[K], IsOpen V ∧ (0 : 𝔸[K]) ∈ V ∧ ∀ k : K, algebraMap K 𝔸[K] k ∈ V → k = 0 := by
  have := GroundTheory.Global.discreteTopology_principalSubgroup K
  obtain ⟨V, hVo, hV⟩ := isOpen_induced_iff.1
    (isOpen_discrete ({0} : Set (NumberField.AdeleRing.principalSubgroup (𝓞 K) K)))
  refine ⟨V, hVo, ?_, fun k hk => ?_⟩
  · have : (0 : NumberField.AdeleRing.principalSubgroup (𝓞 K) K) ∈ Subtype.val ⁻¹' V := by
      rw [hV]; rfl
    exact this
  · have : (⟨algebraMap K 𝔸[K] k, ⟨k, rfl⟩⟩ : NumberField.AdeleRing.principalSubgroup (𝓞 K) K) ∈
        Subtype.val ⁻¹' V := hk
    rw [hV, Set.mem_singleton_iff, Subtype.ext_iff] at this
    exact NumberField.AdeleRing.algebraMap_injective (𝓞 K) K (this.trans (map_zero _).symm)

theorem discreteTopology_rationalGL : DiscreteTopology (rationalGL K n) := by
  obtain ⟨V, hVo, hV0, hV⟩ := exists_isOpen_inter_eq_zero K
  let W : Set (AdelicGL K n) :=
    ⋂ a, ⋂ b, (fun g : AdelicGL K n => (g : AdelicMatrix K n) a b - (1 : AdelicMatrix K n) a b) ⁻¹' V
  have hWo : IsOpen W := isOpen_iInter_of_finite fun a => isOpen_iInter_of_finite fun b =>
    hVo.preimage
      ((Continuous.matrix_elem (Units.continuous_val (M := AdelicMatrix K n)) a b).sub
        continuous_const)
  refine discreteTopology_of_isOpen_singleton_one (isOpen_induced_iff.2 ⟨W, hWo, ?_⟩)
  ext ⟨g, γ, rfl⟩
  simp only [W, Set.mem_preimage, Set.mem_iInter, Set.mem_singleton_iff]
  constructor
  · intro h
    have hγ : γ = 1 := by
      have hsub : ((diagonal K n γ : AdelicGL K n) : AdelicMatrix K n) - 1 =
          (algebraMap K 𝔸[K]).mapMatrix ((γ : Matrix (Fin n) (Fin n) K) - 1) := by
        rw [map_sub, map_one]
        rfl
      refine Units.ext <| Matrix.ext fun a b => ?_
      have h1 := h a b
      rw [← Matrix.sub_apply, hsub] at h1
      have h2 := hV _ h1
      rw [Matrix.sub_apply, sub_eq_zero] at h2
      exact h2
    subst hγ
    exact Subtype.ext (map_one _)
  · intro h a b
    have : (diagonal K n γ : AdelicGL K n) = 1 := congrArg Subtype.val h
    rw [this, Units.val_one, sub_self]
    exact hV0

theorem isClosed_rationalGL : IsClosed (rationalGL K n : Set (AdelicGL K n)) :=
  have := discreteTopology_rationalGL K n
  by
    set_option synthInstance.maxHeartbeats 200000 in
      exact Subgroup.isClosed_of_discrete

end AdelicGLn

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.AdelicGLn =====

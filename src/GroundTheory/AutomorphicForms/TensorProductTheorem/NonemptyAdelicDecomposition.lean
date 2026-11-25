module

public import GroundTheory.AutomorphicForms.TensorProductTheorem.GKTensor
public import GroundTheory.AutomorphicForms.TensorProductTheorem.TwoFactorUnique
public import GroundTheory.AutomorphicForms.AdelicGLn
public import GroundTheory.AutomorphicForms.TensorProductTheorem.Restricted
public import Mathlib.RepresentationTheory.Irreducible
public import GroundTheory.AutomorphicForms.Satake
public import GroundTheory.AutomorphicForms.TensorProductTheorem.Existence
public import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.GKStable
public import GroundTheory.GlobalFields.Adele.Topology
public import GroundTheory.AutomorphicForms.AutomorphicFormSpaces
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.TypeStar
import GroundTheory.LocalFields.LocalFourierHaar
import Mathlib.RingTheory.Coalgebra.CoassocSimps
import Mathlib.Algebra.Order.Archimedean.Real.Hom

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.AutomorphicForms.TensorProductTheorem.GKMain, GroundTheory.AutomorphicForms.TensorProductTheorem.GeneralLinearIntegers, GroundTheory.AutomorphicForms.TensorProductTheorem.NonemptyAdelicDecomposition

-- ===== clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.GKMain =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.TensorProductTheorem.GKMain", "h": "module\n\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.GKTensor\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.TwoFactorUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

universe u

namespace GroundTheory.Automorphic

attribute [local instance 100] LieRing.ofAssociativeRing

open Set Module RestrictedTensor CompactRep TensorProduct

open scoped TensorProduct

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
variable {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸} {h : IsExpLieAlgebra G 𝔤} {K : Subgroup G}
  [CompactSpace K]

def IsExpLieAlgebra.GKModule.IsKAdmissible {W : Type*} [AddCommGroup W] [Module ℂ W]
    (M : h.GKModule K W) : Prop :=
  ∀ (c : Submodule (MonoidAlgebra ℂ K) M.σ.asModule)
    (hc : c ∈ isotypicComponents (MonoidAlgebra ℂ K) M.σ.asModule),
    FiniteDimensional ℂ (LinearMap.range (kProj M.isKFinite hc))

namespace GKTensor

section Smooth

variable {L : Type*} [Group L] [TopologicalSpace L] [IsTopologicalGroup L] [LocallyCompactSpace L]
  [T2Space L] [TotallyDisconnectedSpace L] {V : Type*} [AddCommGroup V] [Module ℂ V]
  {τ : Representation ℂ L V}

theorem isSmooth_mGenSubrep (hτ : IsSmooth τ) (N : Submodule ℂ V) :
    IsSmooth (mGenSubrep τ N).toRepresentation := by
  intro u
  refine Subgroup.isOpen_mono (H₁ := stabilizerOf τ (u : V)) (fun g hg => ?_) (hτ u)
  exact Subtype.ext hg

theorem isSmooth_mGenQuotRep (hτ : IsSmooth τ) (e : End ℂ V) (N : Submodule ℂ V) :
    IsSmooth (mGenQuotRep τ e N) := by
  intro q
  obtain ⟨u, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  refine Subgroup.isOpen_mono (H₁ := stabilizerOf (mGenSubrep τ N).toRepresentation u)
    (fun g hg => ?_) (isSmooth_mGenSubrep hτ N u)
  show mGenQuotRep τ e N g (Submodule.Quotient.mk u) = Submodule.Quotient.mk u
  rw [mGenQuotRep_mk, hg]

def mGenQuotMap (e : End ℂ V) (N : Submodule ℂ V) :
    Representation.IntertwiningMap (mGenSubrep τ N).toRepresentation (mGenQuotRep τ e N) where
  toLinearMap := (mGenKernel τ e N).mkQ
  isIntertwining' g := LinearMap.ext fun _ => rfl

end Smooth

variable {L : Type*} [Group L] [TopologicalSpace L] [IsTopologicalGroup L] [LocallyCompactSpace L]
  [T2Space L] [TotallyDisconnectedSpace L] {V : Type u} [AddCommGroup V] [Module ℂ V]

namespace GKLModule

variable (Mx : GKLModule h K L V)

structure Decomposition where

  W₁ : Type u

  W₂ : Type u
  [instAddCommGroup₁ : AddCommGroup W₁]
  [instModule₁ : Module ℂ W₁]
  [instAddCommGroup₂ : AddCommGroup W₂]
  [instModule₂ : Module ℂ W₂]

  π₁ : h.GKModule K W₁

  π₂ : Representation ℂ L W₂
  isIrreducible₁ : π₁.IsIrreducible
  isKAdmissible₁ : π₁.IsKAdmissible
  isIrreducible₂ : π₂.IsIrreducible
  isAdmissible₂ : GroundTheory.Automorphic.IsAdmissible π₂

  equiv : Mx.fullRep.Equiv (outerTensor π₁.rep π₂)

attribute [instance] Decomposition.instAddCommGroup₁ Decomposition.instModule₁
  Decomposition.instAddCommGroup₂ Decomposition.instModule₂



theorem nonempty_decomposition (hirr : Mx.IsIrreducible) (hadm : Mx.IsAdmissible) :
    Nonempty (Mx.Decomposition) := by
  classical
  obtain ⟨H, hHc, hHo, c, hc, N₁, N₂, hN₁H, hN₂H, hN₂c, hN₁0, hN₂0, -, hπ₁, hπ₂, hequiv⟩ :=
    Mx.exists_equiv_outerTensor_gkl hirr hadm
  have hτ := hadm.1
  have hσK := Mx.gk.isKFinite
  set e₁ := kProj hσK hc
  set e₂ := fixedEnd hτ hHc hHo
  set U₁ := mGenSubrep Mx.gk.rep N₁
  set π₁ := Mx.gk.subQuot U₁ (mGenKernel Mx.gk.rep e₁ N₁) (mGenKernel_le_comap Mx.gk.rep e₁ N₁)
  have hπ₁rep : π₁.rep = mGenQuotRep Mx.gk.rep e₁ N₁ := Mx.gk.subQuot_rep _ _ _
  set π₂ := mGenQuotRep Mx.τ e₂ N₂
  set U₂ := mGenSubrep Mx.τ N₂
  have hπ₂s : IsSmooth π₂ := isSmooth_mGenQuotRep hτ e₂ N₂

  have hU₂c : ∀ u ∈ U₂.toSubmodule, kProj hσK hc u = u := by
    let Y : Subrepresentation Mx.τ :=
      ⟨LinearMap.range (kProj hσK hc), fun g v hv => by
        obtain ⟨w, rfl⟩ := hv
        exact ⟨Mx.τ g w, kProj_comm hσK hc (fun k => (Mx.comm_σ k g).symm) w⟩⟩
    intro u hu
    obtain ⟨w, hw⟩ := mGenSubrep_le Mx.τ (X := Y) hN₂c hu
    rw [← hw, kProj_kProj]

  have hπ₂adm : GroundTheory.Automorphic.IsAdmissible π₂ := by
    refine ⟨hπ₂s, fun H' hH'c hH'o => ?_⟩
    have hfin := hadm.2 H' hH'c hH'o c hc
    have hU₂fin : FiniteDimensional ℂ (fixedVectors U₂.toRepresentation H') := by
      let f : fixedVectors U₂.toRepresentation H' →ₗ[ℂ]
          LinearMap.range (kProj hσK hc ∘ₗ (fixedVectors Mx.τ H').subtype) :=
        LinearMap.codRestrict _ (U₂.toSubmodule.subtype ∘ₗ Submodule.subtype _) fun u => by
          have hu : ((u : U₂.toSubmodule) : V) ∈ fixedVectors Mx.τ H' := fun g hg =>
            congrArg Subtype.val (u.2 g hg)
          exact ⟨⟨_, hu⟩, hU₂c _ (u : U₂.toSubmodule).2⟩
      exact Module.Finite.of_injective f fun a b hab => by
        have := congrArg Subtype.val hab
        exact Subtype.ext (Subtype.ext this)
    have hsurj := fixedMap_surjective (isSmooth_mGenSubrep hτ N₂) hπ₂s hH'c hH'o
      (f := mGenQuotMap e₂ N₂) (Submodule.mkQ_surjective _)
    exact Module.Finite.of_surjective _ hsurj

  have he₂ : IsWinProj Mx.τ e₂ := isWinProj_fixedEnd hτ hHc hHo
  have hN₂e : N₂ ≤ LinearMap.range e₂ := fun x hx =>
    ⟨x, fixedEnd_apply_of_mem hτ hHc hHo (hN₂H hx)⟩
  obtain ⟨n₂, hn₂, hn₂0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hN₂0
  set w := mGenQuotMk Mx.τ e₂ N₂ ⟨n₂, hn₂⟩
  have hw0 : w ≠ 0 := by
    intro h0
    have := mGenQuotMk_injective he₂ hN₂e (a₁ := ⟨n₂, hn₂⟩) (a₂ := 0) (by rw [map_zero]; exact h0)
    exact hn₂0 (congrArg Subtype.val this)
  have hwH : w ∈ fixedVectors π₂ H := by
    intro g hg
    show mGenQuotRep Mx.τ e₂ N₂ g (Submodule.Quotient.mk _) = Submodule.Quotient.mk _
    rw [mGenQuotRep_mk]
    congr 1
    exact Subtype.ext (hN₂H hn₂ g hg)

  have hschur : ∀ T : End ℂ ((mGenSubrep Mx.τ N₂).toSubmodule ⧸ mGenKernel Mx.τ e₂ N₂),
      (∀ b, T * π₂ b = π₂ b * T) → ∃ c : ℂ, T = c • 1 := by
    intro T hT
    haveI := hπ₂
    have hwin := isWinProj_fixedEnd hπ₂s hHc hHo
    have hfinH : FiniteDimensional ℂ (LinearMap.range (fixedEnd hπ₂s hHc hHo)) := by
      rw [range_fixedEnd]
      exact hπ₂adm.2 H hHc hHo
    have hneH : LinearMap.range (fixedEnd hπ₂s hHc hHo) ≠ ⊥ := by
      rw [range_fixedEnd]
      intro hb
      have : w ∈ (⊥ : Submodule ℂ _) := hb ▸ hwH
      exact hw0 ((Submodule.mem_bot ℂ).1 this)
    exact exists_eq_smul_of_commute hwin hneH hT (LinearMap.ext fun v =>
      (fixedEnd_comm hπ₂s hHc hHo hT v).symm)
  obtain ⟨Φ⟩ := hequiv hschur

  have hπ₁adm : π₁.IsKAdmissible := by
    intro c₁ hc₁

    let j : (U₁.toSubmodule ⧸ mGenKernel Mx.gk.rep e₁ N₁) →ₗ[ℂ] V :=
      Φ.symm.toLinearEquiv.toLinearMap ∘ₗ (TensorProduct.mk ℂ _ _).flip w
    have hj : Function.Injective j := fun a b hab => by
      have := Φ.symm.toLinearEquiv.injective hab
      have h2 : (a - b) ⊗ₜ[ℂ] w = 0 := by
        rw [TensorProduct.sub_tmul]
        exact sub_eq_zero.2 this
      by_contra hne
      exact tmul_ne_zero_of (sub_ne_zero.2 hne) hw0 h2
    have hΦs : ∀ p z, Φ.symm (outerTensor (mGenQuotRep Mx.gk.rep e₁ N₁) π₂ p z) =
        Mx.fullRep p (Φ.symm z) := fun p z =>
      Representation.IntertwiningMap.isIntertwining _ _ Φ.symm.toIntertwiningMap p z
    have hjσ : ∀ k x, j (π₁.σ k x) = Mx.gk.σ k (j x) := fun k x => by
      show Φ.symm (π₁.σ k x ⊗ₜ w) = Mx.gk.σ k (Φ.symm (x ⊗ₜ w))
      have : π₁.σ k x ⊗ₜ[ℂ] w =
          outerTensor (mGenQuotRep Mx.gk.rep e₁ N₁) π₂ (FreeMonoid.of (Sum.inr k), 1) (x ⊗ₜ w) := by
        rw [outerTensor_tmul, map_one, Module.End.one_apply]
        rfl
      rw [this, hΦs]
      show Mx.gk.rep (FreeMonoid.of (Sum.inr k)) (Mx.τ 1 _) = _
      rw [map_one, Module.End.one_apply]
      rfl
    have hjH : ∀ x, j x ∈ fixedVectors Mx.τ H := fun x g hg => by
      show Mx.τ g (Φ.symm (x ⊗ₜ w)) = Φ.symm (x ⊗ₜ w)
      have : x ⊗ₜ[ℂ] w = outerTensor (mGenQuotRep Mx.gk.rep e₁ N₁) π₂ (1, g) (x ⊗ₜ w) := by
        rw [outerTensor_tmul, map_one, Module.End.one_apply, hwH g hg]
      conv_rhs => rw [this, hΦs]
      show _ = Mx.gk.rep 1 (Mx.τ g _)
      rw [map_one, Module.End.one_apply]

    let jK : Representation.IntertwiningMap π₁.σ Mx.gk.σ :=
      ⟨j, fun k => LinearMap.ext fun x => hjσ k x⟩
    let jR := Representation.IntertwiningMap.equivLinearMapAsModule π₁.σ Mx.gk.σ jK
    obtain ⟨S, hS, rfl⟩ := hc₁

    have hjR : Function.Injective jR := hj
    let m := S.map jR
    let eS : S ≃ₗ[MonoidAlgebra ℂ K] m := Submodule.equivMapOfInjective jR hjR S
    have hm : IsSimpleModule (MonoidAlgebra ℂ K) m := by
      rw [isSimpleModule_iff_isAtom] at hS ⊢
      refine ⟨fun hb => hS.1 ?_, fun N hN => ?_⟩
      · apply Submodule.map_injective_of_injective hjR
        rw [Submodule.map_bot]
        exact hb
      · have hle : N.comap jR < S := by
          have h1 : N.comap jR ≤ S := by
            intro x hx
            obtain ⟨y, hy, hyx⟩ := hN.le hx
            rw [← hjR hyx]
            exact hy
          refine lt_of_le_of_ne h1 fun heq => hN.ne ?_
          refine le_antisymm hN.le ?_
          show S.map jR ≤ N
          rw [← heq]
          exact Submodule.map_comap_le _ _
        have := hS.2 _ hle
        refine le_antisymm (fun x hx => ?_) bot_le
        obtain ⟨y, hy, rfl⟩ := hN.le hx
        have hy' : y ∈ N.comap jR := hx
        rw [this, Submodule.mem_bot] at hy'
        rw [hy', map_zero]
        exact Submodule.zero_mem _
    set c' := isotypicComponent (MonoidAlgebra ℂ K) Mx.gk.σ.asModule m
    have hc' : c' ∈ isotypicComponents (MonoidAlgebra ℂ K) Mx.gk.σ.asModule := ⟨m, hm, rfl⟩
    have hle := LinearMap.le_comap_isotypicComponent (S := S) jR
    rw [eS.isotypicComponent_eq (M := Mx.gk.σ.asModule)] at hle
    have hfin := hadm.2 H hHc hHo c' hc'
    let f : LinearMap.range (kProj π₁.isKFinite ⟨S, hS, rfl⟩) →ₗ[ℂ]
        LinearMap.range (kProj hσK hc' ∘ₗ (fixedVectors Mx.τ H).subtype) :=
      LinearMap.codRestrict _ (j ∘ₗ Submodule.subtype _) fun x => by
        have hxself : kProj π₁.isKFinite ⟨S, hS, rfl⟩ x.1 = x.1 := by
          obtain ⟨y, hy⟩ := x.2
          rw [← hy]
          exact kProj_kProj _ _ y
        have hx := (kProj_apply_eq_self_iff π₁.isKFinite ⟨S, hS, rfl⟩).1 hxself
        have h1 : j x ∈ c' := hle hx
        exact ⟨⟨j x, hjH x⟩, (kProj_apply_eq_self_iff hσK hc').2 h1⟩
    exact Module.Finite.of_injective f fun a b hab =>
      Subtype.ext (hj (congrArg Subtype.val hab))
  have hirr₁ : π₁.IsIrreducible := by
    show π₁.rep.IsIrreducible
    rw [hπ₁rep]
    exact hπ₁
  have Φ' : Mx.fullRep.Equiv (outerTensor π₁.rep π₂) := by
    rw [hπ₁rep]
    exact Φ
  exact ⟨{
    W₁ := _
    W₂ := _
    π₁ := π₁
    π₂ := π₂
    isIrreducible₁ := hirr₁
    isKAdmissible₁ := hπ₁adm
    isIrreducible₂ := hπ₂
    isAdmissible₂ := hπ₂adm
    equiv := Φ' }⟩

namespace Decomposition

variable {Mx}

end Decomposition

end GKLModule

end GKTensor

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.GKMain =====

-- ===== clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.GeneralLinearIntegers =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.TensorProductTheorem.GeneralLinearIntegers", "h": "module\n\npublic import GroundTheory.AutomorphicForms.AdelicGLn\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.Restricted\npublic import Mathlib.RepresentationTheory.Irreducible\npublic import GroundTheory.AutomorphicForms.Satake\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.Existence\nimport GroundTheory.LocalFields.LocalFourierHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

universe u

namespace GroundTheory.Automorphic

open Filter Function Module Set NumberField IsDedekindDomain

open scoped _root_.RestrictedProduct

namespace RestrictedTensor

section Transport

variable {G₁ G₂ : Type*} [Group G₁] [Group G₂] [TopologicalSpace G₁] [TopologicalSpace G₂]
  {V : Type*} [AddCommGroup V] [Module ℂ V] {ρ : Representation ℂ G₂ V}

theorem isSmooth_comp (hρ : IsSmooth ρ) {f : G₁ →* G₂} (hf : Continuous f) :
    IsSmooth (ρ.comp f) := fun v => (hρ v).preimage hf

theorem isAdmissible_comp (hρ : IsAdmissible ρ) (e : G₁ ≃ₜ* G₂) :
    IsAdmissible (ρ.comp e.toMulEquiv.toMonoidHom) := by
  refine ⟨isSmooth_comp hρ.1 e.continuous, fun K₁ hK₁c hK₁o => ?_⟩
  have hc : IsCompact ((K₁.map e.toMulEquiv.toMonoidHom : Subgroup G₂) : Set G₂) := by
    rw [Subgroup.coe_map]
    exact hK₁c.image e.continuous
  have ho : IsOpen ((K₁.map e.toMulEquiv.toMonoidHom : Subgroup G₂) : Set G₂) := by
    rw [Subgroup.coe_map]
    exact e.toHomeomorph.isOpenMap _ hK₁o
  have := hρ.2 _ hc ho
  have heq : fixedVectors (ρ.comp e.toMulEquiv.toMonoidHom) K₁ =
      fixedVectors ρ (K₁.map e.toMulEquiv.toMonoidHom) := by
    ext x
    simp only [mem_fixedVectors, Subgroup.mem_map, MonoidHom.coe_comp, Function.comp_apply]
    constructor
    · rintro h _ ⟨k, hk, rfl⟩
      exact h k hk
    · intro h k hk
      exact h _ ⟨k, hk, rfl⟩
  rw [heq]
  exact this

theorem isIrreducible_comp (hρ : ρ.IsIrreducible) {f : G₁ →* G₂} (hf : Function.Surjective f) :
    Representation.IsIrreducible (ρ.comp f) := by
  let e : Subrepresentation (ρ.comp f) ≃o Subrepresentation ρ :=
    { toFun := fun X => ⟨X.toSubmodule, fun g x hx => by
        obtain ⟨h, rfl⟩ := hf g
        exact X.apply_mem_toSubmodule h hx⟩
      invFun := fun Y => ⟨Y.toSubmodule, fun h x hx => Y.apply_mem_toSubmodule (f h) hx⟩
      left_inv := fun X => rfl
      right_inv := fun Y => rfl
      map_rel_iff' := Iff.rfl }
  exact (OrderIso.isSimpleOrder_iff e).2 hρ

variable {W : Type*} [AddCommGroup W] [Module ℂ W] {σ : Representation ℂ G₂ W}

def equivComp (Φ : ρ.Equiv σ) (f : G₁ →* G₂) : Representation.Equiv (ρ.comp f) (σ.comp f) :=
  Representation.Equiv.mk Φ.toLinearEquiv fun g => LinearMap.ext fun x => by
    show Φ.toLinearEquiv (ρ (f g) x) = σ (f g) (Φ.toLinearEquiv x)
    exact Representation.IntertwiningMap.isIntertwining _ _ Φ.toIntertwiningMap (f g) x

def equivCompOfRightInverse {f : G₁ →* G₂} {g : G₂ →* G₁} (hfg : ∀ x, f (g x) = x) :
    ρ.Equiv ((ρ.comp f).comp g) :=
  Representation.Equiv.mk (LinearEquiv.refl ℂ V) fun x => LinearMap.ext fun y => by
    simp [hfg x]

end Transport

end RestrictedTensor

namespace AdelicGLn

open RestrictedTensor

variable (K : Type*) [Field K] [NumberField K] (n : ℕ)

theorem finrank_fixedVectors_integralGL_le_one {F : Type*} [Field F] [ValuativeRel F]
    [TopologicalSpace F] [IsNonarchimedeanLocalField F] {W : Type*} [AddCommGroup W]
    [Module ℂ W] {σ : Representation ℂ (GL (Fin n) F) W} (hσ : IsSmooth σ)
    (hirr : σ.IsIrreducible) :
    Module.finrank ℂ (fixedVectors σ (GLnLocal.integralGL F n)) ≤ 1 := by
  by_cases h : fixedVectors σ (GLnLocal.integralGL F n) = ⊥
  · rw [h, finrank_bot]
    exact zero_le_one
  · haveI := hirr
    exact (Spherical.finrank_fixedVectors_eq_one hσ h).le

instance factIsOpenIntegralGL :
    Fact (∀ v : HeightOneSpectrum (𝓞 K),
      IsOpen (GLnLocal.integralGL (v.adicCompletion K) n : Set (GL (Fin n) (v.adicCompletion K)))) :=
  ⟨fun v => GLnLocal.isOpen_integralGL _ n⟩

instance compactSpaceIntegralGL (v : HeightOneSpectrum (𝓞 K)) :
    CompactSpace (GLnLocal.integralGL (v.adicCompletion K) n) :=
  isCompact_iff_compactSpace.1 (GLnLocal.isCompact_integralGL _ n)

abbrev toRestricted : FiniteAdelicGL K n →* (Πʳ v : HeightOneSpectrum (𝓞 K),
    [GL (Fin n) (v.adicCompletion K), GLnLocal.integralGL (v.adicCompletion K) n]) :=
  (finiteRestrictedEquiv K n).toMulEquiv.toMonoidHom

variable {K n}

def adelicTensorRep {W : HeightOneSpectrum (𝓞 K) → Type*} [∀ v, AddCommGroup (W v)]
    [∀ v, Module ℂ (W v)] (π : ∀ v, Representation ℂ (GL (Fin n) (v.adicCompletion K)) (W v))
    (ξ : ∀ v, W v)
    (hξ : ∀ᶠ v in cofinite, ξ v ∈ fixedVectors (π v) (GLnLocal.integralGL (v.adicCompletion K) n)) :
    Representation ℂ (FiniteAdelicGL K n) (restrictedTensor ξ) :=
  (restrictedTensorRep π ξ hξ).comp (toRestricted K n)

section Local

variable {W : HeightOneSpectrum (𝓞 K) → Type*} [∀ v, AddCommGroup (W v)] [∀ v, Module ℂ (W v)]
  {π : ∀ v, Representation ℂ (GL (Fin n) (v.adicCompletion K)) (W v)} {ξ : ∀ v, W v}

end Local

variable {V : Type u} [AddCommGroup V] [Module ℂ V]


variable (K n) in
structure TensorDecomposition (ρ : Representation ℂ (FiniteAdelicGL K n) V) where

  W : HeightOneSpectrum (𝓞 K) → Type u
  [instAddCommGroup : ∀ v, AddCommGroup (W v)]
  [instModule : ∀ v, Module ℂ (W v)]

  π : ∀ v, Representation ℂ (GL (Fin n) (v.adicCompletion K)) (W v)

  ξ : ∀ v, W v
  mem_fixedVectors : ∀ᶠ v in cofinite,
    ξ v ∈ fixedVectors (π v) (GLnLocal.integralGL (v.adicCompletion K) n)
  ne_zero : ∀ᶠ v in cofinite, ξ v ≠ 0
  isAdmissible : ∀ v, IsAdmissible (π v)
  isIrreducible : ∀ v, (π v).IsIrreducible

  equiv : ρ.Equiv (adelicTensorRep π ξ mem_fixedVectors)

attribute [instance] TensorDecomposition.instAddCommGroup TensorDecomposition.instModule

theorem nonempty_tensorDecomposition {ρ : Representation ℂ (FiniteAdelicGL K n) V}
    (hρ : IsAdmissible ρ) (hirr : ρ.IsIrreducible) : Nonempty (TensorDecomposition K n ρ) := by
  set e := finiteRestrictedEquiv K n
  have hρ' : IsAdmissible (ρ.comp e.symm.toMulEquiv.toMonoidHom) := isAdmissible_comp hρ e.symm
  have hirr' : Representation.IsIrreducible (ρ.comp e.symm.toMulEquiv.toMonoidHom) :=
    isIrreducible_comp hirr e.symm.surjective
  obtain ⟨W, i1, i2, π, ξ, hξ, hπ, hπirr, hξ0, ⟨Φ⟩⟩ :=
    RestrictedTensor.exists_equiv_restrictedTensorRep hρ' hirr'
      (Eventually.of_forall fun v W _ _ σ hσ hσirr =>
        finrank_fixedVectors_integralGL_le_one n hσ.1 hσirr)
  exact ⟨{
    W := W
    π := π
    ξ := ξ
    mem_fixedVectors := hξ
    ne_zero := hξ0
    isAdmissible := hπ
    isIrreducible := hπirr
    equiv := (equivCompOfRightInverse (f := e.symm.toMulEquiv.toMonoidHom)
      (g := e.toMulEquiv.toMonoidHom) (fun x => e.symm_apply_apply x)).trans
      (equivComp Φ e.toMulEquiv.toMonoidHom) }⟩

namespace TensorDecomposition

variable {ρ : Representation ℂ (FiniteAdelicGL K n) V}

end TensorDecomposition

end AdelicGLn

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.GeneralLinearIntegers =====

-- ===== clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.NonemptyAdelicDecomposition =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.TensorProductTheorem.NonemptyAdelicDecomposition", "h": "module\n\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.GKMain\npublic import GroundTheory.AutomorphicForms.TensorProductTheorem.GeneralLinearIntegers\npublic import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.GKStable\npublic import GroundTheory.GlobalFields.Adele.Topology\npublic import GroundTheory.AutomorphicForms.AutomorphicFormSpaces\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

universe u

namespace GroundTheory.Automorphic

attribute [local instance 100] LieRing.ofAssociativeRing

open Set Module Filter IsDedekindDomain NumberField GKTensor RestrictedTensor

section Restrict

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
  {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸} {h : IsExpLieAlgebra G 𝔤} {K : Subgroup G}
  {V : Type*} [AddCommGroup V] [Module ℂ V]

def IsExpLieAlgebra.GKModule.restrictρ (M : h.GKModule K V) (U : Submodule ℂ V)
    (hρ : ∀ X, ∀ u ∈ U, M.ρ X u ∈ U) : h.lieSubalgebra →ₗ⁅ℝ⁆ Module.End ℂ U where
  toFun X := (M.ρ X).restrict (hρ X)
  map_add' X Y := LinearMap.ext fun u => Subtype.ext (by simp)
  map_smul' r X := LinearMap.ext fun u => Subtype.ext (by simp)
  map_lie' {X Y} := LinearMap.ext fun u => Subtype.ext (by
    simp [LieHom.map_lie, LieRing.of_associative_ring_bracket])

def IsExpLieAlgebra.GKModule.restrictσ (M : h.GKModule K V) (U : Submodule ℂ V)
    (hσ : ∀ k, ∀ u ∈ U, M.σ k u ∈ U) : Representation ℂ K U where
  toFun k := (M.σ k).restrict (hσ k)
  map_one' := LinearMap.ext fun u => Subtype.ext (by simp)
  map_mul' k₁ k₂ := LinearMap.ext fun u => Subtype.ext (by simp)

def IsExpLieAlgebra.GKModule.restrict (M : h.GKModule K V) (U : Submodule ℂ V)
    (hρ : ∀ X, ∀ u ∈ U, M.ρ X u ∈ U) (hσ : ∀ k, ∀ u ∈ U, M.σ k u ∈ U) : h.GKModule K U :=
  IsExpLieAlgebra.GKModule.comap h M U.subtype U.injective_subtype (M.restrictρ U hρ)
    (M.restrictσ U hσ) (fun _ _ => rfl) (fun _ _ => rfl)

end Restrict

namespace AutomorphicForm

variable (K : Type*) [Field K] [NumberField K] (n : ℕ)

instance compactSpace_archCompact : CompactSpace (archCompact K n) :=
  isCompact_iff_compactSpace.1 (isCompact_archCompact K n)

abbrev AdelicGKModule (V : Type*) [AddCommGroup V] [Module ℂ V] :=
  GKLModule (isExpLieAlgebra K n) (archCompact K n) (AdelicGLn.FiniteAdelicGL K n) V

variable {K n}

structure AdelicDecomposition {V : Type u} [AddCommGroup V] [Module ℂ V]
    (Mx : AdelicGKModule K n V) where

  toDecomposition : Mx.Decomposition

  finite : AdelicGLn.TensorDecomposition K n toDecomposition.π₂

theorem nonempty_adelicDecomposition {V : Type u} [AddCommGroup V] [Module ℂ V]
    (Mx : AdelicGKModule K n V) (hirr : Mx.IsIrreducible) (hadm : Mx.IsAdmissible) :
    Nonempty (AdelicDecomposition Mx) := by
  obtain ⟨D⟩ := Mx.nonempty_decomposition hirr hadm
  obtain ⟨T⟩ := AdelicGLn.nonempty_tensorDecomposition D.isAdmissible₂ D.isIrreducible₂
  exact ⟨⟨D, T⟩⟩

namespace AdelicDecomposition

variable {V : Type u} [AddCommGroup V] [Module ℂ V] {Mx : AdelicGKModule K n V}

end AdelicDecomposition


variable (K n) in
def cuspSubmodule (U : Submodule ℂ (cuspForms K n))
    (hρ : ∀ X, ∀ φ ∈ U, (gkModuleCusp K n).ρ X φ ∈ U)
    (hσ : ∀ k, ∀ φ ∈ U, (gkModuleCusp K n).σ k φ ∈ U)
    (hτ : ∀ g, ∀ φ ∈ U, finRepCusp K n g φ ∈ U) : AdelicGKModule K n U where
  gk := (gkModuleCusp K n).restrict U hρ hσ
  τ := (⟨U, hτ⟩ : Subrepresentation (finRepCusp K n)).toRepresentation
  comm_ρ X g := LinearMap.ext fun φ => Subtype.ext
    (gkModuleCusp_ρ_finRepCusp X g φ)
  comm_σ k g := LinearMap.ext fun φ => Subtype.ext
    (gkModuleCusp_σ_finRepCusp k g φ)


variable (K n) in
structure CuspidalAutomorphicRep where

  carrier : Submodule ℂ (cuspForms K n)
  stable_ρ : ∀ X, ∀ φ ∈ carrier, (gkModuleCusp K n).ρ X φ ∈ carrier
  stable_σ : ∀ k, ∀ φ ∈ carrier, (gkModuleCusp K n).σ k φ ∈ carrier
  stable_τ : ∀ g, ∀ φ ∈ carrier, finRepCusp K n g φ ∈ carrier
  isIrreducible : (cuspSubmodule K n carrier stable_ρ stable_σ stable_τ).IsIrreducible
  exists_compl : ∃ C : Submodule ℂ (cuspForms K n), IsCompl carrier C ∧
    (∀ X, ∀ φ ∈ C, (gkModuleCusp K n).ρ X φ ∈ C) ∧ (∀ k, ∀ φ ∈ C, (gkModuleCusp K n).σ k φ ∈ C) ∧
    ∀ g, ∀ φ ∈ C, finRepCusp K n g φ ∈ C

namespace CuspidalAutomorphicRep

abbrev toModule (π : CuspidalAutomorphicRep K n) : AdelicGKModule K n π.carrier :=
  cuspSubmodule K n π.carrier π.stable_ρ π.stable_σ π.stable_τ

end CuspidalAutomorphicRep

end AutomorphicForm

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.TensorProductTheorem.NonemptyAdelicDecomposition =====

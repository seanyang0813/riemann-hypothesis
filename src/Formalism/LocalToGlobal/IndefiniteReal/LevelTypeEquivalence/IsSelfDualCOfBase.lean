module

public import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
public import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.NatCastKPZero
public import Formalism.LocalToGlobal.Divisibility.LiftLat
public import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SelfDualLatticeIsSelfDual, Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsSelfDualCOfBase

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SelfDualLatticeIsSelfDual =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SelfDualLatticeIsSelfDual", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta IsDedekindDomain NumberField

namespace Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

def crd (V : HSp D) : (Fin V.rank → D.host.E) ≃ₗ[D.host.E] V.V := V.frame.equivFun.symm

def l0s (V : HSp D) : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E) :=
  V.L0.comap ((crd V).toLinearMap.restrictScalars (𝓞 D.host.E))

theorem mem_self_dual_lattice_set (V : HSp D) (x : Fin V.rank → D.host.E) : x ∈ l0s V ↔ x ∈ L0c D V := by
  simp [l0s, crd, L0c, Module.Basis.equivFun_symm_apply]

theorem hT_crd (V : HSp D) (x y : Fin V.rank → D.host.E) :
    V.hT (crd V x) (crd V y) = ∑ i, ∑ j, star (x i) * V.gram i j * y j := by

  simp only [crd, Module.Basis.equivFun_symm_apply, map_sum, LinearMap.map_smulₛₗ, LinearMap.sum_apply,
  LinearMap.smul_apply, smul_eq_mul, Finset.mul_sum, Formalism.BasicNotions.HSpace.gram]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [RingHom.id_apply, starRingEnd_apply]
  ring

theorem self_dual_lattice_is_self_dual (V : HSp D) : Datum.IsSelfDualC V (l0s V) := by
  refine ⟨?_, fun y => ?_⟩
  · have hL := V.standardTuple_isLattice
    let f : V.V ≃ₗ[D.host.E] (Fin V.rank → D.host.E) := (crd V).symm
    have heq : l0s V = V.L0.map (f.toLinearMap.restrictScalars (𝓞 D.host.E)) := by
      ext x
      simp only [l0s, Submodule.mem_comap, Submodule.mem_map, LinearMap.restrictScalars_apply, LinearEquiv.coe_coe, f]
      constructor
      · intro hx; exact ⟨crd V x, hx, by simp⟩
      · rintro ⟨z, hz, rfl⟩; simpa using hz
    rw [heq]
    refine ⟨hL.fg.map _, ?_⟩
    have hc : (↑(Submodule.map (f.toLinearMap.restrictScalars (𝓞 D.host.E)) V.L0) : Set (Fin V.rank → D.host.E)) =
        f.toLinearMap '' (V.L0 : Set V.V) := by ext; simp
    rw [hc]
    intro s hs hi
    have hi' : LinearIndependent (𝓞 D.host.E) (fun x : s => f.symm x) := by
      simpa only [Function.comp_def, id_eq, LinearMap.restrictScalars_apply, LinearEquiv.coe_coe] using
        hi.map' (f.symm.toLinearMap.restrictScalars (𝓞 D.host.E))
          (LinearMap.ker_eq_bot.mpr f.symm.injective)
    have hm : ∀ x : s, f.symm x ∈ V.L0 := by
      intro x
      obtain ⟨z, hz, hze⟩ := hs x.property
      change f z = x at hze
      rw [← hze, LinearEquiv.symm_apply_apply]
      exact hz
    let _ := hL
    have hk := Submodule.IsLattice.linearIndependent D.host.E V.L0 hm hi'
    simpa only [LinearIndepOn, Function.comp_def, id_eq, LinearEquiv.coe_coe, LinearEquiv.apply_symm_apply] using
      hk.map' f.toLinearMap (LinearMap.ker_eq_bot.mpr f.injective)
  · have key : ∀ b : 𝓞 D.host.E, LinearMap.toSpanSingleton (𝓞 D.host.E) D.host.E 1 b = (b : D.host.E) := fun b => by
      simp
    have hU := V.baseLattice_isUnimodular
    unfold Formalism.HermitianLatticesTheory.IsUnimodular Formalism.HermitianLatticesTheory.dual at hU
    constructor
    · intro hy x hx
      have hy' : crd V y ∈ Formalism.E.hdual V.hT V.L0 := by rw [hU]; exact hy
      simp only [Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap, LinearMap.restrictScalars_apply] at hy'
      obtain ⟨b, hb⟩ := hy' (crd V x) hx
      exact ⟨b, by rw [← hT_crd, ← hb, key]⟩
    · intro h
      show crd V y ∈ V.L0
      rw [← hU]
      simp only [Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap, LinearMap.restrictScalars_apply]
      intro z hz
      obtain ⟨b, hb⟩ := h ((crd V).symm z) (by simpa [l0s] using hz)
      refine ⟨b, ?_⟩
      rw [show z = crd V ((crd V).symm z) by simp, hT_crd, key]
      exact hb

end Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SelfDualLatticeIsSelfDual =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsSelfDualCOfBase =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsSelfDualCOfBase", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SelfDualLatticeIsSelfDual\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.NatCastKPZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.Divisibility.LiftLat\npublic import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR.Datum

namespace Formalism.IndefR.Eqv.KerDiag

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

theorem isSelfDualC_of_base {V : HSp D} {β : GL (Fin V.rank) (EAf D)} {Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)}
    {N : ℕ} (hB : Formalism.IndefR.Lev.IsBaseFrame V β Λ N) : IsSelfDualC V Λ := by
  obtain ⟨-, hdual, hN, hin, hout⟩ := hB
  have hN0 : (N : D.host.E) ≠ 0 := by exact_mod_cast hN.ne'
  have hl0 := (Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces.self_dual_lattice_is_self_dual V).1
  let φ : (Fin V.rank → D.host.E) →ₗ[𝓞 D.host.E] (Fin V.rank → D.host.E) := (N : 𝓞 D.host.E) • LinearMap.id
  have hφ : ∀ x, φ x = (N : D.host.E) • x := fun x => by
    simp only [φ, LinearMap.smul_apply, LinearMap.id_apply]
    rw [← algebraMap_smul D.host.E (N : 𝓞 D.host.E) x, map_natCast]
  refine ⟨⟨?_, ?_⟩, fun y => ?_⟩
  · have hφinj : Function.Injective φ := fun a b hab => by
      rw [hφ, hφ] at hab
      exact smul_right_injective _ hN0 hab
    have hle : Λ.map φ ≤ Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces.l0s V := by
      rintro _ ⟨x, hx, rfl⟩
      rw [Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces.mem_self_dual_lattice_set, hφ]
      exact hout x hx
    have : IsNoetherian (𝓞 D.host.E) (Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces.l0s V) := isNoetherian_of_fg_of_noetherian _ hl0.fg
    have h1 : ((Λ.map φ).comap (Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces.l0s V).subtype).FG := IsNoetherian.noetherian _
    have h2 := h1.map (Formalism.IndefR.Fin.SelfDualLatticeFinitePlaces.l0s V).subtype
    rw [Submodule.map_comap_eq, Submodule.range_subtype, inf_eq_right.2 hle] at h2
    exact Submodule.fg_of_fg_map_injective φ hφinj h2
  · intro s hs hli
    exact (LinearIndependent.iff_fractionRing _ _).mp hli
  · rw [Formalism.IndefR.Eqv.dual_of_dualL hdual y]
    simp only [Formalism.UG.hform, starRingEnd_apply, RingHom.mem_range]

section R

open Formalism.IndefR.Links Formalism.IndefR.Links.RealDat

variable {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
variable {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks)


end R

end Formalism.IndefR.Eqv.KerDiag

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsSelfDualCOfBase =====

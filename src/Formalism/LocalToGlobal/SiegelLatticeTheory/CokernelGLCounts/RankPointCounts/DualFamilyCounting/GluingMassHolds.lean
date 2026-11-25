module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.ExtensionIdentityOfMemCompl
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsIntegralLatOfForall
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.NondegenerateOnOrthCompl
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.LinearIndependentOrth
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.JordanExists
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.AlphaDiscriminantHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.GluingProductHolds
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.AlgebraMapIntCastSmul
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsUnimodularAtIffVd
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.LamGEqOneOfOrtho
import Formalism.HermitianLattices.HermitianLatticesProofs.AutFinite
import Formalism.HermitianLattices.HermitianLatticesProofs.MassBasic
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.JordanInvariantsHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.JordanSplittingExists
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.LocalGluingHolds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DualEquivSymmApply, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.SameGenusFixPushIff, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.PushforwardOrthComplement, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.GluingMassHolds

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DualEquivSymmApply =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DualEquivSymmApply", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.ExtensionIdentityOfMemCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module

noncomputable section

namespace Formalism.L2.SG.Pf.OrthogonalComplementGenusMass

open Formalism.HermitianLattices.Ext.L3 Formalism.L2.SG.Pf.Cnt

variable {K F V : Type} [Field K] [NumberField K] [StarRing K] [Field F] [NumberField F]
  [Algebra F K] [AddCommGroup V] [Module K V] [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]

theorem mem_dual {Y : Type} [AddCommGroup Y] [Module K Y] [Module (𝓞 K) Y] [IsScalarTower (𝓞 K) K Y]
    {B : Y →ₗ⋆[K] Y →ₗ[K] K} {L : Submodule (𝓞 K) Y} {x : Y} :
    x ∈ Formalism.HermitianLatticesTheory.dual B L ↔ ∀ y ∈ L, B y x ∈ (1 : Submodule (𝓞 K) K) := by
  simp only [Formalism.HermitianLatticesTheory.dual, Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap,
    LinearMap.restrictScalars_apply]

variable {h : V →ₗ⋆[K] V →ₗ[K] K} {X : Submodule K V}

theorem push_dualIn (L : Submodule (𝓞 K) ↥X) :
    push X (dualIn (formOn h X) ⊤ L) = dualIn h X (push X L) := by
  ext v
  constructor
  · rintro ⟨x, hx, rfl⟩
    refine ⟨x.2, mem_dual.mpr ?_⟩
    rintro _ ⟨y, hy, rfl⟩
    exact mem_dual.mp hx.2 y hy
  · rintro ⟨hvX, hv⟩
    refine ⟨⟨v, hvX⟩, ⟨by simp, mem_dual.mpr fun y hy => ?_⟩, rfl⟩
    exact mem_dual.mp hv _ (coe_mem_push.mpr hy)

variable {𝔭 : Ideal (𝓞 F)}

theorem map_incl_dual (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X) :
    (locF 𝔭 (dualIn (formOn h X) ⊤ L)).map (incl X) = locF 𝔭 (dualIn h X (push X L)) := by
  change push X _ = _
  rw [push_locF X hp, push_dualIn]

def dualEquiv (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X) :
    ↥(locF 𝔭 (dualIn (formOn h X) ⊤ L)) ≃ₗ[𝓞 K] ↥(locF 𝔭 (dualIn h X (push X L))) :=
  (Submodule.equivMapOfInjective (incl X) (incl_injective X) _).trans
    (LinearEquiv.ofEq _ _ (map_incl_dual hp L))

theorem dualEquiv_apply (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X)
    (x : ↥(locF 𝔭 (dualIn (formOn h X) ⊤ L))) :
    ((dualEquiv (h := h) hp L x : ↥(locF 𝔭 (dualIn h X (push X L)))) : V) = ((x : ↥X) : V) := rfl

theorem dualEquiv_symm_apply (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X)
    (y : ↥(locF 𝔭 (dualIn h X (push X L)))) :
    ((((dualEquiv (h := h) hp L).symm y : ↥(locF 𝔭 (dualIn (formOn h X) ⊤ L))) : ↥X) : V) = (y : V) := by
  have := dualEquiv_apply hp L ((dualEquiv (h := h) hp L).symm y)
  rw [LinearEquiv.apply_symm_apply] at this
  exact this.symm

theorem map_dualEquiv (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X) :
    ((locF 𝔭 L).comap (locF 𝔭 (dualIn (formOn h X) ⊤ L)).subtype).map
        (dualEquiv (h := h) hp L : _ →ₗ[𝓞 K] _) =
      (locF 𝔭 (push X L)).comap (locF 𝔭 (dualIn h X (push X L))).subtype := by
  rw [Submodule.map_equiv_eq_comap_symm]
  ext y
  simp only [Submodule.mem_comap, Submodule.subtype_apply]
  rw [← coe_mem_push (X := X), push_locF X hp]
  exact Iff.of_eq (congrArg (fun v => v ∈ locF 𝔭 (push X L)) (dualEquiv_symm_apply (h := h) hp L y))

def discEquiv (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X) :
    DiscMod (formOn h X) ⊤ L 𝔭 ≃ₗ[𝓞 K] DiscMod h X (push X L) 𝔭 :=
  Submodule.Quotient.equiv _ _ (dualEquiv (h := h) hp L) (map_dualEquiv (h := h) hp L)

theorem discEquiv_mk (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X)
    (x : ↥(locF 𝔭 (dualIn (formOn h X) ⊤ L))) :
    discEquiv (h := h) hp L (Submodule.Quotient.mk x) = Submodule.Quotient.mk (dualEquiv (h := h) hp L x) := rfl

theorem discEquiv_symm_mk (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X)
    (y : ↥(locF 𝔭 (dualIn h X (push X L)))) :
    (discEquiv (h := h) hp L).symm (Submodule.Quotient.mk y) =
      Submodule.Quotient.mk ((dualEquiv (h := h) hp L).symm y) := rfl

def endEquiv (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X) :
    Module.End (𝓞 K) (DiscMod (formOn h X) ⊤ L 𝔭) ≃ Module.End (𝓞 K) (DiscMod h X (push X L) 𝔭) where
  toFun P := (discEquiv (h := h) hp L : _ →ₗ[𝓞 K] _) ∘ₗ P ∘ₗ ((discEquiv (h := h) hp L).symm : _ →ₗ[𝓞 K] _)
  invFun P := ((discEquiv (h := h) hp L).symm : _ →ₗ[𝓞 K] _) ∘ₗ P ∘ₗ (discEquiv (h := h) hp L : _ →ₗ[𝓞 K] _)
  left_inv P := by
    apply LinearMap.ext
    intro z
    simp
  right_inv P := by
    apply LinearMap.ext
    intro z
    simp

theorem discAut_push (hp : 𝔭.IsPrime) (L : Submodule (𝓞 K) ↥X) :
    discAut h X (push X L) 𝔭 = discAut (formOn h X) ⊤ L 𝔭 := by
  unfold discAut
  symm
  refine Nat.card_congr (Equiv.subtypeEquiv (endEquiv (h := h) hp L) ?_)
  intro P
  constructor
  · intro H x y x' y' hx hy
    have hx' : Submodule.Quotient.mk ((dualEquiv (h := h) hp L).symm x') =
        P (Submodule.Quotient.mk ((dualEquiv (h := h) hp L).symm x)) := by
      rw [← discEquiv_symm_mk, hx, ← discEquiv_symm_mk]
      change (discEquiv (h := h) hp L).symm ((discEquiv (h := h) hp L) (P ((discEquiv (h := h) hp L).symm _))) = _
      rw [LinearEquiv.symm_apply_apply]
    have hy' : Submodule.Quotient.mk ((dualEquiv (h := h) hp L).symm y') =
        P (Submodule.Quotient.mk ((dualEquiv (h := h) hp L).symm y)) := by
      rw [← discEquiv_symm_mk, hy, ← discEquiv_symm_mk]
      change (discEquiv (h := h) hp L).symm ((discEquiv (h := h) hp L) (P ((discEquiv (h := h) hp L).symm _))) = _
      rw [LinearEquiv.symm_apply_apply]
    have := H _ _ _ _ hx' hy'
    simpa only [formOn_apply, dualEquiv_symm_apply] using this
  · intro H x y x' y' hx hy
    have hx' : Submodule.Quotient.mk (dualEquiv (h := h) hp L x') =
        (endEquiv (h := h) hp L P) (Submodule.Quotient.mk (dualEquiv (h := h) hp L x)) := by
      change _ = (discEquiv (h := h) hp L) (P ((discEquiv (h := h) hp L).symm (Submodule.Quotient.mk _)))
      rw [discEquiv_symm_mk, LinearEquiv.symm_apply_apply, ← hx, discEquiv_mk]
    have hy' : Submodule.Quotient.mk (dualEquiv (h := h) hp L y') =
        (endEquiv (h := h) hp L P) (Submodule.Quotient.mk (dualEquiv (h := h) hp L y)) := by
      change _ = (discEquiv (h := h) hp L) (P ((discEquiv (h := h) hp L).symm (Submodule.Quotient.mk _)))
      rw [discEquiv_symm_mk, LinearEquiv.symm_apply_apply, ← hy, discEquiv_mk]
    have := H _ _ _ _ hx' hy'
    simpa only [formOn_apply, dualEquiv_apply] using this

end Formalism.L2.SG.Pf.OrthogonalComplementGenusMass
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DualEquivSymmApply =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.SameGenusFixPushIff =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.SameGenusFixPushIff", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.ExtensionIdentityOfMemCompl\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsIntegralLatOfForall\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module

noncomputable section

namespace Formalism.L2.SG.Pf.OrthogonalComplementGenusMass

open Formalism.HermitianLattices.Ext.L3 Formalism.L2.SG.Pf.Cnt

variable {K F V : Type} [Field K] [NumberField K] [StarRing K] [Field F] [NumberField F]
  [Algebra F K] [AddCommGroup V] [Module K V] [FiniteDimensional K V] [Module (𝓞 K) V]
  [IsScalarTower (𝓞 K) K V] {h : V →ₗ⋆[K] V →ₗ[K] K} {U : Submodule K V}

def stabEquivW (hs : h.IsSymm) (hc : IsCompl U (orthK h U)) (N : Submodule (𝓞 K) ↥(orthK h U)) :
    stabFix h U (push (orthK h U) N) ≃ Formalism.ThetaLiftIndependence.autL (formOn h (orthK h U)) N where
  toFun g := ⟨restr g.2.1, restr_mem g.2.1, push_injective _ (by rw [← gmap_push g.2.1]; exact g.2.2)⟩
  invFun g := ⟨extId hc g.1, extId_mem hs hc g.2.1, by rw [gmap_extId_push hs hc g.2.1, g.2.2]⟩
  left_inv g := Subtype.ext (extId_restr hc g.2.1)
  right_inv g := Subtype.ext (restr_extId hs hc g.2.1)

theorem card_stab_push (hs : h.IsSymm) (hc : IsCompl U (orthK h U)) (N : Submodule (𝓞 K) ↥(orthK h U)) :
    Nat.card (stabFix h U (push (orthK h U) N)) = Nat.card (Formalism.ThetaLiftIndependence.autL (formOn h (orthK h U)) N) :=
  Nat.card_congr (stabEquivW hs hc N)

theorem sameGenusFix_push_iff (hK : Formalism.HermitianLatticesTheory.IsCMUnram K) (hF : IsFixF K F) (hs : h.IsSymm)
    (hc : IsCompl U (orthK h U)) (A B : Submodule (𝓞 K) ↥(orthK h U)) :
    SameGenusFix (F := F) h U (push (orthK h U) A) (push (orthK h U) B) ↔
      Formalism.HermitianLatticesTheory.SameGenus (formOn h (orthK h U)) A B := by
  rw [GoodGenusOrbits.sameGenus_iff (F := F) hK hF A B]
  constructor
  · intro H 𝔭
    obtain ⟨g, hg, e⟩ := H 𝔭.1 𝔭.2
    refine ⟨restr hg, restr_mem hg, push_injective _ ?_⟩
    rw [← gmap_push hg, push_locF _ 𝔭.2.isPrime, push_locF _ 𝔭.2.isPrime]
    exact e
  · intro H 𝔭 h𝔭
    obtain ⟨g, hg, e⟩ := H ⟨𝔭, h𝔭⟩
    refine ⟨extId hc g, extId_mem hs hc hg, ?_⟩
    rw [← push_locF _ h𝔭.isPrime, ← push_locF _ h𝔭.isPrime, gmap_extId_push hs hc hg]
    exact congrArg _ e

end Formalism.L2.SG.Pf.OrthogonalComplementGenusMass
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.SameGenusFixPushIff =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.PushforwardOrthComplement =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.PushforwardOrthComplement", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.ExtensionIdentityOfMemCompl\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.NondegenerateOnOrthCompl\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.AlgebraMapIntCastSmul\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsIntegralLatOfForall\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.IsUnimodularAtIffVd\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.LamGEqOneOfOrtho\nimport Formalism.HermitianLattices.HermitianLatticesProofs.AutFinite\nimport Formalism.HermitianLattices.HermitianLatticesProofs.MassBasic\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DualEquivSymmApply\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.LinearIndependentOrth\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.SameGenusFixPushIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module

noncomputable section

namespace Formalism.L2.SG.Pf.OrthogonalComplementGenusMass

open Formalism.HermitianLattices.Ext.L3 Formalism.L2.SG.Pf.Cnt Formalism.L2.SG.Pf.G9

theorem cJof_cast {F : Type} [Field F] {n n' : ℕ} (e : n' = n) (𝔭 : Ideal (𝓞 F)) (a : Fin n → 𝓞 F) :
    cJof 𝔭 (fun i : Fin n' => a (Fin.cast e i)) = cJof 𝔭 a := by
  subst e
  rfl

theorem vJof_cast {F : Type} [Field F] {n n' : ℕ} (e : n' = n) (𝔭 : Ideal (𝓞 F)) (a : Fin n → 𝓞 F) :
    vJof 𝔭 (fun i : Fin n' => a (Fin.cast e i)) = vJof 𝔭 a := by
  subst e
  rfl

variable {K F V : Type} [Field K] [NumberField K] [StarRing K] [Field F] [NumberField F]
  [Algebra F K] [AddCommGroup V] [Module K V] [FiniteDimensional K V] [Module (𝓞 K) V]
  [IsScalarTower (𝓞 K) K V] {h : V →ₗ⋆[K] V →ₗ[K] K} {U : Submodule K V}

theorem isTotPosDef_formOn (hpos : PosDefOn h (orthK h U)) :
    IsTotPosDef (formOn h (orthK h U)) :=
  fun x hx φ => hpos x x.2 (fun e => hx (Subtype.ext e)) φ

theorem jordan_data (h1 : JordanExists) (h5 : AlphaDisc) (hK : Formalism.HermitianLatticesTheory.IsCMUnram K) (hF : IsFixF K F)
    (hs : h.IsSymm) (hnd : Nondeg h) (hc : IsCompl U (orthK h U)) (hpos : PosDefOn h (orthK h U))
    (T : Submodule (𝓞 K) ↥(orthK h U)) (hT : Submodule.IsFullLattice K T)
    (hTi : Formalism.HermitianLatticesTheory.IsIntegralLat (formOn h (orthK h U)) T) (𝔭 : Ideal (𝓞 F)) (h𝔭 : 𝔭.IsMaximal) :
    vJ h (orthK h U) (push _ T) 𝔭 = vd (formOn h (orthK h U)) T 𝔭 ∧
    alphaL (formOn h (orthK h U)) T 𝔭 = (discAut h (orthK h U) (push _ T) 𝔭 : ℝ) *
      alphaStd K 𝔭 (finrank K ↥(orthK h U) - cJ h (orthK h U) (push _ T) 𝔭) ∧
    (vd (formOn h (orthK h U)) T 𝔭 = 0 → cJ h (orthK h U) (push _ T) 𝔭 = 0) := by
  have hWs := formOn_isSymm hs (orthK h U)
  have hWd := isTotPosDef_formOn hpos
  have hex : ∀ b a, IsJordanIn h (orthK h U) (push _ T) 𝔭 b a →
      vJof 𝔭 a = vd (formOn h (orthK h U)) T 𝔭 ∧
      alphaL (formOn h (orthK h U)) T 𝔭 = (discAut h (orthK h U) (push _ T) 𝔭 : ℝ) *
        alphaStd K 𝔭 (finrank K ↥(orthK h U) - cJof 𝔭 a) := by
    intro b a hb
    have hb' := isJordanIn_top h𝔭.isPrime hb
    have e1 := (h1 K F ↥(orthK h U) hK hF (formOn h (orthK h U)) hWs).2 T hT.toIsLattice 𝔭 h𝔭 _ _ hb'
    have e2 := h5 K F ↥(orthK h U) hK hF (formOn h (orthK h U)) hWs hWd T hT.toIsLattice hTi 𝔭 h𝔭 _ _ hb'
    rw [vJof_cast] at e1
    rw [cJof_cast, ← discAut_push h𝔭.isPrime] at e2
    exact ⟨e1.symm, e2⟩
  obtain ⟨b, a, hb⟩ := (h1 K F V hK hF h hs).1 (orthK h U) (push _ T) (nondegenerate_on_orth_compl hs hnd hc)
    ((isLatIn_push_iff_isLattice T).2 hT) ((isIntegralLat_push T).2 hTi) 𝔭 h𝔭
  have hvJ : vJ h (orthK h U) (push _ T) 𝔭 = vd (formOn h (orthK h U)) T 𝔭 := by
    unfold vJ
    obtain ⟨b', a', hb', e⟩ := Nat.sInf_mem (⟨_, b, a, hb, rfl⟩ :
      Set.Nonempty {v | ∃ b a, IsJordanIn h (orthK h U) (push _ T) 𝔭 b a ∧ v = vJof 𝔭 a})
    rw [e]
    exact (hex b' a' hb').1
  obtain ⟨b₀, a₀, hb₀, e₀⟩ := Nat.sInf_mem (⟨_, b, a, hb, rfl⟩ :
    Set.Nonempty {c | ∃ b a, IsJordanIn h (orthK h U) (push _ T) 𝔭 b a ∧ c = cJof 𝔭 a})
  have hcJ : cJ h (orthK h U) (push _ T) 𝔭 = cJof 𝔭 a₀ := e₀
  refine ⟨hvJ, by rw [hcJ]; exact (hex b₀ a₀ hb₀).2, fun hv => ?_⟩
  rw [hcJ]
  have h0 := (hex b₀ a₀ hb₀).1
  rw [hv] at h0
  unfold vJof at h0
  unfold cJof
  rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
  intro i _ hi
  exact hi ((Finset.sum_eq_zero_iff.mp h0) i (Finset.mem_univ _))

theorem mem_of_isLatIn {X : Submodule K V} {T : Submodule (𝓞 K) V} (hT : IsLatIn X T) :
    ∀ v ∈ T, v ∈ X := fun _ hv => hT.2 ▸ Submodule.subset_span hv

theorem genusMassW_of (h1 : JordanExists) (h5 : AlphaDisc) : GenusMassW := by
  intro K F V _ _ _ _ _ _ _ _ _ _ _ hK hF h hs hnd U hc hpos T₀ hT₀ hT₀i c hmc
  obtain ⟨T', rfl⟩ : ∃ T', push (orthK h U) T' = T₀ := ⟨_, push_pull (mem_of_isLatIn hT₀)⟩
  have hT' : Submodule.IsFullLattice K T' := (isLatIn_push_iff_isLattice T').1 hT₀
  have hT'i := (isIntegralLat_push T').1 hT₀i
  have hWs := formOn_isSymm hs (orthK h U)
  have hWd := isTotPosDef_formOn hpos
  have hMB := Formalism.HermitianLatticesTheory.massBasic K ↥(orthK h U) (formOn h (orthK h U)) hWs
    (StabilizerLattices.trace_pos hWd) T' hT'
  obtain ⟨s', hs'⟩ := hMB.1
  have hmass := hMB.2.1 s' hs'
  have hMpos := hMB.2.2
  have hMC := hmc ↥(orthK h U) (formOn h (orthK h U)) T' hWs hWd rfl hT' hT'i
  refine ⟨s'.image (push (orthK h U)), ?_, ?_, ?_, ?_⟩
  · intro T hT
    obtain ⟨N, hN, rfl⟩ := Finset.mem_image.mp hT
    have hg := hs'.1 N hN
    exact ⟨(isLatIn_push_iff_isLattice N).2 hg.1, (sameGenusFix_push_iff hK hF hs hc T' N).2 hg.2⟩
  · intro T hT hgen
    obtain ⟨N, rfl⟩ : ∃ N, push (orthK h U) N = T := ⟨_, push_pull (mem_of_isLatIn hT)⟩
    have hN : N ∈ Formalism.HermitianLatticesTheory.genus (formOn h (orthK h U)) T' :=
      ⟨(isLatIn_push_iff_isLattice N).1 hT, (sameGenusFix_push_iff hK hF hs hc T' N).1 hgen⟩
    obtain ⟨N₁, ⟨hN₁, g, hg, hgN⟩, huniq⟩ := hs'.2 N hN
    refine ⟨push _ N₁, ⟨Finset.mem_image_of_mem _ hN₁, extId hc g, extId_mem hs hc hg, ?_⟩, ?_⟩
    · rw [gmap_extId_push hs hc hg, hgN]
    · rintro T₂ ⟨hT₂, g₂, hg₂, e₂⟩
      obtain ⟨N₂, hN₂, rfl⟩ := Finset.mem_image.mp hT₂
      have e : N₂ = N₁ := huniq N₂ ⟨hN₂, restr hg₂, restr_mem hg₂,
        push_injective _ (by rw [← gmap_push hg₂, e₂])⟩
      rw [e]
  · intro T hT _
    obtain ⟨N, rfl⟩ : ∃ N, push (orthK h U) N = T := ⟨_, push_pull (mem_of_isLatIn hT)⟩
    have hfin := Formalism.HermitianLatticesTheory.autFinite K ↥(orthK h U) (formOn h (orthK h U)) hWs (StabilizerLattices.trace_pos hWd) N
      ((isLatIn_push_iff_isLattice N).1 hT)
    have : Finite ↥(Formalism.ThetaLiftIndependence.autL (formOn h (orthK h U)) N) := hfin.to_subtype
    exact Set.finite_coe_iff.mp (Finite.of_equiv _ (stabEquivW hs hc N).symm)
  · rw [Finset.sum_image (fun x _ y _ e => push_injective _ e)]
    simp_rw [card_stab_push hs hc]
    rw [← hmass, hMC]
    have hZ := finite_vd_ne_zero hK hF hWs hWd hT' hT'i
    set Z := hZ.toFinset with hZdef
    have hout : ∀ 𝔭 : {𝔭 : Ideal (𝓞 F) // 𝔭.IsMaximal}, 𝔭 ∉ Z →
        vd (formOn h (orthK h U)) T' 𝔭.1 = 0 := fun 𝔭 h𝔭 => by
      rw [hZdef, Set.Finite.mem_toFinset] at h𝔭
      exact not_not.mp h𝔭
    have hlam₀ : ∀ 𝔭 ∉ Z, lamP (formOn h (orthK h U)) T' 𝔭.1 = 1 :=
      fun 𝔭 h𝔭 => localMassFactor_of_valuation_eq_zero hK hF hWs hWd hT' hT'i 𝔭.2 (hout 𝔭 h𝔭)
    have hjd := fun 𝔭 : {𝔭 : Ideal (𝓞 F) // 𝔭.IsMaximal} =>
      jordan_data h1 h5 hK hF hs hnd hc hpos T' hT' hT'i 𝔭.1 𝔭.2
    have hlam : ∀ 𝔭 : {𝔭 : Ideal (𝓞 F) // 𝔭.IsMaximal},
        lamP (formOn h (orthK h U)) T' 𝔭.1 =
          alphaStd K 𝔭.1 (finrank K ↥(orthK h U)) *
            (Ideal.absNorm 𝔭.1 : ℝ) ^ (finrank K ↥(orthK h U) * vd (formOn h (orthK h U)) T' 𝔭.1) /
          ((discAut h (orthK h U) (push _ T') 𝔭.1 : ℝ) *
            alphaStd K 𝔭.1 (finrank K ↥(orthK h U) - cJ h (orthK h U) (push _ T') 𝔭.1)) := by
      intro 𝔭
      unfold lamP
      rw [(hjd 𝔭).2.1]
    have hD1 : ∀ 𝔭 ∉ Z, discAut h (orthK h U) (push _ T') 𝔭.1 = 1 := by
      intro 𝔭 h𝔭
      have hv := hout 𝔭 h𝔭
      have hl := hlam₀ 𝔭 h𝔭
      rw [hlam 𝔭, hv, (hjd 𝔭).2.2 hv, Nat.sub_zero, mul_zero, pow_zero, mul_one] at hl
      have hA := (alphaStd_pos hK hF 𝔭.2 (finrank K ↥(orthK h U))).ne'
      have hDA : (discAut h (orthK h U) (push _ T') 𝔭.1 : ℝ) *
          alphaStd K 𝔭.1 (finrank K ↥(orthK h U)) ≠ 0 := fun e => by
        rw [e, div_zero] at hl
        exact zero_ne_one hl
      have e := (div_eq_one_iff_eq hDA).mp hl
      have e' : (discAut h (orthK h U) (push _ T') 𝔭.1 : ℝ) = 1 :=
        mul_right_cancel₀ hA (by rw [one_mul]; exact e.symm)
      exact_mod_cast e'
    have e1 : ∏' 𝔭 : {𝔭 : Ideal (𝓞 F) // 𝔭.IsMaximal}, discAut h (orthK h U) (push _ T') 𝔭.1 =
        ∏ 𝔭 ∈ Z, discAut h (orthK h U) (push _ T') 𝔭.1 := tprod_eq_prod hD1
    have e2 : lamG F (formOn h (orthK h U)) T' = ∏ 𝔭 ∈ Z, lamP (formOn h (orthK h U)) T' 𝔭.1 := by
      unfold lamG
      exact tprod_eq_prod hlam₀
    have e3 : nM F h (orthK h U) (push _ T') =
        ∏ 𝔭 ∈ Z, (Ideal.absNorm 𝔭.1 : ℝ) ^ vd (formOn h (orthK h U)) T' 𝔭.1 := by
      unfold nM
      simp_rw [fun 𝔭 : {𝔭 : Ideal (𝓞 F) // 𝔭.IsMaximal} => (hjd 𝔭).1]
      exact tprod_eq_prod fun 𝔭 h𝔭 => by rw [hout 𝔭 h𝔭, pow_zero]
    have e4 : ∏' 𝔭 : {𝔭 : Ideal (𝓞 F) // 𝔭.IsMaximal}, alphaStd K 𝔭.1 (finrank K ↥(orthK h U)) /
          alphaStd K 𝔭.1 (finrank K ↥(orthK h U) - cJ h (orthK h U) (push _ T') 𝔭.1) =
        ∏ 𝔭 ∈ Z, alphaStd K 𝔭.1 (finrank K ↥(orthK h U)) /
          alphaStd K 𝔭.1 (finrank K ↥(orthK h U) - cJ h (orthK h U) (push _ T') 𝔭.1) :=
      tprod_eq_prod fun 𝔭 h𝔭 => by
        rw [(hjd 𝔭).2.2 (hout 𝔭 h𝔭), Nat.sub_zero,
          div_self (alphaStd_pos hK hF 𝔭.2 (finrank K ↥(orthK h U))).ne']
    have hDne : ∀ 𝔭 ∈ Z, (discAut h (orthK h U) (push _ T') 𝔭.1 : ℝ) ≠ 0 := by
      intro 𝔭 h𝔭 e
      have h0 : lamP (formOn h (orthK h U)) T' 𝔭.1 = 0 := by rw [hlam 𝔭, e, zero_mul, div_zero]
      have : Formalism.HermitianLatticesTheory.mass (formOn h (orthK h U)) T' = 0 := by
        rw [hMC, e2, Finset.prod_eq_zero h𝔭 h0, mul_zero]
      linarith
    have key : ∀ 𝔭 ∈ Z, (discAut h (orthK h U) (push _ T') 𝔭.1 : ℝ) * lamP (formOn h (orthK h U)) T' 𝔭.1 =
        ((Ideal.absNorm 𝔭.1 : ℝ) ^ vd (formOn h (orthK h U)) T' 𝔭.1) ^ finrank K ↥(orthK h U) *
          (alphaStd K 𝔭.1 (finrank K ↥(orthK h U)) /
            alphaStd K 𝔭.1 (finrank K ↥(orthK h U) - cJ h (orthK h U) (push _ T') 𝔭.1)) := by
      intro 𝔭 h𝔭
      have hB := (alphaStd_pos hK hF 𝔭.2
        (finrank K ↥(orthK h U) - cJ h (orthK h U) (push _ T') 𝔭.1)).ne'
      rw [hlam 𝔭, ← pow_mul, mul_comm (vd _ _ _) (finrank K _)]
      field_simp [hDne 𝔭 h𝔭, hB]
    rw [e1, e2, e3, e4, Nat.cast_prod, ← Finset.prod_pow]
    calc (∏ 𝔭 ∈ Z, (discAut h (orthK h U) (push _ T') 𝔭.1 : ℝ)) *
          (c * ∏ 𝔭 ∈ Z, lamP (formOn h (orthK h U)) T' 𝔭.1)
        = c * ∏ 𝔭 ∈ Z, ((discAut h (orthK h U) (push _ T') 𝔭.1 : ℝ) *
            lamP (formOn h (orthK h U)) T' 𝔭.1) := by
          rw [Finset.prod_mul_distrib]
          ring
      _ = _ := by
          rw [Finset.prod_congr rfl key, Finset.prod_mul_distrib]
          ring

end Formalism.L2.SG.Pf.OrthogonalComplementGenusMass

namespace Formalism.L2.SG.Pf.Cnt

theorem genusMassW_of (h1 : JordanExists) (h5 : AlphaDisc) : GenusMassW :=
  OrthogonalComplementGenusMass.genusMassW_of h1 h5

theorem glueMass_of' (h1 : JordanExists) (h2 : JordanInv) (h5 : AlphaDisc) (h6 : GlueLoc)
    (h8 : GlueProd) : GlueMass :=
  glueMass_of h1 h2 h6 h8 (OrthogonalComplementGenusMass.genusMassW_of h1 h5)

end Formalism.L2.SG.Pf.Cnt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.PushforwardOrthComplement =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.GluingMassHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.GluingMassHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.JordanExists\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.AlphaDiscriminantHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.GluingProductHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.JordanInvariantsHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.JordanSplittingExists\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.LocalGluingHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.PushforwardOrthComplement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.Cnt

theorem gluing_mass_holds : GlueMass :=
  glueMass_of' jordan_splitting_exists jordan_invariants_holds alpha_discriminant_holds local_gluing_holds gluing_product_holds

end Formalism.L2.SG.Pf.Cnt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.GluingMassHolds =====

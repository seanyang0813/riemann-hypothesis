module

public import Formalism.LocalToGlobal.Divisibility.ConstantGeTwentyEight
public import Formalism.LocalToGlobal.Columns.HeckeInert
public import Formalism.LocalToGlobal.Divisibility.Inputs
public import Formalism.LocalRingCardinality.DataDIVDefs
public import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsNsmulMem
public import Formalism.HarderNarasimhan.Statement
public import Formalism.HarderNarasimhan.HarderNarasimhanProofs.Rerealize
public import Formalism.LocalRingCardinality.DataArith
public import Formalism.HarderNarasimhan.HarderNarasimhanProofs.ExistsSmulMemOfFinrankEq
public import Formalism.HarderNarasimhan.HarderNarasimhanProofs.SlopeIneqMean
public import Formalism.SharpRestriction.Divisibility.HookProducts.RBTieOp
public import Formalism.SharpRestriction.Divisibility.HookProducts.RBTieFrame
public import Formalism.LocalToGlobal.Divisibility.NumbersLink
public import Formalism.SharpRestriction.GlobalTheoremInputs
public import Formalism.LocalToGlobal.GroupLattices.ServJointF
public import Formalism.LocalToGlobal.Divisibility.DivisionHeightBoundStatement
public import Formalism.LocalToGlobal.Divisibility.NumbersLemmas
public import Formalism.SharpRestriction.AdmissibleParameterJoins
public import Formalism.SharpRestriction.Divisibility.ClosedSizeLink.DivisionAdmissibleFamilyOfData
public import Formalism.SharpRestriction.Divisibility.WeightDegreeSizes
import Formalism.LocalRingCardinality.DataAmbForm
import Formalism.LocalToGlobal.Divisibility.ClassSum
import Mathlib.Tactic.Linter.Style
import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
import Formalism.LocalToGlobal.GroupLattices.JointServices.ValIntNonneg
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.Divisibility.LinkDIVL2R3Col, Formalism.LocalToGlobal.GroupLattices.JointServices.ShiftIdealSgFl, Formalism.SharpRestriction.Divisibility.HookProducts.RBTieSlope, Formalism.SharpRestriction.Divisibility.HookProducts.RBTieMu, Formalism.LocalToGlobal.Divisibility.RecBridge

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.LinkDIVL2R3Col =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.LinkDIVL2R3Col", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.ConstantGeTwentyEight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.Columns.HeckeInert\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder

noncomputable section

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.LinkDIVL2R3Col =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.JointServices.ShiftIdealSgFl =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.JointServices.ShiftIdealSgFl", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.Inputs\npublic import Formalism.LocalRingCardinality.DataDIVDefs\npublic import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsNsmulMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.DataAmbForm\nimport Formalism.LocalToGlobal.Divisibility.ClassSum\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.L2.DIV Formalism.L2.Indef Formalism.HermitianLatticesTheory

noncomputable section

namespace Formalism.L2.G.ServJoint

variable {D : D7}

def sgFl (L : SizeData₂ D) (u : D.what₂.Word) (z : HeightOneSpectrum (𝓞 D.what₂.LL)) : ℝ :=
  ((⌊ur D (D.plEq.symm z) (L.sg u (D.plEq.symm z))⌋ : ℤ) : ℝ)

theorem sg_off (L : SizeData₂ D) (u : D.what₂.Word) (w : D.what₂.places.Pl) (hw : w ∉ L.supp) : L.sg u w = 0 := by
  unfold SizeData₂.sg
  refine Finset.sum_eq_zero fun j _ => ?_
  have h1 : L.gain j w = 0 := L.gain_supp j w hw
  have h2 := L.F_supp j w hw
  have h3 := L.E_supp u j w hw
  simp [SizeData₂.gainD, h1, h2, h3]

theorem shiftZ_sgFl (L : SizeData₂ D) (u : D.what₂.Word) (z : HeightOneSpectrum (𝓞 D.what₂.LL)) :
    shiftZ (sgFl L u) z = ⌊ur D (D.plEq.symm z) (L.sg u (D.plEq.symm z))⌋ := by
  first
  | (simp [shiftZ, sgFl])

theorem shiftIdeal_sgFl (L : SizeData₂ D) (u : D.what₂.Word) : Formalism.DivisionValues.shiftIdeal (shiftZ (sgFl L u)) = Iu D L u := by
  unfold Formalism.DivisionValues.shiftIdeal Iu
  rw [finprod_eq_prod_of_mulSupport_subset (s := L.supp.map D.plEq.toEmbedding)]
  · rw [Finset.prod_map]
    refine Finset.prod_congr rfl fun w _ => ?_
    simp [shiftZ_sgFl]
  · intro z hz
    rw [Function.mem_mulSupport] at hz
    rw [Finset.coe_map, Set.mem_image]
    refine ⟨D.plEq.symm z, ?_, by simp⟩
    by_contra h
    apply hz
    rw [shiftZ_sgFl, sg_off L u _ h]
    simp [ur]

theorem Iu_ne_zero (L : SizeData₂ D) (u : D.what₂.Word) : Iu D L u ≠ 0 := by
  unfold Iu
  rw [Finset.prod_ne_zero_iff]
  intro x _
  apply zpow_ne_zero
  first
  | exact FractionalIdeal.coeIdeal_ne_zero.mpr (D.plEq x).ne_bot

theorem nu_map_eq (L : SizeData₂ D) (hN : NprimeDef D L) (u : D.what₂.Word) {d : ℕ}
    (e : (Fin d → D.what₂.LL) ≃ₗ[D.what₂.LL] (D.div.Nu u).V) (NuC Nu : Submodule (𝓞 D.what₂.LL) (Fin d → D.what₂.LL))
    (hlat : (D.div.Nu u).L = NuC.map ((e : (Fin d → D.what₂.LL) →ₗ[D.what₂.LL] (D.div.Nu u).V).restrictScalars (𝓞 D.what₂.LL)))
    (hshift : NuC = shiftLat Nu (sgFl L u)) :
    Nu.map ((e : (Fin d → D.what₂.LL) →ₗ[D.what₂.LL] (D.div.Nu u).V).restrictScalars (𝓞 D.what₂.LL)) = L.NuLat u := by
  set f := ((e : (Fin d → D.what₂.LL) →ₗ[D.what₂.LL] (D.div.Nu u).V).restrictScalars (𝓞 D.what₂.LL)) with hf

  have hmap : ∀ (I : Submodule (𝓞 D.what₂.LL) D.what₂.LL) (N : Submodule (𝓞 D.what₂.LL) (Fin d → D.what₂.LL)),
      (Formalism.HermitianLatticesTheory.idealSmul I N).map f = Formalism.HermitianLatticesTheory.idealSmul I (N.map f) := by
    intro I N
    unfold Formalism.HermitianLatticesTheory.idealSmul
    rw [Submodule.map_span]
    congr 1
    ext z
    constructor
    · rintro ⟨_, ⟨a, ha, x, hx, rfl⟩, rfl⟩
      exact ⟨a, ha, f x, Submodule.mem_map_of_mem hx, by simp [hf]⟩
    · rintro ⟨a, ha, _, ⟨x, hx, rfl⟩, rfl⟩
      exact ⟨a • x, ⟨a, ha, x, hx, rfl⟩, by simp [hf]⟩
  have hN' : (D.div.Nu u).L = Formalism.HermitianLatticesTheory.idealSmul (Iu D L u : Submodule (𝓞 D.what₂.LL) D.what₂.LL) (L.NuLat u) := by
    rw [hN u]
    rfl
  have h1 : Formalism.HermitianLatticesTheory.idealSmul (Iu D L u : Submodule (𝓞 D.what₂.LL) D.what₂.LL) (Nu.map f) =
      Formalism.HermitianLatticesTheory.idealSmul (Iu D L u : Submodule (𝓞 D.what₂.LL) D.what₂.LL) (L.NuLat u) := by
    rw [← hmap, ← hN', hlat, hshift, shiftLat, shiftIdeal_sgFl]
  have hIu : Iu D L u ≠ 0 := Iu_ne_zero L u
  have hone : ∀ X : Submodule (𝓞 D.what₂.LL) (D.div.Nu u).V,
      Formalism.HermitianLatticesTheory.idealSmul ((((Iu D L u)⁻¹ * Iu D L u : FractionalIdeal (nonZeroDivisors (𝓞 D.what₂.LL)) D.what₂.LL)) :
        Submodule (𝓞 D.what₂.LL) D.what₂.LL) X = X := by
    intro X
    rw [inv_mul_cancel₀ hIu, FractionalIdeal.coe_one, Formalism.LFunctionChainParameters.slopeLatticeData.idealSmul_one]
  rw [← hone (Nu.map f), ← hone (L.NuLat u), FractionalIdeal.coe_mul, Formalism.LFunctionChainParameters.slopeLatticeData.idealSmul_mul,
    Formalism.LFunctionChainParameters.slopeLatticeData.idealSmul_mul, h1]

theorem nu_into (L : SizeData₂ D) (hN : NprimeDef D L) (u : D.what₂.Word) {d : ℕ}
    (e : (Fin d → D.what₂.LL) ≃ₗ[D.what₂.LL] (D.div.Nu u).V) (NuC Nu : Submodule (𝓞 D.what₂.LL) (Fin d → D.what₂.LL))
    (hlat : (D.div.Nu u).L = NuC.map ((e : (Fin d → D.what₂.LL) →ₗ[D.what₂.LL] (D.div.Nu u).V).restrictScalars (𝓞 D.what₂.LL)))
    (hshift : NuC = shiftLat Nu (sgFl L u)) : ∀ x ∈ Nu, e x ∈ L.NuLat u := by
  intro x hx
  rw [← nu_map_eq L hN u e NuC Nu hlat hshift]
  exact Submodule.mem_map_of_mem hx

end Formalism.L2.G.ServJoint

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.JointServices.ShiftIdealSgFl =====

-- ===== clump member: Formalism.SharpRestriction.Divisibility.HookProducts.RBTieSlope =====
-- clump-header: {"m": "Formalism.SharpRestriction.Divisibility.HookProducts.RBTieSlope", "h": "module\n\npublic import Formalism.HarderNarasimhan.Statement\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.Rerealize\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module

noncomputable section

namespace Formalism.MainNotions.DIV.HookProducts.RBTie

theorem slope_eq_of_norm_eq {R V E F : Type*} [Ring R] [AddCommGroup V] [Module R V]
    [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
    [NormedAddCommGroup F] [InnerProductSpace ℝ F] [FiniteDimensional ℝ F]
    (ρ : V →+ E) (ρ₂ : V →+ F) (hn : ∀ x, ‖ρ₂ x‖ = ‖ρ x‖) (N : Submodule R V) :
    Formalism.HN.slope ρ₂ N = Formalism.HN.slope ρ N := by
  classical
  have memL : ∀ y : E, y ∈ Formalism.HN.zl ρ N ↔ ∃ x ∈ N.toAddSubgroup, ρ x = y := by
    intro y
    show y ∈ (N.toAddSubgroup.map ρ) ↔ _
    exact AddSubgroup.mem_map
  have memM : ∀ y : F, y ∈ Formalism.HN.zl ρ₂ N ↔ ∃ x ∈ N.toAddSubgroup, ρ₂ x = y := by
    intro y
    show y ∈ (N.toAddSubgroup.map ρ₂) ↔ _
    exact AddSubgroup.mem_map
  let pre : Formalism.HN.zl ρ N → V := fun y => Classical.choose ((memL y).1 y.2)
  have pre_mem : ∀ y, pre y ∈ N.toAddSubgroup := fun y =>
    (Classical.choose_spec ((memL y).1 y.2)).1
  have pre_eq : ∀ y, ρ (pre y) = y := fun y => (Classical.choose_spec ((memL y).1 y.2)).2
  let f0 : Formalism.HN.zl ρ N →+ Formalism.HN.zl ρ₂ N :=
    AddMonoidHom.mk' (fun y => ⟨ρ₂ (pre y), (memM _).2 ⟨pre y, pre_mem y, rfl⟩⟩) (by
      intro y z
      apply Subtype.ext
      show ρ₂ (pre (y + z)) = ρ₂ (pre y) + ρ₂ (pre z)
      rw [← map_add (f := _)]
      apply Formalism.HN.Rerealization.eq_of_eq ρ ρ₂ hn
      rw [map_add (f := _), pre_eq, pre_eq, pre_eq]
      rfl)
  have f0_apply : ∀ y, ((f0 y : Formalism.HN.zl ρ₂ N) : F) = ρ₂ (pre y) := fun y => rfl
  have f0_norm : ∀ y, ‖((f0 y : Formalism.HN.zl ρ₂ N) : F)‖ = ‖(y : E)‖ := by
    intro y
    rw [f0_apply, hn, pre_eq]
  have hinj : Function.Injective f0 := by
    rw [injective_iff_map_eq_zero]
    intro y hy
    have h0 : ‖(y : E)‖ = 0 := by
      rw [← f0_norm, hy]
      simp
    exact Subtype.ext (norm_eq_zero.1 h0)
  have hsurj : Function.Surjective f0 := by
    rintro ⟨z, hz⟩
    obtain ⟨x, hx, rfl⟩ := (memM z).1 hz
    refine ⟨⟨ρ x, (memL _).2 ⟨x, hx, rfl⟩⟩, Subtype.ext ?_⟩
    rw [f0_apply]
    exact Formalism.HN.Rerealization.eq_of_eq ρ ρ₂ hn (pre_eq _)
  let e : Formalism.HN.zl ρ N ≃+ Formalism.HN.zl ρ₂ N := AddEquiv.ofBijective f0 ⟨hinj, hsurj⟩
  have e_norm : ∀ y, ‖e y‖ = ‖y‖ := fun y => f0_norm y
  have e_symm_norm : ∀ z, ‖e.symm z‖ = ‖z‖ := by
    intro z
    rw [← e_norm (e.symm z), e.apply_symm_apply]
  have iso : Isometry e := AddMonoidHomClass.isometry_of_norm e e_norm
  have iso_symm : Isometry e.symm := AddMonoidHomClass.isometry_of_norm e.symm e_symm_norm
  have hiff : DiscreteTopology (Formalism.HN.zl ρ N) ↔ DiscreteTopology (Formalism.HN.zl ρ₂ N) := by
    constructor
    · intro h
      exact iso_symm.isEmbedding.discreteTopology
    · intro h
      exact iso.isEmbedding.discreteTopology
  have hrk : Formalism.F.rk (Formalism.HN.zl ρ₂ N) = Formalism.F.rk (Formalism.HN.zl ρ N) := by
    unfold Formalism.F.rk
    exact e.toIntLinearEquiv.finrank_eq.symm
  have hcov : Formalism.F.covol (Formalism.HN.zl ρ₂ N) = Formalism.F.covol (Formalism.HN.zl ρ N) := by
    by_cases h : DiscreteTopology (Formalism.HN.zl ρ N)
    · exact (Formalism.HN.Rerealization.covol_rk_eq ρ ρ₂ hn N.toAddSubgroup h (hiff.1 h)).1
    · have h' : ¬ DiscreteTopology (Formalism.HN.zl ρ₂ N) := fun h' => h (hiff.2 h')
      unfold Formalism.F.covol
      rw [dite_eq_right h, dite_eq_right h']
  unfold Formalism.HN.slope Formalism.F.slope Formalism.F.deg
  rw [hcov, hrk]

end Formalism.MainNotions.DIV.HookProducts.RBTie
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.Divisibility.HookProducts.RBTieSlope =====

-- ===== clump member: Formalism.SharpRestriction.Divisibility.HookProducts.RBTieMu =====
-- clump-header: {"m": "Formalism.SharpRestriction.Divisibility.HookProducts.RBTieMu", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataArith\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.ExistsSmulMemOfFinrankEq\npublic import Formalism.HarderNarasimhan.HarderNarasimhanProofs.SlopeIneqMean\npublic import Formalism.SharpRestriction.Divisibility.HookProducts.RBTieOp\npublic import Formalism.SharpRestriction.Divisibility.HookProducts.RBTieSlope\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.Divisibility.HookProducts.RBTieFrame\n\n"}
section -- clump:auto
@[expose] public section

open Matrix NumberField Module

noncomputable section

namespace Formalism.MainNotions.DIV.HookProducts.RBTie

section Mu

variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem mem_dualLat_iff {V : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]
    (A : Submodule (𝓞 K) V) (f : Module.Dual K V) :
    f ∈ Formalism.HN.dualLat A ↔ ∀ x ∈ A, f x ∈ Set.range (algebraMap (𝓞 K) K) := Iff.rfl

theorem cnorm_isom {m n : Type} [Fintype m] [DecidableEq m] [Fintype n] [DecidableEq n] (W : Matrix m n ℂ)
    (hW : Wᴴ * W = 1) (c : n → ℂ) : Formalism.HermitianLatticesTheory.cnorm (W *ᵥ c) = Formalism.HermitianLatticesTheory.cnorm c := by
  have key : ∀ {ι : Type} [Fintype ι] (u : ι → ℂ), ((∑ i, ‖u i‖ ^ 2 : ℝ) : ℂ) = star u ⬝ᵥ u := by
    intro ι _ u
    push_cast
    simp only [dotProduct, Pi.star_apply, Complex.star_def, Complex.conj_mul']
  unfold Formalism.HermitianLatticesTheory.cnorm
  congr 1
  have h : ((∑ i, ‖(W *ᵥ c) i‖ ^ 2 : ℝ) : ℂ) = ((∑ i, ‖c i‖ ^ 2 : ℝ) : ℂ) := by
    rw [key, key, Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, hW,
      Matrix.one_mulVec]
  exact_mod_cast h

theorem muDual_tie (A : Formalism.BasicNotions.HLat K) {n : ℕ} (L : Submodule (𝓞 K) (Fin n → K))
    (XE : InfinitePlace K → Matrix (Fin n) (Fin n) ℂ) (e : (Fin n → K) ≃ₗ[K] A.V)
    (hlat : A.L = L.map ((e : (Fin n → K) →ₗ[K] A.V).restrictScalars (𝓞 K)))
    (hmet : ∀ v x y, Formalism.HermitianLatticesTheory.majAt A.b A.X v (e x) (e y) = Formalism.HermitianLatticesTheory.majAt (Pi.basisFun K (Fin n)) XE v x y)
    (hXA : ∀ v, IsUnit (A.X v).det) (hXE : ∀ v, IsUnit (XE v).det) :
    Formalism.HN.muDef (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) (Formalism.HN.dualLat L) = A.muDual := by
  set ψ : Module.Dual K (Fin n → K) →ₗ[K] Module.Dual K A.V := Module.Dual.transpose e.symm.toLinearMap with hψ
  have hψx : ∀ f x, ψ f x = f (e.symm x) := fun f x => by simp [hψ, Module.Dual.transpose_apply]

  have hnA : ∀ v f, Formalism.HermitianLatticesTheory.normAt A.b.dualBasis (Formalism.HN.dualFrame A.X) v (ψ f) =
      Formalism.HermitianLatticesTheory.normAt (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) v f := by
    intro v f
    have hv := vecAt_map (Pi.basisFun K (Fin n)).dualBasis A.b.dualBasis v ψ f
    have hT : LinearMap.toMatrix (Pi.basisFun K (Fin n)).dualBasis A.b.dualBasis ψ =
        (LinearMap.toMatrix A.b (Pi.basisFun K (Fin n)) e.symm.toLinearMap)ᵀ := by
      rw [hψ, LinearMap.toMatrix_transpose]
    have hW : ((A.X v)ᵀ * (cQ A.b e v)ᵀ) = ((cU A.b A.X XE e v)ᴴ)ᵀ * (XE v)ᵀ := by
      rw [← Matrix.transpose_mul, ← Matrix.transpose_mul, cQ_mul_XA A.b A.X XE e v hmet (hXA v) (hXE v)]
    simp only [Formalism.HermitianLatticesTheory.normAt, Formalism.HermitianLatticesTheory.fcoord]
    rw [hv, hT, dualFrame_inv A.X v (hXA v), dualFrame_inv XE v (hXE v), Matrix.mulVec_mulVec]
    have hQ : (LinearMap.toMatrix A.b (Pi.basisFun K (Fin n)) e.symm.toLinearMap)ᵀ.map v.embedding = (cQ A.b e v)ᵀ := rfl
    rw [hQ, hW, ← Matrix.mulVec_mulVec, cnorm_isom]
    rw [conjT_transpose_isom, cU_conj_mul A.b A.X XE e v hmet (hXE v), Matrix.transpose_one]
  have hn : ∀ f, ‖((Formalism.HermitianLatticesTheory.realize A.b.dualBasis (Formalism.HN.dualFrame A.X)).comp ψ.toAddMonoidHom) f‖ =
      ‖Formalism.HermitianLatticesTheory.realize (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) f‖ := by
    intro f
    have h2 : ‖((Formalism.HermitianLatticesTheory.realize A.b.dualBasis (Formalism.HN.dualFrame A.X)).comp ψ.toAddMonoidHom) f‖ ^ 2 =
        ‖Formalism.HermitianLatticesTheory.realize (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) f‖ ^ 2 := by
      rw [AddMonoidHom.comp_apply, Formalism.HN.PlaceOperatorNorms.norm_sq_realize, Formalism.HN.PlaceOperatorNorms.norm_sq_realize]
      simp only [LinearMap.toAddMonoidHom_coe, hnA]
    rw [← Real.sqrt_sq (norm_nonneg _), h2, Real.sqrt_sq (norm_nonneg _)]

  have hzl : Formalism.HN.zl (Formalism.HermitianLatticesTheory.realize A.b.dualBasis (Formalism.HN.dualFrame A.X)) (Formalism.HN.dualLat A.L) =
      Formalism.HN.zl ((Formalism.HermitianLatticesTheory.realize A.b.dualBasis (Formalism.HN.dualFrame A.X)).comp ψ.toAddMonoidHom) (Formalism.HN.dualLat L) := by
    ext y
    rw [Formalism.HN.satR_mem_zl, Formalism.HN.satR_mem_zl]
    simp only [AddMonoidHom.comp_apply, LinearMap.toAddMonoidHom_coe]
    constructor
    · rintro ⟨g, hg, rfl⟩
      refine ⟨Module.Dual.transpose e.toLinearMap g, ?_, ?_⟩
      · rw [mem_dualLat_iff] at hg ⊢
        intro x hx
        simp only [Module.Dual.transpose_apply, LinearMap.coe_comp, Function.comp_apply, LinearEquiv.coe_coe]
        exact hg (e x) (by rw [hlat]; exact ⟨x, hx, rfl⟩)
      · congr 1
        exact LinearMap.ext fun x => by simp [hψx, Module.Dual.transpose_apply]
    · rintro ⟨f, hf, rfl⟩
      refine ⟨ψ f, ?_, rfl⟩
      rw [mem_dualLat_iff] at hf ⊢
      intro z hz
      rw [hlat] at hz
      obtain ⟨x, hx, rfl⟩ := hz
      rw [hψx]
      simpa using hf x hx
  have hs : Formalism.HN.slope (Formalism.HermitianLatticesTheory.realize A.b.dualBasis (Formalism.HN.dualFrame A.X)) (Formalism.HN.dualLat A.L) =
      Formalism.HN.slope (Formalism.HermitianLatticesTheory.realize (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE)) (Formalism.HN.dualLat L) := by
    rw [← slope_eq_of_norm_eq _ _ hn (Formalism.HN.dualLat L)]
    unfold Formalism.HN.slope
    rw [hzl]
  unfold Formalism.BasicNotions.HLat.muDual Formalism.BasicNotions.HLat.dualB Formalism.BasicNotions.HLat.dualX Formalism.BasicNotions.HLat.dualL Formalism.HN.muDef
  rw [hs]

end Mu

end Formalism.MainNotions.DIV.HookProducts.RBTie
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.Divisibility.HookProducts.RBTieMu =====

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.RecBridge =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.RecBridge", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.ConstantGeTwentyEight\npublic import Formalism.LocalToGlobal.Divisibility.NumbersLink\npublic import Formalism.SharpRestriction.GlobalTheoremInputs\npublic import Formalism.LocalToGlobal.GroupLattices.ServJointF\npublic import Formalism.LocalToGlobal.Divisibility.DivisionHeightBoundStatement\npublic import Formalism.LocalToGlobal.Divisibility.NumbersLemmas\nimport Formalism.LocalRingCardinality.RankBoundMonotoneInDimension\npublic import Formalism.LocalToGlobal.Divisibility.LinkDIVL2R3Col\npublic import Formalism.LocalToGlobal.GroupLattices.JointServices.ShiftIdealSgFl\nimport Formalism.LocalToGlobal.GroupLattices.JointServices.ValIntNonneg\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins\npublic import Formalism.SharpRestriction.Divisibility.ClosedSizeLink.DivisionAdmissibleFamilyOfData\npublic import Formalism.SharpRestriction.Divisibility.HookProducts.RBTieMu\nimport Formalism.SharpRestriction.Divisibility.HookProducts.RBTieOp\npublic import Formalism.SharpRestriction.Divisibility.WeightDegreeSizes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.Monotonicity.Lemmas\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.SharpRestriction.Divisibility.HookProducts.RBTieFrame\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.DIV

open Formalism.DivisionValues Formalism.EigenvalueLevelCeiling Formalism.L2.Indef

section PartA

variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem mem_dualLat_iff' {V : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]
    (A : Submodule (𝓞 K) V) (f : Module.Dual K V) :
    f ∈ Formalism.HN.dualLat A ↔ ∀ x ∈ A, f x ∈ Set.range (algebraMap (𝓞 K) K) := Iff.rfl

theorem oneMap_of_coord (A Rr : Formalism.BasicNotions.HLat K) {d n : ℕ}
    (Nc : Submodule (𝓞 K) (Fin d → K)) (Rc : Submodule (𝓞 K) (Fin n → K))
    (eN : (Fin d → K) ≃ₗ[K] A.V) (eR : (Fin n → K) ≃ₗ[K] Rr.V)
    (hN : A.L = Nc.map ((eN : (Fin d → K) →ₗ[K] A.V).restrictScalars (𝓞 K)))
    (hR : Rr.L = Rc.map ((eR : (Fin n → K) →ₗ[K] Rr.V).restrictScalars (𝓞 K)))
    (Bk : A.V →ₗ[K] Module.Dual K Rr.V) (B : (Fin d → K) →ₗ[K] Module.Dual K (Fin n → K))
    (hB : ∀ x y, Bk (eN x) (eR y) = B x y)
    (h1 : ∀ φ ∈ Nc, B φ ∈ Formalism.HN.dualLat Rc) :
    A.L.map (Bk.restrictScalars (𝓞 K)) ≤ Formalism.HN.dualLat Rr.L := by
  rintro f ⟨a, ha, rfl⟩
  rw [hN] at ha
  obtain ⟨φ, hφ, rfl⟩ := ha
  rw [mem_dualLat_iff', hR]
  rintro r ⟨y, hy, rfl⟩
  simpa [hB] using (mem_dualLat_iff' Rc (B φ)).1 (h1 φ hφ) y hy

theorem ne_zero_of_coord {V W V' W' : Type} [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W]
    [AddCommGroup V'] [Module K V'] [AddCommGroup W'] [Module K W']
    (eN : V' ≃ₗ[K] V) (eR : W' ≃ₗ[K] W) (Bk : V →ₗ[K] Module.Dual K W) (B : V' →ₗ[K] Module.Dual K W')
    (hB : ∀ x y, Bk (eN x) (eR y) = B x y) (hne : Bk ≠ 0) : B ≠ 0 := by
  intro h0
  apply hne
  ext a r
  simpa [h0] using hB (eN.symm a) (eR.symm r)

end PartA

section Pos

variable {K : Type} [Field K] [NumberField K]

theorem opNormAt_pos_of {a n : ℕ} (Xc : InfinitePlace K → Matrix (Fin a) (Fin a) ℂ)
    (XE : InfinitePlace K → Matrix (Fin n) (Fin n) ℂ) (B : (Fin a → K) →ₗ[K] Module.Dual K (Fin n → K))
    (hXc : ∀ v, IsUnit (Xc v).det) (hXE : ∀ v, IsUnit (XE v).det) (hB : B ≠ 0) (v : InfinitePlace K) :
    0 < Formalism.HN.opNormAt (Pi.basisFun K (Fin a)) Xc (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) v B := by
  unfold Formalism.HN.opNormAt
  rw [norm_pos_iff]
  intro h0
  apply hB
  have h1 := (LinearMap.toContinuousLinearMap).map_eq_zero_iff.mp h0
  have h2 := (Matrix.toEuclideanLin).map_eq_zero_iff.mp h1
  have hD : IsUnit (Formalism.HN.dualFrame XE v).det := by
    unfold Formalism.HN.dualFrame
    rw [Matrix.isUnit_nonsing_inv_det_iff, Matrix.det_transpose]
    exact hXE v
  set M := LinearMap.toMatrix (Pi.basisFun K (Fin a)) (Pi.basisFun K (Fin n)).dualBasis B with hM
  have h3 : M.map v.embedding = 0 := by
    have e : M.map v.embedding = Formalism.HN.dualFrame XE v * ((Formalism.HN.dualFrame XE v)⁻¹ * M.map v.embedding * Xc v) * (Xc v)⁻¹ := by
      rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hD, Matrix.one_mul, Matrix.mul_assoc,
        Matrix.mul_nonsing_inv _ (hXc v), Matrix.mul_one]
    rw [e, h2, Matrix.mul_zero, Matrix.zero_mul]
  have h4 : M = 0 := by
    ext i j
    simpa using congrFun (congrFun h3 i) j
  exact (LinearMap.toMatrix (Pi.basisFun K (Fin a)) (Pi.basisFun K (Fin n)).dualBasis).map_eq_zero_iff.mp h4

end Pos

section Kap

variable {K : Type} [Field K] [NumberField K]

theorem meanEmb_eq_meanLog [_root_.NumberField.IsTotallyComplex K] (κ : InfinitePlace K → ℝ) (g : (K →+* ℂ) → ℝ)
    (hg : ∀ σ, g σ = Real.log (κ (InfinitePlace.mk σ))) :
    (∑ σ, g σ) / (Module.finrank ℚ K : ℝ) = Formalism.DivisionValues.meanLog κ := by
  classical
  have h2 := Formalism.BasicNotions.nPl_two_mul K
  have hsum : (∑ σ, g σ) = ∑ v : InfinitePlace K, 2 * Real.log (κ v) := by
    rw [← Finset.sum_fiberwise Finset.univ (fun σ : K →+* ℂ => InfinitePlace.mk σ) g]
    refine Finset.sum_congr rfl fun v _ => ?_
    have e1 : ∀ σ ∈ Finset.univ.filter (fun σ : K →+* ℂ => InfinitePlace.mk σ = v), g σ = Real.log (κ v) := by
      intro σ hσ
      rw [hg σ, (Finset.mem_filter.1 hσ).2]
    rw [Finset.sum_congr rfl e1, Finset.sum_const, nsmul_eq_mul, InfinitePlace.card_filter_mk_eq,
      InfinitePlace.mult, if_neg (InfinitePlace.not_isReal_iff_isComplex.2 (IsTotallyComplex.isComplex v))]
    norm_num
  have hpos : (0 : ℝ) < (Formalism.HN.nPl K : ℝ) := by
    unfold Formalism.HN.nPl
    exact_mod_cast Fintype.card_pos
  unfold Formalism.DivisionValues.meanLog
  rw [hsum, ← h2, ← Finset.mul_sum]
  field_simp

end Kap

section Word

open Formalism.BasicNotions

/-- Per-word arithmetic interface of the divisibility bridge: lattice containment, an
upper bound on the height of the nonzero bilinear map, and a slope/height inequality.
The last two assertions require estimates in addition to any identification of the
height function with its explicit formula. -/
def WordFacts {D : D7} (L : SizeData₂ D) (C Cabs : ℝ) (u : D.what₂.Word) : Prop :=
  (D.div.Nu u).L.map ((D.div.Bk u).restrictScalars (𝓞 D.what₂.LL)) ≤ D.div.cc ∧
  (D.div.Bk u ≠ 0 → Formalism.HN.htMap (D.div.Nu u).b (D.div.Nu u).X D.div.RR.dualB D.div.RR.dualX (D.div.Bk u) ≤
    D.div.h u) ∧
  D.div.RR.muDual + D.div.h u - L.Fo ≤ L.MAIN u +
    C * (D.host.TT.card : ℝ) * L.sc.a * L.La + C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps)

/-- Transport the three arithmetic clauses from coordinate lattices to the intrinsic
lattices. `tHt`, `tMu`, `tH`, and `tFo` identify quantities; the inequalities are supplied
by `c2`, `c3`, and `tR`, not by those identifications. -/
theorem wordFacts_of {D : D7} (L : SizeData₂ D) (C Cabs : ℝ) (u : D.what₂.Word) {d n : ℕ}
    (Nc : Submodule (𝓞 D.what₂.LL) (Fin d → D.what₂.LL)) (Rc : Submodule (𝓞 D.what₂.LL) (Fin n → D.what₂.LL))
    (eN : (Fin d → D.what₂.LL) ≃ₗ[D.what₂.LL] (D.div.Nu u).V) (eR : (Fin n → D.what₂.LL) ≃ₗ[D.what₂.LL] D.div.RR.V)
    (hN : (D.div.Nu u).L = Nc.map ((eN : (Fin d → D.what₂.LL) →ₗ[D.what₂.LL] (D.div.Nu u).V).restrictScalars (𝓞 D.what₂.LL)))
    (hR : D.div.RR.L = Rc.map ((eR : (Fin n → D.what₂.LL) →ₗ[D.what₂.LL] D.div.RR.V).restrictScalars (𝓞 D.what₂.LL)))
    (B : (Fin d → D.what₂.LL) →ₗ[D.what₂.LL] Module.Dual D.what₂.LL (Fin n → D.what₂.LL))
    (hB : ∀ x y, D.div.Bk u (eN x) (eR y) = B x y)
    (ht muC kap hu Fo2 rhs : ℝ)
    (c1 : ∀ φ ∈ Nc, B φ ∈ Formalism.HN.dualLat Rc) (c2 : B ≠ 0 → ht ≤ hu - kap) (c3 : muC - kap + hu - Fo2 ≤ rhs)
    (tHt : Formalism.HN.htMap (D.div.Nu u).b (D.div.Nu u).X D.div.RR.dualB D.div.RR.dualX (D.div.Bk u) = ht)
    (tMu : muC = D.div.RR.muDual) (tH : hu - kap = D.div.h u) (tFo : Fo2 = L.Fo)
    (tR : rhs ≤ L.MAIN u + C * (D.host.TT.card : ℝ) * L.sc.a * L.La +
      C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps)) :
    WordFacts L C Cabs u := by
  refine ⟨oneMap_of_coord (D.div.Nu u) D.div.RR Nc Rc eN eR hN hR (D.div.Bk u) B hB c1, fun hne => ?_, ?_⟩
  · simpa [tHt, tH] using c2 (ne_zero_of_coord eN eR (D.div.Bk u) B hB hne)
  · rw [← tMu, ← tH, ← tFo]
    linarith

end Word

section Clauses

open Formalism.BasicNotions

/-- Average the logarithms of positive squared operator norms using the pointwise
majorants. The prescribed mean of the majorants fixes the resulting upper bound. -/
theorem htMap_le_of_bound {K : Type} [Field K] [NumberField K] {a n : ℕ} (Xc : InfinitePlace K → Matrix (Fin a) (Fin a) ℂ)
    (XE : InfinitePlace K → Matrix (Fin n) (Fin n) ℂ) (B : (Fin a → K) →ₗ[K] Module.Dual K (Fin n → K)) (h k : ℝ)
    (hb : ∃ cu : InfinitePlace K → ℝ, (∀ v, 0 < cu v ∧
      Formalism.HN.opNormAt (Pi.basisFun K (Fin a)) Xc (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) v B ^ 2 ≤ cu v) ∧
      (1 / (Formalism.HN.nPl K : ℝ)) * ∑ v, Real.log (cu v) = h - k)
    (hpos : ∀ v, 0 < Formalism.HN.opNormAt (Pi.basisFun K (Fin a)) Xc (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) v B) :
    Formalism.HN.htMap (Pi.basisFun K (Fin a)) Xc (Pi.basisFun K (Fin n)).dualBasis (Formalism.HN.dualFrame XE) B ≤ h - k := by
  obtain ⟨cu, hcu, hmean⟩ := hb
  rw [Formalism.HN.htMap, ← hmean]
  exact mul_le_mul_of_nonneg_left (Finset.sum_le_sum fun v _ => Real.log_le_log (pow_pos (hpos v) 2) (hcu v).2) (by positivity)

variable {D : D7} {Bs : DefBase D.what₂.LL} {Df0 Df1 : DefSide Bs} {Dc : DefCols Df1} {Sp : SPer Dc} {Nn : IndefNum Bs}

def htLink (P : IndefCoreR Df0 Df1 Dc Sp Nn) (w : Dc.Mem) : ℝ :=
  Formalism.HN.htMap (Pi.basisFun D.what₂.LL (Fin (Dc.a w))) (Dc.Xc w) (Pi.basisFun D.what₂.LL (Fin P.cols.D)).dualBasis
    (Formalism.HN.dualFrame P.cols.XE) (P.cols.col.B w)

theorem wordFacts_of_core_clauses (L : SizeData₂ D) (C Cabs : ℝ) (u : D.what₂.Word) (P : IndefCoreR Df0 Df1 Dc Sp Nn)
    (wU : D.what₂.Word → Dc.Mem) (NuC : ∀ w, Submodule (𝓞 D.what₂.LL) (Fin (Dc.a w) → D.what₂.LL))
    (eNu : (Fin (Dc.a (wU u)) → D.what₂.LL) ≃ₗ[D.what₂.LL] (D.div.Nu u).V)
    (eRR : (Fin P.cols.D → D.what₂.LL) ≃ₗ[D.what₂.LL] D.div.RR.V)
    (hNu : HLatTie (D.div.Nu u) (NuC (wU u)) (Dc.Xc (wU u)) eNu) (hRR : HLatTie D.div.RR P.cols.RR P.cols.XE eRR)
    (hBk : ∀ x y, D.div.Bk u (eNu x) (eRR y) = P.cols.col.B (wU u) x y)
    {Pl : Type} [Fintype Pl] [DecidableEq Pl] (R : RecNums Bs.J Pl)
    (Nu : Submodule (𝓞 D.what₂.LL) (Fin (Dc.a (wU u)) → D.what₂.LL)) (sg : HeightOneSpectrum (𝓞 D.what₂.LL) → ℝ)
    (hcl : DivCoreClausesR P R (wU u) Nu sg)
    (hNs : NuC (wU u) = shiftLat Nu sg)
    (hPos : P.cols.col.B (wU u) ≠ 0 → ∀ v, 0 < Formalism.HN.opNormAt (Pi.basisFun D.what₂.LL (Fin (Dc.a (wU u))))
      (Dc.Xc (wU u)) (Pi.basisFun D.what₂.LL (Fin P.cols.D)).dualBasis (Formalism.HN.dualFrame P.cols.XE) v
      (P.cols.col.B (wU u)))
    (tHt : Formalism.HN.htMap (D.div.Nu u).b (D.div.Nu u).X D.div.RR.dualB D.div.RR.dualX (D.div.Bk u) = htLink P (wU u))
    (tMu : P.cols.muCC = D.div.RR.muDual) (tH : R.hu - meanLog P.cols.κ = D.div.h u) (tFo : 2 * FoOfR P = L.Fo)
    (tR : R.rhs ≤ L.MAIN u + C * (D.host.TT.card : ℝ) * L.sc.a * L.La +
      C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps)) :
    WordFacts L C Cabs u := by
  refine wordFacts_of L C Cabs u (NuC (wU u)) P.cols.RR eNu eRR hNu.lat hRR.lat
    (P.cols.col.B (wU u)) hBk (htLink P (wU u)) P.cols.muCC (meanLog P.cols.κ) R.hu (2 * FoOfR P) R.rhs
    ?_ ?_ hcl.2.2 tHt tMu tH tFo tR
  · rw [hNs]; exact hcl.1
  · exact fun hne => htMap_le_of_bound _ _ _ _ _ hcl.2.1 (hPos hne)

theorem wordFacts_of_core_face (L : SizeData₂ D) (C Cabs : ℝ) (u : D.what₂.Word) (P : IndefCoreR Df0 Df1 Dc Sp Nn)
    (wU : D.what₂.Word → Dc.Mem) (NuC : ∀ w, Submodule (𝓞 D.what₂.LL) (Fin (Dc.a w) → D.what₂.LL))
    (eNu : (Fin (Dc.a (wU u)) → D.what₂.LL) ≃ₗ[D.what₂.LL] (D.div.Nu u).V)
    (eRR : (Fin P.cols.D → D.what₂.LL) ≃ₗ[D.what₂.LL] D.div.RR.V)
    (hNu : HLatTie (D.div.Nu u) (NuC (wU u)) (Dc.Xc (wU u)) eNu) (hRR : HLatTie D.div.RR P.cols.RR P.cols.XE eRR)
    (hBk : ∀ x y, D.div.Bk u (eNu x) (eRR y) = P.cols.col.B (wU u) x y)
    {Pl : Type} [Fintype Pl] [DecidableEq Pl] (R : RecNums Bs.J Pl)
    (Nu : Submodule (𝓞 D.what₂.LL) (Fin (Dc.a (wU u)) → D.what₂.LL)) (sg : HeightOneSpectrum (𝓞 D.what₂.LL) → ℝ)
    (hcl : DivCoreClausesR P R (wU u) Nu sg) (hNs : NuC (wU u) = shiftLat Nu sg)
    (tH : R.hu - meanLog P.cols.κ = D.div.h u) (tFo : 2 * FoOfR P = L.Fo)
    (tR : R.rhs ≤ L.MAIN u + C * (D.host.TT.card : ℝ) * L.sc.a * L.La +
      C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps)) :
    WordFacts L C Cabs u := by
  have hXc : ∀ v, IsUnit ((Dc.Xc (wU u)) v).det := fun v =>
    Formalism.MainNotions.DIV.HookProducts.RBTie.frame_unit_of_tie _ _ _ _ v hNu.metric (D.div_good.2 u v)
  have hXE : ∀ v, IsUnit (P.cols.XE v).det := fun v =>
    Formalism.MainNotions.DIV.HookProducts.RBTie.frame_unit_of_tie _ _ _ _ v hRR.metric (D.div_good.1 v)
  exact wordFacts_of_core_clauses L C Cabs u P wU NuC eNu eRR hNu hRR hBk R Nu sg hcl hNs
    (fun hne v => opNormAt_pos_of _ _ _ hXc hXE hne v)
    (Formalism.MainNotions.DIV.HookProducts.RBTie.htMap_tie (D.div.Nu u).b (D.div.Nu u).X D.div.RR.b D.div.RR.X (Dc.Xc (wU u)) P.cols.XE eNu eRR
      hNu.metric hRR.metric (D.div_good.2 u) D.div_good.1 hXc hXE (D.div.Bk u) (P.cols.col.B (wU u)) hBk)
    (Formalism.MainNotions.DIV.HookProducts.RBTie.muDual_tie D.div.RR P.cols.RR P.cols.XE eRR hRR.lat hRR.metric D.div_good.1 hXE) tH tFo tR

end Clauses

section PartB

open Formalism.BasicNotions

structure NumRecTie (Nd : NumDatum) {D : D7} (L : SizeData₂ D) (u : D.what₂.Word) (Tl : ℕ) (Nc : ℝ) : Prop where
  mainT : Nd.mainT Tl = L.MAIN u
  card : (Nd.TT.card : ℝ) = (D.host.TT.card : ℝ)
  a : Nd.sc.a = L.sc.a
  La : Nd.La = L.La
  B0 : Nd.B0 = L.B0
  Nc : Nc = L.Nc
  m : (Nd.R.m : ℝ) = (D.R.m : ℝ)
  x : Nd.sc.x = L.sc.x
  eps : Nd.sc.eps = L.sc.eps

theorem rhs_le_record (Nd : NumDatum) {J : Type} [Fintype J] (eJ : J ≃ Fin Nd.R.m) (δ : Code Nd) (Tl : ℕ)
    (Nc lam0 C0 ce Ch Sw C1 : ℝ) (H : Nd.NumFacts δ Nc lam0 C0 ce Ch Sw C1)
    {D : D7} (L : SizeData₂ D) (u : D.what₂.Word) (t : NumRecTie Nd L u Tl Nc) (C Cabs : ℝ)
    (hC0 : 0 ≤ C) (hC1 : 50 * C0 + 10 ≤ C) (hC2 : 60 * ce ≤ C) (hCabs : 1 ≤ Cabs) (hLa : 0 ≤ L.La) :
    (RecNums.ofNum Nd eJ δ Tl Nc lam0 C0 ce Ch Sw C1 H).rhs ≤ L.MAIN u + C * (D.host.TT.card : ℝ) * L.sc.a * L.La +
      C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps) := by
  rw [RecNums.ofNum_rhs, t.mainT, t.card, t.a, t.La, t.B0, t.Nc, t.m, t.x, t.eps]
  have hx : 0 < L.sc.x := lt_trans zero_lt_one L.sc.one_lt_alt
  have ha : 0 ≤ L.sc.a := le_trans zero_le_one (Formalism.MainNotions.DIV.one_le_a L)
  have hT : (0 : ℝ) ≤ (D.host.TT.card : ℝ) := Nat.cast_nonneg _
  have hm : (0 : ℝ) ≤ (D.R.m : ℝ) := Nat.cast_nonneg _
  have hBN : 0 ≤ L.B0 + L.Nc := add_nonneg (Formalism.MainNotions.loss_bound_nonneg L) (Formalism.MainNotions.Nc_nonneg L)
  have hp : 0 ≤ L.sc.x ^ L.sc.eps := Real.rpow_nonneg hx.le _
  have hle : L.sc.x ^ L.sc.eps ≤ L.sc.x ^ (Cabs * L.sc.eps) :=
    Real.rpow_le_rpow_of_exponent_le L.sc.one_lt_alt.le (le_mul_of_one_le_left L.sc.eps_pos.le hCabs)
  have e1 : (50 * C0 + 10) * ((D.host.TT.card : ℝ) * L.sc.a * L.La) ≤ C * (D.host.TT.card : ℝ) * L.sc.a * L.La := by
    simpa [mul_assoc] using mul_le_mul_of_nonneg_right hC1 (by positivity)
  have e2 : 60 * ce * ((D.R.m : ℝ) * (L.sc.x ^ L.sc.eps * (L.B0 + L.Nc))) ≤
      C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps) := by
    calc
      60 * ce * ((D.R.m : ℝ) * (L.sc.x ^ L.sc.eps * (L.B0 + L.Nc)))
          ≤ C * ((D.R.m : ℝ) * (L.sc.x ^ (Cabs * L.sc.eps) * (L.B0 + L.Nc))) :=
        mul_le_mul hC2 (mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hle hBN) hm) (by positivity) hC0
      _ = C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps) := by ring
  linarith

theorem numRecTie_ofRecord {D : D7} (L : SizeData₂ D) (Del h0 : ℕ) (u : D.what₂.Word)
    (hrd : (ofRecord D L Del h0).rd = D.host.rdE) (hM : (ofRecord D L Del h0).mainT ((D.mem u).A.T) = L.MAIN u) :
    NumRecTie (ofRecord D L Del h0) L u ((D.mem u).A.T) L.Nc := by
  refine ⟨hM, rfl, rfl, ?_, ?_, rfl, rfl, rfl, rfl⟩
  · simp only [NumDatum.La, SizeData₂.La, hrd]
  · simp only [NumDatum.B0, SizeData₂.B0, sizeBudget, bSize, Scale.b, Scale.L]

end PartB

section PartC

open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions

variable {D : D7}

def Compl3 (L : SizeData₂ D) (Z : DivX D) (Csz C : ℝ) : Prop :=
  ∀ u u', |(hExpl6 D L Z Csz u + (∑ t : D.host.TT, (L.aT t : ℝ)) * Real.log ((D.mem u).A.T : ℝ)) -
    (hExpl6 D L Z Csz u' + (∑ t : D.host.TT, (L.aT t : ℝ)) * Real.log ((D.mem u').A.T : ℝ))| ≤
    C * ((D.host.TT.card : ℝ) * L.sc.a * L.La + (D.R.m : ℝ) * L.B0)

/-- Assembles the per-scale divisibility link `LinkDIV_at L C Cabs CH` from the per-word bounds
`WordFacts`, the frame-number bound `FrameNumberBound`, the `g`-place and off-`g` energy bounds
`adm11` (rewriting `∏ g ∈ L.gTypes, g = g 0 * g 1` via `prod_gTypes`), the complement count bound
`adm13`, rationality of `Bu`, fullness of the common lattice `RR`, and `ZeroAbove`.
The equality `hh` transports `hH` and `h5` to the stored height. The two inequalities
inside `WordFacts` are separate inputs and are not consequences of `hh`. -/
theorem linkDIV_at_words (L : SizeData₂ D) (Z : DivX D) (Csz C Cabs CH : ℝ)
    (hh : ∀ u, D.div.h u = hExpl6 D L Z Csz u) (hW : ∀ u, WordFacts L C Cabs u) (h5 : Compl3 L Z Csz C)
    (hH : Formalism.MainNotions.LocalQuadraticParts.FrameNumberBound D L Z Csz CH) (h11 : Formalism.MainNotions.LocalQuadraticParts.adm11 D L C) (h13 : Formalism.MainNotions.LocalQuadraticParts.adm13 D)
    (hBR : D.BuRational) (hRR : D.RRFull) (hZ : L.ZeroAbove) : LinkDIV_at L C Cabs CH := by
  have hfun : D.div.h = hExpl6 D L Z Csz := funext hh
  refine ⟨fun u => (hW u).1, ?_, hZ, ⟨hBR, h13⟩, hRR, fun u hu => (hW u).2.1 hu, fun u => (hW u).2.2, ?_, ?_⟩
  · rw [hfun]; exact hH
  · intro u j hj
    have h := (h11 u j hj).1
    rwa [Formalism.MainNotions.DIV.prod_gTypes] at h
  · intro u u'
    rw [hh u, hh u']
    exact h5 u u'

theorem hTie_of (L : SizeData₂ D) (Z : DivX D) (Csz : ℝ) (u : D.what₂.Word) (κ : InfinitePlace D.what₂.LL → ℝ) (hu : ℝ)
    (hk : ∀ σ, Z.kapR σ = κ (InfinitePlace.mk σ))
    (hnum : hu = SZbP D L Csz u + (∑ j ∈ SizeData₂.lifts D, kernelPlaceMeanBound D L Csz u j) - ∑ j ∈ SizeData₂.lifts D, L6lo D L Csz j)
    (hh : D.div.h u = hExpl6 D L Z Csz u) : hu - Formalism.DivisionValues.meanLog κ = D.div.h u := by
  rw [hh, hExpl6, meanE, meanEmb_eq_meanLog κ (fun e => Real.log (Z.kapR e)) (fun σ => by rw [hk σ]), hnum]

end PartC

section PartD

open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions

structure DivisionRows {D : D7} (L : SizeData₂ D) : Type 1 where

  G : Type
  [grp : Group G]
  [fin : Fintype G]

  Pl0 : Type

  T : Type

  A : FamIn D.what₂.LL G Pl0 T D.R.m

  s : ℕ
  hOk : A.fam.Ok s
  hsep : A.fam.TypesSep

  P0 : Subgroup G
  ψ0 : P0 →* D.what₂.LLˣ

  P1 : Subgroup G
  ψ1 : P1 →* D.what₂.LLˣ

  Dc : ∀ Zs : DefSub A.fam.amb, DefCols (A.side P1 ψ1 Zs)
  Sp : ∀ Zs : DefSub A.fam.amb, SPer (Dc Zs)
  Zsc : DefSub A.fam.amb → IndefScale A.fam.base

  Zs : DefSub A.fam.amb
  stable : Zs.Stable
  inBlock : Zs.InBlock

  what₂ : IndefRows (A.side P0 ψ0 Zs)

attribute [instance] DivisionRows.grp DivisionRows.fin

def sgRec {D : D7} (L : SizeData₂ D) (u : D.what₂.Word) (w : HeightOneSpectrum (𝓞 D.what₂.LL)) : ℝ :=
  ((⌊ur D (D.plEq.symm w) (L.sg u (D.plEq.symm w))⌋ : ℤ) : ℝ)

structure DivisionPackage {D : D7} {L : SizeData₂ D} (Rw : DivisionRows L) (C Cabs : ℝ) : Type 1 where

  Cp : ℝ
  CHp : ℝ

  cf : ConvFace Rw.A.fam.base

  Pk : IndefPkgR Rw.A.fam.amb (faceOf Rw.A Rw.P0 Rw.ψ0 Rw.P1 Rw.ψ1 Rw.Dc Rw.Sp Rw.Zsc) cf Cp CHp

  hZs : Pk.Zs = Rw.Zs

  hRows : HEq Pk.core.base.toIndefRows Rw.what₂

  X0 : BaseLevelRowSide D

  I : DivisionCompatibilityData D Rw.A Rw.P0 Rw.ψ0 Rw.P1 Rw.ψ1 Pk.Zs Pk.core.base.toIndefData Pk.core.cols.toIndefData X0 (Rw.Dc Pk.Zs)

  NuC : ∀ w, Submodule (𝓞 D.what₂.LL) (Fin ((Rw.Dc Pk.Zs).a w) → D.what₂.LL)

  tied : DivisionCompatible D Rw.A Rw.P0 Rw.ψ0 Rw.P1 Rw.ψ1 Pk.Zs Pk.core.base.toIndefData Pk.core.cols.toIndefData X0 Pk.core.cols.col NuC I

  Pl : Type
  [plF : Fintype Pl]
  [plD : DecidableEq Pl]

  R : D.what₂.Word → RecNums Rw.A.fam.base.J Pl

  Nu : ∀ u, Submodule (𝓞 D.what₂.LL) (Fin ((Rw.Dc Pk.Zs).a (I.wU u)) → D.what₂.LL)

  inp : ∀ u, DivInputs0R Pk.core (R u) (I.wU u) (Nu u) (sgRec L u)

  dcPt : ∀ (u : D.what₂.Word) (t : Rw.T) (x : Fin ((Rw.Dc Pk.Zs).a (I.wU u)) → D.what₂.LL)
    (F : Fin ((Rw.A.side Rw.P1 Rw.ψ1 Pk.Zs).nV t) → D.what₂.LL),
    D.what₂.embLL ((Rw.Dc Pk.Zs).Pt (I.wU u) t x F) =
      D.what₂.perCol u (I.tup t) (D.jN u (I.eNu u x)) (I.jA t ((rV0 D Rw.A Rw.P1 Rw.ψ1 t).mulVec F))

  shift : ∀ u, NuC (I.wU u) = shiftLat (Nu u) (sgRec L u)

  hTie : ∀ u, (R u).hu - meanLog Pk.core.cols.κ = D.div.h u

  foTie : 2 * FoOfR Pk.core = L.Fo

  rhs : ∀ u, (R u).rhs ≤ L.MAIN u + C * (D.host.TT.card : ℝ) * L.sc.a * L.La +
    C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps)

attribute [instance] DivisionPackage.plF DivisionPackage.plD

def DivisionPackage.colBr {D : D7} {L : SizeData₂ D} {Rw : DivisionRows L} {C Cabs : ℝ} (P : DivisionPackage Rw C Cabs) : Formalism.L2.G.ServJoint.ColBr D where
  Gp := Rw.G
  Pl0 := Rw.Pl0
  T := Rw.T
  m := D.R.m
  A := Rw.A
  P0 := Rw.P0
  ψ0 := Rw.ψ0
  Ps := Rw.P1
  ψs := Rw.ψ1
  Zs := P.Pk.Zs
  S0 := P.Pk.core.base.toIndefData
  S1 := P.Pk.core.cols.toIndefData
  X0 := P.X0
  Dc := Rw.Dc P.Pk.Zs
  I := P.I

theorem DivisionPackage.colBr_tied {D : D7} {L : SizeData₂ D} {Rw : DivisionRows L} {C Cabs : ℝ} (P : DivisionPackage Rw C Cabs) : P.colBr.Tied := by
  refine ⟨⟨Rw.s, Rw.hOk⟩, ?_, P.tied.sharp, P.dcPt⟩
  intro w
  show D.what₂.muAt w = P.I.tup (P.Pk.core.cols.toIndefData.μ (D.plEq w))
  rw [P.tied.tup.muAt w, P.tied.mu1]

theorem DivisionPackage.val2 {D : D7} {L : SizeData₂ D} {Rw : DivisionRows L} {C Cabs : ℝ} (P : DivisionPackage Rw C Cabs) (h2 : Formalism.MainNotions.LocalQuadraticParts.adm2 D L)
    (hcut : ∀ μ, Formalism.BasicNotions.DV.Used D μ → Formalism.L2.G.ServJoint.CutUp D μ) (hN : Formalism.BasicNotions.DV.NprimeDef D L) (u : D.what₂.Word) (w : HeightOneSpectrum (𝓞 D.what₂.LL)) :
    ∀ φ ∈ P.Nu u, ∀ F ∈ (Rw.A.side Rw.P1 Rw.ψ1 P.Pk.Zs).Mt (P.Pk.core.cols.μ w),
      (Rw.Dc P.Pk.Zs).Pt (P.I.wU u) (P.Pk.core.cols.μ w) φ F = 0 ∨
        sgRec L u w ≤ (vw w ((Rw.Dc P.Pk.Zs).Pt (P.I.wU u) (P.Pk.core.cols.μ w) φ F) : ℝ) :=
  Formalism.L2.G.ServJoint.val2AllAtR D L P.colBr P.colBr_tied hcut h2 u (P.Nu u)
    (Formalism.L2.G.ServJoint.nu_into L hN u (P.I.eNu u) (P.NuC (P.I.wU u)) (P.Nu u) (P.tied.cols.Nu u).lat (P.shift u)) w

theorem WordFacts.mono {D : D7} {L : SizeData₂ D} {C C' Cabs Cabs' : ℝ} {u : D.what₂.Word} (h : WordFacts L C Cabs u)
    (hC : C ≤ C') (hC0 : 0 ≤ C') (hA : Cabs ≤ Cabs') (hLa : 0 ≤ L.La) : WordFacts L C' Cabs' u := by
  refine ⟨h.1, h.2.1, h.2.2.trans ?_⟩
  have hx1 : 1 ≤ L.sc.x := L.sc.one_lt_alt.le
  have hx : 0 < L.sc.x := lt_of_lt_of_le zero_lt_one hx1
  have ha : 0 ≤ L.sc.a := le_trans zero_le_one (Formalism.MainNotions.DIV.one_le_a L)
  have hT : (0 : ℝ) ≤ (D.host.TT.card : ℝ) := Nat.cast_nonneg _
  have hm : (0 : ℝ) ≤ (D.R.m : ℝ) := Nat.cast_nonneg _
  have hBN : 0 ≤ L.B0 + L.Nc := add_nonneg (Formalism.MainNotions.loss_bound_nonneg L) (Formalism.MainNotions.Nc_nonneg L)
  have hp : 0 ≤ L.sc.x ^ (Cabs * L.sc.eps) := Real.rpow_nonneg hx.le _
  have hle : L.sc.x ^ (Cabs * L.sc.eps) ≤ L.sc.x ^ (Cabs' * L.sc.eps) :=
    Real.rpow_le_rpow_of_exponent_le hx1 (mul_le_mul_of_nonneg_right hA L.sc.eps_pos.le)
  have e1 : C * (D.host.TT.card : ℝ) * L.sc.a * L.La ≤ C' * (D.host.TT.card : ℝ) * L.sc.a * L.La := by
    simpa [mul_assoc] using mul_le_mul_of_nonneg_right hC (by positivity)
  have e2 : C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps) ≤
      C' * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs' * L.sc.eps) := by
    calc
      C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps)
          = C * ((D.R.m : ℝ) * ((L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps))) := by ring
      _ ≤ C' * ((D.R.m : ℝ) * ((L.B0 + L.Nc) * L.sc.x ^ (Cabs' * L.sc.eps))) :=
        mul_le_mul hC (mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hle hBN) hm) (by positivity) hC0
      _ = C' * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs' * L.sc.eps) := by ring
  linarith

theorem Compl3.mono {D : D7} {L : SizeData₂ D} {Z : DivX D} {Csz C C' : ℝ} (h : Compl3 L Z Csz C) (hC : C ≤ C')
    (hLa : 0 ≤ L.La) : Compl3 L Z Csz C' := by
  intro u u'
  refine (h u u').trans (mul_le_mul_of_nonneg_right hC ?_)
  have ha : 0 ≤ L.sc.a := le_trans zero_le_one (Formalism.MainNotions.DIV.one_le_a L)
  have hT : (0 : ℝ) ≤ (D.host.TT.card : ℝ) := Nat.cast_nonneg _
  have hm : (0 : ℝ) ≤ (D.R.m : ℝ) := Nat.cast_nonneg _
  have hB := Formalism.MainNotions.loss_bound_nonneg L
  positivity

theorem degree_weight_bound_mono {D : D7} {L : SizeData₂ D} {C C' : ℝ} (h : Formalism.MainNotions.LocalQuadraticParts.adm11 D L C) (hC : C ≤ C') :
    Formalism.MainNotions.LocalQuadraticParts.adm11 D L C' := fun u j hj =>
  ⟨(h u j hj).1.trans (mul_le_mul_of_nonneg_right hC (Formalism.MainNotions.loss_bound_nonneg L)),
    (h u j hj).2.trans (mul_le_mul_of_nonneg_right hC (Formalism.MainNotions.loss_bound_nonneg L))⟩

end PartD

section PartE

open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions

structure DivisionRowsFace {D : D7} (L : SizeData₂ D) : Type 1 where
  Bs : DefBase D.what₂.LL
  Am : DefAmb Bs
  fc : DefSub Am → DefFace Bs
  Zs : DefSub Am
  stable : Zs.Stable
  inBlock : Zs.InBlock
  wf0 : (fc Zs).Df0.WF
  wf1 : (fc Zs).Df1.WF
  what₂ : IndefRows (fc Zs).Df0

structure DivisionPackageFace {D : D7} {L : SizeData₂ D} (Rw : DivisionRowsFace L) (C Cabs : ℝ) : Type 1 where
  Cp : ℝ
  CHp : ℝ
  cf : ConvFace Rw.Bs
  Pk : IndefPkgR Rw.Am Rw.fc cf Cp CHp
  hZs : Pk.Zs = Rw.Zs
  hRows : HEq Pk.core.base.toIndefRows Rw.what₂
  wU : D.what₂.Word → (Rw.fc Pk.Zs).Dc.Mem
  eNu : ∀ u, (Fin ((Rw.fc Pk.Zs).Dc.a (wU u)) → D.what₂.LL) ≃ₗ[D.what₂.LL] (D.div.Nu u).V
  eRR : (Fin Pk.core.cols.D → D.what₂.LL) ≃ₗ[D.what₂.LL] D.div.RR.V
  NuC : ∀ w, Submodule (𝓞 D.what₂.LL) (Fin ((Rw.fc Pk.Zs).Dc.a w) → D.what₂.LL)
  hNu : ∀ u, HLatTie (D.div.Nu u) (NuC (wU u)) ((Rw.fc Pk.Zs).Dc.Xc (wU u)) (eNu u)
  hRR : HLatTie D.div.RR Pk.core.cols.RR Pk.core.cols.XE eRR
  hBk : ∀ u x y, D.div.Bk u (eNu u x) (eRR y) = Pk.core.cols.col.B (wU u) x y
  tup : Rw.Bs.Tup → D.what₂.Tup
  eV : ∀ t, (Fin ((Rw.fc Pk.Zs).Df1.nV t) → D.what₂.LL) → D.what₂.Amb (tup t)
  brTied : (Formalism.L2.G.ServJointF.ColBrF.mk Rw.Bs (Rw.fc Pk.Zs).Df1 (Rw.fc Pk.Zs).Dc wU (fun u x => eNu u x) tup eV
    Pk.core.cols.μ).Tied
  Pl : Type
  [plF : Fintype Pl]
  [plD : DecidableEq Pl]
  R : D.what₂.Word → RecNums Rw.Bs.J Pl
  Nu : ∀ u, Submodule (𝓞 D.what₂.LL) (Fin ((Rw.fc Pk.Zs).Dc.a (wU u)) → D.what₂.LL)
  inp : ∀ u, DivInputs0R Pk.core (R u) (wU u) (Nu u) (sgRec L u)
  shift : ∀ u, NuC (wU u) = shiftLat (Nu u) (sgRec L u)
  hTie : ∀ u, (R u).hu - meanLog Pk.core.cols.κ = D.div.h u
  foTie : 2 * FoOfR Pk.core = L.Fo
  rhs : ∀ u, (R u).rhs ≤ L.MAIN u + C * (D.host.TT.card : ℝ) * L.sc.a * L.La +
    C * (D.R.m : ℝ) * (L.B0 + L.Nc) * L.sc.x ^ (Cabs * L.sc.eps)

attribute [instance] DivisionPackageFace.plF DivisionPackageFace.plD

theorem DivisionPackageFace.wordFacts {D : D7} {L : SizeData₂ D} {Rw : DivisionRowsFace L} {C Cabs : ℝ} (P : DivisionPackageFace Rw C Cabs)
    (h2 : Formalism.MainNotions.LocalQuadraticParts.adm2 D L) (hcut : ∀ μ, Formalism.BasicNotions.DV.Used D μ → Formalism.L2.G.ServJoint.CutUp D μ)
    (hN : Formalism.BasicNotions.DV.NprimeDef D L) (u : D.what₂.Word) : WordFacts L C Cabs u :=
  wordFacts_of_core_face L C Cabs u P.Pk.core P.wU P.NuC (P.eNu u) P.eRR (P.hNu u) P.hRR (P.hBk u) (P.R u) (P.Nu u) (sgRec L u)
    (divCoreClausesR_of (P.hZs ▸ Rw.wf0) (P.hZs ▸ Rw.wf1) P.Pk.core (P.R u) (P.wU u) (P.Nu u) (sgRec L u)
      { toDivInputs0R := P.inp u,
        val2 := Formalism.L2.G.ServJointF.val2AllAtRF D L _ P.brTied hcut h2 u (P.Nu u)
          (Formalism.L2.G.ServJoint.nu_into L hN u (P.eNu u) (P.NuC (P.wU u)) (P.Nu u) (P.hNu u).lat (P.shift u)) })
    (P.shift u) (P.hTie u) P.foTie (P.rhs u)

structure BridgeRowsF {eps : ℝ} (Fm : FamP eps) (Rw : Σ' x0 : ℝ, ∀ x, Fm.x1 < x → x0 ≤ x → ∀ i : Fm.Ix x, DivisionRowsFace (Fm.L x i))
    (Cabs CH : ℝ) : Prop where
  pkg : DIVinN Fm → ∃ C x0 : ℝ, ∀ x ≥ x0, ∀ (hx : Fm.x1 < x) (h : Rw.1 ≤ x) (i : Fm.Ix x), Nonempty (DivisionPackageFace (Rw.2 x hx h i) C Cabs)
  adm2 : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, Formalism.MainNotions.LocalQuadraticParts.adm2 (Fm.D x i) (Fm.L x i)
  cut : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, ∀ μ, Formalism.BasicNotions.DV.Used (Fm.D x i) μ → Formalism.L2.G.ServJoint.CutUp (Fm.D x i) μ
  c3 : ∃ C x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, Compl3 (Fm.L x i) (Fm.X x i) Fm.Csz C
  hh : DIVinN Fm → Formalism.MainNotions.LocalQuadraticParts.FrameNumberBoundFamily Fm Fm.Csz CH
  c2 : Formalism.MainNotions.LocalQuadraticParts.ComplementTwoFamily Fm
  c5 : Formalism.MainNotions.LocalQuadraticParts.ComplementCountFamily Fm
  bu : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, (Fm.D x i).BuRational
  rr : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, (Fm.D x i).RRFull
  la : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x, 0 ≤ (Fm.L x i).La

/-- Family-level divisibility bridge: combines the row-face package `BridgeRowsF` across all
large scales `x` and indices `i : Fm.Ix x` to produce `LinkDIVt Fm Cabs CH`, taking the maximum
of the component thresholds and applying `linkDIV_at_words` at each `(x, i)`. -/
theorem linkDIVt_of_rowsF {eps : ℝ} (Fm : FamP eps)
    (Rw : Σ' x0 : ℝ, ∀ x, Fm.x1 < x → x0 ≤ x → ∀ i : Fm.Ix x, DivisionRowsFace (Fm.L x i)) (Cabs CH : ℝ)
    (B : BridgeRowsF Fm Rw Cabs CH) : LinkDIVt Fm Cabs CH := by
  intro _ hN
  obtain ⟨C1, x1, h1⟩ := B.pkg hN
  obtain ⟨xa, ha⟩ := B.adm2
  obtain ⟨xo, ho⟩ := B.cut
  obtain ⟨C3, x3, h3⟩ := B.c3
  obtain ⟨xH, hH⟩ := B.hh hN
  obtain ⟨C2, x2, h2⟩ := B.c2
  obtain ⟨x5, h5⟩ := B.c5
  obtain ⟨xb, hb⟩ := B.bu
  obtain ⟨xr, hr⟩ := B.rr
  obtain ⟨xl, hl⟩ := B.la
  set M : ℝ := max x1 (max x3 (max xH (max x2 (max x5 (max xb (max xr (max xl (max xa (max xo (max Rw.1 (Fm.x1 + 1))))))))))) with hM
  have g1 : x1 ≤ M := by rw [hM]; exact le_max_left _ _
  have g3 : x3 ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have gH : xH ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have g2 : x2 ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have g5 : x5 ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have gb : xb ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have gr : xr ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have gl : xl ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have ga : xa ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have go : xo ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have gw : Rw.1 ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, true_or, or_true]
  have g0 : Fm.x1 + 1 ≤ M := by rw [hM]; simp only [le_max_iff, le_refl, or_true]
  refine ⟨max (max C1 C3) (max C2 0), M, fun x hx i => ?_⟩
  have hx1 : Fm.x1 < x := by linarith
  have hLa := hl x (le_trans gl hx) i
  have hC0 : (0 : ℝ) ≤ max (max C1 C3) (max C2 0) := le_trans (le_max_right _ _) (le_max_right _ _)
  have hhx : ∀ u, (Fm.D x i).div.h u = hExpl6 (Fm.D x i) (Fm.L x i) (Fm.X x i) Fm.Csz u := Fm.h_eq x hx1 i
  obtain ⟨P⟩ := h1 x (le_trans g1 hx) hx1 (le_trans gw hx) i
  exact linkDIV_at_words (Fm.L x i) (Fm.X x i) Fm.Csz _ Cabs CH hhx
    (fun u => (P.wordFacts (ha x (le_trans ga hx) i) (ho x (le_trans go hx) i) (Fm.nprimeDef x hx1 i) u).mono
      (le_trans (le_max_left _ _) (le_max_left _ _)) hC0 le_rfl hLa)
    ((h3 x (le_trans g3 hx) i).mono (le_trans (le_max_right _ _) (le_max_left _ _)) hLa)
    (hH x (le_trans gH hx) hx1 i)
    (degree_weight_bound_mono (h2 x (le_trans g2 hx) i) (le_trans (le_max_left _ _) (le_max_right _ _)))
    (h5 x (le_trans g5 hx) i) (hb x (le_trans gb hx) i) (hr x (le_trans gr hx) i) (Formalism.MainNotions.WeightDegreeSizes.zero_gain_above_family Fm x hx1 i)

end PartE

end Formalism.L2.DIV

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.RecBridge =====

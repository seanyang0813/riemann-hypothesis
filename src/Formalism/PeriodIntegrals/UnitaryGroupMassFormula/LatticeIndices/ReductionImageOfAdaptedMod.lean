module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GlRedEqOneIff
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParabolicReductionImage
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfLocalMod
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.StRedOfSplit
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GOfPrime
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ImASubKpp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParabolicImageOfBasisAdapted
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.StKHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.CongSpanSingleIff
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSub
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ImAInModPSplit
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsMulVec
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FirstCoordsMulVec
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FrAIntReindex
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSmulInteger
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.LocDegOneBelow
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SplitTransport
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsTensorSmul

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfFrame, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfTransitive, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.Imports, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.LocCongIffEnt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdapted, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdaptedMod

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfFrame =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfFrame", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GlRedEqOneIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParabolicReductionImage\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfLocalMod\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.StRedOfSplit\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GOfPrime\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ImASubKpp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed

variable {D : D7} (X : HidaSetting D) (hb : AdBridgeIso X.B.I)

def StFrameA (p : TypX X) : Prop :=
  ∃ π : Op X p →+* ZMod (gOf p), Function.Surjective π ∧
    RingHom.ker π = Ideal.span {((gOf p : ℕ) : Op X p)} ∧
  ∃ K : Subgroup (HAp X p), (K : Set (HAp X p)) = KvX X p ∧
    ∃ ψ : K →* GL (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (Op X p), Function.Surjective ψ ∧
      (∀ x : K, (∀ i j, ((ψ x : Matrix (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (Op X p))
        - 1) i j ∈ Ideal.span {((gOf p : ℕ) : Op X p)}) ↔ (x : HAp X p) ∈ KgX X p) ∧
      ∃ c, ∀ x : K, LocCong X p x ↔
        (glRed π c)⁻¹ * glRed π (ψ x) * glRed π c ∈ nuG (ZMod (gOf p)) D.R.rS D.R.k

theorem reduction_image_of_frame (p : TypX X) (h : StFrameA X p) : LevelReductionImage X hb p := by
  obtain ⟨π, hπ, hker, K, hKc, ψ, hψ, hP, c, hc⟩ := h
  have : Fact (gOf p).Prime := ⟨gOf_prime X p⟩
  set ρ₀ : K →* GL (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (ZMod (gOf p)) :=
    (MulAut.conj (glRed π c)⁻¹).toMonoidHom.comp ((glRed π).comp ψ) with hρ₀
  have hval : ∀ x : K, ρ₀ x = (glRed π c)⁻¹ * glRed π (ψ x) * glRed π c := by
    intro x; simp [hρ₀]
  have hk₀ : ∀ x : K, ρ₀ x = 1 ↔ (x : HAp X p) ∈ KgX X p := by
    intro x
    rw [hρ₀, MonoidHom.comp_apply, MulEquiv.coe_toMonoidHom, MulEquiv.map_eq_one_iff,
      MonoidHom.comp_apply, glRed_eq_one_iff, hker]
    exact hP x
  have hon : Function.Surjective ρ₀ := by
    have h := (MulEquiv.surjective (MulAut.conj (glRed π c)⁻¹)).comp
      ((glRed_surjective π hπ (isUnit_of_map π hπ)).comp hψ)
    exact h
  refine ⟨K, hKc, ρ₀, hon, hk₀, (nuG (ZMod (gOf p)) D.R.rS D.R.k).comap ρ₀, ?_, ?_, 1, ?_⟩
  · ext y
    rw [stImAloc_holds X hb p]
    constructor
    · rintro ⟨x, hx, rfl⟩
      refine ⟨?_, (hc x).2 ((hval x) ▸ hx)⟩
      rw [← hKc]; exact x.2
    · rintro ⟨hy, hcy⟩
      have hyK : y ∈ K := by rw [← hKc] at hy; exact hy
      refine ⟨⟨y, hyK⟩, ?_, rfl⟩
      show ρ₀ ⟨y, hyK⟩ ∈ nuG (ZMod (gOf p)) D.R.rS D.R.k
      rw [hval]; exact (hc ⟨y, hyK⟩).1 hcy
  · intro x hx
    show ρ₀ x ∈ nuG (ZMod (gOf p)) D.R.rS D.R.k
    rw [MonoidHom.mem_ker.mp hx]; exact one_mem _
  · rw [Subgroup.map_comap_eq_self_of_surjective hon]
    ext z; simp

end MassDataIdxSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfFrame =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfTransitive =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfTransitive", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfFrame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParabolicImageOfBasisAdapted\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.StKHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed MassDataIdxSpl Matrix

section Loc

variable {D : D7} (X : HidaSetting D)

def TransA (p : TypX X) (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p)
    (Q : GL (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (FpX X p)) (π : Op X p →+* ZMod (gOf p)) : Prop :=
  ∀ x : HAp X p, x ∈ KvX X p → ∀ Y : GL (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (Op X p),
    ((glRed (algebraMap (Op X p) (FpX X p)) Y : GL (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (FpX X p)) :
        Matrix (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (FpX X p)) =
      ((Q⁻¹ : GL (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (FpX X p)) :
          Matrix (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (FpX X p)) *
        Matrix.reindex (idxEquiv X) (idxEquiv X) (cmp1 X.B.I.cm.sig X.B.I.J θ x) *
        (Q : Matrix (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (FpX X p)) →
    (LocCong X p x ↔ glRed π Y ∈ nuG (ZMod (gOf p)) D.R.rS D.R.k)

def StTransA (p : TypX X) : Prop :=
  ∃ θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p, IsSplitEquiv X p θ ∧
    ∃ Q : GL (Formalism.FourierDecayAlt.S3.Idx D.R.rS D.R.k) (FpX X p), LatBasis X p θ (reindex₂ X p Q) ∧
      ∃ π : Op X p →+* ZMod (gOf p), Function.Surjective π ∧
        RingHom.ker π = Ideal.span {((gOf p : ℕ) : Op X p)} ∧ TransA X p θ Q π

theorem stFrameA_of_trans (hC : LatCoreX) (p : TypX X) (h : StTransA X p) : StFrameA X p := by
  obtain ⟨θ, hθ, Q, hL, π, hπ, hker, hT⟩ := h
  obtain ⟨ψ, hψ, hk, hform⟩ := hC X p θ hθ Q hL (stK_holds X p).choose (stK_holds X p).choose_spec.1
  refine ⟨π, hπ, hker, (stK_holds X p).choose, (stK_holds X p).choose_spec.1, ψ, hψ, hk, 1, fun x => ?_⟩
  rw [map_one, inv_one, one_mul, mul_one]
  have hx : (x : HAp X p) ∈ KvX X p :=
    (Set.ext_iff.mp (stK_holds X p).choose_spec.1 (x : HAp X p)).1 x.2
  exact hT x hx (ψ x) (hform x)

end Loc

end MassDataIdxSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfTransitive =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.Imports =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.Imports", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.CongSpanSingleIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxFrA

open Matrix

variable {F k : Type} [Field F] [Field k] (O : ValuationSubring F) (π : O →+* k) (γ : O)
  {ι : Type} [Fintype ι] [DecidableEq ι]

theorem clause_iff (hker : RingHom.ker π = Ideal.span {γ}) (Y : Matrix ι ι O) {β : Type} (u : β → ι → F)
    (pos : β → ι) (hu : ∀ b, ∃ z, IntVec O z ∧ u b = Pi.single (pos b) 1 + (γ : F) • z) (s : Set β)
    (w : ι → F) (j : ι) (hw : ∃ z, IntVec O z ∧ w = Pi.single j 1 + (γ : F) • z) :
    CongSpan O γ (u '' s) ((Y.map ((↑) : O → F) - 1) *ᵥ w) ↔
      ∀ i, i ∉ pos '' s → π (Y i j) = if i = j then 1 else 0 := by
  classical
  have hdiv : ∀ a : O, π a = 0 ↔ ∃ c : O, a = γ * c := by
    intro a
    rw [← RingHom.mem_ker, hker, Ideal.mem_span_singleton']
    constructor
    · rintro ⟨c, hc⟩
      exact ⟨c, by rw [← hc, mul_comm]⟩
    · rintro ⟨c, hc⟩
      exact ⟨c, by rw [hc, mul_comm]⟩
  have hsm : ∀ (a : O) (x : ι → F), a • x = (a : F) • x := fun a x => rfl
  obtain ⟨z, hz, rfl⟩ := hw
  set Y' := Y.map ((↑) : O → F) with hY'
  let cO : ι → O := fun i => Y i j - (if i = j then 1 else 0)
  have hcO : ∀ i, (cO i : F) = (Y i j : F) - (if i = j then 1 else 0) := by
    intro i
    by_cases hij : i = j <;> simp [cO, hij]
  have hcol : (Y' - 1) *ᵥ Pi.single j (1 : F) = ∑ i, (cO i : F) • Pi.single i (1 : F) := by
    ext i
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, Pi.single_apply, smul_eq_mul, mul_ite, mul_one, mul_zero,
      Finset.sum_ite_eq, Finset.mem_univ, if_true, hcO]
    simp [Matrix.mulVec, dotProduct, Pi.single_apply, hY', Matrix.one_apply]
  have hint : ∀ i, ((Y' - 1) *ᵥ z) i ∈ O := by
    intro i
    simp only [Matrix.mulVec, dotProduct, Matrix.sub_apply, Matrix.one_apply, hY', Matrix.map_apply]
    refine _root_.sum_mem fun l _ => mul_mem (sub_mem (Y i l).2 ?_) (hz l)
    split_ifs
    · exact one_mem O
    · exact zero_mem O
  have hentry : ∀ i, ((Y' - 1) *ᵥ (Pi.single j 1 + (γ : F) • z)) i =
      (cO i : F) + (γ : F) * ((Y' - 1) *ᵥ z) i := by
    intro i
    rw [Matrix.mulVec_add, Matrix.mulVec_smul, Pi.add_apply, Pi.smul_apply, smul_eq_mul, hcol,
      Finset.sum_apply]
    simp [Pi.single_apply]
  constructor
  · rintro ⟨W, hW, z', hz', hv⟩ i hi
    have key : ∀ v ∈ Submodule.span O (u '' s), ∃ c : O, v i = (γ : F) * c := by
      intro v hv
      induction hv using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨b, hb, rfl⟩ := hx
        obtain ⟨zb, hzb, hub⟩ := hu b
        refine ⟨⟨zb i, hzb i⟩, ?_⟩
        have hne : i ≠ pos b := fun h => hi ⟨b, hb, h.symm⟩
        simp [hub, hne]
      | zero => exact ⟨0, by simp⟩
      | add x y _ _ hx hy =>
        obtain ⟨c1, h1⟩ := hx
        obtain ⟨c2, h2⟩ := hy
        exact ⟨c1 + c2, by rw [Pi.add_apply, h1, h2]; push_cast; ring⟩
      | smul a x _ hx =>
        obtain ⟨c, h⟩ := hx
        refine ⟨a * c, ?_⟩
        rw [hsm, Pi.smul_apply, smul_eq_mul, h]
        push_cast
        ring
    obtain ⟨c, hc⟩ := key W hW
    have hvi := congrFun hv i
    rw [hentry i, Pi.add_apply, Pi.smul_apply, smul_eq_mul, hc] at hvi
    have hO : cO i = γ * ⟨(c : F) + z' i - ((Y' - 1) *ᵥ z) i,
        sub_mem (add_mem c.2 (hz' i)) (hint i)⟩ := by
      apply Subtype.ext
      show (cO i : F) = (γ : F) * ((c : F) + z' i - ((Y' - 1) *ᵥ z) i)
      linear_combination hvi
    have h0 := (hdiv _).2 ⟨_, hO⟩
    simp only [cO, map_sub, sub_eq_zero] at h0
    rw [h0]
    split_ifs <;> simp
  · intro hcond
    have hsel : ∀ i, i ∈ pos '' s → ∃ b, b ∈ s ∧ pos b = i := fun i hi => hi
    choose bsel hbs hpos using hsel
    have hout : ∀ i, i ∉ pos '' s → ∃ e : O, cO i = γ * e := by
      intro i hi
      apply (hdiv _).1
      simp only [cO, map_sub, hcond i hi]
      split_ifs <;> simp
    choose dsel hdsel using hout
    choose zb hzb hub using hu
    refine ⟨∑ i, (if h : i ∈ pos '' s then cO i • u (bsel i h) else 0), ?_,
      ∑ i, ((if h : i ∈ pos '' s then 0 else (dsel i h : F) • Pi.single i (1 : F)) -
        (if h : i ∈ pos '' s then (cO i : F) • zb (bsel i h) else 0)) + (Y' - 1) *ᵥ z, ?_, ?_⟩
    · refine _root_.sum_mem fun i _ => ?_
      split_ifs with h
      · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨bsel i h, hbs i h, rfl⟩)
      · exact Submodule.zero_mem _
    · intro l
      rw [Pi.add_apply, Finset.sum_apply]
      refine add_mem (_root_.sum_mem fun i _ => ?_) (hint l)
      rw [Pi.sub_apply]
      refine sub_mem ?_ ?_
      · split_ifs with h
        · exact zero_mem O
        · rw [Pi.smul_apply, smul_eq_mul]
          exact mul_mem (dsel i h).2 (by rw [Pi.single_apply]; split_ifs; exacts [one_mem O, zero_mem O])
      · split_ifs with h
        · rw [Pi.smul_apply, smul_eq_mul]
          exact mul_mem (cO i).2 (hzb _ l)
        · exact zero_mem O
    · rw [Matrix.mulVec_add, Matrix.mulVec_smul, hcol, smul_add, Finset.smul_sum, ← add_assoc,
        ← Finset.sum_add_distrib]
      congr 1
      refine Finset.sum_congr rfl fun i _ => ?_
      by_cases h : i ∈ pos '' s
      · simp only [h, dif_pos, hsm, hub, hpos i h, zero_sub, smul_add, smul_neg, smul_smul]
        rw [mul_comm]
        abel
      · simp only [h, dif_neg, not_false_eq_true, sub_zero, zero_add, smul_smul]
        rw [hdsel i h]
        push_cast
        rfl

end MassDataIdxFrA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.Imports =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.LocCongIffEnt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.LocCongIffEnt", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSub\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GlRedEqOneIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GOfPrime\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ImAInModPSplit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.Imports\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsMulVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed MassDataIdxSpl Matrix
  MassDataIdxFrA
open scoped TensorProduct

section Loc

variable {D : D7} (X : HidaSetting D) (p : TypX X) (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p)
  (Q : GL (IdxD D) (FpX X p))

theorem locCong_iff_ent (hθ : IsSplitEquiv X p θ) (π : Op X p →+* ZMod (gOf p))
    (hker : RingHom.ker π = Ideal.span {((gOf p : ℕ) : Op X p)}) (hS : SplitA X p θ Q) (hA : AdaptA X p θ Q)
    (x : HAp X p) (Y : GL (IdxD D) (Op X p))
    (hY : ((glRed (algebraMap (Op X p) (FpX X p)) Y : GL (IdxD D) (FpX X p)) :
        Matrix (IdxD D) (IdxD D) (FpX X p)) =
      ((Q⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *
        Matrix.reindex (idxEquiv X) (idxEquiv X) (cmp1 X.B.I.cm.sig X.B.I.J θ x) *
        (Q : Matrix (IdxD D) (IdxD D) (FpX X p))) :
    LocCong X p x ↔ EntA X p π Y := by
  have : Fact (gOf p).Prime := ⟨gOf_prime X p⟩
  obtain ⟨hE1, hZ1, hB1, hE2, hZ2, hB2⟩ := hA
  set O := OvA X p
  set M := ((HA.mat (FpX X p) X.B.I.cm.sig X.B.I.J x : GL (Fin X.B.I.n) (TpX X p)) :
    Matrix (Fin X.B.I.n) (Fin X.B.I.n) (TpX X p))
  set Ym := (Y : Matrix (IdxD D) (IdxD D) (Op X p))
  set Yi := ((Y⁻¹ : GL (IdxD D) (Op X p)) : Matrix (IdxD D) (IdxD D) (Op X p))
  have hYm : ((Q⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *
      Matrix.reindex (idxEquiv X) (idxEquiv X) (M.map fun t => (θ t).1) *
      (Q : Matrix (IdxD D) (IdxD D) (FpX X p)) = Ym.map ((↑) : O → FpX X p) := hY.symm
  have hZ : Yi.map ((↑) : O → FpX X p) * (((Q⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *
      Matrix.reindex (idxEquiv X) (idxEquiv X) (cmp1 X.B.I.cm.sig X.B.I.J θ x) *
      (Q : Matrix (IdxD D) (IdxD D) (FpX X p))) = 1 := by
    rw [← hY]
    have h1 : Yi * Ym = 1 := by
      simp only [Yi, Ym]; rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
    have h2 := congrArg (fun A => A.map (algebraMap (Op X p) (FpX X p))) h1
    simp only [Matrix.map_mul, Matrix.map_one _ (map_zero _) (map_one _)] at h2
    exact h2
  have c1 : ∀ u, crd1 X p θ Q ((M - 1) *ᵥ u) = (Ym.map ((↑) : O → FpX X p) - 1) *ᵥ crd1 X p θ Q u := by
    intro u
    rw [Matrix.sub_mulVec, Matrix.one_mulVec, firstCoords_sub, firstCoords_mulVec, hYm, Matrix.sub_mulVec, Matrix.one_mulVec]
  have c2 : ∀ u, crd2 X p θ Q ((M - 1) *ᵥ u) = (Yiᵀ.map ((↑) : O → FpX X p) - 1) *ᵥ crd2 X p θ Q u := by
    intro u
    rw [Matrix.sub_mulVec, Matrix.one_mulVec, secondCoords_sub, secondCoords_mulVec X p θ Q hθ x _ hZ, Matrix.sub_mulVec,
      Matrix.one_mulVec, Matrix.transpose_map]

  have hsplit : ∀ S y, InModP X p X.B.g S y ↔ CongSpan O (gA X p) (crd1 X p θ Q '' S) (crd1 X p θ Q y) ∧
      CongSpan O (gA X p) (crd2 X p θ Q '' S) (crd2 X p θ Q y) := fun S y => (imA_inModP_Bg X p S y).trans (hS S y)

  have ce : ∀ a : Fin D.R.rS, InModP X p X.B.g ((fun b => PI.FinKW.vecV X.B.I p.1 (X.e0 b)) '' {b | b.1 < a.1})
      ((M - 1) *ᵥ PI.FinKW.vecV X.B.I p.1 (X.e0 a)) ↔
      (∀ i, i ∉ (Sum.inl '' {b : Fin D.R.rS | b.1 < a.1} : Set (IdxD D)) →
        π (Ym i (Sum.inl a)) = if i = Sum.inl a then 1 else 0) ∧
      (∀ i, i ∉ (fposA (D := D) '' {b : Fin D.R.rS | b.1 < a.1}) →
        π (Yi (fposA a) i) = if i = fposA a then 1 else 0) := by
    intro a
    rw [hsplit, Set.image_image, Set.image_image, c1, c2]
    refine and_congr ?_ ?_
    · exact clause_iff O π (gA X p) hker Ym _ (fun b => (Sum.inl b : IdxD D)) (fun b => hE1 b) _ _ _ (hE1 a)
    · have := clause_iff O π (gA X p) hker Yiᵀ _ (fposA (D := D)) (fun b => hE2 b) {b : Fin D.R.rS | b.1 < a.1}
        _ (fposA a) (hE2 a)
      simpa only [Matrix.transpose_apply] using this

  have cz : InModP X p X.B.g (Set.range fun b => PI.FinKW.vecV X.B.I p.1 (X.e0 b))
      ((M - 1) *ᵥ PI.FinKW.vecV X.B.I p.1 X.z0) ↔
      (∀ i, i ∉ (Sum.inl '' Set.univ : Set (IdxD D)) → π (Ym i zI) = if i = zI then 1 else 0) ∧
      (∀ i, i ∉ (fposA (D := D) '' Set.univ) → π (Yi zI i) = if i = zI then 1 else 0) := by
    rw [hsplit, ← Set.image_univ, Set.image_image, Set.image_image, c1, c2]
    refine and_congr ?_ ?_
    · exact clause_iff O π (gA X p) hker Ym _ (fun b => (Sum.inl b : IdxD D)) (fun b => hE1 b) _ _ _ hZ1
    · obtain ⟨z, hz, hz'⟩ := hZ2
      have hw : ∃ z', IntVec O z' ∧ -crd2 X p θ Q (PI.FinKW.vecV X.B.I p.1 X.z0) =
          Pi.single zI 1 + ((gA X p : O) : FpX X p) • z' :=
        ⟨-z, fun i => by simpa using neg_mem (hz i), by rw [hz', neg_add, neg_neg, smul_neg]⟩
      have hneg : (Yiᵀ.map ((↑) : O → FpX X p) - 1) *ᵥ crd2 X p θ Q (PI.FinKW.vecV X.B.I p.1 X.z0) =
          -((Yiᵀ.map ((↑) : O → FpX X p) - 1) *ᵥ -crd2 X p θ Q (PI.FinKW.vecV X.B.I p.1 X.z0)) := by
        rw [Matrix.mulVec_neg, neg_neg]
      rw [hneg, congSpan_neg]
      have := clause_iff O π (gA X p) hker Yiᵀ _ (fposA (D := D)) (fun b => hE2 b) Set.univ _ zI hw
      simpa only [Matrix.transpose_apply] using this

  have cw : ∀ j : Fin D.R.k, InModP X p X.B.g ((Set.range fun b => PI.FinKW.vecV X.B.I p.1 (X.e0 b)) ∪
      (fun j => PI.FinKW.vecV X.B.I p.1 (X.bw j)) '' {j' | j'.1 < j.1})
      ((M - 1) *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw j)) ↔
      (∀ i, i ∉ (posW (r := D.R.rS) j : Set (IdxD D)) → π (Ym i (wI j)) = if i = wI j then 1 else 0) := by
    intro j
    have h0 : crd2 X p θ Q ((M - 1) *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw j)) = 0 := by
      rw [c2]
      have : crd2 X p θ Q (PI.FinKW.vecV X.B.I p.1 (X.bw j)) = 0 := by
        unfold crd2; rw [hB2 j]
        have : ((0 : Fin X.B.I.n → FpX X p) ∘ (idxEquiv X).symm) = 0 := rfl
        rw [this, Matrix.mulVec_zero, Matrix.mulVec_zero]
      rw [this, Matrix.mulVec_zero]
    rw [hsplit, h0, c1]
    simp only [congSpan_zero, and_true]
    let u : Fin D.R.rS ⊕ Fin D.R.k → IdxD D → FpX X p :=
      Sum.elim (fun b => crd1 X p θ Q (PI.FinKW.vecV X.B.I p.1 (X.e0 b)))
        (fun j' => crd1 X p θ Q (PI.FinKW.vecV X.B.I p.1 (X.bw j')))
    let pos : Fin D.R.rS ⊕ Fin D.R.k → IdxD D := Sum.elim Sum.inl wI
    let s : Set (Fin D.R.rS ⊕ Fin D.R.k) := Set.range Sum.inl ∪ Sum.inr '' {j' | j'.1 < j.1}
    have hset : crd1 X p θ Q '' ((Set.range fun b => PI.FinKW.vecV X.B.I p.1 (X.e0 b)) ∪
        (fun j => PI.FinKW.vecV X.B.I p.1 (X.bw j)) '' {j' | j'.1 < j.1}) = u '' s := by
      ext v; simp only [u, s, Set.mem_image, Set.mem_union, Set.mem_range, Set.mem_ofPred_eq]
      constructor
      · rintro ⟨x, (⟨y, rfl⟩ | ⟨b, hb, rfl⟩), rfl⟩
        · exact ⟨Sum.inl y, Or.inl ⟨y, rfl⟩, rfl⟩
        · exact ⟨Sum.inr b, Or.inr ⟨b, hb, rfl⟩, rfl⟩
      · rintro ⟨c, (⟨y, rfl⟩ | ⟨b, hb, rfl⟩), rfl⟩
        · exact ⟨_, Or.inl ⟨y, rfl⟩, rfl⟩
        · exact ⟨_, Or.inr ⟨b, hb, rfl⟩, rfl⟩
    have hpos : pos '' s = posW (r := D.R.rS) j := by
      ext v; simp [pos, s, posW]
    rw [hset]
    have hu : ∀ b, ∃ z, IntVec O z ∧ u b = Pi.single (pos b) 1 + ((gA X p : O) : FpX X p) • z := by
      rintro (b | j')
      · exact hE1 b
      · exact hB1 j'
    have := clause_iff O π (gA X p) hker Ym u pos hu s _ (wI j) (hB1 j)
    rw [hpos] at this
    exact this
  unfold LocCong EntA
  rw [forall_congr' ce, cz, forall_congr' cw, forall_and]
  constructor
  · rintro ⟨⟨hP, hQ⟩, ⟨hR, hS'⟩, hT⟩; exact ⟨hP, hR, hT, hQ, hS'⟩
  · rintro ⟨hP, hR, hT, hQ, hS'⟩; exact ⟨⟨hP, hQ⟩, ⟨hR, hS'⟩, hT⟩

end Loc

end MassDataIdxSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.LocCongIffEnt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdapted =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdapted", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfTransitive\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSub\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.GOfPrime\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.LocCongIffEnt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.LocDegOneBelow\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SplitTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed MassDataIdxSpl Matrix
  MassDataIdxFrA
open scoped TensorProduct

section Pos

variable {r k : ℕ}

theorem frA_condE (a : Fin r) (i : Formalism.FourierDecayAlt.S3.Idx r k) :
    (∀ a' : Fin (r + 1), a' < Fin.castSucc a → i ≠ pe a') ↔ i ∉ (Sum.inl '' {b : Fin r | b.1 < a.1}) := by
  constructor
  · rintro h ⟨b, hb, hbi⟩
    exact h (Fin.castSucc b) (Fin.castSucc_lt_castSucc_iff.mpr hb) (by rw [pe_castSucc]; exact hbi.symm)
  · intro h a' ha' hi
    apply h
    have ha2 : (a' : ℕ) < a.1 := ha'
    refine ⟨⟨a', by omega⟩, ha2, ?_⟩
    rw [hi, pe_inl_of_lt ha']

theorem frA_condZ (i : Formalism.FourierDecayAlt.S3.Idx r k) :
    (∀ a' : Fin (r + 1), a' < Fin.last r → i ≠ pe a') ↔ i ∉ (Sum.inl '' Set.univ) := by
  constructor
  · rintro h ⟨b, -, hbi⟩
    exact h (Fin.castSucc b) (Fin.castSucc_lt_last b) (by rw [pe_castSucc]; exact hbi.symm)
  · intro h a' ha' hi
    apply h
    refine ⟨⟨a', ha'⟩, trivial, ?_⟩
    rw [hi, pe_inl_of_lt ha']

theorem frA_condF (a : Fin r) (i : Formalism.FourierDecayAlt.S3.Idx r k) :
    (∀ a' : Fin (r + 1), a' < Fin.castSucc a → i ≠ pf a') ↔
      i ∉ ((fun b : Fin r => (Sum.inr (Sum.inr (Fin.rev b)) : Formalism.FourierDecayAlt.S3.Idx r k)) '' {b : Fin r | b.1 < a.1}) := by
  constructor
  · rintro h ⟨b, hb, hbi⟩
    exact h (Fin.castSucc b) (Fin.castSucc_lt_castSucc_iff.mpr hb) (by rw [pf_castSucc]; exact hbi.symm)
  · intro h a' ha' hi
    apply h
    have ha2 : (a' : ℕ) < a.1 := ha'
    refine ⟨⟨a', by omega⟩, ha2, ?_⟩
    rw [hi, pf_of_lt ha']

theorem frA_condFZ (i : Formalism.FourierDecayAlt.S3.Idx r k) :
    (∀ a' : Fin (r + 1), a' < Fin.last r → i ≠ pf a') ↔
      i ∉ ((fun b : Fin r => (Sum.inr (Sum.inr (Fin.rev b)) : Formalism.FourierDecayAlt.S3.Idx r k)) '' Set.univ) := by
  constructor
  · rintro h ⟨b, -, hbi⟩
    exact h (Fin.castSucc b) (Fin.castSucc_lt_last b) (by rw [pf_castSucc]; exact hbi.symm)
  · intro h a' ha' hi
    apply h
    refine ⟨⟨a', ha'⟩, trivial, ?_⟩
    rw [hi, pf_of_lt ha']

end Pos

section Loc

variable {D : D7} (X : HidaSetting D) (p : TypX X)

theorem ent_iff_nuG (π : Op X p →+* ZMod (gOf p)) (Y : GL (IdxD D) (Op X p)) :
    EntA X p π Y ↔ glRed π Y ∈ nuG (ZMod (gOf p)) D.R.rS D.R.k := by
  have : Fact (gOf p).Prime := ⟨gOf_prime X p⟩
  open Formalism.FourierDecayAlt.S3 Formalism.DoubleCosetMeasures in
  have colW_iff {K : Type} [Field K] {r k : ℕ} (m : Matrix (Idx r k) (Idx r k) K) :
      ColW m ↔ ∀ i : Fin k, ∀ j, j ∉ posW (r := r) i → m j (wI i) = if j = wI i then 1 else 0 := by
    unfold ColW
    refine forall_congr' fun i => ?_
    rw [mem_span_single]
    refine forall_congr' fun j => forall_congr' fun _ => ?_
    have e : (m *ᵥ Pi.single (wI i) (1 : K)) j = m j (wI i) := by rw [Matrix.mulVec_single_one]; rfl
    rw [Pi.sub_apply, sub_eq_zero, e, Pi.single_apply]

  have par_uni_iff_flags {K : Type} [Field K] {r k : ℕ} (x y : Matrix (Idx r k) (Idx r k) K) (hxy : x * y = 1) (hyx : y * x = 1) :
      Par IsUpUni x ↔ ColC x ∧ ColW x ∧ RowC y := by
    constructor
    · intro hx
      have hu : Par (fun h => IsUnit h.det) x := by
        obtain ⟨h11, h33, h21, h31, h32, h, hh, h22⟩ := hx
        exact ⟨h11, h33, h21, h31, h32, h, uni_unit hh, h22⟩
      obtain ⟨hC, hR⟩ := (par_iff_flags x y hxy hyx).1 hu
      refine ⟨hC, ?_, hR⟩
      obtain ⟨h11, h33, h21, h31, h32, h, hh, h22⟩ := hx
      rw [colW_iff]
      intro i j hj
      rcases j with a | (j | u) | c
      · exact absurd (Or.inl ⟨a, rfl⟩) hj
      · have e := congrFun (congrFun h22 (Sum.inl j)) (Sum.inl i)
        simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₁₁] at e
        have hji : ¬ j < i := fun hlt => hj (Or.inr ⟨j, hlt, rfl⟩)
        show x (wI j) (wI i) = _
        rw [show x (wI j) (wI i) = h j i from e]
        by_cases hij : j = i
        · subst hij; simp [hh.2 j, wI]
        · have hlt : i < j := lt_of_le_of_ne (not_lt.1 hji) (Ne.symm hij)
          rw [hh.1 hlt]
          have : (wI j : Idx r k) ≠ wI i := by
            intro e'; apply hij; simpa [wI] using e'
          simp [wI, hij]
      · have e := congrFun (congrFun h22 (Sum.inr u)) (Sum.inl i)
        simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₂₁, Matrix.zero_apply] at e
        have e' : x (Sum.inr (Sum.inl (Sum.inr u))) (wI i) = 0 := e
        rw [e']; simp [wI]
      · have e := congrFun (congrFun h32 c) (Sum.inl i)
        simp only [b32, Matrix.of_apply, Matrix.zero_apply] at e
        have e' : x (Sum.inr (Sum.inr c)) (wI i) = 0 := e
        rw [e']; simp [wI]
    · rintro ⟨hC, hW, hR⟩
      obtain ⟨h11, h33, h21, h31, h32, h, -, h22⟩ := (par_iff_flags x y hxy hyx).2 ⟨hC, hR⟩
      refine ⟨h11, h33, h21, h31, h32, h, ⟨fun j i hlt => ?_, fun i => ?_⟩, h22⟩
      ·
        have e := congrFun (congrFun h22 (Sum.inl j)) (Sum.inl i)
        simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₁₁] at e
        rw [← e]
        have hnot : (wI j : Idx r k) ∉ posW (r := r) i := by
          rintro (⟨a, ha⟩ | ⟨j', hj', he⟩)
          · simp [wI] at ha
          · have : j' = j := by simpa [wI] using he
            subst this
            exact absurd hlt (not_lt.2 (le_of_lt hj'))
        have := (colW_iff x).1 hW i (wI j) hnot
        rw [show x (wI j) (wI i) = x (Sum.inr (Sum.inl (Sum.inl j))) (Sum.inr (Sum.inl (Sum.inl i))) from rfl] at this
        rw [this]
        have hne : (wI j : Idx r k) ≠ wI i := by
          intro e'; have : j = i := by simpa [wI] using e'
          exact absurd hlt (by rw [this]; exact lt_irrefl _)
        simp [hne]
      · have e := congrFun (congrFun h22 (Sum.inl i)) (Sum.inl i)
        simp only [b22, midEmb, Matrix.of_apply, Matrix.fromBlocks_apply₁₁] at e
        rw [← e]
        have hnot : (wI i : Idx r k) ∉ posW (r := r) i := by
          rintro (⟨a, ha⟩ | ⟨j', hj', he⟩)
          · simp [wI] at ha
          · have : j' = i := by simpa [wI] using he
            subst this
            exact lt_irrefl j' hj'
        have := (colW_iff x).1 hW i (wI i) hnot
        have h1 : x (wI i) (wI i) = 1 := by simpa using this
        exact h1

  have mem_nuG_iff_flags {K : Type} [Field K] {r k : ℕ} (g : GL (Idx r k) K) :
      g ∈ nuG K r k ↔ ColFlag (g : Matrix (Idx r k) (Idx r k) K) ∧ ColW (g : Matrix (Idx r k) (Idx r k) K) ∧
        RowFlag ((g⁻¹ : GL (Idx r k) K) : Matrix (Idx r k) (Idx r k) K) := by
    rw [colFlag_iff, rowFlag_iff]
    exact par_uni_iff_flags _ _ (by rw [← Units.val_mul, mul_inv_cancel, Units.val_one])
      (by rw [← Units.val_mul, inv_mul_cancel, Units.val_one])
  rw [mem_nuG_iff_flags, colFlag_iff', colW_iff, rowFlag_iff', ← map_inv, Fin.forall_fin_succ',
    Fin.forall_fin_succ']
  simp only [pe_castSucc, pe_last, pf_castSucc, pf_last]
  simp only [frA_condE, frA_condZ, frA_condF, frA_condFZ]
  unfold EntA
  constructor
  · rintro ⟨hP, hR, hT, hQ, hS⟩
    exact ⟨⟨hP, hR⟩, hT, ⟨hQ, hS⟩⟩
  · rintro ⟨⟨hP, hR⟩, hT, ⟨hQ, hS⟩⟩
    exact ⟨hP, hR, hT, hQ, hS⟩

variable (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p) (Q : GL (IdxD D) (FpX X p))

theorem transA_of (hθ : IsSplitEquiv X p θ) (π : Op X p →+* ZMod (gOf p))
    (hker : RingHom.ker π = Ideal.span {((gOf p : ℕ) : Op X p)}) (hS : SplitA X p θ Q) (hA : AdaptA X p θ Q) :
    TransA X p θ Q π := fun x _ Y hY =>
  (locCong_iff_ent X p θ Q hθ π hker hS hA x Y hY).trans (ent_iff_nuG X p π Y)

def StAdaptA : Prop :=
  ∃ θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p, IsSplitEquiv X p θ ∧
    ∃ Q : GL (IdxD D) (FpX X p), LatBasis X p θ (reindex₂ X p Q) ∧ SplitA X p θ Q ∧ AdaptA X p θ Q

theorem stFrameA_of_adapt (hC : LatCoreX) (h : StAdaptA X p) : StFrameA X p := by
  obtain ⟨θ, hθ, Q, hL, hS, hA⟩ := h
  have hres : ResArith X p := by
    have hgp : Fact (gOf p).Prime := ⟨gOf_prime X p⟩
    have hmem : ((gOf p : ℕ) : 𝓞 X.B.I.F) ∈ p.1.asIdeal := by
      have hty := (mem_typSet X.B.I.F (D.host.g 0) (D.host.g 1) (D.host.g_prime 0).ne_zero
        (D.host.g_prime 1).ne_zero p.1).1 p.2
      unfold gOf
      split_ifs with h
      · exact h
      · exact hty.resolve_left h
    have hsplit : {w : IsDedekindDomain.HeightOneSpectrum (𝓞 X.B.I.E) |
        ((gOf p : ℕ) : 𝓞 X.B.I.E) ∈ w.asIdeal}.ncard = Module.finrank ℚ X.B.I.E := by
      unfold gOf
      split_ifs
      · exact MassDataIdxRes.split_transport X.ιE _ (D.nd.g_split 0)
      · exact MassDataIdxRes.split_transport X.ιE _ (D.nd.g_split 1)
    obtain ⟨he, hf⟩ := MassDataIdxRes.locDeg_one_below (F := X.B.I.F) (E := X.B.I.E) (gOf p) hsplit p.1 hmem
    obtain ⟨hc, hn⟩ := MassDataIdxRes.arith_of_loc (gOf p) p.1 hmem he hf
    exact ⟨hc, hmem, hn⟩

  obtain ⟨π, hπ, hker⟩ := stResZ_of X p hres
  exact stFrameA_of_trans X hC p ⟨θ, hθ, Q, hL, π, hπ, hker, transA_of X p θ Q hθ π hker hS hA⟩

theorem reduction_image_of_adapted (hb : AdBridgeIso X.B.I) (hC : LatCoreX) (h : StAdaptA X p) : LevelReductionImage X hb p :=
  reduction_image_of_frame X hb p (stFrameA_of_adapt X p hC h)

end Loc

end MassDataIdxSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdapted =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdaptedMod =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdaptedMod", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FirstCoordsMulVec\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ParabolicImageOfBasisAdapted\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FrAIntReindex\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ImAInModPSplit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdapted\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsSmulInteger\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsTensorSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace MassDataIdxSteps

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed MassDataIdxSpl Matrix
  MassDataIdxFrA
open scoped TensorProduct

section Loc

variable {D : D7} (X : HidaSetting D) (p : TypX X) (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p)
  (Q : GL (IdxD D) (FpX X p))

abbrev mQJ : Matrix (IdxD D) (IdxD D) (FpX X p) :=
  (Q : Matrix (IdxD D) (IdxD D) (FpX X p))ᵀ * (Matrix.reindex (idxEquiv X) (idxEquiv X) (jm1 X.B.I.J θ))ᵀ

theorem mQJ_unit : IsUnit (mQJ X p θ Q).det := by
  rw [Matrix.det_mul, Matrix.det_transpose, Matrix.det_transpose, Matrix.det_reindex_self]
  exact (Units.isUnit (Matrix.GeneralLinearGroup.det Q)).mul (isUnit_det_split_form X p θ)

theorem secondCoords_eq_mulVec (v : Fin X.B.I.n → TpX X p) :
    crd2 X p θ Q v = mQJ X p θ Q *ᵥ (pr2 θ v ∘ (idxEquiv X).symm) := by
  unfold crd2; rw [Matrix.mulVec_mulVec]

theorem crd_surj (a b : IdxD D → FpX X p) : ∃ x, crd1 X p θ Q x = a ∧ crd2 X p θ Q x = b := by
  set w1 := (Q : Matrix (IdxD D) (IdxD D) (FpX X p)) *ᵥ a
  set w2 := (mQJ X p θ Q)⁻¹ *ᵥ b
  refine ⟨fun j => θ.symm (w1 (idxEquiv X j), w2 (idxEquiv X j)), ?_, ?_⟩
  · have : pr1 θ (fun j => θ.symm (w1 (idxEquiv X j), w2 (idxEquiv X j))) ∘ (idxEquiv X).symm = w1 := by
      funext i; simp [pr1]
    unfold crd1; rw [this, Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one,
      Matrix.one_mulVec]
  · have : pr2 θ (fun j => θ.symm (w1 (idxEquiv X j), w2 (idxEquiv X j))) ∘ (idxEquiv X).symm = w2 := by
      funext i; simp [pr2]
    rw [secondCoords_eq_mulVec, this, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ (mQJ_unit X p θ Q), Matrix.one_mulVec]

theorem crd_inj (x : Fin X.B.I.n → TpX X p) (h1 : crd1 X p θ Q x = 0) (h2 : crd2 X p θ Q x = 0) : x = 0 := by
  have e1 : pr1 θ x ∘ (idxEquiv X).symm = 0 := by
    have := congrArg (fun v => (Q : Matrix (IdxD D) (IdxD D) (FpX X p)) *ᵥ v) h1
    simp only [crd1, Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one,
      Matrix.one_mulVec, Matrix.mulVec_zero] at this
    exact this
  have e2 : pr2 θ x ∘ (idxEquiv X).symm = 0 := by
    have := congrArg (fun v => (mQJ X p θ Q)⁻¹ *ᵥ v) h2
    simp only [secondCoords_eq_mulVec, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ (mQJ_unit X p θ Q),
      Matrix.one_mulVec, Matrix.mulVec_zero] at this
    exact this
  funext j
  have a1 := congrFun e1 (idxEquiv X j)
  have a2 := congrFun e2 (idxEquiv X j)
  simp only [Function.comp_apply, Equiv.symm_apply_apply, Pi.zero_apply] at a1 a2
  have : θ (x j) = 0 := Prod.ext a1 a2
  simpa using congrArg θ.symm this

theorem oEp_int (hL : LatBasis X p θ (reindex₂ X p Q)) (t : TpX X p) (ht : t ∈ OEp X p) :
    (θ t).1 ∈ OvA X p ∧ (θ t).2 ∈ OvA X p := by
  obtain ⟨j⟩ : Nonempty (IdxD D) := ⟨zI⟩
  obtain ⟨x1, hx1a, hx1b⟩ := crd_surj X p θ Q (Pi.single j 1) 0
  obtain ⟨x2, hx2a, hx2b⟩ := crd_surj X p θ Q 0 (Pi.single j 1)
  have hint : IntVec (OvA X p) (Pi.single j (1 : FpX X p)) := fun i => by
    by_cases h : i = j
    · subst h; simp
    · simp [h]
  have hz : IntVec (OvA X p) (0 : IdxD D → FpX X p) := fun _ => ValuationSubring.zero_mem _
  have l1 := imA_lat_OEp X p ht ((latCrd_of X p θ Q hL x1).2 ⟨hx1a ▸ hint, hx1b ▸ hz⟩)
  have l2 := imA_lat_OEp X p ht ((latCrd_of X p θ Q hL x2).2 ⟨hx2a ▸ hz, hx2b ▸ hint⟩)
  have c1 := ((latCrd_of X p θ Q hL _).1 l1).1 j
  have c2 := ((latCrd_of X p θ Q hL _).1 l2).2 j
  rw [firstCoords_tensor_smul, hx1a] at c1
  rw [secondCoords_tensor_smul, hx2b] at c2
  simp at c1 c2
  exact ⟨c1, c2⟩

def OEpSplit : Prop := θ.symm (1, 0) ∈ OEp X p ∧ θ.symm (0, 1) ∈ OEp X p

theorem splitA_of_lat (hL : LatBasis X p θ (reindex₂ X p Q)) (hO : OEpSplit X p θ) : SplitA X p θ Q :=
  splitA_of X p θ Q (oEp_int X p θ Q hL) hO.1 hO.2 (latCrd_of X p θ Q hL) (crd_inj X p θ Q) (crd_surj X p θ Q)

theorem reduction_image_of_adapted_mod (hb : AdBridgeIso X.B.I) (hC : LatCoreX)
    (h : ∃ θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p, IsSplitEquiv X p θ ∧ OEpSplit X p θ ∧
      ∃ Q : GL (IdxD D) (FpX X p), LatBasis X p θ (reindex₂ X p Q) ∧ AdaptA X p θ Q) : LevelReductionImage X hb p := by
  obtain ⟨θ, hθ, hO, Q, hL, hA⟩ := h
  exact reduction_image_of_adapted X p hb hC ⟨θ, hθ, Q, hL, splitA_of_lat X p θ Q hL hO, hA⟩

end Loc

end MassDataIdxSteps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ReductionImageOfAdaptedMod =====

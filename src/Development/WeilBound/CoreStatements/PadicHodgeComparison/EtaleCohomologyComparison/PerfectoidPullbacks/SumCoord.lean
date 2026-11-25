module

public import Mathlib.LinearAlgebra.TensorProduct.Defs
public import Mathlib.RingTheory.Localization.FractionRing
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PsiApply
public import Mathlib.LinearAlgebra.Basis.Defs
public import Mathlib.LinearAlgebra.TensorProduct.Tower
public import Mathlib.GroupTheory.GroupAction.Ring
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PhiTTmul
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.StmtPhi
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TiltSectionUnits.FcIsUnitSub
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.NormLLtOne
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.ResiduePadicIntegersToIntegers
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ResCoeff
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.DatPull
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.IsUOfIsUnit
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PhiAIter
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.MuNu
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinBaseChangeP
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LieComplementChartContDiffAt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsFirstChernDeRhamUnique
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.IsProperOfProj
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.CrystallineDeRhamFirstChernExists
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LogarithmicDerivatives.CrystallineFirstChernExistsUnique
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FirstChernCompatibleL
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem
import GroundTheory.PAdicHodge.NormalizedTraceTower
import Mathlib.Algebra.Module.StablyFree.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorEvalFixedOfFixed, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingBasisEval, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TLTensor, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FmapOf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.FrobAlg, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PerCHk, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Pull, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SumCoord

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorEvalFixedOfFixed =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorEvalFixedOfFixed", "h": "module\n\npublic import Mathlib.LinearAlgebra.TensorProduct.Defs\npublic import Mathlib.RingTheory.Localization.FractionRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PsiApply\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.Pb.Psi

namespace GlobalTheory.CompanionTheory.FrobFix

theorem extension_fixed : ∀ {W C₀ : Type} [CommRing W] [CommRing C₀] {K₀ : Type} [Field K₀] [Algebra W K₀] {L : Type 1} [AddCommGroup L] [Module W L] (k : K₀ →+* C₀) {B : Type} [Field B] [IsFractionRing W K₀] (ι : C₀ →+* B) (σB : B →+* B) (h : L →+ B) (E : K₀ ⊗[W] L →+ B), (∀ x y, E (x ⊗ₜ y) = ι (k x) * h y) → (∀ w, σB (ι (k (algebraMap W K₀ w))) = ι (k (algebraMap W K₀ w))) → (∀ y, σB (h y) = h y) → ∀ v : K₀ ⊗[W] L, σB (E v) = E v := by
  intro W C₀ _ _ K₀ _ _ L _ _ k B _ _ ι σB h E hE hW hy v
  have hinj : Function.Injective (ι.comp k) := (ι.comp k).injective
  have hg : ∀ x : K₀, σB (ι (k x)) = ι (k x) := by
    intro x
    obtain ⟨a, b, hb, rfl⟩ := IsFractionRing.div_surjective (A := W) x
    have hb0 : algebraMap W K₀ b ≠ 0 :=
      (IsLocalization.map_units K₀ (⟨b, hb⟩ : nonZeroDivisors W)).ne_zero
    have hgb : ι (k (algebraMap W K₀ b)) ≠ 0 := by
      intro h0
      apply hb0
      apply hinj
      simpa using h0
    have hmul : ι (k (algebraMap W K₀ a / algebraMap W K₀ b)) * ι (k (algebraMap W K₀ b))
        = ι (k (algebraMap W K₀ a)) := by
      rw [← map_mul, ← map_mul, div_mul_cancel₀ _ hb0]
    apply mul_right_cancel₀ hgb
    calc σB (ι (k (algebraMap W K₀ a / algebraMap W K₀ b))) * ι (k (algebraMap W K₀ b))
        = σB (ι (k (algebraMap W K₀ a / algebraMap W K₀ b))) * σB (ι (k (algebraMap W K₀ b))) := by
          rw [hW b]
      _ = σB (ι (k (algebraMap W K₀ a))) := by rw [← map_mul, hmul]
      _ = ι (k (algebraMap W K₀ a)) := hW a
      _ = ι (k (algebraMap W K₀ a / algebraMap W K₀ b)) * ι (k (algebraMap W K₀ b)) := hmul.symm
  induction v using TensorProduct.induction_on with
  | zero => simp
  | tmul x y => rw [hE, map_mul, hg, hy]
  | add a b ha hb => rw [map_add (f := _), map_add (f := _), ha, hb]

end GlobalTheory.CompanionTheory.FrobFix
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorEvalFixedOfFixed =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingBasisEval =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingBasisEval", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PsiApply\npublic import Mathlib.LinearAlgebra.Basis.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct CrystallineSemistableComparison.Pb.Psi

namespace GlobalTheory.CompanionTheory.FrobFac

theorem T_fac : ∀ {W A C₀ : Type} [CommRing W] [CommRing A] [CommRing C₀] [Algebra W A] {K₀ : Type} [Field K₀] [Algebra W K₀] {L : Type 1} [AddCommGroup L] [Module W L] (c : A →+* C₀) (k : K₀ →+* C₀) (hk : ∀ w : W, k (algebraMap W K₀ w) = c (algebraMap W A w)), ∀ {B : Type} [Field B] (ι : C₀ →+* B) (i : A →+* B), (∀ a, ι (c a) = i a) → ∀ (h : L →+ B), (∀ (w : W) y, h (w • y) = i (algebraMap W A w) * h y) → ∀ {m : ℕ} (b : Module.Basis (Fin m) K₀ (K₀ ⊗[W] L)), ∃ E : K₀ ⊗[W] L →+ B, (∀ x y, E (x ⊗ₜ y) = ι (k x) * h y) ∧ ∀ G : A ⊗[W] L →+ B, (∀ a y, G (a ⊗ₜ y) = i a * h y) → ∀ z, G z = ∑ s, ι (T c k hk (b.coord s) z) * E (b s) := by
  intro W A C₀ _ _ _ _ K₀ _ _ L _ _ c k hk B _ ι i hi h hh m b
  let E : K₀ ⊗[W] L →+ B := TensorProduct.liftAddHom
    { toFun := fun x =>
        { toFun := fun y => ι (k x) * h y
          map_zero' := by simp
          map_add' := fun y y' => by simp [mul_add] }
      map_zero' := by
        ext y
        simp
      map_add' := fun x x' => by
        ext y
        simp [add_mul] }
    (fun r x y => by
      show ι (k (r • x)) * h y = ι (k x) * h (r • y)
      rw [hh, Algebra.smul_def, map_mul, hk, map_mul, hi]
      ring)
  have hE : ∀ x y, E (x ⊗ₜ y) = ι (k x) * h y := by
    intro x y
    first
    | rfl
  have hEs : ∀ (x : K₀) (t : K₀ ⊗[W] L), E (x • t) = ι (k x) * E t := by
    intro x t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul x' y =>
      rw [TensorProduct.smul_tmul', hE, hE, smul_eq_mul, map_mul, map_mul, mul_assoc]
    | add t t' ht ht' =>
      rw [smul_add, map_add (f := _), map_add (f := _), ht, ht', mul_add]
  refine ⟨E, hE, fun G hG z => ?_⟩
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul a y =>
    have hsum : ∑ s, ι (T c k hk (b.coord s) (a ⊗ₜ y)) * E (b s) =
        ι (c a) * E ((1 : K₀) ⊗ₜ y) := by
      conv_rhs => rw [← b.sum_repr ((1 : K₀) ⊗ₜ y)]

      rw [map_sum, Finset.mul_sum]
      refine Finset.sum_congr rfl (fun s _ => ?_)
      have hT : T c k hk (b.coord s) (a ⊗ₜ y) = c a * k (b.repr ((1 : K₀) ⊗ₜ y) s) := by
        first
        | rfl
      rw [hEs, hT, map_mul, mul_assoc]
    rw [hG, hsum, hE, map_one, map_one, one_mul, hi]
  | add x y hx hy =>
    simp only [map_add (f := _), hx, hy, add_mul, Finset.sum_add_distrib]

end GlobalTheory.CompanionTheory.FrobFac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingBasisEval =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TLTensor =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TLTensor", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PsiApply\npublic import Mathlib.GroupTheory.GroupAction.Ring\npublic import Mathlib.LinearAlgebra.Basis.Defs\npublic import Mathlib.LinearAlgebra.TensorProduct.Tower\npublic import Mathlib.RingTheory.Localization.FractionRing\npublic import Mathlib.LinearAlgebra.TensorProduct.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensorEvalFixedOfFixed\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingBasisEval\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingFrobeniusCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingGaloisEquivariant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingLTensorNaturality\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingSmulDual\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TracePairingSmulLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open TensorProduct

namespace CrystallineSemistableComparison.Pb.Psi

variable {W A C₀ : Type} [CommRing W] [CommRing A] [CommRing C₀] [Algebra W A]
  {K₀ : Type} [Field K₀] [Algebra W K₀] {L : Type 1} [AddCommGroup L] [Module W L]
  (c : A →+* C₀) (k : K₀ →+* C₀) (hk : ∀ w : W, k (algebraMap W K₀ w) = c (algebraMap W A w))

theorem T_fac {B : Type} [Field B] (ι : C₀ →+* B) (i : A →+* B) (hι : ∀ a, ι (c a) = i a) (h : L →+ B)
    (hh : ∀ (w : W) y, h (w • y) = i (algebraMap W A w) * h y) {m : ℕ} (b : Module.Basis (Fin m) K₀ (K₀ ⊗[W] L)) :
    ∃ E : K₀ ⊗[W] L →+ B, (∀ x y, E (x ⊗ₜ y) = ι (k x) * h y) ∧
      ∀ G : A ⊗[W] L →+ B, (∀ a y, G (a ⊗ₜ y) = i a * h y) → ∀ z, G z = ∑ s, ι (T c k hk (b.coord s) z) * E (b s) :=
  _root_.GlobalTheory.CompanionTheory.FrobFac.T_fac c k hk ι i hι h hh b

theorem E_fix {B : Type} [Field B] [IsFractionRing W K₀] (ι : C₀ →+* B) (σB : B →+* B) (h : L →+ B)
    (E : K₀ ⊗[W] L →+ B) (hE : ∀ x y, E (x ⊗ₜ y) = ι (k x) * h y)
    (hσ : ∀ w, σB (ι (k (algebraMap W K₀ w))) = ι (k (algebraMap W K₀ w))) (hy : ∀ y, σB (h y) = h y) (v : K₀ ⊗[W] L) :
    σB (E v) = E v := _root_.GlobalTheory.CompanionTheory.FrobFix.extension_fixed k ι σB h E hE hσ hy v

end CrystallineSemistableComparison.Pb.Psi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TLTensor =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FmapOf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FmapOf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PhiTTmul\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PsiApply\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TLTensor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false


noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

def cA (r : Res l K) {C₀ : Type} [CommRing C₀] (c : Acris l →+* C₀) : AW r →+* C₀ := c

theorem hkA (r : Res l K) {C₀ : Type} [CommRing C₀] (c : Acris l →+* C₀) (k : Wc.K₀ l r.k →+* C₀)
    (hk : ∀ w, k (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = c (r.w w)) :
    ∀ w, k (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = cA r c (algebraMap (WittVector l r.k) (AW r) w) := hk

def vinv {C₀ : Type} [CommRing C₀] (c : Acris l →+* C₀) (hl : IsUnit (c l)) : C₀ := ↑(hl.unit⁻¹)

theorem vinv_mul {C₀ : Type} [CommRing C₀] (c : Acris l →+* C₀) (hl : IsUnit (c l)) : vinv c hl * c l = 1 := hl.val_inv_mul

def psiF (r : Res l K) {N : ℕ} (F : Fac r N) {C₀ : Type} [CommRing C₀] (c : Acris l →+* C₀) (k : Wc.K₀ l r.k →+* C₀)
    (hk : ∀ w, k (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = c (r.w w)) (hl : IsUnit (c l)) (M : Model l K) (j : ℕ) :
    HL M j →+ (Module.Dual (Wc.K₀ l r.k) (Wc.D l (B.schFn M.p) r.ρ j) →+ C₀) :=
  Psi.psi (cA r c) k (hkA r c k hk) (vinv c hl ^ F.e M j) (F.α M j)

theorem psiF_apply (r : Res l K) {N : ℕ} (F : Fac r N) {C₀ : Type} [CommRing C₀] (c : Acris l →+* C₀) (k : Wc.K₀ l r.k →+* C₀)
    (hk : ∀ w, k (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = c (r.w w)) (hl : IsUnit (c l)) (M : Model l K) (j : ℕ)
    (x : HL M j) (f : Module.Dual (Wc.K₀ l r.k) (Wc.D l (B.schFn M.p) r.ρ j)) :
    psiF r F c k hk hl M j x f = vinv c hl ^ F.e M j * Psi.T (cA r c) k (hkA r c k hk) f (F.α M j x) := rfl

def hF (r : Res l K) {N : ℕ} (F : Fac r N) (M : Model l K) (j : ℕ) (f : HL M j →+ (per l K).B) : LW r M j →+ (per l K).B where
  toFun y := f (F.β M j ((1 : AW r) ⊗ₜ y))
  map_zero' := by rw [tmul_zero, map_zero, map_zero]
  map_add' y y' := by rw [tmul_add, map_add (f := _), map_add (f := _)]

theorem one_tmul_smul (r : Res l K) (M : Model l K) (j : ℕ) (w : WittVector l r.k) (y : LW r M j) :
    ((1 : AW r) ⊗ₜ[WittVector l r.k] (w • y) : AL r M j) = ((show (per l K).A from r.w w) • ((1 : AW r) ⊗ₜ[WittVector l r.k] y) : AL r M j) := by
  rw [← TensorProduct.smul_tmul, TensorProduct.smul_tmul']
  rfl

theorem tmul_eq_smul (r : Res l K) (M : Model l K) (j : ℕ) (a : AW r) (y : LW r M j) :
    (a ⊗ₜ[WittVector l r.k] y : AL r M j) = ((show (per l K).A from a) • ((1 : AW r) ⊗ₜ[WittVector l r.k] y) : AL r M j) := by
  rw [TensorProduct.smul_tmul']
  exact congrArg (· ⊗ₜ[WittVector l r.k] y) (mul_one (show Acris l from a)).symm

theorem inv_aux {R : Type} [CommRing R] {v L X Y : R} (hv : v * L = 1) (e : ℕ) (h1 : Y = L ^ e * X) : X = v ^ e * Y := by
  rw [h1, ← mul_assoc, ← mul_pow, hv, one_pow, one_mul]


theorem psiF_fac (r : Res l K) {N : ℕ} (F : Fac r N) {C₀ : Type} [CommRing C₀] (c : Acris l →+* C₀) (k : Wc.K₀ l r.k →+* C₀)
    (hk : ∀ w, k (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = c (r.w w)) (hl : IsUnit (c l)) (ι : C₀ →+* (per l K).B) (hιc : ∀ a, ι (c a) = (per l K).i a) (hR : (per l K).Facts)
    (hσw : ∀ g w, (per l K).σA g (r.w w) = r.w w) (M : Model l K) (hM : M.Sm) (j : ℕ) {m : ℕ}
    (b : Module.Basis (Fin m) (Wc.K₀ l r.k) (Wc.D l (B.schFn M.p) r.ρ j)) :
    ∃ w : Fin m → (HL M j →+ (per l K).B) → (per l K).B,
      (∀ f, GMod.Fn (per l K) (M.HA true).toGMod j f → ∀ s (σ : K.fixingSubgroup), (per l K).σ σ (w s f) = w s f) ∧
      ∀ x f, GMod.Fn (per l K) (M.HA true).toGMod j f →
        f ((phiL M j)^[N] x) = ∑ s, ι (psiF r F c k hk hl M j x (b.coord s)) * w s f := by
  classical
  have hh : ∀ f, GMod.Fn (per l K) (M.HA true).toGMod j f → ∀ (w : WittVector l r.k) (y : LW r M j),
      hF r F M j f (w • y) = ((per l K).i : AW r →+* (per l K).B) (algebraMap (WittVector l r.k) (AW r) w) * hF r F M j f y := by
    intro f hf w y
    change f (F.β M j ((1 : AW r) ⊗ₜ (w • y))) = _ * f (F.β M j ((1 : AW r) ⊗ₜ y))
    rw [one_tmul_smul, LinearMap.map_smul, hf.1]
    rfl
  have hE : ∀ f (hf : GMod.Fn (per l K) (M.HA true).toGMod j f), ∃ E : Wc.K₀ l r.k ⊗[WittVector l r.k] LW r M j →+ (per l K).B,
      (∀ x y, E (x ⊗ₜ y) = ι (k x) * hF r F M j f y) ∧
      ∀ G : AL r M j →+ (per l K).B, (∀ a y, G (a ⊗ₜ y) = ((per l K).i : AW r →+* (per l K).B) a * hF r F M j f y) →
        ∀ z, G z = ∑ s, ι (Psi.T (cA r c) k (hkA r c k hk) (b.coord s) z) * E (b s) := fun f hf =>
    _root_.GlobalTheory.CompanionTheory.FrobFac.T_fac (cA r c) k (hkA r c k hk) ι ((per l K).i : AW r →+* (per l K).B) hιc (hF r F M j f) (hh f hf) b
  refine ⟨fun s f => if hf : GMod.Fn (per l K) (M.HA true).toGMod j f then (hE f hf).choose (b s) else 0, ?_, ?_⟩
  · intro f hf s σ
    dsimp only
    rw [dite_eq_left hf]
    refine _root_.GlobalTheory.CompanionTheory.FrobFix.extension_fixed k ι ((per l K).σ σ) (hF r F M j f) _ (hE f hf).choose_spec.1 (fun w => ?_) (fun y => ?_) (b s)
    · rw [hk, hιc, ← hR.i_σ, hσw]
    · change (per l K).σ σ (f (F.β M j ((1 : AW r) ⊗ₜ y))) = f (F.β M j ((1 : AW r) ⊗ₜ y))
      rw [← hf.2]
      exact congrArg f (F.galβ M hM j σ y)
  · intro x f hf
    dsimp only
    let G : AL r M j →+ (per l K).B :=
      { toFun := fun z => f (F.β M j z)
        map_zero' := by rw [map_zero, map_zero]
        map_add' := fun z z' => by rw [map_add (f := _), map_add (f := _)] }
    have hG := (hE f hf).choose_spec.2 G (fun a y => by
      change f (F.β M j (a ⊗ₜ y)) = _
      rw [tmul_eq_smul, LinearMap.map_smul, hf.1]
      rfl) (F.α M j x)
    have h1 : f (F.β M j (F.α M j x)) = (per l K).i ((l : (per l K).A) ^ F.e M j) * f ((phiL M j)^[N] x) := by
      rw [F.fac M hM j x, hf.1]
    have hv : ι (vinv c hl) * (per l K).i (l : (per l K).A) = 1 := by
      rw [← hιc, ← map_mul, vinv_mul, map_one]
    have h2 : f ((phiL M j)^[N] x) = ι (vinv c hl) ^ F.e M j * f (F.β M j (F.α M j x)) :=
      inv_aux hv (F.e M j) (h1.trans (congrArg (· * f ((phiL M j)^[N] x)) (map_pow _ _ _)))
    have hG' : f (F.β M j (F.α M j x)) = _ := hG
    rw [h2, hG', Finset.mul_sum]
    refine Finset.sum_congr rfl fun s _ => ?_
    rw [dite_eq_left hf, psiF_apply, map_mul, map_pow]
    exact (mul_assoc _ _ _).symm

theorem fmap_of (r : Res l K) (Amp : ∀ M : Model l K, E.LineData M.X → Prop) (N : ℕ) (F : Fac r N)
    (C₀ : Type) [CommRing C₀] (c : Acris l →+* C₀) (ι : C₀ →+* (per l K).B) (k : Wc.K₀ l r.k →+* C₀)
    (hιc : ∀ a, ι (c a) = (per l K).i a) (hR : (per l K).Facts)
    (hk : ∀ w, k (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = c (r.w w)) (hl : IsUnit (c l))
    (hσw : ∀ g w, (per l K).σA g (r.w w) = r.w w)
    (hfin : ∀ M : Model l K, M.Sm → ∀ j, Module.Finite (WittVector l r.k) (LW r M j)) :
    Nonempty (FMap Model.Sm (perCOf r C₀ c ι k) r.iso (dat Amp) (fun {M N u hu a b} _ j =>
      (Model.pullH (M := M) (N := N) u hu true j).lim.toAddMonoidHom)) := by
  refine ⟨{ k := N
            ψ := fun {M} _ j => psiF r F c k hk hl M j
            fin := fun M hM j => by
              have := hfin M hM j
              exact (inferInstance : Module.Finite (Wc.K₀ l r.k) (Wc.K₀ l r.k ⊗[WittVector l r.k] LW r M j))
            fac := fun {M} _ hM j _ b => psiF_fac r F c k hk hl ι hιc hR hσw M hM j b }⟩

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FmapOf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.FrobAlg =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.FrobAlg", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.StmtPhi\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TiltSectionUnits.FcIsUnitSub\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.MapFrobW\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.NormLLtOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb.G3

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

abbrev kk (r : Res l K) : Wc.K₀ l r.k →+* Formalism.Per6.Bcris l := k₀Lift ((Formalism.Per6.cB l).comp r.w) (period_ring_base.isUnit_l l)

theorem kk_eq (r : Res l K) (w : WittVector l r.k) :
    kk r (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = Formalism.Per6.cB l (r.w w) :=
  IsLocalization.lift_eq _ w

theorem perC_hk (r : Res l K) (w : WittVector l r.k) :
    r.perC.k (algebraMap (WittVector l r.k) (Wc.K₀ l r.k) w) = r.perC.c (r.w w) :=
  kk_eq r w

theorem perC_hl (r : Res l K) : IsUnit (r.perC.c (l : (per l K).A)) := by
  show IsUnit (Formalism.Per6.cB l (l : ACris.ACris ℂ_[l] l))
  rw [map_natCast]
  exact period_ring_base.isUnit_l l

end CrystallineSemistableComparison.Pb.G3
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.FrobAlg =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PerCHk =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PerCHk", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.StmtPhi\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.FrobAlg\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.MapFrobW\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.NormLLtOne\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.ResiduePadicIntegersToIntegers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PerCHk =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Pull =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Pull", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.StmtPhi\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.DatPull\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TiltSectionUnits.FcIsUnitSub\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TranscendentalPeriodUnits.IsUOfIsUnit\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PhiAIter\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FmapOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.MuNu\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PerCHk\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.KatzMessingTheorem.PullDSchMapId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison.Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

def pull' (Amp : ∀ M : Model l K, E.LineData M.X → Prop) {M N : Model l K} {u : M.X ⟶ N.X} {hu : u ≫ N.p = M.p}
    {a : (dat Amp).Ch M} {b : (dat Amp).Ch N} (_ : (dat Amp).Mo u hu a b) (j : ℕ) :
    ((dat Amp).H' b).N j →+ ((dat Amp).H' a).N j :=
  (Model.pullH u hu true j).lim.toAddMonoidHom

theorem fmap (r : Res l K) [FiniteDimensional ℚ_[l] K] (Amp : ∀ M : Model l K, E.LineData M.X → Prop) :
    Nonempty (FMap Model.Sm r.perC r.iso (dat Amp) (pull' Amp)) := by
  obtain ⟨N, hT⟩ := _root_.CrystallineSemistableComparison.Pb.G3.teich r
  obtain ⟨F, -⟩ := fac_ex r hT (fun M n j x => _root_.CrystallineSemistableComparison.Pb.Mid.frobenius_mu_nu_iterate r N hT M n j x) (fun g w => _root_.CrystallineSemistableComparison.Pb.G3.w_fix r g w)
  exact fmap_of r Amp N F _ r.perC.c r.perC.ι r.perC.k (fc_ι_c (l := l)) (facts l K)
    (_root_.CrystallineSemistableComparison.Pb.G3.perC_hk r) (_root_.CrystallineSemistableComparison.Pb.G3.perC_hl r) (_root_.CrystallineSemistableComparison.Pb.G3.w_fix r) (fun M hM j => lw_fin r M hM j)

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Pull =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SumCoord =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SumCoord", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinBaseChangeP\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LieComplementChartContDiffAt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsFirstChernDeRhamUnique\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.IsProperOfProj\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LevelChainValuations.CrystallineDeRhamFirstChernExists\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LogarithmicDerivatives.CrystallineFirstChernExistsUnique\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.Pull\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FirstChernCompatibleL\nimport GroundTheory.PAdicHodge.NormalizedTraceTower\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct Limits GlobalTheory.LogCris GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb



variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem sum_coord {K B V : Type _} [Field K] [CommRing B] [AddCommGroup V] [Module K V] {V' : Type _} [AddCommGroup V'] [Module K V']
    {V'' : Type _} [AddCommGroup V''] [Module K V''] (o : K →+* B) {m m' : ℕ} (b : Module.Basis (Fin m) K V) (b' : Module.Basis (Fin m') K V')
    (μ : V →ₗ[K] V' →ₗ[K] V'') (φ : Module.Dual K V'') (x : V) (y : V') :
    ∑ s, ∑ s', o (b.coord s x) * o (b'.coord s' y) * o (φ (μ (b s) (b' s'))) = o (φ (μ x y)) := by
  conv_rhs => rw [← b.sum_repr x, ← b'.sum_repr y]

  simp only [map_sum, LinearMap.sum_apply, map_smul, LinearMap.smul_apply, smul_eq_mul, map_mul, Module.Basis.coord_apply,
  Finset.mul_sum]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun s _ => Finset.sum_congr rfl fun s' _ => by ring

theorem kap_pow (L : KapL (l := l) (K := K) Amp) {M : Model l K} (a : (dat Amp).Ch M) (hM : M.Sm) (x : ((dat Amp).H a).N 2)
    (c : HdR M.q 2) (hx : ∀ φ, L.κ a 2 x φ = (per l K).o (φ c)) :
    ∀ (k : ℕ) (z : ((dat Amp).H a).N (2 * k)), IsPow (N := ((dat Amp).H a).N) ((dat Amp).H a).one ((dat Amp).H a).cup x k z →
      ∀ φ, L.κ a (2 * k) z φ = (per l K).o (φ (powK M.q c k))
  | 0, z, hz, φ => L.one a hM z hz φ
  | k + 1, z, ⟨y, hy, hz⟩, φ => by
    have := (m_fin M hM (2 * k)).1
    have := (m_fin M hM 2).1
    have h := L.cup a hM y x z hz (Module.finBasis _ _) (Module.finBasis _ _) φ
    refine h.trans ?_
    simp only [kap_pow L a hM x c hx k y hy, hx, ← cupR_eq]
    exact (sum_coord _ _ _ (cupR M (2 * k) 2) φ _ _).trans (congrArg (fun t => (per l K).o (φ t)) (cupR_eq M _ _ _ _))

theorem pow_ex {M : Model l K} (a : (dat Amp).Ch M) (x : ((dat Amp).H a).N 2) :
    ∀ k : ℕ, ∃ z : ((dat Amp).H a).N (2 * k), IsPow (N := ((dat Amp).H a).N) ((dat Amp).H a).one ((dat Amp).H a).cup x k z := by
  intro k
  induction k with
  | zero =>
    exact ⟨(⟨fun n => CH.oneH _, fun n => (B.compatH l).one _ _ false n.le_succ⟩ : (M.HS false 0).lim), fun _ => rfl⟩
  | succ k ih =>
    obtain ⟨y, hy⟩ := ih
    refine ⟨(⟨fun n => (CH.mulP (B.OcA (B.schFn M.p) (okToOC l K) false n)).cup rfl ((show (M.HS false (2 * k)).lim from y).1 n)
      ((show (M.HS false 2).lim from x).1 n), fun n => ?_⟩ : (M.HS false (2 * k + 2)).lim), y, hy, fun _ => rfl⟩
    refine ((B.compatH l).cup _ _ false n.le_succ rfl _ _).trans ?_
    exact congrArg₂ _ ((show (M.HS false (2 * k)).lim from y).2 n) ((show (M.HS false 2).lim from x).2 n)

theorem pmap [FiniteDimensional ℚ_[l] K] : Nonempty (PMap Model.Sm (dat (l := l) (K := K) Amp)) := by
  obtain ⟨L, hL⟩ := crystalline_deRham_firstChern_exists (l := l) (K := K)
  refine ⟨⟨L.κ, cupR, m_fin, m_top, fun M _ => cupR_fil M, L.lin, L.lin', L.act, L.nat, L.fil, ?_, ?_⟩⟩
  · intro M a hM i j x y z h m m' b b' φ
    simp only [cupR_eq]
    exact L.cup a hM x y z h b b' φ
  · intro M a hM d hd
    have := hd.1
    have := hd.2
    have hK : IsTautologicalLine M.q (lineK a.1) := _root_.GlobalTheory.CompanionTheory.ConeTwistingSheaf.isTwistingSheaf_pullback (OK l K).subtype M.p a.1 a.2
    obtain ⟨N, i, -, -, hi⟩ := a.2
    obtain ⟨x, hx⟩ := _root_.GlobalTheory.CompanionTheory.FirstChernClassFactorial.exists_C1H M a.1 (sSup_𝒱D a.1 N i hi)
    obtain ⟨c, hc⟩ := isFirstChernDeRham_exists M.q d _ hK
    obtain ⟨z, hz⟩ := pow_ex a x d
    obtain ⟨φ, hφ⟩ := Module.Projective.exists_dual_eq_one K (powK_ne_zero M.q d _ hK c hc)
    refine ⟨x, z, φ, hx, hz, ?_⟩
    rw [kap_pow L a hM x c (hL a hM x c hx hc) d z hz φ, hφ, map_one]
    exact ⟨one_mem _, 1, one_mem _, mul_one 1⟩

theorem pSeam : BocksteinBaseChangeP := fun l _ K _ =>
  ⟨Amp, fun _ _ h => isO1_etale h, fun M hM => isO1_exists M.p hM.1.1, pmap, fun r => fmap r Amp⟩

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SumCoord =====

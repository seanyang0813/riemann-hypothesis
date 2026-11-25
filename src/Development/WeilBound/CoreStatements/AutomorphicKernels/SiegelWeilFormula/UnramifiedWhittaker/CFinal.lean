module

public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.Order.CompletePartialOrder
public import Mathlib.MeasureTheory.Integral.Bochner.Set
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardHermitianMatricesModPow
public import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.LocalDefs
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedQuotientCard
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRangeMulQuotientBoundedLevel
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianMatrixDiagonalizable
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityReductionDiagonalProd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResAlgSplitTwo
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardHermitianMatricesDvdSq
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueAlgebraUnramified
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardUnimodularHermitianRepsLevelOne
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.TraceDual
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelCharactersUnramified
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelJointReduction
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityLevelFormula
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.WhitGenOf
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedFormulaPolynomialGen
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.ReduceModChar
import Aesop.Main
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Tactic.TypeStar
import Mathlib.Algebra.Order.Star.Int
import Mathlib.RingTheory.WittVector.IsPoly

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterLevelFormula, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClassLevelFormula, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramified, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramifiedStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetMeasureFormula, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianInvariance, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianVolumeOne, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelExhaustion, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityBoundUnramified, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityPowerFormula, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TsumExhaustionUnramified, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianMatricesCard, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFibreGramDifferential, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnimodularHermitianRepsCountSucc, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedLocalFormula, Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCAsm, Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCMain, Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CFinal

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterLevelFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterLevelFormula", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.GunrLev

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain PositivityTheory.PfSWUS.Loc PositivityTheory.SiegelWeilFormula.Gunr
open scoped TensorProduct

theorem trace_red_mul {R : Type} [CommRing R] (ϖ : R) (k : ℕ) {n : ℕ} (A B : Matrix (Fin n) (Fin n) R) :
    Matrix.trace (red ϖ k A * red ϖ k B) = Ideal.Quotient.mk (lev ϖ k) (∑ a, ∑ c, A a c * B c a) := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp only [Matrix.trace, Matrix.diag, Matrix.mul_apply, red, Matrix.map_apply, map_sum, map_mul]

theorem psiLev_holds : PositivityTheory.SiegelWeilFormula.Gunr.PsiLev := by
  unfold PositivityTheory.SiegelWeilFormula.Gunr.PsiLev
  intro F E _ _ _ _ _ σ M n d J T bs v ψv S σS ϖ ε hG hT k X hX
  rw [trace_red_mul]
  show _ = PositivityTheory.SiegelWeilFormula.Gunr.psiF ψv ϖ _ k _
  unfold PositivityTheory.SiegelWeilFormula.Gunr.psiF PositivityTheory.PfSWUS.Loc.trPair
  congr 1
  simp only [HeckeCharacterZeroLocus.SiegelWeilU.hermOf, PositivityTheory.SiegelWeilFormula.Gunr.GoodLoc.hermLev, PositivityTheory.SiegelWeilFormula.Gunr.matS,
    Matrix.map_apply, Matrix.of_apply, AddSubmonoidClass.coe_finsetSum, MulMemClass.coe_mul,
    mul_smul_comm, ← Finset.smul_sum, map_smul, smul_eq_mul]
  rw [one_div, map_inv₀, map_ofNat]
  ring

end GlobalTheory.CompanionTheory.GunrLev

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterLevelFormula =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClassLevelFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClassLevelFormula", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.GunrClassLev

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain PositivityTheory.PfSWUS.Loc PositivityTheory.SiegelWeilFormula.Gen PositivityTheory.SiegelWeilFormula.Gunr
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {M n d : ℕ} {J : Matrix (Fin M) (Fin M) E} {T : Matrix (Fin n) (Fin n) E}
  {bs : Module.Basis (Fin d) F E} {v : HeightOneSpectrum (𝓞 F)} {ψv : Fv F v → ℂ} {S : Subring (Fv F v ⊗[F] E)}
  {σS : S →+* S} {ϖ : Fv F v} {ε : ℤ}

theorem smul_sub_mem_iff (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (k : ℕ) (s s' : S) :
    (ϖ ^ k)⁻¹ • (s : Fv F v ⊗[F] E) - (ϖ ^ k)⁻¹ • (s' : Fv F v ⊗[F] E) ∈ S ↔ s - s' ∈ lev hG.pS k := by
  have hne : ϖ ^ k ≠ 0 := pow_ne_zero _ hG.unif_ne
  constructor
  · intro h
    refine Ideal.mem_span_singleton'.2 ⟨⟨_, h⟩, Subtype.ext ?_⟩
    rw [GlobalTheory.CompanionTheory.GunrJt.coe_pow_mul hG]
    show (ϖ ^ k) • ((ϖ ^ k)⁻¹ • (s : Fv F v ⊗[F] E) - (ϖ ^ k)⁻¹ • (s' : Fv F v ⊗[F] E)) = (s : Fv F v ⊗[F] E) - s'
    rw [← smul_sub, smul_smul, mul_inv_cancel₀ hne, one_smul]
  · intro h
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h
    have e : (s : Fv F v ⊗[F] E) - (s' : Fv F v ⊗[F] E) = (ϖ ^ k) • (c : Fv F v ⊗[F] E) := by
      rw [← GlobalTheory.CompanionTheory.GunrJt.coe_pow_mul hG, hc, AddSubgroupClass.coe_sub]
    rw [← smul_sub, e, smul_smul, inv_mul_cancel₀ hne, one_smul]
    exact c.2

theorem classLev : ClassLev := by
  intro F E _ _ _ _ _ σ M n d J T bs v ψv S σS ϖ ε hG k X X' hX hX'
  constructor
  · intro h
    refine Matrix.ext fun a b => ?_
    exact Ideal.Quotient.eq.2 ((smul_sub_mem_iff hG k (X a b) (X' a b)).1 (h a b))
  · intro h a b
    exact (smul_sub_mem_iff hG k (X a b) (X' a b)).2 (Ideal.Quotient.eq.1 (congrFun (congrFun h a) b))

end GlobalTheory.CompanionTheory.GunrClassLev

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClassLevelFormula =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramified =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramified", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.MeasureTheory.Integral.Bochner.Set\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set
open scoped ENNReal NNReal

namespace GlobalTheory.CompanionTheory.CosetSum

variable {G : Type} [AddCommGroup G] [MeasurableSpace G] [MeasurableAdd G]

def fib (H : AddSubgroup G) (c : G ⧸ H) : Set G := (QuotientAddGroup.mk : G → G ⧸ H) ⁻¹' {c}

theorem fib_mk (H : AddSubgroup G) (g : G) :
    fib H (g : G ⧸ H) = {x | x - g ∈ H} := by
  ext x
  simp only [fib, mem_preimage, mem_singleton_iff]
  exact QuotientAddGroup.eq_iff_sub_mem

theorem fib_meas (H : AddSubgroup G) (hm : ∀ g : G, MeasurableSet {x | x - g ∈ H})
    (c : G ⧸ H) : MeasurableSet (fib H c) := by
  obtain ⟨g, rfl⟩ := QuotientAddGroup.mk_surjective c
  rw [fib_mk]
  exact hm g

theorem fib_measure (ν : Measure G) [ν.IsAddLeftInvariant] (H : AddSubgroup G)
    (h1 : ν (H : Set G) = 1) (c : G ⧸ H) : ν (fib H c) = 1 := by
  obtain ⟨g, rfl⟩ := QuotientAddGroup.mk_surjective c
  have hpre : fib H (g : G ⧸ H) = (fun x => -g + x) ⁻¹' (H : Set G) := by
    rw [fib_mk]
    ext x
    simp [neg_add_eq_sub]
  rw [hpre, measure_preimage_add, h1]

theorem fib_disj (H : AddSubgroup G) : Pairwise (Function.onFun Disjoint (fib H)) :=
  fun _ _ hcd => (Set.disjoint_singleton.mpr hcd).preimage _

theorem fib_union (H : AddSubgroup G) : ⋃ c, fib H c = univ :=
  eq_univ_of_forall fun x => mem_iUnion.mpr ⟨(x : G ⧸ H), rfl⟩

theorem integrable_iff_and_integral_eq (G : Type) [AddCommGroup G] [MeasurableSpace G]
    [MeasurableAdd G] (ν : Measure G) [ν.IsAddLeftInvariant] (H : AddSubgroup G)
    (hm : ∀ g : G, MeasurableSet {x | x - g ∈ H}) (h1 : ν (H : Set G) = 1)
    (hc : Countable (G ⧸ H)) (f : G → ℂ) (fbar : G ⧸ H → ℂ)
    (hf : ∀ g : G, f g = fbar (g : G ⧸ H)) :
    (Integrable f ν ↔ Summable fun c => ‖fbar c‖) ∧
      ((Summable fun c => ‖fbar c‖) → ∫ g, f g ∂ν = ∑' c, fbar c) := by
  have hmeas : Measurable f := by
    intro s _
    have hs : f ⁻¹' s = ⋃ c ∈ fbar ⁻¹' s, fib H c := by
      ext x
      simp [fib, hf]
    rw [hs]
    exact MeasurableSet.biUnion (to_countable _) fun c _ => fib_meas H hm c
  have hlin : ∫⁻ g, ‖f g‖ₑ ∂ν = ∑' c, ‖fbar c‖ₑ := by
    rw [← setLIntegral_univ, ← fib_union H, lintegral_iUnion (fib_meas H hm) (fib_disj H)]
    refine tsum_congr fun c => ?_
    rw [setLIntegral_congr_fun (fib_meas H hm c) (g := fun _ => ‖fbar c‖ₑ), setLIntegral_const,
      fib_measure ν H h1 c, mul_one]
    intro x hx
    simp only [fib, mem_preimage, mem_singleton_iff] at hx
    simp [hf, hx]
  have hiff : (Integrable f ν ↔ Summable fun c => ‖fbar c‖) := by
    rw [Integrable, hasFiniteIntegral_iff_enorm, hlin]
    simp only [hmeas.aestronglyMeasurable, true_and]
    rw [lt_top_iff_ne_top]
    simp only [← ofReal_norm]
    constructor
    · intro h
      have h' : (∑' c, ((‖fbar c‖₊ : ℝ≥0) : ℝ≥0∞)) ≠ ⊤ := by
        simpa [ofReal_norm, enorm_eq_nnnorm] using h
      have := ENNReal.tsum_coe_ne_top_iff_summable.mp h'
      exact NNReal.summable_coe.mpr this |>.congr fun c => by simp
    · intro h
      have h' : Summable fun c => ‖fbar c‖₊ := NNReal.summable_coe.mp (by simpa using h)
      simpa [ofReal_norm, enorm_eq_nnnorm] using ENNReal.tsum_coe_ne_top_iff_summable.mpr h'
  refine ⟨hiff, fun hs => ?_⟩
  have hint : Integrable f ν := hiff.mpr hs
  rw [← setIntegral_univ, ← fib_union H, integral_iUnion (fib_meas H hm) (fib_disj H) hint.integrableOn]
  refine tsum_congr fun c => ?_
  rw [setIntegral_congr_fun (fib_meas H hm c) (g := fun _ => fbar c), setIntegral_const]
  · simp [Measure.real, fib_measure ν H h1 c]
  · intro x hx
    simp only [fib, mem_preimage, mem_singleton_iff] at hx
    simp [hf, hx]

end GlobalTheory.CompanionTheory.CosetSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramified =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramifiedStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramifiedStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramified\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section


theorem _root_.GlobalTheory.T.coset_integral_unramified : PositivityTheory.SiegelWeilFormula.Gunr.CosetInt := by
  first | exact @GlobalTheory.CompanionTheory.CosetSum.integrable_iff_and_integral_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramifiedStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetMeasureFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetMeasureFormula", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.TensorLocallyCompactRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.GunrCoset

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain MeasureTheory PositivityTheory.SiegelWeilFormula.Gunr
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem isOpen_Rv {d : ℕ} (bs : Module.Basis (Fin d) F E) (v : HeightOneSpectrum (𝓞 F)) :
    IsOpen (Rv bs v) := by
  have hO : IsOpen ((v.adicCompletionIntegers F : ValuationSubring (Fv F v)) : Set (Fv F v)) :=
    Valued.isOpen_valuationSubring _
  have hc : ∀ k : Fin d, Continuous fun y : Fv F v ⊗[F] E =>
      (Algebra.TensorProduct.basis (Fv F v) bs).repr y k := fun k =>
    (continuous_apply k).comp (GlobalTheory.CompanionTheory.SW.TopK.isHomeomorph_coord (Fv F v) bs).continuous
  have : Rv bs v = ⋂ k : Fin d, (fun y : Fv F v ⊗[F] E =>
      (Algebra.TensorProduct.basis (Fv F v) bs).repr y k) ⁻¹'
        ((v.adicCompletionIntegers F : ValuationSubring (Fv F v)) : Set (Fv F v)) := by
    ext y
    simp [Rv]
  rw [this]
  exact isOpen_iInter_of_finite fun k => hO.preimage (hc k)

theorem continuousAdd_tens (v : HeightOneSpectrum (𝓞 F)) : ContinuousAdd (Fv F v ⊗[F] E) :=
  haveI : IsModuleTopology (Fv F v) (Fv F v ⊗[F] E) := GlobalTheory.CompanionTheory.SW.TopK.isModTop (Fv F v)
  IsModuleTopology.toContinuousAdd (Fv F v) _

theorem isOpen_integral_hermitian (σ : E →ₐ[F] E) (n : ℕ) {v : HeightOneSpectrum (𝓞 F)} (S : Subring (Fv F v ⊗[F] E))
    (hS : IsOpen (S : Set (Fv F v ⊗[F] E))) :
    IsOpen (H0 S σ n : Set (HermR (Fv F v) σ n)) := by
  have : (H0 S σ n : Set (HermR (Fv F v) σ n)) =
      ⋂ i : Fin n, ⋂ j : Fin n, (fun b : HermR (Fv F v) σ n =>
        (b : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) i j) ⁻¹' (S : Set (Fv F v ⊗[F] E)) := by
    ext b
    simp only [Set.mem_iInter, Set.mem_preimage]
    rfl
  rw [this]
  exact isOpen_iInter_of_finite fun i => isOpen_iInter_of_finite fun j =>
    hS.preimage (continuous_subtype_val.matrix_elem i j)

theorem cosetMeas : CosetMeas := by
  intro F E _ _ _ _ _ σ M n d J T bs v ψv S σS ϖ ε hG
  haveI : ContinuousAdd (Fv F v ⊗[F] E) := continuousAdd_tens v
  haveI : BorelSpace (HermR (Fv F v) σ n) := ⟨rfl⟩
  have hS : IsOpen (S : Set (Fv F v ⊗[F] E)) := by
    rw [hG.carrier]
    exact isOpen_Rv bs v
  haveI : ContinuousAdd (HermR (Fv F v) σ n) := ⟨continuous_induced_rng.2
    ((continuous_subtype_val.comp continuous_fst).add (continuous_subtype_val.comp continuous_snd))⟩
  refine ⟨⟨fun c => (continuous_const.add continuous_id).measurable,
    fun c => (continuous_id.add continuous_const).measurable⟩, fun g => ?_⟩
  have hc : Continuous fun x : HermR (Fv F v) σ n => x + -g := continuous_id.add continuous_const
  have : {x : HermR (Fv F v) σ n | x - g ∈ H0 S σ n} =
      (fun x : HermR (Fv F v) σ n => x + -g) ⁻¹' (H0 S σ n : Set (HermR (Fv F v) σ n)) := by
    ext x
    simp [sub_eq_add_neg]
  rw [this]
  exact ((isOpen_integral_hermitian σ n S hS).preimage hc).measurableSet

end GlobalTheory.CompanionTheory.GunrCoset

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetMeasureFormula =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianInvariance =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianInvariance", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.GunrInv

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain MeasureTheory PositivityTheory.PfSWUS.Loc PositivityTheory.SiegelWeilFormula.Gen
  PositivityTheory.SiegelWeilFormula.Gunr Filter
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem trPair_add_left (R : Type) [CommRing R] [Algebra F R] {n : ℕ}
    (A B C : Matrix (Fin n) (Fin n) (R ⊗[F] E)) :
    trPair (F := F) (E := E) R (A + B) C = trPair (F := F) (E := E) R A C + trPair (F := F) (E := E) R B C := by
  simp only [trPair, Matrix.add_apply, add_mul, Finset.sum_add_distrib, map_add (f := _), mul_add]

theorem trPair_add_right (R : Type) [CommRing R] [Algebra F R] {n : ℕ}
    (A B C : Matrix (Fin n) (Fin n) (R ⊗[F] E)) :
    trPair (F := F) (E := E) R A (B + C) = trPair (F := F) (E := E) R A B + trPair (F := F) (E := E) R A C := by
  simp only [trPair, Matrix.add_apply, mul_add, Finset.sum_add_distrib, map_add (f := _)]

theorem multiplicity_add_lattice_preserving {R : Type} [CommRing R] [MeasurableSpace R] {n : ℕ} (lam : Measure (Fin n → R))
    (L : AddSubgroup (Fin n → R)) (b h : Matrix (Fin n) (Fin n) R) (hh : ∀ y ∈ L, h.mulVec y ∈ L) :
    nu2 lam L L (b + h) = nu2 lam L L b := by
  have e : {x | ∃ y ∈ L, ∃ y' ∈ L, x = y + (b + h).mulVec y'} = {x | ∃ y ∈ L, ∃ y' ∈ L, x = y + b.mulVec y'} := by
    ext x
    constructor
    · rintro ⟨y, hy, y', hy', rfl⟩
      refine ⟨y + h.mulVec y', L.add_mem hy (hh y' hy'), y', hy', ?_⟩
      rw [Matrix.add_mulVec]
      abel
    · rintro ⟨y, hy, y', hy', rfl⟩
      refine ⟨y - h.mulVec y', L.sub_mem hy (hh y' hy'), y', hy', ?_⟩
      rw [Matrix.add_mulVec]
      abel
  simp only [nu2, e]

section Good

variable {σ : E →ₐ[F] E} {M n d : ℕ} {J : Matrix (Fin M) (Fin M) E} {T : Matrix (Fin n) (Fin n) E}
  {bs : Module.Basis (Fin d) F E} {v : HeightOneSpectrum (𝓞 F)} {ψv : Fv F v → ℂ} {S : Subring (Fv F v ⊗[F] E)}
  {σS : S →+* S} {ϖ : Fv F v} {ε : ℤ}

theorem trPair_mem (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) {A B : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)}
    (hA : ∀ i j, A i j ∈ S) (hB : ∀ i j, B i j ∈ S) :
    trPair (F := F) (E := E) (Fv F v) A B ∈ v.adicCompletionIntegers F := by
  have e : algebraMap F (Fv F v) (1 / 2) = (2 : Fv F v)⁻¹ := by
    rw [one_div, map_inv₀, map_ofNat]
  rw [trPair, e]
  exact mul_mem hG.half_mem (hG.trace_mem
    (sum_mem fun a _ => sum_mem fun c _ => mul_mem (hA a c) (hB c a)))

theorem gramR_mem (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) {Y : Fin n → Fin M → Fv F v ⊗[F] E}
    (hY : Y ∈ latV (M := M) (n := n) bs v) (a c : Fin n) : gramR (Fv F v) σ J Y a c ∈ S := by
  have hmem : ∀ a i, Y a i ∈ S := fun a i => by
    have : Y a i ∈ (S : Set (Fv F v ⊗[F] E)) := by
      rw [hG.carrier]
      exact fun k => hY a i k
    exact this
  have hsig : ∀ x ∈ S, sigR (Fv F v) σ x ∈ S := fun x hx => by
    have := (σS ⟨x, hx⟩).2
    rwa [hG.sig ⟨x, hx⟩] at this
  show ∑ i, ∑ j, sigR (Fv F v) σ (Y a i) * JR (Fv F v) J i j * Y c j ∈ S
  exact sum_mem fun i _ => sum_mem fun j _ =>
    mul_mem (mul_mem (hsig _ (hmem a i)) (hG.J_int i j)) (hmem c j)

theorem jtR_add (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (μv : Measure (Fin n → Fin M → Fv F v ⊗[F] E))
    (b h : HermR (Fv F v) σ n) (hh : h ∈ H0 S σ n) :
    jtR (Fv F v) σ J ψv μv ((latV bs v).indicator 1) (b + h) = jtR (Fv F v) σ J ψv μv ((latV bs v).indicator 1) b := by
  unfold jtR
  congr 1
  funext Y
  by_cases hY : Y ∈ latV (M := M) (n := n) bs v
  · have h1 : ψv (trPair (F := F) (E := E) (Fv F v) (h : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) (gramR (Fv F v) σ J Y)) = 1 :=
      hG.psi_of_mem (trPair_mem hG hh (gramR_mem hG hY))
    rw [AddSubgroup.coe_add, trPair_add_left, hG.psi_add, h1, mul_one]
  · simp [Set.indicator_of_notMem hY]

theorem character_add_integral_hermitian (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (hT : ∀ a b, σ (T b a) = T a b)
    (b h : HermR (Fv F v) σ n) (hh : h ∈ H0 S σ n) :
    ψv (-trPair (Fv F v) (hermOf (Fv F v) σ T hT).1 (b + h).1) = ψv (-trPair (Fv F v) (hermOf (Fv F v) σ T hT).1 b.1) := by
  have h1 : trPair (F := F) (E := E) (Fv F v) (hermOf (Fv F v) σ T hT).1 h.1 ∈ v.adicCompletionIntegers F :=
    trPair_mem hG (fun i j => hG.T_int i j) hh
  have h2 : ψv (-trPair (F := F) (E := E) (Fv F v) (hermOf (Fv F v) σ T hT).1 h.1) = 1 :=
    hG.psi_of_mem (neg_mem h1)
  rw [AddSubgroup.coe_add, trPair_add_right, neg_add, hG.psi_add, h2, mul_one]

theorem mulVec_mem_L (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (L : AddSubgroup (Fin n → Fv F v ⊗[F] E))
    (hL : (L : Set (Fin n → Fv F v ⊗[F] E)) = latO bs v) (h : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E))
    (hh : ∀ i j, h i j ∈ S) (y : Fin n → Fv F v ⊗[F] E) (hy : y ∈ L) : h.mulVec y ∈ L := by
  have key : ∀ w : Fin n → Fv F v ⊗[F] E, w ∈ L ↔ ∀ a, w a ∈ S := fun w => by
    have e1 : w ∈ L ↔ w ∈ (latO bs v : Set (Fin n → Fv F v ⊗[F] E)) := by
      rw [← hL]; rfl
    have e2 : ∀ x, x ∈ S ↔ x ∈ Rv bs v := fun x => by
      rw [← hG.carrier]; rfl
    rw [e1]
    simp only [e2]
    rfl
  rw [key] at hy ⊢
  intro a
  show ∑ j, h a j * y j ∈ S
  exact sum_mem fun j _ => mul_mem (hh a j) (hy j)

end Good

theorem integrand_invariant_integral_hermitian : HermitianLatticeInvariance := by
  intro F E _ _ _ _ _ σ M n d J T bs v ψv S σS ϖ ε hG hT μv lam L hL z b h hh
  unfold whI
  rw [jtR_add hG μv b h hh, character_add_integral_hermitian hG hT b h hh]
  have e : nu2 lam L L (b + h).1 = nu2 lam L L b.1 := by
    rw [AddSubgroup.coe_add]
    exact multiplicity_add_lattice_preserving lam L _ _ (mulVec_mem_L hG L hL _ hh)
  rw [e]

end GlobalTheory.CompanionTheory.GunrInv

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianInvariance =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianVolumeOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianVolumeOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\nimport Aesop.Main\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.GoodHerm

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain MeasureTheory PositivityTheory.SiegelWeilFormula.Gunr PositivityTheory.PfSWUS.Loc Topology
open scoped TensorProduct

theorem measure_eq_one_of_selfDual {V : Type} [AddCommGroup V] [TopologicalSpace V] [IsTopologicalAddGroup V]
    [MeasurableSpace V] [BorelSpace V] (μ : Measure V) (χ : V → V → ℂ) (hμ : SelfDual μ χ) (L : AddSubgroup V)
    (hO : IsOpen (L : Set V)) (hC : IsCompact (L : Set V)) (hadd : ∀ x x' y, χ (x + x') y = χ x y * χ x' y)
    (hcont : ∀ y, Continuous fun x => χ x y) (hann : ∀ y, (∀ x ∈ L, χ x y = 1) ↔ y ∈ L) : μ L = 1 := by
  classical
  obtain ⟨hH, hinv⟩ := hμ
  haveI := hH
  have hmeas : MeasurableSet (L : Set V) := hO.measurableSet
  have hclosed : IsClosed (L : Set V) := AddSubgroup.isClosed_of_isOpen L hO
  have hfin : μ L ≠ ⊤ := hC.measure_lt_top.ne
  have hpos : μ L ≠ 0 := (hO.measure_pos μ ⟨0, L.zero_mem⟩).ne'
  set c : ℂ := ((μ.real (L : Set V) : ℝ) : ℂ) with hc
  let Φ : V → ℂ := (L : Set V).indicator fun _ => 1
  have hΦc : Continuous Φ := IsClopen.continuous_indicator ⟨hclosed, hO⟩ continuous_const
  have hΦs : HasCompactSupport Φ :=
    HasCompactSupport.intro hC fun x hx => Set.indicator_of_notMem hx _
  have hIΦ : ∫ x, Φ x ∂μ = c := by
    simp only [Φ]
    rw [integral_indicator_const _ hmeas]
    simp [hc]
  have hI : ∀ y, ∫ x, Φ x * χ x y ∂μ = (L : Set V).indicator (fun _ => c) y := by
    intro y
    by_cases hy : y ∈ L
    · rw [Set.indicator_of_mem (show y ∈ (L : Set V) from hy), ← hIΦ]
      refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
      by_cases hx : x ∈ L
      · simp [Φ, (hann y).2 hy x hx, show x ∈ (L : Set V) from hx]
      · simp [Φ, show x ∉ (L : Set V) from hx]
    · rw [Set.indicator_of_notMem (show y ∉ (L : Set V) from hy)]
      have hex : ∃ x₀ ∈ L, χ x₀ y ≠ 1 := by
        by_contra hcon
        push_neg at hcon
        exact hy ((hann y).1 hcon)
      obtain ⟨x₀, hx₀, hne⟩ := hex
      have htr : ∫ x, Φ (x₀ + x) * χ (x₀ + x) y ∂μ = ∫ x, Φ x * χ x y ∂μ :=
        integral_add_left_eq_self (fun x => Φ x * χ x y) x₀
      have hsh : ∀ x, Φ (x₀ + x) = Φ x := by
        intro x
        have : x₀ + x ∈ L ↔ x ∈ L := L.add_mem_cancel_left hx₀
        by_cases hx : x ∈ L
        · simp [Φ, show x ∈ (L : Set V) from hx, show x₀ + x ∈ (L : Set V) from this.2 hx]
        · simp [Φ, show x ∉ (L : Set V) from hx, show x₀ + x ∉ (L : Set V) from fun h => hx (this.1 h)]
      have h2 : ∫ x, Φ (x₀ + x) * χ (x₀ + x) y ∂μ = χ x₀ y * ∫ x, Φ x * χ x y ∂μ := by
        rw [← integral_const_mul]
        refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
        show Φ (x₀ + x) * χ (x₀ + x) y = χ x₀ y * (Φ x * χ x y)
        rw [hsh, hadd]; ring
      rw [htr] at h2
      have h3 : (1 - χ x₀ y) * ∫ x, Φ x * χ x y ∂μ = 0 := by
        rw [sub_mul, one_mul, ← h2, sub_self]
      exact (mul_eq_zero.1 h3).resolve_left (sub_ne_zero.2 hne.symm)
  have hint : Integrable (fun y => ∫ x, Φ x * χ x y ∂μ) μ := by
    have : (fun y => ∫ x, Φ x * χ x y ∂μ) = (L : Set V).indicator (fun _ => c) := funext hI
    rw [this, integrable_indicator_iff hmeas]
    exact integrableOn_const hfin
  have hout := hinv Φ hΦc hΦs hint 0
  have hL : ∫ y, (∫ x, Φ x * χ x y ∂μ) * χ y 0 ∂μ = c * c := by
    have : ∀ y, (∫ x, Φ x * χ x y ∂μ) * χ y 0 = (L : Set V).indicator (fun _ => c) y := by
      intro y
      rw [hI]
      by_cases hy : y ∈ L
      · simp [show y ∈ (L : Set V) from hy, (hann 0).2 L.zero_mem y hy]
      · simp [show y ∉ (L : Set V) from hy]
    simp only [this]
    rw [integral_indicator_const _ hmeas]
    simp [hc]
  have h1 : Φ (-0) = 1 := by simp [Φ]
  rw [hL, h1] at hout
  have h2 : (μ.real (L : Set V)) * (μ.real (L : Set V)) = 1 := by
    have : (((μ.real (L : Set V)) * (μ.real (L : Set V)) : ℝ) : ℂ) = ((1 : ℝ) : ℂ) := by
      push_cast; simpa [hc] using hout
    exact_mod_cast this
  have h3 : μ.real (L : Set V) = 1 := by
    have h0 : 0 ≤ μ.real (L : Set V) := measureReal_nonneg
    nlinarith [sq_nonneg (μ.real (L : Set V) - 1), sq_nonneg (μ.real (L : Set V) + 1)]
  have h4 : (μ L).toReal = 1 := h3
  exact (ENNReal.toReal_eq_one_iff _).1 h4

section Local

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {M n d : ℕ} {J : Matrix (Fin M) (Fin M) E} {T : Matrix (Fin n) (Fin n) E}
  {bs : Module.Basis (Fin d) F E} {v : HeightOneSpectrum (𝓞 F)} {ψv : Fv F v → ℂ} {S : Subring (Fv F v ⊗[F] E)}
  {σS : S →+* S} {ϖ : Fv F v} {ε : ℤ}

theorem isModTop_Fv (v : HeightOneSpectrum (𝓞 F)) : IsModuleTopology (Fv F v) (Fv F v ⊗[F] E) := ⟨rfl⟩

def sigEquiv (bs : Module.Basis (Fin d) F E) (σ : E →ₐ[F] E) (v : HeightOneSpectrum (𝓞 F)) :
    (Fv F v ⊗[F] E) ≃ₐ[Fv F v] (Fv F v ⊗[F] E) :=
  haveI : FiniteDimensional F E := Module.Basis.finiteDimensional_of_finite bs
  Algebra.TensorProduct.congr (AlgEquiv.refl : Fv F v ≃ₐ[Fv F v] Fv F v)
    (AlgEquiv.ofBijective σ (Algebra.IsAlgebraic.algHom_bijective σ))

theorem sigEquiv_apply (bs : Module.Basis (Fin d) F E) (σ : E →ₐ[F] E) (v : HeightOneSpectrum (𝓞 F))
    (x : Fv F v ⊗[F] E) : sigEquiv bs σ v x = sigR (Fv F v) σ x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul r e => simp [sigEquiv, sigR]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

theorem trace_sigR (bs : Module.Basis (Fin d) F E) (σ : E →ₐ[F] E) (v : HeightOneSpectrum (𝓞 F))
    (x : Fv F v ⊗[F] E) :
    Algebra.trace (Fv F v) (Fv F v ⊗[F] E) (sigR (Fv F v) σ x) = Algebra.trace (Fv F v) (Fv F v ⊗[F] E) x := by
  rw [← sigEquiv_apply bs, Algebra.trace_eq_of_algEquiv]

theorem continuous_sigR_Fv (bs : Module.Basis (Fin d) F E) (σ : E →ₐ[F] E) (v : HeightOneSpectrum (𝓞 F)) :
    Continuous (sigR (Fv F v) σ : Fv F v ⊗[F] E → Fv F v ⊗[F] E) := by
  haveI := isModTop_Fv (E := E) v
  haveI : ContinuousAdd (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousAdd (Fv F v) _
  haveI : ContinuousSMul (Fv F v) (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousSMul _ _
  have h := IsModuleTopology.continuous_of_linearMap (sigEquiv bs σ v).toLinearMap
  have e : (sigR (Fv F v) σ : Fv F v ⊗[F] E → Fv F v ⊗[F] E) = (sigEquiv bs σ v).toLinearMap := by
    funext x
    exact (sigEquiv_apply bs σ v x).symm
  rw [e]
  exact h

theorem exists_coord_homeo (bs : Module.Basis (Fin d) F E) (v : HeightOneSpectrum (𝓞 F)) :
    ∃ e : (Fv F v ⊗[F] E) ≃ₜ (Fin d → Fv F v), ∀ x k, e x k = (Algebra.TensorProduct.basis (Fv F v) bs).repr x k := by
  haveI := isModTop_Fv (E := E) v
  haveI : ContinuousAdd (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousAdd (Fv F v) _
  haveI : ContinuousSMul (Fv F v) (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousSMul _ _
  let L := (Algebra.TensorProduct.basis (Fv F v) bs).equivFun
  refine ⟨⟨L.toEquiv, IsModuleTopology.continuous_of_linearMap L.toLinearMap,
    IsModuleTopology.continuous_of_linearMap L.symm.toLinearMap⟩, fun x k => ?_⟩
  rfl

theorem isTopAdd_tens (v : HeightOneSpectrum (𝓞 F)) : IsTopologicalAddGroup (Fv F v ⊗[F] E) := by
  haveI := isModTop_Fv (E := E) v
  exact IsModuleTopology.topologicalAddGroup (Fv F v) _

theorem t2_tensor_product (bs : Module.Basis (Fin d) F E) (v : HeightOneSpectrum (𝓞 F)) : T2Space (Fv F v ⊗[F] E) := by
  obtain ⟨e, -⟩ := exists_coord_homeo bs v
  exact e.isEmbedding.t2Space

theorem isClosed_herm (bs : Module.Basis (Fin d) F E) (σ : E →ₐ[F] E) (v : HeightOneSpectrum (𝓞 F)) (n : ℕ) :
    IsClosed (HermR (Fv F v) σ n : Set (Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E))) := by
  haveI := t2_tensor_product bs v
  have : (HermR (Fv F v) σ n : Set (Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E))) =
      ⋂ a, ⋂ b, {X | sigR (Fv F v) σ (X b a) = X a b} := by
    ext X
    simp only [Set.mem_iInter, Set.mem_setOf_eq, SetLike.mem_coe]
    exact Iff.rfl
  rw [this]
  exact isClosed_iInter fun a => isClosed_iInter fun b =>
    isClosed_eq ((continuous_sigR_Fv bs σ v).comp ((continuous_apply a).comp (continuous_apply b)))
      ((continuous_apply b).comp (continuous_apply a))

theorem isOpen_Rv (bs : Module.Basis (Fin d) F E) (v : HeightOneSpectrum (𝓞 F)) : IsOpen (Rv bs v) := by
  obtain ⟨e, he⟩ := exists_coord_homeo bs v
  have hO : IsOpen ((v.adicCompletionIntegers F : Set (Fv F v))) := Valued.isOpen_integer _
  have h : Rv bs v = e ⁻¹' (Set.pi Set.univ fun _ : Fin d => (v.adicCompletionIntegers F : Set (Fv F v))) := by
    ext x
    simp only [Rv, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_pi, Set.mem_univ, true_imp_iff, he, SetLike.mem_coe]
  rw [h]
  exact (isOpen_set_pi Set.finite_univ fun _ _ => hO).preimage e.continuous

theorem isCompact_Rv (bs : Module.Basis (Fin d) F E) (v : HeightOneSpectrum (𝓞 F)) : IsCompact (Rv bs v) := by
  obtain ⟨e, he⟩ := exists_coord_homeo bs v
  have hO : IsCompact ((v.adicCompletionIntegers F : Set (Fv F v))) :=
    PI.AdicCompletionValuation.isCompact_adicCompletionIntegers F v
  have h : Rv bs v = e ⁻¹' (Set.pi Set.univ fun _ : Fin d => (v.adicCompletionIntegers F : Set (Fv F v))) := by
    ext x
    simp only [Rv, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_pi, Set.mem_univ, true_imp_iff, he, SetLike.mem_coe]
  rw [h]
  exact e.isClosedEmbedding.isCompact_preimage (isCompact_univ_pi fun _ => hO)

theorem smul_mem_Rv {c : Fv F v} (hc : c ∈ v.adicCompletionIntegers F) {x : Fv F v ⊗[F] E} (hx : x ∈ Rv bs v) :
    c • x ∈ Rv bs v := by
  intro k
  rw [map_smul, Finsupp.smul_apply, smul_eq_mul]
  exact mul_mem hc (hx k)

def boxS (S : Subring (Fv F v ⊗[F] E)) (n : ℕ) : Set (Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) :=
  Set.pi Set.univ fun _ : Fin n => Set.pi Set.univ fun _ : Fin n => (S : Set (Fv F v ⊗[F] E))

theorem coe_integral_hermitian_box (S : Subring (Fv F v ⊗[F] E)) (σ : E →ₐ[F] E) (n : ℕ) :
    (H0 S σ n : Set (HermR (Fv F v) σ n)) = Subtype.val ⁻¹' boxS S n := by
  ext b
  constructor
  · intro h i _ j _
    exact h i j
  · intro h i j
    exact h i trivial j trivial

theorem isOpen_integral_hermitian (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) : IsOpen (H0 S σ n : Set (HermR (Fv F v) σ n)) := by
  rw [coe_integral_hermitian_box]
  refine IsOpen.preimage continuous_subtype_val ?_
  have hS : IsOpen (S : Set (Fv F v ⊗[F] E)) := by rw [hG.carrier]; exact isOpen_Rv bs v
  exact isOpen_set_pi Set.finite_univ fun _ _ => isOpen_set_pi Set.finite_univ fun _ _ => hS

theorem isCompact_integral_hermitian (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) : IsCompact (H0 S σ n : Set (HermR (Fv F v) σ n)) := by
  rw [coe_integral_hermitian_box]
  have hS : IsCompact (S : Set (Fv F v ⊗[F] E)) := by rw [hG.carrier]; exact isCompact_Rv bs v
  exact (isClosed_herm bs σ v n).isClosedEmbedding_subtypeVal.isCompact_preimage
    (isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => hS)

namespace GoodAt

variable (hG : GoodLoc σ J T bs v ψv S σS ϖ ε)
include hG

theorem sig_mem {s : Fv F v ⊗[F] E} (hs : s ∈ S) : sigR (Fv F v) σ s ∈ S := by
  have h := hG.sig ⟨s, hs⟩
  simp only at h
  rw [← h]
  exact (σS ⟨s, hs⟩).2

theorem sig_sig {s : Fv F v ⊗[F] E} (hs : s ∈ S) : sigR (Fv F v) σ (sigR (Fv F v) σ s) = s := by
  have h1 := hG.sig ⟨s, hs⟩
  have h2 := hG.sig (σS ⟨s, hs⟩)
  have h3 := hG.quad.inv ⟨s, hs⟩
  simp only at h1
  rw [h3, h1] at h2
  exact h2.symm

theorem smul_mem {c : Fv F v} (hc : c ∈ v.adicCompletionIntegers F) {s : Fv F v ⊗[F] E} (hs : s ∈ S) : c • s ∈ S := by
  have h : ∀ x, x ∈ S ↔ x ∈ Rv bs v := fun x => by rw [← hG.carrier]; rfl
  exact (h _).2 (smul_mem_Rv hc ((h _).1 hs))

end GoodAt

def testMat (σ : E →ₐ[F] E) (a b : Fin n) (s : Fv F v ⊗[F] E) : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E) :=
  fun i j => (if i = a ∧ j = b then s else 0) + (if i = b ∧ j = a then sigR (Fv F v) σ s else 0)

theorem testMat_mem (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (a b : Fin n) {s : Fv F v ⊗[F] E} (hs : s ∈ S) :
    testMat σ a b s ∈ HermR (Fv F v) σ n := by
  intro i j
  simp only [testMat, map_add (f := _), apply_ite (sigR (Fv F v) σ), map_zero, GoodAt.sig_sig hG hs]
  rw [add_comm]
  simp only [and_comm]

theorem sum_testMat (σ : E →ₐ[F] E) (a b : Fin n) (s : Fv F v ⊗[F] E) (Y : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) :
    ∑ i, ∑ j, testMat σ a b s i j * Y j i = s * Y b a + sigR (Fv F v) σ s * Y a b := by
  simp only [testMat, add_mul, Finset.sum_add_distrib, ite_mul, zero_mul, ite_and]
  have key : ∀ (p q : Fin n) (t : Fv F v ⊗[F] E),
      (∑ x, ∑ x_1, if x = p then if x_1 = q then t * Y x_1 x else 0 else 0) = t * Y q p := by
    intro p q t
    rw [Finset.sum_eq_single p (fun x _ hx => by simp [hx]) (by simp),
      Finset.sum_eq_single q (fun x _ hx => by simp [hx]) (by simp)]
    simp
  rw [key, key]

theorem pair_testMat (bs : Module.Basis (Fin d) F E) (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (a b : Fin n)
    {s : Fv F v ⊗[F] E} (hs : s ∈ S) (y : HermR (Fv F v) σ n) :
    pairHerm (Fv F v) σ n ⟨testMat σ a b s, testMat_mem hG a b hs⟩ y =
      Algebra.trace (Fv F v) (Fv F v ⊗[F] E) (s * (y : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) b a) := by
  have hy : (y : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) a b =
      sigR (Fv F v) σ ((y : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) b a) := (y.2 a b).symm
  have hh : algebraMap F (Fv F v) (1 / 2) * 2 = 1 := by
    rw [← map_ofNat (algebraMap F (Fv F v)) 2, ← map_mul]
    norm_num
  unfold pairHerm
  show algebraMap F (Fv F v) (1 / 2) * Algebra.trace (Fv F v) (Fv F v ⊗[F] E)
    (∑ i, ∑ j, testMat σ a b s i j * (y : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) j i) = _
  rw [sum_testMat, hy, ← map_mul, map_add (f := _), trace_sigR bs, ← two_mul, ← mul_assoc, hh, one_mul]

theorem pair_add (x x' y : HermR (Fv F v) σ n) :
    pairHerm (Fv F v) σ n (x + x') y = pairHerm (Fv F v) σ n x y + pairHerm (Fv F v) σ n x' y := by
  simp only [pairHerm, AddSubgroup.coe_add, Matrix.add_apply, add_mul, Finset.sum_add_distrib, map_add (f := _), mul_add]

theorem continuous_pair (y : HermR (Fv F v) σ n) (bs : Module.Basis (Fin d) F E) :
    Continuous fun x : HermR (Fv F v) σ n => pairHerm (Fv F v) σ n x y := by
  haveI := isModTop_Fv (E := E) v
  haveI : ContinuousAdd (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousAdd (Fv F v) _
  haveI : ContinuousSMul (Fv F v) (Fv F v ⊗[F] E) := IsModuleTopology.toContinuousSMul _ _
  haveI : Module.Finite (Fv F v) (Fv F v ⊗[F] E) := Module.Finite.of_basis (Algebra.TensorProduct.basis (Fv F v) bs)
  unfold pairHerm
  refine continuous_const.mul ((IsModuleTopology.continuous_of_linearMap (Algebra.trace (Fv F v) (Fv F v ⊗[F] E))).comp ?_)
  refine continuous_finsetSum _ fun a _ => continuous_finsetSum _ fun b _ => ?_
  exact (IsModuleTopology.continuous_of_linearMap (LinearMap.mulRight (Fv F v)
    ((y : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) b a))).comp
      ((continuous_apply_apply a b).comp continuous_subtype_val)

theorem annihilator (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (y : HermR (Fv F v) σ n) :
    (∀ x ∈ H0 S σ n, ψv (pairHerm (Fv F v) σ n x y) = 1) ↔ y ∈ H0 S σ n := by
  constructor
  · intro h a b

    refine (hG.trace_dual _).1 fun s hs => ?_
    rw [mul_comm]
    refine (hG.psi_cond _).1 fun c hc => ?_
    have hcs : c • s ∈ S := GoodAt.smul_mem hG hc hs
    have hx : (⟨testMat σ b a (c • s), testMat_mem hG b a hcs⟩ : HermR (Fv F v) σ n) ∈ H0 S σ n := by
      intro i j
      show testMat σ b a (c • s) i j ∈ S
      refine add_mem ?_ ?_
      · split_ifs
        · exact hcs
        · exact zero_mem _
      · split_ifs
        · exact GoodAt.sig_mem hG hcs
        · exact zero_mem _
    have := h _ hx
    rw [pair_testMat bs hG b a hcs y, smul_mul_assoc, map_smul, smul_eq_mul, mul_comm] at this
    exact this
  · intro hy x hx
    refine hG.psi_of_mem ?_
    unfold pairHerm
    have hh : algebraMap F (Fv F v) (1 / 2) ∈ v.adicCompletionIntegers F := by
      have : algebraMap F (Fv F v) (1 / 2) = (2 : Fv F v)⁻¹ := by
        rw [one_div, map_inv₀, map_ofNat]
      rw [this]
      exact hG.half_mem
    refine mul_mem hh (hG.trace_mem ?_)
    exact sum_mem fun i _ => sum_mem fun j _ => mul_mem (hx i j) (hy j i)

end Local

theorem volume_integral_hermitian_one : HermitianLatticeVolumeOne := by
  intro F E _ _ _ _ _ σ M n d J T bs v ψv S σS ϖ ε hG νv hν
  haveI := isTopAdd_tens (E := E) v
  haveI : BorelSpace (HermR (Fv F v) σ n) := ⟨rfl⟩
  refine measure_eq_one_of_selfDual νv _ hν (H0 S σ n) (isOpen_integral_hermitian hG) (isCompact_integral_hermitian hG) ?_ ?_ (annihilator hG)
  · intro x x' y
    rw [pair_add, hG.psi_add]
  · intro y
    exact hG.psi_cont.comp (continuous_pair y bs)

end GlobalTheory.CompanionTheory.GoodHerm
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianVolumeOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelExhaustion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelExhaustion", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.GunrExhaust

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain MeasureTheory PositivityTheory.PfSWUS.Loc PositivityTheory.SiegelWeilFormula.Gen Filter Topology
open PositivityTheory.SiegelWeilFormula.Gunr
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem eventually_pow_mul_mem {v : HeightOneSpectrum (𝓞 F)} {ϖ : Fv F v} (h : ‖ϖ‖ < 1) (c : Fv F v) :
    ∀ᶠ k : ℕ in atTop, ϖ ^ k * c ∈ v.adicCompletionIntegers F := by
  have h0 : Tendsto (fun k : ℕ => ‖ϖ‖ ^ k * ‖c‖) atTop (𝓝 (0 * ‖c‖)) :=
    (tendsto_pow_atTop_nhds_zero_of_lt_one (norm_nonneg _) h).mul_const _
  rw [zero_mul] at h0
  filter_upwards [h0.eventually (gt_mem_nhds one_pos)] with k hk
  rw [HeightOneSpectrum.mem_adicCompletionIntegers, ← Valued.toNormedField.norm_le_one_iff, norm_mul, norm_pow]
  exact hk.le

theorem eventually_smul_mem {σ : E →ₐ[F] E} {M n d : ℕ} {J : Matrix (Fin M) (Fin M) E} {T : Matrix (Fin n) (Fin n) E}
    {bs : Module.Basis (Fin d) F E} {v : HeightOneSpectrum (𝓞 F)} {ψv : Fv F v → ℂ} {S : Subring (Fv F v ⊗[F] E)}
    {σS : S →+* S} {ϖ : Fv F v} {ε : ℤ} (hG : GoodLoc σ J T bs v ψv S σS ϖ ε) (x : Fv F v ⊗[F] E) :
    ∀ᶠ k : ℕ in atTop, ϖ ^ k • x ∈ S := by
  have h : ∀ᶠ k : ℕ in atTop, ∀ i, ϖ ^ k * (Algebra.TensorProduct.basis (Fv F v) bs).repr x i ∈
      v.adicCompletionIntegers F :=
    eventually_all.2 fun i => eventually_pow_mul_mem hG.unif_lt _
  filter_upwards [h] with k hk
  have hmem : ϖ ^ k • x ∈ (S : Set (Fv F v ⊗[F] E)) := by
    rw [hG.carrier]
    intro i
    simpa [map_smul] using hk i
  exact hmem

theorem exhaust : Exhaust := by
  intro F E _ _ _ _ _ σ M n d J T bs v ψv S σS ϖ ε hG b
  have h : ∀ᶠ k : ℕ in atTop, ∀ a c, ϖ ^ k • (b : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) a c ∈ S :=
    eventually_all.2 fun a => eventually_all.2 fun c => eventually_smul_mem hG _
  obtain ⟨k, hk⟩ := h.exists
  have hX : PositivityTheory.PfSWUS.Loc.cT σS (Matrix.of fun a c => (⟨_, hk a c⟩ : S)) = Matrix.of fun a c => (⟨_, hk a c⟩ : S) := by
    ext a c
    have hb := b.2 a c
    simp only [PositivityTheory.PfSWUS.Loc.cT, Matrix.transpose_apply, Matrix.map_apply, Matrix.of_apply]
    rw [hG.sig]
    simp only [sigR_smul]
    exact congrArg _ hb
  refine ⟨k, _, hX, ?_⟩
  apply Subtype.ext
  funext a c
  show (b : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) a c = (ϖ ^ k)⁻¹ • ϖ ^ k • (b : Matrix (Fin n) (Fin n) (Fv F v ⊗[F] E)) a c
  rw [smul_smul, inv_mul_cancel₀ (pow_ne_zero _ hG.unif_ne), one_smul]

end GlobalTheory.CompanionTheory.GunrExhaust

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelExhaustion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityBoundUnramified =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityBoundUnramified", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardHermitianMatricesModPow\nimport Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.LocalDefs\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedQuotientCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.PfSWUS.Loc

namespace GlobalTheory.CompanionTheory.GunrNuBound

variable {R : Type} [CommRing R]

theorem not_mem_lev_one {ϖ a : R} (h : ¬ ϖ ∣ a) : a ∉ lev ϖ 1 := by
  intro hm
  exact h (by simpa using Ideal.mem_span_singleton.1 hm)

theorem exists_trace_not_dvd {σ : R →+* R} {ϖ : R} {q : ℕ} {ε : ℤ} (h : IsUnrQuad R σ ϖ q ε) {c : R}
    (hc : ¬ ϖ ∣ c) : ∃ t : R, ¬ ϖ ∣ (t * c + σ (t * c)) := by
  by_contra hall
  push_neg at hall
  obtain ⟨u, ⟨d, hd⟩, -⟩ := h.basis
  have h1 : ϖ ∣ 1 * c + σ (1 * c) := hall 1
  have h2 : ϖ ∣ u * c + σ (u * c) := hall u
  have h3 : ϖ ∣ (d : R) * σ c := by
    have e : (d : R) * σ c = u * (1 * c + σ (1 * c)) - (u * c + σ (u * c)) := by
      rw [hd, map_mul, map_mul, map_one]; ring
    rw [e]
    exact dvd_sub (Dvd.dvd.mul_left h1 u) h2
  have h4 : ϖ ∣ σ c := (Units.dvd_mul_left).1 h3
  have h5 : σ ϖ ∣ σ (σ c) := map_dvd σ h4
  rw [h.fix_ϖ, h.inv] at h5
  exact hc h5

def bf (σ : R →+* R) {n : ℕ} (H : Matrix (Fin n) (Fin n) R) (w z : Fin n → R) : R :=
  ∑ i, ∑ l, w i * H i l * σ (z l)

theorem bf_add_left (σ : R →+* R) {n : ℕ} (H : Matrix (Fin n) (Fin n) R) (w w' z : Fin n → R) :
    bf σ H (w + w') z = bf σ H w z + bf σ H w' z := by
  simp [bf, add_mul, Finset.sum_add_distrib]

theorem bf_add_right (σ : R →+* R) {n : ℕ} (H : Matrix (Fin n) (Fin n) R) (w z z' : Fin n → R) :
    bf σ H w (z + z') = bf σ H w z + bf σ H w z' := by
  simp [bf, mul_add, Finset.sum_add_distrib]

theorem bf_single (σ : R →+* R) {n : ℕ} (H : Matrix (Fin n) (Fin n) R) (a b : Fin n) (s t : R) :
    bf σ H (Pi.single a s) (Pi.single b t) = s * H a b * σ t := by
  unfold bf
  rw [Finset.sum_eq_single a, Finset.sum_eq_single b]
  · simp
  · intro l _ hl; simp [Pi.single_eq_of_ne hl]
  · simp
  · intro i _ hi; simp [Pi.single_eq_of_ne hi]
  · simp

theorem bf_swap {σ : R →+* R} (hinv : ∀ a, σ (σ a) = a) {n : ℕ} {H : Matrix (Fin n) (Fin n) R}
    (hH : cT σ H = H) (w z : Fin n → R) : σ (bf σ H w z) = bf σ H z w := by
  have hab : ∀ a b, σ (H b a) = H a b := fun a b => by
    have := congrFun (congrFun hH a) b
    simpa [cT] using this
  unfold bf

  rw [map_sum, Finset.sum_comm]
  refine Finset.sum_congr rfl fun l _ => ?_

  rw [map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_mul, map_mul, hinv, hab]
  ring

theorem exists_form_unit {σ : R →+* R} {ϖ : R} {q : ℕ} {ε : ℤ} (h : IsUnrQuad R σ ϖ q ε) {n : ℕ}
    {H : Matrix (Fin n) (Fin n) R} (hH : cT σ H = H) (hnd : ¬ ∀ a b, ϖ ∣ H a b) :
    ∃ w : Fin n → R, IsUnit (bf σ H w w) := by
  have key : ∀ w : Fin n → R, ¬ ϖ ∣ bf σ H w w → IsUnit (bf σ H w w) := fun w hw =>
    h.fixLocal _ (bf_swap h.inv hH w w) (not_mem_lev_one hw)
  by_cases hd : ∃ a, ¬ ϖ ∣ H a a
  · obtain ⟨a, ha⟩ := hd
    refine ⟨Pi.single a 1, key _ ?_⟩
    simpa [bf_single] using ha
  · push_neg at hd hnd
    obtain ⟨a, b, hab⟩ := hnd
    obtain ⟨t, ht⟩ := exists_trace_not_dvd h hab
    refine ⟨Pi.single a t + Pi.single b 1, key _ ?_⟩
    intro hdiv
    apply ht
    have e : bf σ H (Pi.single a t + Pi.single b 1) (Pi.single a t + Pi.single b 1) =
        t * H a a * σ t + t * H a b + σ (t * H a b) + H b b := by
      have e2 : bf σ H (Pi.single b 1) (Pi.single a t) = σ (t * H a b) := by
        rw [← bf_swap h.inv hH, bf_single, map_one, mul_one]
      rw [bf_add_left, bf_add_right, bf_add_right, e2, bf_single, bf_single, bf_single]
      simp only [map_one, mul_one, one_mul]
      ring
    rw [e] at hdiv
    have e3 : t * H a b + σ (t * H a b) =
        (t * H a a * σ t + t * H a b + σ (t * H a b) + H b b) - (t * H a a * σ t + H b b) := by ring
    rw [e3]
    exact dvd_sub hdiv (dvd_add (Dvd.dvd.mul_right (Dvd.dvd.mul_left (hd a) t) _) (hd b))

theorem vecMul_red (ϖ : R) (k : ℕ) {n : ℕ} (x : Fin n → R) (H : Matrix (Fin n) (Fin n) R) :
    Matrix.vecMul (fun i => Ideal.Quotient.mk (lev ϖ k) (x i)) (red ϖ k H) =
      fun l => Ideal.Quotient.mk (lev ϖ k) (∑ i, x i * H i l) := by
  funext l

  simp [Matrix.vecMul, dotProduct, red, map_sum]

theorem nu_lower {σ : R →+* R} {ϖ : R} {q : ℕ} {ε : ℤ} (h : IsUnrQuad R σ ϖ q ε) {n j k : ℕ}
    (hjk : j ≤ k) {H : Matrix (Fin n) (Fin n) R} (hH : cT σ H = H) (hnd : ¬ ∀ a b, ϖ ∣ H a b) :
    q ^ (2 * j) ≤ nuAt ϖ (red ϖ k (ϖ ^ (k - j) • H)) := by
  obtain ⟨w, hw⟩ := exists_form_unit h hH hnd
  have hq : 0 < q := lt_trans Nat.zero_lt_one h.one_lt
  have hfin : Finite (R ⧸ lev ϖ k) :=
    Nat.finite_of_card_ne_zero (by rw [_root_.GlobalTheory.CompanionTheory.UnrDens.card_quot_lev R σ ϖ q ε h k]; exact (pow_pos hq _).ne')
  set B := red ϖ k (ϖ ^ (k - j) • H) with hB
  let lift : R ⧸ lev ϖ j → R := Function.surjInv Ideal.Quotient.mk_surjective
  have hlift : ∀ c, Ideal.Quotient.mk (lev ϖ j) (lift c) = c := Function.surjInv_eq _
  let f : R ⧸ lev ϖ j → Set.range (fun x : Fin n → R ⧸ lev ϖ k => Matrix.vecMul x B) :=
    fun c => ⟨_, (fun i => Ideal.Quotient.mk (lev ϖ k) (lift c * w i)), rfl⟩
  have hinj : Function.Injective f := by
    intro c₁ c₂ hc
    have hv := congrArg Subtype.val hc
    simp only [f] at hv
    rw [hB, vecMul_red, vecMul_red] at hv
    have hl : ∀ l, ϖ ^ k ∣ ∑ i, (lift c₁ - lift c₂) * w i * (ϖ ^ (k - j) * H i l) := by
      intro l
      have := congrFun hv l
      have h2 := Ideal.Quotient.eq.1 this
      have h3 := Ideal.mem_span_singleton.1 h2
      convert h3 using 1
      rw [← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      simp only [Matrix.smul_apply, smul_eq_mul]
      ring
    have hs : ϖ ^ k ∣ ϖ ^ (k - j) * ((lift c₁ - lift c₂) * bf σ H w w) := by
      have e : ϖ ^ (k - j) * ((lift c₁ - lift c₂) * bf σ H w w) =
          ∑ l, (∑ i, (lift c₁ - lift c₂) * w i * (ϖ ^ (k - j) * H i l)) * σ (w l) := by
        unfold bf
        rw [Finset.sum_comm, Finset.mul_sum, Finset.mul_sum]
        simp only [Finset.mul_sum, Finset.sum_mul]
        refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun i _ => ?_
        ring
      rw [e]
      exact Finset.dvd_sum fun l _ => Dvd.dvd.mul_right (hl l) _
    obtain ⟨e, he⟩ := hs
    have hk : ϖ ^ k = ϖ ^ (k - j) * ϖ ^ j := by rw [← pow_add, Nat.sub_add_cancel hjk]
    have hreg : IsSMulRegular R (ϖ ^ (k - j)) := h.reg.pow _
    have h5 : (lift c₁ - lift c₂) * bf σ H w w = ϖ ^ j * e := by
      apply hreg
      simp only [smul_eq_mul]
      rw [he, hk]; ring
    have h6 : ϖ ^ j ∣ lift c₁ - lift c₂ :=
      (hw.dvd_mul_right).1 ⟨e, h5⟩
    rw [← hlift c₁, ← hlift c₂]
    exact Ideal.Quotient.eq.2 (Ideal.mem_span_singleton.2 h6)
  have := Nat.card_le_card_of_injective f hinj
  rwa [_root_.GlobalTheory.CompanionTheory.UnrDens.card_quot_lev R σ ϖ q ε h j] at this

def lvl (σ : R →+* R) (ϖ : R) (n k j : ℕ) : Set (Matrix (Fin n) (Fin n) (R ⧸ lev ϖ k)) :=
  {B | ∃ H : Matrix (Fin n) (Fin n) R, cT σ H = H ∧ B = red ϖ k (ϖ ^ (k - j) • H)}

theorem card_lvl_le {σ : R →+* R} {ϖ : R} {q : ℕ} {ε : ℤ} (h : IsUnrQuad R σ ϖ q ε) {n j k : ℕ}
    (hjk : j ≤ k) (S : Finset (hermMod σ ϖ n k)) (hS : ∀ B ∈ S, B.1 ∈ lvl σ ϖ n k j) :
    S.card ≤ q ^ (j * n ^ 2) := by
  classical
  have hq : 0 < q := lt_trans Nat.zero_lt_one h.one_lt
  have hcard := GlobalTheory.CompanionTheory.UnrDens.card_hermMod R σ ϖ q ε h n j
  have hfin : Finite (hermMod σ ϖ n j) :=
    Nat.finite_of_card_ne_zero (by rw [hcard]; exact (pow_pos hq _).ne')
  have hS' : ∀ B ∈ S, ∃ H : Matrix (Fin n) (Fin n) R,
      cT σ H = H ∧ B.1 = red ϖ k (ϖ ^ (k - j) • H) := hS
  choose! H hH using hS'
  let f : S → hermMod σ ϖ n j := fun B => ⟨red ϖ j (H B.1), H B.1, (hH B.1 B.2).1, rfl⟩
  have hinj : Function.Injective f := by
    intro B₁ B₂ hf
    have hv : red ϖ j (H B₁.1) = red ϖ j (H B₂.1) := congrArg Subtype.val hf
    apply Subtype.ext
    apply Subtype.ext
    rw [(hH B₁.1 B₁.2).2, (hH B₂.1 B₂.2).2]
    ext a b
    have h1 := congrFun (congrFun hv a) b
    simp only [red, Matrix.map_apply] at h1
    obtain ⟨e, he⟩ := Ideal.mem_span_singleton.1 (Ideal.Quotient.eq.1 h1)
    simp only [red, Matrix.map_apply, Matrix.smul_apply, smul_eq_mul]
    refine Ideal.Quotient.eq.2 (Ideal.mem_span_singleton.2 ⟨e, ?_⟩)
    have hk : ϖ ^ k = ϖ ^ (k - j) * ϖ ^ j := by rw [← pow_add, Nat.sub_add_cancel hjk]
    rw [hk, ← mul_sub, he]
    ring
  have := Nat.card_le_card_of_injective f hinj
  rw [hcard] at this
  simpa [Nat.card_eq_fintype_card] using this

theorem not_dvd_of_not_lvl {σ : R →+* R} {ϖ : R} {q : ℕ} {ε : ℤ} (h : IsUnrQuad R σ ϖ q ε) {n j k : ℕ}
    (hj : 0 < j) (hjk : j ≤ k) {H : Matrix (Fin n) (Fin n) R} (hH : cT σ H = H)
    {B : Matrix (Fin n) (Fin n) (R ⧸ lev ϖ k)} (hB : B = red ϖ k (ϖ ^ (k - j) • H))
    (hn : B ∉ lvl σ ϖ n k (j - 1)) : ¬ ∀ a b, ϖ ∣ H a b := by
  intro hd
  choose H' hH' using hd
  apply hn
  have hab : ∀ a b, σ (H b a) = H a b := fun a b => by
    have := congrFun (congrFun hH a) b
    simpa [cT] using this
  refine ⟨Matrix.of H', ?_, ?_⟩
  · ext a b
    show σ (H' b a) = H' a b
    apply h.reg
    simp only [smul_eq_mul]
    have e := hab a b
    rw [hH' b a, map_mul, h.fix_ϖ, hH' a b] at e
    exact e
  · rw [hB]
    congr 1
    ext a b
    have e : k - (j - 1) = (k - j) + 1 := by omega
    simp only [Matrix.smul_apply, smul_eq_mul, Matrix.of_apply]
    rw [hH' a b, e, pow_succ]
    ring

end GlobalTheory.CompanionTheory.GunrNuBound


open GlobalTheory.CompanionTheory.GunrNuBound in
theorem GlobalTheory.CompanionTheory.GunrNuBound.nuBound : PositivityTheory.SiegelWeilFormula.Gunr.NuBound := by
  classical
  intro R _ σ ϖ q ε h n k r hr hx
  have hq : 0 < q := lt_trans Nat.zero_lt_one h.one_lt
  have hfin : Finite (hermMod σ ϖ n k) :=
    Nat.finite_of_card_ne_zero
      (by rw [GlobalTheory.CompanionTheory.UnrDens.card_hermMod R σ ϖ q ε h n k]; exact (pow_pos hq _).ne')
  haveI := Fintype.ofFinite (hermMod σ ϖ n k)
  rw [tsum_fintype]
  have hq1 : (1 : ℝ) ≤ (q : ℝ) ^ (n ^ 2) := one_le_pow₀ (by exact_mod_cast hq)
  have hr1 : r ≤ 1 := by nlinarith
  have hx0 : 0 ≤ (q : ℝ) ^ (n ^ 2) * r := by positivity
  have hex : ∀ B : hermMod σ ϖ n k, ∃ j, j ≤ k ∧ B.1 ∈ lvl σ ϖ n k j := by
    rintro ⟨_, H, hH, rfl⟩
    exact ⟨k, le_rfl, H, hH, by simp⟩
  let lv : hermMod σ ϖ n k → ℕ := fun B => Nat.find (hex B)
  have hlv_le : ∀ B, lv B ≤ k := fun B => (Nat.find_spec (hex B)).1
  have hlv_mem : ∀ B, B.1 ∈ lvl σ ϖ n k (lv B) := fun B => (Nat.find_spec (hex B)).2
  have hlog : ∀ B : hermMod σ ϖ n k, lv B ≤ Nat.log (q ^ 2) (nuAt ϖ B.1) := by
    intro B
    rcases Nat.eq_zero_or_pos (lv B) with h0 | hpos
    · rw [h0]; exact Nat.zero_le _
    · obtain ⟨H, hH, hB⟩ := hlv_mem B
      have hn : B.1 ∉ lvl σ ϖ n k (lv B - 1) := fun hmem =>
        Nat.find_min (hex B) (Nat.sub_lt hpos one_pos) ⟨(Nat.sub_le _ _).trans (hlv_le B), hmem⟩
      have hnd := not_dvd_of_not_lvl h hpos (hlv_le B) hH hB hn
      have hlow := nu_lower h (hlv_le B) hH hnd
      rw [← hB] at hlow
      refine Nat.le_log_of_pow_le (Nat.one_lt_pow two_ne_zero h.one_lt) ?_
      rwa [← pow_mul]
  calc ∑ B : hermMod σ ϖ n k, r ^ Nat.log (q ^ 2) (nuAt ϖ B.1)
      ≤ ∑ B : hermMod σ ϖ n k, r ^ lv B :=
        Finset.sum_le_sum fun B _ => pow_le_pow_of_le_one hr hr1 (hlog B)
    _ = ∑ j ∈ Finset.range (k + 1), ∑ B ∈ Finset.univ.filter (fun B => lv B = j), r ^ lv B :=
        (Finset.sum_fiberwise_of_maps_to
          (fun B _ => Finset.mem_range.2 (Nat.lt_succ_of_le (hlv_le B))) _).symm
    _ ≤ ∑ j ∈ Finset.range (k + 1), ((q : ℝ) ^ (n ^ 2) * r) ^ j := by
        refine Finset.sum_le_sum fun j hj => ?_
        have hjk : j ≤ k := Nat.lt_succ_iff.1 (Finset.mem_range.1 hj)
        have hc := card_lvl_le h hjk (Finset.univ.filter fun B => lv B = j) (by
          intro B hB
          have := (Finset.mem_filter.1 hB).2
          rw [← this]
          exact hlv_mem B)
        have e : ∑ B ∈ Finset.univ.filter (fun B => lv B = j), r ^ lv B =
            ((Finset.univ.filter fun B => lv B = j).card : ℝ) * r ^ j := by
          rw [Finset.sum_congr rfl (g := fun _ => r ^ j)
            (fun B hB => by rw [(Finset.mem_filter.1 hB).2]), Finset.sum_const, nsmul_eq_mul]
        rw [e, mul_pow, ← pow_mul, mul_comm (n ^ 2) j]
        refine mul_le_mul_of_nonneg_right ?_ (pow_nonneg hr _)
        exact_mod_cast hc
    _ ≤ ∑' j : ℕ, ((q : ℝ) ^ (n ^ 2) * r) ^ j :=
        (summable_geometric_of_lt_one hx0 hx).sum_le_tsum _ (fun _ _ => pow_nonneg hx0 _)
    _ = 1 / (1 - (q : ℝ) ^ (n ^ 2) * r) := by
        rw [tsum_geometric_of_lt_one hx0 hx, one_div]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityBoundUnramified =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityPowerFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityPowerFormula", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRangeMulQuotientBoundedLevel\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.LocalDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianMatrixDiagonalizable\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityReductionDiagonalProd\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedQuotientCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open PositivityTheory.PfSWUS.Loc GlobalTheory.CompanionTheory.SiegLoc

namespace GlobalTheory.CompanionTheory.GunrNu

theorem card_range_pow {R : Type} [CommRing R] {σ : R →+* R} {ϖ : R} {q : ℕ} {ε : ℤ}
    (hR : IsUnrQuad R σ ϖ q ε) (k : ℕ) (d : R) (hd : σ d = d) :
    ∃ e : ℕ, Nat.card (Set.range fun w : R ⧸ lev ϖ k => w * Ideal.Quotient.mk (lev ϖ k) d) =
      (q ^ 2) ^ e := by
  rcases Scaled.fixed_decomp hR k d hd with h0 | ⟨a₀, e, c, rfl, hc, hc1, rfl⟩
  · have hz : Ideal.Quotient.mk (lev ϖ k) d = 0 := Ideal.Quotient.eq_zero_iff_mem.2 h0
    have hr : (Set.range fun w : R ⧸ lev ϖ k => w * Ideal.Quotient.mk (lev ϖ k) d) = {0} := by
      ext z
      simp [hz]
    exact ⟨0, by rw [hr]; simp⟩
  · exact ⟨e, by
      rw [Scaled.card_range_mul hR.reg (hR.fixLocal c hc hc1) e a₀,
        _root_.GlobalTheory.CompanionTheory.UnrDens.card_quot_lev R σ ϖ q ε hR e, pow_mul]⟩

theorem nuPow : PositivityTheory.SiegelWeilFormula.Gunr.NuPow := by
  intro R _ σ ϖ q ε hR n k B hB
  obtain ⟨h, hh, rfl⟩ := hB
  have hq := hR.one_lt
  have hfin : Finite (R ⧸ lev ϖ k) := Nat.finite_of_card_ne_zero (by
    rw [_root_.GlobalTheory.CompanionTheory.UnrDens.card_quot_lev R σ ϖ q ε hR k]
    exact pow_ne_zero _ (by omega))
  let _ : Fintype (R ⧸ lev ϖ k) := Fintype.ofFinite _
  obtain ⟨g, g', d, hgg, hgg', hd, hgd⟩ := _root_.GlobalTheory.CompanionTheory.HermDiag.herm_diag R σ ϖ q ε hR n h hh
  choose eI hcard using fun i => card_range_pow hR k (d i) (hd i)
  have hnu : nuAt ϖ (red ϖ k h) = (q ^ 2) ^ (∑ i, eI i) := by
    rw [_root_.GlobalTheory.CompanionTheory.SiegLoc.NuDiag.nuAt_eq_prod R σ ϖ hR.fix_ϖ hR.inv k n h g g' d hgg hgg' hgd,
      Finset.prod_congr rfl (fun i _ => hcard i), Finset.prod_pow_eq_pow_sum]
  rw [hnu, Nat.log_pow (Nat.one_lt_pow (by norm_num) hq)]

end GlobalTheory.CompanionTheory.GunrNu

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityPowerFormula =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TsumExhaustionUnramified =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TsumExhaustionUnramified", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Exhaustion

open Filter Topology

variable {α E : Type*} [NormedAddCommGroup E]

theorem exists_subset_of_exhaustion {C : ℕ → Finset α} (hC : Monotone C) (hex : ∀ a, ∃ k, a ∈ C k)
    (s : Finset α) : ∃ k, s ⊆ C k :=
  ((tendsto_atTop_finset_of_monotone hC hex).eventually (eventually_ge_atTop s)).exists

theorem summable_norm_of_exhaustion {f : α → E} {C : ℕ → Finset α} (hC : Monotone C)
    (hex : ∀ a, ∃ k, a ∈ C k) {K : ℝ} (hK : ∀ k, ∑ a ∈ C k, ‖f a‖ ≤ K) :
    Summable fun a => ‖f a‖ := by
  refine summable_of_sum_le (c := K) (fun a => norm_nonneg _) fun s => ?_
  obtain ⟨k, hk⟩ := exists_subset_of_exhaustion hC hex s
  exact (Finset.sum_le_sum_of_subset_of_nonneg hk fun _ _ _ => norm_nonneg _).trans (hK k)

theorem tsum_exhaust [CompleteSpace E] {f : α → E} {C : ℕ → Finset α} (hC : Monotone C)
    (hex : ∀ a, ∃ k, a ∈ C k) {K : ℝ} (hK : ∀ k, ∑ a ∈ C k, ‖f a‖ ≤ K) :
    Summable f ∧ Tendsto (fun k => ∑ a ∈ C k, f a) atTop (𝓝 (∑' a, f a)) := by
  have hs : Summable f := (summable_norm_of_exhaustion hC hex hK).of_norm
  exact ⟨hs, hs.hasSum.comp (tendsto_atTop_finset_of_monotone hC hex)⟩

theorem tsum_exhaust_prop : PositivityTheory.SiegelWeilFormula.Gunr.TsumExhaust := by
  intro α f C hC hex ⟨K, hK⟩
  exact ⟨summable_norm_of_exhaustion hC hex hK, (tsum_exhaust hC hex hK).2⟩

end GlobalTheory.CompanionTheory.Exhaustion
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TsumExhaustionUnramified =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianMatricesCard =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianMatricesCard", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResAlgSplitTwo\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardHermitianMatricesDvdSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.PfSWUS.Loc GlobalTheory.CompanionTheory.UnrDens

namespace GlobalTheory.CompanionTheory.UnrDens

theorem card_hermitian_resAlg (E : Type) [CommRing E] (τ : E →+* E) (q : ℕ) (ε : ℤ)
    (hE : ResAlg E τ q ε) (n : ℕ) :
    Nat.card {H : Matrix (Fin n) (Fin n) E // cT τ H = H} = q ^ (n ^ 2) := by
  have hq : q ≠ 0 := by have := hE.one_lt; omega
  haveI : Finite E := Nat.finite_of_card_ne_zero (by rw [hE.card]; exact pow_ne_zero 2 hq)
  obtain ⟨u, hu, -⟩ := hE.basis
  have key := GlobalTheory.GramCount.card_hermitian_dvd_sq τ hE.inv u hu 1 (map_one τ) n
  have hiff : ∀ H : Matrix (Fin n) (Fin n) E,
      cT τ H = H ↔ ((∀ a b, τ (H b a) = H a b) ∧ ∀ a b, (1 : E) ∣ H a b) := by
    intro H
    constructor
    · intro h
      refine ⟨fun a b => ?_, fun a b => one_dvd _⟩
      have := congrFun (congrFun h a) b
      simpa [cT] using this
    · rintro ⟨h, -⟩
      ext a b
      simpa [cT] using h a b
  have e1 : Nat.card {H : Matrix (Fin n) (Fin n) E // cT τ H = H}
      = Nat.card {H : Matrix (Fin n) (Fin n) E //
          (∀ a b, τ (H b a) = H a b) ∧ ∀ a b, (1 : E) ∣ H a b} :=
    Nat.card_congr (Equiv.subtypeEquivRight hiff)
  have e2 : Nat.card {x : E // (1 : E) ∣ x} = q ^ 2 := by
    rw [← hE.card]
    exact Nat.card_congr (Equiv.subtypeUnivEquiv fun x => one_dvd x)
  rw [e2] at key
  have hsq : (q ^ (n ^ 2)) ^ 2 = (q ^ 2) ^ (n * n) := by
    rw [← pow_mul, ← pow_mul]
    congr 1
    ring
  rw [e1]
  exact Nat.pow_left_injective (by norm_num) (key.trans hsq.symm)

end GlobalTheory.CompanionTheory.UnrDens
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianMatricesCard =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFibreGramDifferential =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFibreGramDifferential", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResAlgSplitTwo\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermitianMatricesCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.PfSWUS.Loc GlobalTheory.CompanionTheory.UnrDens

namespace GlobalTheory.CompanionTheory.UnrDens.GramDiff

variable {E : Type} [CommRing E] (τ : E →+* E)

theorem cT_mul {a b c : ℕ} (A : Matrix (Fin a) (Fin b) E) (B : Matrix (Fin b) (Fin c) E) :
    cT τ (A * B) = cT τ B * cT τ A := by
  simp only [cT, Matrix.map_mul, Matrix.transpose_mul]

theorem cT_add {a b : ℕ} (A B : Matrix (Fin a) (Fin b) E) :
    cT τ (A + B) = cT τ A + cT τ B := by
  ext i j
  simp [cT]

theorem cT_zero {a b : ℕ} : cT τ (0 : Matrix (Fin a) (Fin b) E) = 0 := by
  ext i j
  simp [cT]

theorem cT_neg {a b : ℕ} (A : Matrix (Fin a) (Fin b) E) : cT τ (-A) = -cT τ A := by
  ext i j
  simp [cT]

theorem cT_smul {a b : ℕ} (c : E) (A : Matrix (Fin a) (Fin b) E) :
    cT τ (c • A) = τ c • cT τ A := by
  ext i j
  simp [cT]

theorem cT_cT (hτ : ∀ a, τ (τ a) = a) {a b : ℕ} (A : Matrix (Fin a) (Fin b) E) :
    cT τ (cT τ A) = A := by
  ext i j
  simp [cT, hτ]

theorem cT_cross (hτ : ∀ a, τ (τ a) = a) {m n : ℕ} {S : Matrix (Fin m) (Fin m) E} (hS : cT τ S = S)
    (x y : Matrix (Fin m) (Fin n) E) : cT τ (cT τ x * S * y) = cT τ y * S * x := by
  rw [cT_mul, cT_mul, cT_cT τ hτ, hS, Matrix.mul_assoc]

def hermSub (n : ℕ) : AddSubgroup (Matrix (Fin n) (Fin n) E) where
  carrier := {H | cT τ H = H}
  add_mem' := by
    intro a b ha hb
    simp only [Set.mem_setOf_eq] at *
    rw [cT_add, ha, hb]
  zero_mem' := cT_zero τ
  neg_mem' := by
    intro a ha
    simp only [Set.mem_setOf_eq] at *
    rw [cT_neg, ha]

def diffMap (hτ : ∀ a, τ (τ a) = a) {m n : ℕ} (S : Matrix (Fin m) (Fin m) E) (hS : cT τ S = S)
    (x : Matrix (Fin m) (Fin n) E) : Matrix (Fin m) (Fin n) E →+ hermSub τ n :=
  AddMonoidHom.mk'
    (fun y => ⟨cT τ y * S * x + cT τ x * S * y, by
      change cT τ (cT τ y * S * x + cT τ x * S * y) = cT τ y * S * x + cT τ x * S * y
      rw [cT_add, cT_cross τ hτ hS, cT_cross τ hτ hS, add_comm]⟩)
    (by
      intro a b
      apply Subtype.ext
      change cT τ (a + b) * S * x + cT τ x * S * (a + b) =
        (cT τ a * S * x + cT τ x * S * a) + (cT τ b * S * x + cT τ x * S * b)
      rw [cT_add, Matrix.add_mul, Matrix.add_mul, Matrix.mul_add]
      abel)

theorem exists_trace_one {q : ℕ} {ε : ℤ} (h : ResAlg E τ q ε) : ∃ θ : E, θ + τ θ = 1 := by
  obtain ⟨u, hu, -⟩ := h.basis
  obtain ⟨v, hv⟩ := hu.exists_right_inv
  have h1 : (u - τ u) * τ v = -1 := by
    have := congrArg τ hv
    rw [map_mul, map_sub, h.inv, map_one] at this
    linear_combination -this
  have h2 : τ v = -v := by
    linear_combination (-(τ v)) * hv + v * h1
  refine ⟨u * v, ?_⟩
  rw [map_mul, h2]
  linear_combination hv

theorem diffMap_surjective {q : ℕ} {ε : ℤ} (h : ResAlg E τ q ε) {m n : ℕ}
    (S : Matrix (Fin m) (Fin m) E) (hS : cT τ S = S) (T : Matrix (Fin n) (Fin n) E)
    (x : Matrix (Fin m) (Fin n) E) (hT : IsUnit T.det) (hx : cT τ x * S * x = T) :
    Function.Surjective (diffMap τ h.inv S hS x) := by
  rintro ⟨H, hH⟩
  have hH' : cT τ H = H := hH
  obtain ⟨θ, hθ⟩ := exists_trace_one τ h
  have hW : cT τ x * S * (x * T⁻¹ * (θ • H)) = θ • H := by
    calc cT τ x * S * (x * T⁻¹ * (θ • H)) = (cT τ x * S * x) * T⁻¹ * (θ • H) := by
          simp only [Matrix.mul_assoc]
      _ = θ • H := by rw [hx, Matrix.mul_nonsing_inv T hT, Matrix.one_mul]
  refine ⟨x * T⁻¹ * (θ • H), ?_⟩
  apply Subtype.ext
  change cT τ (x * T⁻¹ * (θ • H)) * S * x + cT τ x * S * (x * T⁻¹ * (θ • H)) = H
  rw [← cT_cross τ h.inv hS x (x * T⁻¹ * (θ • H)), hW, cT_smul, hH', ← add_smul, add_comm, hθ, one_smul]

theorem card_fibre_mul {A B : Type} [AddCommGroup A] [AddCommGroup B] [Finite A] (f : A →+ B)
    (hf : Function.Surjective f) (b : B) : Nat.card {a // f a = b} * Nat.card B = Nat.card A := by
  obtain ⟨y, rfl⟩ := hf b
  have e : {a // f a = f y} ≃ f.ker :=
    { toFun := fun a => ⟨a.1 - y, by simp [AddMonoidHom.mem_ker, a.2]⟩
      invFun := fun k => ⟨k.1 + y, by
        have : f k.1 = 0 := k.2
        simp [this]⟩
      left_inv := fun a => by simp
      right_inv := fun k => by simp }
  have hi : f.ker.index = Nat.card B := by
    rw [AddSubgroup.index_ker, AddMonoidHom.range_eq_top.2 hf]
    exact Nat.card_congr AddSubgroup.topEquiv.toEquiv
  rw [Nat.card_congr e, ← hi]
  exact AddSubgroup.card_mul_index f.ker

theorem card_fibre_gram_differential : ∀ (E : Type) [CommRing E] (τ : E →+* E) (q : ℕ) (ε : ℤ), ResAlg E τ q ε → ∀ (m n : ℕ), n ≤ m → ∀ (S : Matrix (Fin m) (Fin m) E) (T : Matrix (Fin n) (Fin n) E) (x : Matrix (Fin m) (Fin n) E) (H : Matrix (Fin n) (Fin n) E), cT τ S = S → cT τ T = T → IsUnit T.det → cT τ x * S * x = T → cT τ H = H → Nat.card {y : Matrix (Fin m) (Fin n) E // cT τ y * S * x + cT τ x * S * y = H} = q ^ (2 * m * n - n ^ 2) := by
  intro E _ τ q ε h m n hnm S T x H hS _ hT hx hH
  have hq : 0 < q := lt_trans Nat.zero_lt_one h.one_lt
  have hfin : Finite E := Nat.finite_of_card_ne_zero (by rw [h.card]; positivity)
  have hM : Nat.card (Matrix (Fin m) (Fin n) E) = ((q ^ 2) ^ n) ^ m := by
    change Nat.card (Fin m → Fin n → E) = _
    rw [Nat.card_fun, Nat.card_fun, h.card]
    simp
  have hHerm : Nat.card (hermSub τ n) = q ^ (n ^ 2) := _root_.GlobalTheory.CompanionTheory.UnrDens.card_hermitian_resAlg E τ q ε h n
  have hfib := card_fibre_mul (diffMap τ h.inv S hS x)
    (diffMap_surjective τ h S hS T x hT hx) ⟨H, hH⟩
  have hc : Nat.card {y : Matrix (Fin m) (Fin n) E // cT τ y * S * x + cT τ x * S * y = H} =
      Nat.card {y // diffMap τ h.inv S hS x y = ⟨H, hH⟩} :=
    Nat.card_congr (Equiv.subtypeEquivRight fun y => by
      rw [Subtype.ext_iff]
      rfl)
  have hle : n ^ 2 ≤ 2 * m * n := by nlinarith
  have hpow : ((q ^ 2) ^ n) ^ m = q ^ (n ^ 2) * q ^ (2 * m * n - n ^ 2) := by
    rw [← pow_add, Nat.add_sub_cancel' hle, ← pow_mul, ← pow_mul]
    congr 1
    ring
  rw [hc]
  rw [hHerm, hM, hpow, mul_comm] at hfib
  exact Nat.eq_of_mul_eq_mul_left (pow_pos hq _) hfib

end GlobalTheory.CompanionTheory.UnrDens.GramDiff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFibreGramDifferential =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnimodularHermitianRepsCountSucc =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnimodularHermitianRepsCountSucc", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResAlgSplitTwo\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFibreGramDifferential\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueAlgebraUnramified\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedQuotientCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.PfSWUS.Loc

namespace GlobalTheory.CompanionTheory.UnrDens.HenselStep

section Generic

theorem card_of_fibres {α β : Type*} [Finite α] [Finite β] (f : α → β) (c : ℕ)
    (h : ∀ b, Nat.card {a // f a = b} = c) : Nat.card α = Nat.card β * c := by
  classical
  haveI := Fintype.ofFinite β
  rw [Nat.card_congr (Equiv.sigmaFiberEquiv f).symm, Nat.card_sigma]
  simp [h, Nat.card_eq_fintype_card, mul_comm]

theorem card_eq_of_surj {W A B : Type*} (a : W → A) (b : W → B) (ha : Function.Surjective a)
    (hb : Function.Surjective b) (hab : ∀ w w', a w = a w' ↔ b w = b w') :
    Nat.card A = Nat.card B := by
  refine Nat.card_congr (Equiv.ofBijective (fun y => b (Function.surjInv ha y)) ⟨?_, ?_⟩)
  · intro y y' h
    have := (hab _ _).2 h
    simpa [Function.surjInv_eq] using this
  · intro z
    obtain ⟨w, rfl⟩ := hb z
    exact ⟨a w, (hab _ _).1 (Function.surjInv_eq ha _)⟩

end Generic

variable {R : Type} [CommRing R] {a b c : ℕ}

theorem cT_add (σ : R →+* R) (x y : Matrix (Fin a) (Fin b) R) :
    cT σ (x + y) = cT σ x + cT σ y := by
  ext i j; simp [cT]

theorem cT_smul (σ : R →+* R) (r : R) (x : Matrix (Fin a) (Fin b) R) :
    cT σ (r • x) = σ r • cT σ x := by
  ext i j; simp [cT]

theorem cT_mul (σ : R →+* R) (x : Matrix (Fin a) (Fin b) R) (y : Matrix (Fin b) (Fin c) R) :
    cT σ (x * y) = cT σ y * cT σ x := by
  simp [cT, Matrix.map_mul, Matrix.transpose_mul]

theorem cT_cT (σ : R →+* R) (h : ∀ r, σ (σ r) = r) (x : Matrix (Fin a) (Fin b) R) :
    cT σ (cT σ x) = x := by
  ext i j; simp [cT, h]

theorem red_add (ϖ : R) (k : ℕ) (x y : Matrix (Fin a) (Fin b) R) :
    red ϖ k (x + y) = red ϖ k x + red ϖ k y := by
  ext i j; simp [red]

theorem red_mul (ϖ : R) (k : ℕ) (x : Matrix (Fin a) (Fin b) R) (y : Matrix (Fin b) (Fin c) R) :
    red ϖ k (x * y) = red ϖ k x * red ϖ k y := by
  simp [red, Matrix.map_mul]

theorem red_cT (σ : R →+* R) (ϖ : R) (h : σ ϖ = ϖ) (k : ℕ) (x : Matrix (Fin a) (Fin b) R) :
    red ϖ k (cT σ x) = cT (barσ σ ϖ h k) (red ϖ k x) := by
  ext i j; simp [red, cT]

theorem red_surjective (ϖ : R) (k : ℕ) :
    Function.Surjective (red ϖ k : Matrix (Fin a) (Fin b) R → _) := fun t =>
  ⟨fun i j => Function.surjInv Ideal.Quotient.mk_surjective (t i j), by
    ext i j; exact Function.surjInv_eq _ _⟩

theorem red_eq_iff (ϖ : R) (k : ℕ) (M N : Matrix (Fin a) (Fin b) R) :
    red ϖ k M = red ϖ k N ↔ ∃ D : Matrix (Fin a) (Fin b) R, M = N + ϖ ^ k • D := by
  constructor
  · intro h
    have h1 : ∀ i j, ∃ d, M i j = N i j + ϖ ^ k * d := by
      intro i j
      have h2 : Ideal.Quotient.mk (lev ϖ k) (M i j) = Ideal.Quotient.mk (lev ϖ k) (N i j) :=
        congrFun (congrFun h i) j
      obtain ⟨d, hd⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq.1 h2)
      exact ⟨d, by linear_combination -hd⟩
    choose D hD using h1
    exact ⟨Matrix.of D, by ext i j; simp [hD i j]⟩
  · rintro ⟨D, rfl⟩
    ext i j
    refine Ideal.Quotient.eq.2 (Ideal.mem_span_singleton'.2 ⟨D i j, ?_⟩)
    simp [mul_comm]

theorem smul_cancel {ϖ : R} (hr : IsSMulRegular R ϖ) (k : ℕ) {A B : Matrix (Fin a) (Fin b) R}
    (h : ϖ ^ k • A = ϖ ^ k • B) : A = B := by
  ext i j
  have h1 : ϖ ^ k • A i j = ϖ ^ k • B i j := by
    simpa using congrFun (congrFun h i) j
  exact (hr.pow k) h1

theorem red_smul_iff {ϖ : R} (hr : IsSMulRegular R ϖ) (k : ℕ) (A B : Matrix (Fin a) (Fin b) R) :
    red ϖ (k + 1) (ϖ ^ k • A) = red ϖ (k + 1) (ϖ ^ k • B) ↔ red ϖ 1 A = red ϖ 1 B := by
  rw [red_eq_iff, red_eq_iff]
  constructor
  · rintro ⟨D, hD⟩
    refine ⟨D, smul_cancel hr k ?_⟩
    rw [hD, smul_add, smul_smul, pow_one, pow_succ]
  · rintro ⟨D, rfl⟩
    refine ⟨D, ?_⟩
    rw [smul_add, smul_smul, pow_one, pow_succ]

theorem gram_expand (σ : R →+* R) {r : R} (hc : σ r = r) (S : Matrix (Fin a) (Fin a) R)
    (x y : Matrix (Fin a) (Fin b) R) :
    cT σ (x + r • y) * S * (x + r • y) =
      cT σ x * S * x + r • (cT σ y * S * x + cT σ x * S * y) + (r * r) • (cT σ y * S * y) := by
  rw [cT_add, cT_smul, hc]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul, smul_add, smul_smul]
  abel

theorem lift_iff {σ : R →+* R} {ϖ : R} (hf : σ ϖ = ϖ) (hr : IsSMulRegular R ϖ) {k : ℕ} (hk : 1 ≤ k)
    (S : Matrix (Fin a) (Fin a) R) (T H : Matrix (Fin b) (Fin b) R)
    (x y : Matrix (Fin a) (Fin b) R) (hH : cT σ x * S * x + ϖ ^ k • H = T) :
    red ϖ (k + 1) (cT σ (x + ϖ ^ k • y) * S * (x + ϖ ^ k • y)) = red ϖ (k + 1) T ↔
      red ϖ 1 (cT σ y * S * x + cT σ x * S * y) = red ϖ 1 H := by
  have hc : σ (ϖ ^ k) = ϖ ^ k := by rw [map_pow, hf]
  have hq : red ϖ (k + 1) ((ϖ ^ k * ϖ ^ k) • (cT σ y * S * y)) = 0 := by
    have : red ϖ (k + 1) ((ϖ ^ k * ϖ ^ k) • (cT σ y * S * y)) = red ϖ (k + 1) 0 := by
      refine (red_eq_iff _ _ _ _).2 ⟨ϖ ^ (k - 1) • (cT σ y * S * y), ?_⟩
      rw [smul_smul, zero_add, ← pow_add, ← pow_add]
      congr 2
      omega
    rw [this]
    ext i j; simp [red]
  rw [gram_expand σ hc, red_add, hq, add_zero, ← hH, red_add, red_add]
  rw [add_right_inj, red_smul_iff hr]

section Main

variable {σ : R →+* R} {ϖ : R}

abbrev solSet (σ : R →+* R) (ϖ : R) (S : Matrix (Fin a) (Fin a) R) (T : Matrix (Fin b) (Fin b) R)
    (k : ℕ) : Set (Matrix (Fin a) (Fin b) R) :=
  {x | red ϖ k (cT σ x * S * x) = red ϖ k T}

theorem lev_succ_le_lev (ϖ : R) (k : ℕ) : lev ϖ (k + 1) ≤ lev ϖ k :=
  Ideal.span_singleton_le_span_singleton.2 (pow_dvd_pow ϖ (Nat.le_succ k))

def proj (ϖ : R) (k : ℕ) (t : Matrix (Fin a) (Fin b) (R ⧸ lev ϖ (k + 1))) :
    Matrix (Fin a) (Fin b) (R ⧸ lev ϖ k) :=
  t.map (Ideal.Quotient.factor (lev_succ_le_lev ϖ k))

theorem proj_red (ϖ : R) (k : ℕ) (x : Matrix (Fin a) (Fin b) R) :
    proj ϖ k (red ϖ (k + 1) x) = red ϖ k x := by
  ext i j; simp [proj, red]

theorem solSet_succ {S : Matrix (Fin a) (Fin a) R} {T : Matrix (Fin b) (Fin b) R} {k : ℕ}
    {x : Matrix (Fin a) (Fin b) R} (hx : x ∈ solSet σ ϖ S T (k + 1)) : x ∈ solSet σ ϖ S T k := by
  have h1 := congrArg (proj ϖ k) hx
  simp only [proj_red] at h1
  exact h1

def down (σ : R →+* R) (ϖ : R) (S : Matrix (Fin a) (Fin a) R) (T : Matrix (Fin b) (Fin b) R) (k : ℕ)
    (t : red ϖ (k + 1) '' solSet σ ϖ S T (k + 1)) : red ϖ k '' solSet σ ϖ S T k :=
  ⟨proj ϖ k t.1, by
    obtain ⟨x, hx, e⟩ := t.2
    exact ⟨x, solSet_succ hx, by rw [← e, proj_red]⟩⟩

theorem red_diff (hf : σ ϖ = ϖ) (S : Matrix (Fin a) (Fin a) R) (x y : Matrix (Fin a) (Fin b) R) :
    red ϖ 1 (cT σ y * S * x + cT σ x * S * y) =
      cT (barσ σ ϖ hf 1) (red ϖ 1 y) * red ϖ 1 S * red ϖ 1 x +
        cT (barσ σ ϖ hf 1) (red ϖ 1 x) * red ϖ 1 S * red ϖ 1 y := by
  simp only [red_add, red_mul, red_cT σ ϖ hf]

theorem fibre_card {q : ℕ} {ε : ℤ} (h : IsUnrQuad R σ ϖ q ε) {m n : ℕ} (hnm : n ≤ m)
    {S : Matrix (Fin m) (Fin m) R} {T : Matrix (Fin n) (Fin n) R} (hS : IsUnimod σ S)
    (hT : IsUnimod σ T) {k : ℕ} (hk : 1 ≤ k) {x : Matrix (Fin m) (Fin n) R}
    (hx : x ∈ solSet σ ϖ S T k) (s : red ϖ k '' solSet σ ϖ S T k) (hs : s.1 = red ϖ k x) :
    Nat.card {t // down σ ϖ S T k t = s} = q ^ (2 * m * n - n ^ 2) := by
  obtain ⟨D, hD⟩ := (red_eq_iff _ _ _ _).1 hx
  have hH : cT σ x * S * x + ϖ ^ k • (-D) = T := by
    rw [hD, smul_neg]; abel
  have hG : cT σ (cT σ x * S * x) = cT σ x * S * x := by
    rw [cT_mul, cT_mul, cT_cT σ h.inv, hS.1, Matrix.mul_assoc]
  have hherm : cT σ (-D) = -D := by
    apply smul_cancel h.reg k
    have h1 := congrArg (cT σ) hH
    rw [cT_add, cT_smul, map_pow, h.fix_ϖ, hG, hT.1] at h1
    exact add_left_cancel (h1.trans hH.symm)
  have hf := h.fix_ϖ
  have hgram : cT (barσ σ ϖ hf 1) (red ϖ 1 x) * red ϖ 1 S * red ϖ 1 x = red ϖ 1 T := by
    rw [← red_cT σ ϖ hf, ← red_mul, ← red_mul]
    refine (red_eq_iff _ _ _ _).2 ⟨ϖ ^ (k - 1) • D, ?_⟩
    rw [hD, smul_smul, ← pow_add]
    congr 3
    omega
  have hdet : IsUnit (red ϖ 1 T).det := by
    have h1 := hT.2.map (Ideal.Quotient.mk (lev ϖ 1))
    rw [RingHom.map_det] at h1
    exact h1
  have hcard := GlobalTheory.CompanionTheory.UnrDens.GramDiff.card_fibre_gram_differential _ (barσ σ ϖ hf 1) q ε (GlobalTheory.CompanionTheory.UnrDens.resAlg_of_isUnrQuad R σ ϖ q ε h) m n hnm
    (red ϖ 1 S) (red ϖ 1 T) (red ϖ 1 x) (red ϖ 1 (-D))
    (by rw [← red_cT σ ϖ hf, hS.1]) (by rw [← red_cT σ ϖ hf, hT.1]) hdet hgram
    (by rw [← red_cT σ ϖ hf, hherm])
  rw [← hcard]
  symm
  let W := {y : Matrix (Fin m) (Fin n) R //
    red ϖ 1 (cT σ y * S * x + cT σ x * S * y) = red ϖ 1 (-D)}
  refine card_eq_of_surj (W := W)
    (fun w => ⟨red ϖ 1 w.1, by rw [← red_diff hf]; exact w.2⟩)
    (fun w => ⟨⟨red ϖ (k + 1) (x + ϖ ^ k • w.1), x + ϖ ^ k • w.1,
        (lift_iff hf h.reg hk S T (-D) x w.1 hH).2 w.2, rfl⟩, Subtype.ext (by
          show proj ϖ k (red ϖ (k + 1) (x + ϖ ^ k • w.1)) = s.1
          rw [proj_red, hs]
          exact (red_eq_iff _ _ _ _).2 ⟨w.1, rfl⟩)⟩) ?_ ?_ ?_
  · rintro ⟨ybar, hy⟩
    obtain ⟨y, rfl⟩ := red_surjective ϖ 1 ybar
    exact ⟨⟨y, by rw [red_diff hf]; exact hy⟩, rfl⟩
  · rintro ⟨⟨t, x', hx', rfl⟩, ht⟩
    have h1 : red ϖ k x' = red ϖ k x := by
      have h2 : proj ϖ k (red ϖ (k + 1) x') = s.1 := congrArg Subtype.val ht
      rwa [proj_red, hs] at h2
    obtain ⟨y, rfl⟩ := (red_eq_iff _ _ _ _).1 h1
    exact ⟨⟨y, (lift_iff hf h.reg hk S T (-D) x y hH).1 hx'⟩, rfl⟩
  · intro w w'
    rw [Subtype.ext_iff, Subtype.ext_iff, Subtype.ext_iff]
    show red ϖ 1 w.1 = red ϖ 1 w'.1 ↔
      red ϖ (k + 1) (x + ϖ ^ k • w.1) = red ϖ (k + 1) (x + ϖ ^ k • w'.1)
    rw [red_add, red_add, add_right_inj, red_smul_iff h.reg]

end Main

end GlobalTheory.CompanionTheory.UnrDens.HenselStep


open GlobalTheory.CompanionTheory.UnrDens GlobalTheory.CompanionTheory.UnrDens.HenselStep in
theorem GlobalTheory.CompanionTheory.UnrDens.solCount_succ : ∀ (R : Type) [CommRing R] (σ : R →+* R) (ϖ : R) (q : ℕ) (ε : ℤ),
    IsUnrQuad R σ ϖ q ε → ∀ (m n : ℕ), n ≤ m → ∀ (S : Matrix (Fin m) (Fin m) R)
    (T : Matrix (Fin n) (Fin n) R), IsUnimod σ S → IsUnimod σ T → ∀ k : ℕ, 1 ≤ k →
    solCount σ ϖ S T (k + 1) = solCount σ ϖ S T k * q ^ (2 * m * n - n ^ 2) := by
  intro R _ σ ϖ q ε h m n hnm S T hS hT k hk
  have hfin : ∀ j, Finite (R ⧸ lev ϖ j) := fun j =>
    Nat.finite_of_card_ne_zero (by
      rw [GlobalTheory.CompanionTheory.UnrDens.card_quot_lev R σ ϖ q ε h j]
      exact pow_ne_zero _ (by have := h.one_lt; omega))
  haveI := hfin k
  haveI := hfin (k + 1)
  haveI : Finite (Matrix (Fin m) (Fin n) (R ⧸ lev ϖ k)) := by unfold Matrix; infer_instance
  haveI : Finite (Matrix (Fin m) (Fin n) (R ⧸ lev ϖ (k + 1))) := by unfold Matrix; infer_instance
  unfold solCount
  refine card_of_fibres (down σ ϖ S T k) _ ?_
  rintro ⟨s, x, hx, rfl⟩
  exact fibre_card h hnm hS hT hk hx _ rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnimodularHermitianRepsCountSucc =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedLocalFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedLocalFormula", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.LocalDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardHermitianMatricesModPow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardUnimodularHermitianRepsLevelOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnimodularHermitianRepsCountSucc\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedQuotientCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.PfSWUS.Loc GlobalTheory.CompanionTheory.UnrDens Filter Topology

namespace GlobalTheory.CompanionTheory.UnrDens

theorem unrFormula : PositivityTheory.PfSWUS.Loc.UnrFormula := by
  intro R _ σ ϖ q ε hR m n hnm S T hS hT
  have hq : (0 : ℝ) < q := by exact_mod_cast lt_trans zero_lt_one hR.one_lt
  have hsq : n ^ 2 ≤ 2 * m * n := by nlinarith
  obtain ⟨a, ha⟩ : ∃ a, 2 * m * n - n ^ 2 = a := ⟨_, rfl⟩
  have ha' : a + n ^ 2 = 2 * m * n := by omega
  have hsol : ∀ j : ℕ, (solCount σ ϖ S T (j + 1) : ℝ) =
      (q : ℝ) ^ a * (∏ i : Fin n, (1 - ((ε : ℝ) / q) ^ (m - (i : ℕ)))) * (q : ℝ) ^ (j * a) := by
    intro j
    induction j with
    | zero =>
      rw [_root_.GlobalTheory.CompanionTheory.UnrDens.solCount_one R σ ϖ q ε hR m n hnm S T hS hT, ha]
      simp
    | succ j ih =>
      rw [_root_.GlobalTheory.CompanionTheory.UnrDens.solCount_succ R σ ϖ q ε hR m n hnm S T hS hT (j + 1) (by omega), ha]
      push_cast
      rw [ih, add_mul, one_mul, pow_add]
      ring
  have hdens : ∀ j : ℕ, densAt σ ϖ S T (j + 1) = ∏ i : Fin n, (1 - ((ε : ℝ) / q) ^ (m - (i : ℕ))) := by
    intro j
    unfold densAt
    have hM : Nat.card (Matrix (Fin m) (Fin n) (R ⧸ lev ϖ (j + 1))) = q ^ (2 * (j + 1) * (m * n)) := by
      show Nat.card (Fin m → Fin n → R ⧸ lev ϖ (j + 1)) = _
      rw [Nat.card_fun, Nat.card_fun, Nat.card_fin, Nat.card_fin, _root_.GlobalTheory.CompanionTheory.UnrDens.card_quot_lev R σ ϖ q ε hR (j + 1), ← pow_mul,
        ← pow_mul]
      ring_nf
    rw [hsol j, _root_.GlobalTheory.CompanionTheory.UnrDens.card_hermMod R σ ϖ q ε hR n (j + 1), hM]
    have he : a + j * a + (j + 1) * n ^ 2 = 2 * (j + 1) * (m * n) := by
      calc a + j * a + (j + 1) * n ^ 2 = (j + 1) * (a + n ^ 2) := by ring
        _ = (j + 1) * (2 * m * n) := by rw [ha']
        _ = 2 * (j + 1) * (m * n) := by ring
    have hpos : (0 : ℝ) < (q : ℝ) ^ (2 * (j + 1) * (m * n)) := pow_pos hq _
    push_cast
    rw [div_eq_iff hpos.ne', ← he, pow_add, pow_add]
    ring
  refine tendsto_const_nhds.congr' ?_
  filter_upwards [Filter.eventually_ge_atTop 1] with k hk
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
  exact (hdens j).symm

end GlobalTheory.CompanionTheory.UnrDens
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedLocalFormula =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCAsm =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCAsm", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.SiegelWeilFormula.Gunr

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain MeasureTheory PositivityTheory.PfSWUS.Loc PositivityTheory.SiegelWeilFormula.Gen Filter Topology
open scoped TensorProduct

set_option linter.unusedSectionVars false

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {M n d : ℕ} {J : Matrix (Fin M) (Fin M) E} {T : Matrix (Fin n) (Fin n) E}
  {bs : Module.Basis (Fin d) F E} {v : HeightOneSpectrum (𝓞 F)} {ψv : Fv F v → ℂ} {S : Subring (Fv F v ⊗[F] E)}
  {σS : S →+* S} {ϖ : Fv F v} {ε : ℤ}

namespace GoodLoc

variable (hG : GoodLoc σ J T bs v ψv S σS ϖ ε)
include hG

theorem coe_pS : ((hG.pS : S) : Fv F v ⊗[F] E) = algebraMap (Fv F v) (Fv F v ⊗[F] E) ϖ := rfl

theorem cT_smul_pS (k : ℕ) (X : Matrix (Fin n) (Fin n) S) (hX : PositivityTheory.PfSWUS.Loc.cT σS X = X) :
    PositivityTheory.PfSWUS.Loc.cT σS (hG.pS • X) = hG.pS • X := by
  ext a b
  have h1 := congrFun (congrFun hX a) b
  simp only [PositivityTheory.PfSWUS.Loc.cT, Matrix.transpose_apply, Matrix.map_apply, Matrix.smul_apply, smul_eq_mul,
    map_mul] at h1 ⊢
  have h2 : σS hG.pS = hG.pS := hG.quad.fix_ϖ
  rw [h2, h1]

theorem hermLev_succ (k : ℕ) (X : Matrix (Fin n) (Fin n) S) (hX : PositivityTheory.PfSWUS.Loc.cT σS X = X) :
    hG.hermLev (k + 1) (hG.pS • X) (hG.cT_smul_pS k X hX) = hG.hermLev k X hX := by
  apply Subtype.ext
  funext a b
  show (ϖ ^ (k + 1))⁻¹ • (((hG.pS • X) a b : S) : Fv F v ⊗[F] E) = (ϖ ^ k)⁻¹ • ((X a b : S) : Fv F v ⊗[F] E)
  rw [Matrix.smul_apply, smul_eq_mul, Subring.coe_mul, coe_pS, ← Algebra.smul_def, smul_smul, pow_succ, mul_inv,
    mul_assoc, inv_mul_cancel₀ hG.unif_ne, mul_one]

def liftH {k : ℕ} (B : hermMod σS hG.pS n k) : Matrix (Fin n) (Fin n) S := Classical.choose B.2

theorem liftH_herm {k : ℕ} (B : hermMod σS hG.pS n k) : PositivityTheory.PfSWUS.Loc.cT σS (hG.liftH B) = hG.liftH B :=
  (Classical.choose_spec B.2).1

theorem red_liftH {k : ℕ} (B : hermMod σS hG.pS n k) : red hG.pS k (hG.liftH B) = B.1 :=
  (Classical.choose_spec B.2).2

def iota (k : ℕ) (B : hermMod σS hG.pS n k) : HermR (Fv F v) σ n ⧸ H0 S σ n :=
  QuotientAddGroup.mk (hG.hermLev k (hG.liftH B) (hG.liftH_herm B))

theorem iota_eq (hCL : ClassLev) (k : ℕ) (X : Matrix (Fin n) (Fin n) S) (hX : PositivityTheory.PfSWUS.Loc.cT σS X = X)
    (B : hermMod σS hG.pS n k) (hB : red hG.pS k X = B.1) :
    hG.iota k B = QuotientAddGroup.mk (hG.hermLev k X hX) := by
  unfold iota
  rw [QuotientAddGroup.eq, neg_add_eq_sub]
  exact (hCL _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hG k X (hG.liftH B) hX (hG.liftH_herm B)).2 (by rw [hB, hG.red_liftH])

theorem iota_inj (hCL : ClassLev) (k : ℕ) : Function.Injective (hG.iota k) := by
  intro B B' h
  unfold iota at h
  rw [QuotientAddGroup.eq, neg_add_eq_sub] at h
  have := (hCL _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hG k (hG.liftH B') (hG.liftH B) (hG.liftH_herm B') (hG.liftH_herm B)).1 h
  rw [hG.red_liftH, hG.red_liftH] at this
  exact Subtype.ext this.symm

theorem iota_succ (hCL : ClassLev) (k : ℕ) (B : hermMod σS hG.pS n k) :
    ∃ B' : hermMod σS hG.pS n (k + 1), hG.iota (k + 1) B' = hG.iota k B := by
  refine ⟨⟨red hG.pS (k + 1) (hG.pS • hG.liftH B), hG.pS • hG.liftH B, hG.cT_smul_pS k _ (hG.liftH_herm B), rfl⟩, ?_⟩
  rw [hG.iota_eq hCL (k + 1) (hG.pS • hG.liftH B) (hG.cT_smul_pS k _ (hG.liftH_herm B)) _ rfl, hG.hermLev_succ]
  rfl

theorem iota_surj (hCL : ClassLev) (hEx : Exhaust) (c : HermR (Fv F v) σ n ⧸ H0 S σ n) :
    ∃ k B, hG.iota k B = c := by
  induction c using QuotientAddGroup.induction_on with
  | H b =>
    obtain ⟨k, X, hX, rfl⟩ := hEx _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hG b
    exact ⟨k, ⟨red hG.pS k X, X, hX, rfl⟩, hG.iota_eq hCL k X hX _ rfl⟩

theorem f_lev (hNP : NuPow) (hJ : JtLev) (hNL : NuLev) (hPL : PsiLev) (hT : ∀ a b, σ (T b a) = T a b)
    (μv : Measure (Fin n → Fin M → Fv F v ⊗[F] E)) (hμ : SdW F E σ M J (Fv F v) ψv n μv)
    (lam : Measure (Fin n → Fv F v ⊗[F] E)) (L : AddSubgroup (Fin n → Fv F v ⊗[F] E)) (hlam : lam.IsAddHaarMeasure)
    (hL : (L : Set (Fin n → Fv F v ⊗[F] E)) = latO bs v) (z : ℂ) (k : ℕ) (B : hermMod σS hG.pS n k) :
    whI (Fv F v) σ J ψv μv ((latV bs v).indicator 1) (nu2 lam L L) (hermOf (Fv F v) σ T hT).1 z
      (hG.hermLev k (hG.liftH B) (hG.liftH_herm B)) =
    ((ε : ℂ) ^ M * (Ideal.absNorm v.asIdeal : ℂ) ^ (-(2 * z + n))) ^
        Nat.log (Ideal.absNorm v.asIdeal ^ 2) (nuAt hG.pS B.1) *
      hG.psiLev (c := -1) (neg_mem (one_mem _)) k (Matrix.trace (red hG.pS k (matS S T hG.T_int) * B.1)) := by
  have e1 := hNL _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hG lam L hlam hL k (hG.liftH B) (hG.liftH_herm B)
  have e2 := hJ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hG μv hμ k (hG.liftH B) (hG.liftH_herm B)
  have e3 := hPL _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ hG hT k (hG.liftH B) (hG.liftH_herm B)
  rw [hG.red_liftH] at e1 e2 e3
  have e4 : nuAt hG.pS B.1 = (Ideal.absNorm v.asIdeal ^ 2) ^ Nat.log (Ideal.absNorm v.asIdeal ^ 2) (nuAt hG.pS B.1) :=
    hNP S σS hG.pS _ ε hG.quad n k B.1 B.2
  have hq0 : (Ideal.absNorm v.asIdeal : ℂ) ≠ 0 := by
    have := hG.quad.one_lt
    exact_mod_cast (by omega : Ideal.absNorm v.asIdeal ≠ 0)
  simp only [whI]
  rw [e1, e2, e3]
  congr 1
  set D := Nat.log (Ideal.absNorm v.asIdeal ^ 2) (nuAt hG.pS B.1)
  set q := Ideal.absNorm v.asIdeal
  rw [e4]
  have h5 : ((((q ^ 2) ^ D : ℕ) : ℝ) : ℂ) = ((q : ℂ) ^ (2 * D : ℕ)) := by push_cast; ring
  rw [h5, ← Complex.natCast_cpow_natCast_mul]
  have h6 : ((2 * D : ℕ) : ℂ) * -(z - ((M : ℂ) - n) / 2) = (D : ℂ) * (2 * -(z - ((M : ℂ) - n) / 2)) := by push_cast; ring
  rw [h6, Complex.cpow_nat_mul, ← mul_pow]
  congr 1
  rw [← Complex.cpow_intCast, mul_left_comm, ← Complex.cpow_add _ _ hq0]
  congr 2
  push_cast
  ring

end GoodLoc

end PositivityTheory.SiegelWeilFormula.Gunr

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCAsm =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCMain =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCMain", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCAsm\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.LocalDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedQuotientCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.SiegelWeilFormula.Gunr

open HeckeCharacterZeroLocus.SiegelWeilU NumberField IsDedekindDomain MeasureTheory PositivityTheory.PfSWUS.Loc PositivityTheory.SiegelWeilFormula.Gen Filter Topology
open scoped TensorProduct

theorem locC_of_steps (hP : UnrPoly) (hCI : CosetInt) (hTE : TsumExhaust) (hNP : NuPow) (hNB : NuBound)
    (hLC : LevChars) (hVH : HermitianLatticeVolumeOne) (hJ : JtLev) (hNL : NuLev) (hPL : PsiLev) (hEx : Exhaust) (hCL : ClassLev)
    (hInv : HermitianLatticeInvariance) (hCM : CosetMeas) : LocC := by
  classical
  intro F E _ _ _ _ _ σ M n d J T hT bs v ψv S σS ϖ ε hG μv νv lam L hμ hν hlam hL z hz
  set q : ℕ := Ideal.absNorm v.asIdeal with hq
  have hR : IsUnrQuad S σS hG.pS q ε := hG.quad
  have hq1 : 1 < q := hR.one_lt
  have hq0 : (q : ℂ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  have hfin : ∀ k, Finite (S ⧸ lev hG.pS k) := fun k => Nat.finite_of_card_ne_zero (by
    rw [_root_.GlobalTheory.CompanionTheory.UnrDens.card_quot_lev S σS hG.pS q ε hR k]; exact pow_ne_zero _ (by omega))
  letI : ∀ k, Fintype (S ⧸ lev hG.pS k) := fun k => Fintype.ofFinite _
  letI : ∀ k, Fintype (hermMod σS hG.pS n k) := fun k => Fintype.ofFinite _
  have hε1 : ‖(ε : ℂ)‖ = 1 := by
    rcases hR.eps with ⟨rfl, -⟩ | ⟨rfl, -⟩ <;> simp

  set f := whI (Fv F v) σ J ψv μv ((latV bs v).indicator 1) (nu2 lam L L) (hermOf (Fv F v) σ T hT).1 z with hf
  have hinv : ∀ b h, h ∈ H0 S σ n → f (b + h) = f b := fun b h hh =>
    hInv F E σ M n d J T bs v ψv S σS ϖ ε hG hT μv lam L hL z b h hh
  let fbar : HermR (Fv F v) σ n ⧸ H0 S σ n → ℂ := fun c => f (Quotient.out c)
  have hfbar : ∀ g, f g = fbar (QuotientAddGroup.mk g) := by
    intro g
    have h1 : (QuotientAddGroup.mk (Quotient.out (QuotientAddGroup.mk g : HermR (Fv F v) σ n ⧸ H0 S σ n)) :
        HermR (Fv F v) σ n ⧸ H0 S σ n) = QuotientAddGroup.mk g := Quotient.out_eq' _
    rw [QuotientAddGroup.eq] at h1
    have := hinv (Quotient.out (QuotientAddGroup.mk g : HermR (Fv F v) σ n ⧸ H0 S σ n)) _ h1
    rw [add_neg_cancel_left] at this
    exact this

  set t : ℂ := (ε : ℂ) ^ M * (q : ℂ) ^ (-(2 * z + n)) with ht
  have hval : ∀ k (B : hermMod σS hG.pS n k), fbar (hG.iota k B) =
      t ^ Nat.log (q ^ 2) (nuAt hG.pS B.1) *
        hG.psiLev (c := -1) (neg_mem (one_mem _)) k (Matrix.trace (red hG.pS k (matS S T hG.T_int) * B.1)) := by
    intro k B
    rw [GoodLoc.iota, ← hfbar]
    exact hG.f_lev hNP hJ hNL hPL hT μv hμ lam L hlam hL z k B

  let C : ℕ → Finset (HermR (Fv F v) σ n ⧸ H0 S σ n) := fun k => Finset.univ.image (hG.iota k)
  have hCmono : Monotone C := by
    refine monotone_nat_of_le_succ fun k => ?_
    intro c hc
    obtain ⟨B, -, rfl⟩ := Finset.mem_image.1 hc
    obtain ⟨B', hB'⟩ := hG.iota_succ hCL k B
    exact Finset.mem_image.2 ⟨B', Finset.mem_univ _, hB'⟩
  have hCcov : ∀ c, ∃ k, c ∈ C k := by
    intro c
    obtain ⟨k, B, rfl⟩ := hG.iota_surj hCL hEx c
    exact ⟨k, Finset.mem_image.2 ⟨B, Finset.mem_univ _, rfl⟩⟩
  have hsumC : ∀ k, ∑ c ∈ C k, fbar c = ∑ B : hermMod σS hG.pS n k, fbar (hG.iota k B) := fun k =>
    Finset.sum_image fun B _ B' _ h => hG.iota_inj hCL k h
  have hnormC : ∀ k, ∑ c ∈ C k, ‖fbar c‖ = ∑ B : hermMod σS hG.pS n k, ‖t‖ ^ Nat.log (q ^ 2) (nuAt hG.pS B.1) := by
    intro k
    rw [Finset.sum_image fun B _ B' _ h => hG.iota_inj hCL k h]
    refine Finset.sum_congr rfl fun B _ => ?_
    rw [hval, norm_mul, norm_pow, AddChar.norm_apply, mul_one]

  have htn : ‖t‖ = (q : ℝ) ^ (-(2 * z.re + n)) := by
    rw [ht, norm_mul, norm_pow, hε1, one_pow, one_mul, Complex.norm_natCast_cpow_of_pos (by omega)]
    simp
  have hlt : (q : ℝ) ^ (n ^ 2) * ‖t‖ < 1 := by
    rw [htn, ← Real.rpow_natCast, ← Real.rpow_add (by exact_mod_cast (by omega : 0 < q))]
    apply Real.rpow_lt_one_of_one_lt_of_neg (by exact_mod_cast hq1)
    push_cast
    nlinarith [sq_nonneg (n : ℝ), (Nat.cast_nonneg n : (0 : ℝ) ≤ n)]
  have hbound : ∀ k, ∑ c ∈ C k, ‖fbar c‖ ≤ 1 / (1 - (q : ℝ) ^ (n ^ 2) * ‖t‖) := by
    intro k
    rw [hnormC]
    have := hNB S σS hG.pS q ε hR n k ‖t‖ (norm_nonneg _) hlt
    rwa [tsum_fintype] at this

  have hlc : IsLevelChars σS hG.pS (hG.psiLev (c := -1) (neg_mem (one_mem _))) :=
    hLC F E σ M n d J T bs v ψv S σS ϖ ε hG (-1) (neg_mem (one_mem _)) (by simp)
  have hpoly : ∀ k, 1 ≤ k → ∑ c ∈ C k, fbar c = ∏ i : Fin n, (1 - t * ((ε : ℂ) * q) ^ (i : ℕ)) := by
    intro k hk
    rw [hsumC, ← hP S σS hG.pS q ε hR _ hlc n (matS S T hG.T_int) hG.T_unimod k hk t, tsum_fintype]
    refine Finset.sum_congr rfl fun B _ => ?_
    rw [hval, mul_comm]

  obtain ⟨hsum, htend⟩ := hTE _ fbar C hCmono hCcov ⟨_, hbound⟩
  have htsum : ∑' c, fbar c = ∏ i : Fin n, (1 - t * ((ε : ℂ) * q) ^ (i : ℕ)) := by
    refine tendsto_nhds_unique htend ?_
    refine tendsto_const_nhds.congr' ?_
    filter_upwards [eventually_ge_atTop 1] with k hk
    exact (hpoly k hk).symm

  haveI := hν.1
  haveI := hCM F E σ M n d J T bs v ψv S σS ϖ ε hG |>.1
  have hcount : Countable (HermR (Fv F v) σ n ⧸ H0 S σ n) := by
    have : (Set.univ : Set (HermR (Fv F v) σ n ⧸ H0 S σ n)) ⊆ ⋃ k, Set.range (hG.iota k) := fun c _ => by
      obtain ⟨k, B, rfl⟩ := hG.iota_surj hCL hEx c
      exact Set.mem_iUnion.2 ⟨k, B, rfl⟩
    exact Set.countable_univ_iff.1 ((Set.countable_iUnion fun k => (Set.finite_range _).countable).mono this)
  obtain ⟨hI1, hI2⟩ := hCI _ νv (H0 S σ n) (hCM F E σ M n d J T bs v ψv S σS ϖ ε hG).2
    (hVH F E σ M n d J T bs v ψv S σS ϖ ε hG νv hν) hcount f fbar hfbar
  refine ⟨hI1.2 hsum, ?_⟩
  rw [hI2 hsum, htsum]
  refine Finset.prod_congr rfl fun i _ => ?_
  congr 1
  rw [ht, mul_pow, mul_mul_mul_comm, ← pow_add, ← Complex.cpow_natCast (q : ℂ) (i : ℕ), ← Complex.cpow_add _ _ hq0]
  congr 2
  ring

end PositivityTheory.SiegelWeilFormula.Gunr

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCMain =====

-- ===== clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CFinal =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CFinal", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.TraceDual\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CProps\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterLevelFormula\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClassLevelFormula\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetIntegralUnramifiedStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetMeasureFormula\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianInvariance\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegralHermitianVolumeOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelCharactersUnramified\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelExhaustion\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelJointReduction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityBoundUnramified\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityLevelFormula\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MultiplicityPowerFormula\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TsumExhaustionUnramified\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.WhitGenOf\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedFormulaPolynomialGen\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitarySchrodingerModel.LocalDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnramifiedLocalFormula\npublic import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.LocCMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.SiegelWeilFormula.Gunr

theorem unrPoly : PositivityTheory.SiegelWeilFormula.Gen.UnrPoly := _root_.GlobalTheory.CompanionTheory.SiegLoc.UnimodSeries.unrPoly _root_.GlobalTheory.CompanionTheory.UnrDens.unrFormula

theorem locC : LocC :=
  locC_of_steps unrPoly GlobalTheory.T.coset_integral_unramified _root_.GlobalTheory.CompanionTheory.Exhaustion.tsum_exhaust_prop _root_.GlobalTheory.CompanionTheory.GunrNu.nuPow _root_.GlobalTheory.CompanionTheory.GunrNuBound.nuBound _root_.GlobalTheory.CompanionTheory.GunrLevChars.levChars _root_.GlobalTheory.CompanionTheory.GoodHerm.volume_integral_hermitian_one _root_.GlobalTheory.CompanionTheory.GunrJt.jtLev _root_.GlobalTheory.CompanionTheory.SiegLoc.NuIndex.nuLev _root_.GlobalTheory.CompanionTheory.GunrLev.psiLev_holds _root_.GlobalTheory.CompanionTheory.GunrExhaust.exhaust _root_.GlobalTheory.CompanionTheory.GunrClassLev.classLev _root_.GlobalTheory.CompanionTheory.GunrInv.integrand_invariant_integral_hermitian _root_.GlobalTheory.CompanionTheory.GunrCoset.cosetMeas

end PositivityTheory.SiegelWeilFormula.Gunr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.UnramifiedWhittaker.CFinal =====

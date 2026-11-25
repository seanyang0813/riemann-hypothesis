module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SkewGramHalfModule
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittDecompProjAnisotropicAnisotropicEmbedding
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StandardAdelicCharacterLocalComponentNeOne
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ContinuousResTSymm
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi
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
import Mathlib.RingTheory.Radical.NatInt
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
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso
import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentities, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentitiesStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfec, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfecStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatrices, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatricesStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentities =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentities", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SkewGramHalfModule\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ContinuousResTSymm\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CentralGram

theorem mul_trace_neg {R : Type} [CommRing R] {n : ℕ} (a : R) (c H : Matrix (Fin n) (Fin n) R) :
    a * ((-c) * H).trace = -((a • H) * c).trace := by
  rw [Matrix.neg_mul, trace_neg, trace_mul_comm, Matrix.smul_mul, trace_smul, smul_eq_mul, mul_neg]

theorem trace_cycle_smul {R : Type} [CommRing R] {m n : ℕ} (a : R) (c : Matrix (Fin n) (Fin n) R)
    (y : Matrix (Fin m) (Fin n) R) (z : Matrix (Fin n) (Fin m) R) (G : Matrix (Fin m) (Fin m) R) :
    (y * (a • (c * (z * G)))).trace = ((a • (z * (G * y))) * c).trace := by
  rw [Matrix.mul_smul, Matrix.smul_mul, trace_smul, trace_smul, ← Matrix.mul_assoc y, trace_mul_comm]
  simp only [Matrix.mul_assoc]

theorem move_sub {R : Type} [CommRing R] {m n k : ℕ} {M : Matrix (Fin m) (Fin m) R} {X Y : Matrix (Fin m) (Fin n) R}
    {c : Matrix (Fin n) (Fin n) R} (h : M * Y = Y + X * (-c)) (a : R) (z : Matrix (Fin n) (Fin k) R) :
    M * (Y * ((-a) • z)) - Y * ((-a) • z) = X * (a • (c * z)) := by
  rw [← Matrix.mul_assoc, h, Matrix.add_mul, add_sub_cancel_left, Matrix.mul_assoc, neg_smul, Matrix.neg_mul,
    Matrix.mul_neg c, neg_neg, Matrix.mul_smul c]

variable {D : D7}

theorem gramSkew_map (T : HSp D) {ρ : ℕ} (x : Mx D T.rank ρ) :
    (GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D) = incA D D.host.xi0 • (adj x * (gA T * x)) := by
  have h : adj (adj x * (gA T * x)) = adj x * (gA T * x) := gram_swap T rfl |>.symm
  have h2 : cA D (-incA D D.host.xi0) = incA D D.host.xi0 := by
    rw [map_neg, GlobalTheory.DualPairCheck.cA_incA, GlobalTheory.DualPairCheck.star_purely_imaginary_eq_neg, map_neg, neg_neg]
  funext i j
  have h3 := congrFun (congrFun h i) j
  change cA D ((-incA D D.host.xi0) * (adj x * (gA T * x)) j i) = incA D D.host.xi0 * (adj x * (gA T * x)) i j
  rw [map_mul, h2, ← h3]
  rfl

theorem starAdj_extX_mul {S S₀ : HSp D} (T : HSp D) {ρ : ℕ} (d : HypDec S S₀ ρ) (x : Mx D T.rank ρ) :
    GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.starAdj S T (d.extX T x) * x = d.jY * (GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D) := by
  rw [gramSkew_map, GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.starAdj, HypDec.extX_apply, d.pX_eq]
  simp only [adj_mul, adj_adj, adj_gA, Matrix.mul_assoc, giA_gA_cancel, Matrix.smul_mul, Matrix.mul_smul]

theorem qS_eq {S S₀ : HSp D} (T : HSp D) {ρ : ℕ} (d : HypDec S S₀ ρ) (c : skewA D ρ) (x : Mx D T.rank ρ) :
    d.qS T c x = -(algebraMap D.host.F (AF D.host.F) (1 / 2) *
      Algebra.trace (AF D.host.F) (AE D) ((GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D) * c.1).trace) := by
  have hc : adj c.1 = -c.1 := c.2
  have h : incA D D.host.xi0 * pairS T x (x * c.1) =
      -((GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D) * c.1).trace := by
    rw [gramSkew_map, pairS, adj_mul, hc, Matrix.mul_assoc]
    exact mul_trace_neg _ _ _
  refine (d.symplOH_extX_extY T x _).trans ?_
  refine (congrArg (fun z => algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) z) h).trans ?_
  rw [LinearMap.map_neg, mul_neg]

theorem qT_eq (S : HSp D) {T T₀ : HSp D} {ρ : ℕ} (d : HypDec T T₀ ρ) (c : skewA D ρ) (y : Mx D S.rank ρ) :
    d.qT S c y = -(algebraMap D.host.F (AF D.host.F) (1 / 2) *
      Algebra.trace (AF D.host.F) (AE D) ((incA D D.host.xi0⁻¹ • (adj y * (gA S * y))) * c.1).trace) := by
  have h1 : mt T (d.nC c)⁻¹ * d.jY = d.jY + d.jX * (-c.1) := by
    rw [d.nC_inv]; exact d.nC_jY (-c)
  have h2 : incA D (-D.host.xi0⁻¹) = -incA D D.host.xi0⁻¹ := RingHom.map_neg _ _
  have h : mt T (d.nC c)⁻¹ * d.incAdj S y - d.incAdj S y =
      d.incX S (incA D D.host.xi0⁻¹ • (c.1 * (adj y * gA S))) := by
    rw [HypDec.incAdj_apply, HypDec.incY_apply, HypDec.incX_apply, h2]
    exact move_sub h1 _ _
  rw [HypDec.qT, h, symplOH_skew, symplOH, HypDec.symplO_incX_incAdj, trace_cycle_smul]

theorem central_gram : ∀ D : D7, (∀ (S S₀ T : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ), (∀ x : Mx D T.rank ρ, GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.starAdj S T (d.extX T x) * x = d.jY * (GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D)) ∧ ∀ (c : skewA D ρ) (x : Mx D T.rank ρ), d.qS T c x = -(algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) ((GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D) * c.1).trace)) ∧ ∀ (S T T₀ : HSp D) (ρ : ℕ) (d : HypDec T T₀ ρ) (c : skewA D ρ) (y : Mx D S.rank ρ), d.qT S c y = -(algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) ((incA D D.host.xi0⁻¹ • (adj y * (gA S * y))) * c.1).trace) :=
  fun _ => ⟨fun _ _ T _ d => ⟨starAdj_extX_mul T d, qS_eq T d⟩, fun S _ _ _ d => qT_eq S d⟩

end GlobalTheory.CentralGram

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentities =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentitiesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentitiesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SkewGramHalfModule\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentities\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Unf

theorem _root_.GlobalTheory.T.mixed_model_central_terms_gram_identities : ∀ D : D7, (∀ (S S₀ T : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ), (∀ x : Mx D T.rank ρ, GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.starAdj S T (d.extX T x) ⬝ x = d.jY ⬝ (GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D)) ∧ ∀ (c : skewA D ρ) (x : Mx D T.rank ρ), d.qS T c x = -(algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) ((GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D) ⬝ c.1).trace)) ∧ ∀ (S T T₀ : HSp D) (ρ : ℕ) (d : HypDec T T₀ ρ) (c : skewA D ρ) (y : Mx D S.rank ρ), d.qT S c y = -(algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) ((incA D D.host.xi0⁻¹ • (adj y ⬝ (gA S ⬝ y))) ⬝ c.1).trace) := by
  first | exact @GlobalTheory.CentralGram.central_gram
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentitiesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfec =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfec", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittDecompProjAnisotropicAnisotropicEmbedding\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StandardAdelicCharacterLocalComponentNeOne\nimport Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SkewPairing

theorem trace_one_tmul {F E R : Type} [Field F] [Field E] [Algebra F E] [FiniteDimensional F E]
    [CommRing R] [Algebra F R] (x : E) :
    Algebra.trace R (R ⊗[F] E) ((1 : R) ⊗ₜ[F] x) = algebraMap F R (Algebra.trace F E x) := by
  rw [Algebra.trace_apply, Algebra.trace_apply, ← Algebra.baseChange_lmul, LinearMap.trace_baseChange]

variable {D : D7}

theorem cA_smul (c : AF D.host.F) (a : AE D) : cA D (c • a) = c • cA D a := by
  induction a using TensorProduct.inductionOn with
  | tmul x y => rfl
  | add x y hx hy => rw [smul_add, map_add (f := _), map_add (f := _), hx, hy, smul_add]

theorem trace_star (x : D.host.E) :
    Algebra.trace D.host.F D.host.E (star x) = Algebra.trace D.host.F D.host.E x :=
  Algebra.trace_eq_of_algEquiv (AlgEquiv.ofBijective D.sp.cm.sig D.sp.cm.sig.bijective) x

theorem eq_zero_of_char {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) {q : D.host.F}
    (h : ∀ t : AF D.host.F, ψ (t * algebraMap D.host.F (AF D.host.F) q) = 1) : q = 0 := by
  by_contra hq
  obtain ⟨I, hI, hP⟩ := Ring.not_isField_iff_exists_prime.1 (RingOfIntegers.not_isField D.host.F)
  obtain ⟨y, hy⟩ := GlobalTheory.StdCharLocal.psiV_ne_one D ψ hψ ⟨I, hP, hI⟩
  have h1 := h (pairA D.host.F 0 (singleV D.host.F ⟨I, hP, hI⟩ y) * algebraMap D.host.F (AF D.host.F) q⁻¹)
  rw [mul_assoc, ← map_mul, inv_mul_cancel₀ hq, map_one, mul_one] at h1
  exact hy h1

theorem skew_perfect : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (ρ : ℕ) (M : Matrix (Fin ρ) (Fin ρ) D.host.E), Mᴴ = -M → (∀ c : skewA D ρ, ψ (algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) ((rat M : Mx D ρ ρ) * c.1).trace) = 1) → M = 0 := by
  intro D ψ hψ ρ M hM h
  have key : ∀ A : Matrix (Fin ρ) (Fin ρ) D.host.E, Algebra.trace D.host.F D.host.E (M * A).trace = 0 := by
    intro A
    refine eq_zero_of_char hψ fun t => ?_
    have hN : adj (rat (A - Aᴴ) : Mx D ρ ρ) = -rat (A - Aᴴ) := by
      rw [← rat_conjTranspose, ← rat_neg, conjTranspose_sub, conjTranspose_conjTranspose, neg_sub]
    have hc : t • (rat (A - Aᴴ) : Mx D ρ ρ) ∈ skewA D ρ := by
      rw [mem_skewA, ← smul_neg, ← hN]
      funext i j
      exact cA_smul t (rat (A - Aᴴ) j i)
    have h1 := h ⟨_, hc⟩
    have e1 : (M * (A - Aᴴ)).trace = (M * A).trace + star (M * A).trace := by
      rw [← trace_conjTranspose, conjTranspose_mul, hM, Matrix.mul_neg, trace_neg, trace_mul_comm Aᴴ, Matrix.mul_sub,
        trace_sub, sub_eq_add_neg]
    have e2 : ((rat M : Mx D ρ ρ) * (t • (rat (A - Aᴴ) : Mx D ρ ρ))).trace = t • incA D (M * (A - Aᴴ)).trace := by
      have hmul : (rat (M * (A - Aᴴ)) : Mx D ρ ρ) = rat M * rat (A - Aᴴ) :=
        Matrix.map_mul
      rw [Matrix.mul_smul, trace_smul, ← hmul, AddMonoidHom.map_trace (incA D)]
      rfl
    have e3 : algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D)
        ((rat M : Mx D ρ ρ) * (t • (rat (A - Aᴴ) : Mx D ρ ρ))).trace =
        t * algebraMap D.host.F (AF D.host.F) (Algebra.trace D.host.F D.host.E (M * A).trace) := by
      rw [e2, map_smul, GlobalTheory.BesselChar.trace_incA, e1, map_add (f := _), trace_star, smul_eq_mul, mul_left_comm, ← map_mul]
      congr 2
      ring
    rw [← e3]
    exact h1
  funext j i
  refine (traceForm_nondegenerate D.host.F D.host.E).1 (M j i) fun s => ?_
  have := key (Matrix.single i j s)
  rwa [trace_mul_single] at this

end GlobalTheory.SkewPairing
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfec =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfecStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfecStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittDecompProjAnisotropicAnisotropicEmbedding\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Unf

theorem _root_.GlobalTheory.T.skewHermitian_tracePairing_standardCharacter_perfect : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (ρ : ℕ) (M : Matrix (Fin ρ) (Fin ρ) D.host.E), Mᴴ = -M → (∀ c : skewA D ρ, ψ (algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) ((rat M : Mx D ρ ρ) ⬝ c.1).trace) = 1) → M = 0 := by
  first | exact @GlobalTheory.SkewPairing.skew_perfect
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfecStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatrices =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatrices", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SkewGramHalfModule\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsGramIdentitiesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SkewHermitianTracePairingStandardCharacterPerfecStatement\nimport Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Unf

noncomputable section

namespace GlobalTheory.CentralGram

variable {D : D7}

def qG {ρ : ℕ} (A c : Mx D ρ ρ) : AF D.host.F :=
  algebraMap D.host.F (AF D.host.F) (1 / 2) * Algebra.trace (AF D.host.F) (AE D) (A ⬝ c).trace

theorem qG_add_right {ρ : ℕ} (A c c' : Mx D ρ ρ) : qG A (c + c') = qG A c + qG A c' := by
  simp only [qG, Matrix.trace_add, map_add (f := _), mul_add]

theorem qG_sub_left {ρ : ℕ} (A A' c : Mx D ρ ρ) : qG (A - A') c = qG A c - qG A' c := by
  simp only [qG, Matrix.sub_mul, Matrix.trace_sub, map_sub, mul_sub]

theorem trace_rat {ρ : ℕ} (M : Matrix (Fin ρ) (Fin ρ) D.host.E) : (rat M : Mx D ρ ρ).trace = incA D M.trace := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp only [Matrix.trace, Matrix.diag, rat, Matrix.map_apply, map_sum]

theorem qG_rat {ρ : ℕ} (M C : Matrix (Fin ρ) (Fin ρ) D.host.E) :
    qG (rat M) (rat C) = algebraMap D.host.F (AF D.host.F) (1 / 2 * Algebra.trace D.host.F D.host.E (M * C).trace) := by
  rw [qG, ← rat_mul, trace_rat, _root_.GlobalTheory.BesselChar.trace_incA, map_mul]

theorem map_cA_rat {m n : ℕ} (N : Matrix (Fin m) (Fin n) D.host.E) : (rat N).map (cA D) = rat (N.map star) := by
  funext i j; exact GlobalTheory.DualPairCheck.cA_incA _

def gramE (T : HSp D) {ρ : ℕ} (X : Matrix (Fin T.rank) (Fin ρ) D.host.E) : Matrix (Fin ρ) (Fin ρ) D.host.E :=
  (-D.host.xi0) • (Xᴴ * (T.gram * X))ᵀ

theorem gramSkew_rat (T : HSp D) {ρ : ℕ} (X : Matrix (Fin T.rank) (Fin ρ) D.host.E) :
    GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T (rat X) = rat (gramE T X) := by
  rw [GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew, ← rat_conjTranspose, gA, ← rat_mul, ← rat_mul, ← map_neg (incA D), gramE, rat_smul]
  rfl

theorem gramE_skew (T : HSp D) {ρ : ℕ} (X : Matrix (Fin T.rank) (Fin ρ) D.host.E) :
    ((gramE T X).map star)ᴴ = -((gramE T X).map star) := by
  have hK : (Xᴴ * (T.gram * X))ᴴ = Xᴴ * (T.gram * X) := by
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, gram_conjTranspose, Matrix.conjTranspose_conjTranspose,
      Matrix.mul_assoc]
  funext i j
  have h := congrFun (congrFun hK i) j
  rw [Matrix.conjTranspose_apply] at h
  simp only [gramE, Matrix.conjTranspose_apply, Matrix.map_apply, Matrix.neg_apply, Matrix.smul_apply,
    Matrix.transpose_apply, smul_eq_mul, star_star, star_mul', star_neg, GlobalTheory.DualPairCheck.star_purely_imaginary_eq_neg, h]
  ring

theorem central : ∀ D : D7, GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.CentralTerms D := by
  intro D
  have h1 := GlobalTheory.T.mixed_model_central_terms_gram_identities D
  have hq : ∀ (S S₀ T : HSp D) (ρ : ℕ) (d : HypDec S S₀ ρ) (c : skewA D ρ) (x : Mx D T.rank ρ),
      d.qS T c x = -qG ((GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T x).map (cA D)) c.1 :=
    fun S S₀ T ρ d c x => (h1.1 S S₀ T ρ d).2 c x
  refine ⟨fun S S₀ T ρ d => ⟨(h1.1 S S₀ T ρ d).1, (h1.1 S S₀ T ρ d).2, fun ψ hψ => ⟨?_, ?_, ?_⟩⟩, h1.2⟩
  · intro x c c'
    rw [hq, hq, hq, AddSubgroup.coe_add, qG_add_right, neg_add, AddChar.map_add_eq_mul]
  · intro x hx c hc
    obtain ⟨X, rfl⟩ := mem_ratMx.1 hx
    obtain ⟨C, hC⟩ := mem_ratMx.1 hc
    rw [hq, gramSkew_rat, map_cA_rat, ← hC, qG_rat, ← map_neg]
    exact hψ.1.2.2.1 _
  · intro x hx x' hx'
    obtain ⟨X, rfl⟩ := mem_ratMx.1 hx
    obtain ⟨X', rfl⟩ := mem_ratMx.1 hx'
    constructor
    · intro h
      have hM := GlobalTheory.T.skewHermitian_tracePairing_standardCharacter_perfect D ψ hψ ρ ((gramE T X).map star - (gramE T X').map star)
        (by rw [Matrix.conjTranspose_sub, gramE_skew, gramE_skew, neg_sub, neg_sub_neg]) (fun c => by
          rw [rat_sub, ← map_cA_rat, ← map_cA_rat, ← gramSkew_rat, ← gramSkew_rat]
          change ψ (qG _ c.1) = 1
          have eA : qG ((GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T (rat X)).map (cA D)) c.1 = -d.qS T c (rat X) := by
            rw [hq S S₀ T ρ d, neg_neg]
          have eA' : qG ((GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.gramSkew T (rat X')).map (cA D)) c.1 = -d.qS T c (rat X') := by
            rw [hq S S₀ T ρ d, neg_neg]
          rw [qG_sub_left, eA, eA', sub_eq_add_neg, neg_neg, AddChar.map_add_eq_mul, ← h c, ← AddChar.map_add_eq_mul,
            neg_add_cancel, AddChar.map_zero_eq_one])
      rw [sub_eq_zero] at hM
      rw [gramSkew_rat, gramSkew_rat, Matrix.map_injective star_injective hM]
    · intro h c
      rw [hq, hq, h]

end GlobalTheory.CentralGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatrices =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatricesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatricesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SkewGramHalfModule\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatrices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Unf

theorem _root_.GlobalTheory.T.mixedModelCentralTerms_via_gramMatrices : ∀ D : D7, GlobalTheory.IndefiniteRowSideFullHecke.SkewGramHalfModule.CentralTerms D := by
  first | exact @GlobalTheory.CentralGram.central
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MixedModelCentralTermsViaGramMatricesStatement =====

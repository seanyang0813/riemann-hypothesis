module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpGLiAddSmul
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockMatrixMulVecBasis
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousConjFin
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockEmbeddingArchimedeanComponents
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CutPMulCutP
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace
public import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DifferentiableOneP
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DifferentiableAtChart
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnInvSetOfSmoothAlongProdExp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRealLineBlockEmbeddingExpInfinitePlace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RightTranslateCommutesCenterAction
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockEmbNormalises
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapelliConstantTermVanishing
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisConjugateZeroEntriesStatement
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlockStatement
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConjugatedMatrixUnitEntriesStatement
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.GelfandEigenvalueCasimirScalarStatement
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower
public import Formalism.RealPlaceAnalysis.StatementE
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.GlRelationsDerivativePreserved
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.OrthogonalSubspaceWittFrameExtensionStatement
public import Formalism.LocalToGlobal.NumberFieldFamilies.ThetaCI
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.ConjAtFixedIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GodementSectionSmoothBounded
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlacesStatement
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsInhabitant, Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DetALeviTorus, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchMatBlockEmbInfGL, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntries, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntriesStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasis, Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasisStatement, Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerEndMemLeftInv

-- ===== clump member: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsInhabitant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsInhabitant", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

namespace GlobalTheory.Published.LeviCentreModel

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}


variable (F) in
def big (δ : E) : Spc F E 3 := ⟨!![0, 0, 1; 0, δ, 0; -1, 0, 0], ⊥, fun _ => 1, fun _ => 1⟩


variable (F) in
def small (δ : E) : Spc F E 1 := ⟨!![δ], ⊥, fun _ => 1, fun _ => 1⟩



end GlobalTheory.Published.LeviCentreModel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsInhabitant =====

-- ===== clump member: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DetALeviTorus =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DetALeviTorus", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsInhabitant\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.Published.LeviCentreModel

namespace GlobalTheory.Published.LeviInducedModel

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem cont_piInf {w : InfinitePlace F} (τ : EmbOver E w) : Continuous (piInf τ : AE F E → ℂ) := by
  let L : AE F E →+ ℂ := (piInf τ).toAddMonoidHom
  refine IsModuleTopology.continuous_of_distribMulActionHomₑ (R := AF F) (σ := (piInf τ).toMonoidHom.comp (algebraMap (AF F) (AE F E)).toMonoidHom) ?_
    { L with map_smul' := fun r x => by simp [L, Algebra.smul_def] }
  exact (InfinitePlace.Completion.isometry_extensionEmbedding w).continuous.comp ((continuous_apply w).comp continuous_fst) |>.congr fun a => by
    change _ = infEmb τ (_ ⊗ₜ[F] (1 : E))
    rw [infEmb_tmul, map_one, mul_one]; rfl

end GlobalTheory.Published.LeviInducedModel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DetALeviTorus =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchMatBlockEmbInfGL =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchMatBlockEmbInfGL", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpGLiAddSmul\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockMatrixMulVecBasis\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousConjFin\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockEmbeddingArchimedeanComponents\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CutPMulCutP\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DetALeviTorus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet GlobalTheory.UAut GlobalTheory.LeviHC
open Formalism.UG (cT)
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.CompanionTheory.BlockEntry


attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra in
theorem exp_sandwich' {n d : ℕ} (U : Matrix (Fin n) (Fin d) ℂ) (V : Matrix (Fin d) (Fin n) ℂ) (h : V * U = 1)
    (A : Matrix (Fin d) (Fin d) ℂ) : NormedSpace.exp (U * A * V) = 1 + U * (NormedSpace.exp A - 1) * V := by
  haveI : CompleteSpace (Matrix (Fin n) (Fin n) ℂ) := FiniteDimensional.complete ℝ _
  haveI : CompleteSpace (Matrix (Fin d) (Fin d) ℂ) := FiniteDimensional.complete ℝ _
  have h' : ∀ W : Matrix (Fin d) (Fin n) ℂ, V * (U * W) = W := fun W => by rw [← Matrix.mul_assoc, h, Matrix.one_mul]
  let f : Matrix (Fin d) (Fin d) ℂ × ℂ →+* Matrix (Fin n) (Fin n) ℂ :=
    { toFun := fun p => U * p.1 * V + p.2 • (1 - U * V)
      map_one' := by simp
      map_mul' := fun p q => by
        simp only [Prod.fst_mul, Prod.snd_mul, Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul,
          Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_assoc, h', Matrix.one_mul, Matrix.mul_one, sub_self, smul_zero,
          add_zero]
        module
      map_zero' := by simp
      map_add' := fun p q => by
        simp only [Prod.fst_add, Prod.snd_add, Matrix.add_mul, Matrix.mul_add, add_smul]; abel }
  have hf : Continuous f :=
    ((continuous_const.matrix_mul continuous_fst).matrix_mul continuous_const).add (continuous_snd.smul continuous_const)
  have e := NormedSpace.map_exp f hf (A, 0)
  have e1 : f (A, 0) = U * A * V := by simp [f]
  rw [e1] at e
  refine e.symm.trans ?_
  change U * (NormedSpace.exp (A, (0 : ℂ))).1 * V + (NormedSpace.exp (A, (0 : ℂ))).2 • (1 - U * V) = _
  have f1 : (NormedSpace.exp (A, (0 : ℂ))).1 = NormedSpace.exp A := Prod.fst_exp (A, (0 : ℂ))
  have f2 : (NormedSpace.exp (A, (0 : ℂ))).2 = NormedSpace.exp 0 := Prod.snd_exp (A, (0 : ℂ))
  rw [f1, f2, NormedSpace.exp_zero, one_smul, Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one]
  abel

theorem exp_isoFrame' : ∀ (n d : ℕ) (J : Matrix (Fin n) (Fin n) ℂ) (X Y : Matrix (Fin n) (Fin d) ℂ),
    Xᴴ * J * X = 0 → Yᴴ * J * Y = 0 → Xᴴ * J * Y = 1 → Yᴴ * J * X = 1 →
    ∀ B : Matrix (Fin d) (Fin d) ℂ, NormedSpace.exp (X * B * (Yᴴ * J) - Y * Bᴴ * (Xᴴ * J)) =
      1 + X * (NormedSpace.exp B - 1) * (Yᴴ * J) + Y * ((NormedSpace.exp (-B))ᴴ - 1) * (Xᴴ * J) := by
  intro n d J X Y xx yy xy yx B
  have h1 : (Yᴴ * J) * X = 1 := yx
  have h2 : (Xᴴ * J) * Y = 1 := xy
  have yy' : ∀ {m : ℕ} (W : Matrix (Fin d) (Fin m) ℂ), Yᴴ * (J * (Y * W)) = 0 := fun W => by
    rw [← Matrix.mul_assoc J, ← Matrix.mul_assoc, ← Matrix.mul_assoc Yᴴ J Y, yy, Matrix.zero_mul]
  have xx' : ∀ {m : ℕ} (W : Matrix (Fin d) (Fin m) ℂ), Xᴴ * (J * (X * W)) = 0 := fun W => by
    rw [← Matrix.mul_assoc J, ← Matrix.mul_assoc, ← Matrix.mul_assoc Xᴴ J X, xx, Matrix.zero_mul]
  have c12 : X * B * (Yᴴ * J) * (Y * (-Bᴴ) * (Xᴴ * J)) = 0 := by
    simp only [Matrix.mul_assoc]; rw [yy']; simp
  have c21 : Y * (-Bᴴ) * (Xᴴ * J) * (X * B * (Yᴴ * J)) = 0 := by
    simp only [Matrix.mul_assoc]; rw [xx']; simp
  have hc : Commute (X * B * (Yᴴ * J)) (Y * (-Bᴴ) * (Xᴴ * J)) := by
    unfold Commute SemiconjBy; rw [c12, c21]
  have hs : X * B * (Yᴴ * J) - Y * Bᴴ * (Xᴴ * J) = X * B * (Yᴴ * J) + Y * (-Bᴴ) * (Xᴴ * J) := by
    rw [Matrix.mul_neg, Matrix.neg_mul, sub_eq_add_neg]
  rw [hs, Matrix.exp_add_of_commute _ _ hc, exp_sandwich' X (Yᴴ * J) h1, exp_sandwich' Y (Xᴴ * J) h2,
    ← Matrix.conjTranspose_neg, Matrix.exp_conjTranspose]
  have cross : X * (NormedSpace.exp B - 1) * (Yᴴ * J) * (Y * ((NormedSpace.exp (-B))ᴴ - 1) * (Xᴴ * J)) = 0 := by
    simp only [Matrix.mul_assoc]; rw [yy']; simp
  rw [Matrix.add_mul, Matrix.mul_add, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.one_mul, cross, add_zero]
  abel

theorem infEmb_compInf_sInf' : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (Φ : AF F ⊗[F] E ≃+* AdeleRing (𝓞 E) E) (j : Ainf F ⊗[F] E ≃+* InfiniteAdeleRing E), Continuous Φ → Continuous Φ.symm → (∀ x : E, j ((1 : Ainf F) ⊗ₜ[F] x) = algebraMap E (InfiniteAdeleRing E) x) → (∀ z, Φ z = (j (GlobalTheory.LFun.infTens F E z), GlobalTheory.LFun.finAdEquiv F E (GlobalTheory.LFun.finTens F E z))) → ∀ (w : InfinitePlace F) (τ : EmbOver E w) (z : GlobalTheory.CuspRep.Cinf E),
 infEmb τ (compInf F E w (Φ.symm (GlobalTheory.CuspRep.sInf E z))) = GlobalTheory.CuspRep.coord τ.1 z := by
  intro F E _ _ _ _ _ _ σ hcm Φ j hΦ hΦs hj hΦz w τ z
  have key : ∀ x, GlobalTheory.LFun.infTens F E (Φ.symm x) = j.symm x.1 := fun x => by
    have e := congrArg Prod.fst (hΦz (Φ.symm x))
    rw [RingEquiv.apply_symm_apply] at e
    rw [e, RingEquiv.symm_apply_apply]
  have hL : Continuous fun z : GlobalTheory.CuspRep.Cinf E =>
      infEmb τ (compInf F E w (Φ.symm (GlobalTheory.CuspRep.sInf E z))) :=
    (GlobalTheory.Published.LeviInducedModel.cont_piInf τ).comp
      (hΦs.comp ((GlobalTheory.CuspRep.continuous_infEq E).prodMk continuous_const))
  have hR : Continuous (GlobalTheory.CuspRep.coord τ.1) := by
    unfold GlobalTheory.CuspRep.coord
    split_ifs
    · exact continuous_apply _
    · exact Complex.continuous_conj.comp (continuous_apply _)
  have hsymm : Continuous (GlobalTheory.CuspRep.infEq E).symm :=
    continuous_pi fun v =>
      (InfinitePlace.Completion.isometryEquivComplexOfIsComplex (IsTotallyComplex.isComplex v)).continuous.comp
        (continuous_apply v)
  have hD : DenseRange fun x : E => (GlobalTheory.CuspRep.infEq E).symm (algebraMap E (InfiniteAdeleRing E) x) :=
    ((GlobalTheory.CuspRep.infEq E).symm.surjective.denseRange).comp
      (NumberField.InfiniteAdeleRing.denseRange_algebraMap E) hsymm
  have hE : ∀ x : E, infEmb τ (compInf F E w (Φ.symm (GlobalTheory.CuspRep.sInf E
      ((GlobalTheory.CuspRep.infEq E).symm (algebraMap E (InfiniteAdeleRing E) x))))) =
      GlobalTheory.CuspRep.coord τ.1 ((GlobalTheory.CuspRep.infEq E).symm (algebraMap E (InfiniteAdeleRing E) x)) := by
    intro x
    have h1 : GlobalTheory.CuspRep.sInf E ((GlobalTheory.CuspRep.infEq E).symm (algebraMap E (InfiniteAdeleRing E) x)) =
        ((algebraMap E (InfiniteAdeleRing E) x, 0) : InfiniteAdeleRing E × FiniteAdeleRing (𝓞 E) E) := by
      change ((GlobalTheory.CuspRep.infEq E ((GlobalTheory.CuspRep.infEq E).symm _), 0) : InfiniteAdeleRing E × FiniteAdeleRing (𝓞 E) E) = _
      rw [RingEquiv.apply_symm_apply]
    have h2 : j.symm (algebraMap E (InfiniteAdeleRing E) x) = (1 : Ainf F) ⊗ₜ[F] x := by
      rw [← hj x, RingEquiv.symm_apply_apply]
    have hci : ∀ y : AF F ⊗[F] E, compInf F E w y =
        (Algebra.TensorProduct.map (GlobalTheory.AutFunCompare.evW w) (AlgHom.id F E)).toRingHom (GlobalTheory.LFun.infTens F E y) := by
      intro y
      induction y using TensorProduct.induction_on with
      | zero => simp only [map_zero]
      | tmul a b => rfl
      | add a b ha hb => simp only [map_add (f := _), ha, hb]
    rw [h1, hci]
    erw [key]
    change infEmb τ ((Algebra.TensorProduct.map (GlobalTheory.AutFunCompare.evW w) (AlgHom.id F E)).toRingHom
      (j.symm (algebraMap E (InfiniteAdeleRing E) x))) = _
    rw [h2]
    have h3 := GlobalTheory.CuspRep.coord_algebraMap τ.1 x
    change GlobalTheory.CuspRep.coord τ.1 ((GlobalTheory.CuspRep.infEq E).symm (algebraMap E (InfiniteAdeleRing E) x)) = τ.1 x at h3
    rw [h3]
    change infEmb τ ((GlobalTheory.AutFunCompare.evW w 1) ⊗ₜ[F] x) = _
    rw [map_one, infEmb_tmul, map_one, one_mul]
  exact congrFun (hD.equalizer hL hR (funext hE)) z


open GlobalTheory.CuspRep GlobalTheory.BlockArch in
theorem archMat_blockEmb_infGL' : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ (r : ℕ) (X Y : Matrix (Fin n) (Fin r) E), IsWittFrame σ J X Y → ∀ (l d : ℕ) (h : l + d ≤ r) (ι : GlobalTheory.CuspRep.GA E d →* GAd σ J), GlobalTheory.BlockForms.IsBlockEmb σ J X Y h ι → ∀ (y : GL (Fin d) (GlobalTheory.CuspRep.Cinf E)), ι (GlobalTheory.CuspRep.infGL E d y) ∈ infPts σ J ∧ ∀ (w : InfinitePlace F) (τ : EmbOver E w),
 GlobalTheory.Orb.archMat σ J τ (projArch σ J w (ι (GlobalTheory.CuspRep.infGL E d y))) =
  1 + (GlobalTheory.BlockForms.blkCols h X).map τ.1 * (y.1.map (GlobalTheory.CuspRep.coord τ.1) - 1) * (((GlobalTheory.BlockForms.blkCols h Y).map τ.1)ᴴ * J.map τ.1) + (GlobalTheory.BlockForms.blkCols h Y).map τ.1 * (((y⁻¹).1.map (GlobalTheory.CuspRep.coord τ.1))ᴴ - 1) * (((GlobalTheory.BlockForms.blkCols h X).map τ.1)ᴴ * J.map τ.1) := by
  intro F E _ _ _ _ _ _ σ hcm n J _ r X Y _ l d h ι hB y
  have hmem := ((GlobalTheory.BlockForms.exists_archComp_of_isBlockEmb F E σ hcm n J r X Y l d h ι hB).choose_spec.2.2 y).1
  refine ⟨hmem, fun w τ => ?_⟩
  obtain ⟨Φ, j, hΦ, hΦs, hj1, hs, hform⟩ := hB
  let π : AF F ⊗[F] E →+* ℂ := (infEmb τ).comp (compInf F E w)
  have hco : ∀ z : Cinf E, π (Φ.symm (sInf E z)) = coord τ.1 z := fun z =>
    infEmb_compInf_sInf' F E σ hcm Φ j hΦ hΦs hj1 hs w τ z
  have hp : ∀ y : GL (Fin d) (Cinf E), ((infGL E d y).1.map Φ.symm).map π = y.1.map (coord τ.1) := fun y => by
    rw [Matrix.map_map]
    exact congrArg Units.val (map_cornerGL_of_hom (sInf E) (π.comp Φ.symm.toRingHom) (coord τ.1) hco y)
  have hA : ∀ {m p : Type} (M : Matrix m p E), (adMat F M).map π = M.map τ.1 := fun M => by
    have e1 : (adMat F M).map (compInf F E w) = M.map (inclR (F := F) w.Completion) := map_inclR_map (evInf F w) M
    change (adMat F M).map (⇑(infEmb τ) ∘ ⇑(compInf F E w)) = _
    rw [← Matrix.map_map, e1, Matrix.map_map]
    ext i k
    simp [inclR]
  have hC : ∀ {m p : Type} (M : Matrix m p (AF F ⊗[F] E)), (Formalism.UG.cT (sigR (AF F) σ) M).map π = (M.map π)ᴴ := fun M => by
    have e1 : (Formalism.UG.cT (sigR (AF F) σ) M).map (compInf F E w) =
        Formalism.UG.cT (sigR w.Completion σ) (M.map (compInf F E w)) := map_cT_sigR_map (evInf F w) σ M
    change (Formalism.UG.cT (sigR (AF F) σ) M).map (⇑(infEmb τ) ∘ ⇑(compInf F E w)) = _
    rw [← Matrix.map_map, e1]
    ext i k
    exact (GlobalTheory.AdelicU.infEmb_sigR hcm τ _).symm
  rw [GlobalTheory.Orb.archMat_apply, matHom_projArch]
  change (((matHom _ σ J (ι (infGL E d y))).1).map (compInf F E w)).map (infEmb τ) = _
  rw [Matrix.map_map]
  change ((matHom _ σ J (ι (infGL E d y))).1).map π = _
  rw [hform, ← map_inv, map_blockForm, hA, hA, hA, hA, hC, hp, hp, Matrix.map_mul, Matrix.map_mul,
    GlobalTheory.CentreFin.map_cT_emb hcm, GlobalTheory.CentreFin.map_cT_emb hcm]

section Coord
open GlobalTheory.CuspRep (Cinf coord atEmb expGLi infGL)

variable {E : Type} [Field E] [NumberField E]

theorem continuous_coordE (τ : E →+* ℂ) : Continuous (coord τ) := by
  unfold coord
  split_ifs
  · exact continuous_apply _
  · exact Complex.continuous_conj.comp (continuous_apply _)

theorem coord_smul (τ : E →+* ℂ) (t : ℝ) (x : Cinf E) : coord τ (t • x) = (t : ℂ) * coord τ x := by
  unfold coord
  split_ifs
  · change (t • x) _ = (t : ℂ) * x _
    rw [Pi.smul_apply, Complex.real_smul]
  · change starRingEnd ℂ ((t • x) _) = (t : ℂ) * starRingEnd ℂ (x _)
    rw [Pi.smul_apply, Complex.real_smul, map_mul, Complex.conj_ofReal]

theorem map_coord_exp {d : ℕ} (τ : E →+* ℂ) (M : Matrix (Fin d) (Fin d) (Cinf E)) :
    (NormedSpace.exp M).map (coord τ) = NormedSpace.exp (M.map (coord τ)) := by
  letI : NormedRing (Matrix (Fin d) (Fin d) (Cinf E)) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℝ (Matrix (Fin d) (Fin d) (Cinf E)) := Matrix.linftyOpNormedAlgebra
  haveI : CompleteSpace (Matrix (Fin d) (Fin d) (Cinf E)) := FiniteDimensional.complete ℝ _
  letI : NormedAlgebra ℚ (Matrix (Fin d) (Fin d) (Cinf E)) := NormedAlgebra.restrictScalars ℚ ℝ _
  letI : NormedRing (Matrix (Fin d) (Fin d) ℂ) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℝ (Matrix (Fin d) (Fin d) ℂ) := Matrix.linftyOpNormedAlgebra
  haveI : CompleteSpace (Matrix (Fin d) (Fin d) ℂ) := FiniteDimensional.complete ℝ _
  letI : NormedAlgebra ℚ (Matrix (Fin d) (Fin d) ℂ) := NormedAlgebra.restrictScalars ℚ ℝ _
  have hc : Continuous ((coord τ).mapMatrix : Matrix (Fin d) (Fin d) (Cinf E) → Matrix (Fin d) (Fin d) ℂ) :=
    continuous_id.matrix_map (continuous_coordE τ)
  exact NormedSpace.map_exp (coord τ).mapMatrix hc M

theorem map_coord_smul_atEmb {d : ℕ} (τ τ' : E →+* ℂ) (t : ℝ) (B : Matrix (Fin d) (Fin d) ℂ) :
    (t • B.map (atEmb τ)).map (coord τ') = (t : ℂ) • B.map (fun z => coord τ' (atEmb τ z)) := by
  ext a b
  simp [coord_smul]

end Coord

section Line
open GlobalTheory.CuspRep (Cinf coord atEmb expGLi infGL)

theorem isLineOf_blockEmb_exp' : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ (r : ℕ) (X Y : Matrix (Fin n) (Fin r) E), IsWittFrame σ J X Y → ∀ (l d : ℕ) (h : l + d ≤ r) (ι : GlobalTheory.CuspRep.GA E d →* GAd σ J), GlobalTheory.BlockForms.IsBlockEmb σ J X Y h ι → ∀ (w : InfinitePlace F) (τ : EmbOver E w) (B : Matrix (Fin d) (Fin d) ℂ),
 IsLineOf σ J τ ((GlobalTheory.BlockForms.blkCols h X).map τ.1 * B * (((GlobalTheory.BlockForms.blkCols h Y).map τ.1)ᴴ * J.map τ.1) - (GlobalTheory.BlockForms.blkCols h Y).map τ.1 * Bᴴ * (((GlobalTheory.BlockForms.blkCols h X).map τ.1)ᴴ * J.map τ.1))
  fun t : ℝ => ι (GlobalTheory.CuspRep.infGL E d (GlobalTheory.CuspRep.expGLi d (t • B.map (GlobalTheory.CuspRep.atEmb τ.1)))) := by
  intro F E _ _ _ _ _ _ σ hcm n J hJ r X Y hW l d h ι hι w τ B
  classical
  have hga := archMat_blockEmb_infGL' F E σ hcm n J hJ r X Y hW l d h ι hι
  have hoff : ∀ (w' : InfinitePlace F), w' ≠ w → ∀ (τ' : EmbOver E w') (z : ℂ), coord τ'.1 (atEmb τ.1 z) = 0 := by
    intro w' hw' τ' z
    have hmk : InfinitePlace.mk τ'.1 ≠ InfinitePlace.mk τ.1 := by
      intro e
      apply hw'
      have e' := congrArg (fun v : InfinitePlace E => v.comap (algebraMap F E)) e
      simp only [InfinitePlace.comap_mk, τ'.2, τ.2, InfinitePlace.mk_embedding] at e'
      exact e'
    unfold coord atEmb
    split_ifs <;> simp [Pi.single_eq_of_ne hmk]
  have hinv : ∀ t : ℝ, (expGLi d (t • B.map (atEmb τ.1)))⁻¹ = expGLi d ((-t) • B.map (atEmb τ.1)) := fun t => by
    have e := GlobalTheory.CuspRep.expGLi_add_smul d (B.map (atEmb τ.1)) (-t) t
    rw [neg_add_cancel, zero_smul, GlobalTheory.CuspRep.expGLi_zero] at e
    exact (eq_inv_of_mul_eq_one_left e.symm).symm
  have hexpmap : ∀ (τ' : E →+* ℂ) (s : ℝ), (expGLi d (s • B.map (atEmb τ.1))).1.map (coord τ') =
      NormedSpace.exp ((s : ℂ) • B.map (fun z => coord τ' (atEmb τ.1 z))) := fun τ' s => by
    rw [GlobalTheory.CuspRep.val_expGLi, map_coord_exp, map_coord_smul_atEmb]
  intro t
  obtain ⟨hmem, hmat⟩ := hga (expGLi d (t • B.map (atEmb τ.1)))
  refine ⟨projArch σ J w (ι (infGL E d (expGLi d (t • B.map (atEmb τ.1))))), ?_, ?_⟩
  · refine GAd_ext σ J (fun w'' => ?_) fun v => ?_
    · by_cases e : w'' = w
      · subst e; rw [projArch_embArch_self]
      · rw [projArch_embArch_ne σ J e]
        obtain ⟨τ'⟩ : Nonempty (EmbOver E w'') := inferInstance
        have inj : Function.Injective (GlobalTheory.Orb.archMat σ J τ') := fun a b e => by
          rw [GlobalTheory.Orb.archMat_eq_archEquiv J hcm, GlobalTheory.Orb.archMat_eq_archEquiv J hcm] at e
          exact (archEquiv J hcm τ').injective (Subtype.ext (Units.ext e))
        apply inj
        have hz : B.map (fun z => coord τ'.1 (atEmb τ.1 z)) = 0 := by
          ext a b; simp [hoff w'' e τ']
        rw [hmat w'' τ', map_one, hinv, hexpmap, hexpmap, hz]
        simp
    · rw [proj_embArch, ← projFinLoc_projFin, mem_infPts.1 hmem, map_one]
  · have hb : B.map (fun z => coord τ.1 (atEmb τ.1 z)) = B := by
      ext a b; simp [GlobalTheory.CuspRep.coord_atEmb]
    rw [hmat w τ, hinv, hexpmap, hexpmap, hb]
    have hJh : (J.map τ.1)ᴴ = J.map τ.1 := conjTranspose_map hcm hJ τ.1
    obtain ⟨hxx, hyy, hxy⟩ := GlobalTheory.CentreFin.frame_emb hcm hW τ.1
    let f : Fin d → Fin r := fun j => ⟨l + j.val, by omega⟩
    have hf : Function.Injective f := fun a b e => Fin.ext (by simpa [f] using congrArg Fin.val e)
    have key : ∀ A C : Matrix (Fin n) (Fin r) E,
        ((GlobalTheory.BlockForms.blkCols h A).map τ.1)ᴴ * J.map τ.1 * (GlobalTheory.BlockForms.blkCols h C).map τ.1 =
          ((A.map τ.1)ᴴ * J.map τ.1 * C.map τ.1).submatrix f f := by
      intro A C; ext i j; rfl
    have bxx := (key X X).trans (by rw [hxx])
    have byy := (key Y Y).trans (by rw [hyy])
    have bxy := (key X Y).trans (by rw [hxy, Matrix.submatrix_one f hf])
    have byx := GlobalTheory.CentreFin.dual_swap hJh bxy
    have ha := exp_isoFrame' n d (J.map τ.1) _ _ bxx byy bxy byx ((t : ℂ) • B)
    have hneg : ((-t : ℝ) : ℂ) • B = -((t : ℂ) • B) := by push_cast; rw [neg_smul]
    rw [hneg, ← ha]
    congr 1
    rw [conjTranspose_smul, Complex.star_def, Complex.conj_ofReal, ← Complex.coe_smul, smul_sub,
      Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_smul, Matrix.smul_mul]

end Line


open GlobalTheory.CuspRep in
theorem lie_eq_deriv_exp' : ∀ (E : Type) [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (d : ℕ) (f : GlobalTheory.CuspRep.Sm E d) (B : Matrix (Fin d) (Fin d) (GlobalTheory.CuspRep.Cinf E)) (x : GlobalTheory.CuspRep.GA E d),
 (GlobalTheory.CuspRep.lie E d (GlobalTheory.CuspRep.toL B) f).1 x = deriv (fun t : ℝ => f.1 (x * GlobalTheory.CuspRep.infGL E d (GlobalTheory.CuspRep.expGLi d (t • B)))) 0 := by
  intro E _ _ _ d f B x
  have hc : HasDerivAt (fun t : ℝ => toL (expGLi d (t • B)).val) (toL B) 0 := by
    letI : NormedRing (Matrix (Fin d) (Fin d) (Cinf E)) := Matrix.linftyOpNormedRing
    letI : NormedAlgebra ℝ (Matrix (Fin d) (Fin d) (Cinf E)) := Matrix.linftyOpNormedAlgebra
    haveI : CompleteSpace (Matrix (Fin d) (Fin d) (Cinf E)) := FiniteDimensional.complete ℝ _
    have h1 := hasDerivAt_exp_smul_const (𝕂 := ℝ) B (0 : ℝ)
    rw [zero_smul, NormedSpace.exp_zero, one_mul] at h1
    let L : Matrix (Fin d) (Fin d) (Cinf E) →L[ℝ] Lie E d :=
      LinearMap.toContinuousLinearMap (Matrix.ofLinearEquiv ℝ).symm.toLinearMap
    exact L.hasFDerivAt.comp_hasDerivAt (0 : ℝ) h1
  rw [GlobalTheory.CuspRep.lie_apply]
  exact ((hasDerivAt_curve f x (fun t : ℝ => expGLi d (t • B)) (toL B) (by simp) hc).deriv).symm

end GlobalTheory.CompanionTheory.BlockEntry
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchMatBlockEmbInfGL =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntries =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntries", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousConjFin\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.ConjAtFixedIff\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CutPMulCutP\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ArchMatBlockEmbInfGL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockMatrixMulVecBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpGLiAddSmul\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

open GlobalTheory.LeviHC

noncomputable section

namespace GlobalTheory.CompanionTheory.BlockEntry

theorem sandwich_single_apply {A B : Type} [Fintype A] {d : ℕ} (U : Matrix A (Fin d) ℂ) (W : Matrix (Fin d) B ℂ)
    (i j : Fin d) (z : ℂ) (a : A) (c : B) : (U * Matrix.single i j z * W) a c = U a i * z * W j c := by
  simp [Matrix.mul_apply, Matrix.single_apply, ite_and]

theorem rows_of_adapted {n m : ℕ} {H P : Matrix (Fin n) (Fin n) ℂ} {X Y : Matrix (Fin n) (Fin m) ℂ}
    (hxx : Xᴴ * H * X = 0) (hyy : Yᴴ * H * Y = 0) (hxy : Xᴴ * H * Y = 1) (hyx : Yᴴ * H * X = 1) (hle : 2 * m ≤ n)
    (cX : ∀ (c : Fin n) (k : Fin m), c.val = k.val → ∀ a, P a c = X a k)
    (cY : ∀ (c : Fin n) (k : Fin m), c.val + k.val + 1 = n → ∀ a, P a c = Y a k)
    (pX : ∀ c : Fin n, m ≤ c.val → c.val + m < n → ∀ k, (Xᴴ * H * P) k c = 0)
    (pY : ∀ c : Fin n, m ≤ c.val → c.val + m < n → ∀ k, (Yᴴ * H * P) k c = 0) (k : Fin m) (c : Fin n) :
    (Yᴴ * H * P) k c = (if c.val = k.val then 1 else 0) ∧
      (Xᴴ * H * P) k c = (if c.val + k.val + 1 = n then 1 else 0) := by
  have hk := k.2
  have hc := c.2
  by_cases h1 : c.val < m
  · have e : ∀ M : Matrix (Fin m) (Fin n) ℂ, (M * P) k c = (M * X) k ⟨c.val, h1⟩ := fun M => by
      simp only [Matrix.mul_apply]
      exact Finset.sum_congr rfl fun a _ => by rw [cX c ⟨c.val, h1⟩ rfl a]
    rw [e, e, hyx, hxx, Matrix.one_apply, Matrix.zero_apply]
    refine ⟨?_, ?_⟩
    · by_cases e' : c.val = k.val
      · rw [if_pos e', if_pos (Fin.ext e'.symm)]
      · rw [if_neg e', if_neg fun e'' => e' (congrArg Fin.val e'').symm]
    · rw [if_neg (by omega)]
  · by_cases h2 : c.val + m < n
    · rw [pX c (by omega) h2, pY c (by omega) h2, if_neg (by omega), if_neg (by omega)]
      exact ⟨rfl, rfl⟩
    · have hk' : n - 1 - c.val < m := by omega
      have e : ∀ M : Matrix (Fin m) (Fin n) ℂ, (M * P) k c = (M * Y) k ⟨n - 1 - c.val, hk'⟩ := fun M => by
        simp only [Matrix.mul_apply]
        exact Finset.sum_congr rfl fun a _ => by rw [cY c ⟨n - 1 - c.val, hk'⟩ (by simp only; omega) a]
      rw [e, e, hyy, hxy, Matrix.one_apply, Matrix.zero_apply]
      refine ⟨by rw [if_neg (by omega)], ?_⟩
      by_cases e' : c.val + k.val + 1 = n
      · rw [if_pos e', if_pos (Fin.ext (by simp only; omega))]
      · rw [if_neg e', if_neg fun e'' => e' (by have := congrArg Fin.val e''; simp only at this; omega)]

theorem conj_units_eq {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
    (hcm : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsCMExt F E σ) {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (hJ : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.IsHermND σ J) {m : ℕ}
    {X Y : Matrix (Fin n) (Fin m) E} (hW : IsWittFrame σ J X Y) {l d : ℕ} (h : l + d ≤ m) {C : GL (Fin n) E}
    (hC : GlobalTheory.BlockForms.IsAdapted σ J X Y C) (τ : E →+* ℂ) (i j : Fin d) (p q p' q' : Fin n)
    (hp : p.val = l + i.val) (hq : q.val = l + j.val) (hp' : p'.val + l + j.val + 1 = n)
    (hq' : q'.val + l + i.val + 1 = n) (z : ℂ) :
    z • (C.1.map τ * Matrix.single p q 1 * (C.1.map τ)⁻¹) -
        (starRingEnd ℂ z) • (C.1.map τ * Matrix.single p' q' 1 * (C.1.map τ)⁻¹) =
      (GlobalTheory.BlockForms.blkCols h X).map τ * Matrix.single i j z * (((GlobalTheory.BlockForms.blkCols h Y).map τ)ᴴ * J.map τ) -
        (GlobalTheory.BlockForms.blkCols h Y).map τ * (Matrix.single i j z)ᴴ * (((GlobalTheory.BlockForms.blkCols h X).map τ)ᴴ * J.map τ) := by
  classical
  set P := C.1.map τ with hP
  have hdet : IsUnit P.det := by
    have e : P.det = τ C.1.det := by rw [hP, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    rw [e]
    exact ((Matrix.isUnit_iff_isUnit_det _).1 C.isUnit).map τ
  obtain ⟨hxx, hyy, hxy⟩ := GlobalTheory.CentreFin.frame_emb hcm hW τ
  have hJh : (J.map τ)ᴴ = J.map τ := GlobalTheory.LeviHC.conjTranspose_map hcm hJ τ
  have hyx := GlobalTheory.CentreFin.dual_swap hJh hxy
  have perp : ∀ (A : Matrix (Fin n) (Fin m) E) (c : Fin n), (Formalism.UG.cT (σ : E →+* E) A * J) *ᵥ (fun k => C.1 k c) = 0 →
      ∀ k, ((A.map τ)ᴴ * J.map τ * P) k c = 0 := fun A c e k => by
    have e1 : ((Formalism.UG.cT (σ : E →+* E) A * J) *ᵥ (fun k => C.1 k c)) k = 0 := by rw [e]; rfl
    have e2 := congrArg τ e1
    rw [map_zero] at e2
    rw [← e2, ← GlobalTheory.CentreFin.map_cT_emb hcm τ A, ← Matrix.map_mul]

    simp [Matrix.mul_apply, Matrix.mulVec, dotProduct, hP, map_sum, map_mul]
  have what₂ := rows_of_adapted (P := P) hxx hyy hxy hyx hC.le
    (fun c k e a => by rw [hP, Matrix.map_apply, hC.colX c k e a, Matrix.map_apply])
    (fun c k e a => by rw [hP, Matrix.map_apply, hC.columnBlock c k e a, Matrix.map_apply])
    (fun c h1 h2 => perp X c (hC.perpX c h1 h2)) (fun c h1 h2 => perp Y c (hC.perpY c h1 h2))
  set Xb := (GlobalTheory.BlockForms.blkCols h X).map τ with hXb
  set Yb := (GlobalTheory.BlockForms.blkCols h Y).map τ with hYb
  set R := Xb * Matrix.single i j z * (Ybᴴ * J.map τ) - Yb * (Matrix.single i j z)ᴴ * (Xbᴴ * J.map τ) with hR
  let f : Fin d → Fin m := fun a => ⟨l + a.val, by omega⟩
  have sY : ∀ (a : Fin d) (c : Fin n), (Ybᴴ * J.map τ * P) a c = if c.val = l + a.val then 1 else 0 := fun a c =>
    (what₂ (f a) c).1
  have sX : ∀ (a : Fin d) (c : Fin n), (Xbᴴ * J.map τ * P) a c = if c.val + (l + a.val) + 1 = n then 1 else 0 := fun a c =>
    (what₂ (f a) c).2
  have hRP : R * P = P * (z • Matrix.single p q 1 - (starRingEnd ℂ z) • Matrix.single p' q' 1) := by
    ext a c
    have e1 : R * P = Xb * Matrix.single i j z * (Ybᴴ * J.map τ * P) -
        Yb * Matrix.single j i (starRingEnd ℂ z) * (Xbᴴ * J.map τ * P) := by
      rw [hR, Matrix.sub_mul, Matrix.conjTranspose_single]
      simp only [Matrix.mul_assoc]
      rfl
    have e2 : P a p = Xb a i := by
      rw [hP, Matrix.map_apply, hC.colX p (f i) hp a]; rfl
    have e3 : P a p' = Yb a j := by
      rw [hP, Matrix.map_apply, hC.columnBlock p' (f j) (by simp only [f]; omega) a]; rfl
    rw [e1, Matrix.sub_apply, sandwich_single_apply, sandwich_single_apply, sY, sX, Matrix.mul_sub, Matrix.sub_apply,
      Matrix.mul_smul, Matrix.mul_smul, Matrix.smul_apply, Matrix.smul_apply]
    have e4 : ∀ (u v : Fin n), (P * Matrix.single u v (1 : ℂ)) a c = P a u * (if c = v then 1 else 0) := fun u v => by
      by_cases e : c = v
      · subst e
        simp [Matrix.mul_single_apply_same]
      · have e' : v ≠ c := fun e'' => e e''.symm
        rw [if_neg e, mul_zero, Matrix.mul_apply]
        exact Finset.sum_eq_zero fun b _ => by rw [Matrix.single_apply_of_col_ne _ _ e' _, mul_zero]
    rw [e4, e4, e2, e3]
    have c1 : (c = q) ↔ c.val = l + j.val := by rw [Fin.ext_iff, hq]
    have c2 : (c = q') ↔ c.val + (l + i.val) + 1 = n := by rw [Fin.ext_iff]; omega
    simp only [c1, c2, smul_eq_mul]
    ring
  calc _ = P * (z • Matrix.single p q 1 - (starRingEnd ℂ z) • Matrix.single p' q' 1) * P⁻¹ := by
        simp only [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_smul, Matrix.smul_mul]
    _ = R := by rw [← hRP, Matrix.mul_nonsing_inv_cancel_right _ _ hdet]

theorem lieS_eq_derEnd : ∀ (D : D7) [_root_.NumberField.IsTotallyComplex D.host.E] (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (hθ : IsInfFam θ)
    (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E),
    IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (l d : ℕ) (h : l + d ≤ m)
    (ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V), GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι →
    ∀ C : GL (Fin V.rank) D.host.E, GlobalTheory.BlockForms.IsAdapted D.sp.cm.sig V.gram X Y C → ∀ (τ : D.what₂.Tau)
    (F : GlobalTheory.Mem.AutSpace.SmFun θ V) (f : GlobalTheory.CuspRep.Sm D.host.E d), (∀ x, f.1 x = F.1 (ι x)) →
    ∀ (i j : Fin d) (p q p' q' : Fin V.rank), p.val = l + i.val → q.val = l + j.val →
    p'.val + l + j.val + 1 = V.rank → q'.val + l + i.val + 1 = V.rank → ∀ (z : ℂ) (x : GlobalTheory.CuspRep.GA D.host.E d),
      (GlobalTheory.CuspRep.lieS D.host.E d i j (GlobalTheory.CuspRep.atEmb (tauE D τ) z) f).1 x =
        (GlobalTheory.Mem.RealTranslate.derEnd hθ τ (z • (C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹) -
          (starRingEnd ℂ z) • (C.1.map (tauE D τ) * Matrix.single p' q' 1 * (C.1.map (tauE D τ))⁻¹)) F).1 (ι x) := by
  intro D _ θ hθ V m X Y hW l d h ι hι C hC τ F f hf i j p q p' q' hp hq hp' hq' z x
  have hcm := isCMExt_host D
  have hJ := GlobalTheory.Doubling.isHermND_gram V
  obtain ⟨e, he⟩ : ∃ e : EmbOver D.host.E (placeOf D τ), e.1 = tauE D τ := ⟨embOverOf D τ, rfl⟩
  have hline := isLineOf_blockEmb_exp' _ D.host.E D.sp.cm.sig hcm V.rank V.gram hJ m X Y hW l d h ι hι (placeOf D τ)
    e (Matrix.single i j z)
  have hmat := conj_units_eq hcm hJ hW h hC (tauE D τ) i j p q p' q' hp hq hp' hq' z
  rw [he, ← hmat] at hline
  have hsk := hline.skew hcm
  rw [he] at hsk
  have hZ : z • (C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹) -
      (starRingEnd ℂ z) • (C.1.map (tauE D τ) * Matrix.single p' q' 1 * (C.1.map (tauE D τ))⁻¹) ∈ lieAt V τ := hsk
  have hγ : ∀ t : ℝ, ι (GlobalTheory.CuspRep.infGL D.host.E d (GlobalTheory.CuspRep.expGLi d (t • (Matrix.single i j z).map
      (GlobalTheory.CuspRep.atEmb (tauE D τ))))) = oneP θ V τ (z • (C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹) -
        (starRingEnd ℂ z) • (C.1.map (tauE D τ) * Matrix.single p' q' 1 * (C.1.map (tauE D τ))⁻¹)) t := fun t => by
    obtain ⟨y, e1, e2⟩ := hline t
    refine Eq.trans e1 ?_
    rw [oneP, ← e2, GlobalTheory.Orb.archMat_eq_archEquiv _ hcm, atTau_archEquiv hθ V e he]
  have h0 : GlobalTheory.CuspRep.atEmb (tauE D τ) 0 = 0 := by rw [GlobalTheory.CuspRep.atEmb_eq]; simp
  have hs : Matrix.single i j (GlobalTheory.CuspRep.atEmb (tauE D τ) z) = (Matrix.single i j z).map (GlobalTheory.CuspRep.atEmb (tauE D τ)) := by
    ext a b; simp only [Matrix.single_apply, Matrix.map_apply]; split_ifs <;> simp [h0]
  rw [GlobalTheory.CuspRep.lieS_apply, hs, lie_eq_deriv_exp' D.host.E d f _ x]
  change _ = RderC θ V τ _ F.1 (ι x)
  rw [GlobalTheory.SmoothAutCheck.RderC_eq θ V τ hZ]
  simp only [hf, map_mul, hγ]
  rfl

end GlobalTheory.CompanionTheory.BlockEntry
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntries =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntriesStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntriesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousConjFin\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

theorem _root_.GlobalTheory.T.block_embedding_adapted_basis : ∀ (D : D7) [_root_.NumberField.IsTotallyComplex D.host.E] (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (hθ : IsInfFam θ)
    (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E),
    IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (l d : ℕ) (h : l + d ≤ m)
    (ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V), GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι →
    ∀ C : GL (Fin V.rank) D.host.E, GlobalTheory.BlockForms.IsAdapted D.sp.cm.sig V.gram X Y C → ∀ (τ : D.what₂.Tau)
    (F : GlobalTheory.Mem.AutSpace.SmFun θ V) (f : GlobalTheory.CuspRep.Sm D.host.E d), (∀ x, f.1 x = F.1 (ι x)) →
    ∀ (i j : Fin d) (p q p' q' : Fin V.rank), p.val = l + i.val → q.val = l + j.val →
    p'.val + l + j.val + 1 = V.rank → q'.val + l + i.val + 1 = V.rank → ∀ (z : ℂ) (x : GlobalTheory.CuspRep.GA D.host.E d),
      (GlobalTheory.CuspRep.lieS D.host.E d i j (GlobalTheory.CuspRep.atEmb (tauE D τ) z) f).1 x =
        (GlobalTheory.Mem.RealTranslate.derEnd hθ τ (z • (C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹) -
          (starRingEnd ℂ z) • (C.1.map (tauE D τ) * Matrix.single p' q' 1 * (C.1.map (tauE D τ))⁻¹)) F).1 (ι x) := by
  first | exact @GlobalTheory.CompanionTheory.BlockEntry.lieS_eq_derEnd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntriesStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasis =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DifferentiableOneP\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DifferentiableAtChart\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnInvSetOfSmoothAlongProdExp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRealLineBlockEmbeddingExpInfinitePlace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpGLiAddSmul\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct ContDiff
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

namespace GlobalTheory.CompanionTheory.CuspSmooth

theorem mem_Sm_blockEmb_smFun : ∀ (D : D7) [_root_.NumberField.IsTotallyComplex D.host.E] (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (hθ : IsInfFam θ)
    (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E),
    IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (l d : ℕ) (h : l + d ≤ m)
    (ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V), GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι →
    ∀ F : GlobalTheory.Mem.AutSpace.SmFun θ V, (fun x => F.1 (ι x)) ∈ GlobalTheory.CuspRep.Sm D.host.E d := by
  intro D _ θ hθ V m Xf Yf hW l d h ι hι F g
  classical
  obtain ⟨hcm, hJ⟩ := GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND D.host.F D.host.E D.sp.cm
  refine _root_.GlobalTheory.SecondKind.contDiffOn_of_prodExp D.host.E d _ {X | ∃ v, ∀ i j, ∀ u, u ≠ v → X i j u = 0} ?_ ?_
  · rw [eq_top_iff]
    intro X _
    have e : X = ∑ v : InfinitePlace D.host.E, (Matrix.of fun i j => Pi.single v (X i j v)) := by
      ext i j u
      rw [Matrix.sum_apply, Finset.sum_apply]
      simp [Pi.single_apply]
    rw [e]
    exact Submodule.sum_mem _ fun v _ => Submodule.subset_span ⟨v, fun i j u hu => by simp [hu]⟩
  · intro k X hX y hy
    choose v hv using hX
    have hγ : ∀ i, IsRealLine D.sp.cm.sig V.gram (fun t : ℝ => ι (GlobalTheory.CuspRep.infGL D.host.E d (GlobalTheory.CuspRep.expGLi d (t • X i)))) :=
      fun i => GlobalTheory.BlockRealLine.isRealLine_blockEmb_exp D.host.F D.host.E D.sp.cm.sig hcm _ V.gram (hJ V) m Xf Yf hW l d h ι hι (v i) (X i) (hv i)
    choose p hp e using fun i => (hγ i).eq_oneP hθ
    have hs := F.2 k (fun i => (p i).1) (fun i => (p i).2) hp (ι (g * GlobalTheory.CuspRep.infGL D.host.E d hy.unit))
    simp only [← e] at hs
    convert hs using 2 with t
    set P : GL (Fin d) (GlobalTheory.CuspRep.Cinf D.host.E) := (List.ofFn fun i => GlobalTheory.CuspRep.expGLi d (t i • X i)).prod
    have hP : (P : Matrix (Fin d) (Fin d) (GlobalTheory.CuspRep.Cinf D.host.E)) =
        (List.ofFn fun i => NormedSpace.exp (t i • X i)).prod := by
      simp only [P]
      rw [← Units.coeHom_apply, map_list_prod, List.map_ofFn]
      rfl
    have hU : GlobalTheory.CuspRep.toL (Matrix.of y * (List.ofFn fun i => NormedSpace.exp (t i • X i)).prod) =
        GlobalTheory.CuspRep.toL (hy.unit * P).val := by
      rw [Units.val_mul, hP]
      congr 2
    rw [hU, GlobalTheory.CuspRep.chart_val]
    have e3 : (List.ofFn fun i => ι (GlobalTheory.CuspRep.infGL D.host.E d (GlobalTheory.CuspRep.expGLi d (t i • X i)))) =
        (List.ofFn fun i => GlobalTheory.CuspRep.expGLi d (t i • X i)).map (ι.comp (GlobalTheory.CuspRep.infGL D.host.E d)) := by
      simp [List.map_ofFn, Function.comp_def]
    rw [e3, ← map_list_prod]
    simp only [P, map_mul, MonoidHom.comp_apply, mul_assoc]

end GlobalTheory.CompanionTheory.CuspSmooth
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasis =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasisStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasisStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DifferentiableOneP\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

theorem _root_.GlobalTheory.T.automorphic_function_restrict_block : ∀ (D : D7) [_root_.NumberField.IsTotallyComplex D.host.E] (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (hθ : IsInfFam θ)
    (V : HSp D) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E),
    IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (l d : ℕ) (h : l + d ≤ m)
    (ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V), GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι →
    ∀ F : GlobalTheory.Mem.AutSpace.SmFun θ V, (fun x => F.1 (ι x)) ∈ GlobalTheory.CuspRep.Sm D.host.E d := by
  first | exact @GlobalTheory.CompanionTheory.CuspSmooth.mem_Sm_blockEmb_smFun
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasisStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerEndMemLeftInv =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerEndMemLeftInv", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousConjFin\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RightTranslateCommutesCenterAction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockEmbNormalises\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapelliConstantTermVanishing\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisBlockEntriesStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AdaptedBasisConjugateZeroEntriesStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlockStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlockEmbeddingAdaptedBasisStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ConjugatedMatrixUnitEntriesStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.GelfandEigenvalueCasimirScalarStatement\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\npublic import Formalism.RealPlaceAnalysis.StatementE\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.GlRelationsDerivativePreserved\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.OrthogonalSubspaceWittFrameExtensionStatement\npublic import Formalism.LocalToGlobal.NumberFieldFamilies.ThetaCI\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GodementSectionSmoothBounded\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlacesStatement\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CmDataIsCMExtAndGramIsHermND\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.MonicBlock

section Res

variable {D : D7} [_root_.NumberField.IsTotallyComplex D.host.E] {θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)} {hθ : IsInfFam θ}
  {V : HSp D} {m : ℕ} {X Y : Matrix (Fin V.rank) (Fin m) D.host.E}


open GlobalTheory.CuspRep GlobalTheory.Mem.RealTranslate in
theorem resX (hW : IsWittFrame D.sp.cm.sig V.gram X Y) {l d : ℕ} (h : l + d ≤ m)
    {ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V} (hι : GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι)
    {C : GL (Fin V.rank) D.host.E} (hC : GlobalTheory.BlockForms.IsAdapted D.sp.cm.sig V.gram X Y C) (τ : D.what₂.Tau)
    (F : GlobalTheory.Mem.AutSpace.SmFun θ V) (f : Sm D.host.E d) (hf : ∀ x, f.1 x = F.1 (ι x))
    (i j : Fin d) (p q : Fin V.rank) (hp : p.val = l + i.val) (hq : q.val = l + j.val) (x : GA D.host.E d) :
    (Eop (tauE D τ) i j f).1 x =
      (derEnd hθ τ (C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹) F).1 (ι x) := by
  have hN : 2 * m ≤ V.rank := hC.le
  have hj := j.isLt
  have hi := i.isLt
  let p' : Fin V.rank := ⟨V.rank - 1 - (l + j.val), by omega⟩
  let q' : Fin V.rank := ⟨V.rank - 1 - (l + i.val), by omega⟩
  have hp' : p'.val + l + j.val + 1 = V.rank := by simp only [p']; omega
  have hq' : q'.val + l + i.val + 1 = V.rank := by simp only [q']; omega
  have e1 := GlobalTheory.T.block_embedding_adapted_basis D θ hθ V m X Y hW l d h ι hι C hC τ F f hf i j p q p' q' hp hq hp' hq' 1 x
  have e2 := GlobalTheory.T.block_embedding_adapted_basis D θ hθ V m X Y hW l d h ι hι C hC τ F f hf i j p q p' q' hp hq hp' hq' Complex.I x
  set Ex := C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹
  set Ey := C.1.map (tauE D τ) * Matrix.single p' q' 1 * (C.1.map (tauE D τ))⁻¹
  have v : ∀ (a b : ℂ), (derEnd hθ τ (a • Ex - b • Ey) F).1 (ι x) =
      a * (derEnd hθ τ Ex F).1 (ι x) - b * (derEnd hθ τ Ey F).1 (ι x) := fun a b => by
    rw [map_sub, map_smul, map_smul]; rfl
  rw [v] at e1 e2
  change (1 / 2 : ℂ) * ((lieS D.host.E d i j (atEmb (tauE D τ) 1) f).1 x -
    Complex.I * (lieS D.host.E d i j (atEmb (tauE D τ) Complex.I) f).1 x) = _
  rw [e1, e2]
  simp only [map_one, Complex.conj_I]
  linear_combination ((derEnd hθ τ Ex F).1 (ι x) + (derEnd hθ τ Ey F).1 (ι x)) * (-1 / 2 : ℂ) * Complex.I_mul_I


open GlobalTheory.CuspRep GlobalTheory.Mem.RealTranslate in
theorem resY (hW : IsWittFrame D.sp.cm.sig V.gram X Y) {l d : ℕ} (h : l + d ≤ m)
    {ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V} (hι : GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι)
    {C : GL (Fin V.rank) D.host.E} (hC : GlobalTheory.BlockForms.IsAdapted D.sp.cm.sig V.gram X Y C) (τ : D.what₂.Tau)
    (F : GlobalTheory.Mem.AutSpace.SmFun θ V) (f : Sm D.host.E d) (hf : ∀ x, f.1 x = F.1 (ι x))
    (i j : Fin d) (p' q' : Fin V.rank) (hp' : p'.val + l + j.val + 1 = V.rank) (hq' : q'.val + l + i.val + 1 = V.rank)
    (x : GA D.host.E d) :
    (Eop (NumberField.ComplexEmbedding.conjugate (tauE D τ)) i j f).1 x =
      (derEnd hθ τ (-(C.1.map (tauE D τ) * Matrix.single p' q' 1 * (C.1.map (tauE D τ))⁻¹)) F).1 (ι x) := by
  have hN : 2 * m ≤ V.rank := hC.le
  have hj := j.isLt
  have hi := i.isLt
  let p : Fin V.rank := ⟨l + i.val, by omega⟩
  let q : Fin V.rank := ⟨l + j.val, by omega⟩
  have e1 := GlobalTheory.T.block_embedding_adapted_basis D θ hθ V m X Y hW l d h ι hι C hC τ F f hf i j p q p' q' rfl rfl hp' hq' 1 x
  have e2 := GlobalTheory.T.block_embedding_adapted_basis D θ hθ V m X Y hW l d h ι hι C hC τ F f hf i j p q p' q' rfl rfl hp' hq' (-Complex.I) x
  set Ex := C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹
  set Ey := C.1.map (tauE D τ) * Matrix.single p' q' 1 * (C.1.map (tauE D τ))⁻¹
  have v : ∀ (a b : ℂ), (derEnd hθ τ (a • Ex - b • Ey) F).1 (ι x) =
      a * (derEnd hθ τ Ex F).1 (ι x) - b * (derEnd hθ τ Ey F).1 (ι x) := fun a b => by
    rw [map_sub, map_smul, map_smul]; rfl
  have v' : (derEnd hθ τ (-Ey) F).1 (ι x) = -(derEnd hθ τ Ey F).1 (ι x) := by
    rw [map_neg]; rfl
  rw [v] at e1 e2
  rw [v']
  change (1 / 2 : ℂ) * ((lieS D.host.E d i j (atEmb (NumberField.ComplexEmbedding.conjugate (tauE D τ)) 1) f).1 x -
    Complex.I * (lieS D.host.E d i j (atEmb (NumberField.ComplexEmbedding.conjugate (tauE D τ)) Complex.I) f).1 x) = _
  rw [atEmb_conj, atEmb_conj, map_one, Complex.conj_I, e1, e2]
  simp only [map_one, map_neg, Complex.conj_I, neg_neg]
  linear_combination ((derEnd hθ τ Ex F).1 (ι x) + (derEnd hθ τ Ey F).1 (ι x)) * (1 / 2 : ℂ) * Complex.I_mul_I

end Res

section Van

open GlobalTheory.Mem.RealTranslate

theorem conj_half : (starRingEnd ℂ) (1 / 2 : ℂ) = 1 * (1 / 2) := by
  have : (1 / 2 : ℂ) = ((1 / 2 : ℝ) : ℂ) := by push_cast; ring
  rw [this, Complex.conj_ofReal, one_mul]

theorem conj_half_I : (starRingEnd ℂ) (1 / (2 * Complex.I) : ℂ) = -1 * (1 / (2 * Complex.I)) := by
  have : (1 / (2 * Complex.I) : ℂ) = ((-1 / 2 : ℝ) : ℂ) * Complex.I := by
    push_cast
    field_simp
    simp
  rw [this, map_mul, Complex.conj_ofReal, Complex.conj_I]
  ring

theorem parts_mem {n : ℕ} (H : Matrix (Fin n) (Fin n) ℂ) (hH : Hᴴ = H) (hu : IsUnit H.det) (Z : Matrix (Fin n) (Fin n) ℂ)
    (c s : ℂ) (hs : s = 1 ∨ s = -1) (hc : starRingEnd ℂ c = s * c) :
    ((c • (Z + s • -(H⁻¹ * Zᴴ * H)))ᴴ * H + H * (c • (Z + s • -(H⁻¹ * Zᴴ * H))) = 0) := by
  have hss : star s = s := by rcases hs with rfl | rfl <;> simp
  have h2 : s * s = 1 := by rcases hs with rfl | rfl <;> simp
  have e1 : (H⁻¹ * Zᴴ * H)ᴴ * H = H * Z := by
    rw [conjTranspose_mul, conjTranspose_mul, conjTranspose_conjTranspose, conjTranspose_nonsing_inv, hH]
    simp only [Matrix.mul_assoc]
    rw [nonsing_inv_mul _ hu, Matrix.mul_one]
  have e2 : H * (H⁻¹ * Zᴴ * H) = Zᴴ * H := by
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, mul_nonsing_inv _ hu, Matrix.one_mul]
  have hc' : star c = s * c := hc
  simp only [conjTranspose_smul, conjTranspose_add, conjTranspose_neg, Matrix.add_mul, Matrix.smul_mul, Matrix.neg_mul,
    Matrix.mul_smul, Matrix.mul_add, Matrix.mul_neg, e1, e2, hc', smul_add, smul_neg, smul_smul]
  have hcs : star (c * s) = c := by
    rw [star_mul', hc', hss, mul_comm (s * c), ← mul_assoc, h2, one_mul]
  rw [hcs, mul_comm c s]
  abel

theorem isUnit_det_map {E : Type} [Field E] {n : ℕ} (C : GL (Fin n) E) (f : E →+* ℂ) : IsUnit (C.1.map f).det := by
  have : C.1.map f * f.mapMatrix (C⁻¹).1 = 1 := by
    change f.mapMatrix C.1 * _ = 1
    rw [← map_mul, Units.mul_inv, map_one]
  exact Matrix.isUnit_det_of_right_inverse this

theorem entry_parts {n : ℕ} (P Q Z W : Matrix (Fin n) (Fin n) ℂ) (c s : ℂ) (a b : Fin n) :
    (Q * (c • (Z + s • W)) * P) a b = c * ((Q * Z * P) a b + s * (Q * W * P) a b) := by
  simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_add, Matrix.add_mul, Matrix.smul_apply, Matrix.add_apply, smul_eq_mul]

variable {D : D7} [_root_.NumberField.IsTotallyComplex D.host.E] {θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)}
  {V : HSp D} {m : ℕ} {X Y : Matrix (Fin V.rank) (Fin m) D.host.E}

theorem van (hθ : IsInfFam θ) (hW : IsWittFrame D.sp.cm.sig V.gram X Y) (T : Finset (Fin m)) {l d : ℕ} (h : l + d ≤ m)
    {ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V} (hι : GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι)
    (hblk : ∀ j : Fin m, l ≤ j.val → j.val + 1 < l + d → j ∉ T) (hend : ∃ k ∈ T, k.val + 1 = l + d)
    (hprev : l = 0 ∨ ∃ p ∈ T, p.val + 1 = l)
    {C : GL (Fin V.rank) D.host.E} (hC : GlobalTheory.BlockForms.IsAdapted D.sp.cm.sig V.gram X Y C) (τ : D.what₂.Tau) (p q : Fin V.rank)
    (hpq : ∃ e : ℕ, (e = l ∨ e = l + d ∨ e + l + d = V.rank ∨ e + l = V.rank) ∧ p.val < e ∧ e ≤ q.val)
    (H : GlobalTheory.Mem.AutSpace.SmFun θ V) (hH : ∀ u ∈ unip D.sp.cm.sig V.gram X T, ∀ g, H.1 (u * g) = H.1 g) (x : GlobalTheory.CuspRep.GA D.host.E d) :
    (derEnd hθ τ (C.1.map (tauE D τ) * Matrix.single p q 1 * (C.1.map (tauE D τ))⁻¹) H).1 (ι x) = 0 := by
  have hcm := (GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND D.host.F D.host.E D.sp.cm).1
  have hJ := (GlobalTheory.Mem.Vol.cmData_isCMExt_and_gram_isHermND D.host.F D.host.E D.sp.cm).2 V
  have R := (GlobalTheory.T.adelicUnitary_realPoints_structure_realPlaces D).2 θ hθ V
  obtain ⟨hHer, hUn⟩ := R.1 τ
  set P := C.1.map (tauE D τ) with hP
  have hPu := isUnit_det_map C (tauE D τ)
  set Z := P * Matrix.single p q 1 * P⁻¹ with hZ
  have hZe : P⁻¹ * Z * P = Matrix.single p q 1 := by
    rw [hZ]
    calc P⁻¹ * (P * Matrix.single p q 1 * P⁻¹) * P = (P⁻¹ * P) * Matrix.single p q 1 * (P⁻¹ * P) := by
          simp only [Matrix.mul_assoc]
      _ = _ := by rw [nonsing_inv_mul _ hPu, Matrix.one_mul, Matrix.mul_one]
  have hnorm := (GlobalTheory.BlockForms.Norm.blockEmb_normalises _ _ D.sp.cm.sig hcm _ V.gram hJ m X Y hW T l d h ι hι hblk hend hprev).1
  have key : ∀ A ∈ lieAt V τ, (∀ a b : Fin V.rank, (P⁻¹ * A * P) a b ≠ 0 →
      ∃ e : ℕ, (e = l ∨ e = l + d ∨ e + l + d = V.rank ∨ e + l = V.rank) ∧ a.val < e ∧ e ≤ b.val) →
      Rder θ V τ A H.1 (ι x) = 0 := by
    intro A hA hs
    have hu := GlobalTheory.T.adapted_basis_block_entries D θ hθ V m X Y hW T l d h hend hprev C hC τ A hA hs
    have : (fun t : ℝ => H.1 (ι x * oneP θ V τ A t)) = fun _ => H.1 (ι x) := by
      funext t
      have e : ι x * oneP θ V τ A t = (ι x * oneP θ V τ A t * (ι x)⁻¹) * ι x := by group
      rw [e]
      exact hH _ (hnorm x _ (hu t)) _
    change deriv (fun t : ℝ => H.1 (ι x * oneP θ V τ A t)) 0 = 0
    rw [this]
    exact deriv_const _ _
  have hsupp : ∀ (c s : ℂ) (a b : Fin V.rank), (P⁻¹ * (c • (Z + s • conjAt V τ Z)) * P) a b ≠ 0 →
      ∃ e : ℕ, (e = l ∨ e = l + d ∨ e + l + d = V.rank ∨ e + l = V.rank) ∧ a.val < e ∧ e ≤ b.val := by
    intro c s a b hne
    rw [entry_parts, hZe] at hne
    by_cases h1 : (P⁻¹ * conjAt V τ Z * P) a b = 0
    · have h2 : Matrix.single p q (1 : ℂ) a b ≠ 0 := fun h0 => hne (by simp [h0, h1])
      obtain ⟨rfl, rfl⟩ : p = a ∧ q = b := by
        by_contra hc
        exact h2 (Matrix.single_apply_of_ne _ _ _ _ _ (by tauto))
      exact hpq
    · exact GlobalTheory.T.adapted_basis_conjugate_zero_entries D V m X Y hW l d h C hC τ p q a b hpq h1
  have hA : (1 / 2 : ℂ) • (Z + conjAt V τ Z) ∈ lieAt V τ := by
    have e : Z + conjAt V τ Z = Z + (1 : ℂ) • -((gramAt D V τ)⁻¹ * Zᴴ * gramAt D V τ) := by rw [one_smul]; rfl
    change ((1 / 2 : ℂ) • (Z + conjAt V τ Z))ᴴ * gramAt D V τ + gramAt D V τ * ((1 / 2 : ℂ) • (Z + conjAt V τ Z)) = 0
    rw [e]
    exact parts_mem _ hHer hUn Z (1 / 2) 1 (Or.inl rfl) conj_half
  have hB : (1 / (2 * Complex.I)) • (Z - conjAt V τ Z) ∈ lieAt V τ := by
    have e : Z - conjAt V τ Z = Z + (-1 : ℂ) • -((gramAt D V τ)⁻¹ * Zᴴ * gramAt D V τ) := by
      rw [neg_smul, one_smul, sub_eq_add_neg]; rfl
    change ((1 / (2 * Complex.I)) • (Z - conjAt V τ Z))ᴴ * gramAt D V τ + gramAt D V τ * ((1 / (2 * Complex.I)) • (Z - conjAt V τ Z)) = 0
    rw [e]
    exact parts_mem _ hHer hUn Z (1 / (2 * Complex.I)) (-1) (Or.inr rfl) conj_half_I
  have r1 := key _ hA fun a b hne => hsupp (1 / 2) 1 a b (by rwa [one_smul])
  have r2 := key _ hB fun a b hne => hsupp (1 / (2 * Complex.I)) (-1) a b (by rwa [neg_smul, one_smul, ← sub_eq_add_neg])
  change (Rder θ V τ _ H.1 + Complex.I • Rder θ V τ _ H.1) (ι x) = 0
  simp only [Pi.add_apply, Pi.smul_apply, r1, r2, smul_zero, add_zero]

end Van

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.MonicBlock

namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.MonicBlock

section Alg

variable {W Q : Type} [AddCommGroup W] [Module ℂ W] [AddCommGroup Q] [Module ℂ Q]

def pairAlg (L : W →ₗ[ℂ] Q) : Subalgebra ℂ (Module.End ℂ W × Module.End ℂ Q) where
  carrier := {p | ∀ F, L (p.1 F) = p.2 (L F)}
  mul_mem' {a b} ha hb F := by
    change L (a.1 (b.1 F)) = a.2 (b.2 (L F))
    rw [ha, hb]
  add_mem' {a b} ha hb F := by
    change L (a.1 F + b.1 F) = a.2 (L F) + b.2 (L F)
    rw [map_add (f := _), ha, hb]
  algebraMap_mem' c F := by
    change L (c • F) = c • L F
    rw [map_smul]

theorem qdet_intertwine (L : W →ₗ[ℂ] Q) {a : ℕ} (A : Fin a → Fin a → Module.End ℂ W) (B : Fin a → Fin a → Module.End ℂ Q)
    (h : ∀ i j F, L (A i j F) = B i j (L F)) (w : ℂ) (F : W) :
    L (Formalism.REAL.qdet A w F) = Formalism.REAL.qdet B w (L F) := by
  have hm := GlobalTheory.CompanionTheory.CTFin.CapStable.qdet_mem (pairAlg L) (fun i j => ((A i j, B i j) : Module.End ℂ W × Module.End ℂ Q))
    (fun i j F => h i j F) w
  have h1 : (Formalism.REAL.qdet (fun i j => ((A i j, B i j) : Module.End ℂ W × Module.End ℂ Q)) w).1 = Formalism.REAL.qdet A w :=
    GlobalTheory.CuspRep.map_qdet (AlgHom.fst ℂ (Module.End ℂ W) (Module.End ℂ Q)) (fun i j => (A i j, B i j)) w
  have h2 : (Formalism.REAL.qdet (fun i j => ((A i j, B i j) : Module.End ℂ W × Module.End ℂ Q)) w).2 = Formalism.REAL.qdet B w :=
    GlobalTheory.CuspRep.map_qdet (AlgHom.snd ℂ (Module.End ℂ W) (Module.End ℂ Q)) (fun i j => (A i j, B i j)) w
  have := hm F
  rwa [h1, h2] at this

theorem aeval_intertwine (L : W →ₗ[ℂ] Q) (a : Module.End ℂ W) (b : Module.End ℂ Q) (h : ∀ F, L (a F) = b (L F))
    (q : Polynomial ℂ) (F : W) : L (Polynomial.aeval a q F) = Polynomial.aeval b q (L F) := by
  have hm : Polynomial.aeval ((a, b) : Module.End ℂ W × Module.End ℂ Q) q ∈ pairAlg L := by
    rw [Polynomial.aeval_eq_sum_range]
    exact Subalgebra.sum_mem _ fun i _ => Subalgebra.smul_mem _ (pow_mem (show (a, b) ∈ pairAlg L from h) i) _
  have h1 : (Polynomial.aeval ((a, b) : Module.End ℂ W × Module.End ℂ Q) q).1 = Polynomial.aeval a q :=
    (Polynomial.aeval_algHom_apply (AlgHom.fst ℂ (Module.End ℂ W) (Module.End ℂ Q)) (a, b) q).symm
  have h2 : (Polynomial.aeval ((a, b) : Module.End ℂ W × Module.End ℂ Q) q).2 = Polynomial.aeval b q :=
    (Polynomial.aeval_algHom_apply (AlgHom.snd ℂ (Module.End ℂ W) (Module.End ℂ Q)) (a, b) q).symm
  have := hm F
  rwa [h1, h2] at this

def sizes (l d N : ℕ) : Fin 5 → ℕ := ![l, d, N - 2 * (l + d), d, l]

theorem sum_sizes {l d N : ℕ} (h : 2 * (l + d) ≤ N) : ∑ i, sizes l d N i = N := by
  simp [sizes, Fin.sum_univ_succ]
  omega

def starts (l d N : ℕ) : Fin 5 → ℕ := ![0, l, l + d, N - (l + d), N - l]

theorem std_val {l d N : ℕ} (hN : 2 * (l + d) ≤ N) (h : ∑ i, sizes l d N i = N) (a : Fin 5) (p : Fin (sizes l d N a)) :
    ((GlobalTheory.SmGL.stdBlocks (sizes l d N) h ⟨a, p⟩ : Fin N) : ℕ) = starts l d N a + p.val := by
  rw [GlobalTheory.SmGL.stdBlocks_val]
  congr 1
  fin_cases a <;> simp [Fin.sum_univ_succ, sizes, starts] <;> omega

theorem cut_of_blk {l d N : ℕ} (hN : 2 * (l + d) ≤ N) (h : ∑ i, sizes l d N i = N) (p q : Fin N)
    (hpq : GlobalTheory.SmGL.blk (GlobalTheory.SmGL.stdBlocks (sizes l d N) h) p < GlobalTheory.SmGL.blk (GlobalTheory.SmGL.stdBlocks (sizes l d N) h) q) :
    ∃ e : ℕ, (e = l ∨ e = l + d ∨ e + l + d = N ∨ e + l = N) ∧ p.val < e ∧ e ≤ q.val := by
  obtain ⟨⟨a, i⟩, rfl⟩ := (GlobalTheory.SmGL.stdBlocks (sizes l d N) h).surjective p
  obtain ⟨⟨b, j⟩, rfl⟩ := (GlobalTheory.SmGL.stdBlocks (sizes l d N) h).surjective q
  have hab : a < b := by simpa [GlobalTheory.SmGL.blk] using hpq
  have hi := i.isLt
  have key : ∀ a b : Fin 5, a < b → starts l d N a + sizes l d N a ≤ starts l d N b ∧
      (starts l d N b = l ∨ starts l d N b = l + d ∨ starts l d N b + l + d = N ∨ starts l d N b + l = N) := by
    intro a b hab
    fin_cases a <;> fin_cases b <;> simp [starts, sizes] at hab ⊢ <;> omega
  obtain ⟨k1, k2⟩ := key a b hab
  refine ⟨starts l d N b, k2, ?_, ?_⟩
  · rw [std_val hN]; omega
  · rw [std_val hN]; omega

end Alg

section Core

variable {D : D7} {θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)} {V : HSp D}

def leftInv (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (U : Subgroup (GA D V)) : Submodule ℂ (GlobalTheory.Mem.AutSpace.SmFun θ V) where
  carrier := {F | ∀ u ∈ U, ∀ g, F.1 (u * g) = F.1 g}
  add_mem' {a b} ha hb u hu g := by
    change a.1 (u * g) + b.1 (u * g) = a.1 g + b.1 g
    rw [ha u hu, hb u hu]
  zero_mem' _ _ _ := rfl
  smul_mem' c a ha u hu g := by
    change c • a.1 (u * g) = c • a.1 g
    rw [ha u hu]

theorem derEnd_mem_leftInv (hθ : IsInfFam θ) (U : Subgroup (GA D V)) (τ : D.what₂.Tau) (Z : Matrix (Fin V.rank) (Fin V.rank) ℂ)
    (F : GlobalTheory.Mem.AutSpace.SmFun θ V) (hF : F ∈ leftInv θ U) : GlobalTheory.Mem.RealTranslate.derEnd hθ τ Z F ∈ leftInv θ U := by
  intro u hu g
  change RderC θ V τ Z F.1 (u * g) = RderC θ V τ Z F.1 g
  simp only [RderC, Rder, Pi.add_apply, Pi.smul_apply, mul_assoc, hF u hu]


open GlobalTheory.CuspRep in
theorem core [_root_.NumberField.IsTotallyComplex D.host.E] (hθ : IsInfFam θ) {m : ℕ} {X : Matrix (Fin V.rank) (Fin m) D.host.E} (T : Finset (Fin m))
    {l d : ℕ} (ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V) (hN : 2 * (l + d) ≤ V.rank)
    (hsm : ∀ F : GlobalTheory.Mem.AutSpace.SmFun θ V, (fun x => F.1 (ι x)) ∈ Sm D.host.E d)
    (τ' : D.what₂.Tau) (τ : D.host.E →+* ℂ) (ck : ℕ → ℂ)
    (M : Fin V.rank → Fin V.rank → Matrix (Fin V.rank) (Fin V.rank) ℂ) (hM : Formalism.REAL.GlRel M)
    (hsp : Submodule.span ℂ (Set.range fun p : Fin V.rank × Fin V.rank => M p.1 p.2) = ⊤)
    (hvan : ∀ p q : Fin V.rank, (∃ e : ℕ, (e = l ∨ e = l + d ∨ e + l + d = V.rank ∨ e + l = V.rank) ∧ p.val < e ∧ e ≤ q.val) →
      ∀ H : GlobalTheory.Mem.AutSpace.SmFun θ V, (∀ u ∈ unip D.sp.cm.sig V.gram X T, ∀ g, H.1 (u * g) = H.1 g) → ∀ x,
        (GlobalTheory.Mem.RealTranslate.derEnd hθ τ' (M p q) H).1 (ι x) = 0)
    (hres : ∀ (F : GlobalTheory.Mem.AutSpace.SmFun θ V) (f : Sm D.host.E d), (∀ x, f.1 x = F.1 (ι x)) →
      ∀ (i j : Fin d) (p q : Fin V.rank), p.val = l + i.val → q.val = l + j.val → ∀ x,
        (Eop τ i j f).1 x = (GlobalTheory.Mem.RealTranslate.derEnd hθ τ' (M p q) F).1 (ι x)) (u : ℂ) :
    ∃ q : Polynomial ℂ, q.Monic ∧
      ∀ ψ : GlobalTheory.Mem.AutSpace.SmFun θ V, (∀ u ∈ unip D.sp.cm.sig V.gram X T, ∀ g, ψ.1 (u * g) = ψ.1 g) →
        (∀ k, gelf θ V τ' k ψ.1 = ck k • ψ.1) → ∀ f : Sm D.host.E d, (∀ x, f.1 x = ψ.1 (ι x)) →
          Polynomial.aeval (cap (a := d) τ u) q f = 0 := by
  classical
  have hS := sum_sizes hN
  let Xf : Fin V.rank → Fin V.rank → Module.End ℂ (GlobalTheory.Mem.AutSpace.SmFun θ V) :=
    fun p q => GlobalTheory.Mem.RealTranslate.derEnd hθ τ' (M p q)
  let L : GlobalTheory.Mem.AutSpace.SmFun θ V →ₗ[ℂ] Sm D.host.E d :=
    { toFun := fun F => ⟨fun x => F.1 (ι x), hsm F⟩
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }
  let U : Subgroup (GA D V) := unip D.sp.cm.sig V.gram X T
  let W₀ : Set (GlobalTheory.Mem.AutSpace.SmFun θ V) := {F | F ∈ leftInv θ U ∧ ∀ k, gelf θ V τ' k F.1 = ck k • F.1}
  obtain ⟨q, hq, hq0⟩ := _root_.GlobalTheory.CompanionTheory.Dblock.CentreManyBlocks.monic_relations_along_block _ _ 5 V.rank (sizes l d V.rank) hS Xf (GlobalTheory.T.gl_relations_derivative_preserved D θ hθ V τ' M hM) (leftInv θ U)
    (fun p q F hF => derEnd_mem_leftInv hθ U τ' _ F hF) L
    (fun p q hpq F hF => Subtype.ext (funext fun x => hvan p q (cut_of_blk hN hS p q hpq) F hF x)) W₀ (fun F hF => hF.1)
    (fun v => by
      obtain ⟨s, hs⟩ := GlobalTheory.T.gelfand_eigenvalue_casimir_scalar D θ hθ V τ' M hM hsp ck v
      exact ⟨s, fun F hF => hs F hF.2⟩) 1 (u + ((d : ℂ) - 1) / 2)
  refine ⟨q, hq, fun ψ hψ hg f hf => ?_⟩
  have e0 : f = L ψ := Subtype.ext (funext hf)
  have hB : ∀ (i j : Fin d) (F : GlobalTheory.Mem.AutSpace.SmFun θ V),
      L (Xf (GlobalTheory.SmGL.stdBlocks (sizes l d V.rank) hS ⟨1, i⟩) (GlobalTheory.SmGL.stdBlocks (sizes l d V.rank) hS ⟨1, j⟩) F) =
        Eop τ i j (L F) := fun i j F => Subtype.ext (funext fun x =>
    (hres F (L F) (fun _ => rfl) i j _ _ (std_val hN hS 1 i) (std_val hN hS 1 j) x).symm)
  have h1 := aeval_intertwine L _ (cap (a := d) τ u) (fun F => qdet_intertwine L _ (Eop τ) hB (u + ((d : ℂ) - 1) / 2) F) q ψ
  rw [e0, ← h1]
  exact hq0 ψ ⟨hψ, hg⟩

end Core

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.MonicBlock

namespace GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.MonicBlock

section Units

variable {n : ℕ}

theorem glRel_conj (P Q : Matrix (Fin n) (Fin n) ℂ) (hQP : Q * P = 1) :
    Formalism.REAL.GlRel (fun p q => P * Matrix.single p q (1 : ℂ) * Q) := by
  have e : ∀ A B : Matrix (Fin n) (Fin n) ℂ, (P * A * Q) * (P * B * Q) = P * (A * B) * Q := fun A B => by
    calc (P * A * Q) * (P * B * Q) = P * A * (Q * P) * B * Q := by simp only [Matrix.mul_assoc]
      _ = P * (A * B) * Q := by rw [hQP]; simp only [Matrix.mul_one, Matrix.mul_assoc]
  intro a b c d
  simp only [e]
  rw [← Matrix.sub_mul, ← Matrix.mul_sub]
  have s1 : Matrix.single a b (1 : ℂ) * Matrix.single c d 1 = if b = c then Matrix.single a d 1 else 0 := by
    split_ifs with h
    · subst h; simp
    · exact Matrix.single_mul_single_of_ne _ _ _ _ h _
  have s2 : Matrix.single c d (1 : ℂ) * Matrix.single a b 1 = if d = a then Matrix.single c b 1 else 0 := by
    split_ifs with h
    · subst h; simp
    · exact Matrix.single_mul_single_of_ne _ _ _ _ h _
  rw [s1, s2]
  split_ifs <;> simp [Matrix.sub_mul, Matrix.mul_sub]

theorem glRel_conj_rev (P Q : Matrix (Fin n) (Fin n) ℂ) (hQP : Q * P = 1) :
    Formalism.REAL.GlRel (fun p q : Fin n => -(P * Matrix.single q.rev p.rev (1 : ℂ) * Q)) := by
  have h := glRel_conj P Q hQP
  intro a b c d
  have h1 := h d.rev c.rev b.rev a.rev
  simp only [Fin.rev_inj] at h1
  simp only [neg_mul_neg]
  rw [← neg_sub, h1]
  simp only [eq_comm (a := c) (b := b), eq_comm (a := a) (b := d)]
  split_ifs <;> simp
  abel

theorem span_conj (P Q : Matrix (Fin n) (Fin n) ℂ) (hPQ : P * Q = 1) (hQP : Q * P = 1) :
    Submodule.span ℂ (Set.range fun p : Fin n × Fin n => P * Matrix.single p.1 p.2 (1 : ℂ) * Q) = ⊤ := by
  rw [eq_top_iff]
  intro Z _
  have e : Z = ∑ a, ∑ b, (Q * Z * P) a b • (P * Matrix.single a b (1 : ℂ) * Q) := by
    have h1 : Q * Z * P = ∑ a, ∑ b, (Q * Z * P) a b • Matrix.single a b (1 : ℂ) := by
      simpa [Matrix.smul_single] using Matrix.matrix_eq_sum_single (Q * Z * P)
    calc Z = P * (Q * Z * P) * Q := by
          simp only [← Matrix.mul_assoc]; rw [hPQ, Matrix.one_mul, Matrix.mul_assoc, hPQ, Matrix.mul_one]
      _ = _ := by
          conv_lhs => rw [h1]
          simp only [Finset.mul_sum, Finset.sum_mul, Matrix.mul_smul, Matrix.smul_mul]
  rw [e]
  exact Submodule.sum_mem _ fun a _ => Submodule.sum_mem _ fun b _ =>
    Submodule.smul_mem _ _ (Submodule.subset_span ⟨(a, b), rfl⟩)

theorem span_conj_rev (P Q : Matrix (Fin n) (Fin n) ℂ) (hPQ : P * Q = 1) (hQP : Q * P = 1) :
    Submodule.span ℂ (Set.range fun p : Fin n × Fin n => -(P * Matrix.single p.2.rev p.1.rev (1 : ℂ) * Q)) = ⊤ := by
  rw [eq_top_iff, ← span_conj P Q hPQ hQP]
  refine Submodule.span_le.2 ?_
  rintro _ ⟨⟨a, b⟩, rfl⟩
  have := (Submodule.span ℂ (Set.range fun p : Fin n × Fin n => -(P * Matrix.single p.2.rev p.1.rev (1 : ℂ) * Q))).neg_mem
    (Submodule.subset_span ⟨(b.rev, a.rev), rfl⟩)
  simpa using this

end Units


open GlobalTheory.CuspRep in
theorem monic_block : ∀ (D : D7) [_root_.NumberField.IsTotallyComplex D.host.E] (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)), IsInfFam θ →
    ∀ (V : HSp D) (c : D.what₂.Tau → ℕ → ℂ) (m : ℕ) (X Y : Matrix (Fin V.rank) (Fin m) D.host.E),
    IsWittFrame D.sp.cm.sig V.gram X Y → ∀ (T : Finset (Fin m)) (l d : ℕ) (h : l + d ≤ m)
    (ι : GlobalTheory.CuspRep.GA D.host.E d →* GA D V), GlobalTheory.BlockForms.IsBlockEmb D.sp.cm.sig V.gram X Y h ι → 1 ≤ d →
    (∀ j : Fin m, l ≤ j.val → j.val + 1 < l + d → j ∉ T) → (∃ k ∈ T, k.val + 1 = l + d) →
    (l = 0 ∨ ∃ p ∈ T, p.val + 1 = l) →
    ∀ (τ : D.host.E →+* ℂ) (u : ℂ), ∃ q : Polynomial ℂ, q.Monic ∧
      ∀ φ : GA D V → ℂ, IsSmModOn D.sp.cm.sig V.gram (leftSub V X Y T : Set (GA D V)) φ →
        (∀ τ' k, gelf θ V τ' k φ = c τ' k • φ) → ∀ (g₀ : GA D V) (f : GlobalTheory.CuspRep.Sm D.host.E d),
          (∀ x, f.1 x = φ (ι x * g₀)) → Polynomial.aeval (GlobalTheory.CuspRep.cap (a := d) τ u) q f = 0 := by
  intro D _ θ hθ V c m X Y hW T l d h ι hι hd hblk hend hprev τ u
  classical
  obtain ⟨C, hC⟩ := GlobalTheory.T.exists_adapted_witt_basis D V m X Y hW
  have hN : 2 * (l + d) ≤ V.rank := by have := hC.le; omega
  have hsm := GlobalTheory.T.automorphic_function_restrict_block D θ hθ V m X Y hW l d h ι hι
  obtain ⟨τ', hτ'⟩ := Formalism.L2.Fam.ThC.tauE_or (D := D) τ
  set P : Matrix (Fin V.rank) (Fin V.rank) ℂ := C.1.map (tauE D τ') with hP
  set Q : Matrix (Fin V.rank) (Fin V.rank) ℂ := P⁻¹ with hQ
  have hu : IsUnit P.det := by
    have : P * (tauE D τ').mapMatrix (C⁻¹).1 = 1 := by
      change (tauE D τ').mapMatrix C.1 * _ = 1
      rw [← map_mul, Units.mul_inv, map_one]
    exact Matrix.isUnit_det_of_right_inverse this
  have hPQ : P * Q = 1 := Matrix.mul_nonsing_inv _ hu
  have hQP : Q * P = 1 := Matrix.nonsing_inv_mul _ hu
  have key : ∃ q : Polynomial ℂ, q.Monic ∧
      ∀ ψ : GlobalTheory.Mem.AutSpace.SmFun θ V, (∀ u ∈ unip D.sp.cm.sig V.gram X T, ∀ g, ψ.1 (u * g) = ψ.1 g) →
        (∀ k, gelf θ V τ' k ψ.1 = c τ' k • ψ.1) → ∀ f : Sm D.host.E d, (∀ x, f.1 x = ψ.1 (ι x)) →
          Polynomial.aeval (cap (a := d) τ u) q f = 0 := by
    rcases hτ' with e | e
    · subst e
      exact core hθ T ι hN hsm τ' _ (c τ') (fun p q => P * Matrix.single p q 1 * Q) (glRel_conj P Q hQP) (span_conj P Q hPQ hQP)
        (fun p q hpq H hH x => van hθ hW T h hι hblk hend hprev hC τ' p q hpq H hH x)
        (fun F f hf i j p q hp hq x => resX hW h hι hC τ' F f hf i j p q hp hq x) u
    · have e' : τ = NumberField.ComplexEmbedding.conjugate (tauE D τ') := by
        rw [e]
        ext x
        simp
      subst e'
      refine core hθ T ι hN hsm τ' _ (c τ') (fun p q => -(P * Matrix.single q.rev p.rev 1 * Q)) (glRel_conj_rev P Q hQP)
        (span_conj_rev P Q hPQ hQP) (fun p q hpq H hH x => ?_)
        (fun F f hf i j p q hp hq x => resY hW h hι hC τ' F f hf i j q.rev p.rev ?_ ?_ x) u
      · obtain ⟨e₀, he, h1, h2⟩ := hpq
        have hv := van hθ hW T h hι hblk hend hprev hC τ' q.rev p.rev
          ⟨V.rank - e₀, ?_, ?_, ?_⟩ H hH x
        · rw [map_neg]
          change -((GlobalTheory.Mem.RealTranslate.derEnd hθ τ' _ H).1 (ι x)) = 0
          rw [hv, neg_zero]
        · have := q.isLt
          rcases he with he | he | he | he <;> omega
        · have := q.isLt
          simp only [Fin.val_rev]; omega
        · have := p.isLt
          simp only [Fin.val_rev]; omega
      · have := q.isLt
        simp only [Fin.val_rev]; omega
      · have := p.isLt
        simp only [Fin.val_rev]; omega
  obtain ⟨q, hq, hq0⟩ := key
  refine ⟨q, hq, fun φ hφ hg g₀ f hf => ?_⟩
  have hs : φ ∈ GlobalTheory.Mem.AutSpace.SmFun θ V := GlobalTheory.SphSmooth.mem_smFun_of_isSm hθ hφ.smooth
  let ψ : GlobalTheory.Mem.AutSpace.SmFun θ V := ⟨rTr V g₀ φ, GlobalTheory.RegSch.CentreRight.rTr_mem_all hθ g₀ hs⟩
  refine hq0 ψ (fun v hv g => ?_) (fun k => ?_) f hf
  · change φ (v * g * g₀) = φ (g * g₀)
    rw [mul_assoc]
    exact hφ.left v (Subgroup.mem_sup_left hv) _
  · change gelf θ V τ' k (rTr V g₀ φ) = c τ' k • rTr V g₀ φ
    rw [GlobalTheory.RegSch.CentreRight.gelf_rTr_all hθ g₀ τ' k hs, hg]
    rfl

end GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart.MonicBlock

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerEndMemLeftInv =====

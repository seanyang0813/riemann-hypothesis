module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.BernsteinUnitaryProductIrreducible
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsSumOfMemMultSpan
public import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.IsTypeAtCentral
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RderMemAutFormsCuspForms
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryActionAtRealPlace
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.AutomorphicFormUniformLimitDiscreteSeriesSeriesStatement
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.TypeAtOfDiscreteSeries
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContDiffDerivSnoc
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOneP
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GkGeneratedCuspFormsOfType
import Formalism.LocalToGlobal.IndefiniteReal.MultLemmas
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun
open scoped TensorProduct
open Classical
noncomputable section
namespace GlobalTheory.CuspGKForms
open Matrix Filter Topology GlobalTheory.TypeSum GlobalTheory.PointAtPlaceHom GlobalTheory.Mem.AutSpace GlobalTheory.Mem.RealTranslate GlobalTheory.IndefiniteRowSideFullHecke.FinitePartTypes GlobalTheory.CuspGK
open Formalism.IndefR.Mult
variable {D : D7} {θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)} {V : HSp D}
section Sig
variable (hPr : _root_.GlobalTheory.FunPr.ThetaLocalInputs) (hθ : IsInfFam θ) {τ τ' : D.what₂.Tau} {S : SPar} {φ ψ : GA D V → ℂ}
include hPr hθ
theorem hasTypeAt_of_cuspForm_gK (hV : V.SigOK) (hφ : IsAutFunSm θ V φ) (h : IsTypeAt θ V τ S φ) : φ ∈ typeSub θ V τ S :=
  GlobalTheory.SeriesToClosure.hasTypeAt_of_isTypeAt θ V τ S φ hPr.discreteSeriesUpqExists
    (GlobalTheory.Published.discreteSeriesHermitianUnique_iff.1 hPr.discreteSeriesHermitianUnique) hPr.harishChandraModules
    hPr.casselmanWallach hθ hV (goodPar_of_isTypeAt hV h) hφ h
theorem isTypeAt_of_cuspForm_gK (hV : V.SigOK) (h : IsTypeAt θ V τ S φ) (hψ : IsAutFunSm θ V ψ) (h' : ψ ∈ typeSub θ V τ S) :
    IsTypeAt θ V τ S ψ :=
  _root_.GlobalTheory.ClosureSeries.closure_to_series θ V τ S ψ hPr.discreteSeriesUpqExists
    (GlobalTheory.Published.discreteSeriesHermitianUnique_iff.1 hPr.discreteSeriesHermitianUnique) hPr.harishChandraModules
    hPr.casselmanWallach hθ hV (goodPar_of_isTypeAt hV h) hψ h'
theorem isTypeAt_add_of_sigma (hV : V.SigOK) (hφ : IsAutFunSm θ V φ) (hψ : IsAutFunSm θ V ψ) (h : IsTypeAt θ V τ S φ)
    (h' : IsTypeAt θ V τ S ψ) : IsTypeAt θ V τ S (φ + ψ) :=
  _root_.GlobalTheory.CuspGKForms.isTypeAt_of_cuspForm_gK hPr hθ hV h (GlobalTheory.Mem.AutSpace.isAutFunSm_add hφ hψ)
    (add_mem (_root_.GlobalTheory.CuspGKForms.hasTypeAt_of_cuspForm_gK hPr hθ hV hφ h) (_root_.GlobalTheory.CuspGKForms.hasTypeAt_of_cuspForm_gK hPr hθ hV hψ h'))
theorem isTypeAt_liftDeriv_of_sigma (hV : V.SigOK) {X : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hX : X ∈ lieAt V τ)
    (hφ : IsAutFunSm θ V φ) (h : IsTypeAt θ V τ' S φ) : IsTypeAt θ V τ' S (Rder θ V τ X φ) := by
  refine _root_.GlobalTheory.CuspGKForms.isTypeAt_of_cuspForm_gK hPr hθ hV h (GlobalTheory.CuspLie.isAutFunSm_Rder hθ hX hφ) fun C hC δ hδ => ?_
  obtain ⟨t, ht⟩ := exists_quotient_near hθ hX hφ hC (half_pos hδ)
  have hk := GlobalTheory.Mem.Lift.exp_mem hX t
  have m1 : rTr V (oneP θ V τ X t) φ ∈ typeSub θ V τ' S :=
    _root_.GlobalTheory.CuspGKForms.hasTypeAt_of_cuspForm_gK hPr hθ hV (isAutFunSm_rTr_atTau D θ hθ V φ hφ τ _ hk) (isTypeAt_rTr hθ h hk)
  have m2 : ((t : ℂ)⁻¹) • (rTr V (oneP θ V τ X t) φ + (-1 : ℂ) • φ) ∈ typeSub θ V τ' S :=
    Submodule.smul_mem _ _ (add_mem m1 (Submodule.smul_mem _ _ (_root_.GlobalTheory.CuspGKForms.hasTypeAt_of_cuspForm_gK hPr hθ hV hφ h)))
  obtain ⟨χ, hχ, h2⟩ := m2 C hC (δ / 2) (half_pos hδ)
  refine ⟨χ, hχ, fun x hx => ?_⟩
  have := norm_sub_le_norm_sub_add_norm_sub (Rder θ V τ X φ x)
    ((((t : ℂ)⁻¹) • (rTr V (oneP θ V τ X t) φ + (-1 : ℂ) • φ)) x) (χ x)
  linarith [ht x hx, h2 x hx]
theorem isTypeAt_add_cuspForm (hφ : IsAutFunSm θ V φ) (hψ : IsAutFunSm θ V ψ) (h : IsTypeAt θ V τ S φ)
    (h' : IsTypeAt θ V τ S ψ) : IsTypeAt θ V τ S (φ + ψ) := by
  obtain ⟨s, hs⟩ := exists_sigOK V
  exact _root_.GlobalTheory.CuspGKForms.isTypeAt_add_of_sigma (V := GlobalTheory.SmoothAutCheck.reSig V s) hPr hθ hs
    ((GlobalTheory.SmoothAutCheck.isAutFunSm_reSig θ V s φ).2 hφ) ((GlobalTheory.SmoothAutCheck.isAutFunSm_reSig θ V s ψ).2 hψ) h h'
theorem isTypeAt_liftDeriv_cuspForm {X : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hX : X ∈ lieAt V τ)
    (hφ : IsAutFunSm θ V φ) (h : IsTypeAt θ V τ' S φ) : IsTypeAt θ V τ' S (Rder θ V τ X φ) := by
  obtain ⟨s, hs⟩ := exists_sigOK V
  exact _root_.GlobalTheory.CuspGKForms.isTypeAt_liftDeriv_of_sigma (V := GlobalTheory.SmoothAutCheck.reSig V s) hPr hθ hs hX
    ((GlobalTheory.SmoothAutCheck.isAutFunSm_reSig θ V s φ).2 hφ) h
end Sig
variable {S : D.what₂.Tau → SPar}
def cuspFormGKSubmodule (hPr : _root_.GlobalTheory.FunPr.ThetaLocalInputs) (hθ : IsInfFam θ) (M : DSModel V S) : Submodule ℂ (GA D V → ℂ) where
  carrier := {f | IsKFinCuspOfType θ M f}
  zero_mem' := ⟨Formalism.IndefR.Mult.isAutFunSm_zero θ V, Formalism.IndefR.Mult.isCuspFun_zero V,
    fun τ => (GlobalTheory.TypeAtTest.isTypeAt_zero θ V).2
      ⟨M.H τ, _, _, M.σ τ, M.lam τ, M.ε τ, M.fr τ, M.enum τ, M.ds τ, M.fr_unit τ, M.fr_gram τ⟩,
    ⊥, inferInstance, zero_mem _, fun τ g _ _ h hh => by
      rw [Submodule.mem_bot] at hh ⊢
      subst hh
      rfl⟩
  add_mem' := by
    rintro a b ⟨a1, a2, a3, W, hW, a4, a5⟩ ⟨b1, b2, b3, W', hW', b4, b5⟩
    refine ⟨GlobalTheory.Mem.AutSpace.isAutFunSm_add a1 b1, GlobalTheory.MultMem.isCuspFun_add a1.toIsAutFun b1.toIsAutFun a2 b2,
      fun τ => _root_.GlobalTheory.CuspGKForms.isTypeAt_add_cuspForm hPr hθ a1 b1 (a3 τ) (b3 τ), W ⊔ W', inferInstance, Submodule.add_mem_sup a4 b4,
      fun τ g hg hk h hh => ?_⟩
    obtain ⟨y, hy, z, hz, rfl⟩ := Submodule.mem_sup.1 hh
    exact Submodule.add_mem_sup (a5 τ g hg hk y hy) (b5 τ g hg hk z hz)
  smul_mem' := by
    rintro c a ⟨a1, a2, a3, W, hW, a4, a5⟩
    exact ⟨GlobalTheory.Mem.AutSpace.isAutFunSm_smul c a1, Formalism.IndefR.Mult.isCuspFun_smul V a2 c,
      fun τ => GlobalTheory.Mem.Th.isTypeAt_smul c (a3 τ), W, hW, W.smul_mem c a4, a5⟩
theorem isGKSubmodule_cuspFormGKSubmodule (hPr : _root_.GlobalTheory.FunPr.ThetaLocalInputs) (hθ : IsInfFam θ) (M : DSModel V S) :
    IsGKSub θ M (_root_.GlobalTheory.CuspGKForms.cuspFormGKSubmodule hPr hθ M) := by
  constructor
  · intro τ g hg f hf
    obtain ⟨a1, a2, a3, W, hW, a4, a5⟩ := hf
    exact ⟨isAutFunSm_rTr_atTau D θ hθ V f a1 τ g hg.1, GlobalTheory.Cusp.isCuspFun_rTr a2 _,
      fun τ' => isTypeAt_rTr hθ (a3 τ') hg.1, W, hW, a5 τ g hg.1 hg.2 f a4, a5⟩
  · intro τ X hX f hf
    obtain ⟨a1, a2, a3, W, hW, a4, a5⟩ := hf
    refine ⟨GlobalTheory.CuspLie.isAutFunSm_Rder hθ hX a1, GlobalTheory.CuspLie.isCuspFun_Rder hθ hX a1 a2,
      fun τ' => _root_.GlobalTheory.CuspGKForms.isTypeAt_liftDeriv_cuspForm hPr hθ hX a1 (a3 τ'),
      (Submodule.map₂ (derEnd hθ τ) ⊤ (W.comap (SmFun θ V).subtype)).map (SmFun θ V).subtype,
      Module.Finite.iff_fg.2 ((Submodule.FG.map₂ _ Module.Finite.fg_top (GlobalTheory.CuspLie.fg_comap hW)).map _),
      ⟨derEnd hθ τ X ⟨f, a1.smooth⟩,
        Submodule.apply_mem_map₂ _ (Submodule.mem_top (x := X)) (n := (⟨f, a1.smooth⟩ : SmFun θ V)) a4,
        GlobalTheory.CuspLie.derEnd_coe hθ hX ⟨f, a1.smooth⟩⟩, fun τ' g hg hk => ?_⟩
    have hr := isRealPt_atTau hθ τ' hg
    have hi : IsRealPt θ (atTau θ V τ' g)⁻¹ :=
      ⟨inv_mem hr.1, GlobalTheory.FockCompare.RealAction.infMat_mem_UH hθ V _⟩
    set k := atTau θ V τ' g
    have hle : Submodule.map₂ (derEnd hθ τ) ⊤ (W.comap (SmFun θ V).subtype) ≤
        (((Submodule.map₂ (derEnd hθ τ) ⊤ (W.comap (SmFun θ V).subtype)).map (SmFun θ V).subtype).comap
          (rTrLin k)).comap (SmFun θ V).subtype := by
      refine Submodule.map₂_le.2 fun Z _ u hu => ?_
      refine ⟨_, Submodule.apply_mem_map₂ _ (Submodule.mem_top (x := adAt θ k⁻¹ τ Z))
        (n := ⟨rTr V k u.1, rTr_mem hθ hr u.2⟩) (a5 τ' g hg hk _ hu), ?_⟩
      show RderC θ V τ (adAt θ k⁻¹ τ Z) (rTr V k u.1) = rTr V k (RderC θ V τ Z u.1)
      funext y
      have := congrFun (RderC_rTr hθ hi τ Z (rTr V k u.1)) (y * k)
      rw [show rTr V k⁻¹ (rTr V k u.1) = u.1 from funext fun y => by simp [rTr]] at this
      rw [rTr, this, rTr, mul_inv_cancel_right]
    rintro _ ⟨u, hu, rfl⟩
    exact hle hu
theorem isKFiniteCuspOfType_of_mem_gKGenerated : _root_.GlobalTheory.FunPr.ThetaLocalInputs → ∀ {D : D7} (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (V : HSp D)
    (S : D.what₂.Tau → SPar) (M : Formalism.IndefR.Mult.DSModel V S), IsInfFam (D := D) θ →
    ∀ ψ : GA D V → ℂ, GlobalTheory.CuspGK.IsKFinCuspOfType θ M ψ → ∀ f ∈ GlobalTheory.CuspGK.gkGen θ M ψ, GlobalTheory.CuspGK.IsKFinCuspOfType θ M f :=
  fun hPr _ θ _ _ M hθ _ hψ _ hf => gkGen_le θ M (A := _root_.GlobalTheory.CuspGKForms.cuspFormGKSubmodule hPr hθ M) hψ (_root_.GlobalTheory.CuspGKForms.isGKSubmodule_cuspFormGKSubmodule hPr hθ M) hf
end GlobalTheory.CuspGKForms
end
end


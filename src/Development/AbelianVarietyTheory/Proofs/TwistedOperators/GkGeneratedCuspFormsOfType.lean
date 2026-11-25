module

public import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.ConjAtFixedIff
public import Formalism.LocalToGlobal.BesselHermitianTheta.TiedType
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RderMemAutFormsCuspForms
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsAllTiedNotStable
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOnAtTau
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOneP
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HasTypeAllAddOfEquiv
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RealPlacePointCommuteOfNePlace
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.DiscreteSeriesHermitianUniqueOfClassification
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Formalism.LocalToGlobal.GlobalTheory.GL5.FamilyMassVolumeIdentityOfClassDecomp
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.SignatureExists
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FinitePartTypes
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsSumOfMemMultSpan
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiscreteSeriesModelUnitaryIrreducibleOrthonormal

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun
open scoped TensorProduct
open Classical

noncomputable section

namespace GlobalTheory.CuspGKForms

open Matrix Filter Topology GlobalTheory.TypeSum GlobalTheory.PointAtPlaceHom GlobalTheory.Mem.AutSpace GlobalTheory.Mem.RealTranslate GlobalTheory.IndefiniteRowSideFullHecke.FinitePartTypes GlobalTheory.CuspGK
open Formalism.IndefR.Mult

variable {D : D7} {θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)} {V : HSp D}

theorem exists_sigOK (V : HSp D) : ∃ s, (GlobalTheory.SmoothAutCheck.reSig V s).SigOK := by
  have h : ∀ ρ : D.host.E →+* ℂ, ∃ pq : ℕ × ℕ, Formalism.UG.HasSignature (V.gram.map ρ) pq.1 pq.2 := fun ρ => by
    have hd : IsUnit (V.gram.map ρ).det := by
      have : (V.gram.map ρ).det = ρ V.gram.det := (RingHom.map_det _ _).symm
      rw [this, isUnit_iff_ne_zero]
      exact (map_ne_zero _).2 (GlobalTheory.SmoothAutCheck.gram_det_ne V)
    have hh : Formalism.UG.IsHerm (starRingEnd ℂ) (V.gram.map ρ) := by
      ext i j
      have hcm := D.host.isCMField_hostE
      have h1 : star (V.hT (V.frame j) (V.frame i)) = V.hT (V.frame i) (V.frame j) := V.herm.eq _ _
      simp only [Formalism.UG.cT, transpose_apply, map_apply, HSpace.gram]
      rw [← h1]
      exact (NumberField.IsCMField.complexEmbedding_complexConj _ ρ _).symm
    obtain ⟨p, q, h⟩ := Formalism.UG.P.signature_exists _ _ hh hd
    exact ⟨(p, q), h⟩
  choose s hs using h
  exact ⟨s, hs⟩

theorem goodPar_of_isTypeAt (hV : V.SigOK) {τ : D.what₂.Tau} {S : SPar} {φ : GA D V → ℂ} (h : IsTypeAt θ V τ S φ) :
    GoodPar V.rank (V.sig (tauE D τ)).1 (V.sig (tauE D τ)).2 S := by
  obtain ⟨H, _, _, σ, lam, ε, P, hE, hD, hP, hJ, -⟩ := h
  obtain ⟨e1, e2⟩ := GlobalTheory.TypeAtCompare.card_eq_of_congr hP hJ (hV (tauE D τ))
  exact ⟨lam, ε, hE, GlobalTheory.Published.HermitianUnique.isHCParam_of_isDS hE.1 hD, e1, e2⟩

theorem isTypeAt_rTr_same (hθ : IsInfFam θ) {τ : D.what₂.Tau} {S : SPar} {φ : GA D V → ℂ} (h : IsTypeAt θ V τ S φ)
    {k : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hk : k ∈ Formalism.QuantumDeterminants.UH (gramAt D V τ)) :
    IsTypeAt θ V τ S (rTr V (atTau θ V τ k) φ) := by
  obtain ⟨H, _, _, σ, lam, ε, P, hE, hD, hP, hJ, h⟩ := h
  refine ⟨H, _, _, σ, lam, ε, P, hE, hD, hP, hJ, fun x => ?_⟩
  have hσ := hD.2.2.1
  have hG : IsUnit (gramAt D V τ) := (isUnit_iff_isUnit_det _).2 (GlobalTheory.SmoothAutCheck.gramAt_unit V τ)
  have hk' : kᴴ * gramAt D V τ * k = gramAt D V τ := hk
  have hku : IsUnit k := by
    have := congrArg Matrix.det hk'
    rw [det_mul] at this
    rw [isUnit_iff_isUnit_det]
    exact isUnit_of_mul_isUnit_right (this ▸ GlobalTheory.SmoothAutCheck.gramAt_unit V τ)
  have a1 : k * k⁻¹ = 1 := Matrix.mul_nonsing_inv _ ((isUnit_iff_isUnit_det _).1 hku)
  have a2 : k⁻¹ * k = 1 := Matrix.nonsing_inv_mul _ ((isUnit_iff_isUnit_det _).1 hku)
  have b2 : P⁻¹ * P = 1 := Matrix.nonsing_inv_mul _ ((isUnit_iff_isUnit_det _).1 hP)
  have hki : k⁻¹ ∈ Formalism.QuantumDeterminants.UH (gramAt D V τ) := by
    show (k⁻¹)ᴴ * gramAt D V τ * k⁻¹ = gramAt D V τ
    calc (k⁻¹)ᴴ * gramAt D V τ * k⁻¹ = (k⁻¹)ᴴ * (kᴴ * gramAt D V τ * k) * k⁻¹ := by rw [hk']
      _ = (k * k⁻¹)ᴴ * gramAt D V τ * (k * k⁻¹) := by simp only [conjTranspose_mul, Matrix.mul_assoc]
      _ = _ := by rw [a1]; simp
  have hm := _root_.GlobalTheory.HolDict.ModelRep.conj_mem hP hJ hk
  have t0 : HasTypeAll (lieOf (gramAt D V τ)) (Formalism.QuantumDeterminants.UH (gramAt D V τ)) (fun g => σ (P * g * P⁻¹))
      fun g => φ (x * atTau θ V τ k * atTau θ V τ g) := hasTypeAll_iff.2 (h (x * atTau θ V τ k))
  have t1 := hasTypeAll_transport _ H H (fun g => σ (P * g * P⁻¹)) (fun g => σ (P * g * P⁻¹)) _ _ k hG hku hk'
    (opEquiv hσ hm) (fun g hg v => by
      have m1 := _root_.GlobalTheory.HolDict.ModelRep.conj_mem hP hJ hg
      have m2 := _root_.GlobalTheory.HolDict.ModelRep.conj_mem hP hJ (mul_mem_UH (mul_mem_UH hk hg) hki)
      show σ (P * k * P⁻¹) (σ (P * g * P⁻¹) v) = σ (P * (k * g * k⁻¹) * P⁻¹) (σ (P * k * P⁻¹) v)
      rw [← sigma_mul hσ hm m1, ← sigma_mul hσ m2 hm]
      congr 2
      calc P * k * P⁻¹ * (P * g * P⁻¹) = P * k * (P⁻¹ * P) * g * (k⁻¹ * k) * P⁻¹ := by
            rw [a2, Matrix.mul_one]; simp only [Matrix.mul_assoc]
        _ = P * k * g * k⁻¹ * (P⁻¹ * P) * k * P⁻¹ := by rw [b2]; simp only [Matrix.mul_assoc, Matrix.mul_one]
        _ = _ := by simp only [Matrix.mul_assoc]) _ t0
  obtain ⟨v, h1, ℓ, h2, h3, h4⟩ := hasTypeAll_iff.1 t1
  refine ⟨v, h1, ℓ, h2, h3, fun g hg => ?_⟩
  have e : x * atTau θ V τ k * atTau θ V τ (k⁻¹ * g * k) = x * atTau θ V τ g * atTau θ V τ k := by
    rw [mul_assoc x, mul_assoc x, ← atTau_mul hθ V τ hk (mul_mem_UH (mul_mem_UH hki hg) hk), ← atTau_mul hθ V τ hg hk,
      ← Matrix.mul_assoc, ← Matrix.mul_assoc, a1, Matrix.one_mul]
  have := h4 g hg
  simp only [e] at this
  exact this

theorem isTypeAt_rTr (hθ : IsInfFam θ) {τ τ' : D.what₂.Tau} {S : SPar} {φ : GA D V → ℂ} (h : IsTypeAt θ V τ' S φ)
    {k : Matrix (Fin V.rank) (Fin V.rank) ℂ} (hk : k ∈ Formalism.QuantumDeterminants.UH (gramAt D V τ)) :
    IsTypeAt θ V τ' S (rTr V (atTau θ V τ k) φ) := by
  by_cases c : τ = τ'
  · subst c
    exact isTypeAt_rTr_same hθ h hk
  obtain ⟨H, _, _, σ, lam, ε, P, hE, hD, hP, hJ, h⟩ := h
  refine ⟨H, _, _, σ, lam, ε, P, hE, hD, hP, hJ, fun x => ?_⟩
  obtain ⟨v, h1, ℓ, h2, h3, h4⟩ := h (x * atTau θ V τ k)
  refine ⟨v, h1, ℓ, h2, h3, fun g hg => ?_⟩
  have := h4 g hg
  rw [mul_assoc x, GlobalTheory.PointAtPlaceComm.atTau_comm D θ hθ V τ τ' c k hk g hg, ← mul_assoc x] at this
  exact this

theorem exists_quotient_near (hθ : IsInfFam θ) {τ : D.what₂.Tau} {X : Matrix (Fin V.rank) (Fin V.rank) ℂ}
    (hX : X ∈ lieAt V τ) {φ : GA D V → ℂ} (hφ : IsAutFunSm θ V φ) {C : Set (GA D V)} (hC : IsCompact C) {δ : ℝ}
    (hδ : 0 < δ) : ∃ t : ℝ, ∀ x ∈ C,
      ‖Rder θ V τ X φ x - (((t : ℂ)⁻¹) • (rTr V (oneP θ V τ X t) φ + (-1 : ℂ) • φ)) x‖ < δ := by
  haveI : IsTopologicalGroup (GA D V) := Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.Unfold.topGroupHA _ _
  have hc := (GlobalTheory.CuspLie.isAutFunSm_Rder hθ hX hφ).cont
  have hu := GlobalTheory.Mem.Lift.continuous_oneP hθ hX
  have h0 := GlobalTheory.Mem.Lift.oneP_zero (V := V) (τ := τ) (X := X) hθ
  have hd := GlobalTheory.Mem.Lift.hasDerivAt_oneP hθ hX (GlobalTheory.Mem.Lift.hasDerivAt_Rder hφ.smooth hX)
  set ψ := Rder θ V τ X φ
  have ev : ∀ᶠ t in 𝓝 (0 : ℝ), ∀ x ∈ C, ‖ψ (x * oneP θ V τ X t) - ψ x‖ < δ / 2 := by
    refine hC.eventually_forall_of_forall_eventually fun y _ => ?_
    have cF : Continuous fun z : ℝ × GA D V => ‖ψ (z.2 * oneP θ V τ X z.1) - ψ z.2‖ :=
      ((hc.comp (continuous_snd.mul (hu.comp continuous_fst))).sub (hc.comp continuous_snd)).norm
    refine cF.continuousAt.eventually_lt continuousAt_const ?_
    simp only [h0, mul_one, sub_self, norm_zero]
    linarith
  obtain ⟨η, hη, hb⟩ := Metric.eventually_nhds_iff.1 ev
  refine ⟨η / 2, fun x hx => ?_⟩
  have hp : 0 < η / 2 := by linarith
  have key := norm_image_sub_le_of_norm_deriv_le_segment' (f := fun s : ℝ => φ (x * oneP θ V τ X s) - (s : ℂ) * ψ x)
    (f' := fun s => ψ (x * oneP θ V τ X s) - ψ x) (a := 0) (b := η / 2) (C := δ / 2)
    (fun s _ => by
      have := (hd x s).fun_sub ((Complex.ofRealCLM.hasDerivAt (x := s)).mul_const (ψ x))
      simpa using this.hasDerivWithinAt)
    (fun s hs => (hb (by rw [Real.dist_eq, sub_zero, abs_of_nonneg hs.1]; linarith [hs.2]) x hx).le)
    (η / 2) ⟨hp.le, le_rfl⟩
  set t := η / 2
  have ht : (t : ℂ) ≠ 0 := by exact_mod_cast hp.ne'
  have e : ψ x - (((t : ℂ)⁻¹) • (rTr V (oneP θ V τ X t) φ + (-1 : ℂ) • φ)) x =
      -(t : ℂ)⁻¹ * ((φ (x * oneP θ V τ X t) - (t : ℂ) * ψ x) - (φ (x * oneP θ V τ X 0) - ((0 : ℝ) : ℂ) * ψ x)) := by
    simp only [h0, mul_one, Pi.smul_apply, Pi.add_apply, rTr, smul_eq_mul, Complex.ofReal_zero]
    field_simp
    ring
  rw [e, norm_mul, norm_neg, norm_inv, Complex.norm_real, Real.norm_of_nonneg hp.le, inv_mul_lt_iff₀ hp]
  refine key.trans_lt ?_
  nlinarith

variable {S : D.what₂.Tau → SPar}

end GlobalTheory.CuspGKForms

end

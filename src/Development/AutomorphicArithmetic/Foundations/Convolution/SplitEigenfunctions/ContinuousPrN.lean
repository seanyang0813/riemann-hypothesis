module

public import Development.AutomorphicArithmetic.Foundations.Convolution.SplitEigenfunctions.ThetaLiftEqAnisotropicPart
public import Development.AutomorphicArithmetic.Foundations.Convolution.RealGroupAnalysis.ReductionDomains.ContinuousEntry
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Development.AutomorphicArithmetic.Foundations.Convolution.RealGroupAnalysis.UnitaryActions.ContinuousAdelicGL2OfContinuousEntries

@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology Filter
open Neutral.B1 Formalism.L2.Host Formalism.ConjugateSelfDual GlobalTheory.CuspRep GlobalTheory.GalOfCusp UpperTheory.V UpperTheory.V.Af UpperTheory.V.Published GroundTheory.Global GroundTheory.Automorphic.GJMatrix
open UpperTheory.ConvolutionTheory.R2 UpperTheory.ConvolutionTheory.R2.Ff UpperTheory.ConvolutionTheory.RankTwoDescent
open scoped Classical Pointwise ENNReal

noncomputable section SlopeTestRemainingChoices

variable {E : Type} [Field E] [NumberField E]

private abbrev dt (g : GL (Fin 2) (A E)) : (A E)ˣ := Matrix.GeneralLinearGroup.det g

private def pr (g : GL (Fin 2) (A E)) : G1 E :=
  ⟨(g * (dM (dt g))⁻¹).val, by
    have h : dt (g * (dM (dt g))⁻¹) = 1 := by
      rw [dt, map_mul, map_inv, det_dM, mul_inv_cancel]
    exact congrArg Units.val h⟩

private theorem gl_pr (g : GL (Fin 2) (A E)) : gl (pr g) = g * (dM (dt g))⁻¹ := Units.ext rfl

private theorem pr_gl_mul (h : G1 E) (g : GL (Fin 2) (A E)) : pr (gl h * g) = h * pr g := by
  apply M.gl_inj
  have hm : gl (h * pr g) = gl h * gl (pr g) := map_mul _ h (pr g)
  rw [hm, gl_pr, gl_pr, dt, map_mul _ (gl h) g, det_gl, one_mul, mul_assoc]

private theorem gl_pr_mul (g : GL (Fin 2) (A E)) : gl (pr g) * dM (dt g) = g := by
  rw [gl_pr, inv_mul_cancel_right]

private theorem continuous_pr : Continuous (pr : GL (Fin 2) (A E) → G1 E) := by
  refine Continuous.subtype_mk ?_ _
  exact Units.continuous_val.comp
    (continuous_id.mul (continuous_dM.comp Matrix.GeneralLinearGroup.continuous_det).inv)

private theorem exists_V : ∃ V : Set (GL (Fin 2) (A E)), IsOpen V ∧ (1 : GL (Fin 2) (A E)) ∈ V ∧
    ∀ e : Eˣ, dM (IdeleGroup.diagonal E e) ∈ V → dM (IdeleGroup.diagonal E e) = 1 := by
  haveI := GroundTheory.Automorphic.AdelicGLn.discreteTopology_rationalGL E 2
  obtain ⟨V, hV, hVe⟩ := isOpen_induced_iff.1
    (isOpen_discrete ({1} : Set (GroundTheory.Automorphic.AdelicGLn.rationalGL E 2)))
  refine ⟨V, hV, ?_, fun e he => ?_⟩
  · have : (1 : GroundTheory.Automorphic.AdelicGLn.rationalGL E 2) ∈ Subtype.val ⁻¹' V := by rw [hVe]; rfl
    exact this
  · have hin : (⟨_, exists_ratGL_dM e⟩ :
        GroundTheory.Automorphic.AdelicGLn.rationalGL E 2) ∈ Subtype.val ⁻¹' V := he
    rw [hVe] at hin
    exact congrArg Subtype.val (Set.mem_singleton_iff.1 hin)

private theorem exists_U {U : Set (A E)ˣ} (hU : U ∈ 𝓝 (1 : (A E)ˣ)) :
    ∃ W K₀ : Set (A E)ˣ, IsOpen W ∧ (1 : (A E)ˣ) ∈ W ∧ IsCompact K₀ ∧ W ⊆ K₀ ∧ ∀ x ∈ W, ∀ y ∈ W, x * y⁻¹ ∈ U := by
  have hf : Continuous fun p : (A E)ˣ × (A E)ˣ => p.1 * p.2⁻¹ := continuous_fst.mul continuous_snd.inv
  have hf1 : (fun p : (A E)ˣ × (A E)ˣ => p.1 * p.2⁻¹) ⁻¹' U ∈ 𝓝 ((1 : (A E)ˣ), (1 : (A E)ˣ)) :=
    hf.continuousAt.preimage_mem_nhds (by simpa using hU)
  obtain ⟨U₁, hU₁, U₂, hU₂, hUU⟩ := mem_nhds_prod_iff.1 hf1
  obtain ⟨K₀, hK₀, hK₀n⟩ := exists_compact_mem_nhds (1 : (A E)ˣ)
  refine ⟨interior (K₀ ∩ (U₁ ∩ U₂)), K₀, isOpen_interior,
    mem_interior_iff_mem_nhds.2 (inter_mem hK₀n (inter_mem hU₁ hU₂)), hK₀,
    interior_subset.trans Set.inter_subset_left, ?_⟩
  intro x hx y hy
  exact hUU (Set.mk_mem_prod (interior_subset hx).2.1 (interior_subset hy).2.2)

private theorem exists_sep : ∃ W K₀ : Set (A E)ˣ, IsOpen W ∧ (1 : (A E)ˣ) ∈ W ∧ IsCompact K₀ ∧ W ⊆ K₀ ∧
    ∀ x ∈ W, ∀ y ∈ W, ∀ e : Eˣ, IdeleGroup.diagonal E e = x * y⁻¹ → e = 1 := by
  obtain ⟨V, hV, h1, hs⟩ := exists_V (E := E)
  have hU : dM ⁻¹' V ∈ 𝓝 (1 : (A E)ˣ) :=
    (hV.preimage continuous_dM).mem_nhds (by show dM 1 ∈ V; rw [M.dM_one]; exact h1)
  obtain ⟨W, K₀, hW, h1W, hK, hWK, hWW⟩ := exists_U hU
  refine ⟨W, K₀, hW, h1W, hK, hWK, fun x hx y hy e he => ?_⟩
  have hm : dM (IdeleGroup.diagonal E e) ∈ V := by rw [he]; exact hWW x hx y hy
  have h2 := hs e hm
  have h3 : IdeleGroup.diagonal E e = 1 := by
    rw [← det_dM (IdeleGroup.diagonal E e), h2, map_one]
  have h4 := congrArg (Units.val) h3
  rw [IdeleGroup.coe_diagonal] at h4
  refine Units.ext (AdeleRing.algebraMap_injective (𝓞 E) E ?_)
  simpa using h4

private abbrev NG (E : Type) [Field E] [NumberField E] : Type := GroundTheory.Automorphic.Reduction.normOneGL (K := E) (n := 2)

private theorem gl_mem (h : G1 E) : gl h ∈ GroundTheory.Automorphic.Reduction.normOneGL (K := E) (n := 2) := by
  rw [GroundTheory.Automorphic.Reduction.mem_normOneGL]
  show ((IdeleGroup.ideleModule E (dt (gl h)) : {r : ℝ // 0 < r}) : ℝ) = 1
  rw [dt, det_gl, map_one]
  rfl

private def glN (h : G1 E) : NG E := ⟨gl h, gl_mem h⟩

private def prN (g : NG E) : G1 E := pr g.1

private def dN (g : NG E) : (A E)ˣ := dt g.1

private theorem continuous_prN : Continuous (prN : NG E → G1 E) := continuous_pr.comp continuous_subtype_val
private theorem continuous_dN : Continuous (dN : NG E → (A E)ˣ) :=
  Matrix.GeneralLinearGroup.continuous_det.comp continuous_subtype_val

private theorem prN_glN_mul (h : G1 E) (g : NG E) : prN (glN h * g) = h * prN g := pr_gl_mul h g.1
private theorem dN_glN_mul (h : G1 E) (g : NG E) : dN (glN h * g) = dN g := by
  show dt (gl h * g.1) = dt g.1
  rw [dt, map_mul _ (gl h) g.1, det_gl, one_mul]

private def pm (W : Set (A E)ˣ) : Measure (G1 E) :=
  ((Measure.haar : Measure (NG E)).restrict (dN ⁻¹' W)).map prN

private theorem pm_apply {W : Set (A E)ˣ} {B : Set (G1 E)} (hB : MeasurableSet B) :
    pm W B = (Measure.haar : Measure (NG E)) (prN ⁻¹' B ∩ dN ⁻¹' W) := by
  rw [pm, Measure.map_apply continuous_prN.measurable hB]
  exact Measure.restrict_apply (continuous_prN.measurable hB)

private theorem pm_left {W : Set (A E)ˣ} : (pm W).IsMulLeftInvariant := by
  refine ⟨fun h => Measure.ext fun B hB => ?_⟩
  rw [Measure.map_apply (measurable_const_mul h) hB, pm_apply hB, pm_apply (measurable_const_mul h hB)]
  have e : (glN h * ·) ⁻¹' (prN ⁻¹' B ∩ dN ⁻¹' W) = prN ⁻¹' ((h * ·) ⁻¹' B) ∩ dN ⁻¹' W := by
    ext g
    simp only [Set.mem_preimage, Set.mem_inter_iff, prN_glN_mul, dN_glN_mul]
  rw [← e]
  exact measure_preimage_mul (Measure.haar : Measure (NG E)) (glN h) _

private theorem pm_fin {W K₀ : Set (A E)ˣ} (hK : IsCompact K₀) (hWK : W ⊆ K₀) :
    IsFiniteMeasureOnCompacts (pm W) := by
  refine ⟨fun K hKc => ?_⟩
  rw [pm_apply hKc.measurableSet]
  have hQ : IsCompact ((gl '' K) * (dM '' K₀) : Set (GL (Fin 2) (A E))) :=
    (hKc.image M.continuous_gl).mul (hK.image continuous_dM)
  have hC : IsCompact (Subtype.val ⁻¹' ((gl '' K) * (dM '' K₀)) : Set (NG E)) :=
    GroundTheory.Automorphic.Reduction.isClosed_normOneGL.isClosedEmbedding_subtypeVal.isCompact_preimage hQ
  refine (measure_mono ?_).trans_lt hC.measure_lt_top
  rintro g ⟨hg1, hg2⟩
  exact ⟨_, ⟨_, hg1, rfl⟩, _, ⟨_, hWK hg2, rfl⟩, gl_pr_mul g.1⟩

private theorem pm_ne {W : Set (A E)ˣ} (hW : IsOpen W) (h1 : (1 : (A E)ˣ) ∈ W) : pm W ≠ 0 := by
  intro h0
  have e := pm_apply (W := W) (B := Set.univ) MeasurableSet.univ
  rw [h0, Set.preimage_univ, Set.univ_inter] at e
  have hpos := (hW.preimage continuous_dN).measure_pos (Measure.haar : Measure (NG E))
    ⟨1, by show dt (1 : GL (Fin 2) (A E)) ∈ W; rw [dt, map_one]; exact h1⟩
  rw [← e] at hpos
  simp at hpos

private theorem null_of_disj {W : Set (A E)ˣ} (N : MeasE E) (c : NNReal) (hc : pm W = c • N.μ)
    (η : GroundTheory.Automorphic.Reduction.rationalGLOne (K := E) (n := 2)) (hη : η ≠ 1)
    (hsep : ∀ x ∈ W, ∀ y ∈ W, ∀ e : Eˣ, IdeleGroup.diagonal E e = x * y⁻¹ → e = 1) :
    (Measure.haar : Measure (NG E)) (η • (prN ⁻¹' N.D ∩ dN ⁻¹' W) ∩ (prN ⁻¹' N.D ∩ dN ⁻¹' W)) = 0 := by
  obtain ⟨γ₀, hγ₀⟩ := η.2
  have hηv : ((η : NG E) : GL (Fin 2) (A E)) = ratGL E 2 γ₀ := hγ₀.symm
  by_cases he : Matrix.GeneralLinearGroup.det γ₀ = 1
  · have hd : γ₀.val.det = 1 := congrArg Units.val he
    let s₀ : Matrix.SpecialLinearGroup (Fin 2) E := ⟨γ₀.val, hd⟩
    have hgl : gl (ratS E s₀) = ratGL E 2 γ₀ :=
      (gl_ratS s₀).trans (congrArg (ratGL E 2) (Units.ext rfl))
    let sG : Gam E := ⟨ratS E s₀, s₀, rfl⟩
    have hsN : glN (sG : G1 E) = (η : NG E) := Subtype.ext (hgl.trans hηv.symm)
    have hs1 : sG ≠ 1 := by
      intro h
      apply hη
      refine Subtype.ext ?_
      rw [← hsN, h]
      exact Subtype.ext (map_one (Matrix.SpecialLinearGroup.toGL (n := Fin 2) (R := A E)))
    have hz : N.μ ((sG • N.D) ∩ (1 : Gam E) • N.D) = 0 := N.fund.aedisjoint hs1
    rw [one_smul] at hz
    have hB : MeasurableSet ((sG • N.D) ∩ N.D) := (N.meas.const_smul sG).inter N.meas
    have hp : pm W ((sG • N.D) ∩ N.D) = 0 := by
      rw [hc]
      simp [hz]
    rw [pm_apply hB] at hp
    refine measure_mono_null ?_ hp
    rintro x ⟨⟨a, ⟨ha1, -⟩, rfl⟩, hx1, hx2⟩
    refine ⟨⟨?_, hx1⟩, hx2⟩
    refine ⟨prN a, ha1, ?_⟩
    show (sG : G1 E) * prN a = prN ((η : NG E) * a)
    rw [← hsN, prN_glN_mul]
  · have : η • (prN ⁻¹' N.D ∩ dN ⁻¹' W) ∩ (prN ⁻¹' N.D ∩ dN ⁻¹' W) = ∅ := by
      refine Set.eq_empty_of_forall_notMem ?_
      rintro x ⟨⟨a, ⟨-, ha2⟩, rfl⟩, -, hx2⟩
      apply he
      refine hsep _ hx2 _ ha2 _ ?_
      show IdeleGroup.diagonal E _ = dt ((η : NG E).1 * a.1) * (dt a.1)⁻¹
      rw [dt, map_mul _ (η : NG E).1 a.1, mul_inv_cancel_right, hηv, det_ratGL]
    rw [this]
    simp

end SlopeTestRemainingChoices

theorem UpperTheory.ConvolutionTheory.RankTwoDescent.volE :
    VolE := by
  intro E _ _ N
  obtain ⟨W, K₀, hW, h1, hK, hWK, hsep⟩ := exists_sep (E := E)
  haveI := N.haar
  haveI := pm_left (W := W)
  haveI := pm_fin hK hWK
  obtain ⟨c, hc⟩ : ∃ c : NNReal, pm W = c • N.μ := ⟨_, Measure.isMulLeftInvariant_eq_smul _ _⟩
  have hc0 : c ≠ 0 := by
    intro h
    apply pm_ne hW h1
    rw [hc, h, zero_smul]
  set μG : Measure (NG E) := Measure.haar with hμG
  have hF := GroundTheory.Automorphic.RightCosetSpace.isFundamentalDomain_fundamentalDomain
    (GroundTheory.Automorphic.Reduction.rationalGLOne (K := E) (n := 2)) μG
  have hFin : μG (GroundTheory.Automorphic.RightCosetSpace.fundamentalDomain (GroundTheory.Automorphic.Reduction.rationalGLOne (K := E) (n := 2))) < ⊤ := by
    haveI := GroundTheory.Automorphic.Reduction.isFiniteMeasure_quotientMeasure μG
    rw [← GroundTheory.Automorphic.RightCosetSpace.quotientMeasure_univ μG hF]
    exact measure_lt_top _ _
  have hSm : MeasurableSet (prN ⁻¹' N.D ∩ dN ⁻¹' W) :=
    (continuous_prN.measurable N.meas).inter (hW.preimage continuous_dN).measurableSet
  have hS : μG (prN ⁻¹' N.D ∩ dN ⁻¹' W) = c * N.μ N.D := by
    rw [← pm_apply N.meas, hc]
    rfl
  haveI h₀ : SMulInvariantMeasure (NG E) (NG E) μG := ⟨fun a s _ => measure_preimage_mul μG a s⟩
  haveI h₁ : SMulInvariantMeasure (GroundTheory.Automorphic.Reduction.rationalGLOne (K := E) (n := 2)) (NG E) μG :=
    Subgroup.smulInvariantMeasure _
  have hpair : Pairwise (Function.onFun (AEDisjoint μG) fun g : GroundTheory.Automorphic.Reduction.rationalGLOne (K := E) (n := 2) =>
      g • (prN ⁻¹' N.D ∩ dN ⁻¹' W) ∩ GroundTheory.Automorphic.RightCosetSpace.fundamentalDomain (GroundTheory.Automorphic.Reduction.rationalGLOne (K := E) (n := 2))) := by
    intro γ γ' hne
    refine AEDisjoint.mono ?_ Set.inter_subset_left Set.inter_subset_left
    show μG (γ • (prN ⁻¹' N.D ∩ dN ⁻¹' W) ∩ γ' • (prN ⁻¹' N.D ∩ dN ⁻¹' W)) = 0
    have e : γ • (prN ⁻¹' N.D ∩ dN ⁻¹' W) ∩ γ' • (prN ⁻¹' N.D ∩ dN ⁻¹' W) =
        γ' • ((γ'⁻¹ * γ) • (prN ⁻¹' N.D ∩ dN ⁻¹' W) ∩ (prN ⁻¹' N.D ∩ dN ⁻¹' W)) := by
      conv_rhs => rw [Set.smul_set_inter, smul_smul, mul_inv_cancel_left]
    rw [e, measure_smul]
    exact null_of_disj N c hc _ (fun h => hne (by rw [inv_mul_eq_one] at h; exact h.symm)) hsep
  have hle := hF.measure_le_of_pairwise_disjoint hSm.nullMeasurableSet hpair
  have hlt : (c : ENNReal) * N.μ N.D < ⊤ := hS ▸ hle.trans_lt hFin
  by_contra htop
  rw [not_lt, top_le_iff] at htop
  rw [htop, ENNReal.mul_top (by exact_mod_cast hc0)] at hlt
  exact lt_irrefl _ hlt

module

import Development.AutomorphicArithmetic.Foundations.Convolution.IntegrableConvolution.TensFactorAlt
public import Development.AutomorphicArithmetic.Foundations.Convolution.IntegrableConvolution.TensFactor
public import Development.AutomorphicArithmetic.Foundations.Convolution.PowerSumTraces.OfinProd
public import Development.AutomorphicArithmetic.Foundations.Convolution.ConvolutionKernels.KernelTransforms.CommPrj
public import Development.AutomorphicArithmetic.Foundations.Convolution.ConvolutionKernels.KernelTransforms.CompatEx
public import Development.AutomorphicArithmetic.Foundations.Convolution.ConvolutionKernels.KernelTransforms.FinTens
public import Development.AutomorphicArithmetic.Foundations.Convolution.ConvolutionKernels.KernelTransforms.LocEmb
public import Development.AutomorphicArithmetic.Foundations.Convolution.ConvolutionKernels.KernelTransforms.RrTens
public import Development.AutomorphicArithmetic.Foundations.Convolution.IntegrableConvolution.EigBasic
public import Development.AutomorphicArithmetic.Foundations.Convolution.PowerSumTraces.FixLev
public import Development.AutomorphicArithmetic.Foundations.Convolution.PowerSumTraces.TvDefs
public import Development.AutomorphicArithmetic.Foundations.Convolution.PowerSumTraces.TwistFactor
public import Development.AutomorphicArithmetic.Foundations.Convolution.ConvolutionKernels.KernelTransforms.TensEProd
public import Development.AutomorphicArithmetic.Foundations.Convolution.GeneralizedMeasures.ContinuousMapGL
import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup
import GroundTheory.GlobalFields.LocalAtPlace
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Separation.Connected

@[expose] public section

open MeasureTheory NumberField IsDedekindDomain Filter GroundTheory.Automorphic GroundTheory.Automorphic.Reduction GroundTheory.Automorphic.RightCosetSpace GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.CuspidalSpectrum GlobalTheory.IndefiniteRowSideFullHecke.IwahoriDoubleCosets GlobalTheory.PRep Formalism.BasicNotions GlobalTheory.CuspRep GlobalTheory.SmGL PositivityTheory.Rg.Tf.Core PositivityTheory.Rg.Tf.Geo GroundTheory.Global GroundTheory.Global.SemiLocal UpperTheory.ConvolutionTheory UpperTheory.ConvolutionTheory.L1 UpperTheory.ConvolutionTheory.C
open scoped ComplexConjugate Classical InnerProductSpace

noncomputable section

namespace UpperTheory.EigenspaceProjectionTraces

private theorem ops_key {M : Type*} [Monoid M] (b₁ b₂ P Q O : M) (habs : b₁ = b₁ * P) (hc : b₂ * P = P * b₂)
    (hO : P * Q = O) : b₁ * (b₂ * O) = b₁ * b₂ * Q := by
  subst hO
  rw [← mul_assoc b₂, hc, mul_assoc P, ← mul_assoc b₁, ← habs, mul_assoc]

private noncomputable def glue {ι : Type} {R : ι → Type} [∀ i, CommRing (R i)] {n : ℕ} (g : ∀ i, GL (Fin n) (R i)) :
    GL (Fin n) (∀ i, R i) where
  val := Matrix.of fun a b i => (g i : Matrix (Fin n) (Fin n) (R i)) a b
  inv := Matrix.of fun a b i => ((g i)⁻¹ : GL (Fin n) (R i)) a b
  val_inv := by
    ext a b i
    have := congrFun (congrFun (g i).mul_inv a) b
    simp only [Matrix.mul_apply, Matrix.of_apply, Finset.sum_apply, Pi.mul_apply, Matrix.one_apply] at this ⊢
    rw [this]; split_ifs <;> rfl
  inv_val := by
    ext a b i
    have := congrFun (congrFun (g i).inv_mul a) b
    simp only [Matrix.mul_apply, Matrix.of_apply, Finset.sum_apply, Pi.mul_apply, Matrix.one_apply] at this ⊢
    rw [this]; split_ifs <;> rfl

private theorem glue_cont {ι : Type} {R : ι → Type} [∀ i, CommRing (R i)] [∀ i, TopologicalSpace (R i)] {n : ℕ} :
    Continuous (glue : (∀ i, GL (Fin n) (R i)) → GL (Fin n) (∀ i, R i)) := by
  refine Units.continuous_iff.2 ⟨?_, ?_⟩
  · refine continuous_pi fun a => continuous_pi fun b => continuous_pi fun i => ?_
    exact (Units.continuous_val.comp (continuous_apply i)).matrix_elem a b
  · refine continuous_pi fun a => continuous_pi fun b => continuous_pi fun i => ?_
    exact (Units.continuous_coe_inv.comp (continuous_apply i)).matrix_elem a b

section Main

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

private theorem cmp_cont {v : Pl F} (w : PlacesOver E v) : Continuous (GM.cmp (n := n) w) := by
  refine Units.continuous_iff.2 ⟨?_, ?_⟩
  · refine continuous_pi fun a => continuous_pi fun b => ?_
    exact (continuous_apply w).comp (Units.continuous_val.matrix_elem a b)
  · refine continuous_pi fun a => continuous_pi fun b => ?_
    exact (continuous_apply w).comp (Units.continuous_coe_inv.matrix_elem a b)

private theorem liesOver_under (w : Pl E) : w.asIdeal.LiesOver (w.under (𝓞 F)).asIdeal := ⟨rfl⟩

private theorem under_eq {v : Pl F} (w : PlacesOver E v) : w.1.under (𝓞 F) = v :=
  HeightOneSpectrum.ext w.2.over.symm

private theorem finite_under (S : Set (Pl F)) (hS : S.Finite) :
    {w : Pl E | w.under (𝓞 F) ∈ S}.Finite := by
  refine (hS.biUnion fun v _ => Set.finite_range (Subtype.val : PlacesOver E v → Pl E)).subset ?_
  intro w hw
  exact Set.mem_biUnion hw ⟨⟨w, liesOver_under w⟩, rfl⟩

private theorem iwCoset_zero (w : Pl E) :
    GM.iwCoset w (0 : Fin n → ℤ) = (GLnLocal.iwahori (w.adicCompletion E) n : Set (Gw n w)) := by
  have hd : Cartan.diagPow (w.adicCompletion E) n (0 : Fin n → ℤ) = 1 := by
    apply Units.ext
    rw [Cartan.coe_diagPow]
    simp
  ext g
  constructor
  · rintro ⟨a, ha, b, hb, rfl⟩
    rw [hd, mul_one]
    exact mul_mem ha hb
  · intro hg
    exact ⟨g, hg, 1, one_mem _, by rw [hd, mul_one, mul_one]⟩

private theorem iw_test (w : Pl E) :
    IsLocallyConstant (((GLnLocal.iwahori (w.adicCompletion E) n : Set (Gw n w))).indicator (1 : Gw n w → ℂ)) ∧
      HasCompactSupport (((GLnLocal.iwahori (w.adicCompletion E) n : Set (Gw n w))).indicator (1 : Gw n w → ℂ)) := by
  have ho := GLnLocal.isOpen_iwahori (w.adicCompletion E) n
  have hc := GLnLocal.isCompact_iwahori (w.adicCompletion E) n
  refine ⟨?_, HasCompactSupport.intro hc fun x hx => Set.indicator_of_notMem hx _⟩
  rw [IsLocallyConstant.iff_exists_open]
  intro x
  by_cases hx : x ∈ (GLnLocal.iwahori (w.adicCompletion E) n : Set (Gw n w))
  · exact ⟨_, ho, hx, fun y hy => by rw [Set.indicator_of_mem hy, Set.indicator_of_mem hx]; rfl⟩
  · exact ⟨_, hc.isClosed.isOpen_compl, hx, fun y hy => by
      rw [Set.indicator_of_notMem hy, Set.indicator_of_notMem hx]⟩

private theorem prodFn_eq {v : Pl F} (h : ∀ w : PlacesOver E v, GL (Fin n) (w.1.adicCompletion E) → ℂ)
    [Fintype (PlacesOver E v)] : GM.prodFn h = fun g => ∏ w, h w (GM.cmp w g) :=
  funext fun _ => finprod_eq_prod_of_fintype _

private theorem prodFn_test {v : Pl F} (h : ∀ w : PlacesOver E v, GL (Fin n) (w.1.adicCompletion E) → ℂ)
    (hc : ∀ w, IsLocallyConstant (h w) ∧ HasCompactSupport (h w)) :
    IsLocallyConstant (GM.prodFn h) ∧ HasCompactSupport (GM.prodFn h) := by
  haveI : Fintype (PlacesOver E v) := Fintype.ofFinite _
  rw [prodFn_eq]
  constructor
  · have key : ∀ T : Finset (PlacesOver E v),
        IsLocallyConstant fun g : GL (Fin n) (CompletionsOver E v) => ∏ w ∈ T, h w (GM.cmp w g) := by
      intro T
      induction T using Finset.induction_on with
      | empty =>
        simp only [Finset.prod_empty]
        exact IsLocallyConstant.const (1 : ℂ)
      | insert a s ha ih =>
        simp only [Finset.prod_insert ha]
        exact ((hc a).1.comp_continuous (cmp_cont a)).mul ih
    exact key _
  · haveI : T2Space (CompletionsOver E v) := Pi.t2Space
    haveI : T2Space (GL (Fin n) (CompletionsOver E v)) := Units.instT2Space
    haveI : R1Space (GL (Fin n) (CompletionsOver E v)) := T2Space.r1Space
    refine HasCompactSupport.intro ((isCompact_univ_pi fun w => (hc w).2.isCompact).image glue_cont) fun g hg => ?_
    by_contra hne
    refine hg ⟨fun w => GM.cmp w g, fun w _ => subset_tsupport _ ?_, ?_⟩
    · exact fun h0 => hne (Finset.prod_eq_zero (Finset.mem_univ w) h0)
    · exact Units.ext (Matrix.ext fun a b => rfl)

private theorem unit_prod (v : Pl F) :
    (GM.prodFn fun w : PlacesOver E v => (GLnLocal.integralGL (w.1.adicCompletion E) n : Set (GL (Fin n) (w.1.adicCompletion E))).indicator (1 : GL (Fin n) (w.1.adicCompletion E) → ℂ)) =
      (unitSet E n v).indicator 1 := by
  haveI : Fintype (PlacesOver E v) := Fintype.ofFinite _
  funext g
  rw [GM.prodFn, finprod_eq_prod_of_fintype]
  by_cases hg : g ∈ unitSet E n v
  · rw [Set.indicator_of_mem hg]
    exact Finset.prod_eq_one fun w _ => Set.indicator_of_mem (hg w) _
  · rw [Set.indicator_of_notMem hg]
    obtain ⟨w, hw⟩ := not_forall.1 hg
    exact Finset.prod_eq_zero (Finset.mem_univ w) (Set.indicator_of_notMem hw _)

private theorem iwFn_test {q : Pl F} (w₀ : PlacesOver E q) :
    IsLocallyConstant (GM.iwFn w₀ (0 : Fin n → ℤ)) ∧ HasCompactSupport (GM.iwFn w₀ (0 : Fin n → ℤ)) := by
  refine prodFn_test _ fun w => ?_
  rw [ite_self, iwCoset_zero]
  exact iw_test w.1

variable {σ : E ≃ₐ[F] E} {q : Pl F} {w₀ : PlacesOver E q}

private noncomputable def dflt (T : Ty σ n q w₀) (w : Pl E) : Gw n w → ℂ :=
  (T.J w : Set (Gw n w)).indicator fun x => conj (T.χ w x)

private theorem dflt_of_triv (T : Ty σ n q w₀) (w : Pl E) (h : T.χ w = 1) :
    dflt T w = (T.J w : Set (Gw n w)).indicator 1 := by
  unfold dflt
  rw [h]
  funext x
  by_cases hx : x ∈ (T.J w : Set (Gw n w))
  · simp [Set.indicator_of_mem hx]
  · simp [Set.indicator_of_notMem hx]

private theorem phi_eq (T : Ty σ n q w₀) (L : GM.Loc σ n q w₀) (ψ : ∀ v : Pl F, Gw n (T.mk' v).1 → ℂ)
    (hF : FitsV T L ψ) (hq : GM.Split E q) (huq : ∀ v ∈ nsS T, ∀ u : PlacesOver E v, u = T.mk' v)
    (h : ∀ w : Pl E, Gw n w → ℂ)
    (h1 : ∀ v ∈ T.S, h (T.mk' v).1 = ψ v)
    (h2 : ∀ w : Pl E, (∀ v ∈ T.S, w ≠ (T.mk' v).1) → h w = dflt T w) (v : Pl F) :
    L.φ v = GM.prodFn fun u : PlacesOver E v => h u.1 := by
  have hother : ∀ (u : PlacesOver E v), v ∉ T.S → h u.1 = dflt T u.1 := fun u hv => by
    refine h2 u.1 fun v' hv' e => hv ?_
    have : v' = v := by rw [← under_eq (T.mk' v'), ← e, under_eq u]
    rwa [← this]
  by_cases hS : v ∈ T.S
  · by_cases hs : GM.Split E v
    · have hsp : v ∈ T.sp := Finset.mem_filter.2 ⟨hS, hs⟩
      rw [(hF.split v hsp).1]
      congr 1
      funext u
      by_cases hu : u = T.mk' v
      · subst hu
        rw [Function.update_self, h1 v hS]
      · rw [Function.update_of_ne hu, h2 u.1 fun v' hv' e => hu ?_,
          dflt_of_triv T u.1 (T.triv v hs u)]
        have : v' = v := by rw [← under_eq (T.mk' v'), ← e, under_eq u]
        subst this
        exact Subtype.ext e
    · have hu := huq v (Finset.mem_filter.2 ⟨hS, hs⟩)
      funext g
      rw [hF.nonsplit v hS hs g, GM.prodFn]
      letI : Unique (PlacesOver E v) := ⟨⟨T.mk' v⟩, hu⟩
      rw [finprod_unique]
      have hd : (default : PlacesOver E v) = T.mk' v := hu _
      rw [hd, h1 v hS]
  by_cases hvq : v = q
  · subst hvq
    rw [L.at_q.1]
    unfold GM.iwFn
    congr 1
    funext u
    rw [hother u hS, dflt_of_triv T u.1 (T.triv v hq u), ite_self, iwCoset_zero, T.at_q u]
  · have hvS : v ∉ L.S := by rw [hF.S_eq]; exact hS
    rw [(L.off v hvS hvq).1, ← unit_prod v]
    congr 1
    funext u
    have hu := T.off u.1 (by rw [under_eq]; exact hS) (by rw [under_eq]; exact hvq)
    rw [hother u hS, dflt_of_triv T u.1 hu.2, hu.1]

end Main

end UpperTheory.EigenspaceProjectionTraces


open UpperTheory.EigenspaceProjectionTraces in
theorem UpperTheory.exists_pos_const_eigenspace_bound_of_split_CMDatum :
    ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E ≃ₐ[F] E) (n : ℕ), 0 < n →
        ∀ (μ : Measure (normOneGL (K := E) (n := n))) [μ.IsHaarMeasure] (νE : Measure (archGroup E n)) [νE.IsHaarMeasure] (aE : TI E n)
          (q : Pl F) (w₀ : PlacesOver E q), GM.Split E q → ∀ T : Ty σ n q w₀,
          (∀ v ∈ nsS T, ∀ u : PlacesOver E v, u = T.mk' v) →
          ∃ κ : ℝ, 0 < κ ∧ ∀ (L : GM.Loc σ n q w₀) (ψ : ∀ v : Pl F, Gw n (T.mk' v).1 → ℂ), FitsV T L ψ →
          ∀ (r₁ : ℕ) (p₁ : Fin r₁ → Pl F), Function.Injective p₁ → (∀ v, v ∈ T.sp ↔ v ∈ Set.range p₁) →
          ∀ (r₂ : ℕ) (p₂ : Fin r₂ → Pl F), Function.Injective p₂ → (∀ v, v ∈ nsS T ↔ v ∈ Set.range p₂) →
          ∀ [∀ u : Pl E, MeasurableSpace (Gw n u)] [∀ u : Pl E, BorelSpace (Gw n u)] (mm : ∀ u : Pl E, Measure (Gw n u)),
            (∀ u, (mm u).IsHaarMeasure ∧ mm u (T.J u) = 1) →
          ∀ (B₁ : Fin r₁ → LL μ →L[ℂ] LL μ) (B₂ : Fin r₂ → LL μ →L[ℂ] LL μ),
            (∀ i, IsOloc μ (T.mk' (p₁ i)).1 (mm _) (ψ (p₁ i)) (B₁ i)) → (∀ i, IsOloc μ (T.mk' (p₂ i)).1 (mm _) (ψ (p₂ i)) (B₂ i)) →
          ∀ g : TG E n, (∀ x, g x = avg (tensE (GM.onInf aE) L.φ) x) →
            Rop μ g = (κ : ℂ) • (Oinf μ νE aE ∘L (List.ofFn B₁).prod ∘L (List.ofFn B₂).prod ∘L prj (offN μ T)) := by
  intro F E _ _ _ _ _ σ n hn μ _ νE _ aE q w₀ hq T huq
  have hfin : {w : Pl E | w.under (𝓞 F) ∈ ((insert q T.S : Finset (Pl F)) : Set (Pl F))}.Finite :=
    finite_under _ (Finset.finite_toSet _)
  have hcof : ∀ᶠ w : Pl E in Filter.cofinite,
      w.under (𝓞 F) ∉ T.S ∧ w.under (𝓞 F) ≠ q := by
    refine Filter.eventually_cofinite.2 (hfin.subset fun w hw => ?_)
    simp only [Set.mem_setOf_eq, not_and_or, not_not] at hw
    simp only [Set.mem_setOf_eq, Finset.coe_insert, Set.mem_insert_iff, Finset.mem_coe]
    tauto
  have hco : ∀ w, CO (T.J w) ∧ IsChr (T.J w) (T.χ w) := fun w => ⟨T.co w, T.chr w⟩
  obtain ⟨κ, hκ, H⟩ := UpperTheory.ConvolutionTheory.L1.tensFactor_offRange E n hn μ νE T.J T.χ hco (hcof.mono fun w hw => T.off w hw.1 hw.2)
  refine ⟨κ, hκ, ?_⟩
  intro L ψ hF r₁ p₁ hp₁ hsp₁ r₂ p₂ hp₂ hns₂ _ _ mm hmm B₁ B₂ hB₁ hB₂ g hg
  haveI hmI : ∀ u, (mm u).IsHaarMeasure := fun u => (hmm u).1
  let pp : Fin (r₁ + r₂) → Pl F := Fin.append p₁ p₂
  let B : Fin (r₁ + r₂) → LL μ →L[ℂ] LL μ := Fin.append B₁ B₂
  have hl : ∀ i, pp (Fin.castAdd r₂ i) = p₁ i := fun i => Fin.append_left _ _ _
  have hr : ∀ j, pp (Fin.natAdd r₁ j) = p₂ j := fun j => Fin.append_right _ _ _
  have hBl : ∀ i, B (Fin.castAdd r₂ i) = B₁ i := fun i => Fin.append_left _ _ _
  have hBr : ∀ j, B (Fin.natAdd r₁ j) = B₂ j := fun j => Fin.append_right _ _ _
  have h1sp : ∀ i, p₁ i ∈ T.sp := fun i => (hsp₁ _).2 ⟨i, rfl⟩
  have h2ns : ∀ j, p₂ j ∈ nsS T := fun j => (hns₂ _).2 ⟨j, rfl⟩
  have hsplit1 : ∀ i, GM.Split E (p₁ i) := fun i => (Finset.mem_filter.1 (h1sp i)).2
  have hsplit2 : ∀ j, ¬ GM.Split E (p₂ j) := fun j => (Finset.mem_filter.1 (h2ns j)).2
  have hne : ∀ i j, p₁ i ≠ p₂ j := fun i j e => hsplit2 j (e ▸ hsplit1 i)
  have hpp : Function.Injective pp := by
    intro i j
    refine Fin.addCases (fun i => ?_) (fun i => ?_) i <;> refine Fin.addCases (fun j => ?_) (fun j => ?_) j <;> intro h
    · rw [hl, hl] at h; rw [hp₁ h]
    · rw [hl, hr] at h; exact absurd h (hne i j)
    · rw [hr, hl] at h; exact absurd h.symm (hne j i)
    · rw [hr, hr] at h; rw [hp₂ h]
  have hpS : ∀ i, pp i ∈ T.S := fun i => by
    refine Fin.addCases (fun i => ?_) (fun j => ?_) i
    · rw [hl]; exact (Finset.mem_filter.1 (h1sp i)).1
    · rw [hr]; exact (Finset.mem_filter.1 (h2ns j)).1
  have hsurj : ∀ v ∈ T.S, ∃ i, pp i = v := fun v hv => by
    by_cases hs : GM.Split E v
    · obtain ⟨i, rfl⟩ := (hsp₁ v).1 (Finset.mem_filter.2 ⟨hv, hs⟩)
      exact ⟨_, hl i⟩
    · obtain ⟨j, rfl⟩ := (hns₂ v).1 (Finset.mem_filter.2 ⟨hv, hs⟩)
      exact ⟨_, hr j⟩
  have hOl : ∀ i, IsOloc μ (T.mk' (pp i)).1 (mm _) (ψ (pp i)) (B i) := fun i => by
    refine Fin.addCases (fun i => ?_) (fun j => ?_) i
    · rw [hBl]
      have := hB₁ i
      rw [← hl i] at this
      exact this
    · rw [hBr]
      have := hB₂ j
      rw [← hr j] at this
      exact this
  have hwi : Function.Injective fun i => (T.mk' (pp i)).1 := fun i j e => hpp (by
    have e' : (T.mk' (pp i)).1 = (T.mk' (pp j)).1 := e
    rw [← under_eq (T.mk' (pp i)), e', under_eq])
  obtain ⟨h, hh1, hh2⟩ := UpperTheory.ConvolutionTheory.L1.dep_extend
    (β := fun w : Pl E => Gw n w → ℂ) (fun i => (T.mk' (pp i)).1) hwi
    (fun i => ψ (pp i)) (dflt T)
  have h1 : ∀ v ∈ T.S, h (T.mk' v).1 = ψ v := fun v hv => by
    obtain ⟨i, rfl⟩ := hsurj v hv
    exact hh1 i
  have h2 : ∀ w : Pl E, (∀ v ∈ T.S, w ≠ (T.mk' v).1) → h w = dflt T w := fun w hw =>
    hh2 w fun ⟨i, e⟩ => hw _ (hpS i) e.symm
  have hφ := phi_eq T L ψ hF hq huq h h1 h2
  have hint : ∀ᶠ w : Pl E in Filter.cofinite,
      h w = (GLnLocal.integralGL (w.adicCompletion E) n : Set (GL (Fin n) (w.adicCompletion E))).indicator 1 := by
    refine hcof.mono fun w hw => ?_
    have hu := T.off w hw.1 hw.2
    have hne : ∀ v ∈ T.S, w ≠ (T.mk' v).1 := fun v hv e => hw.1 (by
      rw [e, under_eq]; exact hv)
    rw [h2 w hne, dflt_of_triv T w hu.2, hu.1]
  obtain ⟨e, -, he, ht⟩ := GM.avgE F E n hn (insert q L.S) aE L.φ (fun v hv => by
      rcases Finset.mem_insert.1 hv with hvq | hv
      · rw [hvq, L.at_q.1]; exact iwFn_test w₀
      · exact ⟨(L.test v hv).1, (L.test v hv).2.1⟩)
    (fun v hv => (L.off v (fun h => hv (Finset.mem_insert_of_mem h))
      (fun h => hv (by rw [h]; exact Finset.mem_insert_self _ _))).1)
  have hgt : g = tens aE e := by
    ext x
    rw [hg, ht]
  have heform : ∀ x, e x = (∏ i, ψ (pp i) (finAt (T.mk' (pp i)).1 (finEmb E n x))) *
      ∏ᶠ u ∉ Set.range (fun i => (T.mk' (pp i)).1), (T.J u : Set (Gw n u)).indicator (fun g => conj (T.χ u g)) (finAt u (finEmb E n x)) := by
    intro x
    have e1 : e x = ∏ᶠ w, h w (finAt w (finEmb E n x)) := by
      rw [he x, ← UpperTheory.ConvolutionTheory.Tf.tensEProd F E n h hint (finEmb E n x)]
      exact finprod_congr fun v => by rw [hφ v]
    have hsupp : (Function.mulSupport fun w : Pl E => h w (finAt w (finEmb E n x))).Finite := by
      have hev : ∀ᶠ w : Pl E in Filter.cofinite, h w (finAt w (finEmb E n x)) = 1 := by
        filter_upwards [hint, AdelicGLn.eventually_mem_integralGL E n (finEmb E n x)] with w a1 a2
        rw [a1, Set.indicator_of_mem (by exact a2)]
        rfl
      exact Filter.eventually_cofinite.1 hev
    rw [e1, UpperTheory.ConvolutionTheory.L1.finprod_split _ hwi _ hsupp]
    congr 1
    · exact Finset.prod_congr rfl fun i _ => by rw [hh1 i]
    · refine finprod_congr fun u => finprod_congr fun hu => ?_
      rw [hh2 u hu]
      rfl
  have main := H aE (r₁ + r₂) (fun i => (T.mk' (pp i)).1) hwi (fun i => mm _) (fun i => hmm _)
    (fun i => ψ (pp i)) B (fun i => ⟨hF.test _ (hpS i), hOl i⟩) e heform

  let wsp : Fin r₁ → Pl E := fun i => (T.mk' (p₁ i)).1
  have hwsp : Function.Injective wsp := fun i j e => hp₁ (by
    have e' : (T.mk' (p₁ i)).1 = (T.mk' (p₁ j)).1 := e
    rw [← under_eq (T.mk' (p₁ i)), e', under_eq])
  have hwsp_mem : ∀ i, wsp i ∈ Set.range fun i => (T.mk' (pp i)).1 := fun i =>
    ⟨Fin.castAdd r₂ i, by
      show (T.mk' (pp (Fin.castAdd r₂ i))).1 = (T.mk' (p₁ i)).1
      rw [hl]⟩
  have hlist := UpperTheory.ConvolutionTheory.L1.list_prj μ hco (List.ofFn wsp) (List.nodup_ofFn.2 hwsp)
    {u | u ∉ Set.range fun i => (T.mk' (pp i)).1} (fun v hv hc => by
      obtain ⟨i, rfl⟩ := (List.mem_ofFn' _ _).1 hv
      exact hc (hwsp_mem i))
  have hset : {u | u ∉ Set.range fun i => (T.mk' (pp i)).1} ∪ {v | v ∈ List.ofFn wsp} =
      {u : Pl E | u.under (𝓞 F) ∉ (nsS T : Set (Pl F))} := by
    ext u
    simp only [Set.mem_union, Set.mem_setOf_eq]
    constructor
    · rintro (hu | hu) hn'
      · have hn2 : u.under (𝓞 F) ∈ nsS T := hn'
        refine hu ?_
        have hu' := huq _ hn2 ⟨u, liesOver_under u⟩
        obtain ⟨i, hi⟩ := hsurj _ (Finset.mem_filter.1 hn2).1
        refine ⟨i, ?_⟩
        show (T.mk' (pp i)).1 = u
        rw [hi]
        exact (congrArg Subtype.val hu').symm
      · obtain ⟨i, rfl⟩ := (List.mem_ofFn' _ _).1 hu
        have hn2 : (wsp i).under (𝓞 F) ∈ nsS T := hn'
        rw [show (wsp i).under (𝓞 F) = p₁ i from under_eq _] at hn2
        exact (Finset.mem_filter.1 hn2).2 (hsplit1 i)
    · intro hu
      by_cases hr' : u ∈ Set.range fun i => (T.mk' (pp i)).1
      · right
        obtain ⟨i, rfl⟩ := hr'
        revert hu
        refine Fin.addCases (fun i => ?_) (fun j => ?_) i
        · intro _
          refine (List.mem_ofFn' _ _).2 ⟨i, ?_⟩
          show (T.mk' (p₁ i)).1 = (T.mk' (pp (Fin.castAdd r₂ i))).1
          rw [hl]
        · intro hu
          have hin : ((T.mk' (pp (Fin.natAdd r₁ j))).1).under (𝓞 F) ∈ (nsS T : Set (Pl F)) := by
            rw [under_eq, hr]
            exact h2ns j
          exact absurd hin hu
      · exact Or.inl hr'
  have hoff : ConvolutionTheory.L1.GA μ T.J T.χ ({u | u ∉ Set.range fun i => (T.mk' (pp i)).1} ∪ {v | v ∈ List.ofFn wsp}) = offN μ T := by
    rw [hset]
    simp only [ConvolutionTheory.L1.GA, offN, Set.mem_ofPred_eq]
  have hQ : ConvolutionTheory.L1.GA μ T.J T.χ {u | u ∉ Set.range fun i => (T.mk' (pp i)).1} =
      ⨅ (u : Pl E) (_ : u ∉ Set.range fun i => (T.mk' (pp i)).1), eigL μ u (T.J u) (T.χ u) := by
    simp only [ConvolutionTheory.L1.GA, Set.mem_ofPred_eq]
  rw [hoff, hQ, List.map_ofFn] at hlist
  set P : LL μ →L[ℂ] LL μ := (List.ofFn fun i => prj (eigL μ (wsp i) (T.J (wsp i)) (T.χ (wsp i)))).prod with hP
  have hlist' : P * prj (⨅ (u : Pl E) (_ : u ∉ Set.range fun i => (T.mk' (pp i)).1), eigL μ u (T.J u) (T.χ u)) =
      prj (offN μ T) := hlist
  have habs : (List.ofFn B₁).prod = (List.ofFn B₁).prod * P := ConvolutionTheory.L1.ofFn_absorb r₁ B₁ (fun i => prj (eigL μ (wsp i) (T.J (wsp i)) (T.χ (wsp i))))
    (fun i j hij => (eigBasic E n μ (wsp j) (T.J (wsp j)) (T.χ (wsp j)) (hco _).1 (hco _).2).2.2.2 (B₁ i)
      fun x _ => ConvolutionTheory.L1.oloc_commute μ (fun e => hij (hwsp e).symm) (mm _) (ψ (p₁ i)) (B₁ i) (hB₁ i) x)
    fun i => ConvolutionTheory.L1.oloc_absorb μ (wsp i) (mm _) (hco _).1 (hmm _).2 (hco _).2 (ψ (p₁ i)) (fun u hu g' => by
      rw [((hF.inv _ (h1sp i)) u hu g').2, T.triv (p₁ i) (hsplit1 i) (T.mk' (p₁ i))]
      simp) (B₁ i) (hB₁ i)
  have hcomm : Commute (List.ofFn B₂).prod P := by
    refine Commute.list_prod_left _ _ fun X hX => ?_
    obtain ⟨j, rfl⟩ := (List.mem_ofFn' _ _).1 hX
    refine Commute.list_prod_right _ _ fun Y hY => ?_
    obtain ⟨i, rfl⟩ := (List.mem_ofFn' _ _).1 hY
    refine (eigBasic E n μ (wsp i) (T.J (wsp i)) (T.χ (wsp i)) (hco _).1 (hco _).2).2.2.2 (B₂ j)
      fun x _ => ConvolutionTheory.L1.oloc_commute μ (fun e => ?_) (mm _) (ψ (p₂ j)) (B₂ j) (hB₂ j) x
    have e' : (T.mk' (p₁ i)).1 = (T.mk' (p₂ j)).1 := e
    exact hne i j (by rw [← under_eq (T.mk' (p₁ i)), e', under_eq])
  have hprod : (List.ofFn B).prod = (List.ofFn B₁).prod * (List.ofFn B₂).prod := by
    show (List.ofFn (Fin.append B₁ B₂)).prod = _
    rw [List.ofFn_fin_append, List.prod_append]
  have key : (List.ofFn B₁).prod ∘L (List.ofFn B₂).prod ∘L prj (offN μ T) =
      ((List.ofFn B₁).prod * (List.ofFn B₂).prod) ∘L
        prj (⨅ (u : Pl E) (_ : u ∉ Set.range fun i => (T.mk' (pp i)).1), eigL μ u (T.J u) (T.χ u)) :=
    ops_key _ _ _ _ _ habs hcomm.eq hlist'
  rw [hprod] at main
  rw [hgt, key]
  exact main


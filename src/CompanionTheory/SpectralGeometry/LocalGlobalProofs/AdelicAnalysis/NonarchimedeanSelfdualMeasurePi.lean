module

public import Formalism.UnipotentAdelicQuotients.SWXSDefs
public import Mathlib.MeasureTheory.Integral.Pi
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.HermitianCharacters.SelfDualLatticeFiltrationCharacter
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LocalDensityOfSelfDualLatticeLemmas
import Aesop.Main
import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HarrisTaylorCardKilledByIdealEqAbsNormPow, CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HarrisTaylorCardKilledByIdealEqAbsNormPow =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HarrisTaylorCardKilledByIdealEqAbsNormPow", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\nimport Aesop.Main\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.IsEulerProd\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix
open Classical

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.FourierPi

section Char

variable {R : Type} [CommRing R] {ψ : R → ℂ}

theorem psi_ne (hn : ∀ x, ‖ψ x‖ = 1) (x : R) : ψ x ≠ 0 := fun h => by
  have := hn x
  simp [h] at this

theorem psi_zero (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1) : ψ 0 = 1 := by
  have := ha 0 0
  rw [add_zero] at this
  exact (mul_eq_left₀ (psi_ne hn 0)).1 this.symm

theorem psi_sum (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1) {ι : Type}
    (s : Finset ι) (f : ι → R) : ψ (∑ i ∈ s, f i) = ∏ i ∈ s, ψ (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using psi_zero ha hn
  | insert a s h ih => rw [Finset.sum_insert h, Finset.prod_insert h, ha, ih]

theorem psi_dot (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1) {ι : Type} [Fintype ι]
    (x y : ι → R) : ψ (x ⬝ᵥ y) = ∏ i, ψ (x i * y i) :=
  psi_sum ha hn _ _

def ann (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1) (L : AddSubgroup R) :
    AddSubgroup R where
  carrier := {t | ∀ s ∈ L, ψ (s * t) = 1}
  add_mem' := by
    intro t t' h h' s hs
    rw [mul_add, ha, h s hs, h' s hs, one_mul]
  zero_mem' := by
    intro s _
    rw [mul_zero, psi_zero ha hn]
  neg_mem' := by
    intro t h s hs
    have e := ha (s * t) (s * -t)
    rw [← mul_add, add_neg_cancel, mul_zero, psi_zero ha hn, h s hs, one_mul] at e
    exact e.symm

end Char

section One

variable {R : Type} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]
  [LocallyCompactSpace R] [SecondCountableTopology R] [T2Space R] [MeasurableSpace R] [BorelSpace R]
  {ψ : R → ℂ}

theorem integral_subgroup_eq_zero (lam : Measure R) [lam.IsAddHaarMeasure] (A : AddSubgroup R)
    (hA : MeasurableSet (A : Set R)) (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (t a : R) (haA : a ∈ A)
    (hne : ψ (a * t) ≠ 1) : ∫ x in (A : Set R), ψ (x * t) ∂lam = 0 := by
  set f : R → ℂ := (A : Set R).indicator fun x => ψ (x * t) with hf
  have e1 : ∫ x, f x ∂lam = ∫ x in (A : Set R), ψ (x * t) ∂lam := integral_indicator hA
  have e2 : ∀ x, f (x + a) = ψ (a * t) * f x := by
    intro x
    by_cases hx : x ∈ A
    · have hxa : x + a ∈ A := A.add_mem hx haA
      simp only [hf, Set.indicator_of_mem (SetLike.mem_coe.2 hx), Set.indicator_of_mem (SetLike.mem_coe.2 hxa)]
      rw [add_mul, ha, mul_comm]
    · have hxa : x + a ∉ A := fun h => hx (by simpa using A.sub_mem h haA)
      simp only [hf, Set.indicator_of_notMem (show x ∉ (A : Set R) from hx),
        Set.indicator_of_notMem (show x + a ∉ (A : Set R) from hxa), mul_zero]
  have e3 : ∫ x, f x ∂lam = ψ (a * t) * ∫ x, f x ∂lam := by
    calc ∫ x, f x ∂lam = ∫ x, f (x + a) ∂lam := (integral_add_right_eq_self f a).symm
      _ = ∫ x, ψ (a * t) * f x ∂lam := by simp only [e2]
      _ = _ := integral_const_mul _ _
  rw [← e1]
  have e4 : (1 - ψ (a * t)) * ∫ x, f x ∂lam = 0 := by
    rw [sub_mul, one_mul, ← e3, sub_self]
  exact (mul_eq_zero.1 e4).resolve_left (sub_ne_zero.2 (Ne.symm hne))

theorem integral_subgroup_eq_real (lam : Measure R) (A : Set R) (hA : MeasurableSet A) (t : R)
    (h : ∀ x ∈ A, ψ (x * t) = 1) : ∫ x in A, ψ (x * t) ∂lam = (lam.real A : ℂ) := by
  rw [setIntegral_congr_fun hA (g := fun _ => (1 : ℂ)) (fun x hx => h x hx)]
  simp [Measure.real]

theorem dual_facts (hc : Continuous ψ) (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1)
    (lam : Measure R) (hsd : SelfDual lam (fun s t => ψ (s * t))) (L : AddSubgroup R)
    (hLc : IsCompact (L : Set R)) (hLo : IsOpen (L : Set R))
    (hP : IsCompact (ann ha hn L : Set R)) :
    lam.real (L : Set R) * lam.real (ann ha hn L : Set R) = 1 ∧
      (∀ z, z ∈ ann ha hn (ann ha hn L) → z ∈ L) ∧ IsOpen (ann ha hn L : Set R) := by
  classical
  haveI := hsd.1
  set P := ann ha hn L with hPdef
  have hLm : MeasurableSet (L : Set R) := hLo.measurableSet
  have hPm : MeasurableSet (P : Set R) := hP.isClosed.measurableSet
  set Φ : R → ℂ := (L : Set R).indicator 1 with hΦ
  have hcl : IsClopen (L : Set R) := ⟨AddSubgroup.isClosed_of_isOpen _ hLo, hLo⟩
  have Φc : Continuous Φ :=
    continuous_indicator (by simp [hcl.frontier_eq]) continuous_one.continuousOn
  have Φs : HasCompactSupport Φ := by
    refine HasCompactSupport.intro hLc fun x hx => ?_
    simp [hΦ, hx]
  have hat : ∀ y, ∫ x, Φ x * ψ (x * y) ∂lam = (P : Set R).indicator (fun _ => (lam.real (L : Set R) : ℂ)) y := by
    intro y
    have e : (fun x => Φ x * ψ (x * y)) = (L : Set R).indicator fun x => ψ (x * y) := by
      funext x
      by_cases hx : x ∈ (L : Set R) <;> simp [hΦ, hx]
    rw [e, integral_indicator hLm]
    by_cases hy : y ∈ P
    · rw [Set.indicator_of_mem (SetLike.mem_coe.2 hy)]
      exact integral_subgroup_eq_real lam _ hLm y hy
    · rw [Set.indicator_of_notMem (show y ∉ (P : Set R) from hy)]
      have : ∃ a ∈ L, ψ (a * y) ≠ 1 := by
        by_contra hcon
        push_neg at hcon
        exact hy hcon
      obtain ⟨a, haL, hne⟩ := this
      exact integral_subgroup_eq_zero lam L hLm ha y a haL hne
  have hint : Integrable (fun y => ∫ x, Φ x * ψ (x * y) ∂lam) lam := by
    simp only [hat]
    exact (integrable_indicator_iff hPm).2 (integrableOn_const hP.measure_lt_top.ne)
  have inv := hsd.2 Φ Φc Φs hint
  have inv' : ∀ z, (lam.real (L : Set R) : ℂ) * ∫ y in (P : Set R), ψ (y * z) ∂lam = Φ (-z) := by
    intro z
    rw [← inv z, ← integral_const_mul, ← integral_indicator hPm]
    refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    by_cases hy : y ∈ (P : Set R) <;> simp [hat, hy]
  have hone : (lam.real (L : Set R) : ℂ) * (lam.real (P : Set R) : ℂ) = 1 := by
    have h0 := inv' 0
    rw [integral_subgroup_eq_real lam _ hPm 0 (by simp [psi_zero ha hn])] at h0
    rw [h0]
    simp [hΦ, L.zero_mem]
  have hone' : lam.real (L : Set R) * lam.real (P : Set R) = 1 := by exact_mod_cast hone
  refine ⟨hone', ?_, ?_⟩
  · intro z hz
    have h1 := inv' z
    rw [integral_subgroup_eq_real lam _ hPm z (fun x hx => hz x hx), hone] at h1
    by_contra hzL
    have : -z ∉ (L : Set R) := fun h => hzL (by simpa using L.neg_mem h)
    simp [hΦ, this] at h1
  · have hpos : lam (P : Set R) ≠ 0 := by
      intro h0
      have : lam.real (P : Set R) = 0 := by simp [Measure.real, h0]
      simp [this] at hone'
    have hn0 := MeasureTheory.Measure.sub_mem_nhds_zero_of_addHaar_pos lam (P : Set R) hPm (pos_iff_ne_zero.2 hpos)
    refine AddSubgroup.isOpen_of_mem_nhds P (g := 0) ?_
    refine Filter.mem_of_superset hn0 ?_
    rintro _ ⟨a, ha', b, hb', rfl⟩
    exact P.sub_mem ha' hb'

end One

section Many

variable {R : Type} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]
  [LocallyCompactSpace R] [SecondCountableTopology R] [T2Space R] [MeasurableSpace R] [BorelSpace R]
  {ψ : R → ℂ} {ι : Type} [Fintype ι]

abbrev box (ι : Type) (A : Set R) : Set (ι → R) := Set.pi Set.univ fun _ => A


open Classical in
theorem integral_ann_eq (lam : Measure R) [lam.IsAddHaarMeasure] (L P : AddSubgroup R)
    (hPm : MeasurableSet (P : Set R)) (ha : ∀ x y, ψ (x + y) = ψ x * ψ y)
    (hLP : ∀ s ∈ L, ∀ t ∈ P, ψ (s * t) = 1) (hPL : ∀ z, (∀ t ∈ P, ψ (t * z) = 1) → z ∈ L) (s : R) :
    ∫ t in (P : Set R), ψ (s * t) ∂lam = if s ∈ L then (lam.real (P : Set R) : ℂ) else 0 := by
  simp_rw [mul_comm s]
  by_cases h : s ∈ L
  · rw [if_pos h]
    exact integral_subgroup_eq_real lam _ hPm s fun x hx => by
      rw [mul_comm]
      exact hLP s h x hx
  · rw [if_neg h]
    have : ∃ a ∈ P, ψ (a * s) ≠ 1 := by
      by_contra hcon
      push_neg at hcon
      exact h (hPL s hcon)
    obtain ⟨a, haP, hne⟩ := this
    exact integral_subgroup_eq_zero lam P hPm ha s a haP hne

theorem integral_box (lam : Measure R) [lam.IsAddHaarMeasure] [SigmaFinite lam] (L P : AddSubgroup R)
    (hPm : MeasurableSet (P : Set R)) (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1)
    (hLP : ∀ s ∈ L, ∀ t ∈ P, ψ (s * t) = 1) (hPL : ∀ z, (∀ t ∈ P, ψ (t * z) = 1) → z ∈ L)
    (w : ι → R) :
    ∫ y in box ι (P : Set R), ψ (w ⬝ᵥ y) ∂(Measure.pi fun _ : ι => lam) =
      (box ι (L : Set R)).indicator (fun _ => (lam.real (P : Set R) : ℂ) ^ Fintype.card ι) w := by
  classical
  rw [Measure.restrict_pi_pi]
  simp_rw [psi_dot ha hn]
  rw [integral_fintype_prod_eq_prod (fun i t => ψ (w i * t))]
  simp_rw [integral_ann_eq lam L P hPm ha hLP hPL]
  by_cases hw : w ∈ box ι (L : Set R)
  · rw [Set.indicator_of_mem hw]
    have : ∀ i, w i ∈ L := fun i => hw i (Set.mem_univ i)
    simp [this]
  · rw [Set.indicator_of_notMem hw]
    have : ∃ i, w i ∉ L := by
      by_contra hcon
      push_neg at hcon
      exact hw fun i _ => hcon i
    obtain ⟨i, hi⟩ := this
    exact Finset.prod_eq_zero (Finset.mem_univ i) (by simp [hi])

theorem continuous_psi_dot (hc : Continuous ψ) {X : Type} [TopologicalSpace X] {f g : X → ι → R}
    (hf : Continuous f) (hg : Continuous g) : Continuous fun p => ψ (f p ⬝ᵥ g p) :=
  hc.comp (hf.dotProduct hg)

theorem fubini_box (hc : Continuous ψ) (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1)
    (μ : Measure (ι → R)) [SFinite μ] (B : Set (ι → R)) (hBf : μ B < ⊤) (Φ : (ι → R) → ℂ)
    (Φc : Continuous Φ) (hi : Integrable Φ μ) (z : ι → R) :
    ∫ y in B, (∫ x, Φ x * ψ (x ⬝ᵥ y) ∂μ) * ψ (y ⬝ᵥ z) ∂μ =
      ∫ x, Φ x * ∫ y in B, ψ ((x + z) ⬝ᵥ y) ∂μ ∂μ := by
  haveI : IsFiniteMeasure (μ.restrict B) := ⟨by rwa [Measure.restrict_apply_univ]⟩
  have e1 : ∀ y, (∫ x, Φ x * ψ (x ⬝ᵥ y) ∂μ) * ψ (y ⬝ᵥ z) = ∫ x, Φ x * ψ ((x + z) ⬝ᵥ y) ∂μ := by
    intro y
    rw [← integral_mul_const]
    refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
    change Φ x * ψ (x ⬝ᵥ y) * ψ (y ⬝ᵥ z) = Φ x * ψ ((x + z) ⬝ᵥ y)
    rw [add_dotProduct, ha, dotProduct_comm z y, mul_assoc]
  simp_rw [e1]
  rw [integral_integral_swap]
  · simp_rw [integral_const_mul]
  · have h0 : Integrable (fun p : (ι → R) × (ι → R) => (1 : ℂ) * Φ p.2) ((μ.restrict B).prod μ) :=
      (integrable_const (1 : ℂ)).mul_prod hi
    refine h0.mono ?_ (Filter.Eventually.of_forall fun p => ?_)
    · refine Continuous.aestronglyMeasurable ?_
      exact (Φc.comp continuous_snd).mul
        (continuous_psi_dot hc (continuous_snd.add continuous_const) continuous_fst)
    · simp [Function.uncurry, hn]

theorem box_formula (hc : Continuous ψ) (ha : ∀ x y, ψ (x + y) = ψ x * ψ y) (hn : ∀ x, ‖ψ x‖ = 1)
    (lam : Measure R) [lam.IsAddHaarMeasure] [SigmaFinite lam] (L P : AddSubgroup R)
    (hLm : MeasurableSet (L : Set R)) (hPm : MeasurableSet (P : Set R)) (hPf : lam (P : Set R) < ⊤)
    (hLP : ∀ s ∈ L, ∀ t ∈ P, ψ (s * t) = 1) (hPL : ∀ z, (∀ t ∈ P, ψ (t * z) = 1) → z ∈ L)
    (Φ : (ι → R) → ℂ) (Φc : Continuous Φ) (hi : Integrable Φ (Measure.pi fun _ : ι => lam))
    (z : ι → R) :
    ∫ y in box ι (P : Set R), (∫ x, Φ x * ψ (x ⬝ᵥ y) ∂(Measure.pi fun _ : ι => lam)) * ψ (y ⬝ᵥ z)
        ∂(Measure.pi fun _ : ι => lam) =
      (lam.real (P : Set R) : ℂ) ^ Fintype.card ι *
        ∫ u in box ι (L : Set R), Φ (u - z) ∂(Measure.pi fun _ : ι => lam) := by
  classical
  have hBf : (Measure.pi fun _ : ι => lam) (box ι (P : Set R)) < ⊤ := by
    rw [Measure.pi_pi]
    exact ENNReal.prod_lt_top fun _ _ => hPf
  rw [fubini_box hc ha hn _ _ hBf Φ Φc hi z]
  simp_rw [integral_box lam L P hPm ha hn hLP hPL]
  set g : (ι → R) → ℂ := (box ι (L : Set R)).indicator
    fun u => (lam.real (P : Set R) : ℂ) ^ Fintype.card ι * Φ (u - z) with hg
  have hbm : MeasurableSet (box ι (L : Set R)) := MeasurableSet.univ_pi fun _ => hLm
  have e : ∀ x, Φ x * (box ι (L : Set R)).indicator
      (fun _ => (lam.real (P : Set R) : ℂ) ^ Fintype.card ι) (x + z) = g (x + z) := by
    intro x
    by_cases hx : x + z ∈ box ι (L : Set R)
    · simp only [hg, Set.indicator_of_mem hx, add_sub_cancel_right]
      ring
    · simp only [hg, Set.indicator_of_notMem hx, mul_zero]
  simp_rw [e]
  rw [integral_add_right_eq_self g z, hg, integral_indicator hbm, integral_const_mul]

theorem mean_close (lam : Measure R) [lam.IsAddHaarMeasure] [SigmaFinite lam] (A : Set R)
    (hAm : MeasurableSet A) (hAf : lam A < ⊤) (c : ℝ) (hc0 : 0 ≤ c) (hcm : lam.real A * c = 1)
    (f : (ι → R) → ℂ) (hf : IntegrableOn f (box ι A) (Measure.pi fun _ : ι => lam)) (v : ℂ) (ε : ℝ)
    (h : ∀ u ∈ box ι A, ‖f u - v‖ ≤ ε) :
    ‖(c : ℂ) ^ Fintype.card ι * ∫ u in box ι A, f u ∂(Measure.pi fun _ : ι => lam) - v‖ ≤ ε := by
  classical
  have hBf : (Measure.pi fun _ : ι => lam) (box ι A) < ⊤ := by
    rw [Measure.pi_pi]
    exact ENNReal.prod_lt_top fun _ _ => hAf
  have hvol : (Measure.pi fun _ : ι => lam).real (box ι A) = lam.real A ^ Fintype.card ι := by
    simp [Measure.real, Measure.pi_pi]
  have hone : (c : ℝ) ^ Fintype.card ι * (Measure.pi fun _ : ι => lam).real (box ι A) = 1 := by
    rw [hvol, ← mul_pow, mul_comm, hcm, one_pow]
  have hconst : IntegrableOn (fun _ : ι → R => v) (box ι A) (Measure.pi fun _ : ι => lam) :=
    integrableOn_const hBf.ne
  have e : (c : ℂ) ^ Fintype.card ι * ∫ u in box ι A, f u ∂(Measure.pi fun _ : ι => lam) - v =
      (c : ℂ) ^ Fintype.card ι * ∫ u in box ι A, (f u - v) ∂(Measure.pi fun _ : ι => lam) := by
    rw [integral_sub hf hconst, setIntegral_const, mul_sub]
    have h1 : (c : ℂ) ^ Fintype.card ι * ((Measure.pi fun _ : ι => lam).real (box ι A) : ℂ) = 1 := by
      exact_mod_cast hone
    rw [Complex.real_smul, ← mul_assoc, h1, one_mul]
  rw [e, norm_mul, norm_pow, Complex.norm_real, Real.norm_of_nonneg hc0]
  have hb := norm_setIntegral_le_of_norm_le_const hBf h
  calc c ^ Fintype.card ι * ‖∫ u in box ι A, (f u - v) ∂(Measure.pi fun _ : ι => lam)‖
      ≤ c ^ Fintype.card ι * (ε * (Measure.pi fun _ : ι => lam).real (box ι A)) :=
        mul_le_mul_of_nonneg_left hb (pow_nonneg hc0 _)
    _ = ε * (c ^ Fintype.card ι * (Measure.pi fun _ : ι => lam).real (box ι A)) := by ring
    _ = ε := by rw [hone, mul_one]

end Many

section Main

theorem selfDual_pi : ∀ (R : Type) [CommRing R] [TopologicalSpace R] [IsTopologicalRing R] [LocallyCompactSpace R] [SecondCountableTopology R] [T2Space R] [MeasurableSpace R] [BorelSpace R] (ψ : R → ℂ), Continuous ψ → (∀ x y, ψ (x + y) = ψ x * ψ y) → (∀ x, ‖ψ x‖ = 1) → ∀ lam : Measure R, SelfDual lam (fun s t => ψ (s * t)) → (∃ L : AddSubgroup R, IsCompact (L : Set R) ∧ IsOpen (L : Set R)) → (∀ L : AddSubgroup R, IsCompact (L : Set R) → IsOpen (L : Set R) → IsCompact {t | ∀ s ∈ L, ψ (s * t) = 1}) → (∀ K : Set R, IsCompact K → ∃ L : AddSubgroup R, IsCompact (L : Set R) ∧ IsOpen (L : Set R) ∧ K ⊆ L) → (∀ U ∈ 𝓝 (0 : R), ∃ L : AddSubgroup R, IsCompact (L : Set R) ∧ IsOpen (L : Set R) ∧ (L : Set R) ⊆ U) → ∀ (ι : Type) [Fintype ι], SelfDual (Measure.pi fun _ : ι => lam) (fun x y => ψ (x ⬝ᵥ y)) := by
  intro R _ _ _ _ _ _ _ _ ψ hc ha hn lam hsd _ hC hK hU ι _
  haveI := hsd.1
  refine ⟨inferInstance, ?_⟩
  intro Φ Φc Φs hint z
  change Integrable (fun y => ∫ x, Φ x * ψ (x ⬝ᵥ y) ∂(Measure.pi fun _ : ι => lam))
    (Measure.pi fun _ : ι => lam) at hint
  change ∫ y, (∫ x, Φ x * ψ (x ⬝ᵥ y) ∂(Measure.pi fun _ : ι => lam)) * ψ (y ⬝ᵥ z)
    ∂(Measure.pi fun _ : ι => lam) = Φ (-z)
  have hi : Integrable Φ (Measure.pi fun _ : ι => lam) := Φc.integrable_of_hasCompactSupport Φs
  have hPc : ∀ L : AddSubgroup R, IsCompact (L : Set R) → IsOpen (L : Set R) →
      IsCompact (ann ha hn L : Set R) := hC
  obtain ⟨U, hUb⟩ := (𝓝 (0 : R)).exists_antitone_basis
  choose L hLc hLo hLU using fun n => hU (U n) (hUb.mem n)
  have hLs : ∀ S ∈ 𝓝 (0 : R), ∀ᶠ n in Filter.atTop, (L n : Set R) ⊆ S := by
    intro S hS
    obtain ⟨N, -, hN⟩ := hUb.1.mem_iff.1 hS
    filter_upwards [Filter.eventually_ge_atTop N] with n hn
    exact (hLU n).trans ((hUb.2 hn).trans hN)
  have hD := fun n => dual_facts hc ha hn lam hsd (L n) (hLc n) (hLo n) (hPc _ (hLc n) (hLo n))
  have hex : ∀ t : R, ∀ᶠ n in Filter.atTop, t ∈ ann ha hn (L n) := by
    intro t
    obtain ⟨M, hMc, hMo, hMt⟩ := hK {t} isCompact_singleton
    have hMo' := (dual_facts hc ha hn lam hsd M hMc hMo (hPc _ hMc hMo)).2.2
    have hnb : (ann ha hn M : Set R) ∈ 𝓝 (0 : R) :=
      hMo'.mem_nhds (ann ha hn M).zero_mem
    filter_upwards [hLs _ hnb] with n hn s hs
    have := hn hs t (hMt rfl)
    rwa [mul_comm] at this
  set f : (ι → R) → ℂ := fun y =>
    (∫ x, Φ x * ψ (x ⬝ᵥ y) ∂(Measure.pi fun _ : ι => lam)) * ψ (y ⬝ᵥ z) with hf
  have hbm : ∀ n, MeasurableSet (box ι (ann ha hn (L n) : Set R)) := fun n =>
    MeasurableSet.univ_pi fun _ => (hPc _ (hLc n) (hLo n)).isClosed.measurableSet
  have fm : AEStronglyMeasurable f (Measure.pi fun _ : ι => lam) :=
    hint.aestronglyMeasurable.mul
      (continuous_psi_dot hc continuous_id continuous_const).aestronglyMeasurable
  have lim1 : Filter.Tendsto (fun n => ∫ y in box ι (ann ha hn (L n) : Set R), f y
      ∂(Measure.pi fun _ : ι => lam)) Filter.atTop
      (𝓝 (∫ y, f y ∂(Measure.pi fun _ : ι => lam))) := by
    simp_rw [← integral_indicator (hbm _)]
    refine tendsto_integral_of_dominated_convergence
      (fun y => ‖∫ x, Φ x * ψ (x ⬝ᵥ y) ∂(Measure.pi fun _ : ι => lam)‖) ?_ hint.norm ?_ ?_
    · exact fun n => fm.indicator (hbm n)
    · refine fun n => Filter.Eventually.of_forall fun y => ?_
      refine (norm_indicator_le_norm_self _ _).trans ?_
      simp [hf, hn]
    · refine Filter.Eventually.of_forall fun y => ?_
      refine tendsto_const_nhds.congr' ?_
      have : ∀ᶠ n in Filter.atTop, ∀ i, y i ∈ ann ha hn (L n) :=
        Filter.eventually_all.2 fun i => hex (y i)
      filter_upwards [this] with n hn'
      rw [Set.indicator_of_mem (show y ∈ box ι (ann ha hn (L n) : Set R) from fun i _ => hn' i)]
  have lim2 : Filter.Tendsto (fun n => ∫ y in box ι (ann ha hn (L n) : Set R), f y
      ∂(Measure.pi fun _ : ι => lam)) Filter.atTop (𝓝 (Φ (-z))) := by
    rw [Metric.tendsto_nhds]
    intro ε hε
    have hcont : ContinuousAt (fun u : ι → R => Φ (u - z)) 0 := by fun_prop
    have hS : ∀ᶠ u in 𝓝 (0 : ι → R), ‖Φ (u - z) - Φ (-z)‖ < ε / 2 := by
      have := (Metric.tendsto_nhds.1 hcont.tendsto) (ε / 2) (half_pos hε)
      simpa [dist_eq_norm] using this
    have hS' := hS
    rw [Filter.Eventually, nhds_pi, Filter.mem_pi'] at hS'
    obtain ⟨I, t, ht, hIt⟩ := hS'
    have hall : ∀ᶠ n in Filter.atTop, ∀ i, (L n : Set R) ⊆ t i :=
      Filter.eventually_all.2 fun i => hLs _ (ht i)
    filter_upwards [hall] with n hn'
    obtain ⟨d1, -, -⟩ := hD n
    have hbf := box_formula hc ha hn lam (L n) (ann ha hn (L n)) (hLo n).measurableSet
      (hPc _ (hLc n) (hLo n)).isClosed.measurableSet (hPc _ (hLc n) (hLo n)).measure_lt_top
      (fun s hs t ht => ht s hs) (hD n).2.1 Φ Φc hi z
    rw [hf, hbf, dist_eq_norm]
    have hsub : HasCompactSupport fun u : ι → R => Φ (u - z) :=
      Φs.comp_homeomorph (Homeomorph.subRight z)
    have hint2 : Integrable (fun u : ι → R => Φ (u - z)) (Measure.pi fun _ : ι => lam) :=
      (Φc.comp (continuous_id.sub continuous_const)).integrable_of_hasCompactSupport hsub
    refine lt_of_le_of_lt (mean_close lam (L n : Set R) (hLo n).measurableSet
      (hLc n).measure_lt_top _ measureReal_nonneg d1 _ hint2.integrableOn (Φ (-z)) (ε / 2) ?_)
      (half_lt_self hε)
    intro u hu
    refine le_of_lt (hIt fun i _ => hn' i (hu i (Set.mem_univ i)))
  exact tendsto_nhds_unique lim1 lim2

end Main

end GlobalTheory.CompanionTheory.SW.FourierPi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HarrisTaylorCardKilledByIdealEqAbsNormPow =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi", "h": "module\n\npublic import Formalism.UnipotentAdelicQuotients.SWXSDefs\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.CompletionIsLocalRing\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.HarrisTaylorCardKilledByIdealEqAbsNormPow\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.HermitianCharacters.SelfDualLatticeFiltrationCharacter\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LocalDensityOfSelfDualLatticeLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open HeckeCharacterZeroLocus.SiegelWeilU GlobalTheory.CompanionTheory.SW NumberField IsDedekindDomain MeasureTheory Topology
open scoped TensorProduct ENNReal NNReal Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.PiV

variable {F : Type} [Field F] [NumberField F] {v : HeightOneSpectrum (𝓞 F)}

def ball (v : HeightOneSpectrum (𝓞 F)) (m : ℤ) : AddSubgroup (Fv F v) where
  carrier := {x | Valued.v x ≤ WithZero.exp m}
  add_mem' := by
    intro a b ha hb
    change Valued.v (a + b) ≤ _
    exact (Valuation.map_add _ a b).trans (max_le ha hb)
  zero_mem' := by
    change Valued.v (0 : Fv F v) ≤ _
    simp
  neg_mem' := by
    intro a ha
    change Valued.v (-a) ≤ _
    rw [Valuation.map_neg]
    exact ha

theorem mem_ball (m : ℤ) (x : Fv F v) : x ∈ ball v m ↔ Valued.v x ≤ WithZero.exp m := Iff.rfl

theorem ball_isCompact (m : ℤ) : IsCompact (ball v m : Set (Fv F v)) :=
  (GlobalTheory.LatticeDensity.ball_compact_open v m).1

theorem ball_isOpen (m : ℤ) : IsOpen (ball v m : Set (Fv F v)) :=
  (GlobalTheory.LatticeDensity.ball_compact_open v m).2

theorem ball_le {a b : ℤ} (hab : a ≤ b) : (ball v a : Set (Fv F v)) ⊆ ball v b :=
  fun _ hx => le_trans ((mem_ball _ _).1 hx) (WithZero.exp_le_exp.2 hab)

theorem exists_mem_ball (x : Fv F v) : ∃ m, x ∈ ball v m := by
  by_cases hx : Valued.v x = 0
  · exact ⟨0, by rw [mem_ball, hx]; exact zero_le⟩
  · exact ⟨WithZero.log (Valued.v x), by rw [mem_ball, WithZero.exp_log hx]⟩

theorem exists_ball_of_isCompact (K : Set (Fv F v)) (hK : IsCompact K) :
    ∃ m, K ⊆ ball v m := by
  refine hK.elim_directed_cover (fun m : ℤ => (ball v m : Set (Fv F v))) ball_isOpen ?_
    (Monotone.directed_le fun a b hab => ball_le hab)
  intro x _
  obtain ⟨m, hm⟩ := exists_mem_ball x
  exact Set.mem_iUnion.2 ⟨m, hm⟩

theorem exists_ball_subset (U : Set (Fv F v)) (hU : U ∈ 𝓝 (0 : Fv F v)) :
    ∃ m, (ball v m : Set (Fv F v)) ⊆ U := by
  obtain ⟨W, hWU, hWo, h0⟩ := mem_nhds_iff.1 hU
  have hcl : ∀ m : ℤ, IsClosed (ball v m : Set (Fv F v)) := fun m => (ball_isCompact m).isClosed
  obtain ⟨n, hn⟩ := (ball_isCompact (v := v) 0).elim_directed_cover
    (fun n : ℕ => W ∪ (ball v (-(n : ℤ)) : Set (Fv F v))ᶜ)
    (fun n => hWo.union (hcl _).isOpen_compl)
    (by
      intro x _
      by_cases hx : x = 0
      · exact Set.mem_iUnion.2 ⟨0, Or.inl (hx ▸ h0)⟩
      · have hv : Valued.v x ≠ 0 := (Valuation.ne_zero_iff _).2 hx
        refine Set.mem_iUnion.2 ⟨(WithZero.log (Valued.v x)).natAbs + 1, Or.inr fun hm => ?_⟩
        have h1 := WithZero.exp_le_exp.1 ((WithZero.exp_log hv).le.trans ((mem_ball _ _).1 hm))
        omega)
    (Monotone.directed_le fun a b hab x hx => hx.imp id fun h hm =>
      h (ball_le (by omega) hm))
  refine ⟨min (-(n : ℤ)) 0, fun x hx => hWU ?_⟩
  rcases hn (ball_le (min_le_right _ _) hx) with h | h
  · exact h
  · exact absurd (ball_le (min_le_left _ _) hx) h

theorem psiV_add (ψ : AddChar (AF F) ℂ) (v : HeightOneSpectrum (𝓞 F)) (x y : Fv F v) :
    psiV F ψ v (x + y) = psiV F ψ v x * psiV F ψ v y := by
  classical
  have h : pairA F 0 (singleV F v (x + y)) =
      pairA F 0 (singleV F v x) + pairA F 0 (singleV F v y) := by
    have : singleV F v (x + y) = singleV F v x + singleV F v y :=
      RestrictedProduct.single_add _ v x y
    rw [this]
    exact Prod.ext (add_zero (0 : Ainf F)).symm rfl
  rw [psiV, h, AddChar.map_add_eq_mul]
  rfl

theorem ann_isCompact {χ : Fv F v → ℂ} (hc : Continuous χ) (h0 : χ 0 = 1) {y : Fv F v} (hy : χ y ≠ 1)
    (L : AddSubgroup (Fv F v)) (hLo : IsOpen (L : Set (Fv F v))) :
    IsCompact {t | ∀ s ∈ L, χ (s * t) = 1} := by
  obtain ⟨m, hm⟩ := exists_ball_subset (L : Set (Fv F v)) (hLo.mem_nhds L.zero_mem)
  have hy0 : y ≠ 0 := fun h => hy (h ▸ h0)
  have hv : Valued.v y ≠ 0 := (Valuation.ne_zero_iff _).2 hy0
  have hcl : IsClosed {t | ∀ s ∈ L, χ (s * t) = 1} := by
    simp only [Set.ofPred_forall]
    exact isClosed_iInter fun s => isClosed_iInter fun _ =>
      isClosed_eq (hc.comp (continuous_const.mul continuous_id)) continuous_const
  refine (ball_isCompact (v := v) (WithZero.log (Valued.v y) - m)).of_isClosed_subset hcl ?_
  intro t ht
  by_contra hne
  have hlt : WithZero.exp (WithZero.log (Valued.v y) - m) < Valued.v t :=
    not_le.1 fun h => hne h
  have hvt : Valued.v t ≠ 0 := (lt_of_le_of_lt zero_le hlt).ne'
  have ht0 : t ≠ 0 := (Valuation.ne_zero_iff _).1 hvt
  have hmem : y / t ∈ ball v m := by
    rw [mem_ball, map_div₀, div_le_iff₀ (zero_lt_iff.2 hvt)]
    calc Valued.v y = WithZero.exp m * WithZero.exp (WithZero.log (Valued.v y) - m) := by
          rw [← WithZero.exp_add, add_sub_cancel, WithZero.exp_log hv]
      _ ≤ WithZero.exp m * Valued.v t := mul_le_mul_right hlt.le _
  have := ht _ (hm hmem)
  rw [div_mul_cancel₀ _ ht0] at this
  exact hy this

theorem selfDual_pi_v : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsCharAF F ψ → ∀ (v : HeightOneSpectrum (𝓞 F)) (k : Measure (Fv F v)), SelfDual k (fun s t => psiV F ψ v (s * t)) → ∀ (ι : Type) [Fintype ι], SelfDual (Measure.pi fun _ : ι => k) (fun x y => psiV F ψ v (x ⬝ᵥ y)) := by
  intro F _ _ ψ hψ v k hk ι _
  obtain ⟨h1, h2, h3, h4, -⟩ := GlobalTheory.CompanionTheory.SW.LocFv.isLocR_Fv F v
  have := h1
  have := h2
  have := h3
  have := h4
  have : BorelSpace (Fv F v) := ⟨rfl⟩
  obtain ⟨hc, y, hy⟩ := (GlobalTheory.CompanionTheory.AdeleCharLocal.char_nontrivial_at_every_place F ψ hψ).1 v
  have ha := psiV_add ψ v
  have hn : ∀ x, ‖psiV F ψ v x‖ = 1 := fun x => hψ.2.1 _
  refine GlobalTheory.CompanionTheory.SW.FourierPi.selfDual_pi (Fv F v) (psiV F ψ v) hc ha hn k hk
    ⟨ball v 0, ball_isCompact 0, ball_isOpen 0⟩
    (fun L _ hLo => ann_isCompact hc (GlobalTheory.CompanionTheory.SW.FourierPi.psi_zero ha hn) hy L hLo)
    (fun K hK => ?_) (fun U hU => ?_) ι
  · obtain ⟨m, hm⟩ := exists_ball_of_isCompact K hK
    exact ⟨ball v m, ball_isCompact m, ball_isOpen m, hm⟩
  · obtain ⟨m, hm⟩ := exists_ball_subset U hU
    exact ⟨ball v m, ball_isCompact m, ball_isOpen m, hm⟩

end GlobalTheory.CompanionTheory.SW.PiV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.NonarchimedeanSelfdualMeasurePi =====

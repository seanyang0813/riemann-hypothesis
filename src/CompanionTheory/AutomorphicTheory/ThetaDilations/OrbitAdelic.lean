module

public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData
public import Development.WeilBound.CoreStatements.ThetaDilations.IsOpenCoset
public import CompanionTheory.AutomorphicTheory.ThetaDilations.SqPosOfNe
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicHaarMeasureLinearChange
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicHaarMeasureScaling
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleTopology
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.IwasawaDecompositionAdelicSL2, CompanionTheory.AutomorphicTheory.ThetaDilations.OrbitAdelic

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.IwasawaDecompositionAdelicSL2 =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.IwasawaDecompositionAdelicSL2", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology GlobalTheory.CompanionTheory.SW.Core
open scoped ENNReal NNReal MatrixGroups Classical

noncomputable section

namespace GlobalTheory.CompanionTheory.SW.Iwasawa

variable {F : Type} [Field F] [NumberField F]

def IntAt (b : F) (v : HeightOneSpectrum (𝓞 F)) : Prop :=
  algebraMap F (A F) b v ∈ v.adicCompletionIntegers F


open Classical in
def idem (b : F) : A F :=
  ⟨fun v => if IntAt b v then 1 else 0, Filter.Eventually.of_forall fun v => by
    by_cases h : IntAt b v
    · simpa [h] using (v.adicCompletionIntegers F).one_mem
    · simpa [h] using (v.adicCompletionIntegers F).zero_mem⟩


open Classical in
def scale (b : F) : A F :=
  ⟨fun v => if IntAt b v then 1 else (algebraMap F (A F) b v)⁻¹,
    Filter.Eventually.of_forall fun v => by
      by_cases h : IntAt b v
      · simpa [h] using (v.adicCompletionIntegers F).one_mem
      · simpa [h] using ((v.adicCompletionIntegers F).mem_or_inv_mem _).resolve_left h⟩


open Classical in
def scaleInv (b : F) : A F :=
  ⟨fun v => if IntAt b v then 1 else algebraMap F (A F) b v, by
    filter_upwards [(algebraMap F (A F) b).2] with v hv
    have h : IntAt b v := hv
    simpa [h] using (v.adicCompletionIntegers F).one_mem⟩

theorem mul_at (x y : A F) (v : HeightOneSpectrum (𝓞 F)) : (x * y) v = x v * y v := rfl
theorem add_at (x y : A F) (v : HeightOneSpectrum (𝓞 F)) : (x + y) v = x v + y v := rfl
theorem sub_at (x y : A F) (v : HeightOneSpectrum (𝓞 F)) : (x - y) v = x v - y v := rfl
theorem one_at (v : HeightOneSpectrum (𝓞 F)) : (1 : A F) v = 1 := rfl

theorem idem_int {b : F} {v : HeightOneSpectrum (𝓞 F)} (h : IntAt b v) : idem b v = 1 :=
  if_pos h
theorem idem_not {b : F} {v : HeightOneSpectrum (𝓞 F)} (h : ¬ IntAt b v) : idem b v = 0 :=
  if_neg h
theorem scale_int {b : F} {v : HeightOneSpectrum (𝓞 F)} (h : IntAt b v) : scale b v = 1 :=
  if_pos h
theorem scale_not {b : F} {v : HeightOneSpectrum (𝓞 F)} (h : ¬ IntAt b v) :
    scale b v = (algebraMap F (A F) b v)⁻¹ :=
  if_neg h
theorem scaleInv_int {b : F} {v : HeightOneSpectrum (𝓞 F)} (h : IntAt b v) : scaleInv b v = 1 :=
  if_pos h
theorem scaleInv_not {b : F} {v : HeightOneSpectrum (𝓞 F)} (h : ¬ IntAt b v) :
    scaleInv b v = algebraMap F (A F) b v :=
  if_neg h

theorem ne_zero_of_not_int {b : F} {v : HeightOneSpectrum (𝓞 F)} (h : ¬ IntAt b v) :
    algebraMap F (A F) b v ≠ 0 := fun h0 =>
  h (by unfold IntAt; rw [h0]; exact (v.adicCompletionIntegers F).zero_mem)

theorem scale_mul_scaleInv (b : F) : scale b * scaleInv b = 1 := by
  refine FiniteAdeleRing.ext F fun v => ?_
  rw [mul_at, one_at]
  by_cases h : IntAt b v
  · rw [scale_int h, scaleInv_int h, one_mul]
  · rw [scale_not h, scaleInv_not h, inv_mul_cancel₀ (ne_zero_of_not_int h)]

theorem scale_combo (b : F) :
    scale b * idem b + (1 - idem b) * (scale b * algebraMap F (A F) b) = 1 := by
  refine FiniteAdeleRing.ext F fun v => ?_
  rw [add_at, mul_at, mul_at, mul_at, sub_at, one_at]
  by_cases h : IntAt b v
  · rw [scale_int h, idem_int h]; ring
  · rw [scale_not h, idem_not h, inv_mul_cancel₀ (ne_zero_of_not_int h)]; ring

theorem idem_mem (b : F) : idem b ∈ Oh F := fun v => by
  by_cases h : IntAt b v
  · rw [idem_int h]; exact (v.adicCompletionIntegers F).one_mem
  · rw [idem_not h]; exact (v.adicCompletionIntegers F).zero_mem

theorem scale_mem (b : F) : scale b ∈ Oh F := fun v => by
  by_cases h : IntAt b v
  · rw [scale_int h]; exact (v.adicCompletionIntegers F).one_mem
  · rw [scale_not h]
    exact ((v.adicCompletionIntegers F).mem_or_inv_mem _).resolve_left h

theorem Oh_one : (1 : A F) ∈ Oh F := fun v => (v.adicCompletionIntegers F).one_mem

theorem Oh_neg {x : A F} (hx : x ∈ Oh F) : -x ∈ Oh F := fun v =>
  (v.adicCompletionIntegers F).neg_mem _ (hx v)

theorem Oh_sub {x y : A F} (hx : x ∈ Oh F) (hy : y ∈ Oh F) : x - y ∈ Oh F := fun v =>
  (v.adicCompletionIntegers F).sub_mem (hx v) (hy v)

theorem Oh_mul {x y : A F} (hx : x ∈ Oh F) (hy : y ∈ Oh F) : x * y ∈ Oh F := fun v =>
  (v.adicCompletionIntegers F).mul_mem _ _ (hx v) (hy v)

theorem scale_mul_mem (b : F) : scale b * algebraMap F (A F) b ∈ Oh F := fun v => by
  rw [mul_at]
  by_cases h : IntAt b v
  · rw [scale_int h, one_mul]; exact h
  · rw [scale_not h, inv_mul_cancel₀ (ne_zero_of_not_int h)]
    exact (v.adicCompletionIntegers F).one_mem

def scaleUnit (b : F) : (A F)ˣ :=
  ⟨scale b, scaleInv b, scale_mul_scaleInv b, by rw [mul_comm]; exact scale_mul_scaleInv b⟩

def kMat (b : F) : SL(2, A F) :=
  ⟨!![idem b - 1, idem b; -scale b, -(scale b * algebraMap F (A F) b)], by
    rw [Matrix.det_fin_two_of]
    linear_combination scale_combo b⟩

theorem image_scale (b : F) :
    (fun x => scale b * x) '' Oh F = {x | x ∈ Oh F ∧ algebraMap F (A F) b * x ∈ Oh F} := by
  ext x
  constructor
  · rintro ⟨o, ho, rfl⟩
    refine ⟨Oh_mul (scale_mem b) ho, ?_⟩
    have : algebraMap F (A F) b * (scale b * o) = (scale b * algebraMap F (A F) b) * o := by ring
    show algebraMap F (A F) b * (scale b * o) ∈ Oh F
    rw [this]
    exact Oh_mul (scale_mul_mem b) ho
  · rintro ⟨hx, hbx⟩
    refine ⟨scaleInv b * x, fun v => ?_, ?_⟩
    · rw [mul_at]
      by_cases h : IntAt b v
      · rw [scaleInv_int h, one_mul]; exact hx v
      · rw [scaleInv_not h]; exact hbx v
    · show scale b * (scaleInv b * x) = x
      rw [← mul_assoc, scale_mul_scaleInv, one_mul]

theorem w_n_eq {R : Type} [CommRing R] (β e : R) (u : Rˣ) (k : SL(2, R))
    (h00 : k 0 0 = e - 1) (h01 : k 0 1 = e) (h10 : k 1 0 = -(u : R))
    (h11 : k 1 1 = -((u : R) * β)) (h : (u : R) * e + (1 - e) * ((u : R) * β) = 1) :
    wMat * nMat β = nMat ((e - 1) * (u : R)) * mMat u * k := by
  have hu : (u : R) * ((u⁻¹ : Rˣ) : R) = 1 := u.mul_inv
  have hk : (k : Matrix (Fin 2) (Fin 2) R) = !![e - 1, e; -(u : R), -((u : R) * β)] := by
    rw [Matrix.eta_fin_two (k : Matrix (Fin 2) (Fin 2) R), h00, h01, h10, h11]
  apply Subtype.ext
  change (!![0, 1; -1, 0] * !![1, β; 0, 1] : Matrix (Fin 2) (Fin 2) R) =
    !![1, (e - 1) * (u : R); 0, 1] * !![(u : R), 0; 0, ((u⁻¹ : Rˣ) : R)] *
      (k : Matrix (Fin 2) (Fin 2) R)
  rw [hk]
  simp only [Matrix.mul_fin_two]
  have entries : ∀ a b c d a' b' c' d' : R, a = a' → b = b' → c = c' → d = d' →
      (!![a, b; c, d] : Matrix (Fin 2) (Fin 2) R) = !![a', b'; c', d'] := by
    rintro _ _ _ _ _ _ _ _ rfl rfl rfl rfl
    rfl
  refine entries _ _ _ _ _ _ _ _ ?_ ?_ ?_ ?_
  · linear_combination ((e - 1) * (u : R)) * hu
  · linear_combination -h + ((e - 1) * (u : R) * β) * hu
  · linear_combination hu
  · linear_combination β * hu

theorem iwasawa_w_n : ∀ (F : Type) [Field F] [NumberField F], ∀ b : F,
    ∃ (y : A F) (a : (A F)ˣ) (k : SL(2, A F)), (∀ i j, k i j ∈ Oh F) ∧
      wMat * nMat (algebraMap F (A F) b) = nMat y * mMat a * k ∧
      (fun x => (a : A F) * x) '' Oh F = {x | x ∈ Oh F ∧ algebraMap F (A F) b * x ∈ Oh F} := by
  intro F _ _ b
  refine ⟨(idem b - 1) * scale b, scaleUnit b, kMat b, ?_, ?_, image_scale b⟩
  · intro i j
    fin_cases i <;> fin_cases j
    · exact Oh_sub (idem_mem b) Oh_one
    · exact idem_mem b
    · exact Oh_neg (scale_mem b)
    · exact Oh_neg (scale_mul_mem b)
  · exact w_n_eq _ (idem b) (scaleUnit b) (kMat b) rfl rfl rfl rfl (scale_combo b)

end GlobalTheory.CompanionTheory.SW.Iwasawa
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.IwasawaDecompositionAdelicSL2 =====

-- ===== clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.OrbitAdelic =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ThetaDilations.OrbitAdelic", "h": "module\n\npublic import Development.WeilBound.CoreStatements.ThetaDilations.IsOpenCoset\npublic import CompanionTheory.AutomorphicTheory.ThetaDilations.SqPosOfNe\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicHaarMeasureLinearChange\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.IwasawaDecompositionAdelicSL2\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.AdelicHaarMeasureScaling\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.FiniteAdeleTopology\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology GlobalTheory.CompanionTheory.SW.Core
open scoped ENNReal NNReal MatrixGroups

noncomputable section

namespace CompanionTheory.PlacePermOperatorBicommutantSpan

open PositivityTheory.PlacePermOperatorBicommutantSpan (CO co_cpt co_perp ind perpG sb_level)

variable {F : Type} [Field F] [NumberField F] {ι : Type} [Fintype ι]

alias oh_mul := _root_.GlobalTheory.CompanionTheory.SW.Core.Scale.mul_mem_Oh

theorem oh_nat (N : ℕ) : (N : A F) ∈ Oh F := by
  induction N with
  | zero => exact fun v => by rw [Nat.cast_zero]; exact zero_mem _
  | succ n ih => exact fun v => by rw [Nat.cast_succ]; exact add_mem (ih v) (one_mem _)

def LN (F ι : Type) [Field F] [NumberField F] (N : ℕ) : AddSubgroup (ι → A F) where
  carrier := {x | ∀ i, ∃ y ∈ Oh F, x i = (N : A F) * y}
  zero_mem' := fun _ => ⟨0, fun _ => zero_mem _, (mul_zero _).symm⟩
  add_mem' := fun ha hb i => by
    obtain ⟨y, hy, e⟩ := ha i
    obtain ⟨y', hy', e'⟩ := hb i
    exact ⟨y + y', fun v => add_mem (hy v) (hy' v), by rw [Pi.add_apply, e, e', mul_add]⟩
  neg_mem' := fun ha i => by
    obtain ⟨y, hy, e⟩ := ha i
    exact ⟨-y, fun v => neg_mem (hy v), by rw [Pi.neg_apply, e, mul_neg]⟩

theorem co_LN {N : ℕ} (hN : 0 < N) : CO (LN F ι N) := by
  obtain ⟨-, -, -, h1, -, -, -, -, -, h2⟩ := _root_.GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F
  have e : (LN F ι N : Set (ι → A F)) = Set.univ.pi fun _ => (fun y => (N : A F) * y) '' Oh F := by
    ext x
    exact ⟨fun h i _ => (h i).imp fun y hy => ⟨hy.1, hy.2.symm⟩, fun h i => (h i trivial).imp fun y hy => ⟨hy.1, hy.2.symm⟩⟩
  refine ⟨e ▸ isCompact_univ_pi fun _ => h1.image (continuous_const.mul continuous_id), ?_⟩
  have e' : (LN F ι N : Set (ι → A F)) = ⋂ i, (fun x => x i) ⁻¹' {x : A F | ∃ y ∈ Oh F, x = (N : A F) * y} := by
    ext x; rw [Set.mem_iInter]; rfl
  exact e' ▸ isOpen_iInter_of_finite fun i => (h2 N hN).preimage (continuous_apply i)

theorem LN_small {U : Set (ι → A F)} (hU : U ∈ 𝓝 (0 : ι → A F)) : ∃ N : ℕ, 0 < N ∧ (LN F ι N : Set (ι → A F)) ⊆ U := by
  obtain ⟨-, -, -, -, -, -, -, h1, -⟩ := _root_.GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F
  rw [nhds_pi, Filter.mem_pi'] at hU
  obtain ⟨I, t, ht, hsub⟩ := hU
  obtain ⟨N, hN, h⟩ := h1 (⋂ i, t i) (Filter.iInter_mem.2 ht)
  refine ⟨N, hN, fun x hx => hsub fun i _ => ?_⟩
  obtain ⟨y, hy, e⟩ := hx i
  exact e ▸ Set.mem_iInter.1 (h y hy) i

theorem orbit_adelic [MeasurableSpace (A F)] {ψ : AddChar (A F) ℂ} {h : A F} {B : Matrix ι ι (A F)}
    {μ : Measure (ι → A F)} (H : NAQuad ψ h B μ) {φ : (ι → A F) → ℂ} (hφ : SB φ) :
    ∃ (L' : AddSubgroup (ι → A F)) (s : Finset (ι → A F)) (C : ℝ), CO L' ∧ ∀ k : SL(2, A F), (∀ i j, k i j ∈ Oh F) →
      ∀ T, Impl ψ h B μ k T → (∀ u, ‖T φ u‖ ≤ C) ∧
        ∃ c : (ι → A F) → ℂ, (∀ a, ‖c a‖ ≤ C) ∧ T φ = ∑ a ∈ s, c a • ind a L' := by
  have hD := H.2.2.2.2.2
  obtain ⟨L, L', hL, hL', -, h0, hinv⟩ := sb_level hD hφ
  obtain ⟨L₂, hL₂, hK⟩ := co_cpt hD ((co_LN (F := F) (ι := ι) one_pos).1.image (continuous_const_smul h))
  obtain ⟨N, hN, hsub⟩ := LN_small (((hL'.2.inter (co_perp hD hL).2).inter (co_perp hD hL₂).2).mem_nhds
    ⟨⟨L'.zero_mem, (perpG hD L).zero_mem⟩, (perpG hD L₂).zero_mem⟩)
  refine orbit_bd H (Oh F) (co_LN hN) (fun a ha x hx i => ?_) hφ fun x hx y hy => funext fun u => ?_
  · obtain ⟨y, hy, e⟩ := hx i
    exact ⟨a * y, oh_mul ha hy, by rw [Pi.smul_apply, e, smul_eq_mul, mul_left_comm]⟩
  · have h1 : chiB ψ B (h • x) y = 1 := (hsub hy).2 _ (hK ⟨x, fun i => by
      obtain ⟨z, hz, e⟩ := hx i
      exact ⟨N * z, oh_mul (oh_nat N) hz, by rw [e, Nat.cast_one, one_mul]⟩, rfl⟩)
    rw [chiB, smul_dotProduct, smul_eq_mul] at h1
    rw [Heisenberg₂, hinv u x (hsub hx).1.1, AddChar.map_add_eq_mul, h1, mul_one]
    by_cases hu : u ∈ L
    · rw [show ψ (u ⬝ᵥ (B *ᵥ y)) = 1 from (hsub hy).1.2 u hu, one_mul]
    · rw [h0 u hu, mul_zero]

theorem fstar_decay : ∀ (F : Type) [Field F] [NumberField F] [MeasurableSpace (A F)] [BorelSpace (A F)] (lf : Measure (A F)), lf.IsAddHaarMeasure → lf (Oh F) = 1 → ∀ ψ : AddChar (A F) ℂ, IsStdChar F ψ → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (M : ℕ) (B : Matrix ι ι F) (ρ : InfinitePlace F → (F →+* ℝ)) (P : InfinitePlace F → Matrix ι ι ℝ), QSetup M B ρ P → ∀ φ : (ι → A F) → ℂ, SB φ → ∃ C : ℝ, ∀ b : F, ‖fstar ψ (hf F) (Bf B) (muF B lf) φ (algebraMap F (A F) b)‖ ≤ C * ((den b : ℝ) ^ M)⁻¹ := by
  intro F _ _ _ _ lf hlf h1 ψ hψ ι _ _ M B ρ P hQ φ hφ
  have H := _root_.GlobalTheory.CompanionTheory.SW.Core.SelfDual.naQuad F lf hlf h1 ψ hψ ι B hQ.2.2.1 hQ.2.2.2.1
  obtain ⟨_, _, C, -, hC⟩ := orbit_adelic H hφ
  refine ⟨C, fun b => ?_⟩
  obtain ⟨y, a, k, hk, e, ha⟩ := _root_.GlobalTheory.CompanionTheory.SW.Iwasawa.iwasawa_w_n F b
  have hden := (_root_.GlobalTheory.CompanionTheory.SW.Core.Scale.lf_scale F lf hlf h1).2.1 b
  have hO := (_root_.GlobalTheory.CompanionTheory.SW.Core.AfTop.finiteAdele_topology F).2.2.2.1
  have hd : den b ≠ 0 := fun h0 => by
    have := hlf
    rw [h0, Nat.cast_zero, ENNReal.inv_zero] at hden
    exact ((measure_mono (show {x : A F | x ∈ Oh F ∧ algebraMap F (A F) b * x ∈ Oh F} ⊆ Oh F from
      fun _ hx => hx.1)).trans_lt hO.measure_lt_top).ne hden
  have hm : (0 : ℝ) < (den b : ℝ) ^ M := pow_pos (by exact_mod_cast Nat.pos_of_ne_zero hd) M
  have hB := H.2.2.2.2.2.2.2.2.2.1
  have hD := impl_D H a⁻¹ hm fun s hs => by
    have hs' : MeasurableSet ((fun u => ((a⁻¹ : (A F)ˣ) : A F) • u) '' s) :=
      (Homeomorph.smul a⁻¹ : (ι → A F) ≃ₜ (ι → A F)).measurableEmbedding.measurableSet_image.2 hs
    have h2 := (_root_.GlobalTheory.CompanionTheory.SW.Core.PiScale.pi_scale F lf hlf h1 ι).2 a _ hs'
    rw [Set.image_image, ha, hden, hQ.2.1] at h2
    simp only [smul_smul, Units.mul_inv, one_smul, Set.image_id'] at h2
    rw [muF, Measure.smul_apply, Measure.smul_apply, h2, smul_eq_mul, smul_eq_mul, mul_left_comm, ← mul_assoc _ (_ ^ _),
      ← pow_mul, ENNReal.ofReal_pow (Nat.cast_nonneg _), ENNReal.ofReal_natCast, mul_comm M 2, ← mul_pow,
      ENNReal.mul_inv_cancel (by exact_mod_cast hd) (ENNReal.natCast_ne_top _), one_pow, one_mul]
  have hT := impl_mul hD (impl_mul (impl_U H (-y)) (impl_mul (impl_fou_chiB H) (impl_U H (algebraMap F (A F) b))))
  have ek : mMat a⁻¹ * (nMat (-y) * (wMat * nMat (algebraMap F (A F) b))) = k := by
    have e1 : nMat (-y) * nMat y = 1 := by
      ext i j
      simp only [Matrix.SpecialLinearGroup.coe_mul]
      fin_cases i <;> fin_cases j <;> simp [nMat, Matrix.mul_apply, Fin.sum_univ_two]
    have e2 : mMat a⁻¹ * mMat a = 1 := by
      ext i j
      simp only [Matrix.SpecialLinearGroup.coe_mul]
      fin_cases i <;> fin_cases j <;> simp [mMat, Matrix.mul_apply, Fin.sum_univ_two]
    rw [e, mul_assoc, ← mul_assoc (nMat (-y)), e1, one_mul, ← mul_assoc, e2, one_mul]
  rw [ek] at hT
  have h3 := (hC k hk _ hT).1 0
  simp only [Function.comp, opD, smul_zero, opU, qf, fou, chiB, mulVec_zero, dotProduct_zero, mul_zero,
    AddChar.map_zero_eq_one, one_mul, mul_one, norm_mul, Complex.norm_real, Real.norm_of_nonneg hm.le] at h3
  rw [← div_eq_mul_inv, le_div_iff₀ hm, mul_comm]
  exact h3

end CompanionTheory.PlacePermOperatorBicommutantSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.OrbitAdelic =====

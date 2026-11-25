module

public import Formalism.LocalToGlobal.ProjectiveLattices.CrudeBase
public import Formalism.LocalToGlobal.ProjectiveLattices.PlaceBelow
public import Formalism.LocalToGlobal.ProjectiveLattices.CrudeMin
public import Formalism.LocalToGlobal.ProjectiveLattices.CrudeVal
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.PowerSeriesExpIntegralCanonGaugeAdditiveSecond
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.CrudeDiv, Formalism.LocalToGlobal.ProjectiveLattices.CrudeOrd, Formalism.LocalToGlobal.ProjectiveLattices.ConjNeSelfOfCM

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.CrudeDiv =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.CrudeDiv", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CrudeBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.Crude

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {k : Type} [CommRing k] {d n : ℕ}

theorem div_Lin_add (b : Fin n) (v : Fin d → k) (f g : PS k n d) :
    Lin b v (f + g) = Lin b v f + Lin b v g := by
  simp only [Lin, map_add (f := _), mul_add, Finset.sum_add_distrib]

theorem div_Lin_mul (b : Fin n) (v : Fin d → k) (f g : PS k n d) :
    Lin b v (f * g) = Lin b v f * g + f * Lin b v g := by
  simp only [Lin, Derivation.leibniz, smul_eq_mul, mul_add, Finset.sum_add_distrib, Finset.sum_mul,
    Finset.mul_sum]
  rw [add_comm]
  congr 1 <;> refine Finset.sum_congr rfl fun j _ => ?_ <;> ring

theorem div_Lin_C (b : Fin n) (v : Fin d → k) (c : k) : Lin b v (C c : PS k n d) = 0 := by
  simp [Lin, MvPowerSeries.pderiv_C]

theorem Lin_linForm (b b' : Fin n) (v w : Fin d → k) :
    Lin b v (∑ j : Fin d, C (w j) * (X (b', j) : PS k n d)) =
      C (if b = b' then ∑ j : Fin d, v j * w j else 0) := by
  unfold Lin
  by_cases h : b = b'
  · subst h

    simp [MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_C, Derivation.leibniz, map_sum, Pi.single_apply, Prod.ext_iff]
  · simp [MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_C, Derivation.leibniz, Prod.ext_iff, h]

theorem div_Lin_aeval {ι : Type} [DecidableEq ι] (cp : ι → Fin n) (u : ι → Fin d → k) (φ : ι → PS k n d)
    (l : ι) (hl : ∀ l', Lin (cp l) (u l) (φ l') = C (if l = l' then 1 else 0)) (Q : MvPolynomial ι k) :
    Lin (cp l) (u l) (MvPolynomial.aeval φ Q) = MvPolynomial.aeval φ (MvPolynomial.pderiv l Q) := by
  induction Q using MvPolynomial.induction_on with
  | C a =>
    rw [MvPolynomial.aeval_C, MvPolynomial.pderiv_C, map_zero, MvPowerSeries.algebraMap_apply]
    simpa using div_Lin_C (cp l) (u l) a
  | add p q hp hq => rw [map_add (f := _), div_Lin_add, hp, hq, map_add (f := _), map_add (f := _)]
  | mul_X p i hp =>
    rw [map_mul, div_Lin_mul, hp, MvPolynomial.aeval_X, hl, Derivation.leibniz, MvPolynomial.pderiv_X]
    by_cases h : l = i
    · subst h
      simp
      ring
    · simp [h]
      ring

theorem div_Lin_iter_aeval {ι : Type} [DecidableEq ι] (cp : ι → Fin n) (u : ι → Fin d → k) (φ : ι → PS k n d)
    (l : ι) (hl : ∀ l', Lin (cp l) (u l) (φ l') = C (if l = l' then 1 else 0)) (t : ℕ) (Q : MvPolynomial ι k) :
    (Lin (cp l) (u l))^[t] (MvPolynomial.aeval φ Q) = MvPolynomial.aeval φ ((MvPolynomial.pderiv l)^[t] Q) := by
  induction t with
  | zero => rfl
  | succ t ih =>
    rw [Function.iterate_succ_apply', Function.iterate_succ_apply', ih, div_Lin_aeval cp u φ l hl]

theorem div_LinMon_aeval {ι : Type} [Fintype ι] [DecidableEq ι] (cp : ι → Fin n) (u : ι → Fin d → k)
    (φ : ι → PS k n d) (Good : Set ι)
    (hdual : ∀ l ∈ Good, ∀ l', Lin (cp l) (u l) (φ l') = C (if l = l' then 1 else 0))
    (a : ι →₀ ℕ) (ha : ∀ l, a l ≠ 0 → l ∈ Good) (Q : MvPolynomial ι k) :
    LinMon cp u a (MvPolynomial.aeval φ Q) = MvPolynomial.aeval φ
      ((Finset.univ : Finset ι).toList.foldr (fun l g => (MvPolynomial.pderiv l)^[a l] g) Q) := by
  unfold LinMon
  generalize (Finset.univ : Finset ι).toList = L
  induction L with
  | nil => rfl
  | cons l L ih =>
    simp only [List.foldr_cons]
    rw [ih]
    by_cases h0 : a l = 0
    · rw [h0]
      rfl
    · exact div_Lin_iter_aeval cp u φ l (hdual l (ha l h0)) (a l) _

theorem div_constCoeff_aeval {ι : Type} (φ : ι → PS k n d) (hφ0 : ∀ i, constantCoeff (φ i) = 0)
    (Q : MvPolynomial ι k) : constantCoeff (MvPolynomial.aeval φ Q) = MvPolynomial.constantCoeff Q := by
  induction Q using MvPolynomial.induction_on with
  | C a => simp [MvPowerSeries.algebraMap_apply]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p i hp => simp [hp, hφ0]

theorem div_iter_pderiv_monomial {ι : Type} [DecidableEq ι] (i : ι) (t : ℕ) (s : ι →₀ ℕ) (c : k) :
    (MvPolynomial.pderiv i)^[t] (MvPolynomial.monomial s c) =
      MvPolynomial.monomial (s - Finsupp.single i t) (c * ((s i).descFactorial t : k)) := by
  induction t with
  | zero => simp
  | succ t ih =>
    have h1 : s - Finsupp.single i t - Finsupp.single i 1 = s - Finsupp.single i (t + 1) := by
      ext j
      first
        | (simp only [Finsupp.coe_tsub, Pi.sub_apply, Finsupp.single_apply]; split_ifs <;> omega)
    have h2 : (s - Finsupp.single i t) i = s i - t := by
      first
        | simp only [Finsupp.coe_tsub, Pi.sub_apply, Finsupp.single_eq_same]
    rw [Function.iterate_succ_apply', ih, MvPolynomial.pderiv_monomial, h1, h2,
      Nat.descFactorial_succ]
    congr 1
    push_cast
    ring

theorem div_listSum_apply_of_notMem {ι : Type} (a : ι →₀ ℕ) (L : List ι) (l : ι) (hl : l ∉ L) :
    (L.map fun l' => Finsupp.single l' (a l')).sum l = 0 := by
  induction L with
  | nil => simp
  | cons x L ih =>
    simp only [List.mem_cons, not_or] at hl
    simp [Ne.symm hl.1, ih hl.2]

theorem div_fold_monomial {ι : Type} [DecidableEq ι] (a : ι →₀ ℕ) (L : List ι) (hL : L.Nodup) (s : ι →₀ ℕ)
    (c : k) :
    L.foldr (fun l g => (MvPolynomial.pderiv l)^[a l] g) (MvPolynomial.monomial s c) =
      MvPolynomial.monomial (s - (L.map fun l => Finsupp.single l (a l)).sum)
        (c * (L.map fun l => ((s l).descFactorial (a l) : k)).prod) := by
  induction L with
  | nil => simp
  | cons x L ih =>
    rw [List.nodup_cons] at hL
    rw [List.foldr_cons, ih hL.2, div_iter_pderiv_monomial]
    have hx : (s - (L.map fun l => Finsupp.single l (a l)).sum) x = s x := by
      rw [Finsupp.tsub_apply, div_listSum_apply_of_notMem a L x hL.1, Nat.sub_zero]
    simp only [List.map_cons, List.sum_cons, List.prod_cons, hx]
    congr 1
    · rw [tsub_tsub, add_comm]
    · ring

theorem linMon_aeval_monomial {ι : Type} [Fintype ι] [DecidableEq ι] (cp : ι → Fin n) (u : ι → Fin d → k)
    (φ : ι → PS k n d) (hφ0 : ∀ i, constantCoeff (φ i) = 0) (Good : Set ι)
    (hdual : ∀ l ∈ Good, ∀ l', Lin (cp l) (u l) (φ l') = C (if l = l' then 1 else 0))
    (a α : ι →₀ ℕ) (ha : ∀ l, a l ≠ 0 → l ∈ Good) :
    constantCoeff (LinMon cp u a (MvPolynomial.aeval φ (MvPolynomial.monomial α (1 : k)))) =
      if a = α then ((α.prod fun _ e => e.factorial : ℕ) : k) else 0 := by
  classical
  rw [div_LinMon_aeval cp u φ Good hdual a ha, div_fold_monomial a _ (Finset.nodup_toList _),
    div_constCoeff_aeval φ hφ0, MvPolynomial.constantCoeff_monomial]
  have hLs : ∀ (M : Type) [AddCommMonoid M] (f : ι → M),
      ((Finset.univ : Finset ι).toList.map f).sum = ∑ l, f l := fun M _ f => by
    rw [← Multiset.sum_coe, ← Multiset.map_coe, Finset.coe_toList]
    rfl
  have hLp : ∀ (M : Type) [CommMonoid M] (f : ι → M),
      ((Finset.univ : Finset ι).toList.map f).prod = ∏ l, f l := fun M _ f => by
    rw [← Multiset.prod_coe, ← Multiset.map_coe, Finset.coe_toList]
    rfl
  have hS : ((Finset.univ : Finset ι).toList.map fun l => Finsupp.single l (a l)).sum = a := by
    rw [hLs]
    ext j
    simp
  have hP : ((Finset.univ : Finset ι).toList.map fun l => ((α l).descFactorial (a l) : k)).prod =
      ∏ l, ((α l).descFactorial (a l) : k) := hLp k _
  rw [hS, hP, one_mul]
  by_cases hEq : a = α
  · subst hEq
    rw [tsub_self, if_pos rfl, if_pos rfl, Finsupp.prod_fintype _ _ (fun _ => Nat.factorial_zero)]
    push_cast
    exact Finset.prod_congr rfl fun l _ => by rw [Nat.descFactorial_self]
  · rw [if_neg hEq]
    split_ifs with h0
    · have hle : α ≤ a := tsub_eq_zero_iff_le.mp h0
      obtain ⟨l, hl⟩ : ∃ l, α l < a l := by
        by_contra hcon
        push_neg at hcon
        exact hEq (le_antisymm (Finsupp.le_def.mpr hcon) hle)
      exact Finset.prod_eq_zero (Finset.mem_univ l)
        (by rw [Nat.descFactorial_eq_zero_iff_lt.mpr hl, Nat.cast_zero])
    · rfl

end Formalism.L2.Pj.Crude
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.CrudeDiv =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.CrudeOrd =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.CrudeOrd", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.PowerSeriesExpIntegralCanonGaugeAdditiveSecond\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CrudeBase\npublic import Formalism.LocalToGlobal.ProjectiveLattices.PlaceBelow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.Crude

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {k : Type} [CommRing k] {d n : ℕ}

theorem ordGe_one_iff (f : PS k n d) : OrdGe 1 f ↔ constantCoeff f = 0 := by
  constructor
  · intro h
    have h0 := h 0 (by simp)
    first
      | simpa [MvPowerSeries.coeff_zero_eq_constantCoeff_apply] using h0
  · intro h m hm
    have hm0 : m = 0 := by
      have hd : m.degree = 0 := by omega
      first
        | exact (Finsupp.degree_eq_zero_iff m).1 hd
    subst hm0
    first
      | simpa [MvPowerSeries.coeff_zero_eq_constantCoeff_apply] using h

theorem OrdGe.mul {a b : ℕ} {f g : PS k n d} (hf : OrdGe a f) (hg : OrdGe b g) : OrdGe (a + b) (f * g) := by
  intro m hm
  rw [MvPowerSeries.coeff_mul]
  refine Finset.sum_eq_zero fun p hp => ?_
  replace hp : p.1 + p.2 = m := by
    first
      | exact Finset.HasAntidiagonal.mem_antidiagonal.mp hp
  have hdeg : p.1.degree + p.2.degree = m.degree := by
    rw [← hp]
    first
      | exact (map_add _ _ _).symm
  by_cases h1 : p.1.degree < a
  · rw [hf _ h1, zero_mul]
  · rw [hg _ (by omega), mul_zero]

theorem cro_ordGe_zero (f : PS k n d) : OrdGe 0 f := by
  intro m hm
  exact absurd hm (Nat.not_lt_zero _)

theorem cro_ordGe_add {t : ℕ} {f g : PS k n d} (hf : OrdGe t f) (hg : OrdGe t g) : OrdGe t (f + g) := by
  intro m hm
  rw [map_add (f := _), hf m hm, hg m hm, add_zero]

theorem cro_ordGe_zero' (t : ℕ) : OrdGe t (0 : PS k n d) := by
  intro m _
  exact map_zero _

theorem cro_ordGe_sum {t : ℕ} {ι : Type} (s : Finset ι) (f : ι → PS k n d) (hf : ∀ i ∈ s, OrdGe t (f i)) :
    OrdGe t (∑ i ∈ s, f i) := by
  intro m hm

  rw [map_sum]
  exact Finset.sum_eq_zero fun i hi => hf i hi m hm

theorem cro_ordGe_mul_left {t : ℕ} (g : PS k n d) {f : PS k n d} (hf : OrdGe t f) : OrdGe t (g * f) := by
  have h := OrdGe.mul (cro_ordGe_zero g) hf
  rwa [zero_add] at h

theorem cro_ordGe_pderiv {t : ℕ} {f : PS k n d} (hf : OrdGe (t + 1) f) (i : Fin n × Fin d) :
    OrdGe t (pderiv i f) := by
  intro m hm
  rw [MvPowerSeries.coeff_pderiv]
  have hz : coeff (m + Finsupp.single i 1) f = 0 := hf _ (by
    rw [map_add, Finsupp.degree_single]
    omega)
  rw [hz, zero_mul]

theorem cro_ordGe_lin {t : ℕ} {f : PS k n d} (hf : OrdGe (t + 1) f) (b : Fin n) (v : Fin d → k) :
    OrdGe t (Lin b v f) := by
  unfold Lin
  exact cro_ordGe_sum _ _ fun j _ => cro_ordGe_mul_left _ (cro_ordGe_pderiv hf _)

theorem cro_constCoeff_ev {m : ℕ} (a : Fin m → Pt k n d) (ha : ∀ p i, constantCoeff (a p i) = 0)
    (f : PS k m d) : constantCoeff (ev a f) = constantCoeff f := by
  apply GlobalTheory.FramePull.constantCoeff_ev_eq <;> assumption

theorem cro_constCoeff_expS [Algebra ℚ k] (s : PS k n d) (hs : constantCoeff s = 0) :
    constantCoeff (FB.expS k s) = 1 := by
  have hs' : PowerSeries.HasSubst s := PowerSeries.HasSubst.of_constantCoeff_zero hs
  unfold FB.expS
  rw [PowerSeries.constantCoeff_subst hs', finsum_eq_single _ 0]
  · simp [PowerSeries.coeff_exp]
  · intro e he
    rw [map_pow, hs, zero_pow he, smul_zero]

theorem cro_prod_monomial {ι σ : Type} (s : Finset ι) (f : ι → σ →₀ ℕ) :
    ∏ i ∈ s, (monomial (f i) (1 : k) : MvPowerSeries σ k) = monomial (∑ i ∈ s, f i) 1 := by
  classical
  refine Finset.induction_on s ?_ ?_
  · first
      | simp
  · intro i s hi ih
    rw [Finset.prod_insert hi, Finset.sum_insert hi, ih, MvPowerSeries.monomial_mul_monomial, one_mul]

theorem cro_coeff_lin (G : FGLaw k d) (i j : Fin d) :
    coeff (Finsupp.single ((1 : Fin 2), i) 1) (G.F j) = if i = j then 1 else 0 := by
  have hu := congrArg (coeff (Finsupp.single ((0 : Fin 1), i) 1)) (G.unit j)
  rw [MvPowerSeries.coeff_X] at hu
  have hrhs : (if Finsupp.single ((0 : Fin 1), i) 1 = Finsupp.single ((0 : Fin 1), j) 1 then (1 : k) else 0) =
      if i = j then 1 else 0 := by
    by_cases hij : i = j
    · simp [hij]
    · rw [if_neg hij, if_neg]
      intro hs
      apply hij
      have h2 := congrArg (fun D : Fin 1 × Fin d →₀ ℕ => D ((0 : Fin 1), i)) hs
      simp [Finsupp.single_apply] at h2
      first
        | exact h2.symm
  rw [hrhs] at hu
  rw [← hu]
  unfold ev
  have hc0 : ∀ p : Fin 2 × Fin d,
      constantCoeff ((![0, pt k d 0] : Fin 2 → Pt k 1 d) p.1 p.2) = 0 := by
    rintro ⟨p1, p2⟩
    fin_cases p1 <;> simp [pt]
  have ha : MvPowerSeries.HasSubst
      (fun p : Fin 2 × Fin d => (![0, pt k d 0] : Fin 2 → Pt k 1 d) p.1 p.2) := by
    first
      | exact MvPowerSeries.hasSubst_of_constantCoeff_zero hc0
  rw [MvPowerSeries.coeff_subst ha, finsum_eq_single _ (Finsupp.single ((1 : Fin 2), i) 1)]
  · rw [Finsupp.prod_single_index (by simp)]
    simp [pt, MvPowerSeries.coeff_X]
  · intro D hD
    suffices hc : coeff (Finsupp.single ((0 : Fin 1), i) 1)
        (D.prod fun s m => (fun p : Fin 2 × Fin d => (![0, pt k d 0] : Fin 2 → Pt k 1 d) p.1 p.2) s ^ m) = 0 by
      rw [hc, smul_zero]
    by_cases hx : ∃ s ∈ D.support, s.1 = 0
    · obtain ⟨⟨s1, s2⟩, hs, hs0⟩ := hx
      have hz : (D.prod fun s m =>
          (fun p : Fin 2 × Fin d => (![0, pt k d 0] : Fin 2 → Pt k 1 d) p.1 p.2) s ^ m) = 0 := by
        rw [Finsupp.prod]
        apply Finset.prod_eq_zero hs
        simp only at hs0
        subst hs0
        simp [zero_pow (Finsupp.mem_support_iff.mp hs)]
      rw [hz, map_zero]
    · push_neg at hx
      have hprod : (D.prod fun s m =>
          (fun p : Fin 2 × Fin d => (![0, pt k d 0] : Fin 2 → Pt k 1 d) p.1 p.2) s ^ m) =
          monomial (∑ s ∈ D.support, Finsupp.single ((0 : Fin 1), s.2) (D s)) (1 : k) := by
        rw [Finsupp.prod, ← cro_prod_monomial]
        refine Finset.prod_congr rfl fun s hs => ?_
        obtain ⟨s1, s2⟩ := s
        have h1 : s1 = 1 := by
          have := hx _ hs
          fin_cases s1
          · exact absurd rfl this
          · rfl
        subst h1
        first
          | simp [pt, MvPowerSeries.X_pow_eq]
      rw [hprod, MvPowerSeries.coeff_monomial, if_neg]
      intro heq
      apply hD
      ext ⟨s1, s2⟩
      have hev := congrArg (fun D' : Fin 1 × Fin d →₀ ℕ => D' ((0 : Fin 1), s2)) heq
      simp only [Finsupp.finsetSum_apply, Finsupp.single_apply, Prod.mk.injEq, true_and] at hev
      rw [Finset.sum_eq_single ((1 : Fin 2), s2)] at hev
      · fin_cases s1
        · have h0 : D ((0 : Fin 2), s2) = 0 := by
            by_contra hne
            exact hx _ (Finsupp.mem_support_iff.mpr hne) rfl
          simp [h0]
        · simp [Finsupp.single_apply] at hev ⊢
          split_ifs at hev ⊢ <;> omega
      · intro s hs hne
        rw [if_neg]
        intro h2
        apply hne
        obtain ⟨t1, t2⟩ := s
        have := hx _ hs
        simp only at h2 this
        subst h2
        fin_cases t1
        · exact absurd rfl this
        · rfl
      · intro hnot
        have h0 : D ((1 : Fin 2), s2) = 0 := by simpa using hnot
        simp [h0]

section Word

variable (Op Op' : PS k n d → PS k n d)

theorem cro_iter (hsub : ∀ X Y, Op (X - Y) = Op X - Op Y)
    (hlow : ∀ t X, OrdGe (t + 1) X → OrdGe t (Op X)) (hlow' : ∀ t X, OrdGe (t + 1) X → OrdGe t (Op' X))
    (hdiff : ∀ t X, OrdGe (t + 1) X → OrdGe (t + 1) (Op X - Op' X)) (c : ℕ) :
    ∀ (s : ℕ) (X Y : PS k n d), OrdGe (c + s) X → OrdGe (c + s) Y → OrdGe (c + s + 1) (X - Y) →
      OrdGe s (Op^[c] X) ∧ OrdGe s (Op'^[c] Y) ∧ OrdGe (s + 1) (Op^[c] X - Op'^[c] Y) := by
  induction c with
  | zero =>
    intro s X Y hX hY hXY
    simp only [Function.iterate_zero_apply]
    exact ⟨by simpa using hX, by simpa using hY, by simpa using hXY⟩
  | succ c ih =>
    intro s X Y hX hY hXY
    have hX' : OrdGe (c + s + 1) X := by rwa [show c + s + 1 = c + 1 + s by omega]
    have hY' : OrdGe (c + s + 1) Y := by rwa [show c + s + 1 = c + 1 + s by omega]
    have hXY' : OrdGe (c + s + 1 + 1) (X - Y) := by rwa [show c + s + 1 + 1 = c + 1 + s + 1 by omega]
    have h1 : OrdGe (c + s) (Op X) := hlow _ _ hX'
    have h2 : OrdGe (c + s) (Op' Y) := hlow' _ _ hY'
    have h3 : OrdGe (c + s + 1) (Op X - Op' Y) := by
      have e : Op X - Op' Y = Op (X - Y) + (Op Y - Op' Y) := by
        rw [hsub]
        abel
      rw [e]
      exact cro_ordGe_add (hlow _ _ hXY') (hdiff _ _ hY')
    simp only [Function.iterate_succ_apply]
    exact ih s (Op X) (Op' Y) h1 h2 h3

end Word

theorem cro_word {ι : Type} (Op Op' : ι → PS k n d → PS k n d) (m : ι →₀ ℕ)
    (hsub : ∀ l X Y, Op l (X - Y) = Op l X - Op l Y)
    (hlow : ∀ l t X, OrdGe (t + 1) X → OrdGe t (Op l X)) (hlow' : ∀ l t X, OrdGe (t + 1) X → OrdGe t (Op' l X))
    (hdiff : ∀ l t X, OrdGe (t + 1) X → OrdGe (t + 1) (Op l X - Op' l X)) (L : List ι) :
    ∀ (s : ℕ) (X Y : PS k n d), OrdGe ((L.map m).sum + s) X → OrdGe ((L.map m).sum + s) Y →
      OrdGe ((L.map m).sum + s + 1) (X - Y) →
      OrdGe s (L.foldr (fun l g => (Op l)^[m l] g) X) ∧ OrdGe s (L.foldr (fun l g => (Op' l)^[m l] g) Y) ∧
      OrdGe (s + 1) (L.foldr (fun l g => (Op l)^[m l] g) X - L.foldr (fun l g => (Op' l)^[m l] g) Y) := by
  induction L with
  | nil =>
    intro s X Y hX hY hXY
    simp only [List.map_nil, List.sum_nil, List.foldr_nil, zero_add] at hX hY hXY ⊢
    exact ⟨hX, hY, hXY⟩
  | cons l L ih =>
    intro s X Y hX hY hXY
    rw [List.map_cons, List.sum_cons] at hX hY hXY
    have hX' : OrdGe ((L.map m).sum + (m l + s)) X := by
      rwa [show (L.map m).sum + (m l + s) = m l + (L.map m).sum + s by omega]
    have hY' : OrdGe ((L.map m).sum + (m l + s)) Y := by
      rwa [show (L.map m).sum + (m l + s) = m l + (L.map m).sum + s by omega]
    have hXY' : OrdGe ((L.map m).sum + (m l + s) + 1) (X - Y) := by
      rwa [show (L.map m).sum + (m l + s) + 1 = m l + (L.map m).sum + s + 1 by omega]
    obtain ⟨h1, h2, h3⟩ := ih (m l + s) X Y hX' hY' hXY'
    simp only [List.foldr_cons]
    exact cro_iter (Op l) (Op' l) (hsub l) (hlow l) (hlow' l) (hdiff l) (m l) s _ _ h1 h2 h3

theorem cro_word_const {ι : Type} [Fintype ι] (Op Op' : ι → PS k n d → PS k n d) (m : ι →₀ ℕ)
    (hsub : ∀ l X Y, Op l (X - Y) = Op l X - Op l Y)
    (hlow : ∀ l t X, OrdGe (t + 1) X → OrdGe t (Op l X)) (hlow' : ∀ l t X, OrdGe (t + 1) X → OrdGe t (Op' l X))
    (hdiff : ∀ l t X, OrdGe (t + 1) X → OrdGe (t + 1) (Op l X - Op' l X)) (X Y : PS k n d)
    (hX : OrdGe m.degree X) (hY : OrdGe m.degree Y) (hXY : OrdGe (m.degree + 1) (X - Y)) :
    constantCoeff ((Finset.univ : Finset ι).toList.foldr (fun l g => (Op l)^[m l] g) X) =
      constantCoeff ((Finset.univ : Finset ι).toList.foldr (fun l g => (Op' l)^[m l] g) Y) := by
  have hs : ((Finset.univ : Finset ι).toList.map m).sum = m.degree := by
    have h1 : ((Finset.univ : Finset ι).toList.map m).sum = ∑ i, m i := by
      first
        | exact Finset.sum_map_toList _ _
    rw [h1]
    first
      | exact (Finsupp.degree_eq_sum m).symm
  have hX' : OrdGe (((Finset.univ : Finset ι).toList.map m).sum + 0) X := by rw [hs, add_zero]; exact hX
  have hY' : OrdGe (((Finset.univ : Finset ι).toList.map m).sum + 0) Y := by rw [hs, add_zero]; exact hY
  have hXY' : OrdGe (((Finset.univ : Finset ι).toList.map m).sum + 0 + 1) (X - Y) := by
    rw [hs, add_zero]; exact hXY
  obtain ⟨-, -, h⟩ := cro_word Op Op' m hsub hlow hlow' hdiff _ 0 X Y hX' hY' hXY'
  rw [zero_add, ordGe_one_iff, map_sub, sub_eq_zero] at h
  exact h

theorem cro_lin_sub (b : Fin n) (v : Fin d → k) (X Y : PS k n d) : Lin b v (X - Y) = Lin b v X - Lin b v Y := by
  unfold Lin
  simp only [map_sub, mul_sub, Finset.sum_sub_distrib]

theorem cro_dofN_sub (F : Fin d → PS k 2 d) (b : Fin n) (v : Fin d → k) (X Y : PS k n d) :
    DofN F b v (X - Y) = DofN F b v X - DofN F b v Y := by
  unfold DofN
  simp only [map_sub, mul_sub, Finset.sum_sub_distrib]

theorem cro_ordGe_dofN (F : Fin d → PS k 2 d) (b : Fin n) (v : Fin d → k) {t : ℕ} {X : PS k n d}
    (hX : OrdGe (t + 1) X) : OrdGe t (DofN F b v X) := by
  unfold DofN
  exact cro_ordGe_sum _ _ fun j _ => cro_ordGe_mul_left _ (cro_ordGe_pderiv hX _)

theorem cro_dofN_lin (F : Fin d → PS k 2 d)
    (hF : ∀ i j, coeff (Finsupp.single ((1 : Fin 2), i) 1) (F j) = if i = j then 1 else 0)
    (b : Fin n) (v : Fin d → k) {t : ℕ} {X : PS k n d} (hX : OrdGe (t + 1) X) :
    OrdGe (t + 1) (DofN F b v X - Lin b v X) := by
  unfold DofN Lin
  rw [← Finset.sum_sub_distrib]
  refine cro_ordGe_sum _ _ fun j _ => ?_
  rw [← sub_mul]
  have key : ∀ A : PS k n d, constantCoeff A = v j →
      OrdGe (t + 1) ((A - C (v j)) * pderiv (b, j) X) := by
    intro A hA
    have h1 : OrdGe 1 (A - C (v j)) := by
      rw [ordGe_one_iff, map_sub, hA, MvPowerSeries.constantCoeff_C, sub_self]
    have h3 := OrdGe.mul h1 (cro_ordGe_pderiv hX (b, j))
    rwa [add_comm] at h3
  apply key
  have hc : ∀ i, constantCoeff (ev ![pt k d b, 0] (pderiv ((1 : Fin 2), i) (F j))) =
      if i = j then 1 else 0 := by
    intro i
    rw [cro_constCoeff_ev]
    · rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, MvPowerSeries.coeff_pderiv]
      simpa using hF i j
    · intro p l
      fin_cases p <;> simp [pt]

  rw [map_sum]
  first
    | (simp only [map_mul, MvPowerSeries.constantCoeff_C, hc]
       simp)

theorem nabValN_eq_lin [Algebra ℚ k] {O : Type} [CommRing O] [StarRing O] (B : FB k d O) (h : PS k 2 d)
    (hg : B.IsCanonGauge k h) (w0 : O) (m : ℕ) (f : PS k n d) {ι : Type} [Fintype ι] (cp : ι → Fin n)
    (u : ι → Fin d → k) (P : MvPolynomial ι k) (N : ℕ) (hP : ∀ a ∈ P.support, a.degree = N)
    (hf : OrdGe N f) :
    nabValN B k h w0 m f cp u P = ∑ a ∈ P.support, P.coeff a * constantCoeff (LinMon cp u a f) := by
  classical
  have hpt : ∀ {n' : ℕ} (b : Fin n') (i : Fin d), constantCoeff (pt k d b i : PS k n' d) = 0 := by
    intro n' b i; simp [pt]
  have hh0 : constantCoeff h = 0 := by
    have := congrArg constantCoeff hg.ax0
    rw [cro_constCoeff_ev] at this
    · simpa using this
    · intro p i; fin_cases p
      · simp
      · exact hpt 0 i
  have hL0 : constantCoeff (B.hL k h w0) = 0 := by
    unfold FB.hL
    rw [cro_constCoeff_ev, hh0]
    intro p i
    fin_cases p
    · exact hpt 0 i
    · show constantCoeff (comp1 (B.actK k w0) (pt k d 0) i) = 0
      unfold comp1
      rw [cro_constCoeff_ev]
      · simp [FB.actK, B.A.const]
      · intro p i'; fin_cases p; exact hpt 0 i'
  set g := FB.expS k ((m : k) • ∑ b : Fin n, ev (n := n) ![pt k d b] (B.hL k h w0)) with hg_def
  have hg1 : constantCoeff g = 1 := by
    apply cro_constCoeff_expS

    rw [smul_eq_C_mul, map_mul, map_sum]
    have : ∀ b : Fin n, constantCoeff (ev (n := n) ![pt k d b] (B.hL k h w0)) = 0 := by
      intro b
      rw [cro_constCoeff_ev, hL0]
      intro p i; fin_cases p; exact hpt b i
    simp [this]
  have hFK : ∀ i j, coeff (Finsupp.single ((1 : Fin 2), i) 1) (B.FK k j) = if i = j then 1 else 0 := by
    intro i j
    simp only [FB.FK, FGLaw.mapF, coeff_map, cro_coeff_lin, Algebra.algebraMap_self, RingHom.id_apply]
  unfold nabValN DpolyN

  rw [map_sum]
  refine Finset.sum_congr rfl fun a ha => ?_
  rw [map_mul, constantCoeff_C]
  congr 1
  have hfa : OrdGe a.degree f := (hP a ha) ▸ hf
  have hfg : OrdGe a.degree (f * g) := by simpa using hfa.mul (cro_ordGe_zero g)
  have hg' : OrdGe 1 (g - 1) := (ordGe_one_iff _).2 (by rw [map_sub, hg1, map_one, sub_self])
  have hdiff : OrdGe (a.degree + 1) (f * g - f) := by
    have : f * g - f = f * (g - 1) := by ring
    rw [this]; exact hfa.mul hg'
  have s1 := cro_word_const (fun l => DofN (B.FK k) (cp l) (u l)) (fun l => Lin (cp l) (u l)) a
    (fun l X Y => cro_dofN_sub _ _ _ X Y) (fun l t X hX => cro_ordGe_dofN _ _ _ hX)
    (fun l t X hX => cro_ordGe_lin hX _ _) (fun l t X hX => cro_dofN_lin _ hFK _ _ hX) (f * g) (f * g)
    hfg hfg (by rw [sub_self]; exact cro_ordGe_zero' _)
  have s2 := cro_word_const (fun l => Lin (cp l) (u l)) (fun l => Lin (cp l) (u l)) a
    (fun l X Y => cro_lin_sub _ _ X Y) (fun l t X hX => cro_ordGe_lin hX _ _)
    (fun l t X hX => cro_ordGe_lin hX _ _) (fun l t X hX => by rw [sub_self]; exact cro_ordGe_zero' _)
    (f * g) f hfg hfa hdiff
  unfold DmonN LinMon
  exact s1.trans s2

end Formalism.L2.Pj.Crude
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.CrudeOrd =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ConjNeSelfOfCM =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ConjNeSelfOfCM", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CrudeMin\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CrudeBase\npublic import Formalism.LocalToGlobal.ProjectiveLattices.PlaceBelow\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CrudeDiv\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CrudeOrd\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CrudeVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj

open MvPowerSeries NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

section Gen

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} [StarRing (𝓞 E)]

def SatDir (T : CDVR) {d : ℕ} (uvec : Lt1 Dw → Fin d → T.Fr) : Prop :=
  ∀ τ : E →+* ℂ, ∃ W : Fin (Dw.mult τ) → Fin d → T.V,
    ∀ i i' : Fin (Dw.mult τ), ∑ j, uvec ⟨τ, i'⟩ j * algebraMap T.V T.Fr (W i j) = if i' = i then 1 else 0


variable (Dw) in
def DomW (a : (E →+* ℂ) × ℕ → ℕ) : Prop := Crude.Dom Dw.mult (fun τ i => a (τ, i))

def crudeBd {K : Type} [Field K] [NumberField K] (la : HeightOneSpectrum (𝓞 K)) (D : ℕ) : ℝ :=
  (ramOverZ la : ℝ) * (D : ℝ) / ((resCharOf la : ℝ) - 1)

omit [StarRing (𝓞 E)] in
theorem conj_ne_self_of_CM (τ : E →+* ℂ) : ComplexEmbedding.conjugate τ ≠ τ := by
  haveI := NumberField.IsCMField.isTotallyComplex E
  intro hτ
  have hc := NumberField.IsTotallyComplex.isComplex (NumberField.InfinitePlace.mk τ)
  rw [← NumberField.InfinitePlace.not_isReal_iff_isComplex, NumberField.InfinitePlace.isReal_mk_iff] at hc
  exact hc hτ

theorem Crude.le_degree {σ : Type} (α : σ →₀ ℕ) (s : σ) : α s ≤ α.degree := by
  by_cases hs : s ∈ α.support
  · have hd : α.degree = ∑ i ∈ α.support, α i := rfl
    rw [hd]
    exact Finset.single_le_sum (fun i _ => Nat.zero_le (α i)) hs
  · have h0 : α s = 0 := by simpa using hs
    rw [h0]
    exact Nat.zero_le _


omit [IsCMField E] [StarRing (𝓞 E)] in
variable (Dw) in
def colP {n : ℕ} (hn : Fintype.card (Lt1 Dw) ≤ n) : Lt1 Dw → Fin n :=
  fun p => Fin.castLE hn (Fintype.equivFin (Lt1 Dw) p)


open Classical in
variable (Dw) in
def P1 (T : CDVR) (a : (E →+* ℂ) × ℕ → ℕ) {n : ℕ} (hn : Fintype.card (Lt1 Dw) ≤ n) :
    MvPolynomial (LtN Dw n) T.Fr :=
  MvPolynomial.map (Int.castRingHom T.Fr) (Crude.Pmin Dw.mult n (colP Dw hn) (fun τ i => a (τ, i)))


open Classical in
variable (Dw) in
def fact1 (a : (E →+* ℂ) × ℕ → ℕ) {n : ℕ} (hn : Fintype.card (Lt1 Dw) ≤ n) : ℕ :=
  (Crude.diagExp Dw.mult n (colP Dw hn) (fun τ i => a (τ, i))).prod fun _ t => t.factorial

def crudeInf {T : CDVR} {d : ℕ} {O : Type} [CommRing O] [StarRing O] (B : FB T.Fr d O) (h : PS T.Fr 2 d) (w0 : O)
    (k : ℕ) (uvec : Lt1 Dw → Fin d → T.Fr) (e : ℕ) (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) : EReal :=
  ⨅ (P : MvPolynomial (LtN Dw n) T.Fr) (_ : P ∈ FFV (Dw := Dw) T a n) (f : PS T.Fr n d) (_ : IsIntPS T f),
    nval T.V e (nabValN B T.Fr h w0 k f (fun ℓ : LtN Dw n => ℓ.2.2) (fun ℓ => uvec ⟨ℓ.1, ℓ.2.1⟩) P)

private theorem ordGe_prod_lemma (T : CDVR) {n d : ℕ} {ι : Type} (φ : ι → PS T.Fr n d)
    (hφ : ∀ i, constantCoeff (φ i) = 0) (α : ι →₀ ℕ) :
    Crude.OrdGe α.degree (α.prod fun i e => φ i ^ e) := by
  classical
  have hpow : ∀ i (e : ℕ), Crude.OrdGe e (φ i ^ e) := by
    intro i e
    induction e with
    | zero => exact Crude.cro_ordGe_zero (φ i ^ 0)
    | succ e ih =>
      rw [pow_succ]
      exact Crude.OrdGe.mul ih ((Crude.ordGe_one_iff _).2 (hφ i))
  have hd : α.degree = ∑ i ∈ α.support, α i := rfl
  rw [hd]
  unfold Finsupp.prod
  generalize α.support = s
  refine Finset.induction_on s ?_ ?_
  · simp only [Finset.sum_empty, Finset.prod_empty]
    exact Crude.cro_ordGe_zero _
  · intro a s ha ih
    rw [Finset.sum_insert ha, Finset.prod_insert ha]
    exact Crude.OrdGe.mul (hpow a (α a)) ih

theorem crude_val {T : CDVR} {d : ℕ} {O : Type} [CommRing O] [StarRing O] (B : FB T.Fr d O) (h : PS T.Fr 2 d)
    (hg : B.IsCanonGauge T.Fr h) (w0 : O) (k : ℕ) (uvec : Lt1 Dw → Fin d → T.Fr) (hsat : SatDir T uvec)
    (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) (ha : DomW Dw a) (hn : Fintype.card (Lt1 Dw) ≤ n) :
    P1 Dw T a hn ∈ FFV (Dw := Dw) T a n ∧ ∃ f : PS T.Fr n d, IsIntPS T f ∧ Crude.OrdGe (DF Dw a) f ∧
      nabValN B T.Fr h w0 k f (fun ℓ : LtN Dw n => ℓ.2.2) (fun ℓ => uvec ⟨ℓ.1, ℓ.2.1⟩) (P1 Dw T a hn) =
        (fact1 Dw a hn : T.Fr) := by
  classical
  have hβ : Function.Injective (colP Dw hn) := fun p q hpq =>
    (Fintype.equivFin (Lt1 Dw)).injective (Fin.castLE_injective hn hpq)
  set α := Crude.diagExp Dw.mult n (colP Dw hn) (fun τ i => a (τ, i)) with hαdef
  have hdeg : α.degree = DF Dw a := by rw [hαdef, Crude.diagExp_degree]; rfl
  have hcoeff : (P1 Dw T a hn).coeff α = 1 := Crude.Pmin_coeff_diag (k := T.Fr) (hβ := hβ) (ha := ha)
  have hαmem : α ∈ (P1 Dw T a hn).support := by
    rw [MvPolynomial.mem_support_iff, hcoeff]; exact one_ne_zero
  refine ⟨?_, ?_⟩
  · show MvPolynomial.map (Int.castRingHom T.Fr) (Crude.Pmin Dw.mult n (colP Dw hn) (fun τ i => a (τ, i))) ∈
      HaO Dw.mult n T.Fr (algebraMap T.V T.Fr).range ComplexEmbedding.conjugate (InPsi H) (fun τ i => a (τ, i))
    exact Crude.Pmin_mem (O := (algebraMap T.V T.Fr).range) (cc := ComplexEmbedding.conjugate)
      (isX := InPsi H) (hcc := fun τ _ => conj_ne_self_of_CM τ) (hβ := hβ) (ha := ha)

  have hsat' : ∀ τ : E →+* ℂ, ∃ W : Fin (Dw.mult τ) → Fin d → T.V, ∀ i i' : Fin (Dw.mult τ),
      ∑ j, uvec ⟨τ, i'⟩ j * algebraMap T.V T.Fr (W i j) = if i' = i then 1 else 0 := hsat
  choose W hW using hsat'
  let φV : LtN Dw n → PS T.V n d := fun ℓ =>
    if (∃ i, colP Dw hn ⟨ℓ.1, i⟩ = ℓ.2.2) then ∑ j, C (W ℓ.1 ℓ.2.1 j) * X (ℓ.2.2, j) else 0
  let φ : LtN Dw n → PS T.Fr n d := fun ℓ =>
    if (∃ i, colP Dw hn ⟨ℓ.1, i⟩ = ℓ.2.2) then
      ∑ j, C (algebraMap T.V T.Fr (W ℓ.1 ℓ.2.1 j)) * X (ℓ.2.2, j) else 0
  have hmapφ : ∀ ℓ, MvPowerSeries.map (algebraMap T.V T.Fr) (φV ℓ) = φ ℓ := by
    intro ℓ
    simp only [φV, φ]
    split_ifs <;> simp [map_sum]
  have hφ0 : ∀ ℓ, constantCoeff (φ ℓ) = 0 := by
    intro ℓ
    simp only [φ]
    split_ifs <;> simp [map_sum]
  have hdual : ∀ l ∈ Crude.GoodL Dw.mult n (colP Dw hn), ∀ l',
      Crude.Lin ((fun ℓ : LtN Dw n => ℓ.2.2) l) ((fun ℓ : LtN Dw n => uvec ⟨ℓ.1, ℓ.2.1⟩) l) (φ l') =
        C (if l = l' then 1 else 0) := by
    rintro ⟨τ, i0, b⟩ ⟨i, hi⟩ ⟨τ', i', b'⟩
    simp only [φ]
    dsimp only at hi ⊢
    by_cases hg : ∃ i'', colP Dw hn ⟨τ', i''⟩ = b'
    · rw [if_pos hg, Crude.Lin_linForm]
      congr 1
      by_cases hbb : b = b'
      · subst hbb
        obtain ⟨i'', hi''⟩ := hg
        have hp : (⟨τ, i⟩ : Lt1 Dw) = ⟨τ', i''⟩ := hβ (hi.trans hi''.symm)
        obtain ⟨rfl, -⟩ := Sigma.mk.inj_iff.1 hp
        rw [if_pos rfl, hW τ i' i0]
        by_cases h : i0 = i'
        · subst h; simp
        · rw [if_neg h, if_neg]
          intro hl
          cases hl
          exact h rfl
      · rw [if_neg hbb, if_neg]
        intro hl
        cases hl
        exact hbb rfl
    · rw [if_neg hg, if_neg]
      · simpa using Crude.div_Lin_C (n := n) b (uvec ⟨τ, i0⟩) (0 : T.Fr)
      · intro hl
        cases hl
        exact hg ⟨i, hi⟩
  obtain ⟨f, hfdef⟩ : ∃ f : PS T.Fr n d, f = MvPolynomial.aeval φ (MvPolynomial.monomial α (1 : T.Fr)) :=
    ⟨_, rfl⟩
  have hfprod : f = α.prod fun ℓ e => φ ℓ ^ e := by
    rw [hfdef, MvPolynomial.aeval_monomial, map_one, one_mul]
  have hfint : IsIntPS T f := by
    intro m
    have hmap : f = MvPowerSeries.map (algebraMap T.V T.Fr) (α.prod fun ℓ e => φV ℓ ^ e) := by
      rw [hfprod]
      unfold Finsupp.prod
      rw [map_prod]
      simp only [map_pow, hmapφ]
    rw [hmap, MvPowerSeries.coeff_map]
    exact ⟨_, rfl⟩
  have hOrd : Crude.OrdGe (DF Dw a) f := by
    rw [hfprod, ← hdeg]
    exact ordGe_prod_lemma T φ hφ0 α
  have hPdeg : ∀ m ∈ (P1 Dw T a hn).support, m.degree = DF Dw a := fun m hm =>
    Crude.Pmin_degree (ha := ha) (m := m) (hm := hm)
  refine ⟨f, hfint, hOrd, ?_⟩
  rw [Crude.nabValN_eq_lin B h hg w0 k f (fun ℓ : LtN Dw n => ℓ.2.2) (fun ℓ => uvec ⟨ℓ.1, ℓ.2.1⟩)
    (P1 Dw T a hn) (DF Dw a) hPdeg hOrd, Finset.sum_eq_single α]
  · rw [hfdef, Crude.linMon_aeval_monomial _ _ φ hφ0 _ hdual α α
      (fun l hl => Crude.Pmin_good (m := α) (hm := hαmem) (ℓ := l) (hℓ := hl)), if_pos rfl, hcoeff, one_mul]
    rfl
  · intro m hm hne
    rw [hfdef, Crude.linMon_aeval_monomial _ _ φ hφ0 _ hdual m α
      (fun l hl => Crude.Pmin_good (m := m) (hm := hm) (ℓ := l) (hℓ := hl)), if_neg hne, mul_zero]
  · intro hα
    exact absurd hαmem hα

theorem crude_inf {T : CDVR} {d : ℕ} {O : Type} [CommRing O] [StarRing O] (B : FB T.Fr d O) (h : PS T.Fr 2 d)
    (hg : B.IsCanonGauge T.Fr h) (w0 : O) (k : ℕ) (uvec : Lt1 Dw → Fin d → T.Fr) (hsat : SatDir T uvec)
    (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) (ha : DomW Dw a) (hn : Fintype.card (Lt1 Dw) ≤ n)
    {K : Type} [Field K] [NumberField K] {la : HeightOneSpectrum (𝓞 K)} {io : K →+* T.Fr} {e : ℕ}
    (ho : OverLa la T.V io e) :
    crudeInf B h w0 k uvec e a n ≤ (crudeBd la (DF Dw a) : EReal) ∧
      (DF Dw a < resCharOf la → crudeInf B h w0 k uvec e a n ≤ 0) := by
  classical
  obtain ⟨hP, f, hfI, -, hval⟩ := crude_val B h hg w0 k uvec hsat a n ha hn
  have hle : crudeInf B h w0 k uvec e a n ≤ nval T.V e ((fact1 Dw a hn : ℕ) : T.Fr) := by
    unfold crudeInf
    exact iInf_le_of_le (P1 Dw T a hn) (iInf_le_of_le hP (iInf_le_of_le f
      (iInf_le_of_le hfI (by rw [hval]))))
  have hdeg : (Crude.diagExp Dw.mult n (colP Dw hn) (fun τ i => a (τ, i))).degree = DF Dw a := by
    rw [Crude.diagExp_degree]; rfl
  refine ⟨hle.trans ?_, fun hlt => hle.trans ?_⟩
  · have h1 := Crude.nval_factProd_le (ho := ho) (α := Crude.diagExp Dw.mult n (colP Dw hn) (fun τ i => a (τ, i)))
    rw [hdeg] at h1
    exact h1
  · have h2 := Crude.nval_factProd_le_zero (ho := ho) (α := Crude.diagExp Dw.mult n (colP Dw hn) (fun τ i => a (τ, i)))
      (hα := fun s => lt_of_le_of_lt (Crude.le_degree _ s) (hdeg ▸ hlt))
    exact h2

end Gen

end Formalism.L2.Pj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ConjNeSelfOfCM =====

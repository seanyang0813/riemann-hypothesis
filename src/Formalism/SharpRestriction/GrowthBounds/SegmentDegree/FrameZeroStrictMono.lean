module

public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FamilyDegreesAdmissible
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FactorialMulChooseEqProdRange
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumMemLaSet
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumPosOfPer
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.ThresholdPowerBoundOfCounts
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TopOccursInAtMostTwoSegments
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.ReflectionMemGlevCastSucc
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.StrictMonoIntExists
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TopCountLowerBoundsOfOccurrence

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumTotalLoss, Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FrameZeroStrictMono

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumTotalLoss =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumTotalLoss", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FamilyDegreesAdmissible\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FactorialMulChooseEqProdRange\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumMemLaSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.SelectionLemmas.Pf

open Finset Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas

def sumEta (r : ℕ) (Y : ℝ) : ℝ := (1 - 5 / Y) * (1 - 1 / Y) * (1 - (r : ℝ) / (2 * Y))

theorem sum_total_loss (r J N : ℕ) (k Y A : ℝ) (hr : 2 ≤ r) (hk : 5 ≤ k) (hY : 1 ≤ Y) (hJN : J ≤ N) (hN : 1 ≤ N)
    (hA : 1 - 1 / (32 * Y) ≤ A) (hA1 : A ≤ 1) (hlt : 0 < 1 - 1 * (N : ℝ) * (r : ℝ) ^ 2 * k / Y) :
    0 ≤ 1 - 5 / Y ∧ 0 ≤ 1 - 1 / Y ∧ 0 ≤ 1 - (r : ℝ) / (2 * Y) ∧ 1 - 5 / Y ≤ 1 ∧ 1 - 1 / Y ≤ 1 ∧
      1 - (r : ℝ) / (2 * Y) ≤ 1 ∧
      1 - 1 * (N : ℝ) * (r : ℝ) ^ 2 * k / Y ≤ A ^ J * sumEta r Y ^ N := by
  have hY0 : 0 < Y := by linarith
  have hr' : (2 : ℝ) ≤ r := by exact_mod_cast hr
  have hN' : (1 : ℝ) ≤ N := by exact_mod_cast hN
  set u := 1 / Y with hu
  have hu0 : 0 < u := by positivity
  have e1 : 1 * (N : ℝ) * (r : ℝ) ^ 2 * k / Y = N * ((r : ℝ) ^ 2 * k * u) := by rw [hu]; ring
  have e5 : 5 / Y = 5 * u := by rw [hu]; ring
  have er : (r : ℝ) / (2 * Y) = (r : ℝ) / 2 * u := by rw [hu]; field_simp
  have e32 : 1 / (32 * Y) = u / 32 := by rw [hu]; field_simp
  rw [e1] at hlt ⊢
  rw [e32] at hA
  unfold sumEta
  rw [e5, er]
  have hrk : 0 ≤ (r : ℝ) ^ 2 * k * u := by positivity
  have h1 : (r : ℝ) ^ 2 * k * u < 1 := by nlinarith
  have hr2k : 10 * (r : ℝ) ≤ (r : ℝ) ^ 2 * k := by nlinarith
  have h5 : 5 * u ≤ 1 := by nlinarith
  have h1u : u ≤ 1 := by nlinarith
  have hru : (r : ℝ) / 2 * u ≤ 1 := by nlinarith
  have hru0 : 0 ≤ (r : ℝ) / 2 * u := by positivity
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, ?_⟩
  have hA0 : 0 ≤ A := by nlinarith
  obtain ⟨s1, p1, q1⟩ := sub_le_mul_one_sub_and_mem_unit_interval (P := 1 - 5 * u) (c := u) (s := 1 - 5 * u) (by linarith) (by linarith) hu0.le h1u le_rfl
  obtain ⟨s2, p2, q2⟩ := sub_le_mul_one_sub_and_mem_unit_interval (c := (r : ℝ) / 2 * u) p1 q1 hru0 hru s1
  set η := (1 - 5 * u) * (1 - u) * (1 - (r : ℝ) / 2 * u) with hη
  have hAη : 1 - (7 + (r : ℝ) / 2) * u ≤ A * η := by
    have : (1 - u / 32) * η ≤ A * η := mul_le_mul_of_nonneg_right hA p2
    nlinarith
  have hε : (7 + (r : ℝ) / 2) * u ≤ (r : ℝ) ^ 2 * k * u := by
    apply mul_le_mul_of_nonneg_right _ hu0.le
    nlinarith
  have hbase0 : 0 ≤ 1 - (7 + (r : ℝ) / 2) * u := by linarith
  have hpow : A ^ N ≤ A ^ J := pow_le_pow_of_le_one hA0 hA1 hJN
  have hηN : 0 ≤ η ^ N := pow_nonneg p2 N
  calc 1 - (N : ℝ) * ((r : ℝ) ^ 2 * k * u) ≤ 1 + (N : ℝ) * (-((7 + (r : ℝ) / 2) * u)) := by nlinarith
    _ ≤ (1 + -((7 + (r : ℝ) / 2) * u)) ^ N := one_add_mul_le_pow (by linarith) N
    _ ≤ (A * η) ^ N := pow_le_pow_left₀ (by linarith) (by linarith) N
    _ = A ^ N * η ^ N := mul_pow _ _ _
    _ ≤ A ^ J * η ^ N := mul_le_mul_of_nonneg_right hpow hηN

section Main

variable {n' r : ℕ} [NeZero n'] {X : Dat n' r} {p K : ℕ}

theorem sum_fac_LL (F : SumFacts X p K) (h5 : 0 ≤ 1 - 5 / X.Y) (h1 : 0 ≤ 1 - 1 / X.Y) (h1' : 1 - 1 / X.Y ≤ 1)
    (hr0 : 0 ≤ 1 - (r : ℝ) / (2 * X.Y)) (hr1 : 1 - (r : ℝ) / (2 * X.Y) ≤ 1) (t : Fin n') (ht : t ∈ X.F.TT) :
    sumEta r X.Y * sumBin r K (X.deg t) ≤ sumBin r K (X.a' p K t) := by
  refine le_trans ?_ (F.compA t ht)
  have hb : 0 ≤ sumBin r K (X.deg t) := zero_le_one.trans (sum_one_le_bin _ _ _)
  rw [mul_comm]
  refine mul_le_mul_of_nonneg_left ?_ hb
  unfold sumEta
  have : (1 - 5 / X.Y) * (1 - 1 / X.Y) ≤ 1 - 5 / X.Y := by nlinarith
  nlinarith [mul_nonneg h5 h1]

theorem sum_fac_fr (F : SumFacts X p K) (hr : 0 < r) (h1 : 0 ≤ 1 - 1 / X.Y)
    (hr0 : 0 ≤ 1 - (r : ℝ) / (2 * X.Y)) (j : ℤ) (i : Fin r) :
    sumEta r X.Y * sumBin r K (X.deg (posOf n' (X.F.fr j i.val))) ≤
      sumBin r K ((X.Bw p K (j + 1) (X.F.fr j i.val) - (X.m0 K : ℤ)).toNat) *
        (((X.Qc p K j : ℕ) : ℝ) ^ (r - 1) * max 0 (1 - (r : ℝ) / (2 * X.Y))) *
        ((X.Pz p K j (X.F.fr j i.val) : ℕ) : ℝ) ^ (r + K - 1) * ((X.Qc p K j : ℕ) : ℝ) ^ K := by
  have ht := (sum_late_mem (F.frlate j i)).2.2.2
  have hA := F.compA _ ht
  have hW := F.compW j i
  set t := posOf n' (X.F.fr j i.val)
  set B := sumBin r K ((X.Bw p K (j + 1) (X.F.fr j i.val) - (X.m0 K : ℤ)).toNat)
  set Qr := ((X.Qc p K j : ℕ) : ℝ)
  set Pr := ((X.Pz p K j (X.F.fr j i.val) : ℕ) : ℝ)
  have hmax : max 0 (1 - (r : ℝ) / (2 * X.Y)) = 1 - (r : ℝ) / (2 * X.Y) := max_eq_right hr0
  have hexp : r + K - 1 = (r - 1) + K := by omega
  have e : B * (Qr ^ (r - 1) * max 0 (1 - (r : ℝ) / (2 * X.Y))) * Pr ^ (r + K - 1) * Qr ^ K =
      (1 - (r : ℝ) / (2 * X.Y)) * ((Pr * Qr) ^ (r + K - 1) * B) := by
    rw [hmax, mul_pow, hexp, pow_add Qr]
    ring
  rw [e]
  have hW' : sumBin r K (X.a' p K t) * (1 - 1 / X.Y) ≤ (Pr * Qr) ^ (r + K - 1) * B := by
    have : (((X.Pz p K j (X.F.fr j i.val) * X.Qc p K j : ℕ) : ℝ)) = Pr * Qr := by push_cast; rfl
    rw [← this]; exact hW
  have h2 : sumBin r K (X.deg t) * (1 - 5 / X.Y) * (1 - 1 / X.Y) ≤ (Pr * Qr) ^ (r + K - 1) * B :=
    (mul_le_mul_of_nonneg_right hA h1).trans hW'
  have h3 := mul_le_mul_of_nonneg_left h2 hr0
  refine le_trans (le_of_eq ?_) h3
  unfold sumEta
  ring

theorem restSum_of (hF : ∀ (p n' r K : ℕ) [NeZero n'] [NeZero r] [NeZero K] (X : Dat n' r),
    X.Hyp p K → (1088 : ℝ) ≤ X.CLa → (1088 : ℝ) ≤ X.Ck → SumFacts X p K ∧ 1 ≤ X.Ns) : RestSum 1088 1 := by
  classical
  intro p n' r K _ _ _ X hX hLa hk G hG0 hGdep hGsum
  obtain ⟨F, hNs⟩ := hF p n' r K X hX hLa hk
  have hp : 0 < p := hX.prime.pos
  have hr : 0 < r := by have := hX.r2; omega
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp
  have hRHS0 : 0 ≤ ∑ la ∈ X.LA p K, ∑ e ∈ X.EE p K la, ∏ j : Fin X.F.J,
      G (j.val : ℤ) (X.bfam p K la e (j.val : ℤ)) :=
    Finset.sum_nonneg fun la _ => Finset.sum_nonneg fun e _ => Finset.prod_nonneg fun j _ => hG0 _ _
  have hq0 : (0 : ℝ) < ((p : ℝ) ^ n') ^ (r * K) := by positivity
  rw [zpow_neg, zpow_natCast, inv_mul_le_iff₀ hq0]
  have hbd : X.bound K 1 = (1 - 1 * (X.F.TT.card : ℝ) * (r : ℝ) ^ 2 * Dat.k (r := r) K / X.Y) *
      ∏ t ∈ X.F.TT, sumBin r K (X.deg t) := rfl
  have hprod0 : 0 ≤ ∏ t ∈ X.F.TT, sumBin r K (X.deg t) :=
    Finset.prod_nonneg fun t _ => zero_le_one.trans (sum_one_le_bin _ _ _)
  rcases le_or_gt (1 - 1 * (X.F.TT.card : ℝ) * (r : ℝ) ^ 2 * Dat.k (r := r) K / X.Y) 0 with hb | hb
  · rw [hbd]
    have h1 := mul_nonneg (neg_nonneg.mpr hb) hprod0
    have h2 := mul_nonneg hq0.le hRHS0
    nlinarith

  obtain ⟨hA0l, hA00⟩ := first_sum_factor_bounds hX.Y1 F.a32 hNs
  have hA01 : X.firstSumFactor ≤ 1 := by
    unfold Dat.firstSumFactor
    have : 0 ≤ 1 / X.a ^ (X.Ns ^ 2) := by
      have : 0 ≤ X.a := by have := F.a32; have := hX.Y1; linarith
      positivity
    linarith
  have hJ1 : 1 ≤ X.F.J := hX.valid.1
  have hk5 : (5 : ℝ) ≤ Dat.k (r := r) K := by
    unfold Dat.k
    have := hX.NsK; have := hX.r2
    exact_mod_cast (by omega : 5 ≤ r + K)
  obtain ⟨h5, h1, hr0, -, h1', hr1, htot⟩ := sum_total_loss r X.F.J X.F.TT.card (Dat.k (r := r) K) X.Y X.firstSumFactor hX.r2 hk5 hX.Y1
    F.JN (hJ1.trans F.JN) hA0l hA01 hb

  have hTf0 : ∀ j, 0 ≤ X.sumTf p K j := fun j => by
    unfold Dat.sumTf
    exact pow_nonneg (mul_nonneg (by positivity) (le_max_left _ _)) _
  have hWf0 : ∀ j, 0 ≤ X.sumWf p K j := fun j =>
    Finset.prod_nonneg fun i _ => zero_le_one.trans (sum_one_le_bin _ _ _)
  have hseg0 : ∀ j b, 0 ≤ X.segBound p K j b := fun j b => by
    rw [Dat.sum_segBound_eq]
    exact mul_nonneg (mul_nonneg (mul_nonneg hA00 (hWf0 j)) (hTf0 j))
      (Finset.prod_nonneg fun x _ => zero_le_one.trans (sum_one_le_bin _ _ _))
  have step1 : ∀ la ∈ X.LA p K, ∏ j : Fin X.F.J, X.segBound p K (j.val : ℤ) (X.nz p K la (j.val : ℤ)) ≤
      ∑ e ∈ X.EE p K la, ∏ j : Fin X.F.J, G (j.val : ℤ) (X.bfam p K la e (j.val : ℤ)) := by
    intro la hla
    have e1 : ∀ e : Fin X.F.J → Fin r → ℕ, ∏ j : Fin X.F.J, G (j.val : ℤ) (X.bfam p K la e (j.val : ℤ)) =
        ∏ j : Fin X.F.J, G (j.val : ℤ) (X.setTau (j.val : ℤ) (X.nz p K la (j.val : ℤ)) (e j)) :=
      fun e => Finset.prod_congr rfl fun j _ => hGdep _ _ _ (sum_bfam_late la e j)
    rw [Finset.sum_congr rfl fun e _ => e1 e]
    have e2 := Finset.prod_univ_sum (fun j : Fin X.F.J => X.sumTset p K la (j.val : ℤ))
      (fun j ej => G (j.val : ℤ) (X.setTau (j.val : ℤ) (X.nz p K la (j.val : ℤ)) ej))
    have e3 : X.EE p K la = Fintype.piFinset (fun j : Fin X.F.J => X.sumTset p K la (j.val : ℤ)) := by
      unfold Dat.EE Dat.sumTset
      congr
    rw [e3, ← e2]
    refine Finset.prod_le_prod₀ (fun j _ => hseg0 _ _) fun j _ => ?_
    exact hGsum (j.val : ℤ) _ (family_degrees_admissible hr hp (fun j x hx => (F.LLsub j x hx).1) la hla _)
      (fun i => X.nz p K la (j.val : ℤ) (X.F.fr (j.val : ℤ) i.val))
  refine le_trans ?_ (mul_le_mul_of_nonneg_left (Finset.sum_le_sum step1) hq0.le)

  have step2 : ∑ la ∈ X.LA p K, ∏ j : Fin X.F.J, X.segBound p K (j.val : ℤ) (X.nz p K la (j.val : ℤ)) =
      (∏ j ∈ Finset.range X.F.J, (X.firstSumFactor * X.sumWf p K (j : ℤ) * X.sumTf p K (j : ℤ))) * ∏ t : Fin n', X.sumSt p K t := by
    rw [← sum_LA, Finset.mul_sum]
    refine Finset.sum_congr rfl fun la _ => ?_
    rw [← Fin.prod_univ_eq_prod_range (fun j : ℕ => X.firstSumFactor * X.sumWf p K (j : ℤ) * X.sumTf p K (j : ℤ)),
      ← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun j _ => Dat.sum_segBound_eq X p K _ _
  rw [step2]

  have step3 : ∏ j ∈ Finset.range X.F.J, ((∏ x ∈ X.F.LLset (j : ℤ), sumBin r K (X.a' p K (posOf n' x))) *
      ∏ i : Fin r, ((X.Pz p K (j : ℤ) (X.F.fr (j : ℤ) i.val) : ℕ) : ℝ) ^ (r + K - 1)) ≤ ∏ t : Fin n', X.sumSt p K t := by
    have hs := Finset.prod_sdiff (f := fun t => X.sumSt p K t) (Finset.subset_univ X.F.TT)
    rw [← hs, F.tiling]
    have hc : (1 : ℝ) ≤ ∏ t ∈ Finset.univ \ X.F.TT, X.sumSt p K t :=
      sum_one_le_prod _ _ fun t ht => sum_St_nontop t (Finset.mem_sdiff.mp ht).2
    have hm : ∏ j ∈ Finset.range X.F.J, ((∏ x ∈ X.F.LLset (j : ℤ), sumBin r K (X.a' p K (posOf n' x))) *
        ∏ i : Fin r, ((X.Pz p K (j : ℤ) (X.F.fr (j : ℤ) i.val) : ℕ) : ℝ) ^ (r + K - 1)) ≤
        ∏ j ∈ Finset.range X.F.J, ∏ x ∈ X.toLate (j : ℤ), X.sumSt p K (posOf n' x) := by
      refine Finset.prod_le_prod₀ (fun j _ => mul_nonneg
        (Finset.prod_nonneg fun x _ => zero_le_one.trans (sum_one_le_bin _ _ _))
        (Finset.prod_nonneg fun i _ => by positivity)) fun j hj => ?_
      rw [F.split (j : ℤ) (fun x => X.sumSt p K (posOf n' x))]
      refine mul_le_mul ?_ ?_ (Finset.prod_nonneg fun i _ => by positivity)
        (Finset.prod_nonneg fun x _ => sum_St_nonneg _)
      · exact Finset.prod_le_prod₀ (fun x _ => zero_le_one.trans (sum_one_le_bin _ _ _)) fun x hx =>
          sum_St_LL F hr hp ⟨j, Finset.mem_range.mp hj⟩ hx
      · exact Finset.prod_le_prod₀ (fun i _ => by positivity) fun i _ => sum_St_fr F hr hp (j : ℤ) i
    have hnn : 0 ≤ ∏ j ∈ Finset.range X.F.J, ∏ x ∈ X.toLate (j : ℤ), X.sumSt p K (posOf n' x) :=
      Finset.prod_nonneg fun j _ => Finset.prod_nonneg fun x _ => sum_St_nonneg _
    nlinarith
  have hC0 : 0 ≤ ∏ j ∈ Finset.range X.F.J, (X.firstSumFactor * X.sumWf p K (j : ℤ) * X.sumTf p K (j : ℤ)) :=
    Finset.prod_nonneg fun j _ => mul_nonneg (mul_nonneg hA00 (hWf0 _)) (hTf0 _)
  refine le_trans ?_ (mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left step3 hC0) hq0.le)

  have hW : ∏ j ∈ Finset.range X.F.J, X.sumWf p K (j : ℤ) = ∏ j ∈ Finset.range X.F.J, X.sumWf p K ((j : ℤ) + 1) :=
    (prod_range_shift_of_periodic (fun j => X.sumWf p K j) X.F.J hJ1 (fun j => by
      unfold Dat.sumWf
      exact Finset.prod_congr rfl fun i _ => by rw [F.perW j i])).symm
  have hQ : ((p : ℝ) ^ n') ^ (r * K) = ∏ j ∈ Finset.range X.F.J, (((X.Qc p K (j : ℤ) : ℕ) : ℝ) ^ K) ^ r := by
    have := F.prodQ
    have h' : (p : ℝ) ^ n' = ∏ j ∈ Finset.range X.F.J, ((X.Qc p K (j : ℤ) : ℕ) : ℝ) := by
      rw [← Nat.cast_pow, ← this]; push_cast; rfl
    rw [h', ← Finset.prod_pow]
    exact Finset.prod_congr rfl fun j _ => by rw [← pow_mul, mul_comm]
  have regroup : ((p : ℝ) ^ n') ^ (r * K) * ((∏ j ∈ Finset.range X.F.J, (X.firstSumFactor * X.sumWf p K (j : ℤ) * X.sumTf p K (j : ℤ))) *
      ∏ j ∈ Finset.range X.F.J, ((∏ x ∈ X.F.LLset (j : ℤ), sumBin r K (X.a' p K (posOf n' x))) *
      ∏ i : Fin r, ((X.Pz p K (j : ℤ) (X.F.fr (j : ℤ) i.val) : ℕ) : ℝ) ^ (r + K - 1))) =
      ∏ j ∈ Finset.range X.F.J, (X.firstSumFactor * ((∏ x ∈ X.F.LLset (j : ℤ), sumBin r K (X.a' p K (posOf n' x))) *
        (X.sumWf p K ((j : ℤ) + 1) * X.sumTf p K (j : ℤ) *
          (∏ i : Fin r, ((X.Pz p K (j : ℤ) (X.F.fr (j : ℤ) i.val) : ℕ) : ℝ) ^ (r + K - 1)) *
          (((X.Qc p K (j : ℤ) : ℕ) : ℝ) ^ K) ^ r))) := by
    rw [hQ]
    simp only [Finset.prod_mul_distrib]
    rw [hW]
    ring
  rw [regroup, hbd]
  refine le_trans (mul_le_mul_of_nonneg_right htot hprod0) ?_
  have hfin : X.firstSumFactor ^ X.F.J * sumEta r X.Y ^ X.F.TT.card * ∏ t ∈ X.F.TT, sumBin r K (X.deg t) =
      ∏ j ∈ Finset.range X.F.J, (X.firstSumFactor * ∏ x ∈ X.toLate (j : ℤ), (sumEta r X.Y * sumBin r K (X.deg (posOf n' x)))) := by
    rw [Finset.prod_mul_distrib, ← F.tiling (fun t => sumEta r X.Y * sumBin r K (X.deg t)), Finset.prod_mul_distrib,
      Finset.prod_const, Finset.prod_const, Finset.card_range]
    ring
  rw [hfin]
  have heta0 : 0 ≤ sumEta r X.Y := mul_nonneg (mul_nonneg h5 h1) hr0
  refine Finset.prod_le_prod₀ (fun j _ => mul_nonneg hA00 (Finset.prod_nonneg fun x _ =>
    mul_nonneg heta0 (zero_le_one.trans (sum_one_le_bin _ _ _)))) fun j _ => ?_
  refine mul_le_mul_of_nonneg_left ?_ hA00
  rw [F.split (j : ℤ) (fun x => sumEta r X.Y * sumBin r K (X.deg (posOf n' x)))]
  refine mul_le_mul ?_ ?_ (Finset.prod_nonneg fun i _ => mul_nonneg heta0 (zero_le_one.trans (sum_one_le_bin _ _ _)))
    (Finset.prod_nonneg fun x _ => zero_le_one.trans (sum_one_le_bin _ _ _))
  · exact Finset.prod_le_prod₀ (fun x _ => mul_nonneg heta0 (zero_le_one.trans (sum_one_le_bin _ _ _))) fun x hx =>
      sum_fac_LL F h5 h1 h1' hr0 hr1 _ (sum_late_mem (F.LLsub _ _ hx).1).2.2.2
  · have e : X.sumWf p K ((j : ℤ) + 1) * X.sumTf p K (j : ℤ) *
        (∏ i : Fin r, ((X.Pz p K (j : ℤ) (X.F.fr (j : ℤ) i.val) : ℕ) : ℝ) ^ (r + K - 1)) *
        (((X.Qc p K (j : ℤ) : ℕ) : ℝ) ^ K) ^ r =
        ∏ i : Fin r, (sumBin r K ((X.Bw p K ((j : ℤ) + 1) (X.F.fr (j : ℤ) i.val) - (X.m0 K : ℤ)).toNat) *
          (((X.Qc p K (j : ℤ) : ℕ) : ℝ) ^ (r - 1) * max 0 (1 - (r : ℝ) / (2 * X.Y))) *
          ((X.Pz p K (j : ℤ) (X.F.fr (j : ℤ) i.val) : ℕ) : ℝ) ^ (r + K - 1) * ((X.Qc p K (j : ℤ) : ℕ) : ℝ) ^ K) := by
      simp only [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
      unfold Dat.sumWf Dat.sumTf
      simp only [add_sub_cancel_right, mul_pow]
    rw [e]
    exact Finset.prod_le_prod₀ (fun i _ => mul_nonneg heta0 (zero_le_one.trans (sum_one_le_bin _ _ _))) fun i _ =>
      sum_fac_fr F hr h1 hr0 (j : ℤ) i

end Main

end Formalism.MainNotions.SelectionLemmas.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumTotalLoss =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FrameZeroStrictMono =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FrameZeroStrictMono", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FamilyDegreesAdmissible\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FactorialMulChooseEqProdRange\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumPosOfPer\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.SumTotalLoss\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.ThresholdPowerBoundOfCounts\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TopOccursInAtMostTwoSegments\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.ReflectionMemGlevCastSucc\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.StrictMonoIntExists\npublic import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.TopCountLowerBoundsOfOccurrence\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.SelectionLemmas.Pf

open Finset Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas Formalism.MainNotions.G.Joints.StandardMonomialSpace

section Num

variable {p n' r K : ℕ} [NeZero n'] [NeZero r] [NeZero K] {X : Dat n' r}

theorem Rj_add_first_frame_gap_le_last_frame_gap_add_Rj_succ (hX : X.Hyp p K) (j : ℤ) :
    (X.Rj p K j : ℤ) + (X.F.fr j 0 - X.F.fr (j - 1) 0) ≤
      X.F.fr (j + 1) (r - 1) - X.F.fr j (r - 1) + X.Rj p K (j + 1) := by
  have B := basics hX
  have h1 := pow_Rj_le hX j
  have h2 := lt_pow_Rj hX (j + 1)
  have d1 := den_pos hX j
  have d2 := den_pos hX (j + 1)
  unfold Tj at h1 h2
  rw [le_div_iff₀ d1] at h1
  rw [div_lt_iff₀ d2] at h2
  simp only [add_sub_cancel_right] at h2
  have hc0 : 0 < 8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) := by
    have h2 : (0 : ℝ) < X.Y := by linarith [B.Y1]
    have h3 : (0 : ℝ) < Dat.k (r := r) K := by linarith [B.k5]
    have h4 : (0 : ℝ) < X.Ns := by linarith [B.Ns1]
    positivity
  have h3 : (p : ℝ) ^ (X.Rj p K j + X.F.dist j (X.F.fr (j - 1) 0)) <
      (p : ℝ) ^ (X.Rj p K (j + 1) + 1 + X.F.dist (j + 1) (X.F.fr j 0)) := by
    rw [pow_add, pow_add _ (X.Rj p K (j + 1) + 1)]
    refine lt_of_mul_lt_mul_right ?_ hc0.le
    calc (p : ℝ) ^ X.Rj p K j * (p : ℝ) ^ X.F.dist j (X.F.fr (j - 1) 0) * (8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ))
        = (p : ℝ) ^ X.Rj p K j * (8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (p : ℝ) ^ X.F.dist j (X.F.fr (j - 1) 0)) := by
          ring
      _ ≤ X.a := h1
      _ < _ := h2
      _ = _ := by ring
  have h4 := (pow_lt_pow_iff_right₀ B.p1).mp h3
  have b1 := mem_letters_bounds (reflection_mem_Glev_castSucc hX.valid j)
  have b2 := mem_letters_bounds (reflection_mem_Glev_castSucc hX.valid (j + 1))
  simp only [add_sub_cancel_right] at b2
  unfold Frames.dist at h4
  omega

theorem frame_zero_strict_mono (hX : X.Hyp p K) (j : ℤ) : X.F.fr (j - 1) 0 < X.F.fr j 0 := by
  have h1 := hX.valid.2.2.2.1 (j - 1)
  rw [sub_add_cancel] at h1
  exact lt_of_le_of_lt (fr_zero_le_eFr hX.valid (j - 1)) h1

theorem sum_PzQc (hX : X.Hyp p K) (j v : ℤ) (hv : v ≤ X.F.fr j (r - 1)) :
    X.Pz p K j v * X.Qc p K j = p ^ (X.F.dist (j + 1) v + X.Rj p K (j + 1)) := by
  have h := Rj_add_first_frame_gap_le_last_frame_gap_add_Rj_succ hX j
  have h0 := frame_zero_strict_mono hX j
  have hm : X.F.fr j (r - 1) < X.F.fr (j + 1) (r - 1) := eFr_strictMono hX.valid (by omega : j < j + 1)
  unfold Dat.Pz Dat.Qc
  rw [← pow_add]
  congr 1
  unfold Frames.dist
  omega

theorem sum_prodQ (hX : X.Hyp p K) : ∏ j ∈ Finset.range X.F.J, X.Qc p K (j : ℤ) = p ^ n' := by
  unfold Dat.Qc
  rw [Finset.prod_pow_eq_pow_sum]
  congr 1
  have key : ((∑ j ∈ Finset.range X.F.J, (X.F.fr ((j : ℤ) + 1) (r - 1) - X.F.fr (j : ℤ) (r - 1) +
      (X.Rj p K ((j : ℤ) + 1) : ℤ) - (X.Rj p K (j : ℤ) : ℤ)).toNat : ℕ) : ℤ) = n' := by
    push_cast
    have e : ∀ j ∈ Finset.range X.F.J, (((X.F.fr ((j : ℤ) + 1) (r - 1) - X.F.fr (j : ℤ) (r - 1) +
        (X.Rj p K ((j : ℤ) + 1) : ℤ) - (X.Rj p K (j : ℤ) : ℤ)).toNat : ℕ) : ℤ) =
        (fun i : ℕ => X.F.fr (i : ℤ) (r - 1) + (X.Rj p K (i : ℤ) : ℤ)) (j + 1) -
          (fun i : ℕ => X.F.fr (i : ℤ) (r - 1) + (X.Rj p K (i : ℤ) : ℤ)) j := by
      intro j _
      have h := Rj_add_first_frame_gap_le_last_frame_gap_add_Rj_succ hX (j : ℤ)
      have h0 := frame_zero_strict_mono hX (j : ℤ)
      rw [Int.toNat_of_nonneg (by omega)]
      push_cast
      ring
    have tel := Finset.sum_range_sub (fun i : ℕ => X.F.fr (i : ℤ) (r - 1) + (X.Rj p K (i : ℤ) : ℤ)) X.F.J
    rw [Finset.sum_congr rfl e]
    refine tel.trans ?_
    have p1 := fr_add_mul_period hX.valid 0 (r - 1) 1
    have p2 := sum_Rj_per X p K hX.valid 0 1
    simp only [zero_add, one_mul] at p1 p2
    rw [p1, p2]
    push_cast
    ring
  exact_mod_cast key

theorem thirty_two_Y_le_a (hX : X.Hyp p K) : 32 * X.Y ≤ X.a := by
  have B := basics hX
  refine le_trans ?_ (l42b hX 0 _ (reflection_mem_Glev_castSucc hX.valid 0))
  have h1 : (1 : ℝ) ≤ (p : ℝ) ^ (X.F.dist 0 (X.F.fr (0 - 1) 0) + X.Rj p K 0) := one_le_pow₀ B.p1.le
  have hk2 : (25 : ℝ) ≤ Dat.k (r := r) K ^ 2 := by linarith [pow_le_pow_left₀ (by norm_num) B.k5 2]
  have hY0 : (0 : ℝ) < X.Y := by linarith [B.Y1]
  have h2 : 32 * X.Y ≤ 8 * X.Y * Dat.k (r := r) K ^ 2 := by linarith [mul_le_mul_of_nonneg_left hk2 hY0.le]
  have h3 : 8 * X.Y * Dat.k (r := r) K ^ 2 ≤ 8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) :=
    le_mul_of_one_le_right (by positivity) B.Ns1
  have h4 : 8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) ≤
      8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (p : ℝ) ^ (X.F.dist 0 (X.F.fr (0 - 1) 0) + X.Rj p K 0) :=
    le_mul_of_one_le_right (by have := B.Ns1; positivity) h1
  linarith

theorem sum_aP (hX : X.Hyp p K) (hLa : (1088 : ℝ) ≤ X.CLa) (hk : (1088 : ℝ) ≤ X.Ck) (j y : ℤ)
    (hy : y ∈ X.F.letters j) :
    (36 / 5 : ℝ) * (X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (p : ℝ) ^ (X.F.dist j y + X.Rj p K j)) ≤
      (X.a' p K (posOf n' y) : ℝ) := by
  have h41 := (top_count_lower_bounds_of_occurrence 1088 (by norm_num) top_occurs_in_at_most_two_segments p n' r K X hX hLa hk).1 _ (mem_letters_bounds hy).2.2
  have hd := (hX.degs _ (mem_letters_bounds hy).2.2).1
  have h2 := l42b hX j y hy
  linarith

theorem sum_kP (hX : X.Hyp p K) (hLa : (1088 : ℝ) ≤ X.CLa) (hk : (1088 : ℝ) ≤ X.Ck) (j x : ℤ)
    (hx : x ∈ X.toLate j) : (r + K) * X.Pz p K j x ≤ X.a' p K (posOf n' x) := by
  have B := basics hX
  have h := sum_aP hX hLa hk j x (sum_late_mem hx).1
  have hP : (0 : ℝ) < (p : ℝ) ^ (X.F.dist j x + X.Rj p K j) := by
    have : (0 : ℝ) < p := by linarith [B.p1]
    positivity
  have h1 : Dat.k (r := r) K ≤ X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) := by
    have hk0 : (0 : ℝ) < Dat.k (r := r) K := by linarith [B.k5]
    have a1 : Dat.k (r := r) K ≤ Dat.k (r := r) K ^ 2 := le_self_pow₀ (by linarith [B.k5]) two_ne_zero
    have a2 : Dat.k (r := r) K ^ 2 ≤ X.Y * Dat.k (r := r) K ^ 2 := le_mul_of_one_le_left (by positivity) B.Y1
    have a3 : X.Y * Dat.k (r := r) K ^ 2 ≤ X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) :=
      le_mul_of_one_le_right (by have := B.Y1; positivity) B.Ns1
    linarith
  have h2 := mul_le_mul_of_nonneg_right h1 hP.le
  have h3 : Dat.k (r := r) K * (p : ℝ) ^ (X.F.dist j x + X.Rj p K j) ≤ (X.a' p K (posOf n' x) : ℝ) := by
    have : 0 ≤ X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (p : ℝ) ^ (X.F.dist j x + X.Rj p K j) := by
      have := B.Y1; have := B.Ns1; positivity
    linarith
  unfold Dat.k at h3
  unfold Dat.Pz
  exact_mod_cast h3

theorem sumBin_eq (n : ℕ) : sumBin r K n = (((n + (r + K - 1)).choose (r + K - 1) : ℕ) : ℝ) := by
  unfold sumBin
  have : n + (r + K) - 1 = n + (r + K - 1) := Nat.add_sub_assoc (by have := NeZero.pos r; omega) n
  rw [this]

theorem sum_M_le : ((r + K - 1 : ℕ) : ℝ) ≤ Dat.k (r := r) K := by
  unfold Dat.k
  exact_mod_cast Nat.sub_le _ _

theorem sum_compA (hX : X.Hyp p K) (hLa : (1088 : ℝ) ≤ X.CLa) (hk : (1088 : ℝ) ≤ X.Ck) (t : Fin n')
    (ht : t ∈ X.F.TT) : sumBin r K (X.deg t) * (1 - 5 / X.Y) ≤ sumBin r K (X.a' p K t) := by
  have B := basics hX
  have hk0 : (0 : ℝ) < Dat.k (r := r) K := by linarith [B.k5]
  have hY0 : (0 : ℝ) < X.Y := by linarith [B.Y1]
  have hu : 0 < Dat.k (r := r) K * X.Y := by positivity
  have ha0 : 0 ≤ X.a := by have := thirty_two_Y_le_a hX; linarith

  have hE0 : (X.E₀ : ℝ) * (Dat.k (r := r) K * X.Y) ≤ X.a := by
    have h1 := Tj_ge hX 0
    have d1 := den_pos hX 0
    unfold Tj at h1
    rw [le_div_iff₀ d1] at h1
    have hp1 : (1 : ℝ) ≤ (p : ℝ) ^ X.F.dist 0 (X.F.fr (0 - 1) 0) := one_le_pow₀ B.p1.le
    have w1 : Dat.k (r := r) K * X.Y ≤
        8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (p : ℝ) ^ X.F.dist 0 (X.F.fr (0 - 1) 0) := by
      have a1 : Dat.k (r := r) K * X.Y ≤ 8 * X.Y * Dat.k (r := r) K ^ 2 := by linarith [mul_le_mul_of_nonneg_left (le_self_pow₀ (show (1 : ℝ) ≤ Dat.k (r := r) K by linarith [B.k5]) two_ne_zero) hY0.le]
      have a2 : 8 * X.Y * Dat.k (r := r) K ^ 2 ≤ 8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) :=
        le_mul_of_one_le_right (by positivity) B.Ns1
      have a3 : 8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) ≤
          8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (p : ℝ) ^ X.F.dist 0 (X.F.fr (0 - 1) 0) :=
        le_mul_of_one_le_right (by have := B.Ns1; positivity) hp1
      linarith
    have hE : (X.E₀ : ℝ) ≤ 4 * (p : ℝ) * ((X.E₀ : ℝ) + X.mStar + 1) := by
      have e0 : (0 : ℝ) ≤ X.E₀ := Nat.cast_nonneg _
      have m0 : (0 : ℝ) ≤ X.mStar := Nat.cast_nonneg _
      linarith [le_mul_of_one_le_left (show (0 : ℝ) ≤ (X.E₀ : ℝ) + X.mStar + 1 by linarith) (show (1 : ℝ) ≤ p by linarith [B.p1])]
    calc (X.E₀ : ℝ) * (Dat.k (r := r) K * X.Y)
        ≤ (4 * (p : ℝ) * ((X.E₀ : ℝ) + X.mStar + 1)) *
          (8 * X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (p : ℝ) ^ X.F.dist 0 (X.F.fr (0 - 1) 0)) :=
          mul_le_mul hE w1 hu.le (le_trans (Nat.cast_nonneg _) hE)
      _ ≤ X.a := h1

  have hEt : (X.Et p K t : ℝ) * (Dat.k (r := r) K * X.Y) ≤ 4 * X.a := by
    have h1 := Et_le top_occurs_in_at_most_two_segments hX t
    rw [le_div_iff₀ (by positivity)] at h1
    have hNk : (X.Ns : ℝ) ≤ Dat.k (r := r) K := by
      unfold Dat.k
      have := hX.NsK
      exact_mod_cast (by omega : X.Ns ≤ r + K)
    have h2 : 4 * (X.Ns : ℝ) * X.a ≤ 4 * Dat.k (r := r) K * X.a := by linarith [mul_le_mul_of_nonneg_right hNk ha0]
    have h3 : Dat.k (r := r) K * ((X.Et p K t : ℝ) * (Dat.k (r := r) K * X.Y)) ≤ Dat.k (r := r) K * (4 * X.a) := by
      linarith
    exact le_of_mul_le_mul_left h3 hk0
  have hdeg := (hX.degs t ht).1
  have hnat : X.deg t ≤ X.a' p K t + X.E' t + X.Et p K t := by
    unfold Dat.a' Dat.d
    rw [if_pos ht]
    omega
  have hnat' : (X.deg t : ℝ) ≤ (X.a' p K t : ℝ) + X.E' t + X.Et p K t := by exact_mod_cast hnat
  have hE' : (X.E' t : ℝ) ≤ X.E₀ := by exact_mod_cast hX.E'le t ht
  set θ : ℝ := 5 / (Dat.k (r := r) K * X.Y) with hθ
  have hθ0 : 0 ≤ θ := by positivity
  have hθ1 : θ ≤ 1 := by
    rw [hθ, div_le_one hu]
    linarith [B.k5, hLa, hk, le_mul_of_one_le_right (show (0 : ℝ) ≤ Dat.k (r := r) K by linarith [B.k5]) B.Y1]
  have key : (X.E₀ : ℝ) + X.Et p K t ≤ θ * X.deg t := by
    rw [hθ, div_mul_eq_mul_div, le_div_iff₀ hu]
    linarith
  have hcmp := choose_add_mul_one_sub_le_pow_mul_choose_add (X.a' p K t) (X.deg t) (r + K - 1) 1 θ hθ1 (fun l _ => by
    have hl : (0 : ℝ) ≤ θ * (1 + l) := by positivity
    calc ((X.deg t : ℝ) + 1 + l) * (1 - θ) = (X.deg t : ℝ) + 1 + l - θ * X.deg t - θ * (1 + l) := by ring
      _ ≤ 1 * ((X.a' p K t : ℝ) + 1 + l) := by linarith)
  rw [one_pow, one_mul] at hcmp
  rw [sumBin_eq, sumBin_eq]
  refine le_trans (mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)) hcmp
  have hM := sum_M_le (r := r) (K := K)
  have : ((r + K - 1 : ℕ) : ℝ) * θ ≤ 5 / X.Y := by
    calc ((r + K - 1 : ℕ) : ℝ) * θ ≤ Dat.k (r := r) K * θ := mul_le_mul_of_nonneg_right hM hθ0
      _ = 5 / X.Y := by rw [hθ]; field_simp
  linarith

theorem sum_compW (hX : X.Hyp p K) (hLa : (1088 : ℝ) ≤ X.CLa) (hk : (1088 : ℝ) ≤ X.Ck) (j : ℤ) (i : Fin r) :
    sumBin r K (X.a' p K (posOf n' (X.F.fr j i.val))) * (1 - 1 / X.Y) ≤
    (((X.Pz p K j (X.F.fr j i.val) * X.Qc p K j : ℕ) : ℝ)) ^ (r + K - 1) *
      sumBin r K ((X.Bw p K (j + 1) (X.F.fr j i.val) - (X.m0 K : ℤ)).toNat) := by
  classical
  have B := basics hX
  have hk0 : (0 : ℝ) < Dat.k (r := r) K := by linarith [B.k5]
  have hY0 : (0 : ℝ) < X.Y := by linarith [B.Y1]
  have hu : 0 < Dat.k (r := r) K * X.Y := by positivity
  have hrr : r - 1 < r := Nat.sub_lt (NeZero.pos r) Nat.one_pos
  have hvle : X.F.fr j i.val ≤ X.F.fr j (r - 1) := _root_.Formalism.MainNotions.SelectionLemmas.Pf.bk_fr_le hX.valid j i.val (r - 1) (by have := i.isLt; omega) hrr
  have hvlet : X.F.fr j i.val ∈ X.F.letters (j + 1) := by
    unfold Frames.letters
    rw [Finset.mem_filter, Finset.mem_Icc, add_sub_cancel_right]
    refine ⟨⟨fr_zero_le hX.valid j i.val i.isLt, ?_⟩, (hX.valid.2.2.2.2.1 j i.val i.isLt).1⟩
    exact hvle.trans (eFr_strictMono hX.valid (by omega : j < j + 1)).le
  rw [sum_PzQc hX j _ hvle]
  have hn := sum_aP hX hLa hk (j + 1) _ hvlet
  set v := X.F.fr j i.val
  set P' : ℕ := p ^ (X.F.dist (j + 1) v + X.Rj p K (j + 1)) with hP'
  set n : ℕ := X.a' p K (posOf n' v) with hnn
  have hP'0 : 0 < P' := pow_pos hX.prime.pos _
  have hP'r : (0 : ℝ) < (P' : ℝ) := by exact_mod_cast hP'0
  have hP'1 : (1 : ℝ) ≤ (P' : ℝ) := by exact_mod_cast hP'0
  have hn' : (36 / 5 : ℝ) * (X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (P' : ℝ)) ≤ (n : ℝ) := by
    rw [hP']; push_cast; exact hn
  set Bn : ℕ := (X.Bw p K (j + 1) v - (X.m0 K : ℤ)).toNat with hBn
  have hB1 : ((X.Bw p K (j + 1) v - (X.m0 K : ℤ) : ℤ) : ℝ) ≤ (Bn : ℝ) := by
    exact_mod_cast Int.self_le_toNat _
  have hB2 : ((X.Bw p K (j + 1) v - (X.m0 K : ℤ) : ℤ) : ℝ) =
      ((n / P' : ℕ) : ℝ) - (Dat.k (r := r) K + r + 1) - (Dat.k (r := r) K * X.Ns + 1) := by
    have hBw : X.Bw p K (j + 1) v = ((n / P' : ℕ) : ℤ) - ((r + K + r + 1 : ℕ) : ℤ) := rfl
    rw [hBw]
    unfold Dat.m0 Dat.k
    generalize n / P' = q
    push_cast
    ring
  have hdiv := natDiv_gt n P' hP'0
  have hrk := B.rk
  have hc : Dat.k (r := r) K + r + 3 + Dat.k (r := r) K * X.Ns ≤ 4 * (Dat.k (r := r) K * X.Ns) := by
    have : Dat.k (r := r) K ≤ Dat.k (r := r) K * X.Ns := le_mul_of_one_le_right hk0.le B.Ns1
    linarith [B.k5]
  have hPB : (n : ℝ) - 4 * (Dat.k (r := r) K * X.Ns) * P' ≤ (P' : ℝ) * Bn := by
    have h1 : (n : ℝ) / P' - 1 - (Dat.k (r := r) K + r + 1) - (Dat.k (r := r) K * X.Ns + 1) ≤ (Bn : ℝ) := by
      linarith
    have h2 := mul_le_mul_of_nonneg_left h1 hP'r.le
    have h3 : (P' : ℝ) * ((n : ℝ) / P') = n := by field_simp
    have h4 := mul_le_mul_of_nonneg_right hc hP'r.le
    linarith [hY0]
  set θ : ℝ := 1 / (Dat.k (r := r) K * X.Y) with hθ
  have hθ0 : 0 ≤ θ := by positivity
  have hθ1 : θ ≤ 1 := by
    rw [hθ, div_le_one hu]
    exact one_le_mul_of_one_le_of_one_le (by linarith [B.k5]) B.Y1
  have key : 4 * (Dat.k (r := r) K * X.Ns) * P' ≤ θ * n := by
    rw [hθ, div_mul_eq_mul_div, one_mul, le_div_iff₀ hu]
    have : 4 * (Dat.k (r := r) K * X.Ns) * P' * (Dat.k (r := r) K * X.Y) =
        4 * (X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (P' : ℝ)) := by ring
    rw [this]
    have h0 : 0 ≤ X.Y * Dat.k (r := r) K ^ 2 * (X.Ns : ℝ) * (P' : ℝ) := by
      have := B.Ns1; positivity
    linarith
  have hcmp := choose_add_mul_one_sub_le_pow_mul_choose_add Bn n (r + K - 1) (P' : ℝ) θ hθ1 (fun l _ => by
    have hl : (0 : ℝ) ≤ θ * (1 + l) := by positivity
    have hl2 : (1 : ℝ) + l ≤ (P' : ℝ) * (1 + l) := le_mul_of_one_le_left (by positivity) hP'1
    calc ((n : ℝ) + 1 + l) * (1 - θ) = (n : ℝ) + 1 + l - θ * n - θ * (1 + l) := by ring
      _ ≤ (P' : ℝ) * Bn + (P' : ℝ) * (1 + l) := by linarith
      _ = (P' : ℝ) * ((Bn : ℝ) + 1 + l) := by ring)
  rw [sumBin_eq, sumBin_eq]
  refine le_trans (mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)) hcmp
  have hM := sum_M_le (r := r) (K := K)
  have : ((r + K - 1 : ℕ) : ℝ) * θ ≤ 1 / X.Y := by
    calc ((r + K - 1 : ℕ) : ℝ) * θ ≤ Dat.k (r := r) K * θ := mul_le_mul_of_nonneg_right hM hθ0
      _ = 1 / X.Y := by rw [hθ]; field_simp
  linarith

theorem sum_facts (hX : X.Hyp p K) (hLa : (1088 : ℝ) ≤ X.CLa) (hk : (1088 : ℝ) ≤ X.Ck) : SumFacts X p K := {
  tiling := prod_tiling X hX.valid
  split := sum_split X hX.valid
  LLsub := sum_LLsub X hX.valid
  frlate := sum_frlate X hX.valid
  uniqP := sum_uniqP X p K hX.valid
  kP := sum_kP hX hLa hk
  compA := sum_compA hX hLa hk
  compW := sum_compW hX hLa hk
  prodQ := sum_prodQ hX
  perW := sum_perW X p K hX.valid
  JN := J_le_card_TT_of_valid X hX.valid
  a32 := thirty_two_Y_le_a hX }

end Num

theorem restSum : RestSum 1088 1 :=
  restSum_of fun p n' r K _ _ _ X hX hLa hk => ⟨sum_facts hX hLa hk, Ns_one_le hX⟩

end Formalism.MainNotions.SelectionLemmas.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.SegmentDegree.FrameZeroStrictMono =====

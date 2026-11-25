module

public import GroundTheory.GlobalFields.ComplexMultiplication.EllipticFunctions
public import GroundTheory.GlobalFields.ComplexMultiplication.Residue
public import GroundTheory.GlobalFields.ComplexMultiplication.ResidueTheorem
public import Mathlib.Topology.Algebra.Module.Cardinality
public import GroundTheory.GlobalFields.ComplexMultiplication.RectangleIntegral
public import GroundTheory.GlobalFields.ComplexMultiplication.EllipticRational

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.GlobalFields.ComplexMultiplication.EllipticResidues, GroundTheory.GlobalFields.ComplexMultiplication.EllipticDegree

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.EllipticResidues =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.EllipticResidues", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.EllipticFunctions\npublic import GroundTheory.GlobalFields.ComplexMultiplication.Residue\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ResidueTheorem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Mathlib.Topology.Algebra.Module.Cardinality\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import GroundTheory.GlobalFields.ComplexMultiplication.RectangleIntegral\n\n"}
section -- clump:auto
@[expose] public section

open Complex Filter Topology Set
open scoped Interval Real

noncomputable section

namespace GroundTheory.Global
namespace Elliptic

variable {L : PeriodPair}

lemma IsPeriodic.residue_add {f : ℂ → ℂ} (hp : IsPeriodic L f) (hf : Meromorphic f) {l : ℂ}
    (hl : l ∈ L.lattice) (z : ℂ) : residue f (z + l) = residue f z := by
  rw [← residue_comp_add (hf (z + l)), hp.comp_add hl]

lemma IsPeriodic.residue_eq_of_mk_eq {f : ℂ → ℂ} (hp : IsPeriodic L f) (hf : Meromorphic f)
    {z w : ℂ} (h : Torus.mk L z = Torus.mk L w) : residue f z = residue f w := by
  have hzw := (Torus.mk_eq_mk_iff L).1 h
  have := hp.residue_add hf hzw w
  rwa [add_sub_cancel] at this


variable (L) in
def torusResidue (L : PeriodPair) (f : ℂ → ℂ) (x : Torus L) : ℂ :=
  residue f x.out

lemma torusResidue_mk {f : ℂ → ℂ} (hf : IsEllipticFunction L f) (z : ℂ) :
    torusResidue L f (Torus.mk L z) = residue f z :=
  hf.2.residue_eq_of_mk_eq hf.1 (QuotientAddGroup.out_eq' (Torus.mk L z))

variable (L) in
lemma ω₁_ne_zero : L.ω₁ ≠ 0 := by
  intro h
  have := LinearIndependent.pair_iff.mp L.indep 1 0 (by simp [h])
  simp at this

variable (L) in
lemma im_ω₂_div_ω₁_ne_zero : (L.ω₂ / L.ω₁).im ≠ 0 := by
  intro him
  have hc := ω₁_ne_zero L
  set τ := L.ω₂ / L.ω₁ with hτdef
  have hτ : ((τ.re : ℝ) : ℂ) = τ := Complex.ext (by simp) (by simp [him])
  have key := LinearIndependent.pair_iff.mp L.indep τ.re (-1) (by
    rw [Complex.real_smul, Complex.real_smul, hτ, hτdef]
    push_cast
    field_simp
    ring)
  norm_num at key

theorem finsum_torusResidue_eq_zero {f : ℂ → ℂ} (hf : IsEllipticFunction L f) :
    ∑ᶠ x : Torus L, torusResidue L f x = 0 := by
  classical
  obtain ⟨hmer, hper⟩ := hf
  have hω₁ : L.ω₁ ≠ 0 := ω₁_ne_zero L
  set c := L.ω₁ with hc_def
  have hc : c ≠ 0 := ω₁_ne_zero L
  have hcL : c ∈ L.lattice := L.ω₁_mem_lattice
  obtain ⟨τ, s, hs, hω₂, hτ⟩ : ∃ τ : ℂ, ∃ s : ℤ, (s = 1 ∨ s = -1) ∧
      L.ω₂ = (s : ℂ) * (c * τ) ∧ 0 < τ.im := by
    rcases lt_or_gt_of_ne (im_ω₂_div_ω₁_ne_zero L) with h | h
    · refine ⟨-(L.ω₂ / L.ω₁), -1, Or.inr rfl, ?_, by simpa using h⟩
      rw [hc_def]
      have h0 := ω₁_ne_zero L
      field_simp
      push_cast
      ring
    · refine ⟨L.ω₂ / L.ω₁, 1, Or.inl rfl, ?_, h⟩
      rw [hc_def]
      have h0 := ω₁_ne_zero L
      field_simp
      push_cast
      ring
  have hτL : c * τ ∈ L.lattice := by
    have h2 := L.ω₂_mem_lattice
    rcases hs with rfl | rfl
    · simpa [hω₂] using h2
    · simpa [hω₂] using L.lattice.neg_mem h2
  set h := τ.im with hh
  set g : ℂ → ℂ := fun w ↦ f (c * w) with hg_def
  have hg1 : ∀ u, g (u + 1) = g u := fun u ↦ by
    simp only [hg_def, mul_add, mul_one]
    exact hper _ _ hcL
  have hgτ : ∀ u, g (u + τ) = g u := fun u ↦ by
    simp only [hg_def, mul_add]
    exact hper _ _ hτL
  have hgmer : Meromorphic g := fun w ↦
    (hmer (c * w)).comp_analyticAt (g := fun w ↦ c * w) (by fun_prop)

  have hScount : (singularSet g).Countable := by
    have e : singularSet g = ⋃ n : ℕ, Metric.closedBall (0 : ℂ) n ∩ singularSet g := by
      ext z
      simp only [mem_iUnion, mem_inter_iff, Metric.mem_closedBall, dist_zero_right]
      constructor
      · intro hz
        obtain ⟨n, hn⟩ := exists_nat_ge ‖z‖
        exact ⟨n, hn, hz⟩
      · rintro ⟨n, -, hz⟩
        exact hz
    rw [e]
    exact countable_iUnion fun n ↦
      (finite_inter_singularSet hgmer (isCompact_closedBall 0 (n : ℝ))).countable

  obtain ⟨x₀, hx₀⟩ : ∃ x₀ : ℝ, x₀ ∈ ((fun s : ℂ ↦ s.re) '' singularSet g ∪
      (fun s : ℂ ↦ s.re - 1) '' singularSet g)ᶜ :=
    (((hScount.image _).union (hScount.image _)).dense_compl ℝ).nonempty
  obtain ⟨y₀, hy₀⟩ : ∃ y₀ : ℝ, y₀ ∈ ((fun s : ℂ ↦ s.im) '' singularSet g ∪
      (fun s : ℂ ↦ s.im - h) '' singularSet g)ᶜ :=
    (((hScount.image _).union (hScount.image _)).dense_compl ℝ).nonempty
  set a : ℂ := x₀ + y₀ * I with ha
  set b : ℂ := a + 1 + h * I with hb
  have ha_re : a.re = x₀ := by simp [ha]
  have ha_im : a.im = y₀ := by simp [ha]
  have hb_re : b.re = x₀ + 1 := by simp [hb, ha]
  have hb_im : b.im = y₀ + h := by simp [hb, ha]
  set K : Set ℂ := [[a.re, b.re]] ×ℂ [[a.im, b.im]] with hK_def
  have hK : IsCompact K := isCompact_uIcc.reProdIm isCompact_uIcc
  have hKmem : ∀ u : ℂ, u ∈ K ↔ u.re ∈ Icc x₀ (x₀ + 1) ∧ u.im ∈ Icc y₀ (y₀ + h) := by
    intro u
    rw [hK_def, mem_reProdIm, ha_re, hb_re, ha_im, hb_im, uIcc_of_le (by linarith),
      uIcc_of_le (by linarith)]
  set T : Finset ℂ := (finite_inter_singularSet hgmer hK).toFinset with hT
  have hTmem : ∀ p, p ∈ T ↔ p ∈ K ∧ p ∈ singularSet g := by
    intro p
    simp [hT]

  have hTin : ∀ p ∈ T, x₀ < p.re ∧ p.re < x₀ + 1 ∧ y₀ < p.im ∧ p.im < y₀ + h := by
    intro p hp
    obtain ⟨hpK, hpS⟩ := (hTmem p).1 hp
    obtain ⟨⟨r1, r2⟩, ⟨i1, i2⟩⟩ := (hKmem p).1 hpK
    have nr1 : p.re ≠ x₀ := fun e ↦ hx₀ (Or.inl ⟨p, hpS, e⟩)
    have nr2 : p.re ≠ x₀ + 1 := fun e ↦ hx₀ (Or.inr ⟨p, hpS, by simp [e]⟩)
    have ni1 : p.im ≠ y₀ := fun e ↦ hy₀ (Or.inl ⟨p, hpS, e⟩)
    have ni2 : p.im ≠ y₀ + h := fun e ↦ hy₀ (Or.inr ⟨p, hpS, by simp [e]⟩)
    exact ⟨lt_of_le_of_ne r1 (Ne.symm nr1), lt_of_le_of_ne r2 nr2,
      lt_of_le_of_ne i1 (Ne.symm ni1), lt_of_le_of_ne i2 ni2⟩

  have hsum0 : ∑ p ∈ T, residue g p = 0 := by
    have hres := rectIntegral_eq_sum_residue (f := g) (z := a) (w := b) T
      (fun p hp ↦ by
        obtain ⟨r1, r2, i1, i2⟩ := hTin p hp
        exact ⟨by rwa [ha_re], by rwa [hb_re], by rwa [ha_im], by rwa [hb_im]⟩)
      (fun p _ ↦ hgmer p)
      (fun u hu huT ↦ by
        by_contra hna
        exact huT ((hTmem u).2 ⟨hu, hna⟩))
    have hper0 : rectIntegral g a b = 0 := rectIntegral_eq_zero_of_periodic hg1 hgτ a
    rw [hper0] at hres
    have h2pi : (2 * π * I : ℂ) ≠ 0 := two_pi_I_ne_zero
    exact (mul_eq_zero.1 hres.symm).resolve_left h2pi

  set φ : ℂ → Torus L := fun p ↦ Torus.mk L (c * p) with hφ
  have hlat : ∀ m n : ℤ, (m : ℂ) * c + (n : ℂ) * (c * τ) ∈ L.lattice := fun m n ↦
    L.lattice.add_mem (by simpa [zsmul_eq_mul] using L.lattice.smul_mem m hcL)
      (by simpa [zsmul_eq_mul] using L.lattice.smul_mem n hτL)

  have hsupp : Function.support (torusResidue L f) ⊆ ↑(T.image φ) := by
    intro x hx
    set z := x.out with hz
    have hxz : Torus.mk L z = x := QuotientAddGroup.out_eq' x
    have hnz : residue f z ≠ 0 := hx
    have hfz : ¬ AnalyticAt ℂ f z := fun ha ↦ hnz (residue_eq_zero_of_analyticAt ha)
    set w := z / c with hw
    set n : ℤ := ⌊(w.im - y₀) / h⌋ with hn
    set p₁ : ℂ := w - n * τ with hp₁
    set m : ℤ := ⌊p₁.re - x₀⌋ with hm
    set p : ℂ := p₁ - m with hp
    have hp_re : p.re = p₁.re - m := by simp [hp]
    have hp_im : p.im = w.im - n * h := by simp [hp, hp₁, hh]
    have hn1 := Int.floor_le ((w.im - y₀) / h)
    have hn2 := Int.lt_floor_add_one ((w.im - y₀) / h)
    have hm1 := Int.floor_le (p₁.re - x₀)
    have hm2 := Int.lt_floor_add_one (p₁.re - x₀)
    rw [← hn] at hn1 hn2
    rw [← hm] at hm1 hm2
    rw [le_div_iff₀ hτ] at hn1
    rw [div_lt_iff₀ hτ] at hn2
    have hpK : p ∈ K := by
      rw [hKmem, hp_re, hp_im]
      refine ⟨⟨by linarith, by linarith⟩, ⟨by nlinarith, by nlinarith⟩⟩
    have hcp : z = c * p + ((m : ℂ) * c + (n : ℂ) * (c * τ)) := by
      simp only [hp, hp₁, hw]
      field_simp
      ring
    have hpS : p ∈ singularSet g := by
      intro hga
      apply hfz
      have h1 : AnalyticAt ℂ (fun z' ↦ g (c⁻¹ * z')) (c * p) := by
        have : AnalyticAt ℂ (fun z' ↦ c⁻¹ * z') (c * p) := by fun_prop
        exact hga.comp_of_eq this (by field_simp)
      have h2 : (fun z' ↦ g (c⁻¹ * z')) = f := by
        funext z'
        simp only [hg_def]
        congr 1
        field_simp
      rw [h2] at h1
      rw [hcp]
      exact (hper.analyticAt_add_iff (hlat m n) (c * p)).2 h1
    refine Finset.mem_coe.2 (Finset.mem_image.2 ⟨p, (hTmem p).2 ⟨hpK, hpS⟩, ?_⟩)
    rw [← hxz, hφ]
    exact ((Torus.mk_eq_mk_iff L).2 (by rw [hcp]; simpa using hlat m n)).symm

  have hinj : Set.InjOn φ ↑T := by
    intro p hp q hq hpq
    obtain ⟨pr1, pr2, pi1, pi2⟩ := hTin p hp
    obtain ⟨qr1, qr2, qi1, qi2⟩ := hTin q hq
    have hdiff := (Torus.mk_eq_mk_iff L).1 hpq
    obtain ⟨m, n, hmn⟩ := PeriodPair.mem_lattice.1 hdiff
    have hk : p - q = (m : ℂ) + ((n * s : ℤ) : ℂ) * τ := by
      have e : c * (p - q) = c * ((m : ℂ) + ((n * s : ℤ) : ℂ) * τ) := by
        rw [mul_sub, ← hmn, hω₂]
        push_cast
        ring
      exact mul_left_cancel₀ hc e
    set k : ℤ := n * s with hkdef
    have him := congrArg Complex.im hk
    have hre := congrArg Complex.re hk
    simp only [sub_im, add_im, intCast_im, mul_im, intCast_re, zero_mul, add_zero, zero_add,
      sub_re, add_re, intCast_re, mul_re, intCast_im, zero_mul, sub_zero] at him hre
    have hk0 : k = 0 := by
      have h1 : (k : ℝ) * h < h := by rw [hh]; linarith
      have h2 : -h < (k : ℝ) * h := by rw [hh]; linarith
      have h3 : (k : ℝ) < 1 := by
        by_contra hc'
        rw [not_lt] at hc'
        nlinarith
      have h4 : (-1 : ℝ) < k := by
        by_contra hc'
        rw [not_lt] at hc'
        nlinarith
      have h5 : k < 1 := by exact_mod_cast h3
      have h6 : -1 < k := by exact_mod_cast h4
      omega
    rw [hk0] at hre him
    simp only [Int.cast_zero, zero_mul, add_zero, sub_eq_zero] at hre him
    have hm0 : m = 0 := by
      have h3 : (m : ℝ) < 1 := by linarith
      have h4 : (-1 : ℝ) < m := by linarith
      have h5 : m < 1 := by exact_mod_cast h3
      have h6 : -1 < m := by exact_mod_cast h4
      omega
    rw [hm0] at hre
    simp only [Int.cast_zero, sub_eq_zero] at hre
    exact Complex.ext hre him
  rw [finsum_eq_sum_of_support_subset _ hsupp, Finset.sum_image hinj]
  have hterm : ∀ p ∈ T, torusResidue L f (φ p) = c * residue g p := by
    intro p _
    rw [hφ, torusResidue_mk ⟨hmer, hper⟩,
      show residue g p = c⁻¹ * residue f (c * p) from residue_comp_mul hc (hmer _)]
    field_simp
  rw [Finset.sum_congr rfl hterm, ← Finset.mul_sum, hsum0, mul_zero]

end Elliptic
end GroundTheory.Global
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.EllipticResidues =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.EllipticDegree =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.EllipticDegree", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.EllipticResidues\npublic import GroundTheory.GlobalFields.ComplexMultiplication.EllipticRational\nimport GroundTheory.GlobalFields.ComplexMultiplication.ResidueTheorem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Complex Filter Topology Set
open scoped PeriodPair

noncomputable section

namespace GroundTheory.Global
namespace Elliptic

variable {L : PeriodPair}


variable (L) in
def torusOrder (L : PeriodPair) (f : ℂ → ℂ) (x : Torus L) : ℤ :=
  (meromorphicOrderAt f x.out).untopD 0

lemma torusOrder_mk {f : ℂ → ℂ} (hf : IsEllipticFunction L f) (z : ℂ) :
    torusOrder L f (Torus.mk L z) = (meromorphicOrderAt f z).untopD 0 := by
  have h := (Torus.mk_eq_mk_iff L).1 (QuotientAddGroup.out_eq' (Torus.mk L z))
  have := hf.2.meromorphicOrderAt_add h z
  rw [add_sub_cancel] at this
  rw [torusOrder, this]

lemma isEllipticFunction_logDeriv {f : ℂ → ℂ} (hf : IsEllipticFunction L f) :
    IsEllipticFunction L (logDeriv f) := by
  refine ⟨fun z ↦ ?_, fun z l hl ↦ ?_⟩
  · have : logDeriv f = fun w ↦ deriv f w / f w := rfl
    rw [this]
    exact (hf.1 z).deriv.div (hf.1 z)
  · simp only [logDeriv_apply]
    rw [hf.2 z l hl]
    congr 1
    rw [← deriv_comp_add_const, hf.2.comp_add hl]

lemma residue_logDeriv_eq_untopD {f : ℂ → ℂ} {z : ℂ} (hf : MeromorphicAt f z) :
    residue (logDeriv f) z = (((meromorphicOrderAt f z).untopD 0 : ℤ) : ℂ) := by
  by_cases htop : meromorphicOrderAt f z = ⊤
  · rw [htop, WithTop.untopD_top, Int.cast_zero]
    rw [meromorphicOrderAt_eq_top_iff] at htop
    have hmer : MeromorphicAt (logDeriv f) z := by
      have : logDeriv f = fun w ↦ deriv f w / f w := rfl
      rw [this]
      exact hf.deriv.div hf
    have h0 : logDeriv f =ᶠ[𝓝[≠] z] fun _ ↦ (0 : ℂ) := by
      filter_upwards [htop] with w hw
      simp [logDeriv_apply, hw]
    rw [residue_congr hmer h0]
    exact residue_eq_zero_of_analyticAt analyticAt_const
  · obtain ⟨n, hn⟩ := WithTop.ne_top_iff_exists.1 htop
    rw [← hn, WithTop.untopD_coe]
    exact residue_logDeriv hf hn.symm

lemma torusResidue_logDeriv {f : ℂ → ℂ} (hf : IsEllipticFunction L f) (x : Torus L) :
    torusResidue L (logDeriv f) x = (torusOrder L f x : ℂ) :=
  residue_logDeriv_eq_untopD (hf.1 _)

lemma finite_support_torusResidue {f : ℂ → ℂ} (hf : IsEllipticFunction L f) :
    (Function.support (torusResidue L f)).Finite := by
  refine (finite_image_singularSet L hf.1 hf.2).subset ?_
  intro x hx
  refine ⟨x.out, fun ha ↦ hx (residue_eq_zero_of_analyticAt ha), QuotientAddGroup.out_eq' x⟩

lemma finite_support_torusOrder {f : ℂ → ℂ} (hf : IsEllipticFunction L f) :
    (Function.support (torusOrder L f)).Finite := by
  refine (finite_support_torusResidue (isEllipticFunction_logDeriv hf)).subset ?_
  intro x hx
  simp only [Function.mem_support, torusResidue_logDeriv hf] at hx ⊢
  exact_mod_cast hx


variable (L) in
def degree (L : PeriodPair) (f : ℂ → ℂ) : ℕ :=
  ∑ᶠ x : Torus L, (-torusOrder L f x).toNat

lemma toNat_neg_untopD_sub_const {f : ℂ → ℂ} {z : ℂ} (hf : MeromorphicAt f z) (c : ℂ) :
    (-(meromorphicOrderAt (fun w ↦ f w - c) z).untopD 0).toNat =
      (-(meromorphicOrderAt f z).untopD 0).toNat := by
  have hc : MeromorphicAt (fun _ : ℂ ↦ -c) z := analyticAt_const.meromorphicAt
  have e : (fun w ↦ f w - c) = f + fun _ ↦ -c := by
    funext w; simp [sub_eq_add_neg]
  have hc0 : 0 ≤ meromorphicOrderAt (fun _ : ℂ ↦ -c) z := analyticAt_const.meromorphicOrderAt_nonneg
  rw [e]
  by_cases hneg : meromorphicOrderAt f z < 0
  · rw [meromorphicOrderAt_add_eq_left_of_lt hc (hneg.trans_le hc0)]
  · push Not at hneg
    have h1 : 0 ≤ meromorphicOrderAt (f + fun _ ↦ -c) z :=
      le_trans (le_min hneg hc0) (meromorphicOrderAt_add hf hc)
    have key : ∀ o : WithTop ℤ, 0 ≤ o → (-(o.untopD 0)).toNat = 0 := by
      intro o ho
      induction o with
      | top => simp
      | coe n =>
        simp only [WithTop.untopD_coe]
        have : (0 : ℤ) ≤ n := by exact_mod_cast ho
        omega
    rw [key _ h1, key _ hneg]

lemma nonneg_of_toNat_neg_untopD_eq_zero {o : WithTop ℤ} (h : (-(o.untopD 0)).toNat = 0) :
    0 ≤ o := by
  induction o with
  | top => exact le_top
  | coe n =>
    simp only [WithTop.untopD_coe] at h
    exact_mod_cast (by omega : (0 : ℤ) ≤ n)

lemma toNat_neg_untopD_eq_zero_of_nonneg {o : WithTop ℤ} (h : 0 ≤ o) :
    (-(o.untopD 0)).toNat = 0 := by
  induction o with
  | top => simp
  | coe n =>
    simp only [WithTop.untopD_coe]
    have : (0 : ℤ) ≤ n := by exact_mod_cast h
    omega

lemma eq_neg_one_of_toNat_neg_untopD_eq_one {o : WithTop ℤ} (h : (-(o.untopD 0)).toNat = 1) :
    o = ((-1 : ℤ) : WithTop ℤ) := by
  induction o with
  | top => simp at h
  | coe n =>
    simp only [WithTop.untopD_coe] at h
    have : n = -1 := by omega
    rw [this]

lemma eventually_nhdsNE_of_eventually_codiscrete {p : ℂ → Prop} (h : ∀ᶠ z in codiscrete ℂ, p z)
    (x : ℂ) : ∀ᶠ z in 𝓝[≠] x, p z := by
  rw [Filter.Eventually, codiscrete, mem_codiscreteWithin] at h
  have := disjoint_principal_right.1 (h x (mem_univ x))
  filter_upwards [this] with z hz
  by_contra hpz
  exact hz ⟨mem_univ z, hpz⟩

lemma finite_support_toNat_neg_torusOrder {f : ℂ → ℂ} (hf : IsEllipticFunction L f) :
    (Function.support fun x ↦ (-torusOrder L f x).toNat).Finite :=
  (finite_support_torusOrder hf).subset fun x hx ↦ by
    simp only [Function.mem_support] at hx ⊢
    omega

lemma eq_zero_of_finsum_eq_zero_nat {α : Type*} {u : α → ℕ} (hu : (Function.support u).Finite)
    (h : ∑ᶠ x, u x = 0) (x : α) : u x = 0 := by
  classical
  by_contra hx
  rw [finsum_eq_sum_of_support_subset u (s := hu.toFinset) (by simp)] at h
  exact hx ((Finset.sum_eq_zero_iff.1 h) x (by simpa using hx))

theorem degree_ne_one {f : ℂ → ℂ} (hf : IsEllipticFunction L f) : degree L f ≠ 1 := by
  classical
  intro h1
  set u : Torus L → ℕ := fun x ↦ (-torusOrder L f x).toNat with hu
  have hfin : (Function.support u).Finite := finite_support_toNat_neg_torusOrder hf
  set s := hfin.toFinset with hs
  have hsum : ∑ x ∈ s, u x = 1 := by
    rw [← finsum_eq_sum_of_support_subset u (by simp [hs])]
    exact h1
  obtain ⟨x₀, hx₀s, hx₀⟩ : ∃ x₀ ∈ s, u x₀ ≠ 0 := by
    by_contra hcon
    push Not at hcon
    rw [Finset.sum_eq_zero hcon] at hsum
    exact zero_ne_one hsum
  have hsplit := Finset.add_sum_erase s u hx₀s
  rw [hsum] at hsplit
  have hux₀ : u x₀ = 1 := by omega
  have hrest : ∀ x, x ≠ x₀ → u x = 0 := by
    intro x hx
    by_cases hxs : x ∈ s
    · have h0 : ∑ y ∈ s.erase x₀, u y = 0 := by omega
      exact Finset.sum_eq_zero_iff.1 h0 x (Finset.mem_erase.2 ⟨hx, hxs⟩)
    · simpa [hs] using hxs
  have hres := finsum_torusResidue_eq_zero hf
  rw [finsum_eq_single _ x₀ (fun x hx ↦ ?_)] at hres
  · have hord := eq_neg_one_of_toNat_neg_untopD_eq_one hux₀
    exact residue_ne_zero_of_meromorphicOrderAt_eq_neg_one (hf.1 _) hord hres
  · exact residue_eq_zero_of_meromorphicOrderAt_nonneg (hf.1 _)
      (nonneg_of_toNat_neg_untopD_eq_zero (hrest x hx))

end Elliptic
end GroundTheory.Global
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.EllipticDegree =====

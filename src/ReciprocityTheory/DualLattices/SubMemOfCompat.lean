module

public import ReciprocityTheory.DualLattices.AinfFacts
public import ReciprocityTheory.DualLattices.ATowerInh
public import ReciprocityTheory.DualLattices.NsetExpInjectiveSurjective
public import ReciprocityTheory.DualLattices.HtLinStatement
public import ReciprocityTheory.DualLattices.Imports

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.DualLattices.AinfTower, ReciprocityTheory.DualLattices.SubMemOfCompat

-- ===== clump member: ReciprocityTheory.DualLattices.AinfTower =====
-- clump-header: {"m": "ReciprocityTheory.DualLattices.AinfTower", "h": "module\n\npublic import ReciprocityTheory.DualLattices.AinfFacts\npublic import ReciprocityTheory.DualLattices.ATowerInh\npublic import ReciprocityTheory.DualLattices.NsetExpInjectiveSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open WittVector Ideal

namespace ReciprocityTheory.PGsh

namespace Ainf

variable (p : ℕ) [hp : Fact p.Prime] {C : Type} [Field C] [IsAlgClosed C] [CharZero C]
  {v : Valuation C NNReal} (O : Type) [CommRing O] [Algebra O C]
  [Fact ¬IsUnit (p : O)] [IsAdicComplete (span {(p : O)}) O]

abbrev R0 (ε : PreTilt O p) := A p O ⧸ span {xi p O ε ^ 2}

abbrev Rn (n : ℕ) := O ⧸ span {(p : O) ^ (n + 1)}

abbrev R'n (ε : PreTilt O p) (n : ℕ) := R0 p O ε ⧸ span {(p : R0 p O ε) ^ (n + 1)}

lemma hpRn (n : ℕ) : (p : Rn p O n) ^ (n + 1) = 0 := by
  rw [← map_natCast (Ideal.Quotient.mk (span {(p : O) ^ (n + 1)})) p, ← map_pow,
    Ideal.Quotient.eq_zero_iff_mem]
  exact Ideal.mem_span_singleton_self _

lemma hpR' (ε : PreTilt O p) (n : ℕ) : (p : R'n p O ε n) ^ (n + 1) = 0 := by
  rw [← map_natCast (Ideal.Quotient.mk (span {(p : R0 p O ε) ^ (n + 1)})) p, ← map_pow,
    Ideal.Quotient.eq_zero_iff_mem]
  exact Ideal.mem_span_singleton_self _

lemma Rn_local (hv : v.Integers O) (n : ℕ) : IsLocalRing (Rn p O n) := by
  haveI := O_local O hv
  haveI : Nontrivial (Rn p O n) := by
    refine ⟨⟨0, 1, fun h => ?_⟩⟩
    have h1 : (1 : O) ∈ span {(p : O) ^ (n + 1)} := by
      rw [← Ideal.Quotient.eq_zero_iff_mem, map_one]; exact h.symm
    rw [Ideal.mem_span_singleton'] at h1
    obtain ⟨a, ha⟩ := h1
    exact (Fact.out : ¬IsUnit (p : O))
      ((isUnit_pow_iff (Nat.succ_ne_zero n)).1 (IsUnit.of_mul_eq_one_right a ha))
  exact IsLocalRing.of_surjective' (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective

lemma one_add_unit {S : Type} [CommRing S] (a b : S) (hb : b * b = 0) : IsUnit (1 + a * b) := by
  exact IsUnit.of_mul_eq_one (1 - a * b) (by linear_combination (-a ^ 2) * hb)

variable (hv : v.Integers O) (ε : PreTilt O p)
  (hε : IsPrimitiveRoot (((frobeniusEquiv (PreTilt O p) p).symm ε).untilt) p)
include hv hε

def thetaBar : R0 p O ε →+* O :=
  Ideal.Quotient.lift _ (fontaineTheta O p) (fun a ha => by
    obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    rw [map_mul, map_pow, theta_xi p O hv ε hε, zero_pow two_ne_zero, mul_zero])

def algO : Algebra (R0 p O ε) O := (thetaBar p O hv ε hε).toAlgebra

def algRn (n : ℕ) : Algebra (R0 p O ε) (Rn p O n) :=
  ((Ideal.Quotient.mk (span {(p : O) ^ (n + 1)})).comp (thetaBar p O hv ε hε)).toAlgebra

def piRing (n : ℕ) : R'n p O ε n →+* Rn p O n :=
  Ideal.Quotient.lift _ ((Ideal.Quotient.mk (span {(p : O) ^ (n + 1)})).comp
    (thetaBar p O hv ε hε)) (fun a ha => by
    obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    simp only [RingHom.comp_apply, map_mul, map_pow, map_natCast, hpRn, mul_zero])

lemma piRing_mk (n : ℕ) (a : A p O) :
    piRing p O hv ε hε n (Ideal.Quotient.mk _ (Ideal.Quotient.mk _ a)) =
      Ideal.Quotient.mk _ (fontaineTheta O p a) := rfl

lemma piRing_surj (n : ℕ) : Function.Surjective (piRing p O hv ε hε n) := by
  intro y
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective y
  obtain ⟨a, rfl⟩ := theta_surj p O hv x
  exact ⟨_, piRing_mk p O hv ε hε n a⟩

def xiR (n : ℕ) : R'n p O ε n :=
  Ideal.Quotient.mk (span {(p : R0 p O ε) ^ (n + 1)}) (Ideal.Quotient.mk (span {xi p O ε ^ 2}) (xi p O ε))

lemma ker_pi (n : ℕ) : RingHom.ker (piRing p O hv ε hε n) = span {xiR p O ε n} := by
  apply le_antisymm
  · intro x hx
    rw [RingHom.mem_ker] at hx
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
    rw [piRing_mk, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at hx
    obtain ⟨o, ho⟩ := hx
    obtain ⟨b, rfl⟩ := theta_surj p O hv o
    have hk : a - b * (p : A p O) ^ (n + 1) ∈ RingHom.ker (fontaineTheta O p) := by
      rw [RingHom.mem_ker, map_sub, map_mul, map_pow, map_natCast, ho, sub_self]
    rw [ker_theta p O hv ε hε, Ideal.mem_span_singleton'] at hk
    obtain ⟨c, hc⟩ := hk
    have ha : a = c * xi p O ε + b * (p : A p O) ^ (n + 1) := by rw [hc]; ring
    rw [Ideal.mem_span_singleton']
    refine ⟨Ideal.Quotient.mk _ (Ideal.Quotient.mk _ c), ?_⟩
    rw [ha]
    simp only [xiR, map_add (f := _), map_mul, map_pow, map_natCast, hpR', mul_zero, add_zero]
  · rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, RingHom.mem_ker, xiR, piRing_mk,
      theta_xi p O hv ε hε, map_zero]

lemma xi_sq' (n : ℕ) : xiR p O ε n * xiR p O ε n = 0 := by
  unfold xiR
  rw [← map_mul, ← map_mul]
  have h : (Ideal.Quotient.mk (span {xi p O ε ^ 2})) (xi p O ε * xi p O ε) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton'.2 ⟨1, by ring⟩)
  rw [h, map_zero]

lemma R'n_local (n : ℕ) : IsLocalRing (R'n p O ε n) := by
  haveI := Rn_local p O hv n
  haveI : Nontrivial (R'n p O ε n) := (piRing p O hv ε hε n).domain_nontrivial
  have key : ∀ a : R'n p O ε n, IsUnit (piRing p O hv ε hε n a) → IsUnit a := by
    intro a ha
    obtain ⟨u, hu⟩ := ha.exists_right_inv
    obtain ⟨u', rfl⟩ := piRing_surj p O hv ε hε n u
    have hk : a * u' - 1 ∈ RingHom.ker (piRing p O hv ε hε n) := by
      rw [RingHom.mem_ker, RingHom.map_sub, map_mul, hu, map_one, sub_self]
    rw [ker_pi, Ideal.mem_span_singleton'] at hk
    obtain ⟨k, hk⟩ := hk
    have h1 : a * u' = 1 + k * xiR p O ε n := by rw [hk]; ring
    have h2 := one_add_unit k (xiR p O ε n) (xi_sq' p O hv ε hε n)
    rw [← h1] at h2
    exact isUnit_of_mul_isUnit_left h2
  refine IsLocalRing.of_isUnit_or_isUnit_one_sub_self (fun a => ?_)
  have h : piRing p O hv ε hε n a + piRing p O hv ε hε n (1 - a) = 1 := by
    rw [← (piRing p O hv ε hε n).map_add, add_sub_cancel, (piRing p O hv ε hε n).map_one]
  rcases IsLocalRing.isUnit_or_isUnit_of_add_one h with h | h
  · exact Or.inl (key a h)
  · exact Or.inr (key _ h)

lemma ann' (n : ℕ) (a : R'n p O ε n) (ha : a * xiR p O ε n = 0) :
    a ∈ span {xiR p O ε n} := by
  haveI : IsDomain O := Function.Injective.isDomain (algebraMap O C) hv.hom_inj
  have hp0 : (p : O) ≠ 0 := by
    intro h
    have h' := congrArg (algebraMap O C) h
    rw [map_natCast, map_zero] at h'
    exact hp.out.ne_zero (by exact_mod_cast h')
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective a
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective y
  unfold xiR at ha
  rw [← map_mul, ← map_mul, Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton'] at ha
  obtain ⟨d0, hd0⟩ := ha
  obtain ⟨d, rfl⟩ := Ideal.Quotient.mk_surjective d0
  rw [← map_natCast (Ideal.Quotient.mk (span {xi p O ε ^ 2})) p, ← map_pow, ← map_mul,
    Ideal.Quotient.eq, Ideal.mem_span_singleton'] at hd0
  obtain ⟨c, hc⟩ := hd0
  have h1 : fontaineTheta O p d * (p : O) ^ (n + 1) = 0 := by
    have h' := congrArg (fontaineTheta O p) hc
    simp only [map_mul, map_sub, map_pow, map_natCast, theta_xi p O hv ε hε] at h'
    linear_combination -h'
  have h2 : fontaineTheta O p d = 0 := (mul_eq_zero.1 h1).resolve_right (pow_ne_zero _ hp0)
  have h3 : d ∈ RingHom.ker (fontaineTheta O p) := h2
  rw [ker_theta p O hv ε hε, Ideal.mem_span_singleton'] at h3
  obtain ⟨e0, rfl⟩ := h3
  have h4 : (y - (e0 * (p : A p O) ^ (n + 1) - c * xi p O ε)) * xi p O ε = 0 := by
    linear_combination hc
  have h5 := xi_nzd p O hv ε hε _ h4
  rw [sub_eq_zero] at h5
  rw [h5, Ideal.mem_span_singleton']
  refine ⟨-(Ideal.Quotient.mk _ (Ideal.Quotient.mk _ c)), ?_⟩
  simp only [xiR, RingHom.map_sub, map_mul, map_pow, map_natCast, hpR', mul_zero, zero_sub, neg_mul]

def zv (n : ℕ) : R'n p O ε n :=
  Ideal.Quotient.mk _ (Ideal.Quotient.mk _ (teichmuller p (root p O ε (n + 1))))

def nuR (n : ℕ) : R'n p O ε n := Ideal.Quotient.mk _ (Ideal.Quotient.mk _ (nu p O ε))

lemma zv_pow (n : ℕ) :
    zv p O ε n ^ p ^ (n + 1) = 1 + nuR p O ε n * xiR p O ε n := by
  unfold zv nuR xiR
  rw [← map_pow, ← map_pow, ← map_pow, root_pow, teich_eps p O hv ε hε, map_add (f := _), map_add (f := _), map_one,
    map_one, map_mul, map_mul]

lemma zv_unit (n : ℕ) : IsUnit (zv p O ε n) := by
  have hne : p ^ (n + 1) ≠ 0 := pow_ne_zero _ hp.out.ne_zero
  refine (isUnit_pow_iff hne).1 ?_
  rw [zv_pow p O hv ε hε n]
  exact one_add_unit _ _ (xi_sq' p O hv ε hε n)

def zetaV (n : ℕ) : O := fontaineTheta O p (teichmuller p (root p O ε (n + 1)))

lemma zeta_unit (n : ℕ) : IsUnit (zetaV p O ε n) := by
  have hne : p ^ (n + 1) ≠ 0 := pow_ne_zero _ hp.out.ne_zero
  have h : zetaV p O ε n ^ p ^ (n + 1) = 1 := by
    unfold zetaV
    rw [← map_pow, ← map_pow, root_pow, teich_eps p O hv ε hε, map_add (f := _), map_one, map_mul,
      theta_xi p O hv ε hε, mul_zero, add_zero]
  refine IsUnit.of_mul_eq_one (zetaV p O ε n ^ (p ^ (n + 1) - 1)) ?_
  rw [← pow_succ', Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.2 hne), h]

def LO : LAlg (R0 p O ε) := { carrier := O, alg := algO p O hv ε hε, loc := O_local O hv }

def LR (n : ℕ) : LAlg (R0 p O ε) :=
  { carrier := Rn p O n, alg := algRn p O hv ε hε n, loc := Rn_local p O hv n }

def LR' (n : ℕ) : LAlg (R0 p O ε) := { carrier := R'n p O ε n, loc := R'n_local p O hv ε hε n }

lemma q_surj (n : ℕ) : Function.Surjective (Ideal.Quotient.mk (span {(p : O) ^ (n + 1)})) := by
  exact Ideal.Quotient.mk_surjective

def ainfTower : ATower (R0 p O ε) p where
  O := LO p O hv ε hε
  R' n := LR' p O hv ε hε n
  R n := LR p O hv ε hε n
  π n := ⟨{ toRingHom := piRing p O hv ε hε n, commutes' := fun _ => rfl },
    IsLocalHom.of_surjective _ (piRing_surj p O hv ε hε n)⟩
  q n := ⟨{ toRingHom := Ideal.Quotient.mk (span {(p : O) ^ (n + 1)}), commutes' := fun _ => rfl },
    IsLocalHom.of_surjective _ (q_surj p O hv ε hε n)⟩
  ξ n := xiR p O ε n
  surj n := piRing_surj p O hv ε hε n
  ker_eq n := ker_pi p O hv ε hε n
  ξ_sq n := xi_sq' p O hv ε hε n
  ann n a ha := ann' p O hv ε hε n a ha
  char n := by rw [Nat.cast_pow]; exact hpR' p O ε n
  sep a ha := sepO p O a fun n =>
    (Ideal.Quotient.eq_zero_iff_mem (I := span {(p : O) ^ (n + 1)})).1 (ha n)
  c := fontaineTheta O p (nu p O ε)
  cp n := nuR p O ε n
  cp_spec n := rfl
  zh n := (zv_unit p O hv ε hε n).unit
  zh_pow n := by rw [IsUnit.unit_spec]; exact zv_pow p O hv ε hε n
  ζ n := (zeta_unit p O hv ε hε n).unit
  ζ_spec n := by rw [IsUnit.unit_spec, IsUnit.unit_spec]; rfl

theorem ainfTower_isDomain : IsDomain ((ainfTower p O hv ε hε).O : Type) := by
  show IsDomain O
  exact Function.Injective.isDomain (algebraMap O C) hv.hom_inj

end Ainf

end ReciprocityTheory.PGsh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.DualLattices.AinfTower =====

-- ===== clump member: ReciprocityTheory.DualLattices.SubMemOfCompat =====
-- clump-header: {"m": "ReciprocityTheory.DualLattices.SubMemOfCompat", "h": "module\n\npublic import ReciprocityTheory.DualLattices.AinfTower\npublic import ReciprocityTheory.DualLattices.HtLinStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.Imports\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open WittVector Ideal

namespace ReciprocityTheory.PGsh

namespace Ainf

variable (p : ℕ) [hp : Fact p.Prime] {C : Type} [Field C] [IsAlgClosed C] [CharZero C]
  {v : Valuation C NNReal} (O : Type) [CommRing O] [Algebra O C]
  [Fact ¬IsUnit (p : O)] [IsAdicComplete (span {(p : O)}) O]
  (hv : v.Integers O) (ε : PreTilt O p)
  (hε : IsPrimitiveRoot (((frobeniusEquiv (PreTilt O p) p).symm ε).untilt) p)

def r'Alg (n : ℕ) : R'n p O ε (n + 1) →ₐ[R0 p O ε] R'n p O ε n :=
  Ideal.Quotient.liftₐ _ (Ideal.Quotient.mkₐ (R0 p O ε) _) (fun a ha => by
    obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    rw [Ideal.Quotient.mkₐ_eq_mk, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.mem_span_singleton'.2 ⟨b * p, by ring⟩)

def rRing (n : ℕ) : Rn p O (n + 1) →+* Rn p O n :=
  Ideal.Quotient.lift (span {(p : O) ^ (n + 1 + 1)})
    (Ideal.Quotient.mk (span {(p : O) ^ (n + 1)})) (fun a ha => by
      obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.1 ha
      rw [Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.mem_span_singleton'.2 ⟨b * p, by ring⟩)

def rAlg (n : ℕ) : (LR p O hv ε hε (n + 1) : Type) →ₐ[R0 p O ε] (LR p O hv ε hε n : Type) :=
  { toRingHom := rRing p O n
    commutes' := fun _ => rfl }

lemma r'Alg_surj (n : ℕ) : Function.Surjective (r'Alg p O ε n) := by
  intro y
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
  exact ⟨Ideal.Quotient.mk _ a, rfl⟩

lemma rAlg_surj (n : ℕ) : Function.Surjective (rAlg p O hv ε hε n) := by
  intro y
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
  exact ⟨Ideal.Quotient.mk _ a, rfl⟩

lemma sub_mem_of_compat (f : ℕ → O)
    (hf : ∀ n, f (n + 1) - f n ∈ span {(p : O) ^ (n + 1)}) :
    ∀ m k, f (m + k) - f m ∈ span {(p : O) ^ m} := by
  intro m k
  induction k with
  | zero => simp
  | succ k ih =>
    have h1 : f (m + k + 1) - f (m + k) ∈ span {(p : O) ^ m} := by
      have h := hf (m + k)
      rw [Ideal.mem_span_singleton'] at h ⊢
      obtain ⟨a, ha⟩ := h
      exact ⟨a * p ^ (k + 1), by rw [← ha, mul_assoc, ← pow_add]; ring_nf⟩
    have : f (m + (k + 1)) - f m = (f (m + k + 1) - f (m + k)) + (f (m + k) - f m) := by
      rw [← add_assoc]; ring
    rw [this]
    exact Ideal.add_mem _ h1 ih

lemma complete_O (x : ∀ n, (Rn p O n)) (hx : ∀ n, rRing p O n (x (n + 1)) = x n) :
    ∃ a : O, ∀ n, Ideal.Quotient.mk (span {(p : O) ^ (n + 1)}) a = x n := by
  choose f hf using fun n => Ideal.Quotient.mk_surjective (x n)
  have hc : ∀ n, f (n + 1) - f n ∈ span {(p : O) ^ (n + 1)} := by
    intro n
    have h := hx n
    rw [← hf (n + 1), ← hf n, rRing, Ideal.Quotient.lift_mk, Ideal.Quotient.eq] at h
    exact h
  have hsm : ∀ m, (span {(p : O)} ^ m • ⊤ : Submodule O O) = span {(p : O) ^ m} := by
    intro m
    rw [smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow]
  obtain ⟨L, hL⟩ := IsPrecomplete.prec (I := span {(p : O)}) (M := O) inferInstance
    (f := f) (fun {m n} hmn => by
      rw [SModEq.sub_mem, hsm]
      obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hmn
      have := sub_mem_of_compat p O f hc m k
      rw [← neg_sub]
      exact (Ideal.neg_mem_iff _).2 this)
  refine ⟨L, fun n => ?_⟩
  rw [← hf n, Ideal.Quotient.eq]
  have h1 := hL (n + 1)
  rw [SModEq.sub_mem, hsm] at h1
  have h2 := hc n
  have : L - f n = (f (n + 1) - f n) - (f (n + 1) - L) := by ring
  rw [this]
  exact Ideal.sub_mem _ h2 h1

def ainfTowerL : ATowerL (R0 p O ε) p where
  toATower := ainfTower p O hv ε hε
  r' n := ⟨r'Alg p O ε n, IsLocalHom.of_surjective _ (r'Alg_surj p O ε n)⟩
  r n := ⟨rAlg p O hv ε hε n, IsLocalHom.of_surjective _ (rAlg_surj p O hv ε hε n)⟩
  r_π n x := by
    obtain ⟨x0, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x0
    rfl
  r_q n x := rfl
  r'_ξ n := rfl
  complete x hx := complete_O p O x hx

lemma root_succ_pow (k : ℕ) : root p O ε (k + 1) ^ p = root p O ε k := by
  show ((frobeniusEquiv (PreTilt O p) p).symm^[k + 1] ε) ^ p = _
  rw [Function.iterate_succ_apply', frobeniusEquiv_symm_pow_p]
  rfl

lemma root_pow_one (n : ℕ) : root p O ε (n + 1) ^ p ^ n = root p O ε 1 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [pow_succ', pow_mul, root_succ_pow, ih]

theorem zeta_succ_pow (n : ℕ) : zetaV p O ε (n + 1) ^ p = zetaV p O ε n := by
  rw [zetaV, zetaV, ← map_pow, ← map_pow, root_succ_pow]


include hv hε in
theorem zeta_primitive (n : ℕ) : IsPrimitiveRoot (zetaV p O ε n) (p ^ (n + 1)) := by
  have hz1 : zetaV p O ε n ^ p ^ (n + 1) = 1 := by
    rw [zetaV, ← map_pow, ← map_pow, root_pow, fontaineTheta_teichmuller,
      untilt_eps p O hv ε hε]
  have hzn : zetaV p O ε n ^ p ^ n ≠ 1 := by
    rw [zetaV, ← map_pow, ← map_pow, root_pow_one, fontaineTheta_teichmuller]
    exact hε.ne_one hp.out.one_lt
  have hord : orderOf (zetaV p O ε n) ∣ p ^ (n + 1) := orderOf_dvd_of_pow_eq_one hz1
  obtain ⟨j, hj, hj'⟩ := (Nat.dvd_prime_pow hp.out).1 hord
  have hjn : j = n + 1 := by
    by_contra hne
    have hle : j ≤ n := by omega
    apply hzn
    have : orderOf (zetaV p O ε n) ∣ p ^ n := by rw [hj']; exact pow_dvd_pow p hle
    exact orderOf_dvd_iff_pow_eq_one.1 this
  rw [← hjn, ← hj']
  exact IsPrimitiveRoot.orderOf _


include hv hε in
theorem c_val : v (algebraMap O C (fontaineTheta O p (nu p O ε))) ^ (p - 1) = v (p : C) := by
  obtain ⟨-, -, -, hX, -, -⟩ := a0 p C v O hv
  exact (hX ε hv hε).2.2.1


end Ainf

end ReciprocityTheory.PGsh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.DualLattices.SubMemOfCompat =====

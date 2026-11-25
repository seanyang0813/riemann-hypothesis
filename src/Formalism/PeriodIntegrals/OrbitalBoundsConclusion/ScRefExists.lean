module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PPAssemble
public import Mathlib.RingTheory.DedekindDomain.PID
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.StarMemAp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaA
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WBasis
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development
public import Formalism.PeriodIntegrals.ScRefExists
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.TargetOfWframe

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PrincipalIdealRingAtPrime, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.MemLAOfNsmul, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WFrameOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGZeroRight, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WeilBasisExistence, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScRefExists

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PrincipalIdealRingAtPrime =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PrincipalIdealRingAtPrime", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PPAssemble\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.DedekindDomain.PID\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S IsDedekindDomain
open scoped TensorProduct nonZeroDivisors

namespace PI.ScRefExists.ApP

open PI.ScRefExists.Sk

abbrev Pz (p : ℕ) : Ideal ℤ := Ideal.span {(p : ℤ)}

theorem pz_prime {p : ℕ} (hp : p.Prime) : (Pz p).IsPrime := (Ideal.span_singleton_prime (by exact_mod_cast hp.ne_zero)).mpr (Nat.prime_iff_prime_int.mp hp)

instance pz_isPrime (p : ℕ) [hp : Fact p.Prime] : (Pz p).IsPrime := pz_prime hp.out

theorem pz_ne_bot {p : ℕ} (hp : p.Prime) : Pz p ≠ ⊥ := by
  rw [Ne, Ideal.span_singleton_eq_bot]
  exact_mod_cast hp.ne_zero

theorem natCast_not_mem {p : ℕ} (hp : p.Prime) {s : ℕ} (hs : Nat.Coprime s p) : (s : ℤ) ∉ Pz p := by
  rw [Ideal.mem_span_singleton]
  intro h
  have h1 : p ∣ s := Int.natCast_dvd_natCast.mp h
  have h2 : p ∣ Nat.gcd s p := Nat.dvd_gcd h1 dvd_rfl
  rw [Nat.Coprime.gcd_eq_one hs] at h2
  exact hp.one_lt.ne' (Nat.dvd_one.mp h2)

variable (I : Formalism.MainNotions.S.AutInst)

private theorem mem_Ap_lemma (p : ℕ) (x : I.E) :
    x ∈ Ap I p ↔ ∃ s : ℕ, Nat.Coprime s p ∧ ∃ a : 𝓞 I.E, (s : I.E) * x = (a : I.E) :=
  Iff.rfl

private theorem coe_algebraMap_int_ringOfIntegers (n : ℤ) :
    ((algebraMap ℤ (𝓞 I.E) n : 𝓞 I.E) : I.E) = (n : I.E) := by
  rw [algebraMap_int_eq, eq_intCast]
  exact map_intCast (algebraMap (𝓞 I.E) I.E) n

theorem inv_mem {p : ℕ} (hp : p.Prime) {n : ℤ} (hn : ¬ (p : ℤ) ∣ n) : ((n : I.E))⁻¹ ∈ Ap I p := by
  have hn0 : n ≠ 0 := by
    rintro rfl
    exact hn (dvd_zero _)
  have hE : (n : I.E) ≠ 0 := Int.cast_ne_zero.mpr hn0
  have hcop : Nat.Coprime n.natAbs p := by
    rw [Nat.coprime_comm, Nat.Prime.coprime_iff_not_dvd hp]
    intro h
    exact hn (Int.natCast_dvd.mpr h)
  refine (mem_Ap_lemma I p _).mpr ⟨n.natAbs, hcop, ?_⟩
  rcases Int.natAbs_eq n with h | h
  · have h' : (n.natAbs : ℤ) = n := by linarith
    have e : (n.natAbs : I.E) = (n : I.E) := by rw [← Int.cast_natCast, h']
    exact ⟨1, by rw [e, mul_inv_cancel₀ hE]; simp⟩
  · have h' : (n.natAbs : ℤ) = -n := by linarith
    have e : (n.natAbs : I.E) = -(n : I.E) := by rw [← Int.cast_natCast, h', Int.cast_neg]
    exact ⟨-1, by rw [e, neg_mul, mul_inv_cancel₀ hE]; simp⟩

theorem isLoc {p : ℕ} [hpf : Fact p.Prime] :
    IsLocalization (Algebra.algebraMapSubmonoid (𝓞 I.E) (Pz p).primeCompl) (Ap I p) := by
  constructor
  constructor
  · rintro ⟨y, hy⟩
    obtain ⟨n, hn, rfl⟩ := hy
    have hnd : ¬ (p : ℤ) ∣ n := fun h => hn (Ideal.mem_span_singleton.mpr h)
    have hn0 : n ≠ 0 := by
      rintro rfl
      exact hnd (dvd_zero _)
    refine isUnit_iff_exists_inv.mpr ⟨⟨((n : I.E))⁻¹, inv_mem I hpf.out hnd⟩, ?_⟩
    apply Subtype.ext
    show ((algebraMap ℤ (𝓞 I.E) n : 𝓞 I.E) : I.E) * (n : I.E)⁻¹ = 1
    rw [coe_algebraMap_int_ringOfIntegers]
    exact mul_inv_cancel₀ (Int.cast_ne_zero.mpr hn0)
  · intro z
    obtain ⟨s, hs, a, ha⟩ := (mem_Ap_lemma I p z).mp z.2
    refine ⟨(a, ⟨_, Algebra.mem_algebraMapSubmonoid_of_mem
      (⟨(s : ℤ), natCast_not_mem hpf.out hs⟩ : (Pz p).primeCompl)⟩), ?_⟩
    apply Subtype.ext
    show (z : I.E) * ((algebraMap ℤ (𝓞 I.E) (s : ℤ) : 𝓞 I.E) : I.E) = (a : I.E)
    rw [coe_algebraMap_int_ringOfIntegers]
    push_cast
    linear_combination ha
  · intro x y h
    refine ⟨1, ?_⟩
    have h2 : (x : I.E) = y := by
      have h3 := congrArg (fun z : Ap I p => (z : I.E)) h
      exact h3
    have hxy : x = y := NumberField.RingOfIntegers.ext h2
    subst hxy
    rfl

private theorem algebraMapSubmonoid_primeCompl_le_nonZeroDivisors (p : ℕ) [Fact p.Prime] :
    Algebra.algebraMapSubmonoid (𝓞 I.E) (Pz p).primeCompl ≤ nonZeroDivisors (𝓞 I.E) := by
  rintro _ ⟨n, hn, rfl⟩
  apply mem_nonZeroDivisors_of_ne_zero
  intro h
  have hn0 : n ≠ 0 := by
    rintro rfl
    exact hn (Pz p).zero_mem
  apply hn0
  have h2 := congrArg ((↑) : 𝓞 I.E → I.E) h
  rw [coe_algebraMap_int_ringOfIntegers] at h2
  simpa using h2

theorem isDedekind {p : ℕ} [Fact p.Prime] : IsDedekindDomain (Ap I p) := by
  haveI := isLoc I (p := p)
  exact IsLocalization.isDedekindDomain (𝓞 I.E) (algebraMapSubmonoid_primeCompl_le_nonZeroDivisors I p) (Ap I p)

theorem principal_ideal_ring_at_prime : ApPID := by
  intro I p hp
  haveI : Fact p.Prime := ⟨hp⟩
  haveI := isLoc I (p := p)
  haveI := isDedekind I (p := p)
  exact IsDedekindDomain.isPrincipalIdealRing_localization_over_prime (𝓞 I.E) (Pz p) (pz_ne_bot hp)

end PI.ScRefExists.ApP

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PrincipalIdealRingAtPrime =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.MemLAOfNsmul =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.MemLAOfNsmul", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PPAssemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.StarMemAp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.ThetaA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S
open PI.ScRefExists.Sk

namespace PI.ScRefExists.WF

variable {I : Formalism.MainNotions.S.AutInst} {p : ℕ}

theorem ap_smul (a : Ap I p) (v : Fin I.n → I.E) : a • v = (a : I.E) • v := rfl

theorem osmul (o : 𝓞 I.E) (v : Fin I.n → I.E) : o • v = (o : I.E) • v :=
  (algebraMap_smul I.E o v).symm

theorem hG_L {x y : Fin I.n → I.E} (hx : x ∈ I.L) (hy : y ∈ I.L) :
    hG I x y ∈ (algebraMap (𝓞 I.E) I.E).range := by
  unfold hG
  exact (I.L_dual y).mp hy x hx

theorem natsmul_mem_L {s : ℕ} {x : Fin I.n → I.E} (hx : x ∈ I.L) : (s : I.E) • x ∈ I.L := by
  have h1 : ((s : 𝓞 I.E) : I.E) = (s : I.E) := by simp
  rw [← h1, ← osmul]
  exact I.L.smul_mem _ hx

theorem mem_LA_iff (hp : p.Prime) {x : Fin I.n → I.E} :
    x ∈ LA I p ↔ ∃ s : ℕ, Nat.Coprime s p ∧ (s : I.E) • x ∈ I.L := by
  constructor
  · intro hx
    induction hx using Submodule.span_induction with
    | mem x hx => exact ⟨1, Nat.coprime_one_left p, by simpa using hx⟩
    | zero => exact ⟨1, Nat.coprime_one_left p, by simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨s, hs, hsx⟩ := hx
      obtain ⟨t, ht, hty⟩ := hy
      refine ⟨s * t, Nat.Coprime.mul_left hs ht, ?_⟩
      have : ((s * t : ℕ) : I.E) • (x + y) = (t : I.E) • ((s : I.E) • x) + (s : I.E) • ((t : I.E) • y) := by
        push_cast; module
      rw [this]
      exact I.L.add_mem (natsmul_mem_L hsx) (natsmul_mem_L hty)
    | smul a x _ hx =>
      obtain ⟨s, hs, hsx⟩ := hx
      obtain ⟨s0, hs0, a0, ha0⟩ := a.2
      refine ⟨s0 * s, Nat.Coprime.mul_left hs0 hs, ?_⟩
      have : ((s0 * s : ℕ) : I.E) • (a • x) = a0 • ((s : I.E) • x) := by
        rw [ap_smul, osmul, ← ha0]; push_cast; module
      rw [this]
      exact I.L.smul_mem _ hsx
  · rintro ⟨s, hs, hsx⟩
    have hsA : ((s : I.E))⁻¹ ∈ Ap I p := inv_mem_Ap hp hs
    have hs0 : (s : I.E) ≠ 0 := by
      have : s ≠ 0 := by
        rintro rfl
        exact hp.one_lt.ne' (Nat.coprime_zero_left p |>.mp hs)
      exact_mod_cast this
    have : x = (⟨_, hsA⟩ : Ap I p) • ((s : I.E) • x) := by
      rw [ap_smul, smul_smul, inv_mul_cancel₀ hs0, one_smul]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span hsx)

theorem L_le_LA {x : Fin I.n → I.E} (hx : x ∈ I.L) : x ∈ LA I p := Submodule.subset_span hx

theorem hG_LA (hp : p.Prime) {x y : Fin I.n → I.E} (hx : x ∈ LA I p) (hy : y ∈ LA I p) :
    hG I x y ∈ Ap I p := by
  obtain ⟨s, hs, hsx⟩ := (mem_LA_iff hp).1 hx
  obtain ⟨t, ht, hty⟩ := (mem_LA_iff hp).1 hy
  obtain ⟨o, ho⟩ := hG_L hsx hty
  refine ⟨s * t, Nat.Coprime.mul_left hs ht, o, ?_⟩
  rw [hG_smul_left, hG_smul_right, star_natCast] at ho
  rw [show ((o : 𝓞 I.E) : I.E) = algebraMap (𝓞 I.E) I.E o from rfl, ho]; push_cast; ring

theorem dual_LA (hp : p.Prime) {x : Fin I.n → I.E} (hx : ∀ y ∈ I.L, hG I y x ∈ Ap I p) : x ∈ LA I p := by
  classical
  obtain ⟨T, hT⟩ := I.L_fg
  have hden : ∀ t ∈ T, ∃ s : ℕ, Nat.Coprime s p ∧ ∃ a : 𝓞 I.E, (s : I.E) * hG I t x = (a : I.E) := by
    intro t ht
    exact hx t (hT ▸ Submodule.subset_span ht)
  choose! s hs a ha using hden
  let S : ℕ := ∏ t ∈ T, s t
  have hS : Nat.Coprime S p := Nat.Coprime.prod_left fun t ht => hs t ht
  have key : ∀ y ∈ I.L, hG I y ((S : I.E) • x) ∈ (algebraMap (𝓞 I.E) I.E).range := by
    intro y hy
    rw [← hT] at hy
    induction hy using Submodule.span_induction with
    | mem t ht =>
      have hdvd : s t ∣ S := Finset.dvd_prod_of_mem s ht
      obtain ⟨c, hc⟩ := hdvd
      refine ⟨(c : 𝓞 I.E) * a t, ?_⟩
      rw [hG_smul_right, hc]; push_cast
      rw [mul_comm ((s t : ℕ) : I.E), mul_assoc, ha t ht]
    | zero => exact ⟨0, by simp [hG_zero_left]⟩
    | add y z _ _ hy hz =>
      obtain ⟨o1, h1⟩ := hy; obtain ⟨o2, h2⟩ := hz
      exact ⟨o1 + o2, by rw [hG_add_left, ← h1, ← h2]; simp⟩
    | smul o y _ hy =>
      obtain ⟨o1, h1⟩ := hy
      refine ⟨PI.ScRefExists.TH.sg I o * o1, ?_⟩
      rw [osmul, hG_smul_left, ← h1]; simp [PI.ScRefExists.TH.sg_coe]
  have hSx : (S : I.E) • x ∈ I.L := (I.L_dual _).2 key
  exact (mem_LA_iff hp).2 ⟨S, hS, hSx⟩

theorem mem_LA_of_nsmul (hp : p.Prime) {M : ℕ} (hM : Nat.Coprime M p) {x : Fin I.n → I.E}
    (hx : M • x ∈ I.L) : x ∈ LA I p := by
  refine (mem_LA_iff hp).2 ⟨M, hM, ?_⟩
  rwa [← Nat.cast_smul_eq_nsmul I.E] at hx

def proj {r : ℕ} (e f : Fin r → Fin I.n → I.E) (y : Fin I.n → I.E) : Fin I.n → I.E :=
  ∑ a, (hG I (f a) y • e a + hG I (e a) y • f a)

theorem hG_e_proj {r : ℕ} {e f : Fin r → Fin I.n → I.E} (he : ∀ a b, hG I (e a) (e b) = 0)
    (hef : ∀ a b, hG I (e a) (f b) = if a = b then 1 else 0) (b : Fin r) (y : Fin I.n → I.E) :
    hG I (e b) (proj e f y) = hG I (e b) y := by
  have hr : ∀ (x : Fin I.n → I.E) (c : Fin r → I.E) (w : Fin r → Fin I.n → I.E),
      hG I x (∑ a, c a • w a) = ∑ a, c a * hG I x (w a) := by
    intro x c w
    unfold hG Formalism.UG.hform
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun a _ => ?_
    ring
  have hadd2 : ∀ x u w : Fin I.n → I.E, hG I x (u + w) = hG I x u + hG I x w := by
    intro x u w
    unfold hG Formalism.UG.hform
    simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib]
  unfold proj
  rw [Finset.sum_add_distrib, hadd2, hr, hr]
  simp only [he, hef]
  simp

theorem hG_f_proj {r : ℕ} {e f : Fin r → Fin I.n → I.E} (hf : ∀ a b, hG I (f a) (f b) = 0)
    (hef : ∀ a b, hG I (e a) (f b) = if a = b then 1 else 0) (b : Fin r) (y : Fin I.n → I.E) :
    hG I (f b) (proj e f y) = hG I (f b) y := by
  have hr : ∀ (x : Fin I.n → I.E) (c : Fin r → I.E) (w : Fin r → Fin I.n → I.E),
      hG I x (∑ a, c a • w a) = ∑ a, c a * hG I x (w a) := by
    intro x c w
    unfold hG Formalism.UG.hform
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun a _ => ?_
    ring
  have hadd2 : ∀ x u w : Fin I.n → I.E, hG I x (u + w) = hG I x u + hG I x w := by
    intro x u w
    unfold hG Formalism.UG.hform
    simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib]
  have hJ : ∀ i j, starRingEnd I.E (I.J i j) = I.J j i := by
    intro i j
    have := congrFun (congrFun I.J_herm j) i
    simpa [Formalism.UG.cT] using this
  have hsym : ∀ x y, hG I y x = starRingEnd I.E (hG I x y) := by
    intro x y
    unfold hG Formalism.UG.hform

    simp only [map_sum, map_mul, starRingEnd_self_apply, hJ]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => ?_
    ring
  have h1 : ∀ a, hG I (f b) (e a) = if a = b then 1 else 0 := by
    intro a
    rw [hsym (e a) (f b), hef]
    split_ifs <;> simp
  unfold proj
  rw [Finset.sum_add_distrib, hadd2, hr, hr]
  simp only [hf, h1]
  simp

theorem proj_mem (hp : p.Prime) {r : ℕ} {e f : Fin r → Fin I.n → I.E}
    (heA : ∀ a, e a ∈ LA I p) (hfA : ∀ a, f a ∈ LA I p) {y : Fin I.n → I.E} (hy : y ∈ LA I p) :
    proj e f y ∈ LA I p := by
  unfold proj
  refine Submodule.sum_mem _ fun a _ => Submodule.add_mem _ ?_ ?_
  · have h1 := Submodule.smul_mem (LA I p) (⟨hG I (f a) y, hG_LA hp (hfA a) hy⟩ : Ap I p) (heA a)
    rwa [ap_smul] at h1
  · have h1 := Submodule.smul_mem (LA I p) (⟨hG I (e a) y, hG_LA hp (heA a) hy⟩ : Ap I p) (hfA a)
    rwa [ap_smul] at h1

theorem proj_span {r : ℕ} (e f : Fin r → Fin I.n → I.E) (hp : p.Prime)
    (heA : ∀ a, e a ∈ LA I p) (hfA : ∀ a, f a ∈ LA I p) {y : Fin I.n → I.E} (hy : y ∈ LA I p)
    (S : Set (Fin I.n → I.E)) (hS : Set.range e ∪ Set.range f ⊆ S) :
    proj e f y ∈ Submodule.span (Ap I p) S := by
  unfold proj
  refine Submodule.sum_mem _ fun a _ => Submodule.add_mem _ ?_ ?_
  · have h1 := Submodule.smul_mem (Submodule.span (Ap I p) S)
      (⟨hG I (f a) y, hG_LA hp (hfA a) hy⟩ : Ap I p)
      (Submodule.subset_span (hS (Or.inl ⟨a, rfl⟩)))
    rwa [ap_smul] at h1
  · have h1 := Submodule.smul_mem (Submodule.span (Ap I p) S)
      (⟨hG I (e a) y, hG_LA hp (heA a) hy⟩ : Ap I p)
      (Submodule.subset_span (hS (Or.inr ⟨a, rfl⟩)))
    rwa [ap_smul] at h1

end PI.ScRefExists.WF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.MemLAOfNsmul =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WFrameOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WFrameOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WBasis\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.MemLAOfNsmul\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.StarMemAp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S
open PI.ScRefExists.Sk

namespace PI.ScRefExists.WF

variable {I : Formalism.MainNotions.S.AutInst} {p : ℕ}

section Frame

variable {r k : ℕ} {e f : Fin r → Fin I.n → I.E} {w : Fin (k + 1) → Fin I.n → I.E}

def fam (e f : Fin r → Fin I.n → I.E) (w : Fin (k + 1) → Fin I.n → I.E) :
    Fin r ⊕ (Fin r ⊕ Fin (k + 1)) → Fin I.n → I.E :=
  Sum.elim e (Sum.elim f w)

theorem fam_li (he : ∀ a b, hG I (e a) (e b) = 0) (hf : ∀ a b, hG I (f a) (f b) = 0)
    (hef : ∀ a b, hG I (e a) (f b) = if a = b then 1 else 0)
    (hw : ∀ i a, hG I (e a) (w i) = 0 ∧ hG I (f a) (w i) = 0) (hli : LinearIndependent I.E w) :
    LinearIndependent I.E (fam e f w) := by
  rw [Fintype.linearIndependent_iff]
  intro g hg
  simp only [fam, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr] at hg
  have hfe : ∀ a b, hG I (f a) (e b) = if a = b then 1 else 0 := by
    intro a b
    rw [hG_symm I (e b) (f a), hef b a]
    by_cases h : a = b
    · subst h; simp
    · simp [h, Ne.symm h]
  have hb : ∀ a, g (Sum.inr (Sum.inl a)) = 0 := by
    intro a
    have hw1 : ∀ i, hG I (e a) (w i) = 0 := fun i => (hw i a).1
    have h1 := congrArg (hG I (e a)) hg
    simpa [hG_add_right, hG_sum_right, hG_smul_right, he, hef, hw1, hG_zero_right] using h1
  have ha : ∀ a, g (Sum.inl a) = 0 := by
    intro a
    have hw2 : ∀ i, hG I (f a) (w i) = 0 := fun i => (hw i a).2
    have h1 := congrArg (hG I (f a)) hg
    simpa [hG_add_right, hG_sum_right, hG_smul_right, hf, hfe, hw2, hG_zero_right] using h1
  simp only [ha, hb, zero_smul, Finset.sum_const_zero, zero_add] at hg
  have hc := Fintype.linearIndependent_iff.1 hli (fun i => g (Sum.inr (Sum.inr i))) hg
  intro i
  rcases i with a | a | i
  · exact ha a
  · exact hb a
  · exact hc i

theorem fam_sp (hp : p.Prime) (he : ∀ a b, hG I (e a) (e b) = 0) (hf : ∀ a b, hG I (f a) (f b) = 0)
    (hef : ∀ a b, hG I (e a) (f b) = if a = b then 1 else 0)
    (heA : ∀ a, e a ∈ LA I p) (hfA : ∀ a, f a ∈ LA I p)
    (hW : ∀ x ∈ LA I p, (∀ a, hG I (e a) x = 0 ∧ hG I (f a) x = 0) →
        x ∈ Submodule.span (Ap I p) (Set.range w)) :
    ⊤ ≤ Submodule.span I.E (Set.range (fam e f w)) := by
  rw [← I.L_span, Submodule.span_le]
  intro y hy
  have hyA : y ∈ LA I p := L_le_LA hy
  have hz : y - proj e f y ∈ Submodule.span (Ap I p) (Set.range w) := by
    apply hW _ (sub_mem hyA (proj_mem hp heA hfA hyA))
    intro a
    rw [hG_sub_right, hG_sub_right, hG_e_proj he hef, hG_f_proj hf hef, sub_self, sub_self]
    exact ⟨rfl, rfl⟩
  have key : ∀ z ∈ Submodule.span (Ap I p) (Set.range w),
      z ∈ Submodule.span I.E (Set.range (fam e f w)) := by
    intro z hz
    induction hz using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨i, rfl⟩ := hx
      exact Submodule.subset_span ⟨Sum.inr (Sum.inr i), rfl⟩
    | zero => exact zero_mem _
    | add x y _ _ hx hy => exact add_mem hx hy
    | smul c x _ hx => exact Submodule.smul_mem _ (c : I.E) hx
  have hp' : proj e f y ∈ Submodule.span I.E (Set.range (fam e f w)) := by
    unfold proj
    refine Submodule.sum_mem _ fun a _ => add_mem ?_ ?_
    · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨Sum.inl a, rfl⟩)
    · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨Sum.inr (Sum.inl a), rfl⟩)
  have := add_mem hp' (key _ hz)
  simpa using this

end Frame

theorem wFrame_of (hPID : ApPID) (hWB : WBasis) : WFrame := by
  intro I p r k e f M hp hn he hf hef hM heM
  obtain ⟨w, hw1, hwli, hwsp⟩ := hWB I p r k e f M hp (hPID I p hp) hn he hf hef hM heM
  have heA : ∀ a, e a ∈ LA I p := fun a => mem_LA_of_nsmul hp hM (heM a).1
  have hfA : ∀ a, f a ∈ LA I p := fun a => mem_LA_of_nsmul hp hM (heM a).2
  have hwA : ∀ i, w i ∈ LA I p := fun i => (hw1 i).1
  have hwo : ∀ i a, hG I (e a) (w i) = 0 ∧ hG I (f a) (w i) = 0 := fun i a => (hw1 i).2 a
  have hli := fam_li he hf hef hwo hwli
  have hsp := fam_sp hp he hf hef heA hfA hwsp
  have hT0 : ∀ u, (∀ j, hG I (fam e f w j) u = 0) → u = 0 := by
    intro u hu
    apply hG_nondeg
    intro x
    have hx : x ∈ Submodule.span I.E (Set.range (fam e f w)) := hsp Submodule.mem_top
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨j, rfl⟩ := hx
      exact hu j
    | zero => exact hG_zero_left I u
    | add x y _ _ hx hy => rw [hG_add_left, hx, hy, add_zero]
    | smul c x _ hx => rw [hG_smul_left, hx, mul_zero]
  let T : (Fin I.n → I.E) →ₗ[I.E] (Fin r ⊕ (Fin r ⊕ Fin (k + 1)) → I.E) :=
    { toFun := fun d j => hG I (fam e f w j) d
      map_add' := fun x y => by
        ext j
        simp [hG_add_right]
      map_smul' := fun c x => by
        ext j
        simp [hG_smul_right] }
  have hTi : Function.Injective T := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro u hu
    exact hT0 u (fun j => congrFun hu j)
  have hdim : Module.finrank I.E (Fin I.n → I.E) =
      Module.finrank I.E (Fin r ⊕ (Fin r ⊕ Fin (k + 1)) → I.E) := by
    rw [Module.finrank_fin_fun, Module.finrank_fintype_fun_eq_card, Fintype.card_sum,
      Fintype.card_sum, Fintype.card_fin, Fintype.card_fin, hn]
    ring
  have hTs : Function.Surjective T :=
    (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hdim).1 hTi
  have hex : ∀ i : Fin (k + 1), ∃ d : Fin I.n → I.E, ∀ j,
      hG I (fam e f w j) d = if j = Sum.inr (Sum.inr i) then 1 else 0 := by
    intro i
    obtain ⟨d, hd⟩ := hTs (fun j => if j = Sum.inr (Sum.inr i) then 1 else 0)
    exact ⟨d, fun j => congrFun hd j⟩
  choose wd hwd using hex
  have hewd : ∀ a i, hG I (e a) (wd i) = 0 := fun a i => by
    simpa [fam] using hwd i (Sum.inl a)
  have hfwd : ∀ a i, hG I (f a) (wd i) = 0 := fun a i => by
    simpa [fam] using hwd i (Sum.inr (Sum.inl a))
  have hwwd : ∀ j i, hG I (w j) (wd i) = if j = i then 1 else 0 := fun j i => by
    simpa [fam] using hwd i (Sum.inr (Sum.inr j))
  have hdual : ∀ i j, hG I (wd i) (w j) = if i = j then 1 else 0 := by
    intro i j
    rw [hG_symm I (w j) (wd i), hwwd j i]
    by_cases h : i = j
    · subst h; simp
    · simp [h, Ne.symm h]
  have hyS : ∀ y ∈ I.L,
      y ∈ Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range w) := by
    intro y hy
    have hyA : y ∈ LA I p := L_le_LA hy
    have hz : y - proj e f y ∈ Submodule.span (Ap I p) (Set.range w) := by
      apply hwsp _ (sub_mem hyA (proj_mem hp heA hfA hyA))
      intro a
      rw [hG_sub_right, hG_sub_right, hG_e_proj he hef, hG_f_proj hf hef, sub_self, sub_self]
      exact ⟨rfl, rfl⟩
    have h1 := proj_span e f hp heA hfA hyA (Set.range e ∪ Set.range f ∪ Set.range w)
      Set.subset_union_left
    have h2 : y - proj e f y ∈
        Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range w) :=
      Submodule.span_mono Set.subset_union_right hz
    have := add_mem h1 h2
    simpa using this
  have hwdAp : ∀ i, ∀ y ∈ Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range w),
      hG I (wd i) y ∈ Ap I p := by
    intro i y hy
    induction hy using Submodule.span_induction with
    | mem x hx =>
      rcases hx with (⟨a, rfl⟩ | ⟨a, rfl⟩) | ⟨j, rfl⟩
      · rw [hG_symm I (e a) (wd i), hewd a i, star_zero]
        exact zero_mem _
      · rw [hG_symm I (f a) (wd i), hfwd a i, star_zero]
        exact zero_mem _
      · rw [hdual i j]
        split_ifs
        · exact one_mem _
        · exact zero_mem _
    | zero => rw [hG_zero_right]; exact zero_mem _
    | add x y _ _ hx hy => rw [hG_add_right]; exact add_mem hx hy
    | smul c x _ hx =>
      show hG I (wd i) ((c : I.E) • x) ∈ Ap I p
      rw [hG_smul_right]
      exact mul_mem c.2 hx
  have hwdA : ∀ i, wd i ∈ LA I p := fun i => dual_LA hp fun y hy => by
    rw [hG_symm I (wd i) y]
    exact star_mem_Ap (hwdAp i y (hyS y hy))
  have hyS' : ∀ y ∈ I.L,
      y ∈ Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range wd) := by
    intro y hy
    have hyA : y ∈ LA I p := L_le_LA hy
    have hzA : y - proj e f y ∈ LA I p := sub_mem hyA (proj_mem hp heA hfA hyA)
    have hze : ∀ a, hG I (e a) (y - proj e f y) = 0 := fun a => by
      rw [hG_sub_right, hG_e_proj he hef, sub_self]
    have hzf : ∀ a, hG I (f a) (y - proj e f y) = 0 := fun a => by
      rw [hG_sub_right, hG_f_proj hf hef, sub_self]
    have hzeq : y - proj e f y = ∑ i, hG I (w i) (y - proj e f y) • wd i := by
      rw [← sub_eq_zero]
      apply hT0
      intro j
      rw [hG_sub_right, hG_sum_right]
      simp only [hG_smul_right]
      rcases j with a | a | j
      · simp [fam, hze a, hewd]
      · simp [fam, hzf a, hfwd]
      · simp [fam, hwwd]
    have hz' : y - proj e f y ∈ Submodule.span (Ap I p) (Set.range wd) := by
      rw [hzeq]
      refine Submodule.sum_mem _ fun i _ => ?_
      exact Submodule.smul_mem _ (⟨_, hG_LA hp (hwA i) hzA⟩ : Ap I p)
        (Submodule.subset_span ⟨i, rfl⟩)
    have h1 := proj_span e f hp heA hfA hyA (Set.range e ∪ Set.range f ∪ Set.range wd)
      Set.subset_union_left
    have h2 : y - proj e f y ∈
        Submodule.span (Ap I p) (Set.range e ∪ Set.range f ∪ Set.range wd) :=
      Submodule.span_mono Set.subset_union_right hz'
    have := add_mem h1 h2
    simpa using this
  exact ⟨w, wd, fun i => ⟨hwA i, hwdA i⟩,
    fun a i => ⟨(hwo i a).1, (hwo i a).2, hewd a i, hfwd a i⟩, hdual,
    fun y hy => ⟨hyS y hy, hyS' y hy⟩⟩

end PI.ScRefExists.WF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WFrameOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGZeroRight =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGZeroRight", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S
open PI.ScRefExists.Sk

namespace PI.ScRefExists.WB

variable (I : Formalism.MainNotions.S.AutInst)

theorem hG_def (x y : Fin I.n → I.E) : hG I x y = ∑ i, ∑ j, star (x i) * I.J i j * y j := rfl

theorem hG_add_right (x y z : Fin I.n → I.E) : hG I x (y + z) = hG I x y + hG I x z := by
  simp only [hG_def, Pi.add_apply, mul_add, Finset.sum_add_distrib]

theorem hG_smul_right (c : I.E) (x y : Fin I.n → I.E) : hG I x (c • y) = c * hG I x y := by
  simp only [hG_def, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem hG_zero_right (x : Fin I.n → I.E) : hG I x 0 = 0 := by simp [hG_def]

theorem hG_sum_right {ι : Type*} (s : Finset ι) (x : Fin I.n → I.E) (y : ι → Fin I.n → I.E) :
    hG I x (∑ t ∈ s, y t) = ∑ t ∈ s, hG I x (y t) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [hG_zero_right]
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, hG_add_right, ih]

theorem J_entry (i j : Fin I.n) : star (I.J j i) = I.J i j := by
  have h := congrFun (congrFun I.J_herm i) j
  simp only [Formalism.UG.cT, Matrix.transpose_apply, Matrix.map_apply, starRingEnd_apply] at h
  exact h

theorem hG_symm (x y : Fin I.n → I.E) : hG I y x = star (hG I x y) := by
  simp only [hG_def, star_sum, star_mul', star_star]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [J_entry]
  ring

variable {I}

end PI.ScRefExists.WB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGZeroRight =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WeilBasisExistence =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WeilBasisExistence", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WBasis\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.HGZeroRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.MainNotions.S
open PI.ScRefExists.Sk

namespace PI.ScRefExists.WB

variable (I : Formalism.MainNotions.S.AutInst)

theorem smul_Ap {p : ℕ} (c : Ap I p) (x : Fin I.n → I.E) : c • x = (c : I.E) • x := rfl

def WA (p r : ℕ) (e f : Fin r → Fin I.n → I.E) : Submodule (Ap I p) (Fin I.n → I.E) :=
  LA I p ⊓
  { carrier := {x | ∀ a, hG I (e a) x = 0 ∧ hG I (f a) x = 0}
    add_mem' := by
      intro x y hx hy
      simp only [Set.mem_setOf_eq] at hx hy ⊢
      intro a
      exact ⟨by rw [hG_add_right, (hx a).1, (hy a).1, add_zero],
        by rw [hG_add_right, (hx a).2, (hy a).2, add_zero]⟩
    zero_mem' := by
      simp only [Set.mem_setOf_eq]
      intro a
      exact ⟨hG_zero_right I _, hG_zero_right I _⟩
    smul_mem' := by
      intro c x hx
      simp only [Set.mem_setOf_eq] at hx ⊢
      intro a
      exact ⟨by rw [smul_Ap, hG_smul_right, (hx a).1, mul_zero],
        by rw [smul_Ap, hG_smul_right, (hx a).2, mul_zero]⟩ }

theorem mem_WA {p r : ℕ} {e f : Fin r → Fin I.n → I.E} {x : Fin I.n → I.E} :
    x ∈ WA I p r e f ↔ x ∈ LA I p ∧ ∀ a, hG I (e a) x = 0 ∧ hG I (f a) x = 0 := Iff.rfl

theorem LA_fg (p : ℕ) : (LA I p).FG := by
  obtain ⟨s, hs⟩ := I.L_fg
  refine ⟨s, ?_⟩
  unfold LA
  rw [← hs, Submodule.span_span_of_tower]

theorem span_Ap_le {p : ℕ} (s : Set (Fin I.n → I.E)) {x : Fin I.n → I.E}
    (hx : x ∈ Submodule.span (Ap I p) s) : x ∈ Submodule.span I.E s := by
  induction hx using Submodule.span_induction with
  | mem y hy => exact Submodule.subset_span hy
  | zero => exact zero_mem _
  | add y z _ _ hy hz => exact add_mem hy hz
  | smul c y _ hy => rw [smul_Ap]; exact Submodule.smul_mem _ _ hy

theorem WA_finite {p r : ℕ} (e f : Fin r → Fin I.n → I.E) [IsPrincipalIdealRing (Ap I p)] :
    Module.Finite (Ap I p) (WA I p r e f) := by
  have hle : WA I p r e f ≤ LA I p := fun x hx => (mem_WA I).mp hx |>.1
  haveI : IsNoetherian (Ap I p) (LA I p) := isNoetherian_of_fg_of_noetherian _ (LA_fg I p)
  have hfg : ((WA I p r e f).comap (LA I p).subtype).FG := IsNoetherian.noetherian _
  have hmap : ((WA I p r e f).comap (LA I p).subtype).map (LA I p).subtype = WA I p r e f := by
    rw [Submodule.map_comap_subtype, inf_eq_right.mpr hle]
  rw [Module.Finite.iff_fg, ← hmap]
  exact hfg.map _

theorem weil_basis_existence : WBasis := by
  intro I p r k e f M hp hPID hn hee hff hef hM hMe
  haveI := hPID
  have hfe : ∀ a b, hG I (f a) (e b) = if a = b then 1 else 0 := by
    intro a b
    rw [hG_symm, hef]
    by_cases h : b = a
    · subst h; simp
    · rw [if_neg h, if_neg (Ne.symm h), star_zero]
  let φ : (Fin I.n → I.E) →ₗ[I.E] (Fin r → I.E) × (Fin r → I.E) :=
    { toFun := fun x => (fun a => hG I (e a) x, fun a => hG I (f a) x)
      map_add' := fun x y => by
        refine Prod.ext (funext fun a => ?_) (funext fun a => ?_) <;> simp [hG_add_right]
      map_smul' := fun c x => by
        refine Prod.ext (funext fun a => ?_) (funext fun a => ?_) <;> simp [hG_smul_right] }
  have hφ : ∀ x, x ∈ LinearMap.ker φ ↔ ∀ a, hG I (e a) x = 0 ∧ hG I (f a) x = 0 := by
    intro x
    simp only [LinearMap.mem_ker, φ, LinearMap.coe_mk, AddHom.coe_mk, Prod.ext_iff, funext_iff,
      Prod.fst_zero, Prod.snd_zero, Pi.zero_apply]
    exact ⟨fun h a => ⟨h.1 a, h.2 a⟩, fun h => ⟨fun a => (h a).1, fun a => (h a).2⟩⟩
  have hsurj : Function.Surjective φ := by
    rintro ⟨s, t⟩
    refine ⟨∑ b, (s b • f b + t b • e b), ?_⟩
    refine Prod.ext (funext fun a => ?_) (funext fun a => ?_)
    · simp [φ, hG_add_right, hG_smul_right, hef, hee, Prod.fst_sum, Finset.sum_apply]
    · simp [φ, hG_add_right, hG_smul_right, hfe, hff, Prod.snd_sum, Finset.sum_apply]
  have hker : Module.finrank I.E (LinearMap.ker φ) = k + 1 := by
    have h1 := LinearMap.finrank_range_add_finrank_ker φ
    rw [LinearMap.range_eq_top.2 hsurj, finrank_top, Module.finrank_prod, Module.finrank_fin_fun,
      Module.finrank_fin_fun] at h1
    omega
  have hNZ : NoZeroSMulDivisors (Ap I p) (WA I p r e f) := by
    refine ⟨fun {c x} h => ?_⟩
    have h2 : (c : I.E) • (x : Fin I.n → I.E) = 0 := by
      have := congrArg Subtype.val h
      simpa [smul_Ap] using this
    rcases smul_eq_zero.1 h2 with h3 | h3
    · left; exact Subtype.ext h3
    · right; exact Subtype.ext h3
  haveI := hNZ
  haveI := WA_finite I (p := p) e f
  haveI : Module.Free (Ap I p) (WA I p r e f) := Module.free_of_finite_type_torsion_free'
  have hLI : ∀ {ι : Type} [Fintype ι] (bb : Module.Basis ι (Ap I p) (WA I p r e f)),
      LinearIndependent I.E (fun j => ((bb j : WA I p r e f) : Fin I.n → I.E)) := by
    intro ι _ bb
    rw [Fintype.linearIndependent_iff]
    intro g hg j
    obtain ⟨dd, hdd⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors (𝓞 I.E)) Finset.univ g
    choose a ha using fun i => hdd i (Finset.mem_univ i)
    have hsum : ∑ i, (⟨algebraMap (𝓞 I.E) I.E (a i), (Ap I p).algebraMap_mem (a i)⟩ : Ap I p) • bb i = 0 := by
      apply Subtype.ext
      simp only [Submodule.coe_sum, Submodule.coe_smul, smul_Ap, ZeroMemClass.coe_zero]
      have : ∑ i, ((dd : 𝓞 I.E) : I.E) • (g i • ((bb i : WA I p r e f) : Fin I.n → I.E)) = 0 := by
        rw [← Finset.smul_sum, hg, smul_zero]
      rw [← this]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [smul_smul, ha i, Algebra.smul_def]
      rfl
    have hz := (Fintype.linearIndependent_iff.1 bb.linearIndependent) _ hsum j
    have h0 : algebraMap (𝓞 I.E) I.E (a j) = 0 := congrArg Subtype.val hz
    rw [ha j, Algebra.smul_def] at h0
    rcases mul_eq_zero.1 h0 with h1 | h1
    · exfalso
      have hd0 : (dd : 𝓞 I.E) ≠ 0 := nonZeroDivisors.coe_ne_zero dd
      exact hd0 (by simpa using h1)
    · exact h1
  have hL_le : ∀ y ∈ I.L, y ∈ LA I p := fun y hy => Submodule.subset_span hy
  have hclear : ∀ x : Fin I.n → I.E, ∃ d : 𝓞 I.E, d ≠ 0 ∧ ((d : I.E) • x) ∈ I.L := by
    intro x
    obtain ⟨s, hs⟩ := I.L_fg
    have hx : x ∈ Submodule.span I.E (s : Set (Fin I.n → I.E)) := by
      have h1 : Submodule.span I.E (s : Set (Fin I.n → I.E)) = ⊤ := by
        rw [← I.L_span, ← hs, Submodule.span_span_of_tower]
      rw [h1]; exact Submodule.mem_top
    obtain ⟨c, hc⟩ := (Submodule.mem_span_finset).1 hx
    obtain ⟨dd, hdd⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors (𝓞 I.E)) s c
    choose a ha using hdd
    refine ⟨dd, nonZeroDivisors.coe_ne_zero dd, ?_⟩
    rw [← hc.2, Finset.smul_sum]
    refine Submodule.sum_mem _ fun y hy => ?_
    rw [smul_smul]
    have h2 : ((dd : 𝓞 I.E) : I.E) * c y = algebraMap (𝓞 I.E) I.E (a y hy) := by
      rw [ha y hy, Algebra.smul_def]
    rw [h2, algebraMap_smul]
    exact I.L.smul_mem _ (hs ▸ Submodule.subset_span hy)
  let b := Module.finBasis (Ap I p) (WA I p r e f)
  have hspan : Submodule.span I.E (Set.range fun j => ((b j : WA I p r e f) : Fin I.n → I.E)) =
      LinearMap.ker φ := by
    apply le_antisymm
    · rw [Submodule.span_le]
      rintro _ ⟨j, rfl⟩
      exact (hφ _).2 ((mem_WA I).mp (b j).2).2
    · intro x hx
      obtain ⟨d, hd, hdx⟩ := hclear x
      have hWA : (d : I.E) • x ∈ WA I p r e f := by
        refine (mem_WA I).mpr ⟨hL_le _ hdx, fun a => ?_⟩
        have := ((hφ x).1 hx) a
        rw [hG_smul_right, hG_smul_right, this.1, this.2, mul_zero]
        exact ⟨rfl, rfl⟩
      have h1 : ((d : I.E) • x) ∈ Submodule.span (Ap I p)
          (Set.range fun j => ((b j : WA I p r e f) : Fin I.n → I.E)) := by
        have hm := b.mem_span (⟨(d : I.E) • x, hWA⟩ : WA I p r e f)
        have := Submodule.apply_mem_span_image_of_mem_span (WA I p r e f).subtype hm
        rwa [← Set.range_comp] at this
      have h2 := span_Ap_le I _ h1
      have hdE : (d : I.E) ≠ 0 := by simpa using hd
      have := Submodule.smul_mem _ ((d : I.E)⁻¹) h2
      rwa [smul_smul, inv_mul_cancel₀ hdE, one_smul] at this
  have hm : Module.finrank (Ap I p) (WA I p r e f) = k + 1 := by
    have h1 := (linearIndependent_iff_card_eq_finrank_span.1 (hLI b))
    rw [Fintype.card_fin] at h1
    unfold Set.finrank at h1
    rw [hspan, hker] at h1
    exact h1
  let b' := b.reindex (finCongr hm)
  refine ⟨fun i => ((b' i : WA I p r e f) : Fin I.n → I.E), fun i => (mem_WA I).mp (b' i).2, hLI b', ?_⟩
  intro x hxL hxo
  have hWA : x ∈ WA I p r e f := (mem_WA I).mpr ⟨hxL, hxo⟩
  have hm2 := b'.mem_span (⟨x, hWA⟩ : WA I p r e f)
  have := Submodule.apply_mem_span_image_of_mem_span (WA I p r e f).subtype hm2
  rwa [← Set.range_comp] at this

end PI.ScRefExists.WB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WeilBasisExistence =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScRefExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScRefExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScRefExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.PrincipalIdealRingAtPrime\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.TargetOfWframe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WFrameOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeReferenceFrame.WeilBasisExistence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem sc_reference_exists : PI.ScRefExists.Target :=
  PI.ScRefExists.Top.target_of_wframe
    (PI.ScRefExists.WF.wFrame_of PI.ScRefExists.ApP.principal_ideal_ring_at_prime PI.ScRefExists.WB.weil_basis_existence)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScRefExists =====

module

public import Development.EtaleCohomology.DivisorCycles.CycleCount
public import Mathlib.LinearAlgebra.Trace
public import Mathlib.Algebra.Field.Defs
public import Mathlib.Data.Matrix.Mul
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Mathlib.LinearAlgebra.Eigenspace.Basic
public import Mathlib.RingTheory.Artinian.Algebra
public import Development.EtaleCohomology.DivisorCycles.OpenCoset
public import Mathlib.RingTheory.PowerSeries.Exp
public import Mathlib.Algebra.MvPolynomial.Monad
public import Development.EtaleCohomology.DivisorCycles.ChainPf
public import Development.EtaleCohomology.DivisorCycles.DegPoly2
public import Development.EtaleCohomology.DivisorCycles.ExpVanPf
public import Development.EtaleCohomology.DivisorCycles.MatUnitsOf
public import Development.EtaleCohomology.DivisorCycles.SpecPtPf
public import Development.EtaleCohomology.DivisorCycles.TangentDegree
public import Development.EtaleCohomology.DivisorCycles.TangentFieldExtension
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.DivisorCycles.ConjugateIdempotents, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.PowEig, Development.EtaleCohomology.DivisorCycles.CycleCount2, Development.EtaleCohomology.DivisorCycles.GenSpecProof, Development.EtaleCohomology.DivisorCycles.SumMulSum, Development.EtaleCohomology.DivisorCycles.TangentIndexDvd, Development.EtaleCohomology.DivisorCycles.TorusPtPf, Development.EtaleCohomology.DivisorCycles.UnipotentPartTrivial, Development.EtaleCohomology.DivisorCycles.UnitFactorizationTheorem, Development.EtaleCohomology.DivisorCycles.ZclMulPf, Development.EtaleCohomology.DivisorCycles.FinKey

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.ConjugateIdempotents =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.ConjugateIdempotents", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.LinearAlgebra.Trace\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace LateralTheory.DivDb.ConjugateIdempotents
open LateralTheory.DivDb

variable {C : Type} [Field C] {N n : ℕ}

theorem trace_ne_zero [CharZero C] (P : Mat C N) (hP : IsIdempotentElem P) (h0 : P ≠ 0) :
    P.trace ≠ 0 := by
  intro ht
  apply h0
  have hi : IsIdempotentElem (Matrix.toLin' P) := by
    unfold IsIdempotentElem
    rw [Module.End.mul_eq_comp, ← Matrix.toLin'_mul, hP.eq]
  have h1 := LinearMap.IsIdempotentElem.eq_zero_of_trace_eq_zero hi (by
    rw [LinearMap.trace_eq_matrix_trace C (Pi.basisFun C (Fin N)), LinearMap.toMatrix_eq_toMatrix',
      LinearMap.toMatrix'_toLin']
    exact ht)
  exact Matrix.toLin'.injective (by rw [h1, map_zero])

def Iso (A : Subalgebra C (Mat C N)) (q p : Mat C N) : Prop :=
  ∃ α ∈ A, ∃ β ∈ A, α * β = q ∧ β * α = p ∧ q * α * p = α ∧ p * β * q = β

theorem right_p {P Q α : Mat C N} (hP : IsIdempotentElem P) (h : Q * α * P = α) : α * P = α := by
  rw [← h, mul_assoc, hP.eq]

theorem left_q {P Q α : Mat C N} (hQ : IsIdempotentElem Q) (h : Q * α * P = α) : Q * α = α := by
  rw [← h, ← mul_assoc, ← mul_assoc, hQ.eq]

theorem fin_step {P Q α β : Mat C N} (hP : IsIdempotentElem P) (hQ : IsIdempotentElem Q) (hQ0 : Q ≠ 0)
    (hα : Q * α * P = α) (hβα : β * α = P) (hd : ∃ d : C, α * β = d • Q) (hα0 : α ≠ 0) :
    α * β = Q := by
  obtain ⟨d, hd⟩ := hd
  have hαP := right_p hP hα
  have e : (α * β) * (α * β) = α * β := by
    rw [mul_assoc, ← mul_assoc β, hβα, ← mul_assoc, hαP]
  rw [hd, smul_mul_smul_comm, hQ.eq] at e
  have hdd : d * d = d := smul_left_injective C hQ0 e
  have hne : d ≠ 0 := by
    rintro rfl
    apply hα0
    rw [zero_smul] at hd
    rw [← hαP, ← hβα, ← mul_assoc, hd, zero_mul]
  have : d = 1 := by
    have := mul_left_cancel₀ hne (hdd.trans (mul_one d).symm)
    exact this
  rw [hd, this, one_smul]

theorem key (A : Subalgebra C (Mat C N)) (p q : Fin n → Mat C N) (hp : Sys p) (hpc : Corner A p)
    (hq : Sys q) (hqc : Corner A q) (hA : NoNil A) (j k : Fin n) (a : Mat C N) (ha : a ∈ A)
    (h : q j * a * p k ≠ 0) : Iso A (q j) (p k) := by
  have hpi := hp.1.idem k
  have hqi := hq.1.idem j
  have hαA : q j * a * p k ∈ A := A.mul_mem (A.mul_mem (hqc.1 j) ha) (hpc.1 k)
  have hα : q j * (q j * a * p k) * p k = q j * a * p k := by
    simp only [← mul_assoc, hqi.eq]; rw [mul_assoc _ (p k), hpi.eq]
  obtain ⟨a', ha', h'⟩ : ∃ a' ∈ A, p k * a' * (q j * a * p k) ≠ 0 := by
    by_contra hc
    push Not at hc
    apply h
    apply hA _ hαA
    intro b hb
    refine ⟨2, ?_⟩
    rw [pow_two]
    have : b * (q j * a * p k) * (b * (q j * a * p k)) = b * q j * a * (p k * b * (q j * a * p k)) := by
      simp only [mul_assoc]
    rw [this, hc b hb, mul_zero]
  obtain ⟨c, hc⟩ := hpc.2 (a' * q j * a) (A.mul_mem (A.mul_mem ha' (hqc.1 j)) ha) k
  have hpa : p k * a' * (q j * a * p k) = c • p k := by
    rw [← hc]; simp only [mul_assoc]
  have hc0 : c ≠ 0 := by rintro rfl; rw [zero_smul] at hpa; exact h' hpa
  set α := q j * a * p k with hαdef
  set β := c⁻¹ • (p k * a' * q j) with hβdef
  have hβA : β ∈ A := A.smul_mem (A.mul_mem (A.mul_mem (hpc.1 k) ha') (hqc.1 j)) _
  have hβ : p k * β * q j = β := by
    simp only [hβdef, mul_smul_comm, smul_mul_assoc, ← mul_assoc, hpi.eq]
    rw [mul_assoc _ (q j), hqi.eq]
  have hβα : β * α = p k := by
    have : β * α = c⁻¹ • (p k * a' * α) := by
      simp only [hβdef, smul_mul_assoc, hαdef, mul_assoc, ← mul_assoc (q j) (q j), hqi.eq]
    rw [this, hpa, smul_smul, inv_mul_cancel₀ hc0, one_smul]
  refine ⟨α, hαA, β, hβA, ?_, hβα, hα, hβ⟩
  refine fin_step hpi hqi (hq.2 j) hα hβα ?_ h
  obtain ⟨d, hd⟩ := hqc.2 (α * β) (A.mul_mem hαA hβA) j
  refine ⟨d, ?_⟩
  rw [← hd]
  calc α * β = (q j * α) * (β * q j) := by rw [left_q hqi hα, right_p hqi hβ]
    _ = _ := by simp only [mul_assoc]

theorem compose {A : Subalgebra C (Mat C N)} {p q : Fin n → Mat C N} (hp : Sys p) (hq : Sys q)
    {j j' k k' : Fin n} (h1 : Iso A (q j) (p k)) (h2 : Iso A (q j) (p k')) (h3 : Iso A (q j') (p k)) :
    Iso A (q j') (p k') := by
  obtain ⟨α1, hα1, β1, hβ1, e1, f1, g1, k1⟩ := h1
  obtain ⟨α2, hα2, β2, hβ2, e2, f2, g2, k2⟩ := h2
  obtain ⟨α3, hα3, β3, hβ3, e3, f3, g3, k3⟩ := h3
  have a3p := right_p (hp.1.idem k) g3
  have qa1 := left_q (hq.1.idem j) g1
  have qa2 := left_q (hq.1.idem j) g2
  have pb1 := left_q (hp.1.idem k) k1
  have b2q := right_p (hq.1.idem j) k2
  have pb3 := left_q (hp.1.idem k) k3
  have qa3 := left_q (hq.1.idem j') g3
  have a2p := right_p (hp.1.idem k') g2
  have pb2 := left_q (hp.1.idem k') k2
  have b3q := right_p (hq.1.idem j') k3
  refine ⟨α3 * β1 * α2, A.mul_mem (A.mul_mem hα3 hβ1) hα2, β2 * α1 * β3,
    A.mul_mem (A.mul_mem hβ2 hα1) hβ3, ?_, ?_, ?_, ?_⟩
  · simp only [mul_assoc]
    rw [← mul_assoc α2 β2, e2, ← mul_assoc (q j) α1, qa1, ← mul_assoc β1 α1, f1, ← mul_assoc, a3p, e3]
  · simp only [mul_assoc]
    rw [← mul_assoc β3 α3, f3, ← mul_assoc (p k) β1, pb1, ← mul_assoc α1 β1, e1, qa2, f2]
  · rw [← mul_assoc, ← mul_assoc, qa3, mul_assoc, a2p]
  · rw [← mul_assoc, ← mul_assoc, pb2, mul_assoc, b3q]

theorem count (A : Subalgebra C (Mat C N)) [CharZero C] (p q : Fin n → Mat C N) (hp : Sys p) (hq : Sys q)
    (Q : Fin n → Finset (Fin n)) (hQd : ∀ j k, j ∈ Q k ↔ Iso A (q j) (p k))
    (hF1 : ∀ j k, ¬ Iso A (q j) (p k) → q j * p k = 0)
    (hQ : ∀ j k k', j ∈ Q k → j ∈ Q k' → Q k = Q k') (hne : ∀ k, (Q k).Nonempty) (k0 : Fin n) :
    (Finset.univ.filter (fun k => Q k = Q k0)).card = (Q k0).card := by
  classical
  have htr : ∀ j k, Iso A (q j) (p k) → (q j).trace = (p k).trace := by
    rintro j k ⟨α, -, β, -, e, f, -, -⟩
    rw [← e, ← f, Matrix.trace_mul_comm]
  have hsum : ∑ k ∈ Finset.univ.filter (fun k => Q k = Q k0), p k = ∑ j ∈ Q k0, q j := by
    calc ∑ k ∈ Finset.univ.filter (fun k => Q k = Q k0), p k
        = ∑ j, q j * ∑ k ∈ Finset.univ.filter (fun k => Q k = Q k0), p k := by
          rw [← Finset.sum_mul, hq.1.complete, one_mul]
      _ = ∑ j, if j ∈ Q k0 then q j else 0 := by
          refine Finset.sum_congr rfl (fun j _ => ?_)
          split_ifs with hj
          · rw [Finset.mul_sum, Finset.sum_subset (Finset.subset_univ _), ← Finset.mul_sum,
              hp.1.complete, mul_one]
            intro k _ hk
            apply hF1
            intro hR
            apply hk
            simp only [Finset.mem_filter, Finset.mem_univ, true_and]
            exact hQ j k k0 ((hQd j k).2 hR) hj
          · rw [Finset.mul_sum]
            refine Finset.sum_eq_zero (fun k hk => hF1 j k ?_)
            intro hR
            simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk
            apply hj
            rw [← hk]
            exact (hQd j k).2 hR
      _ = ∑ j ∈ Q k0, q j := by rw [Finset.sum_ite_mem, Finset.univ_inter]
  have ht := congrArg Matrix.trace hsum
  rw [Matrix.trace_sum, Matrix.trace_sum] at ht
  obtain ⟨j0, hj0⟩ := hne k0
  have h1 : ∀ k ∈ Finset.univ.filter (fun k => Q k = Q k0), (p k).trace = (p k0).trace := by
    intro k hk
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk
    have : j0 ∈ Q k := by rw [hk]; exact hj0
    rw [← htr j0 k ((hQd j0 k).1 this), htr j0 k0 ((hQd j0 k0).1 hj0)]
  have h2 : ∀ j ∈ Q k0, (q j).trace = (p k0).trace := fun j hj => htr j k0 ((hQd j k0).1 hj)
  rw [Finset.sum_congr rfl h1, Finset.sum_congr rfl h2, Finset.sum_const, Finset.sum_const,
    nsmul_eq_mul, nsmul_eq_mul] at ht
  have t0 := trace_ne_zero (p k0) (hp.1.idem k0) (hp.2 k0)
  exact_mod_cast mul_right_cancel₀ t0 ht

theorem IdemConj_of : IdemConj := by
  intro C _ _ N n A p q hp hpc hq hqc hA
  classical
  obtain ⟨Q, hQd⟩ : ∃ Q : Fin n → Finset (Fin n), ∀ j k, j ∈ Q k ↔ Iso A (q j) (p k) :=
    ⟨fun k => Finset.univ.filter (fun j => Iso A (q j) (p k)), by simp⟩
  have hF1 : ∀ j k, ¬ Iso A (q j) (p k) → q j * p k = 0 := fun j k h => by
    by_contra h'
    exact h (key A p q hp hpc hq hqc hA j k 1 A.one_mem (by rwa [mul_one]))
  have hQ : ∀ j k k', j ∈ Q k → j ∈ Q k' → Q k = Q k' := by
    intro j k k' h1 h2
    rw [hQd] at h1 h2
    ext j'
    rw [hQd, hQd]
    exact ⟨fun h3 => compose hp hq h1 h2 h3, fun h3 => compose hp hq h2 h1 h3⟩
  have hne : ∀ k, (Q k).Nonempty := by
    intro k
    by_contra h
    rw [Finset.not_nonempty_iff_eq_empty] at h
    apply hp.2 k
    rw [← one_mul (p k), ← hq.1.complete, Finset.sum_mul]
    refine Finset.sum_eq_zero (fun j _ => hF1 j k (fun hR => ?_))
    have := (hQd j k).2 hR
    rw [h] at this
    exact Finset.notMem_empty _ this
  have hcard := count A p q hp hq Q hQd hF1 hQ hne
  obtain ⟨L, hL⟩ : ∃ L : Finset (Fin n) → Finset (Fin n), ∀ S k, k ∈ L S ↔ Q k = S ∧ k ∉ S :=
    ⟨fun S => Finset.univ.filter (fun k => Q k = S ∧ k ∉ S), by simp⟩
  obtain ⟨M, hM⟩ : ∃ M : Finset (Fin n) → Finset (Fin n), ∀ S j, j ∈ M S ↔ j ∈ S ∧ Q j ≠ S :=
    ⟨fun S => Finset.univ.filter (fun j => j ∈ S ∧ Q j ≠ S), by simp⟩
  have hLM : ∀ k0, (L (Q k0)).card = (M (Q k0)).card := by
    intro k0
    have e1 := Finset.card_filter_add_card_filter_not
      (s := Finset.univ.filter (fun k => Q k = Q k0)) (fun k => k ∈ Q k0)
    have e2 := Finset.card_filter_add_card_filter_not (s := Q k0) (fun j => Q j = Q k0)
    rw [hcard k0] at e1
    have e3 : (Finset.univ.filter (fun k => Q k = Q k0)).filter (fun k => k ∈ Q k0) =
        (Q k0).filter (fun j => Q j = Q k0) := by
      ext x; simp only [Finset.mem_filter, Finset.mem_univ, true_and]; tauto
    have e4 : (Finset.univ.filter (fun k => Q k = Q k0)).filter (fun k => ¬ k ∈ Q k0) = L (Q k0) := by
      ext x; simp only [hL, Finset.mem_filter, Finset.mem_univ, true_and]
    have e5 : (Q k0).filter (fun j => ¬ Q j = Q k0) = M (Q k0) := by
      ext x; simp only [hM, Finset.mem_filter]
    rw [e3, e4] at e1
    rw [e5] at e2
    omega
  let g : Finset (Fin n) → Fin n → Fin n := fun S k =>
    if h : (L S).card = (M S).card ∧ k ∈ L S then ((L S).equivOfCardEq h.1 ⟨k, h.2⟩ : Fin n) else k
  have hg : ∀ S k (h : (L S).card = (M S).card ∧ k ∈ L S),
      g S k = ((L S).equivOfCardEq h.1 ⟨k, h.2⟩ : Fin n) := fun S k h => by
    simp only [g, dif_pos h]
  let f : Fin n → Fin n := fun k => if k ∈ Q k then k else g (Q k) k
  have hkL : ∀ k, k ∉ Q k → (L (Q k)).card = (M (Q k)).card ∧ k ∈ L (Q k) :=
    fun k hk => ⟨hLM k, (hL _ _).2 ⟨rfl, hk⟩⟩
  have hfM : ∀ k, k ∉ Q k → f k ∈ Q k ∧ Q (f k) ≠ Q k := by
    intro k hk
    have e : f k = g (Q k) k := by simp only [f, if_neg hk]
    rw [e, hg _ _ (hkL k hk), ← hM]
    exact ((L (Q k)).equivOfCardEq (hkL k hk).1 ⟨k, (hkL k hk).2⟩).2
  have hfQ : ∀ k, f k ∈ Q k := by
    intro k
    by_cases hk : k ∈ Q k
    · simp only [f, if_pos hk]; exact hk
    · exact (hfM k hk).1
  have hfix : ∀ k, k ∈ Q k → f k = k := fun k hk => by simp only [f, if_pos hk]
  have hinj : Function.Injective f := by
    intro k k' hkk
    by_cases hk : k ∈ Q k <;> by_cases hk' : k' ∈ Q k'
    · rwa [hfix k hk, hfix k' hk'] at hkk
    · exfalso
      have hm := hfM k' hk'
      rw [← hkk, hfix k hk] at hm
      exact hm.2 (hQ k k k' hk hm.1)
    · exfalso
      have hm := hfM k hk
      rw [hkk, hfix k' hk'] at hm
      exact hm.2 (hQ k' k' k hk' hm.1)
    · have hQQ : Q k = Q k' := hQ (f k) k k' (hfQ k) (by rw [hkk]; exact hfQ k')
      have e1 : f k = g (Q k) k := by simp only [f, if_neg hk]
      have e2 : f k' = g (Q k) k' := by simp only [f, if_neg hk']; rw [hQQ]
      have hk'L : (L (Q k)).card = (M (Q k)).card ∧ k' ∈ L (Q k) :=
        ⟨hLM k, (hL _ _).2 ⟨hQQ.symm, by rw [hQQ]; exact hk'⟩⟩
      rw [e1, e2, hg _ _ (hkL k hk), hg _ _ hk'L] at hkk
      have := ((L (Q k)).equivOfCardEq (hkL k hk).1).injective (Subtype.ext hkk)
      exact congrArg Subtype.val this
  let π := Equiv.ofBijective f (Finite.injective_iff_bijective.mp hinj)
  have hR : ∀ j, Iso A (q (f j)) (p j) := fun j => (hQd _ _).1 (hfQ j)
  unfold Iso at hR
  choose α hαA β hβA hab hba hqa hpb using hR
  have hαp : ∀ j, α j * p j = α j := fun j => right_p (hp.1.idem j) (hqa j)
  have hqα : ∀ j, q (f j) * α j = α j := fun j => left_q (hq.1.idem _) (hqa j)
  have hpβ : ∀ j, p j * β j = β j := fun j => left_q (hp.1.idem j) (hpb j)
  have hβq : ∀ j, β j * q (f j) = β j := fun j => right_p (hq.1.idem _) (hpb j)
  have hvw : (∑ j, α j) * ∑ j, β j = 1 := by
    rw [Finset.sum_mul_sum]
    calc ∑ i, ∑ j, α i * β j = ∑ i, q (π i) := Finset.sum_congr rfl (fun i _ => by
            rw [Finset.sum_eq_single i]
            · exact hab i
            · intro j _ hji
              rw [← hαp i, ← hpβ j, mul_assoc, ← mul_assoc (p i), hp.1.ortho (Ne.symm hji), zero_mul,
                mul_zero]
            · simp)
      _ = ∑ i, q i := Equiv.sum_comp π q
      _ = 1 := hq.1.complete
  have hwv : (∑ j, β j) * ∑ j, α j = 1 := by
    rw [Finset.sum_mul_sum]
    calc ∑ i, ∑ j, β i * α j = ∑ i, p i := Finset.sum_congr rfl (fun i _ => by
            rw [Finset.sum_eq_single i]
            · exact hba i
            · intro j _ hji
              rw [← hβq i, ← hqα j, mul_assoc, ← mul_assoc (q (f i)),
                hq.1.ortho (hinj.ne (Ne.symm hji)), zero_mul, mul_zero]
            · simp)
      _ = 1 := hp.1.complete
  refine ⟨∑ j, α j, A.sum_mem (fun j _ => hαA j), ⟨⟨_, _, hvw, hwv⟩, rfl⟩, π, ?_, ?_⟩
  · intro j
    have h1 : (∑ k, α k) * p j = α j := by
      rw [Finset.sum_mul, Finset.sum_eq_single j]
      · exact hαp j
      · intro k _ hkj
        rw [← hαp k, mul_assoc, hp.1.ortho hkj, mul_zero]
      · simp
    have h2 : q (f j) * ∑ k, α k = α j := by
      rw [Finset.mul_sum, Finset.sum_eq_single j]
      · exact hqα j
      · intro k _ hkj
        rw [← hqα k, ← mul_assoc, hq.1.ortho (hinj.ne (Ne.symm hkj)), zero_mul]
      · simp
    show (∑ k, α k) * p j = q (f j) * ∑ k, α k
    rw [h1, h2]
  · rintro i ⟨a, ha, h⟩
    show f i = i
    exact hfix i ((hQd i i).2 (key A p q hp hpc hq hqc hA i i a ha h))

end LateralTheory.DivDb.ConjugateIdempotents
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.ConjugateIdempotents =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.PowEig =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.PowEig", "h": "module\n\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Data.Matrix.Mul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

@[reducible] noncomputable def UpperTheory.Reformulated.B.Qp8.Mat :
    Type → ℕ → Type :=
    fun (C : Type) (N : ℕ) ↦ Matrix (Fin N) (Fin N) C

theorem UpperTheory.Reformulated.B.Qp8.pow_eig :
    ∀ {C : Type} [inst : Field C] {N : ℕ} (y : UpperTheory.Reformulated.B.Qp8.Mat C N) (l : C) (w : Fin N → C),
      Matrix.mulVec y w = l • w → ∀ (m : ℕ), Matrix.mulVec (y ^ m) w = l ^ m • w := by
  intro C _ N y l w h m
  induction m with
  | zero => rw [pow_zero, pow_zero, one_smul, Matrix.one_mulVec]
  | succ k ih =>
    rw [pow_succ, ← Matrix.mulVec_mulVec, h, Matrix.mulVec_smul, ih, smul_smul, pow_succ']
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.PowEig =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.CycleCount2 =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.CycleCount2", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.PowEig\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Polynomial
namespace LateralTheory.DivDb.CycleCount₂
open LateralTheory.DivDb

variable {C : Type} [Field C] {N : ℕ}

def fixSp (P : Mat C N) : Submodule C (Fin N → C) where
  carrier := {u | P *ᵥ u = u}
  add_mem' := by
    intro a b ha hb
    simp only [Set.mem_ofPred_eq] at *
    rw [Matrix.mulVec_add, ha, hb]
  zero_mem' := by simp
  smul_mem' := by
    intro c u hu
    simp only [Set.mem_ofPred_eq] at *
    rw [Matrix.mulVec_smul, hu]

theorem mem_fixSp {P : Mat C N} {u : Fin N → C} : u ∈ fixSp P ↔ P *ᵥ u = u := Iff.rfl

theorem eig_in [IsAlgClosed C] (W : Submodule C (Fin N → C)) (M : Mat C N)
    (hW : ∀ u ∈ W, M *ᵥ u ∈ W) (hne : ∃ u ∈ W, u ≠ 0) :
    ∃ u ∈ W, u ≠ 0 ∧ ∃ c : C, M *ᵥ u = c • u := by
  obtain ⟨u0, hu0, hu0'⟩ := hne
  have hW' : ∀ u ∈ W, Matrix.toLin' M u ∈ W := fun u hu => by
    rw [Matrix.toLin'_apply]; exact hW u hu
  let f : Module.End C W := (Matrix.toLin' M).restrict hW'
  have : Nontrivial W := ⟨⟨⟨u0, hu0⟩, 0, fun h => hu0' (by simpa using congrArg Subtype.val h)⟩⟩
  obtain ⟨c, hc⟩ := Module.End.exists_eigenvalue f
  obtain ⟨x, hx⟩ := hc.exists_hasEigenvector
  refine ⟨x, x.2, fun h => hx.2 (Subtype.ext h), c, ?_⟩
  have := congrArg Subtype.val hx.apply_eq_smul
  simpa [f, LinearMap.restrict_apply, Matrix.toLin'_apply] using this

theorem eig_root (y : Mat C N) (l : C) (w : Fin N → C) (hw : w ≠ 0) (h : y *ᵥ w = l • w) :
    y.charpoly.IsRoot l := by
  rw [Polynomial.IsRoot, Matrix.eval_charpoly]
  apply (Matrix.exists_mulVec_eq_zero_iff).mp
  refine ⟨w, hw, ?_⟩
  rw [Matrix.sub_mulVec, h]
  simp [Matrix.scalar_apply, Pi.smul_def]

theorem pow_eig (y : Mat C N) (l : C) (w : Fin N → C) (h : y *ᵥ w = l • w) (m : ℕ) :
    (y ^ m) *ᵥ w = l ^ m • w :=
  _root_.UpperTheory.Reformulated.B.Qp8.pow_eig y l w h m

theorem aeval_eig (y : Mat C N) (l : C) (w : Fin N → C) (h : y *ᵥ w = l • w) (q : C[X]) :
    (aeval y q) *ᵥ w = q.eval l • w := by
  induction q using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), Matrix.add_mulVec, hp, hq, eval_add, add_smul]
  | monomial n a =>
    rw [aeval_monomial, Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul, Matrix.smul_mulVec,
      pow_eig y l w h, smul_smul, eval_monomial]

theorem intertw {n : ℕ} (p : Fin n → Mat C N) (y : Mat C N) (π : Equiv.Perm (Fin n))
    (hπ : ∀ j, y * p j = p (π j) * y) (m : ℕ) (j : Fin n) : y ^ m * p j = p ((π ^ m) j) * y ^ m := by
  induction m with
  | zero => simp
  | succ m ih => rw [pow_succ', mul_assoc, ih, ← mul_assoc, hπ, mul_assoc, pow_succ', Equiv.Perm.mul_apply]

theorem move {n : ℕ} (p : Fin n → Mat C N) (y : Mat C N) (π : Equiv.Perm (Fin n))
    (hπ : ∀ j, y * p j = p (π j) * y) (m : ℕ) (j : Fin n) (v : Fin N → C) (hv : p j *ᵥ v = v) :
    p ((π ^ m) j) *ᵥ (y ^ m *ᵥ v) = y ^ m *ᵥ v := by
  conv_rhs => rw [← hv]
  rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, intertw p y π hπ]

theorem cyc [IsAlgClosed C] [CharZero C] {n : ℕ} (p : Fin n → Mat C N) (y : Mat C N) (π : Equiv.Perm (Fin n))
    (hS : Sys p) (hy : IsUnit y) (hπ : ∀ j, y * p j = p (π j) * y) (j : Fin n) :
    ∃ S : Finset C, S.card = Function.minimalPeriod π j ∧ ∀ l ∈ S, ∃ w : Fin N → C, w ≠ 0 ∧
      y *ᵥ w = l • w ∧ ∀ k, ¬ π.SameCycle j k → p k *ᵥ w = 0 := by
  classical
  set k := Function.minimalPeriod π j with hkdef
  have hk : 0 < k := Function.minimalPeriod_pos_of_mem_periodicPts (π.injective.mem_periodicPts j)
  have hkj : (π ^ k) j = j := by rw [Equiv.Perm.coe_pow]; exact Function.isPeriodicPt_minimalPeriod π j
  have hne : ∀ m, 0 < m → m < k → (π ^ m) j ≠ j := fun m h0 h1 h =>
    Function.not_isPeriodicPt_of_pos_of_lt_minimalPeriod h0.ne' h1 (by rw [Equiv.Perm.coe_pow] at h; exact h)
  have hcomm : y ^ k * p j = p j * y ^ k := by rw [intertw p y π hπ, hkj]
  have hWm : ∀ u ∈ fixSp (p j), y ^ k *ᵥ u ∈ fixSp (p j) := by
    intro u hu; rw [mem_fixSp] at *; rw [Matrix.mulVec_mulVec, ← hcomm, ← Matrix.mulVec_mulVec, hu]
  have hWne : ∃ u ∈ fixSp (p j), u ≠ 0 := by
    by_contra hc; push_neg at hc
    apply hS.2 j
    refine Matrix.toLin'.injective (LinearMap.ext fun u => ?_)
    rw [Matrix.toLin'_apply, map_zero, LinearMap.zero_apply]
    exact hc _ (by rw [mem_fixSp, Matrix.mulVec_mulVec, (hS.1.idem j).eq])
  obtain ⟨v, hvW, hv0, β, hβ⟩ := eig_in _ _ hWm hWne
  rw [mem_fixSp] at hvW
  have hβ0 : β ≠ 0 := by
    rintro rfl
    apply hv0
    obtain ⟨U, hU⟩ := hy.pow k
    have h1 : ((U⁻¹ : (Mat C N)ˣ) : Mat C N) * (U : Mat C N) = 1 := U.inv_mul
    rw [← Matrix.one_mulVec v, ← h1, ← Matrix.mulVec_mulVec, hU, hβ, zero_smul, Matrix.mulVec_zero]
  refine ⟨(nthRoots k β).toFinset, ?_, ?_⟩
  · have hsep : (X ^ k - Polynomial.C β).Separable := separable_X_pow_sub_C β (by exact_mod_cast hk.ne') hβ0
    rw [Multiset.toFinset_card_of_nodup (by unfold nthRoots; exact nodup_roots hsep)]
    unfold nthRoots
    rw [IsAlgClosed.card_roots_eq_natDegree, natDegree_X_pow_sub_C _]
  · intro l hl
    rw [Multiset.mem_toFinset, mem_nthRoots hk] at hl
    have hl0 : l ≠ 0 := by rintro rfl; rw [zero_pow hk.ne'] at hl; exact hβ0 hl.symm
    set a : ℕ → (Fin N → C) := fun m => (l⁻¹) ^ m • (y ^ m *ᵥ v) with ha
    have hya : ∀ m, y *ᵥ a m = l • a (m + 1) := by
      intro m; simp only [ha]
      rw [smul_smul, show l * (l⁻¹) ^ (m + 1) = (l⁻¹) ^ m by
        rw [pow_succ, mul_left_comm, mul_inv_cancel₀ hl0, mul_one], Matrix.mulVec_smul, Matrix.mulVec_mulVec, ← pow_succ']
    have hak : a k = a 0 := by
      simp only [ha]; rw [hβ, smul_smul, inv_pow, hl, inv_mul_cancel₀ hβ0, one_smul, pow_zero, pow_zero, one_smul,
        Matrix.one_mulVec]
    have hpa : ∀ i m, p i *ᵥ a m = if (π ^ m) j = i then a m else 0 := by
      intro i m; simp only [ha]; rw [Matrix.mulVec_smul]; split_ifs with h
      · subst h; rw [move p y π hπ m j v hvW]
      · rw [← move p y π hπ m j v hvW, Matrix.mulVec_mulVec, hS.1.ortho (Ne.symm h), Matrix.zero_mulVec, smul_zero]
    have hpj : p j *ᵥ ∑ m ∈ Finset.range k, a m = v := by
      rw [Matrix.mulVec_sum, Finset.sum_eq_single 0]
      · rw [hpa]; simp [ha]
      · intro m hm hm0; rw [hpa, if_neg]; exact hne m (Nat.pos_of_ne_zero hm0) (Finset.mem_range.mp hm)
      · intro h; exact absurd (Finset.mem_range.mpr hk) h
    refine ⟨∑ m ∈ Finset.range k, a m, ?_, ?_, ?_⟩
    · intro h; apply hv0; rw [← hpj, h, Matrix.mulVec_zero]
    · obtain ⟨k', hk'⟩ : ∃ k', k = k' + 1 := ⟨k - 1, by omega⟩
      rw [Matrix.mulVec_sum, Finset.sum_congr rfl (fun m _ => hya m), ← Finset.smul_sum]
      congr 1
      rw [hk', Finset.sum_range_succ (fun m => a (m + 1)) k', Finset.sum_range_succ' a k', ← hk', hak]
    · intro i hi; rw [Matrix.mulVec_sum]; apply Finset.sum_eq_zero; intro m _; rw [hpa, if_neg]
      intro h; exact hi ⟨m, by rw [zpow_natCast]; exact h⟩

theorem eigs [IsAlgClosed C] [CharZero C] {n : ℕ} (p : Fin n → Mat C N) (y : Mat C N) (π : Equiv.Perm (Fin n))
    (hS : Sys p) (hy : IsUnit y) (hπ : ∀ j, y * p j = p (π j) * y) (hD : Disj y π p) :
    ∃ f : Fin n → C, Function.Injective f ∧ ∀ i, ∃ w : Fin N → C, w ≠ 0 ∧
      y *ᵥ w = f i • w ∧ ∀ k, ¬ π.SameCycle i k → p k *ᵥ w = 0 := by
  classical
  choose S hSc hSe using fun j => cyc p y π hS hy hπ j
  let rep : Fin n → Fin n := fun i => (@Quotient.mk _ (Equiv.Perm.SameCycle.setoid π) i).out
  have hrep : ∀ i, π.SameCycle (rep i) i := fun i => Quotient.mk_out (s := Equiv.Perm.SameCycle.setoid π) i
  have hrepeq : ∀ i i', π.SameCycle i i' → rep i = rep i' := by
    intro i i' h
    exact congrArg Quotient.out (Quotient.sound (s := Equiv.Perm.SameCycle.setoid π) h)
  have hm : ∀ i, ∃ m, m < Function.minimalPeriod π (rep i) ∧ (π ^ m) (rep i) = i := by
    intro i; obtain ⟨m, hm⟩ := (hrep i).exists_nat_pow_eq
    refine ⟨m % Function.minimalPeriod π (rep i), Nat.mod_lt _
      (Function.minimalPeriod_pos_of_mem_periodicPts (π.injective.mem_periodicPts _)), ?_⟩
    rw [Equiv.Perm.coe_pow, Function.iterate_mod_minimalPeriod_eq, ← Equiv.Perm.coe_pow, hm]
  choose m hmlt hmeq using hm
  let g : Fin n → ℕ → C := fun r t => if h : t < (S r).card then ((S r).equivFin.symm ⟨t, h⟩ : C) else 0
  have hg : ∀ i, g (rep i) (m i) ∈ S (rep i) := by
    intro i; simp only [g]; rw [dite_eq_left (by rw [hSc]; exact hmlt i)]; exact Finset.coe_mem _
  have hsupp : ∀ i, ∃ w : Fin N → C, w ≠ 0 ∧ y *ᵥ w = g (rep i) (m i) • w ∧ ∀ k, ¬ π.SameCycle i k → p k *ᵥ w = 0 := by
    intro i; obtain ⟨w, hw0, hwe, hws⟩ := hSe _ _ (hg i)
    exact ⟨w, hw0, hwe, fun k hk => hws k (fun hc => hk ((hrep i).symm.trans hc))⟩
  refine ⟨fun i => g (rep i) (m i), ?_, hsupp⟩
  intro i i' h
  simp only at h
  have hsame : rep i = rep i' := by
    by_contra hne
    have hnc : ¬ π.SameCycle (rep i) (rep i') := fun hc =>
      hne (hrepeq _ _ (((hrep i).symm.trans hc).trans (hrep i')))
    obtain ⟨w, hw0, hwe, hws⟩ := hSe _ _ (hg i)
    obtain ⟨w', hw0', hwe', hws'⟩ := hSe _ _ (hg i')
    exact hD (rep i) (rep i') hnc _ w w' hw0 hw0' hwe (by rw [h]; exact hwe') hws hws'
  have hmm : m i = m i' := by
    have h2 := h
    simp only [g] at h2
    rw [dite_eq_left (by rw [hSc]; exact hmlt i), dite_eq_left (by rw [hSc]; exact hmlt i')] at h2
    have key : ∀ r r' : Fin n, r = r' → ∀ t t' (ht : t < (S r).card) (ht' : t' < (S r').card),
        ((S r).equivFin.symm ⟨t, ht⟩ : C) = (S r').equivFin.symm ⟨t', ht'⟩ → t = t' := by
      intro r r' hr; subst hr; intro t t' ht ht' he
      exact congrArg Fin.val ((S r).equivFin.symm.injective (Subtype.ext he))
    exact key _ _ hsame _ _ _ _ h2
  rw [← hmeq i, ← hmeq i', hsame, hmm]

theorem fixed_scalar [IsAlgClosed C] {n : ℕ} (p : Fin n → Mat C N) (y : Mat C N) (π : Equiv.Perm (Fin n))
    (hS : Sys p) (hπ : ∀ j, y * p j = p (π j) * y) (hdeg : Deg n y) (hD : Disj y π p)
    (f : Fin n → C) (hf : Function.Injective f) (hfe : ∀ i, ∃ w : Fin N → C, w ≠ 0 ∧
      y *ᵥ w = f i • w ∧ ∀ k, ¬ π.SameCycle i k → p k *ᵥ w = 0) (i : Fin n) (hi : π i = i) :
    ∃ c : C, y * p i = c • p i := by
  classical
  obtain ⟨q, hq0, hqd, hqy⟩ := hdeg
  have hroot : ∀ l (w : Fin N → C), w ≠ 0 → y *ᵥ w = l • w → q.eval l = 0 := by
    intro l w hw h
    have := aeval_eig y l w h q
    rw [hqy, Matrix.zero_mulVec] at this
    exact (smul_eq_zero.mp this.symm).resolve_right hw
  have hsub : Finset.univ.image f ⊆ q.roots.toFinset := by
    intro x hx
    obtain ⟨i', -, rfl⟩ := Finset.mem_image.mp hx
    obtain ⟨w, hw0, hwe, -⟩ := hfe i'
    rw [Multiset.mem_toFinset, mem_roots hq0]; exact hroot _ w hw0 hwe
  have hcard : (Finset.univ.image f).card = n := by
    rw [Finset.card_image_of_injective _ hf, Finset.card_univ, Fintype.card_fin]
  have h1 : q.roots.toFinset.card ≤ Multiset.card q.roots := Multiset.toFinset_card_le _
  have h2 : Multiset.card q.roots ≤ n := (Polynomial.card_roots' q).trans hqd
  have h3 := Finset.card_le_card hsub
  have hnd : q.roots.Nodup := Multiset.toFinset_card_eq_card_iff_nodup.mp (by omega)
  have heq : Finset.univ.image f = q.roots.toFinset := Finset.eq_of_subset_of_card_le hsub (by omega)
  have honly : ∀ l (u : Fin N → C), u ≠ 0 → p i *ᵥ u = u → y *ᵥ u = l • u → l = f i := by
    intro l u hu hpu hyu
    have : l ∈ Finset.univ.image f := by
      rw [heq, Multiset.mem_toFinset, mem_roots hq0]; exact hroot l u hu hyu
    obtain ⟨i', -, rfl⟩ := Finset.mem_image.mp this
    by_cases hc : π.SameCycle i i'
    · rw [hc.eq_of_left hi]
    · exfalso
      obtain ⟨w, hw0, hwe, hws⟩ := hfe i'
      refine hD i i' hc (f i') u w hu hw0 hyu hwe ?_ hws
      intro k hk
      have hki : k ≠ i := fun h => hk (h ▸ Equiv.Perm.SameCycle.refl _ _)
      rw [← hpu, Matrix.mulVec_mulVec, hS.1.ortho hki, Matrix.zero_mulVec]
  set l := f i
  have hlroot : q.IsRoot l := by obtain ⟨w, hw0, hwe, -⟩ := hfe i; exact hroot _ w hw0 hwe
  set q' := q /ₘ (X - Polynomial.C l)
  have hqq : q = q' * (X - Polynomial.C l) := by
    rw [mul_comm]; exact ((mul_divByMonic_eq_iff_isRoot).mpr hlroot).symm
  have hq'l : q'.eval l ≠ 0 := by
    intro h0
    have hdvd : (X - Polynomial.C l) ^ 2 ∣ q := by
      obtain ⟨r, hr⟩ := (Polynomial.dvd_iff_isRoot).mpr h0
      exact ⟨r, by rw [hqq, hr]; ring⟩
    have h4 := (le_rootMultiplicity_iff hq0).mpr hdvd
    rw [← count_roots] at h4
    have h5 := (Multiset.nodup_iff_count_le_one.mp hnd) l
    omega
  have hcomm : y * p i = p i * y := by rw [hπ, hi]
  have hc2 : aeval y q' * y = y * aeval y q' := by
    have := congrArg (aeval y) (mul_comm q' X)
    simpa [aeval_X] using this
  have hinj : ∀ u, p i *ᵥ u = u → aeval y q' *ᵥ u = 0 → u = 0 := by
    intro u hu hq'u
    by_contra hu0
    let W : Submodule C (Fin N → C) := fixSp (p i) ⊓ LinearMap.ker (Matrix.toLin' (aeval y q'))
    have hWm : ∀ x ∈ W, y *ᵥ x ∈ W := by
      intro x hx
      rw [Submodule.mem_inf, mem_fixSp, LinearMap.mem_ker, Matrix.toLin'_apply] at hx ⊢
      refine ⟨?_, ?_⟩
      · rw [Matrix.mulVec_mulVec, ← hcomm, ← Matrix.mulVec_mulVec, hx.1]
      · rw [Matrix.mulVec_mulVec, hc2, ← Matrix.mulVec_mulVec, hx.2, Matrix.mulVec_zero]
    obtain ⟨u', hu'W, hu'0, c, hc⟩ := eig_in W y hWm ⟨u, by
      rw [Submodule.mem_inf, mem_fixSp, LinearMap.mem_ker, Matrix.toLin'_apply]; exact ⟨hu, hq'u⟩, hu0⟩
    rw [Submodule.mem_inf, mem_fixSp, LinearMap.mem_ker, Matrix.toLin'_apply] at hu'W
    have hcl : c = l := honly c u' hu'0 hu'W.1 hc
    have h6 := aeval_eig y c u' hc q'
    rw [hu'W.2, hcl] at h6
    exact hq'l ((smul_eq_zero.mp h6.symm).resolve_right hu'0)
  refine ⟨l, ?_⟩
  apply Matrix.toLin'.injective
  refine LinearMap.ext fun u => ?_
  rw [Matrix.toLin'_apply, Matrix.toLin'_apply, Matrix.smul_mulVec]
  have hc3 : p i * (y - l • 1) = (y - l • 1) * p i := by
    rw [mul_sub, sub_mul, ← hcomm, mul_smul_comm, smul_mul_assoc, mul_one, one_mul]
  have h4 : aeval y q' * (y - l • 1) = 0 := by
    rw [← hqy, hqq, map_mul, map_sub, aeval_X, aeval_C, Algebra.algebraMap_eq_smul_one]
  have hz := hinj ((y - l • 1) *ᵥ (p i *ᵥ u)) (by
      simp only [Matrix.mulVec_mulVec]; rw [← mul_assoc, hc3, mul_assoc, (hS.1.idem i).eq])
    (by simp only [Matrix.mulVec_mulVec]; rw [← mul_assoc, h4, Matrix.zero_mul, Matrix.zero_mulVec])
  rw [Matrix.sub_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec, sub_eq_zero, Matrix.mulVec_mulVec] at hz
  exact hz

theorem CycleCount_of : CycleCount := by
  intro C _ _ _ N n p y π hS hy hπ hdeg hD
  obtain ⟨f, hf, hfe⟩ := eigs p y π hS hy hπ hD
  refine ⟨⟨f, hf, fun i => ?_⟩, fun i hi => fixed_scalar p y π hS hπ hdeg hD f hf hfe i hi⟩
  obtain ⟨w, hw0, hwe, -⟩ := hfe i
  exact eig_root y _ w hw0 hwe

end LateralTheory.DivDb.CycleCount₂
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.CycleCount2 =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.GenSpecProof =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.GenSpecProof", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div

namespace LateralTheory.DivDb.GenSpecProof
open LateralTheory.DivDb Finset

variable {C : Type} [Field C] {N n : ℕ}

theorem mem_periodic (π : Equiv.Perm (Fin n)) (k : Fin n) : k ∈ Function.periodicPts π :=
  Function.mk_mem_periodicPts (orderOf_pos π) (by
    show (π^[orderOf π]) k = k
    rw [Equiv.Perm.iterate_eq_pow, pow_orderOf_eq_one]; rfl)

theorem mp_pos (π : Equiv.Perm (Fin n)) (k : Fin n) : 0 < Function.minimalPeriod π k :=
  Function.minimalPeriod_pos_of_mem_periodicPts (mem_periodic π k)

theorem orbit_eq (π : Equiv.Perm (Fin n)) (k : Fin n) :
    (univ.filter (fun m => π.SameCycle k m)) =
      (range (Function.minimalPeriod π k)).image (fun s => (π^[s]) k) := by
  ext m
  simp only [mem_filter, mem_univ, true_and, mem_image, mem_range]
  constructor
  · intro h
    obtain ⟨i, hi⟩ := h.exists_nat_pow_eq
    refine ⟨i % Function.minimalPeriod π k, Nat.mod_lt _ (mp_pos π k), ?_⟩
    rw [Function.iterate_mod_minimalPeriod_eq, Equiv.Perm.iterate_eq_pow, hi]
  · rintro ⟨s, -, rfl⟩
    rw [Equiv.Perm.iterate_eq_pow]
    exact Equiv.Perm.sameCycle_pow_right.2 (Equiv.Perm.SameCycle.refl _ _)

theorem injOn_orbit (π : Equiv.Perm (Fin n)) (k : Fin n) :
    Set.InjOn (fun s => (π^[s]) k) ↑(range (Function.minimalPeriod π k)) := by
  intro a ha b hb h
  exact Function.iterate_injOn_Iio_minimalPeriod (by simpa using ha) (by simpa using hb) h

theorem card_orbit (π : Equiv.Perm (Fin n)) (k : Fin n) :
    (univ.filter (fun m => π.SameCycle k m)).card = Function.minimalPeriod π k := by
  rw [orbit_eq, card_image_of_injOn (injOn_orbit π k), card_range]

theorem prod_orbit (π : Equiv.Perm (Fin n)) (k : Fin n) (τ : Fin n → C) :
    ∏ s ∈ range (Function.minimalPeriod π k), τ ((π^[s]) k) =
      ∏ m ∈ univ.filter (fun m => π.SameCycle k m), τ m := by
  rw [orbit_eq, prod_image (injOn_orbit π k)]

theorem filt_eq (π : Equiv.Perm (Fin n)) {i k : Fin n} (h : π.SameCycle i k) :
    univ.filter (fun m => π.SameCycle i m) = univ.filter (fun m => π.SameCycle k m) := by
  ext m
  simp only [mem_filter, mem_univ, true_and]
  exact ⟨fun h' => h.symm.trans h', fun h' => h.trans h'⟩

theorem tp {p : Fin n → Mat C N} (hp : Sys p) (τ : Fin n → C) (k : Fin n) :
    (∑ j, τ j • p j) * p k = τ k • p k := by
  rw [Finset.sum_mul, Finset.sum_eq_single k]
  · rw [smul_mul_assoc, (hp.1.idem k).eq]
  · intro j _ hj; rw [smul_mul_assoc, hp.1.ortho hj, smul_zero]
  · simp

theorem xpow {p : Fin n → Mat C N} {x : Mat C N} {π : Equiv.Perm (Fin n)}
    (hx : ∀ j, x * p j = p (π j) * x) (m : ℕ) (k : Fin n) :
    x ^ m * p k = p ((π^[m]) k) * x ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [pow_succ', mul_assoc, ih, ← mul_assoc, hx, mul_assoc, ← pow_succ',
      Function.iterate_succ_apply']

theorem ypow {p : Fin n → Mat C N} {x : Mat C N} {π : Equiv.Perm (Fin n)} (hp : Sys p)
    (hx : ∀ j, x * p j = p (π j) * x) (τ : Fin n → C) (m : ℕ) (k : Fin n) :
    (x * ∑ j, τ j • p j) ^ m * p k = (∏ s ∈ range m, τ ((π^[s]) k)) • (x ^ m * p k) := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [pow_succ', mul_assoc, ih, mul_smul_comm, xpow hx, prod_range_succ,
      ← smul_smul, pow_succ', mul_assoc x (x ^ m), xpow hx]
    congr 1
    rw [← mul_assoc, mul_assoc x, tp hp, mul_smul_comm, smul_mul_assoc]
    simp only [mul_assoc]

theorem split {p : Fin n → Mat C N} (hp : Sys p) (O : Finset (Fin n)) (v : Fin N → C)
    (hs : ∀ k, k ∉ O → p k *ᵥ v = 0) (M : Mat C N) : M *ᵥ v = ∑ k ∈ O, (M * p k) *ᵥ v := by
  have h1 : M *ᵥ v = ∑ k, (M * p k) *ᵥ v := by
    conv_lhs => rw [← mul_one M, ← hp.1.complete, Finset.mul_sum]
    rw [Matrix.sum_mulVec]
  rw [h1, ← Finset.sum_subset (subset_univ O)]
  intro k _ hk; rw [← mulVec_mulVec, hs k hk, mulVec_zero]

theorem powv (y : Mat C N) (l : C) (v : Fin N → C) (h : y *ᵥ v = l • v) (m : ℕ) :
    (y ^ m) *ᵥ v = l ^ m • v := by
  induction m with
  | zero => simp
  | succ m ih => rw [pow_succ, ← mulVec_mulVec, h, mulVec_smul, ih, smul_smul, pow_succ']

theorem root_of (M : Mat C N) (β : C) (v : Fin N → C) (hv : v ≠ 0) (h : M *ᵥ v = β • v) :
    M.charpoly.IsRoot β := by
  rw [Polynomial.IsRoot.def, eval_charpoly, ← exists_mulVec_eq_zero_iff]
  refine ⟨v, hv, ?_⟩
  rw [sub_mulVec, h]
  ext a
  simp [Matrix.scalar_apply]

theorem eig {p : Fin n → Mat C N} {x : Mat C N} {π : Equiv.Perm (Fin n)} (hp : Sys p)
    (hxu : IsUnit x) (hx : ∀ j, x * p j = p (π j) * x) (τ : Fin n → C) (hτ : ∀ j, τ j ≠ 0)
    (i : Fin n) (l : C) (v : Fin N → C) (hv : v ≠ 0) (hy : (x * ∑ j, τ j • p j) *ᵥ v = l • v)
    (hs : ∀ k, ¬ π.SameCycle i k → p k *ᵥ v = 0) :
    ∃ β : C, β ≠ 0 ∧ (x ^ (univ.filter (fun m => π.SameCycle i m)).card).charpoly.IsRoot β ∧
      l ^ (univ.filter (fun m => π.SameCycle i m)).card =
        (∏ k ∈ univ.filter (fun m => π.SameCycle i m), τ k) * β := by
  have hs' : ∀ k, k ∉ univ.filter (fun m => π.SameCycle i m) → p k *ᵥ v = 0 :=
    fun k hk => hs k (by simpa using hk)
  have hQ : (∏ k ∈ univ.filter (fun m => π.SameCycle i m), τ k) ≠ 0 :=
    prod_ne_zero_iff.2 fun k _ => hτ k
  have hk : ∀ k ∈ univ.filter (fun m => π.SameCycle i m),
      (x * ∑ j, τ j • p j) ^ (univ.filter (fun m => π.SameCycle i m)).card * p k =
        (∏ k ∈ univ.filter (fun m => π.SameCycle i m), τ k) •
          (x ^ (univ.filter (fun m => π.SameCycle i m)).card * p k) := by
    intro k hk
    have hik : π.SameCycle i k := by simpa using hk
    rw [ypow hp hx]
    congr 1
    rw [filt_eq π hik, card_orbit, prod_orbit]
  have key : (∏ k ∈ univ.filter (fun m => π.SameCycle i m), τ k) •
      (x ^ (univ.filter (fun m => π.SameCycle i m)).card *ᵥ v) =
        l ^ (univ.filter (fun m => π.SameCycle i m)).card • v := by
    rw [← powv _ _ _ hy, split hp _ v hs' (x ^ _),
      split hp _ v hs' ((x * ∑ j, τ j • p j) ^ _), smul_sum]
    refine sum_congr rfl fun k hk' => ?_
    rw [hk k hk', smul_mulVec]
  have hxc := hxu.pow (univ.filter (fun m => π.SameCycle i m)).card
  have hl : l ^ (univ.filter (fun m => π.SameCycle i m)).card ≠ 0 := by
    intro h0
    rw [h0, zero_smul] at key
    have h2 := (smul_eq_zero.1 key).resolve_left hQ
    exact hv ((mulVec_injective_iff_isUnit.2 hxc) (by rw [h2, mulVec_zero]))
  refine ⟨_, div_ne_zero hl hQ, root_of _ _ v hv ?_, by field_simp⟩
  rw [div_eq_inv_mul, ← smul_smul, ← key, smul_smul, inv_mul_cancel₀ hQ, one_smul]

theorem GenSpec_of : GenSpec := by
  intro C _ N n p x π hp hxu hx
  classical
  refine ⟨⋃ a : Fin (n + 1), ⋃ b : Fin (n + 1), Set.image2 (fun β β' => β' ^ (a : ℕ) / β ^ (b : ℕ))
    (↑(x ^ (a : ℕ)).charpoly.roots.toFinset) (↑(x ^ (b : ℕ)).charpoly.roots.toFinset), ?_, ?_⟩
  · exact Set.finite_iUnion fun a => Set.finite_iUnion fun b =>
      (Finset.finite_toSet _).image2 _ (Finset.finite_toSet _)
  intro τ hτ hml i j hij l v w hv hw hyv hyw hsv hsw
  obtain ⟨β, hβ0, hβr, hβ⟩ := eig hp hxu hx τ hτ i l v hv hyv hsv
  obtain ⟨β', hβ0', hβr', hβ'⟩ := eig hp hxu hx τ hτ j l w hw hyw hsw
  have hO : (univ.filter (fun m => π.SameCycle i m)).Nonempty := ⟨i, mem_filter.2 ⟨mem_univ _, Equiv.Perm.SameCycle.refl _ _⟩⟩
  have hO' : (univ.filter (fun m => π.SameCycle j m)).Nonempty := ⟨j, mem_filter.2 ⟨mem_univ _, Equiv.Perm.SameCycle.refl _ _⟩⟩
  have hd : Disjoint (univ.filter (fun m => π.SameCycle i m)) (univ.filter (fun m => π.SameCycle j m)) := by
    rw [Finset.disjoint_left]
    intro m h1 h2
    simp only [mem_filter, mem_univ, true_and] at h1 h2
    exact hij (h1.trans h2.symm)
  have hc : ∀ O : Finset (Fin n), O.card < n + 1 := fun O =>
    Nat.lt_succ_of_le ((card_le_univ O).trans (by simp))
  refine hml _ _ hO hO' hd (β' ^ (univ.filter (fun m => π.SameCycle i m)).card /
    β ^ (univ.filter (fun m => π.SameCycle j m)).card) ?_ ?_
  · refine Set.mem_iUnion.2 ⟨⟨_, hc (univ.filter (fun m => π.SameCycle i m))⟩, Set.mem_iUnion.2
      ⟨⟨_, hc (univ.filter (fun m => π.SameCycle j m))⟩, Set.mem_image2_of_mem ?_ ?_⟩⟩
    · simp only [Finset.mem_coe, Multiset.mem_toFinset]
      exact (Polynomial.mem_roots (Matrix.charpoly_monic _).ne_zero).2 hβr
    · simp only [Finset.mem_coe, Multiset.mem_toFinset]
      exact (Polynomial.mem_roots (Matrix.charpoly_monic _).ne_zero).2 hβr'
  · rw [div_mul_eq_mul_div, eq_div_iff (pow_ne_zero _ hβ0), ← mul_pow, ← hβ, ← pow_mul,
      ← mul_pow, mul_comm β', ← hβ', ← pow_mul, mul_comm]

end LateralTheory.DivDb.GenSpecProof
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.GenSpecProof =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.SumMulSum =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.SumMulSum", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Artinian.Algebra\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb.KeyPf
open LateralTheory.DivDb

variable {C : Type} [Field C] {N n : ℕ}

theorem sum_mul_p {p : Fin n → Mat C N} (hS : Sys p) (d : Fin n → C) (k : Fin n) :
    (∑ j, d j • p j) * p k = d k • p k := by
  rw [Finset.sum_mul, Finset.sum_eq_single k]
  · rw [smul_mul_assoc, (hS.1.idem k).eq]
  · intro j _ hj; rw [smul_mul_assoc, hS.1.ortho hj, smul_zero]
  · simp

theorem p_mul_sum {p : Fin n → Mat C N} (hS : Sys p) (d : Fin n → C) (k : Fin n) :
    p k * (∑ j, d j • p j) = d k • p k := by
  rw [Finset.mul_sum, Finset.sum_eq_single k]
  · rw [mul_smul_comm, (hS.1.idem k).eq]
  · intro j _ hj; rw [mul_smul_comm, hS.1.ortho (Ne.symm hj), smul_zero]
  · simp

theorem sum_mul_sum {p : Fin n → Mat C N} (hS : Sys p) (d d' : Fin n → C) :
    (∑ j, d j • p j) * (∑ j, d' j • p j) = ∑ j, (d j * d' j) • p j := by
  rw [Finset.sum_mul]; refine Finset.sum_congr rfl fun j _ => ?_
  rw [smul_mul_assoc, p_mul_sum hS, smul_smul]

theorem sum_inv {p : Fin n → Mat C N} (hS : Sys p) (d : Fin n → C) (hd : ∀ j, d j ≠ 0) :
    (∑ j, d j • p j) * (∑ j, (d j)⁻¹ • p j) = 1 ∧ (∑ j, (d j)⁻¹ • p j) * (∑ j, d j • p j) = 1 := by
  rw [sum_mul_sum hS, sum_mul_sum hS]
  simp only [mul_inv_cancel₀ (hd _), inv_mul_cancel₀ (hd _), one_smul, hS.1.complete, and_self]

theorem sum_mem {p : Fin n → Mat C N} (A : Subalgebra C (Mat C N)) (hp : ∀ i, p i ∈ A) (d : Fin n → C) :
    (∑ j, d j • p j) ∈ A :=
  Subalgebra.sum_mem _ fun j _ => Subalgebra.smul_mem _ (hp j) _

theorem inv_in (A : Subalgebra C (Mat C N)) {v : Mat C N} (hvA : v ∈ A) (hv : IsUnit v) :
    ∃ w ∈ A, v * w = 1 := by
  let a : A := ⟨v, hvA⟩
  have hinj : Function.Injective A.val := Subtype.val_injective
  have ha : a ∈ nonZeroDivisors A := comap_nonZeroDivisors_le_of_injective hinj hv.mem_nonZeroDivisors
  haveI : Module.Finite C A := FiniteDimensional.finiteDimensional_submodule (Subalgebra.toSubmodule A)
  have hu : IsUnit a := IsArtinianRing.isUnit_of_nonZeroDivisor_of_isIntegral' (R := C) ha
  obtain ⟨b, hb⟩ := hu
  refine ⟨((b⁻¹ : Aˣ) : A), ((b⁻¹ : Aˣ) : A).2, ?_⟩
  have := congrArg Subtype.val b.mul_inv
  rw [hb] at this; exact this

theorem zcl_sub (S : Set (Mat C N)) : S ⊆ Zcl S := fun x hx _ hf => hf x hx

theorem zcl_mono {S T : Set (Mat C N)} (h : S ⊆ T) : Zcl S ⊆ Zcl T :=
  fun y hy f hf => hy f fun x hx => hf x (h hx)

end LateralTheory.DivDb.KeyPf

namespace LateralTheory.DivDb.KeyPf
open LateralTheory.DivDb
variable {C : Type} [Field C] {N n : ℕ}

theorem sys_conj {p : Fin n → Mat C N} (hS : Sys p) (R Ri : Mat C N) (h1 : ∀ X, R * (Ri * X) = X)
    (h2 : ∀ X, Ri * (R * X) = X) : Sys (fun j => Ri * p j * R) := by
  have h2' : ∀ X, Ri * (R * X) = X := h2
  refine ⟨⟨⟨fun i => ?_, fun i j hij => ?_⟩, ?_⟩, fun i h => hS.2 i ?_⟩
  · show Ri * p i * R * (Ri * p i * R) = Ri * p i * R
    simp only [mul_assoc, h1]; rw [← mul_assoc (p i), (hS.1.idem i).eq]
  · show Ri * p i * R * (Ri * p j * R) = 0
    simp only [mul_assoc, h1]; rw [← mul_assoc (p i), hS.1.ortho hij]; simp
  · rw [← Finset.sum_mul, ← Finset.mul_sum, hS.1.complete, mul_one]
    have := h2 1; simpa using this
  · have := congrArg (fun Y => R * Y * Ri) h
    simp only [mul_assoc, h1, mul_zero, zero_mul] at this
    have e' : R * Ri = 1 := by simpa using h1 1
    rwa [e', mul_one] at this

theorem tv_zcl {ρS : Submonoid (Mat C N)} (hZM : ZclMul) (hUn : Unip) [CharZero C]
    (A : Subalgebra C (Mat C N)) (p : Fin n → Mat C N) (hS : Sys p)
    (hT : ∀ a ∈ A, ∀ j k, j ≠ k → p j * a * p k ∈ Tan (ρS : Set (Mat C N))) :
    ∀ u ∈ Tv A p, u ∈ Zcl (ρS : Set (Mat C N)) := by
  intro u hu
  induction hu using Submonoid.closure_induction with
  | mem x hx =>
    obtain ⟨a, ha, j, k, hjk, rfl⟩ := hx
    apply hUn C N ρS _ (hT a ha j k hjk)
    have : p k * p j = 0 := hS.1.ortho (Ne.symm hjk)
    calc p j * a * p k * (p j * a * p k) = p j * a * (p k * p j) * a * p k := by simp only [mul_assoc]
      _ = 0 := by rw [this]; simp
  | one => exact zcl_sub _ ρS.one_mem
  | mul x y _ _ hx hy => exact hZM C N ρS x hx y hy

theorem Key_of (hIC : IdemConj) (hMU : MatrixUnits₂) (hUF : UnitFactorization) (hTI : TanIndex) (hUn : Unip)
    (hZM : ZclMul) (hGS : GenSpec) (hTP : TorusPt) (hTD : TanDeg) (hCC : CycleCount) : Key := by
  intro Γ C _ _ _ _ N n ρ e p hDeg hLac hG U hU hUf g
  obtain ⟨hS, hX, hCo, hNN, hNo, _hKe, hOff⟩ := hG
  have hRiR : (ρ g⁻¹ : Mat C N) * (ρ g : Mat C N) = 1 := by
    rw [← Units.val_mul, ← map_mul, inv_mul_cancel, map_one, Units.val_one]
  have hRRi : (ρ g : Mat C N) * (ρ g⁻¹ : Mat C N) = 1 := by
    rw [← Units.val_mul, ← map_mul, mul_inv_cancel, map_one, Units.val_one]
  set R : Mat C N := (ρ g : Mat C N) with hRdef
  set Ri : Mat C N := (ρ g⁻¹ : Mat C N) with hRidef
  have h1 : ∀ X, R * (Ri * X) = X := fun X => by rw [← mul_assoc, hRRi, one_mul]
  have h2 : ∀ X, Ri * (R * X) = X := fun X => by rw [← mul_assoc, hRiR, one_mul]
  set A := env ρ
  have hSq := sys_conj hS R Ri h1 h2
  have hCq : Corner A (fun j => Ri * p j * R) := by
    refine ⟨fun i => ?_, fun a ha i => ?_⟩
    · have := hNo g⁻¹ (p i) (hCo.1 i); rwa [inv_inv] at this
    · obtain ⟨c, hc⟩ := hCo.2 _ (hNo g a ha) i
      refine ⟨c, ?_⟩
      calc Ri * p i * R * a * (Ri * p i * R) = Ri * (p i * (R * a * Ri) * p i) * R := by
            simp only [mul_assoc]
        _ = c • (Ri * p i * R) := by rw [hc]; simp only [mul_smul_comm, smul_mul_assoc]
  obtain ⟨v, hvA, hvU, π, hvπ, hπ⟩ := hIC C N n A p _ hS hCo hSq hCq hNN
  obtain ⟨E, hE⟩ := hMU C N n A p hS hCo hNN
  obtain ⟨u, huT, d, hd, hvud⟩ := hUF C N n A p E hS hE v hvA hvU
  obtain ⟨hDD', hD'D⟩ := sum_inv hS d hd
  have hu : u = v * ∑ j, (d j)⁻¹ • p j := by rw [hvud, mul_assoc, hDD', mul_one]
  have hup : ∀ j, u * p j = Ri * p (π j) * R * u := by
    intro j
    have e1 : u * p j = v * ((d j)⁻¹ • p j) := by rw [hu, mul_assoc, sum_mul_p hS]
    have e2 : Ri * p (π j) * R * u = v * ((d j)⁻¹ • p j) := by
      rw [hu, ← mul_assoc, ← hvπ j, mul_assoc, p_mul_sum hS]
    rw [e1, e2]
  have hxp : ∀ j, R * u * p j = p (π j) * (R * u) := by
    intro j; rw [mul_assoc, hup]; simp only [mul_assoc, h1]
  have hD'U : IsUnit (∑ j, (d j)⁻¹ • p j) := ⟨⟨_, _, hD'D, hDD'⟩, rfl⟩
  have huU : IsUnit u := by rw [hu]; exact hvU.mul hD'U
  have hxU : IsUnit (R * u) := (Units.isUnit (ρ g)).mul huU
  obtain ⟨B, hBf, hB⟩ := hGS C N n p (R * u) π hS hxU hxp
  have hXT := hTI Γ C N ρ U hU hUf hX
  obtain ⟨τ, hτ, htZ, hτB⟩ := hTP C N n (img ρ U) p e hS hLac hXT B hBf
  have hdisj := hB τ hτ hτB
  obtain ⟨hTT', hT'T⟩ := sum_inv hS τ hτ
  set t := ∑ j, τ j • p j with htdef
  have huZ : u ∈ Zcl (img ρ U : Set (Mat C N)) :=
    tv_zcl hZM hUn A p hS (fun a ha j k hjk => hTI Γ C N ρ U hU hUf (hOff a ha j k hjk)) u huT
  have hmZ := hZM C N (img ρ U) u huZ t htZ
  have htU : IsUnit t := ⟨⟨_, _, hTT', hT'T⟩, rfl⟩
  have hyU : IsUnit (R * u * t) := hxU.mul htU
  have hyp : ∀ j, R * u * t * p j = p (π j) * (R * u * t) := by
    intro j
    rw [mul_assoc, sum_mul_p hS, ← mul_assoc (p _), ← hxp, mul_assoc, mul_assoc, p_mul_sum hS]
    simp only [mul_assoc]
  have himg : ∀ y ∈ img ρ U, y ∈ img ρ ⊤ := fun y hy => by
    obtain ⟨w, -, rfl⟩ := Submonoid.mem_map.mp hy
    exact Submonoid.mem_map.mpr ⟨w, by simp, rfl⟩
  have hdegS : ∀ x ∈ img ρ ⊤, Deg n x := fun x hx => by
    obtain ⟨w, -, rfl⟩ := Submonoid.mem_map.mp hx
    exact hDeg w
  have hRZ : R ∈ Zcl (img ρ ⊤ : Set (Mat C N)) :=
    zcl_sub _ (Submonoid.mem_map.mpr ⟨g, by simp, rfl⟩)
  have hyZ : R * u * t ∈ Zcl (img ρ ⊤ : Set (Mat C N)) := by
    rw [mul_assoc]; exact hZM C N _ R hRZ _ (zcl_mono himg hmZ)
  have hyDeg := (hTD C N n (img ρ ⊤) hdegS).1 _ hyZ
  obtain ⟨hEig, hfix⟩ := hCC C N n p (R * u * t) π hS hyU hyp hyDeg hdisj
  refine ⟨⟨u * t, hmZ, by rw [← mul_assoc]; exact hEig⟩, ?_⟩
  rintro i ⟨a, haA, hne⟩
  have ha' : Ri * a * R ∈ A := by have := hNo g⁻¹ a haA; rwa [inv_inv] at this
  have hπi : π i = i := by
    refine hπ i ⟨Ri * a * R, ha', fun h => hne ?_⟩
    have := congrArg (fun Y => R * Y) h
    simp only [mul_assoc, h1, mul_zero] at this
    simpa [mul_assoc] using this
  obtain ⟨c, hc⟩ := hfix i hπi
  have hpy : p i * (R * u * t) = c • p i := by rw [← hc, hyp i, hπi]
  obtain ⟨vi, hviA, hvvi⟩ := inv_in A hvA hvU
  set D := ∑ j, d j • p j
  set T' := ∑ j, (τ j)⁻¹ • p j
  have hm1 : u * t * (T' * D * vi) = 1 := by
    have ht' : ∀ X, t * (T' * X) = X := fun X => by rw [← mul_assoc, hTT', one_mul]
    have hd' : ∀ X, (∑ j, (d j)⁻¹ • p j) * (D * X) = X := fun X => by rw [← mul_assoc, hD'D, one_mul]
    rw [hu]; simp only [mul_assoc, ht', hd', hvvi]
  refine ⟨c • (T' * D * vi), Subalgebra.smul_mem _ (Subalgebra.mul_mem _ (Subalgebra.mul_mem _
    (sum_mem A hCo.1 _) (sum_mem A hCo.1 _)) hviA) _, ?_⟩
  calc p i * R = p i * R * (u * t * (T' * D * vi)) := by rw [hm1, mul_one]
    _ = p i * (R * u * t) * (T' * D * vi) := by simp only [mul_assoc]
    _ = p i * (c • (T' * D * vi)) := by rw [hpy, smul_mul_assoc, mul_smul_comm]

end LateralTheory.DivDb.KeyPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.SumMulSum =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.TangentIndexDvd =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.TangentIndexDvd", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.OpenCoset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb
namespace TangentIndexDvd

section
variable {C : Type} [Field C] {N : ℕ}

theorem subset_zcl (S : Set (Mat C N)) : S ⊆ Zcl S := fun _ hx _ hf => hf _ hx

theorem ev_mul (x : Mat C N) (f g : MP C N) : ev x (f * g) = ev x f * ev x g := by
  simp only [ev, map_mul]

theorem ev_prod {ι : Type} (s : Finset ι) (x : Mat C N) (q : ι → MP C N) :
    ev x (∏ c ∈ s, q c) = ∏ c ∈ s, ev x (q c) := by
  simp only [ev, map_prod]

theorem dAt_mul (f g : MP C N) (x Y : Mat C N) :
    dAt (f * g) x Y = ev x f * dAt g x Y + ev x g * dAt f x Y := by
  unfold dAt
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [Derivation.leibniz]
  simp only [ev, smul_eq_mul, map_add (f := _), map_mul]
  ring

theorem mem_img {Γ : Type} [Group Γ] (ρ : Γ →* GL (Fin N) C) (U : Subgroup Γ) (x : Mat C N) :
    x ∈ img ρ U ↔ ∃ u ∈ U, ((ρ u : GL (Fin N) C) : Mat C N) = x := by
  simp [img, Submonoid.mem_map]

theorem coset_poly {Γ : Type} [Group Γ] (ρ : Γ →* GL (Fin N) C) (U : Subgroup Γ) [U.Normal]
    [U.FiniteIndex] (hChain : Chain) (hMul : ZclMul) (f : MP C N)
    (hf : f ∈ Van (img ρ U : Set (Mat C N))) (g : Γ) :
    ∃ q : MP C N, ev 1 q ≠ 0 ∧ ∀ γ : Γ, (γ : Γ ⧸ U) = (g : Γ ⧸ U) →
      ev ((ρ γ : GL (Fin N) C) : Mat C N) (f * q) = 0 := by
  by_cases h : ∃ q : MP C N, ev 1 q ≠ 0 ∧ ∀ γ : Γ, (γ : Γ ⧸ U) = (g : Γ ⧸ U) →
      ev ((ρ γ : GL (Fin N) C) : Mat C N) q = 0
  · obtain ⟨q, hq1, hq⟩ := h
    exact ⟨q, hq1, fun γ hγ => by rw [ev_mul, hq γ hγ, mul_zero]⟩
  have h' : ∀ q : MP C N, (∀ γ : Γ, (γ : Γ ⧸ U) = (g : Γ ⧸ U) →
      ev ((ρ γ : GL (Fin N) C) : Mat C N) q = 0) → ev 1 q = 0 := fun q hq => by
    by_contra hne; exact h ⟨q, hne, hq⟩
  have hinv : ((ρ g⁻¹ : GL (Fin N) C) : Mat C N) ∈ Zcl (img ρ U : Set (Mat C N)) := by
    intro h0 hh0
    obtain ⟨h1, hev, -⟩ := hChain C N N (LinearMap.mulLeft C ((ρ g⁻¹ : GL (Fin N) C) : Mat C N)) h0
    have key := h' h1 (fun γ hγ => by
      rw [hev, LinearMap.mulLeft_apply]
      apply hh0
      rw [SetLike.mem_coe, mem_img]
      refine ⟨g⁻¹ * γ, QuotientGroup.eq.mp hγ.symm, ?_⟩
      rw [map_mul, Units.val_mul])
    rwa [hev, LinearMap.mulLeft_apply, mul_one] at key
  obtain ⟨k, hk, hkU⟩ : ∃ k : ℕ, 0 < k ∧ g ^ k ∈ U := by
    have : Finite (Γ ⧸ U) := Subgroup.finite_quotient_of_finiteIndex
    refine ⟨orderOf (g : Γ ⧸ U), orderOf_pos _, ?_⟩
    rw [← QuotientGroup.eq_one_iff, QuotientGroup.mk_pow, pow_orderOf_eq_one]
  have hpow : ∀ m : ℕ, ((ρ g⁻¹ : GL (Fin N) C) : Mat C N) ^ m ∈ Zcl (img ρ U : Set (Mat C N)) := by
    intro m
    induction m with
    | zero => rw [pow_zero]; exact subset_zcl _ (img ρ U).one_mem
    | succ m ih => rw [pow_succ]; exact hMul C N _ _ ih _ hinv
  have hg : ((ρ g : GL (Fin N) C) : Mat C N) ∈ Zcl (img ρ U : Set (Mat C N)) := by
    have e : ((ρ g : GL (Fin N) C) : Mat C N) = ((ρ (g ^ k) : GL (Fin N) C) : Mat C N) *
        ((ρ g⁻¹ : GL (Fin N) C) : Mat C N) ^ (k - 1) := by
      rw [← Units.val_pow_eq_pow_val, ← Units.val_mul, ← map_pow, ← map_mul]
      obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
      congr 2
      simp [pow_succ', mul_assoc, inv_pow]
    rw [e]
    exact hMul C N _ _ (subset_zcl _ ((mem_img ρ U _).2 ⟨_, hkU, rfl⟩)) _ (hpow _)
  refine ⟨1, by simp [ev], fun γ hγ => ?_⟩
  rw [mul_one]
  have hγU : g⁻¹ * γ ∈ U := QuotientGroup.eq.mp hγ.symm
  have e : ((ρ γ : GL (Fin N) C) : Mat C N) = ((ρ g : GL (Fin N) C) : Mat C N) *
      ((ρ (g⁻¹ * γ) : GL (Fin N) C) : Mat C N) := by
    rw [← Units.val_mul, ← map_mul, mul_inv_cancel_left]
  rw [e]
  exact hMul C N _ _ hg _ (subset_zcl _ ((mem_img ρ U _).2 ⟨_, hγU, rfl⟩)) f hf

end

theorem TanIndex_of (hChain : Chain) (hMul : ZclMul) : TanIndex := by
  classical
  intro Γ C _ _ N ρ U hN hU Y hY
  have : Finite (Γ ⧸ U) := Subgroup.finite_quotient_of_finiteIndex
  haveI : Fintype (Γ ⧸ U) := Fintype.ofFinite _
  have hY' : ∀ F ∈ Van (img ρ ⊤ : Set (Mat C N)), dAt F 1 Y = 0 := hY
  show ∀ f ∈ Van (img ρ U : Set (Mat C N)), dAt f 1 Y = 0
  intro f hf
  have hc : ∀ c : Γ ⧸ U, ∃ q : MP C N, ev 1 q ≠ 0 ∧ ∀ γ : Γ, (γ : Γ ⧸ U) = c →
      ev ((ρ γ : GL (Fin N) C) : Mat C N) (f * q) = 0 := by
    intro c
    obtain ⟨g, rfl⟩ := QuotientGroup.mk_surjective c
    exact coset_poly ρ U hChain hMul f hf g
  choose q hq1 hq using hc
  have hF : f * ∏ c, q c ∈ Van (img ρ ⊤ : Set (Mat C N)) := by
    intro x hx
    obtain ⟨γ, -, rfl⟩ := (mem_img ρ ⊤ x).1 hx
    have h0 := hq (γ : Γ ⧸ U) γ rfl
    rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ (γ : Γ ⧸ U)), ← mul_assoc,
      ev_mul, h0, zero_mul]
  have key := hY' _ hF
  rw [dAt_mul] at key
  have hf1 : ev 1 f = 0 := hf 1 (img ρ U).one_mem
  have hG1 : ev 1 (∏ c, q c) ≠ 0 := by
    rw [ev_prod]; exact Finset.prod_ne_zero_iff.2 fun c _ => hq1 c
  rw [hf1, zero_mul, zero_add] at key
  exact (mul_eq_zero.1 key).resolve_left hG1

end TangentIndexDvd
end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.TangentIndexDvd =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.TorusPtPf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.TorusPtPf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.OpenCoset\npublic import Mathlib.RingTheory.PowerSeries.Exp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.MvPolynomial.Monad\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb.TorusPtPf
open LateralTheory.DivDb

variable {C : Type} [Field C] [CharZero C]

noncomputable def E (a : C) : PowerSeries C := PowerSeries.rescale a (PowerSeries.exp C)

lemma coeff_E (a : C) (k : ℕ) : PowerSeries.coeff k (E a) = a ^ k * (k.factorial : C)⁻¹ := by
  simp [E, PowerSeries.coeff_rescale, PowerSeries.coeff_exp]

lemma E_add (a b : C) : E a * E b = E (a + b) := PowerSeries.exp_mul_exp_eq_exp_add a b

lemma E_zero : E (0 : C) = 1 := by
  ext k; rcases k with _ | k <;> simp [coeff_E, PowerSeries.coeff_one]

lemma E_prod {ι : Type} (s : Finset ι) (a : ι → C) : ∏ i ∈ s, E (a i) = E (∑ i ∈ s, a i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [E_zero]
  | insert i s hi ih => rw [Finset.prod_insert hi, Finset.sum_insert hi, ih, E_add]

lemma E_pow (a : C) (m : ℕ) : E a ^ m = E ((m : C) * a) := by
  induction m with
  | zero => simp [E_zero]
  | succ m ih => rw [pow_succ, ih, E_add]; congr 1; push_cast; ring

lemma E_ne (a b c : C) (h : E a - PowerSeries.C b * E c = 0) : b = 1 ∧ a = c := by
  have h0 := congrArg (PowerSeries.coeff 0) h
  have h1 := congrArg (PowerSeries.coeff 1) h
  simp only [map_sub, PowerSeries.coeff_C_mul, coeff_E, map_zero] at h0 h1
  simp at h0 h1
  have hb : b = 1 := by linear_combination -h0
  refine ⟨hb, ?_⟩
  rw [hb] at h1
  linear_combination h1

lemma pow_sys {N n : ℕ} {p : Fin n → Mat C N} (hp : Sys p) (e : Fin n → C) (k : ℕ) :
    (∑ i, e i • p i) ^ k = ∑ i, e i ^ k • p i := by
  induction k with
  | zero => simpa using hp.1.complete.symm
  | succ k ih =>
    rw [pow_succ, ih, Finset.sum_mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.sum_eq_single i]
    · rw [smul_mul_smul_comm, (hp.1.idem i).eq, pow_succ]
    · intro j _ hji; rw [smul_mul_smul_comm, hp.1.ortho hji.symm, smul_zero]
    · simp

lemma entry_exp {N n : ℕ} {p : Fin n → Mat C N} (hp : Sys p) (e : Fin n → C) (a b : Fin N) :
    (PowerSeries.mk fun k => ((k.factorial : C)⁻¹ • (∑ i, e i • p i) ^ k) a b) =
      ∑ j, PowerSeries.C (p j a b) * E (e j) := by
  ext k

  simp only [PowerSeries.coeff_mk, map_sum, PowerSeries.coeff_C_mul, coeff_E, pow_sys hp, Matrix.smul_apply,
  Matrix.sum_apply, smul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => by ring

noncomputable def bin {n : ℕ} (q : Finset (Fin n) × Finset (Fin n) × C) : MvPolynomial (Fin n) C :=
  (∏ i ∈ q.1, MvPolynomial.X i) ^ q.2.1.card - MvPolynomial.C q.2.2 * (∏ i ∈ q.2.1, MvPolynomial.X i) ^ q.1.card

theorem TorusPt_of (hE : ExpVan) (hS : SpecPt) : TorusPt := by
  intro C _ _ _ N n S p e hp hlac hX B hB
  classical
  let x : Fin n → PowerSeries C := fun j => E (e j)
  let Q : Set (Finset (Fin n) × Finset (Fin n) × C) :=
    {q | q.1.Nonempty ∧ q.2.1.Nonempty ∧ Disjoint q.1 q.2.1 ∧ q.2.2 ∈ B}
  let G : Set (MvPolynomial (Fin n) C) := Set.range (fun j => MvPolynomial.X j) ∪ bin '' Q
  have hQ : Q.Finite := (Set.finite_univ.prod (Set.finite_univ.prod hB)).subset fun q hq => by
    simp only [Set.mem_prod, Set.mem_univ, true_and]; exact hq.2.2.2
  have hG : G.Finite := (Set.finite_range _).union (hQ.image _)
  have hxg : ∀ g ∈ G, MvPolynomial.aeval x g ≠ 0 := by
    rintro g (⟨j, rfl⟩ | ⟨q, ⟨h1, h2, h3, h4⟩, rfl⟩)
    · intro h0
      have := congrArg (PowerSeries.coeff 0) h0
      simp [x, coeff_E] at this
    · intro h0
      simp only [bin, map_sub, map_mul, map_pow, map_prod, MvPolynomial.aeval_X, MvPolynomial.aeval_C, x, E_prod,
        E_pow] at h0
      have h0' : E ((q.2.1.card : C) * ∑ i ∈ q.1, e i) - PowerSeries.C q.2.2 * E ((q.1.card : C) * ∑ i ∈ q.2.1, e i) = 0 := by
        simpa using h0
      exact hlac _ _ h1 h2 h3 (E_ne _ _ _ h0').2
  obtain ⟨y, hy1, hy2⟩ := hS C (PowerSeries C) (Fin n) x G hG hxg
  refine ⟨y, fun j => ?_, fun f hf => ?_, fun O O' hO hO' hd b hb => ?_⟩
  · have := hy2 _ (Or.inl ⟨j, rfl⟩); simpa using this
  · have h := hE C N S _ hX f hf
    have hent : (fun ab : Fin N × Fin N => PowerSeries.mk fun k =>
          ((k.factorial : C)⁻¹ • (∑ i, e i • p i) ^ k) ab.1 ab.2)
        = fun ab => MvPolynomial.aeval x (∑ j, MvPolynomial.C (p j ab.1 ab.2) * MvPolynomial.X j) := by
      funext ab; rw [entry_exp hp]; simp [x]
    rw [hent, ← MvPolynomial.aeval_bind₁] at h
    have h2 := hy1 _ h
    have h3 : MvPolynomial.aeval y
        ((MvPolynomial.bind₁ fun ab : Fin N × Fin N => ∑ j, MvPolynomial.C (p j ab.1 ab.2) * MvPolynomial.X j) f) = 0 := by
      exact h2
    rw [MvPolynomial.aeval_bind₁] at h3
    unfold ev
    rw [show (fun q : Fin N × Fin N => (∑ j, y j • p j) q.1 q.2) = fun ab =>
        MvPolynomial.aeval y (∑ j, MvPolynomial.C (p j ab.1 ab.2) * MvPolynomial.X j) from
      funext fun ab => by simp [Matrix.sum_apply, mul_comm]]
    exact h3
  · intro h
    apply hy2 _ (Or.inr ⟨(O, O', b), ⟨hO, hO', hd, hb⟩, rfl⟩)
    simp only [bin, map_sub, map_mul, map_pow, map_prod, MvPolynomial.eval_X, MvPolynomial.eval_C]
    rw [h]; ring
end LateralTheory.DivDb.TorusPtPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.TorusPtPf =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.UnipotentPartTrivial =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.UnipotentPartTrivial", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.OpenCoset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
namespace LateralTheory.DivDb.UnipotentPartTrivial
open LateralTheory.DivDb

theorem pow_vanish {C : Type} [Field C] {N : ℕ} (E : Mat C N) (h : E * E = 0) (k : ℕ) (hk : 2 ≤ k) :
    E ^ k = 0 := by
  obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le hk
  rw [pow_add, sq, h, zero_mul]

theorem series_eq {C : Type} [Field C] {N : ℕ} (E : Mat C N) (h : E * E = 0) (p : Fin N × Fin N) :
    PowerSeries.mk (fun k => ((k.factorial : C)⁻¹ • E ^ k) p.1 p.2)
      = ((Polynomial.C ((1 : Mat C N) p.1 p.2) + Polynomial.X * Polynomial.C (E p.1 p.2) : Polynomial C) :
          PowerSeries C) := by
  ext k
  rw [PowerSeries.coeff_mk, Polynomial.coeff_coe]
  rcases k with _ | _ | k
  · simp
  · simp
  · rw [pow_vanish E h _ (by omega)]
    simp

theorem Unip_of (h : ExpVan) : Unip := by
  intro C _ _ N S E hE hEE f hf
  have h0 := h C N S E hE f hf
  let g : Fin N × Fin N → Polynomial C := fun p =>
    Polynomial.C ((1 : Mat C N) p.1 p.2) + Polynomial.X * Polynomial.C (E p.1 p.2)
  have h1 : MvPolynomial.aeval g f = 0 := by
    apply Polynomial.coe_injective
    rw [Polynomial.coe_zero]
    have hc := congrArg (fun φ => φ f)
      (MvPolynomial.comp_aeval (R := C) g (Polynomial.coeToPowerSeries.algHom C))
    simp only [AlgHom.comp_apply] at hc
    simp only [Polynomial.coeToPowerSeries.algHom_apply, PowerSeries.map_id, Algebra.algebraMap_self] at hc
    simp only [id] at hc
    have hs : (fun p : Fin N × Fin N => PowerSeries.mk (fun k => ((k.factorial : C)⁻¹ • E ^ k) p.1 p.2))
        = fun i => ((g i : Polynomial C) : PowerSeries C) := funext (series_eq E hEE)
    rw [hs] at h0
    exact hc.trans h0
  have h2 := congrArg (fun q => Polynomial.aeval (1 : C) q) h1
  simp only [map_zero] at h2
  have hc := congrArg (fun φ => φ f) (MvPolynomial.comp_aeval (R := C) g (Polynomial.aeval (1 : C)))
  simp only [AlgHom.comp_apply] at hc
  rw [hc] at h2
  have h3 : (fun p : Fin N × Fin N => Polynomial.aeval (1 : C) (g p)) = fun p => (1 + E) p.1 p.2 := by
    funext p; simp [g]
  rw [h3] at h2
  unfold ev
  exact h2

end LateralTheory.DivDb.UnipotentPartTrivial
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.UnipotentPartTrivial =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.UnitFactorizationTheorem =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.UnitFactorizationTheorem", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace LateralTheory.DivDb.UnitFactorizationTheorem
open LateralTheory.DivDb

variable {C : Type} [Field C] {N n : ℕ}

noncomputable def Dg (p : Fin n → Mat C N) (d : Fin n → C) : Mat C N := ∑ j, d j • p j

def S (A : Subalgebra C (Mat C N)) (p : Fin n → Mat C N) : Set (Mat C N) :=
  {x | ∃ u ∈ Tv A p, ∃ d : Fin n → C, (∀ j, d j ≠ 0) ∧ x = u * Dg p d}

noncomputable def zT (p : Fin n → Mat C N) (T : Finset (Fin n)) : Mat C N := ∑ j ∈ T, p j

def Closed (E : Fin n → Fin n → Mat C N) (T : Finset (Fin n)) : Prop :=
  ∀ i j, E i j ≠ 0 → (i ∈ T ↔ j ∈ T)

section basic
variable {p : Fin n → Mat C N}

lemma pp (hp : Sys p) (i j : Fin n) : p i * p j = if i = j then p i else 0 := by
  split_ifs with h
  · subst h; exact (hp.1.idem i).eq
  · exact hp.1.ortho h

lemma sum_p (hp : Sys p) : ∑ j, p j = 1 := hp.1.complete

lemma Dg_p (hp : Sys p) (d : Fin n → C) (i : Fin n) : Dg p d * p i = d i • p i := by
  simp [Dg, Finset.sum_mul, pp hp]

lemma p_Dg (hp : Sys p) (d : Fin n → C) (i : Fin n) : p i * Dg p d = d i • p i := by
  simp [Dg, Finset.mul_sum, pp hp]

lemma Dg_mul (hp : Sys p) (a b : Fin n → C) : Dg p a * Dg p b = Dg p (a * b) := by
  conv_lhs => rw [Dg, Finset.sum_mul]
  simp only [smul_mul_assoc, p_Dg hp, smul_smul]
  simp [Dg, Pi.mul_apply]

lemma Dg_one (hp : Sys p) : Dg p 1 = 1 := by simp [Dg, sum_p hp]

lemma zT_p (hp : Sys p) (T : Finset (Fin n)) (i : Fin n) :
    zT p T * p i = if i ∈ T then p i else 0 := by
  simp [zT, Finset.sum_mul, pp hp]

lemma p_zT (hp : Sys p) (T : Finset (Fin n)) (i : Fin n) :
    p i * zT p T = if i ∈ T then p i else 0 := by
  simp [zT, Finset.mul_sum, pp hp]

lemma zT_idem (hp : Sys p) (T : Finset (Fin n)) : zT p T * zT p T = zT p T := by
  have h : zT p T * zT p T = ∑ j ∈ T, zT p T * p j := Finset.mul_sum _ _ _
  rw [h]
  exact Finset.sum_congr rfl fun j hj => by rw [zT_p hp, if_pos hj]

lemma zT_orth (hp : Sys p) {T T' : Finset (Fin n)} (hd : Disjoint T T') : zT p T * zT p T' = 0 := by
  conv_lhs => rw [show zT p T' = ∑ j ∈ T', p j from rfl, Finset.mul_sum]
  exact Finset.sum_eq_zero fun j hj => by rw [zT_p hp, if_neg (Finset.disjoint_right.mp hd hj)]

lemma decomp (hp : Sys p) (a : Mat C N) : a = ∑ i, ∑ j, p i * a * p j := by
  conv_lhs => rw [← one_mul a, ← mul_one (1 * a), ← sum_p hp]
  simp [Finset.sum_mul, Finset.mul_sum, mul_assoc]
  exact Finset.sum_comm

variable {A : Subalgebra C (Mat C N)}

lemma conj_Tv (hp : Sys p) {d : Fin n → C} (hd : ∀ j, d j ≠ 0) {u : Mat C N} (hu : u ∈ Tv A p) :
    Dg p d * u * Dg p d⁻¹ ∈ Tv A p := by
  have hdd : d * d⁻¹ = 1 := funext fun j => mul_inv_cancel₀ (hd j)
  have hdd' : d⁻¹ * d = 1 := funext fun j => inv_mul_cancel₀ (hd j)
  induction hu using Submonoid.closure_induction with
  | mem x hx =>
    obtain ⟨a, ha, j, k, hjk, rfl⟩ := hx
    apply Submonoid.subset_closure
    refine ⟨(d j * (d k)⁻¹) • a, A.smul_mem ha _, j, k, hjk, ?_⟩
    have e1 : Dg p d * (p j * a * p k) * Dg p d⁻¹ = (d j * (d k)⁻¹) • (p j * a * p k) := by
      rw [← mul_assoc, ← mul_assoc, Dg_p hp, mul_assoc _ (p k), p_Dg hp]
      simp only [smul_mul_assoc, mul_smul_comm, smul_smul, Pi.inv_apply]
      rw [mul_comm ((d k)⁻¹)]
    rw [mul_add, add_mul, mul_one, Dg_mul hp, hdd, Dg_one hp, e1, mul_smul_comm, smul_mul_assoc]
  | one => rw [mul_one, Dg_mul hp, hdd, Dg_one hp]; exact one_mem _
  | mul x y _ _ hx hy =>
    have h' : Dg p d⁻¹ * Dg p d = 1 := by rw [Dg_mul hp, hdd', Dg_one hp]
    have : Dg p d * (x * y) * Dg p d⁻¹ = (Dg p d * x * Dg p d⁻¹) * (Dg p d * y * Dg p d⁻¹) := by
      simp only [mul_assoc]; rw [← mul_assoc (Dg p d⁻¹) (Dg p d), h', one_mul]
    rw [this]; exact mul_mem hx hy

lemma S_mul (hp : Sys p) {x y : Mat C N} (hx : x ∈ S A p) (hy : y ∈ S A p) : x * y ∈ S A p := by
  obtain ⟨u, hu, d, hd, rfl⟩ := hx
  obtain ⟨u', hu', d', hd', rfl⟩ := hy
  refine ⟨u * (Dg p d * u' * Dg p d⁻¹), mul_mem hu (conj_Tv hp hd hu'), d * d',
    fun j => mul_ne_zero (hd j) (hd' j), ?_⟩
  have hdd' : d⁻¹ * d = 1 := funext fun j => inv_mul_cancel₀ (hd j)
  have h' : Dg p d⁻¹ * Dg p d = 1 := by rw [Dg_mul hp, hdd', Dg_one hp]
  rw [← Dg_mul hp]
  simp only [mul_assoc]; rw [← mul_assoc (Dg p d⁻¹) (Dg p d), h', one_mul]

lemma one_S (hp : Sys p) : (1 : Mat C N) ∈ S A p :=
  ⟨1, one_mem _, 1, fun _ => one_ne_zero, by rw [Dg_one hp, one_mul]⟩

lemma Tv_S (hp : Sys p) {u : Mat C N} (hu : u ∈ Tv A p) : u ∈ S A p :=
  ⟨u, hu, 1, fun _ => one_ne_zero, by rw [Dg_one hp, mul_one]⟩

lemma Dg_S {d : Fin n → C} (hd : ∀ j, d j ≠ 0) : Dg p d ∈ S A p :=
  ⟨1, one_mem _, d, hd, (one_mul _).symm⟩

end basic

section mu
variable {p : Fin n → Mat C N} {A : Subalgebra C (Mat C N)} {E : Fin n → Fin n → Mat C N}

lemma p_E (hp : Sys p) (hE : MUnits A p E) (k i j : Fin n) :
    p k * E i j = if k = i then E i j else 0 := by
  have h := hE.2.2.1 i j
  conv_lhs => rw [← h]
  rw [← mul_assoc, ← mul_assoc, pp hp]
  split_ifs with h'
  · subst h'; exact h
  · simp

lemma E_p (hp : Sys p) (hE : MUnits A p E) (i j k : Fin n) :
    E i j * p k = if j = k then E i j else 0 := by
  have h := hE.2.2.1 i j
  conv_lhs => rw [← h]
  rw [mul_assoc, pp hp]
  split_ifs with h'
  · subst h'; exact h
  · simp

lemma E_E_ne (hp : Sys p) (hE : MUnits A p E) {i j k l : Fin n} (hjk : j ≠ k) : E i j * E k l = 0 := by
  have h := hE.2.2.1 k l
  conv_lhs => rw [← h]
  rw [← mul_assoc, ← mul_assoc, E_p hp hE, if_neg hjk, zero_mul, zero_mul]

lemma zT_E (hp : Sys p) (hE : MUnits A p E) (T : Finset (Fin n)) (i j : Fin n) :
    zT p T * E i j = if i ∈ T then E i j else 0 := by
  have h : p i * E i j = E i j := by rw [p_E hp hE, if_pos rfl]
  conv_lhs => rw [← h]
  rw [← mul_assoc, zT_p hp]
  split_ifs <;> simp [h]

lemma E_zT (hp : Sys p) (hE : MUnits A p E) (T : Finset (Fin n)) (i j : Fin n) :
    E i j * zT p T = if j ∈ T then E i j else 0 := by
  have h : E i j * p j = E i j := by rw [E_p hp hE, if_pos rfl]
  conv_lhs => rw [← h]
  rw [mul_assoc, p_zT hp]
  split_ifs <;> simp [h]

lemma zT_comm (hp : Sys p) (hE : MUnits A p E) {T : Finset (Fin n)} (hT : Closed E T)
    {a : Mat C N} (ha : a ∈ A) : zT p T * a = a * zT p T := by
  rw [decomp hp a]
  simp only [Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  obtain ⟨c, hc⟩ := hE.2.2.2.2.2 a ha i j
  rw [hc, mul_smul_comm, smul_mul_assoc, zT_E hp hE, E_zT hp hE]
  by_cases hij : E i j = 0
  · simp [hij]
  · simp only [hT i j hij]

open Classical in
noncomputable def Bk (E : Fin n → Fin n → Mat C N) (r : Fin n) : Finset (Fin n) :=
  Finset.univ.filter (fun j => E r j ≠ 0)

lemma mem_Bk {r j : Fin n} : j ∈ Bk E r ↔ E r j ≠ 0 := by simp [Bk]

lemma E_ne (hE : MUnits A p E) {i j k : Fin n} (h1 : E i j ≠ 0) (h2 : E j k ≠ 0) : E i k ≠ 0 :=
  (hE.2.2.2.2.1 i j k h1 h2).2

lemma closed_Bk (hE : MUnits A p E) (r : Fin n) : Closed E (Bk E r) := fun i j hij => by
  simp only [mem_Bk]
  exact ⟨fun h => E_ne hE h hij, fun h => E_ne hE h (hE.2.2.2.1 i j hij)⟩

lemma closed_sdiff {T T' : Finset (Fin n)} (h : Closed E T) (h' : Closed E T') : Closed E (T \ T') :=
  fun i j hij => by simp only [Finset.mem_sdiff, h i j hij, h' i j hij]

end mu

section block
variable {p : Fin n → Mat C N} {A : Subalgebra C (Mat C N)} {E : Fin n → Fin n → Mat C N} {r : Fin n}

noncomputable def X (E : Fin n → Fin n → Mat C N) (r : Fin n)
    (M : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C) : Mat C N := ∑ i, ∑ j, M i j • E i j

noncomputable def Ψ (p : Fin n → Mat C N) (E : Fin n → Fin n → Mat C N) (r : Fin n)
    (M : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C) : Mat C N := 1 - zT p (Bk E r) + X E r M

lemma zT_Bk : zT p (Bk E r) = ∑ j : {j // j ∈ Bk E r}, p j :=
  (Finset.sum_coe_sort _ _).symm

lemma EK (hE : MUnits A p E) (i j : {j // j ∈ Bk E r}) : E i j ≠ 0 :=
  E_ne hE (hE.2.2.2.1 r i (mem_Bk.mp i.2)) (mem_Bk.mp j.2)

lemma EE_same (hE : MUnits A p E) (i j l : {j // j ∈ Bk E r}) : E i j * E j l = E i l :=
  (hE.2.2.2.2.1 i j l (EK hE i j) (EK hE j l)).1

lemma EE_ne (hp : Sys p) (hE : MUnits A p E) (i : {j // j ∈ Bk E r}) {j k : {j // j ∈ Bk E r}}
    (l : {j // j ∈ Bk E r}) (hjk : j ≠ k) : E i j * E k l = 0 :=
  E_E_ne hp hE (fun h => hjk (Subtype.ext h))

lemma X_mul (hp : Sys p) (hE : MUnits A p E) (M M' : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C) :
    X E r (M * M') = X E r M * X E r M' := by
  rw [X, X, X, Finset.sum_mul]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_mul]
  simp only [Matrix.mul_apply, Finset.sum_smul]
  conv_lhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  symm
  rw [Finset.mul_sum, Finset.sum_eq_single j]
  · rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun l _ => by rw [smul_mul_smul_comm, EE_same hE]
  · intro k _ hk
    rw [Finset.mul_sum]
    exact Finset.sum_eq_zero fun l _ => by rw [smul_mul_smul_comm, EE_ne hp hE i l (Ne.symm hk), smul_zero]
  · simp

lemma X_add (M M' : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C) : X E r (M + M') = X E r M + X E r M' := by
  simp [X, add_smul, Finset.sum_add_distrib]

lemma X_zero : X E r 0 = 0 := by simp [X]

lemma X_one (hE : MUnits A p E) : X E r 1 = zT p (Bk E r) := by
  rw [zT_Bk]
  simp [X, Matrix.one_apply, ite_smul, hE.2.1]

lemma X_single (i j : {j // j ∈ Bk E r}) (c : C) : X E r (Matrix.single i j c) = c • E i j := by
  simp [X, Matrix.single_apply, ite_smul, ite_and]

lemma X_diag (hE : MUnits A p E) (D : {j // j ∈ Bk E r} → C) :
    X E r (Matrix.diagonal D) = ∑ i : {j // j ∈ Bk E r}, D i • p i := by
  simp [X, Matrix.diagonal_apply, ite_smul, hE.2.1]

lemma zT_X (hp : Sys p) (hE : MUnits A p E) (M : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C) :
    zT p (Bk E r) * X E r M = X E r M := by
  simp only [X, Finset.mul_sum, mul_smul_comm, zT_E hp hE]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by rw [if_pos i.2]

lemma X_zT (hp : Sys p) (hE : MUnits A p E) (M : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C) :
    X E r M * zT p (Bk E r) = X E r M := by
  simp only [X, Finset.sum_mul, smul_mul_assoc, E_zT hp hE]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by rw [if_pos j.2]

lemma Ψ_mul (hp : Sys p) (hE : MUnits A p E) (M M' : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C) :
    Ψ p E r (M * M') = Ψ p E r M * Ψ p E r M' := by
  simp only [Ψ, X_mul hp hE, mul_add, add_mul, mul_sub, sub_mul, one_mul, mul_one, zT_idem hp,
    zT_X hp hE, X_zT hp hE]
  abel

lemma pXp (hp : Sys p) (hE : MUnits A p E) (M : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C)
    (i j : {j // j ∈ Bk E r}) : p i * X E r M * p j = M i j • E i j := by
  simp only [X, Finset.mul_sum, Finset.sum_mul, mul_smul_comm, smul_mul_assoc, p_E hp hE, E_p hp hE,
    ite_mul, zero_mul, Subtype.val_inj]
  simp [smul_ite, Finset.sum_ite_eq, Finset.sum_ite_eq']

end block

section final
variable {p : Fin n → Mat C N} {A : Subalgebra C (Mat C N)} {E : Fin n → Fin n → Mat C N} {r : Fin n}

lemma Ψ_trans (hp : Sys p) (hE : MUnits A p E) (t : TransvectionStruct {j // j ∈ Bk E r} C) :
    Ψ p E r t.toMatrix ∈ S A p := by
  apply Tv_S hp
  have h : Ψ p E r t.toMatrix = 1 + p t.i * (t.c • E t.i t.j) * p t.j := by
    rw [Ψ, TransvectionStruct.toMatrix, transvection, X_add, X_one hE, X_single, mul_smul_comm,
      smul_mul_assoc, hE.2.2.1]
    abel
  rw [h]
  exact Submonoid.subset_closure
    ⟨_, A.smul_mem (hE.1 _ _) _, t.i, t.j, fun h => t.hij (Subtype.ext h), rfl⟩

noncomputable def dd (E : Fin n → Fin n → Mat C N) (r : Fin n) (D : {j // j ∈ Bk E r} → C) :
    Fin n → C := fun j => if h : j ∈ Bk E r then D ⟨j, h⟩ else 1

lemma Ψ_diag (hp : Sys p) (hE : MUnits A p E) (D : {j // j ∈ Bk E r} → C) :
    Ψ p E r (Matrix.diagonal D) = Dg p (dd E r D) := by
  have h1 := Finset.sum_add_sum_compl (Bk E r) p
  have h2 := Finset.sum_add_sum_compl (Bk E r) (fun j => dd E r D j • p j)
  rw [sum_p hp] at h1
  have h3 : ∑ j ∈ Bk E r, dd E r D j • p j = ∑ j : {j // j ∈ Bk E r}, D j • p j := by
    rw [← Finset.sum_coe_sort]
    exact Finset.sum_congr rfl fun j _ => by simp [dd, j.2]
  have h4 : ∑ j ∈ (Bk E r)ᶜ, dd E r D j • p j = ∑ j ∈ (Bk E r)ᶜ, p j :=
    Finset.sum_congr rfl fun j hj => by simp [dd, Finset.mem_compl.mp hj]
  rw [Ψ, X_diag hE, Dg, ← h2, h3, h4, ← h1]
  unfold zT
  abel

lemma block (hp : Sys p) (hE : MUnits A p E) (r : Fin n) {v : Mat C N} (hv : v ∈ A) (hu : IsUnit v) :
    1 - zT p (Bk E r) + zT p (Bk E r) * v ∈ S A p := by
  choose c hc using hE.2.2.2.2.2 v hv
  let M : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C := fun i j => c i j
  have hcomm := zT_comm hp hE (closed_Bk hE r) hv
  have hXM : X E r M = zT p (Bk E r) * v := by
    have : X E r M = zT p (Bk E r) * v * zT p (Bk E r) := by
      rw [zT_Bk, Finset.sum_mul, Finset.sum_mul]
      simp only [Finset.mul_sum, X]
      exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => (hc i j).symm
    rw [this, mul_assoc, ← hcomm, ← mul_assoc, zT_idem hp]
  have hdet : M.det ≠ 0 := by
    intro h0
    obtain ⟨w, hw0, hw⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr h0
    let M'' : Matrix {j // j ∈ Bk E r} {j // j ∈ Bk E r} C := fun i _ => w i
    have hMM : M * M'' = 0 := by
      ext i j
      rw [Matrix.mul_apply, Matrix.zero_apply]
      exact congrFun hw i
    have h1 : v * X E r M'' = 0 := by
      have h := X_mul hp hE M M''
      rw [hMM, X_zero, hXM] at h
      rw [← zT_X hp hE M'', ← mul_assoc, ← hcomm, h.symm]
    have h2 : X E r M'' = 0 := hu.mul_right_eq_zero.mp h1
    apply hw0
    funext i
    have := pXp hp hE M'' i i
    rw [h2, mul_zero, zero_mul, hE.2.1] at this
    exact (smul_eq_zero.mp this.symm).resolve_right (hp.2 i)
  have hP := Matrix.diagonal_transvection_induction_of_det_ne_zero (fun M => Ψ p E r M ∈ S A p) M hdet
    (fun D hD => by
      show Ψ p E r (Matrix.diagonal D) ∈ S A p
      rw [Ψ_diag hp hE]
      refine Dg_S fun j => ?_
      rw [Matrix.det_diagonal] at hD
      by_cases hj : j ∈ Bk E r
      · simp only [dd, dif_pos hj]; exact Finset.prod_ne_zero_iff.mp hD _ (Finset.mem_univ _)
      · simp [dd, hj])
    (fun t => Ψ_trans hp hE t)
    (fun A' B' _ _ hA hB => by
      show Ψ p E r (A' * B') ∈ S A p
      rw [Ψ_mul hp hE]; exact S_mul hp hA hB)
  have : Ψ p E r M = 1 - zT p (Bk E r) + zT p (Bk E r) * v := by rw [Ψ, hXM]
  rw [← this]; exact hP

lemma main (hp : Sys p) (hE : MUnits A p E) {v : Mat C N} (hv : v ∈ A) (hu : IsUnit v) :
    ∀ T : Finset (Fin n), Closed E T → 1 - zT p T + zT p T * v ∈ S A p := by
  intro T
  induction T using Finset.strongInduction with
  | H T ih =>
    intro hT
    rcases T.eq_empty_or_nonempty with rfl | ⟨r, hr⟩
    · simp only [zT, Finset.sum_empty, sub_zero, zero_mul, add_zero]; exact one_S hp
    · have hrB : r ∈ Bk E r := mem_Bk.mpr (by rw [hE.2.1]; exact hp.2 r)
      have hBT : Bk E r ⊆ T := fun j hj => (hT r j (mem_Bk.mp hj)).mp hr
      have hT' : Closed E (T \ Bk E r) := closed_sdiff hT (closed_Bk hE r)
      have hlt : T \ Bk E r ⊂ T := Finset.sdiff_ssubset hBT ⟨r, hrB⟩
      have ih' := ih _ hlt hT'
      have hsplit : zT p T = zT p (T \ Bk E r) + zT p (Bk E r) := (Finset.sum_sdiff hBT).symm
      have hBT0 : zT p (Bk E r) * zT p (T \ Bk E r) = 0 := zT_orth hp Finset.disjoint_sdiff
      have hc' := zT_comm hp hE hT' hv
      have e1 : zT p (Bk E r) * v * zT p (T \ Bk E r) = 0 := by
        rw [mul_assoc, ← hc', ← mul_assoc, hBT0, zero_mul]
      have e2 : zT p (Bk E r) * v * (zT p (T \ Bk E r) * v) = 0 := by rw [← mul_assoc, e1, zero_mul]
      have e3 : zT p (Bk E r) * (zT p (T \ Bk E r) * v) = 0 := by rw [← mul_assoc, hBT0, zero_mul]
      have key : 1 - zT p T + zT p T * v = (1 - zT p (Bk E r) + zT p (Bk E r) * v) *
          (1 - zT p (T \ Bk E r) + zT p (T \ Bk E r) * v) := by
        rw [hsplit]
        simp only [mul_add, add_mul, mul_sub, sub_mul, mul_one, one_mul, hBT0, e1, e2, e3]
        abel
      rw [key]; exact S_mul hp (block hp hE r hv hu) ih'

end final

theorem UnitFactor_of : LateralTheory.DivDb.UnitFactorization := by
  intro C _ N n A p E hp hE v hv hu
  have h := main hp hE hv hu Finset.univ (fun _ _ _ => by simp)
  have hz : zT p Finset.univ = 1 := sum_p hp
  rw [hz, sub_self, zero_add, one_mul] at h
  obtain ⟨u, hu', d, hd, h'⟩ := h
  exact ⟨u, hu', d, hd, h'⟩

end LateralTheory.DivDb.UnitFactorizationTheorem
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.UnitFactorizationTheorem =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.ZclMulPf =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.ZclMulPf", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.OpenCoset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div

namespace LateralTheory.DivDb.ZclMulPf
open LateralTheory.DivDb

theorem left_mem (hC : Chain) {C : Type} [Field C] {N : ℕ} (S : Submonoid (Mat C N))
    (s : Mat C N) (hs : s ∈ S) (y : Mat C N) (hy : y ∈ Zcl (S : Set (Mat C N))) :
    s * y ∈ Zcl (S : Set (Mat C N)) := by
  intro f hf
  obtain ⟨f', hf', -⟩ := hC C N N (LinearMap.mulLeft C s) f
  have hv : f' ∈ Van (S : Set (Mat C N)) := by
    intro t ht
    rw [hf']
    exact hf _ (S.mul_mem hs ht)
  have := hy f' hv
  rw [hf'] at this
  simpa using this

theorem mul_mem (hC : Chain) {C : Type} [Field C] {N : ℕ} (S : Submonoid (Mat C N))
    (x : Mat C N) (hx : x ∈ Zcl (S : Set (Mat C N))) (y : Mat C N) (hy : y ∈ Zcl (S : Set (Mat C N))) :
    x * y ∈ Zcl (S : Set (Mat C N)) := by
  intro f hf
  obtain ⟨f', hf', -⟩ := hC C N N (LinearMap.mulRight C y) f
  have hv : f' ∈ Van (S : Set (Mat C N)) := by
    intro t ht
    rw [hf']
    exact left_mem hC S t ht y hy f hf
  have := hx f' hv
  rw [hf'] at this
  simpa using this

end LateralTheory.DivDb.ZclMulPf

namespace LateralTheory.DivDb

theorem ZclMul_of (hC : Chain) : ZclMul := fun _C _ _N S x hx y hy =>
  LateralTheory.DivDb.ZclMulPf.mul_mem hC S x hx y hy

end LateralTheory.DivDb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.ZclMulPf =====

-- ===== clump member: Development.EtaleCohomology.DivisorCycles.FinKey =====
-- clump-header: {"m": "Development.EtaleCohomology.DivisorCycles.FinKey", "h": "module\n\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount\npublic import Development.EtaleCohomology.DivisorCycles.ChainPf\npublic import Development.EtaleCohomology.DivisorCycles.ConjugateIdempotents\npublic import Development.EtaleCohomology.DivisorCycles.CycleCount2\npublic import Development.EtaleCohomology.DivisorCycles.DegPoly2\npublic import Development.EtaleCohomology.DivisorCycles.ExpVanPf\npublic import Development.EtaleCohomology.DivisorCycles.GenSpecProof\npublic import Development.EtaleCohomology.DivisorCycles.MatUnitsOf\npublic import Development.EtaleCohomology.DivisorCycles.SpecPtPf\npublic import Development.EtaleCohomology.DivisorCycles.SumMulSum\npublic import Development.EtaleCohomology.DivisorCycles.TangentDegree\npublic import Development.EtaleCohomology.DivisorCycles.TangentFieldExtension\npublic import Development.EtaleCohomology.DivisorCycles.TangentIndexDvd\npublic import Development.EtaleCohomology.DivisorCycles.TorusPtPf\npublic import Development.EtaleCohomology.DivisorCycles.UnipotentPartTrivial\npublic import Development.EtaleCohomology.DivisorCycles.UnitFactorizationTheorem\npublic import Development.EtaleCohomology.DivisorCycles.ZclMulPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.Key
alias etale_matrix_units_system_of_key := _root_.LateralTheory.DivDb.MatrixUnitConstruction.MatUnits_of
theorem etale_zariski_closure_mul_closed_of_key : LateralTheory.DivDb.ZclMul := by
  apply LateralTheory.DivDb.ZclMul_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of
theorem etale_tangent_index_divides_of_key : LateralTheory.DivDb.TanIndex := by
  apply LateralTheory.DivDb.TangentIndexDvd.TanIndex_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of | exact etale_zariski_closure_mul_closed_of_key
theorem etale_tangent_field_extension_of_key : LateralTheory.DivDb.TanField := by
  apply LateralTheory.DivDb.TangentFieldExtension.TanField_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of
theorem etale_exponent_vanishing_of_key : LateralTheory.DivDb.ExpVan := by
  apply LateralTheory.DivDb.ExpVan_of <;> first | exact etale_tangent_field_extension_of_key
theorem etale_unipotent_part_trivial_of_key : LateralTheory.DivDb.Unip := by
  apply LateralTheory.DivDb.UnipotentPartTrivial.Unip_of <;> first | exact etale_exponent_vanishing_of_key
theorem etale_torus_point_exists_of_key : LateralTheory.DivDb.TorusPt := by
  apply LateralTheory.DivDb.TorusPtPf.TorusPt_of <;> first | exact etale_exponent_vanishing_of_key | exact _root_.LateralTheory.DivDb.SpecPtPf.SpecPt_of
theorem etale_tangent_degree_bound_of_key : LateralTheory.DivDb.TanDeg := by
  apply LateralTheory.DivDb.TangentDegree.TanDeg_of <;> first | exact etale_exponent_vanishing_of_key | exact _root_.LateralTheory.DivDb.DegPoly₂.DegPoly_of
theorem etale_divisibility_key_criterion_of_components : LateralTheory.DivDb.Key := by
  apply LateralTheory.DivDb.KeyPf.Key_of <;> first | exact _root_.LateralTheory.DivDb.ConjugateIdempotents.IdemConj_of | exact etale_matrix_units_system_of_key | exact _root_.LateralTheory.DivDb.UnitFactorizationTheorem.UnitFactor_of | exact etale_tangent_index_divides_of_key | exact etale_unipotent_part_trivial_of_key | exact etale_zariski_closure_mul_closed_of_key | exact _root_.LateralTheory.DivDb.GenSpecProof.GenSpec_of | exact etale_torus_point_exists_of_key | exact etale_tangent_degree_bound_of_key | exact _root_.LateralTheory.DivDb.CycleCount₂.CycleCount_of
end LateralTheory.Fin.Key
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.DivisorCycles.FinKey =====

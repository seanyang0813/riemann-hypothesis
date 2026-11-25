module

public import Formalism.GradedWeylDivisibility.StatementE
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.ColSums
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight
public import Formalism.GradedWeylDivisibility.FinalC
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LCassemLemmas
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LDlatLemmas
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.DualWeylIn
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LClosedeqLemmas
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LRowdivLemmas
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingDividedAdjoint
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingHighestWeightProof
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingRowAction
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial
public import Formalism.ThetaLogCoordinates.SandwichModelDomains.FinalW
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.CwlApplyWordAppendSingle, Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.LowerTriangularOverField, Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.WeylFormNondegenerateGlobal

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.CwlApplyWordAppendSingle =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.CwlApplyWordAppendSingle", "h": "module\n\npublic import Formalism.GradedWeylDivisibility.StatementE\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.ColSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Monotonicity.Lemmas\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model.TS

open Formalism.GradedWeylDivisibility

section

variable {R : Type*} [CommRing R] {r n : ℕ}

def cwl_iota : MvPolynomial (Fin r × Fin n) R →+*
    MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R) :=
  MvPolynomial.map (C : R →+* MvPolynomial (Fin r × Fin n) R)

def cwl_coeffT (d : Fin r × Fin n →₀ ℕ)
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    MvPolynomial (Fin r × Fin n) R :=
  ∑ m ∈ G.support, monomial m (AddMonoidAlgebra.coeff (AddMonoidAlgebra.coeff G m) d)

theorem cwl_coeff_coeffT (d m : Fin r × Fin n →₀ ℕ)
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    AddMonoidAlgebra.coeff (cwl_coeffT d G) m = AddMonoidAlgebra.coeff (AddMonoidAlgebra.coeff G m) d := by
  classical
  unfold cwl_coeffT
  rw [coeff_sum]
  simp only [coeff_monomial]
  rw [Finset.sum_ite_eq']
  split_ifs with h
  · rfl
  · rw [notMem_support_iff.mp h]
    simp

theorem cwl_coeffT_add (d : Fin r × Fin n →₀ ℕ)
    (G H : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    cwl_coeffT d (G + H) = cwl_coeffT d G + cwl_coeffT d H := by
  ext m
  simp [cwl_coeff_coeffT]

theorem cwl_coeffT_sum {ι : Type*} (s : Finset ι) (d : Fin r × Fin n →₀ ℕ)
    (G : ι → MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    cwl_coeffT d (∑ i ∈ s, G i) = ∑ i ∈ s, cwl_coeffT d (G i) := by
  ext m
  simp [cwl_coeff_coeffT]

theorem cwl_coeffT_monomial (d u : Fin r × Fin n →₀ ℕ) (c : MvPolynomial (Fin r × Fin n) R) :
    cwl_coeffT d (monomial u c) = monomial u (AddMonoidAlgebra.coeff c d) := by
  classical
  ext m
  rw [cwl_coeff_coeffT, coeff_monomial, coeff_monomial]
  split_ifs <;> simp

theorem cwl_coeffT_C_monomial_mul (d s : Fin r × Fin n →₀ ℕ)
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    cwl_coeffT d (C (monomial s 1) * G) = if s ≤ d then cwl_coeffT (d - s) G else 0 := by
  classical
  ext m
  rw [cwl_coeff_coeffT, coeff_C_mul, coeff_monomial_mul', one_mul]
  by_cases h : s ≤ d <;> simp [h, cwl_coeff_coeffT]

theorem cwl_coeffT_iota (d : Fin r × Fin n →₀ ℕ) (F : MvPolynomial (Fin r × Fin n) R) :
    cwl_coeffT d (cwl_iota F) = if d = 0 then F else 0 := by
  classical
  ext m
  rw [cwl_coeff_coeffT, cwl_iota, coeff_map, coeff_C]
  split_ifs with h1 h2 h2 <;> simp_all [eq_comm]

def cwl_tau (l : Fin r × Fin r × (Fin r × Fin n)) :
    MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R) →ₐ[MvPolynomial (Fin r × Fin n) R]
      MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R) :=
  aeval fun v => X v + if v.1 = l.2.1 then C (X l.2.2) * X (l.1, v.2) else 0

theorem cwl_tau_iota (l : Fin r × Fin r × (Fin r × Fin n)) (F : MvPolynomial (Fin r × Fin n) R) :
    cwl_tau l (cwl_iota F) =
      Polynomial.eval₂ cwl_iota (C (X l.2.2)) (rowGen R l.1 l.2.1 F) := by
  have h : ((cwl_tau (R := R) l).toRingHom.comp cwl_iota) =
      (Polynomial.eval₂RingHom cwl_iota (C (X l.2.2))).comp (rowGen R l.1 l.2.1).toRingHom := by
    apply MvPolynomial.ringHom_ext
    · intro c
      simp [cwl_tau, cwl_iota, rowGen]
    · intro i
      simp only [RingHom.coe_comp, Function.comp_apply, AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom]
      simp only [cwl_tau, cwl_iota, rowGen, aeval_X, map_X, Polynomial.coe_eval₂RingHom]
      split_ifs
      · simp
        exact mul_comm _ _
      · simp
  exact congrArg (fun φ => φ F) h

def cwl_Phi (L : List (Fin r × Fin r × (Fin r × Fin n))) :
    MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R) →ₐ[MvPolynomial (Fin r × Fin n) R]
      MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R) :=
  L.foldr (fun l φ => (cwl_tau l).comp φ) (AlgHom.id _ _)

theorem cwl_Phi_nil (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    cwl_Phi [] G = G := rfl

theorem cwl_Phi_cons (l : Fin r × Fin r × (Fin r × Fin n)) (w : List (Fin r × Fin r × (Fin r × Fin n)))
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    cwl_Phi (l :: w) G = cwl_tau l (cwl_Phi w G) := rfl

theorem cwl_Phi_append_single (w : List (Fin r × Fin r × (Fin r × Fin n)))
    (l : Fin r × Fin r × (Fin r × Fin n))
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    cwl_Phi (w ++ [l]) G = cwl_Phi w (cwl_tau l G) := by
  induction w with
  | nil => rfl
  | cons x w ih => rw [List.cons_append, cwl_Phi_cons, ih, cwl_Phi_cons]

theorem cwl_applyWord_append_single (w : List (Fin r × Fin r × ℕ)) (x : Fin r × Fin r × ℕ)
    (F : MvPolynomial (Fin r × Fin n) R) :
    applyWord R (w ++ [x]) F = applyWord R w (rowDiv R x.1 x.2.1 x.2.2 F) := by
  simp [applyWord, List.foldr_append]

theorem cwl_applyWord_zero (w : List (Fin r × Fin r × ℕ)) :
    applyWord R w (0 : MvPolynomial (Fin r × Fin n) R) = 0 := by
  induction w with
  | nil => rfl
  | cons x w ih =>
    simp only [applyWord, List.foldr_cons] at ih ⊢
    rw [ih]
    simp [rowDiv]

theorem cwl_coeffT_Phi (L : List (Fin r × Fin r × (Fin r × Fin n)))
    (hL : (L.map (·.2.2)).Nodup) (F : MvPolynomial (Fin r × Fin n) R) (d : Fin r × Fin n →₀ ℕ) :
    cwl_coeffT d (cwl_Phi L (cwl_iota F)) =
      if (∀ u, u ∉ L.map (·.2.2) → d u = 0) then
        applyWord R (L.map fun l => (l.1, l.2.1, d l.2.2)) F else 0 := by
  classical
  induction L using List.reverseRecOn generalizing F d with
  | nil =>
    rw [cwl_Phi_nil, cwl_coeffT_iota]
    have : (∀ u, u ∉ ([] : List (Fin r × Fin r × (Fin r × Fin n))).map (·.2.2) → d u = 0) ↔ d = 0 := by
      simp [Finsupp.ext_iff]
    simp only [this]
    rfl
  | append_singleton w l ih =>
    obtain ⟨s, a, v⟩ := l
    have hL' : (w.map (·.2.2) ++ [v]).Nodup := by simpa using hL
    have hw : (w.map (·.2.2)).Nodup := hL'.sublist (List.sublist_append_left _ _)
    have hv : v ∉ w.map (·.2.2) := by
      rw [List.nodup_append] at hL'
      intro h
      exact hL'.2.2 v h v (by simp) rfl

    rw [cwl_Phi_append_single, cwl_tau_iota, Polynomial.eval₂_eq_sum, Polynomial.sum_def,
    map_sum, cwl_coeffT_sum]
    have key : ∀ (j : ℕ) (c : MvPolynomial (Fin r × Fin n) R),
        cwl_coeffT d (cwl_Phi w (cwl_iota c * C (X (s, a, v).2.2) ^ j)) =
          if j ≤ d v then cwl_coeffT (d - Finsupp.single v j) (cwl_Phi w (cwl_iota c)) else 0 := by
      intro j c
      have hC : cwl_Phi w (C (X v ^ j) : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) =
          C (X v ^ j) := (cwl_Phi w).commutes (X v ^ j)
      have hp : (C (X v) : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) ^ j = C (X v ^ j) :=
        (C.map_pow _ _).symm
      simp only
      rw [hp, map_mul, hC, mul_comm, X_pow_eq_monomial, cwl_coeffT_C_monomial_mul]
      simp only [Finsupp.single_le_iff]
    simp only [key, ih hw]
    rw [Finset.sum_eq_single (d v)]
    · simp only [le_refl, if_true]
      have hfill : w.map (fun l => (l.1, l.2.1, (d - Finsupp.single v (d v)) l.2.2)) =
          w.map (fun l => (l.1, l.2.1, d l.2.2)) := by
        apply List.map_congr_left
        intro l hl
        have hne : l.2.2 ≠ v := by
          intro h; exact hv (List.mem_map.mpr ⟨l, hl, h⟩)
        simp [Ne.symm hne]
      have hcond : (∀ u, u ∉ w.map (·.2.2) → (d - Finsupp.single v (d v)) u = 0) ↔
          (∀ u, u ∉ (w ++ [(s, a, v)]).map (·.2.2) → d u = 0) := by
        constructor
        · intro h u hu
          simp only [List.map_append, List.mem_append, List.map_cons, List.map_nil, List.mem_singleton,
            not_or] at hu
          have := h u hu.1
          simpa [Finsupp.single_apply, Ne.symm hu.2] using this
        · intro h u hu
          by_cases huv : u = v
          · subst huv; simp
          · have := h u (by simp [hu, huv])
            simp [this]
      rw [hfill]
      simp only [hcond]
      split_ifs
      · rw [List.map_append, List.map_cons, List.map_nil, cwl_applyWord_append_single]
        rfl
      · rfl
    · intro j _ hj
      split_ifs with h1 h2
      · exfalso
        have := h2 v hv
        simp at this
        omega
      · rfl
      · rfl
    · intro hnot
      rw [Polynomial.notMem_support_iff.mp hnot]
      simp [cwl_applyWord_zero]

theorem cw_eval_coeffT (d : Fin r × Fin n →₀ ℕ) (y : Fin r × Fin n → R)
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    eval y (cwl_coeffT d G) = AddMonoidAlgebra.coeff (eval (fun v => C (y v)) G) d := by
  induction G using MvPolynomial.induction_on' with
  | monomial u c =>
    rw [cwl_coeffT_monomial, eval_monomial, eval_monomial]
    have h : (u.prod fun v k => (C (y v) : MvPolynomial (Fin r × Fin n) R) ^ k) =
        C (u.prod fun v k => y v ^ k) := by
      simp [Finsupp.prod, map_prod]
    rw [h, mul_comm c, coeff_C_mul, mul_comm]
  | add p q hp hq => rw [cwl_coeffT_add, map_add (f := _), map_add (f := _), MvPolynomial.coeff_add, hp, hq]

def cwUpd (l : Fin r × Fin r × (Fin r × Fin n)) (y : Fin r × Fin n → MvPolynomial (Fin r × Fin n) R) :
    Fin r × Fin n → MvPolynomial (Fin r × Fin n) R :=
  fun v => y v + if v.1 = l.2.1 then X l.2.2 * y (l.1, v.2) else 0

theorem cw_eval_tau (l : Fin r × Fin r × (Fin r × Fin n)) (y : Fin r × Fin n → MvPolynomial (Fin r × Fin n) R)
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    eval y (cwl_tau l G) = eval (cwUpd l y) G := by
  have h : (eval y).comp (cwl_tau (R := R) l).toRingHom = eval (cwUpd l y) := by
    apply MvPolynomial.ringHom_ext
    · intro c
      simp [cwl_tau]
    · intro v
      simp only [RingHom.coe_comp, Function.comp_apply, AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom,
        cwl_tau, aeval_X, cwUpd, eval_X, map_add]
      split_ifs <;> simp
  exact congrArg (fun φ => φ G) h

theorem cw_eval_Phi (L : List (Fin r × Fin r × (Fin r × Fin n)))
    (y : Fin r × Fin n → MvPolynomial (Fin r × Fin n) R)
    (G : MvPolynomial (Fin r × Fin n) (MvPolynomial (Fin r × Fin n) R)) :
    eval y (cwl_Phi L G) = eval (L.foldl (fun y l => cwUpd l y) y) G := by
  induction L generalizing y with
  | nil => rfl
  | cons l w ih => rw [cwl_Phi_cons, cw_eval_tau, ih]; rfl

theorem cw_foldl_point (L : List (Fin r × Fin r × (Fin r × Fin n)))
    (h1 : ∀ l ∈ L, l.2.2.1 = l.2.1 ∧ l.2.2.2.val = l.1.val ∧ l.1.val < l.2.1.val)
    (h2 : L.Pairwise fun l l' => l'.1.val ≤ l.1.val ∧ l.2.2 ≠ l'.2.2) :
    L.foldl (fun y l => cwUpd l y) (idFrame (MvPolynomial (Fin r × Fin n) R) r n) =
      fun v => idFrame (MvPolynomial (Fin r × Fin n) R) r n v + if v ∈ L.map (·.2.2) then X v else 0 := by
  classical
  induction L using List.reverseRecOn with
  | nil => funext v; simp
  | append_singleton w l ih =>
    have h1w : ∀ l ∈ w, l.2.2.1 = l.2.1 ∧ l.2.2.2.val = l.1.val ∧ l.1.val < l.2.1.val :=
      fun x hx => h1 x (by simp [hx])
    rw [List.pairwise_append] at h2
    obtain ⟨h2w, -, h2l⟩ := h2
    have hl := h1 l (by simp)
    rw [List.foldl_append, ih h1w h2w]
    funext v
    simp only [List.foldl_cons, List.foldl_nil, cwUpd]
    have hno : (l.1, v.2) ∉ w.map (·.2.2) := by
      intro hmem
      obtain ⟨x, hx, hxe⟩ := List.mem_map.mp hmem
      have a1 := h1w x hx
      have a2 := (h2l x hx l (by simp)).1
      have a3 : x.2.2.1 = l.1 := by rw [hxe]
      have a4 : x.2.1 = l.1 := by rw [← a1.1, a3]
      rw [a4] at a1
      omega
    have hlw : l.2.2 ∉ w.map (·.2.2) := by
      intro hmem
      obtain ⟨x, hx, hxe⟩ := List.mem_map.mp hmem
      exact (h2l x hx l (by simp)).2 hxe
    rw [if_neg hno, add_zero]
    by_cases hv : v = l.2.2
    · subst hv
      have e1 : l.2.2.1 = l.2.1 := hl.1
      have e2 : idFrame (MvPolynomial (Fin r × Fin n) R) r n (l.1, l.2.2.2) = 1 := by
        simp [idFrame, hl.2.1]
      rw [if_neg hlw, if_pos e1, e2]
      simp
    · have hcond : ¬ (v.1 = l.2.1 ∧ l.1.val = v.2.val) := by
        rintro ⟨c1, c2⟩
        apply hv
        apply Prod.ext
        · rw [c1, hl.1]
        · apply Fin.ext; rw [← c2, hl.2.1]
      have e3 : (if v.1 = l.2.1 then X l.2.2 * idFrame (MvPolynomial (Fin r × Fin n) R) r n (l.1, v.2) else 0) = 0 := by
        split_ifs with c1
        · have : ¬ l.1.val = v.2.val := fun c2 => hcond ⟨c1, c2⟩
          simp [idFrame, this]
        · rfl
      rw [e3, add_zero]
      simp [hv]

def cwLetters (r n : ℕ) : List (Fin r × Fin r × (Fin r × Fin n)) :=
  ((List.finRange n).reverse.flatMap fun s =>
    (List.finRange r).filterMap fun a =>
      if h : s.val < a.val ∧ s.val < r then some (⟨s.val, h.2⟩, a, (a, s)) else none)

theorem cw_mem_letters (l : Fin r × Fin r × (Fin r × Fin n)) :
    l ∈ cwLetters r n ↔ l.2.2.1 = l.2.1 ∧ l.2.2.2.val = l.1.val ∧ l.1.val < l.2.1.val := by
  obtain ⟨s, a, a', s'⟩ := l
  simp only [cwLetters, List.mem_flatMap, List.mem_reverse, List.mem_finRange, true_and, List.mem_filterMap]
  constructor
  · rintro ⟨t, b, hb⟩
    split_ifs at hb with h
    · simp only [Option.some.injEq, Prod.mk.injEq] at hb
      obtain ⟨rfl, rfl, rfl, rfl⟩ := hb
      exact ⟨rfl, rfl, h.1⟩
  · rintro ⟨e1, e2, e3⟩
    have e1' : a' = a := e1
    have e2' : s'.val = s.val := e2
    have e3' : s.val < a.val := e3
    subst e1'
    refine ⟨s', a', ?_⟩
    rw [dite_eq_left ⟨by omega, by omega⟩]
    simp only [Option.some.injEq, Prod.mk.injEq, and_true]
    exact Fin.ext e2'

theorem cw_letters_pairwise :
    (cwLetters r n).Pairwise fun l l' => l'.1.val ≤ l.1.val ∧ l.2.2 ≠ l'.2.2 := by
  unfold cwLetters
  rw [List.pairwise_flatMap]
  constructor
  · intro s _
    rw [List.pairwise_filterMap]
    refine (List.pairwise_lt_finRange r).imp ?_
    intro a a' haa b hb b' hb'
    split_ifs at hb with h
    split_ifs at hb' with h'
    simp only [Option.some.injEq] at hb hb'
    subst hb hb'
    refine ⟨le_refl _, ?_⟩
    intro hc
    simp only [Prod.mk.injEq, and_true] at hc
    exact absurd hc (ne_of_lt haa)
  · rw [List.pairwise_reverse]
    refine (List.pairwise_lt_finRange n).imp ?_
    intro s s' hss x hx y hy
    simp only [List.mem_filterMap, List.mem_finRange, true_and] at hx hy
    obtain ⟨a, ha⟩ := hx
    obtain ⟨b, hb⟩ := hy
    split_ifs at ha with h
    split_ifs at hb with h'
    simp only [Option.some.injEq] at ha hb
    subst ha hb
    refine ⟨le_of_lt hss, ?_⟩
    intro hc
    simp only [Prod.mk.injEq] at hc
    exact absurd hc.2 (ne_of_gt hss)

theorem cw_wordOf (e : Fin r × Fin n →₀ ℕ) :
    wordOf e = (cwLetters r n).map fun l => (l.1, l.2.1, e l.2.2) := by
  unfold wordOf cwLetters
  simp only [List.map_flatMap, List.map_filterMap]
  congr 1
  funext s
  congr 1
  funext a
  split_ifs <;> rfl

def cwStrict (m : Fin r × Fin n →₀ ℕ) : Fin r × Fin n →₀ ℕ := m.filter fun v => v.2.val < v.1.val

def cwPt : Fin r × Fin n → MvPolynomial (Fin r × Fin n) R := fun v =>
  idFrame (MvPolynomial (Fin r × Fin n) R) r n v + if v.2.val < v.1.val then X v else 0

open Classical in
theorem cw_prod_pt (m : Fin r × Fin n →₀ ℕ) :
    (∏ v, (cwPt (R := R) v) ^ m v) = if LowerTri m then monomial (cwStrict m) 1 else 0 := by
  classical
  split_ifs with h
  · rw [monomial_eq, C_1, one_mul, Finsupp.prod_fintype _ _ (by simp)]
    apply Finset.prod_congr rfl
    rintro ⟨a, s⟩ _
    rcases lt_trichotomy a.val s.val with c | c | c
    · have h0 := h a s c
      simp [cwStrict, h0, not_lt.mpr (le_of_lt c)]
    · simp [cwPt, idFrame, c, cwStrict]
    · simp [cwPt, idFrame, c, ne_of_gt c, cwStrict]
  · unfold LowerTri at h
    push Not at h
    obtain ⟨a, s, c, hne⟩ := h
    apply Finset.prod_eq_zero (Finset.mem_univ (a, s))
    have h0 : cwPt (R := R) (a, s) = 0 := by simp [cwPt, idFrame, ne_of_lt c, not_lt.mpr (le_of_lt c)]
    rw [h0, zero_pow hne]

theorem cw_ext (m e : Fin r × Fin n →₀ ℕ) (hm : LowerTri m) (he : LowerTri e) (hs : cwStrict m = cwStrict e)
    (hc : ∀ s : Fin n, ∑ a : Fin r, m (a, s) = ∑ a : Fin r, e (a, s)) : m = e := by
  classical
  have off : ∀ (a : Fin r) (s : Fin n), a.val ≠ s.val → m (a, s) = e (a, s) := by
    intro a s hne
    rcases lt_or_gt_of_ne hne with c | c
    · rw [hm a s c, he a s c]
    · have h0 := DFunLike.congr_fun hs (a, s)
      simpa [cwStrict, Finsupp.filter_apply, c] using h0
  ext ⟨a, s⟩
  by_cases h : a.val = s.val
  · have h0 := hc s
    rw [← Finset.add_sum_erase _ (fun x => m (x, s)) (Finset.mem_univ a),
      ← Finset.add_sum_erase _ (fun x => e (x, s)) (Finset.mem_univ a)] at h0
    have h2 : ∑ x ∈ Finset.univ.erase a, m (x, s) = ∑ x ∈ Finset.univ.erase a, e (x, s) := by
      apply Finset.sum_congr rfl
      intro x hx
      apply off
      intro hxs
      exact (Finset.mem_erase.mp hx).1 (Fin.ext (by omega))
    omega
  · exact off a s h

end

theorem coeffWord' : CoeffWord := by
  classical
  intro R _ r n ν F e hF he hsum
  have hw : wordOf e = (cwLetters r n).map fun l => (l.1, l.2.1, cwStrict e l.2.2) := by
    rw [cw_wordOf]
    apply List.map_congr_left
    intro l hl
    have h0 := (cw_mem_letters l).mp hl
    simp [cwStrict, h0.1, h0.2.1, h0.2.2]
  have hnd : ((cwLetters r n).map (·.2.2)).Nodup := by
    rw [List.Nodup, List.pairwise_map]
    exact cw_letters_pairwise.imp fun h => h.2
  have hmem : ∀ v : Fin r × Fin n, v ∈ (cwLetters r n).map (·.2.2) ↔ v.2.val < v.1.val := by
    intro v
    rw [List.mem_map]
    constructor
    · rintro ⟨l, hl, rfl⟩
      have h0 := (cw_mem_letters l).mp hl
      rw [h0.1, h0.2.1]; exact h0.2.2
    · intro hv
      exact ⟨(⟨v.2.val, by omega⟩, v.1, v), (cw_mem_letters _).mpr ⟨rfl, rfl, hv⟩, rfl⟩
  have hcond : ∀ u, u ∉ (cwLetters r n).map (·.2.2) → cwStrict e u = 0 := by
    intro u hu
    rw [hmem] at hu
    simp [cwStrict, hu]
  have key := cwl_coeffT_Phi (cwLetters r n) hnd F (cwStrict e)
  rw [if_pos hcond, ← hw] at key
  rw [← key, cw_eval_coeffT]
  have hid : (fun v => (C (idFrame R r n v) : MvPolynomial (Fin r × Fin n) R)) =
      idFrame (MvPolynomial (Fin r × Fin n) R) r n := by
    funext v
    simp [idFrame]
  rw [hid, cw_eval_Phi, cw_foldl_point _ (fun l hl => (cw_mem_letters l).mp hl) cw_letters_pairwise]
  have hpt : (fun v => idFrame (MvPolynomial (Fin r × Fin n) R) r n v +
      if v ∈ (cwLetters r n).map (·.2.2) then X v else 0) = cwPt := by
    funext v
    simp [cwPt, hmem]
  rw [hpt, cwl_iota, eval_map, eval₂_eq', coeff_sum]
  simp only [coeff_C_mul, cw_prod_pt]
  rw [Finset.sum_eq_single e]
  · rw [if_pos he, coeff_monomial, if_pos rfl, mul_one]
  · intro m hm hne
    split_ifs with hL
    · rw [coeff_monomial, if_neg, mul_zero]
      intro hs
      apply hne
      refine cw_ext m e hL he hs fun s => ?_
      rw [hsum s, ← lccomp_weight_colW_apply, hF (mem_support_iff.mp hm)]
    · simp
  · intro h
    rw [notMem_support_iff.mp h, zero_mul]

end Formalism.L2.G.Model.TS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.CwlApplyWordAppendSingle =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.LowerTriangularOverField =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.LowerTriangularOverField", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FinalC\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LCassemLemmas\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LDlatLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

namespace Formalism.L2.G.Model.TS

open Formalism.GradedWeylDivisibility

open scoped MonomialOrder

theorem lowerTri_of_interlaced {r n : ℕ} {m : Fin r × Fin n →₀ ℕ} (h : Interlaced m) : LowerTri m := by
  suffices key : ∀ (k : ℕ) (s : Fin n), s.val = k → ∀ a : Fin r, a.val < s.val → m (a, s) = 0 from
    fun a s has => key s.val s rfl a has
  intro k
  induction k with
  | zero =>
    intro s hs a ha
    omega
  | succ k ih =>
    intro s hs a ha
    have hk : k < n := by have := s.isLt; omega
    have h1 := h ⟨k, hk⟩ s (by simpa using hs) a
    have h2 : (∑ b : Fin r with b < a, m (b, (⟨k, hk⟩ : Fin n))) = 0 := by
      apply Finset.sum_eq_zero
      intro b hb
      have hba : b < a := (Finset.mem_filter.mp hb).2
      have hba' : b.val < a.val := hba
      exact ih ⟨k, hk⟩ rfl b (by show b.val < k; omega)
    rw [h2, zero_add] at h1
    have h3 : m (a, s) ≤ ∑ b : Fin r with b ≤ a, m (b, s) :=
      Finset.single_le_sum (f := fun b => m (b, s)) (fun _ _ => Nat.zero_le _)
        (Finset.mem_filter.mpr ⟨Finset.mem_univ a, le_rfl⟩)
    omega

theorem lower_triangular_over_field : LowerTriK := by
  intro O K _ _ _ _ _ r n ν Q hQ
  have hlead : ∀ f ∈ dualWeyl K r n ν, f ≠ 0 → LowerTri ((colLex r n).degree f) := fun f hf hf0 =>
    lowerTri_of_interlaced (leadInterlaced K r n ν f hf hf0)
  refine ⟨?_, ?_⟩
  · suffices key : ∀ d : (colLex r n).syn, ∀ f ∈ dualWeyl K r n ν,
        (∀ e : Fin r × Fin n →₀ ℕ, LowerTri e → AddMonoidAlgebra.coeff f e ∈ Set.range (algebraMap O K)) →
        (colLex r n).toSyn ((colLex r n).degree f) = d → f ∈ (dualWeyl O r n ν).map (toK O K) by
      intro h
      exact key _ Q hQ h rfl
    intro d
    induction d using WellFoundedLT.induction with
    | _ d ih =>
      intro f hf hco hd
      by_cases hf0 : f = 0
      · rw [hf0]; exact Submodule.zero_mem _
      set m := (colLex r n).degree f with hm
      have hint : Interlaced m := leadInterlaced K r n ν f hf hf0
      have hcol : ∀ t : Fin n, ∑ a : Fin r, m (a, t) = ν t :=
        colSums K r n ν f hf m (((colLex r n).degree_mem_support_iff f).mpr hf0)
      obtain ⟨N, sz, hsz, I, hshape, hmono, hexp⟩ := sSYTExists r n ν m hcol hint
      obtain ⟨hbdeg, hblc⟩ := column_lex_bideterminant K r n N sz hsz I hmono
      have hbO : bideterminant O sz hsz I ∈ dualWeyl O r n ν := by
        have := bidetMem O r n N sz hsz I
        rw [hshape] at this
        exact this
      have hbK : bideterminant K sz hsz I ∈ dualWeyl K r n ν := by
        have := bidetMem K r n N sz hsz I
        rw [hshape] at this
        exact this
      have hmap : toK O K (bideterminant O sz hsz I) = bideterminant K sz hsz I :=
        ldlat_map_bidet (algebraMap O K) sz hsz I
      obtain ⟨c, hc⟩ := hco m (lowerTri_of_interlaced hint)
      have hc' : (colLex r n).leadingCoeff f = algebraMap O K c := hc.symm
      have hcb : (colLex r n).leadingCoeff f • bideterminant K sz hsz I = toK O K (c • bideterminant O sz hsz I) := by
        rw [map_smul, hmap, hc', algebraMap_smul]
      have hcbmem : (colLex r n).leadingCoeff f • bideterminant K sz hsz I ∈ (dualWeyl O r n ν).map (toK O K) := by
        rw [hcb]
        exact Submodule.mem_map_of_mem (Submodule.smul_mem _ _ hbO)
      set f' := f - (colLex r n).leadingCoeff f • bideterminant K sz hsz I with hf'
      have hf'mem : f' ∈ dualWeyl K r n ν :=
        Submodule.sub_mem _ hf (Submodule.smul_mem _ _ hbK)
      have hdecomp : f = f' + (colLex r n).leadingCoeff f • bideterminant K sz hsz I := by
        rw [hf']; abel
      rw [hdecomp]
      refine Submodule.add_mem _ ?_ hcbmem
      by_cases h0 : f' = 0
      · rw [h0]; exact Submodule.zero_mem _
      have hlt := lcassem_sub_lt (colLex r n) (f := f) (g := bideterminant K sz hsz I) (hbdeg.trans hexp) hblc h0
      refine ih _ (hd ▸ hlt) f' hf'mem ?_ rfl
      intro e he
      obtain ⟨x, hx⟩ := hco e he
      refine ⟨x - AddMonoidAlgebra.coeff (c • bideterminant O sz hsz I) e, ?_⟩
      have hce : AddMonoidAlgebra.coeff (toK O K (c • bideterminant O sz hsz I)) e = algebraMap O K (AddMonoidAlgebra.coeff (c • bideterminant O sz hsz I) e) :=
        coeff_map (algebraMap O K) _ e
      rw [hf', MvPolynomial.coeff_sub, hcb, map_sub, hx, hce]
  · intro h
    by_contra hQ0
    exact ((colLex r n).coeff_degree_ne_zero_iff).mpr hQ0 (h _ (hlead Q hQ hQ0))

end Formalism.L2.G.Model.TS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.LowerTriangularOverField =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.WeylFormNondegenerateGlobal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.WeylFormNondegenerateGlobal", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.DualWeylIn\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.ColSums\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LClosedeqLemmas\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LRowdivLemmas\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.CwlApplyWordAppendSingle\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingDividedAdjoint\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingHighestWeightProof\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingRowAction\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.LowerTriangularOverField\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial\npublic import Formalism.ThetaLogCoordinates.SandwichModelDomains.FinalW\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model.TS

open Formalism.GradedWeylDivisibility Formalism.InvariantFactorPaths.INST

section bil

variable {σ R : Type} [CommRing R]

lemma tsc_add_left (hB : FockRBilin) (f f' g : MvPolynomial σ R) :
    fockR (f + f') g = fockR f g + fockR f' g := (hB σ R f f' g 0).1

lemma tsc_smul_left (hB : FockRBilin) (a : R) (f g : MvPolynomial σ R) :
    fockR (a • f) g = a * fockR f g := (hB σ R f 0 g a).2.1

lemma tsc_symm (hB : FockRBilin) (f g : MvPolynomial σ R) : fockR f g = fockR g f := (hB σ R f 0 g 0).2.2

lemma tsc_add_right (hB : FockRBilin) (f g g' : MvPolynomial σ R) :
    fockR f (g + g') = fockR f g + fockR f g' := by
  rw [tsc_symm hB f, tsc_add_left hB, tsc_symm hB g, tsc_symm hB g']

lemma tsc_smul_right (hB : FockRBilin) (a : R) (f g : MvPolynomial σ R) :
    fockR f (a • g) = a * fockR f g := by
  rw [tsc_symm hB f, tsc_smul_left hB, tsc_symm hB g]

lemma tsc_zero_left (hB : FockRBilin) (g : MvPolynomial σ R) : fockR (0 : MvPolynomial σ R) g = 0 := by
  have h := tsc_smul_left hB (0 : R) (0 : MvPolynomial σ R) g
  simpa using h

end bil

lemma tsc_toK_apply (O K : Type*) [CommRing O] [CommRing K] [Algebra O K] {σ : Type*} (f : MvPolynomial σ O) :
    toK O K f = map (algebraMap O K) f := rfl

lemma tsc_map_smul {O K : Type*} [CommRing O] [CommRing K] (φ : O →+* K) {σ : Type*} (a : O) (f : MvPolynomial σ O) :
    map φ (a • f) = φ a • map φ f := by
  rw [smul_eq_C_mul, smul_eq_C_mul, map_mul, map_C]

lemma tsc_eval_map {O K : Type*} [CommRing O] [CommRing K] (φ : O →+* K) {r n : ℕ}
    (f : MvPolynomial (Fin r × Fin n) O) :
    eval (idFrame K r n) (map φ f) = φ (eval (idFrame O r n) f) := by
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add p q hp hq => simp [hp, hq]
  | mul_X p v hp =>
    simp only [map_mul, hp, map_X, eval_X]
    congr 1
    unfold idFrame
    split_ifs <;> simp

lemma tsc_applyWord_mem {R : Type} [CommRing R] {r n : ℕ} (ν : Fin n → ℕ) (w : List (Fin r × Fin r × ℕ))
    (f : MvPolynomial (Fin r × Fin n) R) (hf : f ∈ dualWeyl R r n ν) : applyWord R w f ∈ dualWeyl R r n ν := by
  induction w with
  | nil => exact hf
  | cons x w ih =>
    rw [applyWord_cons]
    exact rowDivStable R r n ν _ _ _ _ ih

lemma tsc_transpose_transpose {r : ℕ} (w : List (Fin r × Fin r × ℕ)) : transposeWord (transposeWord w) = w := by
  simp [transposeWord, List.map_reverse, Function.comp_def]

lemma tsc_word_pair (hA : FockRWordAdj) (hH : FockPairingHighestWeight) {K : Type} [Field K] [CharZero K] {r n : ℕ} (hn : n ≤ r)
    (ν : Fin n → ℕ) (hν : Antitone ν) (w : List (Fin r × Fin r × ℕ)) (Q : MvPolynomial (Fin r × Fin n) K)
    (hQ : Q ∈ dualWeyl K r n ν) :
    fockR (applyWord K w (hw K hn ν)) Q =
      eval (idFrame K r n) (applyWord K (transposeWord w) Q) * fockR (hw K hn ν) (hw K hn ν) := by
  rw [hA K r n w, hH K r n hn ν hν _ (tsc_applyWord_mem ν _ Q hQ)]

lemma tsc_norm_ne (hN : HWNorm) (K : Type) [Field K] [CharZero K] {r n : ℕ} (hn : n ≤ r) (ν : Fin n → ℕ) :
    fockR (hw K hn ν) (hw K hn ν) ≠ 0 := by
  obtain ⟨N, hN0, hNK⟩ := hN r n hn ν
  rw [hNK K]
  exact_mod_cast hN0.ne'

lemma tsc_coeff_pair (hA : FockRWordAdj) (hH : FockPairingHighestWeight) (hC : CoeffWord) {K : Type} [Field K] [CharZero K] {r n : ℕ}
    (hn : n ≤ r) (ν : Fin n → ℕ) (hν : Antitone ν) (Q : MvPolynomial (Fin r × Fin n) K) (hQ : Q ∈ dualWeyl K r n ν)
    (e : Fin r × Fin n →₀ ℕ) (he : LowerTri e) :
    AddMonoidAlgebra.coeff Q e = 0 ∨ fockR (applyWord K (transposeWord (wordOf e)) (hw K hn ν)) Q =
      AddMonoidAlgebra.coeff Q e * fockR (hw K hn ν) (hw K hn ν) := by
  by_cases hcol : ∀ s : Fin n, ∑ a : Fin r, e (a, s) = ν s
  · right
    have h1 : IsWeightedHomogeneous (colW r n) Q ν := (mem_weightedHomogeneousSubmodule K _ _ _).1 hQ.1
    rw [tsc_word_pair hA hH hn ν hν _ Q hQ, tsc_transpose_transpose, hC K r n ν Q e h1 he hcol]
  · left
    by_contra h0
    exact hcol (columnSums_holds K r n ν Q hQ e (mem_support_iff.2 h0))

theorem weylPair_of (hB : FockRBilin) (hA : FockRWordAdj) (hH : FockPairingHighestWeight) : WeylPair := by
  intro O K _ _ _ _ _ _ r n hn ν hν P hP Q hQ
  obtain ⟨P0, hP0, rfl⟩ := hP
  obtain ⟨Q0, hQ0, rfl⟩ := hQ
  rw [tsc_toK_apply, tsc_toK_apply]
  have hQK : map (algebraMap O K) Q0 ∈ dualWeyl K r n ν := dualWeylMap O K _ r n ν Q0 hQ0
  have hP1 : P0 ∈ Submodule.span O (Set.range fun w : List (Fin r × Fin r × ℕ) => applyWord O w (hw O hn ν)) := hP0
  clear hP0
  induction hP1 using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨w, rfl⟩ := hx
    refine ⟨eval (idFrame O r n) (applyWord O (transposeWord w) Q0), ?_⟩
    rw [← lclosedeq_applyWord_map, lclosedeq_hw_map, tsc_word_pair hA hH hn ν hν w _ hQK,
      lclosedeq_applyWord_map, tsc_eval_map]
  | zero => exact ⟨0, by rw [map_zero, map_zero, tsc_zero_left hB, zero_mul]⟩
  | add x y _ _ hx hy =>
    obtain ⟨a, ha⟩ := hx
    obtain ⟨b, hb⟩ := hy
    exact ⟨a + b, by rw [map_add (f := _), tsc_add_left hB, ha, hb, map_add (f := _), add_mul]⟩
  | smul a x _ hx =>
    obtain ⟨z, hz⟩ := hx
    exact ⟨a * z, by rw [tsc_map_smul, tsc_smul_left hB, hz, map_mul, mul_assoc]⟩

theorem dualWeylIn_of (hA : FockRWordAdj) (hH : FockPairingHighestWeight) (hN : HWNorm) (hC : CoeffWord) (hL : LowerTriK) :
    DualWeylIn := by
  intro O K _ _ _ _ _ _ r n hn ν hν Q hQ H
  refine (hL O K r n ν Q hQ).1 fun e he => ?_
  have hc := tsc_norm_ne hN K hn ν
  rcases tsc_coeff_pair hA hH hC hn ν hν Q hQ e he with h0 | h1
  · exact ⟨0, by rw [map_zero, h0]⟩
  · obtain ⟨z, hz⟩ := H (toK O K (applyWord O (transposeWord (wordOf e)) (hw O hn ν)))
      (Submodule.mem_map_of_mem (Submodule.subset_span ⟨_, rfl⟩))
    rw [tsc_toK_apply, ← lclosedeq_applyWord_map, lclosedeq_hw_map, h1] at hz
    exact ⟨z, (mul_right_cancel₀ hc hz).symm⟩

theorem nondegK_of (hA : FockRWordAdj) (hH : FockPairingHighestWeight) (hN : HWNorm) (hC : CoeffWord) (hL : LowerTriK) :
    NondegK := by
  intro K _ _ r n hn ν hν Q hQ H
  refine (hL K K r n ν Q hQ).2 fun e he => ?_
  have hc := tsc_norm_ne hN K hn ν
  rcases tsc_coeff_pair hA hH hC hn ν hν Q hQ e he with h0 | h1
  · exact h0
  · rw [H _ (tsc_applyWord_mem ν _ _ (hwMem K r n hn ν hν))] at h1
    exact (mul_eq_zero.1 h1.symm).resolve_right hc

def tscForm (hB : FockRBilin) {K σ : Type} [Field K] (c : K) : MvPolynomial σ K →ₗ[K] MvPolynomial σ K →ₗ[K] K :=
  LinearMap.mk₂ K (fun P Q => c⁻¹ * fockR P Q)
    (fun P P' Q => by rw [tsc_add_left hB, mul_add])
    (fun a P Q => by rw [tsc_smul_left hB, smul_eq_mul, mul_left_comm])
    (fun P Q Q' => by rw [tsc_add_right hB, mul_add])
    (fun a P Q => by rw [tsc_smul_right hB, smul_eq_mul, mul_left_comm])

lemma tscForm_apply (hB : FockRBilin) {K σ : Type} [Field K] (c : K) (P Q : MvPolynomial σ K) :
    tscForm hB c P Q = c⁻¹ * fockR P Q := rfl

lemma tsc_range_iff {O K : Type} [CommRing O] [Field K] [Algebra O K] {c : K} (hc : c ≠ 0) (x : K) :
    c⁻¹ * x ∈ Set.range (algebraMap O K) ↔ ∃ z : O, x = algebraMap O K z * c := by
  constructor
  · rintro ⟨z, hz⟩
    exact ⟨z, by rw [hz]; field_simp⟩
  · rintro ⟨z, rfl⟩
    exact ⟨z, by field_simp⟩

lemma tsc_zero_weight {O : Type} [CommRing O] {r n : ℕ} (hn : n ≤ r) (ν : Fin n → ℕ) (h0 : ∀ t, ν t = 0) :
    dualWeyl O r n ν ≤ weyl O r n hn ν := by
  intro P hP
  have hhw : hw O hn ν = 1 := by
    unfold hw
    refine Finset.prod_eq_one fun s _ => ?_
    rw [h0 s, Nat.zero_sub, pow_zero]
  have hPc : P = C (AddMonoidAlgebra.coeff P 0) := by
    ext m
    rw [coeff_C]
    split_ifs with hm
    · rw [hm]
    · by_contra hne
      apply hm
      have hs := columnSums_holds O r n ν P hP m (mem_support_iff.2 hne)
      ext ⟨a, t⟩
      have h1 := hs t
      rw [h0 t] at h1
      have h2 := (Finset.sum_eq_zero_iff.1 h1) a (Finset.mem_univ a)
      simpa using h2.symm
  have h1 : (1 : MvPolynomial (Fin r × Fin n) O) ∈ weyl O r n hn ν :=
    Submodule.subset_span ⟨[], hhw⟩
  rw [hPc, ← mul_one (C (AddMonoidAlgebra.coeff P 0)), ← smul_eq_C_mul]
  exact Submodule.smul_mem _ _ h1

theorem formCoreG_of (hB : FockRBilin) (hR : FockRRowAct) (hN : HWNorm) (hW : WeylPair) (hD : DualWeylIn)
    (hG : NondegK) : FormCoreG := by
  intro p _ O K _ _ _ _ _ _ _ hp r n hn ν hν
  have hc := tsc_norm_ne hN K hn ν
  refine ⟨tscForm hB (fockR (hw K hn ν) (hw K hn ν)), ?_, ?_, ?_, ?_, ?_⟩
  · intro g P Q
    rw [tscForm_apply, tscForm_apply, hR K r n g P Q]
  · intro Q hQ H
    refine hG K r n hn ν hν Q hQ fun P hP => ?_
    have h := H P hP
    rw [tscForm_apply] at h
    exact (mul_eq_zero.1 h).resolve_left (inv_ne_zero hc)
  · intro Q hQ H
    refine hD O K r n hn ν hν Q hQ fun P hP => ?_
    have h := H P (Submodule.map_mono (weylLeDual O r n hn ν hν) hP)
    rw [tscForm_apply] at h
    exact (tsc_range_iff hc _).1 h
  · intro l hl Q hQ P hP
    obtain ⟨Q0, hQ0, rfl⟩ := hQ
    have hs := (Top.sandwichLocal p r n hn ν hν l hl O hp).1 Q0 hQ0
    have he : ((p : K) ^ sExp p r l) • toK O K Q0 = toK O K (((p : O) ^ sExp p r l) • Q0) := by
      rw [tsc_toK_apply, tsc_toK_apply, tsc_map_smul, map_pow, map_natCast]
    rw [tscForm_apply, he, tsc_symm hB P]
    exact (tsc_range_iff hc _).2 (hW O K r n hn ν hν _ (Submodule.mem_map_of_mem hs) P hP)
  · intro h0 Q hQ P hP
    rw [tscForm_apply]
    exact (tsc_range_iff hc _).2
      (hW O K r n hn ν hν P (Submodule.map_mono (tsc_zero_weight hn ν h0) hP) Q hQ)

theorem weyl_pairing : WeylPair := weylPair_of fock_pairing_bilinear fock_pairing_word_adjoint fock_pairing_highest_weight_proof

theorem dual_weyl_inclusion : DualWeylIn :=
  dualWeylIn_of fock_pairing_word_adjoint fock_pairing_highest_weight_proof highest_weight_norm coeffWord' lower_triangular_over_field

theorem nondegenerate_over_field : NondegK :=
  nondegK_of fock_pairing_word_adjoint fock_pairing_highest_weight_proof highest_weight_norm coeffWord' lower_triangular_over_field

theorem weyl_form_nondegenerate_global : FormCoreG :=
  formCoreG_of fock_pairing_bilinear fock_pairing_row_action highest_weight_norm weyl_pairing dual_weyl_inclusion nondegenerate_over_field

end Formalism.L2.G.Model.TS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.WeylFormNondegenerateGlobal =====

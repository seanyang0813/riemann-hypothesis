module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PolyDerivDeterminantPolyTensor
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.L2NormSqNonnegGaussianTorus
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.Analysis.Complex.ExponentialBounds
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfEqInner

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OwnerNoneIff, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.IteratedDerivListBound, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.CardChoiceLe, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OneAddPowSubOneLe, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfNormLeTwo

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OwnerNoneIff =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OwnerNoneIff", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PolyDerivDeterminantPolyTensor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

noncomputable section

variable {E : Type} [Field E] [NumberField E] {n nb : ℕ}

section Cols
variable {dim : (E →+* ℂ) → ℕ} (bs : Fin nb → Block E n dim)

def colB (p : Σ j : Fin nb, Fin (bs j).i) : Fin n := (bs p.1).col p.2

variable {bs}

theorem colB_inj (hD : Disj bs) : Function.Injective (colB bs) := by
  rintro ⟨j, a⟩ ⟨j', a'⟩ h
  by_cases hj : j = j'
  · subst hj
    have ha : a = a' := (bs j).col_inj h
    subst ha
    rfl
  · exact absurd h (hD j j' hj a a')

variable (bs)


open Classical in
def owner (k : Fin n) : Option (Σ j : Fin nb, Fin (bs j).i) :=
  if h : ∃ p, colB bs p = k then some h.choose else none

variable {bs}

theorem owner_colB (hD : Disj bs) (p : Σ j : Fin nb, Fin (bs j).i) : owner bs (colB bs p) = some p := by
  have h' : ∃ q, colB bs q = colB bs p := ⟨p, rfl⟩
  rw [owner, dite_eq_left h']
  exact congrArg some (colB_inj hD h'.choose_spec)

theorem colB_of_owner {k : Fin n} {p : Σ j : Fin nb, Fin (bs j).i} (h : owner bs k = some p) :
    colB bs p = k := by
  by_cases h' : ∃ q, colB bs q = k
  · rw [owner, dite_eq_left h'] at h
    obtain rfl := Option.some_injective _ h
    exact h'.choose_spec
  · rw [owner, dite_eq_right h'] at h
    cases h

theorem owner_eq_none {k : Fin n} (h : ∀ p, colB bs p ≠ k) : owner bs k = none := by
  rw [owner, dite_eq_right (show ¬∃ q, colB bs q = k from fun ⟨q, hq⟩ => h q hq)]

theorem owner_none_iff (hD : Disj bs) (k : Fin n) : owner bs k = none ↔ ∀ p, colB bs p ≠ k := by
  refine ⟨fun h p hp => ?_, owner_eq_none⟩
  subst hp
  rw [owner_colB hD] at h
  cases h

theorem prod_cols {M : Type*} [CommMonoid M] (hD : Disj bs) (f : Fin n → M) :
    ∏ k, f k = (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), f k) * ∏ p, f (colB bs p) := by
  rw [← Finset.prod_filter_mul_prod_filter_not Finset.univ (fun k => owner bs k = none)]
  congr 1
  rw [← Finset.prod_image (s := Finset.univ) (g := colB bs) (by
    intro a _ b _ h
    exact colB_inj hD h)]
  congr 1
  ext k
  simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_image, owner_none_iff hD,
    not_forall, ne_eq, not_not]

end Cols

section Letters
variable (X : PT E) {bs : Fin nb → Block E n X.dim}

theorem filter_positions (hD : Disj bs) (T : Choice bs) (p : Σ j : Fin nb, Fin (bs j).i) :
    (Multiset.map (letter bs T) Finset.univ.val).filter (fun l => l.1 = colB bs p) =
      Multiset.map (fun r : Fin (bs p.1).c => letter bs T ⟨p.1, (r, p.2)⟩) Finset.univ.val := by
  obtain ⟨j0, a0⟩ := p
  rw [Multiset.filter_map]
  calc _ = Multiset.map (letter bs T)
        (Multiset.map (fun r : Fin (bs j0).c => (⟨j0, (r, a0)⟩ : Slot bs)) Finset.univ.val) := by
        congr 1
        refine (Multiset.Nodup.ext (Finset.univ.nodup.filter _)
          (Finset.univ.nodup.map (fun r r' h => by simpa using h))).2 ?_
        rintro ⟨j, r, a⟩
        simp only [Multiset.mem_filter, Finset.mem_val, Finset.mem_univ, true_and, Function.comp,
          Multiset.mem_map]
        constructor
        · intro h
          have hja : (⟨j, a⟩ : Σ j : Fin nb, Fin (bs j).i) = ⟨j0, a0⟩ := colB_inj hD h
          cases hja
          exact ⟨r, rfl⟩
        · rintro ⟨r', h⟩
          cases h
          rfl
    _ = _ := by rw [Multiset.map_map]; rfl

open Classical in
theorem colL_block (hD : Disj bs) (T : Choice bs) (p : Σ j : Fin nb, Fin (bs j).i) :
    ((colL (lst X bs T) (colB bs p) : List (Vsp X.dim)) : Multiset (Vsp X.dim)) =
      Multiset.map (fun r : Fin (bs p.1).c => EuclideanSpace.single
        (⟨(bs p.1).τ, Fin.castLE (bs p.1).hi (T p.1 r p.2)⟩ : Idx X.dim) (1 : ℂ)) Finset.univ.val := by
  have hc : ∀ (L : List (Fin n × Vsp X.dim)) (k : Fin n),
      ((colL L k : List (Vsp X.dim)) : Multiset (Vsp X.dim)) =
        Multiset.map Prod.snd (Multiset.filter (fun x => x.1 = k) (L : Multiset _)) := by
    intro L k
    simp [colL]
  rw [hc, lst, ← Multiset.map_coe, Multiset.coe_toList, Multiset.filter_map, Multiset.map_map]
  have h2 := congrArg (Multiset.map (fun l : Letter n X.dim => EuclideanSpace.single l.2 (1 : ℂ)))
    (filter_positions X hD T p)
  rw [Multiset.map_map] at h2
  convert h2 using 2
  all_goals first
    | rfl

theorem colL_empty (hD : Disj bs) (T : Choice bs) {k : Fin n} (hk : owner bs k = none) :
    colL (lst X bs T) k = [] := by
  rw [owner_none_iff hD] at hk
  unfold colL
  rw [List.map_eq_nil_iff, List.filter_eq_nil_iff]
  intro x hx
  unfold lst at hx
  obtain ⟨l, hl, rfl⟩ := List.mem_map.1 hx
  obtain ⟨t, -, rfl⟩ := Multiset.mem_map.1 (Multiset.mem_toList.1 hl)
  intro h
  exact hk ⟨t.1, t.2.2⟩ (of_decide_eq_true h)

end Letters

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OwnerNoneIff =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.IteratedDerivListBound =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.IteratedDerivListBound", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OwnerNoneIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

noncomputable section

variable {E : Type} [Field E] [NumberField E] {n nb : ℕ}

section Col
variable {dim : (E →+* ℂ) → ℕ}

theorem iteratedDeriv_list_bound (s : (Fin 1 → Vsp dim) → ℂ) (c : ℕ) (μ : ℂ) (y : Vsp dim) (ε : ℝ)
    (σ : E →+* ℂ)
    (hbd : ∀ xs : Fin c → Vsp dim, (∀ k, InPart σ (xs k) ∧ ‖xs k‖ = 1) →
      ‖d1 s c xs - μ * ∏ k, Hf (xs k) y‖ ≤ ε)
    (l : List (Vsp dim)) (g : Fin c → Vsp dim)
    (hl : (l : Multiset (Vsp dim)) = Multiset.map g Finset.univ.val)
    (hg : ∀ r, InPart σ (g r) ∧ ‖g r‖ = 1) :
    ‖d1 s l.length (fun j => l.get j) - μ * ∏ r, Hf (g r) y‖ ≤ ε := by
  have hlen : l.length = c := by
    have := congrArg Multiset.card hl
    simpa using this
  subst hlen
  have hmem : ∀ j : Fin l.length, InPart σ (l.get j) ∧ ‖l.get j‖ = 1 := by
    intro j
    have : l.get j ∈ Multiset.map g Finset.univ.val := by
      rw [← hl]; exact Multiset.mem_coe.2 (List.get_mem l j)
    obtain ⟨r, -, hr⟩ := Multiset.mem_map.1 this
    rw [← hr]; exact hg r
  have hm : Finset.univ.val.map (fun j : Fin l.length => l.get j) = (l : Multiset (Vsp dim)) := by
    rw [Fin.univ_val_map]
    congr 1
    first
    | exact List.ofFn_get l
  have hprod : ∏ j : Fin l.length, Hf (l.get j) y = ∏ r, Hf (g r) y := by
    calc ∏ j : Fin l.length, Hf (l.get j) y
        = ((Finset.univ.val.map (fun j : Fin l.length => l.get j)).map (fun x => Hf x y)).prod := by
          rw [Multiset.map_map]; rfl
      _ = ∏ r, Hf (g r) y := by
          rw [hm, hl, Multiset.map_map]; rfl
  have := hbd (fun j => l.get j) hmem
  rw [hprod] at this
  exact this

theorem d1_zero (s : (Fin 1 → Vsp dim) → ℂ) (v : Fin 0 → Vsp dim) : d1 s 0 v = s 0 := by
  unfold d1
  exact iteratedFDeriv_zero_apply _

end Col

section Main
variable {dim : (E →+* ℂ) → ℕ} (bs : Fin nb → Block E n dim)

open Classical in
def eU (j : Fin nb) (a : Fin (bs j).i) : Vsp dim := by
  classical
  exact EuclideanSpace.single (⟨(bs j).τ, Fin.castLE (bs j).hi a⟩ : Idx dim) (1 : ℂ)

def idealA (μ : (Σ j : Fin nb, Fin (bs j).i) → ℂ) (y : (Σ j : Fin nb, Fin (bs j).i) → Vsp dim)
    (ee : Fin n → ℂ) (T : Choice bs) (k : Fin n) : ℂ :=
  match owner bs k with
  | some p => μ p * ∏ r, Hf (eU bs p.1 (T p.1 r p.2)) (y p)
  | none => ee k

def blockM (y : (Σ j : Fin nb, Fin (bs j).i) → Vsp dim) (j : Fin nb) :
    Matrix (Fin (bs j).i) (Fin (bs j).i) ℂ :=
  Matrix.of fun a b => Hf (eU bs j a) (y ⟨j, b⟩)

theorem main_term (hD : Disj bs) (μ : (Σ j : Fin nb, Fin (bs j).i) → ℂ)
    (y : (Σ j : Fin nb, Fin (bs j).i) → Vsp dim) (ee : Fin n → ℂ) :
    ∑ T : Choice bs, sgnT bs T * ∏ k, idealA bs μ y ee T k =
      (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), ee k) * (∏ p, μ p) *
        ∏ j, (blockM bs y j).det ^ (bs j).c := by
  have hinj : Function.Injective (colB bs) := by
    rintro ⟨j, a⟩ ⟨j', a'⟩ h
    simp only [colB] at h
    by_cases hj : j = j'
    · subst hj
      have := (bs j).col_inj h
      subst this
      rfl
    · exact absurd h (hD j j' hj a a')
  have hown : ∀ p, owner bs (colB bs p) = some p := by
    intro p
    have hex : ∃ p', colB bs p' = colB bs p := ⟨p, rfl⟩
    unfold owner
    rw [dite_eq_left hex]
    exact congrArg some (hinj hex.choose_spec)
  have hnone : ∀ k, owner bs k = none ↔ k ∉ Finset.univ.image (colB bs) := by
    intro k
    constructor
    · intro h hk
      obtain ⟨p, -, rfl⟩ := Finset.mem_image.mp hk
      rw [hown] at h
      exact Option.some_ne_none _ h
    · intro h
      unfold owner
      rw [dite_eq_right]
      rintro ⟨p, rfl⟩
      exact h (Finset.mem_image_of_mem _ (Finset.mem_univ p))
  have hT : ∀ T : Choice bs, ∏ k, idealA bs μ y ee T k =
      (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), ee k) *
        ∏ p, (μ p * ∏ r, Hf (eU bs p.1 (T p.1 r p.2)) (y p)) := by
    intro T
    rw [← Finset.prod_filter_mul_prod_filter_not Finset.univ (fun k => owner bs k = none)]
    congr 1
    · refine Finset.prod_congr rfl fun k hk => ?_
      have h := (Finset.mem_filter.mp hk).2
      simp only [idealA, h]
    · have hset : Finset.univ.filter (fun k => ¬ owner bs k = none) = Finset.univ.image (colB bs) := by
        ext k
        simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        rw [hnone]
        exact not_not
      rw [hset, Finset.prod_image (fun p _ q _ h => hinj h)]
      refine Finset.prod_congr rfl fun p _ => ?_
      simp only [idealA, hown]
  have hdet : ∀ j, (blockM bs y j).det ^ (bs j).c =
      ∏ r : Fin (bs j).c, ∑ σ : Equiv.Perm (Fin (bs j).i),
        ((Equiv.Perm.sign σ : ℤ) : ℂ) * ∏ b, Hf (eU bs j (σ b)) (y ⟨j, b⟩) := by
    intro j
    rw [Fin.prod_const, Matrix.det_apply]
    congr 1
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [Units.smul_def, zsmul_eq_mul]
    rfl
  have hsum : ∑ T : Choice bs, sgnT bs T * ∏ p, ∏ r, Hf (eU bs p.1 (T p.1 r p.2)) (y p) =
      ∏ j, (blockM bs y j).det ^ (bs j).c := by
    simp_rw [hdet]
    first
    | simp_rw [Fintype.prod_sum]
    refine Finset.sum_congr rfl fun T _ => ?_
    simp only [Finset.prod_mul_distrib, sgnT]
    congr 1
    first
    | rw [Fintype.prod_sigma]
    refine Finset.prod_congr rfl fun j _ => ?_
    first
    | rw [Finset.prod_comm]
  calc ∑ T, sgnT bs T * ∏ k, idealA bs μ y ee T k
      = ∑ T : Choice bs, ((∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), ee k) * ∏ p, μ p) *
          (sgnT bs T * ∏ p, ∏ r, Hf (eU bs p.1 (T p.1 r p.2)) (y p)) := by
        refine Finset.sum_congr rfl fun T _ => ?_
        rw [hT, Finset.prod_mul_distrib]
        ring
    _ = _ := by rw [← Finset.mul_sum, hsum]

end Main

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.IteratedDerivListBound =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.CardChoiceLe =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.CardChoiceLe", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PolyDerivDeterminantPolyTensor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.L2NormSqNonnegGaussianTorus\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open NumberField

noncomputable section

variable {E : Type} [Field E] [NumberField E] {n nb : ℕ}

section Count
variable {dim : (E →+* ℂ) → ℕ} (bs : Fin nb → Block E n dim)

theorem c_le_DF (j : Fin nb) (hi : 1 ≤ (bs j).i) : (bs j).c ≤ DF bs := by
  unfold DF
  exact le_trans (Nat.le_mul_of_pos_left _ hi)
    (Finset.single_le_sum (f := fun j => (bs j).i * (bs j).c) (fun j _ => Nat.zero_le _) (Finset.mem_univ j))

theorem card_choice_le (r : ℕ) (hr : ∀ j, (bs j).i ≤ r) :
    Fintype.card (Choice bs) ≤ r ^ DF bs := by
  unfold DF
  rw [Fintype.card_pi, ← Finset.prod_pow_eq_pow_sum]
  apply Finset.prod_le_prod₀ (fun _ _ => Nat.zero_le _)
  intro j _
  rw [Fintype.card_fun, Fintype.card_perm, Fintype.card_fin, Fintype.card_fin, pow_mul]
  exact Nat.pow_le_pow_left (le_trans (Nat.factorial_le_pow _) (Nat.pow_le_pow_left (hr j) _)) _

theorem prod_two_pow :
    ∏ p : (Σ j : Fin nb, Fin (bs j).i), (2 : ℝ) ^ (bs p.1).c = 2 ^ DF bs := by
  rw [Fintype.prod_sigma]
  simp only [Finset.prod_const, Finset.card_univ, Fintype.card_fin, ← pow_mul]
  rw [Finset.prod_pow_eq_pow_sum]
  unfold DF
  congr 1
  exact Finset.sum_congr rfl (fun j _ => mul_comm _ _)

theorem card_pos_le : Fintype.card (Σ j : Fin nb, Fin (bs j).i) ≤ DF bs := by
  rw [Fintype.card_sigma]
  unfold DF
  exact Finset.sum_le_sum (fun j _ => by rw [Fintype.card_fin]; exact Nat.le_mul_of_pos_right _ (bs j).hc)

theorem card_pos_pos (h : 1 ≤ DF bs) : 1 ≤ Fintype.card (Σ j : Fin nb, Fin (bs j).i) := by
  rw [Fintype.card_sigma]
  simp only [Fintype.card_fin]
  by_contra hc
  push_neg at hc
  have h0 : ∀ j, (bs j).i = 0 := by
    intro j
    have := Finset.single_le_sum (f := fun j => (bs j).i) (fun j _ => Nat.zero_le _) (Finset.mem_univ j)
    omega
  unfold DF at h
  simp [h0] at h

theorem prod_det_ge (d : ∀ j : Fin nb, ℝ) (δ : ℝ) (hδ0 : 0 ≤ δ) (hδ1 : δ ≤ 1)
    (hd : ∀ j, 1 ≤ (bs j).i → δ ≤ d j) (hd1 : ∀ j, (bs j).i = 0 → d j = 1) :
    δ ^ DF bs ≤ ∏ j, d j ^ (bs j).c := by
  unfold DF
  rw [← Finset.prod_pow_eq_pow_sum]
  apply Finset.prod_le_prod₀ (fun j _ => pow_nonneg hδ0 _)
  intro j _
  by_cases hi : (bs j).i = 0
  · rw [hi, zero_mul, pow_zero, hd1 j hi, one_pow]
  · have hi1 : 1 ≤ (bs j).i := Nat.one_le_iff_ne_zero.mpr hi
    calc δ ^ ((bs j).i * (bs j).c) ≤ δ ^ (bs j).c :=
          pow_le_pow_of_le_one hδ0 hδ1 (Nat.le_mul_of_pos_left _ hi1)
      _ ≤ d j ^ (bs j).c := pow_le_pow_left₀ hδ0 (hd j hi1) _

end Count

section Data
variable [IsCMField E] (X : PT E) (bs : Fin nb → Block E n X.dim)

open Classical in
theorem block_data_all (hx : Ext.All) (hc : CharStatement) (ht : ColTorusStatement)
    (ha : ColAbelStatement) (P : Par X (DF bs)) (I : Submodule ℤ (Vsp X.dim)) (hI : IsSplit P I)
    (j : Fin nb) :
    ∃ (y : Fin (bs j).i → Vsp X.dim) (s : Fin (bs j).i → (Fin 1 → Vsp X.dim) → ℂ)
      (μ : Fin (bs j).i → ℂ),
      (∀ b, s b ∈ X.Sec P.q 1) ∧
      (∀ b (xs : Fin (bs j).c → Vsp X.dim), (∀ k, InPart (bs j).τ (xs k) ∧ ‖xs k‖ = 1) →
        ‖d1 (s b) (bs j).c xs - μ b * ∏ k, Hf (xs k) (y b)‖ ≤ P.eps1 * ‖μ b‖) ∧
      (∀ b, P.K6⁻¹ * Real.exp (-(2 * Real.pi * Cchi (E := E) P.m * P.ph / P.q)) * X.l2 P.q (s b) ≤
        ‖μ b‖ ^ 2) ∧
      (∀ b, ‖y b‖ ≤ 2) ∧
      (2 : ℝ) ^ (-(X.r : ℝ) / 2) / 2 ≤
        ‖(Matrix.of fun a b => Hf (EuclideanSpace.single
          (⟨(bs j).τ, Fin.castLE (bs j).hi a⟩ : Idx X.dim) (1 : ℂ)) (y b)).det‖ ∧
      (∀ b, μ b ≠ 0) := by
  rcases Nat.eq_zero_or_pos (bs j).i with h0 | hpos
  · haveI : IsEmpty (Fin (bs j).i) := by rw [h0]; infer_instance
    refine ⟨isEmptyElim, isEmptyElim, isEmptyElim, isEmptyElim, fun b => isEmptyElim b,
      isEmptyElim, isEmptyElim, ?_, isEmptyElim⟩
    rw [Matrix.det_isEmpty, norm_one]
    have h1 : (2 : ℝ) ^ (-(X.r : ℝ) / 2) ≤ 1 :=
      Real.rpow_le_one_of_one_le_of_nonpos (by norm_num) (by
        have := Nat.cast_nonneg (α := ℝ) X.r; linarith)
    linarith
  · exact block_data hx hc ht ha X P I hI (bs j).τ (bs j).i (bs j).hi (bs j).c (c_le_DF bs j hpos)

end Data

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.CardChoiceLe =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OneAddPowSubOneLe =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OneAddPowSubOneLe", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

theorem norm_prod_sub_prod_le {ι : Type*} (s : Finset ι) (x y : ι → ℂ) (β δ : ι → ℝ)
    (hy : ∀ i, ‖y i‖ ≤ β i) (hxy : ∀ i, ‖x i - y i‖ ≤ δ i) :
    ‖∏ i ∈ s, x i - ∏ i ∈ s, y i‖ ≤ ∏ i ∈ s, (β i + δ i) - ∏ i ∈ s, β i := by
  classical
  have hβ : ∀ i, 0 ≤ β i := fun i => (norm_nonneg _).trans (hy i)
  have hδ : ∀ i, 0 ≤ δ i := fun i => (norm_nonneg _).trans (hxy i)
  have hx : ∀ i, ‖x i‖ ≤ β i + δ i := fun i => by
    calc ‖x i‖ = ‖y i + (x i - y i)‖ := by ring_nf
      _ ≤ ‖y i‖ + ‖x i - y i‖ := norm_add_le _ _
      _ ≤ β i + δ i := add_le_add (hy i) (hxy i)
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.prod_insert ha, Finset.prod_insert ha, Finset.prod_insert ha]
    have hX : ‖∏ i ∈ s, x i‖ ≤ ∏ i ∈ s, (β i + δ i) := by
      rw [norm_prod]
      exact Finset.prod_le_prod₀ (fun i _ => norm_nonneg _) (fun i _ => hx i)
    have hP : ∏ i ∈ s, β i ≤ ∏ i ∈ s, (β i + δ i) :=
      Finset.prod_le_prod₀ (fun i _ => hβ i) (fun i _ => le_add_of_nonneg_right (hδ i))
    calc ‖x a * ∏ i ∈ s, x i - y a * ∏ i ∈ s, y i‖
        = ‖(x a - y a) * ∏ i ∈ s, x i + y a * (∏ i ∈ s, x i - ∏ i ∈ s, y i)‖ := by ring_nf
      _ ≤ ‖(x a - y a) * ∏ i ∈ s, x i‖ + ‖y a * (∏ i ∈ s, x i - ∏ i ∈ s, y i)‖ := norm_add_le _ _
      _ = ‖x a - y a‖ * ‖∏ i ∈ s, x i‖ + ‖y a‖ * ‖∏ i ∈ s, x i - ∏ i ∈ s, y i‖ := by
          rw [norm_mul, norm_mul]
      _ ≤ δ a * ∏ i ∈ s, (β i + δ i) + β a * (∏ i ∈ s, (β i + δ i) - ∏ i ∈ s, β i) := by
          exact add_le_add (mul_le_mul (hxy a) hX (norm_nonneg _) (hδ a))
            (mul_le_mul (hy a) ih (norm_nonneg _) (hβ a))
      _ = (β a + δ a) * ∏ i ∈ s, (β i + δ i) - β a * ∏ i ∈ s, β i := by ring

theorem norm_sum_prod_sub_le {τ ι : Type*} [Fintype τ] [Fintype ι] (sg : τ → ℂ)
    (hsg : ∀ T, ‖sg T‖ ≤ 1) (D A : τ → ι → ℂ) (α δ : ι → ℝ) (hA : ∀ T k, ‖A T k‖ ≤ α k)
    (hD : ∀ T k, ‖D T k - A T k‖ ≤ δ k) :
    ‖∑ T, sg T * ∏ k, D T k - ∑ T, sg T * ∏ k, A T k‖ ≤
      Fintype.card τ * (∏ k, (α k + δ k) - ∏ k, α k) := by
  rw [← Finset.sum_sub_distrib]
  calc ‖∑ T, (sg T * ∏ k, D T k - sg T * ∏ k, A T k)‖
      ≤ ∑ T, ‖sg T * ∏ k, D T k - sg T * ∏ k, A T k‖ := norm_sum_le _ _
    _ ≤ ∑ _T : τ, (∏ k, (α k + δ k) - ∏ k, α k) := by
        refine Finset.sum_le_sum fun T _ => ?_
        rw [← mul_sub, norm_mul]
        have h := norm_prod_sub_prod_le Finset.univ (D T) (A T) α δ (hA T) (hD T)
        calc ‖sg T‖ * ‖∏ k, D T k - ∏ k, A T k‖ ≤ 1 * ‖∏ k, D T k - ∏ k, A T k‖ := by
              gcongr
              exact hsg T
          _ ≤ _ := by rw [one_mul]; exact h
    _ = Fintype.card τ * (∏ k, (α k + δ k) - ∏ k, α k) := by
        rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]

theorem one_add_pow_sub_one_le (x : ℝ) (hx : 0 ≤ x) (m : ℕ) :
    (1 + x) ^ m - 1 ≤ m * x * (1 + x) ^ m := by
  induction m with
  | zero => simp
  | succ n ih =>
    have h1 : (1 : ℝ) ≤ (1 + x) ^ n := by
      have h : (1 : ℝ) ^ n ≤ (1 + x) ^ n := by gcongr; linarith
      simpa using h
    have h2 : (1 : ℝ) ≤ (1 + x) ^ n * (1 + x) := one_le_mul_of_one_le_of_one_le h1 (by linarith only [hx])
    have h3 := mul_le_mul_of_nonneg_right ih (by linarith only [hx] : (0 : ℝ) ≤ 1 + x)
    push_cast
    rw [pow_succ]
    linarith only [h3, mul_nonneg hx (sub_nonneg.2 h2)]

theorem num_bound (r D : ℕ) (hr : 1 ≤ r) (ε : ℝ) (hε0 : 0 ≤ ε)
    (hε : ε ≤ Real.exp (-((D + 1) * (r * Real.log r + 3 * r + 3)))) :
    2 * D * (4 * r) ^ D * Real.exp ((r / 2 + 1) * D) * ε ≤ 1 := by
  have hr1 : (1 : ℝ) ≤ r := by exact_mod_cast hr
  have hr0 : (0 : ℝ) < r := by linarith
  have hlogr : 0 ≤ Real.log r := Real.log_nonneg hr1
  have hlog4 : Real.log 4 ≤ 2 := by
    rw [Real.log_le_iff_le_exp (by norm_num)]
    have h1 : (2 : ℝ) ≤ Real.exp 1 := by linarith [Real.add_one_le_exp (1 : ℝ)]
    have h2 : Real.exp 2 = Real.exp 1 * Real.exp 1 := by rw [← Real.exp_add]; norm_num
    rw [h2]; linarith only [mul_le_mul h1 h1 (by norm_num) (by linarith only [h1])]
  have hD0 : (0 : ℝ) ≤ D := Nat.cast_nonneg D
  have h2D : 2 * (D : ℝ) ≤ Real.exp (2 * D) := by linarith [Real.add_one_le_exp (2 * (D : ℝ))]
  have hpow : ((4 : ℝ) * r) ^ D = Real.exp (D * Real.log (4 * r)) := by
    rw [Real.exp_nat_mul, Real.exp_log (by positivity)]
  have hlog : Real.log (4 * r) = Real.log 4 + Real.log r :=
    Real.log_mul (by norm_num) (by positivity)
  have hP : 2 * (D : ℝ) * (4 * r) ^ D * Real.exp ((r / 2 + 1) * D) ≤
      Real.exp ((D + 1) * (r * Real.log r + 3 * r + 3)) := by
    rw [hpow]
    calc 2 * (D : ℝ) * Real.exp (D * Real.log (4 * r)) * Real.exp ((r / 2 + 1) * D)
        ≤ Real.exp (2 * D) * Real.exp (D * Real.log (4 * r)) * Real.exp ((r / 2 + 1) * D) := by
          gcongr
      _ = Real.exp (2 * D + D * Real.log (4 * r) + (r / 2 + 1) * D) := by
          rw [Real.exp_add, Real.exp_add]
      _ ≤ Real.exp ((D + 1) * (r * Real.log r + 3 * r + 3)) := by
          apply Real.exp_le_exp.2
          rw [hlog]
          linarith only [mul_nonneg hD0 (mul_nonneg (sub_nonneg.2 hr1) hlogr),
            mul_nonneg hD0 (sub_nonneg.2 hlog4), mul_nonneg hD0 (sub_nonneg.2 hr1),
            mul_nonneg hr0.le hlogr, hD0, hr1, hlogr]
  calc 2 * (D : ℝ) * (4 * r) ^ D * Real.exp ((r / 2 + 1) * D) * ε
      ≤ Real.exp ((D + 1) * (r * Real.log r + 3 * r + 3)) *
          Real.exp (-((D + 1) * (r * Real.log r + 3 * r + 3))) :=
        mul_le_mul hP hε hε0 (Real.exp_pos _).le
    _ = 1 := by rw [← Real.exp_add]; simp

theorem eps_bound (g d : ℕ) (t K : ℝ) (h : g * Real.log 2 + 2 * d + 3 + K ≤ t) :
    7 * 2 ^ g * (4.3 : ℝ) ^ d * Real.exp (-t) ≤ Real.exp (-K) := by
  have he1 : (2.7182818283 : ℝ) < Real.exp 1 := Real.exp_one_gt_d9
  have h7 : (7 : ℝ) ≤ Real.exp 3 := by
    have e : Real.exp 3 = Real.exp 1 ^ 3 := by rw [← Real.exp_nat_mul]; norm_num
    rw [e]
    calc (7 : ℝ) ≤ 2.7182818283 ^ 3 := by norm_num
      _ ≤ Real.exp 1 ^ 3 := by gcongr
  have h43 : (4.3 : ℝ) ≤ Real.exp 2 := by
    have e : Real.exp 2 = Real.exp 1 ^ 2 := by rw [← Real.exp_nat_mul]; norm_num
    rw [e]
    calc (4.3 : ℝ) ≤ 2.7182818283 ^ 2 := by norm_num
      _ ≤ Real.exp 1 ^ 2 := by gcongr
  have h2g : (2 : ℝ) ^ g = Real.exp (g * Real.log 2) := by
    rw [Real.exp_nat_mul, Real.exp_log (by norm_num)]
  have h43d : (4.3 : ℝ) ^ d ≤ Real.exp (d * 2) := by
    rw [Real.exp_nat_mul]
    gcongr
  calc 7 * 2 ^ g * (4.3 : ℝ) ^ d * Real.exp (-t)
      ≤ Real.exp 3 * Real.exp (g * Real.log 2) * Real.exp (d * 2) * Real.exp (-t) := by
        rw [h2g]; gcongr
    _ = Real.exp (3 + g * Real.log 2 + d * 2 + -t) := by simp only [Real.exp_add]
    _ ≤ Real.exp (-K) := Real.exp_le_exp.2 (by linarith)

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OneAddPowSubOneLe =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfNormLeTwo =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfNormLeTwo", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.IteratedDerivListBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Monotonicity.Lemmas\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.CardChoiceLe\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfEqInner\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.L2NormSqNonnegGaussianTorus\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.OneAddPowSubOneLe\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open MeasureTheory Complex NumberField

section Core

variable {E : Type} [Field E] [NumberField E]

theorem Hf_norm_le_two {dim : (E →+* ℂ) → ℕ} (e y : Vsp dim) (he : ‖e‖ = 1) (hy : ‖y‖ ≤ 2) :
    ‖Hf e y‖ ≤ 2 := by
  rw [_root_.ReciprocityTheory.ChartRestriction.G.I2.lemS_Hf_eq_inner]
  calc ‖inner ℂ y e‖ ≤ ‖y‖ * ‖e‖ := norm_inner_le_norm y e
    _ ≤ 2 := by rw [he, mul_one]; exact hy

open Classical in
theorem eU_props {dim : (E →+* ℂ) → ℕ} {n nb : ℕ} (bs : Fin nb → Block E n dim) (j : Fin nb)
    (a : Fin (bs j).i) : InPart (bs j).τ (eU bs j a) ∧ ‖eU bs j a‖ = 1 := by
  refine ⟨fun k hk => ?_, by simp [eU]⟩
  simp only [eU, PiLp.single_apply]
  rw [if_neg]
  rintro rfl
  exact hk rfl

theorem norm_sgnT {dim : (E →+* ℂ) → ℕ} {n nb : ℕ} (bs : Fin nb → Block E n dim) (T : Choice bs) :
    ‖sgnT bs T‖ ≤ 1 := by
  unfold sgnT
  rw [norm_prod]
  refine Finset.prod_le_one₀ (fun _ _ => norm_nonneg _) fun j _ => ?_
  rw [norm_prod]
  refine Finset.prod_le_one₀ (fun _ _ => norm_nonneg _) fun r _ => ?_
  rcases Int.units_eq_one_or (Equiv.Perm.sign (T j r)) with h | h <;> simp [h]


open Classical in
theorem jof_core (hx : Ext.All) (hs : SplitStatement) (hc : CharStatement) (ht : ColTorusStatement)
    (ha : ColAbelStatement) (he : ColEmptyStatement) [IsCMField E] (X : PT E) {n nb : ℕ}
    (bs : Fin nb → Block E n X.dim) (hD : Disj bs) (P : Par X (DF bs)) :
    ∃ F ∈ X.Sec P.q n, X.l2 P.q F = 1 ∧ P.Jbound n ≤ ‖polyDeriv (P1 bs) dir F 0‖ ^ 2 := by
  obtain ⟨I, hI⟩ := hs E X (DF bs) P
  choose yB sB μB hsB hbd hl2 hyB hdet hμ using block_data_all X bs hx hc ht ha P I hI
  obtain ⟨se, hse, hse0, hsel⟩ := he E X (DF bs) P I hI
  set y : (Σ j : Fin nb, Fin (bs j).i) → Vsp X.dim := fun p => yB p.1 p.2 with hydef
  set μ : (Σ j : Fin nb, Fin (bs j).i) → ℂ := fun p => μB p.1 p.2 with hμdef
  set sc : Fin n → (Fin 1 → Vsp X.dim) → ℂ := fun k =>
    match owner bs k with
    | some p => sB p.1 p.2
    | none => se with hscdef
  have hsc_col : ∀ p, sc (colB bs p) = sB p.1 p.2 := fun p => by
    simp only [hscdef, owner_colB hD p]
  have hsc_none : ∀ k, owner bs k = none → sc k = se := fun k hk => by
    simp only [hscdef, hk]
  have hsc : ∀ k, sc k ∈ X.Sec P.q 1 := by
    intro k
    rcases hk : owner bs k with _ | p
    · rw [hsc_none k hk]; exact hse
    · rw [← colB_of_owner hk, hsc_col]; exact hsB _ _
  have hcd : ∀ k, ContDiff ℂ (⊤ : ℕ∞) (sc k) := fun k => sec_contDiff X (hsc k)
  set F₀ := tens X sc with hF₀def
  have hF₀ : F₀ ∈ X.Sec P.q n := tens_mem X hsc
  set V0 := polyDeriv (P1 bs) dir F₀ 0 with hV0def
  have hV0 := polyDeriv_determinantPoly_tensor X bs sc hcd
  set ε := P.eps1 with hεdef
  set ee : Fin n → ℂ := fun _ => se 0 with heedef
  set A := idealA bs μ y ee with hAdef
  set D : Choice bs → Fin n → ℂ := fun T k =>
    d1 (sc k) (colL (lst X bs T) k).length (fun j => (colL (lst X bs T) k).get j) with hDdef
  set α : Fin n → ℝ := fun k =>
    match owner bs k with
    | some p => ‖μ p‖ * 2 ^ (bs p.1).c
    | none => ‖se 0‖ with hαdef
  set δ : Fin n → ℝ := fun k =>
    match owner bs k with
    | some p => ε * ‖μ p‖
    | none => 0 with hδdef
  have hε0 : 0 ≤ ε := by
    rw [hεdef, Par.eps1]; positivity

  have hAb : ∀ T k, ‖A T k‖ ≤ α k := by
    intro T k
    rcases hk : owner bs k with _ | p
    · simp only [hAdef, idealA, hk, hαdef, heedef, le_refl]
    · simp only [hAdef, idealA, hk, hαdef]
      rw [norm_mul, norm_prod]
      gcongr
      calc ∏ r, ‖Hf (eU bs p.1 (T p.1 r p.2)) (y p)‖ ≤ ∏ _r : Fin (bs p.1).c, (2 : ℝ) :=
            Finset.prod_le_prod₀ (fun _ _ => norm_nonneg _) fun r _ =>
              Hf_norm_le_two _ _ (eU_props bs p.1 _).2 (hyB p.1 p.2)
        _ = 2 ^ (bs p.1).c := by simp
  have hDb : ∀ T k, ‖D T k - A T k‖ ≤ δ k := by
    intro T k
    rcases hk : owner bs k with _ | p
    · simp only [hAdef, idealA, hk, hδdef, hDdef, heedef]
      rw [colL_empty X hD T hk, hsc_none k hk]
      simp [d1_zero]
    · have hkp := colB_of_owner hk
      subst hkp
      simp only [hAdef, idealA, hk, hδdef, hDdef]
      rw [hsc_col]
      exact iteratedDeriv_list_bound (sB p.1 p.2) (bs p.1).c (μ p) (y p) (ε * ‖μ p‖) (bs p.1).τ
        (hbd p.1 p.2) _ (fun r => eU bs p.1 (T p.1 r p.2)) (colL_block X hD T p)
        (fun r => eU_props bs p.1 _)
  have herr := norm_sum_prod_sub_le (sgnT bs) (norm_sgnT bs) D A α δ hAb hDb
  rw [main_term bs hD μ y ee] at herr
  have hV0e : V0 = ∑ T, sgnT bs T * ∏ k, D T k := hV0
  rw [← hV0e] at herr
  set N := Fintype.card (Choice bs) with hNdef

  set Ce : ℝ := ∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), ‖se 0‖ with hCedef
  set Mμ : ℝ := ∏ p, ‖μ p‖ with hMμdef
  set Dt : ℝ := ∏ j, ‖(blockM bs y j).det‖ ^ (bs j).c with hDtdef
  set A1 : ℝ := ∏ p : (Σ j : Fin nb, Fin (bs j).i), ((2 : ℝ) ^ (bs p.1).c + ε) with hA1def
  have hCe0 : 0 ≤ Ce := Finset.prod_nonneg fun _ _ => norm_nonneg _
  have hMμ0 : 0 ≤ Mμ := Finset.prod_nonneg fun _ _ => norm_nonneg _
  have hCm : ‖(∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), ee k) * (∏ p, μ p) *
      ∏ j, (blockM bs y j).det ^ (bs j).c‖ = Ce * Mμ * Dt := by
    simp only [norm_mul, norm_prod, norm_pow, hCedef, hMμdef, hDtdef, heedef]
  have hα : ∏ k, α k = Ce * (Mμ * 2 ^ DF bs) := by
    rw [prod_cols hD]
    congr 1
    · refine Finset.prod_congr rfl fun k hk => ?_
      rw [Finset.mem_filter] at hk
      simp only [hαdef, hk.2]
    · rw [hMμdef, ← prod_two_pow bs, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun p _ => ?_
      simp only [hαdef, owner_colB hD p]
  have hαδ : ∏ k, (α k + δ k) = Ce * (Mμ * A1) := by
    rw [prod_cols hD]
    congr 1
    · refine Finset.prod_congr rfl fun k hk => ?_
      rw [Finset.mem_filter] at hk
      simp only [hαdef, hδdef, hk.2, add_zero]
    · rw [hMμdef, hA1def, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun p _ => ?_
      simp only [hαdef, hδdef, owner_colB hD p]
      ring

  have hr1 : 1 ≤ X.r := by
    have := P.hfr
    rcases Nat.eq_zero_or_pos X.r with h | h
    · rw [h, mul_zero] at this; omega
    · exact h
  have hir : ∀ j, (bs j).i ≤ X.r := fun j => by
    have h1 := (bs j).hi
    have h2 := X.dim_conj (bs j).τ
    omega
  have hcard := card_choice_le bs X.r hir
  have hm := card_pos_le bs
  have hK : ε ≤ Real.exp (-(((DF bs : ℝ) + 1) * ((X.r : ℝ) * Real.log X.r + 3 * X.r + 3))) := by
    have h6 := P.C6
    rw [hεdef, Par.eps1]
    exact eps_bound X.gA (dstar (E := E) P.m) (t0 (E := E) P.q P.R0) _ (by push_cast at h6 ⊢; linarith)
  have hε1 : ε ≤ 1 := by
    have hlog := Real.log_nonneg (show (1 : ℝ) ≤ X.r by exact_mod_cast hr1)
    have hr0 : (0 : ℝ) ≤ X.r := Nat.cast_nonneg _
    have h1 : 0 ≤ ((DF bs : ℝ) + 1) * ((X.r : ℝ) * Real.log X.r + 3 * X.r + 3) :=
      mul_nonneg (by positivity) (by have := mul_nonneg hr0 hlog; linarith)
    exact hK.trans (Real.exp_le_one_iff.2 (by linarith))
  have hnum := num_bound X.r (DF bs) hr1 ε hε0 hK
  set m := Fintype.card (Σ j : Fin nb, Fin (bs j).i) with hmdef
  have hA1le : A1 - 2 ^ DF bs ≤ 2 ^ DF bs * (m * ε * 2 ^ DF bs) := by
    have h1 : A1 ≤ 2 ^ DF bs * (1 + ε) ^ m := by
      rw [hA1def, ← prod_two_pow bs, hmdef, ← Finset.card_univ, ← Finset.prod_const,
        ← Finset.prod_mul_distrib]
      refine Finset.prod_le_prod₀ (fun _ _ => by positivity) fun p _ => ?_
      have : (1 : ℝ) ≤ 2 ^ (bs p.1).c := one_le_pow₀ (by norm_num)
      linarith only [mul_le_mul_of_nonneg_right this hε0]
    have h2 := one_add_pow_sub_one_le ε hε0 m
    have h3 : (1 + ε) ^ m ≤ 2 ^ DF bs :=
      (pow_le_pow_left₀ (by linarith only [hε0]) (by linarith only [hε1]) m).trans (pow_le_pow_right₀ (by norm_num) hm)
    have h4 : (0 : ℝ) ≤ 2 ^ DF bs := by positivity
    have h5 : (0 : ℝ) ≤ m * ε := by positivity
    calc A1 - 2 ^ DF bs ≤ 2 ^ DF bs * ((1 + ε) ^ m - 1) := by linarith only [h1]
      _ ≤ 2 ^ DF bs * (m * ε * (1 + ε) ^ m) := mul_le_mul_of_nonneg_left h2 h4
      _ ≤ 2 ^ DF bs * (m * ε * 2 ^ DF bs) := by gcongr
  set δ0 : ℝ := (2 : ℝ) ^ (-(X.r : ℝ) / 2) / 2 with hδ0def
  have hδ0pos : 0 < δ0 := by positivity
  have hδ01 : δ0 ≤ 1 := by
    have : (2 : ℝ) ^ (-(X.r : ℝ) / 2) ≤ 1 :=
      Real.rpow_le_one_of_one_le_of_nonpos (by norm_num) (by
        have := Nat.cast_nonneg (α := ℝ) X.r; linarith)
    rw [hδ0def]; linarith
  have hDt : δ0 ^ DF bs ≤ Dt := by
    rw [hDtdef]
    refine prod_det_ge bs _ δ0 hδ0pos.le hδ01 (fun j hj => hdet j) (fun j hj => ?_)
    haveI : IsEmpty (Fin (bs j).i) := by rw [hj]; infer_instance
    rw [Matrix.det_isEmpty, norm_one]
  have hδ0exp : Real.exp (-((X.r : ℝ) / 2 + 1)) ≤ δ0 := by
    rw [hδ0def, Real.rpow_def_of_pos (by norm_num)]
    have hl2 : Real.log 2 ≤ 1 := by
      have := Real.log_le_sub_one_of_pos (show (0 : ℝ) < 2 by norm_num); linarith
    have hl2' : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
    have he1 : Real.exp (-1) ≤ 1 / 2 := by
      rw [Real.exp_neg, one_div]
      have := Real.add_one_le_exp (1 : ℝ)
      exact inv_anti₀ (by norm_num) (by linarith)
    have hr0 : (0 : ℝ) ≤ X.r := Nat.cast_nonneg _
    calc Real.exp (-((X.r : ℝ) / 2 + 1)) = Real.exp (-((X.r : ℝ) / 2)) * Real.exp (-1) := by
          rw [← Real.exp_add]; ring_nf
      _ ≤ Real.exp (Real.log 2 * (-(X.r : ℝ) / 2)) * (1 / 2) := by
          gcongr
          linarith only [mul_le_mul_of_nonneg_right hl2 hr0]
      _ = Real.exp (Real.log 2 * (-(X.r : ℝ) / 2)) / 2 := by ring
  have hnum2 : (N : ℝ) * (A1 - 2 ^ DF bs) ≤ Dt / 2 := by
    have hc : (N : ℝ) ≤ (X.r : ℝ) ^ DF bs := by exact_mod_cast hcard
    have hm' : (m : ℝ) ≤ DF bs := by exact_mod_cast hm
    have hA0 : 0 ≤ A1 - 2 ^ DF bs := by
      rw [hA1def, ← prod_two_pow bs, sub_nonneg]
      exact Finset.prod_le_prod₀ (fun _ _ => by positivity) fun p _ => le_add_of_nonneg_right hε0
    have hexp : Real.exp (-((X.r : ℝ) / 2 + 1)) ^ DF bs = Real.exp (-(((X.r : ℝ) / 2 + 1) * DF bs)) := by
      rw [← Real.exp_nat_mul]
      congr 1
      ring
    have hE : 0 < Real.exp ((X.r / 2 + 1) * DF bs) := Real.exp_pos _
    have hfin : (DF bs : ℝ) * ε * (4 * X.r) ^ DF bs ≤ Real.exp (-(((X.r : ℝ) / 2 + 1) * DF bs)) / 2 := by
      rw [Real.exp_neg, ← one_div, div_div, le_div_iff₀ (by positivity)]
      calc (DF bs : ℝ) * ε * (4 * X.r) ^ DF bs * (Real.exp ((X.r / 2 + 1) * DF bs) * 2)
          = 2 * (DF bs : ℝ) * (4 * X.r) ^ DF bs * Real.exp ((X.r / 2 + 1) * DF bs) * ε := by ring
        _ ≤ 1 := hnum
    have h4r : ((4 : ℝ) * X.r) ^ DF bs = 2 ^ DF bs * 2 ^ DF bs * (X.r : ℝ) ^ DF bs := by
      rw [← mul_pow, ← mul_pow]; norm_num
    have hmε : (m : ℝ) * ε * 2 ^ DF bs ≤ (DF bs : ℝ) * ε * 2 ^ DF bs :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hm' hε0) (by positivity)
    have hr0 : (0 : ℝ) ≤ (X.r : ℝ) ^ DF bs := by positivity
    have h20 : (0 : ℝ) ≤ 2 ^ DF bs := by positivity
    calc (N : ℝ) * (A1 - 2 ^ DF bs)
        ≤ (X.r : ℝ) ^ DF bs * (2 ^ DF bs * (m * ε * 2 ^ DF bs)) :=
          mul_le_mul hc hA1le hA0 hr0
      _ ≤ (X.r : ℝ) ^ DF bs * (2 ^ DF bs * (DF bs * ε * 2 ^ DF bs)) :=
          mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hmε h20) hr0
      _ = (DF bs : ℝ) * ε * (4 * X.r) ^ DF bs := by rw [h4r]; ring
      _ ≤ Real.exp (-(((X.r : ℝ) / 2 + 1) * DF bs)) / 2 := hfin
      _ ≤ Dt / 2 := by
          rw [← hexp]
          have := pow_le_pow_left₀ (Real.exp_pos _).le hδ0exp (DF bs)
          linarith
  have herr2 : ‖V0 - (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), ee k) * (∏ p, μ p) *
      ∏ j, (blockM bs y j).det ^ (bs j).c‖ ≤ Ce * Mμ * Dt / 2 := by
    refine herr.trans ?_
    rw [hαδ, hα]
    calc (N : ℝ) * (Ce * (Mμ * A1) - Ce * (Mμ * 2 ^ DF bs))
        = Ce * Mμ * ((N : ℝ) * (A1 - 2 ^ DF bs)) := by ring
      _ ≤ Ce * Mμ * (Dt / 2) := mul_le_mul_of_nonneg_left hnum2 (mul_nonneg hCe0 hMμ0)
      _ = Ce * Mμ * Dt / 2 := by ring
  have hV0ge : Ce * Mμ * Dt / 2 ≤ ‖V0‖ := by
    have := norm_sub_norm_le ((∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), ee k) *
      (∏ p, μ p) * ∏ j, (blockM bs y j).det ^ (bs j).c) V0
    rw [hCm, norm_sub_rev] at this
    linarith

  have hCepos : 0 < Ce := Finset.prod_pos fun _ _ => by
    have := hse0; linarith
  have hMμpos : 0 < Mμ := Finset.prod_pos fun p _ => norm_pos_iff.2 (hμ p.1 p.2)
  have hDtpos : 0 < Dt := lt_of_lt_of_le (pow_pos hδ0pos _) hDt
  have hV0pos : 0 < ‖V0‖ := lt_of_lt_of_le (by positivity) hV0ge
  have hl2F : X.l2 P.q F₀ = ∏ k, X.l2 P.q (sc k) := l2_tens_eq_prod X P.q sc
  have hl2pos : 0 < X.l2 P.q F₀ := by
    rcases (l2NormSq_nonneg_gaussianTorus X P.q F₀).lt_or_eq with h | h
    · exact h
    · exfalso
      rw [hl2F] at h
      obtain ⟨k, -, hk⟩ := Finset.prod_eq_zero_iff.1 h.symm
      have hz := eq_zero_of_l2_eq_zero X hx.1 P.hq (hsc k) hk
      have hF0 : F₀ = 0 := by
        funext v
        rw [hF₀def, tens]
        exact Finset.prod_eq_zero (Finset.mem_univ k) (by rw [hz]; rfl)
      have : V0 = 0 := by rw [hV0def, hF0]; exact polyDeriv_zero_fun _ _ _
      rw [this, norm_zero] at hV0pos
      exact lt_irrefl 0 hV0pos

  set a : ℝ := 2 * Real.pi * Cchi (E := E) P.m * P.ph / P.q with hadef
  have ha0 : 0 ≤ a := by
    have := Cchi_nonneg (E := E) P.m; have := ph_nonneg P; have := Real.pi_pos
    rw [hadef]; positivity
  set w : ℝ := 4⁻¹ * P.K6⁻¹ * Real.exp (-a) with hwdef
  have hK6 := inv_constant_nonneg P
  have hJ : P.Jbound n = (∏ _k : Fin n, w) * (2 : ℝ)⁻¹ ^ ((X.r + 2) * DF bs) := by
    have hwn : w ^ n = (4 : ℝ)⁻¹ ^ n * P.K6⁻¹ ^ n *
        Real.exp (-(2 * Real.pi * n * Cchi (E := E) P.m * P.ph / P.q)) := by
      rw [hwdef, mul_pow, mul_pow, ← Real.exp_nat_mul]
      congr 2
      rw [hadef]
      ring
    rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin, hwn, Par.Jbound, Par.K6]
    ring
  have hmain : P.Jbound n * X.l2 P.q F₀ ≤ ‖V0‖ ^ 2 := by
    have hsq : (Ce * Mμ * Dt / 2) ^ 2 ≤ ‖V0‖ ^ 2 := pow_le_pow_left₀ (by positivity) hV0ge 2
    refine le_trans ?_ hsq
    rw [hJ, hl2F, prod_cols hD (fun _ => w), prod_cols hD (fun k => X.l2 P.q (sc k))]
    have he1 : (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), w) *
        (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), X.l2 P.q (sc k)) ≤ Ce ^ 2 := by
      rw [← Finset.prod_mul_distrib, hCedef, ← Finset.prod_pow]
      refine Finset.prod_le_prod₀ (fun k _ => mul_nonneg (by positivity) (l2NormSq_nonneg_gaussianTorus X P.q _))
        fun k hk => ?_
      rw [Finset.mem_filter] at hk
      rw [hsc_none k hk.2, hwdef]
      have h1 : Real.exp (-a) ≤ 1 := Real.exp_le_one_iff.2 (by linarith)
      have h2 := hsel
      have h3 : (1 : ℝ) / 4 ≤ ‖se 0‖ ^ 2 := by linarith only [hse0, sq_nonneg (‖se 0‖ - 1 / 2)]
      have h4 := l2NormSq_nonneg_gaussianTorus X P.q se
      have h5 : 0 ≤ Real.exp (-a) := (Real.exp_pos _).le
      linarith only [h2, h3, mul_nonneg hK6 h4, mul_le_mul_of_nonneg_left h1 (mul_nonneg hK6 h4)]
    have he2 : (∏ p : (Σ j : Fin nb, Fin (bs j).i), w) *
        (∏ p : (Σ j : Fin nb, Fin (bs j).i), X.l2 P.q (sc (colB bs p))) ≤ 4⁻¹ * Mμ ^ 2 := by
      rw [← Finset.prod_mul_distrib]
      calc ∏ p : (Σ j : Fin nb, Fin (bs j).i), (w * X.l2 P.q (sc (colB bs p)))
          ≤ ∏ p : (Σ j : Fin nb, Fin (bs j).i), (4⁻¹ * ‖μ p‖ ^ 2) := by
            refine Finset.prod_le_prod₀ (fun p _ => mul_nonneg (by positivity) (l2NormSq_nonneg_gaussianTorus X P.q _))
              fun p _ => ?_
            rw [hsc_col, hwdef]
            have := hl2 p.1 p.2
            linarith only [this, hK6]
        _ = (4⁻¹) ^ m * Mμ ^ 2 := by
            rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, hMμdef, Finset.prod_pow]
        _ ≤ 4⁻¹ * Mμ ^ 2 := by
            have hm1 : 1 ≤ m := card_pos_pos bs P.hDF
            have : ((4 : ℝ)⁻¹) ^ m ≤ 4⁻¹ := by
              calc ((4 : ℝ)⁻¹) ^ m ≤ (4⁻¹) ^ 1 := pow_le_pow_of_le_one (by norm_num) (by norm_num) hm1
                _ = 4⁻¹ := pow_one _
            gcongr
    have he3 : (2 : ℝ)⁻¹ ^ ((X.r + 2) * DF bs) ≤ Dt ^ 2 := by
      have hδsq : δ0 ^ 2 = (2 : ℝ)⁻¹ ^ (X.r + 2) := by
        rw [hδ0def, div_pow, ← Real.rpow_natCast ((2 : ℝ) ^ (-(X.r : ℝ) / 2)) 2,
          ← Real.rpow_mul (by norm_num)]
        have h2 : (-(X.r : ℝ) / 2 * ((2 : ℕ) : ℝ)) = -(X.r : ℝ) := by push_cast; ring
        rw [h2, Real.rpow_neg (by norm_num), Real.rpow_natCast, pow_add, inv_pow, inv_pow]
        ring
      have h1 : (2 : ℝ)⁻¹ ^ ((X.r + 2) * DF bs) = (δ0 ^ DF bs) ^ 2 := by
        rw [pow_mul, ← hδsq, ← pow_mul, ← pow_mul, mul_comm]
      rw [h1]
      exact pow_le_pow_left₀ (by positivity) hDt 2
    have hB : 0 ≤ (∏ p : (Σ j : Fin nb, Fin (bs j).i), w) *
        (∏ p : (Σ j : Fin nb, Fin (bs j).i), X.l2 P.q (sc (colB bs p))) :=
      mul_nonneg (Finset.prod_nonneg fun _ _ => by positivity)
        (Finset.prod_nonneg fun _ _ => l2NormSq_nonneg_gaussianTorus X P.q _)
    calc (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), w) *
          (∏ p : (Σ j : Fin nb, Fin (bs j).i), w) * (2 : ℝ)⁻¹ ^ ((X.r + 2) * DF bs) *
          ((∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), X.l2 P.q (sc k)) *
            ∏ p : (Σ j : Fin nb, Fin (bs j).i), X.l2 P.q (sc (colB bs p)))
        = ((∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), w) *
            (∏ k ∈ Finset.univ.filter (fun k => owner bs k = none), X.l2 P.q (sc k))) *
          ((∏ p : (Σ j : Fin nb, Fin (bs j).i), w) *
            (∏ p : (Σ j : Fin nb, Fin (bs j).i), X.l2 P.q (sc (colB bs p)))) *
          (2 : ℝ)⁻¹ ^ ((X.r + 2) * DF bs) := by ring
      _ ≤ Ce ^ 2 * (4⁻¹ * Mμ ^ 2) * Dt ^ 2 := by
          gcongr
      _ = (Ce * Mμ * Dt / 2) ^ 2 := by ring

  set c : ℂ := (((Real.sqrt (X.l2 P.q F₀))⁻¹ : ℝ) : ℂ) with hcdef
  have hsq : 0 < Real.sqrt (X.l2 P.q F₀) := Real.sqrt_pos.2 hl2pos
  refine ⟨c • F₀, Submodule.smul_mem _ _ hF₀, ?_, ?_⟩
  · rw [l2_smul, hcdef, Complex.norm_real, Real.norm_eq_abs, abs_inv, abs_of_pos hsq, inv_pow,
      Real.sq_sqrt hl2pos.le, inv_mul_cancel₀ hl2pos.ne']
  · rw [polyDeriv_smul_fun _ _ (sec_contDiff X hF₀), ← hV0def, norm_mul, mul_pow, hcdef,
      Complex.norm_real, Real.norm_eq_abs, abs_inv, abs_of_pos hsq, inv_pow, Real.sq_sqrt hl2pos.le,
      inv_mul_eq_div, le_div_iff₀ hl2pos]
    exact hmain

end Core

theorem jOf (hx : Ext.All) (hs : SplitStatement) (hc : CharStatement) (ht : ColTorusStatement)
    (ha : ColAbelStatement) (he : ColEmptyStatement) : JStatement := by
  intro E _ _ _ X n nb bs hD P
  exact jof_core hx hs hc ht ha he X bs hD P

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfNormLeTwo =====

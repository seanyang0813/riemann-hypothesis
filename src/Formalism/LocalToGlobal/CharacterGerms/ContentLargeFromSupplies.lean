module

public import Formalism.LocalToGlobal.CharacterGerms.Interface
public import Formalism.LocalToGlobal.CharacterGerms.ValuationChoiceHypothesis

@[expose] public section

noncomputable section
open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds Formalism.UnitaryBoundIntegral Formalism.L2.DIV Formalism.BasicNotions

variable {C : Type} [Field C] {V : VF C} {d : ℕ} [NeZero d] {I J : Fin 2 → Type}
  [∀ g, Fintype (I g)] [∀ g, Fintype (J g)]

def RowData.rk (X : RowData C V d I J) (g : Fin 2) (a : ZMod d) : ℕ :=
  (Finset.univ.filter fun c : I g => (X.G g).ty (Sum.inl c) = a).card

structure Flag (X : RowData C V d I J) where
  en : ∀ g a, Fin (X.rk g a) → I g
  en_inj : ∀ g a, Function.Injective (en g a)
  en_ty : ∀ g a c, (X.G g).ty (Sum.inl (en g a c)) = a

def Flag.letter {X : RowData C V d I J} (F : Flag X) (g : Fin 2) (a : ZMod d) {N : ℕ}
    (x : Fin N × Fin (X.rk g a)) : Fin N × WV I := (x.1, ⟨g, F.en g a x.2⟩)

def bg (a : ZMod d) : Fin 2 := if Even a.val then 0 else 1

inductive GlobalTheory (d : ℕ) where

  | bi (g : Fin 2) (a : ZMod d) (i y : ℕ)

  | ch (g : Fin 2) (a : ZMod d) (u : ℕ)

  | mon (g : Fin 2) (e : ZMod d → ℕ → ℕ) (N : ℕ)

namespace GlobalTheory

def what₂ (n : ℕ) : GlobalTheory d → ℕ
  | bi _ _ _ _ => n
  | ch _ _ _ => n
  | mon _ _ N => N

variable (X : RowData C V d I J) (F : Flag X)

def poly : (b : GlobalTheory d) → MvPolynomial (Fin (b.what₂ X.n) × WV I) C
  | bi g a i y =>
      MvPolynomial.rename (F.letter g a) (minorK C X.n (X.rk g a) X.n) ^ (V.l ^ i * y) *
        MvPolynomial.rename (F.letter (1 - g) (a + (i : ZMod d)))
          (minorK C X.n (X.rk (1 - g) (a + (i : ZMod d))) X.n) ^ y
  | ch g a u => MvPolynomial.rename (F.letter g a) (minorK C X.n (X.rk g a) X.n) ^ u
  | mon g e N => ∏ a : ZMod d, MvPolynomial.rename (F.letter g a) (monP C N (X.rk g a) (e a))

def kind (n : ℕ) : (b : GlobalTheory d) → Fin (b.what₂ n) → Option (Fin 2 × ZMod d × ZMod d)
  | bi g a i _ => fun _ => some (g, a, a + (i : ZMod d))
  | ch _ _ _ => fun _ => none
  | mon _ _ _ => fun _ => none

def wt : GlobalTheory d → Fin 2 → ZMod d → ℕ → ℕ
  | bi g a i y => fun g' a' k =>
      (if g' = g ∧ a' = a ∧ k = X.n then V.l ^ i * y else 0) +
        (if g' = 1 - g ∧ a' = a + (i : ZMod d) ∧ k = X.n then y else 0)
  | ch g a u => fun g' a' k => if g' = g ∧ a' = a ∧ k = X.n then u else 0
  | mon g e N => fun g' a' k => if g' = g ∧ 1 ≤ k ∧ k ≤ min N (X.rk g a') then e a' k else 0

def Attains (b : GlobalTheory d) (c : ℝ) : Prop :=
  ∃ (S : ∀ g, Sys (X.G g)) (t : ∀ g, I g → MvPowerSeries (I g) C), (∀ g, (S g).IsT (t g)) ∧
    ∃ gr : Fin (b.what₂ X.n) → MvPowerSeries (WV I) C, (∀ ρ, gr ρ ∈ IntGerm V t) ∧
      V.v (ValOf X.hL (b.poly X F) (b.kind X.n) gr) ≤ ((c : ℝ) : WithTop ℝ)

end GlobalTheory

def BiSupply : Prop :=
  ∀ (C : Type) [Field C] (V : VF C) (d : ℕ) [NeZero d] (I J : Fin 2 → Type) [∀ g, Fintype (I g)]
    [∀ g, Fintype (J g)] (X : RowData C V d I J) (F : Flag X), X.Alt → 5 ≤ V.l → 1 ≤ X.n →
    ∀ g a, X.big g a → ∀ i : ℕ, Odd i → i < d →
      Windows (S0 V.l i X.n) {y | (GlobalTheory.bi g a i y).Attains X F (blockBd V.l X.n X.m i y)}

def CHSupply : Prop :=
  ∀ (C : Type) [Field C] (V : VF C) (d : ℕ) [NeZero d] (I J : Fin 2 → Type) [∀ g, Fintype (I g)]
    [∀ g, Fintype (J g)] (X : RowData C V d I J) (F : Flag X), ∀ g a, X.big g a → ∀ u : ℕ,
      (X.Alt → (GlobalTheory.ch g a u).Attains X F (chBd V.l X.n X.m u)) ∧
      ((∀ a, X.big g a) → (GlobalTheory.ch g a u).Attains X F ((u : ℝ) * (X.m / ((V.l : ℝ) - 1))))

def monDegAll (X : RowData C V d I J) (g : Fin 2) (e : ZMod d → ℕ → ℕ) (N : ℕ) : ℕ :=
  ∑ a : ZMod d, monDeg N (X.rk g a) (e a)

def MONSupply : Prop :=
  ∀ (C : Type) [Field C] (V : VF C) (d : ℕ) [NeZero d] (I J : Fin 2 → Type) [∀ g, Fintype (I g)]
    [∀ g, Fintype (J g)] (X : RowData C V d I J) (F : Flag X) (g : Fin 2) (e : ZMod d → ℕ → ℕ)
    (N : ℕ),
      (GlobalTheory.mon g e N).Attains X F ((monDegAll X g e N : ℝ) / ((V.l : ℝ) - 1)) ∧
      ((∀ a ρ, monAl N (X.rk g a) (e a) ρ < V.l) → (GlobalTheory.mon g e N).Attains X F 0)

def restDeg (bgr : ZMod d → Fin 2) (n : ℕ) (ga : Fin 2 → ZMod d → ℕ → ℕ) (K : ℕ) : ℕ :=
  ∑ g : Fin 2, ∑ a : ZMod d, ∑ k ∈ Finset.Icc 1 K, if g = bgr a ∧ k = n then 0 else k * ga g a k

structure WtHyp (N : NumDatum) (l : ℕ) (Z : Finset (RPl N.R)) (bgr : ZMod (N.ordP l) → Fin 2)
    (rk : RPl N.R → Fin 2 → ZMod (N.ordP l) → ℕ)
    (ga : RPl N.R → Fin 2 → ZMod (N.ordP l) → ℕ → ℕ) (W exc : RPl N.R → ℕ) (rest : ℝ) : Prop where
  supp : ∀ z ∈ Z, ∀ g a k, ga z g a k ≠ 0 → 1 ≤ k ∧ k ≤ rk z g a
  main : ∀ z ∈ Z, ∀ a, ga z (bgr a) a (N.R.k - 1) = alongOrb N l z W a + alongOrb N l z exc a
  rest_eq : rest = ∑ z ∈ Z, ((restDeg bgr (N.R.k - 1) (ga z) N.R.r : ℝ) +
    ∑ a, ((N.R.k : ℝ) - 1) * ((alongOrb N l z exc a : ℕ) : ℝ))

end Formalism.L2.FormalSeriesBounds

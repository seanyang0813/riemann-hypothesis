module

public import Formalism.HermitianCurvature.StatementWd
public import Formalism.HermitianCurvature.LevelRecursionCondNeeded

@[expose] public section

namespace Formalism.FourierDecayAlt.FormPairingAction

open Finset Polynomial Matrix Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.W Formalism.FourierDecayAlt.Wd
open scoped ComplexOrder

noncomputable section

structure Rep (A V : Type) [Ring A] [StarRing A] [Algebra ℂ A] [AddCommGroup V] [Module ℂ V]
    [Module A V] where

  β : F7.Sesq V

  adj : ∀ (a : A) (x y : V), β (a • x) y = β x (star a • y)

section Defs

variable {A S V : Type} [Ring A] [StarRing A] [Algebra ℂ A] [Fintype S] [DecidableEq S]
  [AddCommGroup V] [Module ℂ V] [Module A V]

end Defs

def GrowthHypotheses {S : Type} (α β : ℝ) (w : List (Letter ℂ S)) : Prop :=
  (w.map Letter.intersection_update_fsHerm_neg_one).Nodup ∧
  (∀ l ∈ w, l.pt.im = 0 ∧ l.pt.re ∈ Set.Ioo α β ∧
    (if l.plus then l.pt.re + 1 else l.pt.re - 1) ∈ Set.Ioo α β) ∧
  ∀ i j : Fin w.length, i ≠ j →
    if (w.get j).plus then
      2 < |(w.get i).pt.re - (w.get j).pt.re| ∧ 2 < |(w.get i).pt.re - (w.get j).pt.re + 1| ∧
        2 < |(w.get i).pt.re - (w.get j).pt.re - 1|
    else
      2 < |(w.get j).pt.re - (w.get i).pt.re| ∧ 2 < |(w.get j).pt.re - (w.get i).pt.re - 1| ∧
        2 < |(w.get j).pt.re - (w.get i).pt.re - 2|

def DKHyp {S : Type} [Fintype S] [DecidableEq S] (q : ℂ → ℂ) (w L : List (Letter ℂ S)) : Prop :=
  (∀ l ∈ L, l.plus = true) ∧ Good (L ++ w) ∧ Good (L.map dl ++ w) ∧
    L.Pairwise (fun l l' => l.pt - l'.pt ≠ 0 ∧ l.pt - l'.pt ≠ 1 ∧ l.pt - l'.pt ≠ -1) ∧
    ∀ l ∈ L, qw q w l.pt ≠ 0

def DKDualOK : Prop :=
  ∀ (S : Type) [Fintype S] [DecidableEq S] (q : ℂ → ℂ) (w L : List (Letter ℂ S)),
    DKHyp q w L → DualOK q w L

def DKStep4 : Prop :=
  ∀ (S : Type) (q : ℂ → ℂ) (w L : List (Letter ℂ S)),
    (∀ l ∈ L, l.plus = true) → kapF q w L = (L.map fun l => qw q w l.pt).prod

def QProduct : Prop :=
  ∀ (S : Type) [Fintype S] [DecidableEq S] (q : ℝ → ℝ) (w : List (Letter ℝ S)) (Y : ℝ), q Y ≠ 0 →
    (∀ l ∈ w, if l.plus then Y - l.pt ≠ 0 else l.pt - Y - 1 ≠ 0) →
    qw q w Y / q Y =
      (w.map fun l => if l.plus then 1 + 1 / (Y - l.pt) else 1 + 1 / (l.pt - Y - 1)).prod

def LemmaQ : Prop :=
  ∀ (S : Type) [Fintype S] [DecidableEq S] (q : ℝ → ℝ) (w : List (Letter ℝ S)) (N : ℕ) (dl Y : ℝ),
    4 ≤ N → w.length ≤ N → (N : ℝ) ^ 2 + 1 ≤ dl →
    (∀ l ∈ w, if l.plus then dl ≤ |Y - l.pt| else dl ≤ |Y - l.pt| ∧ dl ≤ |Y - (l.pt - 1)|) →
    q Y ≠ 0 →
    Real.exp (-(1 / 2)) ≤ qw q w Y / q Y ∧ qw q w Y / q Y ≤ Real.exp (1 / 2)

def QwOfReal : Prop :=
  ∀ (S : Type) [Fintype S] [DecidableEq S] (q : ℂ → ℂ) (w : List (Letter ℂ S)) (Y : ℝ),
    (q Y).im = 0 → (∀ l ∈ w, l.pt.im = 0) →
    qw q w (Y : ℂ) =
      ((qw (fun t : ℝ => (q t).re) (w.map fun l => (⟨l.plus, l.intersection_update_fsHerm_neg_one, l.pt.re⟩ : Letter ℝ S)) Y : ℝ) : ℂ)

end

end Formalism.FourierDecayAlt.FormPairingAction

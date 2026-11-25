module

public import Mathlib.Algebra.MvPolynomial.Rename
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.GroupTheory.Perm.Sign
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights.LowerBoundFree

open MvPolynomial

section Roots

variable (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ)

abbrev RootPoly : Type := MvPolynomial (Ψ × Fin N) ℚ

def weylAct (w : Ψ → Equiv.Perm (Fin N)) (p : Ψ × Fin N) : Ψ × Fin N := (p.1, w p.1 p.2)

def weylSign (w : Ψ → Equiv.Perm (Fin N)) : ℚ :=
  ∏ τ, ((((Equiv.Perm.sign (w τ) : ℤˣ) : ℤ)) : ℚ)

def antisym (P : RootPoly Ψ N) : RootPoly Ψ N :=
  ∑ w : Ψ → Equiv.Perm (Fin N), weylSign Ψ N w • rename (weylAct Ψ N w) P

def rhoMono : Ψ × Fin N →₀ ℕ := Finsupp.equivFunOnFinite.symm fun p => N - 1 - (p.2 : ℕ)

def flagInt (P : RootPoly Ψ N) : ℚ := AddMonoidAlgebra.coeff (antisym Ψ N P) (rhoMono Ψ N)

variable (j : ℕ)

def muPoly : RootPoly Ψ N := ∑ p ∈ Finset.univ.filter (fun p : Ψ × Fin N => ¬ (p.2 : ℕ) < j), X p

def vandBlocks : RootPoly Ψ N :=
  ∏ τ, ∏ ab ∈ Finset.univ.filter
      (fun ab : Fin N × Fin N => ab.1 < ab.2 ∧ ((ab.1 : ℕ) < j ↔ (ab.2 : ℕ) < j)),
    (X (τ, ab.1) - X (τ, ab.2))

def fib (cf : ℚ) : RootPoly Ψ N := C cf * vandBlocks Ψ N j

def dimN : ℕ := Fintype.card Ψ * j * (N - j)

def FA (cf : ℚ) : RootPoly Ψ N := muPoly Ψ N j ^ (dimN Ψ N j + 1) * fib Ψ N j cf

def Jint (cf : ℚ) : ℚ := flagInt Ψ N (muPoly Ψ N j ^ dimN Ψ N j * fib Ψ N j cf)

end Roots

def abelian₂ (B rd Lval : ℝ) : ℝ := Real.log (B * rd) + |Lval|

section Line

end Line

end GroundTheory.Heights₂.Heights.LowerBoundFree

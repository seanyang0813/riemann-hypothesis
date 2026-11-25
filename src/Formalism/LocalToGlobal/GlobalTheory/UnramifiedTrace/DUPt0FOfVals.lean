module

public import Mathlib.Algebra.GroupWithZero.Units.Fintype
public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Span.Defs
public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Algebra.Module.Torsion.Free
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.EopUEq
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu
public import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfParts
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.PSplitT
import Formalism.LocalToGlobal.GlobalTheory.GL6.DiamondPreservesRationalFormZero
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil
import Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.SumFib, Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DuFormulaOfFibreCount, Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.SumFib =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.SumFib", "h": "module\n\npublic import Mathlib.Algebra.GroupWithZero.Units.Fintype\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Span.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.BigOperators.Ring.Finset\npublic import Mathlib.Algebra.Module.Torsion.Free\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

theorem sum_fib {X P : Type*} [Fintype X] [DecidableEq X] [Fintype P] (π : P → X) (V : P → ℂ) (w : X → ℂ)
    (hV : ∀ p, V p = w (π p)) :
    ∑ p, V p = ∑ x, ((Finset.univ.filter (fun p => π p = x)).card : ℂ) * w x := by
  have key : ∀ x, ∑ p ∈ Finset.univ.filter (fun p => π p = x), w (π p) =
      ((Finset.univ.filter (fun p => π p = x)).card : ℂ) * w x := by
    intro x
    rw [Finset.sum_congr rfl (g := fun _ => w x) (fun p hp => by rw [(Finset.mem_filter.1 hp).2]),
      Finset.sum_const, nsmul_eq_mul]
  simp_rw [hV]
  rw [← Finset.sum_fiberwise Finset.univ π (fun p => w (π p))]
  exact Finset.sum_congr rfl (fun x _ => key x)

theorem comb_du {K X PD PE : Type*} [Field K] [Fintype K] [DecidableEq K] [AddCommGroup X] [Module K X] [Fintype X]
    [DecidableEq X] {iPD : Fintype PD} {iPE : Fintype PE} (te : X) (hte0 : te ≠ 0) (Tn n1 n2 : ℕ) (hTn : Tn ≠ 0)
    (πD : PD → X) (πE : PE → X) (VD : PD → ℂ) (VE : PE → ℂ) (Φ : ℂ) (Dl : Kˣ → ℂ) (τ : Kˣ ≃ Kˣ)
    (hcE : ∀ x, (Finset.univ.filter (fun q => πE q = x)).card = if x = 0 then 0 else Tn ^ n1)
    (hcD : ∀ x, (Finset.univ.filter (fun p => πD p = x)).card =
      if x = te then Tn ^ n1 else if x ∈ Submodule.span K {te} then 0 else Tn ^ n2)
    (hself : ∀ p, πD p = te → VD p = Φ)
    (hDE : ∀ p q, πD p = πE q → VD p = VE q)
    (hEE : ∀ p q, πE p = πE q → VE p = VE q)
    (hline : ∀ (a : Kˣ) q, πE q = (a : K) • te → VE q = Dl (τ a)) :
    ∑ p, VD p = (Tn : ℂ) ^ n1 * Φ - (Tn : ℂ) ^ n2 * ∑ a, Dl a + (Tn : ℂ) ^ n2 * (((Tn : ℂ) ^ n1)⁻¹ * ∑ p, VE p) := by
  have hTn' : (0 : ℕ) < Tn ^ n1 := pow_pos (Nat.pos_of_ne_zero hTn) _
  have hA : ((Tn : ℂ) ^ n1) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 hTn)
  have hfibE : ∀ x : X, x ≠ 0 → ∃ q, πE q = x := by
    intro x hx
    have hc : 0 < (Finset.univ.filter (fun q => πE q = x)).card := by rw [hcE x, if_neg hx]; exact hTn'
    obtain ⟨q, hq⟩ := Finset.card_pos.1 hc
    exact ⟨q, (Finset.mem_filter.1 hq).2⟩
  obtain ⟨wE, hwE⟩ : ∃ wE : X → ℂ, ∀ q, VE q = wE (πE q) :=
    ⟨fun x => if h : ∃ q, πE q = x then VE h.choose else 0, fun q => by
      have h : ∃ q', πE q' = πE q := ⟨q, rfl⟩
      simp only [dif_pos h]
      exact hEE _ _ h.choose_spec.symm⟩
  have hVD : ∀ p, VD p = (if πD p = te then Φ else wE (πD p)) := by
    intro p
    split_ifs with h
    · exact hself p h
    · have h0 : πD p ≠ 0 := by
        intro h0
        have hc := hcD 0
        rw [if_neg (Ne.symm hte0), if_pos (Submodule.zero_mem _)] at hc
        have hm : p ∈ Finset.univ.filter (fun p => πD p = 0) := Finset.mem_filter.2 ⟨Finset.mem_univ _, h0⟩
        rw [Finset.card_eq_zero.1 hc] at hm
        simp at hm
      obtain ⟨q, hq⟩ := hfibE _ h0
      rw [hDE p q hq.symm, hwE q, hq]
  have hD0 : ∑ p, VD p = ∑ x, ((Finset.univ.filter (fun p => πD p = x)).card : ℂ) *
      (if x = te then Φ else wE x) := sum_fib πD VD _ hVD
  have hE0 : ∑ q, VE q = ∑ x, ((Finset.univ.filter (fun q => πE q = x)).card : ℂ) * wE x :=
    sum_fib πE VE wE hwE
  have e1 : ∀ x : X, ((Finset.univ.filter (fun p => πD p = x)).card : ℂ) * (if x = te then Φ else wE x) =
      (if x = te then (Tn : ℂ) ^ n1 * Φ else 0) +
        (Tn : ℂ) ^ n2 * (if x ∈ Submodule.span K {te} then 0 else wE x) := by
    intro x
    rw [hcD x]
    by_cases h1 : x = te
    · subst h1; simp [Submodule.mem_span_singleton_self]
    · by_cases h2 : x ∈ Submodule.span K {te} <;> simp [h1, h2]
  have e2 : ∀ x : X, ((Finset.univ.filter (fun q => πE q = x)).card : ℂ) * wE x =
      (Tn : ℂ) ^ n1 * ((if x ∈ Submodule.span K {te} then 0 else wE x) +
        (if x ∈ Submodule.span K {te} ∧ x ≠ 0 then wE x else 0)) := by
    intro x
    rw [hcE x]
    by_cases h1 : x = 0
    · subst h1; simp
    · by_cases h2 : x ∈ Submodule.span K {te} <;> simp [h1, h2]
  have hD1 : ∑ x, ((Finset.univ.filter (fun p => πD p = x)).card : ℂ) * (if x = te then Φ else wE x) =
      (Tn : ℂ) ^ n1 * Φ + (Tn : ℂ) ^ n2 * ∑ x : X, (if x ∈ Submodule.span K {te} then 0 else wE x) := by
    rw [Finset.sum_congr rfl (fun x _ => e1 x), Finset.sum_add_distrib, ← Finset.mul_sum]
    simp
  have hE1 : ∑ x, ((Finset.univ.filter (fun q => πE q = x)).card : ℂ) * wE x =
      (Tn : ℂ) ^ n1 * (∑ x : X, (if x ∈ Submodule.span K {te} then 0 else wE x) +
        ∑ x : X, (if x ∈ Submodule.span K {te} ∧ x ≠ 0 then wE x else 0)) := by
    rw [Finset.sum_congr rfl (fun x _ => e2 x), ← Finset.mul_sum, Finset.sum_add_distrib]
  have hS2 : ∑ x : X, (if x ∈ Submodule.span K {te} ∧ x ≠ 0 then wE x else 0) = ∑ a, Dl a := by
    rw [← Finset.sum_filter, ← Equiv.sum_comp τ Dl]
    symm
    refine Finset.sum_bij (fun a _ => (a : K) • te) ?_ ?_ ?_ ?_
    · intro a _
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      exact ⟨Submodule.smul_mem _ _ (Submodule.mem_span_singleton_self te), smul_ne_zero a.ne_zero hte0⟩
    · intro a _ b _ h
      exact Units.ext (smul_left_injective K hte0 h)
    · intro x hx
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hx
      obtain ⟨c, hc⟩ := Submodule.mem_span_singleton.1 hx.1
      have hc0 : c ≠ 0 := by
        rintro rfl
        exact hx.2 (by rw [← hc, zero_smul])
      exact ⟨Units.mk0 c hc0, Finset.mem_univ _, by simp [hc]⟩
    · intro a _
      obtain ⟨q, hq⟩ := hfibE _ (smul_ne_zero a.ne_zero hte0)
      rw [← hq, ← hwE q, hline a q hq]
  rw [hD0, hD1, hE0, hE1, hS2, inv_mul_cancel_left₀ hA]
  ring

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.SumFib =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DuFormulaOfFibreCount =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DuFormulaOfFibreCount", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.EopUEq\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.PSplitT\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.DiamondPreservesRationalFormZero\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.SumFib\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct Classical

variable {D : D7} {u : D.what₂.Word}



theorem du_formula_of_fibre_count (T : Forms0 D u) (hF : DUFib0F T) : DUFormulaLevelZero D u := by
  intro v φ hφ
  obtain ⟨G, hG, hGφ⟩ := S0.forms_from_adelic_function T 0 (Nat.zero_le _) rfl φ hφ
  have hGA := (Submodule.mem_inf.1 hG).1
  choose k hk δ hδ using fun a => S0.diamond_elements_exist_all T 0 (Nat.zero_le _) rfl v a
  funext c
  have : Finite ((D.fm u).lk 0 v c) := Module.finite_of_finite ((D.mem u).A.Fv v)
  letI : Fintype ((D.fm u).lk 0 v c) := Fintype.ofFinite _
  have hdia : ∀ a, dia D u 0 v a φ c = fun s => G (T.cls0.y c * δ a) (T.val0.eY s) := by
    intro a
    show (D.fm u).dilT 0 v a c (φ ((D.fm u).dil 0 v a c)) = _
    rw [hGφ]
    exact T.val0.dilT v a (k a) (hk a) c (δ a) (hδ a) G hGA
  obtain ⟨γ, η, κ, Mu, hmv, hMu, πD, πE, τ, hcE, hcD, hval⟩ := hF v c
  obtain ⟨hself, hDE, hEE, hline⟩ := hval G hGA
  funext s
  rw [norm_eq_sum_diamond]
  simp only [Formalism.MainNotions.product_first_zeroth_parts.trp, LinearMap.smul_apply, LinearMap.comp_apply, Pi.add_apply, Pi.sub_apply, Pi.smul_apply,
    smul_eq_mul, Finset.sum_apply]
  rw [dopU_eq T v φ hGA hGφ c γ η κ Mu hmv hMu, eopU_eq T v φ hGA hGφ c γ η κ Mu hmv hMu]
  simp only [hdia]
  exact comb_du ((D.fm u).te 0 v c) ((D.fm u).te_ne 0 v c) (D.mem u).A.T (D.R.N 0 - 1) (D.R.N 0 - 2)
    (D.mem u).A.T_prime.ne_zero πD πE _ _ (φ c s) (fun a => G (T.cls0.y c * δ a) (T.val0.eY s)) τ
    hcE hcD
    (fun p hp => by rw [hGφ c]; exact congrFun (hself p hp) _) (fun p q h => congrFun (hDE p q h) _)
    (fun p q h => congrFun (hEE p q h) _)
    (fun a q hq => congrFun (hline a q hq (k (τ a)) (hk (τ a)) (δ (τ a)) (hδ (τ a))) _)

theorem dUAll_of (h : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), DUFib0F T) : Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.DUAll :=
  fun D u T => du_formula_of_fibre_count T (h D u T)

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DuFormulaOfFibreCount =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUAllOfParts\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedDiagonal.HeckeRamifiedZeroOfMatchingsAndDu\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PDnDil\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV\npublic import Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DuFormulaOfFibreCount\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CrossDiagonalMatching.DnkLkLocP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct Classical

section Gen

variable {E : Type} [Field E] [NumberField E] {n : ℕ}

theorem lp_smul_map (P : Ideal (𝓞 E)) [P.IsPrime] (A : Matrix (Fin n) (Fin n) E)
    (M N : Submodule (𝓞 E) (Fin n → E)) (h : ∀ m ∈ M, A *ᵥ m ∈ Formalism.HermitianLatticesTheory.localization₂ P N)
    (x : Fin n → E) (hx : x ∈ P • M) : A *ᵥ x ∈ Formalism.HermitianLatticesTheory.localization₂ P (P • N) := by
  refine Submodule.smul_induction_on (p := fun x => A *ᵥ x ∈ Formalism.HermitianLatticesTheory.localization₂ P (P • N)) hx
    (fun p hp m hm => ?_) (fun x y hx hy => ?_)
  · obtain ⟨s, hs, hsm⟩ := h m hm
    refine ⟨s, hs, ?_⟩
    show s • (A *ᵥ (p • m)) ∈ P • N
    rw [Matrix.mulVec_smul, smul_comm]
    exact Submodule.smul_mem_smul hp hsm
  · show A *ᵥ (x + y) ∈ Formalism.HermitianLatticesTheory.localization₂ P (P • N)
    rw [Matrix.mulVec_add]
    exact Submodule.add_mem _ hx hy

theorem inv_mv (g : GL (Fin n) E) (z : Fin n → E) :
    ((g⁻¹ : GL (Fin n) E) : Matrix (Fin n) (Fin n) E) *ᵥ ((g : Matrix (Fin n) (Fin n) E) *ᵥ z) = z := by
  rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]

end Gen

variable {D : D7} {u : D.what₂.Word}

theorem res_ne (T : Forms0 D u) {v : (D.mem u).A.vT} {s : 𝓞 D.host.E} (hs : s ∉ T.atT.Pv v) :
    T.atT.res v s ≠ 0 := fun h => hs ((RingHom.mem_ker).2 h)

section Mv

variable (T : Forms0 D u) {v : (D.mem u).A.vT} {c : (D.mem u).C.cls 0}
  {g : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)}
  {γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))}
  {η : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)} {κ : T.cls0.lev.U}

theorem dn_fwd (hD : DnMvL T v c g γ η κ) (m : Fin (D.R.N 0) → D.host.E)
    (hm : m ∈ Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g)) :
    γ.1.1 *ᵥ m ∈ Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c) := by
  have h1 : γ.1.1 *ᵥ m ∈ mulLat γ.1.1 (Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g)) := by
    rw [Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.mem_mul_lattice_iff γ.1, inv_mv]
    exact hm
  have h2 : γ.1.1 *ᵥ m ∈ Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (mulLat γ.1.1 (Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g))) :=
    ⟨1, (T.atT.Pv v).primeCompl.one_mem, by simpa using h1⟩
  rw [hD.2.2.1] at h2
  exact h2

theorem dn_bwd (hD : DnMvL T v c g γ η κ) (m : Fin (D.R.N 0) → D.host.E)
    (hm : m ∈ Lk T.atT 0 (Nat.zero_le _) v c) :
    ((γ.1⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) *ᵥ m ∈
      Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g)) := by
  have h1 : m ∈ Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c) :=
    CrossDiaZero.dnk_lk_locP T v c (mem_localization_of_mem₂ _ hm)
  rw [← hD.2.2.1] at h1
  obtain ⟨t, ht, htm⟩ := (rlv_mem_locP _ _ _).1 h1
  obtain ⟨x, hx, hxe⟩ := Submodule.mem_map.1 htm
  simp only [LinearMap.coe_restrictScalars, Matrix.mulVecLin_apply] at hxe
  refine (rlv_mem_locP _ _ _).2 ⟨t, ht, ?_⟩
  rw [← Matrix.mulVec_smul, ← hxe, inv_mv]
  exact hx

end Mv

theorem ptz_sub (T : Forms0 D u) {v : (D.mem u).A.vT} {c : (D.mem u).C.cls 0}
    {g : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)}
    {γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))}
    (z z' : ↥(Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g))) {y y' : (D.fm u).lk 0 v c}
    (s s' : 𝓞 D.host.E) (hz : s • (γ.1.1 *ᵥ z.1) ∈ Lk T.atT 0 (Nat.zero_le _) v c)
    (hz' : s' • (γ.1.1 *ᵥ z'.1) ∈ Lk T.atT 0 (Nat.zero_le _) v c)
    (hy : T.lv0.prk v c ⟨_, hz⟩ = T.atT.res v s • y) (hy' : T.lv0.prk v c ⟨_, hz'⟩ = T.atT.res v s' • y') :
    ∃ w : ↥(Lk T.atT 0 (Nat.zero_le _) v c), w.1 = (s * s') • (γ.1.1 *ᵥ (z.1 - z'.1)) ∧
      T.lv0.prk v c w = (T.atT.res v s * T.atT.res v s') • (y - y') := by
  refine ⟨s' • ⟨_, hz⟩ - s • ⟨_, hz'⟩, ?_, ?_⟩
  · show s' • (s • (γ.1.1 *ᵥ z.1)) - s • (s' • (γ.1.1 *ᵥ z'.1)) = _
    rw [Matrix.mulVec_sub, smul_sub, smul_smul, smul_smul, mul_comm s' s]
  · rw [map_sub, T.lv0.prk_smul, T.lv0.prk_smul, hy, hy', smul_smul, smul_smul, smul_sub,
      mul_comm (T.atT.res v s') _]

theorem ptEx_holds (T : Forms0 D u) : PtEx T := by
  intro v c g _ γ η κ hD z
  obtain ⟨s, hs, hsz⟩ := (rlv_mem_locP _ _ _).1 (dn_fwd T hD z.1 z.2)
  have hz : s • (γ.1.1 *ᵥ z.1) ∈ Lk T.atT 0 (Nat.zero_le _) v c := Submodule.mem_sup_left hsz
  refine ⟨(T.atT.res v s)⁻¹ • T.lv0.prk v c ⟨_, hz⟩, s, hs, hz, ?_⟩
  rw [smul_smul, mul_inv_cancel₀ (res_ne T hs), one_smul]

theorem ptWd_holds (T : Forms0 D u) : PtWd T := by
  rintro v c g _ γ η κ hD x y y' ⟨z, hzx, s, hs, hz, hy⟩ ⟨z', hzx', s', hs', hz', hy'⟩
  obtain ⟨w, hw, hpw⟩ := ptz_sub T z z' s s' hz hz' hy hy'
  have hd : (z - z').1 ∈ T.atT.Pv v • Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g) :=
    (T.lv0.pr_ker v _ (z - z')).1 (by rw [map_sub, hzx, hzx', sub_self])
  obtain ⟨t, ht, htd⟩ := (rlv_mem_locP _ _ _).1 (lp_smul_map _ γ.1.1 _ _ (dn_fwd T hD) _ hd)
  have h0 : T.lv0.prk v c (t • w) = 0 := by
    refine (T.lv0.prk_ker v c _).2 ?_
    show t • w.1 ∈ _
    rw [hw, smul_comm]
    exact Submodule.smul_mem _ _ (Submodule.smul_mono le_rfl le_sup_left htd)
  rw [T.lv0.prk_smul, hpw, smul_smul] at h0
  have hne : T.atT.res v t * (T.atT.res v s * T.atT.res v s') ≠ 0 :=
    mul_ne_zero (res_ne T ht) (mul_ne_zero (res_ne T hs) (res_ne T hs'))
  exact sub_eq_zero.1 ((smul_eq_zero.1 h0).resolve_left hne)

theorem ptInj_holds (T : Forms0 D u) : PtInj T := by
  rintro v c g _ γ η κ hD x x' y ⟨z, hzx, s, hs, hz, hy⟩ ⟨z', hzx', s', hs', hz', hy'⟩
  obtain ⟨w, hw, hpw⟩ := ptz_sub T z z' s s' hz hz' hy hy'
  rw [sub_self, smul_zero] at hpw
  have hwP : w.1 ∈ T.atT.Pv v • Lk T.atT 0 (Nat.zero_le _) v c := (T.lv0.prk_ker v c w).1 hpw
  have hb := lp_smul_map _ ((γ.1⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)
    _ _ (dn_bwd T hD) _ hwP
  rw [hw, ← Matrix.mulVec_smul, inv_mv] at hb
  obtain ⟨t, ht, htd⟩ := (rlv_mem_locP _ _ _).1 hb
  have h0 : T.lv0.pr v _ ((t * (s * s')) • (z - z')) = 0 := by
    refine (T.lv0.pr_ker v _ _).2 ?_
    show (t * (s * s')) • (z.1 - z'.1) ∈ _
    rw [mul_smul]
    exact htd
  rw [T.lv0.pr_smul, map_sub, hzx, hzx'] at h0
  have hne : T.atT.res v (t * (s * s')) ≠ 0 := by
    rw [map_mul, map_mul]
    exact mul_ne_zero (res_ne T ht) (mul_ne_zero (res_ne T hs) (res_ne T hs'))
  exact sub_eq_zero.1 ((smul_eq_zero.1 h0).resolve_left hne)

theorem dn_img (T : Forms0 D u) {v : (D.mem u).A.vT} {c : (D.mem u).C.cls 0}
    {g : Module.Dual ((D.mem u).A.Fv v) ((D.fm u).lk 0 v c)}
    {γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))}
    {η : UPts (sigD D) (gramN D 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)} {κ : T.cls0.lev.U}
    (hD : DnMvL T v c g γ η κ) (m : Fin (D.R.N 0) → D.host.E) (hm : m ∈ Lk T.atT 0 (Nat.zero_le _) v c) :
    ∃ t : 𝓞 D.host.E, t ∉ T.atT.Pv v ∧
      ∃ x ∈ Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g), γ.1.1 *ᵥ x = t • m := by
  have h1 : m ∈ Formalism.HermitianLatticesTheory.localization₂ (T.atT.Pv v) (clsCrd D u 0 (Nat.zero_le _) c) :=
    CrossDiaZero.dnk_lk_locP T v c (mem_localization_of_mem₂ _ hm)
  rw [← hD.2.2.1] at h1
  obtain ⟨t, ht, htm⟩ := (rlv_mem_locP _ _ _).1 h1
  obtain ⟨x, hx, hxe⟩ := Submodule.mem_map.1 htm
  exact ⟨t, ht, x, hx, hxe⟩

theorem one_nmem (T : Forms0 D u) {v : (D.mem u).A.vT} : (1 : 𝓞 D.host.E) ∉ T.atT.Pv v := fun h => (Ideal.IsPrime.ne_top inferInstance) ((Ideal.eq_top_iff_one _).2 h)


theorem ptSurj_holds (T : Forms0 D u) : PtSurj T := by
  intro v c g _ γ η κ hD y
  obtain ⟨w0, hw0⟩ := T.lv0.prk_surj v c y
  obtain ⟨t, ht, x, hx, hxe⟩ := dn_img T hD w0.1 w0.2
  obtain ⟨r, hr⟩ := T.atT.res_surj v (T.atT.res v t)⁻¹
  have htne := res_ne T ht
  have hrx : r • x ∈ Ld D u 0 (Nat.zero_le _) ((D.fm u).dn 0 v c g) := Submodule.smul_mem _ r hx
  have hz1 : (1 : 𝓞 D.host.E) • (γ.1.1 *ᵥ (r • x)) ∈ Lk T.atT 0 (Nat.zero_le _) v c := by
    rw [one_smul, Matrix.mulVec_smul, hxe, smul_smul]
    exact Submodule.smul_mem _ _ w0.2
  refine ⟨T.lv0.pr v _ ⟨r • x, hrx⟩, ⟨r • x, hrx⟩, rfl, 1, one_nmem T, hz1, ?_⟩
  have e : (⟨_, hz1⟩ : ↥(Lk T.atT 0 (Nat.zero_le _) v c)) = (r * t) • w0 := by
    apply Subtype.ext
    show (1 : 𝓞 D.host.E) • (γ.1.1 *ᵥ (r • x)) = (r * t) • w0.1
    rw [one_smul, Matrix.mulVec_smul, hxe, smul_smul]
  rw [e, T.lv0.prk_smul, map_mul, hr, inv_mul_cancel₀ htne, one_smul, map_one, one_smul, hw0]

theorem dUPt0F_of_vals (T : Forms0 D u) (vS : ValSame T) (vT : ValTe T) (vD : ValDia T) : DUPt0F T :=
  dUPt0F_of T (ptEx_holds T) (ptWd_holds T) (ptInj_holds T) (ptSurj_holds T) vS vT vD

theorem dUAll_of_vals (h : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), ValSame T ∧ ValTe T ∧ ValDia T) :
    Formalism.L2.GlobalTheoryTheory.UnramifiedDiagonal.DUAll := dUAll_of fun D u T =>
  duFib_of_pt T (dUPt0F_of_vals T (h D u T).1 (h D u T).2.1 (h D u T).2.2)

end Formalism.L2.GlobalTheoryTheory.UnramifiedTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.UnramifiedTrace.DUPt0FOfVals =====

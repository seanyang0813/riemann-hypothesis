module

public import Mathlib.RingTheory.Length
public import Formalism.PeriodIntegrals.FiltLenF
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.LengthQuotLeOfKerLe, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.FiltLenFMain

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.LengthQuotLeOfKerLe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.LengthQuotLeOfKerLe", "h": "module\n\npublic import Mathlib.RingTheory.Length\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.FiltrationLength

open Submodule

variable {R W : Type} [CommRing R] [AddCommGroup W] [Module R W]

noncomputable def ell (B A : Submodule R W) : ℕ∞ :=
  Module.length R (↥B ⧸ A.comap B.subtype)

theorem ell_add {A B C : Submodule R W} (hAC : A ≤ C) (hCB : C ≤ B) :
    ell B A = ell C A + ell B C := by
  unfold ell
  let f : (↥C ⧸ A.comap C.subtype) →ₗ[R] (↥B ⧸ A.comap B.subtype) :=
    Submodule.mapQ _ _ (Submodule.inclusion hCB) (fun x hx => by simpa using hx)
  let g : (↥B ⧸ A.comap B.subtype) →ₗ[R] (↥B ⧸ C.comap B.subtype) :=
    Submodule.mapQ _ _ LinearMap.id (fun x hx => by simpa using hAC hx)
  have hf : Function.Injective f := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    intro y hy
    induction y using Submodule.Quotient.induction_on with
    | _ c =>
      rw [LinearMap.mem_ker] at hy
      simp only [f, Submodule.mapQ_apply, Submodule.Quotient.mk_eq_zero, Submodule.mem_comap,
        Submodule.coe_subtype, Submodule.coe_inclusion] at hy
      rw [Submodule.mem_bot, Submodule.Quotient.mk_eq_zero, Submodule.mem_comap]
      exact hy
  have hg : Function.Surjective g := by
    intro y
    induction y using Submodule.Quotient.induction_on with
    | _ b => exact ⟨Submodule.Quotient.mk b, by simp [g]⟩
  have H : Function.Exact f g := by
    intro y
    induction y using Submodule.Quotient.induction_on with
    | _ b =>
      constructor
      · intro hb
        simp only [g, Submodule.mapQ_apply, LinearMap.id_apply, Submodule.Quotient.mk_eq_zero,
          Submodule.mem_comap, Submodule.coe_subtype] at hb
        exact ⟨Submodule.Quotient.mk ⟨b, hb⟩, by simp [f]; rfl⟩
      · rintro ⟨z, hz⟩
        induction z using Submodule.Quotient.induction_on with
        | _ c =>
          simp only [f, Submodule.mapQ_apply] at hz
          rw [Submodule.Quotient.eq] at hz
          simp only [Submodule.mem_comap, Submodule.coe_subtype, AddSubgroupClass.coe_sub,
            Submodule.coe_inclusion] at hz
          simp only [g, Submodule.mapQ_apply, LinearMap.id_apply, Submodule.Quotient.mk_eq_zero,
            Submodule.mem_comap, Submodule.coe_subtype]
          have h1 : (c : W) ∈ C := c.2
          have h2 : (c : W) - (b : W) ∈ C := hAC hz
          have := C.sub_mem h1 h2
          simpa using this
  exact Module.length_eq_add_of_exact f g hf hg H

theorem ell_sup_le {A C D : Submodule R W} (hDA : D ≤ A) :
    ell (A ⊔ C) A ≤ ell C D := by
  unfold ell
  refine Module.length_le_of_surjective
    (Submodule.mapQ (D.comap C.subtype) (A.comap (A ⊔ C).subtype)
      (Submodule.inclusion (le_sup_right : C ≤ A ⊔ C)) (fun x hx => by simpa using hDA hx)) ?_
  intro y
  induction y using Submodule.Quotient.induction_on with
  | _ z =>
    obtain ⟨a, ha, c, hc, hz⟩ := Submodule.mem_sup.mp z.2
    refine ⟨Submodule.Quotient.mk ⟨c, hc⟩, ?_⟩
    simp only [Submodule.mapQ_apply]
    rw [Submodule.Quotient.eq]
    simp only [Submodule.mem_comap, Submodule.coe_subtype, AddSubgroupClass.coe_sub,
      Submodule.coe_inclusion]
    have : (c : W) - (z : W) = -a := by rw [← hz]; abel
    rw [this]
    exact A.neg_mem ha

end PI.FiltrationLength
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.LengthQuotLeOfKerLe =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.FiltLenFMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.FiltLenFMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.FiltLenF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.LengthQuotLeOfKerLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.FiltrationLength

open Submodule

variable {R W : Type} [CommRing R] [AddCommGroup W] [Module R W]

theorem ell_stepF {V : Type} [AddCommGroup V] [Module R V]
    (M N Fk Fk1 : Submodule R W) (ψ : ↥Fk →ₗ[R] V) (P Q : Submodule R V) (hNM : N ≤ M)
    (hinj : ∀ x : ↥Fk, ψ x = 0 → (x : W) ∈ Fk1)
    (hP : (M.comap Fk.subtype).map ψ ≤ P) (hQ : Q ≤ (N.comap Fk.subtype).map ψ) :
    ell (M ⊓ Fk) ((N ⊓ Fk) ⊔ (M ⊓ Fk1)) ≤ Module.length R (↥P ⧸ Q.comap P.subtype) := by
  have hgP : ∀ x : ↥(M ⊓ Fk), ψ (Submodule.inclusion inf_le_right x) ∈ P := fun x =>
    hP (Submodule.mem_map_of_mem (show Submodule.inclusion inf_le_right x ∈ M.comap Fk.subtype from x.2.1))
  let g : ↥(M ⊓ Fk) →ₗ[R] ↥P :=
    LinearMap.codRestrict P (ψ ∘ₗ Submodule.inclusion (inf_le_right : M ⊓ Fk ≤ Fk)) hgP
  let f : ↥(M ⊓ Fk) →ₗ[R] ↥P ⧸ Q.comap P.subtype := (Q.comap P.subtype).mkQ ∘ₗ g
  have hker : LinearMap.ker f ≤ ((N ⊓ Fk) ⊔ (M ⊓ Fk1)).comap (M ⊓ Fk).subtype := by
    intro x hx
    have hxQ : ψ (Submodule.inclusion inf_le_right x) ∈ Q := by
      have h1 : g x ∈ Q.comap P.subtype := (Submodule.Quotient.mk_eq_zero _).1 hx
      exact h1
    obtain ⟨y, hyN, hyx⟩ := hQ hxQ
    have hdiff : ψ (Submodule.inclusion inf_le_right x - y) = 0 := by rw [map_sub, hyx, sub_self]
    have hF1 := hinj _ hdiff
    have hxM : (x : W) ∈ M := x.2.1
    have hyM : (y : W) ∈ M := hNM hyN
    show (x : W) ∈ (N ⊓ Fk) ⊔ (M ⊓ Fk1)
    have hsplit : (x : W) = (y : W) + ((x : W) - (y : W)) := by abel
    rw [hsplit]
    refine Submodule.add_mem_sup ⟨hyN, y.2⟩ ⟨M.sub_mem hxM hyM, ?_⟩
    simpa using hF1
  unfold ell
  have hsurj : Function.Surjective (Submodule.factor hker) := by
    intro q
    induction q using Submodule.Quotient.induction_on with
    | H x => exact ⟨Submodule.Quotient.mk x, rfl⟩
  calc Module.length R (↥(M ⊓ Fk) ⧸ ((N ⊓ Fk) ⊔ (M ⊓ Fk1)).comap (M ⊓ Fk).subtype)
      ≤ Module.length R (↥(M ⊓ Fk) ⧸ LinearMap.ker f) := Module.length_le_of_surjective _ hsurj
    _ ≤ Module.length R (↥P ⧸ Q.comap P.subtype) :=
      Module.length_le_of_injective _
        (LinearMap.ker_eq_bot.1 (Submodule.ker_liftQ_eq_bot _ f le_rfl le_rfl))

theorem filtLenF_main : PI.FiltLenF := by
  intro R W _ _ _ F a hanti h0 ha V _ _ φ hinj M N P Q hNM hP hQ
  set X : ℕ → Submodule R W := fun k => N ⊔ (M ⊓ F k) with hX
  have hXmono : ∀ k, X (k + 1) ≤ X k := fun k =>
    sup_le_sup_left (inf_le_inf_left _ (hanti (Nat.le_succ k))) _
  have hX0 : X 0 = M := by simp [hX, h0, sup_eq_right.2 hNM]
  have hXa : X a = N := by simp [hX, ha]
  have hXle0 : ∀ k, X k ≤ X 0 := by
    intro k
    induction k with
    | zero => exact le_rfl
    | succ k ih => exact (hXmono k).trans ih
  have hstep : ∀ k < a, ell (X k) (X (k + 1)) ≤
      Module.length R (↥(P k) ⧸ (Q k).comap (P k).subtype) := by
    intro k hk
    have hD : (N ⊓ F k) ⊔ (M ⊓ F (k + 1)) ≤ X (k + 1) :=
      sup_le (inf_le_left.trans le_sup_left) le_sup_right
    have heq : X (k + 1) ⊔ (M ⊓ F k) = X k := by
      simp only [hX]
      apply le_antisymm
      · exact sup_le (sup_le le_sup_left
          (le_sup_of_le_right (inf_le_inf_left _ (hanti (Nat.le_succ k))))) le_sup_right
      · exact sup_le (le_sup_of_le_left le_sup_left) le_sup_right
    have h1 : ell (X k) (X (k + 1)) ≤ ell (M ⊓ F k) ((N ⊓ F k) ⊔ (M ⊓ F (k + 1))) := by
      calc ell (X k) (X (k + 1)) = ell (X (k + 1) ⊔ (M ⊓ F k)) (X (k + 1)) := by rw [heq]
        _ ≤ _ := ell_sup_le hD
    exact h1.trans (ell_stepF M N (F k) (F (k + 1)) (φ k) (P k) (Q k) hNM (hinj k) (hP k hk) (hQ k hk))
  have hsum : ∀ j ≤ a, ell (X 0) (X j) ≤
      ∑ k ∈ Finset.range j, Module.length R (↥(P k) ⧸ (Q k).comap (P k).subtype) := by
    intro j
    induction j with
    | zero => intro _; simp [ell, Submodule.comap_subtype_self]
    | succ j ih =>
      intro hj
      rw [ell_add (hXmono j) (hXle0 j), Finset.sum_range_succ, add_comm]
      exact add_le_add (ih (Nat.le_of_succ_le hj)) (hstep j hj)
  have hfin := hsum a le_rfl
  rw [hX0, hXa] at hfin
  exact hfin

end PI.FiltrationLength
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.FiltLenFMain =====

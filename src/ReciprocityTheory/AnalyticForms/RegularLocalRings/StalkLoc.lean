module

public import ReciprocityTheory.AnalyticForms.RegularLocalRings.JacChart
public import ReciprocityTheory.AnalyticForms.RegularLocalRings.FinalTheorems
public import Mathlib.RingTheory.Nullstellensatz
public import ReciprocityTheory.AnalyticForms.RegularLocalRings.StalkLocA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.AnalyticForms.RegularLocalRings.StalkLoc

-- ===== clump member: ReciprocityTheory.AnalyticForms.RegularLocalRings.StalkLoc =====
-- clump-header: {"m": "ReciprocityTheory.AnalyticForms.RegularLocalRings.StalkLoc", "h": "module\n\npublic import ReciprocityTheory.AnalyticForms.RegularLocalRings.JacChart\npublic import ReciprocityTheory.AnalyticForms.RegularLocalRings.FinalTheorems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Nullstellensatz\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.AnalyticForms.RegularLocalRings.StalkLocA\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial

namespace ReciprocityTheory.AnForm.R

noncomputable section

variable {W : Scheme.{0}} {s : W ⟶ Spec (.of ℂ)}


variable (s) in
structure AffPres where

  V : W.Opens

  n : ℕ

  K : Ideal (MvPolynomial (Fin n) ℂ)

  iso : V.toScheme ≅ Spec (.of (MvPolynomial (Fin n) ℂ ⧸ K))
  hover : iso.hom ≫ Spec.map (CommRingCat.ofHom (algebraMap ℂ (MvPolynomial (Fin n) ℂ ⧸ K))) =
    V.ι ≫ s

namespace AffPres

variable (P : AffPres s)

def secHom : MvPolynomial (Fin P.n) ℂ →+* Γ(W, P.V) :=
  P.V.topIso.hom.hom.comp (P.iso.hom.appTop.hom.comp
    ((Scheme.ΓSpecIso (.of (MvPolynomial (Fin P.n) ℂ ⧸ P.K))).inv.hom.comp (Ideal.Quotient.mk P.K)))

def ptOf (x : W) (hx : x ∈ P.V) : Ideal (MvPolynomial (Fin P.n) ℂ) :=
  (P.iso.hom.base ⟨x, hx⟩).asIdeal.comap (Ideal.Quotient.mk P.K)

def coord (x : W) (hx : x ∈ P.V) : Fin P.n → ℂ :=
  fun j => Classical.epsilon fun c : ℂ => X j - C c ∈ P.ptOf x hx

end AffPres

theorem exists_mk_locRing {n : ℕ} (K : Ideal (MvPolynomial (Fin n) ℂ)) (p : Fin n → ℂ)
    (t : locRing K p) : ∃ a b : MvPolynomial (Fin n) ℂ, eval p b ≠ 0 ∧
      t * algebraMap _ (locRing K p) b = algebraMap _ (locRing K p) a := by
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective t
  obtain ⟨⟨a, ⟨b, hb⟩⟩, rfl⟩ := IsLocalization.mk'_surjective (ptIdeal p).primeCompl y
  have hb' : b ∉ ptIdeal p := hb
  refine ⟨a, b, ?_, ?_⟩
  · intro h
    apply hb'
    simp only [ptIdeal, RingHom.mem_ker]
    exact h
  · first
    | rw [← Ideal.Quotient.mk_algebraMap, ← Ideal.Quotient.mk_algebraMap, ← map_mul,
        IsLocalization.mk'_spec]

end

end ReciprocityTheory.AnForm.R
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.AnalyticForms.RegularLocalRings.StalkLoc =====

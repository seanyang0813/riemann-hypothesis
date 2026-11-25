module

public import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt
public import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CompF
public import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.FilIsSubDPIdeal
public import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.RingTrunc
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Mathlib.AlgebraicGeometry.Morphisms.Etale
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
public import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.AcycOfCoprod
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallDescentH1Surjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishingH1InvertingMorphisms
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsCrystalPairing
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.AlgebraicGeometry.PullbackCarrier
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsNilpotentOfIsNilDP
import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsDividedPowersAug
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsFilEqBot, Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsDPMorphismId, Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdjOne, Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdj, Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsNilpotentOfIsNilDP, Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.TagIso, Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CrystallineDeRham

-- ===== clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsFilEqBot =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsFilEqBot", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open DividedPowers GlobalTheory.Cris GlobalTheory.PDA

namespace FubiniStudyChowHeightFormula₂.Adr

variable {R B C : Type} [CommRing R] [CommRing B] [CommRing C] {I : Ideal R} {J J' : Ideal B} {L : Ideal C}

theorem Sup.one_mem_fil (δ : DividedPowers J) : (1 : B) ∈ fil δ 0 :=
  Ideal.subset_span ⟨[], by simp, by simp, by simp⟩

theorem Sup.dpow_mem_fil (δ : DividedPowers J) {x : B} (hx : x ∈ J) (n : ℕ) : δ.dpow n x ∈ fil δ n :=
  Ideal.subset_span ⟨[(n, x)], by simpa using hx, by simp, by simp⟩

theorem Sup.fil_mul_le (δ : DividedPowers J) (m n : ℕ) : fil δ m * fil δ n ≤ fil δ (m + n) := by
  rw [fil, fil, Ideal.span_mul_span', Ideal.span_le]
  rintro _ ⟨_, ⟨l, h1, h2, rfl⟩, _, ⟨l', h1', h2', rfl⟩, rfl⟩
  refine Ideal.subset_span ⟨l ++ l', fun p hp ↦ ?_, ?_, by simp⟩
  · rcases List.mem_append.1 hp with h | h
    exacts [h1 p h, h1' p h]
  · simp only [List.map_append, List.sum_append]; omega

theorem Sup.exists_fil_eq_bot {δ : DividedPowers J} (h : IsNilDP δ) : ∃ N, ∀ n, N ≤ n → fil δ n = ⊥ := by
  obtain ⟨N, h⟩ := h
  refine ⟨N, fun n hn ↦ ?_⟩
  rw [fil, Ideal.span_eq_bot]
  rintro _ ⟨l, h1, h2, rfl⟩
  exact h l h1 (hn.trans h2)

theorem Sup.isPDNilpotent_of_family (δ : DividedPowers J) (s : Set B) (hs : J = Ideal.span s) (F : ℕ → Ideal B)
    (h0 : (1 : B) ∈ F 0) (hm : ∀ m n, F m * F n ≤ F (m + n)) (hg : ∀ x ∈ s, ∀ n, δ.dpow n x ∈ F n)
    (N : ℕ) (hN : ∀ n, N ≤ n → F n = ⊥) : IsNilDP δ := by
  subst hs
  have hdp : ∀ y ∈ Ideal.span s, ∀ n, δ.dpow n y ∈ F n := by
    intro y hy
    induction hy using Submodule.span_induction with
    | mem x hx => exact hg x hx
    | zero =>
      intro n
      rcases Nat.eq_zero_or_pos n with rfl | hn
      · rw [δ.dpow_zero (Ideal.zero_mem _)]; exact h0
      · rw [δ.dpow_eval_zero hn.ne']
        exact Ideal.zero_mem _
    | add x y hx hy ihx ihy =>
      intro n
      rw [δ.dpow_add hx hy]
      refine Ideal.sum_mem _ fun k hk ↦ ?_
      have hk' : k.1 + k.2 = n := by simpa using hk
      rw [← hk']
      exact hm _ _ (Ideal.mul_mem_mul (ihx k.1) (ihy k.2))
    | smul c x hx ih =>
      intro n
      rw [smul_eq_mul, δ.dpow_mul hx]
      exact Ideal.mul_mem_left _ _ (ih n)
  have hprod : ∀ l : List (ℕ × B), (∀ p ∈ l, p.2 ∈ Ideal.span s) →
      (l.map fun p ↦ δ.dpow p.1 p.2).prod ∈ F (l.map Prod.fst).sum := by
    intro l hl
    induction l with
    | nil => exact h0
    | cons p l ih =>
      simp only [List.map_cons, List.prod_cons, List.sum_cons]
      exact hm _ _ (Ideal.mul_mem_mul (hdp p.2 (hl p (by simp)) p.1) (ih fun q hq ↦ hl q (by simp [hq])))
  refine ⟨N, fun l hl h ↦ ?_⟩
  have := hprod l hl
  rwa [hN _ h, Ideal.mem_bot] at this

theorem Sup.sup_map_eq_span (f : R →+* B) : J ⊔ I.map f = Ideal.span ((J : Set B) ∪ f '' I) := by
  rw [Ideal.span_union, Ideal.span_eq]; rfl

theorem nil_sup (κ : DividedPowers I) (δ : DividedPowers J) (f : R →+* B) (δ' : DividedPowers J')
    (hJ : J' = J ⊔ I.map f) (h₁ : IsDPMorphism δ δ' (RingHom.id B)) (h₂ : IsDPMorphism κ δ' f)
    (hκ : IsNilDP κ) (hδ : IsNilDP δ) : IsNilDP δ' := by
  obtain ⟨N₁, k₁⟩ := Sup.exists_fil_eq_bot hκ
  obtain ⟨N₂, k₂⟩ := Sup.exists_fil_eq_bot hδ
  let F : ℕ → Ideal B := fun n ↦ ⨆ p : {p : ℕ × ℕ // p.1 + p.2 = n}, (fil κ p.1.1).map f * fil δ p.1.2
  have hF : ∀ a b n, a + b = n → (fil κ a).map f * fil δ b ≤ F n := fun a b n h ↦
    le_iSup (fun p : {p : ℕ × ℕ // p.1 + p.2 = n} ↦ (fil κ p.1.1).map f * fil δ p.1.2) ⟨(a, b), h⟩
  have one : (1 : B) ∈ (fil κ 0).map f := by
    simpa using Ideal.mem_map_of_mem f (Sup.one_mem_fil κ)
  refine Sup.isPDNilpotent_of_family δ' _ (hJ.trans (Sup.sup_map_eq_span f)) F ?_ (fun m n ↦ ?_) ?_ (N₁ + N₂) fun n hn ↦ ?_
  · simpa using hF 0 0 0 rfl (Ideal.mul_mem_mul one (Sup.one_mem_fil δ))
  · simp only [F, Submodule.iSup_mul, Submodule.mul_iSup, iSup_le_iff]
    rintro ⟨⟨a, b⟩, h⟩ ⟨⟨c, d⟩, h'⟩
    refine le_trans ?_ (hF (c + a) (d + b) _ (by simp only at h h'; omega))
    rw [mul_mul_mul_comm, ← Ideal.map_mul]
    exact Ideal.mul_mono (Ideal.map_mono (Sup.fil_mul_le _ _ _)) (Sup.fil_mul_le _ _ _)
  · rintro x (hx | ⟨r, hr, rfl⟩) n
    · have := h₁.2 (n := n) x hx
      simp only [RingHom.id_apply] at this
      rw [this]
      simpa using hF 0 n n (zero_add n) (Ideal.mul_mem_mul one (Sup.dpow_mem_fil δ hx n))
    · rw [h₂.2 r hr]
      simpa using hF n 0 n rfl (Ideal.mul_mem_mul (Ideal.mem_map_of_mem f (Sup.dpow_mem_fil κ hr n)) (Sup.one_mem_fil δ))
  · simp only [F, iSup_eq_bot]
    rintro ⟨⟨a, b⟩, h⟩
    simp only at h ⊢
    by_cases ha : N₁ ≤ a
    · rw [k₁ a ha, Ideal.map_bot, Ideal.bot_mul]
    · rw [k₂ b (by omega), Ideal.mul_bot]

theorem isDPMorphism_sup (κ : DividedPowers I) (δ : DividedPowers J) (f : R →+* B) (δ' : DividedPowers J')
    (hJ : J' = J ⊔ I.map f) (h₁ : IsDPMorphism δ δ' (RingHom.id B)) (h₂ : IsDPMorphism κ δ' f)
    (θ : DividedPowers L) (g : B →+* C) (k₁ : IsDPMorphism δ θ g) (k₂ : IsDPMorphism κ θ (g.comp f)) :
    IsDPMorphism δ' θ g := by
  refine IsDPMorphism.on_span δ' θ (hJ.trans (Sup.sup_map_eq_span f)) ?_ ?_
  · rintro x (hx | ⟨r, hr, rfl⟩)
    · exact k₁.1 (Ideal.mem_map_of_mem _ hx)
    · exact k₂.1 (Ideal.mem_map_of_mem _ hr)
  · rintro n x (hx | ⟨r, hr, rfl⟩)
    · have := h₁.2 (n := n) x hx
      simp only [RingHom.id_apply] at this
      rw [this]
      exact (k₁.2 x hx).symm
    · rw [h₂.2 r hr]
      exact (k₂.2 r hr).symm

end FubiniStudyChowHeightFormula₂.Adr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsFilEqBot =====

-- ===== clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsDPMorphismId =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsDPMorphismId", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CompF\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsFilEqBot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.PullbackCarrier\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry DividedPowers
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.PDA

namespace FubiniStudyChowHeightFormula₂.Adr

variable {R : Type} [CommRing R] {I : Ideal R} {X X₀ : Scheme.{0}}

def NT (κ : DividedPowers I) {s : X ⟶ Sp R} {K : Type} (U : K → X.Opens) : ObjectProperty (Tag (dp0 R) s U) :=
  fun S ↦ InN κ S.T

theorem isDPMorphism_id {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) :
    IsDPMorphism δ δ (RingHom.id B) := (DPMorphism.id δ).isDPMorphism

structure Red (κ : DividedPowers I) {R₀ : Type} [CommRing R₀] (π : R →+* R₀) (s : X ⟶ Sp R) (s₀ : X₀ ⟶ Sp R₀)
    (i : X₀ ⟶ X) : Prop where
  nil : IsNilDP κ
  surj : Function.Surjective π
  ker : RingHom.ker π = I
  pb : IsPullback i s₀ s (spMap π)

variable {κ : DividedPowers I} {R₀ : Type} [CommRing R₀] {π : R →+* R₀} {s : X ⟶ Sp R} {s₀ : X₀ ⟶ Sp R₀}
  {i : X₀ ⟶ X} (h : Red κ π s s₀ i)

namespace Red

include h

theorem mor : IsMor (dp0 R) s κ (s₀ ≫ spMap π) (RingHom.id R) i := by
  refine IsMor.of_dividedPowersZeroIdeal κ ?_
  rw [GlobalTheory.Cris.spMap_id, Category.comp_id]
  exact h.pb.w

theorem surjective : Function.Surjective i := by
  have hnil : ∀ x ∈ I, ∃ N : ℕ, x ^ N = 0 := by
    intro x hx
    obtain ⟨N, hN⟩ := h.nil
    refine ⟨N, ?_⟩
    have := hN (List.replicate N (1, x))
      (by
        intro p hp
        rw [List.eq_of_mem_replicate hp]
        exact hx)
      (by simp)
    simpa [List.map_replicate, List.prod_replicate, κ.dpow_one hx] using this
  have hsurj : Function.Surjective (spMap π) := by
    intro p
    have hp : p ∈ Set.range (PrimeSpectrum.comap π) := by
      open PrimeSpectrum in rw [range_comap_of_surjective _ π h.surj, h.ker]
      change (I : Set R) ⊆ (p : PrimeSpectrum R).asIdeal
      intro x hx
      obtain ⟨N, hN⟩ := hnil x hx
      exact p.isPrime.mem_of_pow_mem N (by rw [hN]; exact p.asIdeal.zero_mem)
    exact hp
  have hS : AlgebraicGeometry.Surjective (spMap π) := (AlgebraicGeometry.surjective_iff _).mpr hsurj
  exact (AlgebraicGeometry.surjective_iff i).mp
    (MorphismProperty.of_isPullback (P := @AlgebraicGeometry.Surjective) h.pb.flip hS)

theorem le_of_le {U V : X.Opens} (e : i ⁻¹ᵁ U ≤ i ⁻¹ᵁ V) : U ≤ V := by
  intro x hx
  obtain ⟨y, rfl⟩ := h.surjective x
  exact (show y ∈ i ⁻¹ᵁ V from e (show y ∈ i ⁻¹ᵁ U from hx))

theorem inN_obj (T : Thick κ (s₀ ≫ spMap π)) : InN κ (h.mor.obj T) := by
  show ∃ δ' : DividedPowers (T.J ⊔ Ideal.map (algebraMap R T.B) I),
    T.δ.IsDPMorphism δ' (RingHom.id T.B) ∧ κ.IsDPMorphism δ' (algebraMap R T.B)
  rw [sup_eq_left.mpr T.dp.ideal_comp]
  exact ⟨T.δ, isDPMorphism_id T.δ, T.dp⟩

end Red

section Up

variable (S : Thick (dp0 R) s)

abbrev big (I : Ideal R) : Ideal S.B := S.J ⊔ I.map (algebraMap R S.B)

def rho (I : Ideal R) : S.B₀ →+* S.B ⧸ big S I :=
  RingHom.liftOfSurjective S.π S.surj ⟨Ideal.Quotient.mk _, fun b hb ↦
    Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_sup_left ((S.ker b).1 hb))⟩

theorem rho_π (I : Ideal R) (b : S.B) : rho S I (S.π b) = Ideal.Quotient.mk _ b :=
  RingHom.liftOfSurjective_comp_apply _ _ _ b

def Red.sig : R₀ →+* S.B ⧸ big S I :=
  RingHom.liftOfSurjective π h.surj ⟨(Ideal.Quotient.mk _).comp (algebraMap R S.B), fun r hr ↦
    Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_sup_right (Ideal.mem_map_of_mem _ (h.ker ▸ hr)))⟩

theorem Red.sig_π (r : R) : h.sig S (π r) = Ideal.Quotient.mk _ (algebraMap R S.B r) :=
  RingHom.liftOfSurjective_comp_apply _ _ _ r

def Red.pt : Sp (S.B ⧸ big S I) ⟶ X₀ :=
  h.pb.lift (spMap (rho S I) ≫ S.x) (spMap (h.sig S)) (by
    rw [Category.assoc, S.w, ← GlobalTheory.Cris.spMap_comp, ← GlobalTheory.Cris.spMap_comp]
    congr 1
    exact RingHom.ext fun r ↦ (rho_π S I _).trans (h.sig_π S r).symm)

theorem Red.pt_i : h.pt S ≫ i = spMap (rho S I) ≫ S.x := h.pb.lift_fst _ _ _

theorem Red.pt_s : h.pt S ≫ s₀ = spMap (h.sig S) := h.pb.lift_snd _ _ _

@[reducible] def Red.up (hS : InN κ S) : Thick κ (s₀ ≫ spMap π) where
  B := S.B
  J := big S I
  δ := hS.choose
  nil := nil_sup κ S.δ _ _ rfl hS.choose_spec.1 hS.choose_spec.2 h.nil S.nil
  dp := hS.choose_spec.2
  B₀ := S.B ⧸ big S I
  π := Ideal.Quotient.mk _
  surj := Ideal.Quotient.mk_surjective
  ker _ := Ideal.Quotient.eq_zero_iff_mem
  x := h.pt S
  w := by
    rw [← Category.assoc, h.pt_s, ← GlobalTheory.Cris.spMap_comp]
    congr 1
    exact RingHom.ext fun r ↦ h.sig_π S r

variable {S}

def Red.rh {T : Thick κ (s₀ ≫ spMap π)} (f : S ⟶ h.mor.obj T) : S.B →+* T.B :=
  (f.φ : S.B →+* (h.mor.obj T).B)

theorem Red.rh_algebraMap {T : Thick κ (s₀ ≫ spMap π)} (f : S ⟶ h.mor.obj T) (r : R) :
    h.rh f (algebraMap R S.B r) = algebraMap R T.B r := f.φ.commutes r

def Red.upTo (hS : InN κ S) {T : Thick κ (s₀ ≫ spMap π)} (f : S ⟶ h.mor.obj T) : h.up S hS ⟶ T where
  φ := { (h.rh f) with commutes' := h.rh_algebraMap f }
  φ₀ := Ideal.Quotient.lift _ (T.π.comp (h.rh f)) fun b hb ↦ (T.ker _).2 (by
    have : big S I ≤ T.J.comap (h.rh f) := sup_le (fun b hb ↦ f.mem hb)
      (Ideal.map_le_iff_le_comap.2 fun r hr ↦ by
        change h.rh f (algebraMap R S.B r) ∈ T.J
        rw [h.rh_algebraMap]
        exact T.dp.1 (Ideal.mem_map_of_mem _ hr))
    exact this hb)
  comm _ := rfl
  dp := isDPMorphism_sup κ S.δ _ _ rfl hS.choose_spec.1 hS.choose_spec.2 T.δ _ f.dp (by
    change IsDPMorphism κ T.δ ((h.rh f).comp (algebraMap R S.B))
    rw [show (h.rh f).comp (algebraMap R S.B) = algebraMap R T.B from RingHom.ext (h.rh_algebraMap f)]
    exact T.dp)
  pt := by
    refine h.pb.hom_ext ?_ ?_
    · change (_ ≫ h.pt S) ≫ i = _
      rw [Category.assoc, h.pt_i, ← Category.assoc, ← GlobalTheory.Cris.spMap_comp]
      refine Eq.trans ?_ f.pt
      congr 2
      refine RingHom.ext fun b ↦ ?_
      obtain ⟨b, rfl⟩ := S.surj b
      rw [RingHom.comp_apply, rho_π]
      exact (f.comm b).symm
    · change (_ ≫ h.pt S) ≫ s₀ = _
      have : Mono (spMap π) := by
        have : IsClosedImmersion (spMap π) := IsClosedImmersion.spec_of_surjective _ h.surj
        infer_instance
      rw [← cancel_mono (spMap π), Category.assoc, Category.assoc, ← Category.assoc (h.pt S), h.pt_s,
        Category.assoc, T.w, ← GlobalTheory.Cris.spMap_comp, ← GlobalTheory.Cris.spMap_comp]
      congr 1
      refine RingHom.ext fun r ↦ ?_
      simp only [RingHom.comp_apply]
      rw [h.sig_π]
      exact congrArg T.π (h.rh_algebraMap f r)

def Red.unit (hS : InN κ S) : S ⟶ h.mor.obj (h.up S hS) where
  φ := { RingHom.id S.B with commutes' := fun _ ↦ rfl }
  φ₀ := rho S I
  comm := rho_π S I
  dp := hS.choose_spec.1
  pt := (h.pt_i S).symm

end Up

variable {K : Type} (U : K → X.Opens)

abbrev redOpen (i : X₀ ⟶ X) : K → X₀.Opens := fun k ↦ i ⁻¹ᵁ U k

def Red.G : Tag κ (s₀ ≫ spMap π) (redOpen U i) ⥤ (NT κ U (s := s)).FullSubcategory where
  obj T := ⟨⟨h.mor.obj T.T, T.k, T.le⟩, h.inN_obj T.T⟩
  map f := ObjectProperty.homMk (⟨h.mor.functor.map (Tag.Hom.f f), h.le_of_le (Tag.Hom.le f)⟩ : Tag.Hom _ _)
  map_id _ := ObjectProperty.hom_ext _ (Tag.Hom.ext (Thick.Hom.ext' (AlgHom.ext fun _ ↦ rfl)))
  map_comp _ _ := ObjectProperty.hom_ext _ (Tag.Hom.ext (Thick.Hom.ext' (AlgHom.ext fun _ ↦ rfl)))

def Red.H : (NT κ U (s := s)).FullSubcategory ⥤ Tag κ (s₀ ≫ spMap π) (redOpen U i) where
  obj S := ⟨h.up S.obj.T S.property, S.obj.k, (h.unit S.property).le_preimage S.obj.le⟩
  map {S S'} f := ⟨h.upTo S.property (Tag.Hom.f f.hom ≫ h.unit S'.property),
    fun _ hp ↦ Tag.Hom.le f.hom hp⟩
  map_id _ := Tag.Hom.ext (Thick.Hom.ext' (AlgHom.ext fun _ ↦ rfl))
  map_comp f g := by
    refine Tag.Hom.ext (Thick.Hom.ext' (AlgHom.ext fun b ↦ ?_))
    exact (rfl : (Tag.Hom.f g.hom).φ ((Tag.Hom.f f.hom).φ b) = (Tag.Hom.f g.hom).φ ((Tag.Hom.f f.hom).φ b))

abbrev FN (κ : DividedPowers I) (s : X ⟶ Sp R) (U : K → X.Opens) :
    (NT κ U (s := s)).FullSubcategory ⥤ CommAlgCat.{0} R :=
  (NT κ U).ι ⋙ Tag.forget (dp0 R) s U ⋙ O (dp0 R) s

def Red.cG : CoefMap (RingHom.id R) (FN κ s U) (Tag.forget κ _ (redOpen U i) ⋙ O κ (s₀ ≫ spMap π)) where
  G := h.G U
  α T := RingHom.id T.T.B
  naturality _ _ := rfl
  smul T r b := (Algebra.smul_def (A := T.T.B) r b).symm

def Red.cH : CoefMap (RingHom.id R) (Tag.forget κ _ (redOpen U i) ⋙ O κ (s₀ ≫ spMap π)) (FN κ s U) where
  G := h.H U
  α S := RingHom.id S.obj.T.B
  naturality _ _ := rfl
  smul _ _ _ := rfl

def Red.η : 𝟭 _ ⟶ h.H U ⋙ h.G U where
  app S := ObjectProperty.homMk
    (⟨h.unit S.property, le_rfl⟩ : Tag.Hom S.obj ((h.G U).obj ((h.H U).obj S)).obj)
  naturality S S' f := by
    refine ObjectProperty.hom_ext _ (Tag.Hom.ext (Thick.Hom.ext' (AlgHom.ext fun b ↦ ?_)))
    exact (rfl : (Tag.Hom.f f.hom).φ b = (Tag.Hom.f f.hom).φ b)

def Red.ε : h.G U ⋙ h.H U ⟶ 𝟭 _ where
  app T := (⟨h.upTo (h.inN_obj T.T) (𝟙 _), le_rfl⟩ : Tag.Hom ((h.H U).obj ((h.G U).obj T)) T)
  naturality S S' f := by
    refine Tag.Hom.ext (Thick.Hom.ext' (AlgHom.ext fun b ↦ ?_))
    exact (rfl : (Tag.Hom.f f).φ b = (Tag.Hom.f f).φ b)

theorem Red.cG_pull1 : Function.Bijective (h.cG U).pull1 := by
  refine Function.bijective_iff_has_inverse.2 ⟨(h.cH U).pull1, fun c ↦ ?_, fun c ↦ ?_⟩
  · rw [← CoefMap.pullCohomologyOne_comp]
    exact ((CoefMap.id _).pullCohomologyOne_eq_of_natTrans ((h.cG U).comp (h.cH U)) (h.η U) (fun _ b ↦ (rfl : b = b)) c).symm.trans
      (CoefMap.pullCohomologyOne_id c)
  · rw [← CoefMap.pullCohomologyOne_comp]
    exact (((h.cH U).comp (h.cG U)).pullCohomologyOne_eq_of_natTrans (CoefMap.id _) (h.ε U) (fun _ b ↦ (rfl : b = b)) c).trans
      (CoefMap.pullCohomologyOne_id c)

theorem Red.cG_pull2 : Function.Bijective (h.cG U).pull2 := by
  refine Function.bijective_iff_has_inverse.2 ⟨(h.cH U).pull2, fun c ↦ ?_, fun c ↦ ?_⟩
  · rw [← CoefMap.pullCohomologyTwo_comp]
    exact ((CoefMap.id _).pullCohomologyTwo_eq_of_natTrans ((h.cG U).comp (h.cH U)) (h.η U) (fun _ b ↦ (rfl : b = b)) c).symm.trans
      (CoefMap.pullCohomologyTwo_id c)
  · rw [← CoefMap.pullCohomologyTwo_comp]
    exact (((h.cH U).comp (h.cG U)).pullCohomologyTwo_eq_of_natTrans (CoefMap.id _) (h.ε U) (fun _ b ↦ (rfl : b = b)) c).trans
      (CoefMap.pullCohomologyTwo_id c)

end FubiniStudyChowHeightFormula₂.Adr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsDPMorphismId =====

-- ===== clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdjOne =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdjOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CompF\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.FilIsSubDPIdeal\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.RingTrunc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry DividedPowers
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.PDA

namespace FubiniStudyChowHeightFormula₂.Adr

variable {R : Type} [CommRing R] {I : Ideal R} {X : Scheme.{0}} {κ : DividedPowers I} {s : X ⟶ Sp R}

section Push

variable (S : Thick (dp0 R) s) {A : Type} [CommRing A] (a : S.B →+* A) {JA : Ideal A} (θ : DividedPowers JA)
  (ha : IsDPMorphism S.δ θ a)

include ha in
theorem push_ker : RingHom.ker S.π ≤ RingHom.ker ((Ideal.Quotient.mk JA).comp a) := fun b hb ↦
  Ideal.Quotient.eq_zero_iff_mem.2 (ha.1 (Ideal.mem_map_of_mem _ ((S.ker b).1 hb)))

def pushRed : S.B₀ →+* A ⧸ JA := RingHom.liftOfSurjective S.π S.surj ⟨_, push_ker S a θ ha⟩

theorem pushRed_π (b : S.B) : pushRed S a θ ha (S.π b) = Ideal.Quotient.mk JA (a b) :=
  RingHom.liftOfSurjective_comp_apply S.π S.surj ⟨_, push_ker S a θ ha⟩ b

variable (hn : IsNilDP θ)

def push : Thick (dp0 R) s where
  B := A
  alg := (a.comp (algebraMap R S.B)).toAlgebra
  J := JA
  δ := θ
  nil := hn
  dp := isDPMorphism_of_eq_bot _ rfl _ _
  B₀ := A ⧸ JA
  π := Ideal.Quotient.mk JA
  surj := Ideal.Quotient.mk_surjective
  ker := fun _ ↦ Ideal.Quotient.eq_zero_iff_mem
  x := spMap (pushRed S a θ ha) ≫ S.x
  w := by
    rw [Category.assoc, S.w, ← GlobalTheory.Cris.spMap_comp]
    congr 1
    exact RingHom.ext fun r ↦ pushRed_π S a θ ha _

def pushHom : S ⟶ push S a θ ha hn where
  φ := { a with commutes' := fun _ ↦ rfl }
  φ₀ := pushRed S a θ ha
  comm := pushRed_π S a θ ha
  dp := ha
  pt := rfl

def pushDesc {V : Thick (dp0 R) s} (φ : S ⟶ V) (G : A →+* V.B) (hG : IsDPMorphism θ V.δ G)
    (e : G.comp a = (φ.φ : S.B →+* V.B)) : push S a θ ha hn ⟶ V where
  φ := { G with commutes' := fun r ↦ (DFunLike.congr_fun e _).trans (φ.φ.commutes r) }
  φ₀ := Ideal.Quotient.lift JA (V.π.comp G) fun _ hc ↦ (V.ker _).2 (hG.1 (Ideal.mem_map_of_mem _ hc))
  comm := fun _ ↦ rfl
  dp := hG
  pt := by
    change spMap _ ≫ spMap (pushRed S a θ ha) ≫ S.x = V.x
    rw [← Category.assoc, ← GlobalTheory.Cris.spMap_comp, ← φ.pt]
    congr 2
    refine RingHom.ext fun b ↦ ?_
    obtain ⟨b, rfl⟩ := S.surj b
    rw [RingHom.comp_apply, pushRed_π, φ.comm]
    exact congrArg V.π (DFunLike.congr_fun e b)

end Push

theorem exists_trunc (S : Thick (dp0 R) s) (hS : InN κ S) (n : ℕ) (hn : 1 ≤ n) :
    ∃ (P : Thick (dp0 R) s) (i : S ⟶ P), InN κ P ∧ IsLev P.δ n ∧
      ∀ (V : Thick (dp0 R) s), IsLev V.δ n → ∀ (φ : S ⟶ V), ∃! ψ : P ⟶ V, i ≫ ψ = φ := by
  obtain ⟨A, _, a, JA, θ, ha, hlev, hext, hsurj, huniv⟩ := ring_trunc κ (algebraMap R S.B) S.δ hS n hn
  have hnil : IsNilDP θ := Fil.nil_of_lev hlev
  refine ⟨push S a θ ha hnil, pushHom S a θ ha hnil, hext, hlev, ?_⟩
  intro V hV φ
  obtain ⟨G, hG, hGa⟩ := huniv V.B V.J V.δ hV (φ.φ : S.B →+* V.B) φ.dp
  refine ⟨pushDesc S a θ ha hnil φ G hG hGa, ?_, ?_⟩
  · refine Thick.Hom.ext' (AlgHom.ext fun b ↦ ?_)
    rw [Thick.comp_φ]
    exact DFunLike.congr_fun hGa b
  · intro ψ hψ
    refine Thick.Hom.ext' (AlgHom.ext fun x ↦ ?_)
    obtain ⟨b, rfl⟩ := hsurj x
    have h1 := Thick.comp_φ (pushHom S a θ ha hnil) ψ b
    rw [hψ] at h1
    have h2 : G (a b) = φ.φ b := DFunLike.congr_fun hGa b
    exact h1.symm.trans h2.symm

theorem exists_adj_one (S : Thick (dp0 R) s) (hS : InN κ S) (n : ℕ) (hn : 1 ≤ n) :
    ∃ (P : Thick (dp0 R) s) (i : S ⟶ P) (y : P.B), InN κ P ∧ IsLev P.δ n ∧ y ∈ P.J ∧
      ∀ (V : Thick (dp0 R) s), IsLev V.δ n → ∀ (φ : S ⟶ V) (z : V.B), z ∈ V.J →
        ∃! ψ : P ⟶ V, i ≫ ψ = φ ∧ ψ.φ y = z := by
  obtain ⟨A, _, a, JA, θ, y, ha, hlev, hext, hy, huniv⟩ := ring_adj κ (algebraMap R S.B) S.δ hS n hn
  have hnil : IsNilDP θ := Fil.nil_of_lev hlev
  refine ⟨push S a θ ha hnil, pushHom S a θ ha hnil, y, hext, hlev, hy, ?_⟩
  intro V hV φ z hz
  obtain ⟨G, ⟨hG, hGa, hGy⟩, huniq⟩ := huniv V.B V.J V.δ hV (φ.φ : S.B →+* V.B) φ.dp z hz
  refine ⟨pushDesc S a θ ha hnil φ G hG hGa, ⟨?_, hGy⟩, ?_⟩
  · refine Thick.Hom.ext' (AlgHom.ext fun b ↦ ?_)
    rw [Thick.comp_φ]
    exact DFunLike.congr_fun hGa b
  · rintro ψ ⟨hψ, hψy⟩
    let g : A →+* V.B := ψ.φ.toRingHom
    have hcomp : g.comp a = (φ.φ : S.B →+* V.B) := by
      refine RingHom.ext fun b ↦ ?_
      have h1 := Thick.comp_φ (pushHom S a θ ha hnil) ψ b
      rw [hψ] at h1
      exact h1.symm
    have heq : g = G := huniq g ⟨ψ.dp, hcomp, hψy⟩
    refine Thick.Hom.ext' (AlgHom.ext fun x ↦ ?_)
    exact DFunLike.congr_fun heq x

theorem exists_adj' (S : Thick (dp0 R) s) (hS : InN κ S) (d n : ℕ) (hn : 1 ≤ n) :
    ∃ (P : Thick (dp0 R) s) (i : S ⟶ P) (y : Fin d → P.B), InN κ P ∧ IsLev P.δ n ∧ (∀ k, y k ∈ P.J) ∧
      ∀ (V : Thick (dp0 R) s), IsLev V.δ n → ∀ (φ : S ⟶ V) (z : Fin d → V.B), (∀ k, z k ∈ V.J) →
        ∃! ψ : P ⟶ V, i ≫ ψ = φ ∧ ∀ k, ψ.φ (y k) = z k := by
  induction d with
  | zero =>
    obtain ⟨P, i, hP, hlev, huniv⟩ := exists_trunc S hS n hn
    refine ⟨P, i, Fin.elim0, hP, hlev, fun k ↦ Fin.elim0 k, ?_⟩
    intro V hV φ z _
    obtain ⟨ψ, hψ, huniq⟩ := huniv V hV φ
    exact ⟨ψ, ⟨hψ, fun k ↦ Fin.elim0 k⟩, fun ψ' h ↦ huniq ψ' h.1⟩
  | succ d ih =>
    obtain ⟨P, i, y, hP, hlev, hy, huniv⟩ := ih
    obtain ⟨Q, j, w, hQ, hlevQ, hw, hunivQ⟩ := exists_adj_one P hP n hn
    refine ⟨Q, i ≫ j, Fin.cons w (fun k ↦ j.φ (y k)), hQ, hlevQ, ?_, ?_⟩
    · intro k
      refine Fin.cases ?_ (fun k ↦ ?_) k
      · simpa using hw
      · simp only [Fin.cons_succ]
        exact j.dp.ideal_comp (Ideal.mem_map_of_mem _ (hy k))
    · intro V hV φ z hz
      obtain ⟨ψ₁, ⟨hψ₁, hψ₁y⟩, huniq₁⟩ := huniv V hV φ (fun k ↦ z k.succ) (fun k ↦ hz k.succ)
      obtain ⟨ψ, ⟨hψ, hψw⟩, huniq⟩ := hunivQ V hV ψ₁ (z 0) (hz 0)
      refine ⟨ψ, ⟨?_, ?_⟩, ?_⟩
      · rw [Category.assoc, hψ, hψ₁]
      · intro k
        refine Fin.cases ?_ (fun k ↦ ?_) k
        · simpa using hψw
        · simp only [Fin.cons_succ]
          rw [← Thick.comp_φ, hψ]
          exact hψ₁y k
      · rintro ψ' ⟨hψ', hψ'y⟩
        have h1 : j ≫ ψ' = ψ₁ := by
          refine huniq₁ (j ≫ ψ') ⟨?_, fun k ↦ ?_⟩
          · rw [← Category.assoc]
            exact hψ'
          · rw [Thick.comp_φ]
            have := hψ'y k.succ
            simpa only [Fin.cons_succ] using this
        refine huniq ψ' ⟨h1, ?_⟩
        have := hψ'y 0
        simpa only [Fin.cons_zero] using this

end FubiniStudyChowHeightFormula₂.Adr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdjOne =====

-- ===== clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdj =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdj", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CompF\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdjOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry DividedPowers
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.PDA

namespace FubiniStudyChowHeightFormula₂.Adr

end FubiniStudyChowHeightFormula₂.Adr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdj =====

-- ===== clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsNilpotentOfIsNilDP =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsNilpotentOfIsNilDP", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsNilpotentOfIsNilDP\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CompF\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsAdj\nimport Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsDividedPowersAug\nimport Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.RingTrunc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry DividedPowers
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.PDA

namespace FubiniStudyChowHeightFormula₂.Adr

section Rings

variable {P A B C : Type} [CommRing P] [CommRing A] [CommRing B] [CommRing C]

theorem fe_lift (t : P →+* A) (ht : t.FormallyEtale) (π : B →+* C) (hπ : Function.Surjective π)
    (hn : IsNilpotent (RingHom.ker π)) (u : P →+* B) (f : A →+* C) (h : f.comp t = π.comp u) :
    ∃ g : A →+* B, g.comp t = u ∧ π.comp g = f := by
  letI := t.toAlgebra
  letI : Algebra P C := (π.comp u).toAlgebra
  letI : Algebra P B := u.toAlgebra
  haveI : Algebra.FormallyEtale P A := ht
  let fA : A →ₐ[P] C := { f with commutes' := fun r => RingHom.congr_fun h r }
  let πA : B →ₐ[P] C := { π with commutes' := fun r => rfl }
  let g := Algebra.FormallySmooth.liftOfSurjective fA πA hπ hn
  refine ⟨g.toRingHom, ?_, ?_⟩
  · ext r
    exact g.commutes r
  · ext x
    exact Algebra.FormallySmooth.liftOfSurjective_apply fA πA hπ hn x

theorem fe_uniq (t : P →+* A) (ht : t.FormallyEtale) (π : B →+* C) (hn : IsNilpotent (RingHom.ker π))
    (g₁ g₂ : A →+* B) (h : g₁.comp t = g₂.comp t) (h' : π.comp g₁ = π.comp g₂) : g₁ = g₂ := by
  letI := t.toAlgebra
  letI : Algebra P B := (g₁.comp t).toAlgebra
  haveI : Algebra.FormallyEtale P A := ht
  let a₁ : A →ₐ[P] B := { g₁ with commutes' := fun r => rfl }
  let a₂ : A →ₐ[P] B := { g₂ with commutes' := fun r => (RingHom.congr_fun h r).symm }
  have key := Algebra.FormallyUnramified.ext' π hn a₁ a₂ (fun x => RingHom.congr_fun h' x)
  ext x
  exact AlgHom.congr_fun key x

theorem isNilpotent_of_isNilDP {J : Ideal B} {δ : DividedPowers J} (h : IsNilDP δ) : IsNilpotent J := by
  apply GlobalTheory.AnPer.TaylorCore.isNilpotent_of_isNilDP <;> assumption

end Rings

variable {R : Type} [CommRing R] {I : Ideal R} {X : Scheme.{0}} {κ : DividedPowers I} {s : X ⟶ Sp R}

instance (U : X.affineOpens) : IsOpenImmersion (affPt s U) := U.2.isOpenImmersion_fromSpec

theorem nil_ker {γ : DividedPowers I} (T : Thick γ s) : IsNilpotent (RingHom.ker T.π) := by
  have : RingHom.ker T.π = T.J := Ideal.ext T.ker
  rw [this]
  exact isNilpotent_of_isNilDP T.nil

theorem res_etale {U V : X.affineOpens} (h : V.1 ≤ U.1) : (Sec.res s h : Sec s U.1 →+* Sec s V.1).Etale := by
  have e : V.1 ≤ (𝟙 X : X ⟶ X) ⁻¹ᵁ U.1 := h
  have H := (𝟙 X : X ⟶ X).etale_appLE U.2 V.2 e
  have key : ((𝟙 X : X ⟶ X).appLE U.1 V.1 e).hom = (Sec.res s h : Sec s U.1 →+* Sec s V.1) := by
    simp only [Scheme.Hom.appLE, Scheme.Hom.id_app]
    rfl
  rw [key] at H
  exact H

theorem sec_smooth (hs : Smooth s) (U : X.affineOpens) : Algebra.Smooth R (Sec s U.1) := by
  have e : U.1 ≤ s ⁻¹ᵁ (⊤ : (Sp R).Opens) := le_top
  have H1 : (s.appLE ⊤ U.1 e).hom.Smooth := hs.smooth_appLE (isAffineOpen_top (Sp R)) U.2 e
  have H0 : (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom.Smooth :=
    RingHom.Smooth.of_bijective (ConcreteCategory.bijective_of_isIso _)
  have H := H0.comp H1
  rw [← RingHom.smooth_algebraMap]
  exact H

theorem eq_of_affPt (U : X.affineOpens) {B : Type} [CommRing B] {f g : Sec s U.1 →+* B}
    (h : spMap f ≫ affPt s U = spMap g ≫ affPt s U) : f = g := by
  have h1 : spMap f = spMap g := (cancel_mono (affPt s U)).1 h
  have h2 : CommRingCat.ofHom f = CommRingCat.ofHom g := Spec.map_injective h1
  exact congrArg CommRingCat.Hom.hom h2

theorem exists_hom_of_le (U : X.affineOpens) {B : Type} [CommRing B] (x : Sp B ⟶ X) (h : ⊤ ≤ x ⁻¹ᵁ U.1) :
    ∃ f : Sec s U.1 →+* B, spMap f ≫ affPt s U = x := by
  have hr : Set.range x ⊆ Set.range (affPt s U) := by
    rintro _ ⟨p, rfl⟩
    have hp : p ∈ x ⁻¹ᵁ U.1 := h trivial
    show _ ∈ Set.range U.2.fromSpec
    rw [U.2.range_fromSpec]
    exact hp
  let y := IsOpenImmersion.lift (affPt s U) x hr
  refine ⟨(Spec.preimage y).hom, ?_⟩
  have e : spMap (Spec.preimage y).hom = y := Spec.map_preimage y
  rw [e]
  exact IsOpenImmersion.lift_fac _ _ _

theorem exists_lift_of_coord (U : X.affineOpens) {d : ℕ} (t : MvPolynomial (Fin d) R →ₐ[R] Sec s U.1)
    (ht : t.toRingHom.FormallyEtale) (T : Thick (dp0 R) s) (f : Sec s U.1 →+* T.B₀) (hf : spMap f ≫ affPt s U = T.x)
    (z : Fin d → T.B) (hz : ∀ k, T.π (z k) = f (t (MvPolynomial.X k))) :
    ∃ j : bas s U ⟶ T, ∀ k, j.φ (t (MvPolynomial.X k)) = z k := by
  have hw : affPt s U ≫ s = spMap (algebraMap R (Sec s U.1)) := (bas s U).w
  have hsp : spMap (f.comp (algebraMap R (Sec s U.1))) = spMap (T.π.comp (algebraMap R T.B)) := by
    rw [ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap_comp, ← hw, ← Category.assoc, hf, T.w]
  have hR : f.comp (algebraMap R (Sec s U.1)) = T.π.comp (algebraMap R T.B) :=
    congrArg CommRingCat.Hom.hom (Spec.map_injective hsp)
  let u : MvPolynomial (Fin d) R →ₐ[R] T.B := MvPolynomial.aeval z
  have hfu : f.comp t.toRingHom = T.π.comp u.toRingHom := by
    apply MvPolynomial.ringHom_ext
    · intro r
      have h1 := RingHom.congr_fun hR r
      show f (t (MvPolynomial.C r)) = T.π (u (MvPolynomial.C r))
      rw [← MvPolynomial.algebraMap_eq, t.commutes, u.commutes]
      exact h1
    · intro k
      show f (t (MvPolynomial.X k)) = T.π (u (MvPolynomial.X k))
      rw [MvPolynomial.aeval_X]
      exact (hz k).symm
  obtain ⟨g, hg1, hg2⟩ := fe_lift t.toRingHom ht T.π T.surj (nil_ker T) u.toRingHom f hfu
  let φ : Sec s U.1 →ₐ[R] T.B :=
    { g with
      commutes' := fun r => by
        have h1 := RingHom.congr_fun hg1 (algebraMap R (MvPolynomial (Fin d) R) r)
        simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, AlgHom.commutes] at h1
        exact h1 }
  have hφ : spMap (T.π.comp (φ : Sec s U.1 →+* T.B)) ≫ affPt s U = T.x := by
    have e : T.π.comp (φ : Sec s U.1 →+* T.B) = f := hg2
    rw [e, hf]
  refine ⟨Thick.trivHom φ hφ, fun k => ?_⟩
  have h1 := RingHom.congr_fun hg1 (MvPolynomial.X k)
  simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe] at h1
  rw [MvPolynomial.aeval_X] at h1
  exact h1

theorem π_eq (U : X.affineOpens) {T : Thick (dp0 R) s} (a b : bas s U ⟶ T) (c : Sec s U.1) :
    T.π (a.φ c) = T.π (b.φ c) :=
  (a.comm c).symm.trans ((RingHom.congr_fun (eq_of_affPt U (a.pt.trans b.pt.symm)) c).trans (b.comm c))

theorem lift_ext (U : X.affineOpens) {d : ℕ} (t : MvPolynomial (Fin d) R →ₐ[R] Sec s U.1)
    (ht : t.toRingHom.FormallyEtale) {T : Thick (dp0 R) s} (a b : bas s U ⟶ T)
    (h : ∀ k, a.φ (t (MvPolynomial.X k)) = b.φ (t (MvPolynomial.X k))) : a = b := by
  have e1 : (a.φ.comp t : MvPolynomial (Fin d) R →ₐ[R] T.B) = b.φ.comp t :=
    MvPolynomial.algHom_ext (fun k => h k)
  have key := fe_uniq t.toRingHom ht T.π (nil_ker T) (a.φ : Sec s U.1 →+* T.B) (b.φ : Sec s U.1 →+* T.B)
    (RingHom.ext fun p => AlgHom.congr_fun e1 p) (RingHom.ext fun c => π_eq U a b c)
  exact Thick.Hom.ext' (AlgHom.ext fun c => RingHom.congr_fun key c)

theorem exists_coprod (U : Chart s) (S : Thick (dp0 R) s) (hS : InN κ S) (h : ⊤ ≤ S.x ⁻¹ᵁ U.1.1) (n : ℕ)
    (hn : 1 ≤ n) : ∃ (P : Thick (dp0 R) s) (i : S ⟶ P) (j : bas s U.1 ⟶ P), InN κ P ∧ IsLev P.δ n ∧
      ∀ (V : Thick (dp0 R) s), IsLev V.δ n → ∀ (φ : S ⟶ V) (b : bas s U.1 ⟶ V),
        ∃! ψ : P ⟶ V, i ≫ ψ = φ ∧ j ≫ ψ = b := by
  obtain ⟨-, d, t, ht⟩ := U.2
  obtain ⟨fS, hfS⟩ := @exists_hom_of_le R _ X s U.1 S.B₀ S.ring₀ S.x h
  choose zS hzS using fun k : Fin d => S.surj (fS (t (MvPolynomial.X k)))
  obtain ⟨jS, -⟩ := exists_lift_of_coord U.1 t ht S fS hfS zS hzS
  obtain ⟨P, i, y, hP, hlev, hy, huniv⟩ := _root_.FubiniStudyChowHeightFormula₂.Adr.exists_adj' S hS d n hn
  have hbπ : ∀ {T : Thick (dp0 R) s} (a : bas s U.1 ⟶ T) (c : Sec s U.1.1), T.π (a.φ c) = a.φ₀ c :=
    fun a c => (a.comm c).symm
  have hyπ : ∀ k, P.π (y k) = 0 := fun k => (P.ker _).2 (hy k)
  obtain ⟨j, hj⟩ := exists_lift_of_coord U.1 t ht P (jS ≫ i).φ₀ (jS ≫ i).pt
    (fun k => (jS ≫ i).φ (t (MvPolynomial.X k)) + y k)
    (fun k => by
      simp only []
      rw [map_add (f := _), hyπ, add_zero, hbπ])
  refine ⟨P, i, j, hP, hlev, fun V hV φ b => ?_⟩
  have hiψ : ∀ (ψ : P ⟶ V), i ≫ ψ = φ → ∀ x, ψ.φ (i.φ x) = φ.φ x := by
    intro ψ e x
    rw [← Thick.comp_φ, e]
  let zV : Fin d → V.B := fun k => b.φ (t (MvPolynomial.X k)) - (jS ≫ φ).φ (t (MvPolynomial.X k))
  have hzV : ∀ k, zV k ∈ V.J := fun k => by
    refine (V.ker _).1 ?_
    simp only [zV, map_sub]
    exact sub_eq_zero.2 (π_eq U.1 b (jS ≫ φ) _)
  obtain ⟨ψ, ⟨hψ1, hψ2⟩, hψu⟩ := huniv V hV φ zV hzV
  refine ⟨ψ, ⟨hψ1, ?_⟩, ?_⟩
  · apply lift_ext U.1 t ht
    intro k
    rw [Thick.comp_φ, hj k, map_add (f := _), hψ2]
    simp only [zV]
    rw [Thick.comp_φ jS i, Thick.comp_φ jS φ, hiψ ψ hψ1]
    ring
  · rintro ψ' ⟨h1, h2⟩
    apply hψu
    refine ⟨h1, fun k => ?_⟩
    have e1 : ψ'.φ (j.φ (t (MvPolynomial.X k))) = b.φ (t (MvPolynomial.X k)) := by
      rw [← Thick.comp_φ, h2]
    rw [hj k, map_add (f := _), Thick.comp_φ jS i, hiψ ψ' h1] at e1
    simp only [zV]
    rw [Thick.comp_φ jS φ, ← e1]
    ring

end FubiniStudyChowHeightFormula₂.Adr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsNilpotentOfIsNilDP =====

-- ===== clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.TagIso =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.TagIso", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CompF\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.AcycOfCoprod\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallDescentH1Surjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishingH1InvertingMorphisms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry DividedPowers
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.PDA

namespace FubiniStudyChowHeightFormula₂.Adr

universe v u v' u' v'' u''

section General

variable {R : Type} [CommRing R] {C : Type u} [Category.{v} C] {C' : Type u'} [Category.{v'} C']
  {C'' : Type u''} [Category.{v''} C'']

theorem restrict_pull1 (F : C ⥤ CommAlgCat.{0} R) (G : C' ⥤ C) (H : C'' ⥤ C') (c : GlobalTheory.CatCoh.H1 F) :
    (CoefMap.restrict (G ⋙ F) H).pull1 ((CoefMap.restrict F G).pull1 c) =
      (CoefMap.restrict F (H ⋙ G)).pull1 c := by
  rw [← CoefMap.pullCohomologyOne_comp]
  exact CoefMap.pullCohomologyOne_eq_of_natTrans _ _ (𝟙 _) (fun T b => by simp [CoefMap.comp, CoefMap.restrict, mp] <;> rfl) c

theorem restrict_pull2 (F : C ⥤ CommAlgCat.{0} R) (G : C' ⥤ C) (H : C'' ⥤ C') (c : GlobalTheory.CatCoh.H2 F) :
    (CoefMap.restrict (G ⋙ F) H).pull2 ((CoefMap.restrict F G).pull2 c) =
      (CoefMap.restrict F (H ⋙ G)).pull2 c := by
  rw [← CoefMap.pullCohomologyTwo_comp]
  exact CoefMap.pullCohomologyTwo_eq_of_natTrans _ _ (𝟙 _) (fun T b => by simp [CoefMap.comp, CoefMap.restrict, mp] <;> rfl) c

end General

variable {R : Type} [CommRing R] {I : Ideal R} {X : Scheme.{0}}
  {γ : DividedPowers I} {s : X ⟶ Sp R} {K : Type} {U : K → X.Opens}

def toSmall (γ : DividedPowers I) (s : X ⟶ Sp R) (U : K → X.Opens) :
    Tag γ s U ⥤ (IsSmall γ s U).FullSubcategory where
  obj S := ⟨S.T, S.k, S.le⟩
  map f := ⟨f.f⟩

section Comma

variable {T : (IsSmall γ s U).FullSubcategory}

theorem comma_le (a : CostructuredArrow (toSmall γ s U) T) : ⊤ ≤ T.obj.x ⁻¹ᵁ U a.left.k :=
  Thick.Hom.le_preimage a.hom.hom a.left.le

def selfObj (k : K) (h : ⊤ ≤ T.obj.x ⁻¹ᵁ U k) : CostructuredArrow (toSmall γ s U) T :=
  CostructuredArrow.mk (Y := (⟨T.obj, k, h⟩ : Tag γ s U)) (𝟙 T)

def toSelf (a : CostructuredArrow (toSmall γ s U) T) (k : K) (h : ⊤ ≤ T.obj.x ⁻¹ᵁ U k)
    (e : U a.left.k ≤ U k) : a ⟶ selfObj k h :=
  CostructuredArrow.homMk (⟨a.hom.hom, e⟩ : Tag.Hom _ _) (Category.comp_id _)

theorem toSelf_unique {a : CostructuredArrow (toSmall γ s U) T} {k : K} {h : ⊤ ≤ T.obj.x ⁻¹ᵁ U k}
    (f g : a ⟶ selfObj k h) : f = g := by
  have hf := CostructuredArrow.w f
  have hg := CostructuredArrow.w g
  apply CostructuredArrow.hom_ext
  revert hf hg
  rcases f with ⟨⟨f1, l1⟩, fr, fw⟩
  rcases g with ⟨⟨g1, l2⟩, gr, gw⟩
  intro hf hg
  simp [selfObj, toSmall] at hf hg ⊢
  have e : f1 = g1 := congrArg (fun q => q.hom) (hf.trans hg.symm)
  subst e
  rfl

def selfFun (m : CostructuredArrow (toSmall γ s U) T → K) (h : ∀ a, ⊤ ≤ T.obj.x ⁻¹ᵁ U (m a))
    (mono : ∀ a b, (a ⟶ b) → U (m a) ≤ U (m b)) :
    CostructuredArrow (toSmall γ s U) T ⥤ CostructuredArrow (toSmall γ s U) T where
  obj a := selfObj (m a) (h a)
  map {a b} f := toSelf _ _ _ (mono a b f)
  map_id _ := toSelf_unique _ _
  map_comp _ _ := toSelf_unique _ _

private theorem pull1_restrict_const_eq_of_natTrans {D : Type u} [Category.{v} D] (M : CommAlgCat.{0} R) (Φ Ψ : D ⥤ D)
    (θ : Φ ⟶ Ψ) (c : GlobalTheory.CatCoh.H1 ((Functor.const D).obj M)) :
    (CoefMap.restrict ((Functor.const D).obj M) Φ).pull1 c =
      (CoefMap.restrict ((Functor.const D).obj M) Ψ).pull1 c :=
  CoefMap.pullCohomologyOne_eq_of_natTrans (CoefMap.restrict ((Functor.const D).obj M) Φ)
    (CoefMap.restrict ((Functor.const D).obj M) Ψ :
      CoefMap (RingHom.id R) ((Functor.const D).obj M) (Φ ⋙ (Functor.const D).obj M))
    θ (fun _ _ => rfl) c

private theorem pull2_restrict_const_eq_of_natTrans {D : Type u} [Category.{v} D] (M : CommAlgCat.{0} R) (Φ Ψ : D ⥤ D)
    (θ : Φ ⟶ Ψ) (c : GlobalTheory.CatCoh.H2 ((Functor.const D).obj M)) :
    (CoefMap.restrict ((Functor.const D).obj M) Φ).pull2 c =
      (CoefMap.restrict ((Functor.const D).obj M) Ψ).pull2 c :=
  CoefMap.pullCohomologyTwo_eq_of_natTrans (CoefMap.restrict ((Functor.const D).obj M) Φ)
    (CoefMap.restrict ((Functor.const D).obj M) Ψ :
      CoefMap (RingHom.id R) ((Functor.const D).obj M) (Φ ⋙ (Functor.const D).obj M))
    θ (fun _ _ => rfl) c

private theorem pull1_restrict_id {D : Type u} [Category.{v} D] (F : D ⥤ CommAlgCat.{0} R)
    (c : GlobalTheory.CatCoh.H1 F) : (CoefMap.restrict F (𝟭 D)).pull1 c = c := by
  have e := CoefMap.pullCohomologyOne_eq_of_natTrans (CoefMap.id F) (CoefMap.restrict F (𝟭 D)) (𝟙 _)
    (fun _ b => by simp [CoefMap.restrict, CoefMap.id, mp] <;> rfl) c
  rw [CoefMap.pullCohomologyOne_id] at e
  exact e.symm

private theorem pull2_restrict_id {D : Type u} [Category.{v} D] (F : D ⥤ CommAlgCat.{0} R)
    (c : GlobalTheory.CatCoh.H2 F) : (CoefMap.restrict F (𝟭 D)).pull2 c = c := by
  have e := CoefMap.pullCohomologyTwo_eq_of_natTrans (CoefMap.id F) (CoefMap.restrict F (𝟭 D)) (𝟙 _)
    (fun _ b => by simp [CoefMap.restrict, CoefMap.id, mp] <;> rfl) c
  rw [CoefMap.pullCohomologyTwo_id] at e
  exact e.symm

private theorem H2_discrete_punit_eq_zero (F : Discrete PUnit.{1} ⥤ CommAlgCat.{0} R) (c : GlobalTheory.CatCoh.H2 F) :
    c = 0 := by
  obtain ⟨z, rfl⟩ := H2.mk_surjective F c
  rw [H2.mk_eq_zero]
  refine ⟨fun a b φ => z.1 a b b φ (𝟙 b), ?_⟩
  funext a b d φ ψ
  rcases a with ⟨⟨⟩⟩
  rcases b with ⟨⟨⟩⟩
  rcases d with ⟨⟨⟩⟩
  obtain rfl : φ = 𝟙 _ := Subsingleton.elim _ _
  obtain rfl : ψ = 𝟙 _ := Subsingleton.elim _ _
  simp [d1_apply, mp]

private theorem pull1_restrict_const_const_eq_zero {D : Type u} [Category.{v} D] (M : CommAlgCat.{0} R) (x : D)
    (c : GlobalTheory.CatCoh.H1 ((Functor.const D).obj M)) :
    (CoefMap.restrict ((Functor.const D).obj M) ((Functor.const D).obj x)).pull1 c = 0 := by
  have e := restrict_pull1 ((Functor.const D).obj M) ((Functor.const (Discrete PUnit.{1})).obj x)
    ((Functor.const D).obj ⟨⟨⟩⟩) c
  rw [H1.eq_zero_of_isInitial _ (T₀ := (⟨⟨⟩⟩ : Discrete PUnit.{1}))
    (Limits.IsInitial.ofUniqueHom (fun _ => Discrete.eqToHom (Subsingleton.elim _ _))
      (fun _ _ => Subsingleton.elim _ _))
    ((CoefMap.restrict ((Functor.const D).obj M) ((Functor.const (Discrete PUnit.{1})).obj x)).pull1 c),
    map_zero] at e
  exact e.symm

private theorem pull2_restrict_const_const_eq_zero {D : Type u} [Category.{v} D] (M : CommAlgCat.{0} R) (x : D)
    (c : GlobalTheory.CatCoh.H2 ((Functor.const D).obj M)) :
    (CoefMap.restrict ((Functor.const D).obj M) ((Functor.const D).obj x)).pull2 c = 0 := by
  have e := restrict_pull2 ((Functor.const D).obj M) ((Functor.const (Discrete PUnit.{1})).obj x)
    ((Functor.const D).obj ⟨⟨⟩⟩) c
  rw [H2_discrete_punit_eq_zero _
    ((CoefMap.restrict ((Functor.const D).obj M) ((Functor.const (Discrete PUnit.{1})).obj x)).pull2 c),
    map_zero] at e
  exact e.symm

theorem acyc_toSmall (hinf : ∀ k l, ∃ m, U m = U k ⊓ U l) (T : (IsSmall γ s U).FullSubcategory) :
    Acyc R (CostructuredArrow (toSmall γ s U) T) := by
  obtain ⟨k0, h0⟩ := T.property
  choose m2 hm2 using fun (a : CostructuredArrow (toSmall γ s U) T) => hinf a.left.k k0
  have h2 : ∀ a, ⊤ ≤ T.obj.x ⁻¹ᵁ U (m2 a) := by
    intro a
    rw [hm2 a]
    intro p hp
    exact ⟨comma_le a hp, h0 hp⟩
  let S1 := selfFun (T := T) (fun a => a.left.k) comma_le (fun a b f => Tag.Hom.le f.left)
  let S2 := selfFun (T := T) m2 h2 (fun a b f => by
    rw [hm2 a, hm2 b]
    exact inf_le_inf_right _ (Tag.Hom.le f.left))
  let θ1 : 𝟭 _ ⟶ S1 :=
    { app := fun a => toSelf a _ (comma_le a) le_rfl
      naturality := fun _ _ _ => toSelf_unique _ _ }
  let θ2 : S2 ⟶ S1 :=
    { app := fun a => toSelf (selfObj (m2 a) (h2 a)) a.left.k (comma_le a)
        (show U (m2 a) ≤ U a.left.k by rw [hm2 a]; exact inf_le_left)
      naturality := fun _ _ _ => toSelf_unique _ _ }
  let θ3 : S2 ⟶ (Functor.const _).obj (selfObj k0 h0) :=
    { app := fun a => toSelf (selfObj (m2 a) (h2 a)) k0 h0
        (show U (m2 a) ≤ U k0 by rw [hm2 a]; exact inf_le_right)
      naturality := fun _ _ _ => toSelf_unique (k := k0) (h := h0) _ _ }
  refine ⟨⟨selfObj k0 h0⟩, fun M => ⟨?_, ?_, ?_⟩⟩
  · intro g hg
    have key : ∀ a, g a = g (selfObj k0 h0) := fun a =>
      (hg _ _ (θ1.app a)).symm.trans ((hg _ _ (θ2.app a)).trans (hg _ _ (θ3.app a)).symm)
    intro a b
    exact (key a).trans (key b).symm
  · intro c
    exact (pull1_restrict_id _ c).symm.trans ((pull1_restrict_const_eq_of_natTrans M _ _ θ1 c).trans
      ((pull1_restrict_const_eq_of_natTrans M _ _ θ2 c).symm.trans ((pull1_restrict_const_eq_of_natTrans M _ _ θ3 c).trans
        (pull1_restrict_const_const_eq_zero M _ c))))
  · intro c
    exact (pull2_restrict_id _ c).symm.trans ((pull2_restrict_const_eq_of_natTrans M _ _ θ1 c).trans
      ((pull2_restrict_const_eq_of_natTrans M _ _ θ2 c).symm.trans ((pull2_restrict_const_eq_of_natTrans M _ _ θ3 c).trans
        (pull2_restrict_const_const_eq_zero M _ c))))

end Comma

theorem tag_pull1 (hcov : ⨆ k, U k = ⊤) (hinf : ∀ k l, ∃ m, U m = U k ⊓ U l) :
    Function.Bijective (CoefMap.restrict (O γ s) (Tag.forget γ s U)).pull1 := by
  have key : ⇑(CoefMap.restrict (O γ s) (Tag.forget γ s U)).pull1 =
      ⇑(CoefMap.restrict ((IsSmall γ s U).ι ⋙ O γ s) (toSmall γ s U)).pull1 ∘
        ⇑(CoefMap.restrict (O γ s) (IsSmall γ s U).ι).pull1 :=
    funext fun c => (restrict_pull1 (O γ s) (IsSmall γ s U).ι (toSmall γ s U) c).symm
  rw [key]
  exact (qa1 _ _ (fun T => acyc_toSmall hinf T)).comp
    (SmallDescent.pull1_bijective R I γ X s K U hcov)

private theorem pull2_restrict_isSmall_bijective_of_cover (hcov : ⨆ k, U k = ⊤) :
    Function.Bijective (CoefMap.restrict (O γ s) (IsSmall γ s U).ι).pull2 := by
  apply Desc.pull2_bijective
  · intro T b
    obtain ⟨L, l, hl⟩ := SmallDescent.exists_isLoc T b
    obtain ⟨hu, hsurj, hker, hfac⟩ := hl
    refine ⟨L, l, hu, ?_, hker, ?_⟩
    · intro y
      obtain ⟨n, N, h⟩ := hsurj y
      exact ⟨N, n, h⟩
    · intro S u hu'
      obtain ⟨ψ, hψ⟩ := hfac S u hu'
      exact ⟨ψ, hψ, fun ψ' h' =>
        SmallDescent.IsLoc.hom_ext ⟨hu, hsurj, hker, hfac⟩ (h'.trans hψ.symm)⟩
  · intro S S' a hS
    exact SmallDescent.isSmall_of_hom a hS
  · intro T
    obtain ⟨σ, hσ, hσs⟩ := SmallDescent.exists_cover hcov T
    refine ⟨σ.card, fun i => (σ.equivFin.symm i : T.B), ?_, ?_⟩
    · have hr : Set.range (fun i => (σ.equivFin.symm i : T.B)) = (σ : Set T.B) := by
        ext x
        constructor
        · rintro ⟨i, rfl⟩
          exact (σ.equivFin.symm i).2
        · intro hx
          exact ⟨σ.equivFin ⟨x, hx⟩, by simp⟩
      rw [hr]
      exact hσ
    · intro i S u hu
      exact hσs _ (σ.equivFin.symm i).2 S u hu

theorem tag_pull2 (hcov : ⨆ k, U k = ⊤) (hinf : ∀ k l, ∃ m, U m = U k ⊓ U l) :
    Function.Bijective (CoefMap.restrict (O γ s) (Tag.forget γ s U)).pull2 := by
  have key : ⇑(CoefMap.restrict (O γ s) (Tag.forget γ s U)).pull2 =
      ⇑(CoefMap.restrict ((IsSmall γ s U).ι ⋙ O γ s) (toSmall γ s U)).pull2 ∘
        ⇑(CoefMap.restrict (O γ s) (IsSmall γ s U).ι).pull2 :=
    funext fun c => (restrict_pull2 (O γ s) (IsSmall γ s U).ι (toSmall γ s U) c).symm
  rw [key]
  exact (qa2 _ _ (fun T => acyc_toSmall hinf T)).comp (pull2_restrict_isSmall_bijective_of_cover hcov)

end FubiniStudyChowHeightFormula₂.Adr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.TagIso =====

-- ===== clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CrystallineDeRham =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CrystallineDeRham", "h": "module\n\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsDPMorphismId\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsCrystalPairing\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.AcycOfCoprod\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.IsNilpotentOfIsNilDP\npublic import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.TagIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry DividedPowers
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.PDA

namespace FubiniStudyChowHeightFormula₂.Adr

variable {R : Type} [CommRing R] {I : Ideal R} {X : Scheme.{0}}

abbrev chartOpen (s : X ⟶ Sp R) : Chart s → X.Opens := fun U ↦ U.1.1

variable {κ : DividedPowers I} {s : X ⟶ Sp R}

section Final

variable {R₀ : Type} [CommRing R₀] {π : R →+* R₀} {X₀ : Scheme.{0}} {s₀ : X₀ ⟶ Sp R₀} {i : X₀ ⟶ X}

end Final

end FubiniStudyChowHeightFormula₂.Adr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.CrystallineDeRham =====

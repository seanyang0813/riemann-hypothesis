module

public import Formalism.SharpRestriction.LevelLetterCocycles.LiftingTheory
public import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.FinalStep0
public import Formalism.SharpRestriction.LevelLetterCocycles.AdmBoundsBOfAdm
public import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ColTwoStep
public import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsGaloisExtendingAlgHom
public import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE
public import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LogbHBNonneg
import Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LiftLeEPA, Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsLiftFLeSgOfThick, Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LenQuotSpanNeTopDvr, Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusStatementOfFontaine

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LiftLeEPA =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LiftLeEPA", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LiftingTheory\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.FinalStep0\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.FrobeniusPowerSeries

theorem lift_le_ePA (l : ℕ) [Fact l.Prime] (hl : 11 ≤ l) (h η H M : ℕ) (h1 : 1 ≤ h) (hη : 20 * η ≤ h)
    (hH : H ≤ h + η) (hM : M ≤ h) (jumps : Finset ℤ)
    (hj : ∀ u ∈ jumps, -(M : ℤ) ≤ u ∧ u ≤ h) :
    (Formalism.MainNotions.LiftingTheory.ePA l M H jumps : ℝ) ≤
      71 / 10 * (h : ℝ) / l + 71 / 10 + 2 * Real.logb l (2 * (h : ℝ)) := by
  unfold Formalism.MainNotions.LiftingTheory.ePA Formalism.MainNotions.LiftingTheory.eUA Formalism.MainNotions.LiftingTheory.eWA Formalism.MainNotions.LiftingTheory.aA Formalism.MainNotions.LiftingTheory.JSet
  exact lift_le l hl h η H M h1 hη hH hM jumps hj

end Formalism.MainNotions.N.FrobeniusPowerSeries
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LiftLeEPA =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsLiftFLeSgOfThick =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsLiftFLeSgOfThick", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.AdmBoundsBOfAdm\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.FinalStep0\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LiftLeEPA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.N.Ln17

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.N.Ln17 in
theorem exists_liftF_le_sg_of_thick : ∀ (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) {CR CA CB CK : ℝ} (hU : AdmBoundsB D HW F Cm CR CA CB CK)
    (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL) (hK : CaseA K LL)
    [NeZero (Module.finrank ℚ_[l] ↥(K0 K))] [Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1)]
    (T₁ T₂ : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (f : LatHom T₁.L T₂.L) (b w S η m : ℕ)
    (up : ZMod (Module.finrank ℚ_[l] ↥(K0 K)) → Bool) (size Mi hi : ZMod (Module.finrank ℚ_[l] ↥(K0 K)) → ℕ)
    (hB : HypB ((D.loc l).PD K) ((HW l).W K 1 LL hG) T₁ T₂ f b w S η m up size Mi hi)
    (hAlt : Alt b η up size) (hth : ∃ i, Formalism.MainNotions.TruncatedSeriesCountingBounds.Thick b η size i)
    (hbig : (b : ℝ) / 4 < 40 * Sg l b w S η size),
    ∃ e₀ : ℕ, (e₀ : ℝ) ≤ 160 * Sg l b w S η size ∧ f.LiftF ((D.loc l).PD K) e₀ := by
  intro D HW F Cm CR CA CB CK hU l _ K LL hG hK _ _ T₁ T₂ f b w S η m up size Mi hi hB hAlt hth hbig
  obtain ⟨hp11, hSet, hwb, hηb, hSb, ⟨j, hj⟩⟩ := hB
  obtain ⟨hCA, hSur, hηs, hJA, _hlow, hnt, _hJL⟩ := hSet
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hl : 11 ≤ l := hp ▸ hp11
  have hLift : Formalism.MainNotions.LiftingTheory.coreLiftA ((HW l).W K 1 LL hG) := hU.a2.2.2.2.2.2.2.2.1 l K 1 LL hG

  have hsz : ∀ i, size i ≤ b + η := by
    intro i
    by_cases ht : TruncatedSeriesCountingBounds.Thick b η size i
    · exact ht.2
    · have := hnt i ht
      omega
  have hb1 : 1 ≤ b := by
    have h1 := hnt j hj
    have h2 := hηs j
    omega
  have hhB : TruncatedSeriesCountingBounds.hB b w S η size = b + η + S := if_pos hth

  let Mi' : ZMod (Module.finrank ℚ_[l] ↥(K0 K)) → ℕ := fun i => if up i then η else size i + S
  let hi' : ZMod (Module.finrank ℚ_[l] ↥(K0 K)) → ℕ := fun i => if up i then size i + S else η
  have hJL' : Formalism.MainNotions.LiftingTheory.JumpsLet ((HW l).W K 1 LL hG) T₁ Mi' hi' := by
    intro i τ hτ a ha
    have h1 := hJA i τ hτ a ha
    have h2 := hηs i
    cases hu : up i
    · simp only [hu, Mi', hi', Bool.false_eq_true, if_false, Set.mem_union, Set.mem_Icc] at h1 ⊢
      push_cast
      omega
    · simp only [hu, Mi', hi', if_true, Set.mem_union, Set.mem_Icc] at h1 ⊢
      push_cast
      omega
  have hM : Formalism.MainNotions.LiftingTheory.Mmax (Module.finrank ℚ_[l] ↥(K0 K)) Mi' ≤ b + η + S := by
    apply Finset.sup_le
    intro k _
    have h1 := hsz (k : ZMod (Module.finrank ℚ_[l] ↥(K0 K)))
    cases hu : up (k : ZMod (Module.finrank ℚ_[l] ↥(K0 K))) <;>
      simp only [hu, Mi', Bool.false_eq_true, if_false, if_true] <;> omega
  have hm : Formalism.MainNotions.LiftingTheory.Mmax (Module.finrank ℚ_[l] ↥(K0 K)) hi' ≤ b + η + S := by
    apply Finset.sup_le
    intro k _
    have h1 := hsz (k : ZMod (Module.finrank ℚ_[l] ↥(K0 K)))
    cases hu : up (k : ZMod (Module.finrank ℚ_[l] ↥(K0 K))) <;>
      simp only [hu, hi', Bool.false_eq_true, if_false, if_true] <;> omega
  have hH : Formalism.MainNotions.LiftingTheory.Hmax (Module.finrank ℚ_[l] ↥(K0 K)) Mi' hi' ≤ b + η + S + η := by
    apply Finset.sup_le
    intro k _
    have h1 := hsz (k : ZMod (Module.finrank ℚ_[l] ↥(K0 K)))
    cases hu : up (k : ZMod (Module.finrank ℚ_[l] ↥(K0 K))) <;>
      simp only [hu, Mi', hi', Bool.false_eq_true, if_false, if_true] <;> omega
  have hjumps : ∀ u ∈ Formalism.MainNotions.LiftingTheory.jumpSet ((HW l).W K 1 LL hG) T₁
      (Formalism.MainNotions.LiftingTheory.Mmax (Module.finrank ℚ_[l] ↥(K0 K)) Mi')
      (Formalism.MainNotions.LiftingTheory.Mmax (Module.finrank ℚ_[l] ↥(K0 K)) hi'),
      -((Formalism.MainNotions.LiftingTheory.Mmax (Module.finrank ℚ_[l] ↥(K0 K)) Mi' : ℕ) : ℤ) ≤ u ∧
        u ≤ ((b + η + S : ℕ) : ℤ) := by
    intro u hu
    simp only [Formalism.MainNotions.LiftingTheory.jumpSet, Finset.mem_filter, Finset.mem_Icc] at hu
    refine ⟨hu.1.1, ?_⟩
    have := hu.1.2
    push_cast at this ⊢
    omega
  have hL := Formalism.MainNotions.N.FrobeniusPowerSeries.lift_le_ePA l hl (b + η + S) η
    (Formalism.MainNotions.LiftingTheory.Hmax (Module.finrank ℚ_[l] ↥(K0 K)) Mi' hi')
    (Formalism.MainNotions.LiftingTheory.Mmax (Module.finrank ℚ_[l] ↥(K0 K)) Mi') (by omega) (by omega) hH hM _ hjumps
  have hSg : Sg l b w S η size = Formalism.MainNotions.N.FrobeniusPowerSeries.Sg l (b + η + S) w S η := by
    unfold Sg Formalism.MainNotions.N.FrobeniusPowerSeries.Sg
    rw [hhB]
  have h0 := Formalism.MainNotions.N.FrobeniusPowerSeries.step0 l hl b w S η hb1 hηb hSb hwb (by rw [← hSg]; exact hbig)
  have hLA := hLift hCA T₁ T₂ f Mi' hi' hSur hJL'
  refine ⟨_, ?_, hLA⟩
  rw [hp, hSg]
  linarith

end Formalism.MainNotions.N.Ln17
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsLiftFLeSgOfThick =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LenQuotSpanNeTopDvr =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LenQuotSpanNeTopDvr", "h": "module\n\nimport Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD\npublic import Formalism.SharpRestriction.LevelLetterCocycles.AdmBoundsBOfAdm\npublic import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.ColTwoStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.N.Ln17

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}


omit [Algebra O LL] in
theorem len_quot_span_ne_top_dvr [IsDomain O] [IsDiscreteValuationRing O] (t : O) (ht : t ≠ 0) :
    Module.length O (O ⧸ Ideal.span {t}) ≠ ⊤ := by
  apply Formalism.MainNotions.BlochKatoDuality.Br.length_quot_ne_top <;> assumption

theorem colLeR_of_exponent [IsDomain O] [IsDiscreteValuationRing O] (PD : PeriodData G Qp K₀ K B BdR)
    (hp0 : ((PD.p : ℕ) : O) ≠ 0) {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L) (g₁ e e' : ℕ)
    (hgen : ∃ s : Finset (LatticeCohomology T₂.L), Submodule.span O (s : Set (LatticeCohomology T₂.L)) = latticeFiniteCohomology PD T₂.L ∧
      s.card ≤ g₁)
    (Z : Finset (G → T₂.V)) (hZ : ∀ z ∈ Z, z ∈ latticeFiniteCocycles PD T₂.L)
    (he : ExpIn PD F Z e)
    (hL : F.LiftF PD e') :
    TruncatedSeriesCountingBounds.ColLeR PD F ((g₁ : ℝ) * e + (Z.card : ℝ) * e') := by
  classical
  obtain ⟨s, hs, hscard⟩ := hgen
  have hrep : ∀ x ∈ latticeFiniteCohomology PD T₂.L, ∃ y : G → T₂.V, ∃ hy : y ∈ latticeCocycles T₂.L,
      y ∈ latticeFiniteCocycles PD T₂.L ∧ Submodule.mkQ _ (⟨y, hy⟩ : latticeCocycles T₂.L) = x := by
    intro x hx
    obtain ⟨z, hz, rfl⟩ := Submodule.mem_map.1 hx
    exact ⟨z.1, z.2, hz, rfl⟩
  let r : LatticeCohomology T₂.L → (G → T₂.V) := fun x =>
    if hx : x ∈ latticeFiniteCohomology PD T₂.L then (hrep x hx).choose else 0
  let s' : Finset (G → T₂.V) := s.image r
  have hmemH : ∀ x ∈ s, x ∈ latticeFiniteCohomology PD T₂.L := fun x hx => hs ▸ Submodule.subset_span hx
  have hrx : ∀ x (hx : x ∈ latticeFiniteCohomology PD T₂.L), r x = (hrep x hx).choose := fun x hx => by
    simp only [r, dif_pos hx]
  have hs'Z : (↑s' : Set (G → T₂.V)) ⊆ latticeFiniteCocycles PD T₂.L := by
    intro y hy
    obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 hy
    rw [hrx x (hmemH x hx)]
    exact (hrep x (hmemH x hx)).choose_spec.choose_spec.1
  have hB : latticeCoboundaries T₂.L ≤ F.ImF PD := by
    unfold LatHom.ImF
    exact le_sup_right
  have hZZ : Submodule.span O (↑Z : Set (G → T₂.V)) ≤ latticeFiniteCocycles PD T₂.L :=
    Submodule.span_le.2 (fun x hx => hZ x hx)
  have hspan : Submodule.span O (↑s' : Set (G → T₂.V)) ⊔ (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L) = latticeFiniteCocycles PD T₂.L := by
    have hNle : Submodule.span O (↑s' : Set (G → T₂.V)) ⊔ (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L) ≤ latticeFiniteCocycles PD T₂.L :=
      sup_le (Submodule.span_le.2 hs'Z) inf_le_right
    refine le_antisymm hNle ?_
    intro c hc
    have hcZ1 : c ∈ latticeCocycles T₂.L := (Submodule.mem_inf.1 hc).1
    have hq : Submodule.mkQ _ (⟨c, hcZ1⟩ : latticeCocycles T₂.L) ∈ latticeFiniteCohomology PD T₂.L := Submodule.mem_map_of_mem hc
    have hle : latticeFiniteCohomology PD T₂.L ≤ ((Submodule.span O (↑s' : Set (G → T₂.V)) ⊔
        (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L)).comap (latticeCocycles T₂.L).subtype).map (Submodule.mkQ _) := by
      rw [← hs, Submodule.span_le]
      intro x hx
      obtain ⟨hy, _, hyq⟩ := (hrep x (hmemH x hx)).choose_spec
      refine ⟨⟨(hrep x (hmemH x hx)).choose, hy⟩, ?_, hyq⟩
      show (hrep x (hmemH x hx)).choose ∈ Submodule.span O (↑s' : Set (G → T₂.V)) ⊔
        (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L)
      apply Submodule.mem_sup_left
      apply Submodule.subset_span
      refine Finset.mem_image.2 ⟨x, hx, ?_⟩
      exact hrx x (hmemH x hx)
    obtain ⟨y, hyN, hyq⟩ := hle hq
    have hyN' : (y : G → T₂.V) ∈ Submodule.span O (↑s' : Set (G → T₂.V)) ⊔
        (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L) := hyN
    rw [Submodule.mkQ_apply, Submodule.mkQ_apply, Submodule.Quotient.eq] at hyq
    have h2 : (y : G → T₂.V) - c ∈ latticeCoboundaries T₂.L := by simpa using Submodule.mem_comap.1 hyq
    have hd : c - (y : G → T₂.V) ∈ latticeCoboundaries T₂.L := by
      have h3 := (latticeCoboundaries T₂.L).neg_mem h2
      simpa using h3
    have hyZ : (y : G → T₂.V) ∈ latticeFiniteCocycles PD T₂.L := hNle hyN'
    have hdI : c - (y : G → T₂.V) ∈ F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L :=
      Submodule.mem_inf.2 ⟨hB hd, (latticeFiniteCocycles PD T₂.L).sub_mem hc hyZ⟩
    have e1 : c = (y : G → T₂.V) + (c - (y : G → T₂.V)) := by abel
    rw [e1]
    exact Submodule.add_mem _ hyN' (Submodule.mem_sup_right hdI)
  have hexp : ∀ q ∈ latticeFiniteCocycles PD T₂.L, (PD.p ^ e : ℕ) • q ∈
      Submodule.span O (↑Z : Set (G → T₂.V)) ⊔ (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L) := by
    intro q hq
    have h := he q hq
    obtain ⟨i, hi, z, hz, hiz⟩ := Submodule.mem_sup.1 h
    have hzZ : z ∈ latticeFiniteCocycles PD T₂.L := hZZ hz
    rw [← Nat.cast_smul_eq_nsmul O, Nat.cast_pow, ← hiz]
    have hiZ : i ∈ latticeFiniteCocycles PD T₂.L := by
      have e2 : i = ((PD.p : O) ^ e) • q - z := by rw [← hiz]; abel
      rw [e2]
      exact (latticeFiniteCocycles PD T₂.L).sub_mem ((latticeFiniteCocycles PD T₂.L).smul_mem _ hq) hzZ
    rw [add_comm]
    exact Submodule.add_mem_sup hz (Submodule.mem_inf.2 ⟨hi, hiZ⟩)
  have hlift : ∀ q ∈ Submodule.span O (↑Z : Set (G → T₂.V)), (PD.p ^ e' : ℕ) • q ∈
      F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L := by
    intro q hq
    have hqZ : q ∈ latticeFiniteCocycles PD T₂.L := hZZ hq
    rw [← Nat.cast_smul_eq_nsmul O, Nat.cast_pow]
    exact Submodule.mem_inf.2 ⟨hL q hqZ, (latticeFiniteCocycles PD T₂.L).smul_mem _ hqZ⟩
  have key := Formalism.TruncatedSeriesCounting.TruncatedSeriesCountingBounds.length_quotient_le_of_two_step O (G → T₂.V) PD.p g₁ Z.card e e' (latticeFiniteCocycles PD T₂.L)
    (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L) s' Z inf_le_right (Finset.card_image_le.trans hscard) le_rfl
    (fun z hz => hZ z hz) hspan hexp hlift
  have hcomap : (F.ImF PD ⊓ latticeFiniteCocycles PD T₂.L).comap (latticeFiniteCocycles PD T₂.L).subtype =
      (F.ImF PD).comap (latticeFiniteCocycles PD T₂.L).subtype := by
    rw [Submodule.comap_inf, Submodule.comap_subtype_self, inf_top_eq]
  rw [hcomap] at key
  have hcol : F.col PD ≤ ((g₁ * e + Z.card * e' : ℕ) : ℕ∞) * lenOl PD (O := O) := key
  have hlen : lenOl PD (O := O) ≠ ⊤ := len_quot_span_ne_top_dvr (O := O) _ hp0
  obtain ⟨k, hk⟩ := ENat.ne_top_iff_exists.1 hlen
  rw [← hk, ← Nat.cast_mul] at hcol
  have hcolfin : F.col PD ≠ ⊤ := fun h => ENat.coe_ne_top _ (top_le_iff.1 (h ▸ hcol))
  obtain ⟨mm, hmm⟩ := ENat.ne_top_iff_exists.1 hcolfin
  refine ⟨mm, k, hmm.symm, hk.symm, ?_⟩
  rw [← hmm] at hcol
  have h4 : mm ≤ (g₁ * e + Z.card * e') * k := by exact_mod_cast hcol
  have h5 : (mm : ℝ) ≤ (((g₁ * e + Z.card * e') * k : ℕ) : ℝ) := by exact_mod_cast h4
  push_cast at h5
  exact h5

end Core

end Formalism.MainNotions.N.Ln17
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LenQuotSpanNeTopDvr =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusStatementOfFontaine =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusStatementOfFontaine", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsGaloisExtendingAlgHom\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsLiftFLeSgOfThick\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LenQuotSpanNeTopDvr\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.LogbHBNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.N.Ln17

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module

def C0 : ℝ := 320

section Num

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]

theorem colLeR_mono {PD : PeriodData G Qp K₀ K B BdR} {T₁ T₂ : LocLat G Qp LL O}
    {F : LatHom T₁.L T₂.L} {x y : ℝ} (h : TruncatedSeriesCountingBounds.ColLeR PD F x) (hxy : x ≤ y) : TruncatedSeriesCountingBounds.ColLeR PD F y := by
  obtain ⟨mm, k, h1, h2, h3⟩ := h
  exact ⟨mm, k, h1, h2, h3.trans (mul_le_mul_of_nonneg_right hxy (Nat.cast_nonneg k))⟩

end Num

theorem logb_two_mul_nonneg (l h : ℕ) (hl : 2 ≤ l) : 0 ≤ Real.logb l (2 * (h : ℝ)) := by
  rcases Nat.eq_zero_or_pos h with rfl | hpos
  · simp
  · apply Real.logb_nonneg
    · exact_mod_cast (show 1 < l by omega)
    · have : (1 : ℝ) ≤ h := by exact_mod_cast hpos
      linarith

theorem sg_le_alt {n : ℕ} (l b w S η : ℕ) (size : ZMod n → ℕ) (bd : ℝ) (hl : 2 ≤ l) (hbd : 0 ≤ bd) :
    Sg l b w S η size ≤ (TruncatedSeriesCountingBounds.hB b w S η size : ℝ) / (l : ℝ) ^ 2 + ((w : ℝ) + η) / l + S + 1 +
      Real.logb l (2 * (TruncatedSeriesCountingBounds.hB b w S η size : ℝ)) + η * bd := by
  unfold Sg
  have hl' : (1 : ℝ) ≤ l := by exact_mod_cast (show 1 ≤ l by omega)
  have h1 : ((w : ℝ) + S + η) / l = ((w : ℝ) + η) / l + (S : ℝ) / l := by ring
  have h2 : (S : ℝ) / l ≤ S := div_le_self (Nat.cast_nonneg S) hl'
  have h3 : 0 ≤ (η : ℝ) * bd := mul_nonneg (Nat.cast_nonneg η) hbd
  linarith

section Record

variable (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)

theorem arith_alt {C N r m e z e' a b' S lg η bd Sgv : ℝ} (hC : 320 ≤ C) (hN : 0 ≤ N) (hr : 0 ≤ r)
    (hm : 0 ≤ m) (he' : 0 ≤ e') (ha : 0 ≤ a) (hb' : 0 ≤ b') (hS : 0 ≤ S) (hlg : 0 ≤ lg) (hη : 0 ≤ η)
    (hbd : 0 ≤ bd) (hSg : Sgv ≤ a + b' + S + 1 + lg) (he : e ≤ 55 * Sgv + 13 * S + η * bd)
    (hz : z ≤ 4 * N * m) :
    (N + 1) * r * e + z * e' ≤ C * (N + 1) * r * (a + b' + S + 1 + lg + η * bd) + C * N * m * e' := by
  have hX : e ≤ C * (a + b' + S + 1 + lg + η * bd) := by
    have h1 : 0 ≤ η * bd := mul_nonneg hη hbd
    have h2 : e ≤ 69 * (a + b' + S + 1 + lg + η * bd) := by linarith
    have h3 : 0 ≤ a + b' + S + 1 + lg + η * bd := by linarith
    exact h2.trans (mul_le_mul_of_nonneg_right (by linarith) h3)
  have hNr : 0 ≤ (N + 1) * r := by positivity
  have h4 : (N + 1) * r * e ≤ (N + 1) * r * (C * (a + b' + S + 1 + lg + η * bd)) :=
    mul_le_mul_of_nonneg_left hX hNr
  have hNm : 0 ≤ N * m := mul_nonneg hN hm
  have h5 : z * e' ≤ C * N * m * e' := by
    have : z ≤ C * N * m := by
      calc z ≤ 4 * (N * m) := by linarith
        _ ≤ C * (N * m) := mul_le_mul_of_nonneg_right (by linarith) hNm
        _ = C * N * m := by ring
    exact mul_le_mul_of_nonneg_right this he'
  grind

theorem arith_big {C N r m e₀ e' a b' S lg η bd Sgv : ℝ} (hC : 320 ≤ C) (hN : 0 ≤ N) (hr : 0 ≤ r)
    (hm : 0 ≤ m) (he' : 0 ≤ e') (ha : 0 ≤ a) (hb' : 0 ≤ b') (hS : 0 ≤ S) (hlg : 0 ≤ lg) (hη : 0 ≤ η)
    (hbd : 0 ≤ bd) (hSg : Sgv ≤ a + b' + S + 1 + lg) (he : e₀ ≤ 160 * Sgv) :
    (N + 1) * r * e₀ + 0 * e₀ ≤ C * (N + 1) * r * (a + b' + S + 1 + lg + η * bd) + C * N * m * e' := by
  have h1 : 0 ≤ η * bd := mul_nonneg hη hbd
  have hX : e₀ ≤ C * (a + b' + S + 1 + lg + η * bd) := by
    have h3 : 0 ≤ a + b' + S + 1 + lg + η * bd := by linarith
    have h2 : e₀ ≤ 160 * (a + b' + S + 1 + lg + η * bd) := by linarith
    exact h2.trans (mul_le_mul_of_nonneg_right (by linarith) h3)
  have hNr : 0 ≤ (N + 1) * r := by positivity
  have h4 : (N + 1) * r * e₀ ≤ (N + 1) * r * (C * (a + b' + S + 1 + lg + η * bd)) :=
    mul_le_mul_of_nonneg_left hX hNr
  have h5 : 0 ≤ C * N * m * e' := by
    have : 0 ≤ C := by linarith
    positivity
  grind

theorem arith_one {C N r m e z e' a b' S lg η bd Sgv R : ℝ} (hC : 320 ≤ C) (hN : 0 ≤ N) (hr : 0 ≤ r)
    (hm : 0 ≤ m) (he' : 0 ≤ e') (ha : 0 ≤ a) (hb' : 0 ≤ b') (hS : 0 ≤ S) (hlg : 0 ≤ lg) (hη : 0 ≤ η)
    (hbd : 0 ≤ bd) (hR : 1 ≤ R) (hSg : Sgv ≤ a + b' + S + 1 + lg)
    (he : e ≤ 18 * Sgv + 3 * R ^ 2 * (S + 1 + lg) + 1) (hz : z ≤ (R + 1) * N * m) :
    (N + 1) * r * e + z * e' ≤
      C * (N + 1) * r * (a + b' + R ^ 2 * (S + 1 + lg) + η * bd) + C * N * m * R ^ 2 * e' := by
  have hR2 : 1 ≤ R ^ 2 := one_le_pow₀ hR
  have hU : 1 ≤ S + 1 + lg := by linarith
  have hRU : S + 1 + lg ≤ R ^ 2 * (S + 1 + lg) := le_mul_of_one_le_left (by linarith) hR2
  have h1 : 0 ≤ η * bd := mul_nonneg hη hbd
  have hY1 : 1 ≤ a + b' + R ^ 2 * (S + 1 + lg) + η * bd := by linarith
  have hX : e ≤ C * (a + b' + R ^ 2 * (S + 1 + lg) + η * bd) := by
    have h2 : e ≤ 40 * (a + b' + R ^ 2 * (S + 1 + lg) + η * bd) := by linarith
    exact h2.trans (mul_le_mul_of_nonneg_right (by linarith) (by linarith))
  have hNr : 0 ≤ (N + 1) * r := by positivity
  have h4 : (N + 1) * r * e ≤ (N + 1) * r * (C * (a + b' + R ^ 2 * (S + 1 + lg) + η * bd)) :=
    mul_le_mul_of_nonneg_left hX hNr
  have hNm : 0 ≤ N * m := mul_nonneg hN hm
  have h5 : z * e' ≤ C * N * m * R ^ 2 * e' := by
    have h6 : R + 1 ≤ C * R ^ 2 := by
      have hRR2 : R ≤ R ^ 2 := by rw [sq]; exact le_mul_of_one_le_right (by linarith) hR
      have h2R2 : 2 * R ^ 2 ≤ C * R ^ 2 := mul_le_mul_of_nonneg_right (by linarith) (by positivity)
      linarith
    have : z ≤ C * N * m * R ^ 2 := by
      calc z ≤ (R + 1) * (N * m) := by linarith
        _ ≤ (C * R ^ 2) * (N * m) := mul_le_mul_of_nonneg_right h6 hNm
        _ = C * N * m * R ^ 2 := by ring
    exact mul_le_mul_of_nonneg_right this he'
  grind

theorem thmB_at (C : ℝ) (hC : C0 ≤ C) {CR CA CB CK : ℝ} (hU : AdmBoundsB D HW F Cm CR CA CB CK)
    (hJ : UsedJ D HW F)
    (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL) (hK : CaseA K LL)
    [NeZero (Module.finrank ℚ_[l] ↥(K0 K))] [Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1)] :
    TruncatedSeriesCountingBounds.ThmB ((D.loc l).PD K) ((HW l).W K 1 LL hG) C := by
  have hdvr : IsDiscreteValuationRing ↥(OL LL) := Formalism.BasicNotions.Examples₂.LB.OL_dvr LL
  intro hp T₁ T₂ f b w S η m up size Mi hi hS hw hη hS20 hnt
  dsimp only
  have hpl : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hB : HypB ((D.loc l).PD K) ((HW l).W K 1 LL hG) T₁ T₂ f b w S η m up size Mi hi :=
    ⟨hp, hS, hw, hη, hS20, hnt⟩
  have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
  have hp0 : ((((D.loc l).PD K).p : ℕ) : ↥(OL LL)) ≠ 0 := by
    rw [hpl]
    intro h0
    have h1 := congrArg (fun x : ↥(OL LL) => (x : ↥LL.1)) h0
    simp only [ZeroMemClass.coe_zero] at h1
    exact (Nat.cast_ne_zero.2 (show l ≠ 0 from (Fact.out : l.Prime).ne_zero)) h1
  have hgen := hU.a10 l K LL hS.1.1 T₂ hS.2.1.2.1
  have hlift : f.LiftF ((D.loc l).PD K) (TruncatedSeriesCountingBounds.eLift ((HW l).W K 1 LL hG) T₁ Mi hi) :=
    hU.a2.2.2.2.2.2.2.2.1 l K 1 LL hG hS.1 T₁ T₂ f Mi hi hS.2.1 hS.2.2.2.2.2.2
  have hC0 : (320 : ℝ) ≤ C := hC
  rw [hpl]
  have hlg0 : 0 ≤ Real.logb (l : ℝ) (2 * (TruncatedSeriesCountingBounds.hB b w S η size : ℝ)) := logb_two_mul_nonneg l _ hl2
  have hSg := sg_le_alt l b w S η size 0 hl2 le_rfl
  rw [mul_zero, add_zero] at hSg
  have ha0 : 0 ≤ (TruncatedSeriesCountingBounds.hB b w S η size : ℝ) / (l : ℝ) ^ 2 := by positivity
  have hb0 : 0 ≤ ((w : ℝ) + η) / (l : ℝ) := by positivity
  have hbd0 : 0 ≤ (if TruncatedSeriesCountingBounds.Band l b S η size
      (Real.logb (l : ℝ) (2 * (TruncatedSeriesCountingBounds.hB b w S η size : ℝ))) C then (1 : ℝ) else 0) := by
    split_ifs <;> norm_num
  have hbdI : bandI l b w S η size C = (if TruncatedSeriesCountingBounds.Band l b S η size
      (Real.logb (l : ℝ) (2 * (TruncatedSeriesCountingBounds.hB b w S η size : ℝ))) C then (1 : ℝ) else 0) := rfl
  refine ⟨fun hAlt => ?_, fun R hR hup hrun => ?_⟩
  ·
    have hAlt' : Alt b η up size := hAlt
    by_cases hbig : (∃ i, TruncatedSeriesCountingBounds.Thick b η size i) ∧ (b : ℝ) / 4 < 40 * Sg l b w S η size
    · obtain ⟨e₀, he₀, hL₀⟩ := exists_liftF_le_sg_of_thick D HW F Cm hU l K LL hG hK T₁ T₂ f b w S η m up size Mi hi hB
        hAlt' hbig.1 hbig.2
      have hc := colLeR_of_exponent ((D.loc l).PD K) hp0 f _ e₀ e₀ hgen ∅ (by simp)
        (fun c hc => Submodule.mem_sup_left (hL₀ c hc)) hL₀
      refine colLeR_mono hc ?_
      have := arith_big (N := (Module.finrank ℚ_[l] ↥(K0 K) : ℝ)) (m := (m : ℝ)) (e' := ((TruncatedSeriesCountingBounds.eLift ((HW l).W K 1 LL hG) T₁ Mi hi : ℕ) : ℝ))
        hC0 (Nat.cast_nonneg _) (Nat.cast_nonneg (Module.finrank ↥LL.1 T₂.V)) (Nat.cast_nonneg m)
        (Nat.cast_nonneg _) ha0 hb0 (Nat.cast_nonneg S) hlg0 (Nat.cast_nonneg η) hbd0 hSg he₀
      rw [Finset.card_empty, Nat.cast_zero]
      push_cast at this ⊢
      linarith
    · have hsm : (¬ ∃ i, TruncatedSeriesCountingBounds.Thick b η size i) ∨ 40 * Sg l b w S η size ≤ (b : ℝ) / 4 := by
        by_cases ht : ∃ i, TruncatedSeriesCountingBounds.Thick b η size i
        · right; exact not_lt.mp fun h' => hbig ⟨ht, h'⟩
        · left; exact ht
      obtain ⟨e, Z, he, hZc, hZ, hZe⟩ := sum_alt D HW F Cm hU hJ l K LL hG hK T₁ T₂ f b w S η m up
        size Mi hi hB hAlt' C (by linarith) hsm
      have hc := colLeR_of_exponent ((D.loc l).PD K) hp0 f _ e _ hgen Z hZ hZe hlift
      refine colLeR_mono hc ?_
      rw [hbdI] at he
      have hz : (Z.card : ℝ) ≤ 4 * (Module.finrank ℚ_[l] ↥(K0 K) : ℝ) * m := by exact_mod_cast hZc
      have := arith_alt hC0 (Nat.cast_nonneg _) (Nat.cast_nonneg (Module.finrank ↥LL.1 T₂.V))
        (Nat.cast_nonneg m) (Nat.cast_nonneg (TruncatedSeriesCountingBounds.eLift ((HW l).W K 1 LL hG) T₁ Mi hi)) ha0 hb0
        (Nat.cast_nonneg S) hlg0 (Nat.cast_nonneg η) hbd0 hSg he hz
      push_cast at this ⊢
      linarith
  ·
    have hOne : One b η R up size := ⟨hup, hrun⟩
    obtain ⟨e, Z, he, hZc, hZ, hZe⟩ := sum_one D HW F Cm hU hJ l K LL hG hK T₁ T₂ f b w S η m up size
      Mi hi hB R hR hOne
    have hc := colLeR_of_exponent ((D.loc l).PD K) hp0 f _ e _ hgen Z hZ hZe hlift
    refine colLeR_mono hc ?_
    have hz : (Z.card : ℝ) ≤ ((R : ℝ) + 1) * (Module.finrank ℚ_[l] ↥(K0 K) : ℝ) * m := by
      exact_mod_cast hZc
    have hR1 : (1 : ℝ) ≤ R := by exact_mod_cast hR
    have := arith_one hC0 (Nat.cast_nonneg _) (Nat.cast_nonneg (Module.finrank ↥LL.1 T₂.V))
      (Nat.cast_nonneg m) (Nat.cast_nonneg (TruncatedSeriesCountingBounds.eLift ((HW l).W K 1 LL hG) T₁ Mi hi)) ha0 hb0
      (Nat.cast_nonneg S) hlg0 (Nat.cast_nonneg η) hbd0 hR1 hSg he hz
    push_cast at this ⊢
    linarith

theorem frobenius_statement_of_inputs (C : ℝ) (hC : C0 ≤ C) {CR CA CB CK : ℝ}
    (p2 : Formalism.MainNotions.DeltaInvariantLattices.P2 D HW F) (p3 : Formalism.MainNotions.DeltaInvariantLattices.P3 D HW F Cm) (p4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm)
    (p5 : Formalism.MainNotions.DeltaInvariantLattices.P5 D HW F) (p9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F) (a2 : ArcLiftingSetup.adm2 D HW F CR CA CB CK) (a5 : ArcLiftingSetup.adm5 D HW F)
    (sP : ArcLiftingSetup.SaturationFrobeniusPullback D HW F) (kLev : ArcLiftingSetup.KillerLevL D.loc D.locA HW F)
    (kMod : ArcLiftingSetup.KillerModL D.loc D.locA HW F) (a9 : ArcLiftingSetup.adm9 D) (a10 : ArcLiftingSetup.adm10 D)
    (a11 : ArcLiftingSetup.adm11 D HW F) (a12 : ArcLiftingSetup.adm12 D HW F Cm) (a13 : ArcLiftingSetup.adm13 D HW F Cm)
    (a14 : ArcLiftingSetup.adm14 D HW F Cm) (a15 : ArcLiftingSetup.adm15 D) (a22 : Formalism.MainNotions.CrystallineLiftingBounds.adm22 D HW F)
    (a23 : Formalism.MainNotions.CrystallineLiftingBounds.adm23 D HW F) (c4 : Formalism.MainNotions.N.LetterConditionGlobal D HW F) :
    ArcLiftingSetup.aux₃ D HW F C := by
  intro l _ K LL hG hKur _ _ h11
  have hl : 11 ≤ l := (D.loc l).PD_p K ▸ h11
  exact thmB_at D HW F Cm C hC ⟨p2, p3, p4, p5, p9, a2, a5, sP, kLev, kMod, a9, a10, a11, a12, a13, a14, a15⟩ ⟨a22, a23, c4⟩ l K LL hG
    ⟨hKur, by omega, hG⟩ h11

theorem stmt_holds (a22 : Formalism.MainNotions.CrystallineLiftingBounds.adm22 D HW F) (a23 : Formalism.MainNotions.CrystallineLiftingBounds.adm23 D HW F)
    (c4 : Formalism.MainNotions.N.LetterConditionGlobal D HW F) (C : ℝ) (hC : C0 ≤ C)
    (CR CA CB CK Ckap : ℝ) : ArcLiftingSetup.Stmt D HW F Cm C CR CA CB CK Ckap := fun hA =>
  let h := admBoundsB_of_adm hA
  frobenius_statement_of_inputs D HW F Cm C hC h.p2 h.p3 h.p4 h.p5 h.p9 h.a2 h.a5 h.sP h.kLev h.kMod h.a9 h.a10 h.a11 h.a12 h.a13 h.a14 h.a15
    a22 a23 c4

theorem frobenius_statement_of_fontaine (C CR CA CB CK Ckap : ℝ) (hC : (320 : ℝ) ≤ C) (a22 : Formalism.MainNotions.CrystallineLiftingBounds.adm22 D HW F)
    (a23 : Formalism.MainNotions.CrystallineLiftingBounds.adm23 D HW F) (c4 : Formalism.MainNotions.N.LetterConditionGlobal D HW F) :
    ArcLiftingSetup.Stmt D HW F Cm C CR CA CB CK Ckap :=
  stmt_holds D HW F Cm a22 a23 c4 C hC CR CA CB CK Ckap

end Record

end Formalism.MainNotions.N.Ln17
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusStatementOfFontaine =====

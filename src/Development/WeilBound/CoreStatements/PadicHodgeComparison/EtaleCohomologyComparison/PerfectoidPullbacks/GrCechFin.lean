module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.CxPairing
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedCechCohomologyFinite
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreStH
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DeRhamFiniteAndFiltrationBounded
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KIsoPf
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsSmoothCoordinateCover
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupProductRespectsHodgeFiltration, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_cech_fin, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KFinPf, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFiltrationVanishesAboveDimension, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KTopPf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupProductRespectsHodgeFiltration =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupProductRespectsHodgeFiltration", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.CxPairing\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.CupdR

theorem dividedPowerFiltration_mul {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) (r s : ℕ) :
    pdP δ r * pdP δ s ≤ pdP δ (r + s) := by
  unfold pdP
  rw [Ideal.span_mul_span']
  refine Ideal.span_le.2 ?_
  rintro _ ⟨_, ⟨l, hl, hr, rfl⟩, _, ⟨l', hl', hr', rfl⟩, rfl⟩
  refine Ideal.subset_span ⟨l ++ l', ?_, ?_, ?_⟩
  · intro q hq
    rcases List.mem_append.1 hq with h | h
    exacts [hl q h, hl' q h]
  · simp only [List.map_append, List.sum_append]
    omega
  · simp [List.map_append, List.prod_append]

theorem term_mem {b : Base} {L : b.Fun} {p n r : ℕ} (t : ComposableArrows (Thick L) n)
    (f : CH.Cn (CH.modF (thA L)) p) (hf : ∀ s, (show (s.obj (Fin.last p)).B from f s) ∈ (s.obj (Fin.last p)).pdPow r)
    (g : Fin (p + 1) → Fin (n + 1)) (hg : Monotone g) :
    (show (t.obj (Fin.last n)).B from CH.term (CH.modF (thA L)) t f g hg) ∈ (t.obj (Fin.last n)).pdPow r :=
  dividedPowerFiltration_map (t.map (homOfLE (Fin.le_last (g (Fin.last p))))).dp r (hf (hg.functor ⋙ t))

theorem cup_bilinear_filtered {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (i j : ℕ) :
    (∃ b : HdR q i →ₗ[K] HdR q j →ₗ[K] HdR q (i + j), ∀ x y, b x y = cupK q rfl x y) ∧
    ∀ r s, ∀ x ∈ FilR q i r, ∀ y ∈ FilR q j s, cupK q rfl x y ∈ FilR q (i + j) (r + s) := by
  let P := CH.mulP (thA (smFun X q))
  let Q := CrystallineSemistableComparison.Auxff.toCx P
  have cup_eq_local : ∀ x y, P.cup (rfl : i + j = i + j) x y = Q.cup (rfl : i + j = i + j) x y := by
    intro x y
    unfold CrystallineSemistableComparison.CH.Pairing.cup CrystallineSemistableComparison.CxPairing.cup
    split_ifs with hz
    · rfl
    · exact absurd ((Q.leib (rfl : i + j = i + j) _ _).trans (by
        rw [show (CH.cx (CH.modF (thA (smFun X q)))).d i (Quotient.out x).1 = 0 from (Quotient.out x).2,
          show (CH.cx (CH.modF (thA (smFun X q)))).d j (Quotient.out y).1 = 0 from (Quotient.out y).2]
        simp)) hz
  have hb : ∃ b : HdR q i →ₗ[K] HdR q j →ₗ[K] HdR q (i + j), ∀ x y, b x y = cupK q rfl x y := by
    obtain ⟨b, hb⟩ := CrystallineSemistableComparison.Auxff.cx_bilin Q (rfl : i + j = i + j)
    refine ⟨b, fun x y => ?_⟩
    change b x y = P.cup (rfl : i + j = i + j) x y
    exact (hb x y).trans (cup_eq_local x y).symm
  refine ⟨hb, ?_⟩
  rintro r s x ⟨z, rfl, hz⟩ y ⟨w, rfl, hw⟩
  let F := CH.modF (thA (smFun X q))
  have hc := CrystallineSemistableComparison.Auxff.closed Q (rfl : i + j = i + j) z.1 w.1 z.2 w.2
  have e : P.cup (rfl : i + j = i + j) ((CH.cx F).cls z.1 z.2) ((CH.cx F).cls w.1 w.2) =
      (CH.cx F).cls (P.cupC (rfl : i + j = i + j) z.1 w.1) hc := by
    rw [cup_eq_local]
    exact CrystallineSemistableComparison.P.cxcup_cls Q (rfl : i + j = i + j) z.1 w.1 z.2 w.2 hc
  refine ⟨⟨_, hc⟩, e.symm, fun t => ?_⟩
  exact dividedPowerFiltration_mul _ r s (Ideal.mul_mem_mul
    (term_mem t z.1 hz (CH.front rfl) (CH.front_mono rfl)) (term_mem t w.1 hw (CH.back rfl) (CH.back_mono rfl)))

end GlobalTheory.CompanionTheory.CupdR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupProductRespectsHodgeFiltration =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_cech_fin =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_cech_fin", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedCechCohomologyFinite\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreStH\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb


theorem gr_cech_fin_pf : KH.GrCechFin :=
  @_root_.GlobalTheory.CompanionTheory.GrCech.main_thm locGr_h polyTf_h globSerreSt_h globVanSt_h

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_cech_fin =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KFinPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KFinPf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DeRhamFiniteAndFiltrationBounded\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreStH\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KIsoPf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_cech_fin\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem k_fin_pf : ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsProper q] [Smooth q] (j : ℕ),
    FiniteDimensional K (HdR q j) ∧ ∀ x ∈ FilR q j (j + 1), x = 0 :=
  _root_.GlobalTheory.CompanionTheory.KFin.main locGr_h locVan_h polyTf_h globSerreSt_h globVanSt_h k_iso_pf gr_aff_pf gr_cech_fin_pf

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KFinPf =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFiltrationVanishesAboveDimension =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFiltrationVanishesAboveDimension", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsSmoothCoordinateCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.FilTop

section Inj
variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R}

theorem toSq_pullC_bij (a b : IdF A) (ha : ∀ T, a.S T = ⊤) (hb : ∀ T, b.S T = ⊥) (n : ℕ) :
    Function.Bijective ((toSq a b ha).pullC n) := by
  have hτ : ∀ T, Function.Bijective ((toSq a b ha).τ T) := by
    intro T
    refine ⟨fun x y hxy => ?_, fun z => ?_⟩
    · have h1 : (Ideal.Quotient.mk (b.S T) (show A.obj T from x)) = Ideal.Quotient.mk (b.S T) (show A.obj T from y) :=
        congrArg Subtype.val hxy
      rw [Ideal.Quotient.eq, hb T, Ideal.mem_bot, sub_eq_zero] at h1
      exact h1
    · obtain ⟨z, hz⟩ := z
      obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective z
      exact ⟨x, rfl⟩
  refine ⟨fun f g hfg => ?_, fun f' => ?_⟩
  · funext s
    exact (hτ _).1 (congrFun hfg s)
  · refine ⟨fun s => Function.surjInv (hτ _).2 (f' s), ?_⟩
    funext s
    exact Function.surjInv_eq (hτ _).2 (f' s)

end Inj

theorem pull_inj_of_bij {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {C' : Type 1} [Category.{0} C']
    {F : C ⥤ ModuleCat.{0} R} {F' : C' ⥤ ModuleCat.{0} R} (m : CH.Mor F F' (RingHom.id R))
    (hb : ∀ n, Function.Bijective (m.pullC n)) (n : ℕ) : Function.Injective (m.pull n) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro x hx
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rw [Submodule.Quotient.mk_eq_zero]
  change m.pull n (Submodule.Quotient.mk z) = 0 at hx
  unfold CH.Mor.pull Cx.Hom.mapH at hx
  rw [Submodule.mapQ_apply, Submodule.Quotient.mk_eq_zero] at hx
  change m.pullC n z.1 ∈ (CH.cx F').B n at hx
  change z.1 ∈ (CH.cx F).B n
  cases n with
  | zero =>
    have h0 : m.pullC 0 z.1 = 0 := hx
    have : z.1 = 0 := (hb 0).1 (h0.trans (map_zero _).symm)
    rw [this]; exact Submodule.zero_mem _
  | succ n =>
    obtain ⟨g, hg⟩ := hx
    obtain ⟨g0, rfl⟩ := (hb n).2 g
    refine ⟨g0, (hb (n + 1)).1 ?_⟩
    change m.pullC (n + 1) (CH.d F n g0) = m.pullC (n + 1) z.1
    rw [← CH.Mor.d_pullC]
    exact hg

theorem fil_top_vanish : KH.LocGr → KH.LocVan → KH.PolyTf → KH.GlobSerreSt → KH.GlobVanSt → KH.KIso → KH.GrAff → ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsProper q] (d : ℕ)
    [SmoothOfRelativeDimension d q] (j : ℕ), ∀ x ∈ FilR q j (d + 1), x = 0 := by
  intro _ _ _ _ _ hKIso _ K _ _ X q _ d _ j x hx
  obtain ⟨U, hU⟩ := (_root_.GlobalTheory.CompanionTheory.CovEx.exists_cov q).2 d inferInstance
  have h𝒱 : sSup (Set.range U.U) = ⊤ := by rw [sSup_range]; exact U.cover
  have hk := hKIso q U (d + 1) (fun α => by rw [hU α]; omega) (Set.range U.U) h𝒱 j
  have h0 : quoK q (KS q (d + 1) (Set.range U.U)) ((d + 1 : ℕ) : ℤ) j x = 0 := (hk.2 (d + 1) le_rfl x).1 hx
  have hb : ∀ T, (sFil (KS q (d + 1) (Set.range U.U)) ((d + 1 : ℕ) : ℤ)).S T = ⊥ := by
    intro T
    change T.obj.pdPow ((d + 1 : ℕ) : ℤ).toNat = ⊥
    rw [Int.toNat_natCast]
    exact T.property.1.1
  have hinj := GlobalTheory.CompanionTheory.FilTop.pull_inj_of_bij _
    (GlobalTheory.CompanionTheory.FilTop.toSq_pullC_bij (sFil (KS q (d + 1) (Set.range U.U)) 0) _ (fun T => T.obj.pdPow_zero) hb) j
  have h1 : resK q (KS q (d + 1) (Set.range U.U)) j x = 0 := hinj (by
    rw [map_zero]; exact h0)
  exact hk.1.1 (h1.trans (map_zero _).symm)

end GlobalTheory.CompanionTheory.FilTop
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFiltrationVanishesAboveDimension =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KTopPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KTopPf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFiltrationVanishesAboveDimension\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreStH\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KIsoPf\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem k_top_pf : ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsProper q] (d : ℕ)
    [SmoothOfRelativeDimension d q] (j : ℕ), ∀ x ∈ FilR q j (d + 1), x = 0 :=
  _root_.GlobalTheory.CompanionTheory.FilTop.fil_top_vanish locGr_h locVan_h polyTf_h globSerreSt_h globVanSt_h k_iso_pf gr_aff_pf

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KTopPf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupProductRespectsHodgeFiltration\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedCechCohomologyFinite\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreStH\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KFinPf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KTopPf\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.KIsoPf\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem gr_cech_fin : ∀ {O : Type} [CommRing O] [IsNoetherianRing O] (l s : ℕ) (hb : TFBase (dividedPowersBot O) l s) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) [IsProper q] (U : Cov q) (r : ℕ) (hr : r < s) (p : ℕ),
    Module.Finite O ((cechH (sq (thFil (smFun X q) r) (thFil (smFun X q) ((r : ℤ) + 1)))
      (fun α => St (γ := dividedPowersBot O) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (TF l s) {U.U α}) r).cx.H p) := @_root_.GlobalTheory.CompanionTheory.GrCech.main_thm locGr_h polyTf_h globSerreSt_h globVanSt_h

theorem gr_aff : ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q]
    (V : X.Opens) (hV : IsAffineOpen V) (s r j : ℕ), r < s → j ≠ r → Subsingleton (HQ (KS q s {V}) r ((r : ℤ) + 1) j) := @gr_aff_pf

theorem k_iso : ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) (s : ℕ)
    (hs : ∀ α, U.d α < s) (𝒱 : Set X.Opens) (h𝒱 : sSup 𝒱 = ⊤) (j : ℕ), Function.Bijective (resK q (KS q s 𝒱) j) ∧
      ∀ r ≤ s, ∀ x : HdR q j, x ∈ FilR q j r ↔ quoK q (KS q s 𝒱) r j x = 0 := @k_iso_pf

theorem k_cup : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (i j : ℕ),
    (∃ b : HdR q i →ₗ[K] HdR q j →ₗ[K] HdR q (i + j), ∀ x y, b x y = cupK q rfl x y) ∧
    ∀ r s, ∀ x ∈ FilR q i r, ∀ y ∈ FilR q j s, cupK q rfl x y ∈ FilR q (i + j) (r + s) := @_root_.GlobalTheory.CompanionTheory.CupdR.cup_bilinear_filtered

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin =====

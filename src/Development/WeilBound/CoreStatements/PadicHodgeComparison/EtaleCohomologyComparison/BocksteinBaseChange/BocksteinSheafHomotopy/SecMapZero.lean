module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtSide
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtProps
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsZeroChains
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SheafSumLemmas, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SecMapZero

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SheafSumLemmas =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SheafSumLemmas", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtSide\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry Opposite

namespace CrystallineSemistableComparison.WeightedPowerFormIntegrability

open GlobalTheory.EtC

variable {R : Type} [CommRing R]

theorem isSheaf_types (G : Shv R) : Presieve.IsSheaf Scheme.etaleTopology (G.obj ⋙ forget _) :=
  (isSheaf_iff_isSheaf_of_type _ _).1 ((Presheaf.isSheaf_iff_isSheaf_forget _ _ (forget _)).1 G.property)

theorem sec_empty (G : Shv R) (Z : Scheme.{0}) [IsEmpty Z] (a b : Sec G Z) : a = b :=
  ((isSheaf_types G).isSheafFor (⊥ : Presieve Z) (by rw [Sieve.generate_bot]; exact Scheme.bot_mem_grothendieckTopology Z)).isSeparatedFor.ext
    (fun _ _ h => h.elim)

theorem sec_sum (G : Shv R) {X : Scheme.{0}} {r : ℕ} {Y : Fin r → Scheme.{0}} (j : ∀ s, Y s ⟶ X) (hj : IsSum j) :
    Function.Bijective (fun (y : Sec G X) (s : Fin r) => Sec.res (j s) y) := by
  obtain ⟨hopen, hcov, hdisj⟩ := hj
  let U : X.Cover (Scheme.precoverage @Etale) := Scheme.Cover.mkOfCovers (Fin r) Y j
    (fun x => by obtain ⟨s, y, hy⟩ := hcov x; exact ⟨s, y, hy⟩) (fun s => by have := hopen s; infer_instance)
  have hmem : Sieve.ofArrows Y j ∈ Scheme.etaleTopology X := U.mem_grothendieckTopology
  have hsf := (isSheaf_types G).isSheafFor _ hmem
  rw [Presieve.isSheafFor_arrows_iff] at hsf
  have hcomp : ∀ x : ∀ s, Sec G (Y s), Presieve.Arrows.Compatible (G.obj ⋙ forget _) j x := by
    intro x s t Z gs gt h
    by_cases hst : s = t
    · subst hst
      haveI := hopen s
      rw [cancel_mono] at h
      rw [h]
    · haveI : IsEmpty Z := ⟨fun z => by
        have h1 : (j s) (gs z) = (j t) (gt z) := by
          rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, h]
        exact Set.disjoint_left.1 (hdisj s t hst) ⟨gs z, rfl⟩ ⟨gt z, h1.symm⟩⟩
      exact sec_empty G Z _ _
  constructor
  · intro a b hab
    obtain ⟨t, -, ht⟩ := hsf _ (hcomp (fun s => Sec.res (j s) b))
    exact (ht a fun s => congrFun hab s).trans (ht b fun s => rfl).symm
  · intro x
    obtain ⟨t, ht, -⟩ := hsf x (hcomp x)
    exact ⟨t, funext ht⟩

end CrystallineSemistableComparison.WeightedPowerFormIntegrability
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SheafSumLemmas =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SecMapZero =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SecMapZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtProps\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsZeroChains\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SheafSumLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex

namespace CrystallineSemistableComparison

open GlobalTheory.EtC

namespace WeightedPowerFormIntegrability

variable {R : Type} [CommRing R]

theorem secMap_zero {F G : Shv R} (φ : F ⟶ G) {U : Scheme.{0}} : Sec.map φ (0 : Sec F U) = 0 := map_zero _

theorem secRes_zero {F : Shv R} {V U : Scheme.{0}} (g : V ⟶ U) : Sec.res g (0 : Sec F U) = 0 := map_zero _

theorem mk_eq_of_ev (hS : E.InSch) {X : Scheme.{0}} {I : GlobalTheory.EtC.Cx R} {n : ℤ} (α β : Cocycle ((chains R).obj (sch.obj X)) I n)
    (h : ev α.1 0 n (by simp) X (𝟙 X) = ev β.1 0 n (by simp) X (𝟙 X)) :
    CohomologyClass.mk α = CohomologyClass.mk β := by
  rw [← sub_eq_zero, ← CohomologyClass.mk_sub]
  refine ((hS R X I (n - 1) n (n + 1) (by omega) rfl).2 (α - β)).2.2 ⟨0, ?_⟩
  refine (secMap_zero _).trans ?_
  change (0 : Sec (I.X n) X) = GlobalTheory.EtC.CupSpec.evHom I n 0 n (by simp) X (𝟙 X) (α.1 - β.1)
  rw [map_sub]
  exact (sub_eq_zero.2 h).symm

theorem ev_pull_sch {X Y : Scheme.{0}} {I : GlobalTheory.EtC.Cx R} {n : ℤ} (f : Y ⟶ X) (α : Cocycle ((chains R).obj (sch.obj X)) I n) :
    ev (zcomp (Cocycle.ofHom ((chains R).map (sch.map f))) α (zero_add n)).1 0 n (by simp) Y (𝟙 Y) =
      Sec.res f (ev α.1 0 n (by simp) X (𝟙 X)) := by
  rw [GlobalTheory.EtC.CupSpec.ev_res]
  refine (GlobalTheory.EtC.CupSpec.ev_pull (sch.map f) α.1 0 n _ Y (show Sx (sch.obj Y) 0 Y from 𝟙 Y)).trans ?_
  congr 1

end WeightedPowerFormIntegrability


open WeightedPowerFormIntegrability in
theorem sum : SumInputFromFormal := by
  intro hF R _ F X r Y j hj n
  have hS := hF.et.sch
  constructor
  · intro x x' h
    rw [← sub_eq_zero]
    obtain ⟨α, hα⟩ := CohomologyClass.mk_surjective (x - x')
    have hz : ∀ s, pull R (sch.map (j s)) F n (x - x') = 0 := fun s => by
      rw [map_sub, sub_eq_zero]; exact congrFun h s
    rw [← hα] at hz ⊢
    have key : ∀ s, ∃ y : Sec ((res R F).X (n - 1)) (Y s),
        Sec.map ((res R F).d (n - 1) n) y = Sec.res (j s) (ev α.1 0 n (by simp) X (𝟙 X)) := by
      intro s
      obtain ⟨y, hy⟩ := ((hS R (Y s) (res R F) (n - 1) n (n + 1) (by omega) rfl).2
        (zcomp (Cocycle.ofHom ((chains R).map (sch.map (j s)))) α (zero_add n))).2.1 (hz s)
      exact ⟨y, hy.trans (ev_pull_sch (j s) α)⟩
    choose y hy using key
    obtain ⟨y0, hy0⟩ := (sec_sum ((res R F).X (n - 1)) j hj).2 y
    have hy0' : ∀ s, Sec.res (j s) y0 = y s := fun s => congrFun hy0 s
    refine ((hS R X (res R F) (n - 1) n (n + 1) (by omega) rfl).2 α).2.2 ⟨y0, ?_⟩
    apply (sec_sum ((res R F).X n) j hj).1
    funext s
    show Sec.res (j s) (Sec.map ((res R F).d (n - 1) n) y0) = Sec.res (j s) (ev α.1 0 n (by simp) X (𝟙 X))
    rw [GlobalTheory.EtC.CupSpec.map_res, hy0' s, hy s]
  · intro x
    choose α hα using fun s => CohomologyClass.mk_surjective (x s)
    obtain ⟨a0, ha0⟩ := (sec_sum ((res R F).X n) j hj).2 fun s => ev (α s).1 0 n (by simp) (Y s) (𝟙 (Y s))
    have ha0' : ∀ s, Sec.res (j s) a0 = ev (α s).1 0 n (by simp) (Y s) (𝟙 (Y s)) := fun s => congrFun ha0 s
    have hcl : Sec.map ((res R F).d n (n + 1)) a0 = 0 := by
      apply (sec_sum ((res R F).X (n + 1)) j hj).1
      funext s
      show Sec.res (j s) (Sec.map ((res R F).d n (n + 1)) a0) = Sec.res (j s) 0
      rw [GlobalTheory.EtC.CupSpec.map_res, ha0' s]
      exact (((hS R (Y s) (res R F) (n - 1) n (n + 1) (by omega) rfl).2 (α s)).1).trans (secRes_zero _).symm
    obtain ⟨β, hβ0, -⟩ := (hS R X (res R F) (n - 1) n (n + 1) (by omega) rfl).1 a0 hcl
    refine ⟨CohomologyClass.mk β, funext fun s => ?_⟩
    rw [← hα s]
    show CohomologyClass.mk (zcomp (Cocycle.ofHom ((chains R).map (sch.map (j s)))) β (zero_add n)) = _
    apply mk_eq_of_ev hS
    rw [ev_pull_sch, hβ0 X (𝟙 X), ← ha0' s]
    congr 1
    simp [Sec.res]

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BocksteinSheafHomotopy.SecMapZero =====

module

public import Development.EtaleCohomology.EtaleSheaves.A9OfA0A1EigenbasisA6
public import Development.EtaleCohomology.EtaleSheaves.DerivUnit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.EmptySec, Development.EtaleCohomology.EtaleSheaves.HensQuot, Development.EtaleCohomology.EtaleSheaves.LeafClosedSH0Of

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.EmptySec =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.EmptySec", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.A9OfA0A1EigenbasisA6\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.LeafClosedSH0PfEmpty
open LateralTheory.E.E4 LateralTheory.E.LeafClosedSH0Pf

theorem emptySec : LeafEmptySec := by
  intro R _ F X hX
  have hb : (⊥ : Sieve X) ∈ Scheme.etaleTopology X := by
    exact Scheme.bot_mem_grothendieckTopology X
  have hT := Sheaf.isTerminalOfBotCover F X hb
  have hZ : IsZero (F.obj.obj (op X)) := hT.isZero
  exact (ModuleCat.isZero_iff_subsingleton.mp hZ)

end LateralTheory.E.LeafClosedSH0PfEmpty
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.EmptySec =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.HensQuot =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.HensQuot", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.A9OfA0A1EigenbasisA6\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory AlgebraicGeometry GlobalTheory.EtC Polynomial IsLocalRing

namespace LateralTheory.E.LeafClosedSH0PfQuot
open LateralTheory.E.E4 LateralTheory.E.LeafClosedSH0Pf

theorem hensQuot {A C : Type} [CommRing A] [HenselianLocalRing A] [CommRing C] [IsLocalRing C] (g : A →+* C)
    (hg : Function.Surjective g) : HenselianLocalRing C := by
  have hloc : IsLocalHom g := IsLocalHom.of_surjective g hg
  refine { is_henselian := ?_ }
  intro p hp a0 h0 h1
  obtain ⟨P, hPmap, -, hPm⟩ := Polynomial.lifts_and_degree_eq_and_monic
    (Polynomial.lifts_iff_coeff_lifts p |>.mpr (fun n => hg _)) hp
  obtain ⟨b0, rfl⟩ := hg a0
  have e : ∀ (Q : A[X]) (x : A), g (Q.eval x) = (Q.map g).eval (g x) := fun Q x => by
    rw [Polynomial.eval_map, eval₂_at_apply]
  have hb0 : P.eval b0 ∈ maximalIdeal A := by
    rw [mem_maximalIdeal, mem_nonunits_iff]; intro hu
    have := hu.map g
    rw [e, hPmap] at this
    exact (mem_maximalIdeal _).mp h0 this
  have hb1 : IsUnit ((derivative P).eval b0) := by
    apply (isUnit_map_iff g _).mp
    rw [e, ← derivative_map, hPmap]; exact h1
  obtain ⟨b, hb, hbm⟩ := HenselianLocalRing.is_henselian P hPm b0 hb0 hb1
  refine ⟨g b, ?_, ?_⟩
  · change p.eval (g b) = 0
    rw [← hPmap, ← e, hb.eq_zero, map_zero]
  · rw [← map_sub, mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff]
    exact (mem_maximalIdeal _).mp hbm

theorem sepQuot {A C : Type} [CommRing A] [IsLocalRing A] [CommRing C] [IsLocalRing C] (g : A →+* C)
    (hg : Function.Surjective g) [IsLocalHom g] [IsSepClosed (ResidueField A)] : IsSepClosed (ResidueField C) := by
  have hbij : Function.Bijective (ResidueField.map g) := by
    refine ⟨(ResidueField.map g).injective, ?_⟩
    intro y
    obtain ⟨c, rfl⟩ := residue_surjective y
    obtain ⟨a, rfl⟩ := hg c
    exact ⟨residue A a, by simp⟩
  let e := RingEquiv.ofBijective _ hbij
  refine IsSepClosed.of_exists_root _ (fun p _ hirr hsep => ?_)
  obtain ⟨x, hx⟩ := IsSepClosed.exists_eval₂_eq_zero_of_injective (e.symm : ResidueField C →+* ResidueField A)
    e.symm.injective p (degree_pos_of_irreducible hirr).ne' hsep
  refine ⟨e x, ?_⟩
  have h2 := congrArg e hx
  rw [map_zero] at h2
  rw [show (e : ResidueField A → ResidueField C) = (e : ResidueField A →+* ResidueField C) from rfl,
    Polynomial.hom_eval₂, RingEquiv.comp_symm] at h2
  exact h2

theorem shQuot : LeafSHQuot := by
  intro A _ hA W' ι' _
  obtain ⟨hH, hS⟩ := hA
  obtain ⟨hAff, hsurj⟩ := IsClosedImmersion.isAffine_surjective_of_isAffine ι'
  let g : CommRingCat.of A ⟶ Γ(W', ⊤) := (Scheme.ΓSpecIso (CommRingCat.of A)).inv ≫ ι'.appTop
  have hg : Function.Surjective g :=
    hsurj.comp (Scheme.ΓSpecIso (CommRingCat.of A)).commRingCatIsoToRingEquiv.symm.surjective
  by_cases hC : Nontrivial Γ(W', ⊤)
  · right
    have hLC : IsLocalRing Γ(W', ⊤) := IsLocalRing.of_surjective' g.hom hg
    have hHC := hensQuot g.hom hg
    have : IsLocalHom g.hom := IsLocalHom.of_surjective g.hom hg
    exact ⟨hHC, sepQuot g.hom hg⟩
  · left
    rw [not_nontrivial_iff_subsingleton] at hC
    refine ⟨fun x => ?_⟩
    have h10 : (1 : Γ(W', ⊤)) = 0 := Subsingleton.elim _ _
    have := congrArg (W'.presheaf.germ ⊤ x trivial).hom h10
    rw [map_one, map_zero] at this
    exact one_ne_zero this

end LateralTheory.E.LeafClosedSH0PfQuot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.HensQuot =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafClosedSH0Of =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafClosedSH0Of", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.A9OfA0A1EigenbasisA6\npublic import Development.EtaleCohomology.EtaleSheaves.DerivUnit\npublic import Development.EtaleCohomology.EtaleSheaves.EmptySec\npublic import Development.EtaleCohomology.EtaleSheaves.HensQuot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.E.LeafClosedSH0PfCut
open LateralTheory.E.LeafClosedSH0Pf

theorem LeafClosedSH0_of (hS : LeafSHSieve) : LateralTheory.E.LeafVanBPf.LeafClosedSH0 :=
  LateralTheory.E.LeafClosedSH0Pf.LeafClosedSH0_of hS LateralTheory.E.LeafClosedSH0PfQuot.shQuot
    LateralTheory.E.LeafClosedSH0PfEmpty.emptySec LateralTheory.E.LeafClosedSH0PfPrim.primLift

end LateralTheory.E.LeafClosedSH0PfCut
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafClosedSH0Of =====

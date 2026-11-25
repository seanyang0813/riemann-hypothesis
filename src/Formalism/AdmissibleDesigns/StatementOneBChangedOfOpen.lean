module

public import Formalism.AdmissibleDesigns.KernelLengthHigherColumns
public import Formalism.AdmissibleDesigns.ExistsWildInertiaCyclotomicGenerator
public import Formalism.AdmissibleDesigns.SelmerInequalityOfInputs
public import Formalism.AdmissibleDesigns.CharacterTrivialWhereLattice
public import Formalism.AdmissibleDesigns.SelfGood
public import Formalism.AdmissibleDesigns.FiniteClassesLocalEq
public import Formalism.AdmissibleDesigns.FiniteClassesContinuousLattice
public import Formalism.AdmissibleDesigns.RankReductionIdempotentOne
public import Formalism.SharpRestriction.LevelLetterCocycles.LargeLevelLemmas
public import Formalism.AdmissibleDesigns.ColumnUnramifiedCharacter
public import Formalism.AdmissibleDesigns.IsDROfWpIso
public import Formalism.AdmissibleDesigns.MemIntegralSpanIffImage
public import Formalism.AdmissibleDesigns.CohomZeroEquivContinuous
public import Formalism.SharpRestriction.LevelLetterCocycles.GoodCongruenceDataOf
public import Formalism.SharpRestriction.LevelLetterCocycles.SecondPropositionEveryLocalisation
public import Formalism.AdmissibleDesigns.GlobalIndexTheoremPlacesOfRNAdm
public import Formalism.SharpRestriction.LevelLetterCocycles.DistinctEigenvalueCornerPerturbationOfBlocks
public import Formalism.WachLatticeTwists.RamifiedBlockRings.RamifiedBlockProofs.FinrankRangeEq
public import Formalism.AdmissibleDesigns.UnramifiedInputOfAdmitted
public import Formalism.AdmissibleDesigns.NormalizedRingData
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Topology.Sheaves.Init
import Formalism.WachLatticeTwists.RealDisplaySplitting.SurjectionRankOneIdempotent
import Formalism.WachLatticeTwists.SplitLocalLifts.Statement
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.AdmissibleDesigns.EKSymmCont
import Formalism.AdmissibleDesigns.TheoremN5OfNormalizedItems
import Formalism.AdmissibleDesigns.PiEquiv2
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.AdmissibleDesigns.SelmerInequalityOpen, Formalism.AdmissibleDesigns.TheoremFromNormalizedOpen, Formalism.AdmissibleDesigns.TheoremFromNormalizedOpenThree, Formalism.AdmissibleDesigns.ColLx, Formalism.AdmissibleDesigns.DesignOfAdmittedObjects, Formalism.AdmissibleDesigns.DesignNormalizedOfAdmitted, Formalism.AdmissibleDesigns.StatementOneBChangedOfOpen

-- ===== clump member: Formalism.AdmissibleDesigns.SelmerInequalityOpen =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.SelmerInequalityOpen", "h": "module\n\npublic import Formalism.AdmissibleDesigns.KernelLengthHigherColumns\npublic import Formalism.AdmissibleDesigns.ExistsWildInertiaCyclotomicGenerator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.WachLatticeTwists.RealDisplaySplitting.SurjectionRankOneIdempotent\nimport Formalism.WachLatticeTwists.SplitLocalLifts.Statement\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.St

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.TorsionBoundCyclotomic Formalism.RepresentationBoundsCohomology.JL Formalism.RepresentationBoundsCohomology.JT Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Places

variable {D : D7} (i : D.nd.Loc) (dc : TruncatedSeriesCountingIdentities.Decl D i)

theorem col_not_row (l : Col i dc) : colIdx i dc l ∉ rowsN i dc := by
  intro h
  simp only [rowsN, colIdx, Finset.mem_image] at h
  obtain ⟨v, hv, hvi⟩ := h
  have hl : (l : HeightOneSpectrum (𝓞 D.host.E)) ∈ dc.col := l.2
  have hvl : v = l := idx_inj i dc (Finset.mem_union_left _ (Finset.mem_union_left _ hv))
    (Finset.mem_union_left _ (Finset.mem_union_right _ hl)) hvi
  subst hvl
  exact Finset.disjoint_left.1 dc.disj hv hl

theorem row_not_q (w : ℕ) (hw : w ∈ rowsN i dc) : w ∉ qsN i dc := by
  intro hq
  simp only [rowsN, qsN, Finset.mem_image] at hw hq
  obtain ⟨v, hv, rfl⟩ := hw
  obtain ⟨u, hu, huv⟩ := hq
  have huv' : u = v := idx_inj i dc (Finset.mem_union_right _ hu)
    (Finset.mem_union_left _ (Finset.mem_union_left _ hv)) huv
  subst huv'
  exact D.nd.SQ_l i u (Or.inr hu) ((dc.cover u).1 (Or.inl hv))

end Places

section Open

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (e' : HeightOneSpectrum (𝓞 D.host.E) → ℕ) (cB : ℕ)


end Open

section Final

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i) (dc : TruncatedSeriesCountingIdentities.Decl D i)

end Final

end Formalism.MainNotions.N.K.St

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.SelmerInequalityOpen =====

-- ===== clump member: Formalism.AdmissibleDesigns.TheoremFromNormalizedOpen =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.TheoremFromNormalizedOpen", "h": "module\n\npublic import Formalism.AdmissibleDesigns.SelmerInequalityOfInputs\npublic import Formalism.AdmissibleDesigns.CharacterTrivialWhereLattice\npublic import Formalism.AdmissibleDesigns.SelmerInequalityOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.St

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.TorsionBoundCyclotomic Formalism.RepresentationBoundsCohomology.JL Formalism.RepresentationBoundsCohomology.JT Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology
open Formalism.RepresentationBoundsCohomology.FIN (InChiFixReal InChiLoc InRhoFixReal2 decs)
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Cover

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)




theorem cover_FS : ∀ v, (∃ a, Ine (F := D.host.E) (Av (D := D) v) ≤ QS.Io i a) ∨
      (∃ a, Ine (F := D.host.E) (Av (D := D) v) ≤ QS.IS i a) ∨
        ∃ w ∈ rowsN i dc ∪ qsN i dc ∪ univ.image (colIdx i dc), ∃ J : Subgroup ((decs D.host.E (Aw i dc)) w),
          FS i r π dc g0 eB e₁ s Dd hD hc QS.c1 w ≤ unrH1 (QS.resU i dc Dd QS.c1 w) J ∧
          Ine (F := D.host.E) (Av (D := D) v) ≤ J.map ((decs D.host.E (Aw i dc)) w).subtype := by
  intro v
  rcases QS.coverClause i dc Dd v with h | h | ⟨w, hw, J, hJ, hI⟩
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · refine Or.inr (Or.inr ⟨w, hw, J, ?_, hI⟩)
    rw [FS_pos i r π dc g0 eB e₁ s Dd hD hc QS.c1 (by intro h0; have := congrArg Fin.val h0; simp [QS.c1] at this) w]
    exact hJ

end Cover

section Open

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (e' : HeightOneSpectrum (𝓞 D.host.E) → ℕ) (cB : ℕ)


set_option maxHeartbeats 4000000 in
set_option synthInstance.maxHeartbeats 400000 in
def SelmerInequalityTwo : Prop :=
  ∃ (κ : ∀ l : Col i dc, Fin (jN i ρ π dc (colIdx i dc l)) → GE D.nd → Lr i Dd)
      (κz : ∀ l : Col i dc, Fin (jN i ρ π dc (colIdx i dc l)) →
      coZ1s (resRep (uRep (D.nd.O i) (M := Lr i Dd) Dd.r Dd.χ) (decs D.host.E (Aw i dc) (colIdx i dc l))))
      (u : Col i dc → GE D.nd → D.nd.O i)
      (uz : ∀ l : Col i dc,
      coZ1s (Representation.trivial (D.nd.O i) ↥(decs D.host.E (Aw i dc) (colIdx i dc l)) ↥(Ideal.span {Dd.δO}))),
      (∀ l (g : decs D.host.E (Aw i dc) (colIdx i dc l)),
      (((uz l : decs D.host.E (Aw i dc) (colIdx i dc l) → ↥(Ideal.span {Dd.δO})) g : ↥(Ideal.span {Dd.δO})) :
        D.nd.O i) = Dd.δO * u l g) ∧
      (KHf.UnrFin i dc Dd.δO uz) ∧
      (∀ l, LiftO (D.nd.l i) (KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.e₁) l)
      (KHf.Ff i dc Dd.r Dd.χ (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) l)
      (mapH1 _ _ (eveS i Dd hT hrk) (ev_equiv Dd.r Dd.χ (decs D.host.E (Aw i dc) (colIdx i dc l))
        (incl (D.nd.O i) Dd.e₁) (v1S i Dd hT hrk) (eveS i Dd hT hrk) (fun a => rfl))) (e'N i dc e' (colIdx i dc l))) ∧
      (∀ l, LiftO (D.nd.l i) (KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.E) l) (KHf.HfE₂ i dc Dd.δO l)
      (mapH1 _ _ (evES i Dd hT) (ev_equiv_triv Dd.r Dd.χ (decs D.host.E (Aw i dc) (colIdx i dc l)) (evES i Dd hT)
        (hevES i Dd hT))) (e'N i dc e' (colIdx i dc l))) ∧
      (∀ x' : Dd.X', Dd.p x' ∉ (D.nd.Z i : Set (D.nd.X i)) → ∀ l : Col i dc,
      ∃ Lx : Submodule (FractionRing (D.nd.O i))
          ((decs D.host.E (Aw i dc)) (colIdx i dc l) → EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x'),
        LinearMap.range (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
          ((decs D.host.E (Aw i dc)) (colIdx i dc l))) ≤ Lx ∧
        (∀ (f : LeftId (D.nd.O i) Dd.e₁ →ₗ[Dd.R'] EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')
          (z : coZ1s (resRep (uRep (D.nd.O i) (M := LeftId (D.nd.O i) Dd.e₁) Dd.r Dd.χ)
            ((decs D.host.E (Aw i dc)) (colIdx i dc l)))),
          Submodule.mkQ _ z ∈ KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.e₁) l →
          (fun g : (decs D.host.E (Aw i dc)) (colIdx i dc l) =>
            f ((z : (decs D.host.E (Aw i dc)) (colIdx i dc l) → LeftId (D.nd.O i) Dd.e₁) g)) ∈ Lx) ∧
        (∀ (f : LeftId (D.nd.O i) Dd.E →ₗ[Dd.R'] EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')
          (z : coZ1s (resRep (uRep (D.nd.O i) (M := LeftId (D.nd.O i) Dd.E) Dd.r Dd.χ)
            ((decs D.host.E (Aw i dc)) (colIdx i dc l)))),
          Submodule.mkQ _ z ∈ KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.E) l →
          (fun g : (decs D.host.E (Aw i dc)) (colIdx i dc l) =>
            f ((z : (decs D.host.E (Aw i dc)) (colIdx i dc l) → LeftId (D.nd.O i) Dd.E) g)) ∈ Lx) ∧
        Module.rank (FractionRing (D.nd.O i))
            (Lx ⧸ (LinearMap.range
              (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
                ((decs D.host.E (Aw i dc)) (colIdx i dc l)))).comap Lx.subtype) ≤
          (jN i ρ π dc (colIdx i dc l) + Module.finrank (FractionRing (D.nd.O i))
            (LinearMap.ker
              (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
                ((decs D.host.E (Aw i dc)) (colIdx i dc l)))) : ℕ)) ∧
      (InRhoFixReal2 (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ Dd.e₁ (colIdx i dc) (decs D.host.E (Aw i dc))
      (jN i ρ π dc) (rowsN i dc) (sN i ρ π) (tensM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (v1S i Dd hT hrk) κ
      (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (qVM (D.nd.O i) _ (Dd.ρk 0).toRingHom)
      (fun l => KHf.Ff i dc Dd.r Dd.χ (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) l) κz (FS i r π dc g0 eB e₁ s Dd hD hc 0)
      (QS.Io i) (epsU D.nd i) (rho1 i Dd) (rho2 i Dd) (FirstSummandSubmodule (D.nd.O i) Dd.e₁).subtype (piS i Dd hT hrk)
      (gamM (Dd.ρk 0)) (lamS i Dd hT hrk)) ∧
      (∀ w ∈ rowsN i dc, ∀ a, a ∈ HfWS i r π dc g0 eB e₁ s Dd hD hc w ↔
      ∀ b ∈ Hf₂S i r π dc g0 eB e₁ s Dd hD hc w, cupFG (DatS i r π dc g0 eB e₁ s Dd hD hc w) a b = 0) ∧
      (∀ c : Fin (D.R.t + 1), 1 ≤ (c : ℕ) → ∀ w ∈ rowsN i dc,
      (∀ ψ : Ymod Dd.r Dd.χ Dd.E →ₗ[D.nd.O i] blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c,
        (∀ g ∈ (decs D.host.E (Aw i dc)) w, ∀ y, ψ (uElt Dd.r Dd.χ g • y) = uElt Dd.r Dd.χ g • ψ y) →
        ∀ z : coZ1s (QS.resU i dc Dd c w),
          (∀ g : (decs D.host.E (Aw i dc)) w, (z : (decs D.host.E (Aw i dc)) w → blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c) g =
            ψ (yY Dd.r Dd.χ Dd.E (g : GE D.nd))) →
          (((D.nd.l i : ℕ) : D.nd.O i) ^ cB) • (Submodule.mkQ _ z : H1z (QS.resU i dc Dd c w)) ∈ FS i r π dc g0 eB e₁ s Dd hD hc c w) ∧
      Module.length (D.nd.O i) (↥(lcH1 (QS.resU i dc Dd c w) ⊓ divBy (FS i r π dc g0 eB e₁ s Dd hD hc c w) (((D.nd.l i : ℕ) : D.nd.O i) ^ cB)) ⧸
        (FS i r π dc g0 eB e₁ s Dd hD hc c w).comap (lcH1 (QS.resU i dc Dd c w) ⊓ divBy (FS i r π dc g0 eB e₁ s Dd hD hc c w) (((D.nd.l i : ℕ) : D.nd.O i) ^ cB)).subtype) ≤
        eON i * (cB : ℕ∞) * ((ReciprocityTheory.Gal.locDeg (plOf i dc w) : ℕ∞) + 1)) ∧
      (∀ c : Fin (D.R.t + 1), 2 ≤ (c : ℕ) →
      InChiFixReal (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c) Dd.r Dd.χ Dd.E (colIdx i dc) (decs D.host.E (Aw i dc)) (rowsN i dc)
        (qsN i dc) (ShaN i ((c : ℕ) - 1)) (FS i r π dc g0 eB e₁ s Dd hD hc c) (QS.Io i) (QS.IS i) (QS.I i dc) (QS.γQ i dc) (QS.ζ i dc Dd)
        (QS.ζO i dc) (QS.nQ i dc)) ∧
      ((∀ l, ∀ g ∈ QS.I i dc (colIdx i dc l), u l (g : GE D.nd) = 0) ∧
      (∀ l, ∃ g ∈ (decs D.host.E (Aw i dc)) (colIdx i dc l), u l g = 1)) ∧
      (InChiLoc (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk QS.c1) Dd.r Dd.χ Dd.E (decs D.host.E (Aw i dc)) (qsN i dc)
      (FS i r π dc g0 eB e₁ s Dd hD hc QS.c1) (QS.Io i) (QS.IS i) (QS.I i dc) (QS.γQ i dc) (QS.ζ i dc Dd) (QS.ζO i dc) (QS.nQ i dc)) ∧
      (TieRow i dc (rowLenS i r π dc g0 eB e₁ s Dd hD hc hT hrk) lenRow)

theorem selmer_inequality_two [IsNoetherian Dd.R' Dd.R']
    [∀ x', IsScalarTower Dd.T' Dd.R' (EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')]
    [∀ k, IsScalarTower Dd.T' Dd.R' (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
    [∀ k, IsScalarTower (D.nd.O i) Dd.R' (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π)
    (hP : Formalism.RepresentationBoundsCohomology.ringDataObjects.PrimHyp (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (RepresentationBoundsCohomology.blk D.R) (chiU D.nd i 1) (epsU D.nd i))
    (u0 : ℤ_[D.nd.l i]ˣ)
    (hcyc : ((cycZ (F := D.host.E) (Ω := D.nd.Om) (D.nd.l i) g0 : ℤ_[D.nd.l i]ˣ) : ℤ_[D.nd.l i]) =
      1 + (D.nd.l i : ℤ_[D.nd.l i]) ^ D.nd.s0 i * (u0 : ℤ_[D.nd.l i]))
    (hK : ∀ [TopologicalSpace (FractionRing (D.nd.O i))] [IsTopologicalAddGroup (FractionRing (D.nd.O i))]
          [ContinuousSMul (D.nd.O i) (FractionRing (D.nd.O i))] [TopologicalSpace Dd.R']
          [IsTopologicalAddGroup Dd.R'] [ContinuousConstSMul (D.nd.O i) Dd.R'] [ContinuousMul Dd.R'],
          RealDisplayAllK (D.nd.l i) (D.nd.O i) (D.nd.X i) Dd.X' (D.nd.Z i : Set (D.nd.X i)) Dd.p (Fin D.R.nV)
            Dd.R' Dd.T' D.host.E D.nd.Om Dd.r Dd.χ Dd.E Dd.e₁ D.R.t (RepresentationBoundsCohomology.one_le_letterBlockLength D.R) (RepresentationBoundsCohomology.blk D.R) Dd.ρk Dd.δO
            (epsU D.nd i) g0 (Module.length (D.nd.O i) (D.nd.O i ⧸ ccAt (D.nd.T i) (D.nd.Z i) π)))
    (hg6 : TruncatedSeriesCountingIdentities.admG6 i r) (hO : SelmerInequalityTwo i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow e' cB) :
    SelmerLengthInequality i ρ π dc lenRow e' cB := by
  obtain ⟨κ, κz, u, uz, hUz, hUnr, hL1, hL2, hLx, hRho, hBKa, hTB, hChi, hU1, hLoc1, hTie⟩ := hO
  exact selmer_inequality_of_inputs i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk hN hP u0 hcyc hK lenRow e' cB κ κz u uz hUz hUnr hL1 hL2 (QS.no_fixed_vector_off_z i r π Dd (QS.ev_of hD) hg6) hLx hRho hBKa hTB hChi hU1 hLoc1 (cover_FS i r π dc g0 eB e₁ s Dd hD hc) (col_not_row i dc) (row_not_q i dc) hTie

end Open

section Final

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i) (dc : TruncatedSeriesCountingIdentities.Decl D i)

end Final

end Formalism.MainNotions.N.K.St

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.TheoremFromNormalizedOpen =====

-- ===== clump member: Formalism.AdmissibleDesigns.TheoremFromNormalizedOpenThree =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.TheoremFromNormalizedOpenThree", "h": "module\n\npublic import Formalism.AdmissibleDesigns.SelfGood\npublic import Formalism.AdmissibleDesigns.SelmerInequalityOfInputs\npublic import Formalism.AdmissibleDesigns.FiniteClassesLocalEq\npublic import Formalism.AdmissibleDesigns.TheoremFromNormalizedOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.St

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Open

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (e' : HeightOneSpectrum (𝓞 D.host.E) → ℕ) (cB : ℕ)


set_option maxHeartbeats 4000000 in
set_option synthInstance.maxHeartbeats 400000 in
def SelmerInequalityThree : Prop :=
  ∃ (κ : ∀ l : Col i dc, Fin (jN i ρ π dc (colIdx i dc l)) → GE D.nd → Lr i Dd)
      (κz : ∀ l : Col i dc, Fin (jN i ρ π dc (colIdx i dc l)) →
      coZ1s (resRep (uRep (D.nd.O i) (M := Lr i Dd) Dd.r Dd.χ) (decs D.host.E (Aw i dc) (colIdx i dc l))))
      (u : Col i dc → GE D.nd → D.nd.O i)
      (uz : ∀ l : Col i dc,
      coZ1s (Representation.trivial (D.nd.O i) ↥(decs D.host.E (Aw i dc) (colIdx i dc l)) ↥(Ideal.span {Dd.δO}))),
      (∀ l (g : decs D.host.E (Aw i dc) (colIdx i dc l)),
      (((uz l : decs D.host.E (Aw i dc) (colIdx i dc l) → ↥(Ideal.span {Dd.δO})) g : ↥(Ideal.span {Dd.δO})) :
        D.nd.O i) = Dd.δO * u l g) ∧
      (KHf.UnrFin i dc Dd.δO uz) ∧
      (∀ x' : Dd.X', Dd.p x' ∉ (D.nd.Z i : Set (D.nd.X i)) → ∀ l : Col i dc,
      ∃ Lx : Submodule (FractionRing (D.nd.O i))
          ((decs D.host.E (Aw i dc)) (colIdx i dc l) → EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x'),
        LinearMap.range (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
          ((decs D.host.E (Aw i dc)) (colIdx i dc l))) ≤ Lx ∧
        (∀ (f : LeftId (D.nd.O i) Dd.e₁ →ₗ[Dd.R'] EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')
          (z : coZ1s (resRep (uRep (D.nd.O i) (M := LeftId (D.nd.O i) Dd.e₁) Dd.r Dd.χ)
            ((decs D.host.E (Aw i dc)) (colIdx i dc l)))),
          Submodule.mkQ _ z ∈ KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.e₁) l →
          (fun g : (decs D.host.E (Aw i dc)) (colIdx i dc l) =>
            f ((z : (decs D.host.E (Aw i dc)) (colIdx i dc l) → LeftId (D.nd.O i) Dd.e₁) g)) ∈ Lx) ∧
        (∀ (f : LeftId (D.nd.O i) Dd.E →ₗ[Dd.R'] EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')
          (z : coZ1s (resRep (uRep (D.nd.O i) (M := LeftId (D.nd.O i) Dd.E) Dd.r Dd.χ)
            ((decs D.host.E (Aw i dc)) (colIdx i dc l)))),
          Submodule.mkQ _ z ∈ KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.E) l →
          (fun g : (decs D.host.E (Aw i dc)) (colIdx i dc l) =>
            f ((z : (decs D.host.E (Aw i dc)) (colIdx i dc l) → LeftId (D.nd.O i) Dd.E) g)) ∈ Lx) ∧
        Module.rank (FractionRing (D.nd.O i))
            (Lx ⧸ (LinearMap.range
              (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
                ((decs D.host.E (Aw i dc)) (colIdx i dc l)))).comap Lx.subtype) ≤
          (jN i ρ π dc (colIdx i dc l) + Module.finrank (FractionRing (D.nd.O i))
            (LinearMap.ker
              (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
                ((decs D.host.E (Aw i dc)) (colIdx i dc l)))) : ℕ)) ∧
      (InRhoFixReal2 (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ Dd.e₁ (colIdx i dc) (decs D.host.E (Aw i dc))
      (jN i ρ π dc) (rowsN i dc) (sN i ρ π) (tensM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (v1S i Dd hT hrk) κ
      (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (qVM (D.nd.O i) _ (Dd.ρk 0).toRingHom)
      (fun l => KHf.Ff i dc Dd.r Dd.χ (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) l) κz (FS i r π dc g0 eB e₁ s Dd hD hc 0)
      (QS.Io i) (epsU D.nd i) (rho1 i Dd) (rho2 i Dd) (FirstSummandSubmodule (D.nd.O i) Dd.e₁).subtype (piS i Dd hT hrk)
      (gamM (Dd.ρk 0)) (lamS i Dd hT hrk)) ∧
      (∀ w ∈ rowsN i dc, ∀ a, a ∈ HfWS i r π dc g0 eB e₁ s Dd hD hc w ↔
      ∀ b ∈ Hf₂S i r π dc g0 eB e₁ s Dd hD hc w, cupFG (DatS i r π dc g0 eB e₁ s Dd hD hc w) a b = 0) ∧
      (∀ c : Fin (D.R.t + 1), 1 ≤ (c : ℕ) → ∀ w ∈ rowsN i dc,
      (∀ ψ : Ymod Dd.r Dd.χ Dd.E →ₗ[D.nd.O i] blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c,
        (∀ g ∈ (decs D.host.E (Aw i dc)) w, ∀ y, ψ (uElt Dd.r Dd.χ g • y) = uElt Dd.r Dd.χ g • ψ y) →
        ∀ z : coZ1s (QS.resU i dc Dd c w),
          (∀ g : (decs D.host.E (Aw i dc)) w, (z : (decs D.host.E (Aw i dc)) w → blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c) g =
            ψ (yY Dd.r Dd.χ Dd.E (g : GE D.nd))) →
          (((D.nd.l i : ℕ) : D.nd.O i) ^ cB) • (Submodule.mkQ _ z : H1z (QS.resU i dc Dd c w)) ∈ FS i r π dc g0 eB e₁ s Dd hD hc c w) ∧
      Module.length (D.nd.O i) (↥(lcH1 (QS.resU i dc Dd c w) ⊓ divBy (FS i r π dc g0 eB e₁ s Dd hD hc c w) (((D.nd.l i : ℕ) : D.nd.O i) ^ cB)) ⧸
        (FS i r π dc g0 eB e₁ s Dd hD hc c w).comap (lcH1 (QS.resU i dc Dd c w) ⊓ divBy (FS i r π dc g0 eB e₁ s Dd hD hc c w) (((D.nd.l i : ℕ) : D.nd.O i) ^ cB)).subtype) ≤
        eON i * (cB : ℕ∞) * ((ReciprocityTheory.Gal.locDeg (plOf i dc w) : ℕ∞) + 1)) ∧
      (∀ c : Fin (D.R.t + 1), 2 ≤ (c : ℕ) →
      InChiFixReal (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c) Dd.r Dd.χ Dd.E (colIdx i dc) (decs D.host.E (Aw i dc)) (rowsN i dc)
        (qsN i dc) (ShaN i ((c : ℕ) - 1)) (FS i r π dc g0 eB e₁ s Dd hD hc c) (QS.Io i) (QS.IS i) (QS.I i dc) (QS.γQ i dc) (QS.ζ i dc Dd)
        (QS.ζO i dc) (QS.nQ i dc)) ∧
      ((∀ l, ∀ g ∈ QS.I i dc (colIdx i dc l), u l (g : GE D.nd) = 0) ∧
      (∀ l, ∃ g ∈ (decs D.host.E (Aw i dc)) (colIdx i dc l), u l g = 1)) ∧
      (InChiLoc (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk QS.c1) Dd.r Dd.χ Dd.E (decs D.host.E (Aw i dc)) (qsN i dc)
      (FS i r π dc g0 eB e₁ s Dd hD hc QS.c1) (QS.Io i) (QS.IS i) (QS.I i dc) (QS.γQ i dc) (QS.ζ i dc Dd) (QS.ζO i dc) (QS.nQ i dc)) ∧
      (TieRow i dc (rowLenS i r π dc g0 eB e₁ s Dd hD hc hT hrk) lenRow)

private theorem plugOpen2_of_plugOpen3_selfGood (hLift : TruncatedSeriesCountingIdentities.LiftExponentAtPlaces i r dc e') (hG : K.SelfGood i)
    (hO : SelmerInequalityThree i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow cB) :
    SelmerInequalityTwo i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow e' cB := by
  obtain ⟨⟨-, -, hiLeq, -, -, hiL, -, -, hspL, -⟩, -, hevs, -, hEs, -⟩ :=
    Formalism.MainNotions.N.K.tensor_lattice_facts (Dd := Dd) (hT := hT) (hrk := hrk) (ε := epsU D.nd i)
  haveI := Formalism.MainNotions.N.K.Topo.finite_RD (hD := hD)
  haveI := Formalism.MainNotions.N.KLift.leftId_finite (i := i) (Dd := Dd) Dd.e₁
  haveI := Formalism.MainNotions.N.KLift.leftId_free (i := i) (Dd := Dd) Dd.e₁
  haveI := Formalism.MainNotions.N.KLift.leftId_finite (i := i) (Dd := Dd) Dd.E
  haveI := Formalism.MainNotions.N.KLift.leftId_free (i := i) (Dd := Dd) Dd.E
  haveI := Formalism.MainNotions.N.KLift.ideal_finite (i := i) Dd.δO
  haveI := Formalism.MainNotions.N.KLift.ideal_free (i := i) Dd.δO
  haveI := Formalism.MainNotions.N.KLift.latM_finite (D.nd.O i) _ (Dd.ρk 0).toRingHom
  haveI := Formalism.MainNotions.N.KLift.latM_free (D.nd.O i) _ (Dd.ρk 0).toRingHom
  have hL1 := Formalism.MainNotions.N.KLift.liftCol_eve_Dd (eR := e') (hA := hLift) (hG := hG) (hC := hc) (hD := hD)
    (κ := Formalism.MainNotions.N.KLift.kappaL i Dd Dd.e₁) (hκ := Formalism.MainNotions.N.KLift.kappaL_inj i Dd Dd.e₁)
    (hκa := Formalism.MainNotions.N.KLift.kappaL_mul i Dd Dd.e₁) (ince := incl (D.nd.O i) Dd.e₁) (v₁ := v1S i Dd hT hrk)
    (eve := eveS i Dd hT hrk) (heve := fun a => rfl) (hevs := hevs)
    (iL := iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (hiL := hiL) (hiLeq := hiLeq)
    (hspL := fun v => by
      obtain ⟨c, hc0, m, hm⟩ := hspL v
      exact ⟨c, hc0, m, hm⟩)
  have hL2 := Formalism.MainNotions.N.KLift.liftCol_evE_Dd (eR := e') (hA := hLift) (hG := hG) (hC := hc) (hD := hD)
    (δO := Dd.δO) (κ := Formalism.MainNotions.N.KLift.kappaL i Dd Dd.E) (hκ := Formalism.MainNotions.N.KLift.kappaL_inj i Dd Dd.E)
    (hκa := Formalism.MainNotions.N.KLift.kappaL_mul i Dd Dd.E) (evE := evES i Dd hT) (hevE := hevES i Dd hT)
    (hevs := hEs)
  obtain ⟨κ, κz, u, uz, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩ := hO
  exact ⟨κ, κz, u, uz, h1, h2, fun l => hL1 l, fun l => hL2 l, h3, h4, h5, h6, h7, h8, h9, h10⟩

theorem selmer_inequality_three [IsNoetherian Dd.R' Dd.R']
    [∀ x', IsScalarTower Dd.T' Dd.R' (EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')]
    [∀ k, IsScalarTower Dd.T' Dd.R' (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
    [∀ k, IsScalarTower (D.nd.O i) Dd.R' (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π)
    (hP : Formalism.RepresentationBoundsCohomology.ringDataObjects.PrimHyp (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (RepresentationBoundsCohomology.blk D.R) (chiU D.nd i 1) (epsU D.nd i))
    (u0 : ℤ_[D.nd.l i]ˣ)
    (hcyc : ((cycZ (F := D.host.E) (Ω := D.nd.Om) (D.nd.l i) g0 : ℤ_[D.nd.l i]ˣ) : ℤ_[D.nd.l i]) =
      1 + (D.nd.l i : ℤ_[D.nd.l i]) ^ D.nd.s0 i * (u0 : ℤ_[D.nd.l i]))
    (hK : ∀ [TopologicalSpace (FractionRing (D.nd.O i))] [IsTopologicalAddGroup (FractionRing (D.nd.O i))]
          [ContinuousSMul (D.nd.O i) (FractionRing (D.nd.O i))] [TopologicalSpace Dd.R']
          [IsTopologicalAddGroup Dd.R'] [ContinuousConstSMul (D.nd.O i) Dd.R'] [ContinuousMul Dd.R'],
          RealDisplayAllK (D.nd.l i) (D.nd.O i) (D.nd.X i) Dd.X' (D.nd.Z i : Set (D.nd.X i)) Dd.p (Fin D.R.nV)
            Dd.R' Dd.T' D.host.E D.nd.Om Dd.r Dd.χ Dd.E Dd.e₁ D.R.t (RepresentationBoundsCohomology.one_le_letterBlockLength D.R) (RepresentationBoundsCohomology.blk D.R) Dd.ρk Dd.δO
            (epsU D.nd i) g0 (Module.length (D.nd.O i) (D.nd.O i ⧸ ccAt (D.nd.T i) (D.nd.Z i) π)))
    (hg6 : TruncatedSeriesCountingIdentities.admG6 i r) (hLift : TruncatedSeriesCountingIdentities.LiftExponentAtPlaces i r dc e') (hG : K.SelfGood i)
    (hO : SelmerInequalityThree i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow cB) :
    SelmerLengthInequality i ρ π dc lenRow e' cB :=
  selmer_inequality_two i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow e' cB hN hP u0 hcyc hK hg6
    (plugOpen2_of_plugOpen3_selfGood (hLift := hLift) (hG := hG) (hO := hO))

end Open

section Final

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i) (dc : TruncatedSeriesCountingIdentities.Decl D i)

end Final

end Formalism.MainNotions.N.K.St

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.TheoremFromNormalizedOpenThree =====

-- ===== clump member: Formalism.AdmissibleDesigns.ColLx =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.ColLx", "h": "module\n\npublic import Formalism.AdmissibleDesigns.FiniteClassesContinuousLattice\npublic import Formalism.AdmissibleDesigns.KernelLengthHigherColumns\npublic import Formalism.AdmissibleDesigns.RankReductionIdempotentOne\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LargeLevelLemmas\npublic import Formalism.AdmissibleDesigns.ColumnUnramifiedCharacter\nimport Formalism.AdmissibleDesigns.EKSymmCont\npublic import Formalism.AdmissibleDesigns.IsDROfWpIso\npublic import Formalism.AdmissibleDesigns.MemIntegralSpanIffImage\nimport Formalism.AdmissibleDesigns.TheoremN5OfNormalizedItems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.AdmissibleDesigns.CohomZeroEquivContinuous\nimport Formalism.AdmissibleDesigns.PiEquiv2\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.StA

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.TorsionBoundCyclotomic Formalism.RepresentationBoundsCohomology.JL Formalism.RepresentationBoundsCohomology.JT Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF Formalism.MainNotions.N.K.St

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Cols2

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]




theorem colLx
    (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r) (hBK : TruncatedSeriesCountingIdentities.admBK i) (hG2 : TruncatedSeriesCountingIdentities.admG2 i r ρ π) (hFont : TruncatedSeriesCountingIdentities.FontaineAtPlacesOverL i)
    (hDec : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π) (hFin : LargeLevelLemmas.tateH1FinitenessAtPlacesOver i) :
    ∀ x' : Dd.X', Dd.p x' ∉ (D.nd.Z i : Set (D.nd.X i)) → ∀ l : Col i dc,
      ∃ Lx : Submodule (FractionRing (D.nd.O i))
          ((decs D.host.E (Aw i dc)) (colIdx i dc l) → EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x'),
        LinearMap.range (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
          ((decs D.host.E (Aw i dc)) (colIdx i dc l))) ≤ Lx ∧
        (∀ (f : LeftId (D.nd.O i) Dd.e₁ →ₗ[Dd.R'] EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')
          (z : coZ1s (resRep (uRep (D.nd.O i) (M := LeftId (D.nd.O i) Dd.e₁) Dd.r Dd.χ)
            ((decs D.host.E (Aw i dc)) (colIdx i dc l)))),
          Submodule.mkQ _ z ∈ KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.e₁) l →
          (fun g : (decs D.host.E (Aw i dc)) (colIdx i dc l) =>
            f ((z : (decs D.host.E (Aw i dc)) (colIdx i dc l) → LeftId (D.nd.O i) Dd.e₁) g)) ∈ Lx) ∧
        (∀ (f : LeftId (D.nd.O i) Dd.E →ₗ[Dd.R'] EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x')
          (z : coZ1s (resRep (uRep (D.nd.O i) (M := LeftId (D.nd.O i) Dd.E) Dd.r Dd.χ)
            ((decs D.host.E (Aw i dc)) (colIdx i dc l)))),
          Submodule.mkQ _ z ∈ KHf.Hfe₁ i dc Dd.r Dd.χ (Pe := LeftId (D.nd.O i) Dd.E) l →
          (fun g : (decs D.host.E (Aw i dc)) (colIdx i dc l) =>
            f ((z : (decs D.host.E (Aw i dc)) (colIdx i dc l) → LeftId (D.nd.O i) Dd.E) g)) ∈ Lx) ∧
        Module.rank (FractionRing (D.nd.O i))
            (Lx ⧸ (LinearMap.range
              (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
                ((decs D.host.E (Aw i dc)) (colIdx i dc l)))).comap Lx.subtype) ≤
          (jN i ρ π dc (colIdx i dc l) + Module.finrank (FractionRing (D.nd.O i))
            (LinearMap.ker
              (colD (K := FractionRing (D.nd.O i)) (V := EvalSp (D.nd.O i) (Fin D.R.nV) Dd.R' x') Dd.r Dd.χ
                ((decs D.host.E (Aw i dc)) (colIdx i dc l)))) : ℕ) := by
  have hρ := K.Norm.rhoCont_of i r ρ π hDec hc
  refine colLx_of_ringDef i r ρ π dc g0 eB e₁ s Dd hD hc hBK hG2 hFont hDec
    (fun x' l => K.Font.crysX_of (i := i) (dc := dc) (r := r) (π := π) (g0 := g0) (eB := eB) (e₁ := e₁) (s := s)
      (Dd := Dd) ρ hG2 hD x' l)
    (fun x' l => K.Font.negX_of (i := i) (dc := dc) (r := r) (ρ := ρ) (π := π) (g0 := g0) (eB := eB) (e₁ := e₁)
      (s := s) (Dd := Dd) hFont hG2 hDec hc hρ hD x' l)
    (fun x' l => KTate.finX (i := i) (dc := dc) (r := Dd.r) (χ := Dd.χ) hFin x' l
      (KDim.contX_of_orbC i dc Dd.r Dd.χ x' l (KOrb.orbC_repE i dc r π g0 eB e₁ s Dd hD hc x' (colIdx i dc l))))
    (fun l => K.Font.crysW_of (i := i) (dc := dc) (r := r) (ρ := ρ) (π := π) hFont hG2 hDec hc hρ l)

end Cols2

end Formalism.MainNotions.N.K.StA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.ColLx =====

-- ===== clump member: Formalism.AdmissibleDesigns.DesignOfAdmittedObjects =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.DesignOfAdmittedObjects", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.GoodCongruenceDataOf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SecondPropositionEveryLocalisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions

namespace Formalism.MainNotions.N.RepresentationBoundsCohomology.J8

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Module Matrix Formalism.RepresentationBoundsCohomology.ringDataObjects Formalism.TruncatedSeriesCounting.TruncatedSeriesCountingIdentities Formalism.MainNotions.N
  Formalism.MainNotions.N.RepresentationBoundsCohomology

section Gen

theorem rank_submatrix_le' {K : Type} [Field K] {m n : Type} [Fintype m] [Fintype n] [DecidableEq m]
    [DecidableEq n] (M : Matrix n n K) (f g : m → n) : (M.submatrix f g).rank ≤ M.rank := by
  exact Matrix.rank_submatrix_le M f g

theorem castAdd_ne_natAdd {r t : ℕ} (b : Fin r) (c : Fin t) : Fin.castAdd t b ≠ Fin.natAdd r c := by
  intro h
  have h1 := congrArg Fin.val h
  simp only [Fin.coe_castAdd, Fin.coe_natAdd] at h1
  omega

theorem lt_rank_of {K : Type} [Field K] {r t : ℕ} (M : Matrix (Fin (r + t)) (Fin (r + t)) K)
    (hc : ∀ c d : Fin t, M (Fin.natAdd r c) (Fin.natAdd r d) = if c = d then 1 else 0)
    (hcb : ∀ (c : Fin t) (b : Fin r), M (Fin.natAdd r c) (Fin.castAdd t b) = 0)
    (hac : ∀ (a : Fin r) (c : Fin t), M (Fin.castAdd t a) (Fin.natAdd r c) = 0)
    (a b : Fin r) (hab : M (Fin.castAdd t a) (Fin.castAdd t b) ≠ 0) : t + 1 ≤ M.rank := by
  classical
  let f : Fin (t + 1) → Fin (r + t) := Fin.cons (Fin.castAdd t a) (Fin.natAdd r)
  let g : Fin (t + 1) → Fin (r + t) := Fin.cons (Fin.castAdd t b) (Fin.natAdd r)
  let w : Fin (t + 1) → K := Fin.cons (M (Fin.castAdd t a) (Fin.castAdd t b)) (fun _ => 1)
  have h1 : M.submatrix f g = Matrix.diagonal w := by
    ext p q
    cases p using Fin.cases with
    | zero =>
      cases q using Fin.cases with
      | zero => simp [f, g, w]
      | succ q => simp [f, g, w, hac, (Fin.succ_ne_zero q).symm]
    | succ p =>
      cases q using Fin.cases with
      | zero => simp [f, g, w, hcb, Fin.succ_ne_zero p]
      | succ q =>
        by_cases hpq : p = q
        · subst hpq
          simp [f, g, w, hc]
        · simp [f, g, w, hc, hpq]
  have h2 := rank_submatrix_le' M f g
  rw [h1, Matrix.rank_diagonal] at h2
  have hw : ∀ p, w p ≠ 0 := by
    intro p
    cases p using Fin.cases with
    | zero => simpa [w] using hab
    | succ p => simp [w]
  have h3 : Fintype.card {p // w p ≠ 0} = t + 1 := by
    rw [Fintype.card_congr (Equiv.subtypeUnivEquiv hw), Fintype.card_fin]
  omega

theorem eq_diag_of {K : Type} [Field K] {r t : ℕ} (M : Matrix (Fin (r + t)) (Fin (r + t)) K)
    (B : Matrix (Fin r) (Fin r) K)
    (hM : ∀ u, eG r t K (M *ᵥ u) = (B *ᵥ (eG r t K u).1, (eG r t K u).2)) (hrk : M.rank = t) :
    M = Matrix.diagonal fun a => if blkG r t a = 0 then (0 : K) else 1 := by
  classical
  have hent : ∀ x y, (M *ᵥ Pi.single y (1 : K)) x = M x y := by
    intro x y
    simp [Matrix.mulVec, dotProduct, Pi.single_apply]
  have h2 : ∀ (d : Fin t) y, M (Fin.natAdd r d) y = if Fin.natAdd r d = y then 1 else 0 := by
    intro d y
    have h := congrFun (congrArg Prod.snd (hM (Pi.single y 1))) d
    simp only [eG_apply] at h
    rw [← hent, h, Pi.single_apply]
  have h1 : ∀ a y, M (Fin.castAdd t a) y = (B *ᵥ fun b => (Pi.single y (1 : K) : Fin (r + t) → K) (Fin.castAdd t b)) a := by
    intro a y
    have h := congrFun (congrArg Prod.fst (hM (Pi.single y 1))) a
    simp only [eG_apply] at h
    rw [← hent, h]
  have hac : ∀ (a : Fin r) (c : Fin t), M (Fin.castAdd t a) (Fin.natAdd r c) = 0 := by
    intro a c
    rw [h1]
    simp [Matrix.mulVec, dotProduct, castAdd_ne_natAdd]
  have hc : ∀ c d : Fin t, M (Fin.natAdd r c) (Fin.natAdd r d) = if c = d then 1 else 0 := by
    intro c d
    rw [h2]
    by_cases hcd : c = d
    · subst hcd
      simp
    · rw [if_neg hcd, if_neg]
      intro h
      apply hcd
      have h3 := congrArg Fin.val h
      simp at h3
      exact Fin.ext h3
  have hcb : ∀ (c : Fin t) (b : Fin r), M (Fin.natAdd r c) (Fin.castAdd t b) = 0 := by
    intro c b
    rw [h2, if_neg (fun h => castAdd_ne_natAdd b c h.symm)]
  have hB0 : ∀ a b, M (Fin.castAdd t a) (Fin.castAdd t b) = 0 := by
    intro a b
    by_contra hab
    have := lt_rank_of M hc hcb hac a b hab
    omega
  ext x y
  cases x using Fin.addCases with
  | left a =>
    cases y using Fin.addCases with
    | left b => simp [hB0, Matrix.diagonal_apply, blkG_castAdd]
    | right c => simp [hac, Matrix.diagonal_apply, blkG_castAdd]
  | right c =>
    rw [h2]
    simp [Matrix.diagonal_apply, blkG_natAdd, Fin.succ_ne_zero]

theorem transfer {K V W : Type} [Field K] [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W]
    (L L' : V ≃ₗ[K] W) (φ : V → V) (F Hm : W → W)
    (h1 : ∀ u, L (φ u) = Hm (L u)) (h2 : ∀ u, L' (φ u) = Hm (L' u)) (h3 : ∀ u, L (φ u) = F (L u)) :
    ∀ u, L' (φ u) = F (L' u) := by
  have hF : ∀ w, Hm w = F w := by
    intro w
    obtain ⟨u, rfl⟩ := L.surjective w
    rw [← h1, h3]
  intro u
  rw [h2, hF]

end Gen

variable {R : Ranks} {H : Host R} {what₂ : Rows.Data R} (N : NData R H what₂) {i : N.Loc}
  (r : N.X i → (GE N →* GL (Fin R.nV) (N.O i)))
  (ρ : N.X i → (GE N →* GL (Fin R.r) (N.O i))) (π : N.X i)

def Dg (γ : GE N) (z : (Fin R.r → KK N i) × (Fin R.t → KK N i)) : (Fin R.r → KK N i) × (Fin R.t → KK N i) :=
  ((mapM (toK N i) (rhoO N i ρ π) γ).mulVec z.1,
    fun c : Fin R.t => toK N i ((chiU N i ((c : ℕ) + 1) γ : (N.O i)ˣ) : N.O i) * z.2 c)

theorem act_inR {a : N.X i → MatN N i} (ha : InR N i r a) :
    ∃ Hm : (Fin R.r → KK N i) × (Fin R.t → KK N i) → (Fin R.r → KK N i) × (Fin R.t → KK N i),
      ∀ L : (Fin R.nV → KK N i) ≃ₗ[KK N i] ((Fin R.r → KK N i) × (Fin R.t → KK N i)),
      (∀ γ u, L ((mapM (toK N i) (rO N i r π) γ).mulVec u) = Dg N ρ π γ (L u)) →
      ∀ u, L (((a π).map (toK N i)).mulVec u) = Hm (L u) := by
  obtain ⟨m, f, g, -, rfl⟩ := ha
  refine ⟨fun z => ∑ k, toK N i (f k π) • Dg N ρ π (g k) z, fun L hL u => ?_⟩
  have h : (((∑ k, fun x => f k x • rO N i r x (g k)) π).map (toK N i)).mulVec u =
      ∑ k, toK N i (f k π) • (mapM (toK N i) (rO N i r π) (g k)).mulVec u := by
    rw [Finset.sum_apply]
    change ((toK N i).mapMatrix (∑ k, f k π • rO N i r π (g k))).mulVec u = _

    rw [map_sum, Matrix.sum_mulVec]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [← Matrix.smul_mulVec]
    congr 1
    ext a b
    simp [mapM, Matrix.smul_apply]

  rw [h, map_sum]
  refine Finset.sum_congr rfl (fun k _ => ?_)
  rw [map_smul, hL]

theorem tSpan_of_inR {a : N.X i → MatN N i} (ha : InR N i r a) : a ∈ tSpan (N.T i) (repX N r) := by
  have h := Inst.inSpan_tSpan N i (N.T i) (rO N i r) (N.O i) ha
  have e1 : (fun x => (a x).map (algebraMap (N.O i) (N.O i))) = a := by
    funext x
    exact Inst.map_self _
  have e2 : Inst.repF N i (rO N i r) (N.O i) = repX N r := by
    ext γ x : 2
    rw [Inst.repF_apply, Inst.map_self]
    rfl
  rw [e1, e2] at h
  exact h

theorem rr_inj {S : IdempotentChoiceData N i} (hG : GoodCongruenceObjects N r ρ π S) (x' : S.X') :
    Function.Injective (fun c : Fin R.t => S.rr (1 + (c : ℕ)) x') := by
  classical
  obtain ⟨b, hbT, -, hind⟩ := Inst.descent_hyps N hG
  have hG' := hG
  obtain ⟨-, -, -, -, -, -, -, ⟨-, -, -, -, hcard⟩, hroots, -⟩ := hG'
  have hcF : Fintype.card {y // S.p y = S.p x'} = R.t.factorial := by
    rw [← Nat.card_eq_fintype_card]
    exact hcard (S.p x')
  let Φ : {y // S.p y = S.p x'} → (Fin R.t → N.O i) := fun y c => S.rr (1 + (c : ℕ)) y.1
  have hinj : Function.Injective Φ := by
    intro y z hyz
    apply Inst.sep_of_indep hcF (fun k (y : {y // S.p y = S.p x'}) => b k y.1)
      (fun a ha => hind (S.p x') a (fun y hy => ha ⟨y, hy⟩)) y z
    intro k
    refine Inst.T'_eq_of_rr N hG (y.2.trans z.2.symm) (fun c hc => ?_) (b k) (hbT k)
    have hc' := Finset.mem_Icc.mp hc
    have h1 := congrFun hyz ⟨c - 1, by omega⟩
    simpa [Φ, show 1 + (c - 1) = c by omega] using h1
  have hP : ∀ y : {y // S.p y = S.p x'}, ∏ c, (Polynomial.X - Polynomial.C (Φ y c)) =
      ∏ c ∈ Finset.Icc 1 R.t, (Polynomial.X - Polynomial.C (S.rr c x')) := by
    intro y
    have h1 : ∏ c ∈ Finset.Icc 1 R.t, (Polynomial.X - Polynomial.C (S.rr c y.1)) =
        ∏ c ∈ Finset.Icc 1 R.t, (Polynomial.X - Polynomial.C (S.rr c x')) := by
      rw [hroots y.1, hroots x', y.2]
    rw [← h1]
    have h2 : Finset.Icc 1 R.t = Finset.Ico 1 (R.t + 1) := by
      ext c
      simp [Finset.mem_Icc, Finset.mem_Ico]
    rw [h2, Finset.prod_Ico_eq_prod_range, Nat.add_sub_cancel,
      ← Fin.prod_univ_eq_prod_range
        (fun c => (Polynomial.X : Polynomial (N.O i)) - Polynomial.C (S.rr (1 + c) y.1))]
  exact Inst.inj_of_card Φ hinj _ hP hcF.ge ⟨x', rfl⟩

theorem prod_Icc_fin (t : ℕ) (F : ℕ → Polynomial (N.O i)) :
    ∏ c ∈ Finset.Icc 1 t, F c = ∏ c : Fin t, F (1 + (c : ℕ)) := by
  rw [Fin.prod_univ_eq_prod_range (fun c => F (1 + c)) t, Finset.range_eq_Ico]
  simp_rw [add_comm 1]
  rw [Finset.prod_Ico_add' F 0 t 1, zero_add]
  rfl

section Comp

open Formalism.NG

end Comp

end Formalism.MainNotions.N.RepresentationBoundsCohomology.J8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.DesignOfAdmittedObjects =====

-- ===== clump member: Formalism.AdmissibleDesigns.DesignNormalizedOfAdmitted =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.DesignNormalizedOfAdmitted", "h": "module\n\npublic import Formalism.AdmissibleDesigns.GlobalIndexTheoremPlacesOfRNAdm\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DistinctEigenvalueCornerPerturbationOfBlocks\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LargeLevelLemmas\npublic import Formalism.AdmissibleDesigns.DesignOfAdmittedObjects\nimport Formalism.SharpRestriction.LevelLetterCocycles.SecondPropositionEveryLocalisation\npublic import Formalism.WachLatticeTwists.RamifiedBlockRings.RamifiedBlockProofs.FinrankRangeEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.Norm

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Module Matrix Formalism.RepresentationBoundsCohomology.ringDataObjects Formalism.TruncatedSeriesCounting.TruncatedSeriesCountingIdentities Formalism.MainNotions.N
  Formalism.MainNotions.N.RepresentationBoundsCohomology Formalism.MainNotions.N.RepresentationBoundsCohomology.J8

section Gen2

variable {K : Type} [CommRing K] {n : Type} [Fintype n] [DecidableEq n]

theorem blockPoly_conj (P Q e a : Matrix n n K) (h1 : P * Q = 1) :
    blockPoly (P * e * Q) (P * a * Q) = blockPoly e a := by
  rw [blockPoly_eq, blockPoly_eq]
  have hm : ∀ M N : Matrix n n K, (M * N).map (Polynomial.C (R := K)) =
      M.map (Polynomial.C (R := K)) * N.map (Polynomial.C (R := K)) :=
    fun M N => Matrix.map_mul
  have h1' : P.map (Polynomial.C (R := K)) * Q.map (Polynomial.C (R := K)) = 1 := by
    rw [← hm, h1, Matrix.map_one _ (map_zero _) (map_one _)]
  set P' := P.map (Polynomial.C (R := K))
  set Q' := Q.map (Polynomial.C (R := K))
  have e1 : (Polynomial.X : Polynomial K) • (P' * e.map Polynomial.C * Q') - P' * a.map Polynomial.C * Q' + 1 -
      P' * e.map Polynomial.C * Q' =
      P' * ((Polynomial.X : Polynomial K) • e.map Polynomial.C - a.map Polynomial.C + 1 - e.map Polynomial.C) * Q' := by
    rw [Matrix.mul_sub, Matrix.mul_add, Matrix.mul_sub, Matrix.sub_mul, Matrix.add_mul, Matrix.sub_mul,
      Matrix.mul_one, h1', Matrix.mul_smul, Matrix.smul_mul]
  rw [hm, hm, hm, hm, e1, Matrix.det_mul, Matrix.det_mul, mul_comm (Matrix.det P'), mul_assoc,
    ← Matrix.det_mul, h1', Matrix.det_one, mul_one]

theorem rank_conj {F : Type} [Field F] (P Q M : Matrix n n F) (h1 : P * Q = 1) (_h2 : Q * P = 1) :
    (P * M * Q).rank = M.rank := by
  rw [Matrix.rank_mul_eq_left_of_isUnit_det _ _ (Matrix.isUnit_det_of_left_inverse h1),
    Matrix.rank_mul_eq_right_of_isUnit_det _ _ (Matrix.isUnit_det_of_right_inverse h1)]

end Gen2

section D51

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)

open Classical

def cInt (P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)) (A : MatN D.nd i) : MatN D.nd i :=
  if h : ∃ M : MatN D.nd i, M.map (toK D.nd i) = P * A.map (toK D.nd i) * Q then h.choose else 0

theorem cInt_spec {P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)} {A : MatN D.nd i}
    (h : ∃ M : MatN D.nd i, M.map (toK D.nd i) = P * A.map (toK D.nd i) * Q) :
    (cInt i P Q A).map (toK D.nd i) = P * A.map (toK D.nd i) * Q := by
  unfold cInt
  rw [dite_eq_left h]
  exact h.choose_spec

def phiC (P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)) (a : D.nd.X i → MatN D.nd i) :
    D.nd.X i → MatN D.nd i :=
  Function.update a π (cInt i P Q (a π))

theorem phiC_ne (P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)) (a : D.nd.X i → MatN D.nd i)
    {x : D.nd.X i} (hx : x ≠ π) : phiC i π P Q a x = a x :=
  Function.update_of_ne hx _ _

theorem phiC_self (P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)) (a : D.nd.X i → MatN D.nd i) :
    phiC i π P Q a π = cInt i P Q (a π) :=
  Function.update_self _ _ _

theorem map_smul_toK (c : D.nd.O i) (A : MatN D.nd i) :
    (c • A).map (toK D.nd i) = toK D.nd i c • A.map (toK D.nd i) := by
  ext a b
  simp [Matrix.smul_apply]

theorem inR_phiC {P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)}
    (hconj : ∀ g, (rO D.nd i (rN i r ρ π) π g).map (toK D.nd i) = P * (rO D.nd i r π g).map (toK D.nd i) * Q)
    {a : D.nd.X i → MatN D.nd i} (ha : InR D.nd i r a) :
    InR D.nd i (rN i r ρ π) (phiC i π P Q a) ∧
      (phiC i π P Q a π).map (toK D.nd i) = P * (a π).map (toK D.nd i) * Q := by
  obtain ⟨m, f, g, hf, rfl⟩ := ha
  have hπ : ((∑ k, fun x => f k x • rO D.nd i (rN i r ρ π) x (g k)) π).map (toK D.nd i) =
      P * ((∑ k, fun x => f k x • rO D.nd i r x (g k)) π).map (toK D.nd i) * Q := by
    simp only [Finset.sum_apply]
    change (toK D.nd i).mapMatrix (∑ k, f k π • rO D.nd i (rN i r ρ π) π (g k)) =
      P * (toK D.nd i).mapMatrix (∑ k, f k π • rO D.nd i r π (g k)) * Q

    rw [map_sum, map_sum, Finset.mul_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [RingHom.mapMatrix_apply, RingHom.mapMatrix_apply, map_smul_toK, map_smul_toK, hconj, Matrix.mul_smul,
      Matrix.smul_mul]
  have heq : phiC i π P Q (∑ k, fun x => f k x • rO D.nd i r x (g k)) =
      ∑ k, fun x => f k x • rO D.nd i (rN i r ρ π) x (g k) := by
    funext x
    by_cases hx : x = π
    · subst hx
      rw [phiC_self]
      apply Matrix.map_injective (toK_inj i)
      show (cInt i P Q _).map (toK D.nd i) = _
      rw [cInt_spec i ⟨_, hπ⟩]
      exact hπ.symm
    · rw [phiC_ne i π P Q _ hx]
      simp only [Finset.sum_apply, rO_rN_ne i r ρ π hx]
  refine ⟨⟨m, f, g, hf, heq⟩, ?_⟩
  rw [heq]
  exact hπ

theorem phiC_rel {P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)} (hQP : Q * P = 1)
    {a b c : D.nd.X i → MatN D.nd i} (hab : a * b = c)
    (ha : (phiC i π P Q a π).map (toK D.nd i) = P * (a π).map (toK D.nd i) * Q)
    (hb : (phiC i π P Q b π).map (toK D.nd i) = P * (b π).map (toK D.nd i) * Q)
    (hc : (phiC i π P Q c π).map (toK D.nd i) = P * (c π).map (toK D.nd i) * Q) :
    phiC i π P Q a * phiC i π P Q b = phiC i π P Q c := by
  funext x
  by_cases hx : x = π
  · subst hx
    apply Matrix.map_injective (toK_inj i)
    show (phiC i x P Q a x * phiC i x P Q b x).map (toK D.nd i) = (phiC i x P Q c x).map (toK D.nd i)
    rw [Matrix.map_mul, ha, hb, hc, ← congrFun hab x, Pi.mul_apply, Matrix.map_mul]
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc Q P, hQP, Matrix.one_mul]
  · rw [Pi.mul_apply, phiC_ne i π P Q _ hx, phiC_ne i π P Q _ hx, phiC_ne i π P Q _ hx, ← Pi.mul_apply, hab]

theorem phiC_zero {P Q : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)} :
    (phiC i π P Q 0 π).map (toK D.nd i) = P * ((0 : D.nd.X i → MatN D.nd i) π).map (toK D.nd i) * Q ∧
      phiC i π P Q 0 = 0 := by
  have h0 : ∃ M : MatN D.nd i, M.map (toK D.nd i) = P * ((0 : D.nd.X i → MatN D.nd i) π).map (toK D.nd i) * Q :=
    ⟨0, by simp⟩
  have h1 : (phiC i π P Q 0 π).map (toK D.nd i) = P * ((0 : D.nd.X i → MatN D.nd i) π).map (toK D.nd i) * Q := by
    rw [phiC_self]
    exact cInt_spec i h0
  refine ⟨h1, ?_⟩
  funext x
  by_cases hx : x = π
  · subst hx
    apply Matrix.map_injective (toK_inj i)
    show (phiC i x P Q 0 x).map (toK D.nd i) = (0 : MatN D.nd i).map (toK D.nd i)
    rw [h1]
    simp
  · rw [phiC_ne i π P Q _ hx]

end D51

section D51b

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)

open Classical

theorem design_normalized (S : IdempotentChoiceData D.nd i) (hG : GoodCongruenceObjects D.nd r ρ π S) : InertiaElementIdempotentChoice D.nd (rN i r ρ π) π := by
  obtain ⟨hbd, hχ, hρ⟩ := normAt_rN i r ρ π
  have hG0 := hG
  obtain ⟨⟨heB, he1, heBB, he11, heB1, he1B, hrkB, hrk1⟩, hdec, hact, -, hg0, hε, ⟨hX0m, heX, hXe, hX0π⟩,
    ⟨hT, -, -, -, hcard⟩, hroots, ⟨hπ, -⟩, -⟩ := hG0
  obtain ⟨P, Q, hPQ, hQP, hc⟩ := conjK_self i r ρ π ⟨S.e, hdec⟩
  have hA' : ∀ g, (rO D.nd i (rN i r ρ π) π g).map (toK D.nd i) = P * (rO D.nd i r π g).map (toK D.nd i) * Q :=
    fun g => by
      have h := hc g
      beta_reduce at h
      rw [h, Matrix.mul_assoc, hPQ, Matrix.mul_one]
  obtain ⟨heB', hmB⟩ := inR_phiC i r ρ π hA' heB
  obtain ⟨he1', hm1⟩ := inR_phiC i r ρ π hA' he1
  obtain ⟨hX0m', hmX⟩ := inR_phiC i r ρ π hA' hX0m
  have z := phiC_zero i π (P := P) (Q := Q)
  have heBB' := phiC_rel i π hQP heBB hmB hmB hmB
  have he11' := phiC_rel i π hQP he11 hm1 hm1 hm1
  have heB1' : phiC i π P Q S.eB * phiC i π P Q S.e1 = 0 := by
    rw [← z.2]
    exact phiC_rel i π hQP heB1 hmB hm1 z.1
  have he1B' : phiC i π P Q S.e1 * phiC i π P Q S.eB = 0 := by
    rw [← z.2]
    exact phiC_rel i π hQP he1B hm1 hmB z.1
  have heX' := phiC_rel i π hQP heX hmB hmX hmX
  have hXe' := phiC_rel i π hQP hXe hmX hmB hmX
  have hrk : ∀ (a : D.nd.X i → MatN D.nd i),
      (phiC i π P Q a π).map (toK D.nd i) = P * (a π).map (toK D.nd i) * Q →
      ∀ x, ((phiC i π P Q a x).map (toK D.nd i)).rank = ((a x).map (toK D.nd i)).rank := by
    intro a ha x
    by_cases hx : x = π
    · subst hx
      rw [ha, rank_conj P Q _ hPQ hQP]
    · rw [phiC_ne i π P Q a hx]
  have hrkB' : ∀ x, ((phiC i π P Q S.eB x).map (toK D.nd i)).rank = D.R.t := fun x => (hrk _ hmB x).trans (hrkB x)
  have hrk1' : ∀ x, ((phiC i π P Q S.e1 x).map (toK D.nd i)).rank = 1 := fun x => (hrk _ hm1 x).trans (hrk1 x)
  let e' : (Fin D.R.nV → KK D.nd i) ≃ₗ[KK D.nd i] ((Fin D.R.r → KK D.nd i) × (Fin D.R.t → KK D.nd i)) :=
    (matEquiv Q P hQP hPQ).trans S.e
  have he' : ∀ u, e' u = S.e (Q.mulVec u) := fun u => rfl
  have hΦ : ∀ γ u, e' ((mapM (toK D.nd i) (rO D.nd i (rN i r ρ π) π) γ).mulVec u) = Dg D.nd ρ π γ (e' u) := by
    intro γ u
    rw [he', he']
    show S.e (Q.mulVec (((rO D.nd i (rN i r ρ π) π γ).map (toK D.nd i)).mulVec u)) = _
    rw [hA', Matrix.mulVec_mulVec, ← Matrix.mul_assoc, ← Matrix.mul_assoc, hQP, Matrix.one_mul,
      ← Matrix.mulVec_mulVec]
    exact hdec γ (Q.mulVec u)
  have hΨ : ∀ γ u, eG D.R.r D.R.t (KK D.nd i) ((mapM (toK D.nd i) (rO D.nd i (rN i r ρ π) π) γ).mulVec u) =
      Dg D.nd ρ π γ (eG D.R.r D.R.t (KK D.nd i) u) :=
    fun γ u => e_of_bd D.nd (rO D.nd i (rN i r ρ π) π γ) (hbd γ) (rhoO D.nd i ρ π γ) (hρ γ) _ (hχ γ) u
  have haB : InR' D.nd r S (fun x' => S.eB (S.p x')) := Inst.inR'_of_inR D.nd (r := r) hT heB
  have h3 : ∀ u, S.e (((S.eB π).map (toK D.nd i)).mulVec u) =
      (((S.ψρ (fun x' => S.eB (S.p x'))).map (toK D.nd i)).mulVec (S.e u).1,
        fun c => toK D.nd i (S.ψχ c (fun x' => S.eB (S.p x'))) * (S.e u).2 c) := by
    intro u
    have h := hact _ haB u
    beta_reduce at h
    rw [hπ] at h
    exact h
  have hconjv : ∀ (a : D.nd.X i → MatN D.nd i),
      (phiC i π P Q a π).map (toK D.nd i) = P * (a π).map (toK D.nd i) * Q →
      ∀ u, e' (((phiC i π P Q a π).map (toK D.nd i)).mulVec u) = S.e (((a π).map (toK D.nd i)).mulVec (Q.mulVec u)) := by
    intro a ha u
    rw [he', ha, Matrix.mulVec_mulVec, ← Matrix.mul_assoc, ← Matrix.mul_assoc, hQP, Matrix.one_mul,
      ← Matrix.mulVec_mulVec]
  have h3' : ∀ u, e' (((phiC i π P Q S.eB π).map (toK D.nd i)).mulVec u) =
      (((S.ψρ (fun x' => S.eB (S.p x'))).map (toK D.nd i)).mulVec (e' u).1,
        fun c => toK D.nd i (S.ψχ c (fun x' => S.eB (S.p x'))) * (e' u).2 c) := by
    intro u
    rw [hconjv _ hmB u, h3, he']
  have hE : ∀ u, eG D.R.r D.R.t (KK D.nd i) (((phiC i π P Q S.eB π).map (toK D.nd i)).mulVec u) =
      (((S.ψρ (fun x' => S.eB (S.p x'))).map (toK D.nd i)).mulVec (eG D.R.r D.R.t (KK D.nd i) u).1,
        (eG D.R.r D.R.t (KK D.nd i) u).2) := by
    obtain ⟨Hm, hH⟩ := act_inR D.nd (rN i r ρ π) ρ π heB'
    have h := transfer e' (eG D.R.r D.R.t (KK D.nd i)) (fun u => ((phiC i π P Q S.eB π).map (toK D.nd i)).mulVec u)
      (fun z => (((S.ψρ (fun x' => S.eB (S.p x'))).map (toK D.nd i)).mulVec z.1,
        fun c => toK D.nd i (S.ψχ c (fun x' => S.eB (S.p x'))) * z.2 c)) Hm
      (hH e' hΦ) (hH _ hΨ) h3'
    intro u
    refine (h u).trans (Prod.ext rfl (funext fun c => ?_))
    show toK D.nd i (S.ψχ c (fun x' => S.eB (S.p x'))) * _ = _
    rw [Inst.psiChi_eB D.nd hG c, map_one, one_mul]
    rfl
  have heBπ : phiC i π P Q S.eB π = Matrix.diagonal fun a => if blk D.R a = 0 then (0 : D.nd.O i) else 1 := by
    have hD := eq_diag_of (r := D.R.r) (t := D.R.t) ((phiC i π P Q S.eB π).map (toK D.nd i)) _ hE (hrkB' π)
    apply Matrix.map_injective (IsFractionRing.injective (D.nd.O i) (KK D.nd i))
    show (phiC i π P Q S.eB π).map (toK D.nd i) =
      (Matrix.diagonal fun a => if blk D.R a = 0 then (0 : D.nd.O i) else 1).map (toK D.nd i)
    rw [hD, Matrix.diagonal_map (map_zero _)]
    congr 1
    funext a
    by_cases h0 : blkG D.R.r D.R.t a = 0 <;> simp [h0]
  have hX0π' : ∀ u, e' (((phiC i π P Q S.X0 π).map (toK D.nd i)).mulVec u) =
      ((0 : Fin D.R.r → KK D.nd i), fun c : Fin D.R.t =>
        toK D.nd i ((chiU D.nd i ((c : ℕ) + 1) S.g0 : (D.nd.O i)ˣ) : D.nd.O i) * (e' u).2 c) := by
    intro u
    rw [hconjv _ hmX u, hX0π, he']
  have hX0std : ∀ u, eG D.R.r D.R.t (KK D.nd i) (((phiC i π P Q S.X0 π).map (toK D.nd i)).mulVec u) =
      ((0 : Fin D.R.r → KK D.nd i), fun c : Fin D.R.t =>
        toK D.nd i ((chiU D.nd i ((c : ℕ) + 1) S.g0 : (D.nd.O i)ˣ) : D.nd.O i) * (eG D.R.r D.R.t (KK D.nd i) u).2 c) := by
    obtain ⟨Hm, hH⟩ := act_inR D.nd (rN i r ρ π) ρ π hX0m'
    exact transfer e' (eG D.R.r D.R.t (KK D.nd i)) (fun u => ((phiC i π P Q S.X0 π).map (toK D.nd i)).mulVec u)
      (fun z => ((0 : Fin D.R.r → KK D.nd i), fun c : Fin D.R.t =>
        toK D.nd i ((chiU D.nd i ((c : ℕ) + 1) S.g0 : (D.nd.O i)ˣ) : D.nd.O i) * z.2 c)) Hm
      (hH e' hΦ) (hH _ hΨ) hX0π'
  have hX0eq : phiC i π P Q S.X0 π =
      Matrix.diagonal fun a => if blk D.R a = 0 then 0 else rO D.nd i (rN i r ρ π) π S.g0 a a := by
    apply Matrix.map_injective (IsFractionRing.injective (D.nd.O i) (KK D.nd i))
    apply Matrix.toLin'.injective
    apply LinearMap.ext
    intro u
    rw [Matrix.toLin'_apply, Matrix.toLin'_apply]
    apply (eG D.R.r D.R.t (KK D.nd i)).injective
    refine (hX0std u).trans (Eq.symm ((e_of_diag D.nd (fun a => rO D.nd i (rN i r ρ π) π S.g0 a a) u).trans
      (Prod.ext rfl (funext fun c => ?_))))
    show toK D.nd i (rO D.nd i (rN i r ρ π) π S.g0 (Fin.natAdd D.R.r c) (Fin.natAdd D.R.r c)) * _ = _
    rw [hχ]
  have he1π : ∀ a b, (blk D.R a ≠ 0 ∨ blk D.R b ≠ 0) → phiC i π P Q S.e1 π a b = 0 := by
    intro a b hab
    rcases hab with ha | hb
    · have h' : (phiC i π P Q S.eB π * phiC i π P Q S.e1 π) a b = 0 :=
        congrFun (congrFun (congrFun heB1' π) a) b
      rw [heBπ] at h'
      simpa [Matrix.diagonal_mul, ha] using h'
    · have h' : (phiC i π P Q S.e1 π * phiC i π P Q S.eB π) a b = 0 :=
        congrFun (congrFun (congrFun he1B' π) a) b
      rw [heBπ] at h'
      simpa [Matrix.mul_diagonal, hb] using h'
  let s' : D.nd.X i → MatN D.nd i :=
    phiC i π P Q S.X0 - phiC i π P Q S.eB * repX D.nd (rN i r ρ π) S.g0 * phiC i π P Q S.eB
  have hI : IdemHyp (D.nd.O i) (D.nd.T i) (repX D.nd (rN i r ρ π)) π (blk D.R) (phiC i π P Q S.eB)
      (phiC i π P Q S.e1) :=
    ⟨tSpan_of_inR D.nd (rN i r ρ π) heB', tSpan_of_inR D.nd (rN i r ρ π) he1', heBB', he11', heB1', he1B',
      hrkB', hrk1', heBπ, he1π⟩
  have hX0t := tSpan_of_inR D.nd (rN i r ρ π) hX0m'
  have hs : s' ∈ tSpan (D.nd.T i) (repX D.nd (rN i r ρ π)) := by
    have h1 := smul_mem_tSpan (D.nd.T i) (repX D.nd (rN i r ρ π)) (f := -1) (neg_mem (D.nd.T i).one_mem)
      (mul_mem_tSpan (D.nd.T i) (repX D.nd (rN i r ρ π))
        (mul_mem_tSpan (D.nd.T i) (repX D.nd (rN i r ρ π)) (tSpan_of_inR D.nd (rN i r ρ π) heB')
        (repX_mem D.nd (rN i r ρ π) S.g0)) (tSpan_of_inR D.nd (rN i r ρ π) heB'))
    have h2 := add_mem_tSpan (D.nd.T i) (repX D.nd (rN i r ρ π)) hX0t h1
    have e : s' = phiC i π P Q S.X0 + fun x => algebraMap (D.nd.O i) (D.nd.O i) ((-1 : D.nd.X i → D.nd.O i) x) •
        (phiC i π P Q S.eB * repX D.nd (rN i r ρ π) S.g0 * phiC i π P Q S.eB) x := by
      funext x
      simp [s', sub_eq_add_neg]
    rw [e]
    exact h2
  have hes : phiC i π P Q S.eB * s' = s' := by
    show phiC i π P Q S.eB * (phiC i π P Q S.X0 - phiC i π P Q S.eB * repX D.nd (rN i r ρ π) S.g0 * phiC i π P Q S.eB) = _
    rw [mul_sub, heX', ← mul_assoc, ← mul_assoc, heBB']
  have hse : s' * phiC i π P Q S.eB = s' := by
    show (phiC i π P Q S.X0 - phiC i π P Q S.eB * repX D.nd (rN i r ρ π) S.g0 * phiC i π P Q S.eB) * phiC i π P Q S.eB = _
    rw [sub_mul, hXe', mul_assoc (phiC i π P Q S.eB * repX D.nd (rN i r ρ π) S.g0), heBB']
  have hsπ : s' π = 0 := by
    show phiC i π P Q S.X0 π - phiC i π P Q S.eB π * rO D.nd i (rN i r ρ π) π S.g0 * phiC i π P Q S.eB π = 0
    rw [hX0eq, heBπ]
    exact sub_eq_zero.mpr (diag_conj (r := D.R.r) (t := D.R.t) (rO D.nd i (rN i r ρ π) π S.g0) (hbd S.g0)).symm
  refine ⟨S.g0, hg0, hε, phiC i π P Q S.eB, phiC i π P Q S.e1, s', hI, hs, hes, hse, hsπ, fun x => ?_⟩
  have hx : phiC i π P Q S.eB x * repX D.nd (rN i r ρ π) S.g0 x * phiC i π P Q S.eB x + s' x = phiC i π P Q S.X0 x := by
    show phiC i π P Q S.eB x * repX D.nd (rN i r ρ π) S.g0 x * phiC i π P Q S.eB x +
      (phiC i π P Q S.X0 x - phiC i π P Q S.eB x * repX D.nd (rN i r ρ π) S.g0 x * phiC i π P Q S.eB x) =
      phiC i π P Q S.X0 x
    abel
  rw [hx]
  have hbp : blockPoly ((phiC i π P Q S.eB x).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i))))
      ((phiC i π P Q S.X0 x).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))) =
      blockPoly ((S.eB x).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i))))
        ((S.X0 x).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))) := by
    by_cases hxπ : x = π
    · subst hxπ
      erw [hmB, hmX]
      exact blockPoly_conj P Q _ _ hPQ
    · rw [phiC_ne i π P Q _ hxπ, phiC_ne i π P Q _ hxπ]
  rw [hbp]
  have hne : 0 < Nat.card {x' // S.p x' = x} := by
    rw [hcard x]
    exact Nat.factorial_pos _
  obtain ⟨⟨x', hx'⟩⟩ := (Nat.card_pos_iff.mp hne).1
  subst hx'
  refine ⟨fun c => toK D.nd i (S.rr (1 + (c : ℕ)) x'),
    fun a b hab => rr_inj D.nd r ρ π hG x' (IsFractionRing.injective (D.nd.O i) (KK D.nd i) hab), ?_⟩
  rw [← blockPoly_map, blockPoly_eq, ← hroots x', prod_Icc_fin D.nd D.R.t, Polynomial.map_prod]
  refine Finset.prod_congr rfl (fun c _ => ?_)
  simp only [Polynomial.map_sub, Polynomial.map_X, Polynomial.map_C]

theorem design_normalized_of_admitted (hA : LargeLevelLemmas.adm51 i r ρ π) (hZ : π ∈ D.nd.Z i) : InertiaElementIdempotentChoice D.nd (rN i r ρ π) π := by
  obtain ⟨S, hG⟩ := hA hZ
  exact design_normalized i r ρ π S hG

end D51b

end Formalism.MainNotions.N.K.Norm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.DesignNormalizedOfAdmitted =====

-- ===== clump member: Formalism.AdmissibleDesigns.StatementOneBChangedOfOpen =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.StatementOneBChangedOfOpen", "h": "module\n\npublic import Formalism.AdmissibleDesigns.UnramifiedInputOfAdmitted\npublic import Formalism.AdmissibleDesigns.GlobalIndexTheoremPlacesOfRNAdm\npublic import Formalism.AdmissibleDesigns.TheoremFromNormalizedOpenThree\npublic import Formalism.AdmissibleDesigns.ColLx\nimport Formalism.AdmissibleDesigns.ColumnUnramifiedCharacter\npublic import Formalism.AdmissibleDesigns.DesignNormalizedOfAdmitted\npublic import Formalism.AdmissibleDesigns.NormalizedRingData\nimport Formalism.AdmissibleDesigns.TheoremN5OfNormalizedItems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.Final

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.TorsionBoundCyclotomic Formalism.RepresentationBoundsCohomology.JL Formalism.RepresentationBoundsCohomology.JT Formalism.RepresentationBoundsCohomology.SplitClassesAll Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF Formalism.MainNotions.N.K.St

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Open

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (cB : ℕ)





set_option maxHeartbeats 4000000 in
set_option synthInstance.maxHeartbeats 400000 in
def TBOpen : Prop :=
      (∀ c : Fin (D.R.t + 1), 1 ≤ (c : ℕ) → ∀ w ∈ rowsN i dc,
      (∀ ψ : Ymod Dd.r Dd.χ Dd.E →ₗ[D.nd.O i] blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c,
        (∀ g ∈ (decs D.host.E (Aw i dc)) w, ∀ y, ψ (uElt Dd.r Dd.χ g • y) = uElt Dd.r Dd.χ g • ψ y) →
        ∀ z : coZ1s (QS.resU i dc Dd c w),
          (∀ g : (decs D.host.E (Aw i dc)) w, (z : (decs D.host.E (Aw i dc)) w → blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c) g =
            ψ (yY Dd.r Dd.χ Dd.E (g : GE D.nd))) →
          (((D.nd.l i : ℕ) : D.nd.O i) ^ cB) • (Submodule.mkQ _ z : H1z (QS.resU i dc Dd c w)) ∈ FS i r π dc g0 eB e₁ s Dd hD hc c w) ∧
      Module.length (D.nd.O i) (↥(lcH1 (QS.resU i dc Dd c w) ⊓ divBy (FS i r π dc g0 eB e₁ s Dd hD hc c w) (((D.nd.l i : ℕ) : D.nd.O i) ^ cB)) ⧸
        (FS i r π dc g0 eB e₁ s Dd hD hc c w).comap (lcH1 (QS.resU i dc Dd c w) ⊓ divBy (FS i r π dc g0 eB e₁ s Dd hD hc c w) (((D.nd.l i : ℕ) : D.nd.O i) ^ cB)).subtype) ≤
        eON i * (cB : ℕ∞) * ((ReciprocityTheory.Gal.locDeg (plOf i dc w) : ℕ∞) + 1))




def ChiOpen : Prop :=
      (∀ c : Fin (D.R.t + 1), 2 ≤ (c : ℕ) →
      InChiFixReal (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk c) Dd.r Dd.χ Dd.E (colIdx i dc) (decs D.host.E (Aw i dc)) (rowsN i dc)
        (qsN i dc) (ShaN i ((c : ℕ) - 1)) (FS i r π dc g0 eB e₁ s Dd hD hc c) (QS.Io i) (QS.IS i) (QS.I i dc) (QS.γQ i dc) (QS.ζ i dc Dd)
        (QS.ζO i dc) (QS.nQ i dc))




def FirstLocalConditionOpen : Prop :=
      (InChiLoc (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk QS.c1) Dd.r Dd.χ Dd.E (decs D.host.E (Aw i dc)) (qsN i dc)
      (FS i r π dc g0 eB e₁ s Dd hD hc QS.c1) (QS.Io i) (QS.IS i) (QS.I i dc) (QS.γQ i dc) (QS.ζ i dc Dd) (QS.ζO i dc) (QS.nQ i dc))

end Open

section Final

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i) (dc : TruncatedSeriesCountingIdentities.Decl D i)

theorem row_bound_normalized_lattice (hd : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π) (cB : ℕ) (h : EmbeddingTypes.admTB i r π dc cB) :
    EmbeddingTypes.admTB i (Norm.rN i r ρ π) π dc cB := by
  intro w hw hrow C hC
  have ht : Norm.IsConjM ⇑(TruncatedSeriesCountingIdentities.locC C (rTwO D.nd i r π)) ⇑(TruncatedSeriesCountingIdentities.locC C (rTwO D.nd i (Norm.rN i r ρ π) π)) :=
    Norm.conj_locC i C (Norm.conj_twistM _ (Norm.conjK i r ρ π hd π) _)
  have hset : (fun τ => {a | Formalism.WeaklyAdmissibleFiltrations.IsJumpV (Br.PD D.loc D.nbr i w hw)
      (matRep (TruncatedSeriesCountingIdentities.locC C (rTwO D.nd i (Norm.rN i r ρ π) π))) τ a}) =
      (fun τ => {a | Formalism.WeaklyAdmissibleFiltrations.IsJumpV (Br.PD D.loc D.nbr i w hw) (matRep (TruncatedSeriesCountingIdentities.locC C (rTwO D.nd i r π))) τ a}) :=
    funext fun τ => Set.ext fun a => ((Norm.jd _ ht).2.2 τ a).symm
  have := h w hw hrow C hC
  rw [← hset] at this
  exact this

variable (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (e' : HeightOneSpectrum (𝓞 D.host.E) → ℕ) (cB : ℕ)




def OnRing (Q : ∀ (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
      (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
      [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
      (_hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd (Norm.rN i r ρ π)) π (chiU D.nd i 1) (epsU D.nd i)
        g0 eB e₁ s Dd)
      (_hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i (Norm.rN i r ρ π)) (_hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
      (_hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1), Prop) : Prop :=
  TruncatedSeriesCountingIdentities.LengthBoundAtPlaces i (Norm.rN i r ρ π) ρ π dc lenRow → TruncatedSeriesCountingIdentities.LiftExponentAtPlaces i (Norm.rN i r ρ π) dc e' →
    EmbeddingTypes.admTB i (Norm.rN i r ρ π) π dc cB → π ∈ D.nd.Z i →
    ∀ (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
      (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
      [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
      (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd (Norm.rN i r ρ π)) π (chiU D.nd i 1) (epsU D.nd i)
        g0 eB e₁ s Dd)
      (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i (Norm.rN i r ρ π)) (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
      (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1),
      Q g0 eB e₁ s Dd hD hc hT hrk


end Final

section Stmts

end Stmts

section EmbeddingTypes

end EmbeddingTypes

section Land

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i) (dc : TruncatedSeriesCountingIdentities.Decl D i)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (e' : HeightOneSpectrum (𝓞 D.host.E) → ℕ) (cB : ℕ)

end Land

section WithCols

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (cB : ℕ)




def RhoOpenA : Prop :=
      (InRhoFixReal2 (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ Dd.e₁ (colIdx i dc) (decs D.host.E (Aw i dc))
      (jN i ρ π dc) (rowsN i dc) (sN i ρ π) (tensM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (v1S i Dd hT hrk) (KFin.κ i dc Dd ρ π)
      (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (qVM (D.nd.O i) _ (Dd.ρk 0).toRingHom)
      (fun l => KHf.Ff i dc Dd.r Dd.χ (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) l) (KFin.κz i dc Dd ρ π) (FS i r π dc g0 eB e₁ s Dd hD hc 0)
      (QS.Io i) (epsU D.nd i) (rho1 i Dd) (rho2 i Dd) (FirstSummandSubmodule (D.nd.O i) Dd.e₁).subtype (piS i Dd hT hrk)
      (gamM (Dd.ρk 0)) (lamS i Dd hT hrk))

end WithCols

section FinalA

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i) (dc : TruncatedSeriesCountingIdentities.Decl D i)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (e' : HeightOneSpectrum (𝓞 D.host.E) → ℕ) (cB : ℕ)





theorem theorem_n5_of_ring_inputs (g1 : TruncatedSeriesCountingIdentities.admG1 i r) (g2 : TruncatedSeriesCountingIdentities.admG2 i r ρ π) (g3 : TruncatedSeriesCountingIdentities.admG3 i r ρ π) (g5x : TruncatedSeriesCountingIdentities.TameGeneratorConditions i)
    (g6 : TruncatedSeriesCountingIdentities.admG6 i r) (ct : TruncatedSeriesCountingIdentities.FamilyContinuous i r) (dcm : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π)
    (a51 : LargeLevelLemmas.adm51 i r ρ π) (hG : K.SelfGood i)
    (hP : OnRing i r ρ π dc lenRow e' cB (fun g0 eB e₁ s Dd _ hD hc hT hrk =>
      SelmerInequalityThree i (Norm.rN i r ρ π) ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow cB)) :
    TruncatedSeriesCountingIdentities.LengthBoundAtPlaces i r ρ π dc lenRow → TruncatedSeriesCountingIdentities.LiftExponentAtPlaces i r dc e' → EmbeddingTypes.admTB i r π dc cB →
      TruncatedSeriesCountingIdentities.GlobalLatticeIndexTheorem i ρ π dc lenRow e' cB := by
  intro hR hL hTB
  have hR' := Norm.row_normalized i r ρ π dcm dc lenRow hR
  have hL' := Norm.lift_normalized i r ρ π dcm dc e' hL
  have hT' := row_bound_normalized_lattice i r ρ π dc dcm cB hTB
  refine H0.theorem_of_display_and_g2 i r ρ π dc lenRow e' cB (fun _ _ hπ _ _ => ?_) g2 g5x
  have hN := Norm.normAt_rN i r ρ π
  have hG1 := Norm.admG1_rN i r ρ π dcm g1
  obtain ⟨g0, -, ⟨u0, hcyc⟩, eB, e₁, s, hI, hX⟩ := Norm.design_normalized_of_admitted i r ρ π a51 hπ
  obtain ⟨Dd, hD, -, i1, i2, i3, i4, i5, hTop, hK⟩ :=
    normalized_ring_data i (Norm.rN i r ρ π) ρ π hN hG1 g3.2.2 g0 eB e₁ s hI hX
  haveI := i1; haveI := i2; haveI := i3; haveI := i4; haveI := i5
  have hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i (Norm.rN i r ρ π) := Norm.continuity_normalized i r ρ π (Norm.rhoCont_of i r ρ π dcm ct) ct
  exact selmer_inequality_three i (Norm.rN i r ρ π) ρ π dc g0 eB e₁ s Dd hD hc hTop (rank_reduction_idempotent_one Dd hI hD) lenRow e' cB hN
    (RepresentationBoundsCohomology.primHyp_of D.nd (Norm.rN i r ρ π) ρ π hN hG1) u0 hcyc hK (Norm.admG6_rN i r ρ π dcm g6) hL' hG
    (hP hR' hL' hT' hπ g0 eB e₁ s Dd hD hc hTop (rank_reduction_idempotent_one Dd hI hD))

end FinalA

section StmtsA

end StmtsA

section FinalB

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (cB : ℕ)


set_option maxHeartbeats 4000000 in
set_option synthInstance.maxHeartbeats 400000 in
theorem plugOpen3_B (hBK : TruncatedSeriesCountingIdentities.admBK i) (hG2 : TruncatedSeriesCountingIdentities.admG2 i r ρ π) (hFont : TruncatedSeriesCountingIdentities.FontaineAtPlacesOverL i)
    (hDec : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π) (hFin : LargeLevelLemmas.tateH1FinitenessAtPlacesOver i) (hUn : StD.UnrIn i dc) (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π)
    (bka : LargeLevelLemmas.BlochKatoAnnihilators i) (hG : K.SelfGood i) (hR : TruncatedSeriesCountingIdentities.LengthBoundAtPlaces i r ρ π dc lenRow)
    (hRho : RhoOpenA i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk) (hTB : TBOpen i r π dc g0 eB e₁ s Dd hD hc cB)
    (hChi : ChiOpen i r π dc g0 eB e₁ s Dd hD hc) (hLoc1 : FirstLocalConditionOpen i r π dc g0 eB e₁ s Dd hD hc)
    (hRT : StD.RowTieIn i r ρ π dc g0 eB e₁ s Dd hD hc) :
    SelmerInequalityThree i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow cB :=
  ⟨KFin.κ i dc Dd ρ π, KFin.κz i dc Dd ρ π, KFin.u i dc, KFin.uz i dc Dd.δO, StA.colUz i dc Dd,
    StD.unrFin_of i dc Dd.δO hUn, StA.colLx i r ρ π dc g0 eB e₁ s Dd hD hc hBK hG2 hFont hDec hFin, hRho,
    StD.bKa_clause i r π dc g0 eB e₁ s Dd hD hc bka hG (StD.rowDR_of_fontaine i r ρ π dc g0 eB e₁ s Dd hD hc hFont hG2 hDec hN),
    hTB, hChi, StA.column_unramified_character i dc, hLoc1,
    StD.tie_clause i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow hG hR (StD.row_match_from_comparison i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk hRT)⟩

end FinalB

section FinalB2

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i) (dc : TruncatedSeriesCountingIdentities.Decl D i)
  (lenRow : HeightOneSpectrum (𝓞 D.host.E) → ℚ) (e' : HeightOneSpectrum (𝓞 D.host.E) → ℕ) (cB : ℕ)




def RemainingInputsLastLayer : Prop :=
  OnRing i r ρ π dc lenRow e' cB (fun g0 eB e₁ s Dd _ hD hc hT hrk =>
    RhoOpenA i (Norm.rN i r ρ π) ρ π dc g0 eB e₁ s Dd hD hc hT hrk ∧
    TBOpen i (Norm.rN i r ρ π) π dc g0 eB e₁ s Dd hD hc cB ∧
    ChiOpen i (Norm.rN i r ρ π) π dc g0 eB e₁ s Dd hD hc ∧
    FirstLocalConditionOpen i (Norm.rN i r ρ π) π dc g0 eB e₁ s Dd hD hc ∧
    StD.RowTieIn i (Norm.rN i r ρ π) ρ π dc g0 eB e₁ s Dd hD hc)




theorem theorem_n5_of_open_b (g1 : TruncatedSeriesCountingIdentities.admG1 i r) (g2 : TruncatedSeriesCountingIdentities.admG2 i r ρ π) (g3 : TruncatedSeriesCountingIdentities.admG3 i r ρ π) (g5x : TruncatedSeriesCountingIdentities.TameGeneratorConditions i)
    (g6 : TruncatedSeriesCountingIdentities.admG6 i r) (bk : TruncatedSeriesCountingIdentities.admBK i) (bka : LargeLevelLemmas.BlochKatoAnnihilators i) (ct : TruncatedSeriesCountingIdentities.FamilyContinuous i r)
    (dcm : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π) (font : TruncatedSeriesCountingIdentities.FontaineAtPlacesOverL i) (fin : LargeLevelLemmas.tateH1FinitenessAtPlacesOver i) (a51 : LargeLevelLemmas.adm51 i r ρ π)
    (unr : StD.UnrIn i dc) (hG : K.SelfGood i) (hO : RemainingInputsLastLayer i r ρ π dc lenRow e' cB) :
    TruncatedSeriesCountingIdentities.LengthBoundAtPlaces i r ρ π dc lenRow → TruncatedSeriesCountingIdentities.LiftExponentAtPlaces i r dc e' → EmbeddingTypes.admTB i r π dc cB →
      TruncatedSeriesCountingIdentities.GlobalLatticeIndexTheorem i ρ π dc lenRow e' cB := by
  intro hR hL hTB
  refine theorem_n5_of_ring_inputs i r ρ π dc lenRow e' cB g1 g2 g3 g5x g6 ct dcm a51 hG ?_ hR hL hTB
  intro hR' hL' hTB' hZ g0 eB e₁ s Dd _ hD hc hT hrk
  obtain ⟨hRho, hTBo, hChi, hLoc1, hRT⟩ := hO hR' hL' hTB' hZ g0 eB e₁ s Dd hD hc hT hrk
  exact plugOpen3_B i (Norm.rN i r ρ π) ρ π dc g0 eB e₁ s Dd hD hc hT hrk lenRow cB bk
    (Norm.admG2_rN (hd := dcm) (h := g2)) font (Norm.decomposes_normalized (i := i) (r := r) (ρ := ρ) (π := π)) fin unr
    (Norm.normAt_rN (i := i) (r := r) (ρ := ρ) (π := π)) bka hG hR' hRho hTBo hChi hLoc1 hRT

end FinalB2

section StmtsB

end StmtsB

end Formalism.MainNotions.N.K.Final

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.StatementOneBChangedOfOpen =====

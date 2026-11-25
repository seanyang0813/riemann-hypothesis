module

public import Formalism.AdmissibleDesigns.MemImageOfTensorSum
public import Formalism.AdmissibleDesigns.SelmerInequalityOfInputs
public import Formalism.AdmissibleDesigns.CharacterTrivialWhereLattice
public import Formalism.AdmissibleDesigns.EKSymmCont
public import Formalism.AdmissibleDesigns.MemIntegralSpanIffImage
public import Formalism.AdmissibleDesigns.KernelLengthHigherColumns
public import Formalism.AdmissibleDesigns.LengthSemilinear
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientHomNonvanishingBound
public import Formalism.AdmissibleDesigns.FiniteClassesContinuousLattice
public import Formalism.AdmissibleDesigns.CoboundaryMemFiniteClasses
public import Formalism.AdmissibleDesigns.FgTopContinuousLinearMap
public import Formalism.WachLatticeTwists.RealDisplaySplitting.RealDisplayProofs.SurjectionOfRankOneIdempotent
public import Formalism.AdmissibleDesigns.GlobalIndexTheoremPlacesOfRNAdm
public import Formalism.SharpRestriction.LevelLetterCocycles.LargeLevelLemmas
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
import Mathlib.Tactic.Linter.Style
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Formalism.WeaklyAdmissibleFiltrations.CrystallineStableLifts.Galois
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.AdmissibleDesigns.FirstBlockColumnCondition, Formalism.AdmissibleDesigns.RankFfNormAt, Formalism.AdmissibleDesigns.InvariantsMapEquivariant, Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.JointCondH0W, Formalism.AdmissibleDesigns.BkLocCol, Formalism.AdmissibleDesigns.ToH1Cocycles, Formalism.AdmissibleDesigns.SelFSOfNormAt, Formalism.AdmissibleDesigns.HRhoFull

-- ===== clump member: Formalism.AdmissibleDesigns.FirstBlockColumnCondition =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.FirstBlockColumnCondition", "h": "module\n\npublic import Formalism.AdmissibleDesigns.MemImageOfTensorSum\npublic import Formalism.AdmissibleDesigns.SelmerInequalityOfInputs\npublic import Formalism.AdmissibleDesigns.CharacterTrivialWhereLattice\npublic import Formalism.AdmissibleDesigns.EKSymmCont\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.StB

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.TorsionBoundCyclotomic Formalism.RepresentationBoundsCohomology.JL Formalism.RepresentationBoundsCohomology.JT Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF Formalism.MainNotions.N.K.St

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Rho

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)



theorem first_block_column_condition (l : Col i dc) :
    FS i r π dc g0 eB e₁ s Dd hD hc 0 (colIdx i dc l) =
      KHf.F0col i dc (colIdx i dc l)
        (resRep (uRep (D.nd.O i) (M := Vr i Dd) Dd.r Dd.χ) (decs D.host.E (Aw i dc) (colIdx i dc l)))
        (QS.resU i dc Dd 0 (colIdx i dc l)) (qVM (D.nd.O i) _ (Dd.ρk 0).toRingHom) := by
  have hnot : colIdx i dc l ∉ rowsN i dc := by
    intro h
    obtain ⟨w, hw, hwe⟩ := Finset.mem_image.mp h
    have h1 : l.1 ∈ plSet i dc := by
      unfold plSet
      exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inr l.2)))
    have h2 : w ∈ plSet i dc := by
      unfold plSet
      exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inl hw)))
    have heq : w = l.1 := idx_inj i dc h2 h1 hwe
    have hwc : w ∈ dc.col := by
      rw [heq]
      exact l.2
    exact Finset.disjoint_left.mp dc.disj hw hwc
  simp only [FS, QS.Fall, Fin.cases_zero]
  unfold FirstBlockLocalConditions
  simp only [KHf.Fρ, if_neg hnot]




theorem hRho_of
    (hG4 : TruncatedSeriesCountingIdentities.admG4 i r) (hdec : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π)
    (hFf : ∀ l, KFin.FinFf i dc Dd l) (hRk : ∀ l, KFin.RankFf i dc Dd ρ π l)
    (hSel : TieSel1 i ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (colIdx i dc) (decs D.host.E (Aw i dc))
      (rowsN i dc) (FS i r π dc g0 eB e₁ s Dd hD hc 0) (QS.Io i)) :
    InRhoFixReal2 (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ Dd.e₁ (colIdx i dc) (decs D.host.E (Aw i dc))
      (jN i ρ π dc) (rowsN i dc) (sN i ρ π) (tensM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (v1S i Dd hT hrk)
      (KFin.κ i dc Dd ρ π)
      (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (qVM (D.nd.O i) _ (Dd.ρk 0).toRingHom)
      (fun l => KHf.Ff i dc Dd.r Dd.χ (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) l) (KFin.κz i dc Dd ρ π)
      (FS i r π dc g0 eB e₁ s Dd hD hc 0)
      (QS.Io i) (epsU D.nd i) (rho1 i Dd) (rho2 i Dd) (FirstSummandSubmodule (D.nd.O i) Dd.e₁).subtype (piS i Dd hT hrk)
      (gamM (Dd.ρk 0)) (lamS i Dd hT hrk) := by
  have hA := tensor_lattice_facts Dd (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R) hT hrk (epsU D.nd i)
  obtain ⟨⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, -⟩, -, -, -, -, -, -, hinc, -, hgam, -⟩ := hA
  have hOrb : ∀ l : Col i dc, KHf.OrbC i dc (KFin.ρV i dc Dd l) := fun l =>
    KOrb.orbC_uRep i dc r π g0 eB e₁ s Dd hD hc (fun c v => KOrb.latM_alg i Dd (Dd.ρk 0) c v) (colIdx i dc l)
  refine ⟨h1, h2, ?_, ⟨h3, h4, h5, h6, h7, h8, h9, fun l =>
      KFin.finRhoAt_of i dc Dd ρ π l (hOrb l) (hFf l) (hRk l)⟩,
    QS.inertia_triviality_clause i r ρ π Dd (QS.ev_of hD) hG4 hdec, hinc,
    fun g b => pi_equiv2 Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) Dd.e₁ _ g b, hgam,
    selRho_le_sN i ρ π _ Dd.r Dd.χ (colIdx i dc) (decs D.host.E (Aw i dc)) (rowsN i dc) _ (QS.Io i) hSel⟩
  intro l z x hz
  rw [first_block_column_condition]
  exact KFin.clause3 i dc Dd ρ π l z x hz

end Rho

end Formalism.MainNotions.N.K.StB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.FirstBlockColumnCondition =====

-- ===== clump member: Formalism.AdmissibleDesigns.RankFfNormAt =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.RankFfNormAt", "h": "module\n\npublic import Formalism.AdmissibleDesigns.MemIntegralSpanIffImage\npublic import Formalism.AdmissibleDesigns.KernelLengthHigherColumns\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Classical Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.NG

namespace Formalism.MainNotions.N.KTate

open Formalism.MainNotions.N.KHf

section RecIso2

open Formalism.MainNotions Formalism.MainNotions.N Formalism.RepresentationBoundsCohomology.SF NumberField IsDedekindDomain
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData)

variable {D : D7} (i : D.nd.Loc) (dc : TruncatedSeriesCountingIdentities.Decl D i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)



omit hH0Fin
  [∀ k, SMulCommClass Dd.R' (D.nd.O i)
    (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)] in
theorem isoV_of (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i))) (g0 : GE D.nd)
    (eB e₁ s : D.nd.X i → MatN D.nd i)
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π) (l : K.Col i dc) : IsoV i dc Dd ρ π l := by
  have hn := KDim.col_over i dc l
  let F : TrV (eK (D.nbr i _ hn)) (KFin.Vr i Dd) ≃ₗ[Br.LL D.nbr i _ hn] (Fin D.R.r → Br.LL D.nbr i _ hn) :=
    { toFun := fun v a => eK (D.nbr i _ hn) ((show KFin.Vr i Dd from v) (K.H0.e0 (D := D) a))
      invFun := fun w => (show KFin.Vr i Dd from fun j => (eK (D.nbr i _ hn)).symm (w ((K.H0.e0 (D := D)).symm j)))
      map_add' := fun u v => funext fun a => map_add (eK (D.nbr i _ hn)) _ _
      map_smul' := fun c v => funext fun a => by
        show eK (D.nbr i _ hn) ((eK (D.nbr i _ hn)).symm c * (show KFin.Vr i Dd from v) (K.H0.e0 (D := D) a)) =
          c * eK (D.nbr i _ hn) ((show KFin.Vr i Dd from v) (K.H0.e0 (D := D) a))
        rw [map_mul, RingEquiv.apply_symm_apply]
      left_inv := fun v => funext fun j => by
        show (eK (D.nbr i _ hn)).symm (eK (D.nbr i _ hn)
          ((show KFin.Vr i Dd from v) (K.H0.e0 (D := D) ((K.H0.e0 (D := D)).symm j)))) = (show KFin.Vr i Dd from v) j
        rw [RingEquiv.symm_apply_apply, Equiv.apply_symm_apply]
      right_inv := fun w => funext fun a => by
        show eK (D.nbr i _ hn) ((eK (D.nbr i _ hn)).symm (w ((K.H0.e0 (D := D)).symm (K.H0.e0 (D := D) a)))) = w a
        rw [RingEquiv.apply_symm_apply, Equiv.symm_apply_apply] }
  refine ⟨F, fun g v => funext fun a => ?_⟩
  have h1 : F (repL (eK (D.nbr i _ hn)) (KFin.ρV i dc Dd l) (Br.iota D.nbr i _ hn) g v) a =
      eK (D.nbr i _ hn) (∑ j, Dd.ρk 0 (uElt Dd.r Dd.χ ((Br.iota D.nbr i _ hn g : KHf.Γn i dc (K.colIdx i dc l)) : GE D.nd))
        (K.H0.e0 (D := D) a) j • (show KFin.Vr i Dd from v) j) := rfl
  have h2 : KDim.repW i dc ρ π (K.colIdx i dc l) hn g (F v) a =
      ∑ b, algebraMap (Br.OLL D.nbr i _ hn) (Br.LL D.nbr i _ hn) ((D.nbr i _ hn).eO
        (WpO D.nd i ρ π ((Br.iota D.nbr i _ hn g : KHf.Γn i dc (K.colIdx i dc l)) : GE D.nd) a b)) * F v b := rfl

  rw [h1, h2, map_sum, ← Equiv.sum_comp (K.H0.e0 (D := D))]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [Algebra.smul_def, map_mul, KHf.eK_apply, Br.toLLK_alg, K.H0.unipotent_block_zero_entry hD hN _ a b]
  rfl

omit hH0Fin in
theorem rankFf_normAt (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i))) (g0 : GE D.nd)
    (eB e₁ s : D.nd.X i → MatN D.nd i)
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π) (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r) (l : K.Col i dc) : KFin.RankFf i dc Dd ρ π l := by
  apply rankFf_iso (hD := hD) (hc := hc)
  exact isoV_of i dc Dd ρ π r g0 eB e₁ s hD hN l

end RecIso2

end Formalism.MainNotions.N.KTate
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.RankFfNormAt =====

-- ===== clump member: Formalism.AdmissibleDesigns.InvariantsMapEquivariant =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.InvariantsMapEquivariant", "h": "module\n\npublic import Formalism.AdmissibleDesigns.LengthSemilinear\npublic import Formalism.AdmissibleDesigns.KernelLengthHigherColumns\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Classical

namespace Formalism.MainNotions.N.K.Sel

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Module Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.NG Formalism.BasicNotions
  Formalism.RepresentationBoundsCohomology.FIN Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology

section Phi

variable {D : D7} (i : D.nd.Loc) (dc : TruncatedSeriesCountingIdentities.Decl D i) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]

omit hH0Fin
  [∀ k, SMulCommClass Dd.R' (D.nd.O i)
    (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)] in
theorem toKOG_surjective : Function.Surjective (H0.toKOG (D := D) i Dd) := by
  intro y
  refine ⟨fun b => (H0.kogEq _ y) (H0.e0.symm b), ?_⟩
  show (H0.kogEq _).symm (fun a => (H0.kogEq _ y) (H0.e0.symm (H0.e0 a))) = y
  simp only [Equiv.symm_apply_apply]
  exact (H0.kogEq _).symm_apply_apply y

def phi0 : blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0 ≃ₗ[D.nd.O i] KOG (D.nd.O i) D.R.r :=
  LinearEquiv.ofBijective (H0.toKOG i Dd) ⟨H0.toKOG_injective i Dd, toKOG_surjective i Dd⟩


variable {i r ρ π g0 eB e₁ s Dd} in
omit hH0Fin in
theorem invariants_map_equivariant
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π) (g : GE D.nd) (m : blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) :
    phi0 i Dd (uRep (D.nd.O i) (M := blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ g m) = Br.WKO i ρ π g (phi0 i Dd m) := by
  exact H0.toKOG_equiv hD hN g m


variable {i r ρ π g0 eB e₁ s Dd} in
omit hH0Fin in
theorem tieSel1_rec
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π)
    (F : ∀ w, Submodule (D.nd.O i) (H1z (resRep (uRep (D.nd.O i) (M := blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ)
      (decs D.host.E (Aw i dc) w))))
    (hBk : BkAt i dc ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (phi0 i Dd) (invariants_map_equivariant hD hN) F) :
    TieSel1 i ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (colIdx i dc) (decs D.host.E (Aw i dc)) (rowsN i dc) F
      (K.QS.Io i) := by
  exact tieSel1_of (hBk := hBk)


variable {i r ρ π g0 eB e₁ s Dd} in
omit hH0Fin in
theorem tieSel1_rec_loc
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π)
    (F : ∀ w, Submodule (D.nd.O i) (H1z (resRep (uRep (D.nd.O i) (M := blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ)
      (decs D.host.E (Aw i dc) w))))
    (hBk : BkLoc i dc ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (phi0 i Dd) (invariants_map_equivariant hD hN) F) :
    TieSel1 i ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (colIdx i dc) (decs D.host.E (Aw i dc)) (rowsN i dc) F
      (K.QS.Io i) := by
  exact tieSel1_rec (hD := hD) (hN := hN) (F := F) (hBk := bkAt_of_loc (h := hBk))

end Phi

end Formalism.MainNotions.N.K.Sel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.InvariantsMapEquivariant =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.JointCondH0W =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.JointCondH0W", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientHomNonvanishingBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.WeaklyAdmissibleFiltrations

open NumberField IsDedekindDomain

section Phi

variable (D : D7) (i : D.nd.Loc) (w : HeightOneSpectrum (𝓞 D.host.E)) (hw : w ∈ placesOver D.host.E (D.nd.l i))




theorem phi_act {k : ℕ} (M : Gw D.nd w →* Matrix (Fin k) (Fin k) (D.nd.O i)) (g : ↥(GK (D.nbr i w hw).Kw))
    (x : KOG (D.nd.O i) k) :
    Br.phi (D.nbr i w hw) k (actD (stdLatG (IsFractionRing.injective (D.nd.O i) (FractionRing (D.nd.O i))) M)
      (Br.ι (D.nbr i w hw) g) x) = actD (Br.lat (D.nbr i w hw) M) g (Br.phi (D.nbr i w hw) k x) := by
  obtain ⟨u, rfl⟩ := Submodule.mkQ_surjective _ x
  have key : Br.vecS (D.nbr i w hw) k ((matRep (mapM (algebraMap (D.nd.O i) (FractionRing (D.nd.O i))) M)
      (Br.ι (D.nbr i w hw) g)) u) = (matRep (Br.locM (D.nbr i w hw) M) g) (Br.vecS (D.nbr i w hw) k u) := by
    funext p
    show Br.toLLK (D.nbr i w hw) (((mapM (algebraMap (D.nd.O i) (FractionRing (D.nd.O i))) M
        (Br.ι (D.nbr i w hw) g)).mulVec u) p) =
      ((Br.locM (D.nbr i w hw) M g).mulVec (fun j => Br.toLLK (D.nbr i w hw) (u j))) p

    simp only [Matrix.mulVec, dotProduct, map_sum, map_mul]
    refine Finset.sum_congr rfl fun q _ => ?_
    congr 1
    show Br.toLLK (D.nbr i w hw) (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)) (M (Br.ι (D.nbr i w hw) g) p q)) = _
    rw [Br.toLLK_alg]
    rfl
  exact congrArg (fun z : Fin k → Br.LLw (D.nbr i w hw) =>
    (Submodule.Quotient.mk z : (Fin k → Br.LLw (D.nbr i w hw)) ⧸ stdG (Br.Ow (D.nbr i w hw)) (Br.LLw (D.nbr i w hw)) k)) key

end Phi

def wLat (D : D7) (i : D.nd.Loc) (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
    (u : HeightOneSpectrum (𝓞 D.host.E)) (hu : u ∈ placesOver D.host.E (D.nd.l i))
    (hc : ∀ v, Continuous fun g => matRep (Br.locM (D.nbr i u hu) ((WpO D.nd i ρ π).comp (decS D.nd u))) g v) :
    LocLat ↥(GK (D.nbr i u hu).Kw) ℚ_[D.nd.l i] (Br.LLw (D.nbr i u hu)) (Br.Ow (D.nbr i u hu)) :=
  { V := Fin D.R.r → Br.LLw (D.nbr i u hu)
    ρ := matRep (Br.locM (D.nbr i u hu) ((WpO D.nd i ρ π).comp (decS D.nd u)))
    cont := hc
    L := Br.lat (D.nbr i u hu) ((WpO D.nd i ρ π).comp (decS D.nd u)) }

end Formalism.MainNotions.N
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.JointCondH0W =====

-- ===== clump member: Formalism.AdmissibleDesigns.BkLocCol =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.BkLocCol", "h": "module\n\npublic import Formalism.AdmissibleDesigns.LengthSemilinear\npublic import Formalism.AdmissibleDesigns.FiniteClassesContinuousLattice\npublic import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.JointCondH0W\nimport Formalism.WeaklyAdmissibleFiltrations.CrystallineStableLifts.Galois\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core]

noncomputable section

open Classical

namespace Formalism.MainNotions.N.K.Sel

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.MainNotions Formalism.MainNotions.N
  Formalism.MainNotions.N.K Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N.KHf

section Col

variable {D : D7} (i : D.nd.Loc) (dc : TruncatedSeriesCountingIdentities.Decl D i) (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i)))
  (π : D.nd.X i) {A T' : Type} [Ring A] [Algebra (D.nd.O i) A] [CommRing T'] [Algebra T' A]
  (M : Type) [AddCommGroup M] [Module A M] [Module (D.nd.O i) M] [SMulCommClass A (D.nd.O i) M]
  (r : GE D.nd →* A) (χ : GE D.nd →* T'ˣ)
  (φ : M ≃ₗ[D.nd.O i] KOG (D.nd.O i) D.R.r)
  (hφ : ∀ g m, φ (uRep (D.nd.O i) (M := M) r χ g m) = Br.WKO i ρ π g (φ m))


omit [Algebra (D.nd.O i) A] in
set_option synthInstance.maxHeartbeats 400000 in
set_option maxHeartbeats 4000000 in
theorem bkLoc_col (n : ℕ) (hw : plOf i dc n ∈ placesOver D.host.E (D.nd.l i))
    {V : Type} [AddCommGroup V] [Module (FractionRing (D.nd.O i)) V] [Module (D.nd.O i) V]
    [IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) V]
    (ρV : Representation (D.nd.O i) ↥(decs D.host.E (Aw i dc) n) V) (qV : V →ₗ[D.nd.O i] M)
    (Ψ : TrV (eK (D.nbr i _ hw)) V →ₗ[Br.LLw (D.nbr i _ hw)] (Fin D.R.r → Br.LLw (D.nbr i _ hw)))
    (hΨc : Continuous Ψ)
    (hΨe : ∀ g v, Ψ (repL (eK (D.nbr i _ hw)) ρV (Br.iota D.nbr i _ hw) g v) =
      matRep (Br.locM (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))) g (Ψ v))
    (hcomp : ∀ v, Br.phi (D.nbr i _ hw) D.R.r (φ (qV v)) = Submodule.Quotient.mk (Ψ v))
    (y : ReciprocityTheory.Gal.H1 ((Br.WKO i ρ π).comp (decS D.nd (plOf i dc n))))
    (hy : psi (resRep (uRep (D.nd.O i) (M := M) r χ) (decs D.host.E (Aw i dc) n))
        ((Br.WKO i ρ π).comp (decS D.nd (plOf i dc n))) φ (fun g m => hφ g m) y ∈
      F0col i dc n ρV (resRep (uRep (D.nd.O i) (M := M) r χ) (decs D.host.E (Aw i dc) n)) qV) :
    y ∈ Br.bk D.loc D.nbr i (plOf i dc n) hw (WpO D.nd i ρ π) := by
  induction y using Submodule.Quotient.induction_on with
  | H f =>
    have hy' : Submodule.Quotient.mk (psiZ (resRep (uRep (D.nd.O i) (M := M) r χ) (decs D.host.E (Aw i dc) n))
        ((Br.WKO i ρ π).comp (decS D.nd (plOf i dc n))) φ (fun g m => hφ g m) f) ∈
        F0col i dc n ρV (resRep (uRep (D.nd.O i) (M := M) r χ) (decs D.host.E (Aw i dc) n)) qV := hy
    obtain ⟨c, hc, hceq⟩ := Submodule.mem_map.mp hy'
    have hd := (Submodule.Quotient.eq _).1 hceq
    have hpsi := Submodule.sub_mem _ hc (Submodule.mem_sup_right hd)
    simp only [Submodule.mem_comap, Submodule.coe_subtype, sub_sub_cancel] at hpsi
    obtain ⟨a, ha, b, hb, hab⟩ := Submodule.mem_sup.mp hpsi
    obtain ⟨z, hz, rfl⟩ := Submodule.mem_map.mp ha
    obtain ⟨m, rfl⟩ := hb
    have hz' : z ∈ fZ i dc n ρV := hz
    unfold fZ at hz'
    rw [dite_eq_left hw] at hz'
    have hz2 : (fun g => (z (Br.iota D.nbr i _ hw g) : TrV (eK (D.nbr i _ hw)) V)) ∈
        finiteCocycles (Br.PD D.loc D.nbr i _ hw) (repL (eK (D.nbr i _ hw)) ρV (Br.iota D.nbr i _ hw)) := hz'
    have hpt : ∀ x, f.1 x = φ (qV (z x)) + ((Br.WKO i ρ π) (x : GE D.nd) (φ m) - φ m) := by
      intro x
      have e := congrFun hab x
      change qV (z x) + (uRep (D.nd.O i) (M := M) r χ (x : GE D.nd) m - m) = φ.symm (f.1 x) at e
      rw [← hφ, ← map_sub, ← map_add (f := _), e, LinearEquiv.apply_symm_apply]
    have h1 : (fun g => Submodule.Quotient.mk (Ψ (z (Br.iota D.nbr i _ hw g))) :
        ↥(GK (D.nbr i _ hw).Kw) → (Fin D.R.r → Br.LLw (D.nbr i _ hw)) ⧸
          (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))).T) ∈
        HfD ((D.loc (D.nd.l i)).PD (D.nbr i _ hw).Kw)
          (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))) :=
      Submodule.mem_sup_left ⟨fun g => Ψ (z (Br.iota D.nbr i _ hw g)),
        (cocyclesFunctorial_holds _ _ _ _ _ _ _ _ _ _ _ _ Ψ hΨc hΨe _).2 hz2, rfl⟩
    have h2 : (fun g => actD (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))) g
          (Br.phi (D.nbr i _ hw) D.R.r (φ m)) - (show (Fin D.R.r → Br.LLw (D.nbr i _ hw)) ⧸ (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))).T from
            Br.phi (D.nbr i _ hw) D.R.r (φ m))) ∈
        HfD ((D.loc (D.nd.l i)).PD (D.nbr i _ hw).Kw)
          (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))) :=
      Submodule.mem_sup_right ⟨Br.phi (D.nbr i _ hw) D.R.r (φ m), rfl⟩
    have h3 := Submodule.add_mem _ h1 h2
    have hfun : (Br.Phi (D.nbr i _ hw) ((Br.WKO i ρ π).comp (decS D.nd (plOf i dc n))) f :
        ↥(GK (D.nbr i _ hw).Kw) → (Fin D.R.r → Br.LLw (D.nbr i _ hw)) ⧸
          (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))).T) =
        (fun g => Submodule.Quotient.mk (Ψ (z (Br.iota D.nbr i _ hw g)))) +
        (fun g => actD (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))) g
          (Br.phi (D.nbr i _ hw) D.R.r (φ m)) - (show (Fin D.R.r → Br.LLw (D.nbr i _ hw)) ⧸ (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))).T from
            Br.phi (D.nbr i _ hw) D.R.r (φ m))) := by
      funext g
      have hact : Br.phi (D.nbr i _ hw) D.R.r (Br.WKO i ρ π (Br.ι (D.nbr i _ hw) g : GE D.nd) (φ m)) =
          actD (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))) g
            (Br.phi (D.nbr i _ hw) D.R.r (φ m)) :=
        phi_act D i (plOf i dc n) hw ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n))) g (φ m)
      show Br.phi (D.nbr i _ hw) D.R.r (f.1 (Br.ι (D.nbr i _ hw) g)) = _
      rw [hpt, map_add (f := _), map_sub, hcomp]
      exact congrArg (fun t => Submodule.Quotient.mk (Ψ (z (Br.iota D.nbr i _ hw g))) +
        (t - Br.phi (D.nbr i _ hw) D.R.r (φ m))) hact
    have hmem : f ∈ (HfD ((D.loc (D.nd.l i)).PD (D.nbr i _ hw).Kw)
        (Br.lat (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n))))).comap
          (Br.Phi (D.nbr i _ hw) ((Br.WKO i ρ π).comp (decS D.nd (plOf i dc n)))) := by
      exact Submodule.mem_comap.mpr (hfun ▸ h3)
    exact ⟨f, hmem, rfl⟩

end Col

end Formalism.MainNotions.N.K.Sel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.BkLocCol =====

-- ===== clump member: Formalism.AdmissibleDesigns.ToH1Cocycles =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.ToH1Cocycles", "h": "module\n\npublic import Formalism.AdmissibleDesigns.InvariantsMapEquivariant\npublic import Formalism.AdmissibleDesigns.CoboundaryMemFiniteClasses\npublic import Formalism.AdmissibleDesigns.FgTopContinuousLinearMap\npublic import Formalism.WachLatticeTwists.RealDisplaySplitting.RealDisplayProofs.SurjectionOfRankOneIdempotent\npublic import Formalism.AdmissibleDesigns.BkLocCol\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Classical

namespace Formalism.MainNotions.N.K.Bk

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.MainNotions Formalism.MainNotions.N
  Formalism.MainNotions.N.K Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N.KHf Formalism.RepresentationBoundsCohomology.SF Formalism.MainNotions.N.K.Sel

section Col

variable {D : D7} (i : D.nd.Loc) (dc : TruncatedSeriesCountingIdentities.Decl D i) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]

abbrev VB : Type :=
  LatM (D.nd.O i) (FractionRing (D.nd.O i)) {a // RepresentationBoundsCohomology.blk D.R a = 0} (Dd.ρk 0).toRingHom

abbrev qB : VB i Dd →ₗ[D.nd.O i] blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0 :=
  qVM (D.nd.O i) {a // RepresentationBoundsCohomology.blk D.R a = 0} (Dd.ρk 0).toRingHom

def psiB {w : HeightOneSpectrum (𝓞 D.host.E)} (hw : w ∈ placesOver D.host.E (D.nd.l i)) :
    TrV (eK (D.nbr i w hw)) (VB i Dd) →ₗ[Br.LLw (D.nbr i w hw)] (Fin D.R.r → Br.LLw (D.nbr i w hw)) where
  toFun v a := eK (D.nbr i w hw) ((show VB i Dd from v) (H0.e0 a))
  map_add' u v := by
    funext a
    exact map_add (eK (D.nbr i w hw)) _ _
  map_smul' c v := by
    funext a
    show eK (D.nbr i w hw) ((eK (D.nbr i w hw)).symm c * (show VB i Dd from v) (H0.e0 a)) =
      c * eK (D.nbr i w hw) ((show VB i Dd from v) (H0.e0 a))
    rw [map_mul, RingEquiv.apply_symm_apply]

omit hH0Fin
  [∀ k, SMulCommClass Dd.R' (D.nd.O i)
    (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)] in
theorem psiB_apply {w : HeightOneSpectrum (𝓞 D.host.E)} (hw : w ∈ placesOver D.host.E (D.nd.l i))
    (v : TrV (eK (D.nbr i w hw)) (VB i Dd)) (a : Fin D.R.r) :
    psiB i Dd hw v a = eK (D.nbr i w hw) ((show VB i Dd from v) (H0.e0 a)) := rfl

omit hH0Fin
  [∀ k, SMulCommClass Dd.R' (D.nd.O i)
    (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)] in
theorem psiB_cont {w : HeightOneSpectrum (𝓞 D.host.E)} (hw : w ∈ placesOver D.host.E (D.nd.l i)) :
    Continuous (psiB i Dd hw) :=
  IsModuleTopology.continuous_of_linearMap (psiB i Dd hw)



omit hH0Fin
  [∀ k, SMulCommClass Dd.R' (D.nd.O i)
    (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)] in
theorem psiB_comp {w : HeightOneSpectrum (𝓞 D.host.E)} (hw : w ∈ placesOver D.host.E (D.nd.l i))
    (v : VB i Dd) :
    Br.phi (D.nbr i w hw) D.R.r (phi0 i Dd (qB i Dd v)) = Submodule.Quotient.mk (psiB i Dd hw v) := by
  have h1 : phi0 i Dd (qB i Dd v) =
      (Submodule.Quotient.mk (fun a => v (H0.e0 a)) : KOG (D.nd.O i) D.R.r) := by
    show (H0.kogEq D.R.r).symm (fun a => (qB i Dd v) (H0.e0 a)) = _
    apply (H0.kogEq D.R.r).injective
    rw [LinearEquiv.apply_symm_apply, H0.kogEq_apply, H0.kogTo_mk]
    rfl
  rw [h1]
  rfl

end Col

section Eqv

variable {D : D7} {i : D.nd.Loc} (dc : TruncatedSeriesCountingIdentities.Decl D i) {r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i))}
  {ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))} {π : D.nd.X i}
  {g0 : GE D.nd} {eB e₁ s : D.nd.X i → MatN D.nd i}
  {Dd : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R)}
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]




omit hH0Fin
  [∀ k, SMulCommClass Dd.R' (D.nd.O i)
    (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)] in
theorem psiB_equiv
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π) (n : ℕ) (hw : plOf i dc n ∈ placesOver D.host.E (D.nd.l i))
    (g : ↥(GK (D.nbr i _ hw).Kw)) (v : TrV (eK (D.nbr i _ hw)) (VB i Dd)) :
    psiB i Dd hw (repL (eK (D.nbr i _ hw))
        (resRep (uRep (D.nd.O i) (M := VB i Dd) Dd.r Dd.χ) (decs D.host.E (Aw i dc) n))
        (Br.iota D.nbr i _ hw) g v) =
      matRep (Br.locM (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n)))) g (psiB i Dd hw v) := by
  funext a
  rw [psiB_apply]
  show _ = ∑ b, (Br.locM (D.nbr i _ hw) ((WpO D.nd i ρ π).comp (decS D.nd (plOf i dc n))) g) a b *
    psiB i Dd hw v b
  show eK (D.nbr i _ hw) (∑ c, (Dd.ρk 0 (uElt Dd.r Dd.χ ((Br.iota D.nbr i _ hw g : decs D.host.E (Aw i dc) n) : GE D.nd)))
      (H0.e0 a) c • (show VB i Dd from v) c) = _

  rw [map_sum, ← Equiv.sum_comp (H0.e0 (D := D))]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [H0.unipotent_block_zero_entry hD hN, Algebra.smul_def, map_mul, eK_apply, Br.toLLK_alg]
  rfl

end Eqv

section Row

variable {D : D7} (i : D.nd.Loc) (dc : TruncatedSeriesCountingIdentities.Decl D i)
  [TopologicalSpace (FractionRing (D.nd.O i))] [IsTopologicalAddGroup (FractionRing (D.nd.O i))]
  [ContinuousSMul (D.nd.O i) (FractionRing (D.nd.O i))]
  (VT VT' : ℕ → Type)
  [∀ w, AddCommGroup (VT w)] [∀ w, Module (D.nd.O i) (VT w)] [∀ w, TopologicalSpace (VT w)]
  [∀ w, IsTopologicalAddGroup (VT w)] [∀ w, ContinuousSMul (D.nd.O i) (VT w)]
  [∀ w, Module (FractionRing (D.nd.O i)) (VT w)] [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (VT w)]
  [∀ w, AddCommGroup (VT' w)] [∀ w, Module (D.nd.O i) (VT' w)] [∀ w, TopologicalSpace (VT' w)]
  [∀ w, IsTopologicalAddGroup (VT' w)] [∀ w, ContinuousSMul (D.nd.O i) (VT' w)]
  [∀ w, Module (FractionRing (D.nd.O i)) (VT' w)] [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (VT' w)]
  (Dat : ∀ w, Formalism.RepresentationBoundsCohomology.LOC.LatData (D.nd.O i) ↥(Γn i dc w) (VT w) (VT' w))
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT)]
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT)]
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT')]
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT')]

omit hH0Fin [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (VT' w)]
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT')]
  [∀ w, Module (FractionRing (D.nd.O i)) (VT' w)]
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT')] in
theorem hfW_rep (n : ℕ) [ContinuousConstSMul (FractionRing (D.nd.O i)) (VT n)] (h : ReciprocityTheory.Gal.H1 (Dat n).ρT)
    (hh : h ∈ HfW i dc VT VT' Dat n) :
    ∃ c : ReciprocityTheory.Gal.Z1 (Dat n).ρT,
      Submodule.mkQ ((ReciprocityTheory.Gal.B1 (Dat n).ρT).comap (ReciprocityTheory.Gal.Z1 (Dat n).ρT).subtype) c = h ∧
      c.1 ∈ fZ i dc n (Dat n).ρT := by
  let S : Submodule (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat n).ρT) :=
    { carrier := {a | ∃ c : ReciprocityTheory.Gal.Z1 (Dat n).ρT,
        Submodule.mkQ ((ReciprocityTheory.Gal.B1 (Dat n).ρT).comap (ReciprocityTheory.Gal.Z1 (Dat n).ρT).subtype) c = a ∧
        c.1 ∈ fZ i dc n (Dat n).ρT}
      zero_mem' := ⟨0, map_zero _, (fZ i dc n (Dat n).ρT).zero_mem⟩
      add_mem' := by
        rintro a b ⟨c, rfl, hc⟩ ⟨c', rfl, hc'⟩
        exact ⟨c + c', map_add _ _ _, (fZ i dc n (Dat n).ρT).add_mem hc hc'⟩
      smul_mem' := by
        rintro k a ⟨c, rfl, hc⟩
        obtain ⟨kc, hkc, hmk⟩ := KBKa.mk_smul (Dat n).ρT k c
        refine ⟨kc, hmk, ?_⟩
        rw [hkc]
        exact (fZ i dc n (Dat n).ρT).smul_mem k hc }
  have hle : HfW i dc VT VT' Dat n ≤ S := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨c, hc, rfl⟩
    exact ⟨c, rfl, hc⟩
  exact hle hh




omit hH0Fin [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (VT' w)]
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT')]
  [∀ w, Module (FractionRing (D.nd.O i)) (VT' w)]
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (Dat w).ρT')] in
theorem frow_le_col (n : ℕ) [ContinuousConstSMul (FractionRing (D.nd.O i)) (VT n)]
    {M : Type} [AddCommGroup M] [Module (D.nd.O i) M] (ρM : Representation (D.nd.O i) ↥(Γn i dc n) M)
    (u : M ≃ₗ[D.nd.O i] (VT n ⧸ (Dat n).T)) (hu : ∀ g m, u (ρM g m) = (Dat n).ρA g (u m))
    {V : Type} [AddCommGroup V] [Module (FractionRing (D.nd.O i)) V] [Module (D.nd.O i) V]
    [IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) V]
    (ρV : Representation (D.nd.O i) ↥(Γn i dc n) V) (qV : V →ₗ[D.nd.O i] M) (f : VT n →ₗ[D.nd.O i] V)
    (hf : ∀ g v, f ((Dat n).ρT g v) = ρV g (f v))
    (hq : ∀ x, u.symm (Submodule.Quotient.mk x) = qV (f x)) :
    (((HfW i dc VT VT' Dat n).restrictScalars (D.nd.O i)).map (Dat n).q).map (kRow (Dat n) ρM u hu) ≤
      F0col i dc n ρV ρM qV := by
  intro x hx
  obtain ⟨y, hy, rfl⟩ := Submodule.mem_map.1 hx
  obtain ⟨h, hh, rfl⟩ := Submodule.mem_map.1 hy
  obtain ⟨c, rfl, hcZ⟩ := hfW_rep i dc VT VT' Dat n h hh
  have hsym : ∀ g v, u.symm (Submodule.Quotient.mk ((Dat n).ρT g v)) =
      ρM g (u.symm (Submodule.Quotient.mk v)) := fun g v =>
    ReciprocityTheory.ChartRestriction.T2.trCompat_symm (MulEquiv.refl _) u ρM (Dat n).ρA hu g (Submodule.Quotient.mk v)
  have hcoc : (fun g => u.symm (Submodule.Quotient.mk (c.1 g))) ∈ coZ1s ρM := by
    intro g g'
    have e := c.2.2 g g'
    simp only at e ⊢
    rw [e, Submodule.Quotient.mk_add, map_add (f := _), hsym]
  have hk : kRow (Dat n) ρM u hu ((Dat n).q (Submodule.mkQ _ c)) =
      Submodule.mkQ _ (⟨_, hcoc⟩ : coZ1s ρM) := by
    show ReciprocityTheory.ChartRestriction.T2.traceH1 (MulEquiv.refl _) u ρM (Dat n).ρA hu
      (ReciprocityTheory.ChartRestriction.T2.toH1Cocycles (Dat n).ρA ((Dat n).q (Submodule.mkQ _ c))) = _
    simp only [Formalism.RepresentationBoundsCohomology.LOC.LatData.q, ReciprocityTheory.Gal.mapH1, ReciprocityTheory.ChartRestriction.T2.toH1Cocycles, ReciprocityTheory.ChartRestriction.T2.traceH1,
      Submodule.mkQ_apply, Submodule.mapQ_apply]
    congr 1
  rw [hk]
  refine Submodule.mem_map_of_mem (Submodule.mem_comap.2 (Submodule.mem_sup_left
    ⟨fun g => f (c.1 g), fZ_map i dc (Dat n).ρT ρV f hf _ hcZ, ?_⟩))
  funext g
  exact (hq _).symm

end Row

section LatRec

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [TopologicalSpace O] [TopologicalSpace (FractionRing O)]
  [IsTopologicalAddGroup (FractionRing O)] [ContinuousSMul O (FractionRing O)]
  {X' d : Type} [Fintype d] [DecidableEq d] {R' : Subalgebra O (X' → Matrix d d (FractionRing O))}
  {Tc : Type} [CommRing Tc] [Algebra Tc R']
  {Ek Ω : Type} [Field Ek] [Field Ω] [Algebra Ek Ω]
  (r : (Ω ≃ₐ[Ek] Ω) →* R') (χ : (Ω ≃ₐ[Ek] Ω) →* Tcˣ) {t : ℕ} (bl : d → Fin (t + 1))
  (ρk : ∀ k : Fin (t + 1), R' →ₐ[O] Matrix {a // bl a = k} {a // bl a = k} O)
  (ε : (Ω ≃ₐ[Ek] Ω) →* Oˣ) (Aw : ℕ → ValuationSubring Ω)
  (hK : ContinuousMul (FractionRing O)) (hε : Continuous fun g => ((ε g : Oˣ) : O))
  (hM : ∀ a b, Continuous fun g => KLat.M0 r χ bl ρk g a b)

def idV (w : ℕ) :
    KLat.VT (O := O) bl w →ₗ[O] LatM O (FractionRing O) {a // bl a = 0} (ρk 0).toRingHom where
  toFun v := v
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

omit hH0Fin in
theorem idV_equiv (w : ℕ) (g : decs Ek Aw w) (v : KLat.VT (O := O) bl w) :
    idV bl ρk w ((KLat.Dat r χ bl ρk ε Aw hK hε hM w).ρT g v) =
      resRep (uRep O (M := LatM O (FractionRing O) {a // bl a = 0} (ρk 0).toRingHom) r χ) (decs Ek Aw w) g
        (idV bl ρk w v) := by
  funext a
  exact KLat.matK_mulVec _ _ a

omit hH0Fin in
theorem uD_symm_mk (w : ℕ) (x : KLat.VT (O := O) bl w) :
    (KLat.uD r χ bl ρk ε Aw hK hε hM w).symm (Submodule.Quotient.mk x) =
      qVM O {a // bl a = 0} (ρk 0).toRingHom (idV bl ρk w x) := by
  rfl

end LatRec

section Final

variable {D : D7} (i : D.nd.Loc) (dc : TruncatedSeriesCountingIdentities.Decl D i) {r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i))}
  {ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))} {π : D.nd.X i}
  {g0 : GE D.nd} {eB e₁ s : D.nd.X i → MatN D.nd i}
  (Dd : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  [TopologicalSpace (FractionRing (D.nd.O i))] [IsTopologicalAddGroup (FractionRing (D.nd.O i))]
  [ContinuousSMul (D.nd.O i) (FractionRing (D.nd.O i))]
  (hK : ContinuousMul (FractionRing (D.nd.O i)))
  (hε : Continuous fun g => ((epsU D.nd i g : (D.nd.O i)ˣ) : D.nd.O i))
  (hM : ∀ a b, Continuous fun g => KLat.M0 Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk g a b)

abbrev rhoM (n : ℕ) : Representation (D.nd.O i) ↥(Γn i dc n) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) :=
  resRep (uRep (D.nd.O i) (M := blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ) (decs D.host.E (Aw i dc) n)

abbrev rhoV (n : ℕ) : Representation (D.nd.O i) ↥(Γn i dc n) (VB i Dd) :=
  resRep (uRep (D.nd.O i) (M := VB i Dd) Dd.r Dd.χ) (decs D.host.E (Aw i dc) n)

abbrev DatK (w : ℕ) := KLat.Dat Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) hK hε hM w

abbrev uDK (w : ℕ) := KLat.uD Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) hK hε hM w

variable [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT)]
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT)]
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')]
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')]

def FrowK (n : ℕ) : Submodule (D.nd.O i) (H1z (rhoM i dc Dd n)) :=
  (((HfW i dc (KLat.VT (O := D.nd.O i) (RepresentationBoundsCohomology.blk D.R)) (KLat.VT (O := D.nd.O i) (RepresentationBoundsCohomology.blk D.R))
      (DatK i dc Dd hK hε hM) n).restrictScalars (D.nd.O i)).map (DatK i dc Dd hK hε hM n).q).map
    (kRow (DatK i dc Dd hK hε hM n) (rhoM i dc Dd n) (uDK i dc Dd hK hε hM n)
      (KLat.huD Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) hK hε hM n))

def FcolK (n : ℕ) : Submodule (D.nd.O i) (H1z (rhoM i dc Dd n)) :=
  F0col i dc n (rhoV i dc Dd n) (rhoM i dc Dd n) (qB i Dd)

def FK (n : ℕ) : Submodule (D.nd.O i) (H1z (rhoM i dc Dd n)) :=
  Fρ i dc (rowsN i dc) (rhoM i dc Dd) (FrowK i dc Dd hK hε hM) (FcolK i dc Dd) n



omit hH0Fin
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i))
    (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')]
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')] in
theorem fK_le (n : ℕ) : FK i dc Dd hK hε hM n ≤ FcolK i dc Dd n := by
  unfold FK Fρ
  split_ifs
  · haveI : ContinuousMul (FractionRing (D.nd.O i)) := hK
    exact frow_le_col i dc _ _ (DatK i dc Dd hK hε hM) n (rhoM i dc Dd n) (uDK i dc Dd hK hε hM n)
      (KLat.huD Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) hK hε hM n)
      (rhoV i dc Dd n) (qB i Dd) (idV (RepresentationBoundsCohomology.blk D.R) Dd.ρk n)
      (idV_equiv Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) hK hε hM n)
      (uD_symm_mk Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) hK hε hM n)
  · exact le_rfl




omit hH0Fin
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i))
    (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')]
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')] in
theorem bkLoc_rec
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π) :
    BkLoc i dc ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (phi0 i Dd) (invariants_map_equivariant hD hN)
      (FK i dc Dd hK hε hM) := by
  intro n _ hw y hy
  exact bkLoc_col i dc ρ π _ Dd.r Dd.χ (phi0 i Dd) (invariants_map_equivariant hD hN) n hw (rhoV i dc Dd n) (qB i Dd)
    (psiB i Dd hw) (psiB_cont i Dd hw) (psiB_equiv dc hD hN n hw) (psiB_comp i Dd hw) y
    (fK_le i dc Dd hK hε hM n hy)

omit hH0Fin
  [∀ w, IsScalarTower (D.nd.O i) (FractionRing (D.nd.O i))
    (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')]
  [∀ w, Module (FractionRing (D.nd.O i)) (ReciprocityTheory.Gal.H1 (DatK i dc Dd hK hε hM w).ρT')] in
theorem tieSel1_K
    (hD : Formalism.RepresentationBoundsCohomology.ringDataObjects.RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
    (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π) :
    TieSel1 i ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (colIdx i dc) (decs D.host.E (Aw i dc)) (rowsN i dc)
      (FK i dc Dd hK hε hM) (K.QS.Io i) :=
  tieSel1_rec_loc dc hD hN _ (bkLoc_rec i dc Dd hK hε hM hD hN)

end Final

end Formalism.MainNotions.N.K.Bk

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.ToH1Cocycles =====

-- ===== clump member: Formalism.AdmissibleDesigns.SelFSOfNormAt =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.SelFSOfNormAt", "h": "module\n\npublic import Formalism.AdmissibleDesigns.SelmerInequalityOfInputs\npublic import Formalism.AdmissibleDesigns.ToH1Cocycles\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.StB

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.TorsionBoundCyclotomic Formalism.RepresentationBoundsCohomology.JL Formalism.RepresentationBoundsCohomology.JT Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF Formalism.MainNotions.N.K.St

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Rho2

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)




theorem selFS_of_normAt (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π) :
    TieSel1 i ρ π (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ (colIdx i dc) (decs D.host.E (Aw i dc))
      (rowsN i dc) (FS i r π dc g0 eB e₁ s Dd hD hc 0) (QS.Io i) := by
  letI := fun w => modS i r π dc g0 eB e₁ s Dd hD hc w
  haveI := fun w => KLat.towerT Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) (hKm i) (hEps i)
    (hM0 i r π g0 eB e₁ s Dd hD hc) w
  letI := fun w => modS' i r π dc g0 eB e₁ s Dd hD hc w
  haveI := fun w => KLat.towerT' Dd.r Dd.χ (RepresentationBoundsCohomology.blk D.R) Dd.ρk (epsU D.nd i) (Aw i dc) (hKm i) (hEps i)
    (hM0 i r π g0 eB e₁ s Dd hD hc) w
  exact Bk.tieSel1_K i dc Dd (hKm i) (hEps i) (hM0 i r π g0 eB e₁ s Dd hD hc) hD hN


end Rho2

end Formalism.MainNotions.N.K.StB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.SelFSOfNormAt =====

-- ===== clump member: Formalism.AdmissibleDesigns.HRhoFull =====
-- clump-header: {"m": "Formalism.AdmissibleDesigns.HRhoFull", "h": "module\n\npublic import Formalism.AdmissibleDesigns.GlobalIndexTheoremPlacesOfRNAdm\npublic import Formalism.AdmissibleDesigns.MemImageOfTensorSum\npublic import Formalism.AdmissibleDesigns.SelmerInequalityOfInputs\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LargeLevelLemmas\npublic import Formalism.AdmissibleDesigns.FirstBlockColumnCondition\npublic import Formalism.AdmissibleDesigns.RankFfNormAt\npublic import Formalism.AdmissibleDesigns.SelFSOfNormAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.AdmissibleDesigns.MemIntegralSpanIffImage\n\n"}
section -- clump:auto
@[expose] public section

variable [hT2Core : Fact ReciprocityTheory.ChartRestriction.T2.Core] [hH0Fin : Fact Formalism.MainNotions.N.K.H0.FinCore]

noncomputable section

open Finset Classical Formalism.BasicNotions

namespace Formalism.MainNotions.N.K.StB

open Formalism.NG Formalism.RepresentationBoundsCohomology.BR Formalism.RepresentationBoundsCohomology.TorsionBoundCyclotomic Formalism.RepresentationBoundsCohomology.JL Formalism.RepresentationBoundsCohomology.JT Formalism.RepresentationBoundsCohomology.LocallyConstantCohomology Formalism.RepresentationBoundsCohomology.FIN
open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.RepresentationBoundsCohomology.LOC
open ReciprocityTheory.ChartRestriction.T2 (PadicCoeff FracTop IsFGTop cupFG)
open Formalism.RepresentationBoundsCohomology.ringDataObjects (RingData RingDef)
open Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.N.K Formalism.RepresentationBoundsCohomology.SF Formalism.MainNotions.N.K.St

attribute [local instance 2000] Topo.fracTopology Topo.rTopology

section Rho3

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd r) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i r)
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)




theorem hRho_full (hN : RepresentationBoundsCohomology.NormAt D.nd r ρ π)
    (hG4 : TruncatedSeriesCountingIdentities.admG4 i r) (hdec : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π) (hFin : LargeLevelLemmas.tateH1FinitenessAtPlacesOver i) :
    InRhoFixReal2 (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ Dd.e₁ (colIdx i dc) (decs D.host.E (Aw i dc))
      (jN i ρ π dc) (rowsN i dc) (sN i ρ π) (tensM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (v1S i Dd hT hrk)
      (KFin.κ i dc Dd ρ π)
      (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (qVM (D.nd.O i) _ (Dd.ρk 0).toRingHom)
      (fun l => KHf.Ff i dc Dd.r Dd.χ (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) l) (KFin.κz i dc Dd ρ π)
      (FS i r π dc g0 eB e₁ s Dd hD hc 0)
      (QS.Io i) (epsU D.nd i) (rho1 i Dd) (rho2 i Dd) (FirstSummandSubmodule (D.nd.O i) Dd.e₁).subtype (piS i Dd hT hrk)
      (gamM (Dd.ρk 0)) (lamS i Dd hT hrk) :=
  hRho_of i r ρ π dc g0 eB e₁ s Dd hD hc hT hrk hG4 hdec
    (fun l => KTate.finFf_rec (i := i) (dc := dc) (Dd := Dd) (r := r) (π := π) (g0 := g0) (eB := eB) (e₁ := e₁)
      (s := s) hFin hD hc l)
    (fun l => KTate.rankFf_normAt (i := i) (dc := dc) (Dd := Dd) (ρ := ρ) (π := π) (r := r) (g0 := g0) (eB := eB)
      (e₁ := e₁) (s := s) hD hN hc l)
    (selFS_of_normAt i r ρ π dc g0 eB e₁ s Dd hD hc hN)

end Rho3

section RhoN

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
  (dc : TruncatedSeriesCountingIdentities.Decl D i) (g0 : GE D.nd) (eB e₁ s : D.nd.X i → MatN D.nd i)
  (Dd : RingData (D.nd.O i) (D.nd.X i) (Fin D.R.nV) (GE D.nd) D.R.t (RepresentationBoundsCohomology.blk D.R))
  [∀ k, SMulCommClass Dd.R' (D.nd.O i) (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk k)]
  (hD : RingDef (D.nd.O i) (D.nd.T i) (RepresentationBoundsCohomology.repX D.nd (Norm.rN i r ρ π)) π (chiU D.nd i 1) (epsU D.nd i) g0 eB e₁ s Dd)
  (hc : TruncatedSeriesCountingIdentities.FamilyContinuous (D := D) i (Norm.rN i r ρ π))
  (hT : Dd.Top (D.nd.T i) (RepresentationBoundsCohomology.one_le_letterBlockLength D.R))
  (hrk : ((Dd.ρk 0 Dd.e₁).map (algebraMap (D.nd.O i) (FractionRing (D.nd.O i)))).rank = 1)




theorem hRho_rN (hG4 : TruncatedSeriesCountingIdentities.admG4 i r) (hdec : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π) (hFin : LargeLevelLemmas.tateH1FinitenessAtPlacesOver i) :
    InRhoFixReal2 (blockRestrictedRepresentationType (RepresentationBoundsCohomology.blk D.R) Dd.ρk 0) Dd.r Dd.χ Dd.e₁ (colIdx i dc) (decs D.host.E (Aw i dc))
      (jN i ρ π dc) (rowsN i dc) (sN i ρ π) (tensM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (v1S i Dd hT hrk)
      (KFin.κ i dc Dd ρ π)
      (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) (qVM (D.nd.O i) _ (Dd.ρk 0).toRingHom)
      (fun l => KHf.Ff i dc Dd.r Dd.χ (iLM (D.nd.O i) _ (Dd.ρk 0).toRingHom) l) (KFin.κz i dc Dd ρ π)
      (FS i (Norm.rN i r ρ π) π dc g0 eB e₁ s Dd hD hc 0)
      (QS.Io i) (epsU D.nd i) (rho1 i Dd) (rho2 i Dd) (FirstSummandSubmodule (D.nd.O i) Dd.e₁).subtype (piS i Dd hT hrk)
      (gamM (Dd.ρk 0)) (lamS i Dd hT hrk) :=
  hRho_full i (Norm.rN i r ρ π) ρ π dc g0 eB e₁ s Dd hD hc hT hrk (Norm.normAt_rN i r ρ π)
    (Norm.admG4_rN i r ρ π hdec hG4) (Norm.decomposes_normalized i r ρ π) hFin

end RhoN

end Formalism.MainNotions.N.K.StB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.AdmissibleDesigns.HRhoFull =====

module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ParLaws
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.PublishedInputsThirdLayer
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ThetaDataExists
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EventuallySizesCongruencesHostFactsColumnChoicesStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.Auxiliary
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.BaseChangeLocalCompatibleAllPlaces
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.GoodRowCuspParamOfLiftStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NOProd
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SphericalLocalComponentAtSmallPlaces
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.MtInputOfNTrue, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CuspParameterAtMemberOfParallelCopy

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.MtInputOfNTrue =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.MtInputOfNTrue", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ParLaws\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\n\n"}
section -- clump:auto
@[expose] public section



section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.TypeRec.factG
namespace GlobalTheory.HeightCounting.Up.ParCopy

theorem parIn_of_nTrue_alt {hL : _root_.UpperTheory.Zero.LLC.RecTExists} {D' : D7} {cf' : CharFrame D'} {C' : NChoice D'}
    {tp' : TupTied D' cf' C'} (nt : _root_.GlobalTheory.HeightCounting.NormChoiceRealisation hL D' cf' C' tp') (rep' : D'.what₂.FT → NG.FinTyp D'.host.E D'.R.r)
    (hrep : HEq nt.rep rep') :
    ∃ Rw : RowSide D', HEq Rw.locR nt.A.row.locR ∧ Nonempty (_root_.GlobalTheory.HeightCounting.Up.ParityConditions hL D' cf' rep' Rw) := by
  obtain ⟨⟨D, cf, jE, A, cg, au, rep, row, low, Pq, S, hk, eig, θ, Bs, M, C, tp, ch, mt, big, L, Sp, Au, ss, eq⟩, pack⟩ := nt
  subst eq
  obtain ⟨-, h2⟩ := Sigma.mk.inj_iff.mp pack
  obtain ⟨hcf, -⟩ := Sigma.mk.inj_iff.mp (eq_of_heq h2)
  subst hcf
  have hr : rep = rep' := eq_of_heq hrep
  subst hr
  let T : GlobalTheory.RowTie.WDTie (withLoc L).nd (withLoc L).naut := { A.wdT with }
  let Rw : RowSide (withLoc L) := { A.row with }
  refine ⟨Rw, HEq.rfl, ⟨{ T := T, lab := A.lab, chr := { A.chr with }, cg := { cg with }, A := { A.au with }, au := au, row := row }⟩⟩

theorem exists_mtInput_of_nTrue {hL : _root_.UpperTheory.Zero.LLC.RecTExists} {D' : D7} {cf' : CharFrame D'} {C' : NChoice D'}
    {tp' : TupTied D' cf' C'} (nt : _root_.GlobalTheory.HeightCounting.NormChoiceRealisation hL D' cf' C' tp') (M' : MtFam D') (hM : HEq (mtL nt.L nt.M) M') :
    ∃ tup Q, MtInput D' M' tup Q := by
  obtain ⟨⟨D, cf, jE, A, cg, au, rep, row, low, Pq, S, hk, eig, θ, Bs, M, C, tp, ch, mt, big, L, Sp, Au, ss, eq⟩, pack⟩ := nt
  subst eq
  have hm : mtL L M = M' := eq_of_heq hM
  subst hm
  exact ⟨tp.tup, C.Q, { mt with }⟩
end GlobalTheory.HeightCounting.Up.ParCopy
namespace GlobalTheory.HeightCounting.Up
end GlobalTheory.HeightCounting.Up
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.MtInputOfNTrue =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CuspParameterAtMemberOfParallelCopy =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CuspParameterAtMemberOfParallelCopy", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.PublishedInputsThirdLayer\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ThetaDataExists\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EventuallySizesCongruencesHostFactsColumnChoicesStatement\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.Auxiliary\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.BaseChangeLocalCompatibleAllPlaces\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.GoodRowCuspParamOfLiftStatement\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.MtInputOfNTrue\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NOProd\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SphericalLocalComponentAtSmallPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section



section
section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.TypeRec.factG
namespace GlobalTheory.HeightCounting.Up.ParCopy

theorem good_cusp_param_of_definite_heq_locR (hN : _root_.GlobalTheory.HeightCounting.Up.PublishedInputsThirdLayerAlt) (hL : _root_.UpperTheory.Zero.LLC.RecTExists) {D' : D7} {cf' : CharFrame D'} {C' : NChoice D'}
    {tp' : TupTied D' cf' C'} (nt : _root_.GlobalTheory.HeightCounting.NormChoiceRealisation hL D' cf' C' tp') (Rw0 : RowSide D') (h0 : HEq Rw0.locR nt.A.row.locR)
    (hLift : LiftAll D' Rw0) (hLoc : ∀ σ, RowLoc D' Rw0 σ) (hEFK : SphericalInertData.HypEFK D') (hCM : SphericalInertData.HypCM D')
    (hDef : ∀ j, 1 ≤ j → j ≤ D'.R.m → (D'.sp.V j).IsDefinite) (Rw : RowSide D') (hRw : HEq Rw.locR nt.A.row.locR) :
    GlobalTheory.IndefiniteRowSideFullHecke.CMTypeEmbeddings.GoodRowCuspParam D' Rw := by
  obtain ⟨⟨D, cf, jE, A, cg, au, rep, row, low, Pq, S, hk, eig, θ, Bs, M, C, tp, ch, mt, big, L, Sp, Au, ss, eq⟩, pack⟩ := nt
  subst eq
  have e0 : Rw0.locR = A.row.locR := eq_of_heq h0
  have e1 : Rw.locR = A.row.locR := eq_of_heq hRw
  have hpar : _root_.GlobalTheory.HeightCounting.Up.ParityConditions hL D cf rep A.row := ⟨A.wdT, A.lab, A.chr, cg, A.au, au, row⟩
  have hLaws := _root_.UpperTheory.GalN.par_laws_bare hN hL D cf rep A.row A.bare hpar
  have hconds := _root_.UpperTheory.BaseChangeIdentities.Conclusion1_alt_alt_alt hN.bc hN.what₂.bern hN.gen hN.std hL D A.wdT A.au cg au
  have hLift' : LiftAll D A.row := by
    intro j h1 h2 σ hσ
    obtain ⟨π, μ, hl⟩ := hLift j h1 h2 σ hσ
    refine ⟨π, μ, ⟨hl.csd, hl.unr, hl.sph, fun w hw => ?_, hl.eta, hl.inf⟩⟩
    have := hl.loc w hw
    rw [e0] at this
    exact this
  have hLoc' : ∀ σ, RowLoc D A.row σ := by
    intro σ w hw hk
    have := hLoc σ w hw hk
    rw [e0] at this
    exact this
  have hG := _root_.GlobalTheory.ParAsm.goodRowCuspParam_of_lift_alt D A.row hLaws hconds hEFK hCM hDef hLift' hLoc'
  intro j h1 h2 σ hσ hg
  obtain ⟨π, hπ⟩ := hG j h1 h2 σ hσ hg
  refine ⟨π, hπ.1, hπ.2.1, fun w hw => ?_, hπ.2.2.2⟩
  rw [e1]
  exact hπ.2.2.1 w hw
end GlobalTheory.HeightCounting.Up.ParCopy
namespace GlobalTheory.HeightCounting.Up
open GlobalTheory.HeightCounting.Up.ParCopy in
theorem cuspParameter_at_member_alt : _root_.GlobalTheory.HeightCounting.Up.PublishedInputsThirdLayerAlt → ∀ hL : _root_.UpperTheory.Zero.LLC.RecTExists, _root_.GlobalTheory.HeightCounting.Up.MemberAtLayerPoint hL (fun _ _ _ _ w Z _ _ _ _ _ c =>
    ∀ Rw : RowSide (w.D Z), HEq Rw.locR c.a.nt.A.row.locR → GlobalTheory.IndefiniteRowSideFullHecke.CMTypeEmbeddings.GoodRowCuspParam (w.D Z) Rw) := by
  intro hN hL
  have hlift := _root_.GlobalTheory.LiftRef.baseChange_local_compatible_all_places_alt hN hL
  have hloc := _root_.GlobalTheory.T.local_component_of_par_in_third_layer hN hL
  have hsz := GlobalTheory.T.eventually_sizes_congruences_hostFacts_columnChoices
  refine EvG.imp ((hlift.inter hloc).inter hsz) fun K _ _ _ _ H => ?_
  refine large₂.imp ((H.1.1.inter H.1.2).inter H.2) fun B f T _ h => ?_
  intro hKP w Z Wt p0 t nch n xd c hE _ hpin Rw hRw
  obtain ⟨⟨h1, h2⟩, h3⟩ := h
  obtain ⟨e⟩ := hE
  have e' : _root_.GlobalTheory.HeightCounting.RealExpansionExtraData (D := (w.st Z).toD7) c.row t.r.z.geo xd := e
  obtain ⟨Rw0, hRw0, ⟨hpar⟩⟩ := _root_.GlobalTheory.HeightCounting.Up.ParCopy.parIn_of_nTrue_alt c.a.nt _ c.row.rep_eq
  obtain ⟨tup, Q, hmt⟩ := _root_.GlobalTheory.HeightCounting.Up.ParCopy.exists_mtInput_of_nTrue c.a.nt c.a.all.gal.mt c.a.mt_eq
  have hLift := h1 hKP w hpin Z Wt t.hX t.r.z p0 t.r.Y t.r.intersectionNumber_baseChange t.exAt t.inGeo t.grp t.grpAt Rw0 hpar _ tup Q e'.ad hmt
  have hLoc := h2 hKP w hpin Z Wt t.hX t.r.z p0 t.r.Y t.r.intersectionNumber_baseChange t.exAt t.inGeo t.grp t.grpAt Rw0 hpar
  obtain ⟨-, -, -, hEFK, hCM, hDef, -⟩ := h3 hKP T w Z
  exact _root_.GlobalTheory.HeightCounting.Up.ParCopy.good_cusp_param_of_definite_heq_locR hN hL c.a.nt Rw0 hRw0 hLift hLoc hEFK hCM hDef Rw hRw
end GlobalTheory.HeightCounting.Up
end
section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.TypeRec.factG

end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CuspParameterAtMemberOfParallelCopy =====

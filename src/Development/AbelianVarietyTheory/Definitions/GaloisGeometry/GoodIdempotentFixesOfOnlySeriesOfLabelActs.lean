module

public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsUniqueVec
public import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.ResidualIrreducibleOfTheorem
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InjPrimeTo
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.UnlinkedProductIrreducible
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.DepthZeroJacquetInjective
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.LocalGlobalAboveL
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.RegularAlgebraicPurity
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.HeckeLAdicParameterAbove
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.HoweDualityGL
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.BernsteinUnitaryProductIrreducible
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.ChebotarevDegreeOneIffCheb
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsobaricDiscreteSelfDualStrongMultiplicityOne
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.HeckeLAdicCharacterAboveIff
public import Formalism.SharpRestriction.LevelLetterCocycles.PlaceLabelTeichmuller
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

@[expose] public section

noncomputable section

namespace GlobalTheory.NRows

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N GlobalTheory.RowCopy

structure Hypotheses₂ : Prop where
  bz : GlobalTheory.Published.BernsteinZelevinskyFiniteness
  bern : GlobalTheory.Published.BernsteinUnitaryProductIrreducible
  geo : GlobalTheory.Published.GeometricLemma
  unl : GlobalTheory.Published.UnlinkedProductIrreducible
  mp : GlobalTheory.Published.DepthZeroJacquetInjective
  howe : GlobalTheory.Published.HoweDualityGL
  js : GlobalTheory.Published.JacquetShalika
  fin : GlobalTheory.Published.AutomorphicFormsFiniteGL
  temp : GlobalTheory.Published.CohomologicalCsdTempered
  gal : GlobalTheory.Published.GaloisRepOfPolarizedCuspidal
  car : GlobalTheory.Published.LocalGlobalAboveL
  clo : GlobalTheory.Published.RegularAlgebraicPurity
  art : GlobalTheory.Published.GlobalArtinReciprocity
  chA : GlobalTheory.Published.HeckeLAdicCharacterAbove
  chP : GlobalTheory.Published.HeckeLAdicParameterAbove
  berger : GlobalTheory.Published.DeRhamPotSemistable
  cheb : GlobalTheory.Published.ChebotarevDegreeOne

structure RowsB (D : D7) : Prop where
  rowSize : RowSize D
  a3 : SumRepresentations.adm3 D
  a4 : SumRepresentations.ArchimedeanSignatureMatching D
  thetaOne : ThetaOne D

structure RowsC (D : D7) : Prop where
  rho : GlobalDatumResidualRepCondition D
  dz : GlobalDatumDepthZeroCondition D
  parUp : ∀ i, ParUpRec D.nd D.naut i
  downMem : ∀ i, DownMemRec D.nd D.naut i
  goodPart : ∀ i, GoodPartRec D.nd D.naut i

def LamUsed (D : D7) : Prop :=
  ∀ μ, (μ = D.what₂.mu0 ∨ ∃ w, μ = D.what₂.muAt w) → ∀ j : Fin D.R.m, LamPos D μ (j.1 + 1)

def GoodIdempotentFixesLocalisationForms (D : D7) : Prop :=
  ∀ (i : D.nd.Loc) (σ' : D.ntypes.Par), ∀ F ∈ D.ntypes.MtPar (D.nd.mu i) (D.nd.j i) σ',
    D.ntypes.goodPar σ' → D.ntypes.onMt (D.nd.mu i) (D.nd.j i) D.ntypes.e0 F = F

def GoodIdempotentReadsAsGoodTypeProjector {D : D7} {cf : Formalism.L2.Host.CharFrame D} {nch : NChoice D} {tp : Formalism.L2.Host.TupTied D cf nch}
    (X : GlobalTheory.NJoin.RealAt D cf nch tp) : Prop :=
  ∀ μ (hμ : Formalism.IndefR.RecTie.Used0 D μ) (j : Fin D.R.m) (f : D.what₂.Mt μ (j.1 + 1)) y,
    X.R.extV j (X.tupT μ) y = X.fn hμ j f →
      (D.ntypes.onMt μ (j.1 + 1) D.ntypes.e0 f = f ↔ GlobalTheory.DownLift.GoodVt X.R j (X.tupT μ) y)

structure Tied (hL : GlobalTheory.Published.LocalLanglandsGL) (D : D7) : Type 1 where
  P : GlobalTheory.NPin.Pin hL D
  X : GlobalTheory.NJoin.RealAt D P.cf P.C P.tp
  agree : GlobalTheory.NJoin.Agree X P.M P.rep
  e0read : GoodIdempotentReadsAsGoodTypeProjector X

structure Named {hL : GlobalTheory.Published.LocalLanglandsGL} {D : D7} (T : Tied hL D) : Prop where
  hypO : SumRepresentations.hypO D
  c1 : GlobalDatumCompatibility D
  bc : SphericalInertData.Conclusion1 D
  lam : LamUsed D
  isot : SumRepresentations.adm8 D
  ser : GlobalTheory.TypeLeaf.SerLoc D
  typeNZ : ∀ j t, GlobalTheory.DownLift.TypeNZ T.X.R j t

structure Inputs (hL : GlobalTheory.Published.LocalLanglandsGL) (D : D7) : Type 1 extends toRowSideFamily : Tied hL D where
  named : Named toRowSideFamily

theorem LamUsed.at {D : D7} (h : LamUsed D) {μ} (hμ : μ = D.what₂.mu0 ∨ ∃ w, μ = D.what₂.muAt w) {j : ℕ}
    (h1 : 1 ≤ j) (h2 : j ≤ D.R.m) : LamPos D μ j := by
  obtain ⟨k, rfl⟩ : ∃ k, j = k + 1 := ⟨j - 1, by omega⟩
  exact h μ hμ ⟨k, by omega⟩

theorem LamUsed.loc {D : D7} (h : LamUsed D) (i : D.nd.Loc) : LamPos D (D.nd.mu i) (D.nd.j i) :=
  h.at (Or.inr ⟨D.nd.w i, (D.nd.mu_w i).trans ((D.what₂.muAt_or _).resolve_left (D.nd.w_tw i)).symm⟩)
    (D.nd.j_range i).1 (D.nd.j_range i).2

theorem goodIdempotentFixes_of_onlySeriesOfLabelActs {D : D7} (h : GlobalTheory.TypeLeaf.SerLoc D) : GoodIdempotentFixesLocalisationForms D := fun i σ' F hF hg =>
  (PlaceLabelTeichmuller.idempotent_action_on_forms D (D.ntypes.cenMt (D.nd.mu i) (D.nd.j i)) σ' F fun k v f hf => h i σ' k v f F hF hf).1 hg

namespace Inputs

variable {hL : GlobalTheory.Published.LocalLanglandsGL} {D : D7} (I : Inputs hL D)
include I

theorem c1 : GlobalDatumCompatibility D := I.named.c1

theorem bc : SphericalInertData.Conclusion1 D := I.named.bc

theorem lam : LamUsed D := I.named.lam

theorem ser : GlobalTheory.TypeLeaf.SerLoc D := I.named.ser

end Inputs

end GlobalTheory.NRows

end

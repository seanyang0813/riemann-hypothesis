module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareStanding
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilRepresentationVacuumCosetVectorsGrid
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictsToQuadraticSignPowOfRestrictsToQuadratiStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUnramifiedHeckeCharHalfExponentRestrictQua
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsAtAndSeedFacts
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasChr
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open Classical
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ alpha beta Num skewGram blk conjU)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model HasExp SplitsFully Chars)

namespace GlobalTheory.SquareChars

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts}

theorem isHeckeChar_mul' {c c' : (AE D)ˣ →* Circle} (h : IsHeckeChar D c) (h' : IsHeckeChar D c') :
    IsHeckeChar D (c * c') :=
  ⟨h.1.mul h'.1, fun x => by rw [MonoidHom.mul_apply, h.2 x, h'.2 x, mul_one]⟩

theorem chi_hecke_res (G : GridData L sc) {μ₀ : T} (hL : L.Is μ₀) (i : Fin D.R.m) :
    IsHeckeChar D (G.ch.chi (D.R.m - i)) ∧ ResEta D (G.ch.chi (D.R.m - i)) 0 := by
  have h1 : 1 ≤ D.R.m - (i : ℕ) := by omega
  have h2 : D.R.m - (i : ℕ) ≤ D.R.m := Nat.sub_le _ _
  have hc := G.ch.chi_eq _ h1 h2
  refine ⟨⟨hc.1.1, hc.1.2⟩, ?_⟩
  have hres := GlobalTheory.Mem.EtaTilde.isEta_res D L.eta L.C.eta hL.eta L.C.isEta
  refine ⟨⟨_, hres⟩, fun η _ a => ?_⟩
  rw [pow_zero, GlobalTheory.GridWeil.triv_base hc (G.ch.triv _ h1 h2) a]

theorem rank_parity (G : GridData L sc) {μ₀ : T} (hL : L.Is μ₀) (i j : Fin D.R.m) :
    (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.eps G i j) % 2 = (spW G i j).rank % 2 ∧
      (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.eps G i j) % 2 = (spW₁ G i j).rank % 2 := by
  have r : ∀ a b, a ≤ D.R.m → b ≤ D.R.m → (G.V (.grid a b)).rank = rankV D a b :=
    fun a b ha hb => (node_isV G hL (X := .grid a b) ⟨ha, hb⟩).rank
  have hi := i.2
  have hj := j.2
  have e1 : (spW G i j).rank = rankV D (i + 1) (j + 1) := r _ _ (by omega) (by omega)
  have e2 : (spW₁ G i j).rank = rankV D i j := r _ _ (by omega) (by omega)
  unfold GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.eps
  rw [e1, e2]
  obtain ⟨a, ha⟩ := D.R.t_odd
  obtain ⟨b, hb⟩ := odd_sLen D
  simp only [rankV, ha, hb]
  constructor
  · rw [Nat.mod_mod]; ring_nf; omega
  · rw [Nat.mod_mod]

end GlobalTheory.SquareChars

namespace GlobalTheory.SquareChars

theorem square_chars : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T} (_hL : L.Is μ₀) (t : T)
    (i j : Fin D.R.m), SquareStanding G t →
      GlobalTheory.LFun.IsHecke D.host.F D.host.E (beta G i j : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chr D.host.F D.host.E) ∧
      GlobalTheory.LFun.IsHecke D.host.F D.host.E (alpha G t i j : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chr D.host.F D.host.E) ∧
      GlobalTheory.WeilM.ResEtaPow (Units.map (algebraMap D.host.F (AF D.host.F) : D.host.F →* AF D.host.F)).range
        (beta G i j : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chr D.host.F D.host.E) (spW G i j).rank ∧
      GlobalTheory.WeilM.ResEtaPow (Units.map (algebraMap D.host.F (AF D.host.F) : D.host.F →* AF D.host.F)).range
        (alpha G t i j : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chr D.host.F D.host.E) (spW₁ G i j).rank := by
  intro D T L sc G μ₀ hL t i j _
  obtain ⟨hχ, hχ0⟩ := chi_hecke_res G hL i
  have hμ := GlobalTheory.HeckeCharacterRestriction.isHecke_mu hL t j
  have hμ0 := GlobalTheory.HeckeCharacterRestriction.resEta_mu hL t j
  have hη := _root_.GlobalTheory.WeilProduct.isHeckeChar_pow hL.eta.1 (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.eps G i j)
  have hη1 := _root_.GlobalTheory.WeilProduct.resEta_pow (GlobalTheory.HeckeCharacterRestriction.resEta_eta hL) (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.eps G i j)
  obtain ⟨p1, p2⟩ := rank_parity G hL i j
  have hβ : ResEta D (beta G i j) (spW G i j).rank :=
    resEta_parity (resEta_mul hχ0 hη1) (by rw [zero_add]; exact p1)
  have hα : ResEta D (alpha G t i j) (spW₁ G i j).rank :=
    resEta_parity (resEta_mul hμ0 hη1) (by rw [zero_add]; exact p2)
  have h2 : Module.finrank D.host.F D.host.E = 2 := D.sp.cm.deg2
  exact ⟨isHeckeChar_mul' hχ hη, isHeckeChar_mul' hμ hη,
    GlobalTheory.T.restrictsToQuadraticSignPow_of_restrictsToQuadraticCharPow D.host.F D.host.E h2 _ _ hβ, GlobalTheory.T.restrictsToQuadraticSignPow_of_restrictsToQuadraticCharPow D.host.F D.host.E h2 _ _ hα⟩

end GlobalTheory.SquareChars

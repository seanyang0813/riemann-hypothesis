module

public import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm
public import Formalism.LocalToGlobal.ProjectiveLattices.PetersonNormSubspace
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ThetaRuleMemSec
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ThetaValueExistsUniqueOfChartIndependence
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PowGeneratorEqConstMulVacuumTheta
public import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ChartIndependenceUnconditional
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ExistsIsNabUncond
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.AnalyticFibreUnitFrameUniformisation
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.DualHalfLevelMarkingExistsAndMatch
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ExistsLetterRowWeightDictionary
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.FockHxDifferentiable
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.FramedPointGeneratorIsThetaLevelOne
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ProdLevelOneThetaEqVacuumTheta
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ReadingEqThP
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.TensorLatticeVacuaExistUnique
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ThetaValueStandardLatticeEqClassicalTheta
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.UniformisationComponentLatticesMarkings
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
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
public import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.CoeSelfDualLatticeInFrameCoordinatesEq
public import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsBaseClassLevelAdapted
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsInfFamFamily
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsIsometryOfSabMap
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TameInvariantLevelAction
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.GeneralDiagonalMatrix
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPinnedOfIsUnf

@[expose] public section

noncomputable section

namespace GlobalTheory.DictLevel

section NonZero

open AlgebraicGeometry CategoryTheory NumberField Matrix Complex
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level
open GlobalTheory.SW hiding Level
open Formalism.L2.Pj GlobalTheory.Dict GlobalTheory.ClsVal GlobalTheory.AdTh.GenConst
open scoped ComplexConjugate Classical

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} {H : Host E} {Dw : Datum H}
  {l : Geo.Tor.Level H} {Xo : Moduli Dw l} {c : Coeff l} {σ : c.F →+* ℂ}

theorem exists_sec_rdU_ne_zero (U : Formalism.L2.PjFree.Unf Xo c σ r) (hσ : GoodEmb c σ) (hU : Formalism.L2.PjFree.IsUnf U)
    (hr1 : 1 ≤ r) (k : U.Comp) (n : ℕ) (hn : Even n) (x : (U.X k).dom) (hux : IsUnitFr (U.X k) x.1) :
    ∃ f ∈ sec Xo c 0 n, Formalism.L2.PjFree.rdU U f k x.1 ≠ 0 := by
  have hC : Formalism.MainNotions.ModuliIntegralCharts.H1.ChartIndepSt2 := GlobalTheory.chartIndependence_unconditional
  let _ : Algebra c.F ℂ := σ.toAlgebra
  obtain ⟨W⟩ := nonempty_uw hU
  obtain ⟨-, hL, hmk, -⟩ := uw_lattice E H Dw l Xo c σ r U hσ hU hr1 W k
  have hw : IsIntegral ℤ (H.w0 : E) := H.w0.isIntegral_coe
  have hw' := ThRead.cmHost_idempotent_trace_eq_one H
  have hD : Dom (0 : (E →+* ℂ) × ℕ → ℕ) n := ⟨fun _ => antitone_const, hn⟩
  obtain ⟨Dc, he, -⟩ := exists_dic E H Dw l c σ r W.g n (U.X k) 0 W.e hσ hU.1 (hU.2.1 k).1 (hU.2.1 k).2 hL hD
  have hs := Dc.sympl
  obtain ⟨v, hv⟩ := (GlobalTheory.SW.TensVac.vacua E r (U.X k) W.g Dc.bas Dc.idx n hs hn _ hw hw' _ hL 1 _
    (GlobalTheory.SW.Base.stdL_mem_Vset n 1)).1
  obtain ⟨A, hA, ϑ, hϑ, hmean⟩ := uw_anFib E H Dw l Xo c σ r U hσ hU hr1 W k Dc.bas Dc.idx hs
    (he ▸ Dc.per_eq) (he ▸ Dc.ty_eq) x hux
  have hT := isTheta1_of_reads_generator E H Dw l Xo c r W.g (U.X k) Dc.bas Dc.idx W.e x.1 _ _ A hs x.2 hL ϑ hϑ
  obtain ⟨κ, hκ⟩ := VacProd.prod_eq_mul_thA E r (U.X k) W.g Dc.bas Dc.idx n hs hn _ hw hw' _ hL v hv x.1 x.2 ϑ hT
  have hM : 0 < l.M := lt_of_lt_of_le (by norm_num) l.three_le
  obtain ⟨Y, hY⟩ := (DualMark.dual_marking E H Dw l r (U.X k) _ (W.mark k) _ hL hmk
    (Complex.isPrimitiveRoot_exp l.M hM.ne')).2.2.2.2 n l.M hM
  obtain ⟨q, hq⟩ := exists_root_ne_zero hs hL x.2 hmk hY hT (ne_zero_of_meanOne hmean)
  obtain ⟨_, nab, hnab⟩ := GlobalTheory.CanonConn.exists_isNab_uncond E H Dw l Xo c
  have hLaw : Laws := GlobalTheory.allSixLaws.1
  have hP := one_mem_harmA (Dw := Dw) c n
  obtain ⟨f, hf⟩ := (existsUnique_thRule Xo c nab (GlobalTheory.thValTot_of_chartIndep hLaw hC E H Dw l Xo c nab hnab)
    (fun b => levRep (q b)) hP).exists
  refine ⟨f, GlobalTheory.thetaRule_mem_sec hLaw hC E H Dw l Xo c nab hnab 0 n f ⟨_, _, hP, hf⟩, ?_⟩
  have hval := thVal_eq_thP hC E H Dw l Xo c r W.g (U.X k) Dc.bas Dc.idx W.e x.1 _ _ A hs x.2 hL Dw.p n Dc.hr
    Dc.eL hU.1 hn (he ▸ Dc.dir_eq) nab hnab ϑ v _ hϑ hv hκ (W.mark k) hmk hA (fun b => levRep (q b)) (Y q)
    (fun b => by
      obtain ⟨⟨a', ha', hq, hy⟩, hj⟩ := hY q b
      exact ⟨⟨a', ha', (Submodule.Quotient.eq _).1
        (hq.trans (Classical.choose_spec (Submodule.Quotient.mk_surjective _ (q b))).symm), hy⟩, hj⟩) 0 1 hP _
    (ThRead.thValAt_evR hC Xo c nab hnab _ hP hf ℂ (unC U k x))
  have h2 := (fock_laws E r _ _ Dc.bas Dc.idx n hs hn x.1 x.2 1 ϑ).2.2.2.2 (fun _ => ϑ) _ v hv.1 hκ (Y q) 0
  have h3 : κ * thA (U.X k) Dc.bas Dc.idx (heisG (U.X k) Dc.bas (Y q) v) x.1 0 ≠ 0 := by
    refine h2 ▸ Finset.prod_ne_zero_iff.2 fun b _ => ?_
    rw [fock, Pi.zero_apply, zero_add, zero_add]
    exact mul_ne_zero (Complex.exp_ne_zero _) (hq b)
  rw [map_one, map_one, thP, polyDeriv_one] at hval
  exact fun h0 => h3 (hval.symm.trans ((dif_pos x.2).symm.trans h0))

end NonZero

section Scalar

open NumberField AlgebraicGeometry CategoryTheory ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
  ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj GlobalTheory.LevelCusp GlobalTheory.GeoLevel GlobalTheory.IndefiniteRowSideFullHecke.GeneralDiagonalMatrix
open GlobalTheory.Dict (castFr IsUnitFr)

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H} {Xo : Moduli Dw l} {c : Coeff l} {σ : c.F →+* ℂ} {r : ℕ}

end Scalar

section Record

open NumberField IsDedekindDomain CategoryTheory ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.BasicNotions.TH
  Formalism.L2.Theta Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Pj GlobalTheory.IndefiniteRowSideFullHecke.LatticeBasisLifts GlobalTheory.IndefiniteRowSideFullHecke.GeneralDiagonalMatrix GlobalTheory.GeoLevel
open GlobalTheory.Member (FinCong)
open GlobalTheory.LevelCusp (IsMatch)
open GlobalTheory.Dict (castFr)
open scoped TensorProduct Matrix

variable {D : D7}

variable {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host D.host.E} {V : HSp D} {La : Type} [AddCommGroup La] [Module (𝓞 D.host.E) La]
  {ι : La →ₗ[𝓞 D.host.E] (Fin V.rank → D.host.E)}

end Record

end GlobalTheory.DictLevel

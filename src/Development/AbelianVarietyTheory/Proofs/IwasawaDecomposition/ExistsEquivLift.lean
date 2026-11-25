module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.JEvExists
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsSpanOfOnto
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ClsAt
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ActLevAndActBC
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.EmbeddingsDifferOnInteger
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.SecBCAndCuspBC
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.EmbeddingXiZeroNeZero
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoefMapNormEquivariantBasisOfPre
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCuspIsThClsDOfPre
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ModelSame
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGroupActsByLiftTranslationPrincipalType
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PureTensorOSmul
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Development.AbelianVarietyTheory.Counterexamples.RotationExamples.OfBeforeProjector
import Development.AbelianVarietyTheory.Definitions.ThetaValues.IoOverLeftUnique
import Formalism.LocalToGlobal.IndefiniteReal.ConjSubConjSub
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EtaJUntw
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotBaseCondFalse
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FunKilled
import Formalism.LocalToGlobal.HilbertRowConditions.CenterIdempotentAction
import Formalism.LocalToGlobal.IndefiniteReal.RecTie

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCcIsEquivAtSerOfTie, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivLift

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCcIsEquivAtSerOfTie =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCcIsEquivAtSerOfTie", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.JEvExists\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsSpanOfOnto\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ClsAt\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ActLevAndActBC\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.EmbeddingsDifferOnInteger\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.SecBCAndCuspBC\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.EmbeddingXiZeroNeZero\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoefMapNormEquivariantBasisOfPre\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCuspIsThClsDOfPre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Counterexamples.RotationExamples.OfBeforeProjector\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.Pj Formalism.IndefR.FWT ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.RealGeo
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.RealGeo.PhaseOne

open GlobalTheory.PhaseRationalDegenerate GlobalTheory.AdTh GlobalTheory.PtId GlobalTheory.OneMapTuples

theorem lieFac_eq_pow {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} (Dw : Datum H) {x : ℝ}
    (hx : 0 < x) (a : (E →+* ℂ) × ℕ → ℕ) : lieFac Dw x a = (Real.sqrt (2 * Real.pi * x))⁻¹ ^ GlobalTheory.PtId.degW Dw a := by
  have h : 0 < 2 * Real.pi * x := by positivity
  have e : (Real.sqrt (2 * Real.pi * x))⁻¹ = Real.exp (-(1 / 2) * Real.log (2 * Real.pi * x)) := by
    rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos h, ← Real.exp_neg]
    congr 1
    ring
  rw [e, ← Real.exp_nat_mul, lieFac, GlobalTheory.PtId.degW]
  congr 1
  push_cast
  ring

theorem shape {c s l k m r : ℂ} (hc : c ≠ 0) : s * l * k * (m * r) = c * (c⁻¹ * s * k * l * m * r) := by
  field_simp

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}

section Rat

variable {C : Formalism.L2.Pj.Core D} [Algebra C.Q.c.F D.what₂.LL] {R : RealDat D A C.Q.c.F} {i : Fin D.R.m} {Tp : Type} {tup : Tp → T0}
  (O : OMDat C R i Tp tup) (κ : WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : (R.MW i (sg0 D A)).Vec)
  (cc : (C.U ((i : ℕ) + 1) O.s0).Comp → ℂ)

end Rat

variable {T : CoreJ D} [Algebra T.Q.c.F D.what₂.LL] {R : RealDat D A T.Q.c.F} {κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)}
  {v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec} {i : Fin D.R.m} {Tp : Type} {tup : Tp → T0}

theorem fieldRange_le (O : OMDat T.toCore R i Tp tup)
    (hP : O.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0)) :
    D.what₂.embLL.toRatAlgHom.fieldRange ≤ O.c'.F := by
  rintro _ ⟨a, rfl⟩
  have h : ((O.jL a : O.c'.F) : ℂ) = D.what₂.embLL a := RingHom.congr_fun hP.lift.field a
  show D.what₂.embLL a ∈ O.c'.F
  exact h ▸ (O.jL a).2



theorem tieC_of_serOf (hR : PreChar R) (hT : TieIn T R κ v₀) (O : OMDat T.toCore R i Tp tup)
    (hP : O.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0)) {cc : (T.U ((i : ℕ) + 1) O.s0).Comp → ℂ}
    (hs : SerOf O (κ i) (v₀ i (sg0 D A)) cc 1) :
    OneMapTieC O.hle D.what₂.embLL.toRatAlgHom.fieldRange (T.U ((i : ℕ) + 1)) (inC O.c') (Wc D i) O.dict O.mu (xiR D) (wtA (κ i))
      (actLev T.Q.c O.lev2) (actLev O.c' O.lev2) O.dδ O.Cl' O.w O.La O.Nc O.gam O.vol O.ep O.io O.thAd O.Plc cc 1 :=
  ⟨fieldRange_le O hP, (GlobalTheory.FieldBC.secBC_and_cuspBC _ _ _ _ _ _ _ O.hle).2 _ _,
    (GlobalTheory.FieldBC.actLev_and_actBC _ _ _ _ _ _ _ O.hle _ _ hP.act.1).2,
    oneMapRow_of_serOf_ofPre D G Pl0 T0 A T R κ v₀ hR hT i Tp tup O hP cc hs
      (GlobalTheory.ClassSumRule.exists_cusp_isThClsD_ofPre GlobalTheory.ChartFree.chartIndep D G Pl0 T0 A T R κ v₀ hR hT i Tp tup O hP)⟩

end GlobalTheory.RealGeo.PhaseOne

namespace GlobalTheory.RealGeo

open GlobalTheory.AdTh GlobalTheory.PtId GlobalTheory.OneMapTuples PhaseOne



theorem exists_scalar_serOf {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
    {T : CoreJ D} [Algebra T.Q.c.F D.what₂.LL] {R : RealDat D A T.Q.c.F} {κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)}
    {v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec} (hC : PreChar R) (hT : TieIn T R κ v₀) (hio : IoExt R)
    (i : Fin D.R.m) (c0L : VsV D i D.what₂.LL →ₛₗ[D.what₂.embLL] (R.cV i).W) :
    ∃ s : ℂ, ‖s‖ = 1 ∧ ∀ (Tp : Type) (tup : Tp → T0) (O : OMDat T.toCore R i Tp tup),
      O.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0) → CoefficientBaseChange R i O.jL (inC O.c') c0L O.c0' →
      ∀ c0 : ℂ, ‖c0‖ = 1 → XiConst O (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0) c0 →
      ∀ cc, CcIs R.θ (Vc D i) (Wc D i) (rank_Wc i) (T.U ((i : ℕ) + 1) O.s0) O.dict O.mu (T.x₀ ((i : ℕ) + 1) O.s0)
        (R.ωP i A.μ0) (R.vacP i) cc → SerOf O (κ i) (v₀ i (sg0 D A)) ((c0⁻¹ * s) • cc) 1 := by
  by_cases hex : ∃ (Tp : Type) (tup : Tp → T0) (O : OMDat T.toCore R i Tp tup),
    O.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0)
  swap
  · exact ⟨1, norm_one, fun Tp tup O hP => absurd ⟨Tp, tup, O, hP⟩ hex⟩
  obtain ⟨Tp₀, tup₀, O₀, hP₀⟩ := hex
  obtain ⟨ka, hka1, hka⟩ := OneScalar.exists_scalar_ofPre D G Pl0 T0 A T R κ v₀ hC hT hio i c0L
  have hs₀ : O₀.s0 = T.toCore.σ₀ := sOv_eq _ _ _
  obtain ⟨hemb, hiso, -⟩ := dict_cast T hT.laws _ (inR i) O₀.s0 (hs₀ ▸ T.toCore.good_σ₀) (Wc D i) O₀.hV (rank_Wc i)
  obtain ⟨δ, hδ⟩ := ShortSeries.thetaKO_eq_short_series_ofPre D G Pl0 T0 A _ R hC i hP₀.lift.std _ _ (iotaW T i) hemb hiso
  obtain ⟨s, hs⟩ : ∃ s : ℂ, s = ka * (((δ : ℤ) : ℂ) ^ GlobalTheory.PtId.degW (T.Q.Dw ((i : ℕ) + 1)) (wtA (κ i)) *
    (-1) ^ GlobalTheory.PtId.degW (T.Q.Dw ((i : ℕ) + 1)) (wtA (κ i))) := ⟨_, rfl⟩
  have hs1 : ‖s‖ = 1 := by
    rcases Int.units_eq_one_or δ with h | h <;> simp [hs, h, hka1]
  have hx : 0 < xiR D := norm_pos_iff.2 ((_root_.map_ne_zero _).2 (GlobalTheory.DualPairCompare.embedding_xi_zero_ne_zero D))
  have hcm : cmpConst D ka δ (GlobalTheory.PtId.degW (T.Q.Dw ((i : ℕ) + 1)) (wtA (κ i))) =
      s * (lieFac (T.Q.Dw ((i : ℕ) + 1)) (xiR D) (wtA (κ i)) : ℂ) := by
    rw [lieFac_eq_pow _ hx, hs, cmpConst]
    simp only [Complex.ofReal_pow, Complex.ofReal_inv]
    ring
  refine ⟨s, hs1, fun Tp tup O hP hbc c0 h0 hxi cc hcc => ?_⟩
  have hne : c0 ≠ 0 := norm_ne_zero_iff.1 (h0 ▸ one_ne_zero)
  refine ⟨fun k => ?_, norm_one, fun t h J' hR y x hx f _ hf g => ?_⟩
  · show ‖c0⁻¹ * s * cc k‖ = 1
    rw [norm_mul, norm_mul, norm_inv, h0, hs1, hcc.1 k]
    norm_num
  · have h2 := exact_identity_ofPre hC hT O hP (hka Tp tup O hP hbc) hδ
      (covAt_of_xiConst_ofPre D G Pl0 T0 A T R κ v₀ hC hT i Tp tup O hP c0 hxi) hcc t h J' hR y x hx f hf g
    rw [hcm] at h2
    refine mul_left_cancel₀ hne ((congrArg _ (one_mul _)).trans (h2.trans ?_))
    exact shape hne



theorem exists_serOf_of_ccIs : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec), PreChar R → TieIn T R κ v₀ → IoExt R → ∀ (i : Fin D.R.m) (Tp : Type) (tup : Tp → T0) (O : OMDat T.toCore R i Tp tup), O.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0) → ∀ cc, CcIs R.θ (Vc D i) (Wc D i) (rank_Wc i) (T.U ((i : ℕ) + 1) O.s0) O.dict O.mu (T.x₀ ((i : ℕ) + 1) O.s0) (R.ωP i A.μ0) (R.vacP i) cc → ∃ u : ℂ, ‖u‖ = 1 ∧ SerOf O (κ i) (v₀ i (sg0 D A)) (u • cc) 1 := by
  intro D G _ _ Pl0 T0 A T _ R κ v₀ hC hT hio i Tp tup O hP cc hcc
  obtain ⟨_, _, c0L, -, hbc⟩ := hP.lift.c0
  obtain ⟨c0, ⟨m, hm, hr⟩, hxi⟩ := hP.cxi
  have h0 : ‖c0‖ = 1 := Complex.norm_eq_one_of_pow_eq_one hr hm.ne'
  obtain ⟨s, hs1, hs⟩ := exists_scalar_serOf hC hT hio i (c0L i)
  refine ⟨c0⁻¹ * s, ?_, hs Tp tup O hP hbc c0 h0 hxi cc hcc⟩
  rw [norm_mul, norm_inv, h0, hs1]
  norm_num



theorem exists_ccIs_equivAt_serOf_tie : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec), PreChar R → TieIn T R κ v₀ → IoExt R → ∀ (i : Fin D.R.m) (Tp : Type) (tup : Tp → T0) (O : OMDat T.toCore R i Tp tup), O.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0) → ∃ cc, CcIs R.θ (Vc D i) (Wc D i) (rank_Wc i) (T.U ((i : ℕ) + 1) O.s0) O.dict O.mu (T.x₀ ((i : ℕ) + 1) O.s0) (R.ωP i A.μ0) (R.vacP i) cc ∧ ∃ u : ℂ, ‖u‖ = 1 ∧ O.EquivAt (κ i) (u • cc) ∧ SerOf O (κ i) (v₀ i (sg0 D A)) (u • cc) 1 ∧ OneMapTieC O.hle D.what₂.embLL.toRatAlgHom.fieldRange (T.U ((i : ℕ) + 1)) (inC O.c') (Wc D i) O.dict O.mu (xiR D) (wtA (κ i)) (actLev T.Q.c O.lev2) (actLev O.c' O.lev2) O.dδ O.Cl' O.w O.La O.Nc O.gam O.vol O.ep O.io O.thAd O.Plc (u • cc) 1 := by
  intro D G _ _ Pl0 T0 A T _ R κ v₀ hC hT hio i Tp tup O hP
  obtain ⟨cc, hcc⟩ := CcEx.exists_ccIs_ofPre GlobalTheory.ChartFree.chartIndep D G Pl0 T0 A T R κ v₀ hC hT i Tp tup O hP
  obtain ⟨u, hu, hS⟩ := exists_serOf_of_ccIs D G Pl0 T0 A T R κ v₀ hC hT hio i Tp tup O hP cc hcc
  exact ⟨cc, hcc, u, hu,
    GlobalTheory.FrameConstMove.equivAt_of_ccIs_ofPre GlobalTheory.ChartFree.chartIndep D G Pl0 T0 A T R κ v₀ hC hT i Tp tup O hP cc hcc u, hS,
    tieC_of_serOf hC hT O hP hS⟩

end GlobalTheory.RealGeo
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCcIsEquivAtSerOfTie =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ModelSame\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.JEvExists\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.IoOverLeftUnique\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ActLevAndActBC\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.EmbeddingsDifferOnInteger\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.SecBCAndCuspBC\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGroupActsByLiftTranslationPrincipalType\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCcIsEquivAtSerOfTie\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCuspIsThClsDOfPre\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PureTensorOSmul\nimport Formalism.LocalToGlobal.IndefiniteReal.ConjSubConjSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EtaJUntw\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotBaseCondFalse\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FunKilled\nimport Formalism.LocalToGlobal.HilbertRowConditions.CenterIdempotentAction\nimport Formalism.LocalToGlobal.IndefiniteReal.RecTie\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult
open GlobalTheory.RealGeo GlobalTheory.OneMapAll GlobalTheory.AdTh

namespace GlobalTheory.Mem.R3.Rw.GeoTies

theorem eq_of_span {H ι X : Type} [AddCommGroup H] [Module ℂ H] {M : ι → Type} [∀ t, AddCommGroup (M t)] [∀ t, Module ℂ (M t)]
    (θ : H →ₗ[ℂ] ((∀ t, M t) →ₘₗ[ℂ] (X → ℂ))) (v : ∀ t, M t) (a b : X) (c : ℂ) {S : Set H} (hS : Submodule.span ℂ S = ⊤)
    (h : ∀ y ∈ S, θ y v a = c * θ y v b) (y : H) : θ y v a = c * θ y v b := by
  have hy : y ∈ Submodule.span ℂ S := hS ▸ Submodule.mem_top
  induction hy using Submodule.span_induction with
  | mem y hy => exact h y hy
  | zero => simp
  | add y y' _ _ h h' =>
    simp only [map_add (f := _), add_apply, Pi.add_apply]
    linear_combination h + h'
  | smul a y _ h =>
    simp only [map_smul, smul_apply, Pi.smul_apply, smul_eq_mul]
    linear_combination a * h

theorem span_image {H H' : Type} [AddCommGroup H] [Module ℂ H] [AddCommGroup H'] [Module ℂ H'] (e : H ≃ₗ[ℂ] H') {S : Set H}
    (hS : Submodule.span ℂ S = ⊤) : Submodule.span ℂ (e '' S) = ⊤ := by
  have := congrArg (Submodule.map (e : H →ₗ[ℂ] H')) hS
  rwa [Submodule.map_span, Submodule.map_top, LinearEquiv.range] at this

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}

section One

variable {C : Formalism.L2.Pj.Core D} [Algebra C.Q.c.F D.what₂.LL] {R : RealDat D A C.Q.c.F} {i : Fin D.R.m} {Tp : Type} {tup : Tp → T0}

def adOver (O : OMDat C R i Tp tup) (cc : (C.U ((i : ℕ) + 1) O.s0).Comp → ℂ) (f : Rul (C.Q.Xo ((i : ℕ) + 1)) O.c')
    (g : GA D (Wc D i)) : ℂ :=
  cc (O.dict g).1 * (O.mu g * rdU (unfBC O.hle (C.U ((i : ℕ) + 1)) (inC O.c')) f (O.dict g).1 (O.dict g).2)

theorem adOver_of_isBC (O : OMDat C R i Tp tup) (cc : (C.U ((i : ℕ) + 1) O.s0).Comp → ℂ) {m : ℕ}
    {f : Rul (C.Q.Xo ((i : ℕ) + 1)) O.c'} {as : Fin m → O.c'.F} {fs : Fin m → Rul (C.Q.Xo ((i : ℕ) + 1)) C.Q.c}
    (h : IsBC O.hle f as fs) (g : GA D (Wc D i)) : adOver O cc f g = ∑ k, (as k : ℂ) * O.phi cc (fs k) g := by
  have h2 := GlobalTheory.PhaseRational.rdU_of_isBC O.hle (C.U ((i : ℕ) + 1)) (inC O.c') h (O.dict g).1 (O.dict g).2
  refine (congrArg (fun w => cc (O.dict g).1 * (O.mu g * w)) h2).trans ?_
  simp only [Finset.mul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  show cc _ * (O.mu _ * ((as k : ℂ) * _)) = (as k : ℂ) * (cc _ * O.mu _ * _)
  ring

theorem adOver_act (O : OMDat C R i Tp tup) {κ : WeightFamilies.Wt D ((i : ℕ) + 1)} (hn : κ.n = (Vc D i).rank)
    (hact : ActLev (Xo := C.Q.Xo ((i : ℕ) + 1)) C.Q.c O.lev2) {cc : (C.U ((i : ℕ) + 1) O.s0).Comp → ℂ} (hE : O.EquivAt κ cc)
    {z : G} {k : GA D (Wc D i)} (hk : Lev.IsLevelLift (Wc D i) (R.βW i) (R.datWp i R.triv) (R.eG z) k)
    {f : Rul (C.Q.Xo ((i : ℕ) + 1)) O.c'} (hf : f ∈ cuspOver O κ) (g : GA D (Wc D i)) :
    adOver O cc (actLev O.c' O.lev2 z f) g =
      (∏ PP : R.Pg, ((R.chi ((i : ℕ) + 1) PP.1 (Matrix.GeneralLinearGroup.det (R.eG z PP)) : ℂˣ) : ℂ)) * adOver O cc f (g * k) := by
  obtain ⟨m, as, fs, hfs, hBC⟩ := (GlobalTheory.FieldBC.secBC_and_cuspBC _ _ _ _ _ _ _ O.hle).2 _ (C.U ((i : ℕ) + 1)) _ _ f hf
  have h1 := (GlobalTheory.FieldBC.actLev_and_actBC _ _ _ _ _ _ _ O.hle _ _ hact).2 _ _ z m as fs f ((mem_cusp _ _ _ _ _ _).1 hf).1
    (fun l => ((mem_cusp _ _ _ _ _ _).1 (hfs l)).1) hBC
  rw [adOver_of_isBC O cc h1, adOver_of_isBC O cc hBC, Finset.mul_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [(hE z k hk (fs l) (by rw [hn]; exact hfs l)).2 g]
  ring

end One

variable {T : CoreJ D} [Algebra T.Q.c.F D.what₂.LL] {R : RealDat D A T.Q.c.F} {κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)}
  {v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec} {i : Fin D.R.m}

def LiftIsSum (O : OMDat T.toCore R i Unit (fun _ => A.μ0)) (κ : WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : (R.MW i (sg0 D A)).Vec)
    (cc : (T.U ((i : ℕ) + 1) O.s0).Comp → ℂ) (z : G) (ζ : ℂ) (y : (R.HV i A.μ0).H) : Prop :=
  ∃ h J x f, RepsR R i A.μ0 h (O.bad ()) J (O.Lh ()) (O.gam ()) (O.vol ()) ∧ Place R i A.μ0 h O.c0' y x ∧
    f ∈ sec (T.Q.Xo ((i : ℕ) + 1)) O.c' (wtA κ) (Vc D i).rank ∧ IsSum O () x f ∧
    ∀ q : AutQ (Wc D i), R.thF i A.μ0 y v₀ q.out =
      ζ * (lieFac (T.Q.Dw ((i : ℕ) + 1)) (xiR D) (wtA κ) : ℂ) * adOver O cc (actLev O.c' O.lev2 z f) q.out



theorem oneMapOf_of_span (hR : PreChar R) (hchi : R.grp_chiW) (hT : Formalism.IndefR.FWT.TieIn T R κ v₀)
    (O : OMDat T.toCore R i Unit (fun _ => A.μ0))
    (hF : O.c'.F = D.what₂.embLL.toRatAlgHom.fieldRange)
    (hP : O.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) O.s0)) {cE : (T.U ((i : ℕ) + 1) O.s0).Comp → ℂ}
    (hU : ∀ k, ‖cE k‖ = 1) (hE : O.EquivAt (κ i) cE) {z : G} (hz : z ∈ Subgroup.center G) {ζ : ℂ}
    (hζL : ζ ∈ D.what₂.embLL.toRatAlgHom.fieldRange) (hζ : ∃ m : ℕ, 0 < m ∧ ζ ^ m = 1)
    (hS : Submodule.span ℂ {y | LiftIsSum O (κ i) (v₀ i (sg0 D A)) cE z ζ y} = ⊤) :
    O.OneMapOf (κ i) (v₀ i (sg0 D A)) cE 1 := by
  have hio : IoExt R := GlobalTheory.IoExtremal.ioExt D G Pl0 T0 A T.Q.c.F R hR.lev hR.fam hR.models hR.thP
  have hn : (κ i).n = (Vc D i).rank :=
    (hT.kap i (D.eTau.symm 1)).2.2.trans (D.sp.V_rank _ (Nat.le_add_left _ _) i.2).symm
  obtain ⟨cc₀, -, u, -, -, hser, -⟩ := exists_ccIs_equivAt_serOf_tie D G Pl0 T0 A T R κ v₀ hR hT hio i _ _ O hP
  generalize u • cc₀ = cc at hser
  have hex := GlobalTheory.ClassSumRule.exists_cusp_isThClsD_ofPre GlobalTheory.ChartFree.chartIndep D G Pl0 T0 A T R κ v₀ hR hT i _ _ O hP ()
  obtain ⟨k, hk, -⟩ := hP.lift.lev z
  obtain ⟨s, hs⟩ : ∃ s : ℂ, s = (lieFac (T.Q.Dw ((i : ℕ) + 1)) (xiR D) (wtA (κ i)) : ℝ) := ⟨_, rfl⟩
  obtain ⟨χ, hχ⟩ : ∃ χ : ℂ, χ = ∏ PP : R.Pg, ((R.chi ((i : ℕ) + 1) PP.1 (Matrix.GeneralLinearGroup.det (R.eG z PP)) : ℂˣ) : ℂ) :=
    ⟨_, rfl⟩
  have hcc : ∀ c, cc c ≠ 0 := fun c => norm_ne_zero_iff.1 ((hser.1 c).trans_ne one_ne_zero)
  have key : ∀ h J x f y, RepsR R i A.μ0 h (O.bad ()) J (O.Lh ()) (O.gam ()) (O.vol ()) → Place R i A.μ0 h O.c0' y x →
      f ∈ sec (T.Q.Xo ((i : ℕ) + 1)) O.c' (wtA (κ i)) (Vc D i).rank → IsSum O () x f → ∀ g,
      ζ * s * adOver O cE (actLev O.c' O.lev2 z f) g = ζ * χ * (cE (O.dict (g * k)).1 / cc (O.dict (g * k)).1) *
        R.thF i A.μ0 y (v₀ i (sg0 D A)) (g * k) := by
    intro h J x f y hr hy hf hx g
    obtain ⟨f₁, hf₁, hx₁⟩ := hex x
    have e : f = f₁ := isSum_unique hP () hf ((mem_cusp _ _ _ _ _ _).1 hf₁).1 hx hx₁
    have h1 := adOver_act O hn hP.act.1 hE hk (e ▸ hf₁ : f ∈ cuspOver O (κ i)) g
    have h2 := (one_mul _).symm.trans (hser.2.2 () h J hr y x hy f hf hx (g * k))
    rw [h1, h2, ← hχ, ← hs, adOver]
    have := hcc (O.dict (g * k)).1
    field_simp
  have all : ∀ y (q : AutQ (Wc D i)), R.thF i A.μ0 y (v₀ i (sg0 D A)) q.out =
      ζ * χ * (cE (O.dict (q.out * k)).1 / cc (O.dict (q.out * k)).1) * R.thF i A.μ0 y (v₀ i (sg0 D A)) (q.out * k) := by
    intro y q
    refine eq_of_span (R.thF i A.μ0) _ _ _ _ hS (fun y hy => ?_) y
    obtain ⟨h, J, x, f, h1, h2, h3, h4, h5⟩ := hy
    rw [h5 q, ← hs]
    exact key h J x f y h1 h2 h3 h4 _
  have hid : GlobalTheory.PhaseRational.IdentityAt O (κ i) cE 1 := by
    obtain ⟨h, J, hr, -, hA, hPl⟩ := (hP.tuple ()).reps
    refine ⟨hU, norm_one, z, hz, fun t => ⟨ζ, hζL, hζ, fun x hx => ⟨hex x, fun f hf hc q => ?_⟩⟩⟩
    obtain ⟨x₀, hx₀⟩ := (hPl x).1 hx
    have h1 := (all _ q).trans (key h J x f _ hr hx₀ hf hc q.out).symm
    rw [one_mul, hA _ x hx₀]
    refine h1.trans ?_
    rw [hs, mul_right_comm ζ (cE _), mul_assoc (ζ * _) (cE _)]
    rfl
  exact ⟨hE, ⟨hF.ge, (GlobalTheory.FieldBC.secBC_and_cuspBC _ _ _ _ _ _ _ O.hle).2 _ _,
    (GlobalTheory.FieldBC.actLev_and_actBC _ _ _ _ _ _ _ O.hle _ _ hP.act.1).2, hid⟩,
    GlobalTheory.PhaseRational.phRat_of_identity O (κ i) _ cE 1 () rfl hF hP hT.laws.toLawsM (hT.kap i (D.eTau.symm 1)).2.2 hchi
      hR.thP.thF_mem hR.thP.thG hE hid⟩



theorem lift_of_oneMapOf (O : OMDat T.toCore R i Unit (fun _ => A.μ0)) {κ : WeightFamilies.Wt D ((i : ℕ) + 1)} {v₀ : (R.MW i (sg0 D A)).Vec}
    {ι x₀} (hP : O.Pins κ v₀ ι x₀) {cE : (T.U ((i : ℕ) + 1) O.s0).Comp → ℂ} (h : O.OneMapOf κ v₀ cE 1) :
    ∃ z ∈ Subgroup.center G, ∃ ζ ∈ D.what₂.embLL.toRatAlgHom.fieldRange, (∃ m : ℕ, 0 < m ∧ ζ ^ m = 1) ∧
      ∃ h J, RepsR R i A.μ0 h (O.bad ()) J (O.Lh ()) (O.gam ()) (O.vol ()) ∧ ∀ y₀ : A.fam.amb.FL i A.μ0, ∃ x f,
        Place R i A.μ0 h O.c0' (jVx R i A.μ0 y₀) x ∧ f ∈ sec (T.Q.Xo ((i : ℕ) + 1)) O.c' (wtA κ) (Vc D i).rank ∧ IsSum O () x f ∧
        ∀ q : AutQ (Wc D i), R.thF i A.μ0 (jVx R i A.μ0 y₀) v₀ q.out =
          ζ * (lieFac (T.Q.Dw ((i : ℕ) + 1)) (xiR D) (wtA κ) : ℂ) * adOver O cE (actLev O.c' O.lev2 z f) q.out := by
  obtain ⟨-, ⟨-, -, -, -, -, z, hz, h1⟩, -⟩ := h
  obtain ⟨ζ, hζL, hζ, h1⟩ := h1 ()
  obtain ⟨h, J, hr, hPx, hA, hPl⟩ := (hP.tuple ()).reps
  refine ⟨z, hz, ζ, hζL, hζ, h, J, hr, fun y₀ => ?_⟩
  obtain ⟨x, hx⟩ := hPx y₀
  obtain ⟨⟨f, hf, hc⟩, h2⟩ := h1 x ((hPl x).2 ⟨y₀, hx⟩)
  have hf' := ((mem_cusp _ _ _ _ _ _).1 hf).1
  refine ⟨x, f, hx, hf', hc, fun q => ?_⟩
  have h3 := h2 f hf' hc q
  rw [one_mul, hA _ x hx, mul_right_comm ζ (cE _), mul_assoc (ζ * _) (cE _)] at h3
  exact h3

theorem adOver_rulBC {C : Formalism.L2.Pj.Core D} [Algebra C.Q.c.F D.what₂.LL] {R : RealDat D A C.Q.c.F} {i : Fin D.R.m} {Tp : Type}
    {tup : Tp → T0} (O : OMDat C R i Tp tup) (hact : ActLev (Xo := C.Q.Xo ((i : ℕ) + 1)) C.Q.c O.lev2)
    (c : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff C.Q.l) (hle : O.c'.F ≤ c.F) (h₃ : C.Q.c.F ≤ c.F) {lev} (hlev : lev = O.lev)
    (cc : (C.U ((i : ℕ) + 1) O.s0).Comp → ℂ) (z : G) {a : (D.host.E →+* ℂ) × ℕ → ℕ} {n : ℕ}
    {f : Rul (C.Q.Xo ((i : ℕ) + 1)) O.c'} (hf : f ∈ sec _ O.c' a n) (g : GA D (Wc D i)) :
    cc (O.dict g).1 * (O.mu g * rdU (unfBC h₃ (C.U ((i : ℕ) + 1)) (inC c))
      (actLev c (fun g => (lev g, LinearMap.id)) z (GlobalTheory.FieldBC.rulBC hle f)) (O.dict g).1 (O.dict g).2) =
      adOver O cc (actLev O.c' O.lev2 z f) g := by
  subst hlev
  obtain ⟨m, as, fs, hfs, h⟩ := (GlobalTheory.FieldBC.secBC_and_cuspBC _ _ _ _ _ _ _ O.hle).1 a n f hf
  have h1 := (GlobalTheory.FieldBC.actLev_and_actBC _ _ _ _ _ _ _ O.hle _ _ hact).2 a n z m as fs f hf hfs h
  have h2 := (GlobalTheory.FieldBC.actLev_and_actBC _ _ _ _ _ _ _ h₃ _ _ hact).2 a n z m _ fs _ (GlobalTheory.FieldBCModel.rulBC_mem_sec hle hf) hfs
    (isBC_rulBC_trans O.hle hle h₃ hf h)
  have e1 := GlobalTheory.PhaseRational.rdU_of_isBC O.hle (C.U ((i : ℕ) + 1)) (inC O.c') h1 (O.dict g).1 (O.dict g).2
  have e2 := GlobalTheory.PhaseRational.rdU_of_isBC h₃ (C.U ((i : ℕ) + 1)) (inC c) h2 (O.dict g).1 (O.dict g).2
  exact congrArg (fun w => cc (O.dict g).1 * (O.mu g * w)) (e2.trans e1.symm)

end GlobalTheory.Mem.R3.Rw.GeoTies

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivLift =====

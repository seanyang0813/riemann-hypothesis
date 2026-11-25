module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Formalism.LocalToGlobal.IndefiniteReal.FWTie
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseTuplePinsOrientationStandardFrameLevelMapStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdelicSideOfModelsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoefficientMapExtensionRationalValuesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelPlaceDatumOverNumberFieldStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTupleDataGivenLevelCoeffMaps
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapUniqueBijectiveComplexExtensionStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCoversRep
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsCoeffCurveOver
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.PeriodLatticeFinitelyGenerated
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelActionFramedPointsIsActionStatement
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCoversOfHalves
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsRepsOfFiniteIndex
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHarmonicCoefficientMapAtWeightsStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNumberFieldHeckeCharacterSqrtNormValuesStatement
import Formalism.LocalToGlobal.ProjectiveLattices.ThClass
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawOfSquaresSelfDualSplitLattice
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsFirstOfSecond
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientField, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientFieldStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseTuplePinsOrientationStandardFrameLevelMapStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdelicSideOfModelsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCoefficientMapExtensionRationalValuesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelPlaceDatumOverNumberFieldStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTupleDataGivenLevelCoeffMaps\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapUniqueBijectiveComplexExtensionStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCoversRep\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsCoeffCurveOver\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.PeriodLatticeFinitelyGenerated\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelActionFramedPointsIsActionStatement\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCoversOfHalves\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsRepsOfFiniteIndex\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHarmonicCoefficientMapAtWeightsStatement\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNumberFieldHeckeCharacterSqrtNormValuesStatement\nimport Formalism.LocalToGlobal.ProjectiveLattices.ThClass\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawOfSquaresSelfDualSplitLattice\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsFirstOfSecond\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical

namespace GlobalTheory.PinsNormal

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem levJ_eq (R : RealDat D A Ks) (i : Fin D.R.m) {t t' : T0} (e : R.Q t' = R.Q t) : levJ R i t' = levJ R i t := by
  have key : ∀ (Q Q' : Finset (Pl D.host.E)) (ξ ξ' : ∀ PP : Pl D.host.E, (kP PP)ˣ →* ℂˣ), Q = Q' →
      lev D.sp.cm (Vc D i).gram (R.βV i) (Lev.flag1L (Lev.datY _ D.R.r D.R.t 1 (r_le_V i) R.Pg Q (LevelP.triv _ _ _)
        (fun _ => R.chi ((i : ℕ) + 1)) ξ Lev.Frm.A)) =
      lev D.sp.cm (Vc D i).gram (R.βV i) (Lev.flag1L (Lev.datY _ D.R.r D.R.t 1 (r_le_V i) R.Pg Q' (LevelP.triv _ _ _)
        (fun _ => R.chi ((i : ℕ) + 1)) ξ' Lev.Frm.A)) := by
    rintro Q _ ξ ξ' rfl
    exact Subgroup.ext fun x => Iff.rfl
  have h := key _ _ (R.xiR t') (R.xiR t) e
  unfold levJ levEnv
  exact congrArg (fun K => (Lev.toAfE (Vc D i) K).comap (finHom (Vc D i)).range.subtype) h

theorem repsR_of_eq (R : RealDat D A Ks) (i : Fin D.R.m) {t t' : T0} (e : R.Q t' = R.Q t) {K' : Type} [Field K'] {Cl : Type} [Fintype Cl]
    {h : Cl → GA D (Vc D i)} {bad : ℕ} {J' : Subgroup (Bridge.Gf (Vc D i))}
    {Lh : Cl → Submodule (𝓞 D.host.E) (Fin (Vc D i).rank → D.host.E)} {gam : Cl → ℕ} {vol : K'}
    (H : RepsR R i t' h bad J' Lh gam vol) : RepsR R i t h bad J' Lh gam vol := by
  unfold RepsR at H ⊢
  rwa [levJ_eq R i e, e] at H

theorem extC_down (R : RealDat D A Ks) (i : Fin D.R.m) {K₁ K₂ : Type} [Field K₁] [Field K₂] (j₁ : D.what₂.LL →+* K₁) (j₂ : D.what₂.LL →+* K₂)
    (σ₁ : K₁ →+* ℂ) (σ₂ : K₂ →+* ℂ) (h₁ : σ₁.comp j₁ = D.what₂.embLL) (h₂ : σ₂.comp j₂ = D.what₂.embLL)
    (hs : Function.Surjective j₁) (c0 : VsV D i D.what₂.LL →ₛₗ[D.what₂.embLL] (R.cV i).W)
    (a₁ : VsV D i K₁ →ₛₗ[σ₁] (R.cV i).W) (a₂ : VsV D i K₂ →ₛₗ[σ₂] (R.cV i).W)
    (H₁ : CoefficientBaseChange R i j₁ σ₁ c0 a₁) (H₂ : CoefficientBaseChange R i j₂ σ₂ c0 a₂) (c : VsV D i ℂ →ₗ[ℂ] (R.cV i).W)
    (hc : ExtC R i σ₂ a₂ c) : ExtC R i σ₁ a₁ c := by
  intro v v' e
  let ε : K₁ ≃+* D.what₂.LL := (RingEquiv.ofBijective j₁ ⟨j₁.injective, hs⟩).symm
  have hε : j₁.comp (ε : K₁ →+* D.what₂.LL) = RingHom.id K₁ := RingHom.ext fun x => (RingEquiv.ofBijective j₁ ⟨j₁.injective, hs⟩).apply_symm_apply x
  let u : VsV D i D.what₂.LL := ⟨MvPolynomial.map (ε : K₁ →+* D.what₂.LL) (v : Pol K₁ D.what₂.Tau (Vc D i).rank),
    Formalism.L2.Ker.map_mem_VV _ _ _ v.2⟩
  obtain ⟨w₁, e₁, f₁⟩ := H₁ u
  obtain ⟨w₂, e₂, f₂⟩ := H₂ u
  have hw : w₁ = v := Subtype.ext (by
    rw [e₁]
    change MvPolynomial.map j₁ (MvPolynomial.map (ε : K₁ →+* D.what₂.LL) (v : Pol K₁ D.what₂.Tau (Vc D i).rank)) = _
    rw [MvPolynomial.map_map, hε, MvPolynomial.map_id])
  rw [← hw, f₁, ← f₂]
  refine hc w₂ v' ?_
  rw [e, e₂, MvPolynomial.map_map, h₂, ← hw, e₁, MvPolynomial.map_map, h₁]

theorem exists_normal_coeff {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {l : Level H} (c : Coeff l) :
    ∃ c' : Coeff l, c.F ≤ c'.F ∧ Normal ℚ c'.F := by
  have := c.fin
  have hle : c.F ≤ IntermediateField.normalClosure ℚ c.F ℂ := IntermediateField.le_normalClosure c.F
  have : IsNormalClosure ℚ c.F (IntermediateField.normalClosure ℚ c.F ℂ) :=
    Algebra.IsAlgebraic.isNormalClosure_normalClosure fun x => IsAlgClosed.splits _
  exact ⟨⟨IntermediateField.normalClosure ℚ c.F ℂ, inferInstance, fun τ a => hle (c.conj τ a), hle c.zeta_mem,
    c.le.trans hle⟩, hle, IsNormalClosure.normal (F := ℚ) (K := c.F) (L := IntermediateField.normalClosure ℚ c.F ℂ)⟩



theorem exists_pins_normal : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (F : Face D A) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec) (O : ∀ i, OMDat T.toCore R i Unit (fun _ => A.μ0)), GlobalTheory.Hk3.Core R F → Finite T0 → Nonempty (FWTie T R κ v₀) → QGuard R → ∀ i : Fin D.R.m, OMPins T R κ v₀ O i → ∃ M : OMDat T.toCore R i T0 id, M.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) M.s0) ∧ M.lev = (O i).lev ∧ (∀ c, ExtC R i (inC (O i).c') (O i).c0' c ↔ ExtC R i (inC M.c') M.c0' c) ∧ Normal ℚ M.c'.F ∧ GlobalTheory.CompRat.CurveOver T.Q.H M.c'.F 1 ∧ (∀ t x, ((R.xi t x : Circle) : ℂ) ∈ M.c'.F) ∧ ∀ t t' : T0, R.Q t' = R.Q t → ∃ e, SameCover M t t' e := by
  intro D G _ _ Pl0 T0 A T _ R F κ v₀ O hC hfin hfw hG i hO
  obtain ⟨fw⟩ := id hfw
  have hT := fw.laws
  have hL : R.toLevCh.Is A.μ0 := hC.lev
  have hchi : R.grp_chiW := hC.grp.chiW
  have hfam := hC.fam
  have hmodels := hC.models
  have hvP : R.thP_vP := hC.thP.vP
  obtain ⟨hpb, hV, hlev⟩ := GlobalTheory.T.baseTuple_pins_orientation_standardFrame_levelMap D G Pl0 T0 A T R κ v₀ O hL hT i hO
  obtain ⟨gramR, c0R, c0L, htie, hc0O⟩ := hO.2.lift.c0
  haveI : Nonempty T0 := ⟨A.μ0⟩
  let rep : T0 → T0 := fun t => Function.invFun R.Q (R.Q t)
  have hrepQ : ∀ t, R.Q (rep t) = R.Q t := fun t => Function.invFun_eq (f := R.Q) ⟨t, rfl⟩
  have hrepE : ∀ t t' : T0, R.Q t' = R.Q t → rep t' = rep t := fun t t' e => congrArg (Function.invFun R.Q) e
  choose pd l₂ h1 h2 using fun t => GlobalTheory.CoverHalf.exists_half_of_laws T.toCore R hT.toLawsM hL hpb hG t
  obtain ⟨c₁, hc1a, hc1b, hc1xi, hc⟩ := GlobalTheory.OneCover.exists_covers_rep T R hT hL i (Vc D i).rank pd
    (fun t => GlobalTheory.CoverHalf.coverHalf D (R.Q t)) l₂ h1 h2 rep hrepQ
  choose Mφ hMφ hφ using fun t => GlobalTheory.T.exists_level_place_datum_over_number_field D G Pl0 T0 A _ R hL hvP i hV t _ (iotaW T i)
    (GlobalTheory.PinnedDataGiven.latEmb_iotaW T hT i)
  choose MB hMB hB using fun t => GlobalTheory.T.exists_numberField_heckeCharacter_sqrtNorm_values D G Pl0 T0 A _ R hL i t
  have := c₁.fin
  obtain ⟨c₂, hc₂⟩ := GlobalTheory.TupleCover.exists_coeff_ge T.Q.l (c₁.F ⊔ ⨆ t, (Mφ t ⊔ MB t))
  obtain ⟨c₃, hc₃, hcurve⟩ := GlobalTheory.CurveField.exists_coeff_curveOver _ T.Q.H T.Q.l c₂ 1 one_pos
  obtain ⟨c', hc', hnorm⟩ := exists_normal_coeff c₃
  have h23 : c₂.F ≤ c'.F := hc₃.trans hc'
  have h3 : c₁.F ≤ c'.F := (le_sup_left.trans hc₂).trans h23
  have h4 : ∀ t, Mφ t ⊔ MB t ≤ c'.F := fun t =>
    (((le_iSup (fun t => Mφ t ⊔ MB t) t).trans le_sup_right).trans hc₂).trans h23
  have hle : T.Q.c.F ≤ c'.F := hc1a.trans h3
  have hLL := hc1b.trans h3
  obtain ⟨d, U, dict, f, xi, -, hcov, hhalf, hxi, hcxi, hmod⟩ := hc c' hle h3
  let dδ : T0 → DeltaDat (T.Q.Xo ((i : ℕ) + 1)) c' (Vc D i).rank := fun t => { d (rep t) with cδ := f t }
  let jL : D.what₂.LL →+* c'.F := D.what₂.embLL.codRestrict c'.F fun x => hLL ⟨x, rfl⟩
  have hjL : (inC c').comp jL = D.what₂.embLL := RingHom.ext fun _ => rfl
  obtain ⟨c0', hc0, hplace⟩ := GlobalTheory.T.exists_coefficientMap_extension_rational_values D G Pl0 T0 A _ R hL hchi hfam hmodels gramR c0R c0L htie i c'.F jL (inC c') hjL
  obtain ⟨Cl, fCl, h, J', bad, Lh, gam, vol, La, Nc, hrep, hbad, hcl⟩ :=
    GlobalTheory.SplitReps.exists_repsR_repsCov R i (hL.βV i) hV c'.F (T.Q.Xo ((i : ℕ) + 1)) c' id d
  have hrepR : ∀ t, RepsR R i t (h (rep t)) (bad (rep t)) (J' (rep t)) (Lh (rep t)) (gam (rep t)) (vol (rep t)) :=
    fun t => repsR_of_eq R i (hrepQ t) (hrep (rep t)).1
  choose B hBis using fun t => hB t c'.F (le_sup_right.trans (h4 t)) (bad (rep t)) (hbad (rep t)).2.2.2.2
    fun PP hPP => (hrepR t).2.1 PP (Or.inr hPP)
  have hodd : Odd ((T.Q.Dw ((i : ℕ) + 1)).p + (T.Q.Dw ((i : ℕ) + 1)).q) := by
    obtain ⟨e1, e2, -⟩ := hT.pins.2.2.2 _ (inR i)
    have h5 := Formalism.L2.NTheta.odd_r D.R
    have h6 := i.2
    have h7 := D.R.m_add_three_le_k
    rw [e1, e2]
    convert h5 using 1
    simp only [Ranks.sigW, Ranks.r]
    omega
  choose epF hepF using fun t => (GlobalTheory.ClassTieCompare.exists_epIs_iff (n := (Vc D i).rank) (Dw := T.Q.Dw ((i : ℕ) + 1))
    (bad (rep t)) (B t)).2 fun L cc g d => _root_.GlobalTheory.LawOfSquares.law_of_squares _ _ _ _ hodd L cc g.1 g.2.2 d.1 d.2
  obtain ⟨io, hw, hio⟩ := GlobalTheory.T.exists_harmonicCoefficientMap_at_weights D T.Q hT.pins κ fw.kap i c'
  choose φ hφis using fun t => hφ t c'.F (le_sup_left.trans (h4 t)) (hhalf t).2.2 (Mfr (dδ t).l₂) fun PP hPP c hc => by
    have hM : (dδ t).l₂.Mb ≤ PP.asIdeal := by
      rw [(hcov t).1.2.2.2.1]
      rcases hPP with hPP | hPP
      · rw [(hhalf t).1]
        exact Ideal.mul_le_left.trans (Ideal.prod_le_inf.trans (Finset.inf_le hPP))
      · exact Ideal.mul_le_right.trans ((hhalf t).2.1 PP hPP)
    obtain ⟨b, hb, rfl⟩ := (Ideal.mem_map_iff_of_surjective _ T.Q.H.bar.surjective).1 hc
    refine ⟨b, hM hb, ?_⟩
    change _ = star ((T.Q.H.bar b : 𝓞 D.host.E) : D.host.E)
    rw [T.Q.H.bar_eq]
    exact (star_star _).symm
  choose thAd hth using fun t => GlobalTheory.T.exists_adelicSide_of_models D G Pl0 T0 A _ R hmodels i t _ _ c0' _ (h (rep t)) _ (hrepR t).2.2.1
    (hrepR t).2.2.2.2.2.1 (v₀ i (sg0 D A))
  have hact := fun c => _root_.GlobalTheory.LevelActFromLevel.actLev_of_levIs D G Pl0 T0 A T R hL hT hpb i c (O i).lev hlev
  let M : OMDat T.toCore R i T0 id :=
    { c' := c', hle := hle, jL := jL, hV := hT.spaceW _ (inR i) _ rfl, c0' := c0', lev := (O i).lev, dδ := dδ,
      Cl' := fun t => Cl (rep t), fCl := fun t => fCl (rep t),
      bad := fun t => bad (rep t), Lh := fun t => Lh (rep t), La := fun t => La (rep t), Nc := fun t => Nc (rep t),
      gam := fun t => gam (rep t), vol := fun t => vol (rep t), ep := fun t k => epF t (Lh (rep t) k), B := B,
      epF := epF, io := io, hw := hw, φ := φ,
      w := fun t _ q => (dδ t).eF.symm (phiHat (dδ t).c₂ (fun x => (dδ t).eF (φ t x)) q),
      U₂ := fun t => U (rep t), dict₂ := fun t => dict (rep t), xi := xi, thAd := thAd,
      Plc := fun t x => ∃ x₀, Place R i t (h (rep t)) c0' (jVx R i t x₀) x }
  have hMP : M.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) M.s0) :=
    ⟨⟨hjL, hV, fw.hv₀ i _, ⟨gramR, c0R, c0L, htie, hc0⟩, hlev⟩,
      fun t => ⟨⟨h (rep t), J' (rep t), hrepR t, hplace t _ _, hth t, fun _ => Iff.rfl⟩, hBis t, hxi t, hφis t, hhalf t⟩,
      ⟨hact _, hact _⟩, fun t => hbad (rep t), fun t => hcl (rep t), fun t => ⟨fun _ => rfl, hepF t⟩, hio,
      fun t k q => AlgEquiv.apply_symm_apply _ _, hcov, hcxi, hmod⟩
  refine ⟨M, hMP, rfl, ?_, hnorm, hcurve c' hc', fun t x => h3 (hc1xi t x), fun t t' e => ?_⟩
  · obtain ⟨cM, hcM, -, huM⟩ := GlobalTheory.T.coefficientMap_unique_bijective_complex_extension D G Pl0 T0 A T R F κ v₀ hC ⟨fw⟩ i T0 id M hMP
    obtain ⟨cO, -, -, huO⟩ := GlobalTheory.T.coefficientMap_unique_bijective_complex_extension D G Pl0 T0 A T R F κ v₀ hC ⟨fw⟩ i Unit (fun _ => A.μ0) (O i) hO.2
    have hsurj : Function.Surjective (O i).jL := by
      intro x
      have hx : (x : ℂ) ∈ D.what₂.embLL.toRatAlgHom.fieldRange := hO.1 ▸ x.2
      obtain ⟨y, hy⟩ := hx
      refine ⟨y, Subtype.ext ?_⟩
      have := RingHom.congr_fun hO.2.lift.field y
      exact this.trans hy
    have hsame : ExtC R i (inC (O i).c') (O i).c0' cM :=
      extC_down R i (O i).jL jL (inC (O i).c') (inC c') hO.2.lift.field hjL hsurj (c0L i) (O i).c0' c0' hc0O hc0 cM hcM
    have e0 : cM = _ := huO cM hsame
    intro c
    constructor
    · intro hc'
      rw [huO c hc', ← e0]
      exact hcM
    · intro hc'
      rw [huM c hc']
      exact hsame
  · have er : rep t' = rep t := hrepE t t' e
    have key : ∀ a b : T0, a = b → ∀ (fa : Rul (d a).Xo₂ (d a).c₂) (fb : Rul (d b).Xo₂ (d b).c₂),
        ∃ cx : Rul (d b).Xo₂ (d b).c₂, ({ d a with cδ := fa } : DeltaDat (T.Q.Xo ((i : ℕ) + 1)) c' (Vc D i).rank) =
          { ({ d b with cδ := fb } : DeltaDat (T.Q.Xo ((i : ℕ) + 1)) c' (Vc D i).rank) with cδ := cx } := by
      rintro a _ rfl fa fb
      exact ⟨fa, rfl⟩
    have keyK : ∀ {β : Type} (g : ∀ a, Cl a → β) (a b : T0) (hab : a = b) (k : Cl a), g b (cast (congrArg Cl hab) k) = g a k := by
      rintro β g a _ rfl k
      rfl
    refine ⟨Equiv.cast (congrArg Cl er.symm), key _ _ er (f t') (f t), congr_arg_heq U er, congr_arg_heq dict er,
      congrArg bad er, congrArg vol er, fun k => ⟨keyK Lh _ _ er.symm k, keyK La _ _ er.symm k, keyK Nc _ _ er.symm k,
      keyK gam _ _ er.symm k⟩⟩

end GlobalTheory.PinsNormal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientFieldStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientFieldStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNormalisedDataNormalCoefficientFieldStatement =====

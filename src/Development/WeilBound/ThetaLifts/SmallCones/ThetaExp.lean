module

public import Development.WeilBound.ThetaLifts.SmallCones.KerPol
public import Development.WeilBound.ThetaLifts.SmallCones.ExpAlg
public import Development.WeilBound.ThetaLifts.SmallCones.KerUni
public import Development.WeilBound.ThetaLifts.TowerModels.PlaneForm
public import Development.WeilBound.ThetaLifts.SmallCones.ExpSum
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumAdmissibility
public import Development.WeilBound.ThetaLifts.SmallCones.SliceSummable
public import Development.WeilBound.ThetaLifts.CTKernel
public import Development.WeilBound.ThetaLifts.TowerModels.PlaneHerm
public import Development.WeilBound.ThetaLifts.SmallCones.ThetaKernelGeneralIdentity
public import Development.WeilBound.ThetaLifts.SmallCones.HodgeTateFromSandwich
public import Development.WeilBound.ThetaLifts.SmallCones.ConeAB
public import Development.WeilBound.ThetaLifts.SmallCones.FormSwapZero
public import Development.WeilBound.ThetaLifts.SmallCones.GenAnisoOf
public import Development.WeilBound.ThetaLifts.SmallCones.GenSmallOf
public import Development.WeilBound.ThetaLifts.SmallCones.IntegrableProdOfBound
public import Development.WeilBound.ThetaLifts.SmallCones.IwaExOf
public import Development.WeilBound.ThetaLifts.SmallCones.KFinDataOf
public import Development.WeilBound.ThetaLifts.SmallCones.Leaves
public import Development.WeilBound.ThetaLifts.SmallCones.LinExOf
public import Development.WeilBound.ThetaLifts.SmallCones.LineInt
public import Development.WeilBound.ThetaLifts.SmallCones.MixABOf
public import Development.WeilBound.ThetaLifts.SmallCones.NormLeSum
public import Development.WeilBound.ThetaLifts.SmallCones.SchInt
public import Development.WeilBound.ThetaLifts.SmallCones.SoZero
public import Development.WeilBound.ThetaLifts.SmallCones.SplitLatMap
public import Development.WeilBound.ThetaLifts.SmallCones.StabDec
public import Development.WeilBound.ThetaLifts.SmallCones.TateAbs
public import Development.WeilBound.ThetaLifts.SmallCones.TwoExp
public import Development.WeilBound.ThetaLifts.SmallCones.Unfold
public import Development.WeilBound.ThetaLifts.SmallCones.UnipEx
import Development.WeilBound.ThetaLifts.LeviDeterminants.MixedModels.PlaneAd
import Development.WeilBound.ThetaLifts.SmallCones.FourierUniq
import Development.WeilBound.ThetaLifts.SmallCones.MatCancel
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
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardTraceAddCharIsStandardCharOfAdmissibleCM
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsCompactAdeleRingModNumberField
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Linter.HaveILetI
import Development.WeilBound.ThetaLifts.SmallCones.SoStab
import Development.WeilBound.ThetaLifts.SmallCones.WittOf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.ThetaLifts.SmallCones.ConstantTermRationalUnipotentInvariant, Development.WeilBound.ThetaLifts.SmallCones.ContinuousEvI, Development.WeilBound.ThetaLifts.SmallCones.Kernel, Development.WeilBound.ThetaLifts.SmallCones.ThetaExp

-- ===== clump member: Development.WeilBound.ThetaLifts.SmallCones.ConstantTermRationalUnipotentInvariant =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.SmallCones.ConstantTermRationalUnipotentInvariant", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.SmallCones.KerPol\nimport Development.WeilBound.ThetaLifts.LeviDeterminants.MixedModels.PlaneAd\nimport Development.WeilBound.ThetaLifts.SmallCones.ExpAlg\nimport Development.WeilBound.ThetaLifts.SmallCones.FourierUniq\npublic import Development.WeilBound.ThetaLifts.SmallCones.KerUni\nimport Development.WeilBound.ThetaLifts.SmallCones.MatCancel\npublic import Development.WeilBound.ThetaLifts.TowerModels.PlaneForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardTraceAddCharIsStandardCharOfAdmissibleCM\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedSectionVars false

noncomputable section

namespace PositivityTheory.ThKCT.Ker

open scoped TensorProduct NNReal ENNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK PositivityTheory.ThKEst PositivityTheory.ThKG PositivityTheory.ThKG.Tow PositivityTheory.Mix
open GlobalTheory.Doubling (absE)
open Matrix (vecMulVec)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d n₁ d₁ m : ℕ} {B : Base F E} {X : Spc F E n} {W : Spc F E d} {X₁ : Spc F E n₁} {W₁ : Spc F E d₁}
variable {H : Plane E n n₁} {H' : Plane E d d₁} {M : Model σ X W} {χX χW : Chr F E} {om : Rep σ X W} {r s r' s' : ℕ}

def tm (B : Base F E) (M : Model σ X W) (om : Rep σ X W) (H' : Plane E d d₁) {n₂ d₂ : ℕ} (e : Fn F n d →ₗ[ℂ] Fn F n₂ d₂)
    (U : Matrix (Fin n) (Fin d) E) (Φ : Fn F n d) (u : unip σ W H') : ℂ :=
  thetaSum F (e (M.co.rho B.ψ (incM F U) (om (1, u.1) Φ)))

section Gen

variable {n₂ d₂ : ℕ} {X₂ : Spc F E n₂} {W₂ : Spc F E d₂} {M₂ : Model σ X₂ W₂} {e : Fn F n d →ₗ[ℂ] Fn F n₂ d₂}
  {ι : Matrix (Fin n) (Fin n₂) E} {ι' : Matrix (Fin d) (Fin d₂) E} {I : Set (Ten F E n d)}

theorem tm_cont (hA : EvAdm) (hp : IsPair B M χX χW om r s r' s') (hM₂ : M₂.IsGood B.ψ) (he : IsEv B M M₂ ι ι' I e) (U) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) : Continuous (tm B M om H' e U Φ) := by
  obtain ⟨⟨l, hl, hθ⟩, -, h⟩ := hA F E σ B n d n₂ d₂ X W X₂ W₂ M M₂ hp.base hp.good hM₂
  obtain ⟨l', hl', h'⟩ := h ι ι' I e he (incM F U) l hl
  have hc := ((IsUWeilPair.isUSplitting hp.weil).cont l' hl' Φ hΦ).comp
    (f := fun u : unip σ W H' => ((1 : UA σ X.J), u.1)) (continuous_const.prodMk continuous_subtype_val)
  refine hc.congr fun u => ?_
  rw [Function.comp_apply, h' _ (om_mem hp _ hΦ), hθ _ (he.maps _ (rho_mem M hp.base.std _ (om_mem hp _ hΦ)))]
  rfl

theorem tm_eq (hp : IsPair B M χX χW om r s r' s') (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e (om (1, u) Φ) = e Φ)
    (U) {Φ} (hΦ : Φ ∈ schA F (Fin n × Fin d)) (u : unip σ W H') :
    tm B M om H' e U Φ u = thetaSum F (e (M.co.rho B.ψ (incM F U * (mat u.1⁻¹)ᵀ) Φ)) := by
  rw [tm, rho_om hp _ _ hΦ, hi _ u.2 _ (rho_mem M hp.base.std _ hΦ)]

theorem tm_mul (U) (Φ) (u v : unip σ W H') : tm B M om H' e U Φ (u * v) = tm B M om H' e U (om (1, v.1) Φ) u := by
  rw [tm, tm, PositivityTheory.ThKCT.om_mul]
  simp

theorem tm_one (U) (Φ) : tm B M om H' e U Φ 1 = thetaSum F (e (M.co.rho B.ψ (incM F U) Φ)) := by
  rw [tm, show ((1 : UA σ X.J), (1 : unip σ W H').1) = 1 from rfl, map_one]
  rfl

end Gen


variable (σ W H') in
structure MeanOK (μ : Measure (unip σ W H')) (𝓕 : Set (unip σ W H')) : Prop where
  haar : μ.IsHaarMeasure
  right : μ.IsMulRightInvariant
  dom : IsFundamentalDomain ((ratU σ W.J).subgroupOf (unip σ W H')) 𝓕 μ
  one : μ 𝓕 = 1
  cnt : Countable (ratU σ W.J)

variable {μ : Measure (unip σ W H')} {𝓕 : Set (unip σ W H')}

theorem MeanOK.zero (h : MeanOK σ W H' μ 𝓕) {f : unip σ W H' → ℂ} (hl : ∀ γ : unip σ W H', γ.1 ∈ ratU σ W.J → ∀ x, f (γ * x) = f x)
    {g} {c : ℂ} (hc : c ≠ 1) (hr : ∀ x, f (x * g) = c * f x) : ∫ x in 𝓕, f x ∂μ = 0 := by
  have : BorelSpace (UA σ W.J) := ⟨rfl⟩
  have : IsTopologicalRing (AE F E) := IsModuleTopology.isTopologicalRing (AF F) _
  have : IsTopologicalGroup (UA σ W.J) := Subgroup.instIsTopologicalGroupSubtypeMem _
  have := h.haar
  have := h.right
  have := h.cnt
  have : Countable ((ratU σ W.J).subgroupOf (unip σ W H')) :=
    Function.Injective.countable (f := fun x => (⟨x.1.1, x.2⟩ : ratU σ W.J)) fun a b e =>
      Subtype.ext (Subtype.ext (congrArg (fun y : ratU σ W.J => y.1) e))
  exact mean_zero _ μ h.dom hl hc hr

theorem MeanOK.sum (h : MeanOK σ W H' μ 𝓕) {ι : Type} [Countable ι] {f : ι → unip σ W H' → ℂ} (hf : ∀ i, Continuous (f i))
    {b : ι → ℝ} (hb : Summable b) (hfb : ∀ i x, ‖f i x‖ ≤ b i) {s : unip σ W H' → ℂ} (hs : ∀ x, HasSum (fun i => f i x) (s x)) :
    HasSum (fun i => ∫ x in 𝓕, f i x ∂μ) (∫ x in 𝓕, s x ∂μ) := by
  have : BorelSpace (UA σ W.J) := ⟨rfl⟩
  have : IsTopologicalRing (AE F E) := IsModuleTopology.isTopologicalRing (AF F) _
  have : IsTopologicalGroup (UA σ W.J) := Subgroup.instIsTopologicalGroupSubtypeMem _
  have hb' : BorelSpace (unip σ W H') := Subtype.borelSpace _
  exact @mean_hasSum (unip σ W H') _ _ hb' _ _ μ _ h.one _ hf _ hb hfb _ hs

theorem MeanOK.const (h : MeanOK σ W H' μ 𝓕) (c : ℂ) : ∫ _x in 𝓕, c ∂μ = c := by
  rw [setIntegral_const, Measure.real, h.one, ENNReal.toReal_one, one_smul]

theorem bf0 {R : Type} [CommRing R] {c : R →+* R} {J : Matrix (Fin n) (Fin n) R} (u) : bf c J u 0 = 0 := by
  simpa using bf_smul_r (c := c) (J := J) 0 u 0

theorem mid_vv (a : Fin n → AE F E) (z : Fin d₁ → AE F E) : vecMulVec a (incM F H'.ι *ᵥ z) =
    incM F (1 : Matrix (Fin n) (Fin n) E) * vecMulVec a z * (incM F H'.ι)ᵀ := by
  rw [incM_one, Matrix.one_mul, vv_mul_r]

section Zero

variable {M₁ : Model σ X W₁} {e₀ : Fn F n d →ₗ[ℂ] Fn F n d₁}

theorem constant_term_norm_eq_theta (hp : IsPair B M χX χW om r s r' s') (h' : PG σ W W₁ H' (-1)) (he : IsEv B M M₁ 1 H'.ι (iso0 n H') e₀)
    (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e₀ (om (1, u) Φ) = e₀ Φ) (x : Fin n → E) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) (u : unip σ W H') : ∃ w, ‖tm B M om H' e₀ (vecMulVec x H'.y) Φ u‖ =
      ‖thetaSum F (M₁.co.rho B.ψ w (e₀ (M.co.rho B.ψ (incM F (vecMulVec x H'.y)) Φ)))‖ := by
  obtain ⟨a, z, e⟩ := unip_y h' (inv_mem u.2)
  have h := hp.base.std
  refine ⟨vecMulVec (incV F x) z, ?_⟩
  rw [tm_eq hp hi _ hΦ, incM_vv, vv_mul_r, e, Matrix.vecMulVec_add, Matrix.vecMulVec_add, add_assoc,
    ev_I h he ⟨a • incV F x, by rw [Matrix.vecMulVec_smul, Matrix.smul_vecMulVec]⟩ _ hΦ, mid_vv, ev_mid h he _ _ hΦ,
    theta_smul, theta_smul, norm_mul, norm_mul, std_norm h, std_norm h, one_mul, one_mul]

theorem constant_term_rational_unipotent_invariant (hp : IsPair B M χX χW om r s r' s') (h' : PG σ W W₁ H' (-1)) (hM₁ : M₁.IsGood B.ψ)
    (he : IsEv B M M₁ 1 H'.ι (iso0 n H') e₀)
    (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e₀ (om (1, u) Φ) = e₀ Φ) (x : Fin n → E) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) (γ : unip σ W H') (hγ : γ.1 ∈ ratU σ W.J) (u : unip σ W H') :
    tm B M om H' e₀ (vecMulVec x H'.y) Φ (γ * u) = tm B M om H' e₀ (vecMulVec x H'.y) Φ u := by
  obtain ⟨a, z, e⟩ := unip_y_rat h' (inv_mem γ.2) (inv_mem hγ)
  have h := hp.base.std
  have hΨ := om_mem hp (1, u.1) hΦ
  have e1 : vecMulVec (incV F x) (incV F (H'.ι *ᵥ z)) =
      incM F (1 : Matrix (Fin n) (Fin n) E) * incM F (vecMulVec x z) * (incM F H'.ι)ᵀ := by rw [← inc_mulVec, mid_vv, incM_vv]
  rw [tm_mul, tm_eq hp hi _ hΨ, incM_vv, vv_mul_r, e, Matrix.vecMulVec_add, Matrix.vecMulVec_add, add_assoc,
    ev_I h he ⟨inclR (F := F) (AF F) a • incV F x, by rw [incV_smul, Matrix.vecMulVec_smul, Matrix.smul_vecMulVec]⟩ _ hΨ,
    ← incM_vv, ← incM_vv, ← incM_vv, ← incM_add, psi_rat h, one_smul, incM_add, incM_vv x (H'.ι *ᵥ z), e1, ev_mid h he _ _ hΨ, ← e1,
    ← incM_vv, psi_rat h, one_smul, theta_rho_rat h hM₁]
  rfl

theorem constant_term_anisotropic_integral_zero (hm : MeanOK σ W H' μ 𝓕) (hp : IsPair B M χX χW om r s r' s') (h' : PG σ W W₁ H' (-1)) (hM₁ : M₁.IsGood B.ψ)
    (he : IsEv B M M₁ 1 H'.ι (iso0 n H') e₀)
    (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e₀ (om (1, u) Φ) = e₀ Φ) {x : Fin n → E} (hx : form σ X.J x x ≠ 0) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) : ∫ u in 𝓕, tm B M om H' e₀ (vecMulVec x H'.y) Φ u ∂μ = 0 := by
  have h := hp.base.std
  obtain ⟨a, ha⟩ := _root_.GlobalTheory.StdCharWeilDatum.exists_ne_one h
  have hq : σ (form σ X.J x x) = form σ X.J x x := by
    rw [PositivityTheory.ThKG.Tow.Pln.form_swap hp.base.cm (ε := 1) (fun i j => by rw [hp.herm.herm, one_mul]), one_mul]
  set c : AE F E := algebraMap (AF F) (AE F E) a * inclR (F := F) (AF F) (form σ X.J x x)⁻¹ with hc
  obtain ⟨g, hg⟩ := exists_eich h' 0 c (by
    rw [hc, map_mul, AlgHom.commutes, cA_inc, map_inv₀ σ, hq, Matrix.mulVec_zero, bf0]
    push_cast
    ring)
  refine hm.zero (constant_term_rational_unipotent_invariant hp h' hM₁ he hi x hΦ) (g := g) ha fun u => ?_
  obtain ⟨b, z, e⟩ := unip_y h' (inv_mem u.2)
  have e2 : mat (u * g).1⁻¹ *ᵥ incV F H'.y = c • incV F H'.x + mat u.1⁻¹ *ᵥ incV F H'.y := by
    rw [Subgroup.coe_mul, mul_inv_rev, Fr.mat_mul, ← Matrix.mulVec_mulVec, hg, eich_apply, e]
    simp only [Matrix.mulVec_zero, bf_add_l, bf_smul_l, h'.ad.xx, h'.ad.ix, h'.ad.yx, mul_zero, zero_add, h'.ad.ee, one_smul, bf0,
      neg_zero, zero_smul, add_zero]
    exact add_comm _ _
  rw [tm_eq hp hi _ hΦ, tm_eq hp hi _ hΦ, incM_vv, vv_mul_r, vv_mul_r, e2, Matrix.vecMulVec_add,
    ev_I h he ⟨c • incV F x, by rw [Matrix.vecMulVec_smul, Matrix.smul_vecMulVec]⟩ _ hΦ, theta_smul, half_sy hp.base (a := a)]
  rw [hT_vv, e, bf_inc]
  simp only [bf_add_r, bf_smul_l, bf_smul_r, h'.ad.xx, h'.ad.xi, h'.ad.xy, mul_zero, zero_add, mul_one]
  rw [hc, mul_left_comm, ← map_mul, mul_inv_cancel₀ hx, map_one, mul_one]

end Zero

section Cone

variable {M₂ : Model σ X₁ W₁} {e : Fn F n d →ₗ[ℂ] Fn F n₁ d₁}

theorem tA_eig (hp : IsPair B M χX χW om r s r' s') (h' : PG σ W W₁ H' (-1)) (he : IsEv B M M₂ H.ι H'.ι (sumA H H') e)
    (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e (om (1, u) Φ) = e Φ) (w : Fin d₁ → E) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) (u : unip σ W H') : tm B M om H' e (vA H.y H'.y H'.ι (H.x, w)) Φ u =
      B.ψ (-(⅟(2 : AF F) * sy σ X W (incM F (vA H.y H'.y H'.ι (H.x, w)) * (mat u.1⁻¹)ᵀ - incM F (vA H.y H'.y H'.ι (H.x, w)))
        (incM F (vA H.y H'.y H'.ι (H.x, w))))) * tm B M om H' e (vA H.y H'.y H'.ι (H.x, w)) Φ 1 := by
  obtain ⟨a, z, e1⟩ := unip_y h' (inv_mem u.2)
  obtain ⟨b, e2⟩ := (Fr.mem_unip.1 (inv_mem u.2)).2 (incV F w)
  rw [tm_eq hp hi _ hΦ, tm_one, ← theta_smul, ← ev_I hp.base.std he ?_ _ hΦ, sub_add_cancel]
  refine ⟨a • incV F H.x + b • incV F H.y, z, ?_⟩
  rw [vA_apply, incM_add, incM_vv, incM_vv, Matrix.add_mul, vv_mul_r, vv_mul_r, ← inc_mulVec, e1, e2]
  simp only [Matrix.vecMulVec_add, Matrix.add_vecMulVec, Matrix.vecMulVec_smul, Matrix.smul_vecMulVec]
  abel

theorem tA_zero (hm : MeanOK σ W H' μ 𝓕) (hp : IsPair B M χX χW om r s r' s') (h : PG σ X X₁ H 1) (h' : PG σ W W₁ H' (-1))
    (he : IsEv B M M₂ H.ι H'.ι (sumA H H') e)
    (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e (om (1, u) Φ) = e Φ) {w : Fin d₁ → E} (hw : w ≠ 0) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) : ∫ u in 𝓕, tm B M om H' e (vA H.y H'.y H'.ι (H.x, w)) Φ u ∂μ = 0 := by
  have hψ := hp.base.std
  obtain ⟨a, ha⟩ := _root_.GlobalTheory.StdCharWeilDatum.exists_ne_one hψ
  obtain ⟨z₀, hz₀⟩ : ∃ z, bf σ.toRingHom W.J (H'.ι *ᵥ z) (H'.ι *ᵥ w) ≠ 0 := by
    by_contra h0
    push Not at h0
    exact hw (h'.nd_low w h0)
  set i2 : AE F E := algebraMap (AF F) (AE F E) (⅟2) with hi2
  have h2 : i2 * 2 = 1 := by rw [hi2, ← map_ofNat (algebraMap (AF F) (AE F E)) 2, ← map_mul, invOf_mul_self, map_one]
  have hc2 : cA σ i2 = i2 := AlgHom.commutes _ _
  set z : Fin d₁ → AE F E := (i2 * algebraMap (AF F) (AE F E) a) • incV F ((bf σ.toRingHom W.J (H'.ι *ᵥ z₀) (H'.ι *ᵥ w))⁻¹ • z₀) with hz
  have hb : bf (cA σ).toRingHom (incM F W.J) (incM F H'.ι *ᵥ z) (incM F H'.ι *ᵥ incV F w) = i2 * algebraMap (AF F) (AE F E) a := by
    rw [hz, Matrix.mulVec_smul, bf_smul_l, inc_mulVec, inc_mulVec, bf_inc, Matrix.mulVec_smul]
    rw [show form σ W.J _ _ = 1 from (bf_smul_l (c := σ.toRingHom) _ _ _).trans (inv_mul_cancel₀ hz₀), map_one, mul_one]
  have hb' : bf (cA σ).toRingHom (incM F W.J) (incM F H'.ι *ᵥ incV F w) (incM F H'.ι *ᵥ z) = -(i2 * algebraMap (AF F) (AE F E) a) := by
    rw [h'.ad.symm, hb, map_mul]
    change _ * (cA σ _ * cA σ _) = _
    rw [hc2, AlgHom.commutes]
    push_cast
    ring
  clear_value z
  obtain ⟨g, hg⟩ := exists_eich h' z (-(i2 * bf (cA σ).toRingHom (incM F W.J) (incM F H'.ι *ᵥ z) (incM F H'.ι *ᵥ z))) (by
    have := h'.ad.symm (incM F H'.ι *ᵥ z) (incM F H'.ι *ᵥ z)
    rw [map_neg, map_mul, hc2]
    change _ = _ * cA σ _ at this
    linear_combination i2 * this - bf (cA σ).toRingHom (incM F W.J) (incM F H'.ι *ᵥ z) (incM F H'.ι *ᵥ z) * h2)
  have hgc : tm B M om H' e (vA H.y H'.y H'.ι (H.x, w)) Φ g = B.ψ a * tm B M om H' e (vA H.y H'.y H'.ι (H.x, w)) Φ 1 := by
    rw [tA_eig hp h' he hi w hΦ g, half_sy hp.base (a := a)]
    rw [vA_apply, incM_add, incM_vv, incM_vv, Matrix.add_mul, vv_mul_r, vv_mul_r, ← inc_mulVec, hg, eich_y h'.ad, eich_i h'.ad, hb',
      sub_eq_add_neg, ← neg_one_smul (AE F E) (vecMulVec _ _ + vecMulVec _ _)]
    simp only [hT_add_l, hT_add_r, hT_smul_l, hT_vv, bf_add_l, bf_smul_l, h.ad.xx, h.ad.xy, h.ad.yx, h.ad.yy, h'.ad.xi, h'.ad.yi,
      h'.ad.xy, h'.ad.yy, h'.ad.iy, hb]
    push_cast
    linear_combination algebraMap (AF F) (AE F E) a * h2
  refine hm.zero (fun γ hγ u => ?_) (g := g) ha fun u => ?_
  · obtain ⟨D, hD⟩ := Fr.mem_ratU.1 (inv_mem hγ)
    rw [tm_mul, tA_eig hp h' he hi w (om_mem hp _ hΦ), hD,
      show ∀ U : Matrix (Fin n) (Fin d) E, incM F U * (incM F D)ᵀ - incM F U = incM F (U * Dᵀ - U) from fun U => by
        simp only [incM, Matrix.map_sub _ (map_sub _), Matrix.map_mul, Matrix.transpose_map],
      psi_rat hψ, one_mul, ← tm_mul, one_mul]
  · rw [tm_mul, tA_eig hp h' he hi w (om_mem hp _ hΦ), ← tm_mul, one_mul, hgc, tA_eig hp h' he hi w hΦ u]
    ring

end Cone

end PositivityTheory.ThKCT.Ker

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.SmallCones.ConstantTermRationalUnipotentInvariant =====

-- ===== clump member: Development.WeilBound.ThetaLifts.SmallCones.ContinuousEvI =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.SmallCones.ContinuousEvI", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.SmallCones.ExpSum\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsCompactAdeleRingModNumberField\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumAdmissibility\npublic import Development.WeilBound.ThetaLifts.SmallCones.ExpAlg\nimport Development.WeilBound.ThetaLifts.SmallCones.FourierUniq\npublic import Development.WeilBound.ThetaLifts.SmallCones.SliceSummable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\nimport Development.WeilBound.ThetaLifts.CTKernel\nimport Development.WeilBound.ThetaLifts.TowerModels.PlaneHerm\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedSectionVars false

noncomputable section

namespace PositivityTheory.ThKCT.Ker

open scoped TensorProduct NNReal ENNReal Matrix Classical
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK PositivityTheory.ThKEst PositivityTheory.ThKG PositivityTheory.ThKG.Tow
open GlobalTheory.Doubling (absE)
open Matrix (vecMulVec)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem continuous_evI : Continuous (evI F) := by
  have : Continuous (InfiniteAdeleRing.ringEquiv_mixedSpace F) := by
    change Continuous fun x : InfiniteAdeleRing F =>
      ((fun (v : {w : InfinitePlace F // w.IsReal}) => InfinitePlace.Completion.extensionEmbeddingOfIsReal v.2 (x v)),
       (fun (v : {w : InfinitePlace F // w.IsComplex}) => InfinitePlace.Completion.extensionEmbedding v.1 (x v)))
    refine Continuous.prodMk (continuous_pi fun v => ?_) (continuous_pi fun v => ?_)
    · exact (InfinitePlace.Completion.isometry_extensionEmbeddingOfIsReal v.2).continuous.comp (continuous_apply _)
    · exact (InfinitePlace.Completion.isometry_extensionEmbedding v.1).continuous.comp (continuous_apply _)
  exact this.comp continuous_fst

theorem sz_le {κ : Type} [Fintype κ] (y : κ → AF F) :
    PositivityTheory.ThKCT.sz y ≤ (1 + Fintype.card κ * Fintype.card (InfinitePlace F)) * (1 + ‖fun j => evI F (y j)‖) := by
  have h : ∑ j, ∑ w : InfinitePlace F, mixedEmbedding.normAtPlace w (evI F (y j)) ≤
      ∑ _j : κ, ∑ _w : InfinitePlace F, ‖fun j => evI F (y j)‖ :=
    Finset.sum_le_sum fun j _ => Finset.sum_le_sum fun w _ => by
      refine le_trans ?_ (norm_le_pi_norm (fun j => evI F (y j)) j)
      rw [mixedEmbedding.norm_eq_sup'_normAtPlace]
      exact Finset.le_sup' (fun w => mixedEmbedding.normAtPlace w (evI F (y j))) (Finset.mem_univ w)
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul] at h
  have h0 := norm_nonneg fun j => evI F (y j)
  have h1 : (0 : ℝ) ≤ Fintype.card κ * Fintype.card (InfinitePlace F) := by positivity
  unfold PositivityTheory.ThKCT.sz
  nlinarith

theorem theta_unif {κ : Type} [Fintype κ] {ψ : AddChar (AF F) ℂ} (hψ : IsStd ψ) {g : (κ → Af F) → ℂ} (hg : g ∈ SB (κ → Af F)) :
    ∃ p : Seminorm ℂ (SInf F κ), Continuous p ∧ ∀ (f : SInf F κ) w, ‖thetaSum F (schr ψ w (pureA F f g))‖ ≤ p f := by
  obtain ⟨K, hK, hc⟩ := GlobalTheory.AdeleCocompact.exists_compact_adele F
  obtain ⟨G, hG⟩ := hg.1.continuous.bounded_above_of_compact_support hg.2
  have hG0 : 0 ≤ G := (norm_nonneg _).trans (hG 0)
  have hKp : IsCompact (Set.univ.pi fun _ : κ => K) := isCompact_univ_pi fun _ => hK
  obtain ⟨A, hA⟩ := hKp.exists_bound_of_continuousOn
    (f := fun k : κ → AF F => fun j => evI F (k j)) (continuous_pi fun j => continuous_evI.comp (continuous_apply j)).continuousOn
  have hC : IsCompact ((fun x : (κ → Af F) × (κ → AF F) => x.1 - fun j => (x.2 j).2) '' (tsupport g ×ˢ Set.univ.pi fun _ : κ => K)) :=
    (hg.2.isCompact.prod hKp).image (continuous_fst.sub (continuous_pi fun j => ((continuous_apply j).comp continuous_snd).snd))
  obtain ⟨N, hN⟩ := summable_wt hC
  set C := (fun x : (κ → Af F) × (κ → AF F) => x.1 - fun j => (x.2 j).2) '' (tsupport g ×ˢ Set.univ.pi fun _ : κ => K) with hCd
  set wt : (κ → F) → ℝ := fun ξ => if (fun j => (algebraMap F (AF F) (ξ j)).2) ∈ C then
    (PositivityTheory.ThKCT.sz (fun j => algebraMap F (AF F) (ξ j)) ^ N)⁻¹ else 0 with hwt
  have hw0 : ∀ ξ, 0 ≤ wt ξ := fun ξ => by
    rw [hwt]; dsimp only; split_ifs
    · exact inv_nonneg.2 (pow_pos (sz_pos _) _).le
    · exact le_rfl
  set c : ℝ := (1 + Fintype.card κ * Fintype.card (InfinitePlace F)) * (1 + |A|) with hcdef
  have hc0 : 0 < c := by positivity
  let q : Seminorm ℂ (SInf F κ) := (Finset.Iic (N, 0)).sup (schwartzSeminormFamily ℂ _ ℂ)
  have hq : Continuous q := Seminorm.continuous_finsetSup fun i _ => (schwartz_withSeminorms ℂ _ ℂ).continuous_seminorm i
  let D : ℝ≥0 := ⟨2 ^ N * G * c ^ N * ∑' ξ, wt ξ, mul_nonneg (by positivity) (tsum_nonneg hw0)⟩
  refine ⟨D • q, hq.const_smul D, fun f w => ?_⟩
  choose a ha using fun j => hc (w.1 j)
  set k : κ → AF F := fun j => w.1 j - algebraMap F (AF F) (a j) with hk
  have hkK : k ∈ Set.univ.pi fun _ : κ => K := fun j _ => ha j
  have key : ∀ ξ : κ → F, ‖schr ψ w (pureA F f g) fun i => algebraMap F (AF F) (ξ i)‖ ≤ (2 ^ N * G * c ^ N * q f) * wt (ξ + a) := by
    intro ξ
    have e : (fun i => algebraMap F (AF F) (ξ i)) + w.1 = (fun i => algebraMap F (AF F) ((ξ + a) i)) + k := by
      funext i; simp [hk]
    rw [schr, norm_mul, std_norm hψ, one_mul, e]
    set η := ξ + a
    set y : κ → AF F := fun i => algebraMap F (AF F) (η i)
    change ‖f (fun i => evI F ((y + k) i)) * g (fun i => ((y + k) i).2)‖ ≤ _
    by_cases h0 : g (fun i => ((y + k) i).2) = 0
    · rw [h0, mul_zero, norm_zero]
      exact mul_nonneg (by positivity) (hw0 _)
    have hm : wt η = (PositivityTheory.ThKCT.sz y ^ N)⁻¹ := if_pos ⟨(_, k), ⟨subset_tsupport g h0, hkK⟩, by
      funext i
      change (y i).2 + (k i).2 - (k i).2 = _
      rw [add_sub_cancel_right]⟩
    set v : κ → mixedEmbedding.mixedSpace F := fun i => evI F ((y + k) i)
    have h1 := SchwartzMap.one_add_le_sup_seminorm_apply (𝕜 := ℂ) (m := (N, 0)) (k := N) (n := 0) le_rfl le_rfl f v
    rw [norm_iteratedFDeriv_zero] at h1
    have h2 : PositivityTheory.ThKCT.sz y ≤ c * (1 + ‖v‖) := by
      refine (sz_le y).trans ?_
      rw [hcdef, mul_assoc]
      refine mul_le_mul_of_nonneg_left ?_ (by positivity)
      have e2 : (fun j => evI F (y j)) = v - fun j => evI F (k j) := funext fun j =>
        eq_sub_of_add_eq (map_add (InfiniteAdeleRing.ringEquiv_mixedSpace F) (y j).1 (k j).1).symm
      have := norm_sub_le v fun j => evI F (k j)
      have h3 := (hA k hkK).trans (le_abs_self A)
      rw [e2]
      nlinarith [norm_nonneg v, abs_nonneg A]
    rw [hm, ← div_eq_mul_inv, le_div_iff₀ (pow_pos (sz_pos _) _), norm_mul]
    calc _ ≤ ‖f v‖ * G * (c * (1 + ‖v‖)) ^ N :=
          mul_le_mul (mul_le_mul_of_nonneg_left (hG _) (norm_nonneg _)) (pow_le_pow_left₀ (sz_pos _).le h2 N) (pow_pos (sz_pos _) _).le
            (by positivity)
      _ = G * c ^ N * ((1 + ‖v‖) ^ N * ‖f v‖) := by rw [mul_pow]; ring
      _ ≤ G * c ^ N * (2 ^ N * q f) := mul_le_mul_of_nonneg_left h1 (by positivity)
      _ = _ := by ring
  have hs : HasSum (fun ξ => wt (ξ + a)) (∑' ξ, wt ξ) := (Equiv.addRight a).hasSum_iff.2 hN.hasSum
  refine (tsum_of_norm_bounded (hs.mul_left _) key).trans_eq ?_
  change _ = (2 ^ N * G * c ^ N * ∑' ξ, wt ξ) * q f
  ring

variable {n d n₁ d₁ m : ℕ} {B : Base F E} {X : Spc F E n} {W : Spc F E d} {X₁ : Spc F E n₁} {W₁ : Spc F E d₁}
  {M : Model σ X W} {M₁ : Model σ X₁ W₁} {ι : Matrix (Fin n) (Fin n₁) E} {ι' : Matrix (Fin d) (Fin d₁) E}
  {I : Set (Ten F E n d)} {e : Fn F n d →ₗ[ℂ] Fn F n₁ d₁} {u z : Fin m → Matrix (Fin n) (Fin d) E}

theorem slice_unif (hS : Slice) (hB : B.IsGood σ) (hM : M.IsGood B.ψ) (hM₁ : M₁.IsGood B.ψ) (he : IsEv B M M₁ ι ι' I e)
    (hD : Dual σ X W I u z) {Φ} (hΦ : Φ ∈ schA F (Fin n × Fin d)) : ∃ b : (Fin m → F) → ℝ, Summable b ∧ ∀ y w,
      ‖thetaSum F (M₁.co.rho B.ψ w (e (M.co.rho B.ψ (lin u fun j => algebraMap F (AF F) (y j)) Φ)))‖ ≤ b y := by
  obtain ⟨l, -, hl⟩ := (GlobalTheory.CompanionTheory.ThetaAdm.theta_adm F (Fin n₁ × Fin d₁)).2.1
  have h := hB.std
  suffices ∃ b : (Fin m → F) → ℝ, Summable b ∧ ∀ y w,
      ‖l (rhoL B M₁ w (e (rhoL B M (lin u fun j => algebraMap F (AF F) (y j)) Φ)))‖ ≤ b y by
    obtain ⟨b, h1, h2⟩ := this
    exact ⟨b, h1, fun y w => by rw [← hl _ (rho_mem M₁ h _ (he.maps _ (rho_mem M h _ hΦ)))]; exact h2 y w⟩
  induction hΦ using Submodule.span_induction with
  | mem Φ h0 =>
    obtain ⟨f, φ, hφ, rfl⟩ := h0
    obtain ⟨r, φ₁, C, A, h1, hC, -, h2, h3, h4⟩ := hS F E σ B n d n₁ d₁ X W X₁ W₁ M M₁ hB hM hM₁ ι ι' I e he m u z hD φ hφ
    obtain ⟨N, hN⟩ := summable_wt hC
    choose q hq hb using fun i => theta_unif h (h1 i)
    choose p hp hpq using fun i => h4 (q i) N (hq i)
    refine ⟨_, hN.mul_left (∑ i, p i f), fun y w => ?_⟩

    rw [show e (rhoL B M _ _) = _ from h2 _ f, map_sum, map_sum]
    have hb' : ∀ i (f' : SInf F (Fin n₁ × Fin d₁)), ‖l (rhoL B M₁ w (pureA F f' (φ₁ i)))‖ ≤ q i f' := fun i f' =>
      (congrArg norm (hl _ (rho_mem M₁ h w (Submodule.subset_span ⟨f', _, h1 i, rfl⟩)))).trans_le (hb i f' _)
    split_ifs with hy
    · rw [Finset.sum_mul]
      refine norm_sum_le_of_le _ fun i _ => (hb' i _).trans ?_
      rw [← div_eq_mul_inv, le_div_iff₀ (pow_pos (sz_pos _) _)]
      exact hpq i i _ f
    · refine (norm_sum_le_of_le _ fun i _ => hb' i _).trans ?_
      simp [h3 _ _ hy]
  | zero => exact ⟨0, summable_zero, fun y w => by simp⟩
  | add Φ Ψ _ _ h1 h2 =>
    obtain ⟨a, a1, a2⟩ := h1
    obtain ⟨b, b1, b2⟩ := h2
    exact ⟨a + b, a1.add b1, fun y w => by
      simp only [map_add (f := _)]; exact (norm_add_le _ _).trans (add_le_add (a2 y w) (b2 y w))⟩
  | smul c Φ _ h1 =>
    obtain ⟨a, a1, a2⟩ := h1
    exact ⟨fun y => ‖c‖ * a y, a1.mul_left _, fun y w => by
      simp only [map_smul, norm_smul]; exact mul_le_mul_of_nonneg_left (a2 y w) (norm_nonneg c)⟩

end PositivityTheory.ThKCT.Ker

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.SmallCones.ContinuousEvI =====

-- ===== clump member: Development.WeilBound.ThetaLifts.SmallCones.Kernel =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.SmallCones.Kernel", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.SmallCones.ConstantTermRationalUnipotentInvariant\npublic import Development.WeilBound.ThetaLifts.CTKernel\npublic import Development.WeilBound.ThetaLifts.TowerModels.PlaneHerm\nimport Development.WeilBound.ThetaLifts.LeviDeterminants.MixedModels.PlaneAd\npublic import Development.WeilBound.ThetaLifts.SmallCones.ContinuousEvI\nimport Development.WeilBound.ThetaLifts.SmallCones.ExpAlg\nimport Development.WeilBound.ThetaLifts.SmallCones.FourierUniq\nimport Development.WeilBound.ThetaLifts.SmallCones.KerUni\nimport Development.WeilBound.ThetaLifts.SmallCones.MatCancel\npublic import Development.WeilBound.ThetaLifts.SmallCones.ThetaKernelGeneralIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedSectionVars false

noncomputable section

namespace PositivityTheory.ThKCT.Ker

open scoped TensorProduct NNReal ENNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK PositivityTheory.ThKEst PositivityTheory.ThKG PositivityTheory.ThKG.Tow PositivityTheory.Mix
open GlobalTheory.Doubling (absE)
open Matrix (vecMulVec)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {n d n₁ d₁ m : ℕ} {B : Base F E} {X : Spc F E n} {W : Spc F E d} {X₁ : Spc F E n₁} {W₁ : Spc F E d₁}
variable {H : Plane E n n₁} {H' : Plane E d d₁} {M : Model σ X W} {χX χW : Chr F E} {om : Rep σ X W} {r s r' s' i₀ i₁ j₀ j₁ : ℕ}
  {μ : Measure (unip σ W H')} {𝓕 : Set (unip σ W H')} {M₁ : Model σ X W₁} {e₀ : Fn F n d →ₗ[ℂ] Fn F n d₁}

theorem pair_low (hP : PairEx) (hL : Low) (hp : IsPair B M χX χW om r s r' s') (hH' : H'.IsAdapted σ B W W₁ i₀ i₁)
    (hM₁ : M₁.IsGood B.ψ) : ∃ om₁, IsPair B M₁ χX χW om₁ r s (r' - 1) (s' - 1) :=
  (hP F E σ B hp.base n d₁ X W₁ r s _ _ hp.herm ((hL F E σ B d d₁ W W₁ H' i₀ i₁ r' s' hp.base hH').2 hp.skew).2.2).2 χX χW hp.hX hp.hW
    hp.resX (res_low hp.resW hH'.rank) M₁ hM₁

theorem mix0 (hW : MixW) (hp : IsPair B M χX χW om r s r' s') (hH' : H'.IsAdapted σ B W W₁ i₀ i₁) {om₁ r₁ s₁}
    (hp₁ : IsPair B M₁ χX χW om₁ r s r₁ s₁) (he : IsEv B M M₁ 1 H'.ι (iso0 n H') e₀) (g) {u} (hu : u ∈ unip σ W H') {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) : e₀ (om (g, u) Φ) = om₁ (g, 1) (e₀ Φ) := by
  have := hW F E σ B n d X W M χX χW om r s r' s' hp d₁ W₁ H' i₀ i₁ M₁ om₁ r₁ s₁ hH' hp₁ e₀ he g 1 1 1 Fr.levi_one u hu Φ hΦ
  simpa using this

theorem meanOK (hU : UnipEx) (hG : GrpTop) (hO : EpsOf) (hp : IsPair B M χX χW om r s r' s') (hH' : H'.IsAdapted σ B W W₁ i₀ i₁)
    (a : μ.IsHaarMeasure) (b : IsFundamentalDomain ((ratU σ W.J).subgroupOf (unip σ W H')) 𝓕 μ) (c : μ 𝓕 = 1) : MeanOK σ W H' μ 𝓕 :=
  ⟨a, (hU F E σ B d d₁ W W₁ H' i₀ i₁ r' s' hp.base (Or.inr hp.skew) hH').2.2.2.1 μ a, b, c,
    (hG F E σ hp.base.cm d W.J (hO F E σ B hp.base d W r' s' (Or.inr hp.skew)).1).2.2.2.1⟩

theorem sum0 (hS : Slice) (hA : EvAdm) (hm : MeanOK σ W H' μ 𝓕) (hp : IsPair B M χX χW om r s r' s') (h' : PG σ W W₁ H' (-1))
    (hM₁ : M₁.IsGood B.ψ) (he : IsEv B M M₁ 1 H'.ι (iso0 n H') e₀)
    (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e₀ (om (1, u) Φ) = e₀ Φ) {C : ℂ}
    (hC : ∀ Φ ∈ schA F _, HasSum (fun t => C * thetaSum F (e₀ (M.co.rho B.ψ (incM F (vL n H'.y t)) Φ))) (thetaSum F Φ)) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) :
    HasSum (fun x => C * ∫ u in 𝓕, tm B M om H' e₀ (vecMulVec x H'.y) Φ u ∂μ) (∫ u in 𝓕, thetaSum F (om (1, u.1) Φ) ∂μ) := by
  have := _root_.Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.Unfold.countableE (E := E)
  obtain ⟨m, b, z, hP⟩ := pol0 (F := F) (herm_det hp.herm) h'
  obtain ⟨β, h1, h2⟩ := slice_unif hS hp.base hp.good hM₁ he hP.toDual hΦ
  simp only [← integral_const_mul]
  refine hm.sum (f := fun x u => C * tm B M om H' e₀ (vecMulVec x H'.y) Φ u) (fun x => continuous_const.mul (tm_cont hA hp hM₁ he _ hΦ)) (b := fun x => ‖C‖ * β (b.equivFun x))
    ((b.equivFun.toEquiv.summable_iff.2 h1).mul_left _) (fun x u => ?_) fun u => hC _ (om_mem hp _ hΦ)
  obtain ⟨w, hw⟩ := constant_term_norm_eq_theta hp h' he hi x hΦ u
  rw [norm_mul, hw, ← vL_apply, ← lin_basis b]
  exact mul_le_mul_of_nonneg_left (h2 _ _) (norm_nonneg _)

theorem constant_term_integral_at_zero (hm : MeanOK σ W H' μ 𝓕) (hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e₀ (om (1, u) Φ) = e₀ Φ) {Φ}
    (hΦ : Φ ∈ schA F (Fin n × Fin d)) : ∫ u in 𝓕, tm B M om H' e₀ (vecMulVec 0 H'.y) Φ u ∂μ = thetaSum F (e₀ Φ) := by
  rw [← hm.const (thetaSum F (e₀ Φ))]
  congr 1
  funext u
  rw [tm, incM_vv, show incV F (0 : Fin n → E) = 0 from funext fun _ => map_zero _, Matrix.zero_vecMulVec, rho_zero, hi _ u.2 _ hΦ]

theorem constant_term_rational_translate (hW : MixW) (hT : ThetaBasic) (hp : IsPair B M χX χW om r s r' s') (hH' : H'.IsAdapted σ B W W₁ i₀ i₁) {om₁ r₁ s₁}
    (hp₁ : IsPair B M₁ χX χW om₁ r s r₁ s₁) (he : IsEv B M M₁ 1 H'.ι (iso0 n H') e₀) {γ : UA σ X.J} (hγ : γ ∈ ratU σ X.J)
    {x y : Fin n → E} (hx : mat γ *ᵥ incV F x = incV F y) {Φ} (hΦ : Φ ∈ schA F (Fin n × Fin d)) (u : unip σ W H') :
    tm B M om H' e₀ (vecMulVec x H'.y) Φ u = tm B M om H' e₀ (vecMulVec y H'.y) (om (γ, 1) Φ) u := by
  have h1 := rho_mem M hp.base.std (incM F (vecMulVec x H'.y)) (om_mem hp (1, u.1) hΦ)
  have h2 := ((hT F E σ B n d₁ X W₁ M₁ χX χW om₁ r s r₁ s₁ hp₁).1 _ (he.maps _ h1)).2.1 γ hγ 1 (one_mem _) 1 1
  rw [theta, theta, mul_one, mul_one, ← mix0 hW hp hH' hp₁ he γ (one_mem _) h1, show ((1 : UA σ X.J), (1 : UA σ W₁.J)) = 1 from rfl,
    map_one, Module.End.one_apply, om_rho hp _ _ _ (om_mem hp _ hΦ), Fr.mat_one, Matrix.transpose_one, Matrix.mul_one, PositivityTheory.ThKCT.om_mul, incM_vv,
    Matrix.mul_vecMulVec, hx] at h2
  rw [tm, tm, incM_vv, incM_vv, ← h2, PositivityTheory.ThKCT.om_mul]
  simp

theorem constant_term_cone_integral_eq (hA : EvAdm) (hm : MeanOK σ W H' μ 𝓕) (hp : IsPair B M χX χW om r s r' s') (h : PG σ X X₁ H 1)
    (h' : PG σ W W₁ H' (-1)) {M₂ : Model σ X₁ W₁} (hM₂ : M₂.IsGood B.ψ) (he₀ : IsEv B M M₁ 1 H'.ι (iso0 n H') e₀)
    {e : Fn F n d →ₗ[ℂ] Fn F n₁ d₁} (he : IsEv B M M₂ H.ι H'.ι (sumA H H') e)
    (hi₀ : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e₀ (om (1, u) Φ) = e₀ Φ) {eX : Fn F n d₁ →ₗ[ℂ] Fn F n₁ d₁} {C c : ℂ}
    (hc : c ≠ 0) (hC : ∀ Φ ∈ schA F _, HasSum (fun t => C * thetaSum F (eX (M₁.co.rho B.ψ (incM F (vR d₁ H.y t)) Φ))) (thetaSum F Φ))
    (hce : ∀ Φ ∈ schA F _, eX (e₀ Φ) = c • e Φ) {Φ} (hΦ : Φ ∈ schA F (Fin n × Fin d)) :
    ∫ u in 𝓕, tm B M om H' e₀ (vecMulVec H.x H'.y) Φ u ∂μ = C * c * thetaSum F (e (M.co.rho B.ψ (shiftA H H' 1) Φ)) := by
  have := _root_.Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.Unfold.countableE (E := E)
  have hψ := hp.base.std
  have hi : ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e (om (1, u) Φ) = e Φ := fun u hu Φ hΦ =>
    smul_right_injective _ hc (by simp only [← hce _ hΦ, ← hce _ (om_mem hp _ hΦ), hi₀ u hu Φ hΦ])
  have hs : ∀ u, HasSum (fun w => C * c * tm B M om H' e (vA H.y H'.y H'.ι (H.x, w)) Φ u)
      (tm B M om H' e₀ (vecMulVec H.x H'.y) Φ u) := fun u => by
    have h1 := rho_mem M hψ (incM F (vecMulVec H.x H'.y)) (om_mem hp (1, u.1) hΦ)
    convert hC _ (he₀.maps _ h1) using 2 with w
    rw [← he₀.Heisenberg₂ _ _ h1, hce _ (rho_mem M hψ _ h1), theta_smul, vR_apply, incM_vv, ← mid_vv, incM_vv,
      rho_rho_of _ _ _ _ (sy_of_hT (by rw [hT_vv, h'.ad.iy, mul_zero])), tm, vA_apply, incM_add, incM_vv, incM_vv, inc_mulVec, add_comm,
      mul_assoc]
    rfl
  have := hm.sum (f := fun w u => C * c * tm B M om H' e (vA H.y H'.y H'.ι (H.x, w)) Φ u) (fun w => continuous_const.mul (tm_cont hA hp hM₂ he _ hΦ)) (hs 1).summable.norm (fun w u => by
    rw [tA_eig hp h' he hi w hΦ u, norm_mul, norm_mul, norm_mul, std_norm hψ, one_mul, norm_mul (C * c), norm_mul C]) hs
  refine this.unique ?_
  convert hasSum_single (0 : Fin d₁ → E) fun w hw => ?_ using 1
  · rw [← hm.const (_ * _ * _)]
    congr 1
    funext u
    rw [tm_eq hp hi _ hΦ, vA_apply, Matrix.mulVec_zero, vv0, add_zero, incM_vv, vv_mul_r, shiftA, Units.val_one, one_smul]
    obtain ⟨a, z, e1⟩ := unip_y h' (inv_mem u.2)
    rw [e1, Matrix.vecMulVec_add, ev_I hψ he ⟨a • incV F H.x, z, by
      rw [Matrix.vecMulVec_add, Matrix.vecMulVec_smul, Matrix.smul_vecMulVec]⟩ _ hΦ,
      sy_of_hT (by rw [hT_vv, h.ad.xx, zero_mul]), mul_zero, neg_zero, AddChar.map_zero_eq_one, one_smul]
  · rw [integral_const_mul, tA_zero hm hp h h' he hi hw hΦ, mul_zero]

theorem split_sum {ι : Type} [Zero ι] {g : ι → ℂ} {S : ℂ} (h : HasSum g S) (p : ι → Prop) (h0 : ∀ x, ¬ p x → g x = 0) :
    HasSum (fun x : {x // x ≠ 0 ∧ p x} => g x) (S - g 0) := by
  classical
  have h1 := h.update 0 0
  rw [← hasSum_subtype_iff_of_support_subset (s := {x | x ≠ 0 ∧ p x}) fun x hx => by
    have : x ≠ 0 := by rintro rfl; simp at hx
    exact ⟨this, by by_contra hp; exact hx (by rw [Function.update_of_ne this, h0 x hp])⟩] at h1
  rw [show S - g 0 = 0 - g 0 + S by ring, show (fun x : {x // x ≠ 0 ∧ p x} => g x) = Function.update g 0 0 ∘ Subtype.val from
    funext fun x => (Function.update_of_ne x.2.1 _ _).symm]
  exact h1

end PositivityTheory.ThKCT.Ker

namespace PositivityTheory.ThKCT

open scoped Matrix
open NumberField MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK PositivityTheory.ThKEst PositivityTheory.ThKG PositivityTheory.ThKG.Tow Ker

theorem ctKernel_of (hE : ThetaExp) (hQ : EvUniq) (hS : Slice) (hA : EvAdm) (hW : MixW) (hX : MixX) (hT : ThetaBasic) (hP : PairEx)
    (hL : Low) (hU : UnipEx) (hG : GrpTop) (hO : EpsOf) : CTKernel := by
  intro F E _ _ _ _ _ σ B n d d₁ X W W₁ M M₁ H' i₀ i₁ hH' hM₁ e₀ he₀
  by_cases hex : ∃ χX χW om r s r' s', IsPair B M χX χW om r s r' s'
  swap
  · exact ⟨1, one_ne_zero, fun _ χX χW om r s r' s' hp => absurd ⟨χX, χW, om, r, s, r', s', hp⟩ hex,
      fun _ _ _ _ _ _ _ _ _ _ => ⟨1, one_ne_zero, fun _ _ χX χW om r s r' s' hp => absurd ⟨χX, χW, om, r, s, r', s', hp⟩ hex⟩⟩
  obtain ⟨χ₁, χ₂, om₀, r₀, s₀, r₀', s₀', hp₀⟩ := hex
  have hB := hp₀.base
  have h' := pg_skew hB hH' hp₀.skew
  obtain ⟨C₀, hC₀, hs₀⟩ := (pol0 (F := F) (herm_det hp₀.herm) h').exp hE hB hp₀.good hM₁ he₀
  have hi₀ : ∀ {χX χW om r s r' s'}, IsPair B M χX χW om r s r' s' →
      ∀ u ∈ unip σ W H', ∀ Φ ∈ schA F (Fin n × Fin d), e₀ (om (1, u) Φ) = e₀ Φ := fun hp u hu Φ hΦ => by
    obtain ⟨om₁, hp₁⟩ := pair_low hP hL hp hH' hM₁
    rw [mix0 hW hp hH' hp₁ he₀ 1 hu hΦ, show ((1 : UA σ X.J), (1 : UA σ W₁.J)) = 1 from rfl, map_one, Module.End.one_apply]
  have key : ∀ {χX χW om r s r' s'}, IsPair B M χX χW om r s r' s' → ∀ {μ 𝓕}, MeanOK σ W H' μ 𝓕 → ∀ Φ ∈ schA F (Fin n × Fin d), ∀ g h,
      HasSum (fun x : IsoV σ X => C₀ * ∫ u in 𝓕, tm B M om H' e₀ (Matrix.vecMulVec x.1 H'.y) (om (g, h) Φ) u ∂μ)
        (∫ u in 𝓕, theta om Φ g (u.1 * h) ∂μ - C₀ * thetaSum F (e₀ (om (g, h) Φ))) := fun hp μ 𝓕 hm Φ hΦ g h => by
    have hΨ := om_mem hp (g, h) hΦ
    have := split_sum (sum0 hS hA hm hp h' hM₁ he₀ (hi₀ hp) hs₀ hΨ) (fun x => form σ X.J x x = 0) fun x hx => by
      rw [constant_term_anisotropic_integral_zero hm hp h' hM₁ he₀ (hi₀ hp) hx hΨ, mul_zero]
    simp only [constant_term_integral_at_zero hm (hi₀ hp) hΨ, PositivityTheory.ThKCT.om_mul, Prod.mk_mul_mk, one_mul] at this
    exact this
  refine ⟨C₀, hC₀, fun han χX χW om r s r' s' hp Φ hΦ g μ 𝓕 a b c h => ?_, fun n₁ X₁ H j₀ j₁ M₂ hH hM₂ e he => ?_⟩
  · haveI : IsEmpty (IsoV σ X) := ⟨fun x => x.2.1 (han _ x.2.2)⟩
    exact (sub_eq_zero.1 ((key hp (meanOK hU hG hO hp hH' a b c) Φ hΦ g h).unique hasSum_empty)).symm
  have h := pg_herm hB hH hp₀.herm
  obtain ⟨om₁, hp₁⟩ := pair_low hP hL hp₀ hH' hM₁
  obtain ⟨om₂, hp₂⟩ := (hP F E σ B hB n₁ d₁ X₁ W₁ _ _ _ _ ((hL F E σ B n n₁ X X₁ H j₀ j₁ r₀ s₀ hB hH).1 hp₀.herm).2.2 hp₁.skew).2 χ₁ χ₂
    hp₀.hX hp₀.hW (res_low hp₀.resX hH.rank) hp₁.resW M₂ hM₂
  obtain ⟨eX, heX⟩ := (hX F E σ B n d₁ X W₁ M₁ χ₁ χ₂ om₁ _ _ _ _ hp₁ n₁ X₁ H j₀ j₁ M₂ om₂ _ _ hH hp₂).1
  have hPX := polX (F := F) h (skew_det hp₁.skew)
  obtain ⟨C, hC, hsX⟩ := hPX.exp hE hB hM₁ hM₂ heX
  have he' := isEv_sumA hB.std h' he
  have hcomp := isEv_comp hB.std hp₀.good hM₁ hM₂ he₀ heX (comp_ne hPX hE hB hp₀.good hM₁ hM₂ he₀ heX) (K := isoA H H') (by
    rintro u (hu | ⟨z, rfl⟩)
    exacts [Or.inl hu, Or.inr ⟨_, ⟨z, rfl⟩, mid_vv _ _⟩])
  rw [Matrix.one_mul, Matrix.mul_one] at hcomp
  obtain ⟨c, hc, hce⟩ := (polA h h').uniq hQ hB hp₀.good hM₂ he' (isEv_sumA hB.std h' hcomp)
  refine ⟨C₀ * (C * c), mul_ne_zero hC₀ (mul_ne_zero hC hc), fun γ hγ χX χW om r s r' s' hp Φ hΦ g => ?_⟩
  have key2 : ∀ {μ 𝓕}, MeanOK σ W H' μ 𝓕 → ∀ k, HasSum
      (fun x => C₀ * (C * c) * thetaSum F (e (M.co.rho B.ψ (shiftA H H' 1) (om (γ x * g, k) Φ))))
      (∫ u in 𝓕, theta om Φ g (u.1 * k) ∂μ - C₀ * thetaSum F (e₀ (om (g, k) Φ))) := fun hm k => by
    obtain ⟨om₁, hp₁⟩ := pair_low hP hL hp hH' hM₁
    convert key hp hm Φ hΦ g k using 2 with x
    simp only [constant_term_rational_translate hW hT hp hH' hp₁ he₀ (hγ x).1 (hγ x).2 (om_mem hp _ hΦ), PositivityTheory.ThKCT.om_mul, Prod.mk_mul_mk, one_mul]
    rw [constant_term_cone_integral_eq hA hm hp h h' hM₂ he₀ he' (hi₀ hp) hc hsX hce (om_mem hp _ hΦ), mul_assoc]
  refine ⟨fun k => ?_, fun μ 𝓕 a b c' k => ?_⟩
  · obtain ⟨μ, 𝓕, a, b, c'⟩ := (hU F E σ B d d₁ W W₁ H' i₀ i₁ r' s' hB (Or.inr hp.skew) hH').1
    exact (summable_mul_left_iff (mul_ne_zero hC₀ (mul_ne_zero hC hc))).1 (key2 (meanOK hU hG hO hp hH' a b c') k).summable
  · beta_reduce
    rw [← tsum_mul_left, (key2 (meanOK hU hG hO hp hH' a b c') k).tsum_eq, add_sub_cancel]

end PositivityTheory.ThKCT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.SmallCones.Kernel =====

-- ===== clump member: Development.WeilBound.ThetaLifts.SmallCones.ThetaExp =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.SmallCones.ThetaExp", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.CTKernel\npublic import Development.WeilBound.ThetaLifts.SmallCones.HodgeTateFromSandwich\npublic import Development.WeilBound.ThetaLifts.TowerModels.PlaneHerm\npublic import Development.WeilBound.ThetaLifts.SmallCones.ConeAB\npublic import Development.WeilBound.ThetaLifts.SmallCones.FormSwapZero\npublic import Development.WeilBound.ThetaLifts.SmallCones.GenAnisoOf\npublic import Development.WeilBound.ThetaLifts.SmallCones.GenSmallOf\npublic import Development.WeilBound.ThetaLifts.SmallCones.IntegrableProdOfBound\npublic import Development.WeilBound.ThetaLifts.SmallCones.IwaExOf\npublic import Development.WeilBound.ThetaLifts.SmallCones.KFinDataOf\npublic import Development.WeilBound.ThetaLifts.SmallCones.Kernel\npublic import Development.WeilBound.ThetaLifts.SmallCones.Leaves\npublic import Development.WeilBound.ThetaLifts.SmallCones.LinExOf\npublic import Development.WeilBound.ThetaLifts.SmallCones.LineInt\npublic import Development.WeilBound.ThetaLifts.SmallCones.MixABOf\npublic import Development.WeilBound.ThetaLifts.SmallCones.NormLeSum\npublic import Development.WeilBound.ThetaLifts.SmallCones.SchInt\nimport Development.WeilBound.ThetaLifts.SmallCones.SliceSummable\nimport Development.WeilBound.ThetaLifts.SmallCones.SoStab\npublic import Development.WeilBound.ThetaLifts.SmallCones.SoZero\npublic import Development.WeilBound.ThetaLifts.SmallCones.SplitLatMap\npublic import Development.WeilBound.ThetaLifts.SmallCones.StabDec\npublic import Development.WeilBound.ThetaLifts.SmallCones.TateAbs\npublic import Development.WeilBound.ThetaLifts.SmallCones.TwoExp\npublic import Development.WeilBound.ThetaLifts.SmallCones.Unfold\npublic import Development.WeilBound.ThetaLifts.SmallCones.UnipEx\nimport Development.WeilBound.ThetaLifts.SmallCones.WittOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.ThKCT

open scoped TensorProduct NNReal ENNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK PositivityTheory.ThKEst PositivityTheory.ThKG PositivityTheory.ThKG.Tow
open GlobalTheory.Doubling (absE)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

structure Ext : Prop where
  mixW : MixW
  mixX : MixX
  basic : ThetaBasic
  evZero : EvZero
  evCone : EvCone
  stab : StabEx
  pair : PairEx
  plane : PlaneHerm
  top : GrpTop
  eps : EpsOf
  triple : TriplePair
  weil : WeilConv
  dom : DomWeil
  semi : SoSemi
  decay : SoDecay
  vol : FinVolU
  fin : SoFin

theorem thetaExp : ThetaExp := thetaExp_of slice_of

theorem evUniq : EvUniq := evUniq_of thetaExp

theorem Ext.kernel (h : Ext) : CTKernel :=
  ctKernel_of thetaExp evUniq slice_of evAdm_of h.mixW h.mixX h.basic h.pair low_of unipEx_of h.top h.eps

theorem Ext.fub (h : Ext) : CTFub := ctFub_of unipEx_of h.basic h.top h.eps

theorem Ext.mixAB (h : Ext) : MixAB := Ker.mixAB_of h.mixW h.mixX h.evZero h.pair thetaExp evUniq

theorem Ext.coneA (h : Ext) : ConeA :=
  coneA_of unfold_of unipEx_of stabDec_of h.basic h.top h.eps evAdm_of h.mixAB (lineInt_of slice_of schInt tateAbs) h.dom

theorem Ext.coneB (h : Ext) : ConeB :=
  coneB_of unfold_of unipEx_of stabDec_of h.basic h.top h.eps evAdm_of h.mixAB (lineInt_of slice_of schInt tateAbs) h.semi h.vol h.fin soStab_of
    (soEv_of linEx_of low_of)

theorem Ext.genAniso (h : Ext) : GenAniso := genAniso_of h.kernel h.fub h.mixW h.weil h.basic witt_of h.top h.eps

theorem Ext.genBig (h : Ext) : GenBig := genBig_of h.kernel h.fub h.coneA h.mixW h.weil h.basic witt_of h.top h.eps

theorem Ext.genSmall (h : Ext) : GenSmall :=
  genSmall_of h.kernel h.fub h.coneB (Ker.twoExp_of thetaExp) h.mixAB h.mixW h.evCone witt_of stabDec_of unipEx_of h.basic h.top h.eps
    h.decay h.vol h.fin soStab_of (soZeroA'_of linEx_of h.mixX thetaExp evUniq) (soEv_of linEx_of low_of)

theorem ct_all (h : Ext) : CTKernel ∧ SplitEx ∧ CTBigZero ∧ CTSmallZero ∧ CTBigCone ∧ CTSmallCone :=
  have k := kFinData_of h.stab
  have i := iwaEx_of h.stab
  ⟨h.kernel, splitEx_of h.genBig h.genSmall h.genAniso k h.stab i h.pair h.plane h.evCone h.evZero unipEx_of low_of h.triple,
    ctBigZero_of h.genBig h.genAniso k h.stab i h.pair h.plane h.evCone unipEx_of h.triple,
    ctSmallZero_of h.genAniso k h.stab h.triple, ctBigCone_of h.genBig k i h.pair h.evZero unipEx_of h.triple,
    ctSmallCone_of h.genSmall k i h.pair h.evZero unipEx_of h.triple⟩

end PositivityTheory.ThKCT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.SmallCones.ThetaExp =====

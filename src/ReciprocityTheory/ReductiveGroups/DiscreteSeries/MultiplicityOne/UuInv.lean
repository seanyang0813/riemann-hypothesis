module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StDefs
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.BigCellCommuteFrameElement
public import Mathlib.Analysis.InnerProductSpace.Trace
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UnitaryGroupStructuralFacts
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StDiagExists
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvChar
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvGroup
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransM
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StReps
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Algebra.Order.Star.Real

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.LabApply, ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.PiInvApply, ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UuInv

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.LabApply =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.LabApply", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.BigCellCommuteFrameElement\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory
open scoped InnerProductSpace ENNReal ComplexConjugate

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Mult1.SymB

open Formalism.QuantumDeterminants Formalism.QuantumDeterminants.WeylGroupFacts Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2 ReciprocityTheory.ChartRestriction.DS.Mult1 ReciprocityTheory.ChartRestriction.DS.Mult1.SymA

variable {k r : ℕ}

lemma cont_lmul (a : Mat k r) : Continuous (lmulM (k := k) (r := r) a) := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  simp only [lmulM, Matrix.mul_apply, Matrix.of_apply]
  exact continuous_finsetSum _ fun l _ => continuous_const.mul ((continuous_apply j).comp (continuous_apply l))

def sandM (A B : Mat k r) (x : Mt k r) : Mt k r := A * Matrix.of x * B

lemma cont_sand (A B : Mat k r) : Continuous (sandM (k := k) (r := r) A B) := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  simp only [sandM, Matrix.mul_apply, Matrix.of_apply]
  exact continuous_finsetSum _ fun m _ => (continuous_finsetSum _ fun l _ =>
    continuous_const.mul ((continuous_apply m).comp (continuous_apply l))).mul continuous_const

def gb (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (x : Mt k r) : Mt k r := fun i j => gbar k r γ (Matrix.of x) i j

lemma cont_gb (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) : Continuous (gb (k := k) (r := r) γ) := by
  have h1 := cont_sand (k := k) (r := r) (embWb k r γ)⁻¹ (embWb k r γ)
  have h2 : Continuous (fun x : Mt k r => (fun i j => starRingEnd ℂ (sandM (embWb k r γ)⁻¹ (embWb k r γ) x i j) :
      Mt k r)) :=
    continuous_pi fun i => continuous_pi fun j =>
      Complex.continuous_conj.comp ((continuous_apply j).comp ((continuous_apply i).comp h1))
  exact (cont_sand (k := k) (r := r) (embWb k r γ) (embWb k r γ)⁻¹).comp h2

def mEquiv {α : Type*} [MeasurableSpace α] (f g : α → α) (hf : Measurable f) (hg : Measurable g)
    (h1 : Function.LeftInverse g f) (h2 : Function.RightInverse g f) : α ≃ᵐ α :=
  { toFun := f, invFun := g, left_inv := h1, right_inv := h2, measurable_toFun := hf, measurable_invFun := hg }

lemma sfin {U : Set (Mat k r)} {μ : Measure (Mt k r)} (h : IsHaarOn U μ) : SigmaFinite μ := by
  have : IsFiniteMeasureOnCompacts μ := ⟨fun K hK => h.finite_compact K hK⟩
  infer_instance

def Sab (a b : Mat k r) (p : SS k r) : SS k r :=
  ((lmulM a p.1.1, conjM a p.1.2), (lmulM b p.2.1, conjM b p.2.2))

lemma meas_Sab (a b : Mat k r) : Measurable (Sab (k := k) (r := r) a b) :=
  (((cont_lmul a).measurable.comp (measurable_fst.comp measurable_fst)).prodMk
    ((cont_sand a a⁻¹).measurable.comp (measurable_snd.comp measurable_fst))).prodMk
    (((cont_lmul b).measurable.comp (measurable_fst.comp measurable_snd)).prodMk
    ((cont_sand b b⁻¹).measurable.comp (measurable_snd.comp measurable_snd)))

lemma Sab_inv {a b : Mat k r} (ha : IsUnit a.det) (hb : IsUnit b.det) (p : SS k r) :
    Sab a⁻¹ b⁻¹ (Sab a b p) = p := by
  have l : ∀ c : Mat k r, IsUnit c.det → ∀ x : Mt k r, lmulM c⁻¹ (lmulM c x) = x := by
    intro c hc x
    exact Matrix.nonsing_inv_mul_cancel_left (A := c) (Matrix.of x) hc
  have m : ∀ c : Mat k r, IsUnit c.det → ∀ x : Mt k r, conjM c⁻¹ (conjM c x) = x := by
    intro c hc x
    show c⁻¹ * (c * Matrix.of x * c⁻¹) * c⁻¹⁻¹ = Matrix.of x
    rw [Matrix.nonsing_inv_nonsing_inv _ hc]
    simp only [Matrix.mul_assoc, Matrix.nonsing_inv_mul_cancel_left _ _ hc, Matrix.nonsing_inv_mul _ hc,
      Matrix.mul_one]
  simp only [Sab, l a ha, l b hb, m a ha, m b hb]

lemma emb_Sab {a b : Mat k r} (ha : IsUnit a.det) (hb : IsUnit b.det) : MeasurableEmbedding (Sab a b) := by
  have ha' : IsUnit a⁻¹.det := Matrix.isUnit_nonsing_inv_det _ ha
  have hb' : IsUnit b⁻¹.det := Matrix.isUnit_nonsing_inv_det _ hb
  refine (mEquiv (Sab a b) (Sab a⁻¹ b⁻¹) (meas_Sab a b) (meas_Sab _ _) (Sab_inv ha hb) ?_).measurableEmbedding
  intro p
  have := Sab_inv ha' hb' p
  rwa [Matrix.nonsing_inv_nonsing_inv _ ha, Matrix.nonsing_inv_nonsing_inv _ hb] at this

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]

lemma mp_Sab (D : RealPlaceData k r Wp Wq) (hCI : ConjInv D) {a b : Mat k r} (ha : a ∈ UWset k r D.z)
    (hb : b ∈ UWset k r D.z') : MeasurePreserving (Sab a b) D.μSS D.μSS := by
  have := sfin D.haarW; have := sfin D.haarN; have := sfin D.haarW'
  have m1 : MeasurePreserving (lmulM a) D.μW D.μW := ⟨(cont_lmul a).measurable, D.haarW.left a ha⟩
  have m2 : MeasurePreserving (conjM a) D.μN D.μN := ⟨(cont_sand a a⁻¹).measurable, hCI a (Or.inl ha)⟩
  have m3 : MeasurePreserving (lmulM b) D.μW' D.μW' := ⟨(cont_lmul b).measurable, D.haarW'.left b hb⟩
  have m4 : MeasurePreserving (conjM b) D.μN D.μN := ⟨(cont_sand b b⁻¹).measurable, hCI b (Or.inr hb)⟩
  exact (m1.prod m2).prod (m3.prod m4)

lemma ae_in (D : RealPlaceData k r Wp Wq) : ∀ᵐ p ∂D.μSS, D.inSS p := by
  have := sfin D.haarW; have := sfin D.haarN; have := sfin D.haarW'
  have hW : ∀ᵐ x ∂D.μW, Matrix.of x ∈ UWset k r D.z := ae_iff.2 (measure_mono_null (fun x hx => hx) D.haarW.conc)
  have hN : ∀ᵐ x ∂D.μN, Matrix.of x ∈ Nset k r := ae_iff.2 (measure_mono_null (fun x hx => hx) D.haarN.conc)
  have hW' : ∀ᵐ x ∂D.μW', Matrix.of x ∈ UWset k r D.z' :=
    ae_iff.2 (measure_mono_null (fun x hx => hx) D.haarW'.conc)
  have A1 : ∀ᵐ p ∂D.μSS, Matrix.of p.1.1 ∈ UWset k r D.z :=
    Measure.quasiMeasurePreserving_fst.ae (Measure.quasiMeasurePreserving_fst.ae hW)
  have A2 : ∀ᵐ p ∂D.μSS, Matrix.of p.1.2 ∈ Nset k r :=
    Measure.quasiMeasurePreserving_fst.ae (Measure.quasiMeasurePreserving_snd.ae hN)
  have A3 : ∀ᵐ p ∂D.μSS, Matrix.of p.2.1 ∈ UWset k r D.z' :=
    Measure.quasiMeasurePreserving_snd.ae (Measure.quasiMeasurePreserving_fst.ae hW')
  have A4 : ∀ᵐ p ∂D.μSS, Matrix.of p.2.2 ∈ Nset k r :=
    Measure.quasiMeasurePreserving_snd.ae (Measure.quasiMeasurePreserving_snd.ae hN)
  filter_upwards [A1, A2, A3, A4] with p h1 h2 h3 h4 using ⟨h1, h2, h3, h4⟩

section lie

variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V]

def piLIE (z : Fin (2 * r + k + 1) → ℂ) (π : Mat k r → (V →L[ℂ] V)) (hrep : IsCRepOn (UWset k r z) π)
    (hu : ∀ h ∈ UWset k r z, ∀ v, ‖π h v‖ = ‖v‖) (a : Mat k r) (ha : a ∈ UWset k r z) : V ≃ₗᵢ[ℂ] V where
  toLinearEquiv := LinearEquiv.ofLinear (π a).toLinearMap (π a⁻¹).toLinearMap
    (LinearMap.ext fun v => by
      change ((π a).comp (π a⁻¹)) v = v
      rw [← hrep.2 a ha _ (uw_inv ha), Matrix.mul_nonsing_inv _ (isUnit_of_uh ha.1), hrep.1]
      rfl)
    (LinearMap.ext fun v => by
      change ((π a⁻¹).comp (π a)) v = v
      rw [← hrep.2 _ (uw_inv ha) a ha, Matrix.nonsing_inv_mul _ (isUnit_of_uh ha.1), hrep.1]
      rfl)
  norm_map' := hu a ha

end lie

def ph (D : RealPlaceData k r Wp Wq) (p : SS k r) : ℂ :=
  psi k r D.z cStd (Matrix.of p.1.2) * star (psi k r D.z' cStd (Matrix.of p.2.2))

lemma JF_eq (D : RealPlaceData k r Wp Wq) (F : Mat k r → (Wq →L[ℂ] Wp)) (g : Mat k r) :
    JF D F g = ∫ p, ph D p • rho D p F g ∂D.μSS := rfl

lemma ph_Sab (D : RealPlaceData k r Wp Wq) {a b : Mat k r} (ha : a ∈ UWset k r D.z) (hb : b ∈ UWset k r D.z')
    (p : SS k r) : ph D (Sab a b p) = ph D p := by
  show psi k r D.z cStd (a * Matrix.of p.1.2 * a⁻¹) * star (psi k r D.z' cStd (b * Matrix.of p.2.2 * b⁻¹)) = _
  rw [psi_conj _ ha, psi_conj _ hb]
  rfl

lemma sgs_Sab {a b : Mat k r} (ha : IsUnit a.det) (hb : IsUnit b.det) (p : SS k r) (g : Mat k r) :
    sgs (Sab a b p) g = sgs p (a⁻¹ * g * b) := by
  show (a * Matrix.of p.1.1)⁻¹ * (a * Matrix.of p.1.2 * a⁻¹)⁻¹ * g * (b * Matrix.of p.2.2 * b⁻¹) *
      (b * Matrix.of p.2.1) = (Matrix.of p.1.1)⁻¹ * (Matrix.of p.1.2)⁻¹ * (a⁻¹ * g * b) * Matrix.of p.2.2 *
      Matrix.of p.2.1
  simp only [Matrix.mul_inv_rev, Matrix.nonsing_inv_nonsing_inv _ ha, Matrix.mul_assoc,
    Matrix.nonsing_inv_mul_cancel_left _ _ ha, Matrix.nonsing_inv_mul_cancel_left _ _ hb]

lemma rho_Sab (D : RealPlaceData k r Wp Wq) {a b : Mat k r} (ha : a ∈ UWset k r D.z) (hb : b ∈ UWset k r D.z')
    {p : SS k r} (hp : D.inSS p) (F : Mat k r → (Wq →L[ℂ] Wp)) (g : Mat k r) :
    rho D (Sab a b p) F g = (D.π a).comp ((rho D p F (a⁻¹ * g * b)).comp (D.π' b⁻¹)) := by
  show (D.π (a * Matrix.of p.1.1)).comp ((F (sgs (Sab a b p) g)).comp (D.π' (b * Matrix.of p.2.1)⁻¹)) = _
  rw [sgs_Sab (isUnit_of_uh ha.1) (isUnit_of_uh hb.1), D.π_rep.2 a ha _ hp.1, Matrix.mul_inv_rev,
    D.π'_rep.2 _ (uw_inv hp.2.2.1) _ (uw_inv hb)]
  simp only [rho, ContinuousLinearMap.comp_assoc]

def Lab (D : RealPlaceData k r Wp Wq) {a b : Mat k r} (ha : a ∈ UWset k r D.z) (hb : b ∈ UWset k r D.z') :
    (Wq →L[ℂ] Wp) ≃L[ℂ] (Wq →L[ℂ] Wp) :=
  ContinuousLinearEquiv.arrowCongr (piLIE D.z' D.π' D.π'_rep D.π'_unitary b hb).toContinuousLinearEquiv
    (piLIE D.z D.π D.π_rep D.π_unitary a ha).toContinuousLinearEquiv

lemma Lab_apply (D : RealPlaceData k r Wp Wq) {a b : Mat k r} (ha : a ∈ UWset k r D.z) (hb : b ∈ UWset k r D.z')
    (X : Wq →L[ℂ] Wp) : Lab D ha hb X = (D.π a).comp (X.comp (D.π' b⁻¹)) :=
  ContinuousLinearMap.ext fun _ => rfl

lemma norm_Lab (D : RealPlaceData k r Wp Wq) {a b : Mat k r} (ha : a ∈ UWset k r D.z) (hb : b ∈ UWset k r D.z')
    (X : Wq →L[ℂ] Wp) : ‖Lab D ha hb X‖ = ‖X‖ := by
  have e : Lab D ha hb X = ((piLIE D.z D.π D.π_rep D.π_unitary a ha : Wp ≃ₗᵢ[ℂ] Wp) : Wp →L[ℂ] Wp).comp
      (X.comp ((piLIE D.z' D.π' D.π'_rep D.π'_unitary b hb).symm : Wq →L[ℂ] Wq)) :=
    ContinuousLinearMap.ext fun _ => rfl
  rw [e, ContinuousLinearMap.opNorm_linearIsometryEquiv_comp, ContinuousLinearMap.opNorm_comp_linearIsometryEquiv]

lemma J_equiv (D : RealPlaceData k r Wp Wq) (hCI : ConjInv D) {a b : Mat k r} (ha : a ∈ UWset k r D.z)
    (hb : b ∈ UWset k r D.z') (F : Mat k r → (Wq →L[ℂ] Wp)) (g : Mat k r) :
    JF D F g = Lab D ha hb (JF D F (a⁻¹ * g * b)) := by
  rw [JF_eq, JF_eq, ← (mp_Sab D hCI ha hb).integral_comp (emb_Sab (isUnit_of_uh ha.1) (isUnit_of_uh hb.1)),
    ← ContinuousLinearEquiv.integral_comp_comm]
  refine integral_congr_ae ?_
  filter_upwards [ae_in D] with p hp
  rw [ph_Sab D ha hb, rho_Sab D ha hb hp, map_smul, Lab_apply]

lemma E_equiv (D : RealPlaceData k r Wp Wq) (hCI : ConjInv D) {a b : Mat k r} (ha : a ∈ UWset k r D.z)
    (hb : b ∈ UWset k r D.z') (F : Mat k r → (Wq →L[ℂ] Wp)) (g : Mat k r) :
    ∫⁻ p, ‖rho D p F g‖ₑ ∂D.μSS = ∫⁻ p, ‖rho D p F (a⁻¹ * g * b)‖ₑ ∂D.μSS := by
  rw [← (mp_Sab D hCI ha hb).lintegral_comp_emb (emb_Sab (isUnit_of_uh ha.1) (isUnit_of_uh hb.1))]
  refine lintegral_congr_ae ?_
  filter_upwards [ae_in D] with p hp
  have h := norm_Lab D ha hb (rho D p F (a⁻¹ * g * b))
  rw [Lab_apply] at h
  rw [rho_Sab D ha hb hp, enorm_eq_nnnorm, enorm_eq_nnnorm,
    show ‖(D.π a).comp ((rho D p F (a⁻¹ * g * b)).comp (D.π' b⁻¹))‖₊ = ‖rho D p F (a⁻¹ * g * b)‖₊ from NNReal.eq h]

end ReciprocityTheory.ChartRestriction.DS.Mult1.SymB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.LabApply =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.PiInvApply =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.PiInvApply", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.LabApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Trace\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.BigCellCommuteFrameElement\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory
open scoped InnerProductSpace ENNReal ComplexConjugate

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Mult1.SymC

open Formalism.QuantumDeterminants Formalism.QuantumDeterminants.WeylGroupFacts Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2 ReciprocityTheory.ChartRestriction.DS.Mult1 ReciprocityTheory.ChartRestriction.DS.Mult1.SymA
  ReciprocityTheory.ChartRestriction.DS.Mult1.SymB

variable {k r : ℕ}

def Tg (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (p : SS k r) : SS k r :=
  ((gb γ p.2.1, gb γ p.2.2), (gb γ p.1.1, gb γ p.1.2))

lemma Tg_Tg (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (hE : IsUnit (embWb k r γ).det) (p : SS k r) :
    Tg γ (Tg γ p) = p := by
  have e : ∀ x : Mt k r, gb γ (gb γ x) = x := fun x => gbar_gbar γ hE (Matrix.of x)
  simp only [Tg, e]

lemma meas_Tg (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) : Measurable (Tg (k := k) (r := r) γ) :=
  (((cont_gb γ).measurable.comp (measurable_fst.comp measurable_snd)).prodMk
    ((cont_gb γ).measurable.comp (measurable_snd.comp measurable_snd))).prodMk
    (((cont_gb γ).measurable.comp (measurable_fst.comp measurable_fst)).prodMk
    ((cont_gb γ).measurable.comp (measurable_snd.comp measurable_fst)))

lemma emb_Tg (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (hE : IsUnit (embWb k r γ).det) :
    MeasurableEmbedding (Tg (k := k) (r := r) γ) :=
  (mEquiv (Tg γ) (Tg γ) (meas_Tg γ) (meas_Tg γ) (Tg_Tg γ hE) (Tg_Tg γ hE)).measurableEmbedding

variable {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]

lemma mp_Tg (D : RealPlaceData k r Wp Wp) (hW' : D.μW' = D.μW) (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ)
    (hgW : D.μW.map (gb γ) = D.μW) (hgN : D.μN.map (gb γ) = D.μN) : MeasurePreserving (Tg γ) D.μSS D.μSS := by
  have := sfin D.haarW
  have := sfin D.haarN
  have m1 : MeasurePreserving (gb γ) D.μW D.μW := ⟨(cont_gb γ).measurable, hgW⟩
  have m2 : MeasurePreserving (gb γ) D.μN D.μN := ⟨(cont_gb γ).measurable, hgN⟩
  have m12 := m1.prod m2
  have m := (Measure.measurePreserving_swap (μ := D.μW.prod D.μN) (ν := D.μW.prod D.μN)).comp (m12.prod m12)
  unfold RealPlaceData.μSS
  rw [hW']
  exact m

lemma psi_gbar (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) {z : Fin (2 * r + k + 1) → ℂ} {m : Mat k r}
    (hl : lam k r z (gbar k r γ m) = -lam k r z m) :
    psi k r z cStd (gbar k r γ m) = star (psi k r z cStd m) := by
  show Complex.exp (Complex.I * ((lam k r z (gbar k r γ m) : ℝ) : ℂ)) =
    (starRingEnd ℂ) (Complex.exp (Complex.I * ((lam k r z m : ℝ) : ℂ)))
  rw [hl, ← Complex.exp_conj, map_mul, Complex.conj_I, Complex.conj_ofReal, Complex.ofReal_neg]
  congr 1
  ring

lemma rho_scalF (D : RealPlaceData k r Wp Wp) (p : SS k r) (f : Mat k r → ℂ) (g : Mat k r) :
    rho D p (scalF Wp f) g = f (sgs p g) • (D.π (Matrix.of p.1.1)).comp (D.π' (Matrix.of p.2.1)⁻¹) := by
  ext v
  simp [rho, scalF]

def Phi (D : RealPlaceData k r Wp Wp) (f : Mat k r → ℂ) (g : Mat k r) (p : SS k r) : Wp →L[ℂ] Wp :=
  ph D p • (f (sgs p g) • (D.π (Matrix.of p.1.1)).comp (D.π (Matrix.of p.2.1)⁻¹))

def Psi (D : RealPlaceData k r Wp Wp) (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (f : Mat k r → ℂ) (g : Mat k r)
    (p : SS k r) : Wp →L[ℂ] Wp :=
  ph D p • (f (sgs p g) • (D.π (gbar k r γ (Matrix.of p.2.1))).comp (D.π (gbar k r γ (Matrix.of p.1.1))⁻¹))

lemma J_phi (D : RealPlaceData k r Wp Wp) (hD : IsDiag D) (f : Mat k r → ℂ) (g : Mat k r) :
    JF D (scalF Wp f) g = ∫ p, Phi D f g p ∂D.μSS := by
  rw [JF_eq]
  congr 1
  funext p
  rw [rho_scalF, hD.π_eq]
  rfl

lemma J_th (D : RealPlaceData k r Wp Wp) (hD : IsDiag D) (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ)
    (hE : IsUnit (embWb k r γ).det) (hgW : D.μW.map (gb γ) = D.μW) (hgN : D.μN.map (gb γ) = D.μN)
    (hlam : ∀ m ∈ Nset k r, lam k r D.z (gbar k r γ m) = -lam k r D.z m)
    {g0 : Mat k r} (hg0 : th k r γ g0 = g0) (f : Mat k r → ℂ) :
    JF D (scalF Wp (f ∘ th k r γ)) g0 = ∫ p, Psi D γ f g0 p ∂D.μSS := by
  rw [JF_eq, ← (mp_Tg D hD.μW_eq γ hgW hgN).integral_comp (emb_Tg γ hE)]
  refine integral_congr_ae ?_
  filter_upwards [ae_in D] with p hp
  have e3 : th k r γ (sgs (Tg γ p) g0) = sgs p g0 := by
    rw [show sgs (Tg γ p) g0 = (gbar k r γ (Matrix.of p.2.1))⁻¹ * (gbar k r γ (Matrix.of p.2.2))⁻¹ * g0 *
        gbar k r γ (Matrix.of p.1.2) * gbar k r γ (Matrix.of p.1.1) from rfl,
      th_five γ hE (gbar_unit γ hE (isUnit_of_uh hp.2.2.1.1)) (gbar_unit γ hE (isUnit_of_uh hp.2.2.2.1)) hg0,
      gbar_gbar γ hE, gbar_gbar γ hE, gbar_gbar γ hE, gbar_gbar γ hE]
    rfl
  have e4 : ph D (Tg γ p) = ph D p := by
    unfold ph
    rw [hD.z_eq]
    show psi k r D.z cStd (gbar k r γ (Matrix.of p.2.2)) * star (psi k r D.z cStd (gbar k r γ (Matrix.of p.1.2))) = _
    rw [psi_gbar γ (hlam _ hp.2.2.2), psi_gbar γ (hlam _ hp.2.1), star_star, mul_comm]
  have e5 : D.π' = D.π := hD.π_eq
  rw [rho_scalF, Function.comp_apply, e3, e4, e5]
  rfl

section trace

variable [FiniteDimensional ℂ Wp]

def trL (Y : Wp →L[ℂ] Wp) : (Wp →L[ℂ] Wp) →ₗ[ℂ] ℂ where
  toFun X := LinearMap.trace ℂ Wp (((ContinuousLinearMap.adjoint Y).comp X : Wp →L[ℂ] Wp) : Wp →ₗ[ℂ] Wp)
  map_add' X X' := by simp [ContinuousLinearMap.comp_add]
  map_smul' c X := by simp

def trY (Y : Wp →L[ℂ] Wp) : (Wp →L[ℂ] Wp) →L[ℂ] ℂ := LinearMap.toContinuousLinearMap (trL Y)

lemma trY_apply (Y X : Wp →L[ℂ] Wp) :
    trY Y X = LinearMap.trace ℂ Wp (((ContinuousLinearMap.adjoint Y).comp X : Wp →L[ℂ] Wp) : Wp →ₗ[ℂ] Wp) :=
  rfl

lemma trY_self {Y : Wp →L[ℂ] Wp} (h : trY Y Y = 0) : Y = 0 := by
  set b := stdOrthonormalBasis ℂ Wp
  rw [trY_apply, LinearMap.trace_eq_sum_inner _ b] at h
  have h' : ∀ i, ⟪b i, (((ContinuousLinearMap.adjoint Y).comp Y : Wp →L[ℂ] Wp) : Wp →ₗ[ℂ] Wp) (b i)⟫_ℂ =
      ((‖Y (b i)‖ ^ 2 : ℝ) : ℂ) := fun i => by
    rw [ContinuousLinearMap.coe_coe, ContinuousLinearMap.comp_apply, ContinuousLinearMap.adjoint_inner_right,
      inner_self_eq_norm_sq_to_K]
    push_cast
    rfl
  simp only [h'] at h
  rw [← Complex.ofReal_sum, Complex.ofReal_eq_zero,
    Finset.sum_eq_zero_iff_of_nonneg (fun i _ => by positivity)] at h
  have hb : ∀ i, Y (b i) = 0 := fun i => by
    have := h i (Finset.mem_univ _)
    simpa using this
  apply ContinuousLinearMap.coe_injective
  refine b.toBasis.ext (fun i => ?_)
  simp [hb i]

lemma trY_conj (Y X : Wp →L[ℂ] Wp) (e : Wp ≃ₗᵢ[ℂ] Wp)
    (h2 : Y.comp (e.symm : Wp →L[ℂ] Wp) = (e.symm : Wp →L[ℂ] Wp).comp Y) :
    trY Y ((e : Wp →L[ℂ] Wp).comp (X.comp (e.symm : Wp →L[ℂ] Wp))) = trY Y X := by
  have c : (e : Wp →L[ℂ] Wp).comp (ContinuousLinearMap.adjoint Y) =
      (ContinuousLinearMap.adjoint Y).comp (e : Wp →L[ℂ] Wp) := by
    have := congrArg ContinuousLinearMap.adjoint h2
    rwa [ContinuousLinearMap.adjoint_comp, ContinuousLinearMap.adjoint_comp, e.symm.adjoint_eq_symm,
      LinearIsometryEquiv.symm_symm] at this
  have e1 : (ContinuousLinearMap.adjoint Y).comp ((e : Wp →L[ℂ] Wp).comp (X.comp (e.symm : Wp →L[ℂ] Wp))) =
      (e : Wp →L[ℂ] Wp).comp (((ContinuousLinearMap.adjoint Y).comp X).comp (e.symm : Wp →L[ℂ] Wp)) := by
    rw [← ContinuousLinearMap.comp_assoc, ← c]
    simp only [ContinuousLinearMap.comp_assoc]
  have e2 : ((((ContinuousLinearMap.adjoint Y).comp X).comp (e.symm : Wp →L[ℂ] Wp)).comp (e : Wp →L[ℂ] Wp)) =
      (ContinuousLinearMap.adjoint Y).comp X := by
    ext v
    simp
  have tc : ∀ A B : Wp →L[ℂ] Wp, LinearMap.trace ℂ Wp ((A.comp B : Wp →L[ℂ] Wp) : Wp →ₗ[ℂ] Wp) =
      LinearMap.trace ℂ Wp ((B.comp A : Wp →L[ℂ] Wp) : Wp →ₗ[ℂ] Wp) := fun A B =>
    LinearMap.trace_mul_comm (R := ℂ) (M := Wp) (A : Wp →ₗ[ℂ] Wp) (B : Wp →ₗ[ℂ] Wp)
  rw [trY_apply, trY_apply, e1, tc, e2]

end trace

end ReciprocityTheory.ChartRestriction.DS.Mult1.SymC

namespace ReciprocityTheory.ChartRestriction.DS.Mult1.SymD

open Formalism.QuantumDeterminants Formalism.QuantumDeterminants.WeylGroupFacts Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2 ReciprocityTheory.ChartRestriction.DS.Mult1 ReciprocityTheory.ChartRestriction.DS.Mult1.SymA
  ReciprocityTheory.ChartRestriction.DS.Mult1.SymB ReciprocityTheory.ChartRestriction.DS.Mult1.SymC

variable {k r : ℕ} {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp]

lemma pi_eq (D : RealPlaceData k r Wp Wp) {h : Mat k r} (hh : h ∈ UWset k r D.z) :
    D.π h = ((piLIE D.z D.π D.π_rep D.π_unitary h hh : Wp ≃ₗᵢ[ℂ] Wp) : Wp →L[ℂ] Wp) :=
  ContinuousLinearMap.ext fun _ => rfl

lemma pi_inv_eq (D : RealPlaceData k r Wp Wp) {h : Mat k r} (hh : h ∈ UWset k r D.z) :
    D.π h⁻¹ = (((piLIE D.z D.π D.π_rep D.π_unitary h hh).symm : Wp ≃ₗᵢ[ℂ] Wp) : Wp →L[ℂ] Wp) :=
  ContinuousLinearMap.ext fun _ => rfl

lemma adj_pi (D : RealPlaceData k r Wp Wp) {h : Mat k r} (hh : h ∈ UWset k r D.z) :
    ContinuousLinearMap.adjoint (D.π h) = D.π h⁻¹ := by
  rw [pi_eq D hh, LinearIsometryEquiv.adjoint_eq_symm, ← pi_inv_eq D hh]

lemma norm_pi_le (D : RealPlaceData k r Wp Wp) {h : Mat k r} (hh : h ∈ UWset k r D.z) : ‖D.π h‖ ≤ 1 :=
  ContinuousLinearMap.opNorm_le_bound _ zero_le_one fun v => by rw [D.π_unitary h hh v, one_mul]

lemma pi_inv_apply (D : RealPlaceData k r Wp Wp) {h : Mat k r} (hh : h ∈ UWset k r D.z) (v : Wp) :
    D.π h⁻¹ (D.π h v) = v :=
  (piLIE D.z D.π D.π_rep D.π_unitary h hh).symm_apply_apply v

lemma pi_apply_inv (D : RealPlaceData k r Wp Wp) {h : Mat k r} (hh : h ∈ UWset k r D.z) (v : Wp) :
    D.π h (D.π h⁻¹ v) = v :=
  (piLIE D.z D.π D.π_rep D.π_unitary h hh).apply_symm_apply v

lemma norm_ph (D : RealPlaceData k r Wp Wp) (p : SS k r) : ‖ph D p‖ = 1 := by
  have e : ∀ (z : Fin (2 * r + k + 1) → ℂ) (m : Mat k r), ‖psi k r z cStd m‖ = 1 := fun z m => by
    unfold psi
    rw [Complex.norm_exp]
    simp
  unfold ph
  rw [norm_mul, norm_star, e, e, one_mul]

lemma aesm_comp {α : Type*} [MeasurableSpace α] {μ : Measure α} {f g : α → (Wp →L[ℂ] Wp)}
    (hf : AEStronglyMeasurable f μ) (hg : AEStronglyMeasurable g μ) :
    AEStronglyMeasurable (fun a => (f a).comp (g a)) μ :=
  (isBoundedBilinearMap_comp (𝕜 := ℂ) (E := Wp) (F := Wp) (G := Wp)).continuous.comp_aestronglyMeasurable
    (hf.prodMk hg)

lemma aesm_adj {α : Type*} [MeasurableSpace α] {μ : Measure α} {f : α → (Wp →L[ℂ] Wp)}
    (hf : AEStronglyMeasurable f μ) : AEStronglyMeasurable (fun a => ContinuousLinearMap.adjoint (f a)) μ :=
  (ContinuousLinearMap.adjoint (𝕜 := ℂ) (E := Wp) (F := Wp)).continuous.comp_aestronglyMeasurable hf

def Cf (D : RealPlaceData k r Wp Wp) (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (p : SS k r) : Wp →L[ℂ] Wp :=
  (D.π (Matrix.of p.2.1)).comp ((ContinuousLinearMap.adjoint (D.π (Matrix.of p.1.1))).comp
    ((D.π (gbar k r γ (Matrix.of p.2.1))).comp (ContinuousLinearMap.adjoint (D.π (gbar k r γ (Matrix.of p.1.1))))))

def Cb (D : RealPlaceData k r Wp Wp) (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (p : SS k r) : Wp →L[ℂ] Wp :=
  (D.π (gbar k r γ (Matrix.of p.1.1))).comp ((ContinuousLinearMap.adjoint (D.π (gbar k r γ (Matrix.of p.2.1)))).comp
    ((D.π (Matrix.of p.1.1)).comp (ContinuousLinearMap.adjoint (D.π (Matrix.of p.2.1)))))

lemma norm_C_le (D : RealPlaceData k r Wp Wp) {a b c d : Mat k r} (ha : a ∈ UWset k r D.z) (hb : b ∈ UWset k r D.z)
    (hc : c ∈ UWset k r D.z) (hd : d ∈ UWset k r D.z) :
    ‖(D.π a).comp ((ContinuousLinearMap.adjoint (D.π b)).comp ((D.π c).comp (ContinuousLinearMap.adjoint (D.π d))))‖
      ≤ 1 := by
  refine (ContinuousLinearMap.opNorm_comp_le _ _).trans ?_
  refine mul_le_one₀ (norm_pi_le D ha) (norm_nonneg _) ((ContinuousLinearMap.opNorm_comp_le _ _).trans ?_)
  rw [LinearIsometryEquiv.norm_map]
  refine mul_le_one₀ (norm_pi_le D hb) (norm_nonneg _) ((ContinuousLinearMap.opNorm_comp_le _ _).trans ?_)
  rw [LinearIsometryEquiv.norm_map]
  exact mul_le_one₀ (norm_pi_le D hc) (norm_nonneg _) (norm_pi_le D hd)

lemma aesm_pi (D : RealPlaceData k r Wp Wp) (hclW : IsClosed (UWset k r D.z)) :
    AEStronglyMeasurable (fun x : Mt k r => D.π (Matrix.of x)) D.μW := by
  have hof : Continuous (⇑(Matrix.of : Mt k r ≃ Mat k r)) := by exact continuous_id
  have h : ContinuousOn (fun x : Mt k r => D.π (Matrix.of x)) (Matrix.of ⁻¹' UWset k r D.z) :=
    D.π_cont.comp hof.continuousOn (Set.mapsTo_preimage _ _)
  have h2 := h.aestronglyMeasurable (μ := D.μW) (hclW.preimage hof).measurableSet
  have hae : ∀ᵐ x ∂D.μW, x ∈ (Matrix.of ⁻¹' UWset k r D.z : Set (Mt k r)) :=
    ae_iff.2 (measure_mono_null (fun x hx => hx) D.haarW.conc)
  rwa [Measure.restrict_eq_self_of_ae_mem hae] at h2

variable (D : RealPlaceData k r Wp Wp) (hD : IsDiag D) (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ)
  (hWbar : ∀ h ∈ UWset k r D.z, gbar k r γ h ∈ UWset k r D.z)
include hD hWbar

lemma psi_eq_C {p : SS k r} (hp : D.inSS p) (f : Mat k r → ℂ) (g : Mat k r) :
    Psi D γ f g p = (Phi D f g p).comp (Cf D γ p) ∧ Phi D f g p = (Psi D γ f g p).comp (Cb D γ p) ∧
      ‖Cf D γ p‖ ≤ 1 ∧ ‖Cb D γ p‖ ≤ 1 := by
  have hh := hp.1
  have hh' : Matrix.of p.2.1 ∈ UWset k r D.z := hD.z_eq ▸ hp.2.2.1
  have g1 := hWbar _ hh
  have g2 := hWbar _ hh'
  refine ⟨?_, ?_, norm_C_le D hh' hh g2 g1, norm_C_le D g1 g2 hh hh'⟩
  · ext v
    simp only [Phi, Psi, Cf, adj_pi D hh, adj_pi D g1, ContinuousLinearMap.comp_apply,
      ContinuousLinearMap.smul_comp, _root_.smul_apply, pi_inv_apply D hh', pi_apply_inv D hh]
  · ext v
    simp only [Phi, Psi, Cb, adj_pi D hh', adj_pi D g2, ContinuousLinearMap.comp_apply,
      ContinuousLinearMap.smul_comp, _root_.smul_apply, pi_inv_apply D g1, pi_apply_inv D g2]

omit hWbar in
lemma aesm_C (hclW : IsClosed (UWset k r D.z)) (hgW : D.μW.map (gb γ) = D.μW) :
    AEStronglyMeasurable (Cf D γ) D.μSS ∧ AEStronglyMeasurable (Cb D γ) D.μSS := by
  have := sfin D.haarW
  have := sfin D.haarN
  have hb := aesm_pi D hclW
  have hbg : AEStronglyMeasurable (fun x : Mt k r => D.π (gbar k r γ (Matrix.of x))) D.μW :=
    hb.comp_quasiMeasurePreserving (μ := D.μW) (f := gb γ)
      (MeasurePreserving.quasiMeasurePreserving ⟨(cont_gb γ).measurable, hgW⟩)
  have hSS : D.μSS = (D.μW.prod D.μN).prod (D.μW.prod D.μN) := by rw [RealPlaceData.μSS, hD.μW_eq]
  have q1 : Measure.QuasiMeasurePreserving (fun p : SS k r => p.1.1) D.μSS D.μW := by
    rw [hSS]; exact Measure.quasiMeasurePreserving_fst.comp Measure.quasiMeasurePreserving_fst
  have q2 : Measure.QuasiMeasurePreserving (fun p : SS k r => p.2.1) D.μSS D.μW := by
    rw [hSS]; exact Measure.quasiMeasurePreserving_fst.comp Measure.quasiMeasurePreserving_snd
  have a1 := hb.comp_quasiMeasurePreserving q1
  have a2 := hb.comp_quasiMeasurePreserving q2
  have a3 := hbg.comp_quasiMeasurePreserving q1
  have a4 := hbg.comp_quasiMeasurePreserving q2
  exact ⟨aesm_comp a2 (aesm_comp (aesm_adj a1) (aesm_comp a4 (aesm_adj a3))),
    aesm_comp a3 (aesm_comp (aesm_adj a4) (aesm_comp a1 (aesm_adj a2)))⟩

end ReciprocityTheory.ChartRestriction.DS.Mult1.SymD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.PiInvApply =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UuInv =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UuInv", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.PiInvApply\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UnitaryGroupStructuralFacts\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StDiagExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.BigCellCommuteFrameElement\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvChar\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvGroup\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransM\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StReps\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory
open scoped InnerProductSpace ENNReal ComplexConjugate

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Mult1.SymE

open Formalism.QuantumDeterminants Formalism.QuantumDeterminants.WeylGroupFacts Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2 ReciprocityTheory.ChartRestriction.DS.Mult1 ReciprocityTheory.ChartRestriction.DS.Mult1.SymA
  ReciprocityTheory.ChartRestriction.DS.Mult1.SymB ReciprocityTheory.ChartRestriction.DS.Mult1.SymC ReciprocityTheory.ChartRestriction.DS.Mult1.SymD

variable {k r : ℕ} {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp]

lemma uu_inv {z : Fin (2 * r + k + 1) → ℂ} {γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ} {u : Mat k r}
    (hu : u ∈ UUset k r z γ) : u⁻¹ ∈ UUset k r z γ := by
  simp only [UUset, UWset, UH, Set.mem_setOf_eq] at hu ⊢
  obtain ⟨⟨hH, hb, hz⟩, hw⟩ := hu
  have hdH : (Hpk k r).det ≠ 0 := by
    have h := congrArg Matrix.det (Formalism.QuantumDeterminants.WeylGroupFacts.hpk_sq (k := k) (r := r))
    rw [Matrix.det_mul, Matrix.det_one] at h
    exact left_ne_zero_of_mul_eq_one h
  have hdu : IsUnit u.det := by
    rw [isUnit_iff_ne_zero]
    intro h0
    have h := congrArg Matrix.det hH
    rw [Matrix.det_mul, Matrix.det_mul, h0, mul_zero] at h
    exact hdH h.symm
  have h1 : u⁻¹ * u = 1 := Matrix.nonsing_inv_mul u hdu
  have h3 : u * u⁻¹ = 1 := Matrix.mul_nonsing_inv u hdu
  have h2 : (u⁻¹)ᴴ * uᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, h3, Matrix.conjTranspose_one]
  have fix : ∀ v, u *ᵥ v = v → u⁻¹ *ᵥ v = v := fun v hv => by
    conv_lhs => rw [← hv]
    rw [Matrix.mulVec_mulVec, h1, Matrix.one_mulVec]
  refine ⟨⟨?_, fun a => ⟨fix _ (hb a).1, fix _ (hb a).2⟩, fix _ hz⟩, fix _ hw⟩
  calc (u⁻¹)ᴴ * Hpk k r * u⁻¹ = (u⁻¹)ᴴ * (uᴴ * Hpk k r * u) * u⁻¹ := by rw [hH]
    _ = ((u⁻¹)ᴴ * uᴴ) * Hpk k r * (u * u⁻¹) := by simp only [Matrix.mul_assoc]
    _ = Hpk k r := by rw [h2, h3, Matrix.one_mul, Matrix.mul_one]

theorem core (D : RealPlaceData k r Wp Wp) (hD : IsDiag D) (hCI : ConjInv D) (hclW : IsClosed (UWset k r D.z))
    (γ : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ) (hE : IsUnit (embWb k r γ).det)
    (hgW : D.μW.map (gb γ) = D.μW) (hgN : D.μN.map (gb γ) = D.μN)
    (hlam : ∀ m ∈ Nset k r, lam k r D.z (gbar k r γ m) = -lam k r D.z m)
    (hWbar : ∀ h ∈ UWset k r D.z, gbar k r γ h ∈ UWset k r D.z)
    (hT6 : ∀ y ∈ UWset k r D.z, ∃ u₀ ∈ UUset k r D.z γ, th k r γ y = u₀ * y * u₀⁻¹)
    {g0 : Mat k r} (hg0 : th k r γ g0 = g0) (hcomm : ∀ u ∈ UUset k r D.z γ, u * g0 = g0 * u)
    (f : Mat k r → ℂ) (hEf : ∫⁻ p, ‖rho D p (scalF Wp f) g0‖ₑ ∂D.μSS ≠ ∞) :
    JF D (scalF Wp (f ∘ th k r γ)) g0 = JF D (scalF Wp f) g0 := by
  have hz : D.z' = D.z := hD.z_eq
  have hπ : D.π' = D.π := hD.π_eq
  have Bc : ∀ F : Mat k r → (Wp →L[ℂ] Wp), ∀ u ∈ UUset k r D.z γ,
      (JF D F g0).comp (D.π u) = (D.π u).comp (JF D F g0) := by
    intro F u hu
    have hu' : u ∈ UWset k r D.z' := hz ▸ hu.1
    have e := J_equiv D hCI hu.1 hu' F g0
    have eg : u⁻¹ * g0 * u = g0 := by
      rw [Matrix.mul_assoc, ← hcomm u hu, ← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ (isUnit_of_uh hu.1.1),
        Matrix.one_mul]
    rw [eg, Lab_apply, hπ] at e
    conv_lhs => rw [e]
    ext v
    simp only [ContinuousLinearMap.comp_apply, pi_inv_apply D hu.1]
  have hB : JF D (scalF Wp f) g0 = ∫ p, Phi D f g0 p ∂D.μSS := J_phi D hD f g0
  have hB' : JF D (scalF Wp (f ∘ th k r γ)) g0 = ∫ p, Psi D γ f g0 p ∂D.μSS :=
    J_th D hD γ hE hgW hgN hlam hg0 f
  have hC := aesm_C D hD γ hclW hgW
  have hPC : ∀ᵐ p ∂D.μSS, Psi D γ f g0 p = (Phi D f g0 p).comp (Cf D γ p) ∧
      Phi D f g0 p = (Psi D γ f g0 p).comp (Cb D γ p) ∧ ‖Cf D γ p‖ ≤ 1 ∧ ‖Cb D γ p‖ ≤ 1 := by
    filter_upwards [ae_in D] with p hp using psi_eq_C D hD γ hWbar hp f g0
  by_cases hm : AEStronglyMeasurable (Phi D f g0) D.μSS
  swap
  · have hm' : ¬ AEStronglyMeasurable (Psi D γ f g0) D.μSS := fun h =>
      hm ((aesm_comp h hC.2).congr (hPC.mono fun p hp => hp.2.1.symm))
    rw [hB, hB', integral_non_aestronglyMeasurable hm, integral_non_aestronglyMeasurable hm']
  have hPhiI : Integrable (Phi D f g0) D.μSS := by
    refine ⟨hm, hasFiniteIntegral_iff_enorm.2 ?_⟩
    have e : ∀ p, ‖Phi D f g0 p‖ₑ = ‖rho D p (scalF Wp f) g0‖ₑ := fun p => by
      have h1 : ‖ph D p‖ₑ = 1 := by
        rw [enorm_eq_nnnorm, show ‖ph D p‖₊ = 1 from NNReal.eq (by rw [coe_nnnorm, NNReal.coe_one]; exact norm_ph D p),
          ENNReal.coe_one]
      rw [show Phi D f g0 p = ph D p • rho D p (scalF Wp f) g0 by rw [rho_scalF, hπ]; rfl, enorm_smul, h1, one_mul]
    calc ∫⁻ p, ‖Phi D f g0 p‖ₑ ∂D.μSS = ∫⁻ p, ‖rho D p (scalF Wp f) g0‖ₑ ∂D.μSS := lintegral_congr e
      _ < ∞ := hEf.lt_top
  have hPsiM : AEStronglyMeasurable (Psi D γ f g0) D.μSS :=
    (aesm_comp hm hC.1).congr (hPC.mono fun p hp => hp.1.symm)
  have hPsiI : Integrable (Psi D γ f g0) D.μSS := by
    refine hPhiI.norm.mono' hPsiM (hPC.mono fun p hp => ?_)
    rw [hp.1]
    exact (ContinuousLinearMap.opNorm_comp_le _ _).trans (mul_le_of_le_one_right (norm_nonneg _) hp.2.2.1)
  obtain ⟨Y, hY⟩ : ∃ Y, Y = JF D (scalF Wp (f ∘ th k r γ)) g0 - JF D (scalF Wp f) g0 := ⟨_, rfl⟩
  have hYc : ∀ u ∈ UUset k r D.z γ, Y.comp (D.π u) = (D.π u).comp Y := fun u hu => by
    rw [hY, ContinuousLinearMap.sub_comp, ContinuousLinearMap.comp_sub, Bc _ u hu, Bc _ u hu]
  have key : ∀ᵐ p ∂D.μSS, trY Y (Psi D γ f g0 p) = trY Y (Phi D f g0 p) := by
    filter_upwards [ae_in D] with p hp
    have hh := hp.1
    have hh' : Matrix.of p.2.1 ∈ UWset k r D.z := hz ▸ hp.2.2.1
    have hy : Matrix.of p.1.1 * (Matrix.of p.2.1)⁻¹ ∈ UWset k r D.z := uw_mul hh (uw_inv hh')
    obtain ⟨u₀, hu₀, hth⟩ := hT6 _ hy
    have hop : (D.π (gbar k r γ (Matrix.of p.2.1))).comp (D.π (gbar k r γ (Matrix.of p.1.1))⁻¹) =
        ((piLIE D.z D.π D.π_rep D.π_unitary u₀ hu₀.1 : Wp ≃ₗᵢ[ℂ] Wp) : Wp →L[ℂ] Wp).comp
          (((D.π (Matrix.of p.1.1)).comp (D.π (Matrix.of p.2.1)⁻¹)).comp
            (((piLIE D.z D.π D.π_rep D.π_unitary u₀ hu₀.1).symm : Wp ≃ₗᵢ[ℂ] Wp) : Wp →L[ℂ] Wp)) := by
      rw [← D.π_rep.2 _ (hWbar _ hh') _ (uw_inv (hWbar _ hh)), ← th_mul_inv γ hE (isUnit_of_uh hh'.1), hth,
        D.π_rep.2 _ (uw_mul hu₀.1 hy) _ (uw_inv hu₀.1), D.π_rep.2 _ hu₀.1 _ hy, D.π_rep.2 _ hh _ (uw_inv hh')]
      ext v
      rfl
    have h2 : Y.comp (((piLIE D.z D.π D.π_rep D.π_unitary u₀ hu₀.1).symm : Wp ≃ₗᵢ[ℂ] Wp) : Wp →L[ℂ] Wp) =
        (((piLIE D.z D.π D.π_rep D.π_unitary u₀ hu₀.1).symm : Wp ≃ₗᵢ[ℂ] Wp) : Wp →L[ℂ] Wp).comp Y := by
      rw [← pi_inv_eq D hu₀.1]
      exact hYc _ (uu_inv hu₀)
    simp only [Psi, Phi, hop, map_smul, trY_conj Y _ _ h2]
  have hI1 : trY Y (∫ p, Psi D γ f g0 p ∂D.μSS) = trY Y (∫ p, Phi D f g0 p ∂D.μSS) := by
    rw [← ContinuousLinearMap.integral_comp_comm _ hPsiI, ← ContinuousLinearMap.integral_comp_comm _ hPhiI]
    exact integral_congr_ae key
  have hYY : trY Y (JF D (scalF Wp (f ∘ th k r γ)) g0 - JF D (scalF Wp f) g0) = 0 := by
    rw [map_sub, hB, hB', hI1, sub_self]
  rw [← hY] at hYY
  have h0 := trY_self hYY
  rwa [hY, sub_eq_zero] at h0

end ReciprocityTheory.ChartRestriction.DS.Mult1.SymE

namespace ReciprocityTheory.ChartRestriction.DS.Mult1

open Formalism.QuantumDeterminants Formalism.QuantumDeterminants.WeylGroupFacts Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2 ReciprocityTheory.ChartRestriction.DS.Mult1.SymA ReciprocityTheory.ChartRestriction.DS.Mult1.SymB
  ReciprocityTheory.ChartRestriction.DS.Mult1.SymE

theorem stSym (hIn : UnitaryGroupStructuralFacts) : StSym := by
  intro k r Wp _ _ _ D X hD hX γ hγ f q _ hq hT hEf
  obtain ⟨⟨-, -, -, -, -, -, -, -, -, -, -, -, hCIall, -, -, -, -, -, -, -, -, hClW, -⟩, -, -, hBCF, hUWb, -⟩ := id hIn
  have hCI : ConjInv D := hCIall k r Wp Wp D
  obtain ⟨-, -, hW1, -, -, -, -, hμN, hμW⟩ := stInvGroup hIn k r Wp D X hD hX γ hγ
  have hChar := stInvChar k r Wp D X hD hX γ hγ
  have hL6 := stTransM hIn k r Wp D X hD hX γ hγ
  have hE : IsUnit (embWb k r γ).det := emb_unit (unit_of_frame hγ.1)
  have hTpos : 0 < Tz k r D.z := D.T_pos
  have hc : ∀ a, q.1 a ≠ 0 := by
    intro a ha0
    have hw : 0 < bcWeight k r (Tz k r D.z) (Tz k r D.z') q := hq
    unfold bcWeight at hw
    split_ifs at hw with h1
    · have hM : 0 < 2 * (Mdim k r a - 2) := by
        unfold Mdim
        have := a.isLt
        have := D.k_pos
        omega
      have h0 : (∏ b : Fin r, ‖q.1 b‖ ^ (2 * (Mdim k r b - 2))) = 0 :=
        Finset.prod_eq_zero (Finset.mem_univ a) (by rw [ha0, norm_zero, zero_pow hM.ne'])
      rw [h0, zero_mul] at hw
      exact lt_irrefl _ hw
    · exact lt_irrefl _ hw
  have hT0 : ((Tz k r D.z : ℝ) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.2 hTpos.ne'
  obtain ⟨d, hd_def⟩ : ∃ d : ℂ, d = -(q.2 / ((Tz k r D.z : ℝ) : ℂ)) := ⟨_, rfl⟩
  have hd : 1 < ‖d‖ := by
    have h3 : Tz k r D.z < ‖q.2‖ := by
      rw [Complex.normSq_eq_norm_sq] at hT
      by_contra hcon
      push Not at hcon
      nlinarith [norm_nonneg q.2]
    have hnT : ‖((Tz k r D.z : ℝ) : ℂ)‖ = Tz k r D.z := by
      rw [Complex.norm_real, Real.norm_of_nonneg hTpos.le]
    rw [hd_def, norm_neg, norm_div, hnT, one_lt_div hTpos]
    exact h3
  have hqd : (q.1, -((Tz k r D.z : ℝ) : ℂ) * d) = q := by
    refine Prod.ext rfl ?_
    show -((Tz k r D.z : ℝ) : ℂ) * d = q.2
    rw [hd_def]
    field_simp
  obtain ⟨-, -, -, hg0th, h₀, hh₀, h₀', hh₀', hgq⟩ := stReps hIn k r Wp D X hD hX γ hγ q.1 d hc hd
  rw [hqd] at hgq
  have hh₀'' : h₀' ∈ UWset k r D.z' := hD.z_eq ▸ hh₀'
  have red : ∀ F : Mat k r → (Wp →L[ℂ] Wp),
      JF D F (gq D q) = (Lab D hh₀ hh₀'').symm (JF D F (g0 k r γ q.1 d)) := fun F => by
    rw [J_equiv D hCI hh₀ hh₀'' F (g0 k r γ q.1 d), ← hgq, ContinuousLinearEquiv.symm_apply_apply]
  have hEf0 : ∫⁻ p, ‖rho D p (scalF Wp f) (g0 k r γ q.1 d)‖ₑ ∂D.μSS ≠ ∞ := by
    rw [E_equiv D hCI hh₀ hh₀'', ← hgq]
    exact hEf
  rw [red, red, core D hD hCI (hClW k r D.z).closed γ hE hμW hμN (fun m hm => (hChar m hm).1) hW1 hL6 hg0th
    (fun u hu => big_cell_commute_frame_element hBCF hUWb D.k_pos hγ hu q.1 d) f hEf0]

end ReciprocityTheory.ChartRestriction.DS.Mult1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UuInv =====

module

public import Formalism.LocalToGlobal.HermitianForms.TiedSym
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.CTExtUnitary
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.DefNOfFact
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsOfLatticeExtension
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.InJSymRestrict
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllSmulReB
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClasses
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormOneOfPow
public import Formalism.LocalToGlobal.KernelLattices.InterlaceAll
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.InterlaceDifferenceShiftInvariant
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitALMap
public import Formalism.LocalToGlobal.HilbertRowConditions.RowPin
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapMemCSpanOfRat
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ArchimedeanSignatureMatchingOfTrivialBranchingSymm
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.BrOneGFull
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.RestrictionSymmetric
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClassesFrames
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassMapEstimateOfPartial
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.SymmetricClausesOfFormsNorm
import Formalism.LocalToGlobal.GlobalTheory.BlockActions.HformSmulRightB
import Formalism.LocalToGlobal.GlobalTheory.BlockActions.LengthInverseBound
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.Columns.PolyFnLemmas
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Formalism.LocalToGlobal.HermitianForms.Interlace
import Formalism.LocalToGlobal.Columns.CoefficientsModP.FkPderivBlockEmbNe
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.GlintPrincRelIndexNeZero

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabFunGen, Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsExtendHolds, Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlockActEqBlkRow, Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapBrTenL, Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitBZMap, Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllBrTenLe, Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlkFockLe, Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormalFormAgree, Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfTorsionCharacter, Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfInjectiveStable, Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundHolds, Formalism.LocalToGlobal.GlobalTheory.BlockActions.SymmetricLevelClausesHold

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabFunGen =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabFunGen", "h": "module\n\npublic import Formalism.LocalToGlobal.HermitianForms.TiedSym\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.CTExtUnitary\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.DefNOfFact\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsOfLatticeExtension\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.HformSmulRightB\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.LengthInverseBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.L2.Forms NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct

section GenE

theorem ext_mem_gen {A S : Type} [CommRing A] [Ring S] {n N : ℕ} [Module S (Fin N → A)] [Module S (Fin n → A)]
    (Λm Λd : Submodule S (Fin N → A)) (Λp : Submodule S (Fin n → A)) (hmd : Λm ≤ Λd)
    (I : Matrix (Fin N) (Fin n) A) (P : Matrix (Fin n) (Fin N) A) (k : Matrix (Fin n) (Fin n) A)
    (G : Matrix (Fin N) (Fin N) A) (hPI : P * I = 1) (hG : G = I * k * P + (1 - I * P))
    (hk : ∀ x, x ∈ Λp ↔ k *ᵥ x ∈ Λp) (hI : ∀ x ∈ Λp, I *ᵥ x ∈ Λm) (hO : ∀ x ∈ Λd, P *ᵥ x ∈ Λp)
    (x : Fin N → A) : (x ∈ Λd ↔ G *ᵥ x ∈ Λd) ∧ (x ∈ Λd → G *ᵥ x - x ∈ Λm) := by
  have hGx : G *ᵥ x - x = I *ᵥ (k *ᵥ (P *ᵥ x)) - I *ᵥ (P *ᵥ x) := by
    simp only [hG, Matrix.add_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec]
    abel
  have hPIv : ∀ y, P *ᵥ (I *ᵥ y) = y := fun y => by rw [Matrix.mulVec_mulVec, hPI, Matrix.one_mulVec]
  have e : G *ᵥ x = x + (I *ᵥ (k *ᵥ (P *ᵥ x)) - I *ᵥ (P *ᵥ x)) := by rw [← hGx]; abel
  have hPG : P *ᵥ (G *ᵥ x) = k *ᵥ (P *ᵥ x) := by
    rw [e, Matrix.mulVec_add, Matrix.mulVec_sub, hPIv, hPIv]; abel
  have hdiff : P *ᵥ x ∈ Λp → G *ᵥ x - x ∈ Λm := fun h => by
    rw [hGx]; exact sub_mem (hI _ ((hk _).1 h)) (hI _ h)
  refine ⟨⟨fun hx => ?_, fun hx => ?_⟩, fun hx => hdiff (hO x hx)⟩
  · have e2 : G *ᵥ x = x + (G *ᵥ x - x) := by abel
    rw [e2]; exact add_mem hx (hmd (hdiff (hO x hx)))
  · have h1 : P *ᵥ x ∈ Λp := (hk _).2 (by rw [← hPG]; exact hO _ hx)
    have e2 : x = G *ᵥ x - (G *ᵥ x - x) := by abel
    rw [e2]; exact sub_mem hx (hmd (hdiff h1))

theorem stabFun_gen {A R M : Type} [CommRing A] [CommRing R] [Algebra R A] [AddCommGroup M] [Module R M] {N : ℕ}
    (Λ Λm : Submodule R (Fin N → A)) (f : Λ →ₗ[R] M) (g : GL (Fin N) A)
    (hst : ∀ x, x ∈ Λ ↔ (g : Matrix (Fin N) (Fin N) A) *ᵥ x ∈ Λ)
    (hd : ∀ x ∈ Λ, (g : Matrix (Fin N) (Fin N) A) *ᵥ x - x ∈ Λm) (hm : Λm ≤ Λ)
    (hf : ∀ y : Λ, y.1 ∈ Λm → f y = 0) : g ∈ stabFun Λ f := by
  refine ⟨hst, fun x => ?_⟩
  have e : (⟨(g : Matrix (Fin N) (Fin N) A) *ᵥ (x : Fin N → A), (hst x).1 x.2⟩ : Λ) = x + ⟨_, hm (hd x.1 x.2)⟩ :=
    Subtype.ext (by simp)
  rw [e, map_add (f := _), hf ⟨_, hm (hd x.1 x.2)⟩ (hd x.1 x.2), add_zero]

end GenE

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

theorem proj_dual (Tf : FormsTiedSym D u Ch chOf) (P : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m)) D.host.E)
    (hP1 : P * iXm D = 1) (hPz : P *ᵥ Tf.til.z0 = 0) :
    ∀ y ∈ Submodule.span (𝓞 D.host.E) (dualSet (sigD D : D.host.E →+* D.host.E) (gramN D D.R.m le_rfl)
      (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb), P *ᵥ y ∈ Tf.clsP.lev.Lb := by
  have hiX : ∀ x, iXm D *ᵥ x = iXc D x := fun x => by simp only [iXm, LinearMap.toMatrix'_mulVec]
  obtain ⟨a0, ha0⟩ := Tf.til.lastCoordinateUniformizerVector_spans_orthogonal_line
  have ha : a0 ≠ 0 := by
    rintro rfl
    have hT : ((D.mem u).A.T : D.host.E) ≠ 0 := Nat.cast_ne_zero.mpr (D.mem u).A.T_prime.ne_zero
    have h := Tf.til.hermitianForm_lastCoordinateUniformizerVector_self
    rw [ha0, zero_smul] at h
    simp [Formalism.UG.hform] at h
    exact hT h.symm
  have hPzc : P *ᵥ zc D = 0 := by
    rw [ha0, Matrix.mulVec_smul] at hPz
    exact (smul_eq_zero.mp hPz).resolve_left ha
  have hin := (lat_in_out Tf P hP1 hPz).1
  intro y hy
  induction hy using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨x, s, rfl⟩ := span_iXc_zc D y
    have e : P *ᵥ (iXc D x + s • zc D) = x := by
      rw [Matrix.mulVec_add, Matrix.mulVec_smul, hPzc, smul_zero, add_zero, ← hiX, Matrix.mulVec_mulVec, hP1,
        Matrix.one_mulVec]
    rw [e]
    have hd : x ∈ dualSet (sigD D : D.host.E →+* D.host.E) (gramP D) Tf.clsP.lev.Lb := by
      intro x' hx'
      have h := hy (iXc D x') (by rw [← hiX]; exact hin x' hx')
      rwa [hform_add_right, hform_smul_rightB, hform_iXc, hform_iXc_zc, mul_zero, add_zero] at h
    have := Tf.clsP.lev.Lb_dual x hd
    simpa using this
  | zero => rw [Matrix.mulVec_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [Matrix.mulVec_add]; exact add_mem hx hy
  | smul a x _ hx =>
    rw [← algebraMap_smul D.host.E a x, Matrix.mulVec_smul, algebraMap_smul]
    exact Submodule.smul_mem _ a hx




theorem extV_lat (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (v : HeightOneSpectrum (𝓞 D.host.F)) (P : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m)) D.host.E)
    (hP1 : P * iXm D = 1) (hPz : P *ᵥ Tf.til.z0 = 0)
    (Λd : Submodule (intV D.host.E v) (Fin (D.R.N D.R.m) → D.host.E ⊗[D.host.F] v.adicCompletion D.host.F))
    (hmd : latS (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v) (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb ≤ Λd)
    (hO : ∀ x ∈ Λd, (P.map (inclE (F := D.host.F) (v.adicCompletion D.host.F))) *ᵥ x ∈
      latS (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v) Tf.clsP.lev.Lb)
    (x : Fin (D.R.N D.R.m) → D.host.E ⊗[D.host.F] v.adicCompletion D.host.F) :
    (x ∈ Λd ↔ G.1.map (prV (E := D.host.E) v) *ᵥ x ∈ Λd) ∧
      (x ∈ Λd → G.1.map (prV (E := D.host.E) v) *ᵥ x - x ∈
        latS (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v) (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb) := by
  have hκv : bc (prV (E := D.host.E) v) κ.1 ∈ Tf.clsP.lev.Uloc v := ((Tf.clsP.lev.U_eq κ.1).1 κ.2).2 v
  have hκst := (Subgroup.mem_inf.mp (Tf.clsP.lev.Uloc_lev v hκv)).2
  have hin := (lat_in_out Tf P hP1 hPz).1
  have hI := latS_mulVec (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v) (iXm D) _ _ hin
  have hform := ext_form Tf (inclE (F := D.host.F) (v.adicCompletion D.host.F)) P hP1 hPz _ _ (isExt_prV v hE)
  rw [Matrix.map_mul] at hform
  have hPI : (P.map (inclE (F := D.host.F) (v.adicCompletion D.host.F))) *
      ((iXm D).map (inclE (F := D.host.F) (v.adicCompletion D.host.F))) = 1 := by
    rw [← Matrix.map_mul, hP1, Matrix.map_one _ (map_zero _) (map_one _)]
  exact ext_mem_gen _ Λd _ hmd _ _ (κ.1.1.map (prV (E := D.host.E) v)) _ hPI hform (fun y => hκst y) hI hO x




theorem extV_unit (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (v : HeightOneSpectrum (𝓞 D.host.F)) :
    bc (prV (E := D.host.E) v) G ∈ UJ (sigR (sigD D) (v.adicCompletion D.host.F))
      ((gramN D D.R.m le_rfl).map (inclE (F := D.host.F) (v.adicCompletion D.host.F))) := by
  have hκv : bc (prV (E := D.host.E) v) κ.1 ∈ Tf.clsP.lev.Uloc v := ((Tf.clsP.lev.U_eq κ.1).1 κ.2).2 v
  have hκU0 := Tf.clsP.lev.Uloc_le v hκv
  have hκU : cT (sigR (sigD D) (v.adicCompletion D.host.F)) (κ.1.1.map (prV (E := D.host.E) v)) *
      (gramP D).map (inclE (F := D.host.F) (v.adicCompletion D.host.F)) * κ.1.1.map (prV (E := D.host.E) v) =
      (gramP D).map (inclE (F := D.host.F) (v.adicCompletion D.host.F)) := hκU0
  show cT (sigR (sigD D) (v.adicCompletion D.host.F)) (G.1.map (prV (E := D.host.E) v)) *
      (gramN D D.R.m le_rfl).map (inclE (F := D.host.F) (v.adicCompletion D.host.F)) * G.1.map (prV (E := D.host.E) v) =
      (gramN D D.R.m le_rfl).map (inclE (F := D.host.F) (v.adicCompletion D.host.F))
  exact extUR Tf _ hκU _ (isExt_prV v hE)




theorem extV_stabL (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (v : HeightOneSpectrum (𝓞 D.host.F)) :
    bc (prV (E := D.host.E) v) G ∈ stabGL (latS (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v)
      (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb) := by
  obtain ⟨P, hP1, hPz⟩ := exists_projP Tf
  have hout := (lat_in_out Tf P hP1 hPz).2
  have hO := latS_mulVec (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v) P _ _ hout
  intro x
  exact (extV_lat Tf κ G hE v P hP1 hPz _ le_rfl hO x).1




theorem extV_level (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (v : HeightOneSpectrum (𝓞 D.host.F)) :
    bc (prV (E := D.host.E) v) G ∈ levelVL (sigD D) (gramN D D.R.m le_rfl) v (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb :=
  Subgroup.mem_inf.mpr ⟨extV_unit Tf κ G hE v, extV_stabL Tf κ G hE v⟩




theorem extV_fT (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (v : HeightOneSpectrum (𝓞 D.host.F)) (hT : ((D.mem u).A.T : 𝓞 D.host.F) ∈ v.asIdeal) :
    bc (prV (E := D.host.E) v) G ∈ stabFun _ ((Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.fT v hT) := by
  obtain ⟨P, hP1, hPz⟩ := exists_projP Tf
  have hOd := latS_mulVec (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v) P _ _ (proj_dual Tf P hP1 hPz)
  have hmd : latS (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v) (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb ≤
      latS (F := D.host.F) (v.adicCompletion D.host.F) (intV D.host.E v)
        (Submodule.span (𝓞 D.host.E) (dualSet (sigD D : D.host.E →+* D.host.E) (gramN D D.R.m le_rfl)
          (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb)) :=
    Submodule.span_mono (Set.image_mono fun y hy =>
      Submodule.subset_span ((Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Lb_int y hy))
  exact stabFun_gen _ _ _ (bc (prV (E := D.host.E) v) G)
    (fun x => (extV_lat Tf κ G hE v P hP1 hPz _ hmd hOd x).1)
    (fun x hx => (extV_lat Tf κ G hE v P hP1 hPz _ hmd hOd x).2 hx) hmd
    (fun y hy => (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.fT_L v hT y hy)

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabFunGen =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsExtendHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsExtendHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsOfLatticeExtension\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.CTExtUnitary\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.InJSymRestrict\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabFunGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.L2.Forms NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct

section GenB

def blkDg {K : Type} [Zero K] [One K] {n N : ℕ} (_hN : n + 1 = N) (M : Matrix (Fin n) (Fin n) K) : Matrix (Fin N) (Fin N) K :=
  Matrix.of fun x y => if h : (x : ℕ) < n ∧ (y : ℕ) < n then M ⟨x, h.1⟩ ⟨y, h.2⟩ else if (x : ℕ) = y then 1 else 0

variable {K : Type} {n : ℕ}

@[simp] theorem blkDg_cc [Zero K] [One K] (h : n + 1 = n + 1) (M : Matrix (Fin n) (Fin n) K) (i j : Fin n) :
    blkDg h M i.castSucc j.castSucc = M i j := by
  simp [blkDg]

@[simp] theorem blkDg_cl [Zero K] [One K] (h : n + 1 = n + 1) (M : Matrix (Fin n) (Fin n) K) (i : Fin n) :
    blkDg h M i.castSucc (Fin.last n) = 0 := by
  simp [blkDg, i.is_lt.ne]

@[simp] theorem blkDg_lc [Zero K] [One K] (h : n + 1 = n + 1) (M : Matrix (Fin n) (Fin n) K) (j : Fin n) :
    blkDg h M (Fin.last n) j.castSucc = 0 := by
  simp [blkDg, j.is_lt.ne']

@[simp] theorem blkDg_ll [Zero K] [One K] (h : n + 1 = n + 1) (M : Matrix (Fin n) (Fin n) K) :
    blkDg h M (Fin.last n) (Fin.last n) = 1 := by
  simp [blkDg]

theorem blkDg_mul [CommRing K] {N : ℕ} (hN : n + 1 = N) (A B : Matrix (Fin n) (Fin n) K) :
    blkDg hN (A * B) = blkDg hN A * blkDg hN B := by
  subst hN
  ext x y
  refine Fin.lastCases ?_ (fun i => ?_) x <;> refine Fin.lastCases ?_ (fun j => ?_) y <;>
    simp [Matrix.mul_apply, Fin.sum_univ_castSucc]

theorem blkDg_one [CommRing K] {N : ℕ} (hN : n + 1 = N) : blkDg hN (1 : Matrix (Fin n) (Fin n) K) = 1 := by
  subst hN
  ext x y
  refine Fin.lastCases ?_ (fun i => ?_) x <;> refine Fin.lastCases ?_ (fun j => ?_) y <;>
    simp [Matrix.one_apply, Fin.castSucc_ne_last, (Fin.castSucc_ne_last _).symm]

theorem blk_conj_full [CommRing K] {N : ℕ} (hN : n + 1 = N) (gm Fm Fm' : Matrix (Fin N) (Fin N) K) (hFm : Fm' * Fm = 1)
    (A : Matrix (Fin N) (Fin n) K) (Fp gk M' : Matrix (Fin n) (Fin n) K) (hM' : Fp * M' = gk * Fp)
    (hgA : gm * A = A * gk) (w : Fin N → K) (hgw : gm *ᵥ w = w)
    (hF1 : ∀ x (b : Fin n) (b' : Fin N), (b : ℕ) = b' → Fm x b' = (A * Fp) x b)
    (hF2 : ∀ x (l : Fin N), (l : ℕ) + 1 = N → Fm x l = w x) :
    Fm' * gm * Fm = blkDg hN M' := by
  subst hN
  set B : Matrix (Fin (n + 1)) (Fin (n + 1)) K := blkDg rfl M' with hB
  have key : gm * Fm = Fm * B := by
    ext x y
    refine Fin.lastCases ?_ (fun y' => ?_) y
    · have e1 : (gm * Fm) x (Fin.last n) = w x := by
        rw [← congrFun hgw x, Matrix.mul_apply]
        simp only [mulVec, dotProduct]
        exact Finset.sum_congr rfl (fun j _ => by rw [hF2 j (Fin.last n) (by simp)])
      rw [e1, Matrix.mul_apply, Fin.sum_univ_castSucc]
      simp [hB, hF2 x (Fin.last n) (by simp)]
    · have eL : (gm * Fm) x y'.castSucc = (A * (Fp * M')) x y' := by
        rw [hM', ← Matrix.mul_assoc, ← hgA, Matrix.mul_assoc, Matrix.mul_apply, Matrix.mul_apply]
        exact Finset.sum_congr rfl (fun j _ => by rw [hF1 j y' y'.castSucc (by simp)])
      have eR : (Fm * B) x y'.castSucc = ((A * Fp) * M') x y' := by
        rw [Matrix.mul_apply, Fin.sum_univ_castSucc, Matrix.mul_apply]
        rw [hB, blkDg_lc, mul_zero, add_zero]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [hF1 x j j.castSucc (by simp), blkDg_cc]
      rw [eL, eR, Matrix.mul_assoc]
  rw [Matrix.mul_assoc, key, ← Matrix.mul_assoc, hFm, Matrix.one_mul]

theorem redM_blkDg {F : Type} [Field F] [NumberField F] (v : HeightOneSpectrum (𝓞 F)) {N : ℕ} (hN : n + 1 = N)
    (M : Matrix (Fin n) (Fin n) (v.adicCompletion F)) : redM F v (blkDg hN M) = blkDg hN (redM F v M) := by
  funext x y
  by_cases h : (x : ℕ) < n ∧ (y : ℕ) < n
  · have e : blkDg hN (redM F v M) x y = redM F v M ⟨x, h.1⟩ ⟨y, h.2⟩ := by simp [blkDg, h]
    rw [e]
    exact redM_entry v _ _ _ _ _ _ (by simp [blkDg, h])
  · by_cases hxy : (x : ℕ) = y
    · have e1 : blkDg hN M x y = 1 := by simp only [blkDg, Matrix.of_apply, dif_neg h, if_pos hxy]
      have e2 : blkDg hN (redM F v M) x y = 1 := by simp only [blkDg, Matrix.of_apply, dif_neg h, if_pos hxy]
      have hm : blkDg hN M x y ∈ v.adicCompletionIntegers F := by rw [e1]; exact one_mem _
      rw [e2]
      simp only [redM, dif_pos hm]
      have : (⟨blkDg hN M x y, hm⟩ : v.adicCompletionIntegers F) = 1 := Subtype.ext (by simpa using e1)
      rw [this, map_one]
    · have e1 : blkDg hN M x y = 0 := by simp only [blkDg, Matrix.of_apply, dif_neg h, if_neg hxy]
      have e2 : blkDg hN (redM F v M) x y = 0 := by simp only [blkDg, Matrix.of_apply, dif_neg h, if_neg hxy]
      have hm : blkDg hN M x y ∈ v.adicCompletionIntegers F := by rw [e1]; exact zero_mem _
      rw [e2]
      simp only [redM, dif_pos hm]
      have : (⟨blkDg hN M x y, hm⟩ : v.adicCompletionIntegers F) = 0 := Subtype.ext (by simpa using e1)
      rw [this, map_zero]

theorem injsym_blk [Field K] {N k rS t : ℕ} (hN : n + 1 = N) (hr : rSym k rS ≤ n) (M : Matrix (Fin n) (Fin n) K)
    (h : InJSym k rS t false M) : InJSym k rS t true (blkDg hN M) := by
  subst hN
  obtain ⟨h1, h2, h3, -⟩ := h
  have hr' : k + rS < n := by unfold rSym at hr; omega
  refine ⟨fun x y hxy => ?_, fun x hx => ?_, fun x y hx hy => ?_, fun _ x y hy => ?_⟩
  · induction x using Fin.lastCases with
    | last =>
      induction y using Fin.lastCases with
      | last => exact absurd hxy (lt_irrefl _)
      | cast j => exact blkDg_lc _ M j
    | cast i =>
      induction y using Fin.lastCases with
      | last => exact blkDg_cl _ M i
      | cast j => rw [blkDg_cc]; exact h1 i j (by simpa using hxy)
  · induction x using Fin.lastCases with
    | last => simp at hx; omega
    | cast i => rw [blkDg_cc]; exact h2 i (by simpa using hx)
  · induction x using Fin.lastCases with
    | last => simp at hx; omega
    | cast i =>
      induction y using Fin.lastCases with
      | last => simp at hy; omega
      | cast j => rw [blkDg_cc]; exact h3 i j (by simpa using hx) (by simpa using hy)
  · have hyl : y = Fin.last n := Fin.ext (by rw [Fin.val_last]; omega)
    subst hyl
    induction x using Fin.lastCases with
    | last => simp
    | cast i => simp [Fin.castSucc_ne_last]

theorem jsym_blk [Field K] {N k rS t : ℕ} (hN : n + 1 = N) (hr : rSym k rS ≤ n) (Mp : GL (Fin n) K)
    (hMp : Mp ∈ JSymG K n k rS t false) : ∃ Mm ∈ JSymG K N k rS t true, Mm.1 = blkDg hN Mp.1 := by
  refine ⟨⟨blkDg hN Mp.1, blkDg hN (Mp⁻¹ : GL (Fin n) K).1, ?_, ?_⟩, ⟨injsym_blk hN hr _ hMp.1, injsym_blk hN hr _ hMp.2⟩, rfl⟩
  · rw [← blkDg_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one, blkDg_one]
  · rw [← blkDg_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one, blkDg_one]

theorem sum_blkDg {A : Type} [AddCommMonoid A] (f : Fin (n + 1) → Fin (n + 1) → A) (g : Fin n → Fin n → A)
    (h1 : ∀ i j, f i.castSucc j.castSucc = g i j) (h2 : ∀ i, f i (Fin.last n) = 0) (h3 : ∀ j, f (Fin.last n) j = 0) :
    ∑ x, ∑ y, f x y = ∑ i, ∑ j, g i j := by
  simp only [Fin.sum_univ_castSucc, h1, h2, h3, Finset.sum_const_zero, add_zero]

theorem lamSym_blk [Field K] {N : ℕ} (hN : n + 1 = N) (ψ : AddChar K ℂ) (χ : ℕ → MulChar K ℂ) (k rS t nb : ℕ)
    (hb : rSym k rS + nb * t ≤ n) (M : Matrix (Fin n) (Fin n) K) :
    lamSym ψ χ k rS t nb (blkDg hN M) = lamSym ψ χ k rS t nb M := by
  subst hN
  have hr : rSym k rS ≤ n := le_trans (Nat.le_add_right _ _) hb
  unfold lamSym lamJ
  have hsum := sum_blkDg (fun x y : Fin (n + 1) => if (x : ℕ) + 1 = y ∧ (y : ℕ) < rSym k rS ∧ (y : ℕ) ≠ k then
      blkDg rfl M x y else 0)
    (fun x y : Fin n => if (x : ℕ) + 1 = y ∧ (y : ℕ) < rSym k rS ∧ (y : ℕ) ≠ k then M x y else 0)
    (fun i j => by simp)
    (fun i => if_neg (fun hc => by
      have := hc.2.1
      simp only [Fin.val_last] at this
      omega))
    (fun j => by have := j.is_lt; simp; omega)
  rw [hsum]
  congr 1
  refine Finset.prod_congr rfl fun i hi => ?_
  have hi' := Finset.mem_range.mp hi
  have hit : i * t + t ≤ nb * t := by
    have := Nat.mul_le_mul_right t (Nat.succ_le_of_lt hi')
    rwa [Nat.succ_mul] at this
  have e : blkMat (rSym k rS) t i (blkDg rfl M) = blkMat (rSym k rS) t i M := by
    funext s s'
    have hs := s.is_lt
    have hs' := s'.is_lt
    have b1 : rSym k rS + i * t + s < n := by linarith
    have b2 : rSym k rS + i * t + s' < n := by linarith
    simp only [blkMat, entN, dif_pos (And.intro b1 b2), dif_pos (And.intro (Nat.lt_succ_of_lt b1) (Nat.lt_succ_of_lt b2))]
    simp [blkDg, b1, b2]
  rw [e]

end GenB

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

theorem rSym_le_N (R : Ranks) : rSym R.k (rSD R) + R.m * R.t ≤ R.N R.m - 1 := by
  rw [rSym_rSD]
  have e : R.m * (R.t + 1) = R.m * R.t + R.m := by ring
  simp only [Ranks.r, Ranks.N, e]
  have := R.two_le_m
  omega

theorem rSym_le_N' (R : Ranks) : rSym R.k (rSD R) ≤ R.N R.m - 1 := le_trans (Nat.le_add_right _ _) (rSym_le_N R)



theorem extB_mat (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (i : Fin 2) (v : HeightOneSpectrum (𝓞 D.host.F)) (h : (D.host.g i : 𝓞 D.host.F) ∈ v.asIdeal) :
    Tf.gl.mat i v h (Tf.glevM.fr i v h) (bc (prV (E := D.host.E) v) G) =
      blkDg (Formalism.MainNotions.product_first_zeroth_parts.Nm_succ D.R) (Tf.gl.mat i v h (Tf.glevP.fr i v h) (bc (prV (E := D.host.E) v) κ.1)) := by
  obtain ⟨hEv1, hEv2⟩ := isExt_prV v hE
  obtain ⟨hF1, hF2⟩ := Tf.frExt i v h
  have hmatG : Tf.gl.mat i v h (Tf.glevM.fr i v h) (bc (prV (E := D.host.E) v) G) =
      ((Tf.glevM.fr i v h)⁻¹ : GL _ _).1 * (G.1.map (prV (E := D.host.E) v)).map (Tf.gl.phi i v h) * (Tf.glevM.fr i v h).1 := by
    simp only [GLoc.mat, Units.val_mul]; rfl
  have hmatK : Tf.gl.mat i v h (Tf.glevP.fr i v h) (bc (prV (E := D.host.E) v) κ.1) =
      ((Tf.glevP.fr i v h)⁻¹ : GL _ _).1 * (κ.1.1.map (prV (E := D.host.E) v)).map (Tf.gl.phi i v h) * (Tf.glevP.fr i v h).1 := by
    simp only [GLoc.mat, Units.val_mul]; rfl
  rw [hmatG, hmatK]
  exact blk_conj_full (Formalism.MainNotions.product_first_zeroth_parts.Nm_succ D.R)
    ((G.1.map (prV (E := D.host.E) v)).map (Tf.gl.phi i v h)) (Tf.glevM.fr i v h).1 ((Tf.glevM.fr i v h)⁻¹ : GL _ _).1
    (by rw [← Units.val_mul, inv_mul_cancel, Units.val_one])
    ((iXm D).map ((Tf.gl.phi i v h).comp (inclE (F := D.host.F) (v.adicCompletion D.host.F))))
    (Tf.glevP.fr i v h).1 ((κ.1.1.map (prV (E := D.host.E) v)).map (Tf.gl.phi i v h))
    (((Tf.glevP.fr i v h)⁻¹ : GL _ _).1 * (κ.1.1.map (prV (E := D.host.E) v)).map (Tf.gl.phi i v h) * (Tf.glevP.fr i v h).1)
    (by rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mul])
    (by
      have := congrArg (fun M => M.map (Tf.gl.phi i v h)) hEv1
      simp only [Matrix.map_mul, Matrix.map_map] at this
      rw [RingHom.coe_comp]
      exact this)
    (fun a => Tf.gl.phi i v h (inclE (F := D.host.F) (v.adicCompletion D.host.F) (Tf.til.z0 a)))
    (by
      funext a
      exact (RingHom.map_mulVec (Tf.gl.phi i v h) _ _ a).symm.trans (congrArg (fun w => Tf.gl.phi i v h (w a)) hEv2))
    hF1 hF2



theorem extB_mem (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (i : Fin 2) (v : HeightOneSpectrum (𝓞 D.host.F)) (h : (D.host.g i : 𝓞 D.host.F) ∈ v.asIdeal) :
    bc (prV (E := D.host.E) v) G ∈ (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Uloc v := by
  rw [Tf.glevM.mem i v h _ (extV_level Tf κ G hE v)]
  have hκv : bc (prV (E := D.host.E) v) κ.1 ∈ Tf.clsP.lev.Uloc v := ((Tf.clsP.lev.U_eq κ.1).1 κ.2).2 v
  obtain ⟨Mp, hMp, hMpeq⟩ := (Tf.glevP.mem i v h _ (Tf.clsP.lev.Uloc_lev v hκv)).1 hκv
  obtain ⟨Mm, hMm, hMmeq⟩ := jsym_blk (Formalism.MainNotions.product_first_zeroth_parts.Nm_succ D.R) (rSym_le_N' D.R) Mp hMp
  refine ⟨Mm, hMm, ?_⟩
  rw [hMmeq, extB_mat Tf κ G hE i v h, redM_blkDg, hMpeq]



theorem extB_chi (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (hG : G ∈ (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.U) :
    (((Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.chi ⟨G, hG⟩ : ℂˣ) : ℂ) = ((Tf.clsP.lev.chi κ : ℂˣ) : ℂ) := by
  rw [Tf.glevM.chi_eq, Tf.glevP.chi_eq]
  refine Finset.prod_congr rfl fun i _ => finprod_congr fun v => finprod_congr fun h => ?_
  congr 1
  rw [Tf.lamM_eq, Tf.eigenvalue_eq₂]
  have e1 := Tf.glevM.red_eq i v h ⟨G, hG⟩
  have e2 := Tf.glevP.red_eq i v h κ
  simp only at e1 e2
  rw [e1, e2, extB_mat Tf κ G hE i v h, redM_blkDg, lamSym_blk _ _ _ _ _ _ _ (rSym_le_N D.R)]

theorem extLoc (Tf : FormsTiedSym D u Ch chOf) (κ : Tf.clsP.lev.U)
    (G : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)))
    (hE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) κ.1.1 G.1)
    (v : HeightOneSpectrum (𝓞 D.host.F)) :
    bc (prV (E := D.host.E) v) G ∈ (Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Uloc v := by
  by_cases hv : v ∈ badG D
  · obtain ⟨i, hi⟩ : ∃ i : Fin 2, (D.host.g i : 𝓞 D.host.F) ∈ v.asIdeal := by
      rcases hv with h0 | h1
      · exact ⟨0, h0⟩
      · exact ⟨1, h1⟩
    exact extB_mem Tf κ G hE i v hi
  · by_cases hT : ((D.mem u).A.T : 𝓞 D.host.F) ∈ v.asIdeal
    · rw [(Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.UlocAlt v hT]
      exact Subgroup.mem_inf.mpr ⟨extV_level Tf κ G hE v, extV_fT Tf κ G hE v hT⟩
    · rw [(Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.Uloc_hyp v hv hT]
      exact extV_level Tf κ G hE v

theorem extLevL_holds (Tf : FormsTiedSym D u Ch chOf) : ExtLevL Tf :=
  fun κ G hE _ => ⟨fun v => extLoc Tf κ G hE v, fun hG => extB_chi Tf κ G hE hG⟩

theorem forms_extend_holds : FormsCarriedToComplement :=
  forms_of_lattice_extension fun _ _ _ _ Tf => extLevL_holds Tf

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsExtendHolds =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlockActEqBlkRow =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlockActEqBlkRow", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllSmulReB\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.HformSmulRightB\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClasses\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormOneOfPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open MvPolynomial Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Matrix

section Indep

variable {ι : Type} [Fintype ι] {n : ℕ}

theorem blockAct_eq_blkRow (U : ι → Matrix (Fin n) (Fin n) ℂ) : Formalism.GradedWeylDivisibility.blockAct ℂ U = blkRow U := rfl

theorem isUnit_det_of_on (G o : Matrix (Fin n) (Fin n) ℂ) (h : oᴴ * G * o = 1) : IsUnit o.det := by
  have h1 := congrArg Matrix.det h
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_one] at h1
  have h2 : o.det * (oᴴ.det * G.det) = 1 := by rw [← h1]; ring
  exact ⟨Units.mkOfMulEqOne _ _ h2, rfl⟩

theorem unitary_of_two_on (G o1 o2 : Matrix (Fin n) (Fin n) ℂ) (h1 : o1ᴴ * G * o1 = 1) (h2 : o2ᴴ * G * o2 = 1) :
    (o1⁻¹ * o2) * (o1⁻¹ * o2)ᴴ = 1 ∧ ‖(o1⁻¹ * o2).det‖ = 1 ∧ o2 = o1 * (o1⁻¹ * o2) := by
  have hu1 := isUnit_det_of_on _ _ h1
  have hG : G = (o1ᴴ)⁻¹ * o1⁻¹ := Formalism.L2.Col.eq_of_frame _ _ h1
  have hUU : (o1⁻¹ * o2)ᴴ * (o1⁻¹ * o2) = 1 := by
    have e : (o1⁻¹ * o2)ᴴ * (o1⁻¹ * o2) = o2ᴴ * ((o1ᴴ)⁻¹ * o1⁻¹) * o2 := by
      rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_nonsing_inv]
      simp only [Matrix.mul_assoc]
    rw [e, ← hG, h2]
  refine ⟨mul_eq_one_comm.1 hUU, ?_, ?_⟩
  · have h := congrArg Matrix.det hUU
    rw [Matrix.det_mul, Matrix.det_conjTranspose, Matrix.det_one] at h
    have h' : ‖(o1⁻¹ * o2).det‖ ^ 2 = 1 := by
      have := congrArg (fun z : ℂ => ‖z‖) h
      simp only [norm_mul, norm_star, norm_one] at this
      rw [sq]; exact this
    exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) two_ne_zero).1 h'
  · rw [← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hu1, Matrix.one_mul]

theorem term_frame_indep (lam : ι → DomWeight n) (G : ι → Matrix (Fin n) (Fin n) ℂ) (k : ι → ℤ)
    (o1 o2 : ι → Matrix (Fin n) (Fin n) ℂ) (h1 : ∀ τ, (o1 τ)ᴴ * G τ * o1 τ = 1) (h2 : ∀ τ, (o2 τ)ᴴ * G τ * o2 τ = 1)
    (P : MvPolynomial (ι × Fin n × Fin n) ℂ) :
    (∏ τ, ‖(o1 τ).det‖ ^ (2 * k τ)) * (Formalism.L2.Forms.nfAll lam (subP o1 P) (subP o1 P)).re =
      (∏ τ, ‖(o2 τ).det‖ ^ (2 * k τ)) * (Formalism.L2.Forms.nfAll lam (subP o2 P) (subP o2 P)).re := by
  have hU := fun τ => unitary_of_two_on (G τ) (o1 τ) (o2 τ) (h1 τ) (h2 τ)
  have hc : blkRow (fun τ => (o1 τ)⁻¹ * o2 τ) (blkRow o1 P) = blkRow o2 P := by
    rw [blkRow_comp]
    have e : (fun τ => o1 τ * ((o1 τ)⁻¹ * o2 τ)) = o2 := funext fun τ => ((hU τ).2.2).symm
    rw [e]
  have hsub : subP o2 P = blkRow (fun τ => (o1 τ)⁻¹ * o2 τ) (subP o1 P) := hc.symm
  have hdet : ∀ τ, ‖(o2 τ).det‖ = ‖(o1 τ).det‖ := fun τ => by
    have e := congrArg Matrix.det (hU τ).2.2
    rw [Matrix.det_mul] at e
    rw [e, norm_mul, (hU τ).2.1, mul_one]
  have hn : Formalism.L2.Forms.nfAll lam (subP o2 P) (subP o2 P) = Formalism.L2.Forms.nfAll lam (subP o1 P) (subP o1 P) := by
    rw [hsub, ← blockAct_eq_blkRow]
    exact Formalism.L2.Col.nfAll_blockAct lam _ (fun τ => (hU τ).1) _ _
  rw [hn]
  congr 1
  exact Finset.prod_congr rfl (fun τ _ => by rw [hdet τ])

end Indep

section At

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

theorem frame_on_at (Tf : FormsTiedSym D u Ch chOf) (c : (D.fm u).clsP) (ι : D.host.E →+* ℂ)
    (o' : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m - 1)) ℂ) (ho : o'ᴴ * (gramP D).map ι * o' = 1) :
    (((((Tf.til.ga c).1)⁻¹ : GL (Fin (D.R.N D.R.m)) D.host.E) : Matrix _ _ D.host.E).map ι *
        (bZ u Tf.til.z0).map ι * dOT u o')ᴴ * (gramN D D.R.m le_rfl).map ι *
      (((((Tf.til.ga c).1)⁻¹ : GL (Fin (D.R.N D.R.m)) D.host.E) : Matrix _ _ D.host.E).map ι *
        (bZ u Tf.til.z0).map ι * dOT u o') = 1 := by
  have hga : (((((Tf.til.ga c).1)⁻¹ : GL (Fin (D.R.N D.R.m)) D.host.E) : Matrix _ _ D.host.E).map ι)ᴴ *
      (gramN D D.R.m le_rfl).map ι * ((((Tf.til.ga c).1)⁻¹ : GL (Fin (D.R.N D.R.m)) D.host.E) : Matrix _ _ D.host.E).map ι =
      (gramN D D.R.m le_rfl).map ι := by
    have h := ((Tf.til.ga c)⁻¹).2
    rw [InvMemClass.coe_inv] at h
    have h' : (((((Tf.til.ga c).1)⁻¹ : GL (Fin (D.R.N D.R.m)) D.host.E) : Matrix _ _ D.host.E).map
        (sigD D : D.host.E →+* D.host.E))ᵀ * gramN D D.R.m le_rfl *
        ((((Tf.til.ga c).1)⁻¹ : GL (Fin (D.R.N D.R.m)) D.host.E) : Matrix _ _ D.host.E) = gramN D D.R.m le_rfl := h
    have h2 := congrArg (fun X => X.map ι) h'
    simp only [Matrix.map_mul] at h2
    rw [map_cT_at] at h2
    exact h2
  have hbZ : ((bZ u Tf.til.z0).map ι)ᴴ * (gramN D D.R.m le_rfl).map ι * (bZ u Tf.til.z0).map ι =
      Matrix.reindex (eN D) (eN D) (Matrix.fromBlocks ((gramP D).map ι) 0 0
        (Matrix.of fun _ _ => ((D.mem u).A.T : ℂ)⁻¹)) := by
    have h := gram_bZ (u := u) Tf.til.z0 Tf.til.lastCoordinateUniformizerVector_spans_orthogonal_line Tf.til.hermitianForm_lastCoordinateUniformizerVector_self
    have h2 := congrArg (fun X => X.map ι) h
    simp only [Matrix.map_mul] at h2
    rw [map_cT_at] at h2
    rw [h2, Matrix.reindex_apply, Matrix.reindex_apply, ← Matrix.submatrix_map, Matrix.fromBlocks_map,
      Matrix.map_zero _ (map_zero _), Matrix.map_zero _ (map_zero _)]
    congr 2
    ext i j
    simp [map_inv₀, map_natCast]
  have e : ∀ (X Y Z G : Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) ℂ),
      (X * Y * Z)ᴴ * G * (X * Y * Z) = Zᴴ * (Yᴴ * (Xᴴ * G * X) * Y) * Z := by
    intro X Y Z G
    simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
  rw [e, hga, hbZ, dOT_on _ _ ho]

end At

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlockActEqBlkRow =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapBrTenL =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapBrTenL", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.InterlaceAll\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.InterlaceDifferenceShiftInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open MvPolynomial Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Matrix

section BC

variable {K K' : Type} [Field K] [Field K'] [CharZero K] [CharZero K'] (j : K →+* K') {ι : Type} [Fintype ι] {N n : ℕ}

theorem map_brStdP (hN : N = n + 1) (lam : ι → DomWeight N) (sg : ι → DomWeight n) (F : Formalism.L2.DIV.Pol K ι N) :
    map j (Formalism.L2.Col.Br.brStdP hN lam sg F : Formalism.L2.DIV.Pol K ι n) =
      (Formalism.L2.Col.Br.brStdP hN lam sg (map j F) : Formalism.L2.DIV.Pol K' ι n) := by
  simp only [Formalism.L2.Col.Br.brStdP, LinearMap.smul_apply, LinearMap.comp_apply, Submodule.coe_smul]
  rw [MvPolynomial.smul_eq_C_mul, map_mul, map_C, Formalism.L2.Ker.lb_map_projVV, Formalism.L2.Ker.lb_map_coefLast,
    Formalism.L2.Ker.lb_map_brConst, ← MvPolynomial.smul_eq_C_mul]

end BC

section Rec

variable {D : D7} {u : D.what₂.Word}

def brTenL (D : D7) (u : D.what₂.Word) (F : MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) D.what₂.LL) :
    MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m - 1) × Fin (D.R.N D.R.m - 1)) D.what₂.LL :=
  (Formalism.L2.Col.Br.brStdP (Nm_succ D.R).symm (lamTr D u) (sgTr D u) F : Formalism.L2.DIV.Pol D.what₂.LL D.what₂.Tau (D.R.N D.R.m - 1))

theorem map_brTenL (j : D.what₂.LL →+* ℂ) (F : MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) D.what₂.LL) :
    map j (brTenL D u F) = Formalism.L2.Ker.brTen D u (map j F) := by
  unfold brTenL Formalism.L2.Ker.brTen
  rw [map_brStdP, Formalism.L2.Ker.blk_brOne]

end Rec

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapBrTenL =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitBZMap =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitBZMap", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitALMap\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapBrTenL\npublic import Formalism.LocalToGlobal.HilbertRowConditions.RowPin\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapMemCSpanOfRat\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllSmulReB\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClasses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open MvPolynomial Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Matrix NumberField

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

theorem embS_embLLF : embS D D.what₂.embLL = Formalism.L2.Forms.embT D := by
  funext τ
  apply RingHom.ext
  intro x
  show D.what₂.embLL (D.embE (D.host.sigmaOf (D.eTau τ : D.R.GG) x)) =
    D.host.φ₀ (D.host.sigmaOf (D.eTau τ : D.R.GG) x)
  rw [← D.embE_φ₀]
  rfl

theorem pc_rat (Tf : FormsTiedSym D u Ch chOf) (x : Vl D u D.R.m)
    (Pc : (D.mem u).C.cls D.R.m → MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) D.what₂.LL)
    (hPc : ∀ c z, (D.fm u).emb D.R.m x c z = fnOf _ (shiftOf (lamT u D.R.m)) 1 (MvPolynomial.map D.what₂.embLL (Pc c))
      ((Tf.val D.R.m le_rfl (Or.inr rfl)).eY z)) (c' : (D.mem u).C.cls D.R.m) :
    MvPolynomial.map D.what₂.embLL (Pc c') ∈ RatSpan D ((D.fm u).lam D.R.m) := by
  obtain ⟨⟨oN, -⟩, -⟩ := framesAt D u Ch chOf Tf D.what₂.embLL
  rw [embS_embLLF] at oN
  have hx := ((Tf.val D.R.m le_rfl (Or.inr rfl)).rat ((D.fm u).emb D.R.m x)).1 ⟨x, rfl⟩
  obtain ⟨P1, hP1, hP1z⟩ := hx.2 c'
  have hP1e : P1 = MvPolynomial.map D.what₂.embLL (Pc c') := by
    apply Formalism.L2.Col.fnOf_injective _ _ 1 (fun τ => by simp) oN
    funext y
    obtain ⟨z, rfl⟩ := (Tf.val D.R.m le_rfl (Or.inr rfl)).eY.surjective y
    rw [← hP1z, hPc]
  rw [← hP1e]
  exact hP1

theorem isUnit_bZ_map (Tf : FormsTiedSym D u Ch chOf) (τ : D.what₂.Tau) :
    IsUnit ((bZ u Tf.til.z0).map (Formalism.L2.Forms.embT D τ)).det := by
  have := (bZ_isUnitS Tf).map (Formalism.L2.Forms.embT D τ)
  rw [RingHom.map_det] at this
  exact this



theorem base_eq (Tf : FormsTiedSym D u Ch chOf) (hL : Formalism.L2.Rows.LowerMapTieS Tf) (h : (D.fm u).PRat) (x : Vl D u D.R.m)
    (Pc : (D.mem u).C.cls D.R.m → MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) D.what₂.LL)
    (hPc : ∀ c z, (D.fm u).emb D.R.m x c z = fnOf _ (shiftOf (lamT u D.R.m)) 1 (MvPolynomial.map D.what₂.embLL (Pc c))
      ((Tf.val D.R.m le_rfl (Or.inr rfl)).eY z))
    (Qc : (D.fm u).clsP → MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m - 1) × Fin (D.R.N D.R.m - 1)) D.what₂.LL)
    (hQc : ∀ c, Tf.valP.eW ((D.fm u).ptEmb ((D.fm u).PtL h x)) c =
      fnOf _ (shiftOf (sgT u)) 1 (MvPolynomial.map D.what₂.embLL (Qc c))) (c : (D.fm u).clsP) :
    MvPolynomial.map D.what₂.embLL (Qc c) =
      ((((Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.chi (Tf.tilAd.ka c) : ℂˣ) : ℂ))⁻¹ •
        MvPolynomial.map D.what₂.embLL (brTenL D u (PL Tf c (Pc ((D.fm u).til c)))) := by
  classical
  have hB := bZ_isUnitS Tf
  have hmZ := mZ_isUnit hB
  obtain ⟨-, ⟨oP, -⟩⟩ := framesAt D u Ch chOf Tf D.what₂.embLL
  rw [embS_embLLF] at oP
  have hP0 : MvPolynomial.map D.what₂.embLL (Pc ((D.fm u).til c)) ∈ Formalism.L2.Forms.CSpan ((D.fm u).lam D.R.m) :=
    map_mem_CSpan_of_rat _ _ (pc_rat Tf x Pc hPc _) D.what₂.embLL
  let ginv : GL (Fin (D.R.N D.R.m)) D.host.E := ((Tf.til.ga c).1)⁻¹
  let M' : D.what₂.Tau → Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) ℂ := atInf (Formalism.L2.Forms.embT D) (ginv : Matrix _ _ D.host.E)
  let A0 : D.what₂.Tau → Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) ℂ := fun τ => M' τ * (mZ u Tf.til.z0 τ)⁻¹
  have hA0 : ∀ τ, (AL Tf c τ).map D.what₂.embLL = A0 τ := by
    intro τ
    rw [AL_map, embS_embLLF]
    show ((ginv : Matrix _ _ D.host.E) * bZ u Tf.til.z0).map (Formalism.L2.Forms.embT D τ) =
      (ginv : Matrix _ _ D.host.E).map (Formalism.L2.Forms.embT D τ) * (((bZ u Tf.til.z0)⁻¹).map (Formalism.L2.Forms.embT D τ))⁻¹
    rw [Matrix.map_mul, Formalism.L2.Col.map_inv_matrix, Matrix.nonsing_inv_nonsing_inv _ (isUnit_bZ_map Tf τ)]
  have hA0u : ∀ τ, IsUnit (A0 τ).det := fun τ => by rw [← hA0]; exact isUnit_AL_map Tf c _ τ
  have hmapPL : MvPolynomial.map D.what₂.embLL (PL Tf c (Pc ((D.fm u).til c))) =
      (∏ τ, (A0 τ).det ^ shiftOf (lamT u D.R.m) τ) • blkRow A0 (MvPolynomial.map D.what₂.embLL (Pc ((D.fm u).til c))) := by
    rw [map_PL]
    simp only [hA0]
  set χ : ℂ := ((((Tf.cls D.R.m le_rfl (Or.inr rfl)).lev.chi (Tf.tilAd.ka c) : ℂˣ) : ℂ)) with hχ
  have hPbmem : χ⁻¹ • MvPolynomial.map D.what₂.embLL (PL Tf c (Pc ((D.fm u).til c))) ∈
      Formalism.L2.Forms.CSpan ((D.fm u).lam D.R.m) := by
    rw [hmapPL]
    exact Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (blkRow_mem_CSpan _ A0 hA0u _ hP0))
  have hPb : ∀ s, Tf.eWz ((D.mem u).P.evz ((D.fm u).emb D.R.m x)) c s =
      fnOf _ (shiftOf (lamT u D.R.m)) (mZ u Tf.til.z0) (χ⁻¹ • MvPolynomial.map D.what₂.embLL (PL Tf c (Pc ((D.fm u).til c))))
        ((Tf.val D.R.m le_rfl (Or.inr rfl)).eY s) := by
    intro s
    rw [Tf.evz ((D.fm u).emb D.R.m x) c s ((Tf.val D.R.m le_rfl (Or.inr rfl)).eY.symm
      (((Tf.val D.R.m le_rfl (Or.inr rfl)).eY s).tr M' (isUnit_det_atInf (Formalism.L2.Forms.embT D) ginv)))]
    · rw [hPc, Equiv.apply_symm_apply, fnOf_trG]
      have e1 : (fun τ => (1 : D.what₂.Tau → Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) ℂ) τ * M' τ) = M' :=
        funext fun τ => by simp
      rw [e1, fnOf_change _ _ (mZ u Tf.til.z0) M' hmZ, hmapPL]
      simp only [map_smul, Pi.smul_apply, smul_eq_mul, Units.val_inv_eq_inv_val]
      rfl
    · intro τ
      simp only [Equiv.apply_symm_apply]
      show ((Tf.val D.R.m le_rfl (Or.inr rfl)).eY s).1 τ =
        atInf (Formalism.L2.Forms.embT D) (Tf.til.ga c).1.1 τ * (M' τ * ((Tf.val D.R.m le_rfl (Or.inr rfl)).eY s).1 τ)
      rw [← Matrix.mul_assoc, atInf_mul_inv, Matrix.one_mul]
  have h3 := hL hB ((D.mem u).P.evz ((D.fm u).emb D.R.m x)) c _ hPbmem hPb
  have h4 : fnOf (gramC (gramP D) (Formalism.L2.Forms.embT D)) (shiftOf (sgT u)) 1 (MvPolynomial.map D.what₂.embLL (Qc c)) =
      fnOf (gramC (gramP D) (Formalism.L2.Forms.embT D)) (shiftOf (sgT u)) 1 (Formalism.L2.Ker.brTen D u (χ⁻¹ • MvPolynomial.map D.what₂.embLL (PL Tf c (Pc ((D.fm u).til c))))) := by
    rw [← hQc c, (D.fm u).PtL_spec h x, h3]
  have h5 := Formalism.L2.Col.fnOf_injective _ _ 1 (fun τ => by simp) oP h4
  rw [h5, map_smul, map_brTenL]

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitBZMap =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllBrTenLe =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllBrTenLe", "h": "module\n\npublic import Formalism.LocalToGlobal.HermitianForms.TiedSym\npublic import Formalism.LocalToGlobal.KernelLattices.InterlaceAll\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ArchimedeanSignatureMatchingOfTrivialBranchingSymm\nimport Formalism.LocalToGlobal.HermitianForms.Interlace\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.InterlaceDifferenceShiftInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms

def BlockFockBound : Prop :=
  ∀ (ι : Type) [Fintype ι] (n n' : ℕ) (V : ι → Submodule ℂ (MvPolynomial (Fin n × Fin n) ℂ))
    (F : ι → MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin n' × Fin n') ℂ) (c : ι → ℝ),
    (∀ τ, ∀ f ∈ V τ, (Formalism.REAL.fockF (F τ f) (F τ f)).re ≤ c τ ^ 2 * (Formalism.REAL.fockF f f).re) →
    ∀ P ∈ Submodule.span ℂ {p | ∃ f : ι → MvPolynomial (Fin n × Fin n) ℂ, (∀ τ, f τ ∈ V τ) ∧ p = Formalism.MainNotions.product_first_zeroth_parts.ten f},
      (Formalism.REAL.fockF (Formalism.MainNotions.product_first_zeroth_parts.blk (fun τ => F τ) P) (Formalism.MainNotions.product_first_zeroth_parts.blk (fun τ => F τ) P)).re ≤
        (∏ τ, c τ ^ 2) * (Formalism.REAL.fockF P P).re

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

def eX {k : ℕ} (l : DomWeight k) : ℝ := (Formalism.REAL.fockF (extremal ℂ k l) (extremal ℂ k l)).re

theorem eX_pos {k : ℕ} (l : DomWeight k) : 0 < eX l := by
  have h := (Formalism.GradedWeylDivisibility.fockPos _ _ (Formalism.L2.Ker.lm_extremal_ne (K := ℂ) l)).1
  rw [Formalism.L2.Ker.nm_fockF_self (extremal ℂ k l), Complex.ofReal_re] at h
  exact h

theorem normFock_re {k : ℕ} (l : DomWeight k) (f : MvPolynomial (Fin k × Fin k) ℂ) :
    (normFock l f f).re = (Formalism.REAL.fockF f f).re / eX l := by
  unfold normFock eX
  rw [Formalism.L2.Ker.nm_fockF_self (extremal ℂ k l), Complex.div_ofReal_re, Complex.ofReal_re]

def cF (D : D7) (u : D.what₂.Word) (τ : D.what₂.Tau) : ℝ :=
  (D.fm u).beOn τ * Real.sqrt (eX ((D.fm u).sg τ) / eX ((D.fm u).lam D.R.m τ))

theorem cF_sq (τ : D.what₂.Tau) :
    cF D u τ ^ 2 = (D.fm u).beOn τ ^ 2 * (eX ((D.fm u).sg τ) / eX ((D.fm u).lam D.R.m τ)) := by
  unfold cF
  rw [mul_pow, Real.sq_sqrt (div_nonneg (eX_pos _).le (eX_pos _).le)]

theorem factor_le (Tf : FormsTiedSym D u Ch chOf) (hB : Formalism.L2.Ker.BeOnTie D u) (τ : D.what₂.Tau)
    (f : MvPolynomial (Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) ℂ) (hf : f ∈ delSq ℂ _ ((D.fm u).lam D.R.m τ)) :
    (Formalism.REAL.fockF (Formalism.L2.Ker.brOne ℂ (Nm_succ D.R).symm (lamTr D u τ) (sgTr D u τ) f)
      (Formalism.L2.Ker.brOne ℂ (Nm_succ D.R).symm (lamTr D u τ) (sgTr D u τ) f)).re ≤ cF D u τ ^ 2 * (Formalism.REAL.fockF f f).re := by
  have hI := interlaceTr D u (sg_interlace Tf.valP) τ
  have hI' := (Formalism.L2.Ker.interlace_iff _ _ (Nm_succ D.R)).1 hI
  have hS := Formalism.L2.Ker.sameShiftTr D u τ hI
  have hf' : f ∈ nablaSq ℂ _ (lamTr D u τ) := by
    rw [Formalism.L2.Col.nablaSq_eq_delSq]; unfold lamTr; rw [delSq_wSh]; exact hf
  have h := Formalism.L2.Ker.nm_le _ _ _ hI' hS f hf'
  have hb : (D.fm u).beOn τ ^ 2 = ((Formalism.L2.Col.Br.cBr (Nm_succ D.R).symm (lamTr D u τ) (sgTr D u τ) : ℤ) : ℝ) ^ 2 *
      Formalism.L2.Col.Br.kapBr ℝ (Nm_succ D.R).symm (lamTr D u τ) (sgTr D u τ) := by
    rw [beOn_closedS Tf hB τ]
    unfold Formalism.L2.Ker.beOnVal
    rw [mul_pow, sq_abs, Real.sq_sqrt (Formalism.L2.Ker.nm_kapR_pos _ _ _ hI' hS).le]
  have eS : eX (sgTr D u τ) = eX ((D.fm u).sg τ) := by unfold eX sgTr; rw [extremal_wSh]
  have eL : eX (lamTr D u τ) = eX ((D.fm u).lam D.R.m τ) := by unfold eX lamTr; rw [extremal_wSh]
  rw [normFock_re, normFock_re, eS, eL, ← hb] at h
  have hs := eX_pos ((D.fm u).sg τ)
  have hl := eX_pos ((D.fm u).lam D.R.m τ)
  rw [div_le_iff₀ hs] at h
  rw [cF_sq]
  calc _ ≤ (D.fm u).beOn τ ^ 2 * ((Formalism.REAL.fockF f f).re / eX ((D.fm u).lam D.R.m τ)) * eX ((D.fm u).sg τ) := h
    _ = _ := by field_simp

theorem nfAll_brTen_le (hT : BlockFockBound) (Tf : FormsTiedSym D u Ch chOf) (hB : Formalism.L2.Ker.BeOnTie D u)
    (P : MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) ℂ) (hP : P ∈ Formalism.L2.Forms.CSpan ((D.fm u).lam D.R.m)) :
    (Formalism.L2.Forms.nfAll (D.fm u).sg (Formalism.L2.Ker.brTen D u P) (Formalism.L2.Ker.brTen D u P)).re ≤
      (∏ τ, (D.fm u).beOn τ ^ 2) * (Formalism.L2.Forms.nfAll ((D.fm u).lam D.R.m) P P).re := by
  have key := hT D.what₂.Tau (D.R.N D.R.m) (D.R.N D.R.m - 1) (fun τ => delSq ℂ _ ((D.fm u).lam D.R.m τ))
    (fun τ => Formalism.L2.Ker.brOne ℂ (Nm_succ D.R).symm (lamTr D u τ) (sgTr D u τ)) (cF D u)
    (fun τ f hf => factor_le Tf hB τ f hf) P hP
  have eprod : ∀ {k : ℕ} (l : D.what₂.Tau → DomWeight k),
      ∏ τ, Formalism.REAL.fockF (extremal ℂ k (l τ)) (extremal ℂ k (l τ)) = ((∏ τ, eX (l τ) : ℝ) : ℂ) := by
    intro k l
    rw [Complex.ofReal_prod]
    exact Finset.prod_congr rfl fun τ _ => Formalism.L2.Ker.nm_fockF_self _
  unfold Formalism.L2.Forms.nfAll
  rw [eprod, eprod, Complex.div_ofReal_re, Complex.div_ofReal_re]
  have hs : 0 < ∏ τ, eX ((D.fm u).sg τ) := Finset.prod_pos fun τ _ => eX_pos _
  have hl : 0 < ∏ τ, eX ((D.fm u).lam D.R.m τ) := Finset.prod_pos fun τ _ => eX_pos _
  have hc : ∏ τ, cF D u τ ^ 2 =
      (∏ τ, (D.fm u).beOn τ ^ 2) * ((∏ τ, eX ((D.fm u).sg τ)) / ∏ τ, eX ((D.fm u).lam D.R.m τ)) := by
    rw [← Finset.prod_div_distrib, ← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun τ _ => cF_sq τ
  rw [hc] at key
  rw [div_le_iff₀ hs]
  calc (Formalism.REAL.fockF (Formalism.L2.Ker.brTen D u P) (Formalism.L2.Ker.brTen D u P)).re
      ≤ (∏ τ, (D.fm u).beOn τ ^ 2) * ((∏ τ, eX ((D.fm u).sg τ)) / ∏ τ, eX ((D.fm u).lam D.R.m τ)) *
          (Formalism.REAL.fockF P P).re := key
    _ = _ := by field_simp

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllBrTenLe =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlkFockLe =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlkFockLe", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllBrTenLe\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP.FkPderivBlockEmbNe\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.InterlaceDifferenceShiftInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open MvPolynomial Matrix
open scoped ComplexOrder

section Fock

variable {σ : Type}

theorem tf_add_left (f f' g : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF (f + f') g = Formalism.REAL.fockF f g + Formalism.REAL.fockF f' g := by
  classical
  rw [_root_.Formalism.L2.Col.fockF_eq_sum (f + f') g (f.support ∪ f'.support) support_add,
    _root_.Formalism.L2.Col.fockF_eq_sum f g (f.support ∪ f'.support) Finset.subset_union_left,
    _root_.Formalism.L2.Col.fockF_eq_sum f' g (f.support ∪ f'.support) Finset.subset_union_right, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [MvPolynomial.coeff_add]
  ring

theorem tf_smul_left (c : ℂ) (f g : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF (c • f) g = c * Formalism.REAL.fockF f g := by
  rw [_root_.Formalism.L2.Col.fockF_eq_sum (c • f) g f.support support_smul, _root_.Formalism.L2.Col.fockF_eq_sum f g f.support le_rfl, Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  ring

theorem tf_add_right (f g g' : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF f (g + g') = Formalism.REAL.fockF f g + Formalism.REAL.fockF f g' := by
  unfold Formalism.REAL.fockF
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [MvPolynomial.coeff_add, star_add]
  ring

theorem tf_smul_right (c : ℂ) (f g : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF f (c • g) = star c * Formalism.REAL.fockF f g := by
  unfold Formalism.REAL.fockF
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [MvPolynomial.coeff_smul, smul_eq_mul, star_mul']
  ring

def tfB : MvPolynomial σ ℂ →ₗ[ℂ] MvPolynomial σ ℂ →ₗ⋆[ℂ] ℂ :=
  LinearMap.mk₂'ₛₗ (RingHom.id ℂ) (starRingEnd ℂ) Formalism.REAL.fockF tf_add_left tf_smul_left tf_add_right tf_smul_right

theorem tfB_apply (f g : MvPolynomial σ ℂ) : tfB f g = Formalism.REAL.fockF f g := rfl

theorem tf_eq_fockS (f g : MvPolynomial σ ℂ) : Formalism.REAL.fockF f g = Formalism.L2.DIV.fockS g f := by
  classical
  rw [_root_.Formalism.L2.Col.fockF_eq_sum f g (f.support ∪ g.support) Finset.subset_union_left,
    Formalism.L2.DIV.fockS_eq_sum g f (f.support ∪ g.support) Finset.subset_union_right]
  refine Finset.sum_congr rfl fun m _ => ?_
  unfold Formalism.L2.DIV.mfact
  ring

theorem tf_star (f g : MvPolynomial σ ℂ) : star (Formalism.REAL.fockF f g) = Formalism.REAL.fockF g f := by
  rw [tf_eq_fockS g f]
  unfold Formalism.REAL.fockF Formalism.L2.DIV.fockS
  rw [star_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  unfold Formalism.L2.DIV.mfact
  simp only [star_mul', star_star, star_natCast]

theorem tf_quad {k : ℕ} (w : Fin k → MvPolynomial σ ℂ) (x : Fin k → ℂ) :
    star x ⬝ᵥ (Matrix.of fun i j => Formalism.REAL.fockF (w j) (w i)) *ᵥ x =
      Formalism.REAL.fockF (∑ j, x j • w j) (∑ i, x i • w i) := by
  rw [← tfB_apply]

  simp only [map_sum, LinearMap.sum_apply, map_smul, LinearMap.smul_apply, map_smulₛₗ, tfB_apply, smul_eq_mul,
  dotProduct, mulVec, Matrix.of_apply, Pi.star_apply, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [starRingEnd_apply]
  ring

theorem tf_herm {σ' : Type} {k : ℕ} (w : Fin k → MvPolynomial σ ℂ) (v : Fin k → MvPolynomial σ' ℂ) (r : ℝ) :
    (((r : ℂ) • Matrix.of fun i j => Formalism.REAL.fockF (w j) (w i)) - Matrix.of fun i j => Formalism.REAL.fockF (v j) (v i)).IsHermitian := by
  ext i j
  simp only [conjTranspose_apply, Matrix.sub_apply, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul, star_sub, star_mul',
    tf_star]
  rw [Complex.star_def, Complex.conj_ofReal]

theorem tf_gram_psd {k : ℕ} (w : Fin k → MvPolynomial σ ℂ) :
    (Matrix.of fun i j => Formalism.REAL.fockF (w j) (w i)).PosSemidef := by
  rw [posSemidef_iff_dotProduct_mulVec]
  refine ⟨?_, fun x => ?_⟩
  · ext i j; simp only [conjTranspose_apply, Matrix.of_apply, tf_star]
  · rw [tf_quad, Formalism.L2.Ker.nm_fockF_self]
    exact Complex.zero_le_real.2 (Formalism.L2.Ker.nm_fockF_nonneg _)

end Fock

section Had

variable {ι : Type} [Fintype ι] {k : ℕ}

theorem tf_ones_psd : (Matrix.of fun (_ _ : Fin k) => (1 : ℂ)).PosSemidef := by
  rw [posSemidef_iff_dotProduct_mulVec]
  refine ⟨?_, fun x => ?_⟩
  · ext i j; simp
  · have : star x ⬝ᵥ (Matrix.of fun (_ _ : Fin k) => (1 : ℂ)) *ᵥ x = star (∑ i, x i) * ∑ i, x i := by
      simp only [dotProduct, mulVec, Matrix.of_apply, one_mul, star_sum, Finset.sum_mul, Pi.star_apply]
    rw [this]
    exact star_mul_self_nonneg _

theorem tf_had_sub (A B : ι → Matrix (Fin k) (Fin k) ℂ) (hB : ∀ τ, (B τ).PosSemidef) (hAB : ∀ τ, (A τ - B τ).PosSemidef) :
    ((Matrix.of fun i j => ∏ τ, A τ i j) - Matrix.of fun i j => ∏ τ, B τ i j).PosSemidef := by
  classical
  have hA : ∀ τ, (A τ).PosSemidef := fun τ => by simpa using (hAB τ).add (hB τ)
  suffices h : ∀ s : Finset ι, ((Matrix.of fun i j => ∏ τ ∈ s, A τ i j) - Matrix.of fun i j => ∏ τ ∈ s, B τ i j).PosSemidef ∧
      (Matrix.of fun i j => ∏ τ ∈ s, A τ i j).PosSemidef from (h Finset.univ).1
  intro s
  induction s using Finset.induction_on with
  | empty =>
    simp only [Finset.prod_empty, sub_self]
    exact ⟨PosSemidef.zero, tf_ones_psd⟩
  | insert t s ht ih =>
    have eA : (Matrix.of fun i j => ∏ τ ∈ insert t s, A τ i j) = A t ⊙ Matrix.of fun i j => ∏ τ ∈ s, A τ i j := by
      ext i j; simp [Finset.prod_insert ht, hadamard]
    have eB : (Matrix.of fun i j => ∏ τ ∈ insert t s, B τ i j) = B t ⊙ Matrix.of fun i j => ∏ τ ∈ s, B τ i j := by
      ext i j; simp [Finset.prod_insert ht, hadamard]
    have e : A t ⊙ (Matrix.of fun i j => ∏ τ ∈ s, A τ i j) - B t ⊙ (Matrix.of fun i j => ∏ τ ∈ s, B τ i j) =
        (A t - B t) ⊙ (Matrix.of fun i j => ∏ τ ∈ s, A τ i j) +
          B t ⊙ ((Matrix.of fun i j => ∏ τ ∈ s, A τ i j) - Matrix.of fun i j => ∏ τ ∈ s, B τ i j) := by
      ext i j; simp [hadamard]; ring
    refine ⟨?_, ?_⟩
    · rw [eA, eB, e]
      exact ((hAB t).hadamard ih.2).add ((hB t).hadamard ih.1)
    · rw [eA]; exact (hA t).hadamard ih.2

end Had

theorem tf_ten {ι : Type} [Fintype ι] {n : ℕ} (f g : ι → MvPolynomial (Fin n × Fin n) ℂ) :
    Formalism.REAL.fockF (Formalism.MainNotions.product_first_zeroth_parts.ten f) (Formalism.MainNotions.product_first_zeroth_parts.ten g) = ∏ τ, Formalism.REAL.fockF (f τ) (g τ) := by
  rw [tf_eq_fockS]
  have h := Formalism.L2.DIV.fockSymTensor_holds ℂ ι n g f
  refine (h.trans ?_)
  exact Finset.prod_congr rfl fun τ _ => (tf_eq_fockS _ _).symm

theorem blkFockLe : BlockFockBound := by
  intro ι _ n n' V F c hF P hP
  classical
  obtain ⟨k, a, p, hsum⟩ := Submodule.mem_span_set'.1 hP
  choose f hfV hfeq using fun i => (p i).2
  have hs : ∀ (r : ℂ) (M : Matrix (Fin k) (Fin k) ℂ) (v : Fin k → ℂ), (r • M) *ᵥ v = r • (M *ᵥ v) := by
    intro r M v; ext i
    simp only [mulVec, dotProduct, Matrix.smul_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    exact Finset.sum_congr rfl fun j _ => by ring
  have hd : ∀ (r : ℂ) (v w : Fin k → ℂ), v ⬝ᵥ (r • w) = r * (v ⬝ᵥ w) := by
    intro r v w
    simp only [dotProduct, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    exact Finset.sum_congr rfl fun j _ => by ring
  have hP' : P = ∑ i, a i • Formalism.MainNotions.product_first_zeroth_parts.ten (f i) := by
    rw [← hsum]; exact Finset.sum_congr rfl fun i _ => by rw [hfeq i]
  have hblk : Formalism.MainNotions.product_first_zeroth_parts.blk (fun τ => F τ) P = ∑ i, a i • Formalism.MainNotions.product_first_zeroth_parts.ten (fun τ => F τ (f i τ)) := by

    rw [hP', map_sum]
    exact Finset.sum_congr rfl fun i _ => by rw [map_smul, Formalism.MainNotions.product_first_zeroth_parts.blk_ten]
  set G : ι → Matrix (Fin k) (Fin k) ℂ := fun τ => Matrix.of fun i j => Formalism.REAL.fockF (f j τ) (f i τ) with hG
  set H : ι → Matrix (Fin k) (Fin k) ℂ := fun τ => Matrix.of fun i j => Formalism.REAL.fockF (F τ (f j τ)) (F τ (f i τ)) with hH
  have qP : Formalism.REAL.fockF P P = star a ⬝ᵥ (Matrix.of fun i j => ∏ τ, G τ i j) *ᵥ a := by
    have := tf_quad (fun i => Formalism.MainNotions.product_first_zeroth_parts.ten (f i)) a
    simp only [tf_ten] at this
    rw [hP', ← this]
    rfl
  have qB : Formalism.REAL.fockF (Formalism.MainNotions.product_first_zeroth_parts.blk (fun τ => F τ) P) (Formalism.MainNotions.product_first_zeroth_parts.blk (fun τ => F τ) P) =
      star a ⬝ᵥ (Matrix.of fun i j => ∏ τ, H τ i j) *ᵥ a := by
    have := tf_quad (fun i => Formalism.MainNotions.product_first_zeroth_parts.ten (fun τ => F τ (f i τ))) a
    simp only [tf_ten] at this
    rw [hblk, ← this]
    rfl
  have hBpsd : ∀ τ, (H τ).PosSemidef := fun τ => tf_gram_psd (fun i => F τ (f i τ))
  have hABpsd : ∀ τ, ((((c τ ^ 2 : ℝ) : ℂ) • G τ) - H τ).PosSemidef := by
    intro τ
    rw [posSemidef_iff_dotProduct_mulVec]
    refine ⟨tf_herm (fun i => f i τ) (fun i => F τ (f i τ)) (c τ ^ 2), fun x => ?_⟩
    rw [sub_mulVec, dotProduct_sub, hs, hd, tf_quad, tf_quad]
    have hlin : ∑ i, x i • F τ (f i τ) = F τ (∑ i, x i • f i τ) := by rw [map_sum]; simp [map_smul]
    have hmem : ∑ i, x i • f i τ ∈ V τ := Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (hfV i τ)
    rw [hlin, Formalism.L2.Ker.nm_fockF_self (∑ i, x i • f i τ), Formalism.L2.Ker.nm_fockF_self (F τ (∑ i, x i • f i τ)),
      ← Complex.ofReal_mul, ← Complex.ofReal_sub]
    exact Complex.zero_le_real.2 (sub_nonneg.2 (hF τ _ hmem))
  have key := (tf_had_sub (fun τ => ((c τ ^ 2 : ℝ) : ℂ) • G τ) H hBpsd hABpsd).dotProduct_mulVec_nonneg a
  have eA : (Matrix.of fun i j => ∏ τ, (((c τ ^ 2 : ℝ) : ℂ) • G τ) i j) =
      (((∏ τ, c τ ^ 2 : ℝ) : ℂ)) • Matrix.of fun i j => ∏ τ, G τ i j := by
    ext i j
    simp only [Matrix.of_apply, Matrix.smul_apply, smul_eq_mul, Finset.prod_mul_distrib, Complex.ofReal_prod]
  rw [eA, sub_mulVec, dotProduct_sub, hs, hd, ← qP, ← qB,
    Formalism.L2.Ker.nm_fockF_self P, Formalism.L2.Ker.nm_fockF_self (Formalism.MainNotions.product_first_zeroth_parts.blk (fun τ => F τ) P), ← Complex.ofReal_mul,
    ← Complex.ofReal_sub, Complex.zero_le_real] at key
  exact sub_nonneg.1 key

theorem nfAll_brTen_le' {D : Formalism.BasicNotions.D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}
    (Tf : Formalism.L2.Forms.FormsTiedSym D u Ch chOf) (hB : Formalism.L2.Ker.BeOnTie D u)
    (P : MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) ℂ) (hP : P ∈ Formalism.L2.Forms.CSpan ((D.fm u).lam D.R.m)) :
    (Formalism.L2.Forms.nfAll (D.fm u).sg (Formalism.L2.Ker.brTen D u P) (Formalism.L2.Ker.brTen D u P)).re ≤
      (∏ τ, (D.fm u).beOn τ ^ 2) * (Formalism.L2.Forms.nfAll ((D.fm u).lam D.R.m) P P).re :=
  nfAll_brTen_le blkFockLe Tf hB P hP

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlkFockLe =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormalFormAgree =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormalFormAgree", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NfAllSmulReB\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlkFockLe\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.BrOneGFull\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapMemCSpanOfRat\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormOneOfPow\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.RestrictionSymmetric\nimport Formalism.LocalToGlobal.HermitianForms.Interlace\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.InterlaceDifferenceShiftInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open MvPolynomial Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Matrix

section Gen

theorem norm_detPow_sq {n : ℕ} (g : GL (Fin n) ℂ) (e : ℤ) :
    ‖detPow ℂ n g e‖ ^ 2 = ‖(g : Matrix (Fin n) (Fin n) ℂ).det‖ ^ (2 * e) := by
  unfold detPow
  rw [Units.val_zpow_eq_zpow_val, Matrix.GeneralLinearGroup.val_det_apply, norm_zpow, ← zpow_natCast, ← _root_.zpow_mul,
    mul_comm e]
  norm_num

theorem desc_scalar {K σ : Type} [Field K] (j : K →+* ℂ) (Q F : MvPolynomial σ K) (χ : ℂ) (k : ℕ) (hk : 0 < k)
    (hχ : χ ^ k = 1) (h : map j Q = χ⁻¹ • map j F) : ∃ a : K, Q = a • F ∧ ∀ s : K →+* ℂ, ‖s a‖ ≤ 1 := by
  have hinj : Function.Injective (map (σ := σ) j) := MvPolynomial.map_injective _ j.injective
  by_cases hF : F = 0
  · refine ⟨0, ?_, fun s => by simp⟩
    apply hinj
    rw [h, hF]
    simp
  · obtain ⟨m, hm⟩ : ∃ m, F.coeff m ≠ 0 := by
      by_contra hc
      push Not at hc
      exact hF (MvPolynomial.ext _ _ fun m => by simp [hc m])
    have hc : j (Q.coeff m) = χ⁻¹ * j (F.coeff m) := by
      have := congrArg (AddMonoidAlgebra.coeff · m) h
      rwa [coeff_map, MvPolynomial.coeff_smul, coeff_map, smul_eq_mul] at this
    have hjm : j (F.coeff m) ≠ 0 := (map_ne_zero j).2 hm
    have ha : j (Q.coeff m / F.coeff m) = χ⁻¹ := by
      rw [map_div₀, hc, mul_div_assoc, div_self hjm, mul_one]
    refine ⟨Q.coeff m / F.coeff m, ?_, fun s => ?_⟩
    · apply hinj
      rw [h, MvPolynomial.smul_eq_C_mul, MvPolynomial.smul_eq_C_mul F (Q.coeff m / F.coeff m), map_mul, map_C, ha]
    · have := norm_one_of_pow j s _ k hk (by rw [ha, inv_pow, hχ, inv_one])
      rw [this]

end Gen

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

theorem normal_form_agree {ι : Type} [Fintype ι] {n : ℕ} (lam : ι → DomWeight n) (p : MvPolynomial (ι × Fin n × Fin n) ℂ) :
    Formalism.MainNotions.product_first_zeroth_parts.nfAll lam p p = Formalism.L2.Forms.nfAll lam p p := rfl

theorem norm_sqrtT_sq (d : ℤ) : ‖(((sqrtT D u) ^ d : ℂˣ) : ℂ)‖ ^ 2 = ((D.mem u).A.T : ℝ) ^ d := by
  have hT : (0 : ℝ) ≤ ((D.mem u).A.T : ℝ) := Nat.cast_nonneg _
  rw [Units.val_zpow_eq_zpow_val, norm_zpow]
  have h1 : ‖((sqrtT D u : ℂˣ) : ℂ)‖ = Real.sqrt ((D.mem u).A.T : ℝ) := by
    simp only [sqrtT, Units.val_mk0, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (Real.sqrt_nonneg _)]
  rw [h1, ← zpow_natCast, ← _root_.zpow_mul, mul_comm d, _root_.zpow_mul, zpow_natCast, Real.sq_sqrt hT]

theorem chain_at (Tf : FormsTiedSym D u Ch chOf) (hBe : Formalism.L2.Ker.BeOnTie D u)
    (o' : D.what₂.Tau → Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m - 1)) ℂ) (ho' : ∀ τ, IsUnit (o' τ).det)
    (Y : MvPolynomial (D.what₂.Tau × Fin (D.R.N D.R.m) × Fin (D.R.N D.R.m)) ℂ)
    (hY : Y ∈ Formalism.L2.Forms.CSpan ((D.fm u).lam D.R.m)) :
    (∏ τ, ‖(o' τ).det‖ ^ (2 * shiftOf (sgT u) τ)) *
        (Formalism.L2.Forms.nfAll (D.fm u).sg (subP o' (Formalism.L2.Ker.brTen D u Y)) (subP o' (Formalism.L2.Ker.brTen D u Y))).re ≤
      ptB D u * ((∏ τ, ‖(dOT u (o' τ)).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ)) *
        (Formalism.L2.Forms.nfAll ((D.fm u).lam D.R.m) (blkRow (fun τ => dOT u (o' τ)) Y)
          (blkRow (fun τ => dOT u (o' τ)) Y)).re) := by
  classical
  have hT : ∀ τ, IsUnit ((o' τ)ᵀ).det := fun τ => by rw [Matrix.det_transpose]; exact ho' τ
  let g : D.what₂.Tau → GL (Fin (D.R.N D.R.m - 1)) ℂ := fun τ =>
    ⟨(o' τ)ᵀ, ((o' τ)ᵀ)⁻¹, Matrix.mul_nonsing_inv _ (hT τ), Matrix.nonsing_inv_mul _ (hT τ)⟩
  have hg : ∀ τ, ((g τ : GL _ ℂ) : Matrix _ _ ℂ) = (o' τ)ᵀ := fun τ => rfl
  have hL1 : blk (fun τ => sqAct ℂ _ (lamTr D u τ) (gFull D u (g τ))) Y =
      (∏ τ, detPow ℂ _ (gFull D u (g τ)) (lamTr D u τ).detShift) • blkRow (fun τ => dOT u (o' τ)) Y := by
    rw [blk_sqAct_eq]
    have e : (fun τ => ((gFull D u (g τ) : GL _ ℂ) : Matrix _ _ ℂ)ᵀ) = fun τ => dOT u (o' τ) :=
      funext fun τ => transpose_gFull_eq_dOT_of_eq_transpose (o' τ) (g τ) (hg τ)
    rw [e]
  have hR1 : blk (fun τ => sqAct ℂ _ (sgTr D u τ) (g τ)) (Formalism.L2.Ker.brTen D u Y) =
      (∏ τ, detPow ℂ _ (g τ) (sgTr D u τ).detShift) • subP o' (Formalism.L2.Ker.brTen D u Y) := by
    rw [blk_sqAct_eq]
    have e : (fun τ => ((g τ : GL _ ℂ) : Matrix _ _ ℂ)ᵀ) = o' := funext fun τ => by rw [hg, Matrix.transpose_transpose]
    rw [e]
    rfl
  have key := brTen_blk_gFull Tf g Y
  rw [hL1, hR1, map_smul, smul_smul] at key
  have hn := congrArg (fun p => (Formalism.L2.Forms.nfAll (D.fm u).sg p p).re) key
  simp only [nfAll_smul_reB, normal_form_agree] at hn
  have hdO : ∀ τ, IsUnit (dOT u (o' τ)).det := fun τ => by
    rw [det_dOT]
    exact (ho' τ).mul (Units.isUnit _)
  have hZ := blkRow_mem_CSpan ((D.fm u).lam D.R.m) (fun τ => dOT u (o' τ)) hdO Y hY
  have hle := nfAll_brTen_le' Tf hBe _ hZ

  have hshL : ∀ τ, (lamTr D u τ).detShift = shiftOf (lamT u D.R.m) τ := fun τ => by rw [shift_lamTr]
  have hshS : ∀ τ, (sgTr D u τ).detShift = shiftOf (sgT u) τ := fun τ => by
    have hI0 := interlaceTr D u (sg_interlace Tf.valP) τ
    have hS : (sgTr D u τ).detShift = (lamTr D u τ).detShift := Formalism.L2.Ker.sameShiftTr D u τ hI0
    rw [hS, hshL, shift_lamT_sgTS Tf τ]
  have hk1 : ‖∏ τ, detPow ℂ _ (gFull D u (g τ)) (lamTr D u τ).detShift‖ ^ 2 =
      ∏ τ, ‖(dOT u (o' τ)).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ) := by
    rw [norm_prod, ← Finset.prod_pow]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [norm_detPow_sq, hshL, ← transpose_gFull_eq_dOT_of_eq_transpose (o' τ) (g τ) (hg τ), Matrix.det_transpose]
  have hk2 : ‖∏ τ, detPow ℂ _ (g τ) (sgTr D u τ).detShift‖ ^ 2 = ∏ τ, ‖(o' τ).det‖ ^ (2 * shiftOf (sgT u) τ) := by
    rw [norm_prod, ← Finset.prod_pow]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [norm_detPow_sq, hshS, hg, Matrix.det_transpose]
  have hcT : ‖∏ τ, (((sqrtT D u) ^ ((D.fm u).deg τ) : ℂˣ) : ℂ)‖ ^ 2 = ∏ τ, ((D.mem u).A.T : ℝ) ^ ((D.fm u).deg τ) := by
    rw [norm_prod, ← Finset.prod_pow]
    exact Finset.prod_congr rfl fun τ _ => norm_sqrtT_sq _
  have hTpos : (0 : ℝ) < ((D.mem u).A.T : ℝ) := by exact_mod_cast (D.mem u).A.T_prime.pos
  have hcpos : 0 < ∏ τ, ((D.mem u).A.T : ℝ) ^ ((D.fm u).deg τ) := Finset.prod_pos fun τ _ => zpow_pos hTpos _
  have hptB : ptB D u * ∏ τ, ((D.mem u).A.T : ℝ) ^ ((D.fm u).deg τ) = ∏ τ, (D.fm u).beOn τ ^ 2 := by
    unfold ptB
    rw [← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [_root_.zpow_neg]
    field_simp
  rw [norm_mul, mul_pow, hk1, hk2, hcT] at hn
  set nW := (Formalism.L2.Forms.nfAll (D.fm u).sg (subP o' (Formalism.L2.Ker.brTen D u Y)) (subP o' (Formalism.L2.Ker.brTen D u Y))).re
  set nBZ := (Formalism.L2.Forms.nfAll (D.fm u).sg (Formalism.L2.Ker.brTen D u (blkRow (fun τ => dOT u (o' τ)) Y))
    (Formalism.L2.Ker.brTen D u (blkRow (fun τ => dOT u (o' τ)) Y))).re
  set nZ := (Formalism.L2.Forms.nfAll ((D.fm u).lam D.R.m) (blkRow (fun τ => dOT u (o' τ)) Y) (blkRow (fun τ => dOT u (o' τ)) Y)).re
  set K1 := ∏ τ, ‖(dOT u (o' τ)).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ)
  set K2 := ∏ τ, ‖(o' τ).det‖ ^ (2 * shiftOf (sgT u) τ)
  set CT := ∏ τ, ((D.mem u).A.T : ℝ) ^ ((D.fm u).deg τ)
  set B := ∏ τ, (D.fm u).beOn τ ^ 2
  have hK1 : 0 ≤ K1 := Finset.prod_nonneg fun τ _ => zpow_nonneg (norm_nonneg _) _
  calc K2 * nW = (CT * K2 * nW) / CT := by field_simp
    _ = K1 * nBZ / CT := by rw [← hn]
    _ ≤ K1 * (B * nZ) / CT := div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hle hK1) hcpos.le
    _ = ptB D u * (K1 * nZ) := by rw [← hptB]; field_simp

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormalFormAgree =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfTorsionCharacter =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfTorsionCharacter", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitALMap\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClassesFrames\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.BlockActEqBlkRow\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitBZMap\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.MapMemCSpanOfRat\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClasses\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormalFormAgree\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.InterlaceDifferenceShiftInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open MvPolynomial Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Matrix NumberField
open scoped ComplexOrder



theorem normClsAt_of_tors (hT : ChiTors) : NormClsAt := by
  intro D u Ch chOf Tf hL hBe h s x Pc hPc Qc hQc o ho o' ho' c
  classical
  have hbase := base_eq Tf hL h x Pc hPc Qc hQc c
  obtain ⟨k, hk, hχ⟩ := hT D u Ch chOf Tf c
  obtain ⟨a, ha, has⟩ := desc_scalar D.what₂.embLL (Qc c) (brTenL D u (PL Tf c (Pc ((D.fm u).til c)))) _ k hk hχ hbase
  have hAsu : ∀ τ, IsUnit ((AL Tf c τ).map s).det := fun τ => isUnit_AL_map Tf c s τ
  have hR : MvPolynomial.map s (Pc ((D.fm u).til c)) ∈ Formalism.L2.Forms.CSpan ((D.fm u).lam D.R.m) :=
    map_mem_CSpan_of_rat _ _ (pc_rat Tf x Pc hPc _) s
  have hY := blkRow_mem_CSpan _ (fun τ => (AL Tf c τ).map s) hAsu _ hR
  have hQs : MvPolynomial.map s (Qc c) = (s a * ∏ τ, ((AL Tf c τ).map s).det ^ shiftOf (lamT u D.R.m) τ) •
      Formalism.L2.Ker.brTen D u (blkRow (fun τ => (AL Tf c τ).map s) (MvPolynomial.map s (Pc ((D.fm u).til c)))) := by
    rw [ha, MvPolynomial.smul_eq_C_mul, map_mul, map_C, map_brTenL, map_PL, map_smul, ← MvPolynomial.smul_eq_C_mul,
      smul_smul]
  have hoN : ∀ τ, (o.1 τ)ᴴ * gramC (gramN D D.R.m le_rfl) (embS D s) τ * o.1 τ = 1 := fun τ =>
    Formalism.L2.Col.frame_pos o ho τ (gramN_posDef_at Tf (embS D s τ)).posSemidef
  have hoP : ∀ τ, (o'.1 τ)ᴴ * gramC (gramP D) (embS D s) τ * o'.1 τ = 1 := fun τ =>
    Formalism.L2.Col.frame_pos o' ho' τ (gramP_posDef_at Tf (embS D s τ)).posSemidef
  have hon : ∀ τ, ((AL Tf c τ).map s * dOT u (o'.1 τ))ᴴ * gramC (gramN D D.R.m le_rfl) (embS D s) τ *
      ((AL Tf c τ).map s * dOT u (o'.1 τ)) = 1 := by
    intro τ
    rw [AL_map, Matrix.map_mul]
    exact frame_on_at Tf c (embS D s τ) (o'.1 τ) (hoP τ)
  have hind := term_frame_indep ((D.fm u).lam D.R.m) (gramC (gramN D D.R.m le_rfl) (embS D s)) (shiftOf (lamT u D.R.m)) o.1
    (fun τ => (AL Tf c τ).map s * dOT u (o'.1 τ)) hoN hon (MvPolynomial.map s (Pc ((D.fm u).til c)))
  have hchain := chain_at Tf hBe o'.1 o'.2 _ hY
  have hcomp : blkRow (fun τ => dOT u (o'.1 τ)) (blkRow (fun τ => (AL Tf c τ).map s) (MvPolynomial.map s (Pc ((D.fm u).til c)))) =
      subP (fun τ => (AL Tf c τ).map s * dOT u (o'.1 τ)) (MvPolynomial.map s (Pc ((D.fm u).til c))) := blkRow_comp _ _ _
  rw [hcomp] at hchain
  rw [hQs, map_smul, nfAll_smul_reB, normal_form_agree, hind]
  have hdet : ∏ τ, ‖((AL Tf c τ).map s * dOT u (o'.1 τ)).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ) =
      (∏ τ, ‖((AL Tf c τ).map s).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ)) *
        ∏ τ, ‖(dOT u (o'.1 τ)).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ) := by
    rw [← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [Matrix.det_mul, norm_mul, mul_zpow]
  have hκ : ‖s a * ∏ τ, ((AL Tf c τ).map s).det ^ shiftOf (lamT u D.R.m) τ‖ ^ 2 =
      ‖s a‖ ^ 2 * ∏ τ, ‖((AL Tf c τ).map s).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ) := by
    rw [norm_mul, mul_pow, norm_prod, ← Finset.prod_pow]
    congr 1
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [norm_zpow, ← zpow_natCast, ← _root_.zpow_mul, mul_comm (shiftOf (lamT u D.R.m) τ)]
    norm_num
  rw [hdet, hκ]
  have hsa : ‖s a‖ ^ 2 ≤ 1 := by
    have h1 := has s
    have h0 := norm_nonneg (s a)
    nlinarith
  set nW := (Formalism.L2.Forms.nfAll (D.fm u).sg (subP o'.1 (Formalism.L2.Ker.brTen D u (blkRow (fun τ => (AL Tf c τ).map s)
    (MvPolynomial.map s (Pc ((D.fm u).til c)))))) (subP o'.1 (Formalism.L2.Ker.brTen D u (blkRow (fun τ => (AL Tf c τ).map s)
    (MvPolynomial.map s (Pc ((D.fm u).til c))))))).re with hnW
  set K2 := ∏ τ, ‖(o'.1 τ).det‖ ^ (2 * shiftOf (sgT u) τ)
  set KA := ∏ τ, ‖((AL Tf c τ).map s).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ)
  have hKA : 0 ≤ KA := Finset.prod_nonneg fun τ _ => zpow_nonneg (norm_nonneg _) _
  have hK2 : 0 ≤ K2 := Finset.prod_nonneg fun τ _ => zpow_nonneg (norm_nonneg _) _
  have hnW : 0 ≤ nW := Formalism.L2.Ker.ta_nfAll_nonneg _ _
  calc K2 * (‖s a‖ ^ 2 * KA * nW) = ‖s a‖ ^ 2 * (KA * (K2 * nW)) := by ring
    _ ≤ 1 * (KA * (ptB D u * ((∏ τ, ‖(dOT u (o'.1 τ)).det‖ ^ (2 * shiftOf (lamT u D.R.m) τ)) *
          (Formalism.L2.Forms.nfAll ((D.fm u).lam D.R.m) (subP (fun τ => (AL Tf c τ).map s * dOT u (o'.1 τ)) (MvPolynomial.map s (Pc ((D.fm u).til c))))
            (subP (fun τ => (AL Tf c τ).map s * dOT u (o'.1 τ)) (MvPolynomial.map s (Pc ((D.fm u).til c))))).re))) :=
        mul_le_mul hsa (mul_le_mul_of_nonneg_left hchain hKA) (mul_nonneg hKA (mul_nonneg hK2 hnW)) zero_le_one
    _ = _ := by ring

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfTorsionCharacter =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfInjectiveStable =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfInjectiveStable", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.IsUnitALMap\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClassesFrames\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfClasses\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfTorsionCharacter\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.GlintPrincRelIndexNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms

theorem chiTors : ChiTors := by
  intro D u Ch chOf Tf c
  classical
  let P : ℂ → Prop := fun z => ∃ k : ℕ, 0 < k ∧ z ^ k = 1
  have h1 : P 1 := ⟨1, one_pos, one_pow _⟩
  have hmul : ∀ x y, P x → P y → P (x * y) := by
    rintro x y ⟨k, hk, hx⟩ ⟨l, hl, hy⟩
    refine ⟨k * l, Nat.mul_pos hk hl, ?_⟩
    rw [mul_pow, pow_mul, hx, one_pow, one_mul, mul_comm k l, pow_mul, hy, one_pow]
  have hfac : ∀ a v h, P (((Tf.lamM a v h ((Tf.glevM).red a v h (Tf.tilAd.ka c)) : ℂˣ) : ℂ))⁻¹ := by
    intro a v h
    haveI : Finite (Formalism.L2.Forms.kv D.host.F v) := Formalism.UG.P.glint_finite_residueField v
    refine ⟨orderOf ((Tf.glevM).red a v h (Tf.tilAd.ka c)), orderOf_pos _, ?_⟩
    rw [inv_pow, ← Units.val_pow_eq_pow_val, ← map_pow, pow_orderOf_eq_one, map_one, Units.val_one, inv_one]
  show P _
  rw [(Tf.glevM).chi_eq]
  refine Finset.prod_induction _ P hmul h1 fun a _ => ?_
  refine finprod_induction P h1 hmul fun v => ?_
  exact finprod_induction P h1 hmul fun h => hfac a v h

theorem normClsAt_holds : NormClsAt := normClsAt_of_tors chiTors

theorem norm_bound_of_injective_stable (h1 : ClassMapInjective) (h2 : StabiliserMapBijective) : NormBoundAtInfinity :=
  norm_bound_of_classes h1 h2 normClsAt_holds

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfInjectiveStable =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassMapEstimateOfPartial\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundOfInjectiveStable\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.SymmetricClausesOfFormsNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.GlobalTheoryTheory.Br

theorem norm_bound_holds : NormBoundAtInfinity := norm_bound_of_injective_stable class_injective_holds stabiliser_bijective_holds

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundHolds =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.SymmetricLevelClausesHold =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.SymmetricLevelClausesHold", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassMapEstimateOfPartial\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.FormsExtendHolds\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.NormBoundHolds\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.SymmetricClausesOfFormsNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.GlobalTheoryTheory.Br

theorem symmetric_level_clauses_hold : ClassMapPropertiesOfSymmetricForms := symmetric_clauses_of_four class_injective_holds stabiliser_bijective_holds forms_extend_holds norm_bound_holds

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.SymmetricLevelClausesHold =====

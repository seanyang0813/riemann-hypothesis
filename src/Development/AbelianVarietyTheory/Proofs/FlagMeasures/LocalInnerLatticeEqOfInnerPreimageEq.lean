module

public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalOrthogonalProjCommComplementUnitary
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NumberFieldLatticeDeterminedByLocalLattices
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ScalarFramePfA
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open scoped Classical ENNReal
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.HidaSetting Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.NGData Formalism.L2.SG.TermLoc GlobalTheory.Unfold

noncomputable section

namespace GlobalTheory.Unfold.InnerLoc

variable {D : D7}

def phiG {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) : (VS D).V →ₗ[D.host.E] (Fin D.R.rS → D.host.E) :=
  LinearMap.pi fun a => (VS D).hT (G.fl.e a)

theorem phiG_apply {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (x : (VS D).V) (a : Fin D.R.rS) :
    phiG G x a = (VS D).hT (G.fl.e a) x := rfl

theorem mem_orth_of_phiG {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (x : (VS D).V) (h : phiG G x = 0) :
    x ∈ orth (VS D) (Xsp G) := by
  simp only [orth, Submodule.mem_iInf, LinearMap.mem_ker]
  intro u hu
  have hle : Xsp G ≤ LinearMap.ker ((VS D).hT.flip x) := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨a, rfl⟩
    have := congrFun h a
    simpa [phiG_apply] using this
  have := hle hu
  simpa using this

theorem exists_split {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Λ : LV D)
    (hΛ : Submodule.IsLattice D.host.E Λ) :
    ∃ (m : ℕ) (l : Fin m → (VS D).V) (c : Fin m → Fin D.R.rS → D.host.E),
      (∀ i, l i ∈ Λ) ∧
      (∀ y ∈ Λ, ∀ i, ∃ o : 𝓞 D.host.E, (o : D.host.E) = ∑ k, c i k * phiG G y k) ∧
      (∀ y ∈ Λ, phiG G (∑ i, (∑ k, c i k * phiG G y k) • l i) = phiG G y) := by
  set Q : Submodule (𝓞 D.host.E) (Fin D.R.rS → D.host.E) :=
    Λ.map ((phiG G).restrictScalars (𝓞 D.host.E)) with hQ
  have hQl : Submodule.IsLattice D.host.E Q :=
    Submodule.IsLattice.of_fg D.host.E (hΛ.fg.map _)
  obtain ⟨m, g, ψ, hψ⟩ := GlobalTheory.HL.PlacesRec.exists_dual_basis Q hQl
  let W := Submodule.span D.host.E (Q : Set (Fin D.R.rS → D.host.E))
  let f : Q →ₗ[𝓞 D.host.E] W := Q.subtype.codRestrict (W.restrictScalars (𝓞 D.host.E))
    (fun x => Submodule.subset_span x.2)
  haveI : IsLocalizedModule (nonZeroDivisors (𝓞 D.host.E)) f := by
    refine ⟨?_, ?_, ?_⟩
    · intro a
      have := isLocalizedModule_id (nonZeroDivisors (𝓞 D.host.E)) W D.host.E
      exact IsLocalizedModule.map_units (S := nonZeroDivisors (𝓞 D.host.E)) (LinearMap.id : W →ₗ[𝓞 D.host.E] W) a
    · intro y
      obtain ⟨t, ht⟩ := multiple_mem_span_of_mem_localization_span
        (nonZeroDivisors (𝓞 D.host.E)) D.host.E (Q : Set (Fin D.R.rS → D.host.E)) y.1 y.2
      rw [Submodule.span_eq] at ht
      exact ⟨(⟨_, ht⟩, t), Subtype.ext rfl⟩
    · intro x y hxy
      refine ⟨1, ?_⟩
      have he : (x : Fin D.R.rS → D.host.E) = y := congrArg (fun z : W => (z : Fin D.R.rS → D.host.E)) hxy
      simpa using Subtype.ext he
  have hu : ∀ a : nonZeroDivisors (𝓞 D.host.E),
      IsUnit (algebraMap (𝓞 D.host.E) (Module.End (𝓞 D.host.E) D.host.E) a) :=
    fun a => IsLocalizedModule.map_units (S := nonZeroDivisors (𝓞 D.host.E))
      (Algebra.linearMap (𝓞 D.host.E) D.host.E) a
  have hcoeff : ∀ i, ∃ c : Fin D.R.rS → D.host.E, ∀ y : Q,
      ∑ k, c k * (y : Fin D.R.rS → D.host.E) k = (ψ i y : D.host.E) := by
    intro i
    let φ : W →ₗ[D.host.E] D.host.E :=
      (IsLocalizedModule.lift (nonZeroDivisors (𝓞 D.host.E)) f
        (Algebra.linearMap (𝓞 D.host.E) D.host.E ∘ₗ ψ i) hu).extendScalarsOfIsLocalization
          (nonZeroDivisors (𝓞 D.host.E)) D.host.E
    obtain ⟨F, hF⟩ := LinearMap.exists_extend φ
    refine ⟨fun k => F (Pi.single k 1), fun y => ?_⟩
    have hs := LinearMap.pi_apply_eq_sum_univ F (y : Fin D.R.rS → D.host.E)
    simp only [smul_eq_mul] at hs
    have hp (k : Fin D.R.rS) : Pi.single k (1 : D.host.E) = (fun j => if k = j then (1 : D.host.E) else 0) := by
      funext j
      simp [Pi.single_apply, eq_comm]
    simp only [hp, mul_comm]
    rw [← hs]
    have he := LinearMap.congr_fun hF (f y)
    change F (y : Fin D.R.rS → D.host.E) = φ (f y) at he
    rw [he]
    exact IsLocalizedModule.lift_apply (nonZeroDivisors (𝓞 D.host.E)) f _ hu y
  choose c hc using hcoeff
  have hlift : ∀ i, ∃ l ∈ Λ, phiG G l = (g i : Fin D.R.rS → D.host.E) := by
    intro i
    obtain ⟨l, hl, he⟩ := Submodule.mem_map.1 (g i).2
    exact ⟨l, hl, he⟩
  choose l hl hle using hlift
  refine ⟨m, l, c, hl, fun y hy i => ?_, fun y hy => ?_⟩
  · have hyQ : phiG G y ∈ Q := Submodule.mem_map_of_mem hy
    exact ⟨ψ i ⟨_, hyQ⟩, (hc i ⟨_, hyQ⟩).symm⟩
  · have hyQ : phiG G y ∈ Q := Submodule.mem_map_of_mem hy
    have h1 := congrArg Subtype.val (hψ ⟨_, hyQ⟩)
    simp only [Submodule.coe_sum, Submodule.coe_smul] at h1

    rw [map_sum]
    conv_rhs => rw [h1]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_smul, hle i, hc i ⟨_, hyQ⟩, algebraMap_smul]

section Loc

variable (Z : LocDat D) (p : PlF D)

theorem hP_smul_right (u : (D.s.atP p).Ep) (v w : Vp D p) :
    (locH Z p).h v (u • w) = (Z.M p).L.cj u * (locH Z p).h v w := by
  rw [(locH Z p).h_herm (u • w) v, (locH Z p).h_smul_left, map_mul, ← (locH Z p).h_herm w v]

theorem hP_add_right (v w w' : Vp D p) :
    (locH Z p).h v (w + w') = (locH Z p).h v w + (locH Z p).h v w' := by
  rw [(locH Z p).h_herm (w + w') v, (locH Z p).h_add_left, map_add (f := _), ← (locH Z p).h_herm w v,
    ← (locH Z p).h_herm w' v]

theorem hP_zero_right (v : Vp D p) : (locH Z p).h v 0 = 0 := by
  rw [(locH Z p).h_herm 0 v, (locH Z p).h_zero_left, map_zero]

theorem frame_castSucc {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (k : Fin D.R.rS) :
    frame G k.castSucc = G.fl.e k := by
  simp [frame, FlagG.fvec]

def sigP {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) {m : ℕ} (l : Fin m → (VS D).V)
    (c : Fin m → Fin D.R.rS → D.host.E) : Vp D p →ₗ[(D.s.atP p).Ep] Vp D p :=
  ∑ i, (∑ k, (D.s.atP p).ιE (c i k) • GlobalTheory.FrameProj.hR Z p (baseChange₂ D p (G.fl.e k))).smulRight (baseChange₂ D p (l i))

theorem sigP_apply {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) {m : ℕ} (l : Fin m → (VS D).V)
    (c : Fin m → Fin D.R.rS → D.host.E) (z : Vp D p) :
    sigP Z p G l c z = ∑ i, (∑ k, (D.s.atP p).ιE (c i k) * (locH Z p).h z (baseChange₂ D p (G.fl.e k))) • baseChange₂ D p (l i) := by
  simp [sigP, GlobalTheory.FrameProj.hR]

theorem sigP_bcP {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) {m : ℕ} (l : Fin m → (VS D).V)
    (c : Fin m → Fin D.R.rS → D.host.E) (x : (VS D).V) :
    sigP Z p G l c (baseChange₂ D p x) = baseChange₂ D p (∑ i, (∑ k, c i k * phiG G x k) • l i) := by
  rw [sigP_apply, Formalism.L2.SG.Pf.ScalarFramePf.baseChangeAt_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  congr 1

  rw [map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_mul]
  congr 1
  exact baseChangeAt_form Z.M p (Z.hcj p) x (G.fl.e k)

theorem sub_sigP_mem {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Λ : LV D) {m : ℕ} (l : Fin m → (VS D).V)
    (c : Fin m → Fin D.R.rS → D.host.E) (hl : ∀ i, l i ∈ Λ)
    (hint : ∀ y ∈ Λ, ∀ i, ∃ o : 𝓞 D.host.E, (o : D.host.E) = ∑ k, c i k * phiG G y k)
    (hphi : ∀ y ∈ Λ, phiG G (∑ i, (∑ k, c i k * phiG G y k) • l i) = phiG G y) :
    ∀ z ∈ lattice₂ D Z.M p Λ, z - sigP Z p G l c z ∈ lattice₂ D Z.M p (Lrep Λ G) := by
  intro z hz
  have hle : lattice₂ D Z.M p Λ ≤ (lattice₂ D Z.M p (Lrep Λ G)).comap
      ((LinearMap.id - sigP Z p G l c).restrictScalars (Z.M p).L.O) := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨y, hy, rfl⟩
    show baseChange₂ D p y - sigP Z p G l c (baseChange₂ D p y) ∈ lattice₂ D Z.M p (Lrep Λ G)
    rw [sigP_bcP, ← map_sub]
    refine Submodule.subset_span ⟨_, Submodule.mem_inf.2 ⟨?_, ?_⟩, rfl⟩
    · refine Λ.sub_mem hy (Λ.sum_mem fun i _ => ?_)
      obtain ⟨o, ho⟩ := hint y hy i
      rw [← ho, algebraMap_smul]
      exact Λ.smul_mem o (hl i)
    · show _ ∈ orth (VS D) (Xsp G)
      apply mem_orth_of_phiG
      rw [map_sub, hphi y hy, sub_self]
  exact hle hz

theorem sigP_perp {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) {m : ℕ} (l : Fin m → (VS D).V)
    (c : Fin m → Fin D.R.rS → D.host.E) (Fr : LocNG.FrameD (locH Z p) D.R.rS)
    (hf : Fr.f = fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) (z : Vp D p)
    (hz : z ∈ (locH Z p).perp ((locH Z p).X Fr.f)) : sigP Z p G l c z = 0 := by
  have hz' : ∀ x ∈ (locH Z p).X Fr.f, (locH Z p).h z x = 0 := hz
  have h0 : ∀ k, (locH Z p).h z (baseChange₂ D p (G.fl.e k)) = 0 := by
    intro k
    have h1 := hz' _ (Submodule.subset_span ⟨k, rfl⟩ : Fr.f k.castSucc ∈ (locH Z p).X Fr.f)
    rw [hf] at h1
    simp only at h1
    rw [frame_castSucc, hP_smul_right] at h1
    exact ((Formalism.L2.SG.Pf.ScalarFramePf.isUnit_frFac Z p k.castSucc).map (Z.M p).L.cj).mul_right_eq_zero.1 h1
  rw [sigP_apply]
  simp [h0]

theorem mem_localLattice_lrep {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Λ : LV D)
    (hΛ : Submodule.IsLattice D.host.E Λ) (Fr : LocNG.FrameD (locH Z p) D.R.rS)
    (hf : Fr.f = fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) (z : Vp D p) (hzΛ : z ∈ lattice₂ D Z.M p Λ)
    (hz : z ∈ (locH Z p).perp ((locH Z p).X Fr.f)) : z ∈ lattice₂ D Z.M p (Lrep Λ G) := by
  obtain ⟨m, l, c, hl, hint, hphi⟩ := exists_split G Λ hΛ
  have h := sub_sigP_mem Z p G Λ l c hl hint hphi z hzΛ
  rwa [sigP_perp Z p G l c Fr hf z hz, sub_zero] at h

theorem bcP_mem_X {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Fr : LocNG.FrameD (locH Z p) D.R.rS)
    (hf : Fr.f = fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) (u : (VS D).V) (hu : u ∈ Xsp G) :
    baseChange₂ D p u ∈ (locH Z p).X Fr.f := by
  induction hu using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, rfl⟩ := hx
    obtain ⟨w, hw⟩ := Formalism.L2.SG.Pf.ScalarFramePf.isUnit_frFac Z p a.castSucc
    have e : baseChange₂ D p (G.fl.e a) = w⁻¹ • Fr.f a.castSucc := by
      rw [hf]
      simp only
      rw [frame_castSucc, ← hw, ← Units.smul_def, inv_smul_smul]
    rw [e, Units.smul_def]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul c x _ hx => rw [baseChange_smul₂]; exact Submodule.smul_mem _ _ hx

theorem X_le_perp (Fr : LocNG.FrameD (locH Z p) D.R.rS) :
    (locH Z p).X Fr.f ≤ (locH Z p).perp ((locH Z p).X Fr.f) := by
  refine Submodule.span_le.2 ?_
  rintro _ ⟨a, rfl⟩
  change ∀ x ∈ (locH Z p).X Fr.f, (locH Z p).h (Fr.f a.castSucc) x = 0
  intro x hx
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨b, rfl⟩ := hy
    exact Fr.h_iso _ _ (Or.inl (Fin.castSucc_lt_last a).ne)
  | zero => exact hP_zero_right Z p _
  | add y y' _ _ h1 h2 => rw [hP_add_right, h1, h2, add_zero]
  | smul c y _ h1 => rw [hP_smul_right, h1, mul_zero]

theorem lrep_le_lsub {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Λ : LV D) : Lrep Λ G ≤ Lsub Λ G := by
  unfold Lsub Lrep
  exact le_inf le_sup_left inf_le_right

theorem lset_eq_lsub {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T) (Fr : LocNG.FrameD (locH Z p) D.R.rS)
    (hf : Fr.f = fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) (Λ : LV D)
    (hΛ : Submodule.IsLattice D.host.E Λ) :
    (locH Z p).Lset (lattice₂ D Z.M p Λ) Fr.f = (locH Z p).Lset (lattice₂ D Z.M p (Lsub Λ G)) Fr.f := by
  ext w
  constructor
  · rintro ⟨x, hx, rfl⟩
    exact ⟨x, GlobalTheory.FrameProj.localLattice_mono Z p (lrep_le_lsub G Λ) (mem_localLattice_lrep Z p G Λ hΛ Fr hf x hx x.2), rfl⟩
  · rintro ⟨x, hx, rfl⟩
    have h1 : (x : Vp D p) ∈ lattice₂ D Z.M p (Lrep Λ G) ⊔ lattice₂ D Z.M p (toO (VS D) (Xsp G)) := by
      rw [← GlobalTheory.FrameProj.localLattice_sup]
      exact GlobalTheory.FrameProj.localLattice_mono Z p (by unfold Lsub; exact inf_le_left) hx
    obtain ⟨y, hy, t, ht, hyt⟩ := Submodule.mem_sup.1 h1
    have htX : t ∈ (locH Z p).X Fr.f := by
      have hle : lattice₂ D Z.M p (toO (VS D) (Xsp G)) ≤ ((locH Z p).X Fr.f).restrictScalars (Z.M p).L.O := by
        refine Submodule.span_le.2 ?_
        rintro _ ⟨u, hu, rfl⟩
        exact bcP_mem_X Z p G Fr hf u hu
      exact hle ht
    have hyx : y = (x : Vp D p) - t := by rw [← hyt]; abel
    have hyperp : y ∈ (locH Z p).perp ((locH Z p).X Fr.f) := by
      rw [hyx]
      exact Submodule.sub_mem _ x.2 (X_le_perp Z p Fr htX)
    refine ⟨⟨y, hyperp⟩, GlobalTheory.FrameProj.localLattice_mono Z p (by unfold Lrep; exact inf_le_left) hy, ?_⟩
    unfold Loc.HermSp.mkW
    rw [Submodule.mkQ_apply, Submodule.mkQ_apply, Submodule.Quotient.eq, Submodule.mem_comap]
    have e : (((⟨y, hyperp⟩ : ↥((locH Z p).perp ((locH Z p).X Fr.f))) - x :
        ↥((locH Z p).perp ((locH Z p).X Fr.f))) : Vp D p) = -t := by
      rw [Submodule.coe_sub]
      show y - (x : Vp D p) = -t
      rw [hyx]; abel
    rw [Submodule.subtype_apply, e]
    exact Submodule.neg_mem _ htX

end Loc

theorem lset_eq_of_lsub_eq : ∀ (D : D7) (Z : LocDat D) (p : PlF D) {T : D.host.E} (G : LFlag (D.sp.Y 0) D.R.rS T)
    (Fr : LocNG.FrameD (locH Z p) D.R.rS), Fr.f = (fun a => frFac Z.δ p a • baseChange₂ D p (frame G a)) →
    ∀ Λ₁ Λ₂ : LV D, Submodule.IsLattice D.host.E Λ₁ → Submodule.IsLattice D.host.E Λ₂ → Lsub Λ₁ G = Lsub Λ₂ G →
      (locH Z p).Lset (lattice₂ D Z.M p Λ₁) Fr.f = (locH Z p).Lset (lattice₂ D Z.M p Λ₂) Fr.f := by
  intro D Z p T G Fr hf Λ₁ Λ₂ h₁ h₂ he
  rw [lset_eq_lsub Z p G Fr hf Λ₁ h₁, lset_eq_lsub Z p G Fr hf Λ₂ h₂, he]

end GlobalTheory.Unfold.InnerLoc

end

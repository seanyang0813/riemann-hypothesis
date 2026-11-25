module

public import Formalism.SharpRestriction.CuspSpanNormBounds.StandingHypothesesHoldFamily
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.NormalizingConstantEq
public import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeCountE
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TheoremSRecursion
public import Formalism.SharpRestriction.CuspSpanNormBounds.PExtra
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.ExplicitFormulaBoundHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WuDecayAll
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RegroupPfAll
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SatGram
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.LevelSubgroupProperties
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.BunExists
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.NatSmulMulEq
public import Formalism.SharpRestriction.CuspSpanNormBounds.LatticeGluingRadicals
import Formalism.SharpRestriction.CuspSpanNormBounds.NonemptyParameterModels.UnitaryPointsRankZeroSubsingleton
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

open scoped Classical InnerProductSpace ComplexConjugate
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting
  Formalism.L2.SG.TermOp Formalism.L2.SG.PackageTie2

set_option linter.dupNamespace false

namespace Formalism.L2.SG.ThmSOwn

section Record

variable (D : D7) (large₂ : SizeData₂ D)

def ClKppOff : Prop := ∀ u u' : D.what₂.Word, u ≠ u' → AdmissibleBoundsFromSource.Kpp D u u' = 0

def ClKppDiag : Prop := ∀ u, hsNormSq (AdmissibleBoundsFromSource.Kpp D u u) ≤ AdmissibleBoundsFromSource.du D u * AdmissibleBoundsFromSource.xK D

def ClOff : Prop :=
  ∀ u u' : D.what₂.Word, u ≠ u' →
    hsNormSq (Kmat D.s u u' - AdmissibleBoundsFromSource.Kpp D u u') ≤ (1 + AdmissibleBoundsFromSource.eta0 D large₂) * AdmissibleBoundsFromSource.du D u * AdmissibleBoundsFromSource.du D u' / AdmissibleBoundsFromSource.Dst D

def ClDiag : Prop :=
  ∀ u, hsNormSq (Kmat D.s u u - AdmissibleBoundsFromSource.Kpp D u u - ContinuousLinearMap.id ℂ (D.s.Cu u)) ≤
    AdmissibleBoundsFromSource.Gam D * AdmissibleBoundsFromSource.du D u ^ 2 / AdmissibleBoundsFromSource.Dst D

end Record

section Family

variable {eps : ℝ}

def HypOwn (Fm : FamP eps) (C0 : ℝ) (Q : ∀ D : D7, SizeData₂ D → Prop) : Prop :=
  OwnEv Fm fun C' Cl x i =>
    AdmissibleBoundsFromSource.hyp (Fm.D x i) (Fm.L x i) C0 C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu → Q (Fm.D x i) (Fm.L x i)

theorem thmSOwn_of_clauses {Fm : FamP eps} {C0 : ℝ}
    (h1 : HypOwn Fm C0 fun D _ => ClKppOff D) (h2 : HypOwn Fm C0 fun D _ => ClKppDiag D)
    (h3 : HypOwn Fm C0 fun D L => ClOff D L) (h4 : HypOwn Fm C0 fun D _ => ClDiag D) :
    ThmSOwn Fm (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0 :=
  ((h1.and h2).and (h3.and h4)).mono fun _ _ _ _ h hH => ⟨(h.1.1 hH), (h.1.2 hH), (h.2.1 hH), (h.2.2 hH)⟩

end Family

section Closed

def caZero : AdmissibleBoundsFromSource.AdmC where
  A5 := 0
  cL := 0
  cN := 0
  CN := 0
  CE := 0
  CA := 0
  CA' := 0
  Ce := 0
  n7 := 0
  A7 := 0
  C7 := 0
  cb7 := 0
  c7 := 0
  ep0 := 0
  CV := 0
  C1 := 0
  C2 := 0
  c5 := 0

end Closed

section Iso
variable {R : Ranks} {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {sig : E →ₐ[F] E} {Word Tau : Type} {hc : Word → Tau → HCParam R}
  {s s' : Formalism.MainNotions.S.Draft.SData R F E sig Word Tau hc}

def conjE (I : SIso s s') (u u' : Word) : (s.Cu u' →L[ℂ] s.Cu u) ≃L[ℂ] (s'.Cu u' →L[ℂ] s'.Cu u) :=
  ContinuousLinearEquiv.arrowCongr (I.eCu u').toContinuousLinearEquiv (I.eCu u).toContinuousLinearEquiv

theorem conjE_apply (I : SIso s s') (u u' : Word) (A : s.Cu u' →L[ℂ] s.Cu u) (x : s.Cu u') :
    conjE I u u' A (I.eCu u' x) = I.eCu u (A x) := by
  simp [conjE]

theorem conjE_aTerm (I : SIso s s') (u u' : Word) (t : s.Term u u') :
    conjE I u u' (s.aTerm u u' t) = s'.aTerm u u' (I.eT u u' t) := by
  ext y
  obtain ⟨x, rfl⟩ := (I.eCu u').surjective y
  rw [conjE_apply, I.aTerm_eq]

theorem conjE_KOf (I : SIso s s') (u u' : Word) (Φ : Set (s.Term u u')) (Φ' : Set (s'.Term u u'))
    (hΦ : ∀ t, t ∈ Φ ↔ I.eT u u' t ∈ Φ') : conjE I u u' (KOf s u u' Φ) = KOf s' u u' Φ' := by
  unfold KOf
  rw [ContinuousLinearEquiv.map_tsum]
  simp only [conjE_aTerm]
  exact Equiv.tsum_eq ((I.eT u u').subtypeEquiv hΦ) (fun t' : Φ' => s'.aTerm u u' t'.1)

theorem conjE_Kmat [Fintype Tau] (I : SIso s s') (u u' : Word) : conjE I u u' (Kmat s u u') = Kmat s' u u' := by
  ext y
  obtain ⟨x, rfl⟩ := (I.eCu u').surjective y
  rw [conjE_apply, Formalism.L2.SG.Pf.kmat_iso s s' I u u' x]

theorem conjE_id (I : SIso s s') (u : Word) :
    conjE I u u (ContinuousLinearMap.id ℂ (s.Cu u)) = ContinuousLinearMap.id ℂ (s'.Cu u) := by
  ext y
  obtain ⟨x, rfl⟩ := (I.eCu u).surjective y
  rw [conjE_apply]; rfl

theorem hsNormSq_conjE (I : SIso s s') (u u' : Word) (A : s.Cu u' →L[ℂ] s.Cu u) :
    hsNormSq (conjE I u u' A) = hsNormSq A := by
  have := FiniteDimensional.complete ℂ (s'.Cu u)
  exact Formalism.L2.SG.Pf.hsNormSq_of_iso A (conjE I u u' A) (I.eCu u') (I.eCu u) (fun y => (I.eCu u).norm_map y)
    (conjE_apply I u u' A)

end Iso

section SOf

open Formalism.L2.SG.Full

variable {D : D7} {X : HidaSetting D} {Y : Full X} (hF : FinX Y) {u u' : D.what₂.Word}

abbrev aM (Y : Full X) (u u' : D.what₂.Word) (s : TT Y u u') : CM (Y.cs u') →L[ℂ] CM (Y.cs u) :=
  aTerm (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') s

include hF in
theorem summable_ind_aM (hA : (Y.tO u u').AbsConv) (S : Set (TT Y u u')) :
    Summable (S.indicator (aM Y u u')) := by
  refine Summable.of_norm_bounded (hA.1.mul_left (Module.finrank ℂ (CM (Y.cs u')) : ℝ)) fun s => ?_
  by_cases h : s ∈ S
  · rw [Set.indicator_of_mem h]; exact Formalism.L2.SG.Pf.opNorm_le_hs _
  · rw [Set.indicator_of_notMem h, norm_zero]; positivity

theorem kof_sOf (hA : (Y.tO u u').AbsConv) (S : Set (TT Y u u')) (Φ' : Set (RT Y u u'))
    (hS : ∀ s : TT Y u u', s ∈ S ↔ s.toTerm ∈ Φ') :
    KOf (sOf hF) u u' Φ' = tr (hF.shBij u) (hF.shBij u') (∑' s, S.indicator (aM Y u u') s) := by
  let f : TT Y u u' → (ColT (hF.shInj u') →L[ℂ] ColT (hF.shInj u)) := S.indicator (aT hF u u')
  have hfe : ∀ s, f s = Formalism.L2.SG.Pf.trAdd (hF.shBij u) (hF.shBij u') (S.indicator (aM Y u u') s) := fun s => by
    by_cases h : s ∈ S
    · simp only [f, Set.indicator_of_mem h]; rfl
    · simp only [f, Set.indicator_of_notMem h]; exact (map_zero (Formalism.L2.SG.Pf.trAdd (hF.shBij u) (hF.shBij u'))).symm
  have hsum : HasSum f (tr (hF.shBij u) (hF.shBij u') (∑' s, S.indicator (aM Y u u') s)) := by
    have := (summable_ind_aM hF hA S).hasSum.map (Formalism.L2.SG.Pf.trAdd (hF.shBij u) (hF.shBij u'))
      (Formalism.L2.SG.Pf.continuous_trAdd _ _)
    convert this using 1
    · exact funext hfe
    · rfl
  let e := Equiv.sigmaFiberEquiv (fun s : TT Y u u' => s.toTerm)
  have h2 := (e.hasSum_iff (f := f)).2 hsum
  have h3 : HasSum (fun t : RT Y u u' => Φ'.indicator (aR hF u u') t)
      (tr (hF.shBij u) (hF.shBij u') (∑' s, S.indicator (aM Y u u') s)) := by
    refine h2.sigma fun t => ?_
    letI : Fintype {x : TT Y u u' // x.toTerm = t} := hF.fibFT t
    by_cases ht : t ∈ Φ'
    · rw [Set.indicator_of_mem ht]
      have hc : ∀ c : {x : TT Y u u' // x.toTerm = t}, (f ∘ e) ⟨t, c⟩ = aT hF u u' c.1 := fun c => by
        have hm : c.1 ∈ S := (hS c.1).2 (by rw [c.2]; exact ht)
        simp only [Function.comp, e, Equiv.sigmaFiberEquiv_apply, f, Set.indicator_of_mem hm]
      simp only [hc]
      unfold aR
      exact hasSum_fintype _
    · rw [Set.indicator_of_notMem ht]
      have hc : ∀ c : {x : TT Y u u' // x.toTerm = t}, (f ∘ e) ⟨t, c⟩ = 0 := fun c => by
        have hm : c.1 ∉ S := fun h => ht (by have h' := (hS c.1).1 h; rwa [c.2] at h')
        simp only [Function.comp, e, Equiv.sigmaFiberEquiv_apply, f, Set.indicator_of_notMem hm]
      simp only [hc]
      exact hasSum_zero
  unfold KOf
  exact (tsum_subtype Φ' (aR hF u u')).trans h3.tsum_eq


include hF in
theorem hsEmb_tsum (hA : (Y.tO u u').AbsConv) (S : Set (TT Y u u')) :
    Formalism.L2.SG.PackageTie.hsEmb (∑' s, S.indicator (aM Y u u') s) = (Y.tO u u').part S := by
  have hc : Continuous (Formalism.L2.SG.PackageTie.hsEmb (Wq := CM (Y.cs u')) (Wp := CM (Y.cs u))) :=
    LinearMap.continuous_of_finiteDimensional _
  have h := (summable_ind_aM hF hA S).hasSum.map
    (Formalism.L2.SG.PackageTie.hsEmb (Wq := CM (Y.cs u')) (Wp := CM (Y.cs u))).toAddMonoidHom hc
  have h' : HasSum (fun s => S.indicator (Y.tO u u').op s)
      (Formalism.L2.SG.PackageTie.hsEmb (∑' s, S.indicator (aM Y u u') s)) := by
    convert h using 1
    funext s
    by_cases hs : s ∈ S
    · simp only [Function.comp, Set.indicator_of_mem hs]; rfl
    · simp only [Function.comp, Set.indicator_of_notMem hs, map_zero]
    · rfl
  exact h'.tsum_eq.symm


include hF in
theorem hsNormSq_tr [FiniteDimensional ℂ (ColT (hF.shInj u'))] (A : CM (Y.cs u') →L[ℂ] CM (Y.cs u)) :
    hsNormSq (tr (hF.shBij u) (hF.shBij u') A) = ‖Formalism.L2.SG.PackageTie.hsEmb A‖ ^ 2 := by
  have := finiteDimensional_colT (hF.shBij u)
  have := FiniteDimensional.complete ℂ (ColT (hF.shInj u))
  rw [Formalism.L2.SG.PackageTie.norm_hsEmb_sq]
  exact (Formalism.L2.SG.Pf.hsNormSq_of_semi (tr (hF.shBij u) (hF.shBij u') A) A (Formalism.L2.SG.Pf.shTAdd (hF.shInj u'))
    (fun c x => shT_smul _ c x) (fun x y => (inner_colT _ y x).symm) (hF.shBij u').2
    (shT (hF.shInj u)) Formalism.L2.SG.Pf.norm_shT (fun x => (shT_tr _ _ A x).symm)).symm

include hF in
theorem tr_id (u : D.what₂.Word) :
    tr (hF.shBij u) (hF.shBij u) (ContinuousLinearMap.id ℂ (CM (Y.cs u))) = ContinuousLinearMap.id ℂ _ := by
  ext1 T
  rw [tr_apply, ContinuousLinearMap.id_apply, shInv_shT]; rfl

include hF in
theorem tr_sub (A B : CM (Y.cs u') →L[ℂ] CM (Y.cs u)) :
    tr (hF.shBij u) (hF.shBij u') (A - B) = tr (hF.shBij u) (hF.shBij u') A - tr (hF.shBij u) (hF.shBij u') B :=
  map_sub (Formalism.L2.SG.Pf.trAdd (hF.shBij u) (hF.shBij u')) A B

end SOf

section Clauses

open Formalism.L2.SG.Full

variable {D : D7} {X : HidaSetting D} {Y : Full X} {hF : FinX Y} (hI : SIso D.s (sOf hF))

def PhiC (u u' : D.what₂.Word) : Set (RT Y u u') := {t | (sOf hF).Gterm t = 0 ∧ ¬ (sOf hF).isId t}

theorem mem_degSet_iff {u u' : D.what₂.Word} (s : TT Y u u') :
    s ∈ (Y.tO u u').degSet ↔ s.toTerm ∈ PhiC (hF := hF) u u' := by
  have e : ((sOf hF).Gterm s.toTerm = 0) ↔ s.toTerm.G = 0 := by
    constructor
    · intro h; exact congrArg Subtype.val h
    · intro h; exact Subtype.ext h
  have hG : (Y.tO u u').G s = 0 ↔ s.toTerm.G = 0 := by
    show (if s.toTerm.G = 0 then (0 : ℝ) else 1) = 0 ↔ _
    split_ifs with h <;> simp [h]
  show ((Y.tO u u').G s = 0 ∧ ¬ (Y.tO u u').isId s) ↔
    ((sOf hF).Gterm s.toTerm = 0 ∧ ¬ (sOf hF).isId s.toTerm)
  exact and_congr (hG.trans e.symm) Iff.rfl

theorem mem_PhiC_iff {u u' : D.what₂.Word} (t : D.s.Term u u') :
    t ∈ {t : D.s.Term u u' | D.s.Gterm t = 0 ∧ ¬ D.s.isId t} ↔ hI.eT u u' t ∈ PhiC (hF := hF) u u' := by
  show (D.s.Gterm t = 0 ∧ ¬ D.s.isId t) ↔
    ((sOf hF).Gterm (hI.eT u u' t) = 0 ∧ ¬ (sOf hF).isId (hI.eT u u' t))
  rw [hI.Gterm t, hI.isId t]

theorem conjE_Kpp {u u' : D.what₂.Word} (hA : (Y.tO u u').AbsConv) :
    conjE hI u u' (AdmissibleBoundsFromSource.Kpp D u u') =
      tr (hF.shBij u) (hF.shBij u') (∑' s, (Y.tO u u').degSet.indicator (aM Y u u') s) := by
  rw [show AdmissibleBoundsFromSource.Kpp D u u' = KOf D.s u u' {t | D.s.Gterm t = 0 ∧ ¬ D.s.isId t} from rfl,
    conjE_KOf hI u u' _ (PhiC (hF := hF) u u') (mem_PhiC_iff hI), kof_sOf hF hA _ _ mem_degSet_iff]


include hI in
theorem hsNormSq_Kpp {u u' : D.what₂.Word} (hA : (Y.tO u u').AbsConv) :
    hsNormSq (AdmissibleBoundsFromSource.Kpp D u u') = ‖(Y.tO u u').part (Y.tO u u').degSet‖ ^ 2 := by
  have := finiteDimensional_colT (hF.shBij u')
  calc hsNormSq (AdmissibleBoundsFromSource.Kpp D u u') = hsNormSq (conjE hI u u' (AdmissibleBoundsFromSource.Kpp D u u')) := (hsNormSq_conjE hI u u' _).symm
    _ = hsNormSq (tr (hF.shBij u) (hF.shBij u') (∑' s, (Y.tO u u').degSet.indicator (aM Y u u') s)) :=
      congrArg hsNormSq (conjE_Kpp hI hA)
    _ = _ := (hsNormSq_tr hF _).trans (congrArg (fun z => ‖z‖ ^ 2) (hsEmb_tsum hF hA _))

theorem hsEmb_eq_zero {Wq Wp : Type} [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]
    [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] (A : Wq →L[ℂ] Wp) (h : Formalism.L2.SG.PackageTie.hsEmb A = 0) : A = 0 := by
  have hb : ∀ i, A (stdOrthonormalBasis ℂ Wq i) = 0 := fun i => by
    have := congrArg (fun v => (WithLp.ofLp v) i) h
    simpa [Formalism.L2.SG.PackageTie.hsEmb] using this
  apply ContinuousLinearMap.coe_injective
  exact (stdOrthonormalBasis ℂ Wq).toBasis.ext (f₁ := (A : Wq →ₗ[ℂ] Wp)) (f₂ := 0) (fun i => by
    rw [OrthonormalBasis.coe_toBasis]; exact hb i)


include hI in
theorem kpp_zero {u u' : D.what₂.Word} (hZ : Formalism.L2.SG.RowsOther.KppTermZero (Y.tO u u')) : AdmissibleBoundsFromSource.Kpp D u u' = 0 := by
  have h0 : ∀ t ∈ PhiC (hF := hF) u u', aR hF u u' t = 0 := by
    intro t ht
    letI := hF.fibFT t
    unfold aR
    refine Finset.sum_eq_zero fun c _ => ?_
    have hm : c.1 ∈ (Y.tO u u').degSet := (mem_degSet_iff c.1).2 (c.2 ▸ ht)
    have ha : aM Y u u' c.1 = 0 := hsEmb_eq_zero _ (hZ c.1 hm)
    unfold aT
    rw [show aTerm (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') c.1 = aM Y u u' c.1 from rfl, ha]
    exact map_zero (Formalism.L2.SG.Pf.trAdd (hF.shBij u) (hF.shBij u'))
  have hK : KOf (sOf hF) u u' (PhiC (hF := hF) u u') = 0 := by
    unfold KOf
    exact (tsum_congr (fun t : PhiC (hF := hF) u u' => (h0 t.1 t.2 : (sOf hF).aTerm u u' t.1 = 0))).trans tsum_zero
  have h1 := conjE_KOf hI u u' _ (PhiC (hF := hF) u u') (mem_PhiC_iff hI)
  rw [hK] at h1
  exact (conjE hI u u').map_eq_zero_iff.1 h1

end Clauses

section Clauses2

open Formalism.L2.SG.Full

variable {D : D7} {X : HidaSetting D} {Y : Full X} {hF : FinX Y} (hI : SIso D.s (sOf hF))


include hI in
theorem hsNormSq_off {u u' : D.what₂.Word}
    (hE : Formalism.L2.SG.TermOp.KExpansion (X.Fu u) (X.Fu u') (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') Y.hK (Y.Dt u) (Y.Dt u'))
    (hA : (Y.tO u u').AbsConv) (hId : (Y.tO u u').IdDegenerate) (hZ : Formalism.L2.SG.RowsOther.KppTermZero (Y.tO u u')) :
    hsNormSq (Kmat D.s u u' - AdmissibleBoundsFromSource.Kpp D u u') = ‖(Y.tO u u').K0‖ ^ 2 := by
  rw [kpp_zero hI hZ, sub_zero, Formalism.L2.SG.Pf.isoNorm D.s (sOf hF) hI u u',
    Formalism.L2.SG.Pf.normTie hF u u' (Formalism.L2.SG.Pf.dimTie X u) (Formalism.L2.SG.Pf.dimTie X u') hE hA hId
      (Formalism.L2.SG.RowsOther.kppOff_of_termZero _ hZ)]


include hI in
theorem hsNormSq_diag {u : D.what₂.Word}
    (hE : Formalism.L2.SG.TermOp.KExpansion (X.Fu u) (X.Fu u) (Y.cs u) (Y.cs u) (Y.FN u) (Y.FN u) Y.hK (Y.Dt u) (Y.Dt u))
    (hA : (Y.tO u u).AbsConv) (hId : (Y.tO u u).IdDegenerate) :
    hsNormSq (Kmat D.s u u - AdmissibleBoundsFromSource.Kpp D u u - ContinuousLinearMap.id ℂ (D.s.Cu u)) =
      ‖(Y.tO u u).K0 - Formalism.L2.SG.RowsConc.oneC X Y u‖ ^ 2 := by
  obtain ⟨K, hsum, hK⟩ := hE
  have hKm := Formalism.L2.SG.Pf.kmat_eq hF (Formalism.L2.SG.Pf.dimTie X u) (Formalism.L2.SG.Pf.dimTie X u) K hK
  have := finiteDimensional_colT (hF.shBij u)
  have hs : ∀ S : Set (TT Y u u), Summable (S.indicator (Y.tO u u).op) := fun S =>
    Summable.of_norm_bounded hA.1 fun t => by
      by_cases h : t ∈ S
      · rw [Set.indicator_of_mem h]
      · rw [Set.indicator_of_notMem h, norm_zero]; exact norm_nonneg _
  have hKK : (Y.tO u u).K = Formalism.L2.SG.PackageTie.hsEmb K :=
    (hsum.map (Formalism.L2.SG.PackageTie.hsEmb (Wq := CM (Y.cs u)) (Wp := CM (Y.cs u)))
      (LinearMap.continuous_of_finiteDimensional _)).tsum_eq
  set P := ∑' s, (Y.tO u u).degSet.indicator (aM Y u u) s with hPdef
  have hconj : conjE hI u u (Kmat D.s u u - AdmissibleBoundsFromSource.Kpp D u u - ContinuousLinearMap.id ℂ (D.s.Cu u)) =
      tr (hF.shBij u) (hF.shBij u) (K - P - ContinuousLinearMap.id ℂ (CM (Y.cs u))) := by
    rw [map_sub, map_sub, conjE_Kmat, conjE_Kpp hI hA, conjE_id, hKm]
    exact (show tr (hF.shBij u) (hF.shBij u) (K - P - ContinuousLinearMap.id ℂ (CM (Y.cs u))) =
      tr (hF.shBij u) (hF.shBij u) K - tr (hF.shBij u) (hF.shBij u) P - ContinuousLinearMap.id ℂ _ by
        rw [tr_sub hF, tr_sub hF, tr_id hF u]).symm
  have hP : Formalism.L2.SG.PackageTie.hsEmb P = (Y.tO u u).part (Y.tO u u).degSet := hsEmb_tsum hF hA _
  have hemb : Formalism.L2.SG.PackageTie.hsEmb (K - P - ContinuousLinearMap.id ℂ (CM (Y.cs u))) =
      (Y.tO u u).K0 - Formalism.L2.SG.RowsConc.oneC X Y u := by
    rw [map_sub, map_sub, hP, ← hKK, Formalism.L2.SG.PackageTie.K_eq_parts hs hId]
    unfold Formalism.FourierDecayAlt.PB.Terms.K0 Formalism.L2.SG.RowsConc.oneC
    abel
  calc hsNormSq (Kmat D.s u u - AdmissibleBoundsFromSource.Kpp D u u - ContinuousLinearMap.id ℂ (D.s.Cu u))
      = hsNormSq (conjE hI u u (Kmat D.s u u - AdmissibleBoundsFromSource.Kpp D u u - ContinuousLinearMap.id ℂ (D.s.Cu u))) :=
        (hsNormSq_conjE hI u u _).symm
    _ = hsNormSq (tr (hF.shBij u) (hF.shBij u) (K - P - ContinuousLinearMap.id ℂ (CM (Y.cs u)))) :=
        congrArg hsNormSq hconj
    _ = _ := (hsNormSq_tr hF _).trans (congrArg (fun z => ‖z‖ ^ 2) hemb)

end Clauses2

section Family

open Formalism.L2.SG.Full

structure ConcK (D : D7) : Type 1 where
  X : HidaSetting D
  Y : Full X
  hF : FinX Y
  hI : SIso D.s (sOf hF)
  tie : Formalism.L2.SG.RowsConc.ConcTie X Y

def CSelF {eps : ℝ} (Fm : FamP eps) : Type 1 :=
  Σ' x0 : ℝ, ∀ x (_ : Fm.x1 < x), x0 ≤ x → ∀ i : Fm.Ix x, ConcK (Fm.D x i)

def KExpTied : Prop :=
  ∀ (D : D7) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word), Formalism.L2.SG.RowsConc.ConcTie X Y →
    Formalism.L2.SG.TermOp.KExpansion (X.Fu u) (X.Fu u') (Y.cs u) (Y.cs u') (Y.FN u) (Y.FN u') Y.hK (Y.Dt u) (Y.Dt u')

theorem kExpTied_of_full (hFo : Formalism.L2.SG.Full.FoldOKC) (hIn : Formalism.L2.SG.Full.InHHC) (hF : Formalism.L2.SG.Full.FundExistsC)
    (hO : Formalism.L2.SG.Full.OOIntAllC) (hOF : Formalism.L2.SG.Full.OOFundIndepC) (hAW : Formalism.L2.SG.Full.AmpWellDefC)
    (hA : Formalism.L2.SG.Full.AbsConvC) (hK : Formalism.L2.SG.Full.KExpansionC) : KExpTied := by
  intro D X Y u u' hT
  have f1 := hFo D X Y u hT.1 hT.2.2.2.2.1
  have f2 := hFo D X Y u' hT.1 hT.2.2.2.2.1
  have hFE := hF D X Y u u'
  have hOO := hO D X Y u u' f1 f2 hFE
  exact hK D X Y u u' f1 f2 (hIn D X Y u hT.2.2.2.2.2.1 f1) (hIn D X Y u' hT.2.2.2.2.2.1 f2) hFE hOO
    (hOF D X Y u u' hFE hOO) (hAW D X Y u u' hOO) (hA D X Y u u' f1 f2 hFE hOO)

def TheoremSDifferentWords {eps : ℝ} (Fm : FamP eps) (C0 : ℝ) (c : CSelF Fm) : Prop :=
  OwnEv Fm fun C' Cl x i =>
    AdmissibleBoundsFromSource.hyp (Fm.D x i) (Fm.L x i) C0 C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu →
    ∀ (hx : Fm.x1 < x) (h0 : c.1 ≤ x) (u u' : (Fm.D x i).what₂.Word), u ≠ u' →
      ‖((c.2 x hx h0 i).Y.tO u u').K0‖ ^ 2 ≤ (1 + ((Fm.L x i).sc.b ^ 6)⁻¹) *
        (((Fm.D x i).duS u : ℝ) * ((Fm.D x i).duS u') / (Fm.D x i).what₂.Dstar)

theorem closed_with {𝒞 : FamClass} {Q P : ∀ {eps : ℝ}, FamP eps → ℝ → Prop} (hQ : Closed 𝒞 Q) (thm th : List ℝ → ℝ)
    (h : ∀ {eps : ℝ} (Fm : FamP eps) (CH : ℝ), 𝒞 Fm → Q Fm CH → thm Fm.cOut ≤ Fm.CGam →
      th (Fm.cOut ++ Fm.cMid CH) ≤ sC' Fm → th (Fm.cOut ++ Fm.cMid CH) ≤ sCl Fm → P Fm CH) : Closed 𝒞 P := by
  obtain ⟨a, ha, hQ⟩ := hQ
  refine ⟨a, ha, fun e he hle => ?_⟩
  obtain ⟨K, hK⟩ := hQ e he hle
  refine ⟨K.sup ⟨0, fun _ => 0, thm, th⟩, fun Fm CH hc hL => ?_⟩
  obtain ⟨hL1, hL2⟩ := (Fm.large_sup K _ CH).1 hL
  have hs := le_sC'_sCl hL2
  exact h Fm CH hc (hK Fm CH hc hL1) (hL2.2.2.1 Fm.CGam (by simp [FamP.cMid])) hs.1 hs.2

theorem closed_true (𝒞 : FamClass) : Closed 𝒞 fun _ _ => True :=
  ⟨1, one_pos, fun _ _ _ => ⟨⟨0, fun _ => 0, fun _ => 0, fun _ => 0⟩, fun _ _ _ _ => trivial⟩⟩

theorem closed_of_th {𝒞 : FamClass} {P : ∀ {eps : ℝ}, FamP eps → ℝ → Prop} (thm th : List ℝ → ℝ)
    (h : ∀ {eps : ℝ} (Fm : FamP eps) (CH : ℝ), 𝒞 Fm → thm Fm.cOut ≤ Fm.CGam →
      th (Fm.cOut ++ Fm.cMid CH) ≤ sC' Fm → th (Fm.cOut ++ Fm.cMid CH) ≤ sCl Fm → P Fm CH) : Closed 𝒞 P :=
  closed_with (closed_true 𝒞) thm th fun Fm CH hc _ => h Fm CH hc

variable (C0 : ℝ)

def closedThreshold (hC : Formalism.L2.SG.RowsConc.KppOffC) (l : List ℝ) : ℝ :=
  max 3 (max (hC (l.getD 6 0 + 1) (1 / 4) 3 (1 / 2) (l.getD 13 0) C0).choose
    (hC (l.getD 6 0 + 1) (1 / 4) 3 (1 / 2) (l.getD 13 0) C0).choose_spec.choose)

end Family

section Family2

open Formalism.L2.SG.Full

variable (C0 : ℝ)

end Family2

section ClosedE

end ClosedE

section FamilyE

variable (C0 : ℝ)

end FamilyE

section Sel

def SSelF {eps : ℝ} (Fm : FamP eps) :=
  Σ' x0 : ℝ, ∀ x (_ : Fm.x1 < x), x0 ≤ x → ∀ i : Fm.Ix x, Formalism.L2.SG.SpectralTiesReal.STies (Fm.D x i)

def SSel (𝒞 : FamClass) := ∀ {eps : ℝ} (Fm : FamP eps), 𝒞 Fm → SSelF Fm

def STiesOK {D : D7} (T : Formalism.L2.SG.SpectralTiesReal.STies D) : Prop :=
  FinX T.Y ∧ T.X.LevelSubgroupNormalized ∧ (∀ u, Formalism.L2.SG.PoincareInHH.Cut.NeatKu T.X u T.Y.hK) ∧ Formalism.L2.SG.WuDecay.WuDecay T.X ∧
    Integrable T.X.ph (Formalism.L2.SG.ProjRows.muInf T.X.B.I) ∧ Formalism.L2.SG.Pf.LocCP.LocTied D ∧ Formalism.L2.SG.RowsConc.TFrameAt D

def concKOf {D : D7} (T : Formalism.L2.SG.SpectralTiesReal.STies D) (h : STiesOK T) : ConcK D :=
  ⟨T.X, T.Y, h.1, T.hI h.1, T.concTie h.1 h.2.1 h.2.2.1 h.2.2.2.1 h.2.2.2.2.1 h.2.2.2.2.2.1 h.2.2.2.2.2.2⟩

def TheoremSSelected {eps : ℝ} (Fm : FamP eps) (C0 : ℝ) (s : SSelF Fm) : Prop :=
  OwnEv Fm fun C' Cl x i =>
    AdmissibleBoundsFromSource.hyp (Fm.D x i) (Fm.L x i) C0 C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu →
    ∀ (hx : Fm.x1 < x) (h0 : s.1 ≤ x) (u u' : (Fm.D x i).what₂.Word), u ≠ u' →
      ‖((s.2 x hx h0 i).Y.tO u u').K0‖ ^ 2 ≤ (1 + ((Fm.L x i).sc.b ^ 6)⁻¹) *
        (((Fm.D x i).duS u : ℝ) * ((Fm.D x i).duS u') / (Fm.D x i).what₂.Dstar)

variable (C0 : ℝ)

end Sel

theorem gap_hypothesis_of_hypotheses {D : D7} {large₂ : SizeData₂ D} {C' Cl Cg cb Cu cT CT : ℝ}
    (h : StandingHypotheses D large₂ C' Cl Cg cb Cu cT CT) (hCl : 16 ≤ Cl) (hC' : 29 ≤ C') : Formalism.L2.SG.ConcreteSettingExists.GapHyp D := by
  obtain ⟨-, hk, hmf, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, hgap, -, -, -, -⟩ := h
  have hL : 1 < large₂.sc.L := Formalism.MainNotions.S.one_lt_scL large₂
  have hm2 : 2 ≤ D.R.m := D.R.two_le_m
  have hm : (2 : ℝ) ≤ D.R.m := by exact_mod_cast hm2
  have hf16 : 16 ≤ D.R.f := le_trans (by
    calc 16 = 2 ^ 4 := by norm_num
      _ ≤ D.R.m ^ 4 := Nat.pow_le_pow_left hm2 4) hmf
  have hf : (16 : ℝ) ≤ D.R.f := by exact_mod_cast hf16
  have hkn : D.R.k ≤ D.R.r := by have := D.R.two_le_m; unfold Formalism.BasicNotions.Ranks.r; omega
  have hm5 : (32 : ℝ) ≤ (D.R.m : ℝ) ^ 5 := by
    calc (32 : ℝ) = 2 ^ 5 := by norm_num
      _ ≤ (D.R.m : ℝ) ^ 5 := pow_le_pow_left₀ (by norm_num) hm 5
  have hkR : (1801 : ℝ) ≤ D.R.k := by
    have h1 : (29 : ℝ) * 32 * 16 * 1 ≤ C' * (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L := by
      gcongr
    linarith
  have hk1801 : 1801 ≤ D.R.k := by exact_mod_cast hkR
  refine ⟨le_trans hk1801 hkn, fun τ j hj => ?_⟩
  have g := hgap τ (j.1 + 1) (by omega) (by omega)
  rw [Formalism.MainNotions.S.bOne_succ τ (j.1 + 1) hj, Formalism.MainNotions.S.bOne_succ τ j.1 j.2] at g
  have hn0 : (0 : ℝ) ≤ (D.R.r : ℝ) ^ 19 := by positivity
  have hf5 : (1 : ℝ) ≤ (D.R.f : ℝ) ^ 5 := one_le_pow₀ (by linarith)
  have h16 : 16 * (D.R.r : ℝ) ^ 19 ≤ Cl * (D.R.r : ℝ) ^ 19 * (D.R.f : ℝ) ^ 5 * large₂.sc.L := by
    have a1 : 16 * (D.R.r : ℝ) ^ 19 ≤ Cl * (D.R.r : ℝ) ^ 19 :=
      mul_le_mul_of_nonneg_right hCl hn0
    have a2 : Cl * (D.R.r : ℝ) ^ 19 ≤ Cl * (D.R.r : ℝ) ^ 19 * ((D.R.f : ℝ) ^ 5 * large₂.sc.L) :=
      le_mul_of_one_le_right (by positivity) (hf5.trans (le_mul_of_one_le_right (by linarith) hL.le))
    linarith [show Cl * (D.R.r : ℝ) ^ 19 * ((D.R.f : ℝ) ^ 5 * large₂.sc.L) =
      Cl * (D.R.r : ℝ) ^ 19 * (D.R.f : ℝ) ^ 5 * large₂.sc.L by ring]
  have hR : ((16 * (D.R.r : ℚ) ^ 19 : ℚ) : ℝ) ≤ (((D.hc τ).b ⟨j.1 + 1, hj⟩ - (D.hc τ).b j : ℚ) : ℝ) := by
    push_cast
    have e : ((D.hc τ).b ⟨j.1, j.2⟩ : ℝ) = ((D.hc τ).b j : ℝ) := rfl
    linarith
  exact_mod_cast hR

theorem size_numbers_of_hypotheses {D : D7} {large₂ : SizeData₂ D} {C' Cl Cg cb Cu cT CT Cn : ℝ}
    (h : StandingHypotheses D large₂ C' Cl Cg cb Cu cT CT) (hCl : 16 ≤ Cl) (hC' : 70 ≤ C') (hCn : 8 * Cn ≤ C') :
    Formalism.FourierDecayAlt.PB.SizeNumbers D.R.k D.R.rS D.R.f large₂.sc.b (D.host.g 0) (D.host.g 1) (1 / 3) Cn := by
  obtain ⟨-, hk, hmf, hfk, -, -, -, -, -, -, -, hg1, -, hg2, -, hbj, -, -, -, -, -, -, -, -, -⟩ := h
  have hL : 1 < large₂.sc.L := Formalism.MainNotions.S.one_lt_scL large₂
  have hlogb : Real.log large₂.sc.b = large₂.sc.L := Formalism.MainNotions.S.log_scb large₂
  have hb2 : 2 ≤ large₂.sc.b := Formalism.MainNotions.S.two_le_scb large₂
  have hm2 : 2 ≤ D.R.m := D.R.two_le_m
  have hm : (2 : ℝ) ≤ D.R.m := by exact_mod_cast hm2
  have hf16 : 16 ≤ D.R.f := le_trans (by
    calc 16 = 2 ^ 4 := by norm_num
      _ ≤ D.R.m ^ 4 := Nat.pow_le_pow_left hm2 4) hmf
  have hf : (16 : ℝ) ≤ D.R.f := by exact_mod_cast hf16
  have hm4 : (16 : ℝ) ≤ (D.R.m : ℝ) ^ 4 := by
    calc (16 : ℝ) = 2 ^ 4 := by norm_num
      _ ≤ (D.R.m : ℝ) ^ 4 := pow_le_pow_left₀ (by norm_num) hm 4
  have hm5 : 16 * (D.R.m : ℝ) ≤ (D.R.m : ℝ) ^ 5 := by
    calc 16 * (D.R.m : ℝ) = (D.R.m : ℝ) * 16 := by ring
      _ ≤ (D.R.m : ℝ) * (D.R.m : ℝ) ^ 4 := mul_le_mul_of_nonneg_left hm4 (by linarith)
      _ = (D.R.m : ℝ) ^ 5 := by ring
  have hX : 256 * (D.R.m : ℝ) * large₂.sc.L ≤ (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L := by
    have h1 : 256 * (D.R.m : ℝ) ≤ (D.R.m : ℝ) ^ 5 * D.R.f := by
      calc 256 * (D.R.m : ℝ) = (16 * (D.R.m : ℝ)) * 16 := by ring
        _ ≤ (D.R.m : ℝ) ^ 5 * D.R.f := mul_le_mul hm5 hf (by norm_num) (by positivity)
    exact mul_le_mul_of_nonneg_right h1 (by linarith)
  have hX' : 256 * (D.R.m : ℝ) ≤ (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L :=
    (le_mul_of_one_le_right (by linarith) hL.le).trans hX
  have hX0 : 0 ≤ (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L := by positivity
  have hkX : 70 * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) ≤ D.R.k := by
    have : 70 * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) ≤ C' * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) :=
      mul_le_mul_of_nonneg_right hC' hX0
    have e : C' * (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L = C' * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) := by ring
    linarith
  have hkR : (35840 : ℝ) ≤ D.R.k := by linarith
  have hkm : 2 * (D.R.m : ℝ) + 8 ≤ D.R.k := by linarith
  have hkm' : 2 * D.R.m + 8 ≤ D.R.k := by exact_mod_cast hkm
  have hm2r : 2 * D.R.rS + 2 = D.R.m := by
    unfold Formalism.BasicNotions.Ranks.rS; obtain ⟨j, hj⟩ := D.R.m_even; omega
  have hcard : 0 < Fintype.card D.what₂.Tau := by
    rw [← Formalism.MainNotions.BesselShellMomentBounds.card_places D, Formalism.MainNotions.LatticeGluingRadicals.d_card D]; omega
  obtain ⟨τ⟩ := Fintype.card_pos_iff.1 hcard
  have hb1 := hbj τ 1 le_rfl (by omega)
  have hkb : (D.R.k : ℝ) ≤ large₂.sc.b ^ 2 := by
    have h1 : (D.R.k : ℝ) ≤ (D.R.k : ℝ) ^ Cl := Real.self_le_rpow_of_one_le (by linarith) (by linarith)
    have h2 := le_trans (le_max_left _ _) hb1.1
    have h3 := hb1.2
    rw [Real.rpow_two] at h3
    exact le_trans h1 (le_trans h2 h3)
  refine ⟨?_, by exact_mod_cast (show (32 : ℝ) ≤ D.R.k by linarith), hfk, by omega, hg1, hg2, ?_, ?_, ?_⟩
  · by_contra hc
    push Not at hc
    have : large₂.sc.b ^ 2 < (16 : ℝ) ^ 2 := pow_lt_pow_left₀ hc (by linarith) (by norm_num)
    linarith
  · rw [hlogb]
    have hLle : large₂.sc.L ≤ (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L :=
      (le_mul_of_one_le_left (by linarith) (by linarith : (1 : ℝ) ≤ 256 * D.R.m)).trans hX
    linarith
  · have hlk : (1 : ℝ) ≤ Real.log D.R.k := by
      rw [Real.le_log_iff_exp_le (by linarith)]
      have := Real.exp_one_lt_d9
      linarith
    exact (by linarith : (1 : ℝ) ≤ 5 * (1 / 3) * D.R.f).trans (le_mul_of_one_le_right (by linarith) hlk)
  · rw [hm2r, hlogb]
    have : 8 * (Cn * (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) = (8 * Cn) * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) := by ring
    rw [this]
    have h1 : (8 * Cn) * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) ≤ C' * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) :=
      mul_le_mul_of_nonneg_right hCn hX0
    have e : C' * (D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L = C' * ((D.R.m : ℝ) ^ 5 * D.R.f * large₂.sc.L) := by ring
    linarith

section SelH

variable (C0 : ℝ)

def SelOK {eps : ℝ} (Fm : FamP eps) (s : SSelF Fm) : Prop :=
  OwnEv Fm fun C' Cl x i =>
    AdmissibleBoundsFromSource.hyp (Fm.D x i) (Fm.L x i) C0 C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu →
    ∀ (hx : Fm.x1 < x) (h0 : s.1 ≤ x), STiesOK (s.2 x hx h0 i)

def ConcEv {eps : ℝ} (Fm : FamP eps) : Prop :=
  OwnEv Fm fun C' Cl x i =>
    AdmissibleBoundsFromSource.hyp (Fm.D x i) (Fm.L x i) C0 C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu → Nonempty (ConcK (Fm.D x i))

theorem concEv_of_sel {eps : ℝ} {Fm : FamP eps} {s : SSelF Fm} (h : SelOK C0 Fm s) : ConcEv C0 Fm := by
  obtain ⟨x0, H⟩ := h
  refine ⟨max x0 (max s.1 (Fm.x1 + 1)), fun x hx i hH => ?_⟩
  have hx' := le_trans (le_max_right _ _) hx
  have hx1 : Fm.x1 < x := by have := le_trans (le_max_right _ _) hx'; linarith
  have h0 : s.1 ≤ x := le_trans (le_max_left _ _) hx'
  exact ⟨concKOf (s.2 x hx1 h0 i) (H x (le_trans (le_max_left _ _) hx) i hH hx1 h0)⟩

theorem hypOwnE_kppOff (hC : Formalism.L2.SG.RowsConc.KppOffC) {𝒞 : FamClass}
    (hE : Closed 𝒞 fun Fm _ => ConcEv C0 Fm) :
    Closed 𝒞 fun Fm _ => HypOwn Fm C0 fun D _ => ClKppOff D := by
  refine closed_with hE (fun _ => 0) (closedThreshold C0 hC) fun Fm CH _ hE' _ h1 h2 => ?_
  obtain ⟨x0, H⟩ := hE'
  refine ⟨x0, fun x hx i hH => ?_⟩
  obtain ⟨c⟩ := H x hx i hH
  have hs := (hC (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0).choose_spec.choose_spec
  have e : closedThreshold C0 hC (Fm.cOut ++ Fm.cMid CH) = max 3 (max (hC (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0).choose
      (hC (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0).choose_spec.choose) := rfl
  rw [e] at h1 h2
  have hC' : 1 ≤ sC' Fm := le_trans (by norm_num) (le_trans (le_max_left _ _) h1)
  have hK2 := Formalism.MainNotions.NonGenericAndKTwoTheorems.Hyp_of _ _ _ _ _ _ _ _ _ _ hH.1 hH.2.1 hH.2.2 hC'
  intro u u' hne
  exact kpp_zero c.hI (hs _ _ (le_trans (le_max_left _ _) (le_trans (le_max_right _ _) h1))
    (le_trans (le_max_right _ _) (le_trans (le_max_right _ _) h2)) _ _ c.X c.Y u u' hK2 c.tie hne)

theorem hypOwnS_off (hC : Formalism.L2.SG.RowsConc.KppOffC) (hExp : KExpTied) (hAbs : Formalism.L2.SG.RowsConc.AbsConvTied)
    {𝒞 : FamClass} (sel : SSel 𝒞)
    (hOK : Closed 𝒞 fun Fm _ => ∀ hc : 𝒞 Fm, SelOK C0 Fm (sel Fm hc))
    (hO : Closed 𝒞 fun Fm _ => ∀ hc : 𝒞 Fm, TheoremSSelected Fm C0 (sel Fm hc)) :
    Closed 𝒞 fun Fm _ => HypOwn Fm C0 fun D L => ClOff D L := by
  refine closed_with (hOK.and hO) (fun _ => 0) (closedThreshold C0 hC) fun Fm CH hc hQ _ h1 h2 => ?_
  obtain ⟨x2, H2⟩ := hQ.1 hc
  obtain ⟨x0, H⟩ := hQ.2 hc
  refine ⟨max x0 (max x2 (max (sel Fm hc).1 (Fm.x1 + 1))), fun x hx i hH => ?_⟩
  have hxa := le_trans (le_max_right _ _) hx
  have hx' := le_trans (le_max_right _ _) hxa
  have hx1 : Fm.x1 < x := by have := le_trans (le_max_right _ _) hx'; linarith
  have h0 : (sel Fm hc).1 ≤ x := le_trans (le_max_left _ _) hx'
  let c := concKOf ((sel Fm hc).2 x hx1 h0 i) (H2 x (le_trans (le_max_left _ _) hxa) i hH hx1 h0)
  have hs := (hC (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0).choose_spec.choose_spec
  have e : closedThreshold C0 hC (Fm.cOut ++ Fm.cMid CH) = max 3 (max (hC (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0).choose
      (hC (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0).choose_spec.choose) := rfl
  rw [e] at h1 h2
  have hC' : 1 ≤ sC' Fm := le_trans (by norm_num) (le_trans (le_max_left _ _) h1)
  have hK2 := Formalism.MainNotions.NonGenericAndKTwoTheorems.Hyp_of _ _ _ _ _ _ _ _ _ _ hH.1 hH.2.1 hH.2.2 hC'
  intro u u' hne
  have hZ := hs _ _ (le_trans (le_max_left _ _) (le_trans (le_max_right _ _) h1))
    (le_trans (le_max_right _ _) (le_trans (le_max_right _ _) h2)) _ _ c.X c.Y u u' hK2 c.tie hne
  have hb : 0 ≤ (Fm.L x i).sc.b := le_trans zero_le_two (Formalism.MainNotions.S.two_le_scb _)
  rw [hsNormSq_off c.hI (hExp _ c.X c.Y u u' c.tie) (hAbs _ c.X c.Y u u' c.tie)
    (Formalism.L2.SG.Pf.SatGram.idDegenerate_tO c.Y u u') hZ]
  have hK := H x (le_trans (le_max_left _ _) hx) i hH hx1 h0 u u' hne
  unfold AdmissibleBoundsFromSource.eta0 AdmissibleBoundsFromSource.du AdmissibleBoundsFromSource.Dst
  rw [Formalism.L2.SG.PackageTie.rpow_neg_six hb]
  calc _ ≤ _ := hK
    _ = _ := by ring

theorem sTiesOK_of (hFX : Formalism.L2.SG.PoincareAmplitudeLowerBounds.FinXC) (hWu : Formalism.L2.SG.Pf.WuDecayOfGap) {D : D7}
    (T : Formalism.L2.SG.SpectralTiesReal.STies D) (hG : Formalism.L2.SG.ConcreteSettingExists.GapHyp D) (hL : Formalism.L2.SG.Pf.LocCP.LocTied D)
    (hTF : Formalism.L2.SG.RowsConc.TFrameAt D) : STiesOK T := by
  have hK := Formalism.L2.SG.Closed.level_subgroup_properties T.X
  exact ⟨hFX D T hG, hK, fun u => Formalism.L2.SG.Pf.RegroupPf.neatKu_K2Level D T.X T.Y u hK, (hWu D hG T.X).1,
    (hWu D hG T.X).2, hL, hTF⟩

theorem selOK_of (hFX : Formalism.L2.SG.PoincareAmplitudeLowerBounds.FinXC) (hWu : Formalism.L2.SG.Pf.WuDecayOfGap) {𝒞 : FamClass} (sel : SSel 𝒞)
    (hLoc : ∀ {eps : ℝ} (Fm : FamP eps) (hc : 𝒞 Fm) x (hx : Fm.x1 < x) (h0 : (sel Fm hc).1 ≤ x) (i : Fm.Ix x),
      Formalism.L2.SG.Pf.LocCP.LocTied (Fm.D x i))
    (hTF : Closed 𝒞 fun Fm _ => PX.TFrame Fm (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0) :
    Closed 𝒞 fun Fm _ => ∀ hc : 𝒞 Fm, SelOK C0 Fm (sel Fm hc) := by
  refine closed_with hTF (fun _ => 0) (fun _ => 29) fun Fm _ _ hT _ h1 h2 hc => ?_
  obtain ⟨x0, H⟩ := hT
  refine ⟨x0, fun x hx' i hH hx h0 => ?_⟩
  have h1' : (29 : ℝ) ≤ sC' Fm := h1
  have h2' : (29 : ℝ) ≤ sCl Fm := h2
  exact sTiesOK_of hFX hWu _ (gap_hypothesis_of_hypotheses hH.2.1 (by linarith) h1') (hLoc Fm hc x hx h0 i)
    (H x hx' i ⟨hH.2.1, hH.1, hH.2.2⟩)

end SelH

section OffLeaves

open Formalism.L2.SG.RowsConc

def TheoremSAtDataAlt (CA C0 CG CDel cT Cb Cn : ℝ) (k0 : ℕ) (C' Cl Cg cb Cw cTf CT C0f : ℝ) : Prop :=
  ∀ (D : D7) (L : SizeData₂ D) (T : Formalism.L2.SG.SpectralTiesReal.STies D) (u u' : D.what₂.Word), u ≠ u' → 0 ≤ L.sc.b →
    Formalism.L2.SG.PoincareAmplitudeLowerBounds.SizesAt CA C0 CG CDel cT Cb Cn k0 D L T u u' →
    Formalism.MainNotions.S.Cnt.Hyp0 D L C' Cl Cg cb Cw cTf CT C0f → Formalism.MainNotions.S.Cnt.Stand D u u' →
    Formalism.MainNotions.NonGenericAndKTwoTheorems.KTwoHypotheses D L C' Cl Cg cb Cw cTf CT C0f →
    Formalism.L2.SG.ConcreteSettingExists.GapHyp D → Formalism.L2.SG.Pf.LocCP.LocTied D → TFrameAt D →
    (T.Y.tO u u').RowBig (epsL D) (ddC T.X T.Y u u') → (T.Y.tO u u').RowNotScalar (epsL D) (ddC T.X T.Y u u') →
    ‖(T.Y.tO u u').K0‖ ^ 2 ≤ (1 + (L.sc.b ^ 6)⁻¹) * ((D.duS u : ℝ) * (D.duS u') / D.what₂.Dstar)

def TheoremSClosedHypotheses : Prop :=
  ∀ Cthr : ℝ, ∃ C₄ CA C : ℝ, 1 ≤ C₄ ∧ Cthr ≤ CA ∧ 1 ≤ CA ∧ 0 ≤ C ∧ C ≤ CA ∧
    ∀ (C0 CG CDel cT Cb : ℝ), 1 ≤ C0 → 0 ≤ CG → 4 < CDel → 0 < cT → 0 < Cb → 1 < cT * Cb →
    ∃ k0 : ℕ, ∀ Cg cb Cw cTf CT C0f : ℝ, ∃ Cn C'₀ Cl₀ : ℝ, 0 ≤ Cn ∧ ∀ C' Cl : ℝ, C'₀ ≤ C' → Cl₀ ≤ Cl →
    ∀ (D : D7) (L : SizeData₂ D) (T : Formalism.L2.SG.SpectralTiesReal.STies D) (u u' : D.what₂.Word), u ≠ u' → 0 ≤ L.sc.b →
      Formalism.L2.SG.PoincareAmplitudeLowerBounds.SizesAt CA C0 CG CDel cT Cb Cn k0 D L T u u' →
      Formalism.MainNotions.S.Cnt.Hyp0 D L C' Cl Cg cb Cw cTf CT C0f → Formalism.MainNotions.S.Cnt.Stand D u u' →
      Formalism.MainNotions.NonGenericAndKTwoTheorems.KTwoHypotheses D L C' Cl Cg cb Cw cTf CT C0f →
      Formalism.L2.SG.ConcreteSettingExists.GapHyp D → Formalism.L2.SG.Pf.LocCP.LocTied D → TFrameAt D →
      (T.Y.tO u u').RowBig (epsL D) (ddC T.X T.Y u u') → (T.Y.tO u u').RowNotScalar (epsL D) (ddC T.X T.Y u u') →
      ‖(T.Y.tO u u').K0‖ ^ 2 ≤ (1 + (L.sc.b ^ 6)⁻¹) * ((D.duS u : ℝ) * (D.duS u') / D.what₂.Dstar) ∧
      L.hsSq u u' ≤ (1 + L.sc.b ^ (-(6 : ℝ))) * (D.duS u : ℝ) * (D.duS u' : ℝ) / D.what₂.Dstar

variable (C0 : ℝ)

def SizesRowS (𝒞 : FamClass) (sel : SSel 𝒞) : Prop :=
  ∀ CA : ℝ, 1 ≤ CA → ∀ (k0 : List ℝ → ℕ) (cn : List ℝ → ℝ), Closed 𝒞 fun Fm CH => ∀ hc : 𝒞 Fm,
    OwnEv Fm fun C' Cl x i => AdmissibleBoundsFromSource.hyp (Fm.D x i) (Fm.L x i) C0 C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu →
      ∀ (hx : Fm.x1 < x) (h0 : (sel Fm hc).1 ≤ x) (u u' : (Fm.D x i).what₂.Word), u ≠ u' →
        Formalism.L2.SG.PoincareAmplitudeLowerBounds.SizesAt CA C0 Fm.CGam 5 (1 / 2) 3 (cn (Fm.cOut ++ Fm.cMid CH))
          (k0 (Fm.cOut ++ Fm.cMid CH)) (Fm.D x i) (Fm.L x i) ((sel Fm hc).2 x hx h0 i) u u'

def LoopRowS (𝒞 : FamClass) (sel : SSel 𝒞) : Prop :=
  ∀ aF : List ℝ → ℝ, Closed 𝒞 fun Fm _ => ∀ hc : 𝒞 Fm, OwnEv Fm fun C' Cl x i =>
    ∀ (hx : Fm.x1 < x) (h0 : (sel Fm hc).1 ≤ x) (u u' : (Fm.D x i).what₂.Word),
      Formalism.MainNotions.S.Cnt.Hyp (Fm.D x i) (Fm.L x i) u u' C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0 (aF Fm.cOut) →
      ConcTie ((sel Fm hc).2 x hx h0 i).X ((sel Fm hc).2 x hx h0 i).Y →
      (((sel Fm hc).2 x hx h0 i).Y.tO u u').AbsConv →
      (((sel Fm hc).2 x hx h0 i).Y.tO u u').RowBig (epsL (Fm.D x i))
          (ddC ((sel Fm hc).2 x hx h0 i).X ((sel Fm hc).2 x hx h0 i).Y u u') ∧
        (((sel Fm hc).2 x hx h0 i).Y.tO u u').RowNotScalar (epsL (Fm.D x i))
          (ddC ((sel Fm hc).2 x hx h0 i).X ((sel Fm hc).2 x hx h0 i).Y u u')

end OffLeaves

section RowsTieSel

theorem splitsCompl_of_equiv {E E' : Type} [Field E] [NumberField E] [Field E'] [NumberField E'] (φ : E ≃+* E')
    {p : ℕ} (h : Formalism.MainNotions.S.SplitsCompl E' p) : Formalism.MainNotions.S.SplitsCompl E p := by
  intro P hP hpP
  let ψ : 𝓞 E ≃+* 𝓞 E' := RingOfIntegers.mapRingEquiv φ
  have hP' : (P.map ψ).IsMaximal := by haveI := hP; exact Ideal.map_isMaximal_of_equiv ψ
  have hp' : (p : 𝓞 E') ∈ P.map ψ := by
    have := Ideal.mem_map_of_mem ψ hpP
    rwa [map_natCast] at this
  obtain ⟨h1, h2⟩ := h _ hP' hp'
  refine ⟨?_, fun hc => h2 ?_⟩
  · rw [← h1, Ideal.absNorm_apply, Ideal.absNorm_apply, Submodule.cardQuot_apply, Submodule.cardQuot_apply]
    exact Nat.card_congr (Ideal.quotientEquiv P (P.map ψ) ψ rfl).toEquiv
  · have := Ideal.mem_map_of_mem ψ hc
    rwa [map_natCast, Ideal.map_pow] at this

theorem rowsTieP_of {D : D7} (T : Formalism.L2.SG.SpectralTiesReal.STies D) : CountE.RowsTieP CountE.PLev D T.X.B := by
  have hK := _root_.Formalism.L2.SG.Pf.level_subgroup_character_unitary T.X
  have hKL := Formalism.L2.SG.Closed.level_subgroup_properties T.X
  have hcl := Formalism.L2.SG.PoincareInHH.Cut.level_subgroup_isClopen T.X hK hKL
  refine ⟨(Formalism.MainNotions.S.Inh.aut_rowsTie_iff D T.X.B).2 ⟨⟨T.X.pl, T.autTie⟩, fun h => ?_⟩,
    Formalism.L2.SG.Count.levelSubgroupOfCharacter T.X hK, T.X.chi2, hcl.isOpen,
    (PI.WAU.Cpt.isCompact_Kset T.X.B.I).of_isClosed_subset hcl.isClosed hKL.2.1, hKL.2.1, ?_,
    fun k hk k' hk' => hK.2.2.2.1 k hk k' hk', fun k hk => hK.2.2.2.2 k hk, fun x => ?_⟩
  · rw [T.X.g0_eq]; exact splitsCompl_of_equiv T.X.ιE h
  · have hg0 := (D.host.g_prime 0).pos
    have hg1 := (D.host.g_prime 1).pos
    have hn : 2 * D.R.rS + D.R.k + 1 ≤ T.X.B.I.n := by
      rw [T.X.n_eq, Formalism.MainNotions.BridgeLemma.sza_r_eq]; omega
    refine Formalism.L2.SG.Pf.BunEx.unipotence_mod_g T.X.B.I T.X.B.g T.X.B.g₀ T.X.e0 T.X.f0 T.X.z0 T.X.bw T.X.bwd T.X.ew
      (by rw [T.X.g_eq]; exact Nat.mul_pos hg0 hg1) (by rw [T.X.g_eq, T.X.g0_eq]; exact dvd_mul_right _ _) hn
      T.X.vectorsInLattice T.X.gramIntegral T.X.formsAtZero T.X.weightVectorsIntegral T.X.ew_idem T.X.ew_orth T.X.ew_int T.X.bw_w T.X.bwd_w T.X.bw_dual
      T.X.latticeSpan
  · rw [T.X.e_eq x]
    split_ifs with h1 h2 h2
    · rw [inv_eq_of_mul_eq_one_right (Formalism.L2.SG.Pf.BunA.unit_mul_star (hK.2.2.2.2 x h1))]
      rfl
    · exact absurd h1 h2
    · exact absurd h2 h1
    · rfl

end RowsTieSel

end Formalism.L2.SG.ThmSOwn

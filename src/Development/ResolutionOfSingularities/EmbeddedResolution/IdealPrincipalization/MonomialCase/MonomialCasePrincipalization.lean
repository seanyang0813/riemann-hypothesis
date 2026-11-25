module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialGeometryHypotheses
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.LocallyMonomial
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialBlowupIteration
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialCenter
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialInvariantDecrease
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def tripleAtLastBlowup (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) : MarkedIdealWithBoundary.{u} :=
  @MarkedIdealWithBoundary.mk T.base T.instField (s.obj s.length)
    (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult (s.boundary s.length)

@[simp]
theorem tripleAtLastBlowup_scheme (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    (tripleAtLastBlowup T s).scheme = s.obj s.length := rfl

noncomputable abbrev monomialIterateFromEmpty (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u}) (n : ℕ) :
    MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary :=
  MarkedBlowupSequenceData.monomialBlowupIterate hinv
    (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) n

noncomputable abbrev monomialStallIndexOfTriple (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u}) : ℕ :=
  monomialStallIndex hinv T.structMap T.ideal T.mult T.boundary

theorem minIndexCard_tripleAtLastBlowup_ne_zero_of_isAdmissibleCenter (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (h : MarkedBlowupSequenceData.IsAdmissibleCenter s) :
    minIndexCard (tripleAtLastBlowup T s).ideal (tripleAtLastBlowup T s).mult
      (tripleAtLastBlowup T s).boundary ≠ 0 := by
  intro h0
  exact h.1 (monomialCenter_eq_top_of_minIndexCard_eq_zero (s.ideal s.length) T.mult
    (s.boundary s.length) h0)

theorem isAdmissibleCenter_of_minIndexCard_tripleAtLastBlowup_ne_zero (hGeom : MonomialGeometryHypotheses.{u})
    (T : MarkedIdealWithBoundary.{u}) (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hs : MonomialCenter.IsLocallyMonomialTriple (tripleAtLastBlowup T s))
    (h : minIndexCard (tripleAtLastBlowup T s).ideal (tripleAtLastBlowup T s).mult
      (tripleAtLastBlowup T s).boundary ≠ 0) :
    MarkedBlowupSequenceData.IsAdmissibleCenter s :=
  monomialCenter_spec hGeom hs h

private theorem tripleAtLastBlowup_eq_mk_of_length_eq (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (n : ℕ) (hn : s.length = n) :
    tripleAtLastBlowup T s =
      @MarkedIdealWithBoundary.mk T.base T.instField (s.obj n) (s.proj n ≫ T.structMap) (s.ideal n) T.mult
        (s.boundary n) := by
  subst hn
  rfl

private theorem markedIdealWithBoundary_mk_comap_eqToHom {k : Type u} [instk : Field k] {A B : Scheme.{u}}
    (hAB : A = B) (q : B ⟶ Spec (CommRingCat.of k)) (J : B.IdealSheafData) (m : ℕ)
    (E : List B.IdealSheafData) :
    @MarkedIdealWithBoundary.mk k instk A (eqToHom hAB ≫ q) (J.comap (eqToHom hAB)) m
        (List.map (fun D => D.comap (eqToHom hAB)) E) =
      @MarkedIdealWithBoundary.mk k instk B q J m E := by
  subst hAB
  refine MarkedIdealWithBoundary.mk_eq_mk _ _ ?_ ?_ ?_ <;> simp

private theorem blowupAtCenter_eq_self_of_not_isAdmissibleCenter {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {I : X.IdealSheafData} {m : ℕ} {E : List X.IdealSheafData}
    (hinv : ComapIsoInvariance.{u}) (s : MarkedBlowupSequenceData p I m E)
    (h : ¬ MarkedBlowupSequenceData.IsAdmissibleCenter s) :
    MarkedBlowupSequenceData.blowupAtCenter hinv s = s := by
  unfold MarkedBlowupSequenceData.blowupAtCenter
  rw [dite_eq_right h]

private theorem isLocallyMonomialTriple_tripleAtLastBlowup_blowupAtCenter
    (hGeom : MonomialGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hs : MonomialCenter.IsLocallyMonomialTriple (tripleAtLastBlowup T s)) :
    MonomialCenter.IsLocallyMonomialTriple
      (tripleAtLastBlowup T (MarkedBlowupSequenceData.blowupAtCenter hinv s)) := by
  by_cases hstep : MarkedBlowupSequenceData.IsAdmissibleCenter s
  · have hlen := MarkedBlowupSequenceData.blowupAtCenter_length hinv s hstep
    have hobj := MarkedBlowupSequenceData.blowupAtCenter_schemeAt_succ hinv s hstep
    have hideal := MarkedBlowupSequenceData.blowupAtCenter_ideal_succ hinv s hstep
    have hbdry := MarkedBlowupSequenceData.blowupAtCenter_boundary_succ hinv s hstep
    have hproj := MarkedBlowupSequenceData.blowupAtCenter_projectionToBase_succ hinv s hstep
    have hmin := minIndexCard_tripleAtLastBlowup_ne_zero_of_isAdmissibleCenter T s hstep
    have key : tripleAtLastBlowup T (MarkedBlowupSequenceData.blowupAtCenter hinv s) =
        blowupTripleAtCenterIdeal (tripleAtLastBlowup T s) := by
      rw [tripleAtLastBlowup_eq_mk_of_length_eq T (MarkedBlowupSequenceData.blowupAtCenter hinv s) (s.length + 1)
          hlen, hproj, hideal, hbdry]
      simp only [Category.assoc]
      exact markedIdealWithBoundary_mk_comap_eqToHom hobj _ _ _ _
    rw [key]
    exact isLocallyMonomialTriple_blowupTripleAtCenterIdeal hGeom hs hmin
  · rw [blowupAtCenter_eq_self_of_not_isAdmissibleCenter hinv s hstep]
    exact hs

theorem isLocallyMonomialTriple_tripleAtLastBlowup_monomialIterate
    (hGeom : MonomialGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hT : MonomialCenter.IsLocallyMonomialTriple T) (n : ℕ) :
    MonomialCenter.IsLocallyMonomialTriple (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)) := by
  induction n with
  | zero =>
    have h0 : monomialIterateFromEmpty hinv T 0 =
        emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary :=
      MarkedBlowupSequenceData.monomialBlowupIterate_zero hinv _
    rw [h0]
    have hT0 : tripleAtLastBlowup T (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) = T := by
      rw [tripleAtLastBlowup_eq_mk_of_length_eq T (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) 0
        (emptyMarkedBlowupSequenceData_length T.structMap T.ideal T.mult T.boundary)]
      exact MarkedIdealWithBoundary.mk_eq_mk T.scheme T.mult (Category.id_comp T.structMap)
        (emptyMarkedBlowupSequenceData_ideal T.structMap T.ideal T.mult T.boundary 0)
        (emptyMarkedBlowupSequenceData_boundary T.structMap T.ideal T.mult T.boundary 0)
    rw [hT0]
    exact hT
  | succ n ih =>
    have hstep : monomialIterateFromEmpty hinv T (n + 1) =
        MarkedBlowupSequenceData.blowupAtCenter hinv (monomialIterateFromEmpty hinv T n) :=
      MarkedBlowupSequenceData.monomialBlowupIterate_succ hinv _ n
    rw [hstep]
    exact isLocallyMonomialTriple_tripleAtLastBlowup_blowupAtCenter hGeom hinv T
      (monomialIterateFromEmpty hinv T n) ih

theorem minIndexCard_monomialIterateFromEmpty_ne_zero (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u}) (n : ℕ) (hn : n < monomialStallIndexOfTriple hinv T) :
    minIndexCard (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)).ideal
        (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)).mult
        (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)).boundary ≠ 0 :=
  minIndexCard_tripleAtLastBlowup_ne_zero_of_isAdmissibleCenter T (monomialIterateFromEmpty hinv T n)
    (isAdmissibleCenter_of_lt_monomialStallIndex hinv T.structMap T.ideal T.mult T.boundary n hn)

private theorem tripleAtLastBlowup_blowupAtCenter (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hstep : MarkedBlowupSequenceData.IsAdmissibleCenter s) :
    tripleAtLastBlowup T (MarkedBlowupSequenceData.blowupAtCenter hinv s) =
      blowupTripleAtCenterIdeal (tripleAtLastBlowup T s) := by
  have hlen := MarkedBlowupSequenceData.blowupAtCenter_length hinv s hstep
  have hobj := MarkedBlowupSequenceData.blowupAtCenter_schemeAt_succ hinv s hstep
  have hideal := MarkedBlowupSequenceData.blowupAtCenter_ideal_succ hinv s hstep
  have hbdry := MarkedBlowupSequenceData.blowupAtCenter_boundary_succ hinv s hstep
  have hproj := MarkedBlowupSequenceData.blowupAtCenter_projectionToBase_succ hinv s hstep
  simp only [tripleAtLastBlowup]
  rw [hlen, hideal, hbdry, hproj]
  simp only [Category.assoc]
  exact @markedIdealWithBoundary_mk_comap_eqToHom T.base T.instField _ _ hobj _ _ _ _

private theorem exists_isStationaryAt_emptyMarkedBlowupSequenceData (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hT : MonomialCenter.IsLocallyMonomialTriple T) :
    ∃ n : ℕ, MarkedBlowupSequenceData.IsStationaryAt hinv
      (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) n := by
  by_contra hcon
  have hstepAll : ∀ n : ℕ, MarkedBlowupSequenceData.IsAdmissibleCenter (monomialIterateFromEmpty hinv T n) := by
    intro n
    by_contra hn
    exact hcon ⟨n, (MarkedBlowupSequenceData.isStationaryAt_iff_not_isAdmissibleCenter hinv
      (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) n).mpr hn⟩
  have hloc : ∀ n : ℕ, MonomialCenter.IsLocallyMonomialTriple
      (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)) :=
    fun n => isLocallyMonomialTriple_tripleAtLastBlowup_monomialIterate hGeom hinv T hT n
  have hmin : ∀ n : ℕ,
      minIndexCard (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)).ideal
        (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)).mult
        (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)).boundary ≠ 0 :=
    fun n => minIndexCard_tripleAtLastBlowup_ne_zero_of_isAdmissibleCenter T (monomialIterateFromEmpty hinv T n) (hstepAll n)
  have hmono : ∀ n : ℕ, tripleAtLastBlowup T (monomialIterateFromEmpty hinv T (n + 1)) =
      blowupTripleAtCenterIdeal (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)) := by
    intro n
    have hit : monomialIterateFromEmpty hinv T (n + 1) =
        MarkedBlowupSequenceData.blowupAtCenter hinv (monomialIterateFromEmpty hinv T n) :=
      MarkedBlowupSequenceData.monomialBlowupIterate_succ hinv
        (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) n
    rw [hit]
    exact tripleAtLastBlowup_blowupAtCenter hinv T (monomialIterateFromEmpty hinv T n) (hstepAll n)
  have hdim : ∀ n : ℕ,
      krullDimSucc (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)).scheme ≤ T.krullDimSucc := by
    intro n
    induction n with
    | zero =>
      have h0 : monomialIterateFromEmpty hinv T 0 = emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary :=
        MarkedBlowupSequenceData.monomialBlowupIterate_zero hinv
          (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
      have hsc : (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T 0)).scheme = T.scheme := by
        rw [tripleAtLastBlowup_scheme, h0, emptyMarkedBlowupSequenceData_schemeAt]
      exact le_of_eq (congrArg krullDimSucc hsc)
    | succ n ih =>
      rw [hmono n]
      exact le_trans (krullDimSucc_blowupTripleAtCenterIdeal_le hGeom (hloc n) (hmin n)) ih
  have hdec : ∀ n : ℕ,
      monomialInvariant T.krullDimSucc (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T (n + 1))) <
        monomialInvariant T.krullDimSucc (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)) := by
    intro n
    have h' : minIndexCard (blowupTripleAtCenterIdeal (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n))).ideal
        (blowupTripleAtCenterIdeal (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n))).mult
        (blowupTripleAtCenterIdeal (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n))).boundary ≠ 0 := by
      rw [← hmono n]
      exact hmin (n + 1)
    rw [hmono n]
    exact monomialInvariant_blowupTripleAtCenterIdeal_lt hGeom (hloc n) (hmin n) (hdim n) h'
  have main : ∀ a : Lex (ℕ × Lex (ℕ × ℕ)), Acc (· < ·) a → ∀ n : ℕ,
      monomialInvariant T.krullDimSucc (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T n)) = a → False := by
    intro a ha
    induction ha with
    | intro x hx ih =>
      intro n hn
      refine ih (monomialInvariant T.krullDimSucc
        (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T (n + 1)))) ?_ (n + 1) rfl
      rw [← hn]
      exact hdec n
  exact main (monomialInvariant T.krullDimSucc (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T 0)))
    (wellFounded_lt.apply _) 0 rfl

theorem minIndexCard_monomialIterateFromEmpty_stallIndex_eq_zero (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hT : MonomialCenter.IsLocallyMonomialTriple T) :
    minIndexCard (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T (monomialStallIndexOfTriple hinv T))).ideal
        (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T (monomialStallIndexOfTriple hinv T))).mult
        (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T (monomialStallIndexOfTriple hinv T))).boundary = 0 := by
  by_contra hne
  have hstall := isStationaryAt_monomialStallIndex hinv T.structMap T.ideal T.mult T.boundary
    (exists_isStationaryAt_emptyMarkedBlowupSequenceData hGeom hinv T hT)
  have hnot := (MarkedBlowupSequenceData.isStationaryAt_iff_not_isAdmissibleCenter hinv
    (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (monomialStallIndexOfTriple hinv T)).mp hstall
  exact hnot (isAdmissibleCenter_of_minIndexCard_tripleAtLastBlowup_ne_zero hGeom T
    (monomialIterateFromEmpty hinv T (monomialStallIndexOfTriple hinv T))
    (isLocallyMonomialTriple_tripleAtLastBlowup_monomialIterate hGeom hinv T hT
      (monomialStallIndexOfTriple hinv T)) hne)

theorem monomialPrincipalization_length (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u}) :
    (monomialPrincipalization hinv T).length = monomialStallIndexOfTriple hinv T := by
  rw [monomialPrincipalization_apply, MarkedBlowupSequenceData.toMarkedSequence_length, monomialBlowupSeq_length]

theorem monomialPrincipalization_length_eq_zero_of_empty (hinv : ComapIsoInvariance.{u}) :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      orderAtLeastLocus T.ideal T.mult = ∅ → (monomialPrincipalization hinv T).length = 0 := by
  intro T hT hcs
  have hmin : minIndexCard T.ideal T.mult T.boundary = 0 :=
    minIndexCard_eq_zero_of_orderAtLeastLocus_eq_empty hT.valid hcs
  have hT0 : tripleAtLastBlowup T (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) = T := by
    rw [tripleAtLastBlowup_eq_mk_of_length_eq T (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) 0
      (emptyMarkedBlowupSequenceData_length T.structMap T.ideal T.mult T.boundary)]
    exact MarkedIdealWithBoundary.mk_eq_mk T.scheme T.mult (Category.id_comp T.structMap)
      (emptyMarkedBlowupSequenceData_ideal T.structMap T.ideal T.mult T.boundary 0)
      (emptyMarkedBlowupSequenceData_boundary T.structMap T.ideal T.mult T.boundary 0)
  have hns : ¬ MarkedBlowupSequenceData.IsAdmissibleCenter
      (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) := by
    intro hstep
    have h := minIndexCard_tripleAtLastBlowup_ne_zero_of_isAdmissibleCenter T
      (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) hstep
    rw [hT0] at h
    exact h hmin
  have hzero : MarkedBlowupSequenceData.monomialStallIndex hinv
      (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) = 0 :=
    MarkedBlowupSequenceData.monomialStallIndex_eq_zero_of_not_isAdmissibleCenter hinv
      (emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) hns
  rw [monomialPrincipalization_length]
  exact (monomialStallIndex_eq_monomialStallIndex_empty hinv T.structMap T.ideal T.mult T.boundary).trans hzero

theorem monomialPrincipalization_isResolution (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      MarkedSequenceOfBlowups.IsResolution (monomialPrincipalization hinv T) := by
  intro T hT
  have hmon : MonomialCenter.IsLocallyMonomialTriple
      (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T (monomialStallIndexOfTriple hinv T))) :=
    isLocallyMonomialTriple_tripleAtLastBlowup_monomialIterate hGeom hinv T hT (monomialStallIndexOfTriple hinv T)
  have hzero := minIndexCard_monomialIterateFromEmpty_stallIndex_eq_zero hGeom hinv T hT
  have hcs := orderAtLeastLocus_eq_empty_of_minIndexCard_eq_zero hGeom hmon hzero
  refine (MarkedSequenceOfBlowups.isResolution_iff _).mpr ?_
  rw [monomialPrincipalization_apply, MarkedBlowupSequenceData.toMarkedSequence_lastIdeal]
  exact hcs

private theorem support_comap_eqToHom_nonempty {A B : Scheme.{u}} (h : A = B)
    (J : B.IdealSheafData) (hJ : (J.support : Set ↥B).Nonempty) :
    ((J.comap (eqToHom h)).support : Set ↥A).Nonempty := by
  subst h
  obtain ⟨x, hx⟩ := hJ
  exact ⟨x, Scheme.IdealSheafData.mem_support_comap.mpr (by simpa using hx)⟩

theorem monomialPrincipalization_center_support_nonempty (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      ∀ i < (monomialPrincipalization hinv T).length,
        (((monomialPrincipalization hinv T).center i).support :
          Set ↥((monomialPrincipalization hinv T).schemeAt i)).Nonempty := by
  intro T hT i hi
  rw [monomialPrincipalization_length] at hi
  have hlen : i < monomialStallIndex hinv T.structMap T.ideal T.mult T.boundary := hi
  have hs := isLocallyMonomialTriple_tripleAtLastBlowup_monomialIterate hGeom hinv T hT i
  have hmin := minIndexCard_monomialIterateFromEmpty_ne_zero hinv T i hlen
  have hne : ((monomialCenter (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T i)).ideal
      (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T i)).mult
      (tripleAtLastBlowup T (monomialIterateFromEmpty hinv T i)).boundary).support :
      Set ↥(tripleAtLastBlowup T (monomialIterateFromEmpty hinv T i)).scheme).Nonempty := by
    rw [support_monomialCenter hGeom hs hmin]
    exact monomialCenterSet_nonempty hGeom hs hmin
  have hsupp : ((MarkedBlowupSequenceData.centerAtLast (monomialIterateFromEmpty hinv T i)).support :
      Set ↥((monomialIterateFromEmpty hinv T i).obj (monomialIterateFromEmpty hinv T i).length)).Nonempty := hne
  rw [monomialPrincipalization_apply, MarkedBlowupSequenceData.toMarkedSequence_center,
    monomialBlowupSeq_center hinv T.structMap T.ideal T.mult T.boundary i hlen]
  exact support_comap_eqToHom_nonempty
    (monomialBlowupSeq_schemeAt hinv T.structMap T.ideal T.mult T.boundary i (Nat.le_of_lt hlen))
    (MarkedBlowupSequenceData.centerAtLast (monomialIterateFromEmpty hinv T i)) hsupp

private theorem support_centerAtLast_subset_iUnion_boundary (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hT : MonomialCenter.IsLocallyMonomialTriple T) (i : ℕ) (hi : i < monomialStallIndexOfTriple hinv T) :
    ((MarkedBlowupSequenceData.centerAtLast (monomialIterateFromEmpty hinv T i)).support :
        Set ↥((monomialIterateFromEmpty hinv T i).obj (monomialIterateFromEmpty hinv T i).length)) ⊆
      ⋃ D ∈ (monomialIterateFromEmpty hinv T i).boundary (monomialIterateFromEmpty hinv T i).length,
        ((D.support : Set ↥((monomialIterateFromEmpty hinv T i).obj (monomialIterateFromEmpty hinv T i).length))) :=
  support_monomialCenter_subset_boundary hGeom
    (isLocallyMonomialTriple_tripleAtLastBlowup_monomialIterate hGeom hinv T hT i)
    (minIndexCard_monomialIterateFromEmpty_ne_zero hinv T i hi)

theorem monomialPrincipalization_center_subset_boundaryLocus (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      ∀ i < (monomialPrincipalization hinv T).length,
        ↑((monomialPrincipalization hinv T).center i).support ⊆
          MarkedSequenceOfBlowups.boundaryLocus (monomialPrincipalization hinv T) i := by
  intro T hT i hi
  have hiN : i < monomialStallIndexOfTriple hinv T := by
    rwa [monomialPrincipalization_length] at hi
  have hcent := monomialBlowupSeq_center hinv T.structMap T.ideal T.mult T.boundary i hiN
  have hbd := monomialBlowupSeq_boundary hinv T.structMap T.ideal T.mult T.boundary i (Nat.le_of_lt hiN)
  rw [monomialPrincipalization_apply]
  intro x hx
  rw [MarkedBlowupSequenceData.toMarkedSequence_center, hcent] at hx
  refine (MarkedSequenceOfBlowups.mem_boundaryLocus_iff _ _ _).mpr ?_
  rw [MarkedBlowupSequenceData.toMarkedSequence_boundary, hbd]
  obtain ⟨D, hD, hxD⟩ :=
    Set.mem_iUnion₂.mp
      (support_centerAtLast_subset_iUnion_boundary hGeom hinv T hT i hiN
        (Scheme.IdealSheafData.mem_support_comap.mp hx))
  exact ⟨_, List.mem_map.mpr ⟨D, hD, rfl⟩, Scheme.IdealSheafData.mem_support_comap.mpr hxD⟩

theorem monomialPrincipalization_principalizationCertificate (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      ∀ i < (monomialPrincipalization hinv T).length,
        PrincipalizationCertificate ((monomialPrincipalization hinv T).schemeAt i)
          (MarkedSequenceOfBlowups.projectionToSpec (monomialPrincipalization hinv T) i)
          ((monomialPrincipalization hinv T).ideal i) T.mult
          (MarkedSequenceOfBlowups.boundaryLocus (monomialPrincipalization hinv T) i)
          ((monomialPrincipalization hinv T).center i) := by
  intro T hT i hi
  exact PrincipalizationCertificate.memory
    (monomialPrincipalization_center_subset_boundaryLocus hGeom hinv T hT i hi)

structure IsMonomialCasePrincipalization (F : PrincipalizationAssignment.{u}) : Prop where
  cert :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      ∀ i < (F T).length,
        PrincipalizationCertificate ((F T).schemeAt i) (MarkedSequenceOfBlowups.projectionToSpec (F T) i) ((F T).ideal i) T.mult
          (MarkedSequenceOfBlowups.boundaryLocus (F T) i) ((F T).center i)
  center_nonempty :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      ∀ i < (F T).length, (((F T).center i).support : Set ↥((F T).schemeAt i)).Nonempty
  resolves :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      MarkedSequenceOfBlowups.IsResolution (F T)
  trivial_of_coSupport_empty :
    ∀ T : MarkedIdealWithBoundary.{u}, MonomialCenter.IsLocallyMonomialTriple T →
      orderAtLeastLocus T.ideal T.mult = ∅ → (F T).length = 0

theorem isMonomialCasePrincipalization_monomialPrincipalization (hGeom : MonomialGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) : IsMonomialCasePrincipalization (monomialPrincipalization hinv) :=
  { cert := monomialPrincipalization_principalizationCertificate hGeom hinv
    center_nonempty := monomialPrincipalization_center_support_nonempty hGeom hinv
    resolves := monomialPrincipalization_isResolution hGeom hinv
    trivial_of_coSupport_empty := monomialPrincipalization_length_eq_zero_of_empty hinv }

end FunctorialResolution.EmbeddedResolution

end

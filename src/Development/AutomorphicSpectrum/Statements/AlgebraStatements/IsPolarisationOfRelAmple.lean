module

public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsCrystalPairing
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ZeroSectionBase
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDualOfIsPerfectOfAdditive
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.AdjointEndomorphismsCubeLBOfDenseFibres
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AmplePt

@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj CategoryTheory.MonObj
open GlobalTheory.CechPic GlobalTheory.AbDual
open GlobalTheory.IndefiniteRowSideFullHecke.ZeroSectionBase (IsPrincipalPol sqToBase)

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CompanionTheory.Hypotheses₂

namespace Zarhin

variable {S : Scheme.{0}}

def IsPolarisation (A B : Over S) [GrpObj A] [GrpObj B] (P : LB (A ⊗ B).left) (l : A ⟶ B) : Prop :=
  IsMonHom l ∧ ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (s : Sp Ω ⟶ S),
    ∃ L : LB ((Over.pullback s).obj A).left, L.IsLB ∧ Out.RelAmple ((Over.pullback s).obj A) L ∧
      LBIso ((ev P (fst A A) (snd A A ≫ l)).pull (sqToBase A s)) (abelian₂ ((Over.pullback s).obj A) L)

end Zarhin

namespace Zarhin

def SymmetricBundleSt : Prop :=
  ∀ (C : Type) [Field C] [IsAlgClosed C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C],
    v.Integers R → ∀ (A : Over (Sp R)) [GrpObj A], IsAbelianScheme A →
      ∀ c : Pic (A ⊗ A).left, IsPrincipalPol A c →
        ∃ (L : LB A.left) (hL : L.IsLB), Out.Rigidified A L ∧ Out.Sym A L ∧ Out.RelAmple A L ∧ Out.KTriv A L ∧
          c = lam (cls L hL) (fst A A) (snd A A)

variable {S : Scheme.{0}}

theorem isPolarisation_of_relAmple {A B : Over S} [GrpObj A] [GrpObj B] {P : LB (A ⊗ B).left} (hP : P.IsLB)
    {l : A ⟶ B} (hl : IsMonHom l) {L : LB A.left} (hL : L.IsLB) (ha : Out.RelAmple A L)
    (e : LBIso (abelian₂ A L) (ev P (fst A A) (snd A A ≫ l))) : IsPolarisation A B P l := by
  refine ⟨hl, fun Ω _ _ s => ?_⟩
  have h := isGrpPullback_pullback A s
  have hL' := pull_isLB hL (pullback.fst A.hom s)
  obtain ⟨w, hw⟩ := (cls_eq_iff hL' hL').1 rfl
  obtain ⟨U, hU, hx, -⟩ := exists_isAffineOpen_mem_and_subset (X := S)
    (x := s (IsLocalRing.closedPoint Ω)) (U := ⊤) trivial
  have hE : (ev P (fst A A) (snd A A ≫ l)).IsLB := pull_isLB hP _
  have hΛ : (abelian₂ A L).IsLB := LB.isLB_linComb hL _ _
  have hΛ' : (abelian₂ ((Over.pullback s).obj A) (L.pull (pullback.fst A.hom s))).IsLB := LB.isLB_linComb hL' _ _
  refine ⟨_, hL', relAmple_pull h.1 hL hL' ((isGen_iff w).1 hw) U hU
    (fun y => by rwa [Subsingleton.elim y (IsLocalRing.closedPoint Ω)]) ha,
    (cls_eq_iff (pull_isLB hE _) hΛ').1 ?_⟩
  rw [cls_pull hE, ← (cls_eq_iff hΛ hE).2 e,
    show cls _ hΛ = lam (cls L hL) (fst A A) (snd A A) from cls_cube_two hL _ _ hΛ,
    show cls _ hΛ' = lam (cls _ hL') (fst _ _) (snd _ _) from cls_cube_two hL' _ _ hΛ',
    sqToBase, pull_lam, lift_fst, lift_snd, cls_pull hL, lam_pull_of_isGrpPullback h]
  rfl

theorem isPolarisation_id (Q : Out.PolAV S) : IsPolarisation Q.A Q.A (abelian₂ Q.A Q.L) (𝟙 _) := by
  have hΛ : (abelian₂ Q.A Q.L).IsLB := LB.isLB_linComb Q.isLB _ _
  refine isPolarisation_of_relAmple hΛ inferInstance Q.isLB Q.ample ((cls_eq_iff hΛ (pull_isLB hΛ _)).1 ?_)
  rw [cls_ev hΛ, evc, Category.comp_id, lift_fst_snd, Over.id_left, pull_id]

theorem hyp_elliptic (hD : GlobalTheory.Published.DualAbelianScheme) {R : Type} [CommRing R] [IsNoetherianRing R]
    (W : WeierstrassCurve R) [W.IsElliptic] :
    let E := GlobalTheory.WeierstrassCurve.ellPolAV W
    E.g = 1 ∧ IsAbelianScheme E.A ∧ IsDual E.A E.A (abelian₂ E.A E.L) ∧ IsPolarisation E.A E.A (abelian₂ E.A E.L) (𝟙 _) := by
  intro E
  exact ⟨rfl, E.isAb, GlobalTheory.PerfectDual.isDual_of_isPerfect hD _ _ E.isAb E.isAb E.smoothDim E.smoothDim
    (isPerfect_ell W), isPolarisation_id E⟩

theorem isLocalRing_integers {C : Type} [Field C] {v : Valuation C NNReal} {R : Type} [CommRing R] [Algebra R C]
    (hv : v.Integers R) : IsLocalRing R :=
  haveI : IsDomain R := Function.Injective.isDomain (algebraMap R C) hv.hom_inj
  haveI := ValuationRing.of_integers v hv
  inferInstance

end Zarhin

end GlobalTheory.CompanionTheory.Hypotheses₂

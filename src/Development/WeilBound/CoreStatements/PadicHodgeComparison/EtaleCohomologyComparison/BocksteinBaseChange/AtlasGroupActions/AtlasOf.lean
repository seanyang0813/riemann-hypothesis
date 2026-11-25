module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.DatPull
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdicTorsionCup.PrimOfOver
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.ExistsEpsPeriodTUnit
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.LimSurjFil
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsA

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry
open GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison

namespace GlueB'

variable {l : ℕ} [Fact l.Prime]

def βS (hC : B.Compat l) {O : Type} [CommRing O] (F : B.Fn O) (κ : O →+* OC l) (k : Bool) (j : ℕ) :
    Sys.Hom (B.HcSys F κ k j) (MSys (F.pt κ) j) (RingHom.id _) where
  f n := B.β F κ k n j
  comm n x := Eq.symm (hC.red F κ k (m := n + 1) n.le_succ j x)

variable {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem atlas_of {M : Model l K} (h : M.Sm) : ∃ d, Nonempty ((B.schFn M.p).Atlas d) := by
  have : Smooth M.p := h.2
  have : IsProper M.p := AdicGeo.proper_p (M := M) h.1
  exact _root_.GlobalTheory.CompanionTheory.SchAtlas.exists_atlas (O := OK l K) (X := M.X) M.p

variable (Amp : ∀ M : Model l K, E.LineData M.X → Prop)

def bβ (hC : B.Compat l) {M : Model l K} (a : (dat Amp).Ch M) (j : ℕ) :
    ((dat Amp).H a).N j →ₗ[(per l K).A] ((dat Amp).A a).N j :=
  @Eq.rec (PAlg l ⥤ Type) ((B.schFn M.p).pt (okToOC l K))
    (fun P _ => (M.HS false j).lim →ₗ[Acris l] (MSys P j).lim)
    (βS hC (B.schFn M.p) (okToOC l K) false j).lim
    M.P rfl

def bβ' (hC : B.Compat l) {M : Model l K} (a : (dat Amp).Ch M) (j : ℕ) :
    ((dat Amp).H' a).N j →ₗ[(per l K).A] ((dat Amp).A a).N j :=
  @Eq.rec (PAlg l ⥤ Type) ((B.schFn M.p).pt (okToOC l K))
    (fun P _ => (M.HS true j).lim →ₗ[Acris l] (MSys P j).lim)
    (βS hC (B.schFn M.p) (okToOC l K) true j).lim
    M.P rfl

private theorem f_bounds (hMain : B.Main l) (hC : B.Compat l) {M : Model l K} (a : (dat Amp).Ch M) (hM : M.Sm) (j : ℕ) :
    (∃ n : ℕ, ∀ x, bβ Amp hC a j x = 0 → (per l K).t ^ n • x = 0) ∧
    (∃ n : ℕ, ∀ x, bβ' Amp hC a j x = 0 → (per l K).t ^ n • x = 0) ∧
    (∃ n : ℕ, ∀ y, ∃ x, bβ' Amp hC a j x = (per l K).t ^ n • y) ∧
    (∃ n : ℕ, ∀ y, ∃ x, (dat Amp).fil a j n x ∧ bβ Amp hC a j x = (per l K).t ^ n • y) := by
  have aux : ∀ (P : PAlg l ⥤ Type) (hP : (B.schFn M.p).pt (okToOC l K) = P)
      (t : Acris l) (_ : ∃ ε : B.Eps l, ∃ u : Acris l, IsUnit u ∧ t = ε.μ * u),
      ∃ n : ℕ,
        (∀ k, UpTo (t ^ n)
          (@Eq.rec (PAlg l ⥤ Type) ((B.schFn M.p).pt (okToOC l K))
            (fun Q _ => (M.HS k j).lim →ₗ[Acris l] (MSys Q j).lim)
            (βS hC (B.schFn M.p) (okToOC l K) k j).lim P hP)) ∧
        (∀ y : (MSys P j).lim, ∃ x : (M.HS false j).lim,
          (∀ i, x.1 i ∈ B.HcFil (B.schFn M.p) (okToOC l K) false i n j) ∧
          (@Eq.rec (PAlg l ⥤ Type) ((B.schFn M.p).pt (okToOC l K))
            (fun Q _ => (M.HS false j).lim →ₗ[Acris l] (MSys Q j).lim)
            (βS hC (B.schFn M.p) (okToOC l K) false j).lim P hP) x = t ^ n • y) := by
    intro P hP t hPeriod
    subst hP
    refine (atlas_of hM).elim fun d hA => hA.elim fun A =>
      hPeriod.elim fun ε hε => hε.elim fun u hu => (hMain d j).elim fun N hN => ?_
    have hLevel := hN (B.schFn M.p) (okToOC l K) ε A
    refine ⟨2 * N, ?_, ?_⟩
    · intro k
      let φ := βS hC (B.schFn M.p) (okToOC l K) k j
      have hUpTo (n : ℕ) := (hLevel n).1 k
      exact ⟨GlueBL.lim_inj φ ε.μ u t N hu.2 hUpTo, GlueBL.lim_surj φ ε.μ u t N hu.2 hUpTo⟩
    · exact GlueBL.lim_surj_fil (βS hC (B.schFn M.p) (okToOC l K) false j) ε.μ u t N hu.2
        (fun n r => B.HcFil (B.schFn M.p) (okToOC l K) false n r j)
        (fun n r => hC.smul_fil (B.schFn M.p) (okToOC l K) false n r j ε.μ (ε.μ_mem false (PAlg.base l) n))
        (fun n => ((hLevel n).1 false).1) (fun n => (hLevel n).2)
  have h := aux M.P rfl (per l K).t (GlueBE.exists_eps_period_t_unit l K)
  exact ⟨h.imp fun _ hn => (hn.1 false).1, h.imp fun _ hn => (hn.1 true).1,
    h.imp fun _ hn => (hn.1 true).2, h.imp fun _ hn => hn.2⟩

theorem f_inj (hMain : B.Main l) (hC : B.Compat l) {M : Model l K} (a : (dat Amp).Ch M) (hM : M.Sm) (j : ℕ) :
    ∃ n : ℕ, ∀ x, bβ Amp hC a j x = 0 → (per l K).t ^ n • x = 0 :=
  (f_bounds Amp hMain hC a hM j).1

theorem f_inj' (hMain : B.Main l) (hC : B.Compat l) {M : Model l K} (a : (dat Amp).Ch M) (hM : M.Sm) (j : ℕ) :
    ∃ n : ℕ, ∀ x, bβ' Amp hC a j x = 0 → (per l K).t ^ n • x = 0 :=
  (f_bounds Amp hMain hC a hM j).2.1

theorem f_surj' (hMain : B.Main l) (hC : B.Compat l) {M : Model l K} (a : (dat Amp).Ch M) (hM : M.Sm) (j : ℕ) :
    ∃ n : ℕ, ∀ y, ∃ x, bβ' Amp hC a j x = (per l K).t ^ n • y :=
  (f_bounds Amp hMain hC a hM j).2.2.1

theorem f_surj (hMain : B.Main l) (hC : B.Compat l) {M : Model l K} (a : (dat Amp).Ch M) (hM : M.Sm) (j : ℕ) :
    ∃ n : ℕ, ∀ y, ∃ x, (dat Amp).fil a j n x ∧ bβ Amp hC a j x = (per l K).t ^ n • y :=
  (f_bounds Amp hMain hC a hM j).2.2.2

end GlueB'

end CrystallineSemistableComparison

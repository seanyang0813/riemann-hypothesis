module

public import Formalism.LocalToGlobal.HermitianColumns.StarConj
public import Formalism.LocalToGlobal.HermitianColumns.SymAll
public import Formalism.LocalToGlobal.HermitianColumns.BaseModelLevelEq

@[expose] public section

noncomputable section

open Formalism.BasicNotions NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct

namespace Formalism.L2.Herm

structure SymmetricHermitianColumns (D : D7) extends HermColsCh D where

  dt : unitaryOneFiniteAdeles D.sp.cm →* D.Dt

  dt_ker : ∀ x : unitaryOneFiniteAdeles D.sp.cm, dt x = 1 → (x : GL (Fin 1) (D.host.E ⊗[D.host.F] Af D.host.F)) ∈ IntegralUnitGroup D.sp.cm

  dt_UO : D.UO = ((IntegralUnitGroup D.sp.cm).subgroupOf (unitaryOneFiniteAdeles D.sp.cm)).map dt

  dt_rat : ∀ (z : unitary D.host.E) (x : unitaryOneFiniteAdeles D.sp.cm),
    Matrix.GeneralLinearGroup.det (x : GL (Fin 1) (D.host.E ⊗[D.host.F] Af D.host.F)) = unitaryOneRationalAdele D.host.F z →
    D.e1Dt z = dt x

def SymmetricGroupCompatibility (D : D7) (H : HermColsCh D) : Type :=
  ∀ u (w : D.what₂.places.Pl) (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)),
    GLevTie (H.lev0 u) (D.gat u w hg)

def SymmetricRelativeDeterminant (D : D7) (H : SymmetricHermitianColumns D) : Prop :=
  ∀ (N : ℕ) (L L' : SDLat D.host.E N), ∀ g ∈ UstdAf D.sp.cm N, Carries g L.1 L'.1 →
    ∀ x : unitaryOneFiniteAdeles D.sp.cm, IsDetOf D.sp.cm x g → D.relDet N L L' = QuotientGroup.mk (H.dt x)

structure SymmetricCompatibleData (D : D7) where
  base : SymmetricHermitianColumns D
  atT : ∀ u, AtT D u (base.vT u) (base.Fv u)

structure FullTiedS (D : D7) extends SymmetricCompatibleData D where
  levelZeroCompatibility : SymmetricLevelZeroData D base.toHermColsCh atT
  g : SymmetricGroupCompatibility D base.toHermColsCh
  ad : SymmetricAdelicCompatibility D base.toHermColsCh atT
  cof : SymmetricCofactorCompatibility D base.toHermColsCh atT
  piG : PiGConstS D base.toHermColsCh atT levelZeroCompatibility
  stabMap : SymmetricStabilizerMapCompatibility D base.toHermColsCh atT
  fvI : SymmetricResidueFieldLevels D base.toHermColsCh atT
  relDet : SymmetricRelativeDeterminant D base
  std : StdTied D
  baseL : SymmetricBaseCompatibility D base.toHermColsCh atT

def FullTiedS.cols {D : D7} (X : FullTiedS D) : ColsHermS D where
  base := X.base.toHermColsCh
  atT := X.atT
  levelZeroCompatibility := X.levelZeroCompatibility
  piG := X.piG
  std := X.std
  baseL := X.baseL

def toErrXS {D : D7} (X : FullTiedS D) : ErrX D where
  piG := (X.levelZeroCompatibility D.u₀).piG
  piG_K := (X.levelZeroCompatibility D.u₀).piG_K
  piG_norm := fun i => by rw [← star_conj]; exact (X.levelZeroCompatibility D.u₀).piG_norm i
  piT := fun u => (X.atT u).piU
  piT_K := fun u => (X.atT u).piU_K
  piT_norm := fun u => (X.atT u).piU_norm
  piT_cong := fun u => (X.atT u).piU_cong
  vPl := fun u v => (X.base.vT u v).1
  vPl_inj := fun u a b h => (X.base.vT u).injective (Subtype.ext h)
  norm_mem_place_ideal := fun u v => (X.base.vT u v).2

def SymmetricGroupCompatibleAtPlaces (D : D7) (H : HermColsCh D) (G : SymmetricGroupCompatibility D H) (Gt : GatTies D) : Prop :=
  ∀ u w hg (v : Fin (D.gat u w hg).P.nV) (s : Fin ((D.gat u w hg).P.n' v)) (x : 𝓞 D.host.F),
    x ∈ ((G u w hg).pl v).1.asIdeal ↔
      (0 : WithTop ℤ) < D.what₂.places.val w
        (tauLL D (Gt.gat_pos u w hg ⟨v, s⟩) (algebraMap D.host.F D.host.E (x : D.host.F)))

def SymmetricKernelCompatibleAtPlace {D : D7} (H : HermColsCh D) (G : SymmetricGroupCompatibility D H) {Gt : GatTies D} {c : LatCmp D} {Tw : TwForms D}
    (u : D.what₂.Word) (w : D.what₂.places.Pl) [Fact (D.what₂.places.resChar w).Prime]
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) {Fl : Formalism.MainNotions.G.Fills (D.gat u w hg)}
    {Lv : Formalism.MainNotions.G.Levels Fl} {Ch : Formalism.MainNotions.G.Chain Lv} (Kp : LocalToGlobal₂ D Gt c Tw u w hg Ch) : Prop :=
  ∀ (v : Fin (D.gat u w hg).P.nV) (x : D.host.E),
    (G u w hg).eQ v _ rfl (Kp.iw 0 v x) =
      ((G u w hg).spl _ ((G u w hg).pl v).2
        (inclE (F := D.host.F) (((G u w hg).pl v).1.adicCompletion D.host.F) x)).1

structure JoinTiedS {D : D7} (X : FullTiedS D) (lev : LevelData D) (eX : ErrX D) (Gt : GatTies D) : Prop where
  lev_eq : lev = X.base.lev0
  errX_eq : eX = toErrXS X
  gpl : SymmetricGroupCompatibleAtPlaces D X.base.toHermColsCh X.g Gt

structure SymmetricExtraCompatibility {D : D7} (X : FullTiedS D) {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L}
    {Gl : Formalism.MainNotions.G.LatInst D} {K : Formalism.MainNotions.G.Consts} {Y : DivX D} {cX : ExtraC}
    (ex : Extra D L hT Gi Gl K Y cX) : Prop where
  join : JoinTiedS X ex.lev ex.errX hT
  iw : ∀ u w (h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)),
    haveI : Fact (D.what₂.places.resChar w).Prime := ⟨D.what₂.places.resChar_prime w⟩
    SymmetricKernelCompatibleAtPlace X.base.toHermColsCh X.g u w h (ex.ker u w h)
  iw_pos : ∀ u w (h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)),
    haveI : Fact (D.what₂.places.resChar w).Prime := ⟨D.what₂.places.resChar_prime w⟩
    GIwPos u w h (ex.ker u w h)

section Sub

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]

end Sub

def FullTiedS.to0 {D : D7} (X : FullTiedS D) : Herm0 D := ⟨X.base.lev0, X.g⟩

end Formalism.L2.Herm

end

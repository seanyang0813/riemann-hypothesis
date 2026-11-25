module

public import Formalism.SharpRestriction.Divisibility.ModuliIntegralCharts
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.WchartLePreimage
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ValNeBot
public import Formalism.LocalToGlobal.ProjectiveLattices.ChartDirectionsIntegral

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Ref

open NumberField IsDedekindDomain IsLocalRing Formalism.L2.Pj
open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable (Xo : Moduli Dw l) (c : Coeff l)

def cjE (E : Type) [Field E] [NumberField E] [IsCMField E] (x : E) : E := IsCMField.complexConj E x

abbrev SymB {E : Type} [Field E] [NumberField E] (cj : E → E) (Y : Type) [AddCommGroup Y] [Module (𝓞 E) Y] :
    Submodule ℝ (Y →ₗ[ℤ] Y →ₗ[ℤ] ℝ) :=
  Formalism.MainNotions.ModuliIntegralCharts.SymB cj Y

abbrev phiC {E : Type} [Field E] [NumberField E] (cj : E → E) {Y : Type} [AddCommGroup Y] [Module (𝓞 E) Y]
    (b : SymB cj Y) : ℝ :=
  Formalism.MainNotions.ModuliIntegralCharts.phiC cj b

def IsPhiAt (la : HeightOneSpectrum (𝓞 c.F)) (T : CDVR) (io : c.F →+* T.Fr) (y : IntFr Xo c T io) (t : ℝ) : Prop :=
  ∃ (e : ℕ) (_ : OverLa la T.V io e) (I : IntData Xo c T io y.1) (P : PELUnif (maximalIdeal T.V) I.G)
    (ϖ : T.V) (Q : P.D.toPre.X → ℤ) (β : SymB (cjE E) P.D.toPre.X),
    P.TorsionIso ∧ Irreducible ϖ ∧ QForm.IsQ P.D.toPre ϖ Q ∧
    (∀ a b, (β : P.D.toPre.X →ₗ[ℤ] P.D.toPre.X →ₗ[ℤ] ℝ) a b = QForm.bOf P.D.toPre Q a b) ∧
    (∀ a, (β : P.D.toPre.X →ₗ[ℤ] P.D.toPre.X →ₗ[ℤ] ℝ) a a = 2 * (Q a : ℝ)) ∧
    (∀ a, 0 ≤ (β : P.D.toPre.X →ₗ[ℤ] P.D.toPre.X →ₗ[ℤ] ℝ) a a) ∧
    phiC (cjE E) β = e * t

abbrev PtU (la : HeightOneSpectrum (𝓞 c.F)) : Type :=
  PtV Xo c (fun _ _ y => y.IsAlg) ℝ (IsPhiAt Xo c la) la

def pjSys : PtSys c.F (Rul Xo c) where
  Pt := PtU Xo c
  val y f := vAtV y f
  val_zero y := vAtV_zero y
  val_ne_bot y f := vAtV_ne_bot y f
  val_add y f g := vAtV_add y f g
  val_smul y a f ha := vAtV_smul y a f ha
  val_mul y f g := vAtV_mul y f g


variable {Xo c} in
def IsBC {T T' : CDVR} {io : c.F →+* T.Fr} (φ : T.Fr →+* T'.Fr) (y : IntFr Xo c T io)
    (z : IntFr Xo c T' (φ.comp io)) : Prop :=
  letI := io.toAlgebra
  letI := (φ.comp io).toAlgebra
  FrMap ({ φ with commutes' := fun _ => rfl } : T.Fr →ₐ[c.F] T'.Fr) y.1 z.1

def IsFinExt {T T' : CDVR} (φV : T.V →+* T'.V) (φ : T.Fr →+* T'.Fr) (r : ℕ) : Prop :=
  Function.Injective φV ∧ IsLocalHom φV ∧ φV.Finite ∧
    φ.comp (algebraMap T.V T.Fr) = (algebraMap T'.V T'.Fr).comp φV ∧
    0 < r ∧ ∀ x, vV T'.V (φ x) = (r : ℤ) * vV T.V x

def UnifAll : Prop :=
  ∀ (la : HeightOneSpectrum (𝓞 c.F)) (T : CDVR) (io : c.F →+* T.Fr) (e : ℕ), OverLa la T.V io e →
    ∀ y : IntFr Xo c T io, y.IsAlg →
      ∃ (T' : CDVR) (φV : T.V →+* T'.V) (φ : T.Fr →+* T'.Fr) (r : ℕ) (z : IntFr Xo c T' (φ.comp io)) (t : ℝ),
        IsFinExt φV φ r ∧ IsBC φ y z ∧ z.IsAlg ∧ IsPhiAt Xo c la T' (φ.comp io) z t

variable [StarRing (𝓞 E)]


section Basic

omit [StarRing (𝓞 E)]

theorem cjE_coe (H : Host E) (a : 𝓞 E) : cjE E (a : E) = (H.bar a : E) := (H.bar_eq a).symm


variable {c} in
theorem IsFinExt.overLa {T T' : CDVR} {φV : T.V →+* T'.V} {φ : T.Fr →+* T'.Fr} {r : ℕ} (h : IsFinExt φV φ r)
    {la : HeightOneSpectrum (𝓞 c.F)} {io : c.F →+* T.Fr} {e : ℕ} (ho : OverLa la T.V io e) :
    OverLa la T'.V (φ.comp io) (r * e) :=
  ho.bc φ h.2.2.2.2.1 h.2.2.2.2.2


theorem pjSys_val_mk (la : HeightOneSpectrum (𝓞 c.F)) {T : CDVR} {io : c.F →+* T.Fr} {e : ℕ}
    (ho : OverLa la T.V io e) (y : IntFr Xo c T io) (hy : y.IsAlg) (t : ℝ) (ht : IsPhiAt Xo c la T io y t)
    (f : Rul Xo c) :
    (pjSys Xo c).val (show PtU Xo c la from PtV.mk la ho y hy t ht) f = nval T.V e (evI y f) := rfl

theorem phiC_nonneg {E : Type} [Field E] [NumberField E] (cj : E → E) {Y : Type} [AddCommGroup Y] [Module (𝓞 E) Y]
    (b : SymB cj Y) (hb : ∀ a, 0 ≤ (b : Y →ₗ[ℤ] Y →ₗ[ℤ] ℝ) a a) : 0 ≤ phiC cj b := by
  refine Real.sInf_nonneg ?_
  rintro _ ⟨l, -, h, rfl⟩
  by_cases h0 : b = 0
  · simp [h0]
  · exact (h b hb h0).le


end Basic

end GlobalTheory.CompanionTheory.Ar.Ref

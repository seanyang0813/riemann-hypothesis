module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.RefLinked
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.SplitComps
public import Development.AutomorphicSpectrum.Statements.GeometryStatements.ZhangDimensionPushDownGrassmannianHeightBounds
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ArchBetween
public import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.FarguesHodgeTate
public import Development.AutomorphicSpectrum.PublishedTheorems.Geometry₂.GagaSections
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HeckeKer
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.BlowupProjections.BlowupProjStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.StrongApproximation.SAOpenStatement
public import Development.AbelianVarietyTheory.PublishedTheorems.SemiabelianTori.GeometricallyConnectedSplitTorusAff
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles
public import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top

open AlgebraicGeometry CategoryTheory NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H}

def IsGlobal (Xo : ∀ l : Level H, Moduli D l) (l : Level H) (c : Coeff l)
    (Y : Model (Xo l) c (algebraMap (𝓞 c.F) c.F)) : Prop :=
  ∃ (Yl : ∀ (p : ℕ) (W : ValuationSubring ℂ), p.Prime → (p : ℂ) ∈ W.nonunits → LocalSystem Xo p W)
    (hg : ∀ p : ℕ, p.Prime → l.GoodAt p),
    (∀ p W hp hW, N2 (Yl p W hp hW) ∧
      ∀ i, (Yl p W hp hW i).SplitFibres ∧ (Yl p W hp hW i).N3 ∧ (Yl p W hp hW i).N4) ∧
    l.A = 1 ∧ Y.Descends ∧
    ∀ (p : ℕ) (W : ValuationSubring ℂ) (hp : p.Prime) (hW : (p : ℂ) ∈ W.nonunits) (b : 𝓞 c.F →+* c.V W),
      (∀ x, ((b x : c.V W) : c.F) = (x : c.F)) →
        ReciprocityTheory.ChartRestriction.G.Geo.Tor.Dominates Y (Yl p W hp hW ⟨l, c, hg p hp⟩) b

variable {l : Level H} {Xo : Moduli D l} {c : Coeff l} {Y : Model Xo c (algebraMap (𝓞 c.F) c.F)}
  {T : RootTower (CMType H) (D.p + D.q)} [DecidableEq (CMType H)]

def realOf (o : TowerOrigin Y T) : RealTower T where
  Sys := o.Sys
  n _ := Module.finrank ℚ c.F
  tie B a :=
    { Re := (o.Or B a).Re
      δ_eq := by rw [(o.Or B a).δ_eq, (o.Or B a).Re_deg]
      fund_deg := (o.Or B a).fund_deg
      fund_reg := (o.Or B a).fund_reg
      ref_none := (o.Or B a).ref_none
      phT_none := fun t x => ((o.Fx a).ph_none x).2 t }
  kA_eq B B' a := by rw [(o.Or B a).kA_eq, (o.Or B' a).kA_eq]


variable (Y T) in
structure GoodOrigin extends TowerOrigin Y T where
  omVB : ∀ B a, (toTowerOrigin.Or B a).𝔐.OmVB
  smooth : (realOf toTowerOrigin).Smooth
  flat : (realOf toTowerOrigin).Flat

  R : T.Comp → RootModel (CMType H) (D.p + D.q)

  refOr : ∀ a, RootOrigin Y ∅ (R a) (toTowerOrigin.Fx a)
  ref_deg : ∀ a, (refOr a).Fl.deg = 1
  ref_top : ∀ a, (refOr a).Re.J = ⊤
  ample : ∀ a, Ht.AmpleQ (R a).y (R a).A.a

def Given : Prop :=
  (PartI ∧ N1ab ∧ N1c ∧ ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H),
      ToroidalLevelCompatibility (D := D) ∧ ToroidalHeckeCompatibility (D := D)) ∧ KeyFormula ∧ GlobalTheory.Published.SemiAbelianHomExtension ∧
    GroundTheory.Heights₂.Heights.NumbersDVR.NumericalSegre.Statement ∧ ReciprocityTheory.ChartRestriction.G.Geo.ResK.ResKStatement ∧ ReciprocityTheory.ChartRestriction.G.SA.SAStatement ∧
    HT.FarguesHodgeTate ∧ Flat.GagaSections ∧ SlopeBoundSt ∧ PB.Inputs ∧ Prov.HS ∧ Prov.An ∧ Prov.ZhangDimensionPushDownGrassmannianHeightBounds ∧
    GroundTheory.Heights₂.Heights.AntisymPerturbation.Statement

end GlobalTheory.CompanionTheory.Ar.Top

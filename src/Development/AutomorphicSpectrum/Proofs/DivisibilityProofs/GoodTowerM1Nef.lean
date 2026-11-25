module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.GoodOrigin
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IntegralClosureHeightEqOneOfLiesOver
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.FarguesHodgeTate
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootLinesWeightBoundOfFree

@[expose] public section

open AlgebraicGeometry CategoryTheory NumberField ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top
open GroundTheory.Heights₂.Heights.LowerBoundFree (ComponentData ComponentSetting degMu ArLimExists slX)

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem or_m1nef : Given → ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] [IsAbelianGalois ℚ E] (H : Host E) (D : Datum H) (Xo : ∀ l : Level H, Moduli D l) (l : Level H) (c : Coeff l) (Y : Model (Xo l) c (algebraMap (𝓞 c.F) c.F)) [DecidableEq (CMType H)] (T : RootTower (CMType H) (D.p + D.q)) (o : GoodOrigin Y T) (II : IntersectionSystem), IsGlobal Xo l c Y → IsFullIntersectionSystem II → 1 ≤ D.p → 1 ≤ D.q → T.ModelNefStatement := by
  intro hG E _ _ _ _ H D Xo l c Y _ T o II _ _ _ _ B a p hp mu hmu
  have hF : HT.FarguesHodgeTate := hG.2.2.2.2.2.2.1
  have hS : p ∈ o.S B := (o.S_iff B p).2 hp
  exact _root_.GlobalTheory.CompanionTheory.Ar.HT.rootModel_nefAt_of_hodgeCpt hF E H D l (Xo l) c _ _ Y (o.S B) (T.M B a) (o.Or B a).𝔐 (o.Or B a).Fl (o.Or B a).e p hS
    (o.omVB B a p hS) (o.Or B a).lines mu hmu

end GlobalTheory.CompanionTheory.Ar.Top

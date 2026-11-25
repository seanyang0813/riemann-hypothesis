module

public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.CompanionOfBaseTied
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.LocPackC
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieTrH
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.FullTiedCBase
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylLatticeDescentHolds
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.ColSpanMulUnit
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.SelfDualCongr
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.BlockRationalityField
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.BlockRatReal
public import Formalism.LocalToGlobal.GroupLattices.CloudFilling.ExistsPowOrbRep
public import Formalism.LocalToGlobal.GroupLattices.CloudFilling.FillInstRecEqWj
public import Formalism.LocalToGlobal.GroupLattices.PerfectRings.ExistsSqEqIntCast
public import Formalism.LocalToGlobal.GroupLattices.PerfectRings.ExtWRec
import Formalism.LocalRingCardinality.DataKerI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieFin, Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieFin =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieFin", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.CompanionOfBaseTied\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.LocPackC\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieTrH\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.FullTiedCBase\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.G NumberField IsDedekindDomain Formalism.UG Formalism.L2.Forms Formalism.L2.G.Cmp Formalism.L2.Herm

namespace Formalism.L2.G

attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.BasicNotions.factResChar

variable (D : D7) (H : FullTiedNoG D)
  (I0 : ∀ u (w : D.what₂.places.Pl), GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w) →
    LocId (H.base.lev0 u) (D.what₂.places.resChar w) (nOrb (zH D.R.toFrame (hP D (D.what₂.places.resChar w))))
      (WQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w)))
      (QQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w))))
  (B : GL (Fin D.R.k) D.host.E) (hBs : Cmp.StdB D B)

def idStd : ∀ u (w : D.what₂.places.Pl), GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w) →
    LocId (H.base.lev0 u) (D.what₂.places.resChar w) (nOrb (zH D.R.toFrame (hP D (D.what₂.places.resChar w))))
      (WQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w)))
      (QQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w))) :=
  fun u w hg => locIdStd D u w hg (I0 u w hg) B hBs
    (Classical.choose (companion_of_baseTied D H.base.toHermCols H.atT H.baseL u))
    (Classical.choose_spec (companion_of_baseTied D H.base.toHermCols H.atT H.baseL u))

variable (sc : Scale) (Ce : ℝ) (T : ∀ u : D.what₂.Word, Forms0 D u)
  (ψ : ∀ u (w : D.what₂.places.Pl), GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w) →
    Formalism.L2.Herm.awayFrom₂ (H.base.lev0 u) (D.what₂.places.resChar w) →* (ORec D w (nFr D (D.what₂.places.resChar w)))ˣ)
  (hd : ∀ u w h, ((packC D (fun u => H.base.lev0 u) (idStd D H I0 B hBs) ψ u w h).gat (rSc sc D.R.k (D.what₂.places.resChar w))
    (epSc D.R sc Ce (D.what₂.places.resChar w))).d = Module.finrank ℂ (D.mem u).A.Mu0)

variable {D H I0 B hBs sc Ce T ψ hd}

end Formalism.L2.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieFin =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylLatticeDescentHolds\npublic import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.ColSpanMulUnit\npublic import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.SelfDualCongr\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.BlockRationalityField\nimport Formalism.LocalRingCardinality.DataKerI\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.BlockRatReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GroupLattices.CloudFilling.ExistsPowOrbRep\npublic import Formalism.LocalToGlobal.GroupLattices.CloudFilling.FillInstRecEqWj\npublic import Formalism.LocalToGlobal.GroupLattices.PerfectRings.ExistsSqEqIntCast\npublic import Formalism.LocalToGlobal.GroupLattices.PerfectRings.ExtWRec\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.FullTiedCBase\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieFin\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.G NumberField IsDedekindDomain Formalism.UG Formalism.L2.Forms Formalism.L2.G.Cmp Formalism.L2.Herm

namespace Formalism.L2.G.RelativeIndexFlags

attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.BasicNotions.factResChar

theorem blockRationality_holds : Formalism.L2.G.BlockRationalityField := by
  intro p O Kf _ _ _ _ _ P Tau _ n LL _ h pos G M embLL lam hW hM
  exact blockRatReal P.lam0 h pos G M embLL (fun τ => (lam τ).w) (fun τ => (lam τ).anti) hW hM

section Rec

variable {D : D7} {X : Formalism.L2.Herm.Herm0 D} {T : ∀ u : D.what₂.Word, Forms0 D u} {Gt : GatTies D} {I : CmpIn D X}

end Rec

variable (D : D7) (H : FullTiedNoG D)
  (I0 : ∀ u (w : D.what₂.places.Pl), GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w) →
    LocId (H.base.lev0 u) (D.what₂.places.resChar w) (nOrb (zH D.R.toFrame (hP D (D.what₂.places.resChar w))))
      (WQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w)))
      (QQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w))))
  (B : GL (Fin D.R.k) D.host.E) (hBs : Cmp.StdB D B)
  (sc : Scale) (Ce : ℝ) (T : ∀ u : D.what₂.Word, Forms0 D u)
  (ψ : ∀ u (w : D.what₂.places.Pl), GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w) →
    Formalism.L2.Herm.awayFrom₂ (H.base.lev0 u) (D.what₂.places.resChar w) →* (ORec D w (nFr D (D.what₂.places.resChar w)))ˣ)
  (hd : ∀ u w h, ((packC D (fun u => H.base.lev0 u) (idStd D H I0 B hBs) ψ u w h).gat (rSc sc D.R.k (D.what₂.places.resChar w))
    (epSc D.R sc Ce (D.what₂.places.resChar w))).d = Module.finrank ℂ (D.mem u).A.Mu0)

variable {D H I0 B hBs sc Ce T ψ hd}

end Formalism.L2.G.RelativeIndexFlags
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan =====

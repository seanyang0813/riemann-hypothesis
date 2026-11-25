module

public import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi
public import Formalism.DistinguishedUnitIdeals.FinalArcProps
public import Formalism.WeaklyAdmissibleFiltrations.Statement
public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfJumpsBdd
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.FrobeniusCoeffSupportBddBelow
public import Formalism.SharpRestriction.LevelLetterCocycles.ExponentWindowSubsetShort
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership
public import Formalism.SharpRestriction.LevelLetterCocycles.RealisedOfCoordArc
public import Formalism.SharpRestriction.LevelLetterCocycles.SecondComparisonInCoordinates
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.GaloisActionFrobeniusComm
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.LvDataLocalizesConstOfCrystalline
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfCoeff
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvBasis
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvFil
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMem
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfSplit
public import Formalism.SharpRestriction.LevelLetterCocycles.RingStepsOf
public import Formalism.SharpRestriction.LevelLetterCocycles.CoordStepsOf
import Formalism.DistinguishedUnitIdeals.ExistsConstOfInvariantMod
import Formalism.DistinguishedUnitIdeals.Statement
import Formalism.SharpRestriction.LevelLetterCocycles.ArcParametersShiftInvariant
import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded
import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvEquiv
import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.ThmEFinal
import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfKapUnit
import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvLoc
import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvRhoC
import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapFl

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.FinalLevelsOf, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOmega, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOnil, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHuZ, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfJumpsLet, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLocReg, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvDelta, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvGam, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvJumps, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapHyp, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLoc, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLocL, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfAssemble

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.FinalLevelsOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.FinalLevelsOf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\npublic import Formalism.DistinguishedUnitIdeals.FinalArcProps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

structure LevSteps {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ}
    {Λ κ : PowerSeries O} {r : ℕ} {lam : Fin r → Dc W T c}
    (Hy : LvHyp Lb hR uZ ιZ C c ell Λ κ lam) (ϖ : O) (j M g G₀ Sz η : ℕ) (kind : ℕ → Kind)
    (b : ℕ → ℕ) (e : Fin r → C.V) : Prop where

  k1b : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).K1b

  k1c : ∀ s < ell, ((lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).lev s).FiniteOrderFixed (baseIdOf hR).Bs.ℓ s

  k1d : ∀ s < ell, ((lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).lev s).PhiGammaCommute

  unitsAt : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).UnitsAt

  compl : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).Compl ϖ

  filt : ∀ s < ell, IsFilt (FilD W T c s)

  jumps : ∀ s < ell, Formalism.ExponentWindows.G.Jumps (kind s) G₀ Sz η (b s) (FilD W T c s)

  mem : (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).Mem

  locReg : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).LocReg

  pa1b : (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).LocalizesConst M e

  equiv : (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).Equiv

  span : Submodule.span (PowerSeries O) (Set.range e) = (latOf C).N (c - (ell : ZMod n))

  ind : LinearIndependent (PowerSeries O) e

  locLIs : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).LocLIs lam

  lamInd : LinearIndependent LL lam

  lamSpan : Submodule.span LL (Set.range lam) = ⊤

theorem finalLevels_of {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ}
    {H : ℕ → ℕ} {κ : PowerSeries O} {r : ℕ} {lam : Fin r → Dc W T c}
    (Hy : LvHyp Lb hR uZ ιZ C c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ lam) (ϖ : O)
    (j M g G₀ Sz η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ) (e : Fin r → C.V)
    (hs : LevSteps Hy ϖ j M g G₀ Sz η kind b e) :
    E.FinalLevels (latOf C) c ell H (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η)
      (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η) ϖ (W.χΓ W.gam) j M g G₀ Sz η kind b e lam
      (UL lam kind b η) :=
  { kind_eq := fun _ _ => rfl
    b_eq := fun _ _ => rfl
    η_eq := rfl
    k1b := hs.k1b
    hasU := fun _ _ => rfl
    k1c := hs.k1c
    k1d := hs.k1d
    unitsAt := hs.unitsAt
    compl := hs.compl
    filt := hs.filt
    jumps := hs.jumps
    mem := hs.mem
    locReg := hs.locReg
    pa1b := hs.pa1b
    equiv := hs.equiv
    span := hs.span
    ind := hs.ind
    flDef := fun _ _ _ => Iff.rfl
    locLIs := hs.locLIs
    lamInd := hs.lamInd
    lamSpan := hs.lamSpan
    uIs := fun _ _ _ => Iff.rfl }

section ThetaShiftProofs

variable {T₁ T₂ : LocLat G Qp LL O} {C₁ : Coord W (baseIdOf hR) T₁} {C₂ : Coord W (baseIdOf hR) T₂}
  {F : LatHom T₁.L T₂.L} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ} {κ₁ κ₂ : PowerSeries O} {r₁ r₂ : ℕ}
  {lam₁ : Fin r₁ → Dc W T₁ c} {lam₂ : Fin r₂ → Dc W T₂ c}

structure MapSteps (hC : CoordHom C₁ C₂ F)
    (Hy₁ : LvHyp Lb hR uZ ιZ C₁ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₁ lam₁)
    (Hy₂ : LvHyp Lb hR uZ ιZ C₂ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₂ lam₂)
    (Mh : MapHyp hR uZ ιZ F c) (j M g η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)
    (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V) (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O)) : Prop where

  locComm : ∀ s < ell, ∀ (w : C₁.V)
    (hw : w ∈ (latOf C₁).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell))
    (hw' : (latHomOf hC).f w ∈ (latOf C₂).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell)),
    prEOf Mh (hΔ₁ := Hy₁.delta) (hΔ₂ := Hy₂.delta) ell
        ((lvData Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s ⟨w, hw⟩) =
      (lvData Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s ⟨(latHomOf hC).f w, hw'⟩

  loclComm : ∀ s < ell, ∀ y : Fin r₁ → PowerSeries O,
    prEOf Mh (hΔ₁ := Hy₁.delta) (hΔ₂ := Hy₂.delta) ell
        ((lvData Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).locL s y) =
      (lvData Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).locL s (E.extL P y)

  mapFl : ∀ s < ell, ∀ e ∈ (lvData Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).Fl s,
    prEOf Mh (hΔ₁ := Hy₁.delta) (hΔ₂ := Hy₂.delta) ell e ∈
      (lvData Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).Fl s

  cMap : ∀ s < ell, kind s = Kind.up → Formalism.ExponentWindows.E.CMap (UL lam₁ kind b η s) (UL lam₂ kind b η s) P

  prLIs : ∀ k, (latHomOf hC).f (e₁ k) -
      ∑ l, PowerSeries.C (LinearMap.toMatrix' P l k) • e₂ l ∈
    E.sm (PowerSeries.X : PowerSeries O) ((latOf C₂).N (c - (ell : ZMod n)))

def levelMapOf (hC : CoordHom C₁ C₂ F)
    (Hy₁ : LvHyp Lb hR uZ ιZ C₁ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₁ lam₁)
    (Hy₂ : LvHyp Lb hR uZ ιZ C₂ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₂ lam₂)
    (Mh : MapHyp hR uZ ιZ F c) (j M g η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)
    (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V) (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O))
    (ms : MapSteps hC Hy₁ Hy₂ Mh j M g η kind b e₁ e₂ P) :
    E.LevelMap (latHomOf hC) (lvData Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η)
      (lvData Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η) where
  prE := prEOf Mh ell
  prL := P
  loc_comm := ms.locComm
  locL_comm := ms.loclComm

theorem arc_of_steps (hC : CoordHom C₁ C₂ F)
    (Hy₁ : LvHyp Lb hR uZ ιZ C₁ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₁ lam₁)
    (Hy₂ : LvHyp Lb hR uZ ιZ C₂ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₂ lam₂)
    (Mh : MapHyp hR uZ ιZ F c) (ϖ : O) (j M g G₀ Sz η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)
    (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V) (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O))
    (ls₁ : LevSteps Hy₁ ϖ j M g G₀ Sz η kind b e₁) (ls₂ : LevSteps Hy₂ ϖ j M g G₀ Sz η kind b e₂)
    (ms : MapSteps hC Hy₁ Hy₂ Mh j M g η kind b e₁ e₂ P) :
    E.FinalArc (latHomOf hC) c ell H LL (KsW W) (DeltaT PD.p) ϖ (W.χΓ W.gam) j M g G₀ Sz η kind b :=
  ⟨{ r₁ := r₁
     r₂ := r₂
     S₁ := lvData Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η
     S₂ := lvData Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η
     m := levelMapOf hC Hy₁ Hy₂ Mh j M g η kind b e₁ e₂ P ms
     D₁ := Dc W T₁ c
     D₂ := Dc W T₂ c
     R₁ := lvModel Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η
     R₂ := lvModel Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η
     e₁ := e₁
     e₂ := e₂
     lam₁ := lam₁
     lam₂ := lam₂
     U₁ := UL lam₁ kind b η
     U₂ := UL lam₂ kind b η },
   { lev₁ := finalLevels_of Hy₁ ϖ j M g G₀ Sz η kind b e₁ ls₁
     lev₂ := finalLevels_of Hy₂ ϖ j M g G₀ Sz η kind b e₂ ls₂
     mapFl := ms.mapFl
     cMap := ms.cMap
     prLIs := ms.prLIs }⟩

end ThetaShiftProofs

end Formalism.MainNotions.N.Ln03
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.FinalLevelsOf =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOmega =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOmega", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]

variable {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

variable {W : LocWach PD LL O v n}

theorem Pf_HOmega_pow_card (δ : W.Gam) (hδ : δ ∈ W.DelF) : δ ^ W.DelF.card = 1 := by
  have hH : ∀ g : W.Gam, g ∈ CommGroup.torsion W.Gam ↔ g ∈ W.DelF := by
    intro g
    rw [W.DelF_def, CommGroup.mem_torsion, isOfFinOrder_iff_pow_eq_one]
  have hset : ((CommGroup.torsion W.Gam : Subgroup W.Gam) : Set W.Gam) = (W.DelF : Set W.Gam) := by
    ext g
    simp only [SetLike.mem_coe]
    exact hH g
  have hcardH : Nat.card (CommGroup.torsion W.Gam) = W.DelF.card := by
    rw [← SetLike.coe_sort_coe, hset, Nat.card_coe_set_eq, Set.ncard_coe_finset]
  have hd := orderOf_dvd_natCard (⟨δ, (hH δ).2 hδ⟩ : CommGroup.torsion W.Gam)
  rw [Subgroup.orderOf_mk, hcardH] at hd
  exact orderOf_dvd_iff_pow_eq_one.1 hd

theorem hω_holds (hcard : W.DelF.card = PD.p - 1) (hinj : Function.Injective (algebraMap O LL))
    (ιZ : ℤ_[PD.p] →+* O) :
    ∀ ω : DeltaT PD.p, ∃ g ∈ W.DelF, algebraMap O LL (W.χΓ g : O) = algebraMap O LL (ιZ ω.1) := by
  classical
  intro ω
  have hpos : 0 < PD.p - 1 := by have := PD.hp.two_le; omega
  set f : W.Gam → LL := fun g => algebraMap O LL (W.χΓ g : O) with hf
  have hAcard : (W.DelF.image f).card = PD.p - 1 := by
    rw [Finset.card_image_of_injOn, hcard]
    intro x _ y _ hxy
    apply W.χΓ_inj
    apply Units.ext
    exact hinj hxy
  have hARt : W.DelF.image f ⊆ Polynomial.nthRootsFinset (PD.p - 1) (1 : LL) := by
    intro x hx
    obtain ⟨g, hg, rfl⟩ := Finset.mem_image.1 hx
    rw [Polynomial.mem_nthRootsFinset hpos]
    have h1 : g ^ (PD.p - 1) = 1 := hcard ▸ Pf_HOmega_pow_card g hg
    simp only [hf]
    rw [← map_pow, ← Units.val_pow_eq_pow_val, ← map_pow, h1, map_one, Units.val_one, map_one]
  have hRt : (Polynomial.nthRootsFinset (PD.p - 1) (1 : LL)).card ≤ PD.p - 1 := by
    unfold Polynomial.nthRootsFinset
    exact (Multiset.toFinset_card_le _).trans (Polynomial.card_nthRoots _ _)
  have hEq : W.DelF.image f = Polynomial.nthRootsFinset (PD.p - 1) (1 : LL) :=
    Finset.eq_of_subset_of_card_le hARt (by omega)
  have hωR : algebraMap O LL (ιZ ω.1) ∈ Polynomial.nthRootsFinset (PD.p - 1) (1 : LL) := by
    rw [Polynomial.mem_nthRootsFinset hpos, ← map_pow, ← map_pow, ← Units.val_pow_eq_pow_val, ω.2,
      Units.val_one, map_one, map_one]
  rw [← hEq] at hωR
  obtain ⟨g, hg, hgω⟩ := Finset.mem_image.1 hωR
  exact ⟨g, hg, hgω⟩

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOmega =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOnil =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOnil", "h": "module\n\npublic import Formalism.WeaklyAdmissibleFiltrations.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.DistinguishedUnitIdeals.ExistsConstOfInvariantMod\nimport Formalism.DistinguishedUnitIdeals.Statement\nimport Formalism.SharpRestriction.LevelLetterCocycles.ArcParametersShiftInvariant\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    [Fintype (K →ₐ[Qp] LL)]

theorem hOnil_of [IsDomain O] [IsDiscreteValuationRing O] (hℓ0 : ((PD.p : ℕ) : O) ≠ 0) :
    ∀ c ∈ IsLocalRing.maximalIdeal O, ∃ (N : ℕ) (d : O), c ^ N = ((PD.p : ℕ) : O) * d := by
  intro c hc
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨e, u, hu⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hℓ0 hϖ
  by_cases hc0 : c = 0
  · exact ⟨1, 0, by simp [hc0]⟩
  obtain ⟨k, w, hw⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hc0 hϖ
  have hk : 1 ≤ k := by
    rcases Nat.eq_zero_or_pos k with h | h
    · exfalso
      rw [h, pow_zero, mul_one] at hw
      exact (IsLocalRing.mem_maximalIdeal _).1 hc (hw ▸ w.isUnit)
    · exact h
  obtain ⟨j, hj⟩ : ∃ j, k * e = e + j := ⟨k * e - e, by
    have : e ≤ k * e := Nat.le_mul_of_pos_left e hk
    omega⟩
  refine ⟨e, ↑u⁻¹ * ↑w ^ e * ϖ ^ j, ?_⟩
  have h1 : (↑w * ϖ ^ k) ^ e = (↑w : O) ^ e * ϖ ^ e * ϖ ^ j := by
    rw [mul_pow, ← pow_mul, hj, pow_add, mul_assoc]
  have hu1 : (↑u : O) * ↑u⁻¹ = 1 := Units.mul_inv u
  rw [hw, hu, h1]
  linear_combination (-((↑w : O) ^ e * ϖ ^ e * ϖ ^ j)) * hu1

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOnil =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHuZ =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHuZ", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

theorem Pf_HuZ_v_dvd (W : LocWach PD LL O v n) (hv_int : ∀ x : O, 0 ≤ v (algebraMap O LL x))
    (k : ℕ) (z : ℤ_[PD.p]) (hz : (PD.p : ℤ_[PD.p]) ^ k ∣ z) :
    (k : WithTop ℚ) ≤ v (algebraMap O LL (ιZ z)) := by
  obtain ⟨y, rfl⟩ := hz
  rw [map_mul, map_pow, map_natCast, map_mul, map_pow, map_natCast, AddValuation.map_mul,
    AddValuation.map_pow, W.v_l, nsmul_one]
  exact le_add_of_nonneg_right (hv_int _)

theorem hv_holds (W : LocWach PD LL O v n) (hv_int : ∀ x : O, 0 ≤ v (algebraMap O LL x)) :
    ∀ (s : ℕ) (z : ℤ_[PD.p]), (PD.p : ℤ_[PD.p]) ^ (s + 1) ∣ z →
      ((s + 1 : ℕ) : WithTop ℚ) ≤ v (algebraMap O LL (ιZ z)) :=
  fun s z hz => Pf_HuZ_v_dvd W hv_int (s + 1) z hz

theorem huZ_holds (hu : ιZ uZ = (W.χΓ W.gam : O)) (hv_int : ∀ x : O, 0 ≤ v (algebraMap O LL x)) :
    ∀ k : ℕ, (k : WithTop ℚ) ≤
      v (algebraMap O LL (W.χΓ W.gam : O) - ((PadicInt.toZModPow k (uZ : ℤ_[PD.p])).val : LL)) := by
  intro k
  have : NeZero (PD.p ^ k) := ⟨pow_ne_zero _ (Fact.out : PD.p.Prime).ne_zero⟩
  have hdvd : (PD.p : ℤ_[PD.p]) ^ k ∣
      (uZ : ℤ_[PD.p]) - ((PadicInt.toZModPow k (uZ : ℤ_[PD.p])).val : ℤ_[PD.p]) := by
    rw [← Ideal.mem_span_singleton, ← PadicInt.ker_toZModPow, RingHom.mem_ker, map_sub, map_natCast,
      ZMod.natCast_zmod_val, sub_self]
  have h := Pf_HuZ_v_dvd (ιZ := ιZ) W hv_int k _ hdvd
  rwa [map_sub, map_natCast, hu, map_sub, map_natCast] at h

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHuZ =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfJumpsLet =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfJumpsLet", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfJumpsBdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.DistinguishedUnitIdeals.ExistsConstOfInvariantMod\nimport Formalism.DistinguishedUnitIdeals.Statement\nimport Formalism.SharpRestriction.LevelLetterCocycles.ArcParametersShiftInvariant\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}

theorem jumpsLet_of_previous_form {T : LocLat G Qp LL O} {M h : ZMod n → ℕ}
    (hJ : Formalism.MainNotions.LiftingTheory.JumpsLet W T M h) : Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T M h :=
  fun τ i hτ => hJ i τ hτ

theorem jumps_bounded_crystalline [Fintype (K →ₐ[Qp] LL)] (hDR : Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris PD LL)
    (hK : Function.Bijective (algebraMap K₀ K)) :
    ∀ T : LocLat G Qp LL O, CrysLat PD T → ∃ M h : ZMod n → ℕ, Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T M h := by
  intro T hT
  obtain ⟨M, h, hJ⟩ := jumpsBdd_holds (W := W) hDR hK T hT
  exact ⟨M, h, jumpsLet_of_previous_form hJ⟩

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfJumpsLet =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLocReg =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLocReg", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.FrobeniusCoeffSupportBddBelow\nimport Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

namespace LocReg

theorem hQ (hs1 : W.s = 1) (hR : Ring9 W) : ∃ u : (LetA O n)ˣ, W.Q = (u : LetA O n) * qP W := by
  obtain ⟨u, hu⟩ := hR.2.2.2.2.1
  refine ⟨u, ?_⟩
  have hQq : W.Q = W.q := by
    show (W.φA ^ (W.s - 1)) W.q = W.q
    rw [hs1, Nat.sub_self, pow_zero]
    rfl
  rw [hQq, hu]
  congr 1
  funext i
  simp [Formalism.MainNotions.DeltaInvariantLattices.Eat, qP]

end LocReg

theorem locReg_holds {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ}
    {H : ℕ → ℕ} {κ : PowerSeries O} {r : ℕ} {lam : Fin r → Dc W T c}
    (Hy : LvHyp Lb hR uZ ιZ C c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ lam) (j M g η : ℕ)
    (kind : ℕ → Kind) (b : ℕ → ℕ) (m : ℕ)
    (hκ : κ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m)
    (hk1b : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).K1b)
    (hUnits : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).UnitsAt)
    (hP5 : ∀ i, (latOf C).P5M i m)
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (levB_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) •
            φVB PD (LL := LL) (V := T.V) (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (lev_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (hp0 : (PD.p : LL) ≠ 0)
    (hs1 : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T) :
    (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).LocReg := by
  intro s hs w
  have hW : ∀ z ∈ (latOf C).pull (c - (ell : ZMod n)) ell,
      z ∈ (latOf C).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) := fun z hz =>
    Submodule.mem_comap.2 (Submodule.smul_mem _ _ hz)
  have key : ∀ (z : C.V) (hz : z ∈ (latOf C).pull (c - (ell : ZMod n)) ell),
      prL s ((lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s ⟨z, hW z hz⟩) ∈
        Xi (KsW W s) (Tw (LL := LL) (D := Dc W T c) 0) := by
    intro z hz
    induction hz using Submodule.span_induction with
    | mem z hz0 =>
      obtain ⟨y, hy, rfl⟩ := hz0
      refine Formalism.ExponentWindows.G.SlopeTestRemainingChoices.mem_Xi.2 fun k => ?_
      rw [level_expansion_d_direct Hy j M g η kind b m hκ hk1b hUnits hP5 (LocReg.hQ hs1 hR) levN_eq levB_φ lev_φ hp0
        y hy ⟨_, hW _ (Submodule.subset_span ⟨y, hy, rfl⟩)⟩ rfl s hs k]
      by_cases hk : 0 ≤ k
      · exact Submodule.tmul_mem_baseChange_of_mem _ (by simp [Tw, hk])
      · rw [frobeniusCoeff_low_eq_zero Lb T c ell _ 0
          (fun k' hk' => levelExpansion_neg_eq_zero levN_eq hs1 T hP4 _ _ k' hk') k (not_le.1 hk), TensorProduct.tmul_zero]
        exact Submodule.zero_mem _
    | zero =>
      have e : (⟨0, hW 0 (Submodule.zero_mem _)⟩ :
          ↥((latOf C).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell))) = 0 := rfl
      rw [e, map_zero]
      convert zero_mem (Xi (KsW W s) (Tw (LL := LL) (D := Dc W T c) 0)) using 1
      exact map_zero (prL (hΔ := Hy.delta) (ell := ell) s)
    | add x y hx hy ihx ihy =>
      have e : (⟨x + y, hW _ (Submodule.add_mem _ hx hy)⟩ :
          ↥((latOf C).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell))) =
          ⟨x, hW x hx⟩ + ⟨y, hW y hy⟩ := rfl
      rw [e, map_add (f := _)]
      convert add_mem ihx ihy using 1
      exact map_add (prL (hΔ := Hy.delta) (ell := ell) s) _ _
    | smul a x hx ih =>
      have e : (⟨a • x, hW _ (Submodule.smul_mem _ a hx)⟩ :
          ↥((latOf C).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell))) = a • ⟨x, hW x hx⟩ := rfl
      rw [e, LinearMap.map_smul]
      convert xi_module_structure LL (KsW W s) (Dc W T c) _ (tw_mono 0) (rhoL hR c s a) _ ih using 1
      exact prL_smul (hΔ := Hy.delta) s a _
  have hw' : Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • (w : C.V) ∈ (latOf C).pull (c - (ell : ZMod n)) ell :=
    Submodule.mem_comap.1 w.2
  have e : Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s w =
      (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s
        ⟨Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • (w : C.V), hW _ hw'⟩ := by
    rw [← LinearMap.map_smul]
    rfl
  show prL s (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s w) ∈ _
  rw [e]
  exact key _ hw'

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLocReg =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvDelta =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvDelta", "h": "module\n\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvEquiv\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.ThmEFinal\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03

section Graded

variable {LL Ks : Type} [Field LL] [CommRing Ks] [Algebra LL Ks]

theorem grdB_zero' (τ : Ks ≃ₐ[LL] Ks) (a : LLˣ) : grdB τ a 0 = 0 := by
  ext n
  show algebraMap LL Ks ((a ^ n : LLˣ) : LL) * τ ((0 : HahnSeries ℤ Ks).coeff n) = (0 : HahnSeries ℤ Ks).coeff n
  simp

theorem grdB_one' (τ : Ks ≃ₐ[LL] Ks) (a : LLˣ) : grdB τ a 1 = 1 := by
  ext n
  show algebraMap LL Ks ((a ^ n : LLˣ) : LL) * τ ((1 : HahnSeries ℤ Ks).coeff n) = (1 : HahnSeries ℤ Ks).coeff n
  by_cases h : n = 0
  · subst h
    simp
  · simp [HahnSeries.coeff_one, h]

theorem grdB_mul' (τ : Ks ≃ₐ[LL] Ks) (a : LLˣ) (x y : HahnSeries ℤ Ks) :
    grdB τ a (x * y) = grdB τ a x * grdB τ a y := by
  apply Formalism.MainNotions.N.Ln03.Pf.Pf_LvEquiv_grdB_mul

theorem grdB_ringInverse (τ : Ks ≃ₐ[LL] Ks) (a : LLˣ) {X : HahnSeries ℤ Ks} (hX : grdB τ a X = X) :
    grdB τ a (Ring.inverse X) = Ring.inverse X := by
  by_cases hu : IsUnit X
  · obtain ⟨u, rfl⟩ := hu
    rw [Ring.inverse_unit]
    have h1 : grdB τ a (↑u⁻¹ : HahnSeries ℤ Ks) * ↑u = 1 := by
      conv_lhs => rw [← hX]
      rw [← grdB_mul', Units.inv_mul, grdB_one']
    calc grdB τ a (↑u⁻¹ : HahnSeries ℤ Ks)
        = grdB τ a (↑u⁻¹ : HahnSeries ℤ Ks) * (↑u * ↑u⁻¹) := by rw [Units.mul_inv, mul_one]
      _ = (grdB τ a (↑u⁻¹ : HahnSeries ℤ Ks) * ↑u) * ↑u⁻¹ := by ring
      _ = ↑u⁻¹ := by rw [h1, one_mul]
  · rw [Ring.inverse_non_unit _ hu, grdB_zero']

end Graded

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]

variable {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]

theorem val_sub_toZModPow (W : LocWach PD LL O v n) (valRing : ValRing O v) (ιZ : ℤ_[PD.p] →+* O)
    (ω : ℤ_[PD.p]) (N : ℕ) :
    ((N : ℕ) : WithTop ℚ) ≤
      v (algebraMap O LL (ιZ ω) - (((PadicInt.toZModPow N ω : ZMod (PD.p ^ N)).val : ℕ) : LL)) := by
  have : NeZero (PD.p ^ N) := ⟨pow_ne_zero _ PD.hp.ne_zero⟩
  have hk : ω - (((PadicInt.toZModPow N ω : ZMod (PD.p ^ N)).val : ℕ) : ℤ_[PD.p]) ∈
      RingHom.ker (PadicInt.toZModPow (p := PD.p) N) := by
    rw [RingHom.mem_ker, map_sub, map_natCast, ZMod.natCast_zmod_val, sub_self]
  rw [PadicInt.ker_toZModPow, Ideal.mem_span_singleton] at hk
  obtain ⟨y, hy⟩ := hk
  have e : algebraMap O LL (ιZ ω) - (((PadicInt.toZModPow N ω : ZMod (PD.p ^ N)).val : ℕ) : LL) =
      ((PD.p : ℕ) : LL) ^ N * algebraMap O LL (ιZ y) := by
    rw [← map_natCast (algebraMap O LL), ← map_natCast ιZ, ← map_sub, ← map_sub, hy, map_mul, map_mul,
      map_pow, map_pow, map_natCast, map_natCast]
  rw [e, AddValuation.map_mul, AddValuation.map_pow, W.v_l, nsmul_one]
  exact le_add_of_nonneg_right (valRing.2.2 _)

variable {W : LocWach PD LL O v n}

theorem delta_holds (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (c : ZMod n)
    (lev_Γ : ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ f : LetA O n,
      W.lev i ζ (W.γA g f) = PowerSeries.rescale (algebraMap O LL (W.χΓ g : O)) (W.lev i ζ' f))
    (hω : ∀ ω : DeltaT PD.p, ∃ g ∈ W.DelF, algebraMap O LL (W.χΓ g : O) = algebraMap O LL (ιZ ω.1))
    (valRing : ValRing O v) :
    DeltaRho hR uZ ιZ c := by
  intro s j a
  obtain ⟨g, hg, hχ⟩ := hω j
  apply HahnSeries.ext
  funext i
  by_cases hi : i < 0
  · show algebraMap LL (KsW W s) ((((levW W uZ ιZ s).a j) ^ i : LLˣ) : LL) *
        ((levW W uZ ιZ s).τ j) ((HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)).coeff i) =
      (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)).coeff i
    rw [_root_.Formalism.ExponentWindows.G.BR.ofPS_coeff_neg _ hi, map_zero, mul_zero]
  · obtain ⟨k, rfl⟩ := Int.eq_ofNat_of_zero_le (not_lt.mp hi)
    show algebraMap LL (KsW W s) ((((levW W uZ ιZ s).a j) ^ (k : ℤ) : LLˣ) : LL) *
        ((levW W uZ ιZ s).τ j) ((HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)).coeff (k : ℤ)) =
      (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)).coeff (k : ℤ)
    rw [HahnSeries.ofPowerSeries_apply_coeff]
    have hc : ∀ ζ' : Rs LL PD.p s, (PowerSeries.coeff k (rhoL hR c s a)) ζ' =
        PowerSeries.coeff k (W.lev c (ζ' : LL) ((baseIdOf hR).d a)) := fun ζ' => by
      show Pi.evalRingHom (fun _ => LL) ζ' (PowerSeries.coeff k (rhoL hR c s a)) = _
      rw [← PowerSeries.coeff_map, map_eval_rhoL]
      rfl
    funext ζ
    change ((((levW W uZ ιZ s).a j) ^ (k : ℤ) : LLˣ) : LL) *
      (PowerSeries.coeff k (rhoL hR c s a)) (powR LL PD.p s (redU PD.p s j.1) ζ) =
      (PowerSeries.coeff k (rhoL hR c s a)) ζ
    rw [hc, hc]
    have hprim : IsPrimitiveRoot (ζ : LL) (PD.p ^ (s + 1)) := (mem_primitiveRoots (pos_pow PD.p s)).1 ζ.2
    have hv := val_sub_toZModPow W valRing ιZ (j.1 : ℤ_[PD.p]) (s + 1)
    rw [← hχ] at hv
    have hL := lev_Γ g c ζ _ (s + 1) _ hprim hv rfl ((baseIdOf hR).d a)
    rw [BaseId.γA_Δ _ g hg] at hL
    rw [hL, PowerSeries.coeff_rescale, hχ]
    congr 1

theorem loclInv_holds (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (T : LocLat G Qp LL O)
    (c : ZMod n) {r : ℕ} (Λ : PowerSeries O) (lam : Fin r → Dc W T c) (hΔ : DeltaRho hR uZ ιZ c) :
    LocLInv hR uZ ιZ T c Λ lam := by
  intro s y j
  rw [Level.δ]
  unfold locLF

  rw [graded_semilinear_holds, grdB_ringInverse _ _ (hΔ s j Λ), map_sum]
  congr 1
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [graded_semilinear_holds, hΔ s j (y k), SlopeTestRemainingChoices.grd_cst]

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvDelta =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvGam =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvGam", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Cast.SetInterval\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G Formalism.MainNotions.N.Ln03 TensorProduct

section GrdComm

variable {LL Ks D : Type} [Field LL] [CommRing Ks] [Algebra LL Ks] [AddCommGroup D] [Module LL D]

theorem Pf_LvGam_grd_comm (σ τ : Ks ≃ₐ[LL] Ks) (a b : LLˣ) (h : ∀ x, σ (τ x) = τ (σ x))
    (f : Amb LL Ks D) : grd τ b (grd σ a f) = grd σ a (grd τ b f) := by
  apply HahnModule.ext
  funext i
  change cf (grd τ b (grd σ a f)) i = cf (grd σ a (grd τ b f)) i
  rw [SlopeTestRemainingChoices.cf_grd, SlopeTestRemainingChoices.cf_grd, SlopeTestRemainingChoices.cf_grd, SlopeTestRemainingChoices.cf_grd, map_smul, map_smul, smul_smul, smul_smul,
    SlopeTestRemainingChoices.tD_comm σ τ h, mul_comm]

end GrdComm

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}

theorem Pf_LvGam_στ (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (s : ℕ) (j : DeltaT PD.p) (x : KsW W s) :
    (levW W uZ ιZ s).σ ((levW W uZ ιZ s).τ j x) = (levW W uZ ιZ s).τ j ((levW W uZ ιZ s).σ x) := by
  funext ζ
  show x (powR LL PD.p s (redU PD.p s j.1) (powR LL PD.p s (redU PD.p s uZ) ζ)) =
    x (powR LL PD.p s (redU PD.p s uZ) (powR LL PD.p s (redU PD.p s j.1) ζ))
  rw [powR_powR, powR_powR, mul_comm]

theorem gamInv_holds (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (T : LocLat G Qp LL O) (c : ZMod n) :
    ∀ (s : ℕ) (f : Amb LL (KsW W s) (Dc W T c)), (levW W uZ ιZ s).Inv f →
      (levW W uZ ιZ s).Inv ((levW W uZ ιZ s).γ f) := by
  intro s f hf j
  show grd ((levW W uZ ιZ s).τ j) ((levW W uZ ιZ s).a j) (grd (levW W uZ ιZ s).σ (levW W uZ ιZ s).u f) =
    grd (levW W uZ ιZ s).σ (levW W uZ ιZ s).u f
  rw [Pf_LvGam_grd_comm _ _ _ _ (Pf_LvGam_στ uZ ιZ s j)]
  exact congrArg (grd (levW W uZ ιZ s).σ (levW W uZ ιZ s).u) (hf j)

theorem Pf_LvGam_coeff_neg {Ks : Type} [CommRing Ks] (x : PowerSeries Ks) (k : ℕ) :
    (HahnSeries.ofPowerSeries ℤ Ks x).coeff (Int.negSucc k) = 0 := by
  rw [HahnSeries.ofPowerSeries_apply, HahnSeries.embDomain_of_notMem_range]
  simp

theorem gamRho_holds (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (c : ZMod n)
    (lev_Γ : ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ f : LetA O n,
      W.lev i ζ (W.γA g f) = PowerSeries.rescale (algebraMap O LL (W.χΓ g : O)) (W.lev i ζ' f))
    (hK : W.gamK = W.gam)
    (huZ : ∀ k : ℕ, (k : WithTop ℚ) ≤
      v (algebraMap O LL (W.χΓ W.gam : O) - ((PadicInt.toZModPow k (uZ : ℤ_[PD.p])).val : LL))) :
    ∀ (s : ℕ) (a : PowerSeries O),
      grdB (levW W uZ ιZ s).σ (levW W uZ ιZ s).u (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)) =
        HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s ((baseIdOf hR).Bs.γ a)) := by
  intro s a
  refine HahnSeries.ext (funext fun i => ?_)
  change algebraMap LL (KsW W s) (((levW W uZ ιZ s).u ^ i : LLˣ) : LL) *
    (levW W uZ ιZ s).σ ((HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s a)).coeff i) = _
  rcases i with k | k
  · rw [Int.ofNat_eq_natCast, HahnSeries.ofPowerSeries_apply_coeff, HahnSeries.ofPowerSeries_apply_coeff]
    funext ζ
    have hprim : IsPrimitiveRoot (ζ : LL) (PD.p ^ (s + 1)) :=
      (mem_primitiveRoots (pos_pow PD.p s)).1 ζ.2
    have hv : ((s + 1 : ℕ) : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ W.gamK : O) -
        (((redU PD.p s uZ : (ZMod (PD.p ^ (s + 1)))ˣ) : ZMod (PD.p ^ (s + 1))).val : LL)) := by
      rw [hK]
      exact huZ (s + 1)
    have hL := lev_Γ W.gamK c ζ ((powR LL PD.p s (redU PD.p s uZ) ζ : Rs LL PD.p s) : LL) (s + 1) _
      hprim hv rfl (fun _ => (baseIdOf hR).ι a)
    have hR1 : PowerSeries.coeff k (rhoL hR c s ((baseIdOf hR).Bs.γ a)) ζ =
        PowerSeries.coeff k (W.lev c ζ (W.γA W.gamK (fun _ => (baseIdOf hR).ι a))) := by
      rw [rhoL, RingHom.comp_apply, coeff_psPi]
      show PowerSeries.coeff k (W.lev c ζ (fun _ => (baseIdOf hR).ι ((baseIdOf hR).Bs.γ a))) = _
      rw [(baseIdOf hR).ι_γ a]
      rfl
    have hL1 : PowerSeries.coeff k (rhoL hR c s a) (powR LL PD.p s (redU PD.p s uZ) ζ) =
        PowerSeries.coeff k (W.lev c ((powR LL PD.p s (redU PD.p s uZ) ζ : Rs LL PD.p s) : LL)
          (fun _ => (baseIdOf hR).ι a)) := by
      rw [rhoL, RingHom.comp_apply, coeff_psPi]
      rfl
    rw [hR1, hL, PowerSeries.coeff_rescale, ← hL1, hK]
    show (((levW W uZ ιZ s).u ^ (k : ℤ) : LLˣ) : LL) *
      PowerSeries.coeff k (rhoL hR c s a) (powR LL PD.p s (redU PD.p s uZ) ζ) = _
    rw [zpow_natCast, Units.val_pow_eq_pow_val]
    rfl
  · rw [Pf_LvGam_coeff_neg, Pf_LvGam_coeff_neg, map_zero, mul_zero]

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvGam =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvJumps =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvJumps", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExponentWindowSubsetShort\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G Formalism.MainNotions.N.Ln03 TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}

section Jumps

variable {T : LocLat G Qp LL O}

theorem pfLvJumps_act (g : G) (z : T.V ⊗[Qp] B) :
    actVdR PD T.ρ g (ιV PD (LL := LL) (V := T.V) z) = ιV PD (LL := LL) (V := T.V) (actVB PD T.ρ g z) := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul x b => simp [actVdR, actVB, ιV, PD.ι_comm]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), map_add (f := _), map_add (f := _), hx, hy]

theorem pfLvJumps_mul (c : K₀) (z : T.V ⊗[Qp] B) :
    mulVdR (K := K) (BdR := BdR) (V := T.V) (LL := LL) (algebraMap K₀ K c) (ιV PD (LL := LL) (V := T.V) z) =
      ιV PD (LL := LL) (V := T.V) (mulVB (K₀ := K₀) (B := B) (V := T.V) (LL := LL) c z) := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul x b =>
    simp [mulVdR, mulVB, ιV, map_mul, AlgHom.commutes, IsScalarTower.algebraMap_apply K₀ K BdR]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), map_add (f := _), map_add (f := _), hx, hy]

theorem pfLvJumps_dcrisL (hK : Function.Surjective (algebraMap K₀ K)) (τ₀ : K₀ →ₐ[Qp] LL)
    (τ : K →ₐ[Qp] LL) (hτ : τ.comp (IsScalarTower.toAlgHom Qp K₀ K) = τ₀) (z : T.V ⊗[Qp] B)
    (hz : z ∈ DcrisL PD T.ρ τ₀) : ιV PD (LL := LL) (V := T.V) z ∈ DdRE PD T.ρ τ := by
  rw [DcrisL, Submodule.mem_inf] at hz
  obtain ⟨hz1, hz2⟩ := hz
  simp only [Dcris, Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.id_apply,
    sub_eq_zero] at hz1
  simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply,
    LinearMap.id_apply, sub_eq_zero] at hz2
  rw [DdRE, Submodule.mem_inf]
  refine ⟨?_, ?_⟩
  · simp only [DdR, Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.id_apply,
      sub_eq_zero]
    intro g
    rw [pfLvJumps_act, hz1 g]
  · simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply,
      LinearMap.id_apply, sub_eq_zero]
    intro c
    obtain ⟨c', rfl⟩ := hK c
    have hτc : τ (algebraMap K₀ K c') = τ₀ c' := by
      rw [← hτ]
      rfl
    rw [pfLvJumps_mul, hz2 c', map_smul, hτc]

theorem pfLvJumps_fil (hK : Function.Surjective (algebraMap K₀ K)) (τ₀ : K₀ →ₐ[Qp] LL)
    (τ : K →ₐ[Qp] LL) (hτ : τ.comp (IsScalarTower.toAlgHom Qp K₀ K) = τ₀) (a : ℤ)
    (h : FildR PD T.ρ τ (a + 1) = FildR PD T.ρ τ a) :
    FilCris PD T.ρ a ⊓ DcrisL PD T.ρ τ₀ = FilCris PD T.ρ (a + 1) ⊓ DcrisL PD T.ρ τ₀ := by
  have key : ∀ b b' : ℤ, FildR PD T.ρ τ b ≤ FildR PD T.ρ τ b' →
      FilCris PD T.ρ b ⊓ DcrisL PD T.ρ τ₀ ≤ FilCris PD T.ρ b' ⊓ DcrisL PD T.ρ τ₀ := by
    intro b b' hbb x hx
    rw [Submodule.mem_inf, FilCris, Submodule.mem_inf, Submodule.mem_comap] at hx
    obtain ⟨⟨hx1, hx2⟩, hx3⟩ := hx
    have hd : ιV PD (LL := LL) (V := T.V) x ∈ FildR PD T.ρ τ b :=
      (Submodule.mem_inf).2 ⟨pfLvJumps_dcrisL hK τ₀ τ hτ x hx3, hx2⟩
    have hd' := ((Submodule.mem_inf).1 (hbb hd)).2
    exact (Submodule.mem_inf).2 ⟨(Submodule.mem_inf).2 ⟨hx1, hd'⟩, hx3⟩
  exact le_antisymm (key a (a + 1) h.ge) (key (a + 1) a h.le)

theorem pfLvJumps_filD (c : ZMod n) (s : ℕ) (u : ℤ)
    (h : FilCris PD T.ρ u ⊓ DcrisL PD T.ρ (W.emb (c - (s : ZMod n))) =
      FilCris PD T.ρ (u + 1) ⊓ DcrisL PD T.ρ (W.emb (c - (s : ZMod n)))) :
    FilD W T c s u = FilD W T c s (u + 1) := by
  unfold FilD FilLev
  rw [h]

theorem pfLvJumps_over (hK : Function.Surjective (algebraMap K₀ K)) (τ₀ : K₀ →ₐ[Qp] LL) :
    ∃ τ : K →ₐ[Qp] LL, τ.comp (IsScalarTower.toAlgHom Qp K₀ K) = τ₀ := by
  let e : K₀ ≃ₐ[Qp] K :=
    AlgEquiv.ofBijective (IsScalarTower.toAlgHom Qp K₀ K) ⟨(algebraMap K₀ K).injective, hK⟩
  refine ⟨τ₀.comp e.symm.toAlgHom, ?_⟩
  ext c
  exact congrArg τ₀ (e.symm_apply_apply c)

theorem pfLvJumps_win (hK : Function.Surjective (algebraMap K₀ K)) (G₀ Sz η : ℕ) (ty : ZMod n → LT)
    (hJ : KindJumps PD T W.emb G₀ Sz η ty) (c : ZMod n) (s : ℕ) (u : ℤ)
    (hu : FilD W T c s u ≠ FilD W T c s (u + 1)) : u ∈ (ty (c - (s : ZMod n))).win G₀ Sz η := by
  obtain ⟨τ, hτ⟩ := pfLvJumps_over hK (W.emb (c - (s : ZMod n)))
  refine hJ (c - (s : ZMod n)) τ hτ u ?_
  intro h
  exact hu (pfLvJumps_filD c s u (pfLvJumps_fil hK _ τ hτ u h))

theorem jumps_holds (hK : Function.Surjective (algebraMap K₀ K)) (c : ZMod n) (ell : ℕ)
    (G₀ Sz η : ℕ) (ty : ZMod n → LT) (hJ : KindJumps PD T W.emb G₀ Sz η ty) :
    ∀ s < ell, Formalism.ExponentWindows.G.Jumps (E.kindAt (kdOf ty) c s) G₀ Sz η (E.sizeAt (bbOf ty) c s) (FilD W T c s) := by
  intro s _
  have hw := pfLvJumps_win hK G₀ Sz η ty hJ c s
  change Formalism.ExponentWindows.G.Jumps (kdOf ty (c - (s : ZMod n))) G₀ Sz η (bbOf ty (c - (s : ZMod n))) (FilD W T c s)
  cases h : ty (c - (s : ZMod n)) with
  | thin =>
    simp only [kdOf, h, Formalism.ExponentWindows.G.Jumps]
    intro u hu
    simpa [LT.win, h] using hw u hu
  | up b =>
    simp only [kdOf, bbOf, h, LT.size, Formalism.ExponentWindows.G.Jumps]
    intro u hu
    simpa [LT.win, h] using hw u hu
  | down b =>
    simp only [kdOf, bbOf, h, LT.size, Formalism.ExponentWindows.G.Jumps]
    intro u hu
    simpa [LT.win, h] using hw u hu

theorem jumps_holds_quot (hK : Function.Surjective (algebraMap K₀ K))
    (hQuot : ∀ (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L), CrysLat PD T₁ → CrysLat PD T₂ → F.Onto →
      ∀ (τ : K →ₐ[Qp] LL) (a : ℤ), IsJumpV PD T₂.ρ τ a → IsJumpV PD T₁.ρ τ a)
    {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L) (hc₁ : CrysLat PD T₁) (hc₂ : CrysLat PD T₂)
    (hon : F.Onto) (c : ZMod n) (ell : ℕ) (G₀ Sz η : ℕ) (ty : ZMod n → LT)
    (hJ : KindJumps PD T₁ W.emb G₀ Sz η ty) :
    ∀ s < ell, Formalism.ExponentWindows.G.Jumps (E.kindAt (kdOf ty) c s) G₀ Sz η (E.sizeAt (bbOf ty) c s)
      (FilD W T₂ c s) :=
  jumps_holds hK c ell G₀ Sz η ty fun i τ hτ a ha => hJ i τ hτ a (hQuot T₁ T₂ F hc₁ hc₂ hon τ a ha)

end Jumps

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvJumps =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapHyp =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapHyp", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03

section General

variable {LL Ks D₁ D₂ : Type} [Field LL] [CommRing Ks] [Algebra LL Ks] [AddCommGroup D₁]
  [Module LL D₁] [AddCommGroup D₂] [Module LL D₂]

theorem Pf_MapHyp_ambMap_coeff (g : Ks ⊗[LL] D₁ →ₗ[Ks] Ks ⊗[LL] D₂) (f : Amb LL Ks D₁) (k : ℤ) :
    ((HahnModule.of Ks).symm (ambMap g f)).coeff k = g (((HahnModule.of Ks).symm f).coeff k) :=
  rfl

theorem Pf_MapHyp_ambMap_smul (g : Ks ⊗[LL] D₁ →ₗ[Ks] Ks ⊗[LL] D₂) (x : HahnSeries ℤ Ks)
    (f : Amb LL Ks D₁) : ambMap g (x • f) = x • ambMap g f := by
  have hsupp : ((HahnModule.of Ks).symm (ambMap g f)).support ⊆
      ((HahnModule.of Ks).symm f).support := by
    intro k hk
    rw [HahnSeries.mem_support] at hk ⊢
    intro h0
    apply hk
    rw [Pf_MapHyp_ambMap_coeff, h0, map_zero]
  apply HahnModule.ext
  funext k

  rw [HahnModule.coeff_smul_right (y := ambMap g f) ((HahnModule.of Ks).symm f).isPWO_support hsupp,
  Pf_MapHyp_ambMap_coeff, HahnModule.coeff_smul, map_sum]
  refine Finset.sum_congr rfl fun ij _ => ?_
  rw [map_smul, Pf_MapHyp_ambMap_coeff]

theorem Pf_MapHyp_baseChange_tD (h : D₁ →ₗ[LL] D₂) (τ : Ks ≃ₐ[LL] Ks) (a : LL) (y : Ks ⊗[LL] D₁) :
    h.baseChange Ks (a • tD D₁ τ y) = a • tD D₂ τ (h.baseChange Ks y) := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul x d => simp [tD, LinearMap.baseChange_tmul, TensorProduct.smul_tmul']
  | add y y' hy hy' => simp only [map_add (f := _), smul_add, hy, hy']

theorem Pf_MapHyp_grd_ambMap (h : D₁ →ₗ[LL] D₂) (τ : Ks ≃ₐ[LL] Ks) (a : LLˣ) (f : Amb LL Ks D₁) :
    grd (D := D₂) τ a (ambMap (h.baseChange Ks) f) = ambMap (h.baseChange Ks) (grd (D := D₁) τ a f) := by
  apply HahnModule.ext
  funext i
  change ((a ^ i : LLˣ) : LL) • tD D₂ τ (h.baseChange Ks (cf f i)) =
    h.baseChange Ks (((a ^ i : LLˣ) : LL) • tD D₁ τ (cf f i))
  rw [Pf_MapHyp_baseChange_tD]

end General

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]

variable {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]

variable {W : LocWach PD LL O v n} {T₁ T₂ : LocLat G Qp LL O}
variable {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O} {c : ZMod n}

theorem memD_holds (W : LocWach PD LL O v n) (F : LatHom T₁.L T₂.L) (c : ZMod n) : MemD W F c := by
  intro x hx
  have hA : ∀ (g : G) (y : T₁.V ⊗[Qp] B),
      AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) (actVB PD T₁.ρ g y) =
        actVB PD T₂.ρ g (AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) y) := by
    intro g y
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul w b => simp [actVB, AlgebraTensorModule.map_tmul, F.equiv]
    | add y y' hy hy' => simp only [map_add (f := _), hy, hy']
  have hB : ∀ (c' : K₀) (y : T₁.V ⊗[Qp] B),
      AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B)
          (mulVB (K₀ := K₀) (B := B) (V := T₁.V) (LL := LL) c' y) =
        mulVB (K₀ := K₀) (B := B) (V := T₂.V) (LL := LL) c'
          (AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) y) := by
    intro c' y
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul w b => simp [mulVB, AlgebraTensorModule.map_tmul]
    | add y y' hy hy' => simp only [map_add (f := _), hy, hy']
  simp only [DcrisL, Dcris, Submodule.mem_inf, Submodule.mem_iInf, LinearMap.mem_ker,
    LinearMap.sub_apply, LinearMap.id_apply, LinearMap.smul_apply, sub_eq_zero] at hx ⊢
  exact ⟨fun g => by rw [← hA, hx.1 g], fun c' => by rw [← hB, hx.2 c', map_smul]⟩

theorem smul_holds {F : LatHom T₁.L T₂.L} (memD : MemD W F c) :
    ∀ (s : ℕ) (x : HahnSeries ℤ (KsW W s)) (f : Amb LL (KsW W s) (Dc W T₁ c)),
      ambF memD s (x • f) = x • ambF memD s f :=
  fun s x f => Pf_MapHyp_ambMap_smul ((dmapOf memD).baseChange (KsW W s)) x f

theorem inv_holds {F : LatHom T₁.L T₂.L} (memD : MemD W F c) :
    ∀ (s : ℕ) (f : Amb LL (KsW W s) (Dc W T₁ c)), (levW W uZ ιZ s).Inv f →
      (levW W uZ ιZ s).Inv (ambF memD s f) := by
  intro s f hf j
  have hj : (levW W uZ ιZ s).δ j f = f := hf j
  show (levW W uZ ιZ s).δ j (ambF memD s f) = ambF memD s f
  rw [Level.δ] at hj ⊢
  unfold ambF
  rw [Pf_MapHyp_grd_ambMap, hj]

theorem mapHyp_holds (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) (F : LatHom T₁.L T₂.L)
    (c : ZMod n) : MapHyp hR uZ ιZ F c :=
  ⟨memD_holds W F c, smul_holds (memD_holds W F c), inv_holds (memD_holds W F c)⟩

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapHyp =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLoc =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLoc", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

theorem Pf_MapLoc_ιV_inj (T : LocLat G Qp LL O) : Function.Injective (ιV PD (LL := LL) (V := T.V)) := by
  have h : ∀ y, ιV PD (LL := LL) (V := T.V) y =
      ((PD.ι.toLinearMap.restrictScalars Qp).lTensor T.V) y := fun y => by
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul x b => simp [ιV]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  have hi : Function.Injective (PD.ι.toLinearMap.restrictScalars Qp) := PD.ι_inj
  intro a b hab
  rw [h, h] at hab
  exact Module.Flat.lTensor_preserves_injective_linearMap _ hi hab

theorem Pf_MapLoc_ιV_map {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L) (y : T₁.V ⊗[Qp] B) :
    AlgebraTensorModule.map F.f (LinearMap.id : BdR →ₗ[Qp] BdR) (ιV PD (LL := LL) (V := T₁.V) y) =
      ιV PD (LL := LL) (V := T₂.V) (AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) y) := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul x b => simp [ιV]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem Pf_MapLoc_levB_map {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L)
    (crys₁ : IsCrys PD T₁.ρ) (crys₂ : IsCrys PD T₂.ρ)
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (i : ZMod n) (ζ : LL) (x : ↥(W.N T₁)) (hx : W.map F (x : W.DD T₁) ∈ W.N T₂) (k : ℤ) :
    Lb.levB T₂ i ζ ⟨W.map F (x : W.DD T₁), hx⟩ k =
      AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) (Lb.levB T₁ i ζ x k) := by
  apply Pf_MapLoc_ιV_inj (PD := PD) T₂
  rw [← levN_eq, W.levN_map F crys₁ crys₂ i ζ x hx k, levN_eq, Pf_MapLoc_ιV_map]

theorem Pf_MapLoc_toKsD_map (s : ℕ) {D₁ D₂ : Type} [AddCommGroup D₁] [Module LL D₁]
    [AddCommGroup D₂] [Module LL D₂] (g : D₁ →ₗ[LL] D₂) (f : Rs LL PD.p s → D₁) :
    g.baseChange (KsW W s) (toKsD W s D₁ f) = toKsD W s D₂ (fun ζ => g (f ζ)) := by
  classical
  obtain ⟨y, rfl⟩ := (TensorProduct.piScalarRight LL LL D₁ (Rs LL PD.p s)).surjective f
  have h1 : (fun ζ => g (TensorProduct.piScalarRight LL LL D₁ (Rs LL PD.p s) y ζ)) =
      TensorProduct.piScalarRight LL LL D₂ (Rs LL PD.p s) (g.rTensor _ y) := by
    induction y using TensorProduct.induction_on with
    | zero => funext ζ; simp
    | tmul x a => funext ζ; simp
    | add y y' hy hy' =>
      funext ζ
      have e1 := congrFun hy ζ
      have e2 := congrFun hy' ζ
      simp only [map_add (f := _), Pi.add_apply] at e1 e2 ⊢
      rw [e1, e2]
  simp only [toKsD, LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
    LinearEquiv.symm_apply_apply]
  rw [h1, LinearEquiv.symm_apply_apply]
  clear h1
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul x a => simp [LinearMap.baseChange_tmul]
  | add y y' hy hy' => simp only [map_add (f := _), hy, hy']

theorem Pf_MapLoc_ambF_expN (s : ℕ) {T₁ T₂ : LocLat G Qp LL O} {F : LatHom T₁.L T₂.L} {c : ZMod n}
    (h : MemD W F c) (x : ↥(W.N T₁)) (y : ↥(W.N T₂))
    (hxy : ∀ (ζ : LL) (k : ℤ), Lb.levB T₂ c ζ y k =
      AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) (Lb.levB T₁ c ζ x k)) :
    ambF h s (expN Lb s T₁ c x) = expN Lb s T₂ c y := by
  have hc : ∀ k, (dmapOf h).baseChange (KsW W s) (coefN Lb s T₁ c x k) = coefN Lb s T₂ c y k := by
    intro k
    simp only [coefN]
    rw [Pf_MapLoc_toKsD_map]
    congr 1
    funext ζ
    apply Subtype.ext
    exact (hxy ζ.1 k).symm
  apply (HahnModule.of (KsW W s)).symm.injective
  ext k
  simp [ambF, ambMap, expN, HahnSeries.ofSuppBddBelow, hc]

section ThetaShiftProofs

variable {T₁ T₂ : LocLat G Qp LL O} {C₁ : Coord W (baseIdOf hR) T₁} {C₂ : Coord W (baseIdOf hR) T₂}
  {F : LatHom T₁.L T₂.L} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ} {κ₁ κ₂ : PowerSeries O} {r₁ r₂ : ℕ}
  {lam₁ : Fin r₁ → Dc W T₁ c} {lam₂ : Fin r₂ → Dc W T₂ c}

theorem locComm_holds (hC : CoordHom C₁ C₂ F)
    (Hy₁ : LvHyp Lb hR uZ ιZ C₁ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₁ lam₁)
    (Hy₂ : LvHyp Lb hR uZ ιZ C₂ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₂ lam₂)
    (Mh : MapHyp hR uZ ιZ F c) (j M g η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (kap₁_unit : ∀ s < ell, IsUnit (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s κ₁)))
    (kap₂_unit : ∀ s < ell, IsUnit (HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s κ₂))) :
    ∀ s < ell, ∀ (w : C₁.V)
    (hw : w ∈ (latOf C₁).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell))
    (hw' : (latHomOf hC).f w ∈ (latOf C₂).W c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell)),
    prEOf Mh (hΔ₁ := Hy₁.delta) (hΔ₂ := Hy₂.delta) ell
        ((lvData Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s ⟨w, hw⟩) =
      (lvData Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s ⟨(latHomOf hC).f w, hw'⟩ := by
  intro s _ w hw hw'
  refine funext fun ⟨s', hs'⟩ => Subtype.ext ?_
  show ambF Mh.memD s' (locF Lb C₁ κ₁ s' (κ₁ • w) _) = locF Lb C₂ κ₂ s' (κ₂ • hC.f w) _
  have hm₁ : C₂.t c (κ₁ • hC.f w) ∈ W.N T₂ := by
    have h0 := (latHomOf hC).map_N c (κ₁ • w) (Hy₁.kap w hw)
    rw [show (latHomOf hC).f (κ₁ • w) = κ₁ • hC.f w from hC.f.map_smul κ₁ w] at h0
    exact (mem_N C₂ c _).1 h0
  have hm₂ : C₂.t c (κ₂ • hC.f w) ∈ W.N T₂ := (mem_N C₂ c _).1 (Hy₂.kap _ hw')
  have hA : ambF Mh.memD s' (expN Lb s' T₁ c ⟨C₁.t c (κ₁ • w), Hy₁.kap w hw⟩) =
      expN Lb s' T₂ c ⟨C₂.t c (κ₁ • hC.f w), hm₁⟩ := by
    apply Pf_MapLoc_ambF_expN
    intro ζ k
    have hx : W.map F (C₁.t c (κ₁ • w)) ∈ W.N T₂ := by
      rw [← hC.coord_hom_map_trace, map_smul]
      exact hm₁
    have he : (⟨C₂.t c (κ₁ • hC.f w), hm₁⟩ : ↥(W.N T₂)) = ⟨W.map F (C₁.t c (κ₁ • w)), hx⟩ :=
      Subtype.ext (by
        show C₂.t c (κ₁ • hC.f w) = W.map F (C₁.t c (κ₁ • w))
        rw [← hC.coord_hom_map_trace, map_smul])
    rw [he]
    exact Pf_MapLoc_levB_map F hC.crys hC.crys' levN_eq c ζ ⟨C₁.t c (κ₁ • w), Hy₁.kap w hw⟩ hx k
  have hs₁ : (baseIdOf hR).d κ₂ • C₂.t c (κ₁ • hC.f w) ∈ W.N T₂ := (W.N T₂).smul_mem _ hm₁
  have hs₂ : (baseIdOf hR).d κ₁ • C₂.t c (κ₂ • hC.f w) ∈ W.N T₂ := (W.N T₂).smul_mem _ hm₂
  have hE : HahnSeries.ofPowerSeries ℤ (KsW W s') (rhoL hR c s' κ₂) •
        expN Lb s' T₂ c ⟨C₂.t c (κ₁ • hC.f w), hm₁⟩ =
      HahnSeries.ofPowerSeries ℤ (KsW W s') (rhoL hR c s' κ₁) •
        expN Lb s' T₂ c ⟨C₂.t c (κ₂ • hC.f w), hm₂⟩ := by
    rw [← Hy₂.expSemi s' κ₂ ⟨_, hm₁⟩ hs₁, ← Hy₂.expSemi s' κ₁ ⟨_, hm₂⟩ hs₂]
    congr 1
    apply Subtype.ext
    change (baseIdOf hR).d κ₂ • C₂.t c (κ₁ • hC.f w) = (baseIdOf hR).d κ₁ • C₂.t c (κ₂ • hC.f w)
    rw [← C₂.t_smul, ← C₂.t_smul, smul_smul, smul_smul, mul_comm]
  unfold locF
  rw [Mh.smul s', hA]
  set ρ₁ := HahnSeries.ofPowerSeries ℤ (KsW W s') (rhoL hR c s' κ₁)
  set ρ₂ := HahnSeries.ofPowerSeries ℤ (KsW W s') (rhoL hR c s' κ₂)
  calc Ring.inverse ρ₁ • expN Lb s' T₂ c ⟨C₂.t c (κ₁ • hC.f w), hm₁⟩
      = (Ring.inverse ρ₁ * Ring.inverse ρ₂) • (ρ₂ • expN Lb s' T₂ c ⟨C₂.t c (κ₁ • hC.f w), hm₁⟩) := by
        rw [smul_smul, mul_assoc, Ring.inverse_mul_cancel ρ₂ (kap₂_unit s' hs'), mul_one]
    _ = (Ring.inverse ρ₁ * Ring.inverse ρ₂) • (ρ₁ • expN Lb s' T₂ c ⟨C₂.t c (κ₂ • hC.f w), hm₂⟩) := by
        rw [hE]
    _ = Ring.inverse ρ₂ • expN Lb s' T₂ c ⟨C₂.t c (κ₂ • hC.f w), hm₂⟩ := by
        rw [smul_smul, mul_comm (Ring.inverse ρ₁), mul_assoc, Ring.inverse_mul_cancel ρ₁ (kap₁_unit s' hs'),
          mul_one]

end ThetaShiftProofs

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLoc =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLocL =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLocL", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct

section Cst

variable {LL Ks D D₂ : Type} [Field LL] [CommRing Ks] [Algebra LL Ks] [AddCommGroup D] [Module LL D]
  [AddCommGroup D₂] [Module LL D₂]

theorem mapLocL_cstD_zero : cstD (LL := LL) (D := D) Ks 0 = 0 := by
  simp [cstD]

theorem mapLocL_cstD_sum {ι : Type} (s : Finset ι) (f : ι → D) :
    cstD (LL := LL) Ks (∑ i ∈ s, f i) = ∑ i ∈ s, cstD Ks (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [mapLocL_cstD_zero]
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, _root_.Formalism.ExponentWindows.G.SlopeTestRemainingChoices.cst_add, ih]

theorem mapLocL_C_smul_cstD (x : LL) (d : D) :
    (HahnSeries.C (algebraMap LL Ks x) : HahnSeries ℤ Ks) • cstD (LL := LL) Ks d = cstD Ks (x • d) := by
  apply HahnModule.ext
  funext i
  rw [HahnSeries.C_apply, HahnModule.coeff_single_zero_smul]
  simp only [cstD, Equiv.symm_apply_apply, HahnSeries.coeff_single]
  split_ifs
  · rw [TensorProduct.tmul_smul, algebraMap_smul]
  · rw [smul_zero]

theorem mapLocL_ambMap_cstD (g : Ks ⊗[LL] D →ₗ[Ks] Ks ⊗[LL] D₂) (d : D) :
    ambMap g (cstD (LL := LL) Ks d) = HahnModule.of Ks (HahnSeries.single 0 (g ((1 : Ks) ⊗ₜ[LL] d))) := by
  apply HahnModule.ext
  funext i
  simp only [ambMap, cstD, AddMonoidHom.coe_mk, ZeroHom.coe_mk, Equiv.symm_apply_apply]
  rw [HahnSeries.map_coeff]
  simp only [HahnSeries.coeff_single]
  split_ifs <;> simp

end Cst

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

section Helpers

theorem mapLocL_ambF_cstD {T₁ T₂ : LocLat G Qp LL O} {F : LatHom T₁.L T₂.L} {c : ZMod n}
    (h : MemD W F c) (s : ℕ) (d : Dc W T₁ c) :
    ambF h s (cstD (KsW W s) d) = cstD (KsW W s) (dmapOf h d) := by
  unfold ambF
  rw [mapLocL_ambMap_cstD, LinearMap.baseChange_tmul]
  rfl

theorem mapLocL_cmp_d (hR : Ring9 W) (T : LocLat G Qp LL O) (a : PowerSeries O) (x : ↥(W.N T)) :
    W.cmp T ((baseIdOf hR).d a • x) = algebraMap O LL (PowerSeries.constantCoeff a) • W.cmp T x := by
  set a' : PowerSeries O := PowerSeries.mk fun p => PowerSeries.coeff (p + 1) a
  set π' : PowerSeries O := PowerSeries.mk fun p => PowerSeries.coeff (p + 1) W.π₀₁
  have ha : a = PowerSeries.X * a' + PowerSeries.C (PowerSeries.constantCoeff a) :=
    PowerSeries.eq_X_mul_shift_add_const a
  have hπ : W.π₀₁ = PowerSeries.X * π' := by
    have := PowerSeries.eq_X_mul_shift_add_const W.π₀₁
    rwa [π₀₁_const hR, map_zero, add_zero] at this
  have hd : (baseIdOf hR).d a = (letπ : LetA O n) * ((fun _ => π') * (baseIdOf hR).d a') +
      algebraMap O (LetA O n) (PowerSeries.constantCoeff a) := by
    funext i
    have hC0 : (PowerSeries.C (PowerSeries.constantCoeff a) : PowerSeries O) =
        algebraMap O (PowerSeries O) (PowerSeries.constantCoeff a) := by
      rw [PowerSeries.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
    rw [BaseId.d_apply]
    conv_lhs => rw [ha, hC0, map_add (f := _), map_mul, AlgHom.commutes, (baseIdOf hR).ι_X, hπ]
    simp only [Pi.add_apply, Pi.mul_apply, BaseId.d_apply, letπ, Pi.algebraMap_apply]
    ring
  rw [hd, add_smul, map_add (f := _), mul_smul, W.cmp_π, zero_add, algebraMap_smul, W.cmp_smul]

theorem mapLocL_t_sum {T : LocLat G Qp LL O} (C : Coord W (baseIdOf hR) T) (i : ZMod n) {ι : Type}
    (s : Finset ι) (f : ι → C.V) : C.t i (∑ l ∈ s, f l) = ∑ l ∈ s, C.t i (f l) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [C.t_zero]
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, C.t_add, ih]

theorem mapLocL_map_φVB {T₁ T₂ : LocLat G Qp LL O} (f : T₁.V →ₗ[LL] T₂.V) (z : T₁.V ⊗[Qp] B) :
    AlgebraTensorModule.map f (LinearMap.id : B →ₗ[Qp] B) (φVB PD (LL := LL) (V := T₁.V) z) =
      φVB PD (LL := LL) (V := T₂.V) (AlgebraTensorModule.map f (LinearMap.id : B →ₗ[Qp] B) z) := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul v b => simp [φVB]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem mapLocL_map_φVB_pow {T₁ T₂ : LocLat G Qp LL O} (f : T₁.V →ₗ[LL] T₂.V) (e : ℕ)
    (z : T₁.V ⊗[Qp] B) :
    AlgebraTensorModule.map f (LinearMap.id : B →ₗ[Qp] B) (((φVB PD (LL := LL) (V := T₁.V)) ^ e) z) =
      ((φVB PD (LL := LL) (V := T₂.V)) ^ e) (AlgebraTensorModule.map f (LinearMap.id : B →ₗ[Qp] B) z) := by
  induction e with
  | zero => simp
  | succ e ih =>
    rw [pow_succ', Module.End.mul_apply, mapLocL_map_φVB, ih, pow_succ', Module.End.mul_apply]

theorem mapLocL_cmp_map {T₁ T₂ : LocLat G Qp LL O} {C₁ : Coord W (baseIdOf hR) T₁}
    {C₂ : Coord W (baseIdOf hR) T₂} {F : LatHom T₁.L T₂.L} (hC : CoordHom C₁ C₂ F) (i : ZMod n)
    {r : ℕ} (x : C₁.V) (hx : C₁.t i x ∈ W.N T₁) (e₂ : Fin r → C₂.V) (he₂ : ∀ l, C₂.t i (e₂ l) ∈ W.N T₂)
    (a : Fin r → PowerSeries O) (ha : hC.f x = ∑ l, a l • e₂ l) :
    AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) (W.cmp T₁ ⟨C₁.t i x, hx⟩) =
      ∑ l, algebraMap O LL (PowerSeries.constantCoeff (a l)) • W.cmp T₂ ⟨C₂.t i (e₂ l), he₂ l⟩ := by
  have hy : W.map F ((⟨C₁.t i x, hx⟩ : ↥(W.N T₁)) : W.DD T₁) ∈ W.N T₂ := by
    show W.map F (C₁.t i x) ∈ W.N T₂
    rw [← hC.coord_hom_map_trace]
    exact (latHomOf hC).map_N i x hx
  rw [← W.cmp_map F hC.crys hC.crys' ⟨C₁.t i x, hx⟩ hy]
  have heq : (⟨W.map F ((⟨C₁.t i x, hx⟩ : ↥(W.N T₁)) : W.DD T₁), hy⟩ : ↥(W.N T₂)) =
      ∑ l, (baseIdOf hR).d (a l) • (⟨C₂.t i (e₂ l), he₂ l⟩ : ↥(W.N T₂)) := by
    apply Subtype.ext
    rw [Submodule.coe_sum]
    show W.map F (C₁.t i x) = ∑ l, (baseIdOf hR).d (a l) • C₂.t i (e₂ l)
    rw [← hC.coord_hom_map_trace, ha, mapLocL_t_sum]
    simp only [Coord.t_smul]

  rw [heq, map_sum]
  simp only [mapLocL_cmp_d]

theorem mapLocL_lamOf_coe {T : LocLat G Qp LL O} (C : Coord W (baseIdOf hR) T) (c : ZMod n) (ell : ℕ)
    {r : ℕ} (e : Fin r → C.V) (k : Fin r) (hk : C.t (c - (ell : ZMod n)) (e k) ∈ W.N T) :
    ((lamOf C c ell e k : Dc W T c) : T.V ⊗[Qp] B) =
      ((φVB PD (LL := LL) (V := T.V)) ^ ell) (W.cmp T ⟨C.t (c - (ell : ZMod n)) (e k), hk⟩) := by
  have h1 : W.cmp T ⟨C.t (c - (ell : ZMod n)) (e k), hk⟩ ∈ DcrisL PD T.ρ (W.emb (c - (ell : ZMod n))) := by
    have h0 := W.cmp_letter T (c - (ell : ZMod n)) ⟨_, hk⟩
    have hx : ((letE (c - (ell : ZMod n)) : LetA O n) • (⟨C.t (c - (ell : ZMod n)) (e k), hk⟩ : ↥(W.N T))) =
        ⟨C.t (c - (ell : ZMod n)) (e k), hk⟩ := Subtype.ext (C.t_letter _ _)
    rwa [hx] at h0
  have h' : ((φVB PD (LL := LL) (V := T.V)) ^ ell) (W.cmp T ⟨C.t (c - (ell : ZMod n)) (e k), hk⟩) ∈
      DcrisL PD T.ρ (W.emb c) := by
    have h2 := Formalism.MainNotions.UnusedSlot80.ArcF.φVB_pow_letter W T (c - (ell : ZMod n)) h1 ell
    rwa [sub_add_cancel] at h2
  unfold lamOf
  rw [dite_eq_left hk, dite_eq_left h']

end Helpers

section ThetaShiftProofs

variable {T₁ T₂ : LocLat G Qp LL O} {C₁ : Coord W (baseIdOf hR) T₁} {C₂ : Coord W (baseIdOf hR) T₂}
  {F : LatHom T₁.L T₂.L} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ} {κ₁ κ₂ : PowerSeries O} {r₁ r₂ : ℕ}
  {lam₁ : Fin r₁ → Dc W T₁ c} {lam₂ : Fin r₂ → Dc W T₂ c}

theorem mapLocL_dmap_lam (hC : CoordHom C₁ C₂ F) (Mh : MapHyp hR uZ ιZ F c)
    (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V) (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O))
    (he₁ : ∀ k, e₁ k ∈ (latOf C₁).N (c - (ell : ZMod n)))
    (he₂ : ∀ l, e₂ l ∈ (latOf C₂).N (c - (ell : ZMod n)))
    (hP : ∀ k, ∃ a : Fin r₂ → PowerSeries O, (latHomOf hC).f (e₁ k) = ∑ l, a l • e₂ l ∧
      ∀ l, LinearMap.toMatrix' P l k = PowerSeries.constantCoeff (a l)) (k : Fin r₁) :
    dmapOf Mh.memD (lamOf C₁ c ell e₁ k) =
      ∑ l, algebraMap O LL (LinearMap.toMatrix' P l k) • lamOf C₂ c ell e₂ l := by
  obtain ⟨a, ha, hPa⟩ := hP k
  apply Subtype.ext
  rw [Submodule.coe_sum]
  show AlgebraTensorModule.map F.f (LinearMap.id : B →ₗ[Qp] B) ((lamOf C₁ c ell e₁ k : Dc W T₁ c) : T₁.V ⊗[Qp] B) = _

  rw [mapLocL_lamOf_coe C₁ c ell e₁ k (he₁ k), mapLocL_map_φVB_pow,
  mapLocL_cmp_map hC _ (e₁ k) (he₁ k) e₂ he₂ a ha, map_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [map_smul, Submodule.coe_smul, mapLocL_lamOf_coe C₂ c ell e₂ l (he₂ l), hPa l]

theorem loclComm_holds (hC : CoordHom C₁ C₂ F)
    (Hy₁ : LvHyp Lb hR uZ ιZ C₁ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₁ lam₁)
    (Hy₂ : LvHyp Lb hR uZ ιZ C₂ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₂ lam₂)
    (Mh : MapHyp hR uZ ιZ F c) (j M g η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)
    (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V) (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O))
    (hlam₁ : lam₁ = lamOf C₁ c ell e₁) (hlam₂ : lam₂ = lamOf C₂ c ell e₂)
    (he₁ : ∀ k, e₁ k ∈ (latOf C₁).N (c - (ell : ZMod n)))
    (he₂ : ∀ l, e₂ l ∈ (latOf C₂).N (c - (ell : ZMod n)))
    (hP : ∀ k, ∃ a : Fin r₂ → PowerSeries O, (latHomOf hC).f (e₁ k) = ∑ l, a l • e₂ l ∧
      ∀ l, LinearMap.toMatrix' P l k = PowerSeries.constantCoeff (a l)) :
    ∀ s < ell, ∀ y : Fin r₁ → PowerSeries O,
      prEOf Mh (hΔ₁ := Hy₁.delta) (hΔ₂ := Hy₂.delta) ell
          ((lvData Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).locL s y) =
        (lvData Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).locL s (E.extL P y) := by
  subst hlam₁ hlam₂
  intro s _ y
  apply prL_inj
  intro s' hs'
  erw [prL_of_lt s' hs', prL_of_lt s' hs']
  change ambF Mh.memD s' (locLF (hR := hR) (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) (lamOf C₁ c ell e₁) s' y) =
    locLF (hR := hR) (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) (lamOf C₂ c ell e₂) s' (E.extL P y)
  have hk : ∀ k, ambF Mh.memD s' (cstD (KsW W s') (lamOf C₁ c ell e₁ k)) =
      ∑ l, HahnSeries.ofPowerSeries ℤ (KsW W s') (rhoL hR c s' (PowerSeries.C (LinearMap.toMatrix' P l k))) •
        cstD (KsW W s') (lamOf C₂ c ell e₂ l) := by
    intro k
    rw [mapLocL_ambF_cstD, mapLocL_dmap_lam hC Mh e₁ e₂ P he₁ he₂ hP k, mapLocL_cstD_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [Hy₂.rhoC, HahnSeries.ofPowerSeries_C, mapLocL_C_smul_cstD]
  have hext : ∀ l, E.extL P y l = ∑ k, PowerSeries.C (LinearMap.toMatrix' P l k) * y k := by
    intro l
    simp [E.extL, Matrix.toLin'_apply, Matrix.mulVec, dotProduct]
  simp only [locLF]

  rw [Mh.smul, map_sum]
  congr 1

  simp only [Mh.smul, hk, hext, map_sum, map_mul, Finset.sum_smul, mul_smul, Finset.smul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => smul_comm _ _ _

theorem prLIs_holds (hC : CoordHom C₁ C₂ F) {r₁ r₂ : ℕ}
    (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V) (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O))
    (he₂ : ∀ l, e₂ l ∈ (latOf C₂).N (c - (ell : ZMod n)))
    (hP : ∀ k, ∃ a : Fin r₂ → PowerSeries O, (latHomOf hC).f (e₁ k) = ∑ l, a l • e₂ l ∧
      ∀ l, LinearMap.toMatrix' P l k = PowerSeries.constantCoeff (a l)) :
    ∀ k, (latHomOf hC).f (e₁ k) -
      ∑ l, PowerSeries.C (LinearMap.toMatrix' P l k) • e₂ l ∈
    E.sm (PowerSeries.X : PowerSeries O) ((latOf C₂).N (c - (ell : ZMod n))) := by
  intro k
  obtain ⟨a, ha, hPa⟩ := hP k
  refine Submodule.mem_map.2 ⟨∑ l, (PowerSeries.mk fun p => PowerSeries.coeff (p + 1) (a l)) • e₂ l,
    Submodule.sum_mem _ fun l _ => Submodule.smul_mem _ _ (he₂ l), ?_⟩
  rw [LinearMap.lsmul_apply, Finset.smul_sum, ha, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [smul_smul, hPa l, ← sub_smul]
  congr 1
  rw [eq_sub_iff_add_eq]
  exact (PowerSeries.eq_X_mul_shift_add_const (a l)).symm

end ThetaShiftProofs

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLocL =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfAssemble =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfAssemble", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FinalLevelsOf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RealisedOfCoordArc\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SecondComparisonInCoordinates\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.GaloisActionFrobeniusComm\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.LvDataLocalizesConstOfCrystalline\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfCoeff\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOmega\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHOnil\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfHuZ\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfJumpsLet\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfKapUnit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLocReg\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvBasis\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvDelta\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvEquiv\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvFil\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvGam\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvJumps\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvLoc\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvRhoC\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapFl\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapHyp\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLoc\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMapLocL\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfMem\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfSplit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RingStepsOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CoordStepsOf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

namespace Assemble

theorem frac_of [IsDomain O] [IsFractionRing O LL] (a : LL) :
    ∃ y o : O, algebraMap O LL y ≠ 0 ∧ algebraMap O LL y * a = algebraMap O LL o := by
  obtain ⟨⟨o, y⟩, h⟩ := IsLocalization.surj (nonZeroDivisors O) a
  exact ⟨y, o, IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors y.2, by rw [mul_comm]; exact h⟩

theorem firstGeometricCondition_of_properties (hR : Ring9 W) :
    ∃ w : (PowerSeries O)ˣ, (baseIdOf hR).ι PowerSeries.X = (w : PowerSeries O) * PowerSeries.X ^ (PD.p - 1) := by
  obtain ⟨w, hw, h⟩ := π₀₁_eq hR
  exact ⟨hw.unit, by rw [(baseIdOf hR).ι_X, IsUnit.unit_spec]; exact h⟩

end Assemble

theorem lvHyp_holds (Lb : LevB W) (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) {T : LocLat G Qp LL O}
    (C : Coord W (baseIdOf hR) T) (c : ZMod n) (ell : ℕ) (Λ κ : PowerSeries O) {r : ℕ} (e : Fin r → C.V)

    (lev_Γ : ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ f : LetA O n,
      W.lev i ζ (W.γA g f) = PowerSeries.rescale (algebraMap O LL (W.χΓ g : O)) (W.lev i ζ' f))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (hgamK : W.gamK = W.gam)

    (hs1 : W.s = 1) (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hT : IsCrys PD T.ρ) {Mj hj : ZMod n → ℕ}
    (hJl : Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T Mj hj)

    (valRing : ValRing O v) (hv : ∀ (s : ℕ) (z : ℤ_[PD.p]), (PD.p : ℤ_[PD.p]) ^ (s + 1) ∣ z →
      ((s + 1 : ℕ) : WithTop ℚ) ≤ v (algebraMap O LL (ιZ z)))

    (hω : ∀ ω : DeltaT PD.p, ∃ g ∈ W.DelF,
      algebraMap O LL (W.χΓ g : O) = algebraMap O LL (ιZ ((ω.1 : ℤ_[PD.p]ˣ) : ℤ_[PD.p])))
    (huZ : ∀ k : ℕ, (k : WithTop ℚ) ≤
      v (algebraMap O LL (W.χΓ W.gam : O) - ((PadicInt.toZModPow k (uZ : ℤ_[PD.p])).val : LL)))
    (m : ℕ) (hm : ∀ i, Mj i ≤ m) (hκ : κ = Λ * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m) :
    LvHyp Lb hR uZ ιZ C c ell Λ κ (lamOf C c ell e) := by
  have hΔ := delta_holds hR uZ ιZ c lev_Γ hω valRing
  exact
    { delta := hΔ
      gamInv := gamInv_holds uZ ιZ T c
      gamRho := gamRho_holds hR uZ ιZ c lev_Γ hgamK huZ
      kap := kap_holds C ell Λ κ hP5 hT hJl hs1 hR m hm hκ
      expSemi := expSemi_holds Lb hR T c levN_eq
      locInv := locInv_holds Lb C κ hΔ hT levB_Γ hω hv
      loclInv := loclInv_holds hR uZ ιZ T c Λ _ hΔ
      filAnti := filAnti_holds
      rhoC := rhoC_holds hR c }

theorem levSteps_of_jumps [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
    [CharZero LL] [IsFractionRing O LL]
    {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ}
    {κ : PowerSeries O} {r : ℕ} {e : Fin r → C.V}
    (Hy : LvHyp Lb hR uZ ιZ C c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ (lamOf C c ell e))
    (ϖ : O) (j M g G₀ Sz η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)

    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (levB_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) •
            φVB PD (LL := LL) (V := T.V) (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (lev_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)

    (hs1 : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T)
    (hP3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T) {π' : LetA O n} (hP9 : Formalism.MainNotions.DeltaInvariantLattices.wachModuleOverLetters W T π')
    (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hT : IsCrys PD T.ρ) {Mj hj : ZMod n → ℕ} (hJl : Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T Mj hj)
    (hfin : FiniteDimensional LL ↥(Dcris PD T.ρ))

    (hϖ : Irreducible ϖ) (hℓm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O)
    (n0 : ℕ) (hn0 : ell ≤ n0) (hroot : ∃ ζ : LL, IsPrimitiveRoot ζ (PD.p ^ n0))
    (G2 : ∃ w : (PowerSeries O)ˣ, (baseIdOf hR).ι (baseIdOf hR).Bs.q = (w : PowerSeries O) *
      (((Polynomial.cyclotomic PD.p O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O))
    (hφ : W.φ₀ PowerSeries.X = (1 + PowerSeries.X) ^ PD.p - 1)
    (hρζ : ∀ s < ell, ∀ ζ ∈ primitiveRoots (PD.p ^ (s + 1)) LL,
      1 + rhoZ W c ζ PowerSeries.X = PowerSeries.C ζ * PowerSeries.exp LL)
    (huZv : ((uZ : ℤ_[PD.p]) - 1).valuation = 1) (hutie : ιZ uZ = (W.χΓ W.gam : O))
    (hom' : ∀ a : ZMod PD.p, a ≠ 0 → ∃ j : DeltaT PD.p, PadicInt.toZMod (j.1 : ℤ_[PD.p]) = a)

    (hl : 5 ≤ PD.p) (huZ : ∀ k : ℕ, (k : WithTop ℚ) ≤
      v (algebraMap O LL (W.χΓ W.gam : O) - ((PadicInt.toZModPow k (uZ : ℤ_[PD.p])).val : LL)))
    (m : ℕ) (hm : ∀ i, Mj i ≤ m)
    (hκ : κ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m)
    (hBasis : Module.Basis (Fin r) (PowerSeries O) ↥((latOf C).N (c - (ell : ZMod n))))
    (hBasis_e : ∀ k, (hBasis k : C.V) = e k)

    (hmem : (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).Mem)
    (hpa1b : (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).LocalizesConst M e)
    (hjumps : ∀ s < ell, Formalism.ExponentWindows.G.Jumps (kind s) G₀ Sz η (b s) (FilD W T c s)) :
    LevSteps Hy ϖ j M g G₀ Sz η kind b e := by
  have R := ringSteps_of Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η ϖ hϖ (by omega) hℓm n0 hn0 hroot (Assemble.firstGeometricCondition_of_properties hR) G2 hφ hρζ
    huZv hutie hom'
  have hp0 : (PD.p : LL) ≠ 0 := Nat.cast_ne_zero.2 PD.hp.ne_zero
  have hP5' : ∀ i, (latOf C).P5M i m := fun i => LvLoc.latOf_P5M_of_p5_of_le C (hP5 T Mj hj hT hJl) hs1 hR m hm i
  exact
    { k1b := R.1
      k1c := fun s hs => (R.2.2.1 s hs).1
      k1d := fun s hs => (R.2.2.1 s hs).2
      unitsAt := R.2.2.2.1
      compl := R.2.2.2.2
      filt := filt_holds ell hfin
      jumps := hjumps
      mem := hmem
      locReg := locReg_holds Hy j M g η kind b m hκ R.1 R.2.2.2.1 hP5' levN_eq levB_φ lev_φ hp0 hs1 hP4
      pa1b := hpa1b
      equiv := equiv_holds Hy j M g η kind b hT levB_Γ hs1 hl huZ
      span := span_holds hBasis hBasis_e
      ind := ind_holds hBasis hBasis_e
      locLIs := locLIs_holds Hy j M g η kind b H rfl R.1 R.2.2.2.1
      lamInd := lamInd_holds hP3 hP9 Assemble.frac_of hBasis hBasis_e rfl
      lamSpan := lamSpan_holds hP3 hP9 hBasis hBasis_e rfl }

theorem mapSteps_holds {T₁ T₂ : LocLat G Qp LL O} {C₁ : Coord W (baseIdOf hR) T₁} {C₂ : Coord W (baseIdOf hR) T₂}
    {F : LatHom T₁.L T₂.L} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ} {κ₁ κ₂ : PowerSeries O} {r₁ r₂ : ℕ}
    (hC : CoordHom C₁ C₂ F) (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V)
    (Hy₁ : LvHyp Lb hR uZ ιZ C₁ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₁ (lamOf C₁ c ell e₁))
    (Hy₂ : LvHyp Lb hR uZ ιZ C₂ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ₂ (lamOf C₂ c ell e₂))
    (Mh : MapHyp hR uZ ιZ F c) (j M g η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)
    (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O))

    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))

    (hk1b₁ : (lvModel Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).K1b) (hUnits₁ : (lvModel Hy₁ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).UnitsAt)
    (hk1b₂ : (lvModel Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).K1b) (hUnits₂ : (lvModel Hy₂ ((baseIdOf hR).Bs.ff' ell j M g) kind b η).UnitsAt)

    (m₁ m₂ : ℕ)
    (hκ₁ : κ₁ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m₁)
    (hκ₂ : κ₂ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m₂)
    (he₁ : ∀ k, e₁ k ∈ (latOf C₁).N (c - (ell : ZMod n)))
    (he₂ : ∀ l, e₂ l ∈ (latOf C₂).N (c - (ell : ZMod n)))
    (hP : ∀ k, ∃ a : Fin r₂ → PowerSeries O, (latHomOf hC).f (e₁ k) = ∑ l, a l • e₂ l ∧
      ∀ l, LinearMap.toMatrix' P l k = PowerSeries.constantCoeff (a l)) :
    MapSteps hC Hy₁ Hy₂ Mh j M g η kind b e₁ e₂ P := by
  have hprL := prLIs_holds hC e₁ e₂ P he₂ hP
  exact
    { locComm := locComm_holds hC Hy₁ Hy₂ Mh j M g η kind b levN_eq
        (kapUnit_holds Hy₁ j M g η kind b m₁ hκ₁ hk1b₁ hUnits₁)
        (kapUnit_holds Hy₂ j M g η kind b m₂ hκ₂ hk1b₂ hUnits₂)
      loclComm := loclComm_holds hC Hy₁ Hy₂ Mh j M g η kind b e₁ e₂ P rfl rfl he₁ he₂ hP
      mapFl := mapFl_holds Hy₁ Hy₂ Mh j M g η kind b
      cMap := cMap_holds Mh.memD kind b η P
        (lambda_of_matrixCongruences hC Mh.memD e₁ e₂ P he₁ he₂ hprL)
      prLIs := hprL }

theorem mapHyp_of (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) {T₁ T₂ : LocLat G Qp LL O}
    (F : LatHom T₁.L T₂.L) (c : ZMod n) : MapHyp hR uZ ιZ F c :=
  mapHyp_holds hR uZ ιZ F c

namespace Assemble

theorem pow_unif [IsDomain O] [IsDiscreteValuationRing O] {ϖ : O} (hϖ : Irreducible ϖ)
    (hℓm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O) :
    ∃ (N : ℕ) (u : O), ((PD.p : ℕ) : O) ^ N = ϖ * u := by
  rw [(IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).1 hϖ, Ideal.mem_span_singleton] at hℓm
  obtain ⟨u, hu⟩ := hℓm
  exact ⟨1, u, by rw [pow_one, hu]⟩

theorem p_ne_zero [CharZero LL] : ((PD.p : ℕ) : O) ≠ 0 := by
  intro h
  have h2 : ((PD.p : ℕ) : LL) = 0 := by rw [← map_natCast (algebraMap O LL), h, map_zero]
  exact PD.hp.ne_zero (Nat.cast_eq_zero.1 h2)

theorem jumps_bound [Fintype (K →ₐ[Qp] LL)] (hDR : Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris PD LL)
    (hKb : Function.Bijective (algebraMap K₀ K)) {T : LocLat G Qp LL O} (hc : CrysLat PD T) :
    ∃ (Mj hj : ZMod n → ℕ) (m : ℕ), Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T Mj hj ∧ ∀ i, Mj i ≤ m := by
  obtain ⟨Mj, hj, h⟩ := jumps_bounded_crystalline (W := W) hDR hKb T hc
  exact ⟨Mj, hj, Finset.univ.sup Mj, h, fun i => Finset.le_sup (Finset.mem_univ i)⟩

end Assemble

theorem lvHyp_holds' (Lb : LevB W) (hR : Ring9 W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O) {T : LocLat G Qp LL O}
    (C : Coord W (baseIdOf hR) T) (c : ZMod n) (ell : ℕ) (Λ κ : PowerSeries O) {r : ℕ} (e : Fin r → C.V)

    (lev_Γ : ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ f : LetA O n,
      W.lev i ζ (W.γA g f) = PowerSeries.rescale (algebraMap O LL (W.χΓ g : O)) (W.lev i ζ' f))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))

    (hs1 : W.s = 1) (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (h9 : Formalism.MainNotions.DeltaInvariantLattices.p9 W T) (hT : IsCrys PD T.ρ)
    {Mj hj : ZMod n → ℕ} (hJl : Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T Mj hj)

    (valRing : ValRing O v) (hKb : Function.Bijective (algebraMap K₀ K))

    (hl : 5 ≤ PD.p) (hutie : ιZ uZ = (W.χΓ W.gam : O))
    (m : ℕ) (hm : ∀ i, Mj i ≤ m) (hκ : κ = Λ * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m) :
    LvHyp Lb hR uZ ιZ C c ell Λ κ (lamOf C c ell e) :=
  lvHyp_holds Lb hR uZ ιZ C c ell Λ κ e lev_Γ levB_Γ levN_eq (W.gamK_eq_one hs1 (by omega)) hs1 hP5 hT hJl
    valRing (hv_holds W valRing.2.2)
    (hω_holds (card_DelF hs1 (by omega) (_root_.Formalism.MainNotions.UnusedSlot80.SatW.finrank_one_of_bij' hKb) h9) valRing.1 ιZ)
    (huZ_holds hutie valRing.2.2) m hm hκ

theorem levSteps_of_jumps' [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
    [CharZero LL] [IsFractionRing O LL]
    {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ}
    {κ : PowerSeries O} {r : ℕ} {e : Fin r → C.V}
    (Hy : LvHyp Lb hR uZ ιZ C c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ (lamOf C c ell e))
    (ϖ : O) (j M g G₀ Sz η : ℕ) (kind : ℕ → Kind) (b : ℕ → ℕ)

    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (levB_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) •
            φVB PD (LL := LL) (V := T.V) (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (lev_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (cmp_eq : ∀ (i : ZMod n) (x : ↥(W.N T)), W.cmp T ((letE i : LetA O n) • x) = Lb.levB T i 1 x 0)

    (hs1 : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T)
    (hP4L : LevelMapHodgeFiltration W) (hSat : Sat W) (hP3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T) (h9 : Formalism.MainNotions.DeltaInvariantLattices.p9 W T)
    (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hc : CrysLat PD T) {Mj Hj : ZMod n → ℕ} (hJl : Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T Mj Hj)

    (hv_int : ∀ x : O, 0 ≤ v (algebraMap O LL x)) (hKb : Function.Bijective (algebraMap K₀ K))

    (hϖ : Irreducible ϖ) (hℓm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O)
    (hn : ell ≤ n) (hroot : ∃ ζ : LL, IsPrimitiveRoot ζ (PD.p ^ n))
    (G2 : ∃ w : (PowerSeries O)ˣ, (baseIdOf hR).ι (baseIdOf hR).Bs.q = (w : PowerSeries O) *
      (((Polynomial.cyclotomic PD.p O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O))
    (hφ : W.φ₀ PowerSeries.X = (1 + PowerSeries.X) ^ PD.p - 1)
    (hρζ : ∀ s < ell, ∀ ζ ∈ primitiveRoots (PD.p ^ (s + 1)) LL,
      1 + rhoZ W c ζ PowerSeries.X = PowerSeries.C ζ * PowerSeries.exp LL)
    (huZv : ((uZ : ℤ_[PD.p]) - 1).valuation = 1) (hutie : ιZ uZ = (W.χΓ W.gam : O))
    (hom' : ∀ a : ZMod PD.p, a ≠ 0 → ∃ j : DeltaT PD.p, PadicInt.toZMod (j.1 : ℤ_[PD.p]) = a)

    (hl : 5 ≤ PD.p) (m : ℕ) (hm : ∀ i, Mj i ≤ m)
    (hκ : κ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m)
    (hBasis : Module.Basis (Fin r) (PowerSeries O) ↥((latOf C).N (c - (ell : ZMod n))))
    (hBasis_e : ∀ k, (hBasis k : C.V) = e k) (hj : j ≤ ell) (h3g : 3 * g ≤ ((baseIdOf hR).Bs.ℓ - 1) * M)
    (hjumps : ∀ s < ell, Formalism.ExponentWindows.G.Jumps (kind s) G₀ Sz η (b s) (FilD W T c s)) :
    LevSteps Hy ϖ j M g G₀ Sz η kind b e := by
  have hℓ2 : PD.p ≠ 2 := by omega
  have hK1 := _root_.Formalism.MainNotions.UnusedSlot80.SatW.finrank_one_of_bij' hKb
  have hmod : Formalism.MainNotions.DeltaInvariantLattices.wachModuleOverLetters W T W.π₀ := ((h9 hs1 hℓ2).2.2 hK1).2
  have R := ringSteps_of Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η ϖ hϖ hℓ2 hℓm n hn hroot (Assemble.firstGeometricCondition_of_properties hR) G2 hφ hρζ
    huZv hutie hom'
  have hfin : FiniteDimensional LL ↥(Dcris PD T.ρ) := by
    have := hc.1
    exact lvFil_fin_of_isCrys PD T.ρ hc.2.2.2
  have hP5' : ∀ i, (latOf C).P5M i m := fun i => LvLoc.latOf_P5M_of_p5_of_le C (hP5 T Mj Hj hc.2.2.2 hJl) hs1 hR m hm i
  have he : ∀ k, e k ∈ (latOf C).N (c - (ell : ZMod n)) := fun k => by
    rw [← hBasis_e k]
    exact (hBasis k).2
  have hmem := mem_holds hP4L hSat hc.2.2.2 (levN_eq T) hmod hP3
    (free_of (baseIdOf_inj hR) (baseIdOf_full hR) hmod C c) hroot hn m hκ R.1 R.2.2.2.1
    (filt_holds ell hfin) ϖ R.2.2.2.2 (Assemble.pow_unif hϖ hℓm) Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η
  have hpa1b := lvData_localizesConst_of_crystalline Hy j M g η kind b m e hκ he rfl R.1 R.2.2.2.1 hP5' levN_eq levB_φ lev_φ levB_Γ
    cmp_eq hc.2.2.2 hs1 hℓ2 hP4 hR hj h3g
  exact levSteps_of_jumps Hy ϖ j M g G₀ Sz η kind b levN_eq levB_φ lev_φ levB_Γ hs1 hP4 hP3 hmod hP5
    hc.2.2.2 hJl hfin hϖ hℓm n hn hroot G2 hφ hρζ huZv hutie hom' hl (huZ_holds hutie hv_int) m hm hκ
    hBasis hBasis_e hmem hpa1b hjumps

theorem levSteps_holds' [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
    [CharZero LL] [IsFractionRing O LL]
    {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ}
    {κ : PowerSeries O} {r : ℕ} {e : Fin r → C.V}
    (Hy : LvHyp Lb hR uZ ιZ C c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ (lamOf C c ell e))
    (ϖ : O) (j M g G₀ Sz η : ℕ) (ty : ZMod n → LT)

    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (levB_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) •
            φVB PD (LL := LL) (V := T.V) (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (lev_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (cmp_eq : ∀ (i : ZMod n) (x : ↥(W.N T)), W.cmp T ((letE i : LetA O n) • x) = Lb.levB T i 1 x 0)

    (hs1 : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T)
    (hP4L : LevelMapHodgeFiltration W) (hSat : Sat W) (hP3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T) (h9 : Formalism.MainNotions.DeltaInvariantLattices.p9 W T)
    (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hc : CrysLat PD T) {Mj Hj : ZMod n → ℕ} (hJl : Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T Mj Hj)

    (hv_int : ∀ x : O, 0 ≤ v (algebraMap O LL x)) (hKb : Function.Bijective (algebraMap K₀ K))

    (hϖ : Irreducible ϖ) (hℓm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O)
    (hn : ell ≤ n) (hroot : ∃ ζ : LL, IsPrimitiveRoot ζ (PD.p ^ n))
    (G2 : ∃ w : (PowerSeries O)ˣ, (baseIdOf hR).ι (baseIdOf hR).Bs.q = (w : PowerSeries O) *
      (((Polynomial.cyclotomic PD.p O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O))
    (hφ : W.φ₀ PowerSeries.X = (1 + PowerSeries.X) ^ PD.p - 1)
    (hρζ : ∀ s < ell, ∀ ζ ∈ primitiveRoots (PD.p ^ (s + 1)) LL,
      1 + rhoZ W c ζ PowerSeries.X = PowerSeries.C ζ * PowerSeries.exp LL)
    (huZv : ((uZ : ℤ_[PD.p]) - 1).valuation = 1) (hutie : ιZ uZ = (W.χΓ W.gam : O))
    (hom' : ∀ a : ZMod PD.p, a ≠ 0 → ∃ j : DeltaT PD.p, PadicInt.toZMod (j.1 : ℤ_[PD.p]) = a)

    (hl : 5 ≤ PD.p) (m : ℕ) (hm : ∀ i, Mj i ≤ m)
    (hκ : κ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m)
    (hBasis : Module.Basis (Fin r) (PowerSeries O) ↥((latOf C).N (c - (ell : ZMod n))))
    (hBasis_e : ∀ k, (hBasis k : C.V) = e k) (hj : j ≤ ell) (h3g : 3 * g ≤ ((baseIdOf hR).Bs.ℓ - 1) * M)
    (hJ : KindJumps PD T W.emb G₀ Sz η ty) :
    LevSteps Hy ϖ j M g G₀ Sz η (E.kindAt (kdOf ty) c) (E.sizeAt (bbOf ty) c) e :=
  levSteps_of_jumps' Hy ϖ j M g G₀ Sz η _ _ levN_eq levB_φ lev_φ levB_Γ cmp_eq hs1 hP4 hP4L hSat hP3 h9 hP5 hc hJl hv_int hKb hϖ hℓm hn hroot G2 hφ hρζ huZv hutie hom' hl m hm hκ hBasis hBasis_e hj h3g (jumps_holds hKb.2 c ell G₀ Sz η ty hJ)

theorem levSteps_holds_quot' [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
    [CharZero LL] [IsFractionRing O LL]
    {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ} {H : ℕ → ℕ}
    {κ : PowerSeries O} {r : ℕ} {e : Fin r → C.V}
    (Hy : LvHyp Lb hR uZ ιZ C c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ (lamOf C c ell e))
    (ϖ : O) (j M g G₀ Sz η : ℕ) (ty : ZMod n → LT)

    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (levB_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) •
            φVB PD (LL := LL) (V := T.V) (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (lev_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (cmp_eq : ∀ (i : ZMod n) (x : ↥(W.N T)), W.cmp T ((letE i : LetA O n) • x) = Lb.levB T i 1 x 0)

    (hs1 : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T)
    (hP4L : LevelMapHodgeFiltration W) (hSat : Sat W) (hP3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T) (h9 : Formalism.MainNotions.DeltaInvariantLattices.p9 W T)
    (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hc : CrysLat PD T) {Mj Hj : ZMod n → ℕ} (hJl : Formalism.MainNotions.DeltaInvariantLattices.JumpsLet W T Mj Hj)

    (hv_int : ∀ x : O, 0 ≤ v (algebraMap O LL x)) (hKb : Function.Bijective (algebraMap K₀ K))

    (hϖ : Irreducible ϖ) (hℓm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O)
    (hn : ell ≤ n) (hroot : ∃ ζ : LL, IsPrimitiveRoot ζ (PD.p ^ n))
    (G2 : ∃ w : (PowerSeries O)ˣ, (baseIdOf hR).ι (baseIdOf hR).Bs.q = (w : PowerSeries O) *
      (((Polynomial.cyclotomic PD.p O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O))
    (hφ : W.φ₀ PowerSeries.X = (1 + PowerSeries.X) ^ PD.p - 1)
    (hρζ : ∀ s < ell, ∀ ζ ∈ primitiveRoots (PD.p ^ (s + 1)) LL,
      1 + rhoZ W c ζ PowerSeries.X = PowerSeries.C ζ * PowerSeries.exp LL)
    (huZv : ((uZ : ℤ_[PD.p]) - 1).valuation = 1) (hutie : ιZ uZ = (W.χΓ W.gam : O))
    (hom' : ∀ a : ZMod PD.p, a ≠ 0 → ∃ j : DeltaT PD.p, PadicInt.toZMod (j.1 : ℤ_[PD.p]) = a)

    (hl : 5 ≤ PD.p) (m : ℕ) (hm : ∀ i, Mj i ≤ m)
    (hκ : κ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m)
    (hBasis : Module.Basis (Fin r) (PowerSeries O) ↥((latOf C).N (c - (ell : ZMod n))))
    (hBasis_e : ∀ k, (hBasis k : C.V) = e k) (hj : j ≤ ell) (h3g : 3 * g ≤ ((baseIdOf hR).Bs.ℓ - 1) * M)
    (hQuot : ∀ (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L), CrysLat PD T₁ → CrysLat PD T₂ → F.Onto →
      ∀ (τ : K →ₐ[Qp] LL) (a : ℤ), IsJumpV PD T₂.ρ τ a → IsJumpV PD T₁.ρ τ a)
    {T₀ : LocLat G Qp LL O} (F : LatHom T₀.L T.L) (hc₀ : CrysLat PD T₀) (hon : F.Onto)
    (hJ : KindJumps PD T₀ W.emb G₀ Sz η ty) :
    LevSteps Hy ϖ j M g G₀ Sz η (E.kindAt (kdOf ty) c) (E.sizeAt (bbOf ty) c) e :=
  levSteps_of_jumps' Hy ϖ j M g G₀ Sz η _ _ levN_eq levB_φ lev_φ levB_Γ cmp_eq hs1 hP4 hP4L hSat hP3 h9 hP5 hc hJl hv_int hKb hϖ hℓm hn hroot G2 hφ hρζ huZv hutie hom' hl m hm hκ hBasis hBasis_e hj h3g
    (jumps_holds_quot hKb.2 hQuot F hc₀ hc hon c ell G₀ Sz η ty hJ)

theorem finalArc_holds [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
    [CharZero LL] [IsFractionRing O LL] [Fintype (K →ₐ[Qp] LL)]
    (Lb : LevB W) (uZ : ℤ_[PD.p]ˣ) (ιZ : ℤ_[PD.p] →+* O)
    {T₁ T₂ : LocLat G Qp LL O} {C₁ : Coord W (baseIdOf hR) T₁} {C₂ : Coord W (baseIdOf hR) T₂}
    {F : LatHom T₁.L T₂.L} (hC : CoordHom C₁ C₂ F) (c : ZMod n) (ell : ℕ) (H : ℕ → ℕ) (ϖ : O)
    (j M g G₀ Sz η : ℕ) (ty : ZMod n → LT) {r₁ r₂ : ℕ} (e₁ : Fin r₁ → C₁.V) (e₂ : Fin r₂ → C₂.V)
    (P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O))

    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (cmp_eq : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (i : ZMod n) (x : ↥(W.N T)),
      W.cmp T ((letE i : LetA O n) • x) = Lb.levB T i 1 x 0)
    (levB_φ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (i : ZMod n) (ζ : LL),
      (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) •
            φVB PD (LL := LL) (V := T.V) (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (lev_Γ : ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ f : LetA O n,
      W.lev i ζ (W.γA g f) = PowerSeries.rescale (algebraMap O LL (W.χΓ g : O)) (W.lev i ζ' f))
    (lev_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))

    (hs1 : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (hP4 : Formalism.MainNotions.DeltaInvariantLattices.P4W W Pt)
    (hP4L : LevelMapHodgeFiltration W) (hSat : Sat W) (hP3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (hP9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W)
    (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hDR : Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris PD LL)
    (hQuot : ∀ (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L), CrysLat PD T₁ → CrysLat PD T₂ → F.Onto →
      ∀ (τ : K →ₐ[Qp] LL) (a : ℤ), IsJumpV PD T₂.ρ τ a → IsJumpV PD T₁.ρ τ a)

    (hc₁ : CrysLat PD T₁) (hc₂ : CrysLat PD T₂) (hon : F.Onto) (hJ : KindJumps PD T₁ W.emb G₀ Sz η ty)

    (valRing : ValRing O v) (hKb : Function.Bijective (algebraMap K₀ K))

    (hϖ : Irreducible ϖ) (hℓm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O)
    (hn : ell ≤ n) (hroot : ∃ ζ : LL, IsPrimitiveRoot ζ (PD.p ^ n))
    (G2 : ∃ w : (PowerSeries O)ˣ, (baseIdOf hR).ι (baseIdOf hR).Bs.q = (w : PowerSeries O) *
      (((Polynomial.cyclotomic PD.p O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O))
    (hφ : W.φ₀ PowerSeries.X = (1 + PowerSeries.X) ^ PD.p - 1)
    (hρζ : ∀ s < ell, ∀ ζ ∈ primitiveRoots (PD.p ^ (s + 1)) LL,
      1 + rhoZ W c ζ PowerSeries.X = PowerSeries.C ζ * PowerSeries.exp LL)
    (huZv : ((uZ : ℤ_[PD.p]) - 1).valuation = 1) (hutie : ιZ uZ = (W.χΓ W.gam : O))
    (hom' : ∀ a : ZMod PD.p, a ≠ 0 → ∃ j : DeltaT PD.p, PadicInt.toZMod (j.1 : ℤ_[PD.p]) = a)

    (hl : 5 ≤ PD.p)
    (hBasis₁ : Module.Basis (Fin r₁) (PowerSeries O) ↥((latOf C₁).N (c - (ell : ZMod n))))
    (hBasis_e₁ : ∀ k, (hBasis₁ k : C₁.V) = e₁ k)
    (hBasis₂ : Module.Basis (Fin r₂) (PowerSeries O) ↥((latOf C₂).N (c - (ell : ZMod n))))
    (hBasis_e₂ : ∀ k, (hBasis₂ k : C₂.V) = e₂ k)
    (hP : ∀ k, ∃ a : Fin r₂ → PowerSeries O, (latHomOf hC).f (e₁ k) = ∑ l, a l • e₂ l ∧
      ∀ l, LinearMap.toMatrix' P l k = PowerSeries.constantCoeff (a l))
    (hj : j ≤ ell) (h3g : 3 * g ≤ ((baseIdOf hR).Bs.ℓ - 1) * M) :
    E.FinalArc (latHomOf hC) c ell H LL (KsW W) (DeltaT PD.p) ϖ (W.χΓ W.gam) j M g G₀ Sz η
      (E.kindAt (kdOf ty) c) (E.sizeAt (bbOf ty) c) := by
  obtain ⟨Mj₁, hj₁, m₁, hJl₁, hm₁⟩ := Assemble.jumps_bound (W := W) hDR hKb hc₁
  obtain ⟨Mj₂, hj₂, m₂, hJl₂, hm₂⟩ := Assemble.jumps_bound (W := W) hDR hKb hc₂
  have hT₁ := hc₁.2.2.2
  have hT₂ := hc₂.2.2.2
  have Hy₁ := lvHyp_holds' Lb hR uZ ιZ C₁ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m₁) e₁
    lev_Γ levB_Γ levN_eq hs1 hP5 (hP9 T₁ hT₁) hT₁ hJl₁ valRing hKb hl hutie m₁ hm₁ rfl
  have Hy₂ := lvHyp_holds' Lb hR uZ ιZ C₂ c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m₂) e₂
    lev_Γ levB_Γ levN_eq hs1 hP5 (hP9 T₂ hT₂) hT₂ hJl₂ valRing hKb hl hutie m₂ hm₂ rfl
  have ls₁ := levSteps_holds' Hy₁ ϖ j M g G₀ Sz η ty levN_eq (levB_φ T₁ hT₁) lev_φ levB_Γ (cmp_eq T₁ hT₁) hs1
    (hP4 T₁ hT₁) hP4L hSat (hP3 T₁ hT₁) (hP9 T₁ hT₁) hP5 hc₁ hJl₁ valRing.2.2 hKb hϖ hℓm hn hroot G2 hφ hρζ
    huZv hutie hom' hl m₁ hm₁ rfl hBasis₁ hBasis_e₁ hj h3g hJ
  have ls₂ := levSteps_holds_quot' Hy₂ ϖ j M g G₀ Sz η ty levN_eq (levB_φ T₂ hT₂) lev_φ levB_Γ (cmp_eq T₂ hT₂)
    hs1 (hP4 T₂ hT₂) hP4L hSat (hP3 T₂ hT₂) (hP9 T₂ hT₂) hP5 hc₂ hJl₂ valRing.2.2 hKb hϖ hℓm hn hroot G2 hφ
    hρζ huZv hutie hom' hl m₂ hm₂ rfl hBasis₂ hBasis_e₂ hj h3g hQuot F hc₁ hon hJ
  have he₁ : ∀ k, e₁ k ∈ (latOf C₁).N (c - (ell : ZMod n)) := fun k => by
    rw [← hBasis_e₁ k]
    exact (hBasis₁ k).2
  have he₂ : ∀ k, e₂ k ∈ (latOf C₂).N (c - (ell : ZMod n)) := fun k => by
    rw [← hBasis_e₂ k]
    exact (hBasis₂ k).2
  have ms := mapSteps_holds hC e₁ e₂ Hy₁ Hy₂ (mapHyp_of hR uZ ιZ F c) j M g η _ _ P levN_eq
    ls₁.k1b ls₁.unitsAt ls₂.k1b ls₂.unitsAt m₁ m₂ rfl rfl he₁ he₂ hP
  exact arc_of_steps hC Hy₁ Hy₂ (mapHyp_of hR uZ ιZ F c) ϖ j M g G₀ Sz η _ _ e₁ e₂ P ls₁ ls₂ ms

theorem coordSteps_holds [IsDomain O] [IsDiscreteValuationRing O] [CharZero LL]
    [Fintype (K →ₐ[Qp] LL)] (hR : Ring9 W) {e : W.DD W.one}

    (hs1 : W.s = 1) (hP9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hLem3 : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeLengthLemma W) (hDR : Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris PD LL)
    (hUnitGen : UnitGen W e) (hCrysOne : IsCrys PD W.one.ρ)

    (hKb : Function.Bijective (algebraMap K₀ K))

    (hl : 5 ≤ PD.p) :
    CoordSteps hR e :=
  coordSteps_of hR e (coeffStep_holds hR)
    (splitStep_holds inferInstance (hOnil_of (Assemble.p_ne_zero (LL := LL))) hs1
      (by omega) hP9 hLem3 (jumps_bounded_crystalline hDR hKb))
    (unitStep_holds hUnitGen hCrysOne)

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfAssemble =====

module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.RedGalBase
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PhiTTmul
public import Mathlib.RingTheory.Flat.TorsionFree
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.FlatAcr
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence
import Mathlib.Topology.Sheaves.Presheaf
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne
import Mathlib.Tactic.Linter.HaveILetI
import GroundTheory.PAdicHodge.ACrisBdRGalois
import Mathlib.RingTheory.RegularLocalRing.Defs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisIsAdicComplete, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuGaloisCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompatStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuGaloisCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuReductionCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittAcrisFlat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonGaloisFixed, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompatStatement, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.NuPull

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisIsAdicComplete =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisIsAdicComplete", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.ACrisAdic

theorem acris_isAdicComplete :
    ∀ {l : ℕ} [Fact l.Prime], IsAdicComplete (Ideal.span {(l : Acris l)}) (Acris l) := by
  intro l _
  exact Reformulated.AutPerF.Acris.isAdicComplete

end GlobalTheory.CompanionTheory.ACrisAdic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisIsAdicComplete =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuGaloisCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuGaloisCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.MuGal

private theorem cr_square_same_base {O : Type} [CommRing O] {F : B.Fn O} {b : Base}
    {h : b.t = 1} {κm κb : O →+* b.R ⧸ b.I} {Λ : Type} [CommRing Λ] {c : Λ →+* b.R}
    {g : b.R →+* b.R} {τ : Λ →+* Λ}
    (ma : Mor (F.cr b h κm) (F.cr b h κm) g)
    (m : Mor (F.cr b h κm) (F.cr b h κb) (RingHom.id b.R))
    (md : Mor (F.cr b h κb) (F.cr b h κb) g)
    (hg : ∀ a, g (c a) = c (τ a))
    (hpt : ∀ (B₀ : CommRingCat.{0}) (y : (F.cr b h κb).Pt.obj B₀),
      (ma.pt.app B₀ (m.pt.app B₀ y)).1.2 = (m.pt.app B₀ (md.pt.app B₀ y)).1.2)
    (j : ℕ) (t : CH.H (B.OM (F.cr b h κm) c) j) :
    (B.omMor (c := c) (c' := c) md τ hg).pull j
        ((B.omMor (c := c) (c' := c) m (RingHom.id Λ) (fun _ => rfl)).pull j t) =
      (B.omMor (c := c) (c' := c) m (RingHom.id Λ) (fun _ => rfl)).pull j
        ((B.omMor (c := c) (c' := c) ma τ hg).pull j t) :=
  (cr_square ma m m md hg (fun _ => rfl) (fun _ => rfl) hg (fun _ => rfl) hpt j t).symm

theorem mu_gal {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n j : ℕ) (t : Mid.HM r M n j) :
    B.galHc (B.schFn M.p) (okToOC l K) σ (galOC_okToOC σ) true n j (Mid.mu r M n j hT t) = Mid.mu r M n j hT (galM r M σ hσ n j t) := by
  let F := B.schFn M.p
  let b := B.bs l true n
  let κm := Mid.κm r n
  let κb := B.κb (okToOC l K) true n
  let g := galBase σ n
  let c := (base l).cris n
  let ma := B.crMor (F := F) (F' := F) (b := b) (b' := b) (ht := rfl) (ht' := rfl)
    (κ := κm) (κ' := κm) g rfl (B.dd_gal true σ n)
    (B.basePt F _ (gal_κm r σ hσ n)) fun _ _ _ => rfl
  let md := B.crMor (F := F) (F' := F) (b := b) (b' := b) (ht := rfl) (ht' := rfl)
    (κ := κb) (κ' := κb) g rfl (B.dd_gal true σ n)
    (B.basePt F _ (B.gal_κb (okToOC l K) σ (galOC_okToOC σ) true n)) fun _ _ _ => rfl
  refine cr_square_same_base (O := OK l K) (F := F) (b := b) (h := rfl) (κm := κm) (κb := κb)
    (Λ := Acris l) (c := c) (g := g) (τ := ACris.galCris σ)
    ma (Mid.mIn r M n hT) md (galBase_cris σ n) ?_ j t
  intro B₀ y
  -- Give the kernel the common point explicitly, before either composite is unfolded.
  exact Eq.refl (F.Pt.map (CommRingCat.ofHom (Mid.frbN (Mid.l_zero y.1.1) N)) y.1.2)

end GlobalTheory.CompanionTheory.MuGal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuGaloisCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.CrysMid

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

noncomputable def trueRed (M : Model l K) (n : ℕ) :
    Mor (B.Lc (B.schFn M.p) (okToOC l K) true (n + 1)) (B.Lc (B.schFn M.p) (okToOC l K) true n) ((base l).red (Nat.le_succ n)) :=
  B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true (n + 1)) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
      ((base l).red (Nat.le_succ n)) rfl (B.dd_red true _ (Nat.le_succ n))
      (B.basePt _ _ (B.red_κb (okToOC l K) true (Nat.le_succ n))) fun _ _ _ => rfl

noncomputable def midRed (r : CrystallineSemistableComparison.Res l K) (M : Model l K) (n : ℕ) :
    Mor (Mid.Lm r M (n + 1)) (Mid.Lm r M n) ((base l).red (Nat.le_succ n)) :=
  B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true (n + 1)) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
      ((base l).red (Nat.le_succ n)) rfl (B.dd_red true _ (Nat.le_succ n))
      (B.basePt _ _ (red_κm r (Nat.le_succ n))) fun _ _ _ => rfl

theorem ptIn_val (F : B.Fn (OK l K)) {r : CrystallineSemistableComparison.Res l K} {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (n : ℕ) (B₀ : CommRingCat.{0})
    (y : (F.ptK (B.κb (okToOC l K) true n)).obj B₀) (h : (l : B₀) = 0) :
    ((Mid.ptIn F n hT).app B₀ y).1.2 = F.Pt.map (CommRingCat.ofHom (Mid.frbN h N)) y.1.2 := rfl

theorem base_val {O : Type} [CommRing O] (F : B.Fn O) {k₁ k₂ : Type} [CommRing k₁] [CommRing k₂] {κ₁ : O →+* k₁} {κ₂ : O →+* k₂}
    (τ : k₁ →+* k₂) (h : τ.comp κ₁ = κ₂) (B₀ : CommRingCat.{0}) (y : (F.ptK κ₂).obj B₀) :
    ((B.basePt F τ h).app B₀ y).1.2 = y.1.2 := rfl

theorem ptIn_base (F : B.Fn (OK l K)) (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (n : ℕ) (B₀ : CommRingCat.{0})
    (y : (F.ptK (B.κb (okToOC l K) true n)).obj B₀) :
    ((Mid.ptIn F (n + 1) hT).app B₀ ((B.basePt F _ (B.red_κb (okToOC l K) true (Nat.le_succ n))).app B₀ y)).1.2 =
      ((B.basePt F _ (red_κm r (Nat.le_succ n))).app B₀ ((Mid.ptIn F n hT).app B₀ y)).1.2 := by
  have h : (l : B₀) = 0 := Mid.l_zero y.1.1
  rw [ptIn_val F hT (n + 1) B₀ _ h, base_val, base_val, ptIn_val F hT n B₀ _ h]

theorem pt_sq (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (n : ℕ) (B₀ : CommRingCat.{0})
    (y : (B.Lc (B.schFn M.p) (okToOC l K) true n).Pt.obj B₀) :
    ((Mid.mIn r M (n + 1) hT).pt.app B₀ ((trueRed M n).pt.app B₀ y)).1.2 =
      ((midRed r M n).pt.app B₀ ((Mid.mIn r M n hT).pt.app B₀ y)).1.2 :=
  ptIn_base (B.schFn M.p) r hT n B₀ y

theorem mid_square (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (n j : ℕ) (t : Mid.HM r M (n + 1) j) :
    (B.omMor (c := (base l).cris (n + 1)) (c' := (base l).cris n) (trueRed M n) (RingHom.id _) (B.red_cris _ (Nat.le_succ n))).pull j
      ((B.omMor (c := (base l).cris (n + 1)) (c' := (base l).cris (n + 1)) (Mid.mIn r M (n + 1) hT) (RingHom.id _) (Wc.idc _)).pull j t) =
    (B.omMor (c := (base l).cris n) (c' := (base l).cris n) (Mid.mIn r M n hT) (RingHom.id _) (Wc.idc _)).pull j
      ((B.omMor (c := (base l).cris (n + 1)) (c' := (base l).cris n) (midRed r M n) (RingHom.id _) (B.red_cris _ (Nat.le_succ n))).pull j t) :=
  cr_square (F₁ := B.schFn M.p) (F₂ := B.schFn M.p) (F₃ := B.schFn M.p) (F₄ := B.schFn M.p)
    (b₁ := B.bs l true (n + 1)) (b₂ := B.bs l true (n + 1)) (b₃ := B.bs l true n) (b₄ := B.bs l true n)
    (h₁ := rfl) (h₂ := rfl) (h₃ := rfl) (h₄ := rfl)
    (κ₁ := Mid.κm r (n + 1)) (κ₂ := B.κb (okToOC l K) true (n + 1)) (κ₃ := Mid.κm r n) (κ₄ := B.κb (okToOC l K) true n)
    (Λ := Acris l) (c₁ := (base l).cris (n + 1)) (c₂ := (base l).cris (n + 1)) (c₃ := (base l).cris n)
    (c₄ := (base l).cris n) (τ := RingHom.id _)
    (Mid.mIn r M (n + 1) hT) (trueRed M n) (midRed r M n) (Mid.mIn r M n hT)
    (Wc.idc _) (B.red_cris _ (Nat.le_succ n)) (B.red_cris _ (Nat.le_succ n)) (Wc.idc _) (fun x => (Wc.idc ((base l).red (Nat.le_succ n)) x).symm)
    (pt_sq r hT M n) j t

theorem mu_redHc (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (n j : ℕ) (t : Mid.HM r M (n + 1) j) :
    B.redHc (B.schFn M.p) (okToOC l K) true (Nat.le_succ n) j (Mid.mu r M (n + 1) j hT t) = Mid.mu r M n j hT ((redT r M (Nat.le_succ n)).pull j t) :=
  mid_square r hT M n j t

end GlobalTheory.CompanionTheory.CrysMid
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompatStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompatStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompatStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuGaloisCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuGaloisCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.NuGalSquare

theorem cr_square_semi {O : Type} [CommRing O] {F₁ F₂ F₃ F₄ : B.Fn O} {b₁ b₂ b₃ b₄ : Base} {h₁ : b₁.t = 1} {h₂ : b₂.t = 1}
    {h₃ : b₃.t = 1} {h₄ : b₄.t = 1} {κ₁ : O →+* b₁.R ⧸ b₁.I} {κ₂ : O →+* b₂.R ⧸ b₂.I} {κ₃ : O →+* b₃.R ⧸ b₃.I}
    {κ₄ : O →+* b₄.R ⧸ b₄.I} {Λ : Type} [CommRing Λ] {c₁ : Λ →+* b₁.R} {c₂ : Λ →+* b₂.R} {c₃ : Λ →+* b₃.R} {c₄ : Λ →+* b₄.R}
    {σa : b₁.R →+* b₂.R} {σb : b₂.R →+* b₄.R} {σc : b₁.R →+* b₃.R} {σd : b₃.R →+* b₄.R} {τa τb τc τd : Λ →+* Λ}
    (ma : Mor (F₁.cr b₁ h₁ κ₁) (F₂.cr b₂ h₂ κ₂) σa) (mb : Mor (F₂.cr b₂ h₂ κ₂) (F₄.cr b₄ h₄ κ₄) σb)
    (mc : Mor (F₁.cr b₁ h₁ κ₁) (F₃.cr b₃ h₃ κ₃) σc) (md : Mor (F₃.cr b₃ h₃ κ₃) (F₄.cr b₄ h₄ κ₄) σd)
    (ha : ∀ a, σa (c₁ a) = c₂ (τa a)) (hb : ∀ a, σb (c₂ a) = c₄ (τb a)) (hc : ∀ a, σc (c₁ a) = c₃ (τc a))
    (hd : ∀ a, σd (c₃ a) = c₄ (τd a)) (hτ : τb.comp τa = τd.comp τc) (hσ : ∀ r, σb (σa r) = σd (σc r))
    (hpt : ∀ (B₀ : CommRingCat.{0}) (y : (F₄.cr b₄ h₄ κ₄).Pt.obj B₀),
      (ma.pt.app B₀ (mb.pt.app B₀ y)).1.2 = (mc.pt.app B₀ (md.pt.app B₀ y)).1.2)
    (j : ℕ) (x : CH.H (B.OM (F₁.cr b₁ h₁ κ₁) c₁) j) :
    (B.omMor (c := c₂) (c' := c₄) mb τb hb).pull j ((B.omMor (c := c₁) (c' := c₂) ma τa ha).pull j x) =
      (B.omMor (c := c₃) (c' := c₄) md τd hd).pull j ((B.omMor (c := c₁) (c' := c₃) mc τc hc).pull j x) := by
  haveI t₁ : RingHomCompTriple τa τb (τb.comp τa) := ⟨rfl⟩
  haveI t₂ : RingHomCompTriple τc τd (τb.comp τa) := ⟨hτ.symm⟩
  rw [pull_pull (τb.comp τa), pull_pull (τb.comp τa)]
  exact cr_pull_eq _ _ (fun T => crHom (T := ma.obj (mb.obj T)) (T' := mc.obj (md.obj T)) (RingHom.id T.B)
    (fun r => congrArg T.i (hσ r)) (DPMorphism.id T.δ).isDPMorphism fun h => (pt_id _ h _).trans (hpt _ _))
    (fun _ _ => rfl) (fun _ _ => rfl) j x

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem commute_phi_gal (σ : Gal(PadicAlgCl l/K)) : Commute (ACris.phi (K := ℂ_[l]) (p := l)) (ACris.galCris σ) :=
  RingHom.ext fun a => ACris.phi_gal_smul σ a

theorem phiA_comp_gal (σ : Gal(PadicAlgCl l/K)) (N : ℕ) :
    (Mid.phiA l N).comp (ACris.galCris σ) = (ACris.galCris σ).comp (Mid.phiA l N) :=
  ((commute_phi_gal σ).pow_left N).eq

theorem commute_phi_galBase (σ : Gal(PadicAlgCl l/K)) (n : ℕ) : Commute ((base l).phi n) (galBase σ n) :=
  RingHom.ext fun r => by
    obtain ⟨a, rfl⟩ := (RL.base_acr (base l) isBase_base).2 n |>.1 r
    change (base l).phi n (galBase σ n ((base l).cris n a)) = galBase σ n ((base l).phi n ((base l).cris n a))
    rw [galBase_cris, (base l).phi_cris, (base l).phi_cris, galBase_cris]
    exact congrArg _ (ACris.phi_gal_smul σ a)

theorem phiP_galBase (σ : Gal(PadicAlgCl l/K)) (n N : ℕ) (x : (base l).Acr n) :
    Mid.phiP l n N (galBase σ n x) = galBase σ n (Mid.phiP l n N x) :=
  RingHom.congr_fun ((commute_phi_galBase σ n).pow_left N).eq x

theorem nu_gal : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n j : ℕ) (x : B.Hc (B.schFn M.p) (okToOC l K) true n j), Mid.nu r M n j hT (B.galHc (B.schFn M.p) (okToOC l K) σ (galOC_okToOC σ) true n j x) = galM r M σ hσ n j (Mid.nu r M n j hT x) := by
  intro l _ K r N hT M σ hσ n j x
  exact cr_square_semi
    (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true n) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
      (galBase σ n) rfl (B.dd_gal true σ n) (B.basePt _ _ (B.gal_κb (okToOC l K) σ (galOC_okToOC σ) true n)) fun _ _ _ => rfl)
    (Mid.mOut r M n hT) (Mid.mOut r M n hT)
    (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true n) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
      (galBase σ n) rfl (B.dd_gal true σ n) (B.basePt _ _ (gal_κm r σ hσ n)) fun _ _ _ => rfl)
    (galBase_cris σ n) (Mid.phiP_cris n N) (Mid.phiP_cris n N) (galBase_cris σ n)
    (phiA_comp_gal σ N) (phiP_galBase σ n N) (fun _ _ => rfl) j x

end GlobalTheory.CompanionTheory.NuGalSquare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuGaloisCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuReductionCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuReductionCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.RedGalBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.NuRed

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem red_phiP {m n : ℕ} (h : n ≤ m) (N : ℕ) (x : (base l).Acr m) :
    (base l).red h (Mid.phiP l m N x) = Mid.phiP l n N ((base l).red h x) := by
  induction N with
  | zero => rfl
  | succ N ih => rw [Mid.phiP_succ, Mid.phiP_succ, ← ih]; exact (pdOk_frob _).red_acr h _

def redLm (r : CrystallineSemistableComparison.Res l K) (M : Model l K) {m n : ℕ} (h : n ≤ m) :
    Mor (Mid.Lm r M m) (Mid.Lm r M n) ((base l).red h) :=
  B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true m) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
    ((base l).red h) rfl (B.dd_red true _ h) (B.basePt _ _ (red_κm r h)) fun _ _ _ => rfl

def redLc (M : Model l K) {m n : ℕ} (h : n ≤ m) :
    Mor (B.Lc (B.schFn M.p) (okToOC l K) true m) (B.Lc (B.schFn M.p) (okToOC l K) true n) ((base l).red h) :=
  B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true m) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
    ((base l).red h) rfl (B.dd_red true _ h) (B.basePt _ _ (B.red_κb _ true h)) fun _ _ _ => rfl

theorem ptOut_snd (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (F : B.Fn (OK l K)) (n : ℕ)
    (B₀ : CommRingCat.{0}) (y : (F.ptK (Mid.κm r n)).obj B₀) :
    ((Mid.ptOut F n hT).app B₀ y).1.2 = y.1.2 := rfl

theorem nu_pt (r : CrystallineSemistableComparison.Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (F : B.Fn (OK l K)) {m n : ℕ} (h : n ≤ m)
    (B₀ : CommRingCat.{0}) (y : (F.ptK (Mid.κm r n)).obj B₀) :
    ((Mid.ptOut F m hT).app B₀ ((B.basePt F _ (red_κm r h)).app B₀ y)).1.2 =
      ((B.basePt F _ (B.red_κb _ true h)).app B₀ ((Mid.ptOut F n hT).app B₀ y)).1.2 := by
  rw [ptOut_snd, SH.base_snd, SH.base_snd, ptOut_snd]

theorem nu_red : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K) {N : ℕ}
    (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (n j : ℕ) (x : B.Hc (B.schFn M.p) (okToOC l K) true (n + 1) j),
    (redT r M (Nat.le_succ n)).pull j (Mid.nu r M (n + 1) j hT x) =
      Mid.nu r M n j hT (B.redHc (B.schFn M.p) (okToOC l K) true (Nat.le_succ n) j x) := by
  intro l _ K r N hT M n j x
  unfold Mid.nu Mid.nuMor B.redHc B.redMor redT
  exact cr_square (Mid.mOut r M (n + 1) hT) (redLm r M (Nat.le_succ n)) (redLc M (Nat.le_succ n)) (Mid.mOut r M n hT)
    (Mid.phiP_cris _ N) (B.red_cris _ (Nat.le_succ n)) (B.red_cris _ (Nat.le_succ n)) (Mid.phiP_cris _ N)
    (red_phiP (Nat.le_succ n) N) (nu_pt r hT _ (Nat.le_succ n)) j x

end GlobalTheory.CompanionTheory.NuRed
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuReductionCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittAcrisFlat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittAcrisFlat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PhiTTmul\nimport GroundTheory.PAdicHodge.ACrisBdRGalois\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.RingTheory.Flat.TorsionFree\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.FlatW

theorem eq_zero_of_pow_mul_eq_zero {l : ℕ} [Fact l.Prime] (m : ℕ) {x : Acris l}
    (h : (l : Acris l) ^ m * x = 0) : x = 0 := by
  induction m with
  | zero => simpa using h
  | succ n ih =>
    apply ih
    apply ACris.eq_zero_of_p_mul_eq_zero (K := ℂ_[l]) (p := l)
    rw [← mul_assoc, ← pow_succ']
    exact h

theorem flat_AW {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K) :
    Module.Flat (WittVector l r.k) (CrystallineSemistableComparison.Pb.AW r) := by
  rw [Module.Flat.flat_iff_torsion_eq_bot_of_isBezout, eq_bot_iff]
  intro a ha
  obtain ⟨⟨y, hy0⟩, hy⟩ := (Submodule.mem_torsion_iff _).1 ha
  have hne : y ≠ 0 := nonZeroDivisors.ne_zero hy0
  obtain ⟨m, b, e⟩ := WittVector.exists_eq_pow_p_mul' y hne
  have hu : IsUnit (r.w (b : WittVector l r.k)) := b.isUnit.map r.w
  have key : ∀ x : Acris l, r.w y * x = 0 → x = 0 := by
    intro x h
    rw [e, map_mul, map_pow, map_natCast] at h
    apply eq_zero_of_pow_mul_eq_zero m
    apply hu.mul_right_eq_zero.1
    linear_combination h
  exact (Submodule.mem_bot _).2 (key a hy)

end GlobalTheory.CompanionTheory.FlatW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittAcrisFlat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonGaloisFixed =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonGaloisFixed", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.FlatAcr\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.BWGal

theorem gal_wn {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K)
    (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n : ℕ) (x : (Wc.bs l r.k n).R) :
    galBase σ n (Mid.wn r n x) = Mid.wn r n x := by
  obtain ⟨w, rfl⟩ := Ideal.Quotient.mk_surjective x
  rw [Mid.wn_mk, galBase_cris, hσ]

abbrev bWM {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K) (M : Model l K) (n : ℕ) :
    Mor (Wc.L l (B.schFn M.p) r.ρ n) (Mid.Lm r M n) (Mid.wn r n) :=
  B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := Wc.bs l r.k n) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
    (Mid.wn r n) rfl (dp_wn r n) (B.basePt _ (Ideal.quotientMap _ (Mid.wn r n) (Mid.im_le r n)) rfl) fun _ _ _ => rfl

abbrev gM {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K) (M : Model l K)
    (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n : ℕ) :
    Mor (Mid.Lm r M n) (Mid.Lm r M n) (galBase σ n) :=
  B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true n) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
    (galBase σ n) rfl (B.dd_gal true σ n) (B.basePt _ _ (gal_κm r σ hσ n)) fun _ _ _ => rfl

theorem bW_gal : ∀ {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (r : CrystallineSemistableComparison.Res l K) (M : Model l K) (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n j : ℕ) (y : (HSW r M j).M n), galM r M σ hσ n j (bW r M n j y) = bW r M n j y := by
  intro l _ K r M σ hσ n j y
  haveI : RingHomCompTriple r.w (ACris.galCris σ) r.w := ⟨RingHom.ext hσ⟩
  refine (pull_pull r.w (bWMor r M n) (galT' r M σ hσ n) j y).trans ?_
  exact cr_pull_eq _ _ (fun T => crHom (T := (bWM r M n).obj ((gM r M σ hσ n).obj T)) (T' := (bWM r M n).obj T)
    (RingHom.id T.B) (fun x => congrArg T.i (gal_wn r σ hσ n x)) (DPMorphism.id T.δ).isDPMorphism
    fun h => (pt_id _ h _).trans rfl) (fun _ _ => rfl) (fun _ _ => rfl) j y

end GlobalTheory.CompanionTheory.BWGal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonGaloisFixed =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CrSEqOne\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PeriodBaseChange.FlatAcr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.CrisBaseChange

theorem cr_square_coeff {O : Type} [CommRing O] {F₁ F₂ F₃ F₄ : B.Fn O} {b₁ b₂ b₃ b₄ : Base} {h₁ : b₁.t = 1} {h₂ : b₂.t = 1} {h₃ : b₃.t = 1}
    {h₄ : b₄.t = 1} {κ₁ : O →+* b₁.R ⧸ b₁.I} {κ₂ : O →+* b₂.R ⧸ b₂.I} {κ₃ : O →+* b₃.R ⧸ b₃.I} {κ₄ : O →+* b₄.R ⧸ b₄.I}
    {Λ Λ' : Type} [CommRing Λ] [CommRing Λ'] {c₁ : Λ →+* b₁.R} {c₂ : Λ' →+* b₂.R} {c₃ : Λ →+* b₃.R} {c₄ : Λ' →+* b₄.R}
    {σa : b₁.R →+* b₂.R} {σb : b₂.R →+* b₄.R} {σc : b₁.R →+* b₃.R} {σd : b₃.R →+* b₄.R} {τ : Λ →+* Λ'}
    (ma : Mor (F₁.cr b₁ h₁ κ₁) (F₂.cr b₂ h₂ κ₂) σa) (mb : Mor (F₂.cr b₂ h₂ κ₂) (F₄.cr b₄ h₄ κ₄) σb)
    (mc : Mor (F₁.cr b₁ h₁ κ₁) (F₃.cr b₃ h₃ κ₃) σc) (md : Mor (F₃.cr b₃ h₃ κ₃) (F₄.cr b₄ h₄ κ₄) σd)
    (ha : ∀ a, σa (c₁ a) = c₂ (τ a)) (hb : ∀ a, σb (c₂ a) = c₄ (RingHom.id Λ' a)) (hc : ∀ a, σc (c₁ a) = c₃ (RingHom.id Λ a))
    (hd : ∀ a, σd (c₃ a) = c₄ (τ a)) (hσ : ∀ r, σb (σa r) = σd (σc r))
    (hpt : ∀ (B₀ : CommRingCat.{0}) (y : (F₄.cr b₄ h₄ κ₄).Pt.obj B₀),
      (ma.pt.app B₀ (mb.pt.app B₀ y)).1.2 = (mc.pt.app B₀ (md.pt.app B₀ y)).1.2)
    (j : ℕ) (x : CH.H (B.OM (F₁.cr b₁ h₁ κ₁) c₁) j) :
    (B.omMor (c := c₂) (c' := c₄) mb (RingHom.id Λ') hb).pull j ((B.omMor (c := c₁) (c' := c₂) ma τ ha).pull j x) =
      (B.omMor (c := c₃) (c' := c₄) md τ hd).pull j ((B.omMor (c := c₁) (c' := c₃) mc (RingHom.id Λ) hc).pull j x) := by
  rw [pull_pull τ, pull_pull τ]
  exact cr_pull_eq _ _ (fun T => crHom (T := ma.obj (mb.obj T)) (T' := mc.obj (md.obj T)) (RingHom.id T.B)
    (fun r => congrArg T.i (hσ r)) (DPMorphism.id T.δ).isDPMorphism fun h => (pt_id _ h _).trans (hpt _ _))
    (fun _ _ => rfl) (fun _ _ => rfl) j x

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem red_wn (r : CrystallineSemistableComparison.Res l K) (n : ℕ) (x : Wc.Wm l r.k (n + 1)) :
    (base l).red (Nat.le_succ n) (Mid.wn r (n + 1) x) = Mid.wn r n (Wc.red l r.k n x) := by
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
  rw [Mid.wn_mk, B.red_cris, Wc.red_mk, Mid.wn_mk]
  rfl

theorem bW_red (r : CrystallineSemistableComparison.Res l K) (M : Model l K) (n j : ℕ) (y : (HSW r M j).M (n + 1)) :
    (redT r M (Nat.le_succ n)).pull j (bW r M (n + 1) j y) = bW r M n j ((HSW r M j).r n y) :=
  cr_square_coeff (τ := r.w)
    (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := Wc.bs l r.k (n + 1)) (b' := B.bs l true (n + 1)) (ht := rfl) (ht' := rfl)
      (Mid.wn r (n + 1)) rfl (dp_wn r (n + 1)) (B.basePt _ (Ideal.quotientMap _ (Mid.wn r (n + 1)) (Mid.im_le r (n + 1))) rfl) fun _ _ _ => rfl)
    (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true (n + 1)) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
      ((base l).red (Nat.le_succ n)) rfl (B.dd_red true _ (Nat.le_succ n)) (B.basePt _ _ (red_κm r (Nat.le_succ n))) fun _ _ _ => rfl)
    (Wc.redM l (B.schFn M.p) r.ρ n)
    (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := Wc.bs l r.k n) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
      (Mid.wn r n) rfl (dp_wn r n) (B.basePt _ (Ideal.quotientMap _ (Mid.wn r n) (Mid.im_le r n)) rfl) fun _ _ _ => rfl)
    (Mid.wn_mk r (n + 1)) (B.red_cris _ (Nat.le_succ n)) (Wc.red_mk l r.k n)
    (Mid.wn_mk r n) (red_wn r n) (fun _ _ => rfl) j y

end GlobalTheory.CompanionTheory.CrisBaseChange
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompatStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompatStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg CrystallineSemistableComparison CrystallineSemistableComparison.Pb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompatStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.NuPull =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.NuPull", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.PullT\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.PhiTTmul\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisIsAdicComplete\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuGaloisCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerMuReductionCompatStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuFrobeniusCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuGaloisCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuPullbackCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TeichmullerNuReductionCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittAcrisFlat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonFrobeniusCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonGaloisFixed\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonPullbackCompat\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittComparisonReductionCompatStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false


noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg

namespace CrystallineSemistableComparison.Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem bW_gal (r : Res l K) (M : Model l K) (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n j : ℕ)
    (y : (HSW r M j).M n) : galM r M σ hσ n j (bW r M n j y) = bW r M n j y := by apply _root_.GlobalTheory.CompanionTheory.BWGal.bW_gal

theorem nu_red (r : Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (n j : ℕ)
    (x : B.Hc (B.schFn M.p) (okToOC l K) true (n + 1) j) :
    (redT r M (Nat.le_succ n)).pull j (Mid.nu r M (n + 1) j hT x) =
      Mid.nu r M n j hT (B.redHc (B.schFn M.p) (okToOC l K) true (Nat.le_succ n) j x) := by apply _root_.GlobalTheory.CompanionTheory.NuRed.nu_red

theorem nu_gal (r : Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (σ : Gal(PadicAlgCl l/K))
    (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n j : ℕ) (x : B.Hc (B.schFn M.p) (okToOC l K) true n j) :
    Mid.nu r M n j hT (B.galHc (B.schFn M.p) (okToOC l K) σ (galOC_okToOC σ) true n j x) =
      galM r M σ hσ n j (Mid.nu r M n j hT x) := by apply _root_.GlobalTheory.CompanionTheory.NuGalSquare.nu_gal

theorem mu_gal (r : Res l K) {N : ℕ} (hT : Mid.TeichmullerCongruence r N) (M : Model l K) (σ : Gal(PadicAlgCl l/K))
    (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n j : ℕ) (t : Mid.HM r M n j) :
    B.galHc (B.schFn M.p) (okToOC l K) σ (galOC_okToOC σ) true n j (Mid.mu r M n j hT t) =
      Mid.mu r M n j hT (galM r M σ hσ n j t) := by apply _root_.GlobalTheory.CompanionTheory.MuGal.mu_gal

theorem flatW (r : Res l K) : Module.Flat (WittVector l r.k) (AW r) := by apply _root_.GlobalTheory.CompanionTheory.FlatW.flat_AW

theorem adicA : IsAdicComplete (Ideal.span {(l : Acris l)}) (Acris l) := by apply _root_.GlobalTheory.CompanionTheory.ACrisAdic.acris_isAdicComplete

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusFactorisation.NuPull =====

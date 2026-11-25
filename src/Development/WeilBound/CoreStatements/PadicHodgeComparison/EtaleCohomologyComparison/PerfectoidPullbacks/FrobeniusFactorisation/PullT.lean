module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.MuMor
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.TeichmullerCongruence
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WittToAcrisIsDPMorphism
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.SchFnPtTw
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

@[expose] public section

set_option backward.isDefEq.respectTransparency false


noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct GroundTheory.PAdicHodge GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison.PAlg

namespace CrystallineSemistableComparison.Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem κm_eq (r : Res l K) (n : ℕ) (x : OK l K) (w : WittVector l r.k) (hw : WittVector.constantCoeff w = r.ρ x) :
    Mid.κm r n x = Ideal.Quotient.mk _ ((base l).cris n (r.w w)) := by
  change Ideal.quotientMap _ (Mid.wn r n) (Mid.im_le r n) (Wc.res l r.k n (r.ρ x)) = _
  rw [← hw, Wc.res_coeff, Ideal.quotientMap_mk, Mid.wn_mk]

theorem red_κm (r : Res l K) {m n : ℕ} (h : n ≤ m) :
    (Ideal.quotientMap _ ((base l).red h) (B.red_le true h)).comp (Mid.κm r m) = Mid.κm r n := RingHom.ext fun x => by
  obtain ⟨w, hw⟩ := WittVector.constantCoeff_surjective l (r.ρ x)
  rw [RingHom.comp_apply, κm_eq r m x w hw, κm_eq r n x w hw, Ideal.quotientMap_mk, B.red_cris]

theorem gal_κm (r : Res l K) (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n : ℕ) :
    (Ideal.quotientMap _ (galBase σ n) (B.gal_le σ true n)).comp (Mid.κm r n) = Mid.κm r n := RingHom.ext fun x => by
  obtain ⟨w, hw⟩ := WittVector.constantCoeff_surjective l (r.ρ x)
  rw [RingHom.comp_apply, κm_eq r n x w hw, Ideal.quotientMap_mk, galBase_cris, hσ]

abbrev OT (r : Res l K) (M : Model l K) (n : ℕ) : Thick (Mid.Lm r M n) ⥤ ModuleCat.{0} (Acris l) :=
  B.OM (Mid.Lm r M n) ((base l).cris n)

def redT (r : Res l K) (M : Model l K) {m n : ℕ} (h : n ≤ m) : CH.Mor (OT r M m) (OT r M n) (RingHom.id _) :=
  B.omMor (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true m) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
    ((base l).red h) rfl (B.dd_red true _ h) (B.basePt _ _ (red_κm r h)) fun _ _ _ => rfl) (RingHom.id _) (B.red_cris _ h)

def HMS (r : Res l K) (M : Model l K) (j : ℕ) : Sys.{1} (Acris l) where
  M n := Mid.HM r M n j
  r n := (redT r M n.le_succ).pull j

def galT' (r : Res l K) (M : Model l K) (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n : ℕ) :
    CH.Mor (OT r M n) (OT r M n) (ACris.galCris σ) :=
  B.omMor (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := B.bs l true n) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
    (galBase σ n) rfl (B.dd_gal true σ n) (B.basePt _ _ (gal_κm r σ hσ n)) fun _ _ _ => rfl) (ACris.galCris σ) (galBase_cris σ n)

def galM (r : Res l K) (M : Model l K) (σ : Gal(PadicAlgCl l/K)) (hσ : ∀ w, ACris.galCris σ (r.w w) = r.w w) (n j : ℕ) :
    Mid.HM r M n j →ₛₗ[ACris.galCris σ] Mid.HM r M n j := (galT' r M σ hσ n).pull j

def bWMor (r : Res l K) (M : Model l K) (n : ℕ) : CH.Mor (Wc.OM l (B.schFn M.p) r.ρ n) (OT r M n) r.w := by
  have hdp := _root_.GlobalTheory.CompanionTheory.CrisDP.wn_isDPMorphism r n
  exact
    B.omMor (B.crMor (F := B.schFn M.p) (F' := B.schFn M.p) (b := Wc.bs l r.k n) (b' := B.bs l true n) (ht := rfl) (ht' := rfl)
      (Mid.wn r n) rfl hdp (B.basePt _ (Ideal.quotientMap _ (Mid.wn r n) (Mid.im_le r n)) rfl) fun _ _ _ => rfl)
      r.w (Mid.wn_mk r n)

abbrev HSW (r : Res l K) (M : Model l K) (j : ℕ) : Sys.{1} (WittVector l r.k) := Wc.HS l (B.schFn M.p) r.ρ j

def bW (r : Res l K) (M : Model l K) (n j : ℕ) : (HSW r M j).M n →ₛₗ[r.w] Mid.HM r M n j := (bWMor r M n).pull j

end CrystallineSemistableComparison.Pb

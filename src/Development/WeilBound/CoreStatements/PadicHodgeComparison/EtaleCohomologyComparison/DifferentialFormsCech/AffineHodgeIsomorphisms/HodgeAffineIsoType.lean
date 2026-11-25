module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.CechAugRowU
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenFiniteInfIff
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenOfThickeningMorphism
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.ZarAbs
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SurjectiveOfLocallySurjective
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.CechDefs
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupH0NormalCoboundary
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FunctorId
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OntoFormLaws
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepresentativeRestrict
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InstFintypeHodgeBidegree
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.TopRes
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsDlogFirstChernClass
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.FormUniq
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineFormsOfFormUniqueness
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.FormUniq
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.OmNatB
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj
import Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap
import Mathlib.Tactic.Linter.HaveILetI
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CocycleZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovGlue, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OmMapEqMOm, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineSmoothFormsBijective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormCupWedge, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormIsoOfBijective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormOne, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormPullbackCompat, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.AsmOnto, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HdgAffIsoOnto, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HodgeAffineIsoType

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CocycleZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CocycleZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.CechAugRowU\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory CrystallineSemistableComparison CrystallineSemistableComparison.Pb
universe u v w

noncomputable section

namespace GlobalTheory.CompanionTheory.CechRowExact

variable {R : Type} [CommRing R] {C : Type u} [Category.{v} C] (F : C ⥤ ModuleCat.{w} R)
  {ι : Type} (U : ι → ObjectProperty C)

theorem cosieve_capT (hU : ∀ α, Cosieve (U α)) {n : ℕ} (i : Fin n → ι) : Cosieve (capT U i) :=
  fun _ _ φ h a => hU (i a) φ (h a)

theorem capT_cons {n : ℕ} {a : ι} {i : Fin n → ι} {T : C} (ha : U a T) (hi : capT U i T) :
    capT U (Fin.cons (α := fun _ => ι) a i) T := fun k => by
  refine Fin.cases ?_ (fun k => ?_) k
  · exact ha
  · exact hi k

def liftC (hU : ∀ α, Cosieve (U α)) {n q : ℕ} (i : Fin n → ι) (s : ComposableArrows C q)
    (h : capT U i (s.obj 0)) : ComposableArrows (capT U i).FullSubcategory q :=
  (capT U i).lift s fun k => cosieve_capT U hU i (s.map (homOfLE (Fin.zero_le k))) h

def ev (hU : ∀ α, Cosieve (U α)) {n q : ℕ} (i : Fin n → ι) (x : CH.Cn ((capT U i).ι ⋙ F) q)
    (s : ComposableArrows C q) (h : capT U i (s.obj 0)) : F.obj (s.obj (Fin.last q)) :=
  x (liftC U hU i s h)

variable {F U}

theorem ev_congr (hU : ∀ α, Cosieve (U α)) {n q : ℕ} (f : ∀ i : Fin n → ι, CH.Cn ((capT U i).ι ⋙ F) q)
    {i i' : Fin n → ι} (e : i = i') (s : ComposableArrows C q) (h : capT U i (s.obj 0))
    (h' : capT U i' (s.obj 0)) : ev F U hU i (f i) s h = ev F U hU i' (f i') s h' := by
  subst e; rfl

theorem ev_d (hU : ∀ α, Cosieve (U α)) {p q : ℕ} (f : ∀ i : Fin (p + 1) → ι, CH.Cn ((capT U i).ι ⋙ F) q)
    (i : Fin (p + 2) → ι) (s : ComposableArrows C q) (h : capT U i (s.obj 0)) :
    ev F U hU i (((cechCC F U).cos q).d p f i) s h =
      ∑ k : Fin (p + 2), (-1 : ℤ) ^ (k : ℕ) • ev F U hU (i ∘ k.succAbove) (f (i ∘ k.succAbove)) s (fun a => h _) := by
  have e := congrFun (congrFun (Cos.d_apply ((cechCC F U).cos q) p f) i) (liftC U hU i s h)
  refine e.trans ?_
  rw [Finset.sum_apply, Finset.sum_apply]
  rfl

theorem cons_zero {n : ℕ} (a : ι) (i : Fin (n + 1) → ι) :
    (Fin.cons (α := fun _ => ι) a i : Fin (n + 2) → ι) ∘ (0 : Fin (n + 2)).succAbove = i := by
  funext k
  simp [Function.comp]

theorem cons_succ {n : ℕ} (a : ι) (i : Fin (n + 1) → ι) (j : Fin (n + 1)) :
    (Fin.cons (α := fun _ => ι) a i : Fin (n + 2) → ι) ∘ j.succ.succAbove =
      Fin.cons (α := fun _ => ι) a (i ∘ j.succAbove) := by
  funext k
  refine Fin.cases ?_ (fun k => ?_) k
  · simp [Function.comp]
  · simp [Function.comp]

def hh (hU : ∀ α, Cosieve (U α)) (α : C → ι) (hα : ∀ T, U (α T) T) {p q : ℕ}
    (f : ∀ i : Fin (p + 2) → ι, CH.Cn ((capT U i).ι ⋙ F) q) (i : Fin (p + 1) → ι) :
    CH.Cn ((capT U i).ι ⋙ F) q := fun t =>
  ev F U hU _ (f (Fin.cons (α := fun _ => ι) (α (t.obj 0).obj) i)) (t ⋙ (capT U i).ι)
    (capT_cons U (hα _) (t.obj 0).property)

theorem cocycle_eq (hU : ∀ α, Cosieve (U α)) (α : C → ι) (hα : ∀ T, U (α T) T) {p q : ℕ}
    (f : ∀ i : Fin (p + 2) → ι, CH.Cn ((capT U i).ι ⋙ F) q) (hf : ((cechCC F U).cos q).d (p + 1) f = 0)
    (i : Fin (p + 2) → ι) (s : ComposableArrows C q) (h : capT U i (s.obj 0)) :
    ev F U hU i (f i) s h = ∑ j : Fin (p + 2), (-1 : ℤ) ^ (j : ℕ) •
      ev F U hU _ (f (Fin.cons (α := fun _ => ι) (α (s.obj 0)) (i ∘ j.succAbove))) s
        (capT_cons U (hα _) fun a => h _) := by
  have h' := capT_cons U (hα (s.obj 0)) h
  have e := ev_d hU f _ s h'
  have z : ev F U hU _ (((cechCC F U).cos q).d (p + 1) f (Fin.cons (α := fun _ => ι) (α (s.obj 0)) i)) s h' = 0 := by
    rw [hf]; rfl
  rw [z, Fin.sum_univ_succ] at e
  have e0 := ev_congr hU f (cons_zero (α (s.obj 0)) i) s (fun a => h' _) h
  have e1 : ∀ j : Fin (p + 2), ev F U hU _ (f ((Fin.cons (α := fun _ => ι) (α (s.obj 0)) i : Fin (p + 3) → ι) ∘ j.succ.succAbove)) s (fun a => h' _) =
      ev F U hU _ (f (Fin.cons (α := fun _ => ι) (α (s.obj 0)) (i ∘ j.succAbove))) s (capT_cons U (hα _) fun a => h _) :=
    fun j => ev_congr hU f (cons_succ _ i j) s _ _
  simp only [Fin.val_zero, pow_zero, one_smul, Fin.val_succ, pow_succ, mul_neg, mul_one, neg_smul,
    Finset.sum_neg_distrib, e0, e1] at e
  exact (add_neg_eq_zero.1 e.symm)

theorem cocycle_zero (hU : ∀ α, Cosieve (U α)) (α : C → ι) (hα : ∀ T, U (α T) T) {q : ℕ}
    (f : ∀ i : Fin (0 + 1) → ι, CH.Cn ((capT U i).ι ⋙ F) q) (hf : ((cechCC F U).cos q).d 0 f = 0)
    (i : Fin (0 + 1) → ι) (s : ComposableArrows C q) (h : capT U i (s.obj 0)) :
    ev F U hU i (f i) s h = ev F U hU _ (f fun _ => α (s.obj 0)) s (fun _ => hα _) := by
  have h' := capT_cons U (hα (s.obj 0)) h
  have e := ev_d hU f _ s h'
  have z : ev F U hU _ (((cechCC F U).cos q).d 0 f (Fin.cons (α := fun _ => ι) (α (s.obj 0)) i)) s h' = 0 := by
    rw [hf]; rfl
  rw [z, Fin.sum_univ_two] at e
  have e0 := ev_congr hU f (cons_zero (α (s.obj 0)) i) s (fun a => h' _) h
  have e1 := ev_congr hU f (i := (Fin.cons (α := fun _ => ι) (α (s.obj 0)) i : Fin (0 + 2) → ι) ∘ (1 : Fin (0 + 2)).succAbove)
    (i' := fun _ => α (s.obj 0)) (funext fun k => by
      obtain rfl : k = 0 := Subsingleton.elim (α := Fin 1) _ _
      rfl) s (fun a => h' _) (fun _ => hα _)
  simp only [Fin.val_zero, pow_zero, one_smul, Fin.val_one, pow_one, neg_smul, e0, e1] at e
  exact (add_neg_eq_zero.1 e.symm)

end GlobalTheory.CompanionTheory.CechRowExact


open GlobalTheory.CompanionTheory.CechRowExact in
theorem GlobalTheory.CompanionTheory.CechRowExact.cech_rows : ∀ {R : Type} [CommRing R] {C : Type u} [Category.{v} C] (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C), (∀ α, Cosieve (U α)) → (∀ T, ∃ α, U α T) → ∀ q, ((cechCC F U).dcx.row q).ResUpTo 1 ((cechAugRowU F U).ε q) := by
  intro R _ C _ F ι U hU hc q
  choose α hα using hc
  refine ⟨(cechAugRowU F U).hε q, fun g hg => ?_, fun f hf => ?_, fun n f hf => ?_⟩
  · rw [one_smul]
    funext s
    have h1 := congrFun (congrFun hg fun _ => α (s.obj 0)) (liftC U hU _ s fun _ => hα _)
    exact h1
  · refine ⟨fun s => ev F U hU _ (f fun _ => α (s.obj 0)) s (fun _ => hα _), ?_⟩
    rw [one_smul]
    funext i t
    exact (cocycle_zero hU α hα f hf i (t ⋙ (capT U i).ι) (t.obj 0).property).symm
  · refine ⟨hh hU α hα f, ?_⟩
    rw [one_smul]
    funext i t
    refine (ev_d hU (hh hU α hα f) i (t ⋙ (capT U i).ι) (t.obj 0).property).trans ?_
    refine Eq.trans ?_ (cocycle_eq hU α hα f hf i (t ⋙ (capT U i).ι) (t.obj 0).property).symm
    rfl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CocycleZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovGlue =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovGlue", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.CechAugRowU\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CocycleZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenFiniteInfIff\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenOfThickeningMorphism\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.ZarAbs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.PUnit\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

noncomputable section

namespace GlobalTheory.CompanionTheory.CechDeg

open CrystallineSemistableComparison CrystallineSemistableComparison.Pb

universe w w'

section Abstract

variable {R : Type} [CommRing R]

def shC (K : DCx.{w} R) : DCx.{w} R where
  X p q := K.X (p + 1) q
  dh p q := K.dh (p + 1) q
  dv p q := - K.dv (p + 1) q
  hh p q := K.hh (p + 1) q
  vv p q x := by simp [K.vv]
  hv p q x := by simp [K.hv]

def Ex (K : DCx.{w} R) (a : ℕ) : Prop :=
  ∀ p, (0 < a → Function.Injective (K.dv p 0)) ∧
    ∀ q, q + 1 < a → ∀ x, K.dv p (q + 1) x = 0 → ∃ y, K.dv p q y = x

theorem Ex.sh {K : DCx.{w} R} {a : ℕ} (h : Ex K a) : Ex (shC K) a := by
  intro p
  refine ⟨fun ha x y hxy => (h (p + 1)).1 ha (neg_injective hxy), fun q hq x hx => ?_⟩
  obtain ⟨y, hy⟩ := (h (p + 1)).2 q hq x (neg_eq_zero.1 hx)
  exact ⟨-y, by simp [shC, hy]⟩

def sh (K : DCx.{w} R) (x : ∀ p q, K.X p q) : ∀ p q, (shC K).X p q := fun p q => x (p + 1) q

def un (K : DCx.{w} R) (y : ∀ p q, (shC K).X p q) : ∀ p q, K.X p q
  | 0, _ => 0
  | p + 1, q => y p q

theorem D_sh (K : DCx.{w} R) (x : ∀ p q, K.X p q) (h : ∀ q, x 0 q = 0) : (shC K).D (sh K x) = sh K (K.D x) := by
  funext p q
  rcases p with _ | p <;> rcases q with _ | q
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, sh, h]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, sh, h, shC]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, sh, shC]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, sh, shC, pow_succ]

theorem D_un (K : DCx.{w} R) (y : ∀ p q, (shC K).X p q) : K.D (un K y) = un K ((shC K).D y) := by
  funext p q
  rcases p with _ | _ | p <;> rcases q with _ | q
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, un]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, un]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, un]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, un, shC]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, un, shC]
  · simp [DCx.D_apply, DCx.Dh, DCx.Dv, un, shC, pow_succ]

theorem un_sh (K : DCx.{w} R) (x : ∀ p q, K.X p q) (h : ∀ q, x 0 q = 0) : un K (sh K x) = x := by
  funext p q
  rcases p with _ | p
  · exact (h q).symm
  · rfl

theorem vanish (K : DCx.{w} R) (a m : ℕ) (h : Ex K a) (hm : m < a) (x : ∀ p q, K.X p q) (hx : x ∈ K.T m)
    (hD : K.D x = 0) : ∃ z : ∀ p q, K.X p q, (∀ p q, p + q + 1 ≠ m → z p q = 0) ∧ K.D z = x := by
  let A : Cx.{0} R := ⟨fun _ => PUnit, fun _ => 0, fun _ _ => rfl⟩
  let e : DCx.AugCol A K := ⟨fun _ => 0, fun _ _ => map_zero _, fun p x => by simp⟩
  have hs := P.dc_col_surj e 1 m
    (fun p q hpq y hy => by
      obtain ⟨t, ht⟩ := (h p).2 q (by omega) y hy
      exact ⟨t, by rw [one_smul, ht]⟩)
    (fun y hy => ⟨0, by rw [one_smul, map_zero]; exact ((h m).1 (by omega) (hy.trans (map_zero _).symm)).symm⟩)
    (fun y _ => Subsingleton.elim _ _)
  have hc : K.tot.d m ⟨x, hx⟩ = 0 := Subtype.ext hD
  obtain ⟨t, ht⟩ := hs (K.tot.cls ⟨x, hx⟩ hc)
  have ht0 : t = 0 := Subsingleton.elim _ _
  rw [ht0, map_zero, one_pow, one_smul] at ht
  have hB := ((P.cls_surj K.tot m).2.1 _ hc).1 ht.symm
  cases m with
  | zero =>
    have h0 : x = 0 := congrArg Subtype.val ((Submodule.mem_bot R).1 hB)
    exact ⟨0, fun _ _ _ => rfl, by rw [map_zero, h0]⟩
  | succ m =>
    obtain ⟨z, hz⟩ := hB
    exact ⟨z.1, fun p q hpq => z.2 p q (by omega), congrArg Subtype.val hz⟩

theorem tail (K : DCx.{w} R) (a n : ℕ) (h : Ex K a) (hn : n ≤ a) (x : ∀ p q, K.X p q) (hx : x ∈ K.T n)
    (hD : K.D x = 0) (h0 : ∀ q, x 0 q = 0) :
    ∃ y : ∀ p q, K.X p q, (∀ p q, p + q + 1 ≠ n → y p q = 0) ∧ (∀ q, y 0 q = 0) ∧ K.D y = x := by
  cases n with
  | zero =>
    have hx0 : x = 0 := by
      funext p q
      rcases p with _ | p
      · exact h0 q
      · exact hx (p + 1) q (by omega)
    exact ⟨0, fun _ _ _ => rfl, fun _ => rfl, by rw [map_zero, hx0]⟩
  | succ m =>
    obtain ⟨z, hz, hDz⟩ := vanish (shC K) a m h.sh (by omega) (sh K x) (fun p q hpq => hx (p + 1) q (by omega))
      (by rw [D_sh K x h0, hD]; rfl)
    refine ⟨un K z, fun p q hpq => ?_, fun q => rfl, ?_⟩
    · rcases p with _ | p
      · rfl
      · exact hz p q (by omega)
    · rw [D_un, hDz, un_sh K x h0]

variable {K : DCx.{w} R} {A : Cx.{w'} R}

theorem deg_inj (e : DCx.AugRow A K) (a : ℕ) (hb : Function.Injective (e.edge.mapH a)) (h : Ex K a)
    (c : A.X a) (hc : A.d a c = 0) (hB : e.ε a c ∈ (K.col 0).B a) : c ∈ A.B a := by
  have hz : K.tot.d a (e.edge.f a c) = 0 := by rw [e.edge.comm, hc, map_zero]
  have key : e.edge.f a c ∈ K.tot.B a := by
    cases a with
    | zero =>
      have h0 : e.ε 0 c = 0 := (Submodule.mem_bot R).1 hB
      change (K.inj 0 0 0 (Nat.zero_add 0)) (e.ε 0 c) ∈ _
      rw [h0, map_zero]
      exact Submodule.zero_mem _
    | succ m =>
      obtain ⟨w, hw⟩ := hB
      have hw' : K.dv 0 m w = e.ε (m + 1) c := hw
      have hsT : K.sgl 0 m w ∈ K.T m := fun p q hpq => K.sgl_ne w (by omega)
      set x := (e.edge.f (m + 1) c).1 - K.D (K.sgl 0 m w) with hxdef
      have hxT : x ∈ K.T (m + 1) := Submodule.sub_mem _ (e.edge.f (m + 1) c).2 (K.D_mem m _ hsT)
      have hDx : K.D x = 0 := by
        rw [hxdef, map_sub, K.DD, sub_zero]
        exact congrArg Subtype.val hz
      have h0 : ∀ q, x 0 q = 0 := by
        intro q
        rw [hxdef, K.D_sgl, hw']
        change K.sgl 0 (m + 1) (e.ε (m + 1) c) 0 q - _ = 0
        simp only [pow_zero, one_smul, Pi.add_apply]
        rw [K.sgl_ne (K.dh 0 m w) (Or.inl (by omega) : 0 ≠ 0 + 1 ∨ q ≠ m)]
        simp
      obtain ⟨y, hy, -, hDy⟩ := tail K (m + 1) (m + 1) h le_rfl x hxT hDx h0
      have hyT : K.sgl 0 m w + y ∈ K.T m :=
        Submodule.add_mem _ hsT fun p q hpq => hy p q (by omega)
      refine ⟨⟨_, hyT⟩, Subtype.ext ?_⟩
      change K.D (K.sgl 0 m w + y) = (e.edge.f (m + 1) c).1
      rw [map_add (f := _), hDy, hxdef]
      abel
  have h1 : e.edge.mapH a (A.cls c hc) = 0 := by
    rw [P.mapH_cls _ a c hc hz]
    exact ((P.cls_surj K.tot a).2.1 _ hz).2 key
  exact ((P.cls_surj A a).2.1 c hc).1 (hb (h1.trans (map_zero _).symm))

theorem extend (a : ℕ) (h : Ex K a) (y₀ : K.X 0 a) (hy : K.dv 0 a y₀ = 0) (hB : K.dh 0 a y₀ ∈ (K.col 1).B a) :
    ∃ x : ∀ p q, K.X p q, x ∈ K.T a ∧ K.D x = 0 ∧ x 0 a = y₀ := by
  cases a with
  | zero =>
    have h0 : K.dh 0 0 y₀ = 0 := (Submodule.mem_bot R).1 hB
    refine ⟨K.sgl 0 0 y₀, fun p q hpq => K.sgl_ne _ (by omega), ?_, K.sgl_self _ _ _⟩
    rw [K.D_sgl, h0, hy]
    simp
  | succ m =>
    obtain ⟨z, hz⟩ := hB
    have hz' : K.dv 1 m z = K.dh 0 (m + 1) y₀ := hz
    set x₁ := K.sgl 0 (m + 1) y₀ + K.sgl 1 m z with hx₁
    set c := K.sgl 2 m (K.dh 1 m z) with hc
    have hDx₁ : K.D x₁ = c := by
      rw [hx₁, map_add (f := _), K.D_sgl, K.D_sgl, hy, hz']
      simp [hc]
    have hc0 : ∀ q, c 0 q = 0 := fun q => K.sgl_ne _ (Or.inl (by omega))
    have hc1 : ∀ q, c 1 q = 0 := fun q => K.sgl_ne _ (Or.inl (by omega))
    have hDc : K.D c = 0 := by rw [← hDx₁, K.DD]
    obtain ⟨y', hy1, hy2, hy3⟩ := tail (shC K) (m + 1) (m + 1) h.sh le_rfl (sh K c)
      (fun p q hpq => K.sgl_ne _ (by omega)) (by rw [D_sh K c hc0, hDc]; rfl) hc1
    refine ⟨x₁ - un K y', fun p q hpq => ?_, ?_, ?_⟩
    · have h1 : x₁ p q = 0 := by
        rw [hx₁, Pi.add_apply, Pi.add_apply, K.sgl_ne _ (by omega), K.sgl_ne _ (by omega), add_zero]
      have h2 : un K y' p q = 0 := by
        rcases p with _ | p
        · rfl
        · exact hy1 p q (by omega)
      rw [Pi.sub_apply, Pi.sub_apply, h1, h2, sub_zero]
    · rw [map_sub, D_un, hy3, un_sh K c hc0, hDx₁, sub_self]
    · change x₁ 0 (m + 1) - 0 = y₀
      rw [sub_zero, hx₁, Pi.add_apply, Pi.add_apply, K.sgl_self, K.sgl_ne _ (Or.inl (by omega)), add_zero]

theorem deg_surj (e : DCx.AugRow A K) (a : ℕ) (hb : Function.Surjective (e.edge.mapH a)) (h : Ex K a)
    (y₀ : K.X 0 a) (hy : K.dv 0 a y₀ = 0) (hB : K.dh 0 a y₀ ∈ (K.col 1).B a) :
    ∃ (c : A.X a) (_ : A.d a c = 0), e.ε a c - y₀ ∈ (K.col 0).B a := by
  obtain ⟨x, hxT, hDx, hx0⟩ := extend a h y₀ hy hB
  have hxc : K.tot.d a ⟨x, hxT⟩ = 0 := Subtype.ext hDx
  obtain ⟨t, ht⟩ := hb (K.tot.cls ⟨x, hxT⟩ hxc)
  obtain ⟨c, hc, rfl⟩ := (P.cls_surj A a).1 t
  have hz : K.tot.d a (e.edge.f a c) = 0 := by rw [e.edge.comm, hc, map_zero]
  rw [P.mapH_cls _ a c hc hz] at ht
  have hd := ((P.cls_surj K.tot a).2.2.1 _ _ hz hxc).1 ht
  refine ⟨c, hc, ?_⟩
  have hv : (e.edge.f a c).1 0 a = e.ε a c := K.sgl_self _ _ _
  cases a with
  | zero =>
    have h0 := congrArg Subtype.val ((Submodule.mem_bot R).1 hd)
    have h1 : (e.edge.f 0 c).1 0 0 - x 0 0 = 0 := congrFun (congrFun h0 0) 0
    rw [hv, hx0] at h1
    rw [h1]
    exact Submodule.zero_mem _
  | succ m =>
    obtain ⟨w, hw⟩ := hd
    have h1 : K.D w.1 0 (m + 1) = (e.edge.f (m + 1) c).1 0 (m + 1) - x 0 (m + 1) :=
      congrFun (congrFun (congrArg Subtype.val hw) 0) (m + 1)
    rw [hv, hx0] at h1
    refine ⟨w.1 0 m, ?_⟩
    rw [← h1]
    simp [DCx.D_apply, DCx.Dh, DCx.Dv]

end Abstract

section Cover

universe u v

variable {R : Type} [CommRing R] {C : Type u} [Category.{v} C]

def prj (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C) (p : ℕ) (i : Fin (p + 1) → ι) :
    Cx.Hom ((cechCC F U).dcx.col p) (CH.cx ((capT U i).ι ⋙ F)) (RingHom.id R) :=
  ⟨fun _ => LinearMap.proj i, fun _ _ => rfl⟩

theorem prj_bij (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C) (p q : ℕ) :
    Function.Bijective (fun (x : ((cechCC F U).dcx.col p).H q) i => (prj F U p i).mapH q x) :=
  GlobalTheory.CompanionTheory.CechSerre.pi_H_bij (fun i : Fin (p + 1) → ι => CH.cx ((capT U i).ι ⋙ F)) (prj F U p)
    (fun _ => Function.bijective_id) q

theorem ex_of (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C) (a : ℕ)
    (hvan : ∀ (p : ℕ) (i : Fin (p + 1) → ι) (j : ℕ), j < a → Subsingleton (HU F (capT U i) j)) :
    Ex (cechCC F U).dcx a := by
  intro p
  refine ⟨fun ha => ?_, fun q hq x hx => ?_⟩
  · rw [injective_iff_map_eq_zero]
    intro z hz
    funext i
    have hzi : CH.d ((capT U i).ι ⋙ F) 0 (z i) = 0 := congrFun hz i
    have := hvan p i 0 ha
    have h0 : (CH.cx ((capT U i).ι ⋙ F)).cls (z i) hzi = 0 := Subsingleton.elim _ _
    exact (Submodule.mem_bot R).1 (((P.cls_surj _ 0).2.1 _ hzi).1 h0)
  · have hex : ∀ i, ∃ y, CH.d ((capT U i).ι ⋙ F) q y = x i := by
      intro i
      have hxi : CH.d ((capT U i).ι ⋙ F) (q + 1) (x i) = 0 := congrFun hx i
      have := hvan p i (q + 1) hq
      have h0 : (CH.cx ((capT U i).ι ⋙ F)).cls (x i) hxi = 0 := Subsingleton.elim _ _
      exact ((P.cls_surj _ (q + 1)).2.1 _ hxi).1 h0
    choose y hy using hex
    exact ⟨y, funext hy⟩

theorem edge_bij (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α))
    (hc : ∀ T, ∃ α, U α T) (n : ℕ) : Function.Bijective ((cechAugRowU F U).edge.mapH n) := by
  have := P.dc_row (cechAugRowU F U) 1 (GlobalTheory.CompanionTheory.CechRowExact.cech_rows F U hU hc) n
  rw [one_pow] at this
  exact (P.upTo_alg _ (LinearMap.id (R := R)) 1 1).2.2.2.2.1 this

theorem prj_eps (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C) (a : ℕ) (i : Fin (0 + 1) → ι)
    (c : CH.Cn F a) (hc : CH.d F a c = 0) (hε : ((cechCC F U).dcx.col 0).d a ((cechAugRowU F U).ε a c) = 0) :
    (prj F U 0 i).mapH a (((cechCC F U).dcx.col 0).cls _ hε) =
      (CH.Mor.restrict F (capT U i).ι).pull a ((CH.cx F).cls c hc) := rfl

theorem cov_inj (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α))
    (hc : ∀ T, ∃ α, U α T) (a : ℕ)
    (hvan : ∀ (p : ℕ) (i : Fin (p + 1) → ι) (j : ℕ), j < a → Subsingleton (HU F (capT U i) j))
    (x : CH.H F a) (hx : ∀ i : Fin (0 + 1) → ι, (CH.Mor.restrict F (capT U i).ι).pull a x = 0) : x = 0 := by
  obtain ⟨c, hcz, rfl⟩ := (P.cls_surj (CH.cx F) a).1 x
  have hε : ((cechCC F U).dcx.col 0).d a ((cechAugRowU F U).ε a c) = 0 := by
    refine ((cechAugRowU F U).comm a c).trans ?_
    rw [show (CH.cx F).d a c = 0 from hcz, map_zero]
  have h1 : ((cechCC F U).dcx.col 0).cls _ hε = 0 := (prj_bij F U 0 a).1 (funext fun i => by
    simp only [map_zero]
    exact (prj_eps F U a i c hcz hε).trans (hx i))
  have hB := ((P.cls_surj _ a).2.1 _ hε).1 h1
  exact ((P.cls_surj (CH.cx F) a).2.1 c hcz).2
    (deg_inj (cechAugRowU F U) a (edge_bij F U hU hc a).1 (ex_of F U a hvan) c hcz hB)

theorem cov_glue (F : C ⥤ ModuleCat.{w} R) {ι : Type} (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α))
    (hc : ∀ T, ∃ α, U α T) (a : ℕ)
    (hvan : ∀ (p : ℕ) (i : Fin (p + 1) → ι) (j : ℕ), j < a → Subsingleton (HU F (capT U i) j))
    (y : ∀ i : Fin (0 + 1) → ι, HU F (capT U i) a)
    (hy : ∀ t : Fin (1 + 1) → ι,
      (resU F (U := capT U (t ∘ (0 : Fin 2).succAbove)) (V := capT U t) fun _ h _ => h _).pull a (y (t ∘ (0 : Fin 2).succAbove)) =
      (resU F (U := capT U (t ∘ (1 : Fin 2).succAbove)) (V := capT U t) fun _ h _ => h _).pull a (y (t ∘ (1 : Fin 2).succAbove))) :
    ∃ x : CH.H F a, ∀ i, (CH.Mor.restrict F (capT U i).ι).pull a x = y i := by
  obtain ⟨ŷ, hŷ⟩ := (prj_bij F U 0 a).2 y
  obtain ⟨y₀, hy₀, rfl⟩ := (P.cls_surj _ a).1 ŷ
  have hzi : ∀ i : Fin (0 + 1) → ι, CH.d ((capT U i).ι ⋙ F) a (y₀ i) = 0 := fun i => congrFun hy₀ i
  have hyi : ∀ i : Fin (0 + 1) → ι, y i = (CH.cx ((capT U i).ι ⋙ F)).cls (y₀ i) (hzi i) := fun i =>
    (congrFun hŷ i).symm
  have hdz : ((cechCC F U).dcx.col 1).d a ((cechCC F U).dcx.dh 0 a y₀) = 0 := by
    refine ((cechCC F U).dcx.hv 0 a y₀).symm.trans ?_
    rw [show (cechCC F U).dcx.dv 0 a y₀ = 0 from hy₀, map_zero]
  have hcl : ((cechCC F U).dcx.col 1).cls _ hdz = 0 := (prj_bij F U 1 a).1 (funext fun t => by
    simp only [map_zero]
    have hval : (cechCC F U).dcx.dh 0 a y₀ t =
        (resU F (U := capT U (t ∘ (0 : Fin 2).succAbove)) (V := capT U t) fun _ h _ => h _).pullC a (y₀ (t ∘ (0 : Fin 2).succAbove)) -
        (resU F (U := capT U (t ∘ (1 : Fin 2).succAbove)) (V := capT U t) fun _ h _ => h _).pullC a (y₀ (t ∘ (1 : Fin 2).succAbove)) := by
      have e := congrFun (Cos.d_apply ((cechCC F U).cos a) 0 y₀) t
      rw [Fin.sum_univ_two] at e
      refine e.trans ?_
      simp [sub_eq_add_neg]
    have h0 := hy t
    rw [hyi, hyi] at h0
    have h1 := ((P.cls_surj (CH.cx ((capT U t).ι ⋙ F)) a).2.2.1 _ _
      (((resU F _).d_pullC a _).trans (by rw [hzi, map_zero]))
      (((resU F _).d_pullC a _).trans (by rw [hzi, map_zero]))).1 h0
    rw [← hval] at h1
    exact ((P.cls_surj _ a).2.1 _ _).2 h1)
  have hB := ((P.cls_surj _ a).2.1 _ hdz).1 hcl
  obtain ⟨c, hcz, hd⟩ := deg_surj (cechAugRowU F U) a (edge_bij F U hU hc a).2 (ex_of F U a hvan) y₀ hy₀ hB
  have hε : ((cechCC F U).dcx.col 0).d a ((cechAugRowU F U).ε a c) = 0 := by
    refine ((cechAugRowU F U).comm a c).trans ?_
    rw [hcz, map_zero]
  have heq := ((P.cls_surj _ a).2.2.1 _ _ hε hy₀).2 hd
  refine ⟨(CH.cx F).cls c hcz, fun i => ?_⟩
  rw [← prj_eps F U a i c hcz hε, heq]
  exact congrFun hŷ i

def kap (F : C ⥤ ModuleCat.{w} R) {P Q' : ObjectProperty C} {Q : ObjectProperty P.FullSubcategory}
    (h : ∀ T, Q T → Q' T.obj) : CH.Mor (Q'.ι ⋙ F) (Q.ι ⋙ P.ι ⋙ F) (RingHom.id R) where
  G := Q'.lift (Q.ι ⋙ P.ι) fun T => h _ T.property
  τ _ := LinearMap.id
  nat _ _ := rfl

theorem kap_bij (F : C ⥤ ModuleCat.{w} R) {P Q' : ObjectProperty C} {Q : ObjectProperty P.FullSubcategory}
    (h : ∀ T, Q T → Q' T.obj) (h' : ∀ T, Q' T → ∃ hp : P T, Q ⟨T, hp⟩) (n : ℕ) :
    Function.Bijective ((kap F h).pull n) := by
  let L : Q'.FullSubcategory ⥤ Q.FullSubcategory :=
    Q.lift (P.lift Q'.ι fun T => (h' _ T.property).choose) fun T => (h' _ T.property).choose_spec
  refine CrystallineSemistableComparison.P.mapH_bij (kap F h).hom (fun k => ⟨fun z z' e => funext fun s => ?_, fun w => ⟨fun s => w (s ⋙ L), ?_⟩⟩) n
  · exact congrFun e (s ⋙ L)
  · funext t
    rfl

theorem kap_top (F : C ⥤ ModuleCat.{w} R) {Top P Q' : ObjectProperty C} {Q : ObjectProperty P.FullSubcategory}
    (h : ∀ T, Q T → Q' T.obj) (hP : P ≤ Top) (hQ : Q' ≤ Top) (n : ℕ) (x : HU F Top n) :
    (CH.Mor.restrict (P.ι ⋙ F) Q.ι).pull n ((resU F hP).pull n x) = (kap F h).pull n ((resU F hQ).pull n x) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rfl

theorem kap_res (F : C ⥤ ModuleCat.{w} R) {P Q₁' Q₂' : ObjectProperty C} {Q₁ Q₂ : ObjectProperty P.FullSubcategory}
    (h₁ : ∀ T, Q₁ T → Q₁' T.obj) (h₂ : ∀ T, Q₂ T → Q₂' T.obj) (hle : Q₁ ≤ Q₂) (hle' : Q₁' ≤ Q₂') (n : ℕ)
    (x : HU F Q₂' n) :
    (resU (P.ι ⋙ F) hle).pull n ((kap F h₂).pull n x) = (kap F h₁).pull n ((resU F hle').pull n x) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rfl

theorem descent (F : C ⥤ ModuleCat.{w} R) {ι : Type} (Top : ObjectProperty C) (V : ι → ObjectProperty C)
    (W : ι → ι → ObjectProperty C) (hV : ∀ α, Cosieve (V α)) (hW : ∀ α β T, W α β T ↔ V α T ∧ V β T)
    (hcov : (fun T => ∃ α, V α T) ≤ Top) (a : ℕ)
    (hb : ∀ n, Function.Bijective ((resU F hcov).pull n))
    (hvan : ∀ (p : ℕ) (i : Fin (p + 1) → ι) (j : ℕ), j < a → Subsingleton (HU F (capT V i) j))
    (h : ∀ α, V α ≤ Top) (h₁ : ∀ α β, W α β ≤ V α) (h₂ : ∀ α β, W α β ≤ V β) :
    Function.Injective (fun (x : HU F Top a) α => (resU F (h α)).pull a x) ∧
    ∀ y : ∀ α, HU F (V α) a, (∀ α β, (resU F (h₁ α β)).pull a (y α) = (resU F (h₂ α β)).pull a (y β)) →
      ∃ x, ∀ α, (resU F (h α)).pull a x = y α := by
  let cov : ObjectProperty C := fun T => ∃ α, V α T
  let U' : ι → ObjectProperty cov.FullSubcategory := fun α T => V α T.obj
  have hU' : ∀ α, Cosieve (U' α) := fun α T T' φ hT => hV α φ.hom hT
  have hc' : ∀ T, ∃ α, U' α T := fun T => T.property
  have hvan' : ∀ (p : ℕ) (i : Fin (p + 1) → ι) (j : ℕ), j < a →
      Subsingleton (HU (cov.ι ⋙ F) (capT U' i) j) := by
    intro p i j hj
    have := hvan p i j hj
    exact (kap_bij F (P := cov) (Q := capT U' i) (Q' := capT V i) (fun T hT => hT)
      (fun T hT => ⟨⟨i 0, hT 0⟩, hT⟩) j).2.subsingleton
  have k1 : ∀ (i : Fin (0 + 1) → ι) (T : cov.FullSubcategory), capT U' i T → V (i 0) T.obj := fun i T hT => hT 0
  have k1' : ∀ (i : Fin (0 + 1) → ι) (T : C), V (i 0) T → ∃ hp : cov T, capT U' i ⟨T, hp⟩ := fun i T hT =>
    ⟨⟨i 0, hT⟩, fun k => by
      obtain rfl : k = 0 := Subsingleton.elim (α := Fin 1) _ _
      exact hT⟩
  constructor
  · intro x x' hxx
    refine (hb a).1 (sub_eq_zero.1 ?_)
    rw [← map_sub]
    refine cov_inj (cov.ι ⋙ F) U' hU' hc' a hvan' _ fun i => ?_
    rw [kap_top F (k1 i) hcov (h (i 0)), map_sub, map_sub]
    have := congrFun hxx (i 0)
    simp only at this
    rw [this, sub_self]
  · intro y hy
    obtain ⟨x', hx'⟩ := cov_glue (cov.ι ⋙ F) U' hU' hc' a hvan' (fun i => (kap F (k1 i)).pull a (y (i 0))) (fun t => by
      have kt : ∀ (T : cov.FullSubcategory), capT U' t T → W (t 0) (t 1) T.obj := fun T hT => (hW _ _ _).2 ⟨hT 0, hT 1⟩
      refine (kap_res F kt (k1 (t ∘ (0 : Fin 2).succAbove)) _ (h₂ (t 0) (t 1)) a _).trans ?_
      refine Eq.trans ?_ (kap_res F kt (k1 (t ∘ (1 : Fin 2).succAbove)) _ (h₁ (t 0) (t 1)) a _).symm
      exact congrArg _ (hy (t 0) (t 1)).symm)
    obtain ⟨x, rfl⟩ := (hb a).2 x'
    refine ⟨x, fun α => ?_⟩
    refine (kap_bij F (k1 fun _ => α) (k1' fun _ => α) a).1 ?_
    exact (kap_top F (k1 fun _ => α) hcov (h α) a x).symm.trans (hx' fun _ => α)

end Cover

end GlobalTheory.CompanionTheory.CechDeg

theorem GlobalTheory.CompanionTheory.CechDeg.om_cech : ∀ {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) {ι : Type} (U : ι → X.Opens),
    (⨆ α, U α) = ⊤ → ∀ a : ℕ, (∀ S : Finset ι, S.Nonempty → ∀ j < a, Subsingleton (CrystallineSemistableComparison.Onto.HV q (⨅ α ∈ S, U α) a j)) →
    ∀ (h : ∀ α, CrystallineSemistableComparison.Onto.inU q (U α) ≤ CrystallineSemistableComparison.Onto.inU q ⊤)
      (h₁ : ∀ α β, CrystallineSemistableComparison.Onto.inU q (U α ⊓ U β) ≤ CrystallineSemistableComparison.Onto.inU q (U α))
      (h₂ : ∀ α β, CrystallineSemistableComparison.Onto.inU q (U α ⊓ U β) ≤ CrystallineSemistableComparison.Onto.inU q (U β)),
    Function.Injective (fun (x : CrystallineSemistableComparison.Onto.HV q ⊤ a a) α => (CrystallineSemistableComparison.Pb.resU (CrystallineSemistableComparison.Onto.G q a) (h α)).pull a x) ∧
    ∀ y : ∀ α, CrystallineSemistableComparison.Onto.HV q (U α) a a,
      (∀ α β, (CrystallineSemistableComparison.Pb.resU (CrystallineSemistableComparison.Onto.G q a) (h₁ α β)).pull a (y α) = (CrystallineSemistableComparison.Pb.resU (CrystallineSemistableComparison.Onto.G q a) (h₂ α β)).pull a (y β)) →
      ∃ x, ∀ α, (CrystallineSemistableComparison.Pb.resU (CrystallineSemistableComparison.Onto.G q a) (h α)).pull a x = y α := by
  intro K _ X q ι U hU a hvan h h₁ h₂
  classical
  have hcov : (fun T => ∃ α, CrystallineSemistableComparison.Onto.inU q (U α) T) ≤ CrystallineSemistableComparison.Onto.inU q ⊤ := fun T ⟨α, hα⟩ => h α T hα
  refine GlobalTheory.CompanionTheory.CechDeg.descent (CrystallineSemistableComparison.Onto.G q a) (CrystallineSemistableComparison.Onto.inU q ⊤) (fun α => CrystallineSemistableComparison.Onto.inU q (U α))
    (fun α β => CrystallineSemistableComparison.Onto.inU q (U α ⊓ U β)) (fun α T T' φ hT => GlobalTheory.CompanionTheory.ThickPt.inU_map (U α) φ hT)
    (fun α β T => ⟨fun hT => ⟨fun _ hx => (hT hx).1, fun _ hx => (hT hx).2⟩, fun hT _ hx => ⟨hT.1 hx, hT.2 hx⟩⟩)
    hcov a (fun n => CrystallineSemistableComparison.Onto.zarAbs_pf K X q ι ⊤ U hU hcov a n) ?_ h h₁ h₂
  intro p i j hj
  have hS : (Finset.univ.image i).Nonempty := ⟨i 0, Finset.mem_image_of_mem _ (Finset.mem_univ _)⟩
  have := hvan _ hS j hj
  have e₁ : CrystallineSemistableComparison.Pb.capT (fun α => CrystallineSemistableComparison.Onto.inU q (U α)) i ≤ CrystallineSemistableComparison.Onto.inU q (⨅ α ∈ Finset.univ.image i, U α) :=
    fun T hT => (GlobalTheory.CompanionTheory.Thick.inU_iInf_finset U _ T).2 fun α hα => by
      obtain ⟨k, -, rfl⟩ := Finset.mem_image.1 hα
      exact hT k
  have e₂ : CrystallineSemistableComparison.Onto.inU q (⨅ α ∈ Finset.univ.image i, U α) ≤ CrystallineSemistableComparison.Pb.capT (fun α => CrystallineSemistableComparison.Onto.inU q (U α)) i :=
    fun T hT k => (GlobalTheory.CompanionTheory.Thick.inU_iInf_finset U _ T).1 hT _ (Finset.mem_image_of_mem _ (Finset.mem_univ _))
  exact (CrystallineSemistableComparison.Onto.resU_bij_of_le (CrystallineSemistableComparison.Onto.G q a) e₁ e₂ j).2.subsingleton

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovGlue =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OmMapEqMOm =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OmMapEqMOm", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SurjectiveOfLocallySurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry Opposite GlobalTheory.CechDR GlobalTheory.HodgeCoh

namespace GlobalTheory.CompanionTheory.FormsGlue

section Alg

variable {K : Type} [CommRing K] {A B : Type} [CommRing A] [CommRing B] [Algebra K A] [Algebra K B]

theorem omMap_eq_mOm (φ : A →ₐ[K] B) (h : SemiHom (RingHom.id K) (φ : A →+* B)) (a : ℕ) (ω : CrystallineSemistableComparison.Onto.Om K A a) :
    CrystallineSemistableComparison.Onto.omMap φ a ω = h.mOm a ω := by
  letI : Algebra A B := φ.toRingHom.toAlgebra
  haveI : IsScalarTower K A B := IsScalarTower.of_algHom φ
  have hs : ∀ (c : A) (x : CrystallineSemistableComparison.Onto.Om K A a), CrystallineSemistableComparison.Onto.omMap φ a (c • x) = φ c • CrystallineSemistableComparison.Onto.omMap φ a x := by
    intro c x
    have h' := map_smul (exteriorPower.alternatingMapLinearEquiv
      { ((exteriorPower.ιMulti B a (M := Ω[B⁄K])).toMultilinearMap.restrictScalars A).compLinearMap
          fun _ => KaehlerDifferential.map K K A B with
        map_eq_zero_of_eq' := fun v i j h hij =>
          (exteriorPower.ιMulti B a (M := Ω[B⁄K])).map_eq_zero_of_eq (fun k => KaehlerDifferential.map K K A B (v k))
            (congrArg _ h) hij } : CrystallineSemistableComparison.Onto.Om K A a →ₗ[A] CrystallineSemistableComparison.Onto.Om K B a) c x
    exact h'.trans (algebraMap_smul B c _)
  have hι : ∀ g : Fin a → Ω[A⁄K], CrystallineSemistableComparison.Onto.omMap φ a (exteriorPower.ιMulti A a g) =
      h.mOm a (exteriorPower.ιMulti A a g) := by
    intro g
    have e1 : CrystallineSemistableComparison.Onto.omMap φ a (exteriorPower.ιMulti A a g) =
        exteriorPower.ιMulti B a fun k => KaehlerDifferential.map K K A B (g k) :=
      exteriorPower.alternatingMapLinearEquiv_apply_ιMulti _ _
    rw [e1]
    refine Subtype.ext ?_
    rw [SemiHom.coe_mOm, exteriorPower.ιMulti_apply_coe, exteriorPower.ιMulti_apply_coe,
      ExteriorAlgebra.ιMulti_apply, ExteriorAlgebra.ιMulti_apply, map_list_prod, List.map_ofFn]
    congr 2
    funext k
    exact (congrArg ι1 (SemiHom.oneFormMap_eq_kaehlerDifferential_map h (fun _ => rfl) (g k))).symm.trans (SemiHom.mDR_ι h (g k)).symm
  have hmem : ω ∈ (⊤ : Submodule A (CrystallineSemistableComparison.Onto.Om K A a)) := Submodule.mem_top
  rw [← exteriorPower.ιMulti_span] at hmem
  induction hmem using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨g, rfl⟩ := hx
    exact hι g
  | zero => rw [map_zero, map_zero]
  | add x y _ _ hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  | smul c x _ hx => rw [hs, SemiHom.mOm_smul, hx]; rfl

end Alg

section Sch

variable {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

abbrev omSheaf (a : ℕ) : TopCat.Sheaf Ab X := ⟨(Omega q a).presheaf, (Omega q a).isSheaf⟩

theorem glue_core [IsAffine X] {ι : Type} (U : ι → X.Opens) (hcov : (⨆ α, U α) = ⊤) (a : ℕ) :
    (∀ ω ω' : OmU q ⊤ a, (∀ α, toOm q a (U α) (formRes q (le_top : U α ≤ ⊤) a ω) =
      toOm q a (U α) (formRes q (le_top : U α ≤ ⊤) a ω')) → ω = ω') ∧
    ∀ y : ∀ α, OmU q (U α) a,
      (∀ α β, formRes q (inf_le_left : U α ⊓ U β ≤ U α) a (y α) = formRes q (inf_le_right : U α ⊓ U β ≤ U β) a (y β)) →
      ∃ ω : OmU q ⊤ a, ∀ α, toOm q a (U α) (formRes q (le_top : U α ≤ ⊤) a ω) = toOm q a (U α) (y α) := by
  have hT : IsAffineOpen (⊤ : X.Opens) := isAffineOpen_top X
  refine ⟨fun ω ω' h => toOm_injective hT ?_, fun y hy => ?_⟩
  · refine TopCat.Sheaf.eq_of_locally_eq' (omSheaf q a) U ⊤ (fun α => homOfLE le_top) hcov.ge _ _ fun α => ?_
    exact (res_toOm q a le_top ω).trans ((h α).trans (res_toOm q a le_top ω').symm)
  · have hc : TopCat.Presheaf.IsCompatible (omSheaf q a).1 U (fun α => toOm q a (U α) (y α)) := fun α β =>
      (res_toOm q a inf_le_left (y α)).trans ((congrArg _ (hy α β)).trans (res_toOm q a inf_le_right (y β)).symm)
    obtain ⟨t, ht, -⟩ := TopCat.Sheaf.existsUnique_gluing' (omSheaf q a) U ⊤ (fun α => homOfLE le_top) hcov.ge
      (fun α => toOm q a (U α) (y α)) hc
    obtain ⟨ω, rfl⟩ := toOm_surjective hT t
    exact ⟨ω, fun α => (res_toOm q a le_top ω).symm.trans (ht α)⟩

theorem omMap_res {V W : X.Opens} (h : W ≤ V) (φ : CrystallineSemistableComparison.Onto.Sec q V →ₐ[K] CrystallineSemistableComparison.Onto.Sec q W)
    (hφ : ∀ g, φ g = (X.presheaf.map (homOfLE h).op).hom g) (a : ℕ)
    (ω : CrystallineSemistableComparison.Onto.Om K (CrystallineSemistableComparison.Onto.Sec q V) a) : CrystallineSemistableComparison.Onto.omMap φ a ω = formRes q h a ω := by
  have e : φ = (Sec.res q h : GlobalTheory.CechDR.Sec q V →ₐ[K] GlobalTheory.CechDR.Sec q W) := AlgHom.ext hφ
  subst e
  exact omMap_eq_mOm _ (SemiHom.of_algHom (Sec.res q h)) a ω

end Sch

end GlobalTheory.CompanionTheory.FormsGlue

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

namespace GlobalTheory.CompanionTheory.FormsGlue

theorem forms_glue : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] {ι : Type}
    (U : ι → X.Opens), (∀ α, IsAffineOpen (U α)) → (⨆ α, U α) = ⊤ →
    ∀ (φ : ∀ α, CrystallineSemistableComparison.Onto.Sec q ⊤ →ₐ[K] CrystallineSemistableComparison.Onto.Sec q (U α))
      (ψ₁ : ∀ α β, CrystallineSemistableComparison.Onto.Sec q (U α) →ₐ[K] CrystallineSemistableComparison.Onto.Sec q (U α ⊓ U β))
      (ψ₂ : ∀ α β, CrystallineSemistableComparison.Onto.Sec q (U β) →ₐ[K] CrystallineSemistableComparison.Onto.Sec q (U α ⊓ U β)),
    (∀ α g, φ α g = (X.presheaf.map (homOfLE (le_top : U α ≤ ⊤)).op).hom g) →
    (∀ α β g, ψ₁ α β g = (X.presheaf.map (homOfLE (inf_le_left : U α ⊓ U β ≤ U α)).op).hom g) →
    (∀ α β g, ψ₂ α β g = (X.presheaf.map (homOfLE (inf_le_right : U α ⊓ U β ≤ U β)).op).hom g) → ∀ a : ℕ,
    Function.Injective (fun (ω : CrystallineSemistableComparison.Onto.Om K (CrystallineSemistableComparison.Onto.Sec q ⊤) a) α => CrystallineSemistableComparison.Onto.omMap (φ α) a ω) ∧
    ∀ y : ∀ α, CrystallineSemistableComparison.Onto.Om K (CrystallineSemistableComparison.Onto.Sec q (U α)) a,
      (∀ α β, CrystallineSemistableComparison.Onto.omMap (ψ₁ α β) a (y α) = CrystallineSemistableComparison.Onto.omMap (ψ₂ α β) a (y β)) →
      ∃ ω, ∀ α, CrystallineSemistableComparison.Onto.omMap (φ α) a ω = y α := by
  intro K _ X q _ ι U hU hcov φ ψ₁ ψ₂ hφ hψ₁ hψ₂ a
  have hc := glue_core q U hcov a
  refine ⟨fun ω ω' h => hc.1 ω ω' fun α => ?_, fun y hy => ?_⟩
  · have e := congrFun h α
    simp only [] at e
    rw [omMap_res q le_top (φ α) (hφ α), omMap_res q le_top (φ α) (hφ α)] at e
    exact congrArg _ e
  · obtain ⟨ω, hω⟩ := hc.2 y fun α β => by
      have e := hy α β
      rw [omMap_res q inf_le_left (ψ₁ α β) (hψ₁ α β), omMap_res q inf_le_right (ψ₂ α β) (hψ₂ α β)] at e
      exact e
    refine ⟨ω, fun α => ?_⟩
    rw [omMap_res q le_top (φ α) (hφ α)]
    exact toOm_injective (hU α) (hω α)

end GlobalTheory.CompanionTheory.FormsGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OmMapEqMOm =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineSmoothFormsBijective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineSmoothFormsBijective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.CechDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CovGlue\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CupH0NormalCoboundary\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FunctorId\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OmMapEqMOm\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OntoFormLaws\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepresentativeRestrict\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.ZarAbs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers

set_option linter.unusedVariables false

noncomputable section

namespace GlobalTheory.CompanionTheory.OmGlue

open CrystallineSemistableComparison CrystallineSemistableComparison.Onto CrystallineSemistableComparison.Pb CrystallineSemistableComparison.HT

variable {K : Type} [CommRing K] {Z : Scheme.{0}}

theorem inU_mono (q : Z ⟶ Spec (CommRingCat.of K)) {V V' : Z.Opens} (k : V' ≤ V) : inU q V' ≤ inU q V :=
  fun T hT x hx => k (hT hx)

theorem ev_res (q : Z ⟶ Spec (CommRingCat.of K)) {V V' : Z.Opens} (k : V' ≤ V) (T : Thick (smFun Z q))
    (h : inU q V' T) (h' : inU q V T) (g : Γ(Z, V)) :
    ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T h ((Z.presheaf.map (homOfLE k).op).hom g) =
      ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T h' g := by
  simp only [ev, GlobalTheory.Cris.evalAt, RingHom.comp_apply]
  congr 1
  rw [← CommRingCat.comp_apply, Scheme.Hom.map_appLE]

theorem lifts_nonempty (q : Z ⟶ Spec (CommRingCat.of K)) (V : Z.Opens) : Nonempty (Lifts q V) :=
  ⟨⟨fun T g => (Ideal.Quotient.mk_surjective
      (ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T.obj T.property g)).choose,
    fun T g => (Ideal.Quotient.mk_surjective
      (ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T.obj T.property g)).choose_spec⟩⟩

theorem rep_unique {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R} (a b : IdF A) {j : ℕ}
    {z : ∀ s : ComposableArrows C j, A.obj (s.obj (Fin.last j))} {c c' : CH.H (sq a b) j}
    (h : Rep a b z c) (h' : Rep a b z c') : c = c' := by
  obtain ⟨f, hf, rfl, hz⟩ := h
  obtain ⟨f', hf', rfl, hz'⟩ := h'
  have e : f = f' := funext fun s => Subtype.ext ((hz s).trans (hz' s).symm)
  subst e
  rfl

theorem isForm_unique (q : Z ⟶ Spec (CommRingCat.of K)) (V : Z.Opens) {a : ℕ} {g₀ : Sec q V} {g : Fin a → Sec q V}
    {c c' : HV q V a a} (h : IsForm q V g₀ g c) (h' : IsForm q V g₀ g c') : c = c' := by
  obtain ⟨Λ⟩ := lifts_nonempty q V
  exact rep_unique (A := (inU q V).ι ⋙ thA (smFun Z q)) ((thFil (smFun Z q) (a : ℤ)).res (inU q V).ι)
    ((thFil (smFun Z q) ((a : ℤ) + 1)).res (inU q V).ι) (h Λ) (h' Λ)

theorem isForm_res (q : Z ⟶ Spec (CommRingCat.of K)) {V V' : Z.Opens} (k : V' ≤ V) (φ : Sec q V →ₐ[K] Sec q V')
    (hφ : ∀ g, φ g = (Z.presheaf.map (homOfLE k).op).hom g) {a : ℕ} {g₀ : Sec q V} {g : Fin a → Sec q V}
    {c : HV q V a a} (hc : IsForm q V g₀ g c) :
    IsForm q V' (φ g₀) (fun j => φ (g j)) ((resU (G q a) (inU_mono q k)).pull a c) := by
  classical
  intro Λ'
  obtain ⟨Λ₀⟩ := lifts_nonempty q V
  let Λ : Lifts q V :=
    { v := fun T g => if h : inU q V' T.obj then Λ'.v ⟨T.obj, h⟩ (φ g) else Λ₀.v T g
      hv := fun T g => by
        by_cases h : inU q V' T.obj
        · simp only [dif_pos h]
          refine (Λ'.hv ⟨T.obj, h⟩ (φ g)).trans ?_
          rw [hφ]
          exact ev_res q k T.obj h T.property g
        · simp only [dif_neg h]
          exact Λ₀.hv T g }
  have hv : ∀ (T : (inU q V').FullSubcategory) (g : Sec q V),
      Λ.v ((ObjectProperty.ιOfLE (inU_mono q k)).obj T) g = Λ'.v T (φ g) := fun T g => dif_pos T.property
  have hz := GlobalTheory.CompanionTheory.ConeRep.rep_resB (thA (smFun Z q)) (thFil (smFun Z q) (a : ℤ)) (thFil (smFun Z q) ((a : ℤ) + 1))
    (inU_mono q k) (Λ.form g₀ g) c (hc Λ)
  have e : Λ'.form (φ g₀) (fun j => φ (g j)) = resB (thA (smFun Z q)) (inU_mono q k) (Λ.form g₀ g) := by
    funext s
    simp only [Lifts.form, resB]
    refine congrArg₂ (· * ·) (hv _ _).symm (Finset.prod_congr rfl fun k' _ => ?_)
    exact congrArg₂ (· - ·) (congrArg _ (hv _ _).symm) (congrArg _ (hv _ _).symm)
  exact e ▸ hz

theorem fs_hom_heq {C : Type 1} [Category.{0} C] {P : ObjectProperty C} {S₁ S₂ S₁' S₂' : P.FullSubcategory}
    (h : S₁ = S₂) (h' : S₁' = S₂') (f : S₁ ⟶ S₁') (g : S₂ ⟶ S₂') (hh : HEq f.hom g.hom) : HEq f g := by
  subst h h'
  exact heq_of_eq (ObjectProperty.hom_ext _ (eq_of_heq hh))

theorem morV_G (q : Z ⟶ Spec (CommRingCat.of K)) {P P' : ObjectProperty (Thick (smFun Z q))} (k : P' ≤ P) (a : ℕ)
    (h : ∀ T, P' T → P ((smS (𝟙 Z) (Category.id_comp q)).G.obj T)) :
    (morV (𝟙 Z) (Category.id_comp q) a h).G = (resU (G q a) k).G := by
  refine Functor.hext (fun T => ?_) (fun T T' f => ?_)
  · exact ObjectProperty.FullSubcategory.ext (GlobalTheory.CompanionTheory.HodgePull.obj_id T.obj)
  · refine fs_hom_heq (ObjectProperty.FullSubcategory.ext (GlobalTheory.CompanionTheory.HodgePull.obj_id T.obj))
      (ObjectProperty.FullSubcategory.ext (GlobalTheory.CompanionTheory.HodgePull.obj_id T'.obj)) _ _ ?_
    exact GlobalTheory.CompanionTheory.HodgePull.hom_heq (GlobalTheory.CompanionTheory.HodgePull.obj_id T.obj) (GlobalTheory.CompanionTheory.HodgePull.obj_id T'.obj) _ _ HEq.rfl

theorem morV_pullC (q : Z ⟶ Spec (CommRingCat.of K)) {P P' : ObjectProperty (Thick (smFun Z q))} (k : P' ≤ P) (a n : ℕ)
    (h : ∀ T, P' T → P ((smS (𝟙 Z) (Category.id_comp q)).G.obj T)) (z : CH.Cn (P.ι ⋙ G q a) n) :
    (morV (𝟙 Z) (Category.id_comp q) a h).pullC n z = (resU (G q a) k).pullC n z := by
  funext s
  have hs : s ⋙ (morV (𝟙 Z) (Category.id_comp q) a h).G = s ⋙ (resU (G q a) k).G := by
    rw [morV_G q k a h]
  exact (GlobalTheory.CompanionTheory.HodgePull.τ_id a _ _).trans (eq_of_heq (congr_arg_heq z hs))

theorem morV_pull (q : Z ⟶ Spec (CommRingCat.of K)) {P P' : ObjectProperty (Thick (smFun Z q))} (k : P' ≤ P) (a n : ℕ)
    (h : ∀ T, P' T → P ((smS (𝟙 Z) (Category.id_comp q)).G.obj T)) (x : HU (G q a) P n) :
    (morV (𝟙 Z) (Category.id_comp q) a h).pull n x = (resU (G q a) k).pull n x := by
  obtain ⟨⟨z, hz⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  exact congrArg (Submodule.Quotient.mk (p := _)) (Subtype.ext (morV_pullC q k a n h z))

theorem isForm_top (q : Z ⟶ Spec (CommRingCat.of K)) {a : ℕ} (g₀ : Γ(Z, ⊤)) (g : Fin a → Γ(Z, ⊤)) (c : Hdg q a a)
    (hc : Om.L2.IsFormT q g₀ g c) :
    IsForm q ⊤ (a := a) g₀ g ((CH.Mor.restrict (G q a) (inU q ⊤).ι).pull a c) := by
  intro Λ
  let Λ' : Om.L2.LiftsT q := ⟨fun T g => Λ.v ⟨T, Om.L2.inTop q T⟩ g, fun T g => Λ.hv ⟨T, Om.L2.inTop q T⟩ g⟩
  obtain ⟨f, hf, hcf, hz⟩ := hc Λ'
  have hf' : CH.d (G q a) a f = 0 := hf
  have hb : CH.d ((inU q ⊤).ι ⋙ G q a) a ((CH.Mor.restrict (G q a) (inU q ⊤).ι).pullC a f) = 0 := by
    rw [(CH.Mor.restrict (G q a) (inU q ⊤).ι).d_pullC, hf', map_zero]
  have hcl : (CH.Mor.restrict (G q a) (inU q ⊤).ι).pull a c =
      (CH.cx ((inU q ⊤).ι ⋙ G q a)).cls ((CH.Mor.restrict (G q a) (inU q ⊤).ι).pullC a f) hb := by
    have hc' : c = (CH.cx (G q a)).cls f hf' := hcf
    rw [hc']
    rfl
  exact ⟨(CH.Mor.restrict (G q a) (inU q ⊤).ι).pullC a f, hb, hcl, fun s => hz (s ⋙ (inU q ⊤).ι)⟩

theorem omMap_cross {K A B₁ B₂ C : Type} [CommRing K] [CommRing A] [CommRing B₁] [CommRing B₂] [CommRing C] [Algebra K A]
    [Algebra K B₁] [Algebra K B₂] [Algebra K C] (φ₁ : A →ₐ[K] B₁) (φ₂ : A →ₐ[K] B₂) (ψ₁ : B₁ →ₐ[K] C) (ψ₂ : B₂ →ₐ[K] C)
    (h : ∀ g, ψ₁ (φ₁ g) = ψ₂ (φ₂ g)) (a : ℕ) (ω : Om K A a) :
    omMap ψ₁ a (omMap φ₁ a ω) = omMap ψ₂ a (omMap φ₂ a ω) := by
  have hs := (GlobalTheory.CompanionTheory.OntoForms.formLaws K A A a).1
  have e : (omMap ψ₁ a).comp (omMap φ₁ a) = (omMap ψ₂ a).comp (omMap φ₂ a) := by
    refine LinearMap.ext_on hs ?_
    rintro _ ⟨g₀, g, rfl⟩
    simp only [LinearMap.comp_apply]
    rw [((GlobalTheory.CompanionTheory.OntoForms.formLaws K A B₁ a).2 φ₁).1, ((GlobalTheory.CompanionTheory.OntoForms.formLaws K A B₂ a).2 φ₂).1,
      ((GlobalTheory.CompanionTheory.OntoForms.formLaws K B₁ C a).2 ψ₁).1, ((GlobalTheory.CompanionTheory.OntoForms.formLaws K B₂ C a).2 ψ₂).1]
    simp only [h]
  exact LinearMap.congr_fun e ω

theorem res_key (hN : OmNat) (K : Type) [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (a : ℕ)
    {V V' : X.Opens} (k : V' ≤ V) :
    ∃ φ : Sec q V →ₐ[K] Sec q V', (∀ g, φ g = (X.presheaf.map (homOfLE k).op).hom g) ∧
      ∀ e e', IsOm q V a e → IsOm q V' a e' → ∀ ω,
        (resU (G q a) (inU_mono q k)).pull a (e ω) = e' (omMap φ a ω) := by
  have h : ∀ T, inU q V' T → inU q V ((smS (𝟙 X) (Category.id_comp q)).G.obj T) := fun T hT => by
    have e : (smS (𝟙 X) (Category.id_comp q)).G.obj T = T := GlobalTheory.CompanionTheory.HodgePull.obj_id T
    rw [e]
    exact inU_mono q k T hT
  obtain ⟨φ, h1, h2⟩ := hN K X X q q (𝟙 X) (Category.id_comp q) V V' k h
  refine ⟨φ, fun g => ?_, fun e e' he he' ω => ?_⟩
  · rw [h1]
    simp [Scheme.Hom.appLE]
  · rw [← morV_pull q (inU_mono q k) a a h]
    exact h2 a e e' he he' ω

theorem om_top : AffOm → OmNat → ∀ (K : Type) [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    [IsAffine X] [Smooth q] (a : ℕ),
    ∃ e : Om K (Sec q ⊤) a →ₗ[K] HV q ⊤ a a, IsOm q ⊤ a e ∧ Function.Bijective e := by
  intro hA hN K _ _ X q _ _ a
  classical
  obtain ⟨U⟩ := (Pb.cov_ex q).1 inferInstance
  have hAff2 : ∀ α β, IsAffineOpen (U.U α ⊓ U.U β) := fun α β => by
    have h := U.inter {α, β} ⟨α, by simp⟩
    rwa [Finset.iInf_insert, Finset.iInf_singleton] at h
  have hc1 : ∀ α, Nonempty (Coord q (U.U α) (U.d α)) := fun α => ⟨U.c α⟩
  have hc2 : ∀ α β, Nonempty (Coord q (U.U α ⊓ U.U β) (U.d α)) := fun α β =>
    ⟨(Pb.coord_res (U.c α) inf_le_left (hAff2 α β)).choose⟩
  have van : ∀ S : Finset U.ι, S.Nonempty → ∀ j < a, Subsingleton (HV q (⨅ α ∈ S, U.U α) a j) := by
    rintro S hS j hj
    obtain ⟨α₀, h₀⟩ := id hS
    exact (hA K X q _ (U.d α₀) ⟨(Pb.coord_res (U.c α₀) (iInf₂_le α₀ h₀) (U.inter S hS)).choose⟩ a).1 j (by omega)
  choose E hE hEb using fun α => (hA K X q _ _ (hc1 α) a).2
  choose E₂ hE₂ hE₂b using fun α β => (hA K X q _ _ (hc2 α β) a).2
  choose φ hφ hφn using fun α => res_key hN K q a (le_top : U.U α ≤ ⊤)
  choose ψ₁ hψ₁ hψ₁n using fun α β => res_key hN K q a (inf_le_left : U.U α ⊓ U.U β ≤ U.U α)
  choose ψ₂ hψ₂ hψ₂n using fun α β => res_key hN K q a (inf_le_right : U.U α ⊓ U.U β ≤ U.U β)
  have hk : ∀ α, inU q (U.U α) ≤ inU q ⊤ := fun α => inU_mono q le_top
  have hk₁ : ∀ α β, inU q (U.U α ⊓ U.U β) ≤ inU q (U.U α) := fun α β => inU_mono q inf_le_left
  have hk₂ : ∀ α β, inU q (U.U α ⊓ U.U β) ≤ inU q (U.U β) := fun α β => inU_mono q inf_le_right
  obtain ⟨hinj, hglue⟩ := GlobalTheory.CompanionTheory.CechDeg.om_cech q U.U U.cover a van hk hk₁ hk₂
  obtain ⟨finj, fglue⟩ := GlobalTheory.CompanionTheory.FormsGlue.forms_glue q U.U (fun α => (U.c α).affine) U.cover φ ψ₁ ψ₂ hφ hψ₁ hψ₂ a
  let R : HV q ⊤ a a →ₗ[K] ∀ α, HV q (U.U α) a a := LinearMap.pi fun α => (resU (G q a) (hk α)).pull a
  let Eo : Om K (Sec q ⊤) a →ₗ[K] ∀ α, HV q (U.U α) a a := LinearMap.pi fun α => (E α).comp (omMap (φ α) a)
  have hRinj : Function.Injective R := hinj
  have hcompat : ∀ ω α β, (resU (G q a) (hk₁ α β)).pull a (Eo ω α) = (resU (G q a) (hk₂ α β)).pull a (Eo ω β) := by
    intro ω α β
    have e₁ := hψ₁n α β _ _ (hE α) (hE₂ α β) (omMap (φ α) a ω)
    have e₂ := hψ₂n α β _ _ (hE β) (hE₂ α β) (omMap (φ β) a ω)
    refine e₁.trans (Eq.trans ?_ e₂.symm)
    refine congrArg _ (omMap_cross _ _ _ _ (fun g => ?_) a ω)
    rw [hψ₁, hψ₂, hφ, hφ]
    change ((X.presheaf.map (homOfLE le_top).op ≫ X.presheaf.map (homOfLE inf_le_left).op).hom g) =
      ((X.presheaf.map (homOfLE le_top).op ≫ X.presheaf.map (homOfLE inf_le_right).op).hom g)
    rw [← X.presheaf.map_comp, ← X.presheaf.map_comp]
    rfl
  have hmem : ∀ ω, Eo ω ∈ LinearMap.range R := fun ω => by
    obtain ⟨x, hx⟩ := hglue (Eo ω) (hcompat ω)
    exact ⟨x, funext hx⟩
  let e : Om K (Sec q ⊤) a →ₗ[K] HV q ⊤ a a :=
    ((LinearEquiv.ofInjective R hRinj).symm : LinearMap.range R →ₗ[K] HV q ⊤ a a).comp (Eo.codRestrict _ hmem)
  have hRe : ∀ ω, R (e ω) = Eo ω := fun ω =>
    congrArg Subtype.val ((LinearEquiv.ofInjective R hRinj).apply_symm_apply (Eo.codRestrict _ hmem ω))
  refine ⟨e, fun g₀ g => ?_, fun ω ω' h => ?_, fun x => ?_⟩
  · obtain ⟨c, hc⟩ := GlobalTheory.CompanionTheory.OmCls.main q (a := a) g₀ g
    have hc' := isForm_top q g₀ g c hc
    have key : e (form K g₀ g) = (CH.Mor.restrict (G q a) (inU q ⊤).ι).pull a c := by
      refine hRinj (funext fun α => ?_)
      rw [hRe]
      have h1 := isForm_res q le_top (φ α) (hφ α) hc'
      have h2 := hE α (φ α g₀) fun j => φ α (g j)
      refine Eq.trans ?_ (isForm_unique q _ h2 h1)
      exact congrArg (E α) (((GlobalTheory.CompanionTheory.OntoForms.formLaws K _ _ a).2 (φ α)).1 g₀ g)
    rw [key]
    exact hc'
  · refine finj (funext fun α => (hEb α).1 ?_)
    have := congrFun ((hRe ω).symm.trans ((congrArg R h).trans (hRe ω'))) α
    exact this
  · choose y hy using fun α => (hEb α).2 (R x α)
    obtain ⟨ω, hω⟩ := fglue y fun α β => (hE₂b α β).1 (by
      rw [← hψ₁n α β _ _ (hE α) (hE₂ α β), ← hψ₂n α β _ _ (hE β) (hE₂ α β), hy, hy]
      change (resU (G q a) (hk₁ α β)).pull a ((resU (G q a) (hk α)).pull a x) =
        (resU (G q a) (hk₂ α β)).pull a ((resU (G q a) (hk β)).pull a x)
      rw [← CrystallineSemistableComparison.Onto.resU_pull_trans (G q a) (hk α) (hk₁ α β) (inU_mono q le_top),
        ← CrystallineSemistableComparison.Onto.resU_pull_trans (G q a) (hk β) (hk₂ α β) (inU_mono q le_top)])
    refine ⟨ω, hRinj (funext fun α => ?_)⟩
    rw [hRe]
    change E α (omMap (φ α) a ω) = R x α
    rw [hω, hy]

end GlobalTheory.CompanionTheory.OmGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineSmoothFormsBijective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormCupWedge =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormCupWedge", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InstFintypeHodgeBidegree\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OntoFormLaws\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

noncomputable section
namespace GlobalTheory.CompanionTheory.OmCup
open CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.HT CrystallineSemistableComparison.Om.L2

variable {K : Type} [CommRing K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem mk_carry (Λ : LiftsT q) {T T' : Thick (smFun X q)} (φ : T ⟶ T') (g : Γ(X, ⊤)) :
    Ideal.Quotient.mk T'.J (φ.φ (Λ.v T g)) = Ideal.Quotient.mk T'.J (Λ.v T' g) := by
  rw [Λ.hv T' g]
  refine Eq.trans ?_ (GlobalTheory.CompanionTheory.GrForm.ev_nat (q := q) φ (inTop q T) (inTop q T') g).symm
  rw [← Λ.hv T g]
  rfl

def up (Λ : LiftsT q) {n : ℕ} (s : ComposableArrows (Thick (smFun X q)) n) (i : Fin (n + 1)) (g : Γ(X, ⊤)) :
    (s.obj (Fin.last n)).B :=
  (s.map (homOfLE (Fin.le_last i))).φ (Λ.v _ g)

theorem mk_up (Λ : LiftsT q) {n : ℕ} (s : ComposableArrows (Thick (smFun X q)) n) (i : Fin (n + 1)) (g : Γ(X, ⊤)) :
    Ideal.Quotient.mk (s.obj (Fin.last n)).J (up Λ s i g) = Ideal.Quotient.mk _ (Λ.v (s.obj (Fin.last n)) g) :=
  mk_carry Λ _ g

theorem carry (Λ : LiftsT q) {m n : ℕ} (s : ComposableArrows (Thick (smFun X q)) n) (p : Fin (m + 1) → Fin (n + 1))
    (hp : Monotone p) (k : Fin (m + 1)) (g : Γ(X, ⊤)) :
    (s.map (homOfLE (Fin.le_last (p (Fin.last m))))).φ (up Λ (hp.functor ⋙ s) k g) = up Λ s (p k) g := by
  have e : (hp.functor ⋙ s).map (homOfLE (Fin.le_last k)) ≫ s.map (homOfLE (Fin.le_last (p (Fin.last m)))) =
      s.map (homOfLE (Fin.le_last (p k))) := by
    change s.map _ ≫ s.map _ = _
    rw [← s.map_comp]
    exact congrArg s.map (Subsingleton.elim _ _)
  exact congrArg (fun ψ : (s.obj (p k)) ⟶ (s.obj (Fin.last n)) => ψ.φ (Λ.v _ g)) e

theorem form_eq (Λ : LiftsT q) {a : ℕ} (g₀ : Γ(X, ⊤)) (g : Fin a → Γ(X, ⊤)) (s : ComposableArrows (Thick (smFun X q)) a) :
    Λ.form g₀ g s = Λ.v _ g₀ * ∏ k : Fin a, (up Λ s k.succ (g k) - up Λ s k.castSucc (g k)) := rfl

theorem prod_mem (Λ : LiftsT q) {a : ℕ} (g : Fin a → Γ(X, ⊤)) (s : ComposableArrows (Thick (smFun X q)) a) :
    ∏ k : Fin a, (up Λ s k.succ (g k) - up Λ s k.castSucc (g k)) ∈ pdP (s.obj (Fin.last a)).δ a := by
  have key : ∀ (S : Finset (Fin a)), ∏ k ∈ S, (up Λ s k.succ (g k) - up Λ s k.castSucc (g k)) ∈
      pdP (s.obj (Fin.last a)).δ S.card := by
    classical
    intro S
    induction S using Finset.induction_on with
    | empty =>
      rw [Finset.prod_empty]
      exact Ideal.subset_span ⟨[], by simp, by simp, by simp⟩
    | insert c S hc ih =>
      rw [Finset.prod_insert hc, Finset.card_insert_of_notMem hc, Nat.add_comm S.card 1]
      refine dividedPowerFiltration_mul _ 1 S.card ?_ ih
      refine (s.obj (Fin.last a)).J_le_pdPow_one ?_
      rw [← Ideal.Quotient.eq, mk_up, mk_up]
  simpa using key Finset.univ

theorem form_mem (Λ : LiftsT q) {a : ℕ} (g₀ : Γ(X, ⊤)) (g : Fin a → Γ(X, ⊤)) (s : ComposableArrows (Thick (smFun X q)) a) :
    Λ.form g₀ g s ∈ pdP (s.obj (Fin.last a)).δ a :=
  Ideal.mul_mem_left _ _ (prod_mem Λ g s)

theorem carry_form (Λ : LiftsT q) {m n : ℕ} (s : ComposableArrows (Thick (smFun X q)) n) (p : Fin (m + 1) → Fin (n + 1))
    (hp : Monotone p) (g₀ : Γ(X, ⊤)) (g : Fin m → Γ(X, ⊤)) :
    (s.map (homOfLE (Fin.le_last (p (Fin.last m))))).φ (Λ.form g₀ g (hp.functor ⋙ s)) =
      up Λ s (p (Fin.last m)) g₀ * ∏ k : Fin m, (up Λ s (p k.succ) (g k) - up Λ s (p k.castSucc) (g k)) := by
  rw [form_eq, map_mul, map_prod]
  refine congrArg₂ (· * ·) rfl (Finset.prod_congr rfl fun k _ => ?_)
  rw [map_sub, carry, carry]

def someLifts (q : X ⟶ Spec (CommRingCat.of K)) : LiftsT q where
  v T g := Function.surjInv Ideal.Quotient.mk_surjective
    (ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T (inTop q T) g)
  hv T g := Function.surjInv_eq _ _

theorem isFormT_unique {a : ℕ} {g₀ : Γ(X, ⊤)} {g : Fin a → Γ(X, ⊤)} {c c' : Hdg q a a}
    (h : IsFormT q g₀ g c) (h' : IsFormT q g₀ g c') : c = c' := by
  obtain ⟨f, hf, e, hz⟩ := h (someLifts q)
  obtain ⟨f', hf', e', hz'⟩ := h' (someLifts q)
  have : f = f' := funext fun s => Subtype.ext ((hz s).trans (hz' s).symm)
  subst this
  exact e.trans e'.symm

theorem alg {B : Type} [CommRing B] (x₁ x₂ v p₁ p₂ : B) :
    (x₁ * x₂ - v) * (p₁ * p₂) = x₁ * p₁ * (x₂ * p₂) - v * (p₁ * p₂) := by ring

theorem cup_rep (Λ : LiftsT q) {a b : ℕ} (g₀ h₀ : Γ(X, ⊤)) (g : Fin a → Γ(X, ⊤)) (h : Fin b → Γ(X, ⊤))
    (f : CH.Cn (grT (smFun X q) a) a) (f' : CH.Cn (grT (smFun X q) b) b)
    (hf : ∀ s, (show sqM _ _ _ from f s).1 = Ideal.Quotient.mk _ (Λ.form g₀ g s))
    (hf' : ∀ s, (show sqM _ _ _ from f' s).1 = Ideal.Quotient.mk _ (Λ.form h₀ h s))
    (s : ComposableArrows (Thick (smFun X q)) (a + b)) :
    (show sqM _ _ _ from (grOk (smFun X q) (rfl : a + b = a + b)).pair.cupC (rfl : a + b = a + b) f f' s).1 =
      Ideal.Quotient.mk _ (Λ.form (g₀ * h₀) (Fin.append g h) s) := by
  have hm := CH.front_mono (rfl : a + b = a + b)
  have hb := CH.back_mono (rfl : a + b = a + b)
  have e1 : f (hm.functor ⋙ s) = sqMk (thFil (smFun X q) (a : ℤ)) (thFil (smFun X q) ((a : ℤ) + 1)) (Λ.form g₀ g (hm.functor ⋙ s))
      (form_mem Λ g₀ g _) := Subtype.ext (hf _)
  have e2 : f' (hb.functor ⋙ s) = sqMk (thFil (smFun X q) (b : ℤ)) (thFil (smFun X q) ((b : ℤ) + 1)) (Λ.form h₀ h (hb.functor ⋙ s))
      (form_mem Λ h₀ h _) := Subtype.ext (hf' _)
  have hM := grOk (smFun X q) (rfl : a + b = a + b)
  have t1 : CH.term (grT (smFun X q) a) s f (CH.front (rfl : a + b = a + b)) hm =
      sqMk (thFil (smFun X q) (a : ℤ)) (thFil (smFun X q) ((a : ℤ) + 1))
        ((s.map (homOfLE (Fin.le_last (CH.front (rfl : a + b = a + b) (Fin.last a))))).φ (Λ.form g₀ g (hm.functor ⋙ s)))
        ((thFil (smFun X q) (a : ℤ)).map_mem _ (show _ ∈ (thFil (smFun X q) (a : ℤ)).S _ from form_mem Λ g₀ g (hm.functor ⋙ s))) := by
    unfold CH.term
    rw [e1]
    rfl
  have t2 : CH.term (grT (smFun X q) b) s f' (CH.back (rfl : a + b = a + b)) hb =
      sqMk (thFil (smFun X q) (b : ℤ)) (thFil (smFun X q) ((b : ℤ) + 1))
        ((s.map (homOfLE (Fin.le_last (CH.back (rfl : a + b = a + b) (Fin.last b))))).φ (Λ.form h₀ h (hb.functor ⋙ s)))
        ((thFil (smFun X q) (b : ℤ)).map_mem _ (show _ ∈ (thFil (smFun X q) (b : ℤ)).S _ from form_mem Λ h₀ h (hb.functor ⋙ s))) := by
    unfold CH.term
    rw [e2]
    rfl
  have c : (grOk (smFun X q) (rfl : a + b = a + b)).pair.cupC (rfl : a + b = a + b) f f' s =
      (grOk (smFun X q) (rfl : a + b = a + b)).mul (CH.term (grT (smFun X q) a) s f (CH.front (rfl : a + b = a + b)) hm)
        (CH.term (grT (smFun X q) b) s f' (CH.back (rfl : a + b = a + b)) hb) := rfl
  rw [c, t1, t2, MulOk.mul_mk]
  change Ideal.Quotient.mk _ _ = Ideal.Quotient.mk _ _
  rw [carry_form Λ s _ hm g₀ g, carry_form Λ s _ hb h₀ h, form_eq]
  have hprod : ∏ k : Fin (a + b), (up Λ s k.succ (Fin.append g h k) - up Λ s k.castSucc (Fin.append g h k)) =
      (∏ k : Fin a, (up Λ s (CH.front (rfl : a + b = a + b) k.succ) (g k) - up Λ s (CH.front (rfl : a + b = a + b) k.castSucc) (g k))) *
      ∏ k : Fin b, (up Λ s (CH.back (rfl : a + b = a + b) k.succ) (h k) - up Λ s (CH.back (rfl : a + b = a + b) k.castSucc) (h k)) := by
    rw [Fin.prod_univ_add]
    refine congrArg₂ (· * ·) (Finset.prod_congr rfl fun i _ => ?_) (Finset.prod_congr rfl fun i _ => ?_)
    · rw [Fin.append_left]
      rfl
    · rw [Fin.append_right]
      have e3 : (Fin.natAdd a i).succ = CH.back (rfl : a + b = a + b) i.succ := Fin.ext (by simp [CH.back]; omega)
      have e4 : (Fin.natAdd a i).castSucc = CH.back (rfl : a + b = a + b) i.castSucc := Fin.ext (by simp [CH.back])
      rw [e3, e4]
  have hP := prod_mem Λ (Fin.append g h) s
  rw [hprod] at hP ⊢
  rw [Ideal.Quotient.eq]
  generalize (∏ k : Fin a, (up Λ s (CH.front (rfl : a + b = a + b) k.succ) (g k) - up Λ s (CH.front (rfl : a + b = a + b) k.castSucc) (g k))) = P₁ at hP ⊢
  generalize (∏ k : Fin b, (up Λ s (CH.back (rfl : a + b = a + b) k.succ) (h k) - up Λ s (CH.back (rfl : a + b = a + b) k.castSucc) (h k))) = P₂ at hP ⊢
  have hJ : up Λ s (CH.front (rfl : a + b = a + b) (Fin.last a)) g₀ * up Λ s (CH.back (rfl : a + b = a + b) (Fin.last b)) h₀ -
      Λ.v _ (g₀ * h₀) ∈ (s.obj (Fin.last (a + b))).J := by
    rw [← Ideal.Quotient.eq, map_mul, mk_up, mk_up, Λ.hv, Λ.hv, Λ.hv, map_mul]
  have hm2 := dividedPowerFiltration_mul _ 1 (a + b) ((s.obj (Fin.last (a + b))).J_le_pdPow_one hJ) hP
  have e5 : (((a + b : ℕ) : ℤ) + 1).toNat = 1 + (a + b) := by omega
  change _ ∈ pdP _ (((a + b : ℕ) : ℤ) + 1).toNat
  rw [e5]
  rw [alg] at hm2
  exact hm2

theorem isFormT_cup {a b : ℕ} {g₀ h₀ : Γ(X, ⊤)} {g : Fin a → Γ(X, ⊤)} {h : Fin b → Γ(X, ⊤)} {x : Hdg q a a} {y : Hdg q b b}
    (hx : IsFormT q g₀ g x) (hy : IsFormT q h₀ h y) :
    IsFormT q (g₀ * h₀) (Fin.append g h) (cupH q rfl rfl x y) := by
  intro Λ
  obtain ⟨f, hf, ex, hz⟩ := hx Λ
  obtain ⟨f', hf', ey, hz'⟩ := hy Λ
  obtain ⟨hc, e⟩ := CrystallineSemistableComparison.P.cup_cls (grOk (smFun X q) (rfl : a + b = a + b)).pair (rfl : a + b = a + b) f f' hf hf'
  refine ⟨_, hc, ?_, cup_rep Λ g₀ h₀ g h f f' hz hz'⟩
  exact (congrArg₂ (fun u v => (grOk (smFun X q) (rfl : a + b = a + b)).pair.cup (rfl : a + b = a + b) u v) ex ey).trans e

theorem wedge_form {A : Type} [CommRing A] [Algebra K A] {a b : ℕ} (g₀ h₀ : A) (g : Fin a → A) (h : Fin b → A) :
    wedgeOm K A (rfl : a + b = a + b) (CrystallineSemistableComparison.Onto.form K g₀ g) (CrystallineSemistableComparison.Onto.form K h₀ h) =
      CrystallineSemistableComparison.Onto.form K (g₀ * h₀) (Fin.append g h) := by
  refine Subtype.ext ?_
  rw [coe_wedgeOm]
  simp only [CrystallineSemistableComparison.Onto.form, Submodule.coe_smul, exteriorPower.ιMulti_apply_coe]
  rw [smul_mul_smul_comm, ExteriorAlgebra.ιMulti_apply, ExteriorAlgebra.ιMulti_apply, ExteriorAlgebra.ιMulti_apply, ← List.prod_append,
    ← List.ofFn_fin_append]
  refine congrArg (fun v => (g₀ * h₀) • (List.ofFn v).prod) (funext fun i => ?_)
  refine Fin.addCases (fun i => ?_) (fun i => ?_) i <;> simp

theorem bilin_ext {H₁ H₂ H₃ M₁ M₂ M₃ : Type*} [AddCommGroup H₁] [AddCommGroup H₂] [AddCommGroup H₃] [AddCommGroup M₁]
    [AddCommGroup M₂] [AddCommGroup M₃] [Module K H₁] [Module K H₂] [Module K H₃] [Module K M₁] [Module K M₂] [Module K M₃]
    (e₁ : H₁ ≃ₗ[K] M₁) (e₂ : H₂ ≃ₗ[K] M₂) (e₃ : H₃ ≃ₗ[K] M₃) (B : H₁ →ₗ[K] H₂ →ₗ[K] H₃) (Wd : M₁ →ₗ[K] M₂ →ₗ[K] M₃)
    (S₁ : Set M₁) (S₂ : Set M₂) (h₁ : Submodule.span K S₁ = ⊤) (h₂ : Submodule.span K S₂ = ⊤)
    (gen : ∀ ω ∈ S₁, ∀ η ∈ S₂, e₃ (B (e₁.symm ω) (e₂.symm η)) = Wd ω η) (x : H₁) (y : H₂) :
    e₃ (B x y) = Wd (e₁ x) (e₂ y) := by
  have all : ∀ (ω : M₁) (η : M₂), e₃ (B (e₁.symm ω) (e₂.symm η)) = Wd ω η := by
    intro ω η
    have hω : ω ∈ Submodule.span K S₁ := h₁ ▸ Submodule.mem_top
    have hη : η ∈ Submodule.span K S₂ := h₂ ▸ Submodule.mem_top
    induction hω using Submodule.span_induction with
    | zero => simp
    | add u v _ _ hu hv => simp only [map_add (f := _), LinearMap.add_apply, hu, hv]
    | smul r u _ hu => simp only [map_smul, LinearMap.smul_apply, hu]
    | mem u hu =>
      induction hη using Submodule.span_induction with
      | zero => simp
      | add u v _ _ hu hv => simp only [map_add (f := _), hu, hv]
      | smul r u _ hu => simp only [map_smul, hu]
      | mem v hv => exact gen u hu v hv
  simpa using all (e₁ x) (e₂ y)

theorem exists_bil (q : X ⟶ Spec (CommRingCat.of K)) (a b : ℕ) :
    ∃ B : Hdg q a a →ₗ[K] Hdg q b b →ₗ[K] Hdg q (a + b) (a + b), ∀ u v, B u v = cupH q rfl rfl u v := by
  obtain ⟨bil, hbil⟩ := CrystallineSemistableComparison.P.cup_bilin (grOk (smFun X q) (rfl : a + b = a + b)).pair (rfl : a + b = a + b)
  exact ⟨bil, hbil⟩

theorem gen_eq {a b : ℕ} (eA : Hdg q a a ≃ₗ[K] OmU q ⊤ a) (eB : Hdg q b b ≃ₗ[K] OmU q ⊤ b)
    (eC : Hdg q (a + b) (a + b) ≃ₗ[K] OmU q ⊤ (a + b)) (hA : IsOmT q a eA) (hB : IsOmT q b eB) (hC : IsOmT q (a + b) eC)
    (g₀ h₀ : Γ(X, ⊤)) (g : Fin a → Γ(X, ⊤)) (h : Fin b → Γ(X, ⊤)) :
    eC (cupH q rfl rfl (eA.symm (gForm q g₀ g)) (eB.symm (gForm q h₀ h))) =
      wedgeOm K (Sec q ⊤) rfl (gForm q g₀ g) (gForm q h₀ h) := by
  have e := isFormT_unique (isFormT_cup (hA g₀ g) (hB h₀ h)) (hC (g₀ * h₀) (Fin.append g h))
  rw [e, LinearEquiv.apply_symm_apply]
  exact (wedge_form (K := K) (A := Sec q ⊤) g₀ h₀ g h).symm

theorem main : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (a b c : ℕ) (h : a + b = c)
    (eA : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (eB : CrystallineSemistableComparison.HT.Hdg q b b ≃ₗ[K] OmU q ⊤ b) (eC : CrystallineSemistableComparison.HT.Hdg q c c ≃ₗ[K] OmU q ⊤ c),
    CrystallineSemistableComparison.Om.L2.IsOmT q a eA → CrystallineSemistableComparison.Om.L2.IsOmT q b eB → CrystallineSemistableComparison.Om.L2.IsOmT q c eC → ∀ x y,
      eC (CrystallineSemistableComparison.HT.cupH q h h x y) = wedgeOm K (Sec q ⊤) h (eA x) (eB y) := by
  intro K _ X q a b c h eA eB eC hA hB hC x y
  subst h
  obtain ⟨B, hB'⟩ := exists_bil q a b
  rw [← hB']
  refine bilin_ext eA eB eC B (wedgeOm K (Sec q ⊤) rfl) _ _ (GlobalTheory.CompanionTheory.OntoForms.formLaws K (Sec q ⊤) (Sec q ⊤) a).1
    (GlobalTheory.CompanionTheory.OntoForms.formLaws K (Sec q ⊤) (Sec q ⊤) b).1 ?_ x y
  rintro _ ⟨g₀, g, rfl⟩ _ ⟨h₀, h, rfl⟩
  rw [hB']
  exact gen_eq eA eB eC hA hB hC g₀ h₀ g h

end GlobalTheory.CompanionTheory.OmCup
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormCupWedge =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormIsoOfBijective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormIsoOfBijective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.TopRes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

noncomputable section

namespace GlobalTheory.CompanionTheory.HodgeFormTop

open CrystallineSemistableComparison CrystallineSemistableComparison.Onto CrystallineSemistableComparison.HT CrystallineSemistableComparison.Om.L2 CrystallineSemistableComparison.Pb

section
variable {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

def omEq (a : ℕ) : CrystallineSemistableComparison.Onto.Om K (CrystallineSemistableComparison.Onto.Sec q ⊤) a ≃ₗ[K] OmU q ⊤ a := LinearEquiv.refl K (OmU q ⊤ a)

abbrev resTop (a : ℕ) := CH.Mor.restrict (G q a) (inU q ⊤).ι

theorem resTop_pullC_bij (a n : ℕ) : Function.Bijective ((resTop q a).pullC n) :=
  (topRes_pf K _ (G q a) (inU q ⊤) ⊥ (fun T => inTop q T) n).1

theorem resTop_bij (a n : ℕ) : Function.Bijective ((resTop q a).pull n) :=
  CrystallineSemistableComparison.P.mapH_bij _ (fun m => resTop_pullC_bij q a m) n

def resTopEquiv (a : ℕ) : Hdg q a a ≃ₗ[K] HV q ⊤ a a :=
  LinearEquiv.ofBijective ((resTop q a).pull a) (resTop_bij q a a)

def LiftsT.toTop (Λ : LiftsT q) : Lifts q ⊤ where
  v T g := Λ.v T.obj g
  hv T g := Λ.hv T.obj g

theorem isFormT_of_isForm {a : ℕ} (g₀ : Γ(X, ⊤)) (g : Fin a → Γ(X, ⊤)) (c : HV q ⊤ a a)
    (h : IsForm q ⊤ (a := a) g₀ g c) : IsFormT q g₀ g ((resTopEquiv q a).symm c) := by
  intro Λ
  obtain ⟨f, hf, hc, hz⟩ := h (LiftsT.toTop q Λ)
  obtain ⟨z, rfl⟩ := (resTop_pullC_bij q a a).2 f
  have hd : CH.d (G q a) a z = 0 := by
    apply (resTop_pullC_bij q a (a + 1)).1
    rw [map_zero, ← CH.Mor.d_pullC]
    exact hf
  have hcz : (resTopEquiv q a) ((CH.cx (G q a)).cls z hd) = c := by
    rw [hc]
    exact CrystallineSemistableComparison.P.mapH_cls (resTop q a).hom a z hd _
  refine ⟨z, hd, ?_, fun t => ?_⟩
  · rw [← hcz, LinearEquiv.symm_apply_apply]
  · exact hz (t ⋙ (inU q ⊤).lift (𝟭 _) (fun T => inTop q T))

end

theorem main : ∀ {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (a : ℕ),
    (∃ e : CrystallineSemistableComparison.Onto.Om K (CrystallineSemistableComparison.Onto.Sec q ⊤) a →ₗ[K] CrystallineSemistableComparison.Onto.HV q ⊤ a a, CrystallineSemistableComparison.Onto.IsOm q ⊤ a e ∧ Function.Bijective e) →
    ∃ e' : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a, CrystallineSemistableComparison.Om.L2.IsOmT q a e' := by
  intro K _ X q a ⟨e, he, hb⟩
  refine ⟨((resTopEquiv q a).trans (LinearEquiv.ofBijective e hb).symm).trans (omEq q a), fun g₀ g => ?_⟩
  exact isFormT_of_isForm q g₀ g _ (he g₀ g)

end GlobalTheory.CompanionTheory.HodgeFormTop
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormIsoOfBijective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InstFintypeHodgeBidegree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

namespace GlobalTheory.CompanionTheory.HodgeFormUnit

theorem gForm_one {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) :
    CrystallineSemistableComparison.Om.L2.gForm q 1 Fin.elim0 = oneOm K (Sec q ⊤) := by
  apply Subtype.ext
  simp [CrystallineSemistableComparison.Onto.form, oneOm]

theorem e_oneH {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    (e : CrystallineSemistableComparison.HT.Hdg q 0 0 ≃ₗ[K] OmU q ⊤ 0) (h : CrystallineSemistableComparison.Om.L2.IsOmT q 0 e) :
    e (CrystallineSemistableComparison.HT.oneH q) = oneOm K (Sec q ⊤) := by
  let Λ : CrystallineSemistableComparison.Om.L2.LiftsT q :=
    { v := fun T g => Function.surjInv Ideal.Quotient.mk_surjective
        (CrystallineSemistableComparison.Pb.ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T (CrystallineSemistableComparison.Om.L2.inTop q T) g)
      hv := fun T g => Function.surjInv_eq _ _ }
  obtain ⟨f, hf, hc, hz⟩ := h 1 Fin.elim0 Λ
  have hf' : f = (CrystallineSemistableComparison.Pb.toSq (CrystallineSemistableComparison.Pb.thFil (CrystallineSemistableComparison.smFun X q) (0 : ℕ)) (CrystallineSemistableComparison.Pb.thFil (CrystallineSemistableComparison.smFun X q) (((0 : ℕ) : ℤ) + 1))
      fun T => T.pdPow_zero).pullC 0 (fun s => (1 : (CrystallineSemistableComparison.Pb.thA (CrystallineSemistableComparison.smFun X q)).obj (s.obj (Fin.last 0)))) := by
    funext s
    apply Subtype.ext
    refine (hz s).trans ?_
    have hv : (Λ.form 1 Fin.elim0 s : (s.obj (Fin.last 0)).B) = Λ.v _ 1 := by
      simp [CrystallineSemistableComparison.Om.L2.LiftsT.form]
    have hJ : Λ.v (s.obj (Fin.last 0)) 1 - 1 ∈ (s.obj (Fin.last 0)).J :=
      Ideal.Quotient.eq.1 ((Λ.hv _ 1).trans ((map_one _).trans (map_one _).symm))
    refine Ideal.Quotient.eq.2 ?_
    change Λ.form 1 Fin.elim0 s - 1 ∈ (s.obj (Fin.last 0)).pdPow 1
    rw [hv]
    exact (s.obj (Fin.last 0)).J_le_pdPow_one hJ
  have h1 : CrystallineSemistableComparison.HT.oneH q = e.symm (CrystallineSemistableComparison.Om.L2.gForm q 1 Fin.elim0) := by
    refine Eq.trans ?_ hc.symm
    exact congrArg Submodule.Quotient.mk (Subtype.ext hf'.symm)
  rw [h1, LinearEquiv.apply_symm_apply, gForm_one]

end GlobalTheory.CompanionTheory.HodgeFormUnit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormPullbackCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormPullbackCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

namespace GlobalTheory.CompanionTheory.OmNatT

open CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.HT CrystallineSemistableComparison.Om.L2

universe v u

theorem rep_unique {R : Type} [CommRing R] {C : Type u} [Category.{v} C] {A : C ⥤ CommAlgCat.{0} R} {a b : IdF A} {j : ℕ}
    {z : ∀ s : ComposableArrows C j, A.obj (s.obj (Fin.last j))} {c c' : CH.H (sq a b) j}
    (h : Rep a b z c) (h' : Rep a b z c') : c = c' := by
  obtain ⟨f, hf, e, hz⟩ := h
  obtain ⟨f', hf', e', hz'⟩ := h'
  have hff : f = f' := funext fun s => Subtype.ext ((hz s).trans (hz' s).symm)
  subst hff
  exact e.trans e'.symm

section Span

variable (K A : Type) [CommRing K] [CommRing A] [Algebra K A]

theorem multi_mem {M N : Type} [AddCommGroup M] [Module A M] [AddCommGroup N] [Module A N] {a : ℕ}
    (f : (Fin a → M) →ₘₗ[A] N) (s : Set M) (hs : Submodule.span A s = ⊤) (S : Submodule A N)
    (h : ∀ v : Fin a → M, (∀ k, v k ∈ s) → f v ∈ S) (v : Fin a → M) : f v ∈ S := by
  classical
  have key : ∀ (t : Finset (Fin a)) (v : Fin a → M), (∀ k, k ∉ t → v k ∈ s) → f v ∈ S := by
    intro t
    induction t using Finset.induction_on with
    | empty => exact fun v hv => h v fun k => hv k (by simp)
    | insert i t hi ih =>
      intro v hv
      have hvi : v i ∈ Submodule.span A s := hs ▸ Submodule.mem_top
      have : ∀ x ∈ Submodule.span A s, f (Function.update v i x) ∈ S := by
        intro x hx
        induction hx using Submodule.span_induction with
        | mem x hxs =>
          refine ih _ fun k hk => ?_
          by_cases e : k = i
          · rw [e, Function.update_self]; exact hxs
          · rw [Function.update_of_ne e]
            exact hv k (by simp [e, hk])
        | zero => rw [f.map_update_zero]; exact S.zero_mem
        | add x y _ _ hx hy => rw [f.map_update_add]; exact S.add_mem hx hy
        | smul c x _ hx => rw [f.map_update_smul, RingHom.id_apply]; exact S.smul_mem _ hx
      simpa using this _ hvi
  exact key Finset.univ v fun k hk => (hk (Finset.mem_univ k)).elim

theorem span_form (a : ℕ) : Submodule.span K {ω : ⋀[A]^a Ω[A⁄K] | ∃ (g₀ : A) (g : Fin a → A), ω = CrystallineSemistableComparison.Onto.form K g₀ g} = ⊤ := by
  set S := Submodule.span K {ω : ⋀[A]^a Ω[A⁄K] | ∃ (g₀ : A) (g : Fin a → A), ω = CrystallineSemistableComparison.Onto.form K g₀ g} with hS
  have hsm : ∀ (c : A) x, x ∈ S → c • x ∈ S := by
    intro c x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨g₀, g, rfl⟩ := hx
      refine Submodule.subset_span ⟨c * g₀, g, ?_⟩
      simp only [CrystallineSemistableComparison.Onto.form, mul_smul]
    | zero => rw [smul_zero]; exact S.zero_mem
    | add x y _ _ hx hy => rw [smul_add]; exact S.add_mem hx hy
    | smul r x _ hx =>
      rw [← algebraMap_smul A r x, smul_comm, algebraMap_smul]
      exact S.smul_mem r hx
  let S' : Submodule A (⋀[A]^a Ω[A⁄K]) :=
    { carrier := S
      add_mem' := S.add_mem
      zero_mem' := S.zero_mem
      smul_mem' := hsm }
  have hι : ∀ v : Fin a → Ω[A⁄K], exteriorPower.ιMulti A a v ∈ S' := fun v =>
    multi_mem A (exteriorPower.ιMulti A a (M := Ω[A⁄K])).toMultilinearMap (Set.range (KaehlerDifferential.D K A))
      (KaehlerDifferential.span_range_derivation K A) S' (fun v hv => by
        choose g hg using hv
        refine Submodule.subset_span ⟨1, g, ?_⟩
        have e : v = fun k => KaehlerDifferential.D K A (g k) := (funext hg).symm
        simp only [CrystallineSemistableComparison.Onto.form, one_smul]
        rw [← e]
        rfl) v
  refine eq_top_iff.2 fun x _ => ?_
  have hx : x ∈ Submodule.span A (Set.range (exteriorPower.ιMulti A a (M := Ω[A⁄K]))) := by
    rw [exteriorPower.ιMulti_span]; trivial
  have : Submodule.span A (Set.range (exteriorPower.ιMulti A a (M := Ω[A⁄K]))) ≤ S' :=
    Submodule.span_le.2 (by rintro _ ⟨v, rfl⟩; exact hι v)
  exact this hx

end Span

section Mom

variable {R R' B B' : Type} [CommRing R] [CommRing B] [Algebra R B] [CommRing R'] [CommRing B'] [Algebra R' B']
  {σ : R →+* R'} {α : B →+* B'}

theorem mOm_form (h : SemiHom σ α) {a : ℕ} (g₀ : B) (g : Fin a → B) :
    h.mOm a (CrystallineSemistableComparison.Onto.form R g₀ g) = CrystallineSemistableComparison.Onto.form R' (α g₀) fun k => α (g k) := by
  unfold CrystallineSemistableComparison.Onto.form
  rw [h.mOm_smul]
  congr 1
  refine Subtype.ext ?_
  rw [SemiHom.coe_mOm, exteriorPower.ιMulti_apply_coe, exteriorPower.ιMulti_apply_coe, ExteriorAlgebra.ιMulti_apply,
    ExteriorAlgebra.ιMulti_apply, map_list_prod, List.map_ofFn]
  congr 2
  funext i
  exact (h.mDR_ι _).trans (congrArg (ExteriorAlgebra.ι B') (h.m1_D (g i)))

end Mom

section Pull

variable {K : Type} [CommRing K] {X Y : Scheme.{0}}

def outL (q : X ⟶ Spec (CommRingCat.of K)) : LiftsT q where
  v T g := Quotient.out (ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T (inTop q T) g)
  hv T g := Ideal.Quotient.mk_out _

variable {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)}

def uS (u : X ⟶ Y) : Γ(Y, ⊤) →+* Γ(X, ⊤) := (u.appLE ⊤ ⊤ (by simp)).hom

theorem ev_pull (u : X ⟶ Y) (hu : u ≫ p = q) (T : Thick (smFun X q)) (g : Γ(Y, ⊤)) :
    ev (γ := dividedPowersBot K) (p := 0) (q := p) (κ := Ideal.Quotient.mk ⊥) ((smS u hu).G.obj T) (inTop p _) g =
      ev (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T (inTop q T) (uS u g) := by
  change (Scheme.ΓSpecIso (CommRingCat.of (T.B ⧸ T.J))).hom.hom (((pt (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T ≫ u).appLE ⊤ ⊤ _).hom g) =
    (Scheme.ΓSpecIso (CommRingCat.of (T.B ⧸ T.J))).hom.hom (((pt (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T).appLE ⊤ ⊤ _).hom ((u.appLE ⊤ ⊤ (by simp)).hom g))
  congr 1
  rw [← Scheme.Hom.appLE_comp_appLE _ _ ⊤ ⊤ ⊤ (by simp) (by simp)]
  rfl

theorem out_pull (u : X ⟶ Y) (hu : u ≫ p = q) (T : Thick (smFun X q)) (g : Γ(Y, ⊤)) :
    (outL p).v ((smS u hu).G.obj T) g = (outL q).v T (uS u g) :=
  congrArg Quotient.out (ev_pull u hu T g)

theorem form_pull (u : X ⟶ Y) (hu : u ≫ p = q) {a : ℕ} (g₀ : Γ(Y, ⊤)) (g : Fin a → Γ(Y, ⊤))
    (s : ComposableArrows (Thick (smFun X q)) a) :
    (outL q).form (uS u g₀) (fun k => uS u (g k)) s = (outL p).form g₀ g (s ⋙ (smS u hu).G) := by
  unfold LiftsT.form
  refine congrArg₂ (· * ·) (out_pull u hu _ g₀).symm (Finset.prod_congr rfl fun k _ => ?_)
  exact congrArg₂ (· - ·) (congrArg _ (out_pull u hu _ (g k)).symm) (congrArg _ (out_pull u hu _ (g k)).symm)

theorem rep_pull (u : X ⟶ Y) (hu : u ≫ p = q) {a : ℕ}
    {z : ∀ s : ComposableArrows (Thick (smFun Y p)) a, (s.obj (Fin.last a)).B}
    {z' : ∀ s : ComposableArrows (Thick (smFun X q)) a, (s.obj (Fin.last a)).B}
    (hz : ∀ s, z' s = z (s ⋙ (smS u hu).G)) {c : Hdg p a a}
    (h : Rep (thFil (smFun Y p) (a : ℤ)) (thFil (smFun Y p) ((a : ℤ) + 1)) z (show CH.H (grT (smFun Y p) a) a from c)) :
    Rep (thFil (smFun X q) (a : ℤ)) (thFil (smFun X q) ((a : ℤ) + 1)) z'
      (show CH.H (grT (smFun X q) a) a from pullH u hu a a c) := by
  obtain ⟨f, hf, e, hfz⟩ := h
  let m : CH.Mor (grT (smFun Y p) a) (grT (smFun X q) a) (RingHom.id K) :=
    (smS u hu).sq (a := thFil _ (a : ℤ)) (b := thFil _ ((a : ℤ) + 1)) (a' := thFil _ (a : ℤ)) (b' := thFil _ ((a : ℤ) + 1))
      (fun _ _ hx => hx) fun _ _ hx => hx
  have hd : CH.d (grT (smFun X q) a) a (m.pullC a f) = 0 := by
    rw [m.d_pullC, hf, map_zero]
  refine ⟨m.pullC a f, hd, ?_, fun s => ?_⟩
  · change m.pull a c = _
    have : c = (CH.cx (grT (smFun Y p) a)).cls f hf := e
    rw [this]
    exact CrystallineSemistableComparison.P.mapH_cls m.hom a f hf hd
  · rw [hz s]
    exact congrArg (Ideal.quotientMap _ ((smS u hu).ρ _) _) (hfz (s ⋙ (smS u hu).G))

end Pull

section Main

variable {K : Type} [CommRing K] {X Y : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)}

theorem res_pull_form (u : X ⟶ Y) (hu : u ≫ p = q) {a : ℕ} (g₀ : Γ(Y, ⊤)) (g : Fin a → Γ(Y, ⊤)) :
    formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (gForm p g₀ g)) =
      gForm q (uS u g₀) fun k => uS u (g k) := by
  have e1 : formPull hu ⊤ a (gForm p g₀ g) = CrystallineSemistableComparison.Onto.form K (A := Sec q (u ⁻¹ᵁ ⊤)) (appSec p q u ⊤ g₀)
      fun k => appSec p q u ⊤ (g k) := mOm_form (semiHom_appSec hu ⊤) g₀ g
  rw [e1]
  exact mOm_form (SemiHom.of_algHom (Sec.res q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp))) _ _

end Main

theorem pull_nat : ∀ {K : Type} [CommRing K] {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K))
    (u : X ⟶ Y) (hu : u ≫ p = q) (a : ℕ) (e : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (e' : CrystallineSemistableComparison.HT.Hdg p a a ≃ₗ[K] OmU p ⊤ a),
    CrystallineSemistableComparison.Om.L2.IsOmT q a e → CrystallineSemistableComparison.Om.L2.IsOmT p a e' → ∀ x : CrystallineSemistableComparison.HT.Hdg p a a,
      e (CrystallineSemistableComparison.HT.pullH u hu a a x) = formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (e' x)) := by
  intro K _ X Y q p u hu a e e' he he' x
  have key : ∀ ω : OmU p ⊤ a, e (pullH u hu a a (e'.symm ω)) =
      formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a ω) := by
    intro ω
    have hω : ω ∈ Submodule.span K {ω : ⋀[Sec p ⊤]^a Ω[Sec p ⊤⁄K] | ∃ (g₀ : Sec p ⊤) (g : Fin a → Sec p ⊤),
        ω = CrystallineSemistableComparison.Onto.form K g₀ g} := by
      rw [span_form]; trivial
    induction hω using Submodule.span_induction with
    | mem ω hω =>
      obtain ⟨g₀, g, rfl⟩ := hω
      have h1 := he' g₀ g (outL p)
      have h2 := he (uS u g₀) (fun k => uS u (g k)) (outL q)
      have h3 := rep_pull u hu (fun s => form_pull u hu g₀ g s) h1
      have h4 : pullH u hu a a (e'.symm (gForm p g₀ g)) = e.symm (gForm q (uS u g₀) fun k => uS u (g k)) :=
        rep_unique h3 h2
      refine Eq.trans ?_ (res_pull_form u hu g₀ g).symm
      change e (pullH u hu a a (e'.symm (gForm p g₀ g))) = _
      rw [h4, LinearEquiv.apply_symm_apply]
    | zero => simp
    | add x y _ _ hx hy => simp only [map_add (f := _), hx, hy]
    | smul r x _ hx =>
      simp only [map_smul, hx]
  simpa using key (e' x)

end GlobalTheory.CompanionTheory.OmNatT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormPullbackCompat =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.AsmOnto =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.AsmOnto", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InstFintypeHodgeBidegree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

namespace CrystallineSemistableComparison.Om.L2

theorem asm_of
    (hEx : ∀ (K : Type) [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a : ℕ),
    ∃ e : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a, CrystallineSemistableComparison.Om.L2.IsOmT q a e)
    (hNat : ∀ {K : Type} [CommRing K] {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K))
    (u : X ⟶ Y) (hu : u ≫ p = q) (a : ℕ) (e : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (e' : CrystallineSemistableComparison.HT.Hdg p a a ≃ₗ[K] OmU p ⊤ a),
    CrystallineSemistableComparison.Om.L2.IsOmT q a e → CrystallineSemistableComparison.Om.L2.IsOmT p a e' → ∀ x : CrystallineSemistableComparison.HT.Hdg p a a,
      e (CrystallineSemistableComparison.HT.pullH u hu a a x) = formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (e' x)))
    (hCup : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (a b c : ℕ) (h : a + b = c)
    (eA : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (eB : CrystallineSemistableComparison.HT.Hdg q b b ≃ₗ[K] OmU q ⊤ b) (eC : CrystallineSemistableComparison.HT.Hdg q c c ≃ₗ[K] OmU q ⊤ c),
    CrystallineSemistableComparison.Om.L2.IsOmT q a eA → CrystallineSemistableComparison.Om.L2.IsOmT q b eB → CrystallineSemistableComparison.Om.L2.IsOmT q c eC → ∀ x y,
      eC (CrystallineSemistableComparison.HT.cupH q h h x y) = wedgeOm K (Sec q ⊤) h (eA x) (eB y))
    (hOne : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (e : CrystallineSemistableComparison.HT.Hdg q 0 0 ≃ₗ[K] OmU q ⊤ 0),
    CrystallineSemistableComparison.Om.L2.IsOmT q 0 e → e (CrystallineSemistableComparison.HT.oneH q) = oneOm K (Sec q ⊤)) :
    ∀ (K : Type) [Field K] [CharZero K],
    ∃ (e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a : ℕ),
      HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (ε : ℕ → ℕ → ℤ), (∀ a b, ε a b = 1 ∨ ε a b = -1) ∧
    (∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q]
      [IsAffine Y] [Smooth p] (u : X ⟶ Y) (hu : u ≫ p = q) (a : ℕ) (x : HT.Hdg p a a),
      e q a (HT.pullH u hu a a x) = formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (e p a x))) ∧
    (∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a b c : ℕ) (h : a + b = c)
      (x : HT.Hdg q a a) (y : HT.Hdg q b b),
      e q c (HT.cupH q h h x y) = ε a b • wedgeOm K (Sec q ⊤) h (e q a x) (e q b y)) ∧
    ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q], e q 0 (HT.oneH q) = oneOm K (Sec q ⊤) := by
  intro K _ _
  refine ⟨fun q _ _ a => Classical.choose (hEx K q a), fun _ _ => 1, fun _ _ => Or.inl rfl, ?_, ?_, ?_⟩
  · intro X Y q p _ _ _ _ u hu a x
    exact hNat q p u hu a _ _ (Classical.choose_spec (hEx K q a)) (Classical.choose_spec (hEx K p a)) x
  · intro X q _ _ a b c h x y
    simp only [one_smul]
    exact hCup q a b c h _ _ _ (Classical.choose_spec (hEx K q a)) (Classical.choose_spec (hEx K q b))
      (Classical.choose_spec (hEx K q c)) x y
  · intro X q _ _
    exact hOne q _ (Classical.choose_spec (hEx K q 0))

theorem asm_onto (hA : CrystallineSemistableComparison.Onto.AffOm) (hN : CrystallineSemistableComparison.Onto.OmNat)
    (hTop : ∀ {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (a : ℕ),
    (∃ e : CrystallineSemistableComparison.Onto.Om K (CrystallineSemistableComparison.Onto.Sec q ⊤) a →ₗ[K] CrystallineSemistableComparison.Onto.HV q ⊤ a a, CrystallineSemistableComparison.Onto.IsOm q ⊤ a e ∧ Function.Bijective e) →
    ∃ e' : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a, CrystallineSemistableComparison.Om.L2.IsOmT q a e')
    (hGlue : CrystallineSemistableComparison.Onto.AffOm → CrystallineSemistableComparison.Onto.OmNat → ∀ (K : Type) [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    [IsAffine X] [Smooth q] (a : ℕ),
    ∃ e : CrystallineSemistableComparison.Onto.Om K (CrystallineSemistableComparison.Onto.Sec q ⊤) a →ₗ[K] CrystallineSemistableComparison.Onto.HV q ⊤ a a, CrystallineSemistableComparison.Onto.IsOm q ⊤ a e ∧ Function.Bijective e)
    (hNat : ∀ {K : Type} [CommRing K] {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K))
    (u : X ⟶ Y) (hu : u ≫ p = q) (a : ℕ) (e : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (e' : CrystallineSemistableComparison.HT.Hdg p a a ≃ₗ[K] OmU p ⊤ a),
    CrystallineSemistableComparison.Om.L2.IsOmT q a e → CrystallineSemistableComparison.Om.L2.IsOmT p a e' → ∀ x : CrystallineSemistableComparison.HT.Hdg p a a,
      e (CrystallineSemistableComparison.HT.pullH u hu a a x) = formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (e' x)))
    (hCup : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (a b c : ℕ) (h : a + b = c)
    (eA : CrystallineSemistableComparison.HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (eB : CrystallineSemistableComparison.HT.Hdg q b b ≃ₗ[K] OmU q ⊤ b) (eC : CrystallineSemistableComparison.HT.Hdg q c c ≃ₗ[K] OmU q ⊤ c),
    CrystallineSemistableComparison.Om.L2.IsOmT q a eA → CrystallineSemistableComparison.Om.L2.IsOmT q b eB → CrystallineSemistableComparison.Om.L2.IsOmT q c eC → ∀ x y,
      eC (CrystallineSemistableComparison.HT.cupH q h h x y) = wedgeOm K (Sec q ⊤) h (eA x) (eB y))
    (hOne : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (e : CrystallineSemistableComparison.HT.Hdg q 0 0 ≃ₗ[K] OmU q ⊤ 0),
    CrystallineSemistableComparison.Om.L2.IsOmT q 0 e → e (CrystallineSemistableComparison.HT.oneH q) = oneOm K (Sec q ⊤)) :
    ∀ (K : Type) [Field K] [CharZero K],
    ∃ (e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a : ℕ),
      HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (ε : ℕ → ℕ → ℤ), (∀ a b, ε a b = 1 ∨ ε a b = -1) ∧
    (∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q]
      [IsAffine Y] [Smooth p] (u : X ⟶ Y) (hu : u ≫ p = q) (a : ℕ) (x : HT.Hdg p a a),
      e q a (HT.pullH u hu a a x) = formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (e p a x))) ∧
    (∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a b c : ℕ) (h : a + b = c)
      (x : HT.Hdg q a a) (y : HT.Hdg q b b),
      e q c (HT.cupH q h h x y) = ε a b • wedgeOm K (Sec q ⊤) h (e q a x) (e q b y)) ∧
    ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q], e q 0 (HT.oneH q) = oneOm K (Sec q ⊤) := by
  exact asm_of (fun K _ _ _ q _ _ a => hTop q a (hGlue hA hN K q a)) hNat hCup hOne

end CrystallineSemistableComparison.Om.L2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.AsmOnto =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HdgAffIsoOnto =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HdgAffIsoOnto", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InstFintypeHodgeBidegree\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CosieveBot\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineSmoothFormsBijective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.IsFormT\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormCupWedge\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormIsoOfBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HodgeFormPullbackCompat\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.AsmOnto\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

namespace CrystallineSemistableComparison.Om.L2

theorem hdg_aff_iso_onto (hA : CrystallineSemistableComparison.Onto.AffOm) (hN : CrystallineSemistableComparison.Onto.OmNat) :
    ∀ (K : Type) [Field K] [CharZero K],
    ∃ (e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a : ℕ),
      HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (ε : ℕ → ℕ → ℤ), (∀ a b, ε a b = 1 ∨ ε a b = -1) ∧
    (∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q]
      [IsAffine Y] [Smooth p] (u : X ⟶ Y) (hu : u ≫ p = q) (a : ℕ) (x : HT.Hdg p a a),
      e q a (HT.pullH u hu a a x) = formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (e p a x))) ∧
    (∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a b c : ℕ) (h : a + b = c)
      (x : HT.Hdg q a a) (y : HT.Hdg q b b),
      e q c (HT.cupH q h h x y) = ε a b • wedgeOm K (Sec q ⊤) h (e q a x) (e q b y)) ∧
    ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q], e q 0 (HT.oneH q) = oneOm K (Sec q ⊤) :=
  asm_onto hA hN _root_.GlobalTheory.CompanionTheory.HodgeFormTop.main _root_.GlobalTheory.CompanionTheory.OmGlue.om_top _root_.GlobalTheory.CompanionTheory.OmNatT.pull_nat _root_.GlobalTheory.CompanionTheory.OmCup.main _root_.GlobalTheory.CompanionTheory.HodgeFormUnit.e_oneH

end CrystallineSemistableComparison.Om.L2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HdgAffIsoOnto =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HodgeAffineIsoType =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HodgeAffineIsoType", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.InstFintypeHodgeBidegree\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsDlogFirstChernClass\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.FormUniq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineFormsOfFormUniqueness\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HdgAffIsoOnto\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.FormUniq\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.RelativeLiftCosieves.OmNatB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh

namespace CrystallineSemistableComparison.Om.L2

theorem hodge_affine_iso_sign :
    ∀ (K : Type) [Field K] [CharZero K],
    ∃ (e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a : ℕ),
      HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a) (ε : ℕ → ℕ → ℤ), (∀ a b, ε a b = 1 ∨ ε a b = -1) ∧
    (∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q]
      [IsAffine Y] [Smooth p] (u : X ⟶ Y) (hu : u ≫ p = q) (a : ℕ) (x : HT.Hdg p a a),
      e q a (HT.pullH u hu a a x) = formRes q (show (⊤ : X.Opens) ≤ u ⁻¹ᵁ ⊤ by simp) a (formPull hu ⊤ a (e p a x))) ∧
    (∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a b c : ℕ) (h : a + b = c)
      (x : HT.Hdg q a a) (y : HT.Hdg q b b),
      e q c (HT.cupH q h h x y) = ε a b • wedgeOm K (Sec q ⊤) h (e q a x) (e q b y)) ∧
    ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q], e q 0 (HT.oneH q) = oneOm K (Sec q ⊤) :=
  hdg_aff_iso_onto (_root_.GlobalTheory.CompanionTheory.AffOmP.affOm CrystallineSemistableComparison.Onto.formUniq_pf) CrystallineSemistableComparison.Onto.omNatB_pf

end CrystallineSemistableComparison.Om.L2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HodgeAffineIsoType =====

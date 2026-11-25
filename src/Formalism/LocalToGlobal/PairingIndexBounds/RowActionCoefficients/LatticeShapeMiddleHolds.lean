module

public import Formalism.SharpRestriction.GrowthBounds.LatticeSystems
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.GShiftRowGenMonomial
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LowestInvariantLeDelta
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.XFacts
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideEdge
public import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HighestVectorFullHolds
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TransposedFrameImageBlockwiseHolds
public import Formalism.LocalToGlobal.GroupLattices.FockModels.SwRowGenMonomial
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.EvalIdFrameRowAct
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.GeXZero
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HinjX
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ShapeEvenHolds
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.WeylComplementInDetCoeffSpan
public import Formalism.GradedWeylDivisibility.FinalD
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LClosedeqLemmas
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FockRSmulLeft
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.CoefficientProductHolds
public import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.InvarianceIffAdditiveMapsExist
import Mathlib.Tactic.Linter.Style
import Formalism.GradedWeylDivisibility.FinalC
import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.InterpolationHolds
import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.YVMapRowAct
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial
import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSp
import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ProdItePow

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.Bridge, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.BranchingSourceIdentity, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FrameEdgeIdentityHolds, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SubDRenameHvE, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SumIccEqRange, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.XShape, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.NuTAntitone, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.PolyKTorsionFree, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TgtBidet, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.AdmissibleGeneralLatticeTuple, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.FinalOf, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.LatticeShapeMiddleHolds

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.Bridge =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.Bridge", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.LatticeSystems\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.GShiftRowGenMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LowestInvariantLeDelta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.G.LatticeSystems Formalism.MainNotions.FormalGroupSystem.Pf

variable {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  (P : Places p O Kf)

abbrev GlobalTheory : Type := Σ v : Fin P.nV, Fin (P.n' v)

def emP (b : GlobalTheory P) (v : Fin (P.m + 1) × Fin (P.m + 1)) :
    (Σ v : Fin P.nV, Fin (P.n' v) × (Fin (P.m + 1) × Fin (P.m + 1))) := ⟨b.1, (b.2, v)⟩

def gam (g : ∀ v, Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) (P.Qq v)) (b : GlobalTheory P) : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) Kf :=
  la_tw (P.ι b.1) (P.σ b.1) b.2.val (g b.1)

def nuB (b : GlobalTheory P) : Fin (P.m + 1) → ℕ := nuOf (lamAt (P.lam0 b.1) b.2)

def eB (b : GlobalTheory P) : ℤ := lamAt (P.lam0 b.1) b.2 (Fin.last P.m)

def sB (g : ∀ v, Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) (P.Qq v)) : Kf := ∏ b : GlobalTheory P, (gam P g b).det ^ (-(eB P b))

theorem prod_blocks (c : GlobalTheory P → Kf) (F : GlobalTheory P → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) Kf) :
    ∏ v, P.vEmb v (∏ s, blockEmb Kf s (c ⟨v, s⟩ • F ⟨v, s⟩)) = (∏ b, c b) • ∏ b, rename (emP P b) (F b) := by
  have e1 : ∀ (b : GlobalTheory P) (G : MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) Kf),
      P.vEmb b.1 (blockEmb Kf b.2 G) = rename (emP P b) G := by
    intro b G
    simp only [Places.vEmb, blockEmb]
    rw [rename_rename]
    rfl
  rw [show (∏ b, c b) • ∏ b, rename (emP P b) (F b) = ∏ b : GlobalTheory P, c b • rename (emP P b) (F b) by
    simp only [Algebra.smul_def, Finset.prod_mul_distrib, map_prod]]
  rw [Fintype.prod_sigma]
  refine Finset.prod_congr rfl fun v _ => ?_
  rw [map_prod]
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [map_smul, map_smul, e1 ⟨v, s⟩]

theorem delta_zero_eq_twisted_delta (hinj : Function.Injective (algebraMap O Kf)) (v : Fin P.nV) (s : Fin (P.n' v))
    (g : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) (P.Qq v)) (hg : IsUnit g.det) :
    Dl0 O P.m (lamAt (P.lam0 v) s) (extO O (P.ι v) (P.σ v) s.val (colSpan (P.W v) g)) =
      deltaLTw O Kf P.m (lamAt (P.lam0 v) s) (la_tw (P.ι v) (P.σ v) s.val g) := by
  have hd : Antitone (lamAt (P.lam0 v) s) := by
    unfold lamAt
    split_ifs
    · exact P.dom v s
    · intro i j hij
      exact neg_le_neg (P.dom v s (Fin.rev_le_rev.2 hij))
  rw [la_extO (P.ι v) (P.σ v) (P.j v)
    (fun x => by obtain ⟨y, hy⟩ := (P.setting v).frob x; exact ⟨_, hy⟩) (P.setting v).ι_comp s.val g]
  have hg' := la_tw_det (P.ι v) (P.σ v) s.val g hg
  refine le_antisymm (lowest_invariant_le_delta _ _ hd _ hg') ?_
  unfold Dl0
  rw [if_pos hd]
  refine le_iInf₂ fun h hh => ?_
  exact dl_indep O Kf hinj _ _ _ h hg' hh.2

variable (g : ∀ v, Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) (P.Qq v)) (hg : ∀ v, IsUnit (g v).det)


include hg in
theorem htupW_le (hinj : Function.Injective (algebraMap O Kf)) (T : Submodule O P.Xsp)
    (hT : ∀ F : GlobalTheory P → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) Kf,
      (∀ b, F b ∈ deltaL O Kf (P.m + 1) (nuB P b) (gam P g b)) → sB P g • ∏ b, rename (emP P b) (F b) ∈ T) :
    P.HtupW (fun v => colSpan (P.W v) (g v)) ≤ T := by
  have key : ∀ S : Fin P.nV → Set P.Xsp,
      (∀ f : Fin P.nV → P.Xsp, (∀ v, f v ∈ S v) → ∏ v, f v ∈ T) →
      ∀ f : Fin P.nV → P.Xsp, (∀ v, f v ∈ Submodule.span O (S v)) → ∏ v, f v ∈ T := by
    intro S h f hf
    classical
    suffices H : ∀ A : Finset (Fin P.nV), ∀ f : Fin P.nV → P.Xsp,
        (∀ i ∈ A, f i ∈ Submodule.span O (S i)) → (∀ i ∉ A, f i ∈ S i) → ∏ i, f i ∈ T from
      H Finset.univ f (fun i _ => hf i) (fun i hi => absurd (Finset.mem_univ i) hi)
    intro A
    refine Finset.induction_on A ?_ ?_
    · intro f _ h2
      exact h f (fun i => h2 i (by simp))
    · intro a A ha ih f h1 h2
      have hR : ∀ x ∈ Submodule.span O (S a), x * ∏ j ∈ Finset.univ \ {a}, f j ∈ T := by
        intro x hx
        induction hx using Submodule.span_induction with
        | mem y hy =>
          have h3 := ih (Function.update f a y) (fun i hi => ?_) (fun i hi => ?_)
          · rwa [Finset.prod_update_of_mem (Finset.mem_univ a)] at h3
          · have hia : i ≠ a := by rintro rfl; exact ha hi
            simp only [Function.update_apply, hia, if_false]
            exact h1 i (Finset.mem_insert_of_mem hi)
          · by_cases hia : i = a
            · subst hia
              simp only [Function.update_apply, if_true]
              exact hy
            · simp only [Function.update_apply, hia, if_false]
              exact h2 i (by simp [hia, hi])
        | zero => rw [zero_mul]; exact T.zero_mem
        | add x y _ _ hx hy => rw [add_mul]; exact T.add_mem hx hy
        | smul c x _ hx => rw [smul_mul_assoc]; exact T.smul_mem c hx
      have h4 := Finset.prod_update_of_mem (Finset.mem_univ a) f (f a)
      rw [Function.update_eq_self] at h4
      rw [h4]
      exact hR _ (h1 a (Finset.mem_insert_self a A))
  unfold Places.HtupW Places.tenV
  rw [Submodule.span_le]
  rintro X ⟨F, hF, rfl⟩
  have hF' : ∀ v, P.vEmb v (F v) ∈ Submodule.span O
      (((P.vEmb v).toLinearMap.restrictScalars O) '' {Q | ∃ G : Fin (P.n' v) → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) Kf,
        (∀ s, G s ∈ deltaLTw O Kf P.m (lamAt (P.lam0 v) s) (la_tw (P.ι v) (P.σ v) s.val (g v))) ∧
          Q = ∏ s, blockEmb Kf s (G s)}) := by
    intro v
    rw [Submodule.span_image]
    refine Submodule.mem_map_of_mem ?_
    have h := hF v
    unfold HtenW tensorLat at h
    simp only [delta_zero_eq_twisted_delta P hinj v _ (g v) (hg v)] at h
    exact h
  refine key _ ?_ (fun v => P.vEmb v (F v)) hF'
  intro f hf
  choose Q hQ hfQ using hf
  choose G hG hQG using hQ
  have hG' : ∀ v s, ∃ H, H ∈ deltaL O Kf (P.m + 1) (nuB P ⟨v, s⟩) (gam P g ⟨v, s⟩) ∧
      (gam P g ⟨v, s⟩).det ^ (-(eB P ⟨v, s⟩)) • H = G v s := fun v s => Submodule.mem_map.1 (hG v s)
  choose H hH hHG using hG'
  have e : ∏ v, f v = sB P g • ∏ b : GlobalTheory P, rename (emP P b) (H b.1 b.2) := by
    rw [show sB P g • ∏ b : GlobalTheory P, rename (emP P b) (H b.1 b.2) = _ from
      (prod_blocks P (fun b => (gam P g b).det ^ (-(eB P b))) (fun b => H b.1 b.2)).symm]
    refine Finset.prod_congr rfl fun v _ => ?_
    rw [← hfQ v, hQG v]
    show P.vEmb v _ = _
    congr 1
    refine Finset.prod_congr rfl fun s _ => ?_
    rw [← hHG v s]
  rw [e]
  exact hT (fun b => H b.1 b.2) (fun b => hH b.1 b.2)


include hg in
theorem mem_htupW (hinj : Function.Injective (algebraMap O Kf)) (F : GlobalTheory P → MvPolynomial (Fin (P.m + 1) × Fin (P.m + 1)) Kf)
    (hF : ∀ b, F b ∈ deltaL O Kf (P.m + 1) (nuB P b) (gam P g b)) :
    sB P g • ∏ b, rename (emP P b) (F b) ∈ P.HtupW (fun v => colSpan (P.W v) (g v)) := by
  rw [show sB P g • ∏ b, rename (emP P b) (F b) = _ from
    (prod_blocks P (fun b => (gam P g b).det ^ (-(eB P b))) F).symm]
  unfold Places.HtupW Places.tenV
  apply Submodule.subset_span
  refine ⟨fun v => ∏ s, blockEmb Kf s ((gam P g ⟨v, s⟩).det ^ (-(eB P ⟨v, s⟩)) • F ⟨v, s⟩), fun v => ?_, rfl⟩
  unfold HtenW tensorLat
  apply Submodule.subset_span
  refine ⟨fun s => (gam P g ⟨v, s⟩).det ^ (-(eB P ⟨v, s⟩)) • F ⟨v, s⟩, fun s => ?_, rfl⟩
  show _ ∈ Dl0 O P.m (lamAt (P.lam0 v) s) (extO O (P.ι v) (P.σ v) s.val (colSpan (P.W v) (g v)))
  rw [delta_zero_eq_twisted_delta P hinj v s (g v) (hg v)]
  exact Submodule.mem_map.2 ⟨F ⟨v, s⟩, hF ⟨v, s⟩, rfl⟩

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.Bridge =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.BranchingSourceIdentity =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.BranchingSourceIdentity", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.Bridge\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.XFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend Formalism.MainNotions.G.LatticeSystems

section Cast

variable {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  (P : Places p O Kf) (N : ℕ) (hm : P.m + 1 = N)

def emC (b : GlobalTheory P) (v : Fin N × Fin N) : (Σ v : Fin P.nV, Fin (P.n' v) × (Fin (P.m + 1) × Fin (P.m + 1))) :=
  emP P b (Fin.cast hm.symm v.1, Fin.cast hm.symm v.2)

def gamC (g : ∀ v, Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) (P.Qq v)) (b : GlobalTheory P) : Matrix (Fin N) (Fin N) Kf :=
  (gam P g b).submatrix (Fin.cast hm.symm) (Fin.cast hm.symm)

def nuC (b : GlobalTheory P) : Fin N → ℕ := fun t => nuB P b (Fin.cast hm.symm t)

variable (g : ∀ v, Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) (P.Qq v)) (hg : ∀ v, IsUnit (g v).det)

include hg in
theorem htupW_leC (hinj : Function.Injective (algebraMap O Kf)) (T : Submodule O P.Xsp)
    (hT : ∀ F : GlobalTheory P → MvPolynomial (Fin N × Fin N) Kf,
      (∀ b, F b ∈ deltaL O Kf N (nuC P N hm b) (gamC P N hm g b)) →
        (∏ b : GlobalTheory P, (gamC P N hm g b).det ^ (-(eB P b))) • ∏ b, rename (emC P N hm b) (F b) ∈ T) :
    P.HtupW (fun v => colSpan (P.W v) (g v)) ≤ T := by
  subst hm
  exact htupW_le P g hg hinj T hT

include hg in
theorem mem_htupWC (hinj : Function.Injective (algebraMap O Kf)) (F : GlobalTheory P → MvPolynomial (Fin N × Fin N) Kf)
    (hF : ∀ b, F b ∈ deltaL O Kf N (nuC P N hm b) (gamC P N hm g b)) :
    (∏ b : GlobalTheory P, (gamC P N hm g b).det ^ (-(eB P b))) • ∏ b, rename (emC P N hm b) (F b) ∈
      P.HtupW (fun v => colSpan (P.W v) (g v)) := by
  subst hm
  exact mem_htupW P g hg hinj F hF

end Cast

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

theorem branching_source_identity : XBrS := by
  intro p _ X hinj j L g hg hL T hT
  cases j with
  | zero =>
    have hLe : L = fun v => colSpan (X.G.P.W v) (g v) := funext hL
    rw [hLe]
    exact htupW_leC X.G.P _ (rankJ X 0) g hg hinj T hT
  | succ j =>
    have hLe : L = fun v => colSpan (X.G.P.W v) (g v) := funext hL
    rw [hLe]
    exact htupW_leC (X.Fl.Pj (j + 1)) _ (rankJ X (j + 1)) g hg hinj T hT

theorem branching_target_identity : XBrT := by
  intro p _ X hinj j L g hg hL F hF
  cases j with
  | zero =>
    have hLe : L = fun v => colSpan (X.G.P.W v) (g v) := funext hL
    rw [hLe]
    exact mem_htupWC X.G.P _ (rankJ X 0) g hg hinj F hF
  | succ j =>
    have hLe : L = fun v => colSpan (X.G.P.W v) (g v) := funext hL
    rw [hLe]
    exact mem_htupWC (X.Fl.Pj (j + 1)) _ (rankJ X (j + 1)) g hg hinj F hF

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.BranchingSourceIdentity =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FrameEdgeIdentityHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FrameEdgeIdentityHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideEdge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] (X : Sys p)

def dgQ (K : Type) [Field K] (p k r : ℕ) : Matrix (Fin k) (Fin k) K := Matrix.diagonal fun c => if c.val < r then (p : K)⁻¹ else 1

theorem dgQ_det_ne (K : Type) [Field K] (p k r : ℕ) (hp : (p : K) ≠ 0) : (dgQ K p k r).det ≠ 0 := by
  unfold dgQ
  rw [Matrix.det_diagonal]
  refine Finset.prod_ne_zero_iff.2 fun c _ => ?_
  split_ifs
  · exact inv_ne_zero hp
  · exact one_ne_zero

theorem mF_dgQ (j : ℕ) (b : BX X) (i0 : X.Pl → ℕ) :
    mF X (j + 1) b (dgQ (X.G.P.Qq b.1) p _ (i0 b.1)) = DgX X X.G.Kf j i0 b.1 := by
  unfold mF dgQ DgX
  ext a c
  simp only [Matrix.submatrix_apply, Matrix.map_apply, Matrix.diagonal_apply]
  by_cases hac : a = c
  · subst hac
    rw [if_pos rfl, if_pos rfl]
    have : ((finCongr (rank_eq X (j + 1)).symm) a).val = a.val := rfl
    rw [this]
    split_ifs
    · rw [map_inv₀, map_inv₀, map_natCast, map_natCast]
    · rw [map_one, map_one]
  · rw [if_neg hac, if_neg (fun h => hac ((finCongr (rank_eq X (j + 1)).symm).injective h)), map_zero, map_zero]

theorem frame_edge_identity_holds : XEdge := by
  intro p _ X j L' L'' i0 h2 h4
  have key : ∀ v : X.Pl, ∃ g' h' : GL (Fin ((X.Pj (j + 1)).m + 1)) (X.G.P.Qq v),
      X.latAt v (j + 1) L'' = colSpan (X.G.P.W v) (g' : Matrix _ _ (X.G.P.Qq v)) ∧
      X.latAt v (j + 1) L' = colSpan (X.G.P.W v) (h' : Matrix _ _ (X.G.P.Qq v)) ∧
      (h' : Matrix (Fin ((X.Pj (j + 1)).m + 1)) (Fin ((X.Pj (j + 1)).m + 1)) (X.G.P.Qq v)) =
        (g' : Matrix (Fin ((X.Pj (j + 1)).m + 1)) (Fin ((X.Pj (j + 1)).m + 1)) (X.G.P.Qq v)) *
          dgQ (X.G.P.Qq v) p ((X.Pj (j + 1)).m + 1) (i0 v) := by
    intro v
    have hS := X.G.P.setting v
    have := hS.frac_alt
    have hp0 : (p : X.G.P.Qq v) ≠ 0 := pQ_ne hS.p_unif
    rcases h4 v with ⟨h0, hL⟩ | ⟨_, he⟩
    · obtain ⟨g, hg, hgL⟩ := h2 v
      have h0' : i0 v = 0 := h0
      refine ⟨Matrix.nonsingInvUnit g hg, Matrix.nonsingInvUnit g hg, ?_, hgL, ?_⟩
      · show L'' v = _
        rw [hL]; exact hgL
      · have : dgQ (X.G.P.Qq v) p ((X.Pj (j + 1)).m + 1) (i0 v) = 1 := by
          unfold dgQ
          rw [h0']
          simp
        rw [this, mul_one]
    · obtain ⟨g, hg, hsrc, htgt⟩ := Formalism.L2.G.Model.edgeBasis hS _ _ _ he
      have hd : IsUnit (g * dgQ (X.G.P.Qq v) p ((X.Pj (j + 1)).m + 1) (i0 v)).det := by
        rw [Matrix.det_mul]
        exact hg.mul (isUnit_iff_ne_zero.2 (dgQ_det_ne _ _ _ _ hp0))
      exact ⟨Matrix.nonsingInvUnit g hg, Matrix.nonsingInvUnit _ hd, hsrc, htgt, rfl⟩
  choose g' h' h1 h2' h3 using key
  refine ⟨g', h', h1, h2', fun b => ?_⟩
  rw [h3 b.1, ← mF_dgQ X j b i0]
  unfold mF
  rw [Matrix.submatrix_mul_equiv]
  congr 1
  exact Matrix.map_mul (f := (X.G.P.ι b.1).comp (X.G.P.σ b.1 ^ b.2.val : X.G.P.Qq b.1 ≃+* X.G.P.Qq b.1).toRingHom)

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FrameEdgeIdentityHolds =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SubDRenameHvE =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SubDRenameHvE", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.GradedWeylDivisibility.FinalC\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HighestVectorFullHolds\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.InterpolationHolds\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TransposedFrameImageBlockwiseHolds\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.YVMapRowAct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.SwRowGenMonomial\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend Formalism.L2.G.Model.TS

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

namespace XAAux

section Rule

variable {p : ℕ} [Fact p.Prime] (X : Sys p) (Kc : Type) [Field Kc] [Algebra X.G.Kf Kc] (j : ℕ)

theorem NJ_pos : 0 < NJ X j := by
  unfold NJ NN
  omega

theorem hvE_congr {A : Type*} [CommRing A] {n : ℕ} (x : Fin n → ℕ → A) (y : Matrix (Fin n) (Fin n) A) (c : ℕ) (h h' : Fin c → ℕ)
    (hh : ∀ k, h k ≤ n) (hh' : ∀ k, h' k ≤ n) (e : h = h') : hvE x y c h hh = hvE x y c h' hh' := by
  subst e
  rfl

theorem rename_yV (b : BX X) :
    (yV X.G.Kf (NJ X j)).map ((rename (emX X j b) :
      MvPolynomial (Fin (NJ X j) × Fin (NJ X j)) X.G.Kf →ₐ[X.G.Kf] (X.Pj j).Xsp) :
      MvPolynomial (Fin (NJ X j) × Fin (NJ X j)) X.G.Kf →+* (X.Pj j).Xsp) = yL X j b.1 b.2 := by
  refine Matrix.ext fun a t => ?_
  simp only [Matrix.map_apply, yV, RingHom.coe_coe, rename_X]
  rfl

theorem rename_hvO (b : BX X) (x : Fin (NJ X j) → ℕ → X.G.Kf) (c : ℕ) (h : Fin c → ℕ) :
    rename (emX X j b) (hvO (fun a i => C (x a i)) (yV X.G.Kf (NJ X j)) c h) = hvOdd X j b.1 b.2 x c h := by
  rw [← RingHom.coe_coe (rename (emX X j b)), map_hvO, rename_yV]
  unfold hvO hvOdd
  refine Finset.prod_congr rfl fun k _ => ?_
  congr 2
  funext a i
  rw [RingHom.coe_coe, rename_C]

theorem subD_rename_hvE (b : BX X) (ho : ¬ IsOddPos b.2) (x : Fin (NJ X j) → ℕ → X.G.Kf) (c : ℕ) (h : Fin c → ℕ)
    (hh : ∀ k, h k ≤ NJ X j) :
    subD X Kc j (rename (emX X j b) (hvE (fun a i => C (x a i)) (yV X.G.Kf (NJ X j)) c h hh)) =
      hvE (fun a i => algebraMap X.G.Kf (DA X Kc j) (x a i)) (dyMat X Kc j b.1 b.2) c h hh := by
  rw [← RingHom.coe_coe (rename (emX X j b)), map_hvE, rename_yV, ← RingHom.coe_coe (subD X Kc j), map_hvE]
  congr 1
  · funext a i
    rw [RingHom.coe_coe, RingHom.coe_coe, rename_C]
    exact (subD X Kc j).commutes (x a i)
  · have := subD_yL X Kc j b.1 b.2
    unfold ySub at this
    rw [if_neg ho] at this
    exact this

theorem hvE_dy (b : BX X) (x : Fin (NJ X j) → ℕ → X.G.Kf) (c : ℕ) (h : Fin c → ℕ) (hh : ∀ k, h k ≤ NJ X j)
    (hh' : ∀ k, h k ≤ NJ X (j + 1)) :
    hvE (fun a i => algebraMap X.G.Kf (DA X Kc j) (x a i)) (dyMat X Kc j b.1 b.2) c h hh =
      hvE (xd X Kc j b.1 b.2 x) (yMat X Kc j b.1 b.2) c h hh' := by
  unfold hvE
  refine Finset.prod_congr rfl fun k _ => ?_
  congr 1
  refine Matrix.ext fun i t => ?_
  rw [Matrix.of_apply, Matrix.of_apply]
  exact pair_dy X Kc j b.1 b.2 x i.val (Fin.castLE (hh k) t)

end Rule

end XAAux

theorem xA_of (hS : XShape) : XA := by
  intro p _ X Kc _ _ j x
  have key := polDel_hv X Kc j (fun v s => x ⟨v, s⟩) (fun v s => cX X j ⟨v, s⟩)
    (fun v s k => colH (muX X j (NJ X j) ⟨v, s⟩) k.val)
    (fun v s => rename (emX X j ⟨v, s⟩) (srcN X j ⟨v, s⟩ (x ⟨v, s⟩)))
    (fun v s _ k => colH_le _ _) (fun v s _ => cMu_toNat X v j s)
    (fun v s _ => by
      rw [← sum_colHt X v j s]
      congr 1
      exact Finset.sum_congr rfl fun k _ => (hS p X j ⟨v, s⟩).2.2.2.2.1 k.val)
  rw [Fintype.prod_sigma, Fintype.prod_sigma]
  have h1 : (∏ v, ∏ s, rename (emX X j ⟨v, s⟩) (srcN X j ⟨v, s⟩ (x ⟨v, s⟩))) =
      ∏ v, ∏ s, if IsOddPos s then hvOdd X j v s (x ⟨v, s⟩) (cX X j ⟨v, s⟩) (fun k => colH (muX X j (NJ X j) ⟨v, s⟩) k.val)
        else rename (emX X j ⟨v, s⟩) (srcN X j ⟨v, s⟩ (x ⟨v, s⟩)) := by
    refine Finset.prod_congr rfl fun v _ => Finset.prod_congr rfl fun s _ => ?_
    split_ifs with ho
    · unfold srcN
      rw [if_pos ho]
      exact XAAux.rename_hvO X j ⟨v, s⟩ _ _ _
    · rfl
  rw [h1, key]
  refine Finset.prod_congr rfl fun v _ => Finset.prod_congr rfl fun s _ => ?_
  obtain ⟨-, -, hanti, hle, hc1, hc2, he1, he2, -, -⟩ := hS p X j ⟨v, s⟩
  unfold tgtD
  split_ifs with ho
  · unfold hvOdd' hvO
    refine Finset.prod_congr rfl fun k _ => ?_
    beta_reduce
    rw [hc1, hc2]
  · have hf := highest_vector_full_holds (DA X Kc j) (NJ X j) (muX X j (NJ X j) ⟨v, s⟩) (hanti _) (cX X j ⟨v, s⟩) (eX X j ⟨v, s⟩)
      (hle _) he1 he2 (XAAux.NJ_pos X j) (fun a i => algebraMap X.G.Kf (DA X Kc j) (x ⟨v, s⟩ a i)) (dyMat X Kc j v s)
    have hnu : nuS X j ⟨v, s⟩ = fun t => muX X j (NJ X j) ⟨v, s⟩ t - eX X j ⟨v, s⟩ := if_neg ho
    have hdet : (Matrix.of fun a i : Fin (NJ X j) => algebraMap X.G.Kf (DA X Kc j) (x ⟨v, s⟩ a i.val)).det =
        algebraMap X.G.Kf (DA X Kc j) (Matrix.of fun a i : Fin (NJ X j) => x ⟨v, s⟩ a i.val).det := by
      rw [RingHom.map_det]
      rfl
    have h2 : hvE (xd X Kc j v s (x ⟨v, s⟩)) (yMat X Kc j v s) (cX X j ⟨v, s⟩)
        (fun k => colH (muX X j (NJ X (j + 1)) ⟨v, s⟩) k.val) (fun k => colH_le _ k.val) =
        hvE (fun a i => algebraMap X.G.Kf (DA X Kc j) (x ⟨v, s⟩ a i)) (dyMat X Kc j v s) (cX X j ⟨v, s⟩)
          (fun k => colH (muX X j (NJ X j) ⟨v, s⟩) k.val) (fun k => colH_le _ k.val) := by
      rw [XAAux.hvE_dy X Kc j ⟨v, s⟩ _ _ _ _ (fun k => (colH_le _ k.val).trans (NN_le X j))]
      exact XAAux.hvE_congr _ _ _ _ _ _ _ (funext fun k => by rw [hc1, hc2])
    show _ = hvE (xd X Kc j v s (x ⟨v, s⟩)) (yMat X Kc j v s) (cX X j ⟨v, s⟩)
        (fun k => colH (muX X j (NJ X (j + 1)) ⟨v, s⟩) k.val) (fun k => colH_le _ k.val)
    rw [h2, hf, hdet]
    unfold srcN
    rw [if_neg ho, map_mul, map_mul, rename_C, XAAux.subD_rename_hvE X Kc j ⟨v, s⟩ ho,
      show subD X Kc j (C ((Matrix.of fun a i : Fin (NJ X j) => x ⟨v, s⟩ a i.val).det ^ eX X j ⟨v, s⟩)) =
        algebraMap X.G.Kf (DA X Kc j) ((Matrix.of fun a i : Fin (NJ X j) => x ⟨v, s⟩ a i.val).det ^ eX X j ⟨v, s⟩) from
        (subD X Kc j).commutes _, map_pow, mul_pow,
      XAAux.hvE_congr _ _ _ (fun k => colH (nuS X j ⟨v, s⟩) k.val)
        (fun k => colH (fun t => muX X j (NJ X j) ⟨v, s⟩ t - eX X j ⟨v, s⟩) k.val) _ (fun k => colH_le _ k.val) (by rw [hnu])]
    show _ * _ * (dyMat X Kc j v s).det ^ eX X j ⟨v, s⟩ = _
    ring

namespace XAAux

section Span

variable {p : ℕ} [Fact p.Prime] (X : Sys p) (Kc : Type) [Field Kc] [Algebra X.G.Kf Kc] (j : ℕ)

theorem pairD_mem [Infinite Kc] (W : Submodule Kc (XspC (X.Pj (j + 1)) Kc)) (P : DA X Kc j)
    (h : ∀ d0 : X.ZA j → Kc, evD X Kc j d0 P ∈ W) (f : MvPowerSeries (X.ZA j) Kc) : pairD X Kc j P f ∈ W := by
  by_contra hn
  obtain ⟨l, hl, hW⟩ := Submodule.exists_le_ker_of_notMem hn
  refine hl ?_
  rw [pairing_series_linear_form_holds p X Kc j P f l 0 fun d0 => by rw [map_zero, LinearMap.mem_ker.1 (hW (h d0))]]
  simp

theorem tgtN_mem [CharZero Kc] (hS : XShape) (b : BX X) (z : Fin (NJ X (j + 1)) → ℕ → Kc) :
    tgtN X Kc j b z ∈ dualWeyl Kc (NJ X (j + 1)) (NJ X (j + 1)) (nuT X j b) := by
  obtain ⟨-, -, hanti, hle, -⟩ := hS p X j b
  unfold tgtN nuT
  split_ifs with ho
  · exact highest_vector_mem_odd Kc _ _ (hanti _) _ (hle _) z
  · exact highest_vector_mem_even Kc _ _ (hanti _) _ (hle _) z

end Span

end XAAux

theorem xSpanN_of (hS : XShape) : XSpanN := by
  intro p _ X Kc _ _ _ j x f
  classical
  rw [delF_apply, xA_of hS p X Kc j x]
  refine XAAux.pairD_mem X Kc j _ _ (fun d0 => ?_) f
  rw [map_prod]
  simp only [frame_change_compatibility_holds p X Kc j]
  refine prod_span (R := Kc) (fun b : BX X => {y : XspC (X.Pj (j + 1)) Kc |
      ∃ (K : ℕ) (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ NJ X (j + 1)) (I : ∀ k, Fin (sz k) → Fin (NJ X (j + 1))),
        shapeDeg sz = nuT X j b ∧ y = rename (emX X (j + 1) b) (bideterminant Kc sz hsz I)}) _ (fun g hg => ?_) _ (fun b => ?_)
  · choose K sz hsz I hsh hgb using hg
    refine Submodule.subset_span ⟨fun b => bideterminant X.G.Kf (sz b) (hsz b) (I b), fun b => ?_, ?_⟩
    · rw [← hsh b]
      exact bidetMem X.G.Kf _ _ _ _ _ _
    · rw [map_prod]
      refine Finset.prod_congr rfl fun b _ => ?_
      rw [hgb b, map_rename, _root_.Formalism.L2.G.Model.sw_bidet_map]
  · have h1 := XAAux.tgtN_mem X Kc j hS b
      (mulC (dM X Kc j b d0).transpose fun a i => algebraMap X.G.Kf Kc (x b a i))
    rw [standardMonomialSpanDomain Kc] at h1
    have h2 := Submodule.mem_map_of_mem (f := (rename (emX X (j + 1) b) :
      MvPolynomial (Fin (NJ X (j + 1)) × Fin (NJ X (j + 1))) Kc →ₐ[Kc] XspC (X.Pj (j + 1)) Kc).toLinearMap) h1
    rw [Submodule.map_span] at h2
    refine Submodule.span_mono ?_ h2
    rintro _ ⟨q, ⟨K, sz, hsz, I, hsh, rfl⟩, rfl⟩
    exact ⟨K, sz, hsz, I, hsh, rfl⟩

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SubDRenameHvE =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SumIccEqRange =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SumIccEqRange", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.EvalIdFrameRowAct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend Formalism.L2.G.Model.TS

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

namespace FrameUnitLemmas

section Rel

variable {Kc : Type} [Field Kc] (Oc : Subring Kc) (π : Kc)

def Sim (x : Kc) (n : ℤ) : Prop := ∃ u : Kc, u ∈ Oc ∧ u⁻¹ ∈ Oc ∧ x = u * π ^ n

variable {Oc π}

theorem Sim.mem {x : Kc} (h : Sim Oc π x 0) : x ∈ Oc := by
  obtain ⟨u, hu, _, rfl⟩ := h
  rwa [zpow_zero, mul_one]

theorem Sim.congr {x : Kc} {n m : ℤ} (h : Sim Oc π x n) (e : n = m) : Sim Oc π x m := e ▸ h

theorem Sim.mul (hπ : π ≠ 0) {x y : Kc} {n m : ℤ} (hx : Sim Oc π x n) (hy : Sim Oc π y m) :
    Sim Oc π (x * y) (n + m) := by
  obtain ⟨u, hu, hu', rfl⟩ := hx
  obtain ⟨v, hv, hv', rfl⟩ := hy
  refine ⟨u * v, mul_mem hu hv, ?_, ?_⟩
  · rw [mul_inv]; exact mul_mem hu' hv'
  · rw [zpow_add₀ hπ]; ring

theorem Sim.inv {x : Kc} {n : ℤ} (hx : Sim Oc π x n) : Sim Oc π x⁻¹ (-n) := by
  obtain ⟨u, hu, hu', rfl⟩ := hx
  exact ⟨u⁻¹, hu', by rwa [inv_inv], by rw [mul_inv, zpow_neg]⟩

theorem Sim.pow {x : Kc} {n : ℤ} (hx : Sim Oc π x n) (k : ℕ) : Sim Oc π (x ^ k) (k * n) := by
  obtain ⟨u, hu, hu', rfl⟩ := hx
  refine ⟨u ^ k, pow_mem hu k, by rw [← inv_pow]; exact pow_mem hu' k, ?_⟩
  rw [mul_pow, ← zpow_natCast (π ^ n), ← zpow_mul, mul_comm n]

theorem Sim.zpow {x : Kc} {n : ℤ} (hx : Sim Oc π x n) (k : ℤ) : Sim Oc π (x ^ k) (k * n) := by
  cases k with
  | ofNat k =>
    rw [Int.ofNat_eq_natCast, zpow_natCast]
    exact hx.pow k
  | negSucc k =>
    rw [zpow_negSucc]
    exact (hx.pow (k + 1)).inv.congr (by rw [Int.negSucc_eq]; push_cast; ring)

theorem Sim.prod (hπ : π ≠ 0) {ι : Type} (S : Finset ι) (x : ι → Kc) (n : ι → ℤ)
    (h : ∀ i ∈ S, Sim Oc π (x i) (n i)) : Sim Oc π (∏ i ∈ S, x i) (∑ i ∈ S, n i) := by
  classical
  induction S using Finset.induction_on with
  | empty => exact ⟨1, one_mem _, by rw [inv_one]; exact one_mem _, by simp⟩
  | insert a S ha ih =>
    rw [Finset.prod_insert ha, Finset.sum_insert ha]
    exact (h a (Finset.mem_insert_self a S)).mul hπ (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem Sim.self_zpow (k : ℤ) : Sim Oc π (π ^ k) k :=
  ⟨1, one_mem _, by rw [inv_one]; exact one_mem _, (one_mul _).symm⟩

end Rel

theorem sum_min_colH {N : ℕ} (μ : Fin N → ℕ) (hμ : Antitone μ) (c : ℕ) (hc : ∀ t, μ t ≤ c) (i : ℕ) (hi : i ≤ N) :
    ∑ k : Fin c, min (colH μ k.val) i = ∑ t : Fin N, if t.val < i then μ t else 0 := by
  have h1 : ∀ k : Fin c, min (colH μ k.val) i = ∑ t : Fin N, if t.val < i ∧ k.val < μ t then 1 else 0 := by
    intro k
    rw [← Finset.card_filter]
    have : (Finset.univ.filter fun t : Fin N => t.val < i ∧ k.val < μ t) =
        Finset.univ.filter fun t : Fin N => t.val < min (colH μ k.val) i := by
      ext t
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      rw [← BidetPairing.lt_colH_iff hμ k.val t, lt_min_iff, and_comm]
    rw [this, BidetPairing.card_fin_lt N _ (le_trans (min_le_right _ _) hi)]
  rw [Finset.sum_congr rfl fun k _ => h1 k, Finset.sum_comm]
  refine Finset.sum_congr rfl fun t _ => ?_
  split_ifs with h
  · simp only [h, true_and]
    rw [← Finset.card_filter, BidetPairing.card_fin_lt c _ (hc t)]
  · simp [h]

theorem sum_Icc_eq_range (F : ℕ → ℤ) (i : ℕ) : ∑ a ∈ Finset.Icc 1 i, F a = ∑ t ∈ Finset.range i, F (t + 1) := by
  induction i with
  | zero => simp
  | succ i ih => rw [Finset.sum_Icc_succ_top (by omega), ih, Finset.sum_range_succ]

theorem sum_fin_lt (F : ℕ → ℤ) (N i : ℕ) (hi : i ≤ N) :
    ∑ t : Fin N, (if t.val < i then F t.val else 0) = ∑ t ∈ Finset.range i, F t := by
  rw [Fin.sum_univ_eq_sum_range (fun t => if t < i then F t else 0) N, ← Finset.sum_filter]
  congr 1
  ext t
  simp only [Finset.mem_filter, Finset.mem_range]
  omega

theorem place_arith {n' : ℕ} (P : Fin n' → Prop) [DecidablePred P] (w e0 e1 c e M la : Fin n' → ℤ) (n n1 i : ℤ)
    (hE : ∀ s, ¬ P s → e s = e0 s + w s ∧ e1 s = -w s ∧ M s = la s + i * w s)
    (hO : ∀ s, P s → c s = w s - e0 s ∧ e1 s = e0 s) :
    (∑ s ∈ Finset.univ.filter (fun s => ¬ P s), la s + i * ∑ s ∈ Finset.univ.filter (fun s => P s), w s) +
      ((∑ s ∈ Finset.univ.filter (fun s => ¬ P s), w s - ∑ s ∈ Finset.univ.filter (fun s => P s), w s) * (-n) +
        -((∑ s ∈ Finset.univ.filter (fun s => ¬ P s), w s - ∑ s ∈ Finset.univ.filter (fun s => P s), w s) * (-n1))) +
      ∑ s, -(e0 s) * n + -(∑ s, -(e1 s) * (n1 + -i)) +
      ∑ s, (if P s then -(c s) * n + c s * (n1 + -i) else e s * n + -(M s)) = 0 := by
  have key : ∀ s, ((if ¬ P s then la s else 0) + i * (if P s then w s else 0)) +
      (((if ¬ P s then w s else 0) - (if P s then w s else 0)) * (-n) +
        -(((if ¬ P s then w s else 0) - (if P s then w s else 0)) * (-n1))) +
      -(e0 s) * n + -(-(e1 s) * (n1 + -i)) +
      (if P s then -(c s) * n + c s * (n1 + -i) else e s * n + -(M s)) = 0 := by
    intro s
    by_cases h : P s
    · obtain ⟨h1, h2⟩ := hO s h
      simp only [h, not_true_eq_false, if_true, if_false]
      rw [h1, h2]; ring
    · obtain ⟨h1, h2, h3⟩ := hE s h
      simp only [h, not_false_eq_true, if_true, if_false]
      rw [h1, h2, h3]; ring
  rw [← Finset.sum_eq_zero (fun s (_ : s ∈ Finset.univ) => key s)]
  simp only [Finset.sum_filter, Finset.sum_add_distrib, Finset.sum_neg_distrib, Finset.mul_sum]
  simp only [← Finset.sum_mul, Finset.sum_sub_distrib]

section Blocks

variable {p : ℕ} [Fact p.Prime] (X : Sys p)

theorem sig_int (v : X.Pl) (s : ℕ) (x : X.G.P.W v) :
    ∃ y : X.G.P.W v, (X.G.P.σ v ^ s) (algebraMap (X.G.P.W v) (X.G.P.Qq v) x) = algebraMap (X.G.P.W v) (X.G.P.Qq v) y := by
  induction s generalizing x with
  | zero => exact ⟨x, rfl⟩
  | succ s ih =>
    obtain ⟨y, hy⟩ := (X.G.P.setting v).frob x
    obtain ⟨z, hz⟩ := ih (x ^ p + (p : X.G.P.W v) * y)
    refine ⟨z, ?_⟩
    rw [pow_succ, RingAut.mul_apply, hy, hz]

theorem mF_det (j : ℕ) (b : BX X) (A : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)) :
    (mF X j b A).det = X.G.P.ι b.1 ((X.G.P.σ b.1 ^ b.2.val) A.det) := by
  unfold mF
  rw [Matrix.det_submatrix_equiv_self]
  exact (RingHom.map_det ((X.G.P.ι b.1).comp (X.G.P.σ b.1 ^ b.2.val : X.G.P.Qq b.1 ≃+* X.G.P.Qq b.1).toRingHom) A).symm

theorem det_DgX (K' : Type) [Field K'] (j : ℕ) (i0 : X.Pl → ℕ) (v : X.Pl) (h : i0 v ≤ NJ X (j + 1)) :
    (DgX X K' j i0 v).det = (p : K') ^ (-(i0 v : ℤ)) := by
  unfold DgX
  rw [Matrix.det_diagonal, Fin.prod_univ_eq_prod_range (fun i => if i < i0 v then ((p : K'))⁻¹ else 1) (NJ X (j + 1)),
    Finset.prod_ite, Finset.prod_const_one, mul_one, Finset.prod_const]
  have : (Finset.range (NJ X (j + 1))).filter (fun i => i < i0 v) = Finset.range (i0 v) := by
    ext i
    simp only [Finset.mem_filter, Finset.mem_range]
    omega
  rw [this, Finset.card_range, zpow_neg, zpow_natCast, inv_pow]

theorem len_def (v : X.Pl) (j : ℕ) (L : (X.Pj j).Tup) : len X v j L = lenLat (X.G.P.W v) p (X.latAt v j L) := by
  cases j <;> rfl

theorem len_eq (v : X.Pl) (j : ℕ) (L : (X.Pj j).Tup) (g : GL (Fin ((X.Pj j).m + 1)) (X.G.P.Qq v))
    (hL : X.latAt v j L = colSpan (X.G.P.W v) (g : Matrix _ _ (X.G.P.Qq v))) :
    len X v j L = -ordP (X.G.P.W v) p (g : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq v)).det := by
  have hu : IsUnit (g : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq v)).det :=
    (Matrix.isUnit_iff_isUnit_det _).1 (Units.isUnit g)
  have hS := X.G.P.setting v
  have := hS.frac_alt
  rw [len_def, hL, lenLat_colSpan hS.p_unif _ hu]

theorem nuv_lam (j : ℕ) (v : X.Pl) (s : Fin (X.G.P.n' v)) (t : ℕ) (ht : t < X.G.P.m + 1) :
    X.nuv v (j + 1) s (t + 1) = lamI (X.G.P.lam0 v) s (t + 1) + X.w v (j + 1) s := by
  unfold Sys.nuv nu
  rw [if_pos ⟨by omega, by omega⟩]

theorem boxes (hS : XShape) (j : ℕ) (b : BX X) (i : ℕ) (hi : i ≤ X.G.P.m + 1) :
    ((∑ k : Fin (cX X j b), min (X.colHt b.1 (j + 1) b.2 k.val) i : ℕ) : ℤ) =
      ∑ a ∈ Finset.Icc 1 i, lamI (X.G.P.lam0 b.1) b.2 a + (i : ℤ) * X.w b.1 (j + 1) b.2 := by
  obtain ⟨_, _, h3, h4, _, h6, _⟩ := hS p X j b
  have hi' : i ≤ NJ X (j + 1) := by
    show i ≤ X.G.P.m + 1 + (j + 1) * (X.t + 1)
    omega
  have h := sum_min_colH (muX X j (NJ X (j + 1)) b) (h3 _) (cX X j b) (h4 _) i hi'
  simp only [h6] at h
  have h7 : ∀ t : Fin (NJ X (j + 1)), (((if t.val < i then muX X j (NJ X (j + 1)) b t else 0 : ℕ)) : ℤ) =
      if t.val < i then X.nuv b.1 (j + 1) b.2 (t.val + 1) else 0 := by
    intro t
    split_ifs
    · exact Int.toNat_of_nonneg (nuv_nonneg X b.1 j b.2 _)
    · rfl
  rw [h, Nat.cast_sum, Finset.sum_congr rfl fun t _ => h7 t,
    sum_fin_lt (fun t => X.nuv b.1 (j + 1) b.2 (t + 1)) _ _ hi', sum_Icc_eq_range,
    Finset.sum_congr rfl fun t ht => nuv_lam X j b.1 b.2 t (by have := Finset.mem_range.1 ht; omega),
    Finset.sum_add_distrib, Finset.sum_const, Finset.card_range, nsmul_eq_mul]

variable (Kc : Type) [Field Kc] [Algebra X.G.Kf Kc] (Oc : Subring Kc)

theorem tw_int (hO : ∀ o : X.G.O, algebraMap X.G.Kf Kc (algebraMap X.G.O X.G.Kf o) ∈ Oc) (b : BX X) (x : X.G.P.W b.1) :
    algebraMap X.G.Kf Kc (X.G.P.ι b.1 ((X.G.P.σ b.1 ^ b.2.val) (algebraMap (X.G.P.W b.1) (X.G.P.Qq b.1) x))) ∈ Oc := by
  obtain ⟨y, hy⟩ := sig_int X b.1 b.2.val x
  rw [hy, (X.G.P.setting b.1).ι_comp]
  exact hO _

theorem sim_tw (hO : ∀ o : X.G.O, algebraMap X.G.Kf Kc (algebraMap X.G.O X.G.Kf o) ∈ Oc) (b : BX X)
    {x : X.G.P.Qq b.1} (hx : x ≠ 0) :
    Sim Oc (p : Kc) (algebraMap X.G.Kf Kc (X.G.P.ι b.1 ((X.G.P.σ b.1 ^ b.2.val) x))) (ordP (X.G.P.W b.1) p x) := by
  have hS := X.G.P.setting b.1
  have := hS.frac_alt
  obtain ⟨n, u, rfl⟩ := exists_eq_unit_mul_zpow₂ hS.p_unif hx
  rw [ordP_eq hS.p_unif]
  refine ⟨_, tw_int X Kc Oc hO b u, ?_, ?_⟩
  · have e : (algebraMap (X.G.P.W b.1) (X.G.P.Qq b.1) (u : X.G.P.W b.1))⁻¹ =
        algebraMap (X.G.P.W b.1) (X.G.P.Qq b.1) ((u⁻¹ : (X.G.P.W b.1)ˣ) : X.G.P.W b.1) := by
      symm
      apply eq_inv_of_mul_eq_one_left
      rw [← map_mul, Units.inv_mul, map_one]
    rw [← map_inv₀, ← map_inv₀, ← map_inv₀, e]
    exact tw_int X Kc Oc hO b _
  · rw [map_mul, map_mul, map_mul, map_zpow₀, map_zpow₀, map_zpow₀, map_natCast, map_natCast, map_natCast]

theorem sim_mF (hO : ∀ o : X.G.O, algebraMap X.G.Kf Kc (algebraMap X.G.O X.G.Kf o) ∈ Oc) (j : ℕ) (b : BX X)
    (g : GL (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)) :
    Sim Oc (p : Kc) (algebraMap X.G.Kf Kc (mF X j b (g : Matrix _ _ (X.G.P.Qq b.1))).det)
      (ordP (X.G.P.W b.1) p (g : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)).det) := by
  rw [mF_det]
  exact sim_tw X Kc Oc hO b ((Matrix.isUnit_iff_isUnit_det _).1 (Units.isUnit g)).ne_zero

end Blocks

end FrameUnitLemmas


open FrameUnitLemmas in
theorem xUnit_of (hS : XShape) : XUnit := by
  intro p _ X Kc _ _ Oc hO hp j L L'' g g' hL hL'' i0 hi0
  have hr : ∀ v, i0 v ≤ X.G.P.m + 1 := fun v => by
    have h1 := hi0 v
    have h2 := (X.std v).two_r
    omega
  have hN : ∀ v, i0 v ≤ NJ X (j + 1) := fun v => by
    have h1 := hr v
    show i0 v ≤ X.G.P.m + 1 + (j + 1) * (X.t + 1)
    omega
  have hg : ∀ b : BX X, Sim Oc (p : Kc) (algebraMap X.G.Kf Kc (mF X j b (g b.1 : Matrix _ _ (X.G.P.Qq b.1))).det)
      (ordP (X.G.P.W b.1) p (g b.1 : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)).det) :=
    fun b => sim_mF X Kc Oc hO j b (g b.1)
  have hg' : ∀ b : BX X, Sim Oc (p : Kc)
      (algebraMap X.G.Kf Kc (mF X (j + 1) b (g' b.1 : Matrix _ _ (X.G.P.Qq b.1)) * DgX X X.G.Kf j i0 b.1).det)
      (ordP (X.G.P.W b.1) p
        (g' b.1 : Matrix (Fin ((X.Pj (j + 1)).m + 1)) (Fin ((X.Pj (j + 1)).m + 1)) (X.G.P.Qq b.1)).det + -(i0 b.1 : ℤ)) := by
    intro b
    rw [Matrix.det_mul, map_mul, det_DgX X X.G.Kf j i0 b.1 (hN b.1), map_zpow₀, map_natCast]
    exact (sim_mF X Kc Oc hO (j + 1) b (g' b.1)).mul hp (Sim.self_zpow _)
  have hU : Sim Oc (p : Kc) (numericalIdentityScalar X Kc j (fun v => g v) (fun v => g' v) i0)
      (∑ b : BX X, if IsOddPos b.2 then
        -(cX X j b : ℤ) * ordP (X.G.P.W b.1) p
            (g b.1 : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)).det +
          (cX X j b : ℤ) * (ordP (X.G.P.W b.1) p
            (g' b.1 : Matrix (Fin ((X.Pj (j + 1)).m + 1)) (Fin ((X.Pj (j + 1)).m + 1)) (X.G.P.Qq b.1)).det + -(i0 b.1 : ℤ))
        else (eX X j b : ℤ) * ordP (X.G.P.W b.1) p
            (g b.1 : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)).det +
          -((∑ k : Fin (cX X j b), min (X.colHt b.1 (j + 1) b.2 k.val) (i0 b.1) : ℕ) : ℤ)) := by
    unfold numericalIdentityScalar
    refine Sim.prod hp _ _ _ fun b _ => ?_
    split_ifs with h
    · exact ((hg b).zpow _).mul hp ((hg' b).pow _)
    · exact ((hg b).pow _).mul hp (Sim.self_zpow _)
  have h1 : Sim Oc (p : Kc) (algebraMap X.G.Kf Kc
      (∏ v : X.Pl, (p : X.G.Kf) ^ (Nprime (X.G.P.lam0 v) (X.w v) (j + 1) (i0 v))))
      (∑ v : X.Pl, Nprime (X.G.P.lam0 v) (X.w v) (j + 1) (i0 v)) := by
    simp only [map_prod, map_zpow₀, map_natCast]
    exact Sim.prod hp _ _ _ fun v _ => Sim.self_zpow _
  have h2 : Sim Oc (p : Kc) (algebraMap X.G.Kf Kc (∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v j L)))
      (∑ v : X.Pl, X.vm v (j + 1) * len X v j L) := by
    simp only [map_prod, map_zpow₀, map_natCast]
    exact Sim.prod hp _ _ _ fun v _ => Sim.self_zpow _
  have h3 : Sim Oc (p : Kc) (algebraMap X.G.Kf Kc (∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v (j + 1) L'')))
      (∑ v : X.Pl, X.vm v (j + 1) * len X v (j + 1) L'') := by
    simp only [map_prod, map_zpow₀, map_natCast]
    exact Sim.prod hp _ _ _ fun v _ => Sim.self_zpow _
  have h4 : Sim Oc (p : Kc) (algebraMap X.G.Kf Kc (sX X j (fun v => g v)))
      (∑ b : BX X, -(eJ X j b.1 b.2) * ordP (X.G.P.W b.1) p
        (g b.1 : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)).det) := by
    unfold sX
    simp only [map_prod, map_zpow₀]
    exact Sim.prod hp _ _ _ fun b _ => (hg b).zpow _
  have h5 : Sim Oc (p : Kc) (algebraMap X.G.Kf Kc
      (∏ b : BX X, (mF X (j + 1) b (g' b.1 : Matrix _ _ (X.G.P.Qq b.1)) * DgX X X.G.Kf j i0 b.1).det ^ (-(eJ X (j + 1) b.1 b.2))))
      (∑ b : BX X, -(eJ X (j + 1) b.1 b.2) * (ordP (X.G.P.W b.1) p
        (g' b.1 : Matrix (Fin ((X.Pj (j + 1)).m + 1)) (Fin ((X.Pj (j + 1)).m + 1)) (X.G.P.Qq b.1)).det + -(i0 b.1 : ℤ))) := by
    simp only [map_prod, map_zpow₀]
    exact Sim.prod hp _ _ _ fun b _ => (hg' b).zpow _
  rw [map_mul, map_mul, map_mul, map_mul, map_inv₀, map_inv₀]
  refine Sim.mem (π := (p : Kc)) (Sim.congr
    (((((h1.mul hp (h2.mul hp h3.inv)).mul hp h4).mul hp h5.inv)).mul hp hU) ?_)
  simp only [Fintype.sum_sigma, ← Finset.sum_neg_distrib, ← Finset.sum_add_distrib]
  refine Finset.sum_eq_zero fun v _ => ?_
  rw [len_eq X v j L (g v) (hL v), len_eq X v (j + 1) L'' (g' v) (hL'' v)]
  rw [Finset.sum_neg_distrib]
  refine place_arith (fun s : Fin (X.G.P.n' v) => IsOddPos s) (X.w v (j + 1)) (eJ X j v) (eJ X (j + 1) v)
    (fun s => (cX X j ⟨v, s⟩ : ℤ)) (fun s => (eX X j ⟨v, s⟩ : ℤ))
    (fun s => ((∑ k : Fin (cX X j ⟨v, s⟩), min (X.colHt v (j + 1) s k.val) (i0 v) : ℕ) : ℤ))
    (fun s => ∑ a ∈ Finset.Icc 1 (i0 v), lamI (X.G.P.lam0 v) s a) _ _ (i0 v : ℤ) ?_ ?_
  · intro s hs
    obtain ⟨_, _, _, _, _, _, _, _, h9, _⟩ := hS p X j ⟨v, s⟩
    exact ⟨(h9 hs).1, (h9 hs).2, boxes X hS j ⟨v, s⟩ (i0 v) (hr v)⟩
  · intro s hs
    obtain ⟨_, _, _, _, _, _, _, _, _, h10⟩ := hS p X j ⟨v, s⟩
    exact h10 hs

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SumIccEqRange =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.XShape =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.XShape", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.XFacts\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.EvalIdFrameRowAct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

namespace FrameShapeLemmas

theorem shape_even (m₀ n : ℕ) (hm : m₀ + 1 = n) (lam : Fin (m₀ + 1) → ℤ) (hanti : Antitone lam) (ν : ℕ → ℤ) (w : ℤ)
    (hlam : ∀ i : Fin (m₀ + 1), ν (i.val + 1) = lam i + w) (hnn : ∀ i, 0 ≤ ν i) (t : Fin n) :
    nuOf lam (Fin.cast hm.symm t) = (ν (t.val + 1)).toNat - (ν n).toNat := by
  subst hm
  have h1 := hlam t
  have h2 := hlam (Fin.last m₀)
  have h3 : lam (Fin.last m₀) ≤ lam t := hanti (Fin.le_last t)
  have h4 := hnn (t.val + 1)
  have h5 := hnn (m₀ + 1)
  rw [Fin.val_last] at h2
  unfold nuOf
  rw [Fin.cast_eq_self]
  omega

theorem shape_odd (m₀ n : ℕ) (hm : m₀ + 1 = n) (lam : Fin (m₀ + 1) → ℤ) (hanti : Antitone lam) (ν : ℕ → ℤ) (w : ℤ)
    (hlam : ∀ i : Fin (m₀ + 1), ν (i.val + 1) = lam i + w) (hnn : ∀ i, 0 ≤ ν i) (t : Fin n) :
    nuOf (fun i => -lam i.rev) (Fin.cast hm.symm t) = (ν 1).toNat - (ν (t.rev.val + 1)).toNat := by
  subst hm
  have h1 := hlam t.rev
  have h2 := hlam 0
  have h3 : lam t.rev ≤ lam 0 := hanti (Fin.zero_le _)
  have h4 := hnn (t.rev.val + 1)
  have h5 := hnn 1
  rw [Fin.val_zero, zero_add] at h2
  unfold nuOf
  rw [Fin.cast_eq_self]
  beta_reduce
  rw [Fin.rev_last]
  omega

variable {p : ℕ} [Fact p.Prime] (X : Sys p)

theorem hlamS (j : ℕ) (v : X.Pl) (s : Fin (X.G.P.n' v)) (l : ℕ) (hl : j + 1 ≤ l + 1) (i : Fin (X.G.P.m + (j + 1) * (X.Fl.t + 1) + 1)) :
    X.nuv v (l + 1) s (i.val + 1) =
      liftWt X.Fl.t X.G.P.m (X.G.P.lam0 v s) (fun i => X.Fl.w v i s) (j + 1) i + X.Fl.w v (l + 1) s := by
  unfold liftWt
  split_ifs with h
  · exact nuv_low X l v s i.val h
  · refine nuv_high X l v s i.val h ?_
    have := i.isLt
    have h2 : (j + 1) * (X.Fl.t + 1) ≤ (l + 1) * (X.Fl.t + 1) := Nat.mul_le_mul_right _ hl
    unfold NN
    show i.val + 1 ≤ X.G.P.m + 1 + (l + 1) * (X.Fl.t + 1)
    omega

theorem not_even_of_odd {n' : ℕ} {s : Fin n'} (h : IsOddPos s) : ¬ Even s.val := by
  rw [Nat.not_even_iff]; exact h

theorem even_of_not_odd {n' : ℕ} {s : Fin n'} (h : ¬ IsOddPos s) : Even s.val :=
  Nat.even_iff.2 (by unfold IsOddPos at h; omega)

theorem c1 (j : ℕ) (b : BX X) : nuM X j b = nuS X j b := by
  funext t
  unfold nuS muX cX eX
  cases j with
  | zero =>
    show nuOf (lamAt (X.G.P.lam0 b.1) b.2) (Fin.cast (rankJ X 0).symm t) = _
    unfold lamAt
    split_ifs with h1 h2 h2
    · exact absurd h1 (not_even_of_odd h2)
    · exact shape_even _ _ (rankJ X 0) _ (X.G.P.dom b.1 b.2) (X.nuv b.1 1 b.2) _ (fun i => nuv_low X 0 b.1 b.2 i.val i.isLt)
        (nuv_nonneg X b.1 0 b.2) t
    · exact shape_odd _ _ (rankJ X 0) _ (X.G.P.dom b.1 b.2) (X.nuv b.1 1 b.2) _ (fun i => nuv_low X 0 b.1 b.2 i.val i.isLt)
        (nuv_nonneg X b.1 0 b.2) t
    · exact absurd (even_of_not_odd h2) h1
  | succ j =>
    show nuOf (lamAt ((X.Fl.Pj (j + 1)).lam0 b.1) b.2) (Fin.cast (rankJ X (j + 1)).symm t) = _
    unfold lamAt
    split_ifs with h1 h2 h2
    · exact absurd h1 (not_even_of_odd h2)
    · exact shape_even _ _ (rankJ X (j + 1)) _ (X.Fl.domJ (j + 1) b.1 b.2) (X.nuv b.1 (j + 1 + 1) b.2) _
        (hlamS X j b.1 b.2 (j + 1) (by omega)) (nuv_nonneg X b.1 (j + 1) b.2) t
    · exact shape_odd _ _ (rankJ X (j + 1)) _ (X.Fl.domJ (j + 1) b.1 b.2) (X.nuv b.1 (j + 1 + 1) b.2) _
        (hlamS X j b.1 b.2 (j + 1) (by omega)) (nuv_nonneg X b.1 (j + 1) b.2) t
    · exact absurd (even_of_not_odd h2) h1

theorem nuv_top (j : ℕ) (v : X.Pl) (s : Fin (X.G.P.n' v)) : X.nuv v (j + 1) s (NN X.G.P.m X.t (j + 1)) = 0 := by
  apply nuv_zero X v j s
  unfold NN
  have : j * (X.t + 1) < (j + 1) * (X.t + 1) := by nlinarith
  omega

theorem c2 (j : ℕ) (b : BX X) : nuM X (j + 1) b = nuT X j b := by
  funext t
  unfold nuT muX cX
  show nuOf (lamAt ((X.Fl.Pj (j + 1)).lam0 b.1) b.2) (Fin.cast (rankJ X (j + 1)).symm t) = _
  unfold lamAt
  split_ifs with h1 h2 h2
  · exact absurd h1 (not_even_of_odd h2)
  · have := shape_even _ _ (rankJ X (j + 1)) _ (X.Fl.domJ (j + 1) b.1 b.2) (X.nuv b.1 (j + 1) b.2) _
      (hlamS X j b.1 b.2 j le_rfl) (nuv_nonneg X b.1 j b.2) t
    rw [nuv_top X j b.1 b.2] at this
    refine this.trans ?_
    simp
  · exact shape_odd _ _ (rankJ X (j + 1)) _ (X.Fl.domJ (j + 1) b.1 b.2) (X.nuv b.1 (j + 1) b.2) _
      (hlamS X j b.1 b.2 j le_rfl) (nuv_nonneg X b.1 j b.2) t
  · exact absurd (even_of_not_odd h2) h1

theorem nuv_anti (j : ℕ) (v : X.Pl) (s : Fin (X.G.P.n' v)) {a c : ℕ} (h : a ≤ c) :
    X.nuv v (j + 1) s (c + 1) ≤ X.nuv v (j + 1) s (a + 1) := by
  by_cases hc : c < X.G.P.m + (j + 1) * (X.Fl.t + 1) + 1
  · rw [hlamS X j v s j le_rfl ⟨c, hc⟩, hlamS X j v s j le_rfl ⟨a, lt_of_le_of_lt h hc⟩]
    have := X.Fl.domJ (j + 1) v s (show (⟨a, lt_of_le_of_lt h hc⟩ : Fin _) ≤ ⟨c, hc⟩ from h)
    linarith
  · rw [nuv_zero X v j s (c + 1) (by
      have h1 : NN X.G.P.m X.t j ≤ NN X.G.P.m X.t (j + 1) := NN_le X j
      have h2 : NN X.G.P.m X.t (j + 1) = X.G.P.m + 1 + (j + 1) * (X.Fl.t + 1) := rfl
      omega)]
    exact nuv_nonneg X v j s _

theorem c3 (j n : ℕ) (b : BX X) : Antitone (muX X j n b) := by
  intro a c hac
  unfold muX
  exact Int.toNat_le_toNat (nuv_anti X j b.1 b.2 hac)

theorem c4 (j n : ℕ) (b : BX X) (t : Fin n) : muX X j n b t ≤ cX X j b := by
  unfold muX cX
  exact Int.toNat_le_toNat (nuv_le_first X b.1 j b.2 _)

theorem c56 (j n : ℕ) (h1 : NN X.G.P.m X.t j ≤ n) (h2 : n ≤ NN X.G.P.m X.t (j + 1)) (b : BX X) (k : ℕ) :
    colH (muX X j n b) k = X.colHt b.1 (j + 1) b.2 k := by
  unfold colH muX Sys.colHt
  rw [BidetPairing.card_fin_filter n fun t => k < (X.nuv b.1 (j + 1) b.2 (t + 1)).toNat]
  refine Finset.card_bij (fun t _ => t + 1) ?_ ?_ ?_
  · intro t ht
    rw [Finset.mem_filter, Finset.mem_range] at ht
    rw [Finset.mem_filter, Finset.mem_Icc]
    exact ⟨⟨by omega, by omega⟩, Int.lt_toNat.1 ht.2⟩
  · intro a _ c _ h
    omega
  · intro i hi
    rw [Finset.mem_filter, Finset.mem_Icc] at hi
    have hin : i ≤ n := by
      by_contra hc
      have := nuv_zero X b.1 j b.2 i (by omega)
      rw [this] at hi
      have := hi.2
      omega
    refine ⟨i - 1, ?_, by omega⟩
    rw [Finset.mem_filter, Finset.mem_range]
    refine ⟨by omega, ?_⟩
    rw [show i - 1 + 1 = i by omega]
    exact Int.lt_toNat.2 hi.2

theorem NJ_pos (j : ℕ) : 0 < NN X.G.P.m X.t j := by unfold NN; omega

theorem c7 (j : ℕ) (b : BX X) (t : Fin (NJ X j)) : eX X j b ≤ muX X j (NJ X j) b t := by
  unfold eX muX
  have h := nuv_anti X j b.1 b.2 (show t.val ≤ NJ X j - 1 by have := t.isLt; omega)
  have hN : NJ X j - 1 + 1 = NJ X j := Nat.sub_add_cancel (NJ_pos X j)
  rw [hN] at h
  exact Int.toNat_le_toNat h

theorem c8 (j : ℕ) (b : BX X) (t : Fin (NJ X j)) (ht : t.val + 1 = NJ X j) : muX X j (NJ X j) b t = eX X j b := by
  unfold eX muX
  rw [ht]

theorem eJ_odd (j : ℕ) (v : X.Pl) (s : Fin (X.G.P.n' v)) (h : IsOddPos s) : eJ X j v s = -X.G.P.lam0 v s 0 := by
  have h1 := numO X j v s h
  have h2 : cMu X j v s = X.G.P.lam0 v s ⟨0, by omega⟩ + X.Fl.w v (j + 1) s := nuv_low X j v s 0 (by omega)
  have h3 : X.w v (j + 1) s = X.Fl.w v (j + 1) s := rfl
  have h4 : (⟨0, by omega⟩ : Fin (X.G.P.m + 1)) = 0 := rfl
  rw [h4] at h2
  linarith

theorem c9 (j : ℕ) (b : BX X) (h : ¬ IsOddPos b.2) :
    (eX X j b : ℤ) = eJ X j b.1 b.2 + X.w b.1 (j + 1) b.2 ∧ eJ X (j + 1) b.1 b.2 = -X.w b.1 (j + 1) b.2 := by
  obtain ⟨h1, h2⟩ := numE X j b.1 b.2 h
  refine ⟨?_, ?_⟩
  · unfold eX
    rw [Int.toNat_of_nonneg h1, h2]
  · have h3 := hlamS X j b.1 b.2 j le_rfl (Fin.last _)
    have h4 : X.nuv b.1 (j + 1) b.2 ((Fin.last (X.G.P.m + (j + 1) * (X.Fl.t + 1))).val + 1) = 0 := by
      have := nuv_top X j b.1 b.2
      rw [Fin.val_last]
      have e : X.G.P.m + (j + 1) * (X.Fl.t + 1) + 1 = NN X.G.P.m X.t (j + 1) := by
        show _ = X.G.P.m + 1 + (j + 1) * (X.Fl.t + 1)
        omega
      rw [e]; exact this
    rw [h4] at h3
    have h5 : eJ X (j + 1) b.1 b.2 =
        liftWt X.Fl.t X.G.P.m (X.G.P.lam0 b.1 b.2) (fun i => X.Fl.w b.1 i b.2) (j + 1) (Fin.last _) := by
      show lamAt _ b.2 _ = _
      unfold lamAt
      rw [if_pos (even_of_not_odd h)]
      rfl
    rw [h5]
    have h6 : X.w b.1 (j + 1) b.2 = X.Fl.w b.1 (j + 1) b.2 := rfl
    linarith

theorem c10 (j : ℕ) (b : BX X) (h : IsOddPos b.2) :
    (cX X j b : ℤ) = X.w b.1 (j + 1) b.2 - eJ X j b.1 b.2 ∧ eJ X (j + 1) b.1 b.2 = eJ X j b.1 b.2 := by
  refine ⟨?_, by rw [eJ_odd X (j + 1) b.1 b.2 h, eJ_odd X j b.1 b.2 h]⟩
  have h1 := numO X j b.1 b.2 h
  rw [← h1]
  exact cMu_toNat X b.1 j b.2

end FrameShapeLemmas

open FrameShapeLemmas in
theorem frame_shape_identity_holds : XShape := by
  intro p _ X j b
  exact ⟨c1 X j b, c2 X j b, fun n => c3 X j n b, fun n t => c4 X j n b t, c56 X j _ le_rfl (NN_le X j) b,
    c56 X j _ (NN_le X j) le_rfl b, c7 X j b, c8 X j b, c9 X j b, c10 X j b⟩

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.XShape =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.NuTAntitone =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.NuTAntitone", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.GeXZero\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.EvalIdFrameRowAct\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HighestVectorFullHolds\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HinjX\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ShapeEvenHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend Formalism.L2.G.Model.TS

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] (X : Sys p) [IsFractionRing X.G.O X.G.Kf]
  (Kc : Type) [Field Kc] [Algebra (Formalism.MainNotions.FormalGroupSystem.K0 p) Kc] [Algebra X.G.Kf Kc] [CharZero Kc]

theorem nuT_antitone (hS : XShape) (j : ℕ) (b : BX X) : Antitone (nuT X j b) := by
  obtain ⟨-, -, hanti, -⟩ := hS p X j b
  unfold nuT
  split_ifs
  · exact BidetPairing.kap_antitone (hanti _) _
  · exact hanti _

theorem shape_szT (hS : XShape) (j : ℕ) (b : BX X) : shapeDeg (szT X j b) = nuT X j b := by
  obtain ⟨-, -, hanti, hle, -⟩ := hS p X j b
  by_cases ho : IsOddPos b.2
  · have h1 : szT X j b = fun k => NJ X (j + 1) - colH (muX X j (NJ X (j + 1)) b) k.val := by
      funext k; exact if_pos ho
    rw [h1, show nuT X j b = _ from if_pos ho]
    exact _root_.Formalism.L2.PairingIndexBounds.Ent.BidetPairing.shape_odd_holds _ _ (hanti _) _ (hle _)
  · have h1 : szT X j b = fun k => colH (muX X j (NJ X (j + 1)) b) k.val := by
      funext k; exact if_neg ho
    rw [h1, show nuT X j b = _ from if_neg ho]
    exact shape_even_holds _ _ (hanti _) _ (hle _)

theorem xPair (hS : XShape) (hBrS : XBrS) (hInj : XInj) (hMid : XMid) (hU : XUnit)
    (Oc : Subring Kc) (hval : ∀ x : Kc, x ∈ Oc ∨ x⁻¹ ∈ Oc)
    (hO : ∀ o : X.G.O, algebraMap X.G.Kf Kc (algebraMap X.G.O X.G.Kf o) ∈ Oc)
    (j : ℕ) (La : X.Lt j) (La' : X.Lt (j + 1)) (φ : Frm X j La La') (i0 : X.Pl → ℕ) (h3 : ∀ v, i0 v ≤ X.G.P.r)
    (f : MvPowerSeries (X.ZA j) Kc) (gg : ℝ)
    (hf : ∀ (I : X.ColCh j) (n : X.FrI j →₀ ℕ), geX p Oc (AddMonoidAlgebra.coeff (applyD (X.PI j I i0) f) n) gg)
    (G : (X.Pj j).Xsp) (hG : G ∈ (X.Pj j).HtupW La.2)
    (I : ∀ (b : BX X) (k : Fin (cX X j b)), Fin (szT X j b k) → Fin (NJ X (j + 1))) :
    ∃ a ∈ MG p Oc hval gg,
      fockR ((((∏ v : X.Pl, (p : X.G.Kf) ^ (Nprime (X.G.P.lam0 v) (X.w v) (j + 1) (i0 v))) *
            ((∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v j La.2)) *
              (∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v (j + 1) La'.2))⁻¹)) *
            (∏ b : BX X, (mF X (j + 1) b (φ.g' b.1).val * DgX X X.G.Kf j i0 b.1).det ^ (-(eJ X (j + 1) b.1 b.2)))⁻¹) •
          delF X Kc j G (linSub (bc Kc φ) f))
        (map (algebraMap X.G.Kf Kc) (∏ b, rename (emX X (j + 1) b)
          (rowAct X.G.Kf (mF X (j + 1) b (φ.g' b.1).val * DgX X X.G.Kf j i0 b.1).transpose
            (bideterminant X.G.Kf (szT X j b) (szT_le X j b) (I b))))) = a * ∏ b, cN Kc (nuT X j b) := by
  classical
  by_cases hI : ∀ b k, Function.Injective (I b k)
  · obtain ⟨Ist, ε, hε, hmid⟩ := hMid p X Kc j La La' φ i0 I hI
    set TI := map (algebraMap X.G.Kf Kc) (∏ b, rename (emX X (j + 1) b)
      (rowAct X.G.Kf (mF X (j + 1) b (φ.g' b.1).val * DgX X X.G.Kf j i0 b.1).transpose
        (bideterminant X.G.Kf (szT X j b) (szT_le X j b) (I b)))) with hTI
    set cc : Kc := ∏ b, cN Kc (nuT X j b) with hcc
    have hcc0 : cc ≠ 0 := Finset.prod_ne_zero_iff.2 fun b _ => cN_ne Kc _
    set S1 : X.G.Kf := ((∏ v : X.Pl, (p : X.G.Kf) ^ (Nprime (X.G.P.lam0 v) (X.w v) (j + 1) (i0 v))) *
            ((∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v j La.2)) *
              (∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v (j + 1) La'.2))⁻¹)) with hS1
    set s1 : X.G.Kf := (∏ b : BX X, (mF X (j + 1) b (φ.g' b.1).val * DgX X X.G.Kf j i0 b.1).det ^ (-(eJ X (j + 1) b.1 b.2)))⁻¹ with hs1
    have hp0 : (p : Kc) ≠ 0 := Nat.cast_ne_zero.2 (Fact.out : p.Prime).ne_zero
    have hu := hU p X Kc Oc hO hp0 j La.2 La'.2 φ.g φ.g' φ.hg φ.hg' i0 h3
    rw [← hS1, ← hs1] at hu
    set U0 := numericalIdentityScalar X Kc j (fun v => φ.g v) (fun v => φ.g' v) i0 with hU0
    have hεO : ε ∈ Oc := by
      rcases hε with h | h
      · rw [h]; exact Oc.one_mem
      · rw [h]; exact Oc.neg_mem Oc.one_mem
    have key := phi_mem X Kc hS hBrS hInj j La.2 φ.g φ.hg (MG p Oc hval gg) (fun o a ha => geX_mul (hO o) ha)
      (PhiX X Kc j (fockL TI) (cc⁻¹ * algebraMap X.G.Kf Kc (S1 * s1)) (linSub (bc Kc φ) f))
      (C (ε * (algebraMap X.G.Kf Kc (S1 * sX X j (fun v => φ.g v) * s1) * U0)) * applyD (X.PI j Ist i0) f)
      (fun m => by
        rw [coeff_C_mul]
        exact geX_mul (Oc.mul_mem hεO hu) (hf Ist m))
      (fun x => by
        rw [PhiX_apply, map_smul, LinearMap.smul_apply, ← algebraMap_smul Kc (sX X j fun v => φ.g v), map_smul, smul_eq_mul]
        show _ * (_ * fockR _ TI) = _
        rw [hmid f x]
        simp only [map_mul, eval_C]
        field_simp) G hG
    refine ⟨_, key, ?_⟩
    rw [PhiX_apply, ← algebraMap_smul Kc (S1 * s1), fockR_smul_left]
    show _ = _ * _ * fockR _ TI * cc
    field_simp
  · push Not at hI
    obtain ⟨b0, k0, hk⟩ := hI
    refine ⟨0, AddSubgroup.zero_mem _, ?_⟩
    have hb : bideterminant X.G.Kf (szT X j b0) (szT_le X j b0) (I b0) = 0 := by
      unfold bideterminant
      exact Finset.prod_eq_zero (Finset.mem_univ k0) (minor_zero_holds _ _ _ _ _ _ hk)
    have hz : (∏ b, rename (emX X (j + 1) b)
        (rowAct X.G.Kf (mF X (j + 1) b (φ.g' b.1).val * DgX X X.G.Kf j i0 b.1).transpose
          (bideterminant X.G.Kf (szT X j b) (szT_le X j b) (I b)))) = 0 :=
      Finset.prod_eq_zero (Finset.mem_univ b0) (by rw [hb, map_zero, map_zero])
    rw [hz, map_zero, fockR_comm, fockR_zero_left, zero_mul]

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.NuTAntitone =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.PolyKTorsionFree =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.PolyKTorsionFree", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.WeylComplementInDetCoeffSpan\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FinalD\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LClosedeqLemmas\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.SwRowGenMonomial\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.L2.G.Model.TS Formalism.L2.G.Model

section dual

variable {O K : Type} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O] [Field K] [Algebra O K]
  [IsFractionRing O K] [CharZero K]

lemma toK_eq_map {σ : Type} (f : MvPolynomial σ O) : toK O K f = map (algebraMap O K) f := rfl

lemma polyK_torsionFree {σ : Type} : Module.IsTorsionFree O (MvPolynomial σ K) := by
  refine Module.IsTorsionFree.of_smul_eq_zero fun a f h => ?_
  rw [← algebraMap_smul K a f, smul_eq_zero] at h
  rcases h with h | h
  · left; exact (IsFractionRing.injective O K) (by rw [h, map_zero])
  · right; exact h

lemma weylK_fg {n : ℕ} (ν : Fin n → ℕ) (hν : Antitone ν) :
    ((weyl O n n le_rfl ν).map (toK O K)).FG := by
  have hM : ((dualWeyl O n n ν).map (toK O K)).FG := by
    apply Submodule.FG.map
    obtain ⟨b, hb, -⟩ := sSBasis O n n ν
    rw [← hb.2.1]
    have := (sSIdxFinite n n ν).to_subtype
    exact Submodule.fg_span (Set.finite_range b)
  have hle : (weyl O n n le_rfl ν).map (toK O K) ≤ (dualWeyl O n n ν).map (toK O K) :=
    Submodule.map_mono (weylLeDual O n n le_rfl ν hν)
  have := isNoetherian_of_fg_of_noetherian _ hM
  have h := IsNoetherian.noetherian (((weyl O n n le_rfl ν).map (toK O K)).comap
    ((dualWeyl O n n ν).map (toK O K)).subtype)
  have h2 := h.map ((dualWeyl O n n ν).map (toK O K)).subtype
  rwa [Submodule.map_comap_subtype, inf_eq_right.mpr hle] at h2

end dual

theorem dual_bases_holds : DualBases := by
  intro O K _ _ _ _ _ _ _ n ν hν
  classical
  set c := fockR (hw K (le_rfl : n ≤ n) ν) (hw K le_rfl ν) with hc
  set D := (weyl O n n le_rfl ν).map (toK O K) with hD
  have : Module.IsTorsionFree O (MvPolynomial (Fin n × Fin n) K) := polyK_torsionFree
  have : Module.Finite O D := Module.Finite.iff_fg.mpr (weylK_fg ν hν)
  obtain ⟨N, bD⟩ := Module.basisOfFiniteTypeTorsionFree' (R := O) (M := D)
  set e : Fin N → MvPolynomial (Fin n × Fin n) K := fun i => (bD i : MvPolynomial (Fin n × Fin n) K) with he_def
  have he : ∀ i, e i ∈ D := fun i => (bD i).2
  have hDV : ∀ x ∈ D, x ∈ dualWeyl K n n ν := by
    intro x hx
    obtain ⟨y, hy, rfl⟩ := Submodule.mem_map.mp hx
    rw [toK_eq_map]
    exact weylLeDual K n n le_rfl ν hν (sw_weyl_map (algebraMap O K) le_rfl ν y hy)
  have hrep : ∀ x (hx : x ∈ D), x = ∑ i, bD.repr ⟨x, hx⟩ i • e i := by
    intro x hx
    have h := congrArg Subtype.val (bD.sum_repr ⟨x, hx⟩)
    rw [Submodule.coe_sum] at h
    simpa [he_def] using h.symm
  have hsm : ∀ (a : O) (f : MvPolynomial (Fin n × Fin n) K), a • f = algebraMap O K a • f :=
    fun a f => (algebraMap_smul K a f).symm
  have hDspan : ∀ x ∈ D, x ∈ Submodule.span K (Set.range e) := by
    intro x hx
    rw [hrep x hx]
    refine Submodule.sum_mem _ fun i _ => ?_
    rw [hsm]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  have hspan : dualWeyl K n n ν ≤ Submodule.span K (Set.range e) := by
    rw [← sw_weyl_eq K n n le_rfl ν hν]
    unfold weyl
    rw [Submodule.span_le]
    rintro _ ⟨w, rfl⟩
    apply hDspan
    refine Submodule.mem_map.mpr ⟨applyWord O w (hw O le_rfl ν), Submodule.subset_span ⟨w, rfl⟩, ?_⟩
    rw [toK_eq_map, ← lclosedeq_applyWord_map, lclosedeq_hw_map]
  have hliO : LinearIndependent O e := bD.linearIndependent.map' D.subtype (Submodule.ker_subtype D)
  have hli : LinearIndependent K e := (LinearIndependent.iff_fractionRing O K).mp hliO
  set W := Submodule.span K (Set.range e) with hW
  have hWV : W = dualWeyl K n n ν := by
    refine le_antisymm ?_ hspan
    rw [hW, Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    exact hDV _ (he i)
  let bW : Module.Basis (Fin N) K W := Module.Basis.span hli
  have hbW : ∀ i, (bW i : MvPolynomial (Fin n × Fin n) K) = e i := fun i =>
    congrArg Subtype.val (Module.Basis.span_apply hli i)
  let Bf : LinearMap.BilinForm K W := LinearMap.mk₂ K (fun x y : W => fockR (x : MvPolynomial (Fin n × Fin n) K) y)
    (fun x x' y => by simp [fockR_add_left]) (fun a x y => by simp [fockR_smul_left])
    (fun x y y' => by simp [FockPairing.pair_add_right]) (fun a x y => by simp [FockPairing.pair_smul_right])
  have hBf : ∀ x y : W, Bf x y = fockR (x : MvPolynomial (Fin n × Fin n) K) y := fun _ _ => rfl
  have hnd : Bf.Nondegenerate := by
    constructor
    · intro x hx
      apply Subtype.ext
      refine Top.nondegK K n n le_rfl ν hν x.1 (hWV ▸ x.2) fun P hP => ?_
      exact (FockPairing.pair_comm P x.1).trans (hx ⟨P, hWV ▸ hP⟩)
    · intro y hy
      apply Subtype.ext
      exact Top.nondegK K n n le_rfl ν hν y.1 (hWV ▸ y.2) fun P hP => hy ⟨P, hWV ▸ hP⟩
  let d := Bf.dualBasis hnd bW
  have hd : ∀ i k, fockR (e i) (d k : MvPolynomial (Fin n × Fin n) K) = if i = k then 1 else 0 := by
    intro i k
    have h := LinearMap.BilinForm.apply_dualBasis_left hnd bW k i
    rw [hBf, hbW] at h
    exact (FockPairing.pair_comm _ _).trans h
  refine ⟨Fin N, inferInstance, inferInstance, e, fun k => c • (d k : MvPolynomial (Fin n × Fin n) K),
    he, ?_, ?_, hspan⟩
  · intro k
    have hkV : c • (d k : MvPolynomial (Fin n × Fin n) K) ∈ dualWeyl K n n ν :=
      Submodule.smul_mem _ _ (hWV ▸ (d k).2)
    refine Top.dualWeylIn O K n n le_rfl ν hν _ hkV fun P hP => ⟨bD.repr ⟨P, hP⟩ k, ?_⟩
    show fockR P (c • (d k : MvPolynomial (Fin n × Fin n) K)) = _
    conv_lhs => rw [hrep P hP]
    rw [fockR_sum_left]
    simp_rw [hsm, fockR_smul_left, FockPairing.pair_smul_right, hd]
    simp [hc]
  · intro i k
    simp_rw [FockPairing.pair_smul_right, hd]
    split_ifs <;> simp

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.PolyKTorsionFree =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TgtBidet =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TgtBidet", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FockRSmulLeft\nimport Formalism.GradedWeylDivisibility.FinalC\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.InterpolationHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.L2.G.Model.TS Formalism.MainNotions.G

variable {O K Kc : Type} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O] [Field K] [Algebra O K] [IsFractionRing O K]
  [CharZero K] [Field Kc] [Algebra K Kc]
  {B τ : Type} [Fintype B] [DecidableEq B] {n : ℕ} (em : B → Fin n × Fin n → τ)
  (hem : Function.Injective fun x : B × (Fin n × Fin n) => em x.1 x.2)
  (ν : B → Fin n → ℕ) (hν : ∀ b, Antitone (ν b))
  (h hi : B → Matrix (Fin n) (Fin n) K) (hh : ∀ b, hi b * h b = 1)
  (M : AddSubgroup Kc) (hM : ∀ (o : O), ∀ a ∈ M, algebraMap K Kc (algebraMap O K o) * a ∈ M)

theorem toK_bidet {r n K' : ℕ} (sz : Fin K' → ℕ) (hsz : ∀ k, sz k ≤ n) (I : ∀ k, Fin (sz k) → Fin r) :
    toK O K (bideterminant O sz hsz I) = bideterminant K sz hsz I := by
  show map (algebraMap O K) _ = _
  unfold bideterminant initMinor
  rw [map_prod]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [RingHom.map_det]
  congr 1
  ext a b
  simp


include hem hν hh hM in
theorem tgt_bidet (hDB : DualBases) (hFP : FockProd) (hRe : Reorder) (c : B → ℕ) (sz : ∀ b, Fin (c b) → ℕ)
    (hsz : ∀ b k, sz b k ≤ n) (hshape : ∀ b, shapeDeg (sz b) = ν b) (y : MvPolynomial τ Kc)
    (hy : y ∈ Submodule.span Kc {z | ∃ F : B → MvPolynomial (Fin n × Fin n) K, (∀ b, F b ∈ dualWeyl K n n (ν b)) ∧
      z = map (algebraMap K Kc) (∏ b, rename (em b) (F b))})
    (hp : ∀ I : ∀ b, ∀ k, Fin (sz b k) → Fin n,
      ∃ a ∈ M, fockR y (map (algebraMap K Kc) (∏ b, rename (em b) (rowAct K (h b).transpose (bideterminant K (sz b) (hsz b) (I b))))) =
        a * ∏ b, cN Kc (ν b)) :
    y ∈ AddSubgroup.closure {z | ∃ a ∈ M, ∃ F : B → MvPolynomial (Fin n × Fin n) K,
      (∀ b, F b ∈ deltaL O K n (ν b) (h b)) ∧ z = a • map (algebraMap K Kc) (∏ b, rename (em b) (F b))} := by
  refine tgt_abs (O := O) em hem ν hν h hi hh M hDB hFP y hy fun Q hQ => ?_
  let T : Submodule O (MvPolynomial τ K) :=
    { carrier := {Z | ∃ a ∈ M, fockR y (map (algebraMap K Kc) Z) = a * ∏ b, cN Kc (ν b)}
      add_mem' := by
        rintro Z Z' ⟨a, ha, h1⟩ ⟨a', ha', h2⟩
        refine ⟨a + a', M.add_mem ha ha', ?_⟩
        rw [map_add (f := _), fockR_comm, fockR_add_left, fockR_comm _ y, fockR_comm _ y, h1, h2, add_mul]
      zero_mem' := ⟨0, M.zero_mem, by rw [map_zero, fockR_comm, fockR_zero_left, zero_mul]⟩
      smul_mem' := by
        rintro o Z ⟨a, ha, h1⟩
        refine ⟨_, hM o a ha, ?_⟩
        rw [← algebraMap_smul K o Z, smul_eq_C_mul, map_mul, map_C, ← smul_eq_C_mul, fockR_comm, fockR_smul_left, fockR_comm, h1,
          mul_assoc] }
  refine prod_span (R := O) (fun b => Set.range fun I : ∀ k, Fin (sz b k) → Fin n =>
    rename (em b) (rowAct K (h b).transpose (bideterminant K (sz b) (hsz b) I))) T ?_ _ ?_
  · intro f hf
    choose I hI using hf
    obtain ⟨a, ha, h1⟩ := hp I
    refine ⟨a, ha, ?_⟩
    rw [← Finset.prod_congr rfl fun b _ => hI b]
    exact h1
  · intro b
    have h1 := hQ b
    rw [standardMonomialSpanDomain O n n (ν b), Submodule.map_span] at h1
    have h2 := Submodule.mem_map_of_mem (f := (((rename (em b) : MvPolynomial (Fin n × Fin n) K →ₐ[K] MvPolynomial τ K).comp
      (rowAct K (h b).transpose)).toLinearMap).restrictScalars O) h1
    rw [Submodule.map_span] at h2
    refine Submodule.span_mono ?_ h2
    rintro _ ⟨_, ⟨_, ⟨K', sz', hsz', I', hs', rfl⟩, rfl⟩, rfl⟩
    obtain ⟨I'', hI''⟩ := hRe K n n K' (c b) sz' (sz b) hsz' (hsz b) (hs'.trans (hshape b).symm) I'
    refine ⟨I'', ?_⟩
    rw [toK_bidet, hI'']
    rfl

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TgtBidet =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.AdmissibleGeneralLatticeTuple =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.AdmissibleGeneralLatticeTuple", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.GeXZero\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.CoefficientProductHolds\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HinjX\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.NuTAntitone\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.PolyKTorsionFree\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ShapeEvenHolds\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TgtBidet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend Formalism.L2.G.Model.TS

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] (X : Sys p) [IsFractionRing X.G.O X.G.Kf]
  (Kc : Type) [Field Kc] [Algebra (Formalism.MainNotions.FormalGroupSystem.K0 p) Kc] [Algebra X.G.Kf Kc] [CharZero Kc]

theorem admissible_general_lattice_tuple (hS : XShape) (hBrS : XBrS) (hBrT : XBrT) (hInj : XInj) (hSp : XSpanN) (hMid : XMid) (hU : XUnit) (hE : XEdge)
    (Oc : Subring Kc) (hval : ∀ x : Kc, x ∈ Oc ∨ x⁻¹ ∈ Oc)
    (hO : ∀ o : X.G.O, algebraMap X.G.Kf Kc (algebraMap X.G.O X.G.Kf o) ∈ Oc)
    (j : ℕ) (La : X.Lt j) (c' : X.Lv.comp (j + 1)) (L' L'' : (X.Pj (j + 1)).Tup) (i0 : X.Pl → ℕ)
    (h1 : (X.Pj j).IsLatTup La.2) (h2 : (X.Pj (j + 1)).IsLatTup L') (h3 : ∀ v, i0 v ≤ X.G.P.r)
    (h4 : ∀ v' : Fin (X.Pj (j + 1)).nV, (i0 (X.vB (j + 1) v') = 0 ∧ L'' v' = L' v') ∨
      (1 ≤ i0 (X.vB (j + 1) v') ∧ IsEdge p ((X.Pj (j + 1)).n' v') (i0 (X.vB (j + 1) v')) ⟨L'' v', L' v'⟩)) :
    ∃ φ : Frm X j La (c', L''), ∀ (f : MvPowerSeries (X.ZA j) Kc) (gg : ℝ),
      (∀ (I : X.ColCh j) (n : X.FrI j →₀ ℕ), geX p Oc (AddMonoidAlgebra.coeff (applyD (X.PI j I i0) f) n) gg) →
      ∀ G ∈ (X.Pj j).HtupW La.2,
        ((∏ v : X.Pl, (p : X.G.Kf) ^ (Nprime (X.G.P.lam0 v) (X.w v) (j + 1) (i0 v))) •
          (((∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v j La.2)) *
            (∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v (j + 1) L''))⁻¹) •
              delF X Kc j G (linSub (bc Kc φ) f))) ∈
        AddSubgroup.closure {y' | ∃ a : Kc, geX p Oc a gg ∧ ∃ z ∈ (X.Pj (j + 1)).HtupW L',
          y' = a • map (algebraMap X.G.Kf Kc) z} := by
  classical
  have cz : CharZero X.G.Kf := (algebraMap X.G.Kf Kc).charZero
  obtain ⟨g', h', hg', hh', hmF⟩ := hE p X j L' L'' i0 h2 h4
  obtain ⟨φ0⟩ := exists_frm X j La (c', L') h1 h2
  let φ : Frm X j La (c', L'') := ⟨φ0.g, g', φ0.hg, hg'⟩
  refine ⟨φ, fun f gg hf G hG => ?_⟩
  set ft := linSub (bc Kc φ) f with hft
  set S1 : X.G.Kf := ((∏ v : X.Pl, (p : X.G.Kf) ^ (Nprime (X.G.P.lam0 v) (X.w v) (j + 1) (i0 v))) *
    ((∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v j La.2)) *
      (∏ v : X.Pl, (p : X.G.Kf) ^ (X.vm v (j + 1) * len X v (j + 1) L''))⁻¹)) with hS1
  set s' : X.G.Kf := sX X (j + 1) (fun v => (h' v : Matrix _ _ _)) with hs'
  have hs'0 : s' ≠ 0 := Finset.prod_ne_zero_iff.2 fun b _ => zpow_ne_zero _ (mF_det_ne X (j + 1) b (h' b.1))
  have hs'e : s' = ∏ b : BX X, (mF X (j + 1) b (g' b.1 : Matrix _ _ _) * DgX X X.G.Kf j i0 b.1).det ^ (-(eJ X (j + 1) b.1 b.2)) :=
    Finset.prod_congr rfl fun b _ => by rw [hmF b]
  have hy1 := tgt_bidet (O := X.G.O) (Kc := Kc) (emX X (j + 1)) (hInj p X (j + 1)).1 (nuT X j) (nuT_antitone X hS j)
    (fun b => mF X (j + 1) b (h' b.1)) (fun b => mF X (j + 1) b ((h' b.1)⁻¹ : GL _ _)) (fun b => mF_inv_mul X (j + 1) b (h' b.1))
    (MG p Oc hval gg) (fun o a ha => geX_mul (hO o) ha) dual_bases_holds fock_product_holds reorder_holds (cX X j) (szT X j)
    (szT_le X j) (shape_szT X hS j) ((S1 * s'⁻¹) • delF X Kc j G ft)
    (by
      rw [← algebraMap_smul Kc (S1 * s'⁻¹)]
      exact Submodule.smul_mem _ _ (xSpan X Kc hS hBrS hInj hSp j La.2 φ0.g φ0.hg ft G hG))
    (fun I => by
      have := xPair X Kc hS hBrS hInj hMid hU Oc hval hO j La (c', L'') φ i0 h3 f gg hf G hG I
      rw [← hS1, ← hs'e] at this
      simp only [hmF]
      exact this)
  have htr : ∀ z ∈ AddSubgroup.closure {z | ∃ a ∈ MG p Oc hval gg,
      ∃ F : BX X → MvPolynomial (Fin (NJ X (j + 1)) × Fin (NJ X (j + 1))) X.G.Kf,
        (∀ b, F b ∈ deltaL X.G.O X.G.Kf (NJ X (j + 1)) (nuT X j b) (mF X (j + 1) b (h' b.1))) ∧
          z = a • map (algebraMap X.G.Kf Kc) (∏ b, rename (emX X (j + 1) b) (F b))},
      s' • z ∈ AddSubgroup.closure {y' | ∃ a : Kc, geX p Oc a gg ∧ ∃ z ∈ (X.Pj (j + 1)).HtupW L',
        y' = a • map (algebraMap X.G.Kf Kc) z} := by
    intro z hz
    induction hz using AddSubgroup.closure_induction with
    | mem z hz =>
      obtain ⟨a, ha, F, hF, rfl⟩ := hz
      refine AddSubgroup.subset_closure ⟨a, ha, s' • ∏ b, rename (emX X (j + 1) b) (F b), ?_, ?_⟩
      · refine hBrT p X (hinjX X) (j + 1) L' (fun v => h' v) (fun v => (Matrix.isUnit_iff_isUnit_det _).1 (h' v).isUnit) hh' F ?_
        intro b
        rw [(hS p X j b).2.1]
        exact hF b
      · rw [smul_comm, smul_eq_C_mul (a := s'), map_mul, map_C, ← smul_eq_C_mul, algebraMap_smul]
    | zero => rw [smul_zero]; exact AddSubgroup.zero_mem _
    | add x y _ _ hx hy => rw [smul_add]; exact AddSubgroup.add_mem _ hx hy
    | neg x _ hx => rw [smul_neg]; exact AddSubgroup.neg_mem _ hx
  have := htr _ hy1
  rw [smul_smul, mul_comm s', mul_assoc, inv_mul_cancel₀ hs'0, mul_one, hS1, mul_smul] at this
  exact this

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.AdmissibleGeneralLatticeTuple =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.FinalOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.FinalOf", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.InvarianceIffAdditiveMapsExist\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.AdmissibleGeneralLatticeTuple\nimport Formalism.SharpRestriction.AdmissibleParameterJoins.GandSp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend

variable {p : ℕ} [Fact p.Prime] (X : Sys p) [IsFractionRing X.G.O X.G.Kf] (E : CEmbC X.G)
    (hfin : ∀ j c, (X.Lv.lev j c).FinClasses) (hst : FinStab X.Lv)
    {g : Formalism.MainNotions.GL3Theta.G1 p} (hLT : LTIso g) {T : Type} (pos : (Σ v : X.Pl, Fin (X.G.P.n' v)) ≃ T)
    (F : ∀ j, X.Lt j → X.Lt (j + 1) → MvPowerSeries (T × Fin ((X.Pj (j + 1)).m + 1) × Fin ((X.Pj j).m + 1)) ℂ_[p])

theorem pending_tuple_admissible_of_shape (hS : XShape) (hBrS : XBrS) (hBrT : XBrT) (hInj : XInj) (hSp : XSpanN) (hMid : XMid) (hU : XUnit)
    (hE : XEdge) (D : Formalism.BasicNotions.D7) : Formalism.MainNotions.FormalGroupSystem.adm7 D X (pendT X E hfin hst hLT pos F) := by
  letI := wittFractionAlgebraCp p
  letI := algKfC E.toCEmb
  intro j _ La c' L' L'' i0 h1 h2 h3 h4
  exact admissible_general_lattice_tuple X ℂ_[p] hS hBrS hBrT hInj hSp hMid hU hE (OcC p) OcC_val
    (fun o => ((pendT X E hfin hst hLT pos F).Oc_K _).2 ⟨o, rfl⟩) j La c' L' L'' i0 h1 h2 h3 h4

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.FinalOf =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.LatticeShapeMiddleHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.LatticeShapeMiddleHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.InvarianceIffAdditiveMapsExist\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.BranchingSourceIdentity\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FrameEdgeIdentityHolds\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ProdItePow\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SubDRenameHvE\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.SumIccEqRange\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.TransposedFrameImageBlockwiseHolds\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.XShape\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.FinalOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend

theorem lattice_shape_a_holds : XA := xA_of frame_shape_identity_holds
theorem lattice_span_normal_holds : XSpanN := xSpanN_of frame_shape_identity_holds
theorem lattice_shape_middle_holds : XMid := xMid_of frame_shape_identity_holds lattice_shape_a_holds frame_change_pairing_holds transposed_frame_image_blockwise_holds frame_change_compatibility_holds frame_change_group_action_holds
theorem lattice_shape_unit_holds : XUnit := xUnit_of frame_shape_identity_holds

variable {p : ℕ} [Fact p.Prime] (X : Sys p) [IsFractionRing X.G.O X.G.Kf] (E : CEmbC X.G)
    (hfin : ∀ j c, (X.Lv.lev j c).FinClasses) (hst : FinStab X.Lv)
    {g : Formalism.MainNotions.GL3Theta.G1 p} (hLT : LTIso g) {T : Type} (pos : (Σ v : X.Pl, Fin (X.G.P.n' v)) ≃ T)
    (F : ∀ j, X.Lt j → X.Lt (j + 1) → MvPowerSeries (T × Fin ((X.Pj (j + 1)).m + 1) × Fin ((X.Pj j).m + 1)) ℂ_[p])

theorem pending_tuple_admissible (D : Formalism.BasicNotions.D7) : Formalism.MainNotions.FormalGroupSystem.adm7 D X (pendT X E hfin hst hLT pos F) :=
  pending_tuple_admissible_of_shape X E hfin hst hLT pos F frame_shape_identity_holds branching_source_identity branching_target_identity frame_change_injective_holds lattice_span_normal_holds lattice_shape_middle_holds lattice_shape_unit_holds
    frame_edge_identity_holds D

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.LatticeShapeMiddleHolds =====

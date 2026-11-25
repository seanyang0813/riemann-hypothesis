module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.Placed
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.Framed
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ConjBesselCharacterIsUnfoldingThetaFunctionOfGra
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FlagUnipotentFourierJacobiGroupStructure
public import Development.AbelianVarietyTheory.Definitions.Foundations.HermitianSpaceBaseLatticeEqFrameLattice
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ThetaIdentityOfMapsAll
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsCompactOpenLatticeStabilizerAtPlaces
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSBesUnscaledDual
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSuppVecLocEq
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiStarOfMid
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicPointComponentsAtPlacesLatticesVacua
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RangeBesselAnisotropicEmbeddingEqSecondModelSubg
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SmulColMul

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsFramedAdapted, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.EqOfPsiE, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlacedBesselPairLattice

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsFramedAdapted =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsFramedAdapted", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.Placed\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.Framed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiStarOfMid\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped InnerProductSpace TensorProduct
open Formalism.BasicNotions Formalism.MainNotions Formalism.DivisionValues Formalism.L2 Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Cx Formalism.IndefR.Links
open Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory NumberField IsDedekindDomain
open Formalism.L2.SG.RowsJoinPinned Formalism.L2.SG.RowDict Formalism.L2.SG.PoincareInHH.PoincareSetting
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.MiS GlobalTheory.Core.Mi
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.SeeSaw GlobalTheory.Fam Matrix ValuativeRel IsLocalRing GlobalTheory.LocMod

namespace GlobalTheory.MiTop

section Frame

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {h : X.B.I = Formalism.L2.SG.InstExistsPf.instOf D} {u : D.what₂.Word}
  {ψ : AddChar (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF D.host.F) ℂ} {A : Formalism.BasicNotions.TH.HSp D}

theorem besVec_ne_zero (B : SBes X h u ψ A) : B.d.i₀ *ᵥ vecB B.o B.ζ ≠ 0 := fun h0 => by
  apply B.line.2
  have e : B.L.gram *ᵥ B.ζ = (B.o.iBᴴ * (B.d.i₀ᴴ * (D.sp.Y 0).gram)) *ᵥ (B.d.i₀ *ᵥ vecB B.o B.ζ) := by
    rw [← B.o.isoB, ← B.d.iso]
    simp only [vecB, Matrix.mulVec_mulVec, Matrix.mul_assoc]
  rw [e, h0]; simp

end Frame

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Yd : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Yd cX} {W : RealPack ex} {u : D.what₂.Word} (f : FamCh W u)
  (B : SBes W.S.X W.Q.instEq u W.Q.Rl.ψ (D.sp.X 0))

variable {f B}

variable (f B)

end GlobalTheory.MiTop

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsFramedAdapted =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.EqOfPsiE =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.EqOfPsiE", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ConjBesselCharacterIsUnfoldingThetaFunctionOfGra\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FlagUnipotentFourierJacobiGroupStructure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum NumberField Matrix GlobalTheory.MixModel GlobalTheory.MixPer
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar



namespace GlobalTheory.FirstVec

theorem first_col {K : Type} [CommRing K] {σ : ℕ} (T S : Matrix (Fin (σ + 1)) (Fin (σ + 1)) K) (h : S * T = 1)
    (hl : T (Fin.last σ) (Fin.last σ) = 1) (hu : ∀ j j' : Fin (σ + 1), j'.1 = j.1 + 1 → ∀ a b, b ≤ a → T a j * S j' b = 0)
    (hs : ∀ j j' : Fin (σ + 1), j'.1 = j.1 + 1 → (∑ a : Fin (σ + 1), ∑ b : Fin (σ + 1),
      if b.1 = a.1 + 1 then T a j * S j' b else 0) = 1) : ∀ a, T a 0 = if a = 0 then 1 else 0 := by
  have key : ∀ j j' : Fin (σ + 1), j'.1 = j.1 + 1 → (∀ b, j' < b → T b j' = 0) → ∀ a, j ≤ a →
      T a j = if a = j then T j j * S j' j' * T j' j' else 0 := fun j j' e H a ha => by
    have e1 : T a j = ∑ b, T a j * S j' b * T b j' := by
      have := congrFun (congrFun h j') j'
      rw [Matrix.mul_apply, Matrix.one_apply_eq] at this
      simp only [mul_assoc, ← Finset.mul_sum, this, mul_one]
    rw [e1, Finset.sum_eq_single j']
    · split_ifs with h1
      · rw [h1]
      · rw [hu j j' e a j' (by rw [Fin.le_def] at *; have := mt Fin.ext h1; omega), zero_mul]
    · intro b _ hb
      rcases lt_or_gt_of_ne hb with h1 | h1
      · rw [hu j j' e a b (by rw [Fin.le_def, Fin.lt_def] at *; omega), zero_mul]
      · rw [H b h1, mul_zero]
    · exact fun h => absurd (Finset.mem_univ _) h
  have tri : ∀ j : Fin (σ + 1), ∀ b, j < b → T b j = 0 := fun j => by
    induction j using Fin.reverseInduction with
    | last => exact fun b hb => absurd (Fin.le_last b) (not_le.2 hb)
    | cast j ih => exact fun b hb => by rw [key j.castSucc j.succ rfl ih b hb.le, if_neg hb.ne']
  have triS : S.BlockTriangular id := by
    letI := invertibleOfLeftInverse T S h
    rw [← Matrix.inv_eq_left_inv h]
    exact Matrix.blockTriangular_inv_of_blockTriangular fun a b hab => tri b a hab
  have diag : ∀ j : Fin (σ + 1), T j j = 1 := fun j => by
    induction j using Fin.reverseInduction with
    | last => exact hl
    | cast j ih =>
      have h1 := hs j.castSucc j.succ rfl
      rw [Finset.sum_eq_single j.castSucc, Finset.sum_eq_single j.succ, if_pos (show j.succ.1 = j.castSucc.1 + 1 from rfl)] at h1
      · rw [key j.castSucc j.succ rfl (tri _) _ le_rfl, if_pos rfl, h1, ih, one_mul]
      · exact fun b _ hb => if_neg fun e => hb (Fin.ext e)
      · exact fun h => absurd (Finset.mem_univ _) h
      · intro a _ ha
        refine Finset.sum_eq_zero fun b _ => ?_
        split_ifs with e
        · rcases lt_or_gt_of_ne ha with h2 | h2
          · rw [show S j.succ b = 0 from triS (show b < j.succ by
              rw [Fin.lt_def] at h2 ⊢; simp only [Fin.val_castSucc, Fin.val_succ] at h2 e ⊢; omega), mul_zero]
          · rw [tri _ a h2, zero_mul]
        · rfl
      · exact fun h => absurd (Finset.mem_univ _) h
  intro a
  split_ifs with e
  · rw [e, diag]
  · exact tri 0 a (Fin.pos_iff_ne_zero.2 e)

variable {D : D7} {S S₀ S₀' : HSp D}

theorem eq_of_psiE {ψ : AddChar (AF D.host.F) ℂ} (hψ : ∃ s : AE D, psiE ψ s ≠ 1) {s s' : D.host.E}
    (h : ∀ t : AE D, psiE ψ (t * incA D s) = psiE ψ (t * incA D s')) : s = s' := by
  by_contra hne
  obtain ⟨y, hy⟩ := hψ
  have h0 : s - s' ≠ 0 := sub_ne_zero.2 hne
  have h1 := h (y * incA D (s - s')⁻¹)
  have e : y * incA D (s - s')⁻¹ * incA D s = y + y * incA D (s - s')⁻¹ * incA D s' := by
    have : incA D (s - s')⁻¹ * (incA D s - incA D s') = 1 := by rw [← map_sub, ← map_mul, inv_mul_cancel₀ h0, map_one]
    linear_combination y * this
  rw [e, psiE_add] at h1
  have h2 : psiE ψ (y * incA D (s - s')⁻¹ * incA D s') * psiE ψ (-(y * incA D (s - s')⁻¹ * incA D s')) = 1 := by
    rw [← psiE_add, add_neg_cancel, psiE_zero]
  exact hy (mul_right_cancel₀ (left_ne_zero_of_mul_eq_one h2) (h1.trans (one_mul _).symm))

section

variable {ρ : ℕ} (d : HypDec S S₀ ρ) (d' : HypDec S S₀' ρ) {z : Fin S₀.rank → D.host.E} {z' : Fin S₀'.rank → D.host.E}

theorem exists_b (hz' : z' ≠ 0) (i : Fin ρ) (t : AE D) : ∃ b : Mx D ρ S₀'.rank, b *ᵥ ratV z' = Pi.single i t := by
  obtain ⟨k, hk⟩ := Function.ne_iff.1 hz'
  refine ⟨Matrix.single i k (t * incA D (z' k)⁻¹), ?_⟩
  rw [Matrix.single_mulVec]
  change Function.update (0 : Fin ρ → AE D) i (t * incA D (z' k)⁻¹ * incA D (z' k)) = _
  rw [mul_assoc, ← map_mul, inv_mul_cancel₀ hk, map_one, mul_one]
  rfl

theorem coefX_eq (hz : d.i₀ *ᵥ z = d'.i₀ *ᵥ z') (n : GA D S) :
    coefX d z n = d.pX *ᵥ (mt S n *ᵥ (d'.j0 *ᵥ ratV z')) := by
  have e : d.j0 *ᵥ ratV z = d'.j0 *ᵥ ratV z' := (ratV_mulVec _ _).symm.trans ((congrArg ratV hz).trans (ratV_mulVec _ _))
  rw [coefX, ← mulVec_mulVec, ← mulVec_mulVec, e]

theorem coefX_nB' (hz : d.i₀ *ᵥ z = d'.i₀ *ᵥ z') (b : Mx D ρ S₀'.rank) :
    coefX d z (d'.nB b) = (d.pX * d'.jX) *ᵥ (b *ᵥ ratV z') := by
  have e0 : d.pX *ᵥ (d'.j0 *ᵥ ratV z') = 0 := by
    have := coefX_eq d d' hz 1
    rw [GlobalTheory.MixModel.mt_one, one_mulVec, coefX, GlobalTheory.MixModel.mt_one, Matrix.one_mul, d.pX_j0, zero_mulVec] at this
    exact this.symm
  rw [coefX_eq d d' hz, mulVec_mulVec _ (mt S _), d'.nB_j0, add_mulVec, mulVec_add, e0, zero_add]
  simp only [mulVec_mulVec, Matrix.mul_assoc]

theorem e_eq (hz : d.i₀ *ᵥ z = d'.i₀ *ᵥ z') (hz' : z' ≠ 0) (hN : ∀ n ∈ flagN d', n ∈ flagN d) : d'.e = d.e * (d.qX * d'.e) := by
  apply rat_injective
  rw [rat_mul, rat_mul]
  change d'.jX = d.jX * (d.pX * d'.jX)
  ext k i : 2
  obtain ⟨b, hb⟩ := exists_b hz' i 1
  have e : d.j0 *ᵥ ratV z = d'.j0 *ᵥ ratV z' := (ratV_mulVec _ _).symm.trans ((congrArg ratV hz).trans (ratV_mulVec _ _))
  obtain ⟨u, -, b₁, c, hn⟩ := Decomp.flag_decomp d (hN _ (d'.nB_mem_NFlag b))
  have h1 : mt S (d'.nB b) *ᵥ (d.j0 *ᵥ ratV z) = d.j0 *ᵥ ratV z + d.jX *ᵥ ((u.1 * b₁) *ᵥ ratV z) := by
    rw [hn, mulVec_mulVec, Decomp.flag_unipotent_product_anisotropic_action, add_mulVec, mulVec_mulVec]
  have h2 : mt S (d'.nB b) *ᵥ (d.j0 *ᵥ ratV z) = d.j0 *ᵥ ratV z + d'.jX *ᵥ Pi.single i 1 := by
    rw [e, mulVec_mulVec, d'.nB_j0, add_mulVec, ← mulVec_mulVec, hb]
  have h3 := add_left_cancel (h2.symm.trans h1)
  have h4 : (d.jX * (d.pX * d'.jX)) *ᵥ Pi.single i 1 = d'.jX *ᵥ Pi.single i 1 := by
    rw [← mulVec_mulVec, ← mulVec_mulVec, h3, mulVec_mulVec _ d.pX, d.pX_jX, one_mulVec]
  have := congrFun h4 k
  simp only [mulVec_single_one] at this
  exact this.symm

end

theorem first_eq {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) {ρ : ℕ} (d : HypDec S S₀ ρ) (d' : HypDec S S₀' ρ)
    {z : Fin S₀.rank → D.host.E} {z' : Fin S₀'.rank → D.host.E} (hz : d.i₀ *ᵥ z = d'.i₀ *ᵥ z') (hz0 : z ≠ 0) (hz' : z' ≠ 0)
    (hN : ∀ n, n ∈ flagN d ↔ n ∈ flagN d') (hc : ∀ n ∈ flagN d, psiBes ψ d 1 z n = psiBes ψ d' 1 z' n)
    (r : Fin ρ) (hr : r.1 = 0) (k : Fin S.rank) : d'.e k r = d.e k r := by
  obtain _ | σ := ρ
  · exact r.elim0
  obtain rfl : r = 0 := Fin.ext hr
  have hne := GlobalTheory.Unf.CutChar.exists_psiE_ne_one D ψ hψ
  have e1 := e_eq d d' hz hz' fun n => (hN n).2
  have e2 := e_eq d' d hz.symm hz0 fun n => (hN n).1
  have q1 : d'.qX * d'.e = 1 := d'.e'e
  have hT : (rat (d.qX * d'.e) : Mx D _ _) = d.pX * d'.jX := rat_mul _ _
  generalize d.qX * d'.e = T at e1 hT
  generalize hS : d'.qX * d.e = S' at e2
  have hST : S' * T = 1 := by rw [← hS, Matrix.mul_assoc, ← e1, q1]
  have hX : d.jX = d'.jX * rat S' := (congrArg rat e2).trans (rat_mul _ _)
  have hTS : (rat T : Mx D _ _) * rat S' = 1 := by rw [← rat_mul, mul_eq_one_comm.1 hST, rat_one]
  have hell : ∀ y : Fin (σ + 1) → AE D, ell D (σ + 1) ⬝ᵥ y = y (Fin.last σ) := fun y => by
    rw [dotProduct, Finset.sum_eq_single (Fin.last σ)]
    · simp [ell]
    · intro b _ hb
      rw [ell, if_neg fun e => hb (Fin.ext (by simpa using e)), zero_mul]
    · exact fun h => absurd (Finset.mem_univ _) h
  have hA : ∀ (j j' : Fin (σ + 1)) (t : AE D), j'.1 = j.1 + 1 → ∃ u ∈ UX D (σ + 1), u.1 = 1 + Matrix.single j j' t ∧
      blockX d (d'.levi u) = 1 + Matrix.of fun a b => t * incA D (T a j * S' j' b) := fun j j' t e => by
    obtain ⟨u, hu, hu1⟩ := Decomp.exists_unit (D := D) (T := Matrix.single j j' t) fun a b hab =>
      Matrix.single_apply_of_ne _ _ _ _ _ (by rintro ⟨rfl, rfl⟩; rw [Fin.le_def] at hab; omega)
    refine ⟨u, hu, hu1, ?_⟩
    rw [blockX, hX, ← Matrix.mul_assoc (mt S _), d'.levi_jX, hu1, ← Matrix.mul_assoc, ← Matrix.mul_assoc, ← hT,
      Matrix.mul_add, Matrix.add_mul, Matrix.mul_one, hTS]
    congr 1
    ext a b : 2
    rw [Matrix.mul_apply, Finset.sum_eq_single j', Matrix.mul_single_apply_same, Matrix.of_apply, map_mul]
    · change incA D (T a j) * t * incA D (S' j' b) = _
      ring
    · intro c _ hc
      rw [Matrix.mul_single_apply_of_ne _ _ _ _ _ hc, zero_mul]
    · exact fun h => absurd (Finset.mem_univ _) h
  have H := first_col T S' hST ?_ ?_ ?_
  · rw [e1, Matrix.mul_apply]
    simp only [H, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  · refine eq_of_psiE hne fun t => ?_
    obtain ⟨b, hb⟩ := exists_b hz' (Fin.last σ) t
    have h1 := hc _ ((hN _).2 (d'.nB_mem_NFlag b))
    have h2 : blockX d (d'.nB b) = 1 := by
      rw [blockX, hX, ← Matrix.mul_assoc (mt S _), d'.nB_jX, ← hX, d.pX_jX]
    rw [psiBes_nB, psiBes, simpleSum, h2, upSum_one, zero_add, coefX_nB' d d' hz, hb, hell, hell, ← hT, mulVec_single] at h1
    simp only [map_one, one_mul, Pi.single_eq_same, mul_one] at h1 ⊢
    rw [mul_comm t]
    exact h1
  · intro j j' e a b hab
    obtain ⟨u, hu, -, h2⟩ := hA j j' 1 e
    obtain ⟨u₁, hu₁, b₁, c, hn⟩ := Decomp.flag_decomp d ((hN _).2 (d'.levi_mem_NFlag hu))
    rw [blockX, hn, Decomp.mt_flag_jX, ← Matrix.mul_assoc, d.pX_jX, Matrix.one_mul] at h2
    have h3 := congrFun (congrFun h2 a) b
    rw [Matrix.add_apply, Matrix.of_apply, one_mul] at h3
    have h4 : u₁.1 a b = (1 : Mx D (σ + 1) (σ + 1)) a b := by
      rcases eq_or_lt_of_le hab with rfl | h
      · rw [(hu₁ b b).2, Matrix.one_apply_eq]
      · rw [(hu₁ a b).1 h, Matrix.one_apply_ne h.ne']
    rw [h4, left_eq_add] at h3
    exact incA_injective (h3.trans (map_zero _).symm)
  · intro j j' e
    refine eq_of_psiE hne fun t => ?_
    obtain ⟨u, hu, h1, h2⟩ := hA j j' t e
    have h3 := hc _ ((hN _).2 (d'.levi_mem_NFlag hu))
    have h4 : coefX d z (d'.levi u) = 0 := by
      have := coefX_nB' d d' hz 0
      rw [zero_mulVec, mulVec_zero, coefX_eq d d' hz, d'.nB_zero, GlobalTheory.MixModel.mt_one, one_mulVec] at this
      rw [coefX_eq d d' hz, mulVec_mulVec _ (mt S _), d'.wittDecomp_levi_inclAnisotropic, this]
    have hadd : ∀ M : Mx D (σ + 1) (σ + 1), upSum (1 + M) = upSum M := fun M =>
      Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by
        split_ifs with h
        · rw [Matrix.add_apply, Matrix.one_apply_ne (by rintro rfl; omega), zero_add]
        · rfl
    have h5 : upSum (Matrix.single j j' t : Mx D (σ + 1) (σ + 1)) = t := by
      rw [upSum, Finset.sum_eq_single j, Finset.sum_eq_single j', if_pos e, Matrix.single_apply_same]
      · exact fun b _ hb => if_neg fun e' => hb (Fin.ext (e'.trans e.symm))
      · exact fun h => absurd (Finset.mem_univ _) h
      · exact fun a _ ha => Finset.sum_eq_zero fun b _ => by
          rw [Matrix.single_apply_of_row_ne ha.symm, ite_self]
      · exact fun h => absurd (Finset.mem_univ _) h
    rw [psiBes_levi, psiUni, h1, hadd, h5, psiBes, simpleSum, h2, h4, hadd, dotProduct_zero, add_zero, map_one, one_mul] at h3
    rw [map_one, mul_one, ← h3]
    congr 1

    simp only [upSum, map_sum, Finset.mul_sum, Matrix.of_apply]
    exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by split_ifs <;> simp

end GlobalTheory.FirstVec

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.EqOfPsiE =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlacedBesselPairLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlacedBesselPairLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.HermitianSpaceBaseLatticeEqFrameLattice\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ThetaIdentityOfMapsAll\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsFramedAdapted\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicPointComponentsAtPlacesLatticesVacua\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.EqOfPsiE\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsCompactOpenLatticeStabilizerAtPlaces\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSBesUnscaledDual\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSuppVecLocEq\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RangeBesselAnisotropicEmbeddingEqSecondModelSubg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiStarOfMid\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SmulColMul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section




namespace GlobalTheory.LineIdeal

section Loc

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl GlobalTheory.FinPlLoc NumberField GlobalTheory.AdelicU
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem int_of_loc {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (y : Af F ⊗[F] E)
    (h : ∀ w, Algebra.TensorProduct.map (evalV F w) (AlgHom.id F E) y ∈ intLoc F E w) :
    y ∈ AddSubgroup.closure {y : Af F ⊗[F] E | ∃ a ∈ intAf F, ∃ x : 𝓞 E, y = a ⊗ₜ[F] (x : E)} := by
  have hfg : (stdLattice E 1).FG := Submodule.fg_pi fun _ => by
    rw [← Submodule.one_eq_range]; exact Submodule.fg_unit 1
  have h1 : (fun _ : Fin 1 => y) ∈ latHat F E (stdLattice E 1 : Set _) :=
    (mem_latHat_iff hfg _).2 fun w => mem_latLoc_stdLattice.2 fun _ => h w
  generalize hA : AddSubgroup.closure {y : Af F ⊗[F] E | ∃ a ∈ intAf F, ∃ x : 𝓞 E, y = a ⊗ₜ[F] (x : E)} = A
  have hA' : ∀ a ∈ intAf F, ∀ x : 𝓞 E, a ⊗ₜ[F] (x : E) ∈ A := fun a ha x => hA ▸ AddSubgroup.subset_closure ⟨a, ha, x, rfl⟩
  have key : latHat F E (stdLattice E 1 : Set _) ≤ A.comap (Pi.evalAddMonoidHom (fun _ : Fin 1 => Af F ⊗[F] E) 0) := by
    refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨b, hb, x, hx, rfl⟩
    obtain ⟨r, hr⟩ := hx 0 trivial
    change b ⊗ₜ[F] x 0 ∈ A
    rw [← hr]
    exact hA' b hb r
  exact key h1

theorem loc_of_int {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (y : Af F ⊗[F] E)
    (h : y ∈ AddSubgroup.closure {y : Af F ⊗[F] E | ∃ a ∈ intAf F, ∃ x : 𝓞 E, y = a ⊗ₜ[F] (x : E)}) (w) :
    Algebra.TensorProduct.map (evalV F w) (AlgHom.id F E) y ∈ intLoc F E w := by
  induction h using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨b, hb, x, rfl⟩ := hy
    exact tmul_mem_intLoc (hb w) x
  | zero => rw [map_zero]; exact zero_mem _
  | add y z _ _ hy hz => rw [map_add]; exact add_mem hy hz
  | neg y _ hy => rw [map_neg]; exact neg_mem hy

theorem exists_mulVec_iff {R : Type} [CommRing R] {n : ℕ} (M : GL (Fin n) R) (P : (Fin n → R) → Prop) (w : Fin n → R) :
    (∃ x, P x ∧ M.1 *ᵥ x = w) ↔ P ((M⁻¹).1 *ᵥ w) := by
  constructor
  · rintro ⟨x, hx, e⟩
    rwa [← e, mulVec_mulVec, Units.inv_mul, one_mulVec]
  · exact fun H => ⟨_, H, by rw [mulVec_mulVec, Units.mul_inv, one_mulVec]⟩

variable {D : D7}

theorem int_iff_loc {v : Pl D} {a : AE D} (ha : a ∈ idAt D (· = v)) :
    a ∈ intAt D (· = v) ↔ compAt D v a ∈ intLoc D.host.F D.host.E v := by
  refine ⟨fun h => loc_of_int _ h.2 v, fun h => ⟨ha, int_of_loc _ fun w => ?_⟩⟩
  by_cases e : w = v
  · subst e; exact h
  · have h0 : compAt D w a = 0 := compAt_of_idAt ha e
    change compAt D w a ∈ _
    rw [h0]
    exact zero_mem _

theorem line_loc (V : HSp D) (Λ : Lat V) (hΛ : Λ.FG) (v : Pl D) (g : GA D V) (y₀ : Fin V.rank → AE D)
    (h : ∀ a ∈ idAt D (· = v), mt V g⁻¹ *ᵥ (a • y₀) ∈ GlobalTheory.FinPl.latV V Λ (· = v) ↔ a ∈ intAt D (· = v))
    (c : Fv D.host.F v ⊗[D.host.F] D.host.E) :
    (∃ x ∈ latLoc D.host.F Λ v, (GlobalTheory.AdelicU.matHom _ D.sp.cm.sig V.gram (proj D.sp.cm.sig V.gram v g)).1 *ᵥ x =
      c • vecLoc v (finPart D ∘ y₀)) ↔ c ∈ intLoc D.host.F D.host.E v := by
  obtain ⟨a, ha, hc⟩ := GlobalTheory.StMoves.exists_supp_vecLoc_eq (n := 1) v fun _ => c
  have hc' : compAt D v (a 0) = c := congrFun hc 0
  have hs : ∀ i, (a 0 • y₀) i ∈ idAt D (· = v) := fun i => Ideal.mul_mem_right _ _ (ha 0)
  have e : vecLoc v (finPart D ∘ (a 0 • y₀)) = c • vecLoc v (finPart D ∘ y₀) := by
    funext i
    rw [← hc']
    exact map_mul (compAt D v) (a 0) (y₀ i)
  have key : ∀ (g : GA D V) y, vecLoc v (finPart D ∘ (mt V g *ᵥ y)) =
      (GlobalTheory.AdelicU.matHom _ D.sp.cm.sig V.gram (proj D.sp.cm.sig V.gram v g)).1 *ᵥ vecLoc v (finPart D ∘ y) := fun g y => by
    rw [GlobalTheory.FinPl.KOpen.fin_mulVec]
    exact vecLoc_mulVec D.sp.cm.sig V.gram v g _
  rw [← hc', ← int_iff_loc (ha 0), ← h _ (ha 0), hc',
    GlobalTheory.StMoves.mem_latV_iff_latLoc V Λ hΛ v _ (GlobalTheory.FinPl.KOpen.supp_mulVec V _ _ hs), key, e, map_inv, map_inv]
  exact exists_mulVec_iff _ (· ∈ latLoc D.host.F Λ v) _

end Loc

open scoped InnerProductSpace TensorProduct
open Formalism.BasicNotions Formalism.MainNotions Formalism.DivisionValues Formalism.L2 Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Cx Formalism.IndefR.Links
open Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory NumberField IsDedekindDomain
open Formalism.L2.SG.RowsJoinPinned Formalism.L2.SG.RowDict Formalism.L2.SG.PoincareInHH.PoincareSetting
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.MiS GlobalTheory.Core.Mi
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.MiTop GlobalTheory.SeeSaw GlobalTheory.Fam ValuativeRel IsLocalRing GlobalTheory.FinPl
open Matrix GlobalTheory.GoodPos

section Word

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {h : X.B.I = Formalism.L2.SG.InstExistsPf.instOf D} {u : D.what₂.Word}
  {ψ : AddChar (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF D.host.F) ℂ}

theorem xu_fixes (hE : IdE X) (r : Fin D.R.rS) :
    mt (D.sp.Y 0) ((iotaX X h).symm (1, X.xu u)) *ᵥ ratV (fun k => X.ιE (X.eR r (Fin.cast (rank_eq X h) k))) =
      ratV fun k => X.ιE (X.eR r (Fin.cast (rank_eq X h) k)) := by
  have h1 := (GlobalTheory.Core.SBesLevi.transport_fix D X.B.I X.ιE hE h (rank_eq X h) {X.eR r}
    (Formalism.IndefR.RationalEmbedding.iota D ((iotaX X h).symm (1, X.xu u)))).1
  have e : castGA h.symm (Formalism.IndefR.RationalEmbedding.iota D ((iotaX X h).symm (1, X.xu u))) = (1, X.xu u) :=
    (iotaX X h).apply_symm_apply _
  rw [e] at h1
  refine (GlobalTheory.Core.SBesLevi.bridge_fix D _ _).2 (h1 ⟨?_, ?_⟩ _ rfl)
  · exact one_mem _
  · rintro _ rfl
    exact (X.xu_fix u r).1

theorem first_vec (F₀ : Formalism.L2.Forms.Forms0 D u) (tr : Formalism.L2.SG.ColDict.Transport X u F₀) (hE : IdE X)
    (hψ : IsStdChar D ψ (-1)) (B : SBes X h u ψ (D.sp.X 0)) {μ : D.host.E} (hμ : μ ≠ 0)
    (hz : ∀ k, (B.d.i₀ *ᵥ vecB B.o B.ζ) k = μ * X.ιE (X.zR u (Fin.cast (rank_eq X h) k))) (r : Fin D.R.rS) (hr : r.1 = 0) :
    ∃ s : D.host.E, (s = 1 ∨ s = -1) ∧
      ∀ k, B.d.e k r = s * (μ * (X.B.g : D.host.E) ^ D.R.rS) * X.ιE (X.eR r (Fin.cast (rank_eq X h) k)) := by
  obtain ⟨lam, hl, H⟩ := exists_sBes_scaled_dual D X h u ψ F₀ tr hE hψ
  obtain ⟨B', -, -, hz', he, -⟩ := H μ B.vA hμ
  have hne : ∀ B : SBes X h u ψ (D.sp.X 0), vecB B.o B.ζ ≠ 0 := fun B e => besVec_ne_zero B (by rw [e, mulVec_zero])
  have h1 := GlobalTheory.FirstVec.first_eq hψ B'.d B.d (funext fun k => (hz' k).trans (hz k).symm) (hne B') (hne B)
    (fun n => (B'.tieN n).trans (B.tieN n).symm)
    (fun n hn => star_injective ((B'.tieψ n hn).trans (B.tieψ n ((B.tieN n).2 ((B'.tieN n).1 hn))).symm)) r hr
  rcases hl with rfl | rfl
  · exact ⟨1, Or.inl rfl, fun k => by rw [h1, he, hr, Nat.sub_zero, one_mul]⟩
  · exact ⟨(-1) ^ D.R.rS, neg_one_pow_eq_or _ _, fun k => by rw [h1, he, hr, Nat.sub_zero, neg_pow]; ring⟩

end Word

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Yd : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Yd cX}

end GlobalTheory.LineIdeal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlacedBesselPairLattice =====

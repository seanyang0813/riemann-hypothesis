module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullback
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamComponentWachLetterBasisFiltration
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionBasisDivisibility
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqFiltrationSumAtLevel
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedSubfieldLeCyclotomicExt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionsSpanFullLattice
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionAtRootOfUnity
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullbackRecord, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeExpansionAtLowLevelPoints

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullbackRecord =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullbackRecord", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

namespace GlobalTheory.NL.LowLevel



theorem expansions_low_and_pullback_record : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (locT : ∀ (l : ℕ) [Fact l.Prime], Formalism.BasicNotions.LocTied l (loc l) (locA l)) (HW : HWOf loc) (F : FonOf loc locA HW) (Cm : CmpOf loc locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; let C := Cm l; ∀ T : Lt K LL, IsCrys ((loc l).PD K) T.ρ → (∀ (i : Let K) (ζ : ↥LL.1), (∃ m : ℕ, ζ ^ (((loc l).PD K).p ^ m) = 1) → PowerSeries.constantCoeff (W.lev i ζ W.X) = 0 → (∀ (x : ↥(W.N T)) (k : ℤ), W.levN T i ζ ((letE i : AA K LL) • x) k ∈ ιDi W T i ∧ (k < 0 → W.levN T i ζ x k = 0)) ∧ Submodule.span ↥LL.1 (Set.range fun x : ↥(W.N T) => W.levN T i ζ ((letE i : AA K LL) • x) 0) = ιDi W T i) ∧ ∀ (i : Let K) (ζ : ↥LL.1) τ, ptK loc HW h i ζ τ → (∀ (x : ↥(W.N T)) (k : ℕ) (hk : W.Q ^ k • W.φD T x ∈ W.N T) (j : ℤ), W.levN T i ζ ⟨_, hk⟩ j ∈ ιDi W T i ∧ (j < k → W.levN T i ζ ⟨_, hk⟩ j = 0)) ∧ Submodule.span ↥LL.1 {w | ∃ (x : ↥(W.N T)) (k : ℕ) (hk : W.Q ^ k • W.φD T x ∈ W.N T), w = W.levN T i ζ ⟨_, hk⟩ k} = ιDi W T i :=
  expansions_low_and_pullback

end GlobalTheory.NL.LowLevel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullbackRecord =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeExpansionAtLowLevelPoints =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeExpansionAtLowLevelPoints", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamComponentWachLetterBasisFiltration\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullback\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpansionsLowAndPullbackRecord\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionBasisDivisibility\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqFiltrationSumAtLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedSubfieldLeCyclotomicExt\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionsSpanFullLattice\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionAtRootOfUnity\nimport Mathlib.Algebra.Lie.OfAssociative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

namespace GlobalTheory.NL.LatLevel

section Series

variable {LL M : Type} [Field LL] [AddCommGroup M] [Module LL M]

theorem conv_smul (c : LL) (e : PowerSeries LL) (f : ℤ → M) : conv (c • e) f = c • conv e f := by
  funext k
  unfold conv
  simp only [Pi.smul_apply, map_smul, smul_eq_mul, mul_smul]
  rw [smul_finsum]

theorem conv_congr (e e' : PowerSeries LL) (f : ℤ → M) (a m : ℕ)
    (hf : ∀ r : ℤ, r < -(a : ℤ) → f r = 0) (hd : PowerSeries.X ^ m ∣ e - e') (r : ℤ)
    (hr : r < (m : ℤ) - a) : conv e f r = conv e' f r := by
  by_cases h : r < -(a : ℤ)
  · rw [LatFil.conv_vanish e f _ hf r h, LatFil.conv_vanish e' f _ hf r h]
  · obtain ⟨q, rfl⟩ : ∃ q : ℕ, r = (q : ℤ) - a := ⟨(r + a).toNat, by omega⟩
    rw [LatFil.conv_eq_sum e f a hf, LatFil.conv_eq_sum e' f a hf]
    refine Finset.sum_congr rfl fun j hj => ?_
    have hj' : j < m := by have := Finset.mem_range.1 hj; omega
    have := (PowerSeries.X_pow_dvd_iff.1 hd) j hj'
    rw [map_sub, sub_eq_zero] at this
    rw [this]

theorem approx_step (bb c cc : LL) (e q : PowerSeries LL) (f : ℤ → M) (a m : ℕ)
    (hf : ∀ r : ℤ, r < -(a : ℤ) → f r = 0) (hd : PowerSeries.X ^ m ∣ PowerSeries.C c * q - e)
    (hcc : bb * c = cc) (r : ℤ) (hr : r < (m : ℤ) - a) : bb • conv e f r = conv (PowerSeries.C cc * q) f r := by
  subst hcc
  have h1 : bb • conv e f r = conv (PowerSeries.C bb * e) f r := by
    rw [← PowerSeries.smul_eq_C_mul, conv_smul]
    rfl
  rw [h1]
  refine conv_congr _ _ f a m hf ?_ r hr
  have h2 : PowerSeries.C bb * e - PowerSeries.C (bb * c) * q = -(PowerSeries.C bb * (PowerSeries.C c * q - e)) := by
    rw [map_mul]
    ring
  rw [h2, dvd_neg]
  exact Dvd.dvd.mul_left hd _

end Series

end GlobalTheory.NL.LatLevel

namespace GlobalTheory.NL.LatLevel


private theorem exists_smul_expansion_eq {O L A N M J : Type}
    [CommRing O] [Field L] [Algebra O L] [IsFractionRing O L]
    [CommRing A] [Algebra O A] [AddCommGroup N] [Module A N]
    [AddCommGroup M] [Module L M] [Fintype J]
    (lev : A →ₐ[O] PowerSeries L) (expansion : N →+ (ℤ → M)) (basis : J → N)
    (hsupp : ∀ j, ∃ a : ℤ, ∀ r < a, expansion (basis j) r = 0)
    (hsmul : ∀ a x, expansion (a • x) = conv (lev a) (expansion x))
    (hdense : ∀ (e : PowerSeries L) (m : ℕ),
      ∃ (a : A) (c : L), c ≠ 0 ∧ PowerSeries.X ^ m ∣ c • lev a - e)
    {f : ℤ → M} (hcoeff : ∃ e : J → PowerSeries L,
      f = ∑ j, conv (e j) (expansion (basis j))) (k : ℤ) :
    ∃ (x : N) (c : L), c ≠ 0 ∧ ∀ r ≤ k, c • expansion x r = f r := by
  obtain ⟨e, he⟩ := hcoeff
  choose bound hbound using hsupp
  let a₀ := ∑ j, (-bound j).toNat
  have ha₀ (j : J) (r : ℤ) (hr : r < -(a₀ : ℤ)) : expansion (basis j) r = 0 := by
    apply hbound j r
    have hle : (-bound j).toNat ≤ a₀ :=
      Finset.single_le_sum (f := fun j => (-bound j).toNat) (fun _ _ => Nat.zero_le _)
        (Finset.mem_univ j)
    omega
  obtain ⟨m, hm⟩ : ∃ m : ℕ, k < (m : ℤ) - a₀ := ⟨(k + a₀ + 1).toNat, by omega⟩
  choose a c _ hca using fun j => hdense (e j) m
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors O)
    (Finset.univ : Finset J) c
  choose o ho using fun j => hb j (Finset.mem_univ j)
  let bL : L := algebraMap O L (b : O)
  have hb0 : bL ≠ 0 := (IsLocalization.map_units L b).ne_zero
  let coeff (j : J) := algebraMap O A (o j) * a j
  let x := ∑ j, coeff j • basis j
  have hx : expansion x = ∑ j, conv (lev (coeff j)) (expansion (basis j)) := by
    change expansion (∑ j, coeff j • basis j) = _
    rw [map_sum]
    exact Finset.sum_congr rfl (fun j _ => hsmul (coeff j) (basis j))
  refine ⟨x, bL⁻¹, inv_ne_zero hb0, fun r hr => ?_⟩
  have hkey : bL • f r = expansion x r := by
    rw [he, hx, Finset.sum_apply, Finset.smul_sum, Finset.sum_apply]
    refine Finset.sum_congr rfl fun j _ => ?_
    have hlev : lev (coeff j) = PowerSeries.C (algebraMap O L (o j)) * lev (a j) := by
      change lev (algebraMap O A (o j) * a j) = _
      rw [map_mul, lev.commutes, PowerSeries.algebraMap_apply]
    have hca' : PowerSeries.X ^ m ∣ PowerSeries.C (c j) * lev (a j) - e j :=
      PowerSeries.smul_eq_C_mul (lev (a j)) (c j) ▸ hca j
    have ho' : bL * c j = algebraMap O L (o j) :=
      (Algebra.smul_def (b : O) (c j)).symm.trans (ho j).symm
    exact (approx_step bL (c j) _ (e j) (lev (a j)) (expansion (basis j))
      a₀ m (ha₀ j) hca' ho' r (hr.trans_lt hm)).trans
      (congrArg (fun p => conv p (expansion (basis j)) r) hlev.symm)
  exact (congrArg (fun y : M => bL⁻¹ • y) hkey.symm).trans (inv_smul_smul₀ hb0 _)

set_option maxHeartbeats 20000000 in
set_option synthInstance.maxHeartbeats 200000 in
theorem lattice_at_level : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (locT : ∀ (l : ℕ) [Fact l.Prime], Formalism.BasicNotions.LocTied l (loc l) (locA l)) (HW : HWOf loc) (F : FonOf loc locA HW)
    (Cm : CmpOf loc locA HW F), p4L loc HW locA F Cm := by
  intro loc locA locT HW F Cm l _ K s LL h T hT
  have hP4a := GlobalTheory.NL.LowLevel.expansions_low_and_pullback_record loc locA locT HW F Cm l K s LL h T hT
  unfold p4
  refine ⟨hP4a.1, ?_⟩
  intro i ζ τ hpt
  let W := (HW l).W K s LL h
  let tie := ((Cm l).C K s LL h).tie
  let expansion := tie.levB T i ζ
  let embed := ιV ((loc l).PD K) (LL := ↥LL.1) (V := T.V)
  let letter : AA K LL := letE i
  have hlevN (x) (j) : W.levN T i ζ x j = embed (expansion x j) := tie.levN_eq T i ζ x j
  have hlat := LatFil.lat_eq_fil loc locA locT HW F Cm l K s LL h T hT i ζ τ hpt
  refine ⟨hP4a.2 i ζ τ hpt, ?_, ?_⟩
  · intro x k
    let y := letter • x
    have hmem : ex (Cm l) h T i ζ y ∈ Lat (Cm l) h T i ζ :=
      Submodule.subset_span ⟨1, y, (LowLevel.conv_one (LL := ↥LL.1) (expansion y)).symm⟩
    have hk := ((hlat _).1 hmem).2 k
    exact (hlevN y k).symm ▸ ⟨Submodule.mem_map_of_mem hk.1, hk.2⟩
  · intro k w hw
    have hpoint := (GlobalTheory.NL.Points.points loc HW l K s LL h).2.1 i ζ τ hpt
    have hprim := hpoint.1
    refine hpoint.2.2.elim fun ι hcomp => ?_
    have hC := GlobalTheory.NL.CompD.component loc locA locT HW l K s LL h T hT i ζ τ ι hcomp hpoint.2.1
    have hw' : w ∈ DdRE ((loc l).PD K) T.ρ τ ⊓ FilV ((loc l).PD K) (LL := ↥LL.1) (V := T.V) (-k) := hw
    refine (hC.2.2.1 w (Submodule.mem_inf.1 hw').1).elim fun d hd => ?_
    have hdw := hd.2
    have hdF : embed d ∈ FilAt ((loc l).PD K) T τ (-k) := by
      have hsum : w + (embed d - w) = embed d :=
        (add_comm _ _).trans (sub_add_cancel (embed d) w)
      exact hsum ▸ Submodule.add_mem_sup hw hdw
    let f : ℤ → T.V ⊗[ℚ_[l]] (loc l).R.B := Pi.single k d
    have hf_same : f k = d :=
      Pi.single_eq_same (M := fun _ => T.V ⊗[ℚ_[l]] (loc l).R.B) k d
    have hf_ne {r : ℤ} (hr : r ≠ k) : f r = 0 :=
      Pi.single_eq_of_ne (M := fun _ => T.V ⊗[ℚ_[l]] (loc l).R.B) hr d
    have hsingle : f ∈ Lat (Cm l) h T i ζ := by
      refine (hlat f).2 ⟨⟨k, fun r hr => hf_ne hr.ne⟩, fun r => ?_⟩
      by_cases hr : r = k
      · subst r
        exact hf_same.symm ▸ ⟨hd.1, hdF⟩
      · have hzero := (congrArg (fun z => embed z) (hf_ne hr)).trans embed.map_zero
        exact ⟨(hf_ne hr).symm ▸ zero_mem _, hzero.symm ▸ zero_mem _⟩
    have hfull := _root_.GlobalTheory.NL.FullLevel.full_lat loc locA locT HW F Cm l K s LL h T hT i ζ hprim
    refine (@GlobalTheory.NL.N_basis loc locA HW F l _ K s LL h T hT).elim fun nb => ?_
    have hli := _root_.GlobalTheory.NL.LevInj.expansion_basis loc locA locT HW F Cm l K s LL h T hT i ζ ⟨s, hprim⟩ hfull
    have hdense := (GlobalTheory.NL.WDiv.weierstrass_dense loc HW l K s LL h).2.2.1 i ζ ⟨s, hprim⟩
    have : FiniteDimensional ℚ_[l] ↥LL.1 := LL.2
    have : IsFractionRing ↥(OL LL) ↥LL.1 :=
      integralClosure.isFractionRing_of_finite_extension ℚ_[l] ↥LL.1
    have hagree := exists_smul_expansion_eq (W.lev i ζ) expansion (fun j => nb j)
      (fun j => tie.levB_supp T i ζ (nb j)) hli.1 hdense ((hli.2 _ nb).2.1 f hsingle) k
    refine hagree.elim fun x hexists => ?_
    refine hexists.elim fun c hc => ?_
    have hl1 : W.lev i ζ letter = 1 :=
      (GlobalTheory.NL.lev_at_root_of_unity loc HW l K s LL h i ζ ⟨s, hprim⟩).2.1
    let expansionN := W.levN T i ζ
    have hN1 (j : ℤ) : expansionN (letter • x) j = embed (expansion x j) := calc
      _ = conv (W.lev i ζ letter) (expansionN x) j := W.levN_smul T i ζ letter x j
      _ = conv (1 : PowerSeries ↥LL.1) (expansionN x) j :=
        congrArg (fun p => conv p (expansionN x) j) hl1
      _ = expansionN x j := congrFun (LowLevel.conv_one (LL := ↥LL.1) (expansionN x)) j
      _ = _ := hlevN x j
    have hscaled (j : ℤ) (hj : j ≤ k) : c • expansionN (letter • x) j = embed (f j) := calc
      _ = c • embed (expansion x j) := congrArg (fun z => c • z) (hN1 j)
      _ = embed (c • expansion x j) := (embed.map_smul c (expansion x j)).symm
      _ = _ := congrArg (fun z => embed z) (hc.2 j hj)
    refine ⟨x, c, hc.1, fun j hj => ?_, ?_⟩
    · have hz := (hscaled j hj.le).trans ((congrArg (fun z => embed z) (hf_ne hj.ne)).trans embed.map_zero)
      exact hz.symm ▸ zero_mem _
    · have heq := (hscaled k le_rfl).trans (congrArg (fun z => embed z) hf_same)
      exact heq.symm ▸ Submodule.mem_sup_right hdw

end GlobalTheory.NL.LatLevel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeExpansionAtLowLevelPoints =====

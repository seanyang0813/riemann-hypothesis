module

public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NoLeak
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesStabilizerActsOnTerms
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IndexMeasureIntegralTransportAndChange
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BasisOfIsCompl
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsEqZpowMulUnit
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameUnipotentUnitriangular
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetTermBasicFacts
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RelIndexSpanLatticeMatrixDetNorm
public import Development.AbelianVarietyTheory.Definitions.Foundations.IsHermND
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DualInterSelfDualHermitianLatticeSubspace
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermExponentsNonnegAndDefectGroupBound
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetMoveTermWeightCharacter
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.Cint
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianMovesTotalMeasureEstimates
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMovesFiniteTargetsSplit
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetInFamilyMovedOfNotLeak
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermInvariantsIndependentOfWitnesses
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.InvVolMulPosLeConj
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CommonStabilizerStabilizersCommensurableVolume
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetMassLeAndFinite
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
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.Style
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.TypeStar
import Mathlib.Analysis.Complex.Norm
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IndexMeasureIntegralLinearPositiveNormBound
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormAdditiveCharacterTypePrimeEqOne
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.MoveLatticeIsTermSameDatumWithWitnesses

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameMovesKernelCommonStabilizerSmulEq, Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameLatticeTraceInitialSpanVolumeEq, Development.AbelianVarietyTheory.Proofs.FlagMeasures.SelfDualHermitianLatticeTraceOrthogonalVolumeRat, Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFamilyTraceVolumeConst, Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesReferenceSubgroupsRelIndexEq, Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMoveKernelSymm, Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelBoundByWeight, Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelRowSumNearOne, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSymmInvariantKernelHermitianFrames, Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormOrbitSumLeOfSymmKernel, Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeLeMassSecondTypeFamily

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameMovesKernelCommonStabilizerSmulEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameMovesKernelCommonStabilizerSmulEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NoLeak\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesStabilizerActsOnTerms\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IndexMeasureIntegralTransportAndChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL GlobalTheory.IdxInt MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.KernInv

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E]
variable {L : LocE F E} {r k : ℕ} (S : Frames L r k)

def mvEquiv (h : S.GLV) : S.MW ≃+ S.MW :=
  (h.toAddEquiv.prodCongr h.toAddEquiv).prodCongr (h.toAddEquiv.prodCongr (AddEquiv.refl E))

end GlobalTheory.HL.KernInv

namespace GlobalTheory.HL

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma form_apply_apply_of_mem_St {h : S.GLV}
    (hh : h ∈ S.St) (x y : S.V) :
    S.h (h x) (h y) = S.h x y := by
  unfold _root_.GlobalTheory.HL.Frames.St at hh
  have hN := (Subgroup.mem_inf.mp hh).1
  unfold _root_.GlobalTheory.HL.Frames.N _root_.GlobalTheory.HL.Frames.Nof at hN
  have hI := (Subgroup.mem_inf.mp (Subgroup.mem_inf.mp hN).1).1
  unfold _root_.GlobalTheory.HL.isomG at hI
  unfold _root_.GlobalTheory.HL.Frames.h
  exact hI x y

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma addSubgroup_eq_map_of_apply_mem_iff {M : Type} [AddCommGroup M] (e : M ≃+ M)
    (A B : AddSubgroup M) (hAB : ∀ w, e w ∈ B ↔ w ∈ A) : B = A.map e.toAddMonoidHom := by
  ext w
  constructor
  · intro hw
    exact ⟨e.symm w, (hAB _).mp (by simpa using hw), by simp⟩
  · rintro ⟨w, hw, rfl⟩
    exact (hAB w).mpr hw

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma mem_refB_iff (J : ℕ) (Λ : Submodule L.O S.V) (a b : S.V) :
    (a, b) ∈ S.refB J Λ ↔ a ∈ S.spanTo S.f J ∧ b ∈ S.spanTo S.f' J ∧
      ∃ y ∈ Λ, a + b = (algebraMap F E) S.th • y := by
  unfold _root_.GlobalTheory.HL.Frames.refB
  simp only [AddSubgroup.mem_inf, AddSubgroup.mem_prod, AddSubgroup.mem_comap, AddSubgroup.mem_map,
    Submodule.mem_toAddSubgroup, and_assoc]
  exact Iff.rfl.and (Iff.rfl.and (exists_congr fun _ => Iff.rfl.and eq_comm))

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma apply_mem_sup_iff_of_apply_mem_iff (h : S.GLV) (A B : Submodule E S.V)
    (hA : ∀ v, h v ∈ A ↔ v ∈ A) (hB : ∀ v, h v ∈ B ↔ v ∈ B) (v : S.V) :
    h v ∈ A ⊔ B ↔ v ∈ A ⊔ B := by
  simp only [Submodule.mem_sup]
  constructor
  · rintro ⟨y, hy, z, hz, hyz⟩
    refine ⟨h.symm y, (hA _).mp (by simpa using hy), h.symm z, (hB _).mp (by simpa using hz), ?_⟩
    rw [← map_add (f := _), hyz, LinearEquiv.symm_apply_apply]
  · rintro ⟨y, hy, z, hz, rfl⟩
    exact ⟨h y, (hA y).mpr hy, h z, (hB z).mpr hz, (map_add h y z).symm⟩

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma apply_mem_perp_Ysp_iff_of_mem_St {h : S.GLV}
    (hh : h ∈ S.St) (J : ℕ) (u : S.V) :
    h u ∈ _root_.GlobalTheory.HL.perp L S.Hm (S.Ysp J) ↔
      u ∈ _root_.GlobalTheory.HL.perp L S.Hm (S.Ysp J) := by
  have hform : ∀ x y, _root_.GlobalTheory.HL.hf L S.Hm (h x) (h y) =
      _root_.GlobalTheory.HL.hf L S.Hm x y := form_apply_apply_of_mem_St S hh
  have hY : ∀ v, h v ∈ S.Ysp J ↔ v ∈ S.Ysp J := by
    unfold _root_.GlobalTheory.HL.Frames.Ysp
    exact apply_mem_sup_iff_of_apply_mem_iff S h _ _
      (_root_.GlobalTheory.FrameAct.spanTo_iff S h hh J)
      (_root_.GlobalTheory.FrameAct.spanTo_iff' S h hh J)
  unfold _root_.GlobalTheory.HL.perp
  show (∀ y ∈ S.Ysp J, _ = 0) ↔ (∀ y ∈ S.Ysp J, _ = 0)
  constructor
  · intro H y hy
    rw [← hform]
    exact H _ ((hY y).mpr hy)
  · intro H y hy
    have hyy : h (h.symm y) = y := h.apply_symm_apply y
    rw [← hyy, hform]
    exact H _ ((hY _).mp (hyy.symm ▸ hy))

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma coe_smul_submodule_eq_iff_of_apply_mem_iff (h : S.GLV) (Λ₁ : Submodule L.O S.V) (P Q : Set S.V)
    (hPQ : ∀ v, h v ∈ Q ↔ v ∈ P) :
    ((h • Λ₁ : Submodule L.O S.V) : Set S.V) = Q ↔ (Λ₁ : Set S.V) = P := by
  simp only [Set.ext_iff, SetLike.mem_coe]
  rw [h.surjective.forall]
  simp only [_root_.GlobalTheory.FrameAct.mem_smul_iff, hPQ]

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma eich_apply_apply_of_mem_St {h : S.GLV}
    (hh : h ∈ S.St) (a b v : S.V) (c : E) :
    _root_.GlobalTheory.HL.eich L S.Hm (h a) (h b) c (h v) = h (_root_.GlobalTheory.HL.eich L S.Hm a b c v) := by
  have hform : ∀ x y, _root_.GlobalTheory.HL.hf L S.Hm (h x) (h y) =
      _root_.GlobalTheory.HL.hf L S.Hm x y := form_apply_apply_of_mem_St S hh
  unfold _root_.GlobalTheory.HL.eich
  rw [hform, hform]
  simp only [map_add (f := _), map_sub, map_smul]

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
private lemma apply_mem_moved_smul_iff_of_mem_St {h : S.GLV}
    (hh : h ∈ S.St) (Λ : Submodule L.O S.V) (a b v : S.V) (c : E) :
    h v ∈ S.moved (h • Λ) (h a) (h b) c ↔ v ∈ S.moved Λ a b c := by
  unfold _root_.GlobalTheory.HL.Frames.moved
  show _root_.GlobalTheory.HL.eich L S.Hm (h a) (h b) c (h v) ∈ h • Λ ↔
    _root_.GlobalTheory.HL.eich L S.Hm a b c v ∈ Λ
  rw [eich_apply_apply_of_mem_St S hh, _root_.GlobalTheory.FrameAct.mem_smul_iff]


open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] in
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] in
variable {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ} (S : _root_.GlobalTheory.HL.Frames L r k) in
theorem _root_.GlobalTheory.HL.kern_smul_eq : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : _root_.Formalism.MainNotions.S.Loc.LocE F E), ∀ (r k : ℕ) (S : _root_.GlobalTheory.HL.Frames L r k), ∀ (d : S.Datum) (Λ : Submodule L.O S.V), S.IsTerm d Λ → ∀ (β J βJ : ℕ) (Λ₁ : Submodule L.O S.V), ∀ h ∈ S.St, S.kern β J βJ d (h • Λ) (h • Λ₁) = S.kern β J βJ d Λ Λ₁ := by
  intro F _ _ _ _ _ E _ _ _ L r k S d Λ hT β J βJ Λ₁ h hh
  have hform := form_apply_apply_of_mem_St S hh
  have hmove := (_root_.GlobalTheory.FrameAct.stabiliser_acts_on_terms L r k S d Λ hT h hh).2.2.2.2.2.2.2.2.2.2
  have hA : S.refA J (h • Λ) =
      (S.refA J Λ).map (_root_.GlobalTheory.HL.KernInv.mvEquiv S h).toAddMonoidHom := by
    refine addSubgroup_eq_map_of_apply_mem_iff _ _ _ ?_
    rintro ⟨⟨a, b⟩, u, t⟩
    unfold _root_.GlobalTheory.HL.Frames.refA
    simp only [AddSubgroup.mem_prod]
    change (h a, h b) ∈ S.refB J (h • Λ) ∧ h u ∈ S.refU J (h • Λ) ∧ t ∈ S.refT ↔
      (a, b) ∈ S.refB J Λ ∧ u ∈ S.refU J Λ ∧ t ∈ S.refT
    rw [mem_refB_iff, mem_refB_iff, ← map_add (f := _),
      _root_.GlobalTheory.FrameAct.spanTo_iff S h hh,
      _root_.GlobalTheory.FrameAct.spanTo_iff' S h hh]
    have hth := _root_.GlobalTheory.FrameAct.inTh_iff S h Λ (a + b)
    unfold _root_.GlobalTheory.HL.Frames.InTh at hth
    rw [hth]
    unfold _root_.GlobalTheory.HL.Frames.refU
    simp only [AddSubgroup.mem_inf, Submodule.mem_toAddSubgroup,
      _root_.GlobalTheory.FrameAct.mem_smul_iff, apply_mem_perp_Ysp_iff_of_mem_St S hh]
  have hP : ∀ w, _root_.GlobalTheory.IdxInt.ind (S.MvTo J d (h • Λ) (h • Λ₁))
      (_root_.GlobalTheory.HL.KernInv.mvEquiv S h w) = _root_.GlobalTheory.IdxInt.ind (S.MvTo J d Λ Λ₁) w := by
    rintro ⟨⟨a, b⟩, u, t⟩
    have hs : S.sOf ((h a, h b), (h u, t)) = S.sOf ((a, b), (u, t)) := by
      unfold _root_.GlobalTheory.HL.Frames.sOf
      simp only [hform]
    have hiff : S.MvTo J d (h • Λ) (h • Λ₁) ((h a, h b), (h u, t)) ↔
        S.MvTo J d Λ Λ₁ ((a, b), (u, t)) := by
      unfold _root_.GlobalTheory.HL.Frames.MvTo _root_.GlobalTheory.HL.Frames.Mv
      change S.IsMove J d (h • Λ) (h a) (h b) (h u) (S.sOf ((h a, h b), (h u, t))) ∧
          ((h • Λ₁ : Submodule L.O S.V) : Set S.V) =
            S.moved (h • Λ) (h a) (h u) (S.sOf ((h a, h b), (h u, t))) ↔
        S.IsMove J d Λ a b u (S.sOf ((a, b), (u, t))) ∧
          (Λ₁ : Set S.V) = S.moved Λ a u (S.sOf ((a, b), (u, t)))
      rw [hs]
      exact and_congr (hmove J a b u _).symm
        (coe_smul_submodule_eq_iff_of_apply_mem_iff S h Λ₁ _ _ fun v => apply_mem_moved_smul_iff_of_mem_St S hh Λ a u v _)
    unfold _root_.GlobalTheory.IdxInt.ind
    exact if_congr hiff rfl rfl
  unfold _root_.GlobalTheory.HL.Frames.kern
  rw [hA, (_root_.GlobalTheory.IdxInt.Transport.cint_map_and_change.1 _ _ _).2]
  simp only [hP]

end GlobalTheory.HL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameMovesKernelCommonStabilizerSmulEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameLatticeTraceInitialSpanVolumeEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameLatticeTraceInitialSpanVolumeEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BasisOfIsCompl\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsEqZpowMulUnit\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameUnipotentUnitriangular\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetTermBasicFacts\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RelIndexSpanLatticeMatrixDetNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.TraceVol

def dfam {E V ι : Type} [CommRing E] [AddCommGroup V] [Module E V] (t : E) (g g' : ι → V) : ι ⊕ ι → V :=
  Sum.elim g fun b => t • (g' b - g b)

section
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F]
  {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] {L : LocE F E} {r k : ℕ}

end

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem unitriangular_sum_castLE_eq {E V : Type} [CommRing E] [AddCommGroup V] [Module E V]
    {m J : ℕ} (hJ : J ≤ m) (b : Fin m → V) (s : Fin m → Fin m → E)
    (hs : ∀ i j, j < i → s i j = 0) (j : Fin J) :
    ∑ i, s i (Fin.castLE hJ j) • b i =
      ∑ i : Fin J, s (Fin.castLE hJ i) (Fin.castLE hJ j) • b (Fin.castLE hJ i) := by
  rw [show (∑ i : Fin J, s (Fin.castLE hJ i) (Fin.castLE hJ j) • b (Fin.castLE hJ i)) =
      ∑ i ∈ Finset.univ.map (Fin.castLEEmb hJ), s i (Fin.castLE hJ j) • b i from
    by rw [Finset.sum_map]; rfl]
  symm
  refine Finset.sum_subset (Finset.subset_univ _) fun i _ hi => ?_
  have hiJ : ¬ (i : ℕ) < J := fun h => hi (Finset.mem_map.2 ⟨⟨i, h⟩, Finset.mem_univ _, rfl⟩)
  rw [hs i _ (by rw [Fin.lt_def]; simp; omega), zero_smul]

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem span_image_frameScaledDifferenceFamily_eq_lemma_3 {E V : Type} [CommRing E] [AddCommGroup V]
    [Module E V] (O : Subring E) {m J : ℕ} (hJ : J ≤ m) (f f' : Fin m → V)
    (s s' : Matrix (Fin m) (Fin m) E) (hs : ∀ i j, j < i → s i j = 0)
    (hs' : ∀ i j, j < i → s' i j = 0) (θ : E) :
    Submodule.span O (_root_.GlobalTheory.HL.TraceVol.dfam θ (fun j => ∑ i, s i j • f i)
        (fun j => ∑ i, s' i j • f' i) ''
        {a | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J}) =
      Submodule.span O (Set.range fun j => ∑ i, Matrix.fromBlocks (s.submatrix (Fin.castLE hJ) (Fin.castLE hJ))
        (-(θ • s.submatrix (Fin.castLE hJ) (Fin.castLE hJ))) 0
        (θ • s'.submatrix (Fin.castLE hJ) (Fin.castLE hJ)) i j •
          Sum.elim (fun i => f (Fin.castLE hJ i)) (fun i => f' (Fin.castLE hJ i)) i) := by
  have hpt : ∀ a : Fin J ⊕ Fin J, (∑ i, Matrix.fromBlocks (s.submatrix (Fin.castLE hJ) (Fin.castLE hJ))
        (-(θ • s.submatrix (Fin.castLE hJ) (Fin.castLE hJ))) 0
        (θ • s'.submatrix (Fin.castLE hJ) (Fin.castLE hJ)) i a •
          Sum.elim (fun i => f (Fin.castLE hJ i)) (fun i => f' (Fin.castLE hJ i)) i) =
      _root_.GlobalTheory.HL.TraceVol.dfam θ (fun j => ∑ i, s i j • f i) (fun j => ∑ i, s' i j • f' i)
        (Sum.map (Fin.castLE hJ) (Fin.castLE hJ) a) := by
    intro a
    rcases a with j | j
    · rw [Fintype.sum_sum_type]
      simp only [Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₂₁, Matrix.submatrix_apply,
        Sum.elim_inl, Sum.elim_inr, Matrix.zero_apply, zero_smul, Finset.sum_const_zero, add_zero,
        _root_.GlobalTheory.HL.TraceVol.dfam, Sum.map_inl]
      rw [unitriangular_sum_castLE_eq hJ f s hs j]
    · rw [Fintype.sum_sum_type]
      simp only [Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₂, Sum.elim_inl, Sum.elim_inr, _root_.GlobalTheory.HL.TraceVol.dfam, Sum.map_inr]
      rw [unitriangular_sum_castLE_eq hJ f s hs j, unitriangular_sum_castLE_eq hJ f' s' hs' j]
      simp only [Matrix.neg_apply, Matrix.smul_apply, Matrix.submatrix_apply, neg_smul, smul_sub,
        Finset.smul_sum, smul_smul, smul_eq_mul, Finset.sum_neg_distrib]
      abel
  have hset : _root_.GlobalTheory.HL.TraceVol.dfam θ (fun j => ∑ i, s i j • f i)
        (fun j => ∑ i, s' i j • f' i) ''
        {a | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J} =
      Set.range fun a : Fin J ⊕ Fin J => _root_.GlobalTheory.HL.TraceVol.dfam θ (fun j => ∑ i, s i j • f i)
        (fun j => ∑ i, s' i j • f' i) (Sum.map (Fin.castLE hJ) (Fin.castLE hJ) a) := by
    ext x
    constructor
    · rintro ⟨a, ha, rfl⟩
      rcases a with i | i
      · exact ⟨Sum.inl ⟨i, ha⟩, rfl⟩
      · exact ⟨Sum.inr ⟨i, ha⟩, rfl⟩
    · rintro ⟨a, rfl⟩
      rcases a with i | i
      · exact ⟨Sum.inl (Fin.castLE hJ i), by simp, rfl⟩
      · exact ⟨Sum.inr (Fin.castLE hJ i), by simp, rfl⟩
  rw [hset]
  congr 2
  funext a
  exact (hpt a).symm

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem dfam_mem_lower_span {E V : Type} [CommRing E] [AddCommGroup V]
    [Module E V] {m : ℕ} (f f' g g' : Fin m → V) (t : E)
    (hg : ∀ j, g j - f j ∈ Submodule.span E (f '' {i | i < j}))
    (hg' : ∀ j, g' j - f' j ∈ Submodule.span E (f' '' {i | i < j})) (J : ℕ) (a : Fin m ⊕ Fin m)
    (ha : Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J) :
    _root_.GlobalTheory.HL.TraceVol.dfam t g g' a ∈
      Submodule.span E (f '' {i | (i : ℕ) < J}) ⊔ Submodule.span E (f' '' {i | (i : ℕ) < J}) := by
  have hf : ∀ j : Fin m, (j : ℕ) < J → g j ∈ Submodule.span E (f '' {i | (i : ℕ) < J}) := by
    intro j hj
    have h1 : f j ∈ Submodule.span E (f '' {i | (i : ℕ) < J}) :=
      Submodule.subset_span ⟨j, hj, rfl⟩
    have hs : {i : Fin m | i < j} ⊆ {i : Fin m | (i : ℕ) < J} :=
      fun _ hi => lt_trans (Fin.lt_def.1 hi) hj
    have h2 : g j - f j ∈ Submodule.span E (f '' {i | (i : ℕ) < J}) :=
      Submodule.span_mono (Set.image_mono hs) (hg j)
    simpa using Submodule.add_mem _ h2 h1
  have hf' : ∀ j : Fin m, (j : ℕ) < J → g' j ∈ Submodule.span E (f' '' {i | (i : ℕ) < J}) := by
    intro j hj
    have h1 : f' j ∈ Submodule.span E (f' '' {i | (i : ℕ) < J}) :=
      Submodule.subset_span ⟨j, hj, rfl⟩
    have hs : {i : Fin m | i < j} ⊆ {i : Fin m | (i : ℕ) < J} :=
      fun _ hi => lt_trans (Fin.lt_def.1 hi) hj
    have h2 : g' j - f' j ∈ Submodule.span E (f' '' {i | (i : ℕ) < J}) :=
      Submodule.span_mono (Set.image_mono hs) (hg' j)
    simpa using Submodule.add_mem _ h2 h1
  rcases a with j | j
  · exact Submodule.mem_sup_left (hf j ha)
  · exact Submodule.smul_mem _ _ (Submodule.sub_mem _ (Submodule.mem_sup_right (hf' j ha))
      (Submodule.mem_sup_left (hf j ha)))

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem coeff_eq_zero_of_mem_span_lower_indices {E V : Type} [CommRing E] [AddCommGroup V] [Module E V]
    {m : ℕ} (f f' : Fin m → V) (hB : LinearIndependent E (Sum.elim f f')) (J : Fin m) (α β : E)
    (h : α • f J + β • f' J ∈ Submodule.span E (f '' {i | i < J}) ⊔ Submodule.span E (f' '' {i | i < J})) :
    α = 0 ∧ β = 0 := by
  have hsup : Submodule.span E (f '' {i | i < J}) ⊔ Submodule.span E (f' '' {i | i < J}) =
      Submodule.span E (Sum.elim f f' '' (Sum.inl '' {i | i < J} ∪ Sum.inr '' {i | i < J})) := by
    rw [Set.image_union, Submodule.span_union, Set.image_image, Set.image_image]
    rfl
  have hpair : α • f J + β • f' J ∈
      Submodule.span E (Sum.elim f f' '' {Sum.inl J, Sum.inr J}) := by
    rw [Set.image_pair]
    exact Submodule.add_mem _ (Submodule.smul_mem _ _ (Submodule.subset_span (by simp)))
      (Submodule.smul_mem _ _ (Submodule.subset_span (by simp)))
  have hdisj := hB.disjoint_span_image (s := {Sum.inl J, Sum.inr J})
    (t := Sum.inl '' {i | i < J} ∪ Sum.inr '' {i | i < J}) (by
      rw [Set.disjoint_left]
      intro a ha hb
      rcases ha with rfl | rfl <;> rcases hb with ⟨i, hi, h⟩ | ⟨i, hi, h⟩ <;>
        simp only [Sum.inl.injEq, Sum.inr.injEq, reduceCtorEq, Set.mem_setOf_eq] at h hi <;>
        subst h <;> exact lt_irrefl _ hi)
  rw [hsup] at h
  have h0 : α • f J + β • f' J = 0 := (Submodule.disjoint_def.1 hdisj) _ hpair h
  have hli := hB.comp (fun b : Bool => if b then Sum.inl J else Sum.inr J) (by
    intro a b hab; cases a <;> cases b <;> simp_all)
  rw [Fintype.linearIndependent_iff] at hli
  have := hli (fun b => if b then α else β) (by simpa [add_comm] using h0)
  exact ⟨this true, this false⟩

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem mem_span_dfam_inf_iff {E V : Type} [CommRing E]
    [AddCommGroup V] [Module E V] (O : Subring E) {m : ℕ} (f f' g g' : Fin m → V)
    (hB : LinearIndependent E (Sum.elim f f')) (t : E) (ht : IsUnit t)
    (hg : ∀ j, g j - f j ∈ Submodule.span E (f '' {i | i < j}))
    (hg' : ∀ j, g' j - f' j ∈ Submodule.span E (f' '' {i | i < j})) (J : ℕ) (x : V) :
    (x ∈ Submodule.span O (Set.range (_root_.GlobalTheory.HL.TraceVol.dfam t g g')) ∧
      x ∈ Submodule.span E (f '' {i | (i : ℕ) < J}) ⊔ Submodule.span E (f' '' {i | (i : ℕ) < J})) ↔
      x ∈ Submodule.span O (_root_.GlobalTheory.HL.TraceVol.dfam t g g' ''
        {a | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J}) := by
  have hle : ∀ J : ℕ, Submodule.span O (_root_.GlobalTheory.HL.TraceVol.dfam t g g' ''
      {a | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J}) ≤
      (Submodule.span E (f '' {i | (i : ℕ) < J}) ⊔
        Submodule.span E (f' '' {i | (i : ℕ) < J})).restrictScalars O := by
    intro J
    rw [Submodule.span_le]
    rintro _ ⟨a, ha, rfl⟩
    exact dfam_mem_lower_span f f' g g' t hg hg' J a ha
  refine ⟨fun ⟨hx, hY⟩ => ?_, fun hx => ⟨Submodule.span_mono (Set.image_subset_range _ _) hx, hle J hx⟩⟩
  suffices H : ∀ d J, m ≤ J + d → ∀ x, x ∈ Submodule.span O (Set.range (_root_.GlobalTheory.HL.TraceVol.dfam t g g')) →
      x ∈ Submodule.span E (f '' {i | (i : ℕ) < J}) ⊔ Submodule.span E (f' '' {i | (i : ℕ) < J}) →
      x ∈ Submodule.span O (_root_.GlobalTheory.HL.TraceVol.dfam t g g' ''
        {a | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J}) from
    H m J (by omega) x hx hY
  intro d
  induction d with
  | zero =>
    intro J hJ x hx _
    have huniv : {a : Fin m ⊕ Fin m | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J} =
        Set.univ := Set.eq_univ_of_forall fun a => by
      rcases a with i | i <;> exact lt_of_lt_of_le i.isLt (by omega)
    rwa [huniv, Set.image_univ]
  | succ d ih =>
    intro J hJ x hx hY
    by_cases hJm : m ≤ J + d
    · exact ih J hJm x hx hY
    have hJlt : J < m := by omega
    set j0 : Fin m := ⟨J, hJlt⟩ with hj0
    have hYmono : Submodule.span E (f '' {i | (i : ℕ) < J}) ⊔ Submodule.span E (f' '' {i | (i : ℕ) < J}) ≤
        Submodule.span E (f '' {i | (i : ℕ) < J + 1}) ⊔ Submodule.span E (f' '' {i | (i : ℕ) < J + 1}) :=
      sup_le_sup (Submodule.span_mono (Set.image_mono fun i (hi : (i : ℕ) < J) => by
        show (i : ℕ) < J + 1; omega))
        (Submodule.span_mono (Set.image_mono fun i (hi : (i : ℕ) < J) => by
        show (i : ℕ) < J + 1; omega))
    have hx1 := ih (J + 1) (by omega) x hx (hYmono hY)
    have hset : _root_.GlobalTheory.HL.TraceVol.dfam t g g' ''
        {a | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J + 1} =
        {_root_.GlobalTheory.HL.TraceVol.dfam t g g' (Sum.inl j0), _root_.GlobalTheory.HL.TraceVol.dfam t g g' (Sum.inr j0)} ∪
        _root_.GlobalTheory.HL.TraceVol.dfam t g g' ''
          {a | Sum.elim (fun i : Fin m => (i : ℕ)) (fun i : Fin m => (i : ℕ)) a < J} := by
      rw [← Set.image_pair, ← Set.image_union]
      congr 1
      ext a
      rcases a with i | i <;>
        simp only [Set.mem_setOf_eq, Sum.elim_inl, Sum.elim_inr, Set.mem_union, Set.mem_insert_iff,
          Set.mem_singleton_iff, Sum.inl.injEq, Sum.inr.injEq, reduceCtorEq, false_or, or_false,
          Fin.ext_iff, hj0] <;> omega
    rw [hset, Submodule.span_union, Submodule.mem_sup] at hx1
    obtain ⟨z, hz, y, hy, rfl⟩ := hx1
    rw [Submodule.mem_span_pair] at hz
    obtain ⟨a, b, rfl⟩ := hz
    have hyY := hle J hy
    have hzY : a • _root_.GlobalTheory.HL.TraceVol.dfam t g g' (Sum.inl j0) +
        b • _root_.GlobalTheory.HL.TraceVol.dfam t g g' (Sum.inr j0) ∈
        Submodule.span E (f '' {i | (i : ℕ) < J}) ⊔ Submodule.span E (f' '' {i | (i : ℕ) < J}) := by
      have := Submodule.sub_mem _ hY hyY
      simpa using this
    have hsets : ∀ h : Fin m → V, h '' {i | i < j0} = h '' {i | (i : ℕ) < J} := fun h => by
      congr 1
    have hrest : ((a : E) - b * t) • (g j0 - f j0) + ((b : E) * t) • (g' j0 - f' j0) ∈
        Submodule.span E (f '' {i | (i : ℕ) < J}) ⊔ Submodule.span E (f' '' {i | (i : ℕ) < J}) :=
      Submodule.add_mem _ (Submodule.mem_sup_left (Submodule.smul_mem _ _ (by rw [← hsets]; exact hg j0)))
        (Submodule.mem_sup_right (Submodule.smul_mem _ _ (by rw [← hsets]; exact hg' j0)))
    have hmain : ((a : E) - b * t) • f j0 + ((b : E) * t) • f' j0 ∈
        Submodule.span (E) (f '' {i | i < j0}) ⊔ Submodule.span E (f' '' {i | i < j0}) := by
      rw [hsets, hsets]
      have := Submodule.sub_mem _ hzY hrest
      convert this using 1
      simp only [_root_.GlobalTheory.HL.TraceVol.dfam, Sum.elim_inl, Sum.elim_inr, Subring.smul_def, smul_sub,
        sub_smul, smul_smul]
      module
    obtain ⟨h1, h2⟩ := coeff_eq_zero_of_mem_span_lower_indices f f' hB j0 _ _ hmain
    have hb : b = 0 := Subtype.ext (by simpa using (ht.mul_left_eq_zero).1 h2)
    have ha : a = 0 := Subtype.ext (by simpa [hb] using h1)
    simpa [ha, hb] using hy

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem unitriangular_sum_sub_mem_span_lower {E V : Type} [CommRing E] [AddCommGroup V] [Module E V]
    {m : ℕ} (b : Fin m → V) (s : Fin m → Fin m → E)
    (hs : (∀ i j, j < i → s i j = 0) ∧ ∀ i, s i i = 1) (j : Fin m) :
    ∑ i, s i j • b i - b j ∈ Submodule.span E (b '' {i | i < j}) := by
  have key : ∀ i, s i j • b i = (if i < j then s i j • b i else 0) + (if i = j then b i else 0) := by
    intro i
    rcases lt_trichotomy i j with h | rfl | h
    · simp [h, h.ne]
    · simp [hs.2]
    · simp [hs.1 i j h, not_lt.2 h.le, h.ne']
  rw [Finset.sum_congr rfl (fun i _ => key i), Finset.sum_add_distrib, Finset.sum_ite_eq']
  simp only [Finset.mem_univ, if_true, add_sub_cancel_right]
  refine Submodule.sum_mem _ fun i _ => ?_
  split_ifs with h
  · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, h, rfl⟩)
  · exact Submodule.zero_mem _

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem termFrameLattice_inf_initialSpan_eq_lemma {F : Type} [Field F] [ValuativeRel F]
    [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : _root_.Formalism.MainNotions.S.Loc.LocE F E) (r k : ℕ) (S : _root_.GlobalTheory.HL.Frames L r k)
    (d : S.Datum) (Λ : Submodule L.O S.V) (hT : S.IsTerm d Λ) (J : ℕ)
    (hJ : J ≤ r + 1) :
    ∃ s s' : Matrix (Fin (r + 1)) (Fin (r + 1)) E,
      ((∀ i j, j < i → s i j = 0) ∧ ∀ i, s i i = 1) ∧
      ((∀ i j, j < i → s' i j = 0) ∧ ∀ i, s' i i = 1) ∧
      S.M d Λ ⊓ (S.spanTo S.f J ⊔
          S.spanTo S.f' J).restrictScalars L.O =
        Submodule.span L.O (Set.range fun j => ∑ i, Matrix.fromBlocks (s.submatrix (Fin.castLE hJ) (Fin.castLE hJ))
          (-(algebraMap F E S.th⁻¹ • s.submatrix (Fin.castLE hJ) (Fin.castLE hJ))) 0
          (algebraMap F E S.th⁻¹ • s'.submatrix (Fin.castLE hJ) (Fin.castLE hJ)) i j •
            Sum.elim (fun i => S.f (Fin.castLE hJ i)) (fun i => S.f' (Fin.castLE hJ i)) i) := by
  obtain ⟨-, hW, -⟩ := _root_.GlobalTheory.HL.TermBasic.term_basic L r k S d Λ hT
  unfold _root_.GlobalTheory.HL.Frames.IsTermW at hW
  obtain ⟨-, -, hp, hq, -⟩ := hW
  obtain ⟨hB, -, -, -, -, hth, -⟩ := _root_.GlobalTheory.FrameBasic.main L r k S
  obtain ⟨-, hN⟩ := _root_.GlobalTheory.HL.frame_unipotent_unitriangular L r k S S.f S.es (Or.inl ⟨rfl, rfl⟩)
  obtain ⟨-, hN'⟩ := _root_.GlobalTheory.HL.frame_unipotent_unitriangular L r k S S.f' S.es' (Or.inr ⟨rfl, rfl⟩)
  obtain ⟨⟨s, hs, hsf⟩, -⟩ := hN _ hp
  obtain ⟨⟨s', hs', hsf'⟩, -⟩ := hN' _ hq
  refine ⟨s, s', hs, hs', ?_⟩
  have hθ : IsUnit (algebraMap F E S.th⁻¹) := (isUnit_iff_ne_zero.2 (inv_ne_zero hth)).map _
  have hM : S.M d Λ = Submodule.span L.O (Set.range
      (_root_.GlobalTheory.HL.TraceVol.dfam (algebraMap F E S.th⁻¹)
        (fun j => ∑ i, s i j • S.f i) (fun j => ∑ i, s' i j • S.f' i))) := by
    unfold _root_.GlobalTheory.HL.Frames.M _root_.GlobalTheory.HL.Frames.Mof
      _root_.GlobalTheory.HL.Frames.fr _root_.GlobalTheory.HL.Frames.fr' _root_.GlobalTheory.HL.TraceVol.dfam
    rw [Set.Sum.elim_range]
    congr 3
    · funext j; exact hsf j
    · funext j; rw [hsf j, hsf' j]
  rw [← span_image_frameScaledDifferenceFamily_eq_lemma_3 L.O hJ S.f S.f' s s' hs.1 hs'.1]
  ext x
  rw [Submodule.mem_inf, hM, Submodule.restrictScalars_mem]
  exact mem_span_dfam_inf_iff L.O S.f S.f' _ _ hB _ hθ
    (unitriangular_sum_sub_mem_span_lower S.f s hs) (unitriangular_sum_sub_mem_span_lower S.f' s' hs') J x

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem det_fromBlocks_unitriangular_eq_pow {E : Type} [CommRing E] {m : ℕ} (θ : E)
    (s s' : Matrix (Fin m) (Fin m) E)
    (hs : (∀ i j, j < i → s i j = 0) ∧ ∀ i, s i i = 1)
    (hs' : (∀ i j, j < i → s' i j = 0) ∧ ∀ i, s' i i = 1) :
    (Matrix.fromBlocks s (-(θ • s)) 0 (θ • s')).det = θ ^ m := by
  rw [Matrix.det_fromBlocks_zero₂₁, Matrix.det_smul, Matrix.det_of_upperTriangular (fun i j h => hs.1 i j h),
    Matrix.det_of_upperTriangular (fun i j h => hs'.1 i j h)]
  simp [hs.2, hs'.2]

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem linearIndependent_comb_of_isUnit_det {E V ι : Type} [CommRing E] [AddCommGroup V] [Module E V]
    [Fintype ι] [DecidableEq ι] (b : ι → V) (hb : LinearIndependent E b) (M : Matrix ι ι E)
    (hM : IsUnit M.det) : LinearIndependent E (fun j => ∑ i, M i j • b i) := by
  rw [Fintype.linearIndependent_iff] at hb ⊢
  intro c hc
  have h1 : ∀ i, M.mulVec c i = 0 := by
    refine hb _ ?_
    rw [← hc]
    simp only [Matrix.mulVec, dotProduct, Finset.sum_smul, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by rw [mul_comm]
  have h2 : M.mulVec c = 0 := funext h1
  have : c = M⁻¹.mulVec (M.mulVec c) := by
    rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul M hM, Matrix.one_mulVec]
  intro i
  rw [this, h2, Matrix.mulVec_zero]
  rfl

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem sum_smul_sum_smul_eq_sum_mul_smul' {E V ι : Type} [CommRing E] [AddCommGroup V] [Module E V] [Fintype ι]
    (b : ι → V) (M N : Matrix ι ι E) (j : ι) :
    ∑ i, N i j • ∑ l, M l i • b l = ∑ l, (M * N) l j • b l := by
  simp only [Finset.smul_sum, smul_smul, Matrix.mul_apply, Finset.sum_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun i _ => by rw [mul_comm]

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem relIndex_symm_of_blockFrameMatrix_lemma_2 {F : Type} [Field F] [ValuativeRel F]
    [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : _root_.Formalism.MainNotions.S.Loc.LocE F E) (ϖ : (ValuativeRel.valuation F).integer)
    (hϖ : Irreducible ϖ) {N m : ℕ} (B : Fin m ⊕ Fin m → (Fin N → E))
    (hB : LinearIndependent E B) (θ : E) (hθ : IsUnit θ) (s s' u u' : Matrix (Fin m) (Fin m) E)
    (hs : (∀ i j, j < i → s i j = 0) ∧ ∀ i, s i i = 1)
    (hs' : (∀ i j, j < i → s' i j = 0) ∧ ∀ i, s' i i = 1)
    (hu : (∀ i j, j < i → u i j = 0) ∧ ∀ i, u i i = 1)
    (hu' : (∀ i j, j < i → u' i j = 0) ∧ ∀ i, u' i i = 1) :
    (Submodule.span L.O (Set.range fun j => ∑ i, Matrix.fromBlocks s (-(θ • s)) 0 (θ • s') i j • B i)).toAddSubgroup.relIndex
        (Submodule.span L.O (Set.range fun j => ∑ i, Matrix.fromBlocks u (-(θ • u)) 0 (θ • u') i j • B i)).toAddSubgroup =
      (Submodule.span L.O (Set.range fun j => ∑ i, Matrix.fromBlocks u (-(θ • u)) 0 (θ • u') i j • B i)).toAddSubgroup.relIndex
        (Submodule.span L.O (Set.range fun j => ∑ i, Matrix.fromBlocks s (-(θ • s)) 0 (θ • s') i j • B i)).toAddSubgroup ∧
    (Submodule.span L.O (Set.range fun j => ∑ i, Matrix.fromBlocks s (-(θ • s)) 0 (θ • s') i j • B i)).toAddSubgroup.relIndex
        (Submodule.span L.O (Set.range fun j => ∑ i, Matrix.fromBlocks u (-(θ • u)) 0 (θ • u') i j • B i)).toAddSubgroup ≠ 0 := by
  set T1 := Matrix.fromBlocks s (-(θ • s)) 0 (θ • s') with hT1
  set T2 := Matrix.fromBlocks u (-(θ • u)) 0 (θ • u') with hT2
  have hd1 : T1.det = θ ^ m := det_fromBlocks_unitriangular_eq_pow θ s s' hs hs'
  have hd2 : T2.det = θ ^ m := det_fromBlocks_unitriangular_eq_pow θ u u' hu hu'
  have hU1 : IsUnit T1.det := hd1 ▸ hθ.pow m
  let e : Fin (m + m) ≃ Fin m ⊕ Fin m := finSumFinEquiv.symm
  let A := T1⁻¹ * T2
  have hA : T1 * A = T2 := by rw [← mul_assoc, Matrix.mul_nonsing_inv T1 hU1, one_mul]
  have hdetA : A.det = 1 := by
    rw [Matrix.det_mul, Matrix.det_nonsing_inv, hd1, hd2]
    exact Ring.inverse_mul_cancel _ (hθ.pow m)
  let b : Fin (m + m) → (Fin N → E) := fun j => ∑ i, T1 i (e j) • B i
  have hb : LinearIndependent E b :=
    (linearIndependent_comb_of_isUnit_det B hB T1 hU1).comp e e.injective
  let A' : Matrix (Fin (m + m)) (Fin (m + m)) E := Matrix.reindex e.symm e.symm A
  have hdetA' : A'.det = 1 := by rw [Matrix.det_reindex_self, hdetA]
  have hrange1 : Set.range b = Set.range fun j => ∑ i, T1 i j • B i := by
    have : b = (fun j => ∑ i, T1 i j • B i) ∘ e := rfl
    rw [this, Set.range_comp, e.range_eq_univ, Set.image_univ]
  have hrange2 : (Set.range fun j => ∑ i, A' i j • b i) = Set.range fun j => ∑ i, T2 i j • B i := by
    have : (fun j => ∑ i, A' i j • b i) = (fun j => ∑ i, T2 i j • B i) ∘ e := by
      funext j
      simp only [Function.comp_apply, A', b, Matrix.reindex_apply, Matrix.submatrix_apply,
        Equiv.symm_symm]
      rw [Equiv.sum_comp e (fun i => A i (e j) • ∑ l, T1 l i • B l), sum_smul_sum_smul_eq_sum_mul_smul', hA]
    rw [this, Set.range_comp, e.range_eq_univ, Set.image_univ]
  have hcj : A'.det * L.cj A'.det = algebraMap F E 1 := by simp [hdetA']
  obtain ⟨h1, h2, h3⟩ := _root_.GlobalTheory.HL.FrameIndex.relIndex_span_matrix L ϖ hϖ b hb A' 1 one_ne_zero hcj
    (Submodule.span L.O (Set.range b)) (Submodule.span L.O (Set.range fun j => ∑ i, A' i j • b i))
    rfl rfl
  rw [hrange1, hrange2] at h1 h2 h3
  have hv : _root_.GlobalTheory.HL.vE L ϖ (algebraMap F E 1) = 0 := by
    simpa using _root_.GlobalTheory.UnramVal.vE_zpow_mul_unit L hϖ 0 1
  rw [hv, zpow_zero, one_mul] at h3
  exact ⟨by exact_mod_cast h3.symm, h2⟩


open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
theorem _root_.GlobalTheory.HL.TraceVol.trace_volume : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : _root_.Formalism.MainNotions.S.Loc.LocE F E), ∀ (r k : ℕ) (S : _root_.GlobalTheory.HL.Frames L r k), ∀ (d : S.Datum) (Λ : Submodule L.O S.V), S.IsTerm d Λ → ∀ d' Λ', S.IsTerm d' Λ' → ∀ (J : ℕ) (Yy : Submodule L.O S.V), J ≤ r + 1 → Yy = (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O → (S.M d Λ ⊓ Yy).toAddSubgroup.relIndex (S.M d' Λ' ⊓ Yy).toAddSubgroup = (S.M d' Λ' ⊓ Yy).toAddSubgroup.relIndex (S.M d Λ ⊓ Yy).toAddSubgroup ∧ (S.M d Λ ⊓ Yy).toAddSubgroup.relIndex (S.M d' Λ' ⊓ Yy).toAddSubgroup ≠ 0 := by
  intro F _ _ _ _ _ E _ _ _ L r k S d Λ hT d' Λ' hT' J Yy hJ hYy
  subst hYy
  obtain ⟨s, s', hs, hs', h1⟩ := termFrameLattice_inf_initialSpan_eq_lemma L r k S d Λ hT J hJ
  obtain ⟨u, u', hu, hu', h2⟩ := termFrameLattice_inf_initialSpan_eq_lemma L r k S d' Λ' hT' J hJ
  obtain ⟨hB, -, -, -, -, hth, -⟩ := _root_.GlobalTheory.FrameBasic.main L r k S
  have hθ : IsUnit (algebraMap F E S.th⁻¹) := (isUnit_iff_ne_zero.2 (inv_ne_zero hth)).map _
  have hBJ : LinearIndependent E (Sum.elim (fun i : Fin J => S.f (Fin.castLE hJ i))
      (fun i => S.f' (Fin.castLE hJ i))) := by
    have := hB.comp (Sum.map (Fin.castLE hJ) (Fin.castLE hJ))
      (Sum.map_injective.2 ⟨Fin.castLE_injective hJ, Fin.castLE_injective hJ⟩)
    rwa [Sum.elim_comp_map] at this
  have htri : ∀ t : Matrix (Fin (r + 1)) (Fin (r + 1)) E,
      ((∀ i j, j < i → t i j = 0) ∧ ∀ i, t i i = 1) →
      ((∀ i j, j < i → t.submatrix (Fin.castLE hJ) (Fin.castLE hJ) i j = 0) ∧
        ∀ i, t.submatrix (Fin.castLE hJ) (Fin.castLE hJ) i i = 1) := fun t ht =>
    ⟨fun i j hij => ht.1 _ _ ((Fin.castLE_lt_castLE_iff hJ).2 hij), fun i => ht.2 _⟩
  rw [h1, h2]
  exact relIndex_symm_of_blockFrameMatrix_lemma_2 L S.ϖ S.ϖ_irr _ hBJ _ hθ _ _ _ _
    (htri s hs) (htri s' hs') (htri u hu) (htri u' hu')

end GlobalTheory.HL.TraceVol
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameLatticeTraceInitialSpanVolumeEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.SelfDualHermitianLatticeTraceOrthogonalVolumeRat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.SelfDualHermitianLatticeTraceOrthogonalVolumeRat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsHermND\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DualInterSelfDualHermitianLatticeSubspace\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RelIndexSpanLatticeMatrixDetNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.VolPerp

open GlobalTheory.HL.DualInter

theorem relIndex_split {G : Type} [AddCommGroup G] {M A : AddSubgroup G} (Z : AddSubgroup G)
    (h : M ≤ A) : M.relIndex A = (M ⊓ Z).relIndex (A ⊓ Z) * (M ⊔ Z).relIndex (A ⊔ Z) := by
  have h1 : (M ⊔ Z) ⊓ A = M ⊔ (Z ⊓ A) := sup_inf_assoc_of_le Z h
  have h2 : M ≤ (M ⊔ Z) ⊓ A := le_inf le_sup_left h
  rw [← AddSubgroup.relIndex_mul_relIndex M _ A h2 inf_le_right]
  congr 1
  · rw [h1, AddSubgroup.relIndex_sup_left, ← AddSubgroup.inf_relIndex_right M, inf_comm Z A,
      ← inf_assoc, inf_eq_left.2 h]
  · rw [AddSubgroup.inf_relIndex_right, ← AddSubgroup.relIndex_sup_right A (M ⊔ Z),
      ← sup_assoc, sup_eq_left.2 h]

theorem relIndex_split' {G : Type} [AddCommGroup G] (A B Z : AddSubgroup G) :
    B.relIndex A = (B ⊓ Z).relIndex (A ⊓ Z) *
      (((A ⊓ B) ⊔ Z).relIndex ((A ⊔ Z) ⊓ (B ⊔ Z)) * (B ⊔ Z).relIndex (A ⊔ Z)) := by
  rw [← AddSubgroup.inf_relIndex_left, relIndex_split Z inf_le_left]
  congr 1
  · rw [inf_inf_distrib_right, AddSubgroup.inf_relIndex_left]
  · rw [← AddSubgroup.inf_relIndex_left (A ⊔ Z) (B ⊔ Z), AddSubgroup.relIndex_mul_relIndex _ _ _
      (le_inf (sup_le_sup_right inf_le_left _) (sup_le_sup_right inf_le_right _)) inf_le_left]

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
  [IsNonarchimedeanLocalField F] [CharZero F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E]
variable {L : LocE F E} {n : ℕ} {Hm : Matrix (Fin n) (Fin n) E}

theorem expand {m : ℕ} {b c : Fin m → Fin n → E}
    (hbc : ∀ i j, hf L Hm (b i) (c j) = if i = j then 1 else 0) {v : Fin n → E}
    (hv : v ∈ Submodule.span E (Set.range b)) : v = ∑ j, hf L Hm v (c j) • b j := by
  obtain ⟨a, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun E).1 hv
  simp [sum_l, smul_l, hbc]

theorem inter_eq {Λ : Submodule L.O (Fin n → E)} (hΛ : IsSD L Hm Λ) {m : ℕ}
    {b c : Fin m → Fin n → E} (hb : ∀ i, b i ∈ Λ) (hc : ∀ i, c i ∈ Λ)
    (hbc : ∀ i j, hf L Hm (b i) (c j) = if i = j then 1 else 0) :
    Λ ⊓ (Submodule.span E (Set.range b)).restrictScalars L.O
      = Submodule.span L.O (Set.range b) := by
  refine le_antisymm ?_ (Submodule.span_le.2 ?_)
  · rintro v ⟨hv, hvY⟩
    rw [expand hbc hvY]
    refine Submodule.sum_mem _ fun j _ => ?_
    exact Submodule.smul_mem (Submodule.span L.O (Set.range b))
      ⟨_, (hΛ.2 _).2 (hc j) _ hv⟩ (Submodule.subset_span ⟨j, rfl⟩)
  · rintro _ ⟨j, rfl⟩
    exact ⟨hb j, Submodule.subset_span ⟨j, rfl⟩⟩

theorem map_eq (h : IsHermND L Hm) {Λ : Submodule L.O (Fin n → E)} (hΛ : IsSD L Hm Λ) {m : ℕ}
    {b c : Fin m → Fin n → E} (hb : ∀ i, b i ∈ Λ) (hc : ∀ i, c i ∈ Λ)
    (hbc : ∀ i j, hf L Hm (b i) (c j) = if i = j then 1 else 0)
    (φ : (Fin n → E) →ₗ[E] (Fin m → E)) (w : Fin m → Fin m → E)
    (hφ : ∀ v, φ v = ∑ j, hf L Hm v (b j) • w j) :
    Λ.toAddSubgroup.map φ.toAddMonoidHom = (Submodule.span L.O (Set.range w)).toAddSubgroup := by
  ext x
  constructor
  · rintro ⟨v, hv, rfl⟩
    change φ v ∈ Submodule.span L.O (Set.range w)
    rw [hφ]
    refine Submodule.sum_mem _ fun j _ => ?_
    exact Submodule.smul_mem (Submodule.span L.O (Set.range w))
      ⟨_, (hΛ.2 _).2 (hb j) _ hv⟩ (Submodule.subset_span ⟨j, rfl⟩)
  · intro hx
    have : Submodule.span L.O (Set.range w) ≤ Λ.map (φ.restrictScalars L.O) := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨j, rfl⟩
      refine ⟨c j, hc j, ?_⟩
      have : ∀ i, hf L Hm (c j) (b i) = if i = j then 1 else 0 := fun i => by
        rw [← cj_hf h, hbc]; split_ifs <;> simp
      simp [hφ, this]
    exact this hx

theorem key (h : IsHermND L Hm) {Λ Λ' : Submodule L.O (Fin n → E)} (hΛ : IsSD L Hm Λ)
    (hΛ' : IsSD L Hm Λ') {m : ℕ} (y : Fin m → Fin n → E) (hy : LinearIndependent E y)
    {Y Z : Submodule L.O (Fin n → E)}
    (hY : Y = (Submodule.span E (Set.range y)).restrictScalars L.O)
    (hZ : Z = (perp L Hm (Submodule.span E (Set.range y))).restrictScalars L.O) :
    (Λ ⊓ Y).toAddSubgroup.relIndex (Λ' ⊓ Y).toAddSubgroup ≠ 0 ∧
    (Λ.toAddSubgroup ⊔ Z.toAddSubgroup).relIndex (Λ'.toAddSubgroup ⊔ Z.toAddSubgroup) *
      (Λ ⊓ Y).toAddSubgroup.relIndex (Λ' ⊓ Y).toAddSubgroup =
    (Λ'.toAddSubgroup ⊔ Z.toAddSubgroup).relIndex (Λ.toAddSubgroup ⊔ Z.toAddSubgroup) *
      (Λ' ⊓ Y).toAddSubgroup.relIndex (Λ ⊓ Y).toAddSubgroup := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible 𝒪[F]
  have := L.free
  have : Nontrivial E := Module.nontrivial_of_finrank_pos (R := F) (by rw [L.rank]; omega)
  obtain ⟨b, c, hb, hc, hs, hbc⟩ := exists_dual_family h hΛ m y hy
  obtain ⟨b', c', hb', hc', hs', hbc'⟩ := exists_dual_family h hΛ' m y hy
  have hQ : Λ ⊓ Y = Submodule.span L.O (Set.range b) := by
    rw [hY, ← hs]; exact inter_eq hΛ hb hc hbc
  have hQ' : Λ' ⊓ Y = Submodule.span L.O (Set.range b') := by
    rw [hY, ← hs']; exact inter_eq hΛ' hb' hc' hbc'
  let A : Matrix (Fin m) (Fin m) E := fun i j => hf L Hm (b' j) (c i)
  let B : Matrix (Fin m) (Fin m) E := fun i j => hf L Hm (b j) (c' i)
  have hA : ∀ j, b' j = ∑ i, A i j • b i := fun j =>
    expand hbc (by rw [hs, ← hs']; exact Submodule.subset_span ⟨j, rfl⟩)
  have hBA : B * A = 1 := by
    ext k j
    have := hbc' j k
    rw [hA j, sum_l] at this
    simp only [smul_l] at this
    rw [Matrix.mul_apply, Matrix.one_apply, ← if_congr eq_comm rfl rfl, ← this]
    exact Finset.sum_congr rfl fun i _ => mul_comm _ _
  have hu : IsUnit A.det := Matrix.isUnit_det_of_left_inverse hBA
  obtain ⟨d, hd⟩ := (L.cj_fix (A.det * L.cj A.det)).1 (by rw [map_mul, L.cj_cj, mul_comm])
  have hd0 : d ≠ 0 := by
    rintro rfl
    exact (hu.mul (hu.map L.cj)).ne_zero (by rw [← hd, map_zero])
  have hli : LinearIndependent E b := by
    refine Fintype.linearIndependent_iff.2 fun g hg k => ?_
    have := congrArg (fun v => hf L Hm v (c k)) hg
    simp only [sum_l, smul_l, hbc] at this
    simpa [hf] using this
  obtain ⟨-, p2, p3⟩ := _root_.GlobalTheory.HL.FrameIndex.relIndex_span_matrix L ϖ hϖ b hli A d hd0 hd.symm (Λ ⊓ Y) (Λ' ⊓ Y) hQ
    (by rw [hQ']; congr 2; exact funext hA)
  have hdet : (cT L A).det = L.cj A.det := by
    have : cT L A = ((L.cj : E →+* E).mapMatrix A).transpose := rfl
    rw [this, Matrix.det_transpose, ← RingHom.map_det]; rfl
  obtain ⟨-, -, r3⟩ := _root_.GlobalTheory.HL.FrameIndex.relIndex_span_matrix L ϖ hϖ (Pi.basisFun E (Fin m))
    (Pi.basisFun E (Fin m)).linearIndependent (cT L A) d hd0
    (by rw [hdet, L.cj_cj, mul_comm, hd]) _ _ rfl rfl
  let φ : (Fin n → E) →ₗ[E] (Fin m → E) := LinearMap.pi fun j => hfL L Hm (b' j)
  have hφ : ∀ v k, φ v k = hf L Hm v (b' k) := fun v k => rfl
  have m1 := map_eq h hΛ' hb' hc' hbc' φ (Pi.basisFun E (Fin m))
    (fun v => by ext k; simp [hφ, Pi.single_apply])
  have m2 := map_eq h hΛ hb hc hbc φ (fun j => ∑ i, cT L A i j • Pi.basisFun E (Fin m) i)
    (fun v => by
      ext k
      rw [hφ, hA k]
      simp [sum_r, smul_r, cT, Pi.single_apply, mul_comm])
  rw [← m1, ← m2, AddSubgroup.relIndex_map_map, AddSubgroup.relIndex_map_map] at r3
  have hker : φ.toAddMonoidHom.ker = Z.toAddSubgroup := by
    ext x
    rw [hZ, ← hs']
    constructor
    · intro hx v hv
      rw [← cj_hf h, hf_eq_zero_of_span (S := Set.range b') ?_ v hv, map_zero]
      rintro _ ⟨j, rfl⟩
      have : hf L Hm x (b' j) = 0 := congrFun hx j
      rw [← cj_hf h, this, map_zero]
    · intro hx
      funext j
      exact hx _ (Submodule.subset_span ⟨j, rfl⟩)
  rw [hker] at r3
  refine ⟨p2, ?_⟩
  apply Nat.cast_injective (R := ℝ)
  push_cast
  rw [p3, r3]
  ring

theorem relIndex_symm (h : IsHermND L Hm) {Λ Λ' : Submodule L.O (Fin n → E)} (hΛ : IsSD L Hm Λ)
    (hΛ' : IsSD L Hm Λ') : Λ.toAddSubgroup.relIndex Λ'.toAddSubgroup ≠ 0 ∧
    Λ.toAddSubgroup.relIndex Λ'.toAddSubgroup = Λ'.toAddSubgroup.relIndex Λ.toAddSubgroup := by
  have hY : (⊤ : Submodule L.O (Fin n → E))
      = (Submodule.span E (Set.range (Pi.basisFun E (Fin n)))).restrictScalars L.O := by
    rw [Module.Basis.span_eq]; rfl
  have hZ : (⊥ : Submodule L.O (Fin n → E))
      = (perp L Hm (Submodule.span E (Set.range (Pi.basisFun E (Fin n))))).restrictScalars L.O := by
    rw [Module.Basis.span_eq, eq_comm, eq_bot_iff]
    intro x hx
    refine eq_zero_of_hf h fun v => ?_
    rw [← cj_hf h, hx v trivial, map_zero]
  obtain ⟨k1, k2⟩ := key h hΛ hΛ' _ (Pi.basisFun E (Fin n)).linearIndependent hY hZ
  simp only [inf_top_eq, Submodule.bot_toAddSubgroup, sup_bot_eq] at k1 k2
  exact ⟨k1, Nat.mul_self_inj.1 k2⟩

theorem vol_perp : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : LocE F E), ∀ {n : ℕ} (Hm : Matrix (Fin n) (Fin n) E), IsHermND L Hm → ∀ Λ Λ', IsSD L Hm Λ → IsSD L Hm Λ' → ∀ (m : ℕ) (y : Fin m → Fin n → E), LinearIndependent E y → ∀ Y Z : Submodule L.O (Fin n → E), Y = (Submodule.span E (Set.range y)).restrictScalars L.O → Z = (perp L Hm (Submodule.span E (Set.range y))).restrictScalars L.O → (Λ ⊓ Z).toAddSubgroup.relIndex (Λ' ⊓ Z).toAddSubgroup ≠ 0 ∧ (Λ ⊓ Y).toAddSubgroup.relIndex (Λ' ⊓ Y).toAddSubgroup ≠ 0 ∧ (Λ ⊓ Z).toAddSubgroup.relIndex (Λ' ⊓ Z).toAddSubgroup * (Λ' ⊓ Y).toAddSubgroup.relIndex (Λ ⊓ Y).toAddSubgroup = (Λ' ⊓ Z).toAddSubgroup.relIndex (Λ ⊓ Z).toAddSubgroup * (Λ ⊓ Y).toAddSubgroup.relIndex (Λ' ⊓ Y).toAddSubgroup := by
  intro F _ _ _ _ _ E _ _ _ L n Hm h Λ Λ' hΛ hΛ' m y hy Y Z hY hZ
  obtain ⟨k1, k2⟩ := key h hΛ hΛ' y hy hY hZ
  obtain ⟨a1, a2⟩ := relIndex_symm h hΛ hΛ'
  have s1 := relIndex_split' Λ.toAddSubgroup Λ'.toAddSubgroup Z.toAddSubgroup
  have s2 := relIndex_split' Λ'.toAddSubgroup Λ.toAddSubgroup Z.toAddSubgroup
  rw [inf_comm Λ'.toAddSubgroup Λ.toAddSubgroup, inf_comm (Λ'.toAddSubgroup ⊔ _)] at s2
  have e1 : (Λ ⊓ Z).toAddSubgroup = Λ.toAddSubgroup ⊓ Z.toAddSubgroup := rfl
  have e2 : (Λ' ⊓ Z).toAddSubgroup = Λ'.toAddSubgroup ⊓ Z.toAddSubgroup := rfl
  rw [e1, e2]
  have b1 := a2 ▸ a1
  rw [s1] at b1
  rw [s1, s2] at a2
  rw [s2] at a1
  simp only [ne_eq, mul_eq_zero, not_or] at a1 b1
  refine ⟨a1.1, k1, ?_⟩
  rw [mul_left_comm, mul_left_comm _ (AddSubgroup.relIndex (_ ⊓ _ ⊔ _) _)] at a2
  have a3 := mul_left_cancel₀ a1.2.1 a2
  refine mul_right_cancel₀ b1.2.2 ?_
  rw [mul_assoc, mul_comm (AddSubgroup.relIndex (Λ' ⊓ Y).toAddSubgroup _), ← k2, ← mul_assoc, a3]
  ring

end GlobalTheory.HL.VolPerp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.SelfDualHermitianLatticeTraceOrthogonalVolumeRat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFamilyTraceVolumeConst =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFamilyTraceVolumeConst", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BasisOfIsCompl\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameLatticeTraceInitialSpanVolumeEq\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsHermND\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SelfDualHermitianLatticeTraceOrthogonalVolumeRat\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermExponentsNonnegAndDefectGroupBound\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetTermBasicFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.FamilyVol

theorem relIndex_symm_of_sub {G : Type*} [AddGroup G] {A A' B B' : AddSubgroup G} {β : ℕ} (hβ : β ≠ 0)
    (hA : B ≤ A) (hA' : B' ≤ A') (h : B.relIndex A = β) (h' : B'.relIndex A' = β)
    (hB : B.relIndex B' = B'.relIndex B) (hB0 : B.relIndex B' ≠ 0) :
    A.relIndex A' = A'.relIndex A := by
  have e1 : (B ⊓ B').relIndex A = B'.relIndex B * β := by
    rw [← h, ← AddSubgroup.relIndex_mul_relIndex (B ⊓ B') B A inf_le_left hA,
      AddSubgroup.inf_relIndex_left]
  have e2 : (B ⊓ B').relIndex A' = B.relIndex B' * β := by
    rw [← h', ← AddSubgroup.relIndex_mul_relIndex (B ⊓ B') B' A' inf_le_right hA',
      AddSubgroup.inf_relIndex_right]
  have hle : B ⊓ B' ≤ A ⊓ A' := inf_le_inf hA hA'
  have e3 := AddSubgroup.relIndex_mul_relIndex (B ⊓ B') (A ⊓ A') A hle inf_le_left
  have e4 := AddSubgroup.relIndex_mul_relIndex (B ⊓ B') (A ⊓ A') A' hle inf_le_right
  rw [AddSubgroup.inf_relIndex_left] at e3
  rw [AddSubgroup.inf_relIndex_right] at e4
  have hne : (B ⊓ B').relIndex (A ⊓ A') ≠ 0 := by
    intro h0
    rw [h0, zero_mul, e2] at e4
    exact mul_ne_zero hB0 hβ e4.symm
  apply Nat.eq_of_mul_eq_mul_left (Nat.pos_of_ne_zero hne)
  rw [e3, e4, e1, e2, hB]

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem resQ_ne_zero (ϖ : 𝒪[F]) (h : Irreducible ϖ) : resQ ϖ ≠ 0 := by
  have e : Ideal.span {ϖ} = IsLocalRing.maximalIdeal 𝒪[F] := h.maximalIdeal_eq.symm
  unfold resQ
  rw [e]
  have : Finite (𝒪[F] ⧸ IsLocalRing.maximalIdeal 𝒪[F]) := inferInstanceAs (Finite 𝓀[F])
  exact Nat.card_pos.ne'

variable [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] {L : LocE F E} {r k : ℕ}

theorem exists_basis (S : Frames L r k) (J : ℕ) :
    ∃ (m : ℕ) (y : Fin m → S.V), LinearIndependent E y ∧
      Submodule.span E (Set.range y) = S.spanTo S.f J ⊔ S.spanTo S.f' J := by
  have hli := (GlobalTheory.FrameBasic.main L r k S).1
  let I := {i : Fin (r + 1) // (i : ℕ) < J}
  let φ : I ⊕ I → Fin (r + 1) ⊕ Fin (r + 1) := Sum.map Subtype.val Subtype.val
  have hφ : Function.Injective φ := Subtype.val_injective.sumMap Subtype.val_injective
  let e := (Fintype.equivFin (I ⊕ I)).symm
  refine ⟨_, (Sum.elim S.f S.f' ∘ φ) ∘ e, (hli.comp φ hφ).comp e e.injective, ?_⟩
  rw [e.surjective.range_comp, Frames.spanTo, Frames.spanTo, ← Submodule.span_union]
  congr 1
  ext v
  constructor
  · rintro ⟨i | i, rfl⟩
    · exact Or.inl ⟨i.1, i.2, rfl⟩
    · exact Or.inr ⟨i.1, i.2, rfl⟩
  · rintro (⟨i, hi, rfl⟩ | ⟨i, hi, rfl⟩)
    · exact ⟨Sum.inl ⟨i, hi⟩, rfl⟩
    · exact ⟨Sum.inr ⟨i, hi⟩, rfl⟩

theorem spanTo_mono (S : Frames L r k) (g : Fin (r + 1) → S.V) {i j : ℕ} (h : i ≤ j) :
    S.spanTo g i ≤ S.spanTo g j :=
  Submodule.span_mono (Set.image_mono fun _ ha => lt_of_lt_of_le ha h)

theorem relIndex_trace (S : Frames L r k) (J : ℕ) (hJ : J ≤ r + 1) (d : S.Datum) (Λ : Submodule L.O S.V)
    (hT : S.IsTerm d Λ) (hl : ∀ y ∈ S.sat Λ, S.levC d Λ y ≤ J) :
    (S.M d Λ ⊓ (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O).toAddSubgroup.relIndex
      (Λ ⊓ (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O).toAddSubgroup = S.be d Λ := by
  have hM : S.M d Λ ≤ S.sat Λ := (GlobalTheory.HL.TermBasic.term_basic L r k S d Λ hT).2.2.1
  have hlev := (_root_.GlobalTheory.HL.Defect.exponents_and_defect L r k S d Λ hT).2.2.2.2.2.2.2.2.2.2
  set Y := (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O with hY
  have h1 : (S.sat Λ).toAddSubgroup = (Λ ⊓ Y).toAddSubgroup ⊔ (S.M d Λ).toAddSubgroup := by
    apply le_antisymm
    · intro y hy
      obtain ⟨y₁, hy₁, hm⟩ := (hlev y hy J).1 (hl y hy)
      have hy₁Λ : y₁ ∈ Λ := by
        have := Λ.sub_mem hy.1 (hM hm).1
        simpa using this
      have : y = y₁ + (y - y₁) := by abel
      rw [this]
      exact AddSubgroup.add_mem_sup (S := (Λ ⊓ Y).toAddSubgroup) ⟨hy₁Λ, hy₁⟩ hm
    · refine sup_le ?_ hM
      intro y hy
      exact ⟨hy.1, sup_le_sup (spanTo_mono S S.f hJ) (spanTo_mono S S.f' hJ) hy.2⟩
  have h2 : (S.M d Λ ⊓ Y).toAddSubgroup = (S.M d Λ).toAddSubgroup ⊓ (Λ ⊓ Y).toAddSubgroup := by
    ext y
    exact ⟨fun h => ⟨h.1, (hM h.1).1, h.2⟩, fun h => ⟨h.1, h.2.2⟩⟩
  rw [h2, AddSubgroup.inf_relIndex_right, Frames.be, h1, AddSubgroup.relIndex_sup_right]

theorem family_vol : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : LocE F E), ∀ (r k : ℕ) (S : Frames L r k), ∀ (j : Fin r) (β βJ : ℕ) (d : S.Datum) (Λ : Submodule L.O S.V), S.IsTerm d Λ → S.InFF β (j + 1) βJ d Λ → ∀ Λ', S.IsTerm d Λ' → S.InFF β (j + 1) βJ d Λ' → ∀ Yy : Submodule L.O S.V, (Yy = (S.spanTo S.f (j + 1) ⊔ S.spanTo S.f' (j + 1)).restrictScalars L.O ∨ Yy = (perp L S.Hm (S.spanTo S.f (j + 1) ⊔ S.spanTo S.f' (j + 1))).restrictScalars L.O) → (Λ ⊓ Yy).toAddSubgroup.relIndex (Λ' ⊓ Yy).toAddSubgroup = (Λ' ⊓ Yy).toAddSubgroup.relIndex (Λ ⊓ Yy).toAddSubgroup ∧ (Λ ⊓ Yy).toAddSubgroup.relIndex (Λ' ⊓ Yy).toAddSubgroup ≠ 0 ∧ (S.M d Λ ⊓ (S.spanTo S.f (j + 1) ⊔ S.spanTo S.f' (j + 1)).restrictScalars L.O).toAddSubgroup.relIndex (Λ ⊓ (S.spanTo S.f (j + 1) ⊔ S.spanTo S.f' (j + 1)).restrictScalars L.O).toAddSubgroup = β := by
  intro F _ _ _ _ _ E _ _ _ L r k S j β βJ d Λ hT hF Λ' hT' hF' Yy hYy
  have hJ : (j : ℕ) + 1 ≤ r + 1 := by have := j.2; omega
  have b1 := relIndex_trace S (j + 1) hJ d Λ hT hF.2.2.1
  have b2 := relIndex_trace S (j + 1) hJ d Λ' hT' hF'.2.2.1
  have hβ : β ≠ 0 := by
    obtain ⟨i, -, hi⟩ := (_root_.GlobalTheory.HL.Defect.exponents_and_defect L r k S d Λ hT).2.2.2.2.2.1
    rw [← hF.2.1, hi]
    exact pow_ne_zero _ (resQ_ne_zero _ S.ϖ_irr)
  rw [hF.2.1] at b1
  rw [hF'.2.1] at b2
  obtain ⟨hS, -, hM, -⟩ := GlobalTheory.HL.TermBasic.term_basic L r k S d Λ hT
  obtain ⟨hS', -, hM', -⟩ := GlobalTheory.HL.TermBasic.term_basic L r k S d Λ' hT'
  obtain ⟨v1, v2⟩ := _root_.GlobalTheory.HL.TraceVol.trace_volume L r k S d Λ hT d Λ' hT' (j + 1) _ hJ rfl
  have hY := relIndex_symm_of_sub hβ
    (Submodule.toAddSubgroup_mono (inf_le_inf_right _ (hM.trans inf_le_left)))
    (Submodule.toAddSubgroup_mono (inf_le_inf_right _ (hM'.trans inf_le_left))) b1 b2 v1 v2
  obtain ⟨m, y, hy, hsp⟩ := exists_basis S (j + 1)
  obtain ⟨p1, p2, p3⟩ := _root_.GlobalTheory.HL.VolPerp.vol_perp L S.Hm S.herm Λ Λ' hS hS' m y hy _ _ rfl rfl
  rw [hsp] at p1 p2 p3
  rcases hYy with rfl | rfl
  · exact ⟨hY, p2, b1⟩
  · refine ⟨?_, p1, b1⟩
    rw [← hY] at p3
    exact Nat.eq_of_mul_eq_mul_right (Nat.pos_of_ne_zero p2) p3

end GlobalTheory.HL.FamilyVol
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFamilyTraceVolumeConst =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesReferenceSubgroupsRelIndexEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesReferenceSubgroupsRelIndexEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NoLeak\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFamilyTraceVolumeConst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL GlobalTheory.IdxInt MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.RefVol

theorem relIndex_inf_of_le {G : Type*} [AddGroup G] (P A K : AddSubgroup G) (h : K ≤ P) :
    (P ⊓ A).relIndex K = A.relIndex K := by
  rw [← AddSubgroup.inf_relIndex_right (P ⊓ A) K, ← AddSubgroup.inf_relIndex_right A K]
  congr 1
  ext x
  simp only [AddSubgroup.mem_inf]
  exact ⟨fun hx => ⟨hx.1.2, hx.2⟩, fun hx => ⟨⟨h hx.2, hx.1⟩, hx.2⟩⟩

theorem relIndex_prod {G H : Type*} [AddGroup G] [AddGroup H] (A A' : AddSubgroup G)
    (B B' : AddSubgroup H) :
    (A.prod B).relIndex (A'.prod B') = A.relIndex A' * B.relIndex B' := by
  unfold AddSubgroup.relIndex
  rw [← AddSubgroup.index_prod,
    ← AddSubgroup.index_comap_of_surjective _ (f := (AddSubgroup.prodEquiv A' B').toAddMonoidHom)
      (AddSubgroup.prodEquiv A' B').surjective]
  congr 1

theorem relIndex_inf_comap {G H : Type*} [AddGroup G] [AddGroup H] (φ : G →+ H) (P : AddSubgroup G)
    (A B : AddSubgroup H) :
    (P ⊓ A.comap φ).relIndex (P ⊓ B.comap φ) = (A ⊓ P.map φ).relIndex (B ⊓ P.map φ) := by
  rw [relIndex_inf_of_le _ _ _ inf_le_left, AddSubgroup.relIndex_comap, inf_comm A,
    relIndex_inf_of_le _ _ _ inf_le_right]
  congr 1
  ext y
  simp only [AddSubgroup.mem_map, AddSubgroup.mem_inf, AddSubgroup.mem_comap]
  constructor
  · rintro ⟨x, ⟨h1, h2⟩, rfl⟩
    exact ⟨h2, x, h1, rfl⟩
  · rintro ⟨h2, x, h1, rfl⟩
    exact ⟨x, ⟨h1, h2⟩, rfl⟩

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E]
variable {L : LocE F E} {r k : ℕ} (S : Frames L r k)

noncomputable def sumDiv : S.V × S.V →+ S.V :=
  (algebraMap F E S.th⁻¹ • (LinearMap.id : S.V →ₗ[E] S.V)).toAddMonoidHom.comp
    (AddMonoidHom.fst S.V S.V + AddMonoidHom.snd S.V S.V)

theorem sumDiv_apply (p : S.V × S.V) : sumDiv S p = algebraMap F E S.th⁻¹ • (p.1 + p.2) := rfl

theorem th_mul : algebraMap F E S.th * algebraMap F E S.th⁻¹ = 1 := by
  rw [← map_mul, mul_inv_cancel₀ (_root_.GlobalTheory.FrameLevel.th_ne_zero S), map_one]

theorem refB_eq (J : ℕ) (Λ : Submodule L.O S.V) :
    S.refB J Λ = ((S.spanTo S.f J).toAddSubgroup.prod (S.spanTo S.f' J).toAddSubgroup) ⊓
      Λ.toAddSubgroup.comap (sumDiv S) := by
  unfold Frames.refB
  congr 1
  ext p
  simp only [AddSubgroup.mem_comap, AddSubgroup.mem_map, sumDiv_apply]
  constructor
  · rintro ⟨y, hy, h⟩
    have h' : algebraMap F E S.th • y = p.1 + p.2 := h
    rw [← h', smul_smul, mul_comm (algebraMap F E S.th⁻¹), th_mul, one_smul]
    exact hy
  · intro h
    refine ⟨_, h, ?_⟩
    change algebraMap F E S.th • (algebraMap F E S.th⁻¹ • (p.1 + p.2)) = p.1 + p.2
    rw [smul_smul, th_mul, one_smul]

theorem map_sumDiv (X X' : Submodule E S.V) :
    (X.toAddSubgroup.prod X'.toAddSubgroup).map (sumDiv S) = (X ⊔ X').toAddSubgroup := by
  ext y
  simp only [AddSubgroup.mem_map, AddSubgroup.mem_prod, Submodule.mem_toAddSubgroup, sumDiv_apply]
  constructor
  · rintro ⟨p, ⟨h1, h2⟩, rfl⟩
    exact Submodule.smul_mem _ _ (Submodule.add_mem_sup h1 h2)
  · intro h
    obtain ⟨a, ha, b, hb, rfl⟩ := Submodule.mem_sup.1 h
    refine ⟨(algebraMap F E S.th • a, algebraMap F E S.th • b),
      ⟨X.smul_mem _ ha, X'.smul_mem _ hb⟩, ?_⟩
    rw [← smul_add, smul_smul, mul_comm (algebraMap F E S.th⁻¹), th_mul, one_smul]

theorem refB_relIndex (J : ℕ) (Λ Λ' : Submodule L.O S.V) :
    (S.refB J Λ).relIndex (S.refB J Λ') =
      (Λ ⊓ (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O).toAddSubgroup.relIndex
        (Λ' ⊓ (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O).toAddSubgroup := by
  rw [refB_eq, refB_eq, relIndex_inf_comap, map_sumDiv]
  rfl

theorem refA_relIndex (J : ℕ) (Λ Λ' : Submodule L.O S.V) :
    (S.refA J Λ).relIndex (S.refA J Λ') =
      (Λ ⊓ (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O).toAddSubgroup.relIndex
        (Λ' ⊓ (S.spanTo S.f J ⊔ S.spanTo S.f' J).restrictScalars L.O).toAddSubgroup *
      (Λ ⊓ (perp L S.Hm (S.spanTo S.f J ⊔ S.spanTo S.f' J)).restrictScalars L.O).toAddSubgroup.relIndex
        (Λ' ⊓ (perp L S.Hm (S.spanTo S.f J ⊔ S.spanTo S.f' J)).restrictScalars L.O).toAddSubgroup := by
  unfold Frames.refA
  rw [relIndex_prod, relIndex_prod, AddSubgroup.relIndex_self, mul_one, refB_relIndex]
  rfl

end GlobalTheory.RefVol

theorem GlobalTheory.RefVol.main : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : LocE F E), ∀ (r k : ℕ) (S : Frames L r k), ∀ (j : Fin r) (β βJ : ℕ) (d : S.Datum) (Λ : Submodule L.O S.V), S.IsTerm d Λ → S.InFF β (j + 1) βJ d Λ → ∀ Λ', S.IsTerm d Λ' → S.InFF β (j + 1) βJ d Λ' → (S.refA (j + 1) Λ).relIndex (S.refA (j + 1) Λ') = (S.refA (j + 1) Λ').relIndex (S.refA (j + 1) Λ) ∧ (S.refA (j + 1) Λ).relIndex (S.refA (j + 1) Λ') ≠ 0 := by
  intro F _ _ _ _ _ E _ _ _ L r k S j β βJ d Λ h1 h2 Λ' h3 h4
  have a := _root_.GlobalTheory.HL.FamilyVol.family_vol L r k S j β βJ d Λ h1 h2 Λ' h3 h4 _ (Or.inl rfl)
  have b := _root_.GlobalTheory.HL.FamilyVol.family_vol L r k S j β βJ d Λ h1 h2 Λ' h3 h4 _ (Or.inr rfl)
  rw [GlobalTheory.RefVol.refA_relIndex, GlobalTheory.RefVol.refA_relIndex]
  exact ⟨by rw [a.1, b.1], mul_ne_zero a.2.1 b.2.1⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesReferenceSubgroupsRelIndexEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMoveKernelSymm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMoveKernelSymm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NoLeak\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetMoveTermWeightCharacter\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesReferenceSubgroupsRelIndexEq\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.Cint\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IndexMeasureIntegralTransportAndChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL GlobalTheory.IdxInt MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.KernSym

def flipMv (A B C : Type) [AddCommGroup A] [AddCommGroup B] [AddCommGroup C] :
    A × B × C ≃+ A × B × C where
  toFun w := (w.1, -w.2)
  invFun w := (w.1, -w.2)
  left_inv w := by simp
  right_inv w := by simp
  map_add' w w' := by
    ext <;> simp [add_comm]

section
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E]
variable {L : LocE F E} {r k : ℕ} (S : Frames L r k)

theorem refA_map_flip (J : ℕ) (Λ : Submodule L.O S.V) :
    (S.refA J Λ).map (flipMv (S.V × S.V) S.V E).toAddMonoidHom = S.refA J Λ := by
  have key : ∀ w : S.MW, w ∈ S.refA J Λ → ((w.1, -w.2) : S.MW) ∈ S.refA J Λ := by
    intro w hw
    rw [Frames.refA, AddSubgroup.mem_prod] at hw ⊢
    exact ⟨hw.1, neg_mem hw.2⟩
  ext w
  constructor
  · rintro ⟨v, hv, rfl⟩
    exact key v hv
  · intro hw
    refine ⟨(w.1, -w.2), key w hw, ?_⟩
    show ((w.1, - -w.2) : S.MW) = w
    simp

theorem sOf_flip [CharZero F] (w : S.MW) (hs : S.sOf w + L.cj (S.sOf w) = S.h w.2.1 w.2.1) :
    S.sOf (w.1, -w.2) = L.cj (S.sOf w) := by
  have h1 : S.h (-w.2.1) (-w.2.1) = S.h w.2.1 w.2.1 := by
    simp [Frames.h, hf]
  have h2 : algebraMap F E 2⁻¹ + algebraMap F E 2⁻¹ = 1 := by
    rw [← map_add (f := _), ← map_one (algebraMap F E)]
    congr 1
    norm_num
  have h3 : L.cj (S.sOf w) = S.h w.2.1 w.2.1 - S.sOf w := by
    rw [← hs]; ring
  rw [h3]
  show algebraMap F E 2⁻¹ * S.h (-w.2.1) (-w.2.1) + -w.2.2 = _
  rw [h1, Frames.sOf]
  linear_combination (S.h w.2.1 w.2.1) * h2
end

section
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E]
variable {L : LocE F E} {r k : ℕ} (S : Frames L r k)

theorem mvTo_flip (j : Fin r) (β βJ : ℕ) (d : S.Datum) (Λ Λ' : Submodule L.O S.V)
    (hT : S.IsTerm d Λ) (hF : S.InFF β (j + 1) βJ d Λ) (hF' : S.InFF β (j + 1) βJ d Λ')
    (w : S.MW) (hw : S.MvTo (j + 1) d Λ Λ' w) : S.MvTo (j + 1) d Λ' Λ (w.1, -w.2) := by
  obtain ⟨hm, he⟩ := hw
  obtain ⟨Λ₁, h1, -, h3, h4, -⟩ :=
    _root_.GlobalTheory.HL.MoveTerm.move_term L r k S j β βJ d Λ hT hF w.1.1 w.1.2 w.2.1 (S.sOf w) hm
  have hΛ : Λ₁ = Λ' := SetLike.coe_injective (h1.trans he.symm)
  subst hΛ
  have hs := sOf_flip S w hm.2.2.2.2.2.2.2
  refine ⟨?_, ?_⟩
  · show S.IsMove (j + 1) d Λ₁ w.1.1 w.1.2 (-w.2.1) (S.sOf (w.1, -w.2))
    rw [hs]
    exact h4 hF'
  · show (Λ : Set S.V) = S.moved Λ₁ w.1.1 (-w.2.1) (S.sOf (w.1, -w.2))
    rw [hs]
    exact h3.symm
end

theorem kern_symm : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : LocE F E), ∀ (r k : ℕ) (S : Frames L r k), ∀ (j : Fin r) (β βJ : ℕ) (d : S.Datum) (Λ : Submodule L.O S.V), S.IsTerm d Λ → S.InFF β (j + 1) βJ d Λ → ∀ Λ', S.IsTerm d Λ' → S.InFF β (j + 1) βJ d Λ' → S.kern β (j + 1) βJ d Λ Λ' = S.kern β (j + 1) βJ d Λ' Λ := by
  intro F _ _ _ _ _ E _ _ _ L r k S j β βJ d Λ hT hF Λ' hT' hF'
  obtain ⟨hr, hne⟩ := _root_.GlobalTheory.RefVol.main L r k S j β βJ d Λ hT hF Λ' hT' hF'
  obtain ⟨hmap, hchg⟩ := @_root_.GlobalTheory.IdxInt.Transport.cint_map_and_change S.MW _ S.MW _
  have e1 := (hmap (flipMv (S.V × S.V) S.V E) (S.refA (j + 1) Λ)
    (ind (S.MvTo (j + 1) d Λ' Λ))).2
  rw [refA_map_flip] at e1
  have e2 : (fun w => ind (S.MvTo (j + 1) d Λ' Λ) (flipMv (S.V × S.V) S.V E w)) =
      ind (S.MvTo (j + 1) d Λ Λ') := by
    funext w
    have hiff : S.MvTo (j + 1) d Λ' Λ (flipMv (S.V × S.V) S.V E w) ↔ S.MvTo (j + 1) d Λ Λ' w := by
      constructor
      · intro h
        have h' := mvTo_flip S j β βJ d Λ' Λ hT' hF' hF _ h
        have hw : (((flipMv (S.V × S.V) S.V E w).1, -(flipMv (S.V × S.V) S.V E w).2) : S.MW) = w := by
          show ((w.1, - -w.2) : S.MW) = w
          simp
        rwa [hw] at h'
      · intro h
        exact mvTo_flip S j β βJ d Λ Λ' hT hF hF' w h
    simp only [ind, hiff]
  rw [e2] at e1
  have e3 := (hchg (S.refA (j + 1) Λ) (S.refA (j + 1) Λ') (ind (S.MvTo (j + 1) d Λ' Λ)) hne
    (hr ▸ hne)).2
  rw [← hr] at e3
  have e4 := mul_right_cancel₀ (Nat.cast_ne_zero.mpr hne) e3
  unfold Frames.kern
  rw [e4, e1]

end GlobalTheory.HL.KernSym
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMoveKernelSymm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelBoundByWeight =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelBoundByWeight", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianMovesTotalMeasureEstimates\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NoLeak\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DualInterSelfDualHermitianLatticeSubspace\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMovesFiniteTargetsSplit\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetInFamilyMovedOfNotLeak\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermInvariantsIndependentOfWitnesses\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetMoveTermWeightCharacter\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetTermBasicFacts\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.Cint\nimport Mathlib.Analysis.Complex.Norm\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.IndexMeasureIntegralLinearPositiveNormBound\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormAdditiveCharacterTypePrimeEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL GlobalTheory.IdxInt MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.KernelWeight

section
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E]

alias exists_coord := _root_.GlobalTheory.HL.MoveTotal.exists_coords

end

theorem kernel_weight : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : LocE F E), ∀ (r k : ℕ) (S : Frames L r k), 4 * r + 7 ≤ k → ∀ (j : Fin r) (β βJ : ℕ) (d : S.Datum) (Λ : Submodule L.O S.V), S.IsTerm d Λ → S.InFF β (j + 1) βJ d Λ → ‖∑ᶠ y : {y // S.IsTerm d y ∧ S.InFF β (j + 1) βJ d y}, (S.kern β (j + 1) βJ d Λ y : ℂ) * S.om d y‖ ≤ 24 / 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) := by
  intro F _ _ _ _ _ E _ _ _ L r k S hk j β βJ d Λ hT hF
  have hW := (_root_.GlobalTheory.HL.TermBasic.term_basic L r k S d Λ hT).2.1
  have hom : ‖S.om d Λ‖ = 1 := (_root_.GlobalTheory.HL.WitIndep.witness_independence L r k S d Λ _ _ hW).2.2.2.2
  have hchi : ∀ b u, ‖S.chiM j d Λ b u‖ = 1 := fun b u =>
    (GlobalTheory.FramePsi.psi_unitary_character L r k S).2.2.2 _

  have hmove : ∀ w, S.Mv (j + 1) d Λ w → ∃ Λ₁, S.MvTo (j + 1) d Λ Λ₁ w ∧ S.IsTerm d Λ₁ ∧
      S.om d Λ₁ = S.om d Λ * S.chiM j d Λ w.1 w.2.1 := by
    intro w hw
    obtain ⟨Λ₁, h1, h2, -, -, h5⟩ := _root_.GlobalTheory.HL.MoveTerm.move_term L r k S j β βJ d Λ hT hF _ _ _ _ hw
    refine ⟨Λ₁, ⟨hw, h1⟩, h2, ?_⟩
    obtain ⟨al, hal, hal1⟩ := exists_coord S S.f S.es S.dual _ hW.2.2.1 j _ hw.1
    obtain ⟨al', hal', hal1'⟩ := exists_coord S S.f' S.es' S.dual' _ hW.2.2.2.1 j _ hw.2.1
    rw [h5 al al' hal hal', hal1, hal1']
    rfl
  have huniq : ∀ w Λ₁ Λ₂, S.MvTo (j + 1) d Λ Λ₁ w → S.MvTo (j + 1) d Λ Λ₂ w → Λ₁ = Λ₂ :=
    fun w Λ₁ Λ₂ h1 h2 => SetLike.coe_injective (h1.2.trans h2.2.symm)
  let P : Submodule L.O S.V → Prop := fun y => S.IsTerm d y ∧ S.InFF β (j + 1) βJ d y
  let G : S.MW → ℂ := fun w => if ∃ Λ₁, S.MvTo (j + 1) d Λ Λ₁ w ∧ P Λ₁ then
    S.om d Λ * S.chiM j d Λ w.1 w.2.1 else 0
  obtain ⟨hGn, hGs⟩ := (_root_.GlobalTheory.HL.moves_split_by_target L r k S j β βJ d Λ hT hF).2.2.2.2 P (S.om d) G
    (by
      intro w Λ₁ hw
      by_cases hP : P Λ₁
      · obtain ⟨Λ₂, h1, -, h3⟩ := hmove w hw.1
        rw [if_pos hP, huniq w Λ₁ Λ₂ hw h1, h3]
        exact if_pos ⟨Λ₁, hw, hP⟩
      · rw [if_neg hP]
        refine if_neg ?_
        rintro ⟨Λ₂, h1, h2⟩
        exact hP (huniq w Λ₂ Λ₁ h1 hw ▸ h2))
    (by
      intro w hw
      refine if_neg ?_
      rintro ⟨Λ₂, h1, -⟩
      exact hw h1.1)
  obtain ⟨-, hLn, hHn, -, hLb, hHb⟩ := _root_.GlobalTheory.HL.MoveTotal.total_moves L r k S hk j β βJ d Λ hT hF
  obtain ⟨hadd, hsm, -, -⟩ := _root_.GlobalTheory.IdxInt.Lin.main (S.refA (j + 1) Λ)
  set H : S.MW → ℂ := fun w => ind (S.Mv (j + 1) d Λ) w * S.chiM j d Λ w.1 w.2.1 with hH
  obtain ⟨hn2, hc2⟩ := hsm (-S.om d Λ) H hHn
  obtain ⟨hn3, hc3, -⟩ := hadd G _ hGn hn2
  have hb := (hadd _ _ hn3 hLn).2.2 (by
    intro w
    simp only [Pi.add_apply, hH, ind, G]
    by_cases hw : S.Mv (j + 1) d Λ w
    · by_cases hex : ∃ Λ₁, S.MvTo (j + 1) d Λ Λ₁ w ∧ P Λ₁
      · rw [if_pos hex, if_pos hw]
        split_ifs <;> simp
      · have hl : ¬ S.NoLeak Λ w.2.1 := by
          intro hl
          obtain ⟨Λ₁, h1, h2, -⟩ := hmove w hw
          exact hex ⟨Λ₁, h1, h2, _root_.GlobalTheory.HL.OffLeak.inFF_moved_of_not_leak L r k S j β βJ d Λ hT hF _ _ _ _ hw hl Λ₁ h1.2⟩
        rw [if_neg hex, if_pos hw, if_pos ⟨hw, hl⟩]
        simp [hom, hchi]
    · have hex : ¬ ∃ Λ₁, S.MvTo (j + 1) d Λ Λ₁ w ∧ P Λ₁ := by
        rintro ⟨Λ₂, h1, -⟩
        exact hw h1.1
      rw [if_neg hex, if_neg hw, if_neg (fun h => hw h.1)]
      simp)
  rw [hc3, hc2] at hb
  have hcK : 0 ≤ S.cK β βJ := by
    unfold Frames.cK
    positivity
  have hG : ‖cint (S.refA (j + 1) Λ) G‖ ≤
      (cint (S.refA (j + 1) Λ) (ind fun w => S.Mv (j + 1) d Λ w ∧ ¬ S.NoLeak Λ w.2.1)).re +
        ‖cint (S.refA (j + 1) Λ) H‖ := by
    have e : cint (S.refA (j + 1) Λ) G =
        (cint (S.refA (j + 1) Λ) G + -S.om d Λ * cint (S.refA (j + 1) Λ) H) +
          S.om d Λ * cint (S.refA (j + 1) Λ) H := by ring
    rw [e]
    refine (norm_add_le _ _).trans (add_le_add hb ?_)
    rw [norm_mul, hom, one_mul]
  have := mul_le_mul_of_nonneg_left hG hcK
  show ‖∑ᶠ y : {y // P y}, (S.kern β (j + 1) βJ d Λ y : ℂ) * S.om d y‖ ≤ _
  rw [hGs, norm_mul, Complex.norm_real, Real.norm_of_nonneg hcK]
  linarith

end GlobalTheory.HL.KernelWeight
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelBoundByWeight =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelRowSumNearOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelRowSumNearOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NoLeak\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMovesFiniteTargetsSplit\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetInFamilyMovedOfNotLeak\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianMovesTotalMeasureEstimates\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.IndexMeasureIntegralLinearPositiveNormBound\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.MoveLatticeIsTermSameDatumWithWitnesses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL GlobalTheory.IdxInt MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E]
  [Algebra F E] [TopologicalSpace E] {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ}
  (S : _root_.GlobalTheory.HL.Frames L r k) in
private theorem cK_nonneg' (β βJ : ℕ) :
    0 ≤ S.cK β βJ := by
  unfold _root_.GlobalTheory.HL.Frames.cK
  positivity

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem ind_eq_one_of_pos {W : Type} {P : W → Prop} {w : W} (h : P w) :
    _root_.GlobalTheory.IdxInt.ind P w = 1 := by
  unfold _root_.GlobalTheory.IdxInt.ind
  exact if_pos h

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
private theorem ind_eq_zero_of_not {W : Type} {P : W → Prop} {w : W} (h : ¬ P w) :
    _root_.GlobalTheory.IdxInt.ind P w = 0 := by
  unfold _root_.GlobalTheory.IdxInt.ind
  exact if_neg h

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E]
  [Algebra F E] [TopologicalSpace E] {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ}
  (S : _root_.GlobalTheory.HL.Frames L r k) in
private theorem eq_of_MvTo_of_MvTo {a : ℕ} {d : S.Datum}
    {Λ Λ₁ Λ₂ : Submodule L.O S.V} {w : S.MW}
    (h₁ : S.MvTo a d Λ Λ₁ w) (h₂ : S.MvTo a d Λ Λ₂ w) : Λ₁ = Λ₂ := by
  unfold _root_.GlobalTheory.HL.Frames.MvTo at h₁ h₂
  exact SetLike.coe_injective (h₁.2.trans h₂.2.symm)

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E]
  [Algebra F E] [TopologicalSpace E] {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ}
  (S : _root_.GlobalTheory.HL.Frames L r k) in
private theorem Mv_of_MvTo {a : ℕ} {d : S.Datum}
    {Λ Λ₁ : Submodule L.O S.V} {w : S.MW}
    (h : S.MvTo a d Λ Λ₁ w) : S.Mv a d Λ w := by
  unfold _root_.GlobalTheory.HL.Frames.MvTo at h
  exact h.1

open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E]
  [Algebra F E] [TopologicalSpace E] {L : _root_.Formalism.MainNotions.S.Loc.LocE F E} {r k : ℕ}
  (S : _root_.GlobalTheory.HL.Frames L r k) in
private theorem exists_MvTo_isTerm_of_Mv_of_InFF [IsNonarchimedeanLocalField F] [CharZero F]
    (j : Fin r) (β βJ : ℕ) (d : S.Datum) (Λ : Submodule L.O S.V)
    (hT : S.IsTerm d Λ) (hF : S.InFF β (j + 1) βJ d Λ)
    (w : S.MW) (hw : S.Mv (j + 1) d Λ w) :
    ∃ Λ₁, S.MvTo (j + 1) d Λ Λ₁ w ∧ S.IsTerm d Λ₁ := by
  have hw' := hw
  unfold _root_.GlobalTheory.HL.Frames.Mv at hw'
  obtain ⟨n₀, -, n₀', -, n'', -, -, -, -, -, hmov, hW⟩ :=
    _root_.GlobalTheory.HL.MoveWit.main L r k S j β βJ d Λ hT hF _ _ _ _ hw'
  refine ⟨n₀⁻¹ • Λ, ?_, ?_⟩
  · unfold _root_.GlobalTheory.HL.Frames.MvTo
    exact ⟨hw, hmov⟩
  · unfold _root_.GlobalTheory.HL.Frames.IsTerm
    exact ⟨⟨_, _⟩, hW⟩


open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
open ValuativeRel MeasureTheory in
open scoped Pointwise ENNReal Classical in
theorem _root_.GlobalTheory.HL.kern_row_sum : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : _root_.Formalism.MainNotions.S.Loc.LocE F E), ∀ (r k : ℕ) (S : _root_.GlobalTheory.HL.Frames L r k), 4 * r + 7 ≤ k → ∀ (j : Fin r) (β βJ : ℕ) (d : S.Datum) (Λ : Submodule L.O S.V), S.IsTerm d Λ → S.InFF β (j + 1) βJ d Λ → |(∑ᶠ y : {y // S.IsTerm d y ∧ S.InFF β (j + 1) βJ d y}, S.kern β (j + 1) βJ d Λ y) - 1| ≤ 24 / 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) := by
  intro F _ _ _ _ _ E _ _ _ L r k S hk j β βJ d Λ hT hF
  obtain ⟨-, -, hfinK, -, hsplit⟩ :=
    _root_.GlobalTheory.HL.moves_split_by_target L r k S j β βJ d Λ hT hF
  obtain ⟨hNMv, hNLeak, -, hI, hIleak, -⟩ :=
    _root_.GlobalTheory.HL.MoveTotal.total_moves L r k S hk j β βJ d Λ hT hF
  have hlin := _root_.GlobalTheory.IdxInt.Lin.main (S.refA (↑j + 1) Λ)
  have hc := cK_nonneg' S β βJ
  set Good : S.MW → Prop := fun w => ∃ Λ₁, S.MvTo (↑j + 1) d Λ Λ₁ w ∧
    (S.IsTerm d Λ₁ ∧ S.InFF β (↑j + 1) βJ d Λ₁) with hGood
  obtain ⟨hNG, hsum⟩ := hsplit
    (fun y => S.IsTerm d y ∧ S.InFF β (↑j + 1) βJ d y)
    (fun _ => 1) (_root_.GlobalTheory.IdxInt.ind Good)
    (fun w Λ₁ h => by
      by_cases hP : S.IsTerm d Λ₁ ∧ S.InFF β (↑j + 1) βJ d Λ₁
      · rw [if_pos hP, ind_eq_one_of_pos ⟨Λ₁, h, hP⟩]
      · rw [if_neg hP, ind_eq_zero_of_not]
        rintro ⟨Λ₂, h₂, hP₂⟩
        exact hP (eq_of_MvTo_of_MvTo S h₂ h ▸ hP₂))
    (fun w hw => ind_eq_zero_of_not fun ⟨Λ₁, h, _⟩ =>
      hw (Mv_of_MvTo S h))
  have hsupp : (Function.support fun y : {y // S.IsTerm d y ∧
      S.InFF β (↑j + 1) βJ d y} =>
        S.kern β (↑j + 1) βJ d Λ ↑y).Finite :=
    (hfinK.preimage Subtype.val_injective.injOn).subset fun y hy => hy
  have hK : (((∑ᶠ y : {y // S.IsTerm d y ∧
      S.InFF β (↑j + 1) βJ d y},
        S.kern β (↑j + 1) βJ d Λ ↑y : ℝ)) : ℂ) =
      (S.cK β βJ : ℂ) *
        _root_.GlobalTheory.IdxInt.cint (S.refA (↑j + 1) Λ)
          (_root_.GlobalTheory.IdxInt.ind Good) := by
    have hmap := map_finsum Complex.ofRealHom hsupp
    simp only [Complex.ofRealHom_eq_coe] at hmap
    rw [hmap, ← hsum]
    simp
  set H : S.MW → ℂ := fun w =>
    _root_.GlobalTheory.IdxInt.ind (S.Mv (↑j + 1) d Λ) w +
      (-1) * _root_.GlobalTheory.IdxInt.ind Good w with hH
  have hNH : _root_.GlobalTheory.IdxInt.Nice (S.refA (↑j + 1) Λ) H :=
    (hlin.1 _ _ hNMv (hlin.2.1 (-1) _ hNG).1).1
  have hIH : _root_.GlobalTheory.IdxInt.cint (S.refA (↑j + 1) Λ) H =
      _root_.GlobalTheory.IdxInt.cint (S.refA (↑j + 1) Λ)
          (_root_.GlobalTheory.IdxInt.ind (S.Mv (↑j + 1) d Λ)) +
        (-1) * _root_.GlobalTheory.IdxInt.cint (S.refA (↑j + 1) Λ)
          (_root_.GlobalTheory.IdxInt.ind Good) := by
    rw [← (hlin.2.1 (-1) _ hNG).2]
    exact (hlin.1 _ _ hNMv (hlin.2.1 (-1) _ hNG).1).2.1
  have hbound : ∀ w, ‖H w‖ ≤ (_root_.GlobalTheory.IdxInt.ind
      (fun w => S.Mv (↑j + 1) d Λ w ∧ ¬ S.NoLeak Λ w.2.1) w).re := by
    intro w
    by_cases hw : S.Mv (↑j + 1) d Λ w
    · by_cases hg : Good w
      · rw [hH]
        simp only
        rw [ind_eq_one_of_pos hw, ind_eq_one_of_pos hg]
        unfold _root_.GlobalTheory.IdxInt.ind
        split_ifs <;> simp
      · have hleak : ¬ S.NoLeak Λ w.2.1 := by
          intro hno
          apply hg
          obtain ⟨Λ₁, h₁, hT₁⟩ := exists_MvTo_isTerm_of_Mv_of_InFF S j β βJ d Λ hT hF w hw
          refine ⟨Λ₁, h₁, hT₁, ?_⟩
          have hw' := hw
          unfold _root_.GlobalTheory.HL.Frames.Mv at hw'
          have h₁' := h₁
          unfold _root_.GlobalTheory.HL.Frames.MvTo at h₁'
          unfold _root_.GlobalTheory.HL.Frames.NoLeak at hno
          exact _root_.GlobalTheory.HL.OffLeak.inFF_moved_of_not_leak L r k S j β βJ d Λ hT hF _ _ _ _
            hw' hno Λ₁ h₁'.2
        rw [hH]
        simp only
        rw [ind_eq_one_of_pos hw, ind_eq_zero_of_not hg, ind_eq_one_of_pos ⟨hw, hleak⟩]
        simp
    · have hg : ¬ Good w := fun ⟨Λ₁, h, _⟩ => hw (Mv_of_MvTo S h)
      rw [hH]
      simp only
      rw [ind_eq_zero_of_not hw, ind_eq_zero_of_not hg]
      unfold _root_.GlobalTheory.IdxInt.ind
      split_ifs <;> simp
  have hnorm := (hlin.1 _ _ hNH hNLeak).2.2 hbound
  have hKre := congrArg Complex.re hK
  rw [Complex.ofReal_re, Complex.re_ofReal_mul] at hKre
  have hsplitre := congrArg Complex.re hIH
  simp only [Complex.add_re, neg_one_mul, Complex.neg_re] at hsplitre
  have hHre : |S.cK β βJ *
      (_root_.GlobalTheory.IdxInt.cint (S.refA (↑j + 1) Λ) H).re| ≤
      16 / 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) := by
    rw [abs_mul, abs_of_nonneg hc]
    exact (mul_le_mul_of_nonneg_left (Complex.abs_re_le_norm _) hc).trans
      ((mul_le_mul_of_nonneg_left hnorm hc).trans hIleak)
  rw [hKre]
  rw [hsplitre] at hHre
  rw [abs_le] at hI hHre ⊢
  constructor <;> nlinarith [hI.1, hI.2, hHre.1, hHre.2]

end GlobalTheory.HL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelRowSumNearOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSymmInvariantKernelHermitianFrames =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSymmInvariantKernelHermitianFrames", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NoLeak\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameMovesKernelCommonStabilizerSmulEq\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMoveKernelSymm\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermDoubleCosetMovesFiniteTargetsSplit\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelBoundByWeight\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetKernelRowSumNearOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL

theorem exists_symm_invariant_kernel : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] (L : LocE F E), ∀ (r k : ℕ) (S : Frames L r k), 4 * r + 7 ≤ k → ∀ (j : Fin r) (β βJ : ℕ) (d : S.Datum) (P : Submodule L.O S.V → Prop), (∀ Λ, P Λ ↔ (S.IsTerm d Λ ∧ S.InFF β (j + 1) βJ d Λ)) → ∃ m : Submodule L.O S.V → Submodule L.O S.V → ℝ, (∀ h ∈ S.St, ∀ x y, P x → P y → m (h • x) (h • y) = m x y) ∧ ∀ x, P x → {y | P y ∧ m x y ≠ 0}.Finite ∧ (∀ y, P y → 0 ≤ m x y ∧ m x y = m y x) ∧ |(∑ᶠ y : {y // P y}, m x y) - 1| ≤ 24 / 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) ∧ ‖∑ᶠ y : {y // P y}, (m x y : ℂ) * S.om d y‖ ≤ 24 / 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) := by
  intro F _ _ _ _ _ E _ _ _ L r k S hk j β βJ d P hP
  have hPe : P = fun Λ => S.IsTerm d Λ ∧ S.InFF β (j + 1) βJ d Λ :=
    funext fun Λ => propext (hP Λ)
  subst hPe
  refine ⟨fun x y => S.kern β (j + 1) βJ d x y, ?_, ?_⟩
  · intro h hh x y hx _
    exact _root_.GlobalTheory.HL.kern_smul_eq L r k S d x hx.1 β (j + 1) βJ y h hh
  · intro x hx
    have base := _root_.GlobalTheory.HL.moves_split_by_target L r k S j β βJ d x hx.1 hx.2
    refine ⟨?_, ?_, _root_.GlobalTheory.HL.kern_row_sum L r k S hk j β βJ d x hx.1 hx.2,
      _root_.GlobalTheory.HL.KernelWeight.kernel_weight L r k S hk j β βJ d x hx.1 hx.2⟩
    · exact base.2.2.1.subset fun y hy => hy.2
    · intro y hy
      exact ⟨base.2.2.2.1 y, _root_.GlobalTheory.HL.KernSym.kern_symm L r k S j β βJ d x hx.1 hx.2 y hy.1 hy.2⟩

end GlobalTheory.HL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSymmInvariantKernelHermitianFrames =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormOrbitSumLeOfSymmKernel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormOrbitSumLeOfSymmKernel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsHermND\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.InvVolMulPosLeConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL

theorem sum_eq_sum_of_symm_rel {ι : Type*} (Z : Finset ι) (r : ι → ι → Prop)
    (hr : ∀ p q, r p q → r q p) (hne : ∀ p ∈ Z, ∃ q ∈ Z, r p q) (F H : ι → ℂ)
    (hFH : ∀ p ∈ Z, ∀ q ∈ Z, r p q →
      F p * ((Z.filter (r q)).card : ℂ) = H q * ((Z.filter (r p)).card : ℂ)) :
    ∑ p ∈ Z, F p = ∑ p ∈ Z, H p := by
  have hd : ∀ p ∈ Z, ((Z.filter (r p)).card : ℂ) ≠ 0 := by
    intro p hp
    obtain ⟨q, hq, hpq⟩ := hne p hp
    exact_mod_cast (Finset.card_pos.2 ⟨q, Finset.mem_filter.2 ⟨hq, hpq⟩⟩).ne'
  have key : ∀ F : ι → ℂ, ∑ p ∈ Z, F p =
      ∑ p ∈ Z, ∑ q ∈ Z, if r p q then F p / ((Z.filter (r p)).card : ℂ) else 0 := by
    intro F
    refine Finset.sum_congr rfl fun p hp => ?_
    rw [← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul, mul_div_cancel₀ _ (hd p hp)]
  rw [key F, key H, Finset.sum_comm]
  refine Finset.sum_congr rfl fun q hq => Finset.sum_congr rfl fun p hp => ?_
  by_cases h : r p q
  · rw [if_pos h, if_pos (hr _ _ h), div_eq_div_iff (hd p hp) (hd q hq), hFH p hp q hq h]
  · rw [if_neg h, if_neg (fun h' => h (hr _ _ h'))]

section
variable {G X : Type} [Group G] [MulAction G X] (St : Subgroup G)

theorem ncard_stabilizer_orbit (y w : X) :
    {w' | ∃ h ∈ St, h • y = y ∧ h • w = w'}.ncard =
      (St ⊓ MulAction.stabilizer G w).relIndex (St ⊓ MulAction.stabilizer G y) := by
  have h1 : {w' | ∃ h ∈ St, h • y = y ∧ h • w = w'} =
      MulAction.orbit (St ⊓ MulAction.stabilizer G y : Subgroup G) w := by
    ext w'
    constructor
    · rintro ⟨h, h1, h2, h3⟩
      exact ⟨⟨h, h1, h2⟩, h3⟩
    · rintro ⟨⟨h, h1, h2⟩, h3⟩
      exact ⟨h, h1, h2, h3⟩
  rw [h1, ← MulAction.index_stabilizer, Subgroup.relIndex]
  congr 1
  ext ⟨h, h1, h2⟩
  simp only [MulAction.mem_stabilizer_iff, Subgroup.mem_subgroupOf, Subgroup.mem_inf]
  exact ⟨fun h3 => ⟨h1, h3⟩, fun h3 => h3.2⟩

theorem relIndex_stabilizer_smul {g : G} (hg : g ∈ St) (y w : X) :
    (St ⊓ MulAction.stabilizer G (g • w)).relIndex (St ⊓ MulAction.stabilizer G (g • y)) =
      (St ⊓ MulAction.stabilizer G w).relIndex (St ⊓ MulAction.stabilizer G y) := by
  rw [← ncard_stabilizer_orbit, ← ncard_stabilizer_orbit,
    ← Set.ncard_image_of_injective {w' | ∃ h ∈ St, h • y = y ∧ h • w = w'} (MulAction.injective g)]
  congr 1
  ext w'
  simp only [Set.mem_ofPred_eq, Set.mem_image]
  constructor
  · rintro ⟨h, hh, h1, h2⟩
    refine ⟨_, ⟨g⁻¹ * h * g, St.mul_mem (St.mul_mem (St.inv_mem hg) hh) hg, ?_, rfl⟩, ?_⟩
    · rw [mul_smul, mul_smul, h1, inv_smul_smul]
    · rw [mul_smul, mul_smul, h2, smul_inv_smul]
  · rintro ⟨_, ⟨h, hh, h1, rfl⟩, rfl⟩
    refine ⟨g * h * g⁻¹, St.mul_mem (St.mul_mem hg hh) (St.inv_mem hg), ?_, ?_⟩
    · rw [mul_smul, mul_smul, inv_smul_smul, h1]
    · rw [mul_smul, mul_smul, inv_smul_smul]

theorem invVol_mul_relIndex_comm {G : Type} [Group G] (K0 A B : Subgroup G)
    (hA : K0.relIndex A ≠ 0) (hA' : A.relIndex K0 ≠ 0)
    (hB : K0.relIndex B ≠ 0) (hB' : B.relIndex K0 ≠ 0) :
    invVol K0 A * (B.relIndex A : ℝ) = invVol K0 B * (A.relIndex B : ℝ) := by
  have h1 : K0.relIndex (A ⊓ B) ≠ 0 := fun h =>
    hA (Subgroup.relIndex_eq_zero_of_le_right inf_le_left h)
  have h2 : (A ⊓ B).relIndex K0 ≠ 0 := Subgroup.relIndex_inf_ne_zero hA' hB'
  have e1 := (invVol_mul_pos_le_conj K0 A (A ⊓ B) hA hA' h1 h2).2.2.1 inf_le_left
  have e2 := (invVol_mul_pos_le_conj K0 B (A ⊓ B) hB hB' h1 h2).2.2.1 inf_le_right
  rw [Subgroup.inf_relIndex_left] at e1
  rw [Subgroup.inf_relIndex_right] at e2
  rw [← e1, ← e2]

end

theorem norm_orbit_sum_le_of_symm_kernel : ∀ {G X : Type} [Group G] [MulAction G X] (St K0 : Subgroup G) (P : X → Prop) (om : X → ℂ) (m : X → X → ℝ) (e : ℝ), K0 ≤ St → (∀ h ∈ St, ∀ x, P x → P (h • x) ∧ om (h • x) = om x ∧ invVol K0 (St ⊓ MulAction.stabilizer G (h • x)) = invVol K0 (St ⊓ MulAction.stabilizer G x) ∧ ∀ y, P y → m (h • x) (h • y) = m x y) → (∀ x, P x → K0.relIndex (St ⊓ MulAction.stabilizer G x) ≠ 0 ∧ (St ⊓ MulAction.stabilizer G x).relIndex K0 ≠ 0 ∧ ‖om x‖ = 1 ∧ {y | P y ∧ m x y ≠ 0}.Finite ∧ (∀ y, P y → 0 ≤ m x y ∧ m x y = m y x) ∧ |(∑ᶠ y : {y // P y}, m x y) - 1| ≤ e ∧ ‖∑ᶠ y : {y // P y}, (m x y : ℂ) * om y‖ ≤ e) → {o : MulAction.orbitRel.Quotient St X | P o.out}.Finite → ‖∑' o : MulAction.orbitRel.Quotient St X, if P o.out then ((invVol K0 (St ⊓ MulAction.stabilizer G o.out) : ℝ) : ℂ) * om o.out else 0‖ ≤ 2 * e * ∑' o : MulAction.orbitRel.Quotient St X, if P o.out then invVol K0 (St ⊓ MulAction.stabilizer G o.out) else 0 := by
  intro G X _ _ St K0 P om m e _ hinv hP hfin
  set mu : X → ℝ := fun x => invVol K0 (St ⊓ MulAction.stabilizer G x) with hmu
  have hN : ∀ x, ∃ s : Finset X, P x → ∀ y, y ∈ s ↔ P y ∧ m x y ≠ 0 := by
    intro x
    by_cases hx : P x
    · exact ⟨(hP x hx).2.2.2.1.toFinset, fun _ y => by simp⟩
    · exact ⟨∅, fun h => absurd h hx⟩
  choose N hN using hN
  have hO : ∀ o, o ∈ hfin.toFinset ↔ P o.out := fun o => by simp
  generalize hfin.toFinset = O at hO
  have hR : ∀ x, P x → |(∑ y ∈ N x, m x y) - 1| ≤ e := by
    intro x hx
    have := (hP x hx).2.2.2.2.2.1
    rwa [finsum_subtype_eq_finsum_cond (f := fun y => m x y),
      finsum_cond_eq_sum_of_cond_iff (f := fun y => m x y) (t := N x)] at this
    intro y hy
    rw [hN x hx]
    exact ⟨fun h => ⟨h, hy⟩, fun h => h.1⟩
  have hS : ∀ x, P x → ‖∑ y ∈ N x, (m x y : ℂ) * om y‖ ≤ e := by
    intro x hx
    have := (hP x hx).2.2.2.2.2.2
    rwa [finsum_subtype_eq_finsum_cond (f := fun y => (m x y : ℂ) * om y),
      finsum_cond_eq_sum_of_cond_iff (f := fun y => (m x y : ℂ) * om y) (t := N x)] at this
    intro y hy
    rw [hN x hx]
    refine ⟨fun h => ⟨h, fun h0 => hy ?_⟩, fun h => h.1⟩
    simp [h0]
  have hpos : ∀ x, P x → 0 < mu x := fun x hx =>
    (invVol_mul_pos_le_conj K0 _ _ (hP x hx).1 (hP x hx).2.1 (hP x hx).1 (hP x hx).2.1).2.1
  have t1 : (∑' o : MulAction.orbitRel.Quotient St X,
      if P o.out then ((mu o.out : ℝ) : ℂ) * om o.out else 0) =
      ∑ o ∈ O, ((mu o.out : ℝ) : ℂ) * om o.out := by
    rw [tsum_eq_sum (s := O) (fun o ho => if_neg (fun h => ho ((hO o).2 h)))]
    exact Finset.sum_congr rfl fun o ho => if_pos ((hO o).1 ho)
  have t2 : (∑' o : MulAction.orbitRel.Quotient St X, if P o.out then mu o.out else 0) =
      ∑ o ∈ O, mu o.out := by
    rw [tsum_eq_sum (s := O) (fun o ho => if_neg (fun h => ho ((hO o).2 h)))]
    exact Finset.sum_congr rfl fun o ho => if_pos ((hO o).1 ho)
  refine (congrArg norm t1).trans_le (le_of_le_of_eq ?_ (congrArg (2 * e * ·) t2.symm))
  have huniq : ∀ (o o' : MulAction.orbitRel.Quotient St X) (g : G), g ∈ St →
      g • o.out = o'.out → o = o' := by
    intro o o' g hg h
    rw [← Quotient.out_eq o, ← Quotient.out_eq o']
    exact (Quotient.sound (show MulAction.orbitRel St X o'.out o.out from ⟨⟨g, hg⟩, h⟩)).symm
  have hrep : ∀ z : X, ∃ o : MulAction.orbitRel.Quotient St X, ∃ g ∈ St, g • z = o.out := by
    intro z
    obtain ⟨⟨g, hg⟩, h⟩ : MulAction.orbitRel St X (Quotient.mk _ z).out z := Quotient.mk_out z
    exact ⟨_, g, hg, h⟩
  have unf : ∑ o ∈ O, ∑ z ∈ N o.out, ((mu o.out : ℝ) : ℂ) * ((m o.out z : ℂ) * om z) =
      ∑ o ∈ O, ∑ z ∈ N o.out, ((mu o.out : ℝ) : ℂ) * ((m o.out z : ℂ) * om o.out) := by
    rw [Finset.sum_sigma', Finset.sum_sigma']
    set Z := O.sigma fun o => N o.out with hZ
    have mZ : ∀ p, p ∈ Z ↔ P p.1.out ∧ P p.2 ∧ m p.1.out p.2 ≠ 0 := by
      intro p
      rw [hZ, Finset.mem_sigma, hO]
      exact and_congr_right fun h => hN _ h _
    let r : (Σ _ : MulAction.orbitRel.Quotient St X, X) →
        (Σ _ : MulAction.orbitRel.Quotient St X, X) → Prop :=
      fun p q => ∃ g ∈ St, g • p.2 = q.1.out ∧ g • p.1.out = q.2
    have hr : ∀ p q, r p q → r q p := by
      rintro p q ⟨g, hg, h1, h2⟩
      exact ⟨g⁻¹, St.inv_mem hg, by rw [← h2, inv_smul_smul], by rw [← h1, inv_smul_smul]⟩
    have hm : ∀ p ∈ Z, ∀ q, r p q → m q.1.out q.2 = m p.1.out p.2 := by
      rintro p hp q ⟨g, hg, h1, h2⟩
      obtain ⟨a, b, -⟩ := (mZ p).1 hp
      rw [← h1, ← h2, (hinv g hg _ b).2.2.2 _ a, ((hP _ b).2.2.2.2.1 _ a).2]
    have hmem : ∀ p ∈ Z, ∀ q, r p q → q ∈ Z := by
      intro p hp q hpq
      have := hm p hp q hpq
      obtain ⟨g, hg, h1, h2⟩ := hpq
      obtain ⟨a, b, c⟩ := (mZ p).1 hp
      rw [mZ, this, ← h1, ← h2]
      exact ⟨(hinv g hg _ b).1, (hinv g hg _ a).1, c⟩
    have hdeg : ∀ p ∈ Z, ∀ q, r p q → (Z.filter (r p)).card =
        (St ⊓ MulAction.stabilizer G q.2).relIndex (St ⊓ MulAction.stabilizer G q.1.out) := by
      rintro p hp ⟨o, w⟩ ⟨g, hg, h1, h2⟩
      dsimp only at h1 h2 ⊢
      rw [← ncard_stabilizer_orbit, ← Set.ncard_coe_finset,
        ← Set.ncard_image_of_injective _ (sigma_mk_injective (β := fun _ => X) (i := o))]
      congr 1
      ext ⟨o', w'⟩
      simp only [Finset.coe_filter, Set.mem_ofPred_eq, Set.mem_image]
      constructor
      · rintro ⟨-, g', hg', h1', h2'⟩
        dsimp only at h1' h2'
        have e1 : (g' * g⁻¹) • o.out = o'.out := by
          rw [← h1, mul_smul, inv_smul_smul, h1']
        have hgg := St.mul_mem hg' (St.inv_mem hg)
        obtain rfl := huniq _ _ _ hgg e1
        refine ⟨w', ⟨_, hgg, e1, ?_⟩, rfl⟩
        rw [← h2, mul_smul, inv_smul_smul, h2']
      · rintro ⟨w'', ⟨h, hh, e1, e2⟩, e3⟩
        rw [← e3]
        have : r p ⟨o, w''⟩ :=
          ⟨h * g, St.mul_mem hh hg, by rw [mul_smul, h1, e1], by rw [mul_smul, h2, e2]⟩
        exact ⟨hmem p hp _ this, this⟩
    refine sum_eq_sum_of_symm_rel Z r hr ?_ _ _ ?_
    · intro p hp
      obtain ⟨o, g, hg, h⟩ := hrep p.2
      have : r p ⟨o, g • p.1.out⟩ := ⟨g, hg, h, rfl⟩
      exact ⟨_, hmem p hp _ this, this⟩
    · intro p hp q hq hpq
      rw [hdeg p hp q hpq, hdeg q hq p (hr _ _ hpq), hm p hp q hpq]
      obtain ⟨g, hg, h1, h2⟩ := hpq
      obtain ⟨a, b, c⟩ := (mZ p).1 hp
      have e1 := invVol_mul_relIndex_comm K0 _ _ (hP _ a).1 (hP _ a).2.1 (hP _ b).1 (hP _ b).2.1
      have e2 := congrArg (fun t : ℝ => (t : ℂ)) e1
      rw [← h1, ← h2, relIndex_stabilizer_smul St hg, (hinv g hg _ b).2.1]
      simp only [hmu]
      rw [(hinv g hg _ b).2.2.1]
      push_cast at e2
      linear_combination (m p.1.out p.2 : ℂ) * om p.2 * e2
  have dec : ∑ o ∈ O, ((mu o.out : ℝ) : ℂ) * om o.out =
      ∑ o ∈ O, ((mu o.out : ℝ) : ℂ) * (∑ z ∈ N o.out, (m o.out z : ℂ) * om z) -
      ∑ o ∈ O, ((mu o.out : ℝ) : ℂ) * om o.out * (((∑ z ∈ N o.out, m o.out z) - 1 : ℝ) : ℂ) := by
    simp only [Finset.mul_sum]
    rw [unf, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun o _ => ?_
    rw [← Finset.mul_sum, ← Finset.sum_mul]
    push_cast
    ring
  rw [dec]
  refine (norm_sub_le _ _).trans ?_
  have b1 : ‖∑ o ∈ O, ((mu o.out : ℝ) : ℂ) * (∑ z ∈ N o.out, (m o.out z : ℂ) * om z)‖ ≤
      ∑ o ∈ O, e * mu o.out := by
    refine norm_sum_le_of_le _ fun o ho => ?_
    have h := (hO o).1 ho
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (hpos _ h), mul_comm]
    exact mul_le_mul_of_nonneg_right (hS _ h) (hpos _ h).le
  have b2 : ‖∑ o ∈ O, ((mu o.out : ℝ) : ℂ) * om o.out *
      (((∑ z ∈ N o.out, m o.out z) - 1 : ℝ) : ℂ)‖ ≤ ∑ o ∈ O, e * mu o.out := by
    refine norm_sum_le_of_le _ fun o ho => ?_
    have h := (hO o).1 ho
    rw [norm_mul, norm_mul, Complex.norm_real, Complex.norm_real, Real.norm_eq_abs,
      Real.norm_eq_abs, abs_of_pos (hpos _ h), (hP _ h).2.2.1, mul_one, mul_comm]
    exact mul_le_mul_of_nonneg_right (hR _ h) (hpos _ h).le
  rw [← Finset.mul_sum] at b1 b2
  linarith

end GlobalTheory.HL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormOrbitSumLeOfSymmKernel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeLeMassSecondTypeFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeLeMassSecondTypeFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ComplementReferenceCompactSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CommonStabilizerStabilizersCommensurableVolume\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSymmInvariantKernelHermitianFrames\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetMassLeAndFinite\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormOrbitSumLeOfSymmKernel\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianDoubleCosetTermBasicFacts\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramesStabilizerActsOnTerms\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermExponentsNonnegAndDefectGroupBound\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermInvariantsIndependentOfWitnesses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S.Loc GlobalTheory.HL MeasureTheory
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.AmpCancel

theorem ofReal_tsum_ite {ι : Type} (p : ι → Prop) (f : ι → ℝ) (hf : ∀ i, 0 ≤ f i)
    (hfin : {i | p i}.Finite) :
    ENNReal.ofReal (∑' i, if p i then f i else 0) =
      ∑' i, if p i then ENNReal.ofReal (f i) else 0 := by
  have hs : ∀ i, i ∉ hfin.toFinset → ¬ p i := fun i hi h => hi (hfin.mem_toFinset.2 h)
  have hs' : ∀ i ∈ hfin.toFinset, p i := fun i hi => hfin.mem_toFinset.1 hi
  rw [tsum_eq_sum (s := hfin.toFinset) (fun i hi => if_neg (hs i hi)),
    tsum_eq_sum (s := hfin.toFinset) (fun i hi => if_neg (hs i hi)),
    Finset.sum_congr rfl (fun i hi => if_pos (hs' i hi)),
    Finset.sum_congr rfl (fun i hi => if_pos (hs' i hi)),
    ENNReal.ofReal_sum_of_nonneg (fun i _ => hf i)]

theorem amp_le_mass {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
    [IsNonarchimedeanLocalField F] [CharZero F] {E : Type} [CommRing E] [Algebra F E]
    [TopologicalSpace E] (L : LocE F E) (r k : ℕ) (S : Frames L r k) (hk : 4 * r + 7 ≤ k)
    (β J βJ : ℕ) (d : S.Datum) :
    ENNReal.ofReal (‖S.amp d (S.InFF β J βJ d)‖) ≤
      ENNReal.ofReal (7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3))) * S.mass d (S.InFF β J βJ d) := by
  have hk1 : 1 ≤ k := by omega
  have hc0 : 0 ≤ (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) := zpow_nonneg (Nat.cast_nonneg _) _
  have hvol : ∀ K : Subgroup S.GLV, 0 ≤ invVol S.K0 K := fun K =>
    div_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _)
  obtain ⟨P, hP⟩ : ∃ P : Submodule L.O S.V → Prop, P = fun Λ => S.IsTerm d Λ ∧ S.InFF β J βJ d Λ :=
    ⟨_, rfl⟩
  have hPiff : ∀ Λ, P Λ ↔ S.IsTerm d Λ ∧ S.InFF β J βJ d Λ := fun Λ => by rw [hP]
  have hPfin : {o : MulAction.orbitRel.Quotient S.St (Submodule L.O S.V) | P o.out}.Finite :=
    (_root_.GlobalTheory.HL.MassGlue.mass_le_and_finite L r k S hk1 d).2.subset fun o ho => ((hPiff _).1 ho).1
  have hmass : S.mass d (S.InFF β J βJ d) = ENNReal.ofReal (∑' o : MulAction.orbitRel.Quotient S.St (Submodule L.O S.V),
      if P o.out then invVol S.K0 (S.St ⊓ MulAction.stabilizer S.GLV o.out) else 0) := by
    rw [ofReal_tsum_ite (ι := MulAction.orbitRel.Quotient S.St (Submodule L.O S.V)) (fun o => P o.out)
      (fun o => invVol S.K0 (S.St ⊓ MulAction.stabilizer S.GLV o.out)) (fun o => hvol _) hPfin]
    subst hP
    unfold Frames.mass Frames.mu
    exact tsum_congr fun o => by congr
  have hsum0 : 0 ≤ ∑' o : MulAction.orbitRel.Quotient S.St (Submodule L.O S.V),
      if P o.out then invVol S.K0 (S.St ⊓ MulAction.stabilizer S.GLV o.out) else 0 :=
    tsum_nonneg fun o => by split_ifs <;> simp [hvol]
  have hamp : S.amp d (S.InFF β J βJ d) = ∑' o : MulAction.orbitRel.Quotient S.St (Submodule L.O S.V),
      if P o.out then ((invVol S.K0 (S.St ⊓ MulAction.stabilizer S.GLV o.out) : ℝ) : ℂ) * S.om d o.out
      else 0 := by
    subst hP
    unfold Frames.amp Frames.mu
    exact tsum_congr fun o => by congr
  have key : ‖S.amp d (S.InFF β J βJ d)‖ ≤ 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) *
      ∑' o : MulAction.orbitRel.Quotient S.St (Submodule L.O S.V),
        if P o.out then invVol S.K0 (S.St ⊓ MulAction.stabilizer S.GLV o.out) else 0 := by
    by_cases hJ : 1 ≤ J ∧ J ≤ r
    · have hj : ((⟨J - 1, by omega⟩ : Fin r) : ℕ) + 1 = J := by simp only; omega
      obtain ⟨m, hm_inv, hm⟩ := _root_.GlobalTheory.HL.exists_symm_invariant_kernel L r k S hk ⟨J - 1, by omega⟩ β βJ d P
        (fun Λ => by rw [hj]; exact hPiff Λ)
      have hK0 : S.K0 ≤ S.St := fun g hg => hg.1.1
      have bound := GlobalTheory.HL.norm_orbit_sum_le_of_symm_kernel S.St S.K0 P (S.om d) m
        (24 / 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3))) hK0
        (fun h hh x hx => by
          obtain ⟨hT, hI⟩ := (hPiff x).1 hx
          have T := _root_.GlobalTheory.FrameAct.stabiliser_acts_on_terms L r k S d x hT h hh
          have hlat := (GlobalTheory.HL.TermBasic.term_basic L r k S d x hT).1.1
          exact ⟨(hPiff _).2 ⟨T.1, (T.2.2.2.2.2.2.2.2.2.1 β J βJ).2 hI⟩, T.2.1,
            ((_root_.GlobalTheory.HL.volSt L r k S).1 x hlat).2.2 h hh, fun y hy => hm_inv h hh x y hx hy⟩)
        (fun x hx => by
          have hb := GlobalTheory.HL.TermBasic.term_basic L r k S d x ((hPiff x).1 hx).1
          have A := (_root_.GlobalTheory.HL.volSt L r k S).1 x hb.1.1
          have W := (GlobalTheory.HL.WitIndep.witness_independence L r k S d x _ _ hb.2.1).2.2.2.2
          obtain ⟨h1, h2, h3, h4⟩ := hm x hx
          exact ⟨A.1, A.2.1, W, h1, h2, h3, h4⟩)
        hPfin
      rw [hamp]
      have h2 : 2 * (24 / 7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3))) ≤
          7 * (S.q : ℝ) ^ (1 - ((k : ℤ) - 2 * r - 3)) := by linarith
      exact bound.trans (mul_le_mul_of_nonneg_right h2 hsum0)
    · have hempty : ∀ Λ, ¬ P Λ := by
        intro Λ hΛ
        obtain ⟨hT, hTB, -, hle, ⟨y, hy, hyJ⟩, -⟩ := (hPiff Λ).1 hΛ
        by_cases hJr : r < J
        · have := hTB.2.1 y hy
          omega
        · have hJ0 : J = 0 := by omega
          apply hTB.1
          refine le_antisymm (GlobalTheory.HL.TermBasic.term_basic L r k S d Λ hT).2.2.1 fun z hz => ?_
          refine ((_root_.GlobalTheory.HL.Defect.exponents_and_defect L r k S d Λ hT).2.2.2.2.2.2.2.2.2.1 z hz).1 ?_
          have := hle z hz
          omega
      rw [hamp]
      simp [hempty]
  rw [hmass, ← ENNReal.ofReal_mul (by linarith)]
  exact ENNReal.ofReal_le_ofReal key

end GlobalTheory.HL.AmpCancel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeLeMassSecondTypeFamily =====

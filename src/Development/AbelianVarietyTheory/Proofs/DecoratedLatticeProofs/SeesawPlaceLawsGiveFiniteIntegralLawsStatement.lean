module

import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FiniteResidueFieldAdicCompletionIntegers
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapHandedFunctionVanishingPeriodInvariant
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.TrivialAtPlaceCommSeeSawCombinationKeepsVacuum
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryAdelicInfFinSplitPeriodsUnimodular
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryFiniteAdelicGroupSplitFinitePlaceSetStatement
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HzUnit
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLastTwoStepsDoubleLiftPeriodValue
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleLiftPeriodRankZeroFubiniCompactQuotient
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepEqTwoThetaColumnLiftsStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatThetaMapsConvergeThetaFunctionsStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LastSeeSawThetaIdentityStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValueStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.IndefiniteReal.SelfDualFullLattice
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawWeilBiActionCommutesStatement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceAdeleRingNumberField, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditions, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditionsStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLastTwoStepsDoubleLiftPeriodValueStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLaws, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLawsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceAdeleRingNumberField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceAdeleRingNumberField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.IndefiniteReal.SelfDualFullLattice\n\n"}
section -- clump:auto
@[expose] public section

open IsDedekindDomain NumberField Matrix Topology
open scoped TensorProduct Pointwise

noncomputable section

namespace GlobalTheory.CompactOpenIntegers

section Local
variable (F : Type) [Field F] [NumberField F]

theorem finite_res (v : HeightOneSpectrum (𝓞 F)) :
    Finite (IsLocalRing.ResidueField (v.adicCompletionIntegers F)) := by
  first | exact _root_.GlobalTheory.SelfDualGenus.finite_residueField_adicCompletionIntegers | exact @_root_.GlobalTheory.SelfDualGenus.finite_residueField_adicCompletionIntegers | apply _root_.GlobalTheory.SelfDualGenus.finite_residueField_adicCompletionIntegers <;> assumption

theorem compact_int (v : HeightOneSpectrum (𝓞 F)) :
    IsCompact (v.adicCompletionIntegers F : Set (v.adicCompletion F)) := by
  have h : CompactSpace (Valued.integer (v.adicCompletion F)) := by
    rw [Valued.integer.compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField]
    refine ⟨?_, (inferInstance : IsDiscreteValuationRing (v.adicCompletionIntegers F)), finite_res F v⟩
    exact (Valued.isClosed_integer (v.adicCompletion F)).completeSpace_coe
  exact isCompact_iff_compactSpace.2 h

theorem open_int (v : HeightOneSpectrum (𝓞 F)) :
    IsOpen (v.adicCompletionIntegers F : Set (v.adicCompletion F)) := Valued.isOpen_valuationSubring _

theorem cont_eval (v : HeightOneSpectrum (𝓞 F)) : Continuous fun a : FiniteAdeleRing (𝓞 F) F => a v :=
  RestrictedProduct.continuous_eval v

theorem open_compact_hat :
    IsOpen {a : FiniteAdeleRing (𝓞 F) F | ∀ v, a v ∈ v.adicCompletionIntegers F} ∧
    IsCompact {a : FiniteAdeleRing (𝓞 F) F | ∀ v, a v ∈ v.adicCompletionIntegers F} := by
  have h := RestrictedProduct.isOpenEmbedding_structureMap
    (R := fun v : HeightOneSpectrum (𝓞 F) => v.adicCompletion F)
    (A := fun v => (v.adicCompletionIntegers F : Set (v.adicCompletion F))) (open_int F)
  have hc : ∀ v : HeightOneSpectrum (𝓞 F), CompactSpace (v.adicCompletionIntegers F : Set (v.adicCompletion F)) :=
    fun v => isCompact_iff_compactSpace.1 (compact_int F v)
  have h1 := h.isOpen_range
  have h2 := isCompact_range h.continuous
  rw [RestrictedProduct.range_structureMap] at h1 h2
  exact ⟨h1, h2⟩

end Local

section Grp
variable {G : Type} [Group G] [TopologicalSpace G]

theorem open_comap {π : G →* G} (hπ : Continuous π) {H J : Subgroup G} (hH : ∀ g, π g ∈ H)
    (hJ : IsOpen (J.subgroupOf H : Set H)) : IsOpen (J.comap π : Set G) :=
  hJ.preimage (f := fun g => (⟨π g, hH g⟩ : H)) (hπ.subtype_mk hH)

theorem glue [IsTopologicalGroup G] {p q r : G →* G} (hp : Continuous p) (hq : Continuous q) (hr : Continuous r)
    {Γ P Q R K J L : Subgroup G} (hΓ : Γ.Normal) (hP : P ≤ Γ) (hQ : Q ≤ Γ) (hR : R ≤ Γ)
    (mp : ∀ g, p g ∈ P) (mq : ∀ g, q g ∈ Q) (mr : ∀ g, r g ∈ R)
    (eP : ∀ g ∈ P, p g = g ∧ q g = 1 ∧ r g = 1) (eQ : ∀ g ∈ Q, p g = 1 ∧ q g = g ∧ r g = 1)
    (eR : ∀ g ∈ R, p g = 1 ∧ q g = 1 ∧ r g = g) (dec : ∀ g ∈ Γ, p g * q g * r g = g)
    (lK : K ≤ P) (cK : IsCompact (K : Set G)) (oK : IsOpen (K.subgroupOf P : Set P))
    (lJ : J ≤ Q) (cJ : IsCompact (J : Set G)) (oJ : IsOpen (J.subgroupOf Q : Set Q))
    (lL : L ≤ R) (cL : IsCompact (L : Set G)) (oL : IsOpen (L.subgroupOf R : Set R)) (b : G) :
    ∃ M ≤ Γ, IsCompact (M : Set G) ∧ IsOpen (M.subgroupOf Γ : Set Γ) ∧
      ∀ k, k ∈ M ↔ ∃ κ x y, κ ∈ K ∧ x ∈ J ∧ y ∈ L ∧ k = b⁻¹ * (κ * x * y) * b := by
  let U : Subgroup G := K.comap p ⊓ J.comap q ⊓ L.comap r
  have oU : IsOpen (U : Set G) := ((open_comap hp mp oK).inter (open_comap hq mq oJ)).inter (open_comap hr mr oL)
  let c : G →* G := (MulAut.conj b).toMonoidHom
  have hc : Continuous c := (continuous_const.mul continuous_id).mul continuous_const
  have key : ∀ k, k ∈ Γ ⊓ U.comap c ↔ ∃ κ x y, κ ∈ K ∧ x ∈ J ∧ y ∈ L ∧ k = b⁻¹ * (κ * x * y) * b := by
    intro k
    constructor
    · rintro ⟨h0, ⟨h1, h2⟩, h3⟩
      refine ⟨_, _, _, h1, h2, h3, ?_⟩
      rw [dec (c k) (hΓ.conj_mem k h0 b)]
      change k = b⁻¹ * (b * k * b⁻¹) * b
      group
    · rintro ⟨κ, x, y, h1, h2, h3, rfl⟩
      have e : c (b⁻¹ * (κ * x * y) * b) = κ * x * y := by
        change b * _ * b⁻¹ = _
        group
      obtain ⟨a1, a2, a3⟩ := eP κ (lK h1)
      obtain ⟨b1, b2, b3⟩ := eQ x (lJ h2)
      obtain ⟨c1, c2, c3⟩ := eR y (lL h3)
      refine ⟨?_, ?_⟩
      · exact hΓ.conj_mem' _ (Γ.mul_mem (Γ.mul_mem (hP (lK h1)) (hQ (lJ h2))) (hR (lL h3))) b
      · change c _ ∈ U
        rw [e]
        refine ⟨⟨?_, ?_⟩, ?_⟩
        · change p _ ∈ K
          simpa [a1, b1, c1] using h1
        · change q _ ∈ J
          simpa [a2, b2, c2] using h2
        · change r _ ∈ L
          simpa [a3, b3, c3] using h3
  refine ⟨Γ ⊓ U.comap c, inf_le_left, ?_, ?_, key⟩
  · have : ((Γ ⊓ U.comap c : Subgroup G) : Set G) =
        (fun z : G × G × G => b⁻¹ * (z.1 * z.2.1 * z.2.2) * b) '' ((K : Set G) ×ˢ (J : Set G) ×ˢ (L : Set G)) := by
      ext k
      rw [SetLike.mem_coe, key]
      constructor
      · rintro ⟨κ, x, y, h1, h2, h3, rfl⟩
        exact ⟨(κ, x, y), ⟨h1, h2, h3⟩, rfl⟩
      · rintro ⟨⟨κ, x, y⟩, ⟨h1, h2, h3⟩, rfl⟩
        exact ⟨κ, x, y, h1, h2, h3, rfl⟩
    rw [this]
    exact (cK.prod (cJ.prod cL)).image (by fun_prop)
  · have : (((Γ ⊓ U.comap c).subgroupOf Γ : Subgroup Γ) : Set Γ) = (fun g : Γ => c g) ⁻¹' U := by
      ext g
      exact ⟨fun h => h.2, fun h => ⟨g.2, h⟩⟩
    rw [this]
    exact oU.preimage (hc.comp continuous_subtype_val)

end Grp

section Cut
variable {S : Type} [CommRing S] {n : Type} [Fintype n] [DecidableEq n]

def cut (e : S) (M : Matrix n n S) : Matrix n n S := 1 + e • (M - 1)

theorem cut_mul_cut (e f : S) (M N : Matrix n n S) :
    cut e M * cut f N = 1 + e • (M - 1) + f • (N - 1) + (e * f) • ((M - 1) * (N - 1)) := by
  simp only [cut, add_mul, mul_add, one_mul, mul_one, Matrix.smul_mul, Matrix.mul_smul, smul_smul, mul_comm f e]
  abel

theorem cut_mul {e : S} (he : e * e = e) (M N : Matrix n n S) : cut e (M * N) = cut e M * cut e N := by
  rw [cut_mul_cut, he, cut, add_assoc, add_assoc, ← smul_add, ← smul_add]
  congr 2
  noncomm_ring

theorem cut_cut (e f : S) (M : Matrix n n S) : cut e (cut f M) = cut (e * f) M := by
  simp [cut, smul_smul]

theorem cut_add {e f : S} (h : e * f = 0) (M : Matrix n n S) : cut e M * cut f M = cut (e + f) M := by
  rw [cut_mul_cut, h, zero_smul, add_zero, cut, add_smul, add_assoc]

theorem cut_zero (M : Matrix n n S) : cut 0 M = 1 := by simp [cut]

theorem cut_eq_iff (e : S) (M : Matrix n n S) : cut e M = M ↔ ∀ i j, e * (M - 1) i j = (M - 1) i j := by
  rw [cut, add_comm, ← eq_sub_iff_add_eq, ← Matrix.ext_iff]
  rfl

def cutHom {e : S} (he : e * e = e) : Matrix n n S →* Matrix n n S where
  toFun := cut e
  map_one' := by simp [cut]
  map_mul' := cut_mul he

variable [TopologicalSpace S] [IsTopologicalRing S] {G : Type} [Group G] [TopologicalSpace G]

theorem exists_proj {φ : G →* GL n S} (hφ : IsEmbedding φ) {e : S} (he : e * e = e)
    (hst : ∀ g, ∃ g', φ g' = Units.map (cutHom he) (φ g)) :
    ∃ π : G →* G, Continuous π ∧ ∀ g, (φ (π g)).val = cut e (φ g).val := by
  choose π hπ using hst
  have hc : Continuous (cutHom (n := n) he) := by
    change Continuous fun M : Matrix n n S => 1 + e • (M - 1)
    fun_prop
  refine ⟨MonoidHom.mk' π fun a b => hφ.injective (by simp only [hπ, map_mul]), ?_, fun g => ?_⟩
  · rw [hφ.continuous_iff]
    have : φ ∘ π = Units.map (cutHom he) ∘ φ := funext hπ
    change Continuous (φ ∘ π)
    rw [this]
    exact (hc.units_map _).comp hφ.continuous
  · change (φ (π g)).val = _
    rw [hπ]; rfl

theorem exists_compact_of_span {Λ : Set (n → S)} (hΛ : IsCompact Λ) {y : n → S} (hy : y ∈ Submodule.span S Λ) :
    ∃ C : Set (n → S), IsCompact C ∧ ∀ M : Matrix n n S, (∀ z ∈ Λ, M *ᵥ z ∈ Λ) → M *ᵥ y ∈ C := by
  induction hy using Submodule.span_induction with
  | mem x hx => exact ⟨Λ, hΛ, fun M hM => hM x hx⟩
  | zero => exact ⟨{0}, isCompact_singleton, fun M _ => by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨C, hC, h⟩ := hx
    obtain ⟨C', hC', h'⟩ := hy
    exact ⟨C + C', hC.add hC', fun M hM => by rw [mulVec_add]; exact Set.add_mem_add (h M hM) (h' M hM)⟩
  | smul a x _ hx =>
    obtain ⟨C, hC, h⟩ := hx
    exact ⟨a • C, hC.smul a, fun M hM => by rw [mulVec_smul]; exact Set.smul_mem_smul_set (h M hM)⟩

theorem exists_compact_mat {Λ : Set (n → S)} (hΛ : IsCompact Λ) {e : S}
    (hy : ∀ j, e • Pi.single j (1 : S) ∈ Submodule.span S Λ) :
    ∃ C : Set (Matrix n n S), IsCompact C ∧ ∀ M : Matrix n n S, cut e M = M → (∀ z ∈ Λ, M *ᵥ z ∈ Λ) → M ∈ C := by
  choose C hC h using fun j => exists_compact_of_span hΛ (hy j)
  refine ⟨(fun X : n → n → S => (1 - e) • (1 : Matrix n n S) + (Matrix.of X)ᵀ) '' Set.pi Set.univ C,
    (isCompact_univ_pi hC).image ?_, fun M hM hz => ⟨_, fun j _ => h j M hz, ?_⟩⟩
  · exact continuous_const.add (Continuous.matrix_transpose continuous_id)
  · conv_rhs => rw [← hM]
    ext i j
    simp [cut, mulVec_smul, mul_sub, sub_mul, Function.swap, Matrix.col]
    ring

theorem stab_compact_open [T2Space S] {φ : G →* GL n S} (hφ : IsClosedEmbedding φ) {e : S}
    {Λ : Set (n → S)} (hΛ : IsCompact Λ) (ho : IsOpen {y : n → S | e • y ∈ Λ}) (he : ∀ y ∈ Λ, e • y = y)
    (hy : ∀ j, e • Pi.single j (1 : S) ∈ Submodule.span S Λ) {P : Subgroup G}
    (hP : ∀ g, g ∈ P ↔ cut e (φ g).val = (φ g).val) :
    ∃ K ≤ P, IsCompact (K : Set G) ∧ IsOpen (K.subgroupOf P : Set P) ∧
      ∀ g, g ∈ K ↔ g ∈ P ∧ ∀ y : n → S, e • y = y → (y ∈ Λ ↔ (φ g).val *ᵥ y ∈ Λ) := by
  have tg : IsTopologicalGroup G := hφ.isInducing.topologicalGroup φ
  have cm : Continuous fun g => (φ g).val := Units.continuous_val.comp hφ.continuous
  let T : Subgroup G :=
    { carrier := {g | (∀ z ∈ Λ, (φ g).val *ᵥ z ∈ Λ) ∧ ∀ z ∈ Λ, (φ g⁻¹).val *ᵥ z ∈ Λ}
      one_mem' := by simp
      mul_mem' := fun {a b} ha hb => ⟨fun z hz => by
          rw [map_mul, Units.val_mul, ← mulVec_mulVec]; exact ha.1 _ (hb.1 z hz),
        fun z hz => by
          rw [_root_.mul_inv_rev, map_mul, Units.val_mul, ← mulVec_mulVec]; exact hb.2 _ (ha.2 z hz)⟩
      inv_mem' := fun {a} ha => ⟨ha.2, by rw [inv_inv]; exact ha.1⟩ }
  have oW : IsOpen {g : G | ∀ z ∈ Λ, (φ g).val *ᵥ z ∈ Λ} := by
    rw [isOpen_iff_mem_nhds]
    intro g hg
    have h1 : ∀ᶠ x in nhds g, ∀ z ∈ Λ, e • ((φ x).val *ᵥ z) ∈ Λ := by
      refine hΛ.eventually_forall_of_forall_eventually fun z hz => ?_
      have hc : Continuous fun w : G × (n → S) => (φ w.1).val *ᵥ w.2 :=
        (cm.comp continuous_fst).matrix_mulVec continuous_snd
      refine hc.continuousAt.preimage_mem_nhds (ho.mem_nhds ?_)
      change e • _ ∈ Λ
      rw [he _ (hg z hz)]
      exact hg z hz
    filter_upwards [h1] with x hx z hz
    have := hx z hz
    rwa [← mulVec_smul, he z hz] at this
  have oT : IsOpen (T : Set G) := oW.inter (oW.preimage continuous_inv)
  have cP : IsClosed (P : Set G) := by
    have : (P : Set G) = {g | cut e (φ g).val = (φ g).val} := Set.ext hP
    rw [this]
    refine isClosed_eq ?_ cm
    unfold cut
    fun_prop
  refine ⟨P ⊓ T, inf_le_left, ?_, ?_, fun g => ?_⟩
  · obtain ⟨C, hC, h⟩ := exists_compact_mat hΛ hy
    have hE := Units.isClosedEmbedding_embedProduct.comp hφ
    have h2 := hE.isCompact_preimage (hC.prod (hC.image MulOpposite.continuous_op))
    refine h2.of_isClosed_subset (cP.inter (T.isClosed_of_isOpen oT)) fun g hg => ⟨?_, ?_⟩
    · exact h _ ((hP g).1 hg.1) hg.2.1
    · refine ⟨_, h _ ((hP _).1 (P.inv_mem hg.1)) hg.2.2, ?_⟩
      simp
  · have : (((P ⊓ T).subgroupOf P : Subgroup P) : Set P) = Subtype.val ⁻¹' T := by
      ext g
      exact ⟨fun h => h.2, fun h => ⟨g.2, h⟩⟩
    rw [this]
    exact oT.preimage continuous_subtype_val
  · refine and_congr_right fun _ => ⟨fun h y _ => ⟨h.1 y, fun hy => ?_⟩, fun h => ⟨fun z hz => (h z (he z hz)).1 hz,
      fun z hz => (h _ ?_).2 ?_⟩⟩
    · have := h.2 _ hy
      rwa [mulVec_mulVec, ← Units.val_mul, ← map_mul, inv_mul_cancel, map_one, Units.val_one, one_mulVec] at this
    · rw [← mulVec_smul, he z hz]
    · rwa [mulVec_mulVec, ← Units.val_mul, ← map_mul, mul_inv_cancel, map_one, Units.val_one, one_mulVec]

end Cut

section Main
variable {S : Type} [CommRing S] {n : Type} [Fintype n] [DecidableEq n]
variable [TopologicalSpace S] [IsTopologicalRing S] {G : Type} [Group G] [TopologicalSpace G]

theorem level [T2Space S] {φ : G →* GL n S} (hφ : IsClosedEmbedding φ) {e f g : S}
    (he : e * e = e) (hf : f * f = f) (hg : g * g = g) (hef : e * f = 0) (heg : e * g = 0) (hfg : f * g = 0)
    (se : ∀ x, ∃ x', φ x' = Units.map (cutHom he) (φ x)) (sf : ∀ x, ∃ x', φ x' = Units.map (cutHom hf) (φ x))
    (sg : ∀ x, ∃ x', φ x' = Units.map (cutHom hg) (φ x))
    {Λ : Set (n → S)} (hΛ : IsCompact Λ) (ho : IsOpen {y : n → S | e • y ∈ Λ}) (hs : ∀ y ∈ Λ, e • y = y)
    (hy : ∀ j, e • Pi.single j (1 : S) ∈ Submodule.span S Λ) {Γ P Q R J L : Subgroup G} (hΓ : Γ.Normal)
    (iΓ : ∀ x, x ∈ Γ ↔ cut (e + f + g) (φ x).val = (φ x).val)
    (iP : ∀ x, x ∈ P ↔ cut e (φ x).val = (φ x).val) (iQ : ∀ x, x ∈ Q ↔ cut f (φ x).val = (φ x).val)
    (iR : ∀ x, x ∈ R ↔ cut g (φ x).val = (φ x).val)
    (lJ : J ≤ Q) (cJ : IsCompact (J : Set G)) (oJ : IsOpen (J.subgroupOf Q : Set Q))
    (lL : L ≤ R) (cL : IsCompact (L : Set G)) (oL : IsOpen (L.subgroupOf R : Set R)) (b : G) :
    ∃ M ≤ Γ, IsCompact (M : Set G) ∧ IsOpen (M.subgroupOf Γ : Set Γ) ∧
      ∀ k, k ∈ M ↔ ∃ κ x y, (κ ∈ P ∧ ∀ y : n → S, e • y = y → (y ∈ Λ ↔ (φ κ).val *ᵥ y ∈ Λ)) ∧
        x ∈ J ∧ y ∈ L ∧ k = b⁻¹ * (κ * x * y) * b := by
  have tg : IsTopologicalGroup G := hφ.isInducing.topologicalGroup φ
  obtain ⟨K, lK, cK, oK, iK⟩ := stab_compact_open hφ hΛ ho hs hy iP
  obtain ⟨p, hp, ep⟩ := exists_proj hφ.isEmbedding he se
  obtain ⟨q, hq, eq⟩ := exists_proj hφ.isEmbedding hf sf
  obtain ⟨r, hr, er⟩ := exists_proj hφ.isEmbedding hg sg
  have inj : ∀ x y, (φ x).val = (φ y).val → x = y := fun x y h => hφ.injective (Units.ext h)
  have hfe : f * e = 0 := by rw [mul_comm, hef]
  have hge : g * e = 0 := by rw [mul_comm, heg]
  have hgf : g * f = 0 := by rw [mul_comm, hfg]
  have sub : ∀ (a c : S) (M : Matrix n n S), a * c = c → cut c M = M → cut a M = M := fun a c M h hM => by
    rw [← hM, cut_cut, h]
  have kill : ∀ (a c : S) (x y : G), a * c = 0 → cut c (φ x).val = (φ x).val → (φ y).val = cut a (φ x).val → y = 1 :=
    fun a c x y h hx hy => inj _ _ (by rw [hy, ← hx, cut_cut, h, cut_zero, map_one, Units.val_one])
  simp only [← iK]
  refine glue hp hq hr hΓ (fun x hx => (iΓ x).2 (sub _ _ _ ?_ ((iP x).1 hx)))
    (fun x hx => (iΓ x).2 (sub _ _ _ ?_ ((iQ x).1 hx))) (fun x hx => (iΓ x).2 (sub _ _ _ ?_ ((iR x).1 hx)))
    (fun x => (iP _).2 (by rw [ep, cut_cut, he])) (fun x => (iQ _).2 (by rw [eq, cut_cut, hf]))
    (fun x => (iR _).2 (by rw [er, cut_cut, hg]))
    (fun x hx => ⟨inj _ _ ((ep x).trans ((iP x).1 hx)), kill _ _ x _ hfe ((iP x).1 hx) (eq x),
      kill _ _ x _ hge ((iP x).1 hx) (er x)⟩)
    (fun x hx => ⟨kill _ _ x _ hef ((iQ x).1 hx) (ep x), inj _ _ ((eq x).trans ((iQ x).1 hx)),
      kill _ _ x _ hgf ((iQ x).1 hx) (er x)⟩)
    (fun x hx => ⟨kill _ _ x _ heg ((iR x).1 hx) (ep x), kill _ _ x _ hfg ((iR x).1 hx) (eq x),
      inj _ _ ((er x).trans ((iR x).1 hx))⟩)
    (fun x hx => inj _ _ ?_) lK cK oK lJ cJ oJ lL cL oL b
  · rw [add_mul, add_mul, he, hfe, hge, add_zero, add_zero]
  · rw [add_mul, add_mul, hef, hf, hgf, add_zero, zero_add]
  · rw [add_mul, add_mul, heg, hfg, hg, add_zero, zero_add]
  · rw [map_mul, map_mul, Units.val_mul, Units.val_mul, ep, eq, er, cut_add hef,
      cut_add (by rw [add_mul, heg, hfg, add_zero]), (iΓ x).1 hx]

end Main

section Tens
variable {F E R : Type} [Field F] [Field E] [NumberField E] [Algebra F E] [CommRing R] [Algebra F R]

theorem span_lattice {n : ℕ} {N : Submodule (𝓞 E) (Fin n → E)} (hN : Submodule.IsFullLattice E N) :
    ∃ (m : ℕ) (x : Fin m → Fin n → E), (∀ k, x k ∈ N) ∧ (∀ y ∈ N, y ∈ Submodule.span ℤ (Set.range x)) ∧
      Submodule.span F (Set.range x) = ⊤ := by
  have h1 : Module.Finite (𝓞 E) N := Module.Finite.iff_fg.2 hN.fg
  have h2 : Module.Finite ℤ N := Module.Finite.trans (𝓞 E) N
  have h3 : (N.restrictScalars ℤ).FG := Module.Finite.iff_fg.1 h2
  obtain ⟨m, x, hx⟩ := Submodule.fg_iff_exists_fin_generating_family.1 h3
  have hz : ∀ y ∈ N, y ∈ Submodule.span ℤ (Set.range x) := fun y hy => by rw [hx]; exact hy
  have hF : ∀ y ∈ N, y ∈ Submodule.span F (Set.range x) := fun y hy =>
    Submodule.span_le_restrictScalars ℤ F _ (hz y hy)
  refine ⟨m, x, fun k => ?_, hz, ?_⟩
  · have : x k ∈ Submodule.span ℤ (Set.range x) := Submodule.subset_span ⟨k, rfl⟩
    rw [hx] at this
    exact this
  · have key : ∀ y ∈ Submodule.span E (N : Set (Fin n → E)), ∀ a : E, a • y ∈ Submodule.span F (Set.range x) := by
      intro y hy
      induction hy using Submodule.span_induction with
      | mem y hy =>
        intro a
        have ha : IsAlgebraic ℤ a := (IsFractionRing.isAlgebraic_iff ℤ ℚ E).2 (Algebra.IsAlgebraic.isAlgebraic a)
        obtain ⟨d, hd, hi⟩ := ha.exists_integral_multiple
        have h4 := hF _ (N.smul_mem (⟨d • a, hi⟩ : 𝓞 E) hy)
        have hdE : (d : E) ≠ 0 := Int.cast_ne_zero.2 hd
        have : a • y = (d : F)⁻¹ • ((⟨d • a, hi⟩ : 𝓞 E) • y) := by
          ext i
          change a * y i = (d : F)⁻¹ • ((d • a) * y i)
          rw [Algebra.smul_def, map_inv₀, map_intCast, zsmul_eq_mul]
          field_simp
        rw [this]
        exact Submodule.smul_mem _ _ h4
      | zero => intro a; simp
      | add y z _ _ hy hz => intro a; rw [smul_add]; exact Submodule.add_mem _ (hy a) (hz a)
      | smul c y _ hy => intro a; rw [smul_smul]; exact hy _
    apply eq_top_iff.mpr
    intro y _
    have hy : y ∈ Submodule.span E (N : Set (Fin n → E)) := by rw [hN.span_eq_top]; trivial
    simpa using key y hy 1
omit [NumberField E] in
theorem comb_surjective {n m : ℕ} {x : Fin m → Fin n → E} (hx : Submodule.span F (Set.range x) = ⊤) :
    Function.Surjective (Fintype.linearCombination R fun k i => ((1 : R) ⊗ₜ[F] x k i : R ⊗[F] E)) := by
  rw [← LinearMap.range_eq_top, Fintype.range_linearCombination, eq_top_iff]
  set W := Submodule.span R (Set.range fun k i => ((1 : R) ⊗ₜ[F] x k i : R ⊗[F] E))
  have h1 : ∀ y ∈ Submodule.span F (Set.range x), (fun i => ((1 : R) ⊗ₜ[F] y i : R ⊗[F] E)) ∈ W := by
    intro y hy
    induction hy using Submodule.span_induction with
    | mem y hy => obtain ⟨k, rfl⟩ := hy; exact Submodule.subset_span ⟨k, rfl⟩
    | zero => simp only [Pi.zero_apply, TensorProduct.tmul_zero]; exact W.zero_mem
    | add y z _ _ hy hz => simp only [Pi.add_apply, TensorProduct.tmul_add]; exact W.add_mem hy hz
    | smul c y _ hy => simp only [Pi.smul_apply, TensorProduct.tmul_smul]; exact W.smul_of_tower_mem c hy
  intro z _
  rw [← Finset.univ_sum_single z]
  refine W.sum_mem fun i _ => ?_
  induction z i using TensorProduct.induction_on with
  | zero => simp
  | tmul r a =>
    have := W.smul_mem r (h1 (Pi.single i a) (by rw [hx]; trivial))
    convert this using 1
    ext j
    by_cases h : j = i
    · subst h; simp [TensorProduct.smul_tmul']
    · simp [h]
  | add a b ha hb => rw [Pi.single_add]; exact W.add_mem ha hb

variable [TopologicalSpace R] [IsTopologicalRing R] [TopologicalSpace (R ⊗[F] E)] [IsModuleTopology R (R ⊗[F] E)]

omit [NumberField E] in
theorem t2_tensor_product [T2Space R] : T2Space (R ⊗[F] E) := by
  let b := Algebra.TensorProduct.basis R (Module.Basis.ofVectorSpace F E)
  refine T2Space.of_injective_continuous (f := fun a i => b.repr a i)
    (fun a c h => b.repr.injective (Finsupp.ext (congrFun h))) (continuous_pi fun i => ?_)
  exact IsModuleTopology.continuous_of_linearMap (b.coord i)

theorem lattice {n : ℕ} {N : Submodule (𝓞 E) (Fin n → E)} (hN : Submodule.IsFullLattice E N) (O : AddSubgroup R)
    (hO : IsCompact (O : Set R)) {e : R} (heO : e ∈ O) (he : ∀ a ∈ O, e * a = a) {U : Set R} (hU : U ∈ nhds 0)
    (hUe : ∀ a ∈ U, e * a ∈ O) (Λ : AddSubgroup (Fin n → R ⊗[F] E))
    (hΛ : Λ = AddSubgroup.closure {y | ∃ a ∈ O, ∃ x ∈ N, y = fun i => a ⊗ₜ[F] x i}) :
    IsCompact (Λ : Set (Fin n → R ⊗[F] E)) ∧ IsOpen {y : Fin n → R ⊗[F] E | (e ⊗ₜ[F] (1 : E) : R ⊗[F] E) • y ∈ Λ} ∧
      (∀ y ∈ Λ, (e ⊗ₜ[F] (1 : E) : R ⊗[F] E) • y = y) ∧
      ∀ j, (e ⊗ₜ[F] (1 : E) : R ⊗[F] E) • Pi.single j (1 : R ⊗[F] E) ∈
        Submodule.span (R ⊗[F] E) (Λ : Set (Fin n → R ⊗[F] E)) := by
  have := IsModuleTopology.toContinuousAdd R (R ⊗[F] E)
  have := IsModuleTopology.topologicalAddGroup R (R ⊗[F] E)
  obtain ⟨m, x, hxN, hz, hF⟩ := span_lattice (F := F) hN
  set ψ := Fintype.linearCombination R fun k i => ((1 : R) ⊗ₜ[F] x k i : R ⊗[F] E) with hψ
  have hq := IsModuleTopology.isOpenQuotientMap_of_surjective (comb_surjective (R := R) hF)
  rw [← hψ] at hq
  have hsm : ∀ y : Fin n → R ⊗[F] E, (e ⊗ₜ[F] (1 : E) : R ⊗[F] E) • y = e • y := fun y => by
    ext i
    simp [Algebra.smul_def]
  have gen : ∀ a ∈ O, ∀ y ∈ N, (fun i => a ⊗ₜ[F] y i) ∈ Λ := fun a ha y hy => by
    rw [hΛ]; exact AddSubgroup.subset_closure ⟨a, ha, y, hy, rfl⟩
  have hin : ∀ r : Fin m → R, (∀ k, r k ∈ O) → ψ r ∈ Λ := fun r hr => by
    rw [hψ, Fintype.linearCombination_apply]
    refine Λ.sum_mem fun k _ => ?_
    convert gen _ (hr k) _ (hxN k) using 1
    ext i
    simp [TensorProduct.smul_tmul']
  have hout : Λ ≤ (AddSubgroup.pi Set.univ fun _ => O).map ψ.toAddMonoidHom := by
    rw [hΛ, AddSubgroup.closure_le]
    rintro _ ⟨a, ha, y, hy, rfl⟩
    obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun ℤ).1 (hz y hy)
    refine ⟨fun k => c k • a, fun k _ => O.zsmul_mem ha _, ?_⟩
    ext i
    simp only [LinearMap.toAddMonoidHom_coe, hψ, Fintype.linearCombination_apply, Finset.sum_apply, Pi.smul_apply,
      TensorProduct.tmul_sum, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
    exact Finset.sum_congr rfl fun k _ => TensorProduct.smul_tmul _ _ _
  refine ⟨?_, ?_, fun y hy => ?_, fun j => ?_⟩
  · have : (Λ : Set (Fin n → R ⊗[F] E)) = ψ '' Set.pi Set.univ fun _ => (O : Set R) :=
      Set.Subset.antisymm hout (by rintro _ ⟨r, hr, rfl⟩; exact hin r fun k => hr k trivial)
    rw [this]
    exact (isCompact_univ_pi fun _ => hO).image hq.continuous
  · simp only [hsm]
    refine AddSubgroup.isOpen_of_mem_nhds (Λ.comap (DistribSMul.toAddMonoidHom _ e)) (g := 0) ?_
    have h1 := hq.isOpenMap.image_mem_nhds (x := 0) (set_pi_mem_nhds Set.finite_univ fun (k : Fin m) _ => hU)
    rw [map_zero] at h1
    refine Filter.mem_of_superset h1 ?_
    rintro _ ⟨r, hr, rfl⟩
    change e • ψ r ∈ Λ
    rw [← map_smul]
    exact hin _ fun k => hUe _ (hr k trivial)
  · obtain ⟨r, hr, rfl⟩ := hout hy
    change _ • ψ r = ψ r
    rw [hsm, ← map_smul]
    congr 1
    ext k
    exact he _ (hr k trivial)
  · obtain ⟨r, hr⟩ := hq.surjective (Pi.single j 1)
    rw [← hr, hψ, Fintype.linearCombination_apply, Finset.smul_sum]
    refine Submodule.sum_mem _ fun k _ => ?_
    rw [smul_comm]
    refine Submodule.smul_of_tower_mem _ _ (Submodule.subset_span ?_)
    have : ((e ⊗ₜ[F] (1 : E) : R ⊗[F] E) • fun i => ((1 : R) ⊗ₜ[F] x k i : R ⊗[F] E)) = fun i => e ⊗ₜ[F] x k i := by
      ext i
      simp
    rw [this]
    exact gen _ heO _ (hxN k)

end Tens

section Unitary
variable {S : Type} [CommRing S] {n : Type} [Fintype n] [DecidableEq n]

theorem cut_mem {σ : S →+* S} {J : Matrix n n S} {e : S} (he : e * e = e) (hσ : σ e = e) {g : GL n S}
    (hg : g ∈ Formalism.UG.UJ σ J) : Units.map (cutHom he) g ∈ Formalism.UG.UJ σ J := by
  have h : Formalism.UG.cT σ g.val * J * g.val = J := hg
  change Formalism.UG.cT σ (cut e g.val) * J * cut e g.val = J
  have h1 : Formalism.UG.cT σ (cut e g.val) = cut e (Formalism.UG.cT σ g.val) := by
    ext i j
    by_cases hij : i = j
    · subst hij; simp [Formalism.UG.cT, cut, hσ]
    · simp [Formalism.UG.cT, cut, hσ, hij, Ne.symm hij]
  rw [h1]
  generalize Formalism.UG.cT σ g.val = N at h
  have h2 : cut e N * J * cut e g.val = J + e • (N * J * g.val - J) := by
    have h3 : N * J * g.val - J = (N - 1) * J + (J * (g.val - 1) + (N - 1) * J * (g.val - 1)) := by noncomm_ring
    simp only [h3, cut, add_mul, mul_add, one_mul, mul_one, Matrix.smul_mul, Matrix.mul_smul, smul_smul, smul_add, he,
      add_assoc]
  rw [h2, h, sub_self, smul_zero, add_zero]

theorem closed_unitary [TopologicalSpace S] [IsTopologicalRing S] [T2Space S] {σ : S →+* S} (hσ : Continuous σ)
    (J : Matrix n n S) : IsClosed (Formalism.UG.UJ σ J : Set (GL n S)) := by
  refine isClosed_eq (f := fun g : GL n S => (g.val.map σ)ᵀ * J * g.val) (g := fun _ => J) ?_ continuous_const
  exact (((Units.continuous_val.matrix_map hσ).matrix_transpose).mul continuous_const).mul Units.continuous_val

theorem map_eq_one_iff_ker {T : Type} [CommRing T] (f : S →+* T) (g : GL n S) :
    Units.map (RingHom.mapMatrix f).toMonoidHom g = 1 ↔ ∀ i j, (g.val - 1) i j ∈ RingHom.ker f := by
  rw [Units.ext_iff, ← Matrix.ext_iff]
  refine forall_congr' fun i => forall_congr' fun j => ?_
  rw [RingHom.mem_ker, Matrix.sub_apply, map_sub, sub_eq_zero, Units.val_one, Matrix.one_apply, Matrix.one_apply,
    apply_ite f, map_one, map_zero]
  rfl

end Unitary

section Adelic
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta GlobalTheory.FinPl

theorem map_eq_zero_iff_repr {F E R R' ι : Type} [Field F] [Field E] [Algebra F E] [CommRing R] [Algebra F R]
    [CommRing R'] [Algebra F R'] (b : Module.Basis ι F E) (f : R →ₐ[F] R') (a : R ⊗[F] E) :
    Algebra.TensorProduct.map f (AlgHom.id F E) a = 0 ↔
      ∀ i, f ((Algebra.TensorProduct.basis R b).repr a i) = 0 := by
  have h : ∀ i, (Algebra.TensorProduct.basis R' b).repr (Algebra.TensorProduct.map f (AlgHom.id F E) a) i =
      f ((Algebra.TensorProduct.basis R b).repr a i) := fun i => by
    induction a using TensorProduct.induction_on with
    | zero => simp
    | tmul r x => simp [Algebra.TensorProduct.basis_repr_tmul]
    | add x y hx hy => simp [hx, hy]
  simp only [← h]
  rw [← (Algebra.TensorProduct.basis R' b).repr.map_eq_zero_iff, Finsupp.ext_iff]
  rfl

variable {F : Type} [Field F] [NumberField F]


open Classical in
def idemF (P : HeightOneSpectrum (𝓞 F) → Prop) : Af F :=
  ⟨fun v => if P v then 1 else 0, Filter.Eventually.of_forall fun v => by
    by_cases h : P v
    · simp only [if_pos h]; exact (v.adicCompletionIntegers F).one_mem
    · simp only [if_neg h]; exact (v.adicCompletionIntegers F).zero_mem⟩

theorem idemF_pos {P : HeightOneSpectrum (𝓞 F) → Prop} {v} (h : P v) : evalV F v (idemF P) = 1 := if_pos h
theorem idemF_neg {P : HeightOneSpectrum (𝓞 F) → Prop} {v} (h : ¬ P v) : evalV F v (idemF P) = 0 := if_neg h

def idem (P : HeightOneSpectrum (𝓞 F) → Prop) : AF F := pairA F 0 (idemF P)

theorem adele_ext {a b : AF F} (h1 : fstA F a = fstA F b) (h2 : ∀ v, evalV F v (sndA F a) = evalV F v (sndA F b)) :
    a = b := Prod.ext h1 (FiniteAdeleRing.ext F h2)

theorem fst_idem (P : HeightOneSpectrum (𝓞 F) → Prop) : fstA F (idem P) = 0 := rfl
theorem snd_idem (P : HeightOneSpectrum (𝓞 F) → Prop) : sndA F (idem P) = idemF P := rfl

theorem idem_mul_eq_iff (P : HeightOneSpectrum (𝓞 F) → Prop) (a : AF F) :
    idem P * a = a ↔ fstA F a = 0 ∧ ∀ v, ¬ P v → evalV F v (sndA F a) = 0 := by
  constructor
  · intro h
    refine ⟨by rw [← h, map_mul, fst_idem, zero_mul], fun v hv => ?_⟩
    rw [← h, map_mul, map_mul, snd_idem, idemF_neg hv, zero_mul]
  · rintro ⟨h1, h2⟩
    refine adele_ext (by rw [map_mul, h1, mul_zero]) fun v => ?_
    rw [map_mul, map_mul, snd_idem]
    by_cases hv : P v
    · rw [idemF_pos hv, one_mul]
    · rw [h2 v hv, mul_zero]

theorem idem_sq (P : HeightOneSpectrum (𝓞 F) → Prop) : idem P * idem P = idem P :=
  (idem_mul_eq_iff P _).2 ⟨rfl, fun _ hv => idemF_neg hv⟩

theorem idem_orth {P Q : HeightOneSpectrum (𝓞 F) → Prop} (h : ∀ v, P v → ¬ Q v) : idem P * idem Q = 0 := by
  refine adele_ext (by rw [map_mul, fst_idem, zero_mul, map_zero]) fun v => ?_
  rw [map_mul, map_mul, snd_idem, snd_idem, map_zero, map_zero]
  by_cases hv : P v
  · rw [idemF_neg (h v hv), mul_zero]
  · rw [idemF_neg hv, zero_mul]

theorem idem_sum {P Q : HeightOneSpectrum (𝓞 F) → Prop} (h : ∀ v, P v → ¬ Q v) :
    idem (fun v => ¬ P v ∧ ¬ Q v) + idem P + idem Q = idem fun _ => True := by
  refine adele_ext (by simp only [map_add (f := _), fst_idem, add_zero]) fun v => ?_
  simp only [map_add (f := _), snd_idem]
  rw [idemF_pos (P := fun _ => True) trivial]
  by_cases hv : P v
  · rw [idemF_neg (h v hv), idemF_pos hv, idemF_neg (by simp [hv]), add_zero, zero_add]
  · by_cases hq : Q v
    · rw [idemF_neg hv, idemF_pos hq, idemF_neg (by simp [hq]), add_zero, zero_add]
    · rw [idemF_neg hv, idemF_neg hq, idemF_pos (P := fun v => ¬ P v ∧ ¬ Q v) ⟨hv, hq⟩, add_zero, add_zero]

def intOn (P : HeightOneSpectrum (𝓞 F) → Prop) : AddSubgroup (AF F) where
  carrier := {a | fstA F a = 0 ∧ sndA F a ∈ intAf F ∧ ∀ v, ¬ P v → evalV F v (sndA F a) = 0}
  zero_mem' := ⟨map_zero _, fun v => by rw [map_zero, map_zero]; exact zero_mem _, fun v _ => by rw [map_zero, map_zero]⟩
  add_mem' := fun {a b} ha hb => ⟨by rw [map_add (f := _), ha.1, hb.1, add_zero],
    fun v => by rw [map_add (f := _), map_add (f := _)]; exact add_mem (ha.2.1 v) (hb.2.1 v),
    fun v hv => by rw [map_add (f := _), map_add (f := _), ha.2.2 v hv, hb.2.2 v hv, add_zero]⟩
  neg_mem' := fun {a} ha => ⟨by rw [map_neg, ha.1, neg_zero],
    fun v => by rw [map_neg, map_neg]; exact neg_mem (ha.2.1 v),
    fun v hv => by rw [map_neg, map_neg, ha.2.2 v hv, neg_zero]⟩

theorem compact_intOn (P : HeightOneSpectrum (𝓞 F) → Prop) : IsCompact (intOn P : Set (AF F)) := by
  have h1 : IsClosed {a : Af F | ∀ v, ¬ P v → evalV F v a = 0} := by
    simp only [Set.ofPred_forall]
    exact isClosed_iInter fun v => isClosed_iInter fun _ => isClosed_eq (cont_eval F v) continuous_const
  exact (isCompact_singleton (x := (0 : Ainf F))).prod ((open_compact_hat F).2.inter_right h1)

theorem idemF_int (P : HeightOneSpectrum (𝓞 F) → Prop) : idemF P ∈ intAf F := fun v => by
  by_cases h : P v
  · rw [idemF_pos h]; exact one_mem _
  · rw [idemF_neg h]; exact zero_mem _

variable {D : D7}

def eps (D : D7) (P : Pl D → Prop) : AE D := idem P ⊗ₜ[D.host.F] (1 : D.host.E)

theorem mem_idAt (P : Pl D → Prop) (a : AE D) : a ∈ idAt D P ↔ eps D P * a = a := by
  let b := Module.Basis.ofVectorSpace D.host.F D.host.E
  have h1 : eps D P * a = idem P • a := by
    rw [Algebra.smul_def]; rfl
  have h2 : ∀ w, compAt D w a = Algebra.TensorProduct.map ((evalV D.host.F w).comp (sndA D.host.F))
      (AlgHom.id D.host.F D.host.E) a := fun w => by
    exact (DFunLike.congr_fun (Algebra.TensorProduct.map_comp (evalV D.host.F w) (sndA D.host.F)
      (AlgHom.id D.host.F D.host.E) (AlgHom.id D.host.F D.host.E)) a).symm
  rw [h1, ← (Algebra.TensorProduct.basis (AF D.host.F) b).repr.injective.eq_iff, map_smul, Finsupp.ext_iff]
  simp only [Finsupp.smul_apply, smul_eq_mul, idem_mul_eq_iff, idAt, Ideal.mem_inf, Ideal.mem_iInf, RingHom.mem_ker, h2,
    map_eq_zero_iff_repr b, forall_and]
  exact and_congr (map_eq_zero_iff_repr b (fstA D.host.F) a) ⟨fun h i v hv => h ⟨v, hv⟩ i, fun h v i => h i v.1 v.2⟩

theorem mem_grpAt (V : HSp D) (P : Pl D → Prop) (g : GA D V) :
    g ∈ grpAt V P ↔ cut (eps D P) (matHom V g).val = (matHom V g).val := by
  rw [cut_eq_iff]
  simp only [← mem_idAt]
  refine (map_eq_one_iff_ker (Ideal.Quotient.mk (idAt D P)) (matHom V g)).trans ?_
  rw [Ideal.mk_ker]

theorem mem_fin (V : HSp D) (g : GA D V) :
    g ∈ GfC V ↔ cut (eps D fun _ => True) (matHom V g).val = (matHom V g).val := by
  rw [cut_eq_iff]
  simp only [← mem_idAt]
  refine (map_eq_one_iff_ker (infPart D) (matHom V g)).trans ?_
  have : idAt D (fun _ => True) = RingHom.ker (infPart D) :=
    inf_eq_left.2 (le_iInf fun w => (w.2 trivial).elim)
  rw [this]

theorem latV_eq (V : HSp D) (N : Lat V) (P : Pl D → Prop) :
    GlobalTheory.FinPl.latV V N P = AddSubgroup.closure {y | ∃ a ∈ intOn P, ∃ x ∈ N, y = fun i => a ⊗ₜ[D.host.F] x i} := by
  unfold GlobalTheory.FinPl.latV latMul
  congr 1
  ext y
  constructor
  · rintro ⟨α, h1, h2, a, rfl, x, hx, rfl⟩
    exact ⟨pairA _ 0 α, ⟨rfl, h1, h2⟩, x, hx, by simp only [one_mul]⟩
  · rintro ⟨⟨a, α⟩, ⟨h0, h1, h2⟩, x, hx, rfl⟩
    obtain rfl : a = 0 := h0
    exact ⟨α, h1, h2, 1, rfl, x, hx, by simp only [one_mul]; rfl⟩

theorem eps_mul (P Q : Pl D → Prop) : eps D P * eps D Q = (idem P * idem Q) ⊗ₜ[D.host.F] (1 : D.host.E) := by
  rw [eps, eps, Algebra.TensorProduct.tmul_mul_tmul, one_mul]

theorem eps_sq (P : Pl D → Prop) : eps D P * eps D P = eps D P := by rw [eps_mul, idem_sq, eps]

theorem eps_orth {P Q : Pl D → Prop} (h : ∀ v, P v → ¬ Q v) : eps D P * eps D Q = 0 := by
  rw [eps_mul, idem_orth h, TensorProduct.zero_tmul]

theorem eps_stable (V : HSp D) (P : Pl D → Prop) (x : GA D V) :
    ∃ x', matHom V x' = Units.map (cutHom (eps_sq P)) (matHom V x) :=
  ⟨⟨_, cut_mem (eps_sq P) (by simp [sigR, eps]) x.2⟩, rfl⟩

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem exists_level (D : D7) (V : HSp D) (N : Lat V) (A B : Finset (Pl D)) (JA JB : Subgroup (GA D V)) (b : GA D V)
    (hAB : Disjoint B A) (hN : Formalism.IndefR.Datum.IsSelfDualC V N) (_ : b ∈ GfC V)
    (lA : JA ≤ grpAt V fun x => x ∈ A) (cA : IsCompact (JA : Set (GA D V)))
    (oA : IsOpen (JA.subgroupOf (grpAt V fun x => x ∈ A) : Set (grpAt V fun x => x ∈ A)))
    (lB : JB ≤ grpAt V fun x => x ∈ B) (cB : IsCompact (JB : Set (GA D V)))
    (oB : IsOpen (JB.subgroupOf (grpAt V fun x => x ∈ B) : Set (grpAt V fun x => x ∈ B))) :
    ∃ K ≤ GfC V, IsCompact (K : Set (GA D V)) ∧ IsOpen (K.subgroupOf (GfC V) : Set (GfC V)) ∧
      ∀ k, k ∈ K ↔ ∃ κ x y, InK V N (fun p => p ∉ A ∧ p ∉ B) κ ∧ x ∈ JA ∧ y ∈ JB ∧ k = b⁻¹ * (κ * x * y) * b := by
  have i1 : IsModuleTopology (AF D.host.F) (AE D) := ⟨rfl⟩
  have i2 : T2Space (AF D.host.F) := _root_.GlobalTheory.AdelicUnitaryTop.t2Space_adeleRing_numberField _
  have i3 : T2Space (AE D) := t2_tensor_product
  have i4 : IsTopologicalRing (AE D) := IsModuleTopology.isTopologicalRing (AF D.host.F) (AE D)
  have hσ : Continuous (sigR (AF D.host.F) D.sp.cm.sig) :=
    IsModuleTopology.continuous_of_linearMap
      (Algebra.TensorProduct.map (AlgHom.id (AF D.host.F) (AF D.host.F)) D.sp.cm.sig).toLinearMap
  have hφ : IsClosedEmbedding (matHom V) := (closed_unitary hσ _).isClosedEmbedding_subtypeVal
  have hd : ∀ v, v ∈ A → ¬ v ∈ B := fun v hv h => Finset.disjoint_left.1 hAB h hv
  have hU : {a : AF D.host.F | sndA _ a ∈ intAf _} ∈ nhds 0 :=
    ((open_compact_hat D.host.F).1.preimage continuous_snd).mem_nhds fun v => zero_mem _
  obtain ⟨l1, l2, l3, l4⟩ := lattice (Formalism.IndefR.Datum.IsSelfDualC.isFullLattice V N hN) (intOn fun p => p ∉ A ∧ p ∉ B) (compact_intOn _)
    (e := idem fun p => p ∉ A ∧ p ∉ B) ⟨rfl, idemF_int _, fun _ hv => idemF_neg hv⟩
    (fun a ha => (idem_mul_eq_iff _ a).2 ⟨ha.1, ha.2.2⟩) hU
    (fun a ha => ⟨by rw [map_mul, fst_idem, zero_mul],
      fun v => by rw [map_mul, map_mul]; exact mul_mem (idemF_int _ v) (ha v),
      fun v hv => by rw [map_mul, map_mul, snd_idem, idemF_neg hv, zero_mul]⟩) _ (latV_eq V N _)
  have hsum : eps D (fun p => p ∉ A ∧ p ∉ B) + eps D (fun p => p ∈ A) + eps D (fun p => p ∈ B) =
      eps D fun _ => True := by
    simp only [eps, ← TensorProduct.add_tmul]
    rw [idem_sum hd]
  obtain ⟨K, k1, k2, k3, k4⟩ := level hφ (eps_sq fun p => p ∉ A ∧ p ∉ B) (eps_sq fun p => p ∈ A)
    (eps_sq fun p => p ∈ B) (eps_orth fun _ h => h.1) (eps_orth fun _ h => h.2) (eps_orth hd)
    (eps_stable V _) (eps_stable V _) (eps_stable V _) l1 l2 l3 l4 (Γ := GfC V) (MonoidHom.normal_ker _)
    (fun x => by rw [hsum]; exact mem_fin V x) (mem_grpAt V _) (mem_grpAt V _) (mem_grpAt V _)
    lA cA oA lB cB oB b
  refine ⟨K, k1, k2, k3, fun k => (k4 k).trans ?_⟩
  refine exists_congr fun κ => exists_congr fun x => exists_congr fun y => and_congr_left' ?_
  refine and_congr_right' (forall_congr' fun y => imp_congr_left ?_)
  simp only [mem_idAt]
  exact funext_iff

end Adelic

end GlobalTheory.CompactOpenIntegers

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceAdeleRingNumberField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditions =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditions", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapHandedFunctionVanishingPeriodInvariant\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceAdeleRingNumberField\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.TrivialAtPlaceCommSeeSawCombinationKeepsVacuum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryAdelicInfFinSplitPeriodsUnimodular\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnitaryFiniteAdelicGroupSplitFinitePlaceSetStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FirstCells

variable {D : D7}

theorem latO_mono' (S T : HSp D) (LS : Set (Fin S.rank → D.host.E)) (LT : Set (Fin T.rank → D.host.E))
    {P Q : Pl D → Prop} (h : ∀ v, Q v → P v) : latO S T LS LT Q ≤ latO S T LS LT P := by
  apply AddSubgroup.closure_mono
  rintro w ⟨α, hα, hvan, rest⟩
  exact ⟨α, hα, fun v hv => hvan v fun hq => hv (h v hq), rest⟩

theorem vac_mono {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : Lat S} {LT : Lat T} {P Q : Pl D → Prop}
    {f : WO S T → ℂ} (hf : Vac ψ S T LS LT P f) (h : ∀ v, Q v → P v) : Vac ψ S T LS LT Q f :=
  ⟨hf.1, fun u hu => hf.2.1 u (latO_mono' S T _ _ h hu), fun e he u hu hh => hf.2.2 e he u (latO_mono' S T _ _ h hu) hh⟩

theorem vac_smul {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : Lat S} {LT : Lat T} {P : Pl D → Prop}
    (c : ℂ) {f : WO S T → ℂ} (hf : Vac ψ S T LS LT P f) : Vac ψ S T LS LT P (c • f) := by
  have e : ∀ u, heisO ψ S T u (c • f) = c • heisO ψ S T u f := by
    intro u; funext w; simp only [heisO, Pi.smul_apply, smul_eq_mul]; ring
  exact ⟨_root_.GlobalTheory.OrientedHeis.theta_smul c hf.1, fun u hu => by rw [e, hf.2.1 u hu], fun e' he u hu hh => by rw [e, hf.2.2 e' he u hu hh]⟩

theorem comb_smul' {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} (c : WO S T →₀ ℂ) (a : ℂ) (f : WO S T → ℂ) :
    comb ψ S T c (a • f) = a • comb ψ S T c f := by
  funext w
  simp only [comb, heisO, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun _ _ => by ring

theorem real_le_off (V : HSp D) (P : Pl D → Prop) : GinfC V ≤ grpOff V P := by
  intro a ha
  rw [GinfC, MonoidHom.mem_ker] at ha
  rw [grpOff, GlobalTheory.FinPl.PlacesAdeles.mem_congGrp]
  intro i j
  have h2 : finPart D (Formalism.L2.Theta.mt V a i j) = (1 : Matrix (Fin V.rank) (Fin V.rank) _) i j :=
    congrArg (fun x : GL (Fin V.rank) _ => x.1 i j) ha
  rw [idOff, Ideal.mem_iInf]
  intro w
  rw [RingHom.mem_ker, GlobalTheory.FinPl.compAt, RingHom.comp_apply, RingHom.map_sub, h2]
  by_cases hij : i = j
  · subst hij
    rw [Matrix.one_apply_eq, Matrix.one_apply_eq, RingHom.map_one, sub_self, RingHom.map_zero]
  · rw [Matrix.one_apply_ne hij, Matrix.one_apply_ne hij, RingHom.map_zero, sub_self, RingHom.map_zero]

theorem grpOff_inf_le (V : HSp D) (P P' : Pl D → Prop) :
    grpOff V P ⊓ grpOff V P' ≤ grpOff V (fun p => P p ∨ P' p) := by
  intro g hg
  obtain ⟨h1, h2⟩ := Subgroup.mem_inf.1 hg
  rw [grpOff, GlobalTheory.FinPl.PlacesAdeles.mem_congGrp] at h1 h2 ⊢
  intro i j
  have a1 := h1 i j
  have a2 := h2 i j
  rw [idOff, Ideal.mem_iInf] at a1 a2 ⊢
  rintro ⟨w, hw | hw⟩
  · exact a1 ⟨w, hw⟩
  · exact a2 ⟨w, hw⟩

theorem split_off (D : D7) (V : HSp D) (A B : Finset (Pl D)) (hAB : Disjoint B A) (z : GA D V)
    (hz : z ∈ grpOff V (fun p => p ∉ A ∧ p ∉ B)) :
    ∃ a ∈ GinfC V, ∃ x ∈ grpAt V (· ∈ A), ∃ y ∈ grpAt V (· ∈ B), z = a * y * x := by
  obtain ⟨-, -, -, ⟨e, he⟩, -⟩ := GlobalTheory.AdelicSplit.adelic_split D V
  obtain ⟨-, -, hf1, hf2, -, ⟨e', he'⟩, hO, hI, -⟩ := GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D V B
  have h1 := he (e.symm z)
  rw [e.apply_symm_apply] at h1
  have h2 := he' (e'.symm (e.symm z).2)
  rw [e'.apply_symm_apply] at h2
  generalize e'.symm (e.symm z).2 = p at h2
  generalize e.symm z = q at h1 h2
  obtain ⟨⟨y, hy⟩, ⟨x, hx⟩⟩ := p
  obtain ⟨⟨a, ha⟩, ⟨f, hf⟩⟩ := q
  dsimp only at h1 h2
  subst h2
  refine ⟨a, ha, x, ?_, y, hy, by rw [h1, mul_assoc]⟩
  have hxo : x ∈ grpOff V (fun p => p ∉ A ∧ p ∉ B) := by
    have : x = y⁻¹ * (a⁻¹ * z) := by rw [h1]; group
    rw [this]
    exact mul_mem (inv_mem (hO _ _ (fun p hp h => h.2 hp) hy)) (mul_mem (inv_mem (real_le_off V _ ha)) hz)
  have hxB : x ∈ grpOff V (· ∈ B) := hO _ _ (fun p hp h => hp h) hx
  have hx' : x ∈ GfC V ⊓ grpOff V (fun p => (p ∉ A ∧ p ∉ B) ∨ p ∈ B) :=
    ⟨hf2 hx, grpOff_inf_le V _ _ ⟨hxo, hxB⟩⟩
  rw [hI] at hx'
  have hP : (fun p => ¬ ((p ∉ A ∧ p ∉ B) ∨ p ∈ B)) = (· ∈ A) := by
    funext p
    have := fun h : p ∈ B => Finset.disjoint_left.1 hAB h
    apply propext
    tauto
  rwa [hP] at hx'

theorem comm_at (D : D7) (V : HSp D) (A B : Finset (Pl D)) (hAB : Disjoint B A) {x y : GA D V} (hx : x ∈ grpAt V (· ∈ A))
    (hy : y ∈ grpAt V (· ∈ B)) : y * x = x * y := by
  obtain ⟨-, -, -, -, hcm, -, hO, hI, -⟩ := GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D V B
  refine hcm y hy x ?_
  have hx' : x ∈ GfC V ⊓ grpOff V (· ∈ B) :=
    ⟨(GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D V A).2.2.1 hx, hO _ _ (fun p hp h => Finset.disjoint_left.1 hAB h hp) hx⟩
  rwa [hI] at hx'



theorem locFin : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → OffLaw v w → GSupp (t := t) v → QFin v w → t.LocFin := by
  classical
  intro D c v t w hc hv ht hF hO hG hQ j σ h P₁ P₂
  have hj1 : j + 1 < D.R.m := by omega
  have hj2 : j + 1 + 1 < D.R.m := by omega
  obtain ⟨KQ, TQ, hKQ, hKQc, hKQo, hTQ, hKQlaw, hTQsupp⟩ := hQ j σ h
  obtain ⟨hJG, hJGc, hJGo⟩ := hv.JG (j + 1) hj1
  obtain ⟨K, hKf, hKc, hKo, hKmem⟩ := _root_.GlobalTheory.CompactOpenIntegers.exists_level D (c.V (j + 1)) (v.N (j + 1)) v.gP w.Q (v.JG (j + 1)) KQ
    (v.b (j + 1)) hF.disjG (hv.sd (j + 1) hj1) (hv.b (j + 1)) hJG hJGc hJGo hKQ hKQc hKQo
  have hone : InK (c.V (j + 1)) (v.N (j + 1)) (offP v w) 1 := ⟨one_mem _, fun y _ => by simp [Formalism.L2.Theta.mt]⟩

  have VGQ := GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D (c.V (j + 1)) w.Q
  have VGG := GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D (c.V (j + 1)) v.gP
  have hQG : ∀ p, p ∈ w.Q → ¬ p ∈ v.gP := fun p hp hg => Finset.disjoint_left.1 hF.disjG hp hg
  have hGQ : ∀ p, p ∈ v.gP → ¬ p ∈ w.Q := fun p hg hp => hQG p hp hg
  have hQoff : ∀ p, p ∈ w.Q → ¬ offP v w p := fun p hp h' => h'.2 hp
  have hGoff : ∀ p, p ∈ v.gP → ¬ offP v w p := fun p hp h' => h'.1 hp
  have hoffQ : ∀ p, offP v w p → ¬ p ∈ w.Q := fun p h' => h'.2
  have hoffG : ∀ p, offP v w p → ¬ p ∈ v.gP := fun p h' => h'.1
  have hQf : grpAt (c.V (j + 1)) (· ∈ w.Q) ≤ GfC _ := VGQ.2.2.1
  have hGf : grpAt (c.V (j + 1)) (· ∈ v.gP) ≤ GfC _ := VGG.2.2.1
  have gO : ∀ (P P' : Pl D → Prop), (∀ p, P p → ¬ P' p) → grpAt (c.V (j + 1)) P ≤ grpOff (c.V (j + 1)) P' :=
    VGQ.2.2.2.2.2.2.1

  have W1 := (t.sBF j (σ + 1) h).weil
  rw [(ht.sBF j (σ + 1) h).1] at W1
  have W2 := (t.sFB j σ h).weil
  rw [(ht.sFB j σ h).1] at W2

  have hΨ1 := hv.Ψ j hj1 P₁ 1 (one_mem _) 1 (one_mem _)
  have hΨ2 := hv.Ψ (j + 1) hj2 P₂ 1 (one_mem _) 1 (one_mem _)
  have VC1 := fun P P' hPP' => GlobalTheory.DisjComb.main D c.ψ hc.std (c.V j) (c.V (j + 1)) P P' hPP'
  have VC2 := fun P P' hPP' => GlobalTheory.DisjComb.main D c.ψ hc.std (c.V (j + 1)) (c.V (j + 1 + 1)) P P' hPP'
  obtain ⟨hG1, -, -⟩ := hv.atG j
  obtain ⟨hG2, -, -⟩ := hv.atG (j + 1)
  obtain ⟨hQ1, -, -⟩ := hF.atQ j
  obtain ⟨hQ2, -, -⟩ := hF.atQ (j + 1)
  refine ⟨K, TQ.image (· * v.b (j + 1)), hKf, hKc, hKo, ?_, ?_, ?_⟩
  · intro q hq
    obtain ⟨q', hq', rfl⟩ := Finset.mem_image.1 hq
    exact mul_mem (hQf (hTQ q' hq')) (hv.b (j + 1))
  · intro k hk
    obtain ⟨κ, x, y, hκ, hx, hy, rfl⟩ := (hKmem k).1 hk
    obtain ⟨ax, hax, hx1, hx2, -⟩ := hF.lawG j hj1 x hx
    obtain ⟨ay, hay, hyl⟩ := hKQlaw y hy
    have hΨ1Q := vac_mono (Q := (· ∈ w.Q)) hΨ1 fun _ _ => trivial
    have hΨ2Q := vac_mono (Q := (· ∈ w.Q)) hΨ2 fun _ _ => trivial
    have hΨ1G := vac_mono (Q := (· ∈ v.gP)) hΨ1 fun _ _ => trivial
    have hΨ2G := vac_mono (Q := (· ∈ v.gP)) hΨ2 fun _ _ => trivial
    have hΨ1O := vac_mono (Q := offP v w) hΨ1 fun _ _ => trivial
    have hΨ2O := vac_mono (Q := offP v w) hΨ2 fun _ _ => trivial
    obtain ⟨hy1, hy2⟩ := hyl _ _ hΨ1Q hΨ2Q
    have hκG : κ ∈ grpOff _ (· ∈ v.gP) := gO _ _ hoffG hκ.1
    have hκQ : κ ∈ grpOff _ (· ∈ w.Q) := gO _ _ hoffQ hκ.1
    have hyG : y ∈ grpOff _ (· ∈ v.gP) := gO _ _ hQG (hKQ hy)
    have hθ1 : IsThetaFunO c.ψ _ _ (comb c.ψ _ _ (w.eQ j) (v.Ψ j P₁ 1 1)) :=
      (((VC1 (· ∈ w.Q) (· ∈ v.gP) hQG).2.1 _ hQ1).2 _ _ _ hΨ1G).1
    have hθ2 : IsThetaFunO c.ψ _ _ (comb c.ψ _ _ (w.eQ (j + 1)) (v.Ψ (j + 1) P₂ 1 1)) :=
      (((VC2 (· ∈ w.Q) (· ∈ v.gP) hQG).2.1 _ hQ2).2 _ _ _ hΨ2G).1
    have hV1 : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ v.gP) (comb c.ψ _ _ (w.eQ j) (v.Ψ j P₁ 1 1)) :=
      ((VC1 (· ∈ w.Q) (· ∈ v.gP) hQG).2.1 _ hQ1).2 _ _ _ hΨ1G
    have hV2 : Vac c.ψ _ _ (v.N (j + 1)) (v.N (j + 1 + 1)) (· ∈ v.gP) (comb c.ψ _ _ (w.eQ (j + 1)) (v.Ψ (j + 1) P₂ 1 1)) :=
      ((VC2 (· ∈ w.Q) (· ∈ v.gP) hQG).2.1 _ hQ2).2 _ _ _ hΨ2G
    have hO1 := hO j σ h _ _ hΨ1O hΨ2O

    have L1 : t.om j (1, κ * x * y) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) (v.Ψ j P₁ 1 1))) =
        (ax * ay)⁻¹ • comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) (v.Ψ j P₁ 1 1)) := by
      have e : ((1 : GA D (c.V j)), κ * x * y) = (1, κ) * (1, x) * (1, y) := by simp
      rw [e, map_mul, map_mul, Module.End.mul_apply, Module.End.mul_apply]
      rw [(VC1 (· ∈ v.gP) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W1 _ hG1 1 (one_mem _) y hyG _ hθ1, hy1,
        comb_smul', map_smul, hx1 _ hV1, map_smul, map_smul, smul_smul,
        (VC1 (· ∈ v.gP) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W1 _ hG1 1 (one_mem _) κ hκG _ hθ1,
        (VC1 (· ∈ w.Q) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W1 _ hQ1 1 (one_mem _) κ hκQ _ hΨ1.1,
        ((hO1.1 κ hκ).1), mul_inv, mul_comm]
    have L2 : t.om (j + 1) (κ * x * y, 1) (comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) (v.Ψ (j + 1) P₂ 1 1))) =
        (ax * ay) • comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) (v.Ψ (j + 1) P₂ 1 1)) := by
      have e : (κ * x * y, (1 : GA D (c.V (j + 1 + 1)))) = (κ, 1) * (x, 1) * (y, 1) := by simp
      rw [e, map_mul, map_mul, Module.End.mul_apply, Module.End.mul_apply]
      rw [(VC2 (· ∈ v.gP) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W2 _ hG2 y hyG 1 (one_mem _) _ hθ2, hy2,
        comb_smul', map_smul, hx2 hj2 _ hV2, map_smul, map_smul, smul_smul,
        (VC2 (· ∈ v.gP) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W2 _ hG2 κ hκG 1 (one_mem _) _ hθ2,
        (VC2 (· ∈ w.Q) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W2 _ hQ2 κ hκQ 1 (one_mem _) _ hΨ2.1,
        ((hO1.1 κ hκ).2), mul_comm]

    have vf1 := hF.vf j hj1 P₁ 1 (one_mem _) 1 (one_mem _)
    have vf2 := hF.vf (j + 1) hj2 P₂ 1 (one_mem _) 1 (one_mem _)
    simp only [one_mul] at vf1 vf2
    have pt1 : t.pt j P₁ = t.om j ((v.b j)⁻¹, (v.b (j + 1))⁻¹) (w.sc j • comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) (v.Ψ j P₁ 1 1))) := by
      rw [← vf1, ← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk, inv_mul_cancel, inv_mul_cancel, ← Prod.one_eq_mk,
        map_one, Module.End.one_apply]
    have pt2 : t.pt (j + 1) P₂ = t.om (j + 1) ((v.b (j + 1))⁻¹, (v.b (j + 1 + 1))⁻¹)
        (w.sc (j + 1) • comb c.ψ _ _ (v.eG (j + 1)) (comb c.ψ _ _ (w.eQ (j + 1)) (v.Ψ (j + 1) P₂ 1 1))) := by
      rw [← vf2, ← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk, inv_mul_cancel, inv_mul_cancel, ← Prod.one_eq_mk,
        map_one, Module.End.one_apply]
    refine ⟨ax * ay, mul_ne_zero hax hay, ?_, ?_⟩
    · rw [pt1, ← Module.End.mul_apply, ← map_mul]
      have e : ((1 : GA D (c.V j)), (v.b (j + 1))⁻¹ * (κ * x * y) * v.b (j + 1)) * ((v.b j)⁻¹, (v.b (j + 1))⁻¹) =
          ((v.b j)⁻¹, (v.b (j + 1))⁻¹) * (1, κ * x * y) := by
        simp only [Prod.mk_mul_mk, one_mul, mul_one, mul_assoc, mul_inv_cancel]
      rw [e, map_mul, Module.End.mul_apply, map_smul, L1, smul_comm, map_smul]
    · rw [pt2, ← Module.End.mul_apply, ← map_mul]
      have e : ((v.b (j + 1))⁻¹ * (κ * x * y) * v.b (j + 1), (1 : GA D (c.V (j + 1 + 1)))) *
          ((v.b (j + 1))⁻¹, (v.b (j + 1 + 1))⁻¹) = ((v.b (j + 1))⁻¹, (v.b (j + 1 + 1))⁻¹) * (κ * x * y, 1) := by
        simp only [Prod.mk_mul_mk, one_mul, mul_one, mul_assoc, mul_inv_cancel]
      rw [e, map_mul, Module.End.mul_apply, map_smul, L2, smul_comm, map_smul]
  · intro α g hg h₁ hne
    obtain ⟨he, heQ⟩ := hF.e j α
    rw [he] at hg
    obtain ⟨ε, hε, rfl⟩ := Finset.mem_image.1 (Finsupp.mapDomain_support hg)
    obtain ⟨-, -, hrf, -⟩ := GlobalTheory.AdelicSplit.adelic_split D (c.V (j + 1))
    have gO0 : ∀ (P P' : Pl D → Prop), (∀ p, P p → ¬ P' p) → grpAt (c.V j) P ≤ grpOff (c.V j) P' :=
      (GlobalTheory.T.unitaryFiniteAdelicGroup_split_finitePlaceSet D (c.V j) w.Q).2.2.2.2.2.2.1
    have hεG : ε ∈ grpOff _ (· ∈ v.gP) := gO0 _ _ hQG (heQ ε hε)
    have hεO : ε ∈ grpOff _ (offP v w) := gO0 _ _ hQoff (heQ ε hε)
    have omm : ∀ (a a' : GA D (c.V j)) (b b' : GA D (c.V (j + 1))) f, t.om j (a, b) (t.om j (a', b') f) = t.om j (a * a', b * b') f :=
      fun a a' b b' f => by rw [← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk]

    have vf1 := hF.vf j hj1 P₁ 1 (one_mem _) 1 (one_mem _)
    rw [one_mul, one_mul, ← comb_smul', ← comb_smul'] at vf1
    have hΨ := vac_smul (w.sc j) hΨ1
    generalize w.sc j • v.Ψ j P₁ 1 1 = Ψ at vf1 hΨ
    obtain ⟨x, rfl⟩ : ∃ x, h₁ = x * v.b (j + 1) := ⟨h₁ * (v.b (j + 1))⁻¹, by group⟩
    rw [← omm, vf1] at hne
    have hΨQ := vac_mono (Q := (· ∈ w.Q)) hΨ fun _ _ => trivial
    have hΨG := vac_mono (Q := (· ∈ v.gP)) hΨ fun _ _ => trivial
    have hΨO := vac_mono (Q := offP v w) hΨ fun _ _ => trivial
    have hΨ2G := vac_mono (Q := (· ∈ v.gP)) hΨ2 fun _ _ => trivial
    have hΨ2O := vac_mono (Q := offP v w) hΨ2 fun _ _ => trivial
    have hVG : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ v.gP) (comb c.ψ _ _ (w.eQ j) Ψ) :=
      ((VC1 (· ∈ w.Q) (· ∈ v.gP) hQG).2.1 _ hQ1).2 _ _ _ hΨG
    have hVQ : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (· ∈ w.Q) (comb c.ψ _ _ (v.eG j) Ψ) :=
      ((VC1 (· ∈ v.gP) (· ∈ w.Q) hGQ).2.1 _ hG1).2 _ _ _ hΨQ
    have hVO : Vac c.ψ _ _ (v.N j) (v.N (j + 1)) (offP v w) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ)) :=
      ((VC1 (· ∈ v.gP) (offP v w) hGoff).2.1 _ hG1).2 _ _ _ (((VC1 (· ∈ w.Q) (offP v w) hQoff).2.1 _ hQ1).2 _ _ _ hΨO)

    obtain ⟨r, hr, hrO, z, hz, κ, hκ, rfl⟩ := (hO j σ h _ _ (GlobalTheory.OffPlaceWeil.vac_off W1 hVO hεO (one_mem _)) hΨ2O).2.2.1 x
      (by rwa [omm, one_mul, mul_one])
    have hfix := ((hO j σ h _ _ hVO hΨ2O).1 κ hκ).1
    have hne2 : flatBF (t.sBF j (σ + 1) h) (t.om j (ε, z) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ))) ≠ 0 := by
      intro h0
      have hR := (_root_.GlobalTheory.FlatRInv.vanish_invariant D c.ψ (offP v w)).1 (σ + 1) _ _ (t.sBF j (σ + 1) h) _ (W1.om_pres (ε, z) _ hVO.1) r hr hrO
      rw [(ht.sBF j (σ + 1) h).1] at hR
      apply hne
      have e := hR.2 h0
      have e' : t.om j (ε, r * z * κ) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ)) =
          t.om j (1, r) (t.om j (ε, z) (comb c.ψ _ _ (v.eG j) (comb c.ψ _ _ (w.eQ j) Ψ))) := by
        conv_rhs => rw [← hfix]
        rw [omm, omm, one_mul, mul_one]
      rw [e']
      exact e
    obtain ⟨a, ha, xG, hxG, xQ, hxQ, rfl⟩ := split_off D _ v.gP w.Q hF.disjG z hz
    have cQG : ∀ {x y}, x ∈ grpAt (c.V (j + 1)) (· ∈ v.gP) → y ∈ grpAt (c.V (j + 1)) (· ∈ w.Q) → y * x = x * y :=
      fun hx hy => comm_at D _ v.gP w.Q hF.disjG hx hy

    have haQ : a * xQ ∈ grpOff _ (· ∈ v.gP) := mul_mem (real_le_off _ _ ha) (gO _ _ hQG hxQ)
    obtain ⟨rG, hrG, hrGa, kG, hkG, hxG'⟩ := (hG j σ h _ _ (GlobalTheory.OffPlaceWeil.vac_off W1 hVG hεG haQ) hΨ2G).1 xG hxG (by
      rw [← (VC1 (· ∈ v.gP) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W1 _ hG1 ε hεG _ haQ _ hVG.1, omm, one_mul,
        ← mul_assoc, ← hrf a ha xG (hGf hxG), mul_assoc, ← cQG hxG hxQ, ← mul_assoc]
      exact hne2)

    have haG : a * xG ∈ grpOff _ (· ∈ w.Q) := mul_mem (real_le_off _ _ ha) (gO _ _ hGQ hxG)
    obtain ⟨rQ, hrQ, hrQa, q, hq, kQ, hkQ, hxQ'⟩ := hTQsupp _ (GlobalTheory.OffPlaceWeil.vac_off W1 hVQ (one_mem _) haG) α ε hε xQ hxQ (by
      rw [← (VC1 (· ∈ w.Q) (fun _ => False) (fun _ _ h => h)).2.2.1 _ _ _ W1 _ hQ1 1 (one_mem _) _ haG _ hVQ.1, omm, mul_one,
        ← mul_assoc, ← hrf a ha xQ (hQf hxQ), ← (VC1 (· ∈ v.gP) (· ∈ w.Q) hGQ).1 _ _ hG1 hQ1]
      exact hne2)
    refine ⟨q * v.b (j + 1), Finset.mem_image_of_mem _ hq, r * rG * rQ, mul_mem (mul_mem hr hrG) hrQ, a, ha,
      (v.b (j + 1))⁻¹ * (kG * kQ * κ) * v.b (j + 1), ?_, ?_⟩
    · have m1 := (hKmem _).2 ⟨1, kG, kQ, hone, hkG, hkQ, rfl⟩
      have m2 := (hKmem _).2 ⟨κ, 1, 1, hκ, one_mem _, one_mem _, rfl⟩
      have m3 := mul_mem m1 m2
      have e : (v.b (j + 1))⁻¹ * (kG * kQ * κ) * v.b (j + 1) = (v.b (j + 1))⁻¹ * (1 * kG * kQ) * v.b (j + 1) *
          ((v.b (j + 1))⁻¹ * (κ * 1 * 1) * v.b (j + 1)) := by
        simp only [mul_assoc, mul_inv_cancel_left, one_mul, mul_one]
      rw [e]
      exact m3
    · have c1 : a * (rQ * q * kQ) * (rG * kG) = rG * rQ * a * q * (kG * kQ) := by
        rw [← hxQ', mul_assoc a xQ, ← mul_assoc xQ, cQG hrGa hxQ, ← mul_assoc a, ← mul_assoc a, hrf a ha rG (hGf hrGa), hxQ',
          ← cQG (hJG hkG) (hKQ hkQ), mul_assoc rG rQ a, ← hrf a ha rQ (hQf hrQa)]
        simp only [mul_assoc]
      rw [hxG', hxQ', c1]
      simp only [mul_assoc, mul_inv_cancel_left]

end GlobalTheory.FirstCells
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditions =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditionsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditionsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PlaceLaws\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditions\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.locally_finite_of_tuple_conditions : ∀ (D : D7) (c : Comm D) (v : VCom c) (t : Tup c) (w : VTup t), c.Is → v.Is → t.Is → VForm v w → OffLaw v w → GSupp (t := t) v → QFin v w → t.LocFin := by
  first | exact @GlobalTheory.FirstCells.locFin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditionsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLastTwoStepsDoubleLiftPeriodValueStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLastTwoStepsDoubleLiftPeriodValueStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HzUnit\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLastTwoStepsDoubleLiftPeriodValue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.seeSawLastTwoSteps_doubleLiftPeriod_value : ∀ (D : D7) (c : Comm D) (v : VCom c) (𝒯 : Type) (t : 𝒯 → Tup c) (w : ∀ s, VTup (t s)), c.Is → c.VolLast → v.Is → (∀ s, (t s).Is) → (∀ s, PlaceLaws v (w s)) → LastLaw D → SeeLast D → FlatLaw D → BiAct D → ValLastX t := by
  first | exact @GlobalTheory.SeeSawLastValue.valLast
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLastTwoStepsDoubleLiftPeriodValueStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLaws =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLaws", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HzUnit\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleLiftPeriodRankZeroFubiniCompactQuotient\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoubleStepEqTwoThetaColumnLiftsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatThetaMapsConvergeThetaFunctionsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LastSeeSawThetaIdentityStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocallyFiniteOfTupleConditionsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawFiniteIntegralsDoubleStepValueStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawLastTwoStepsDoubleLiftPeriodValueStatement\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeeSawWeilBiActionCommutesStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.SeeSaw

theorem placeLaws_finiteIntegrals : ∀ (D : D7) (c : Comm D) (v : VCom c) (𝒯 : Type) (t : 𝒯 → Tup c)
    (w : ∀ s, VTup (t s)), c.Is → c.VolLast → v.Is → (∀ s, (t s).Is) → (∀ s, PlaceLaws v (w s)) →
    (∀ s, (t s).LocFin) ∧ ValX t ∧ ValLastX t := by
  intro D c v 𝒯 t w hc hvl hv ht hp
  refine ⟨fun s => ?_, ?_, ?_⟩
  · exact GlobalTheory.T.locally_finite_of_tuple_conditions D c v (t s) (w s) hc hv (ht s) (hp s).form (hp s).off (hp s).gs (hp s).qfin
  · exact GlobalTheory.T.seeSaw_finiteIntegrals_doubleStep_value D c v 𝒯 t w hc hv ht hp (GlobalTheory.T.doubleStep_eq_two_thetaColumnLifts D) (GlobalTheory.T.flatThetaMaps_converge_thetaFunctions D) (GlobalTheory.T.seeSawWeilBiAction_commutes D)
  · exact GlobalTheory.T.seeSawLastTwoSteps_doubleLiftPeriod_value D c v 𝒯 t w hc hvl hv ht hp (GlobalTheory.Unf.LastSteps.lastLaw D) (GlobalTheory.T.lastSeeSaw_thetaIdentity D)
      (GlobalTheory.T.flatThetaMaps_converge_thetaFunctions D) (GlobalTheory.T.seeSawWeilBiAction_commutes D)

end GlobalTheory.SeeSaw
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLaws =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLawsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLawsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HzUnit\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.seesaw_place_laws_give_finite_integral_laws : ∀ (D : D7) (c : Comm D) (v : VCom c) (𝒯 : Type) (t : 𝒯 → Tup c) (w : ∀ s, VTup (t s)), c.Is → c.VolLast → v.Is → (∀ s, (t s).Is) → (∀ s, PlaceLaws v (w s)) → (∀ s, (t s).LocFin) ∧ ValX t ∧ ValLastX t := by
  first | exact @GlobalTheory.SeeSaw.placeLaws_finiteIntegrals
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SeesawPlaceLawsGiveFiniteIntegralLawsStatement =====

module

public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsIntOv
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdjFormula
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemLatOIffExistsActO
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMulInv
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjMemCompletedLatticeIffDualSplitPlaceStatement
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemHyperspecialIffGIntOfSuppAtSplit
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.RingTheory.LocalRing.ResidueField.Defs
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMulEqMulDiagonal
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.RingTheory.IntegralDomain
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.LengthCommensurableSpanSpanOfDetNeZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLengthEqAndCardEqPowOfIsFiniteLength
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsPlaceChartOfSplitIdempotentStatement
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsSplitFrameSelfDualLatticeCompletion
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Tjcosets
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.TotallySplit
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.GlintPrincRelIndexNeZero

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlIntegralInvMulOfLatticeMapEq, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeIndexSplitPlaceEqProductLocal, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexStandardLatticeTransposeInvDvr, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumSublatticeIndexRpowLeSolomon, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumLatticePairsIndexRpowLe, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOne, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOneStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlIntegralInvMulOfLatticeMapEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlIntegralInvMulOfLatticeMapEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsIntOv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.SplitHecke

open Matrix

section

variable {O K : Type} [CommRing O] [Field K] [Algebra O K] {r : ℕ}

theorem isInt_of_mem_span_basisFun {w : Fin r → K}
    (hw : w ∈ Submodule.span O (Set.range (Pi.basisFun K (Fin r)))) (i : Fin r) :
    IsInt O (w i) := by
  show ∃ o : O, algebraMap O K o = w i
  induction hw using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨j, rfl⟩ := hx
    by_cases hij : i = j
    · subst hij
      exact ⟨1, by simp⟩
    · exact ⟨0, by simp [Pi.basisFun_apply, hij]⟩
  | zero => exact ⟨0, by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨a, ha⟩ := hx
    obtain ⟨b, hb⟩ := hy
    exact ⟨a + b, by simp [ha, hb]⟩
  | smul c x _ hx =>
    obtain ⟨a, ha⟩ := hx
    exact ⟨c * a, by simp [ha, Algebra.smul_def]⟩

theorem intM_inv_mul_of_map_le {a b : GL (Fin r) K}
    (hle : (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map
        (((a : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O) ≤
      (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map
        (((b : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O)) :
    IntM O (b⁻¹ * a).1 := by
  intro i j
  have hmem := Submodule.mem_map_of_mem
    (f := ((a : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O)
    (Submodule.subset_span ⟨j, rfl⟩ :
      Pi.basisFun K (Fin r) j ∈ Submodule.span O (Set.range (Pi.basisFun K (Fin r))))
  obtain ⟨w, hw, hwe⟩ := hle hmem
  simp only [LinearMap.restrictScalars_apply, Matrix.mulVecLin_apply] at hwe
  have hcol : ((b⁻¹ * a : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) *ᵥ Pi.basisFun K (Fin r) j = w := by
    rw [Units.val_mul, ← Matrix.mulVec_mulVec, ← hwe, Matrix.mulVec_mulVec, ← Units.val_mul,
      inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
  have hentry : (b⁻¹ * a).1 i j = w i := by
    rw [← hcol]
    simp [Pi.basisFun_apply]
  rw [hentry]
  exact isInt_of_mem_span_basisFun hw i

end

theorem gInt_inv_mul_of_map_eq : ∀ (O K : Type) [CommRing O] [Field K] [Algebra O K] (r : ℕ)
    (h h' : GL (Fin r) K),
    (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map
        (((h : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O) =
      (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map
        (((h' : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O) →
    GInt O (h⁻¹ * h') := by
  intro O K _ _ _ r h h' heq
  show IntM O (h⁻¹ * h').1 ∧ IntM O ((h⁻¹ * h')⁻¹).1
  refine ⟨intM_inv_mul_of_map_le heq.ge, ?_⟩
  rw [_root_.mul_inv_rev, inv_inv]
  exact intM_inv_mul_of_map_le heq.le

end GlobalTheory.SplitHecke
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlIntegralInvMulOfLatticeMapEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeIndexSplitPlaceEqProductLocal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeIndexSplitPlaceEqProductLocal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdjFormula\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsIntOv\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemLatOIffExistsActO\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMulInv\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjMemCompletedLatticeIffDualSplitPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemHyperspecialIffGIntOfSuppAtSplit\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.NTheta IsDedekindDomain NumberField Matrix GlobalTheory.SplitHecke GlobalTheory.RawLift
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section
namespace GlobalTheory.SplitIndexLocal

theorem relIndex_eq_mul_of {G Q₁ Q₂ : Type} [AddCommGroup G] [AddCommGroup Q₁] [AddCommGroup Q₂]
    (H K : AddSubgroup G) (S₁ T₁ : AddSubgroup Q₁) (S₂ T₂ : AddSubgroup Q₂) (φ₁ : G →+ Q₁) (φ₂ : G →+ Q₂)
    (hT : ∀ y ∈ K, φ₁ y ∈ T₁ ∧ φ₂ y ∈ T₂) (hs : ∀ a ∈ T₁, ∀ b ∈ T₂, ∃ y ∈ K, φ₁ y = a ∧ φ₂ y = b)
    (hH : ∀ y ∈ K, y ∈ H ↔ φ₁ y ∈ S₁ ∧ φ₂ y ∈ S₂) :
    H.relIndex K = S₁.relIndex T₁ * S₂.relIndex T₂ := by
  let ψ : K →+ T₁ × T₂ :=
    { toFun := fun y => (⟨φ₁ y, (hT y y.2).1⟩, ⟨φ₂ y, (hT y y.2).2⟩)
      map_zero' := by ext <;> simp
      map_add' := by intros; ext <;> simp }
  have hψ : Function.Surjective ψ := by
    rintro ⟨⟨a, ha⟩, ⟨b, hb⟩⟩
    obtain ⟨y, hy, h1, h2⟩ := hs a ha b hb
    exact ⟨⟨y, hy⟩, by ext <;> simp [ψ, h1, h2]⟩
  have e : H.addSubgroupOf K = ((S₁.addSubgroupOf T₁).prod (S₂.addSubgroupOf T₂)).comap ψ := by
    ext ⟨y, hy⟩
    simp only [AddSubgroup.mem_comap, AddSubgroup.mem_addSubgroupOf, hH y hy]
    exact Iff.rfl
  unfold AddSubgroup.relIndex
  rw [e, AddSubgroup.index_comap_of_surjective _ hψ, AddSubgroup.index_prod]

section Pure
variable {O K : Type} [CommRing O] [Field K] [Algebra O K]

theorem mem_std {r : ℕ} (x : Fin r → K) :
    x ∈ Submodule.span O (Set.range (Pi.basisFun K (Fin r))) ↔ ∀ i, IsInt O (x i) := by
  rw [Submodule.mem_span_range_iff_exists_fun]
  constructor
  · rintro ⟨c, rfl⟩ i
    refine ⟨c i, ?_⟩
    simp [Finset.sum_apply, Pi.single_apply, Algebra.smul_def]
  · intro h
    choose c hc using h
    refine ⟨c, funext fun i => ?_⟩
    simp [Finset.sum_apply, Pi.single_apply, Algebra.smul_def, hc]

theorem mem_map_iff {r : ℕ} (A B : Matrix (Fin r) (Fin r) K) (hAB : A * B = 1) (x : Fin r → K) :
    x ∈ (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map (A.mulVecLin.restrictScalars O) ↔
      B *ᵥ x ∈ Submodule.span O (Set.range (Pi.basisFun K (Fin r))) := by
  have hBA : B * A = 1 := (mul_eq_one_comm_of_card_eq (Fin r) (Fin r) K rfl).mp hAB
  constructor
  · rintro ⟨u, hu, rfl⟩
    change B *ᵥ (A *ᵥ u) ∈ _
    rwa [Matrix.mulVec_mulVec, hBA, Matrix.one_mulVec]
  · intro h
    refine ⟨_, h, ?_⟩
    change A *ᵥ (B *ᵥ x) = x
    rw [Matrix.mulVec_mulVec, hAB, Matrix.one_mulVec]

theorem final_iff {r : ℕ} (R R' : GL (Fin r) K) (hR : R.1 * R'.1 = 1) (a b a' b' : Fin r → K)
    (ha : a' = R'.1 *ᵥ a) (hb : b' = b ᵥ* R.1) :
    ((∀ i, IsInt O (a' i)) ∧ ∀ i, IsInt O (b' i)) ↔
      a ∈ ((Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map
        ((R.1.mulVecLin).restrictScalars O)).toAddSubgroup ∧
      b ∈ ((Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map
        (((R'.1)ᵀ.mulVecLin).restrictScalars O)).toAddSubgroup := by
  have hT : (R'.1)ᵀ * (R.1)ᵀ = 1 := by rw [← Matrix.transpose_mul, hR, Matrix.transpose_one]
  rw [Submodule.mem_toAddSubgroup, Submodule.mem_toAddSubgroup, mem_map_iff _ _ hR, mem_map_iff _ _ hT,
    Matrix.mulVec_transpose, mem_std, mem_std, ha, hb]

end Pure
end GlobalTheory.SplitIndexLocal

noncomputable section
namespace GlobalTheory.SplitIndexLocal
open GlobalTheory.SplitHecke.Stab
open GlobalTheory.AdelicLatMove (mt_mul mt_one gram_mul_inv)

variable {D : D7}

def finV (D : D7) (r : ℕ) : (Fin r → AE D) →+ (Fin r → Af D.host.F ⊗[D.host.F] D.host.E) :=
  AddMonoidHom.compLeft (finPart D).toAddMonoidHom (Fin r)

theorem finV_apply (r : ℕ) (y : Fin r → AE D) : finV D r y = fun i => finPart D (y i) := rfl

theorem finV_surj (r : ℕ) : Function.Surjective (finV D r) := fun z =>
  ⟨fun k => (finPart_surj (z k)).choose, funext fun k => (finPart_surj (z k)).choose_spec⟩

def coordA {v : HeightOneSpectrum (𝓞 D.host.F)} (π : AE D →+* Fv D.host.F v) {r : ℕ}
    (β : GL (Fin r) (Fv D.host.F v)) : (Fin r → AE D) →+ (Fin r → Fv D.host.F v) where
  toFun y := (β⁻¹).1 *ᵥ fun k => π (y k)
  map_zero' := by simp only [Pi.zero_apply, map_zero]; exact Matrix.mulVec_zero _
  map_add' x y := by
    rw [← Matrix.mulVec_add]
    congr 1
    funext i
    simp only [Pi.add_apply, map_add]

def coordB (W : HSp D) {v : HeightOneSpectrum (𝓞 D.host.F)} (π : AE D →+* Fv D.host.F v)
    (β : GL (Fin W.rank) (Fv D.host.F v)) : (Fin W.rank → AE D) →+ (Fin W.rank → Fv D.host.F v) where
  toFun y := (fun i => π (cA D (y i))) ᵥ* ((W.gram.map fun a => π (incA D a)) * β.1)
  map_zero' := by simp only [Pi.zero_apply, map_zero]; exact Matrix.zero_vecMul _
  map_add' x y := by
    rw [← Matrix.add_vecMul]
    congr 1
    funext i
    simp only [Pi.add_apply, map_add]

variable {e : AE D} {v : HeightOneSpectrum (𝓞 D.host.F)} {π : AE D →+* Fv D.host.F v} {W : HSp D}
  {β : GL (Fin W.rank) (Fv D.host.F v)}

theorem chart_e (he : IsSplitIdem D e) (hπ : Chart e v π) : π e = 1 ∧ π (cA D e) = 0 := by
  refine ⟨?_, (hπ.2.1 _).2 he.2.1⟩
  have : π (1 - e) = 0 := (hπ.2.1 _).2 (by rw [mul_sub, mul_one, he.1, sub_self])
  rw [map_sub, map_one, sub_eq_zero] at this
  exact this.symm

theorem coords_int (he : IsSplitIdem D e) (hβ : Frame W e π β)
    (hd : ∀ y : Fin W.rank → AE D, (fun i => finPart D (cA D e * y i)) ∈ LamHat W ↔ ∀ j, IsInt (Ov D v)
      (((fun i => π (cA D (y i))) ᵥ* ((W.gram.map fun a => π (incA D a)) * β.1)) j))
    {y : Fin W.rank → AE D} (hy : finV D W.rank y ∈ LamHat W) :
    (∀ i, IsInt (Ov D v) (coordA π β y i)) ∧ (∀ i, IsInt (Ov D v) (coordB W π β y i)) :=
  ⟨(hβ y).1 (idem_mul_mem W he.1 hy), (hd y).1 (idem_mul_mem W (GlobalTheory.SplitScalar.isSplitIdem_conj he).1 hy)⟩

end GlobalTheory.SplitIndexLocal

noncomputable section
namespace GlobalTheory.SplitIndexLocal
open GlobalTheory.SplitHecke.Stab

variable {D : D7} {e : AE D} {v : HeightOneSpectrum (𝓞 D.host.F)} {π : AE D →+* Fv D.host.F v} {W : HSp D}
  {β : GL (Fin W.rank) (Fv D.host.F v)}

theorem coords_surj (he : IsSplitIdem D e) (hπ : Chart e v π) (hβ : Frame W e π β)
    (hd : ∀ y : Fin W.rank → AE D, (fun i => finPart D (cA D e * y i)) ∈ LamHat W ↔ ∀ j, IsInt (Ov D v)
      (((fun i => π (cA D (y i))) ᵥ* ((W.gram.map fun a => π (incA D a)) * β.1)) j))
    (a b : Fin W.rank → Fv D.host.F v) (ha : ∀ i, IsInt (Ov D v) (a i)) (hb : ∀ i, IsInt (Ov D v) (b i)) :
    ∃ y, finV D W.rank y ∈ LamHat W ∧ coordA π β y = a ∧ coordB W π β y = b := by
  obtain ⟨h1, h0⟩ := chart_e he hπ
  have hcc : cA D (cA D e) = e := cA_cA e
  set G := W.gram.map fun a => π (incA D a) with hG
  set N := W.gram⁻¹.map fun a => π (incA D a) with hN
  have hGN : G * N = 1 := by
    have := congrArg (Matrix.map · π) (GlobalTheory.OrientedAdjoint.gram_mul_inv W)
    simp only [Matrix.map_mul, Matrix.map_map] at this
    rw [Matrix.map_one _ (map_zero _) (map_one _)] at this
    exact this
  have hNG : N * G = 1 := mul_eq_one_comm.1 hGN
  choose y₁ hy₁ using fun k => hπ.1 ((β.1 *ᵥ a) k)
  set x := b ᵥ* ((β⁻¹).1 * N) with hx
  choose z hz using fun k => hπ.1 (x k)
  let y₂ : Fin W.rank → AE D := fun k => cA D (z k)
  have hy₂ : (fun k => π (cA D (y₂ k))) = x := funext fun k => by simp [y₂, cA_cA, hz]
  have hxb : x ᵥ* (G * β.1) = b := by
    rw [hx, Matrix.vecMul_vecMul, Matrix.mul_assoc, ← Matrix.mul_assoc N, hNG, Matrix.one_mul,
      ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.vecMul_one]
  have hA1 : (fun k => π (y₁ k)) = β.1 *ᵥ a := funext hy₁
  have hAa : (β⁻¹).1 *ᵥ (fun k => π (y₁ k)) = a := by
    rw [hA1, Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
  refine ⟨fun k => e * y₁ k + cA D e * y₂ k, ?_, ?_, ?_⟩
  · have hsplit : finV D W.rank (fun k => e * y₁ k + cA D e * y₂ k) =
        (fun i => finPart D (e * y₁ i)) + (fun i => finPart D (cA D e * y₂ i)) := by
      funext i
      show finPart D (e * y₁ i + cA D e * y₂ i) = finPart D (e * y₁ i) + finPart D (cA D e * y₂ i)
      exact RingHom.map_add _ _ _
    rw [hsplit]
    refine add_mem ((hβ y₁).2 fun i => ?_) ((hd y₂).2 fun j => ?_)
    · rw [hAa]; exact ha i
    · rw [hy₂, hxb]; exact hb j
  · change (β⁻¹).1 *ᵥ (fun k => π (e * y₁ k + cA D e * y₂ k)) = a
    have : (fun k => π (e * y₁ k + cA D e * y₂ k)) = fun k => π (y₁ k) := funext fun k => by
      simp [map_add (f := _), map_mul, h1, h0]
    rw [this, hAa]
  · change (fun i => π (cA D (e * y₁ i + cA D e * y₂ i))) ᵥ* (G * β.1) = b
    have : (fun i => π (cA D (e * y₁ i + cA D e * y₂ i))) = fun k => π (cA D (y₂ k)) := funext fun k => by
      simp [map_add (f := _), map_mul, h1, h0, hcc]
    rw [this, hy₂, hxb]

end GlobalTheory.SplitIndexLocal

noncomputable section
namespace GlobalTheory.SplitIndexLocal
open GlobalTheory.SplitHecke.Stab
open GlobalTheory.AdelicLatMove (mt_mul mt_one gram_mul_inv)

variable {D : D7} {e : AE D} {v : HeightOneSpectrum (𝓞 D.host.F)} {π : AE D →+* Fv D.host.F v} {W : HSp D}
  {β : GL (Fin W.rank) (Fv D.host.F v)}

theorem coordA_move (g' : GA D W) (y : Fin W.rank → AE D) :
    coordA π β (mt W g' *ᵥ y) = (rho W π β g').1 *ᵥ coordA π β y := by
  show (β⁻¹).1 *ᵥ (fun k => π ((mt W g' *ᵥ y) k)) = (rho W π β g').1 *ᵥ ((β⁻¹).1 *ᵥ fun k => π (y k))
  rw [map_mulVec', Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, rho_val, Matrix.mul_assoc _ β.1,
    ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.mul_one]

theorem coordB_move (g' : GA D W) (y : Fin W.rank → AE D) :
    coordB W π β (mt W g' *ᵥ y) = coordB W π β y ᵥ* (rho W π β g'⁻¹).1 := by
  have h := dual_move (cA D) π (W.gram.map (incA D)) (mt W g') (mt W g'⁻¹) β (gram_mul_inv W g') y
  rw [rho_val]
  exact h

theorem mem_iff_coords (he : IsSplitIdem D e) (hβ : Frame W e π β)
    (hd : ∀ y : Fin W.rank → AE D, (fun i => finPart D (cA D e * y i)) ∈ LamHat W ↔ ∀ j, IsInt (Ov D v)
      (((fun i => π (cA D (y i))) ᵥ* ((W.gram.map fun a => π (incA D a)) * β.1)) j))
    {g' : GA D W} (hg' : SuppAt e W g') {y : Fin W.rank → AE D} (hy : finV D W.rank y ∈ LamHat W) :
    finV D W.rank (mt W g' *ᵥ y) ∈ LamHat W ↔
      (∀ i, IsInt (Ov D v) (coordA π β (mt W g' *ᵥ y) i)) ∧ (∀ i, IsInt (Ov D v) (coordB W π β (mt W g' *ᵥ y) i)) := by
  refine ⟨coords_int he hβ hd, fun ⟨hA, hB⟩ => ?_⟩
  have he' := GlobalTheory.SplitScalar.isSplitIdem_conj he
  have hs := split_move (finPart D) e (cA D e) (mt W g') hg' y
  rw [← map_mulVec'] at hs
  rw [finV_apply, hs]
  exact add_mem (add_mem ((hβ _).2 hA) ((hd _).2 hB))
    (sub_mem (sub_mem hy (idem_mul_mem W he.1 hy)) (idem_mul_mem W he'.1 hy))

theorem latIndex_split_local : ∀ {D : D7} (e : AE D) (v : HeightOneSpectrum (𝓞 D.host.F)) (π : AE D →+* Fv D.host.F v), IsSplitIdem D e → Chart e v π → ∀ (W : HSp D) (β : GL (Fin W.rank) (Fv D.host.F v)), Frame W e π β → ∀ g : GA D W, SuppAt e W g → latIndex W g = ((Submodule.span (Ov D v) (Set.range (Pi.basisFun (Fv D.host.F v) (Fin W.rank)))).map ((((rho W π β g : GL (Fin W.rank) (Fv D.host.F v)) : Matrix (Fin W.rank) (Fin W.rank) (Fv D.host.F v)).mulVecLin).restrictScalars (Ov D v))).toAddSubgroup.relIndex (Submodule.span (Ov D v) (Set.range (Pi.basisFun (Fv D.host.F v) (Fin W.rank)))).toAddSubgroup * ((Submodule.span (Ov D v) (Set.range (Pi.basisFun (Fv D.host.F v) (Fin W.rank)))).map ((((rho W π β g⁻¹ : GL (Fin W.rank) (Fv D.host.F v)) : Matrix (Fin W.rank) (Fin W.rank) (Fv D.host.F v))ᵀ.mulVecLin).restrictScalars (Ov D v))).toAddSubgroup.relIndex (Submodule.span (Ov D v) (Set.range (Pi.basisFun (Fv D.host.F v) (Fin W.rank)))).toAddSubgroup := by
  intro D e v π he hπ W β hβ g hg
  have hd := GlobalTheory.T.conj_mem_completedLattice_iff_dual_splitPlace e v π he hπ W β hβ
  have h0 : latIndex W g = (((LamHat W).map (finMat D.sp.cm.sig W.gram g).mulVecLin.toAddMonoidHom).comap
      (finV D W.rank)).relIndex ((LamHat W).comap (finV D W.rank)) := by
    unfold latIndex
    rw [AddSubgroup.relIndex_comap, AddSubgroup.map_comap_eq_self_of_surjective (finV_surj (D := D) W.rank)]
  have hgg : (rho W π β g).1 * (rho W π β g⁻¹).1 = 1 := by
    rw [← Units.val_mul, ← map_mul, mul_inv_cancel, map_one, Units.val_one]
  rw [h0]
  refine relIndex_eq_mul_of _ _ _ _ _ _ (coordA π β) (coordB W π β) ?_ ?_ ?_
  · intro y hy
    obtain ⟨h1, h2⟩ := coords_int he hβ hd hy
    exact ⟨(mem_std _).2 h1, (mem_std _).2 h2⟩
  · intro a ha b hb
    obtain ⟨y, hy, h1, h2⟩ := coords_surj he hπ hβ hd a b ((mem_std _).1 ha) ((mem_std _).1 hb)
    exact ⟨y, hy, h1, h2⟩
  · intro y hy
    have hy' : finV D W.rank y ∈ LamHat W := hy
    have hstep : finV D W.rank y ∈ (LamHat W).map (finMat D.sp.cm.sig W.gram g).mulVecLin.toAddMonoidHom ↔
        finV D W.rank (mt W g⁻¹ *ᵥ y) ∈ LamHat W := by
      have hfv : finV D W.rank (mt W g⁻¹ *ᵥ y) = finMat D.sp.cm.sig W.gram g⁻¹ *ᵥ finV D W.rank y := by
        rw [finV_apply, finV_apply, finMat_eq, map_mulVec']
      rw [hfv]
      constructor
      · rintro ⟨z, hz, hzy⟩
        change finMat D.sp.cm.sig W.gram g *ᵥ z = _ at hzy
        rw [← hzy]
        have := finMat_mul_inv g⁻¹ z
        rw [inv_inv] at this
        rw [this]
        exact hz
      · intro h
        exact ⟨_, h, finMat_mul_inv g _⟩
    refine AddSubgroup.mem_comap.trans (hstep.trans ((mem_iff_coords he hβ hd (suppAt_inv hg) hy').trans ?_))
    have hA : coordA π β (mt W g⁻¹ *ᵥ y) = (rho W π β g⁻¹).1 *ᵥ coordA π β y := coordA_move g⁻¹ y
    have hB : coordB W π β (mt W g⁻¹ *ᵥ y) = coordB W π β y ᵥ* (rho W π β g).1 := by rw [coordB_move, inv_inv]
    exact final_iff _ _ hgg _ _ _ _ hA hB

end GlobalTheory.SplitIndexLocal
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeIndexSplitPlaceEqProductLocal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexStandardLatticeTransposeInvDvr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexStandardLatticeTransposeInvDvr", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMulEqMulDiagonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace GlobalTheory.IndexTranspose

variable {O K : Type} [CommRing O] [Field K] [Algebra O K] {r : ℕ}

abbrev stdLat (O K : Type) [CommRing O] [Field K] [Algebra O K] (r : ℕ) : Submodule O (Fin r → K) :=
  Submodule.span O (Set.range (Pi.basisFun K (Fin r)))

theorem mem_stdLat {v : Fin r → K} :
    v ∈ stdLat O K r ↔ ∃ w : Fin r → O, v = fun i => algebraMap O K (w i) := by
  rw [Submodule.mem_span_range_iff_exists_fun]
  constructor
  · rintro ⟨c, rfl⟩
    refine ⟨c, funext fun i => ?_⟩
    simp [Finset.sum_apply, Pi.single_apply, Algebra.smul_def]
  · rintro ⟨w, rfl⟩
    refine ⟨w, funext fun i => ?_⟩
    simp [Finset.sum_apply, Pi.single_apply, Algebra.smul_def]

def latOf (O : Type) [CommRing O] [Algebra O K] (A : Matrix (Fin r) (Fin r) K) : Submodule O (Fin r → K) :=
  (stdLat O K r).map ((A.mulVecLin).restrictScalars O)

theorem mem_latOf {A : Matrix (Fin r) (Fin r) K} {v : Fin r → K} :
    v ∈ latOf O A ↔ ∃ w ∈ stdLat O K r, A *ᵥ w = v := by
  simp [latOf, Submodule.mem_map]

theorem latOf_mul (A B : Matrix (Fin r) (Fin r) K) :
    latOf O (A * B) = (latOf O B).map ((A.mulVecLin).restrictScalars O) := by
  ext v
  rw [Submodule.mem_map, mem_latOf]
  constructor
  · rintro ⟨w, hw, rfl⟩
    exact ⟨B *ᵥ w, mem_latOf.2 ⟨w, hw, rfl⟩, by simp [Matrix.mulVec_mulVec]⟩
  · rintro ⟨u, hu, rfl⟩
    obtain ⟨w, hw, rfl⟩ := mem_latOf.1 hu
    exact ⟨w, hw, by simp [Matrix.mulVec_mulVec]⟩

theorem latOf_one : latOf O (1 : Matrix (Fin r) (Fin r) K) = stdLat O K r := by
  ext v
  rw [mem_latOf]
  simp

theorem map_mulVec_mem (N : Matrix (Fin r) (Fin r) O) {v : Fin r → K} (hv : v ∈ stdLat O K r) :
    (N.map (algebraMap O K)) *ᵥ v ∈ stdLat O K r := by
  obtain ⟨w, rfl⟩ := mem_stdLat.1 hv
  refine mem_stdLat.2 ⟨N *ᵥ w, funext fun i => ?_⟩
  exact (RingHom.map_mulVec (algebraMap O K) N w i).symm

theorem latOf_unimod (N : Matrix (Fin r) (Fin r) O) (hN : IsUnit N.det) :
    latOf O (N.map (algebraMap O K)) = stdLat O K r := by
  apply le_antisymm
  · intro v hv
    obtain ⟨w, hw, rfl⟩ := mem_latOf.1 hv
    exact map_mulVec_mem N hw
  · intro v hv
    refine mem_latOf.2 ⟨(N⁻¹).map (algebraMap O K) *ᵥ v, map_mulVec_mem _ hv, ?_⟩
    rw [Matrix.mulVec_mulVec, ← Matrix.map_mul, Matrix.mul_nonsing_inv _ hN,
      Matrix.map_one _ (map_zero _) (map_one _), Matrix.one_mulVec]

theorem det_map_ne_zero (N : Matrix (Fin r) (Fin r) O) (hN : IsUnit N.det) :
    (N.map (algebraMap O K)).det ≠ 0 := by
  rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
  exact (hN.map _).ne_zero

theorem toAddSubgroup_map (A : Matrix (Fin r) (Fin r) K) (p : Submodule O (Fin r → K)) :
    (p.map ((A.mulVecLin).restrictScalars O)).toAddSubgroup =
      p.toAddSubgroup.map A.mulVecLin.toAddMonoidHom := by
  ext v
  simp [Submodule.mem_map, AddSubgroup.mem_map]

def idx (O : Type) [CommRing O] [Algebra O K] (A : Matrix (Fin r) (Fin r) K) : ℕ :=
  (latOf O A).toAddSubgroup.relIndex (stdLat O K r).toAddSubgroup

theorem idx_mul_right (A U : Matrix (Fin r) (Fin r) K) (hU : latOf O U = stdLat O K r) :
    idx O (A * U) = idx O A := by
  unfold idx
  rw [latOf_mul, hU]
  rfl

theorem idx_mul_left (U A : Matrix (Fin r) (Fin r) K) (hU : latOf O U = stdLat O K r) (hd : U.det ≠ 0) :
    idx O (U * A) = idx O A := by
  have hinj : Function.Injective U.mulVecLin.toAddMonoidHom :=
    fun a b hab => Matrix.mulVec_injective_of_det_ne_zero hd hab
  have e : (stdLat O K r).toAddSubgroup = (stdLat O K r).toAddSubgroup.map U.mulVecLin.toAddMonoidHom := by
    rw [← toAddSubgroup_map]
    exact congrArg Submodule.toAddSubgroup hU.symm
  unfold idx
  rw [latOf_mul, toAddSubgroup_map]
  conv_lhs => rw [e]
  exact AddSubgroup.relIndex_map_map_of_injective _ _ hinj

theorem idx_transpose [IsDomain O] [IsDiscreteValuationRing O] [IsFractionRing O K]
    (g : Matrix (Fin r) (Fin r) K) (hg : g.det ≠ 0) : idx O gᵀ = idx O g := by
  classical
  obtain ⟨c, hc⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors O)
    (Finset.univ : Finset (Fin r × Fin r)) (fun ij => g ij.1 ij.2)
  have hc' := fun ij : Fin r × Fin r => RingHom.mem_rangeS.1 (hc ij (Finset.mem_univ ij))
  choose N0 hN0 using hc'
  set a : K := algebraMap O K (c : O) with ha_def
  have ha : a ≠ 0 := IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors c.2
  let N : Matrix (Fin r) (Fin r) O := Matrix.of fun i j => N0 (i, j)
  have hNmap : N.map (algebraMap O K) = a • g := by
    ext i j
    simp only [N, Matrix.map_apply, Matrix.of_apply, Matrix.smul_apply, hN0 (i, j), ha_def, smul_eq_mul, Algebra.smul_def]
  have hNdet : N.det ≠ 0 := by
    intro h0
    have e := RingHom.map_det (algebraMap O K) N
    rw [h0, map_zero, RingHom.mapMatrix_apply, hNmap, Matrix.det_smul] at e
    exact mul_ne_zero (pow_ne_zero _ ha) hg e.symm
  obtain ⟨P, Q, hP, hQ, d, hPQ⟩ := GlobalTheory.SmithBetween.exists_mul_eq_mul_diagonal N hNdet
  set D : Matrix (Fin r) (Fin r) K := a⁻¹ • Matrix.diagonal (fun i => algebraMap O K (d i)) with hD
  have hmap := congrArg (fun M : Matrix (Fin r) (Fin r) O => M.map (algebraMap O K)) hPQ
  simp only [Matrix.map_mul, hNmap, Matrix.diagonal_map (map_zero _)] at hmap
  have key : g * Q.map (algebraMap O K) = P.map (algebraMap O K) * D := by
    rw [hD, Matrix.mul_smul, ← hmap, Matrix.smul_mul, smul_smul, inv_mul_cancel₀ ha, one_smul]
  have hDT : Dᵀ = D := by
    rw [hD, Matrix.transpose_smul, Matrix.diagonal_transpose]
  have hQT : IsUnit Qᵀ.det := by rwa [Matrix.det_transpose]
  have hPT : IsUnit Pᵀ.det := by rwa [Matrix.det_transpose]
  have e1 : idx O g = idx O D := by
    rw [← idx_mul_right g _ (latOf_unimod Q hQ), key,
      idx_mul_left _ _ (latOf_unimod P hP) (det_map_ne_zero P hP)]
  have e2 : idx O gᵀ = idx O D := by
    have hQ' := latOf_unimod (K := K) Qᵀ hQT
    rw [Matrix.transpose_map] at hQ'
    have hP' := latOf_unimod (K := K) Pᵀ hPT
    rw [Matrix.transpose_map] at hP'
    have hQd := det_map_ne_zero (K := K) Qᵀ hQT
    rw [Matrix.transpose_map] at hQd
    rw [← idx_mul_left _ gᵀ hQ' hQd, ← Matrix.transpose_mul, key, Matrix.transpose_mul, hDT,
      idx_mul_right _ _ hP']
  rw [e1, e2]

theorem relIndex_transpose_inv : ∀ (O K : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Finite (IsLocalRing.ResidueField O)] [Field K] [Algebra O K] [IsFractionRing O K] (r : ℕ) (h : GL (Fin r) K), ((Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map ((((h⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K)ᵀ.mulVecLin).restrictScalars O)).toAddSubgroup.relIndex (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).toAddSubgroup = (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).toAddSubgroup.relIndex ((Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map (((h : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O)).toAddSubgroup := by
  intro O K _ _ _ _ _ _ _ r h
  set g : Matrix (Fin r) (Fin r) K := ((h⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) with hg_def
  set hM : Matrix (Fin r) (Fin r) K := (h : Matrix (Fin r) (Fin r) K) with hM_def
  have hgh : g * hM = 1 := Units.inv_mul h
  have hg : g.det ≠ 0 := by
    intro h0
    have e := congrArg Matrix.det hgh
    rw [Matrix.det_mul, h0, zero_mul, Matrix.det_one] at e
    exact zero_ne_one e
  have hginj : Function.Injective g.mulVecLin.toAddMonoidHom :=
    fun a b hab => Matrix.mulVec_injective_of_det_ne_zero hg hab
  change idx O gᵀ = (stdLat O K r).toAddSubgroup.relIndex (latOf O hM).toAddSubgroup
  have e1 : (latOf O g).toAddSubgroup = (stdLat O K r).toAddSubgroup.map g.mulVecLin.toAddMonoidHom :=
    toAddSubgroup_map g _
  have e2 : (stdLat O K r).toAddSubgroup = (latOf O hM).toAddSubgroup.map g.mulVecLin.toAddMonoidHom := by
    rw [← toAddSubgroup_map, ← latOf_mul, hgh, latOf_one]
  rw [idx_transpose g hg, ← AddSubgroup.relIndex_map_map_of_injective _ _ hginj, ← e1, ← e2]
  rfl

end GlobalTheory.IndexTranspose
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexStandardLatticeTransposeInvDvr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumSublatticeIndexRpowLeSolomon =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumSublatticeIndexRpowLeSolomon", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Pow.Real\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.IntegralDomain\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped InnerProductSpace BigOperators

namespace GlobalTheory.SubZeta

theorem index_eq_mul_of_exact {G A B : Type*} [AddCommGroup G] [AddCommGroup A] [AddCommGroup B]
    (π : G →+ A) (hπ : Function.Surjective π) (ι : B →+ G) (hι : ι.range = π.ker)
    (H : AddSubgroup G) : H.index = (H.map π).index * (H.comap ι).index := by
  have h1 : (H.map π).index = (H ⊔ π.ker).index := by
    rw [← AddSubgroup.index_comap_of_surjective (H := H.map π) hπ, AddSubgroup.comap_map_eq]
  have h2 : (H.comap ι).index = H.relIndex π.ker := by
    rw [AddSubgroup.index_comap, hι]
  rw [h1, h2, ← AddSubgroup.relIndex_sup_left, mul_comm, AddSubgroup.relIndex_mul_index le_sup_left]

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem index_span_pow {ϖ : O} (hϖ : Irreducible ϖ) (n : ℕ) :
    (Ideal.span {ϖ ^ n} : Ideal O).toAddSubgroup.index =
      Nat.card (IsLocalRing.ResidueField O) ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hle : (Ideal.span {ϖ ^ (n+1)} : Ideal O).toAddSubgroup ≤
        (Ideal.span {ϖ ^ n} : Ideal O).toAddSubgroup := by
      intro x hx
      exact (Ideal.span_singleton_le_span_singleton.mpr (Dvd.intro _ (pow_succ ϖ n).symm)) hx
    rw [← AddSubgroup.relIndex_mul_index hle, ih, pow_succ (Nat.card (IsLocalRing.ResidueField O)) n, mul_comm]
    congr 1
    let f : O →+ O := AddMonoidHom.mulLeft (ϖ ^ n)
    have hr : f.range = (Ideal.span {ϖ ^ n} : Ideal O).toAddSubgroup := by
      ext x
      simp [f, Ideal.mem_span_singleton', mul_comm]
    rw [← hr, ← AddSubgroup.index_comap]
    have hc : (Ideal.span {ϖ ^ (n+1)} : Ideal O).toAddSubgroup.comap f =
        (IsLocalRing.maximalIdeal O).toAddSubgroup := by
      ext x
      simp only [AddSubgroup.mem_comap, Submodule.mem_toAddSubgroup, f, AddMonoidHom.coe_mulLeft]
      rw [(IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ, Ideal.mem_span_singleton,
        Ideal.mem_span_singleton, pow_succ, mul_dvd_mul_iff_left (pow_ne_zero _ hϖ.ne_zero)]
    rw [hc]
    rfl

end GlobalTheory.SubZeta

namespace GlobalTheory.SubZeta

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem infinite_of_dvr : Infinite O := by
  by_contra h
  rw [not_infinite_iff_finite] at h
  exact IsDiscreteValuationRing.not_isField O (Finite.isField_of_domain O)

theorem sum_ideal_le [Finite (IsLocalRing.ResidueField O)] (σ : ℝ) (hσ : 0 < σ) (D : Finset (Ideal O))
    (hD : ∀ I ∈ D, I.toAddSubgroup.index ≠ 0) :
    ∑ I ∈ D, (I.toAddSubgroup.index : ℝ) ^ (-σ) ≤
      (1 - (Nat.card (IsLocalRing.ResidueField O) : ℝ) ^ (-σ))⁻¹ := by
  classical
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hq : (1 : ℝ) < (Nat.card (IsLocalRing.ResidueField O) : ℝ) := by
    exact_mod_cast Finite.one_lt_card
  have hne : ∀ I ∈ D, I ≠ ⊥ := by
    intro I hI h
    apply hD I hI
    rw [h, Submodule.bot_toAddSubgroup, AddSubgroup.index_bot]
    haveI := infinite_of_dvr (O := O)
    exact Nat.card_eq_zero_of_infinite
  choose! e he using fun I hI => IsDiscreteValuationRing.ideal_eq_span_pow_irreducible (hne I hI) hϖ
  have hinj : Set.InjOn e D := fun I hI J hJ h => by rw [he I hI, he J hJ, h]
  set q : ℝ := (Nat.card (IsLocalRing.ResidueField O) : ℝ) with hqdef
  have hq0 : 0 < q := by linarith
  have hval : ∀ I ∈ D, (I.toAddSubgroup.index : ℝ) ^ (-σ) = (q ^ (-σ)) ^ e I := by
    intro I hI
    have hidx : I.toAddSubgroup.index = Nat.card (IsLocalRing.ResidueField O) ^ e I := by
      conv_lhs => rw [he I hI]
      exact index_span_pow hϖ _
    rw [hidx, Nat.cast_pow, ← hqdef, ← Real.rpow_natCast q, ← Real.rpow_mul hq0.le,
      ← Real.rpow_natCast (q ^ (-σ)), ← Real.rpow_mul hq0.le, mul_comm]
  rw [Finset.sum_congr rfl hval, ← Finset.sum_image (f := fun n : ℕ => (q ^ (-σ)) ^ n) hinj]
  have hx0 : 0 ≤ q ^ (-σ) := (Real.rpow_pos_of_pos hq0 _).le
  have hx1 : q ^ (-σ) < 1 := Real.rpow_lt_one_of_one_lt_of_neg hq (by linarith)
  rw [← tsum_geometric_of_lt_one hx0 hx1]
  exact Summable.sum_le_tsum _ (fun i _ => pow_nonneg hx0 i) (summable_geometric_of_lt_one hx0 hx1)

def headL (r : ℕ) : (Fin (r+1) → O) →ₗ[O] O := LinearMap.proj (R := O) (φ := fun _ => O) 0

theorem headL_apply (r : ℕ) (x : Fin (r+1) → O) : headL r x = x 0 := rfl

def consL (r : ℕ) : (Fin r → O) →ₗ[O] (Fin (r+1) → O) where
  toFun y := Fin.cons 0 y
  map_add' y z := by
    funext i
    refine Fin.cases ?_ (fun j => ?_) i <;> simp
  map_smul' c y := by
    funext i
    refine Fin.cases ?_ (fun j => ?_) i <;> simp

theorem consL_apply (r : ℕ) (y : Fin r → O) : consL r y = Fin.cons 0 y := rfl

theorem index_split {r : ℕ} (M : Submodule O (Fin (r+1) → O)) :
    M.toAddSubgroup.index =
      (M.map (headL r)).toAddSubgroup.index * (M.comap (consL r)).toAddSubgroup.index := by
  have hπ : Function.Surjective (headL (O := O) r).toAddMonoidHom :=
    fun a => ⟨Fin.cons a 0, by simp [headL_apply]⟩
  have hι : (consL (O := O) r).toAddMonoidHom.range = (headL (O := O) r).toAddMonoidHom.ker := by
    ext x
    simp only [AddMonoidHom.mem_range, AddMonoidHom.mem_ker, LinearMap.toAddMonoidHom_coe,
      headL_apply, consL_apply]
    constructor
    · rintro ⟨y, rfl⟩
      simp
    · intro h
      exact ⟨Fin.tail x, by rw [← h]; exact Fin.cons_self_tail x⟩
  have := index_eq_mul_of_exact _ hπ _ hι M.toAddSubgroup
  rw [this]
  congr 2

theorem le_of_lift {r : ℕ} (M1 M2 : Submodule O (Fin (r+1) → O)) (g : O)
    (hI : M1.map (headL r) ≤ Ideal.span {g}) (hc : M1.comap (consL r) ≤ M2.comap (consL r))
    (w1 w2 : Fin (r+1) → O) (hw1 : w1 ∈ M1) (hw2 : w2 ∈ M2) (h1 : w1 0 = g) (h2 : w2 0 = g)
    (hd : Fin.tail w1 - Fin.tail w2 ∈ M2.comap (consL r)) : M1 ≤ M2 := by
  intro x hx
  have hx0 : x 0 ∈ Ideal.span {g} := hI (Submodule.mem_map_of_mem hx)
  obtain ⟨c, hc'⟩ := Ideal.mem_span_singleton'.mp hx0
  have hA : Fin.tail x - c • Fin.tail w1 ∈ M2.comap (consL r) := by
    apply hc
    rw [Submodule.mem_comap]
    have : consL r (Fin.tail x - c • Fin.tail w1) = x - c • w1 := by
      funext i
      refine Fin.cases ?_ (fun j => ?_) i
      · simp [consL_apply, h1, hc']
      · simp [consL_apply, Fin.tail]
    rw [this]
    exact M1.sub_mem hx (M1.smul_mem c hw1)
  have key : x = consL r (Fin.tail x - c • Fin.tail w1) + c • consL r (Fin.tail w1 - Fin.tail w2)
      + c • w2 := by
    funext i
    refine Fin.cases ?_ (fun j => ?_) i
    · simp [consL_apply, h2, hc']
    · simp only [consL_apply, Fin.tail, Pi.add_apply, Pi.smul_apply, Pi.sub_apply, Fin.cons_succ,
        smul_eq_mul]
      ring
  rw [key]
  exact M2.add_mem (M2.add_mem hA (M2.smul_mem c hd)) (M2.smul_mem c hw2)

end GlobalTheory.SubZeta

namespace GlobalTheory.SubZeta

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem fiber_card_le {r : ℕ} (I : Ideal O) (M' : Submodule O (Fin r → O))
    (hM' : M'.toAddSubgroup.index ≠ 0) (S : Finset (Submodule O (Fin (r+1) → O)))
    (hS : ∀ M ∈ S, M.map (headL r) = I ∧ M.comap (consL r) = M') :
    S.card ≤ M'.toAddSubgroup.index := by
  classical
  obtain ⟨g, hg⟩ : ∃ g, I = Ideal.span {g} :=
    ⟨_, (Submodule.IsPrincipal.span_singleton_generator I).symm⟩
  have hex : ∀ M ∈ S, ∃ w ∈ M, w 0 = g := by
    intro M hM
    have : g ∈ M.map (headL r) := by
      rw [(hS M hM).1, hg]
      exact Ideal.mem_span_singleton_self g
    obtain ⟨w, hw, hw0⟩ := Submodule.mem_map.mp this
    exact ⟨w, hw, hw0⟩
  choose! w hwM hw0 using hex
  haveI : Finite ((Fin r → O) ⧸ M'.toAddSubgroup) := Nat.finite_of_card_ne_zero hM'
  haveI := Fintype.ofFinite ((Fin r → O) ⧸ M'.toAddSubgroup)
  have hinj : Set.InjOn (fun M => (QuotientAddGroup.mk (Fin.tail (w M)) :
      (Fin r → O) ⧸ M'.toAddSubgroup)) S := by
    intro M1 h1 M2 h2 heq
    have hd : -Fin.tail (w M1) + Fin.tail (w M2) ∈ M' := (QuotientAddGroup.eq).mp heq
    have hd1 : Fin.tail (w M1) - Fin.tail (w M2) ∈ M' := by
      have := M'.neg_mem hd
      rwa [neg_add, neg_neg, ← sub_eq_add_neg] at this
    have hd2 : Fin.tail (w M2) - Fin.tail (w M1) ∈ M' := by
      rwa [neg_add_eq_sub] at hd
    apply le_antisymm
    · refine le_of_lift M1 M2 g ?_ ?_ _ _ (hwM M1 h1) (hwM M2 h2) (hw0 M1 h1) (hw0 M2 h2) ?_
      · rw [(hS M1 h1).1, hg]
      · rw [(hS M1 h1).2, (hS M2 h2).2]
      · rw [(hS M2 h2).2]; exact hd1
    · refine le_of_lift M2 M1 g ?_ ?_ _ _ (hwM M2 h2) (hwM M1 h1) (hw0 M2 h2) (hw0 M1 h1) ?_
      · rw [(hS M2 h2).1, hg]
      · rw [(hS M1 h1).2, (hS M2 h2).2]
      · rw [(hS M1 h1).2]; exact hd2
  calc S.card ≤ (Finset.univ : Finset ((Fin r → O) ⧸ M'.toAddSubgroup)).card :=
        Finset.card_le_card_of_injOn _ (fun _ _ => Finset.mem_univ _) hinj
    _ = M'.toAddSubgroup.index := by
        rw [Finset.card_univ, ← Nat.card_eq_fintype_card]
        rfl

theorem main_bound [Finite (IsLocalRing.ResidueField O)] : ∀ (r : ℕ) (σ : ℝ), (r : ℝ) - 1 < σ →
    ∀ C : Finset (Submodule O (Fin r → O)), (∀ M ∈ C, M.toAddSubgroup.index ≠ 0) →
    ∑ M ∈ C, (M.toAddSubgroup.index : ℝ) ^ (-σ) ≤
      ∏ i ∈ Finset.range r, (1 - (Nat.card (IsLocalRing.ResidueField O) : ℝ) ^ ((i : ℝ) - σ))⁻¹ := by
  classical
  intro r
  induction r with
  | zero =>
    intro σ _ C _
    have hC : C ⊆ {⊤} := fun M _ => Finset.mem_singleton.mpr (Subsingleton.elim _ _)
    calc ∑ M ∈ C, (M.toAddSubgroup.index : ℝ) ^ (-σ)
        ≤ ∑ M ∈ ({⊤} : Finset (Submodule O (Fin 0 → O))), (M.toAddSubgroup.index : ℝ) ^ (-σ) :=
          Finset.sum_le_sum_of_subset_of_nonneg hC (fun _ _ _ => by positivity)
      _ = ∏ i ∈ Finset.range 0,
            (1 - (Nat.card (IsLocalRing.ResidueField O) : ℝ) ^ ((i : ℝ) - σ))⁻¹ := by simp
  | succ r ih =>
    intro σ hσ C hC
    set q : ℝ := (Nat.card (IsLocalRing.ResidueField O) : ℝ) with hqdef
    have hσ' : (r : ℝ) - 1 < σ - 1 := by push_cast at hσ; linarith
    have hσ0 : 0 < σ := by
      have : (0 : ℝ) ≤ r := Nat.cast_nonneg r
      push_cast at hσ; linarith
    let p : Submodule O (Fin (r+1) → O) → Ideal O × Submodule O (Fin r → O) :=
      fun M => (M.map (headL r), M.comap (consL r))
    have hidx : ∀ M : Submodule O (Fin (r+1) → O), M.toAddSubgroup.index =
        (p M).1.toAddSubgroup.index * (p M).2.toAddSubgroup.index := fun M => index_split M
    have hC1 : ∀ x ∈ C.image p, x.1.toAddSubgroup.index ≠ 0 ∧ x.2.toAddSubgroup.index ≠ 0 := by
      intro x hx
      obtain ⟨M, hM, rfl⟩ := Finset.mem_image.mp hx
      have := hC M hM
      rw [hidx] at this
      exact ⟨left_ne_zero_of_mul this, right_ne_zero_of_mul this⟩
    set D1 := (C.image p).image Prod.fst
    set D2 := (C.image p).image Prod.snd
    have hD1 : ∀ I ∈ D1, I.toAddSubgroup.index ≠ 0 := by
      intro I hI
      obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hI
      exact (hC1 x hx).1
    have hD2 : ∀ N ∈ D2, N.toAddSubgroup.index ≠ 0 := by
      intro N hN
      obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hN
      exact (hC1 x hx).2
    have hq1 : (1 : ℝ) < q := by
      have := Finite.one_lt_card (α := IsLocalRing.ResidueField O)
      rw [hqdef]
      exact_mod_cast this
    have hx1 : q ^ (-σ) < 1 := Real.rpow_lt_one_of_one_lt_of_neg hq1 (by linarith)
    calc ∑ M ∈ C, (M.toAddSubgroup.index : ℝ) ^ (-σ)
        = ∑ x ∈ C.image p, ∑ M ∈ C with p M = x, (M.toAddSubgroup.index : ℝ) ^ (-σ) :=
          (Finset.sum_fiberwise_of_maps_to (fun M hM => Finset.mem_image_of_mem p hM) _).symm
      _ ≤ ∑ x ∈ C.image p, (x.1.toAddSubgroup.index : ℝ) ^ (-σ) *
            (x.2.toAddSubgroup.index : ℝ) ^ (-(σ - 1)) := by
          apply Finset.sum_le_sum
          intro x hx
          have hterm : ∀ M ∈ C.filter (fun M => p M = x), (M.toAddSubgroup.index : ℝ) ^ (-σ) =
              (x.1.toAddSubgroup.index : ℝ) ^ (-σ) * (x.2.toAddSubgroup.index : ℝ) ^ (-σ) := by
            intro M hM
            rw [Finset.mem_filter] at hM
            rw [hidx M, hM.2, Nat.cast_mul, Real.mul_rpow (by positivity) (by positivity)]
          rw [Finset.sum_congr rfl hterm, Finset.sum_const, nsmul_eq_mul]
          have hcard : ((C.filter (fun M => p M = x)).card : ℝ) ≤ x.2.toAddSubgroup.index := by
            exact_mod_cast fiber_card_le x.1 x.2 (hC1 x hx).2 _ (fun M hM => by
              rw [Finset.mem_filter] at hM
              rw [← hM.2]
              exact ⟨rfl, rfl⟩)
          have hpos2 : (0 : ℝ) < x.2.toAddSubgroup.index := by
            exact_mod_cast Nat.pos_of_ne_zero (hC1 x hx).2
          have hsplit : (x.2.toAddSubgroup.index : ℝ) ^ (-(σ - 1)) =
              x.2.toAddSubgroup.index * (x.2.toAddSubgroup.index : ℝ) ^ (-σ) := by
            rw [show -(σ - 1) = 1 + -σ by ring, Real.rpow_add hpos2, Real.rpow_one]
          rw [hsplit]
          have ha : (0 : ℝ) ≤ (x.1.toAddSubgroup.index : ℝ) ^ (-σ) := by positivity
          have hb : (0 : ℝ) ≤ (x.2.toAddSubgroup.index : ℝ) ^ (-σ) := by positivity
          calc ((C.filter (fun M => p M = x)).card : ℝ) *
                ((x.1.toAddSubgroup.index : ℝ) ^ (-σ) * (x.2.toAddSubgroup.index : ℝ) ^ (-σ))
              = (x.1.toAddSubgroup.index : ℝ) ^ (-σ) *
                  (((C.filter (fun M => p M = x)).card : ℝ) * (x.2.toAddSubgroup.index : ℝ) ^ (-σ)) := by
                ring
            _ ≤ (x.1.toAddSubgroup.index : ℝ) ^ (-σ) *
                  ((x.2.toAddSubgroup.index : ℝ) * (x.2.toAddSubgroup.index : ℝ) ^ (-σ)) := by
                gcongr
      _ ≤ ∑ x ∈ D1 ×ˢ D2, (x.1.toAddSubgroup.index : ℝ) ^ (-σ) *
            (x.2.toAddSubgroup.index : ℝ) ^ (-(σ - 1)) := by
          apply Finset.sum_le_sum_of_subset_of_nonneg
          · intro x hx
            exact Finset.mem_product.mpr ⟨Finset.mem_image_of_mem _ hx, Finset.mem_image_of_mem _ hx⟩
          · intro _ _ _
            positivity
      _ = (∑ I ∈ D1, (I.toAddSubgroup.index : ℝ) ^ (-σ)) *
            ∑ N ∈ D2, (N.toAddSubgroup.index : ℝ) ^ (-(σ - 1)) := by
          rw [Finset.sum_mul_sum, Finset.sum_product]
      _ ≤ (1 - q ^ (-σ))⁻¹ * ∏ i ∈ Finset.range r, (1 - q ^ ((i : ℝ) - (σ - 1)))⁻¹ := by
          apply mul_le_mul (sum_ideal_le σ hσ0 D1 hD1) (ih (σ - 1) hσ' D2 hD2)
          · exact Finset.sum_nonneg (fun _ _ => by positivity)
          · exact (inv_pos.mpr (by linarith)).le
      _ = ∏ i ∈ Finset.range (r + 1), (1 - q ^ ((i : ℝ) - σ))⁻¹ := by
          rw [Finset.prod_range_succ', mul_comm]
          congr 1
          · apply Finset.prod_congr rfl
            intro i _
            congr 3
            push_cast
            ring
          · simp

theorem sum_index_rpow_le : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [Finite (IsLocalRing.ResidueField O)] (r : ℕ) (σ : ℝ), (r : ℝ) - 1 < σ →
    ∀ C : Finset (Submodule O (Fin r → O)), (∀ M ∈ C, M.toAddSubgroup.index ≠ 0) →
    ∑ M ∈ C, (M.toAddSubgroup.index : ℝ) ^ (-σ) ≤
      ∏ i ∈ Finset.range r, (1 - (Nat.card (IsLocalRing.ResidueField O) : ℝ) ^ ((i : ℝ) - σ))⁻¹ :=
  fun _ _ _ _ _ r σ hσ C hC => main_bound r σ hσ C hC

end GlobalTheory.SubZeta
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumSublatticeIndexRpowLeSolomon =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumLatticePairsIndexRpowLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumLatticePairsIndexRpowLe", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Pow.Real\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.LengthCommensurableSpanSpanOfDetNeZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLengthEqAndCardEqPowOfIsFiniteLength\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumSublatticeIndexRpowLeSolomon\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped InnerProductSpace BigOperators

namespace GlobalTheory.LatticePairSum

section Index

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [Finite (IsLocalRing.ResidueField O)]

theorem index_range_eq_pow {r : ℕ} (A : Matrix (Fin r) (Fin r) O) (hA : A.det ≠ 0) :
    ∃ n : ℕ, IsDiscreteValuationRing.addVal O A.det = n ∧
      (LinearMap.range A.mulVecLin).toAddSubgroup.index =
        Nat.card (IsLocalRing.ResidueField O) ^ n := by
  have hl := GlobalTheory.length_quotient_range_mulVecLin_eq_addVal_det A
  have hne : Module.length O ((Fin r → O) ⧸ LinearMap.range A.mulVecLin) ≠ ⊤ := by
    rw [hl, ne_eq, IsDiscreteValuationRing.addVal_eq_top_iff]
    exact hA
  have hfl := Module.length_ne_top_iff.mp hne
  obtain ⟨n, hn, hc⟩ := GlobalTheory.exists_length_eq_and_card_eq_pow_of_isFiniteLength O _ hfl
  exact ⟨n, by rw [← hl, hn], hc⟩

theorem index_range_ne_zero {r : ℕ} (A : Matrix (Fin r) (Fin r) O) (hA : A.det ≠ 0) :
    (LinearMap.range A.mulVecLin).toAddSubgroup.index ≠ 0 := by
  obtain ⟨n, -, hc⟩ := index_range_eq_pow A hA
  rw [hc]
  exact pow_ne_zero _ Nat.card_pos.ne'

theorem index_range_transpose {r : ℕ} (A : Matrix (Fin r) (Fin r) O) (hA : A.det ≠ 0) :
    (LinearMap.range A.transpose.mulVecLin).toAddSubgroup.index =
      (LinearMap.range A.mulVecLin).toAddSubgroup.index := by
  obtain ⟨n, hn, hc⟩ := index_range_eq_pow A hA
  obtain ⟨m, hm, hd⟩ := index_range_eq_pow A.transpose (by rwa [Matrix.det_transpose])
  rw [Matrix.det_transpose, hn] at hm
  have : n = m := by exact_mod_cast hm
  rw [hc, hd, this]

theorem exists_matrix_of_index_ne_zero {r : ℕ} (M : Submodule O (Fin r → O))
    (hM : M.toAddSubgroup.index ≠ 0) :
    ∃ B : Matrix (Fin r) (Fin r) O, B.det ≠ 0 ∧ LinearMap.range B.mulVecLin = M := by
  classical
  have hfin : Finite ((Fin r → O) ⧸ M) := Nat.finite_of_card_ne_zero hM
  have hinf : Infinite O := by
    by_contra h
    rw [not_infinite_iff_finite] at h
    exact IsDiscreteValuationRing.not_isField O (Finite.isField_of_domain O)
  have htors : Module.finrank O ((Fin r → O) ⧸ M) = 0 := by
    apply Module.finrank_eq_zero_of_rank_eq_zero
    rw [rank_eq_zero_iff]
    intro x
    obtain ⟨a, b, hab, he⟩ := Finite.exists_ne_map_eq_of_infinite (fun c : O => c • x)
    exact ⟨a - b, sub_ne_zero.mpr hab, by rw [sub_smul, he, sub_self]⟩
  have hrank : Module.finrank O M = r := by
    have := Submodule.finrank_quotient_add_finrank M
    simpa [htors] using this
  let b := Module.finBasisOfFinrankEq O M hrank
  let B : Matrix (Fin r) (Fin r) O := Matrix.of fun i j => (b j : Fin r → O) i
  have hB : LinearMap.range B.mulVecLin = M := by
    rw [Matrix.range_mulVecLin]
    have h1 : Set.range B.col = Subtype.val '' (Set.range b) := by
      ext v
      simp only [Set.mem_range, Set.mem_image, exists_exists_eq_and]
      rfl
    have h2 : Submodule.span O (Subtype.val '' (Set.range b)) =
        (Submodule.span O (Set.range b)).map M.subtype := (Submodule.map_span M.subtype _).symm
    rw [h1, h2, b.span_eq, Submodule.map_top, Submodule.range_subtype]
  refine ⟨B, ?_, hB⟩
  intro h0
  have hl := GlobalTheory.length_quotient_range_mulVecLin_eq_addVal_det B
  rw [h0, IsDiscreteValuationRing.addVal_zero, hB] at hl
  obtain ⟨n, hn, -⟩ := GlobalTheory.exists_length_eq_and_card_eq_pow O ((Fin r → O) ⧸ M)
  rw [hn] at hl
  exact ENat.coe_ne_top n hl

end Index

section Lat

variable (O K : Type) [CommRing O] [IsDomain O] [Field K] [Algebra O K] [IsFractionRing O K]
  {r : ℕ}

noncomputable def incl (r : ℕ) : (Fin r → O) →ₗ[O] (Fin r → K) :=
  LinearMap.compLeft (Algebra.linearMap O K) (Fin r)

noncomputable abbrev stdLat (r : ℕ) : Submodule O (Fin r → K) :=
  Submodule.span O (Set.range (Pi.basisFun K (Fin r)))

noncomputable abbrev lat (X : Matrix (Fin r) (Fin r) K) : Submodule O (Fin r → K) :=
  (stdLat O K r).map ((X.mulVecLin).restrictScalars O)

variable {O K}

theorem incl_apply (x : Fin r → O) (i : Fin r) : incl O K r x i = algebraMap O K (x i) := rfl

theorem incl_injective : Function.Injective (incl O K r) := by
  intro x y h
  funext i
  exact IsFractionRing.injective O K (congrFun h i)

theorem stdLat_eq_range : stdLat O K r = LinearMap.range (incl O K r) := by
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    refine ⟨Pi.single i 1, ?_⟩
    funext j
    rw [incl_apply, Pi.basisFun_apply]
    by_cases h : j = i
    · subst h; simp
    · simp [Pi.single_eq_of_ne h]
  · rintro _ ⟨x, rfl⟩
    have : incl O K r x = ∑ i, x i • (Pi.basisFun K (Fin r)) i := by
      funext j
      simp [incl_apply, Finset.sum_apply, Pi.single_apply, Algebra.smul_def]
    rw [this]
    exact Submodule.sum_mem _ fun i _ =>
      Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)

theorem mem_lat {X : Matrix (Fin r) (Fin r) K} {v : Fin r → K} :
    v ∈ lat O K X ↔ ∃ x : Fin r → O, X.mulVec (incl O K r x) = v := by
  rw [lat, stdLat_eq_range]
  constructor
  · rintro ⟨_, ⟨x, rfl⟩, rfl⟩
    exact ⟨x, rfl⟩
  · rintro ⟨x, rfl⟩
    exact ⟨_, ⟨x, rfl⟩, rfl⟩

theorem map_mulVec_incl (A : Matrix (Fin r) (Fin r) O) (x : Fin r → O) :
    (A.map (algebraMap O K)).mulVec (incl O K r x) = incl O K r (A.mulVec x) := by
  funext i
  rw [incl_apply]
  exact (RingHom.map_mulVec (algebraMap O K) A x i).symm

theorem exists_int_matrix (X : Matrix (Fin r) (Fin r) K) (h : lat O K X ≤ stdLat O K r) :
    ∃ X₀ : Matrix (Fin r) (Fin r) O, X₀.map (algebraMap O K) = X := by
  classical
  have hc : ∀ j, ∃ y : Fin r → O, incl O K r y = X.mulVec (Pi.single j 1) := by
    intro j
    have h1 : X.mulVec (Pi.single j 1) ∈ lat O K X := by
      rw [mem_lat]
      refine ⟨Pi.single j 1, ?_⟩
      congr 1
      funext i
      rw [incl_apply]
      by_cases hij : i = j
      · subst hij; simp
      · simp [Pi.single_eq_of_ne hij]
    have h2 := h h1
    rw [stdLat_eq_range] at h2
    exact h2
  choose y hy using hc
  refine ⟨Matrix.of fun i j => y j i, ?_⟩
  ext i j
  have := congrFun (hy j) i
  rw [incl_apply] at this
  simpa using this

end Lat

section Main

variable {O K : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [Field K] [Algebra O K] [IsFractionRing O K] {r : ℕ}

omit [IsDiscreteValuationRing O] in
theorem relIndex_stdLat (H : AddSubgroup (Fin r → K)) :
    H.relIndex (stdLat O K r).toAddSubgroup =
      (H.comap (incl O K r).toAddMonoidHom).index := by
  have h : (stdLat O K r).toAddSubgroup =
      (⊤ : AddSubgroup (Fin r → O)).map (incl O K r).toAddMonoidHom := by
    ext v
    rw [Submodule.mem_toAddSubgroup, stdLat_eq_range]
    simp
  rw [h, ← AddSubgroup.relIndex_comap, AddSubgroup.relIndex_top_right]

omit [IsDiscreteValuationRing O] in
theorem det_map_ne_zero (B : Matrix (Fin r) (Fin r) O) (hB : B.det ≠ 0) :
    (B.map (algebraMap O K)).det ≠ 0 := by
  have h1 : (B.map (algebraMap O K)).det = algebraMap O K B.det :=
    (RingHom.map_det (algebraMap O K) B).symm
  rw [h1]
  exact fun h => hB (IsFractionRing.injective O K (by simpa using h))

omit [IsDiscreteValuationRing O] in
theorem exists_dual (B : Matrix (Fin r) (Fin r) O) (hB : B.det ≠ 0) (g : GL (Fin r) K)
    (h : (lat O K (g : Matrix (Fin r) (Fin r) K)).comap (incl O K r) =
      LinearMap.range B.mulVecLin) :
    ∃ A : Matrix (Fin r) (Fin r) O,
      A.map (algebraMap O K) =
        ((g⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) * B.map (algebraMap O K) ∧
      A.det ≠ 0 ∧
      (stdLat O K r).toAddSubgroup.relIndex
          (lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup =
        (LinearMap.range A.mulVecLin).toAddSubgroup.index := by
  have hGi : ((g⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) * (g : Matrix (Fin r) (Fin r) K) = 1 := by
    rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
  have hGG : (g : Matrix (Fin r) (Fin r) K) * ((g⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) = 1 := by
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
  generalize hG : (g : Matrix (Fin r) (Fin r) K) = G at *
  generalize hGinv : ((g⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) = Gi at *
  have hle : lat O K (Gi * B.map (algebraMap O K)) ≤ stdLat O K r := by
    intro v hv
    obtain ⟨x, rfl⟩ := mem_lat.1 hv
    have h1 : B.mulVec x ∈ (lat O K G).comap (incl O K r) := by
      rw [h]; exact ⟨x, rfl⟩
    obtain ⟨y, hy⟩ := mem_lat.1 (Submodule.mem_comap.1 h1)
    rw [stdLat_eq_range]
    refine ⟨y, ?_⟩
    rw [← Matrix.mulVec_mulVec, map_mulVec_incl, ← hy, Matrix.mulVec_mulVec, hGi,
      Matrix.one_mulVec]
  obtain ⟨A, hA⟩ := exists_int_matrix _ hle
  have hdet : A.det ≠ 0 := by
    intro h0
    have h1 : (A.map (algebraMap O K)).det = algebraMap O K A.det :=
      (RingHom.map_det (algebraMap O K) A).symm
    rw [h0, map_zero, hA, Matrix.det_mul] at h1
    have h2 : Gi.det ≠ 0 := by
      intro h3
      have := congrArg Matrix.det hGi
      rw [Matrix.det_mul, h3, zero_mul, Matrix.det_one] at this
      exact zero_ne_one this
    exact (mul_ne_zero h2 (det_map_ne_zero B hB)) h1
  refine ⟨A, hA, hdet, ?_⟩
  have hmap : (lat O K G).toAddSubgroup =
      (stdLat O K r).toAddSubgroup.map G.mulVecLin.toAddMonoidHom := by
    ext v
    simp
  rw [hmap, ← AddSubgroup.relIndex_comap, relIndex_stdLat]
  congr 1
  ext x
  simp only [AddSubgroup.mem_comap, LinearMap.toAddMonoidHom_coe, Submodule.mem_toAddSubgroup,
    LinearMap.mem_range, Matrix.mulVecLin_apply]
  constructor
  · intro hx
    rw [stdLat_eq_range] at hx
    obtain ⟨y, hy⟩ := hx
    have h1 : y ∈ (lat O K G).comap (incl O K r) := by
      refine Submodule.mem_comap.2 (mem_lat.2 ⟨x, hy.symm⟩)
    rw [h] at h1
    obtain ⟨z, rfl⟩ := h1
    refine ⟨z, incl_injective (K := K) ?_⟩
    rw [← map_mulVec_incl, hA, ← Matrix.mulVec_mulVec]
    rw [Matrix.mulVecLin_apply, ← map_mulVec_incl (K := K)] at hy
    rw [hy, Matrix.mulVec_mulVec, hGi, Matrix.one_mulVec]
  · rintro ⟨z, rfl⟩
    rw [stdLat_eq_range]
    refine ⟨B.mulVec z, ?_⟩
    rw [← map_mulVec_incl, ← map_mulVec_incl, hA, Matrix.mulVec_mulVec, ← mul_assoc, hGG,
      one_mul]

end Main

section Final

variable {O K : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [Field K] [Algebra O K] [IsFractionRing O K] {r : ℕ}


omit [IsDiscreteValuationRing O] in
theorem lat_le_of_range_transpose_le (B : Matrix (Fin r) (Fin r) O) (hB : B.det ≠ 0)
    (g₀ g₁ : GL (Fin r) K) (A₀ A₁ : Matrix (Fin r) (Fin r) O)
    (h₀ : A₀.map (algebraMap O K) =
      ((g₀⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) * B.map (algebraMap O K))
    (h₁ : A₁.map (algebraMap O K) =
      ((g₁⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) * B.map (algebraMap O K))
    (hr : LinearMap.range A₁.transpose.mulVecLin ≤ LinearMap.range A₀.transpose.mulVecLin) :
    lat O K (g₀ : Matrix (Fin r) (Fin r) K) ≤ lat O K (g₁ : Matrix (Fin r) (Fin r) K) := by
  classical
  have hcol : ∀ j, ∃ u : Fin r → O,
      A₀.transpose.mulVec u = A₁.transpose.mulVec (Pi.single j 1) := fun j => by
    obtain ⟨u, hu⟩ := hr (LinearMap.mem_range_self A₁.transpose.mulVecLin (Pi.single j 1))
    exact ⟨u, hu⟩
  choose u hu using hcol
  let U : Matrix (Fin r) (Fin r) O := Matrix.of fun i j => u j i
  have hU : A₁.transpose = A₀.transpose * U := by
    ext i j
    have := congrFun (hu j) i
    rw [Matrix.mulVec_single_one] at this
    rw [Matrix.mul_apply]
    simpa [Matrix.mulVec, dotProduct, U] using this.symm
  have hU' : A₁ = U.transpose * A₀ := by
    rw [← Matrix.transpose_transpose A₁, hU, Matrix.transpose_mul, Matrix.transpose_transpose]
  have hdetB : IsUnit (B.map (algebraMap O K)).det := (det_map_ne_zero B hB).isUnit
  have hmap : ((g₁⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) =
      U.transpose.map (algebraMap O K) * ((g₀⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) := by
    have h2 : ((g₁⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) * B.map (algebraMap O K) =
        U.transpose.map (algebraMap O K) *
          ((g₀⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) * B.map (algebraMap O K) := by
      rw [← h₁, hU', Matrix.map_mul, h₀, mul_assoc]
    have h3 := congrArg (· * (B.map (algebraMap O K))⁻¹) h2
    simpa only [mul_assoc, Matrix.mul_nonsing_inv _ hdetB, mul_one] using h3
  have hg : (g₀ : Matrix (Fin r) (Fin r) K) =
      (g₁ : Matrix (Fin r) (Fin r) K) * U.transpose.map (algebraMap O K) := by
    have e₁ : (g₁ : Matrix (Fin r) (Fin r) K) * ((g₁⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) = 1 := by
      rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
    have e₀ : ((g₀⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) * (g₀ : Matrix (Fin r) (Fin r) K) = 1 := by
      rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
    calc (g₀ : Matrix (Fin r) (Fin r) K)
        = (g₁ : Matrix (Fin r) (Fin r) K) * ((g₁⁻¹ : GL (Fin r) K) : Matrix (Fin r) (Fin r) K) *
            (g₀ : Matrix (Fin r) (Fin r) K) := by rw [e₁, one_mul]
      _ = (g₁ : Matrix (Fin r) (Fin r) K) * U.transpose.map (algebraMap O K) := by
          rw [hmap, mul_assoc, mul_assoc, e₀, mul_one]
  intro v hv
  obtain ⟨x, rfl⟩ := mem_lat.1 hv
  refine mem_lat.2 ⟨U.transpose.mulVec x, ?_⟩
  rw [hg, ← Matrix.mulVec_mulVec, map_mulVec_incl]

variable [Finite (IsLocalRing.ResidueField O)]

theorem sum_over_fiber_le (σ : ℝ) (hσ : (r : ℝ) - 1 < σ) (B : Matrix (Fin r) (Fin r) O)
    (hB : B.det ≠ 0) (S : Finset (GL (Fin r) K))
    (hinj : ∀ g ∈ S, ∀ g' ∈ S, lat O K (g : Matrix (Fin r) (Fin r) K) =
      lat O K (g' : Matrix (Fin r) (Fin r) K) → g = g')
    (hS : ∀ g ∈ S, (lat O K (g : Matrix (Fin r) (Fin r) K)).comap (incl O K r) =
      LinearMap.range B.mulVecLin) :
    ∑ g ∈ S, (((stdLat O K r).toAddSubgroup.relIndex
        (lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup : ℕ) : ℝ) ^ (-σ) ≤
      ∏ i ∈ Finset.range r,
        (1 - (Nat.card (IsLocalRing.ResidueField O) : ℝ) ^ ((i : ℝ) - σ))⁻¹ := by
  classical
  choose! A hA₁ hA₂ hA₃ using fun g (hg : g ∈ S) => exists_dual B hB g (hS g hg)
  let f : GL (Fin r) K → Submodule O (Fin r → O) :=
    fun g => LinearMap.range (A g).transpose.mulVecLin
  have hf : Set.InjOn f S := fun g hg g' hg' he => by
    have hg₀ : g ∈ S := hg
    have hg₁ : g' ∈ S := hg'
    refine hinj g hg₀ g' hg₁ (le_antisymm ?_ ?_)
    · exact lat_le_of_range_transpose_le B hB g g' _ _ (hA₁ g hg₀) (hA₁ g' hg₁) he.ge
    · exact lat_le_of_range_transpose_le B hB g' g _ _ (hA₁ g' hg₁) (hA₁ g hg₀) he.le
  calc ∑ g ∈ S, (((stdLat O K r).toAddSubgroup.relIndex
        (lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup : ℕ) : ℝ) ^ (-σ)
      = ∑ g ∈ S, (((f g).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) := by
        refine Finset.sum_congr rfl fun g hg => ?_
        rw [hA₃ g hg]
        simp only [f]
        rw [index_range_transpose _ (hA₂ g hg)]
    _ = ∑ N ∈ S.image f, ((N.toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) :=
        (Finset.sum_image (f := fun N : Submodule O (Fin r → O) => ((N.toAddSubgroup.index : ℕ) : ℝ) ^ (-σ)) hf).symm
    _ ≤ _ := _root_.GlobalTheory.SubZeta.sum_index_rpow_le O r σ hσ _ (by
        intro N hN
        obtain ⟨g, hg, rfl⟩ := Finset.mem_image.1 hN
        exact index_range_ne_zero _ (by rw [Matrix.det_transpose]; exact hA₂ g hg))

end Final

theorem sum_index_pairs_le : ∀ (O K : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Finite (IsLocalRing.ResidueField O)] [Field K] [Algebra O K] [IsFractionRing O K] (r : ℕ) (σ : ℝ), (r : ℝ) - 1 < σ → ∀ C : Finset (GL (Fin r) K), (∀ g ∈ C, ∀ g' ∈ C, (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map (((g : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O) = (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map (((g' : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O) → g = g') → ∑ g ∈ C, (((((Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map (((g : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O)).toAddSubgroup.relIndex (Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).toAddSubgroup : ℕ) : ℝ) * (((Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).toAddSubgroup.relIndex ((Submodule.span O (Set.range (Pi.basisFun K (Fin r)))).map (((g : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O)).toAddSubgroup : ℕ) : ℝ)) ^ (-σ) ≤ (∏ i ∈ Finset.range r, (1 - (Nat.card (IsLocalRing.ResidueField O) : ℝ) ^ ((i : ℝ) - σ))⁻¹) ^ 2 := by
  intro O K _ _ _ _ _ _ _ r σ hσ C hC
  classical
  change ∑ g ∈ C, ((((lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup.relIndex
      (stdLat O K r).toAddSubgroup : ℕ) : ℝ) *
    (((stdLat O K r).toAddSubgroup.relIndex
      (lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup : ℕ) : ℝ)) ^ (-σ) ≤ _
  generalize hZ : (∏ i ∈ Finset.range r,
    (1 - (Nat.card (IsLocalRing.ResidueField O) : ℝ) ^ ((i : ℝ) - σ))⁻¹) = Z
  have hZ0 : 0 ≤ Z := by
    have := _root_.GlobalTheory.SubZeta.sum_index_rpow_le O r σ hσ ∅ (by simp)
    simpa [hZ] using this
  let Mg : GL (Fin r) K → Submodule O (Fin r → O) :=
    fun g => (lat O K (g : Matrix (Fin r) (Fin r) K)).comap (incl O K r)
  have hI : ∀ g : GL (Fin r) K, (lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup.relIndex
      (stdLat O K r).toAddSubgroup = (Mg g).toAddSubgroup.index := fun g => by
    rw [relIndex_stdLat]
    rfl
  let I2 : GL (Fin r) K → ℝ := fun g => (((stdLat O K r).toAddSubgroup.relIndex
      (lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup : ℕ) : ℝ) ^ (-σ)
  have hterm : ∀ g : GL (Fin r) K, ((((lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup.relIndex
      (stdLat O K r).toAddSubgroup : ℕ) : ℝ) *
    (((stdLat O K r).toAddSubgroup.relIndex
      (lat O K (g : Matrix (Fin r) (Fin r) K)).toAddSubgroup : ℕ) : ℝ)) ^ (-σ) =
      (((Mg g).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * I2 g := fun g => by
    rw [hI, Real.mul_rpow (Nat.cast_nonneg _) (Nat.cast_nonneg _)]
  have hzero : ∀ g : GL (Fin r) K, (Mg g).toAddSubgroup.index = 0 →
      (((Mg g).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * I2 g = 0 := by
    intro g hg
    rcases Nat.eq_zero_or_pos r with rfl | hr
    · have : Subsingleton (Fin 0 → O) := inferInstance
      rw [AddSubgroup.index_eq_zero_iff_infinite] at hg
      exact absurd hg (by simp [not_infinite_iff_finite]; infer_instance)
    · have hσ0 : 0 < σ := by
        have : (1 : ℝ) ≤ r := by exact_mod_cast hr
        linarith
      rw [hg, Nat.cast_zero, Real.zero_rpow (by linarith), zero_mul]
  simp only [hterm]
  let C' := C.filter fun g => (Mg g).toAddSubgroup.index ≠ 0
  have h1 : ∑ g ∈ C, (((Mg g).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * I2 g =
      ∑ g ∈ C', (((Mg g).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * I2 g := by
    exact (Finset.sum_filter_of_ne (p := fun g => (Mg g).toAddSubgroup.index ≠ 0)
      fun g _ hne hg => hne (hzero g hg)).symm
  rw [h1, ← Finset.sum_fiberwise_of_maps_to (s := C') (t := C'.image Mg) (g := Mg)
    (fun g hg => Finset.mem_image_of_mem _ hg)]
  have hfib : ∀ M ∈ C'.image Mg, ∑ g ∈ C' with Mg g = M,
      (((Mg g).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * I2 g ≤
      ((M.toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * Z := by
    intro M hM
    obtain ⟨g₀, hg₀, rfl⟩ := Finset.mem_image.1 hM
    have hne : (Mg g₀).toAddSubgroup.index ≠ 0 := (Finset.mem_filter.1 hg₀).2
    obtain ⟨B, hB, hBM⟩ := exists_matrix_of_index_ne_zero _ hne
    have h2 : ∑ g ∈ C' with Mg g = Mg g₀,
        (((Mg g).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * I2 g =
        (((Mg g₀).toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * ∑ g ∈ C' with Mg g = Mg g₀, I2 g := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun g hg => ?_
      rw [(Finset.mem_filter.1 hg).2]
    rw [h2]
    refine mul_le_mul_of_nonneg_left ?_ (Real.rpow_nonneg (Nat.cast_nonneg _) _)
    rw [← hZ]
    refine sum_over_fiber_le σ hσ B hB _ ?_ ?_
    · intro g hg g' hg' he
      exact hC g (Finset.mem_filter.1 (Finset.mem_filter.1 hg).1).1 g'
        (Finset.mem_filter.1 (Finset.mem_filter.1 hg').1).1 he
    · intro g hg
      rw [hBM]
      exact (Finset.mem_filter.1 hg).2
  calc _ ≤ ∑ M ∈ C'.image Mg, ((M.toAddSubgroup.index : ℕ) : ℝ) ^ (-σ) * Z :=
        Finset.sum_le_sum hfib
    _ = (∑ M ∈ C'.image Mg, ((M.toAddSubgroup.index : ℕ) : ℝ) ^ (-σ)) * Z :=
        (Finset.sum_mul _ _ _).symm
    _ ≤ Z * Z := by
        refine mul_le_mul_of_nonneg_right ?_ hZ0
        rw [← hZ]
        refine _root_.GlobalTheory.SubZeta.sum_index_rpow_le O r σ hσ _ ?_
        intro M hM
        obtain ⟨g, hg, rfl⟩ := Finset.mem_image.1 hM
        exact (Finset.mem_filter.1 hg).2
    _ = Z ^ 2 := (sq Z).symm

end GlobalTheory.LatticePairSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumLatticePairsIndexRpowLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdjFormula\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsIntOv\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemLatOIffExistsActO\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlIntegralInvMulOfLatticeMapEq\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeIndexSplitPlaceEqProductLocal\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexStandardLatticeTransposeInvDvr\npublic import Mathlib.Analysis.SpecialFunctions.Pow.Real\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumLatticePairsIndexRpowLe\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsPlaceChartOfSplitIdempotentStatement\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsSplitFrameSelfDualLatticeCompletion\npublic import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Tjcosets\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemHyperspecialIffGIntOfSuppAtSplit\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.GlintPrincRelIndexNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift
open GlobalTheory.SplitHecke

noncomputable section

namespace GlobalTheory.SplitIndexSum
open GlobalTheory.AdelicLatMove (mt_mul mt_one)

abbrev stdLat (O K : Type) [CommRing O] [Field K] [Algebra O K] (r : ℕ) : Submodule O (Fin r → K) :=
  Submodule.span O (Set.range (Pi.basisFun K (Fin r)))

abbrev movLat (O K : Type) [CommRing O] [Field K] [Algebra O K] {r : ℕ} (h : GL (Fin r) K) : Submodule O (Fin r → K) :=
  (stdLat O K r).map (((h : Matrix (Fin r) (Fin r) K).mulVecLin).restrictScalars O)

theorem suppAt_mul {D : D7} {e : AE D} {V : HSp D} {g g' : GA D V} (hg : SuppAt e V g) (hg' : SuppAt e V g') :
    SuppAt e V (g * g') := by
  have h : (e + cA D e) • (mt V g - 1) = mt V g - 1 := Matrix.ext fun i j => hg i j
  have h' : (e + cA D e) • (mt V g' - 1) = mt V g' - 1 := Matrix.ext fun i j => hg' i j
  have h1 : mt V (g * g') - 1 = (mt V g - 1) * mt V g' + (mt V g' - 1) := by
    rw [mt_mul, Matrix.sub_mul, Matrix.one_mul]; abel
  have h2 : (e + cA D e) • (mt V (g * g') - 1) = mt V (g * g') - 1 := by
    rw [h1, smul_add, ← Matrix.smul_mul, h, h']
  exact fun i j => congrFun (congrFun h2 i) j

theorem chart_of_finIdem {D : D7} {v : HeightOneSpectrum (𝓞 D.host.F)} {e : AE D}
    (hv : IsFinIdem D v (e + cA D e)) (he : IsSplitIdem D e) : ∃ π : AE D →+* Fv D.host.F v, Chart e v π := by
  obtain ⟨v', π, hπ⟩ := GlobalTheory.T.exists_place_chart_of_splitIdempotent e he
  obtain ⟨ε, ⟨α, rfl, hα1, hα0⟩, hf⟩ := hv
  have hπe : π e = 1 := by
    have : π (1 - e) = 0 := (hπ.2.1 _).2 (by rw [mul_sub, mul_one, he.1, sub_self])
    rw [map_sub, map_one, sub_eq_zero] at this
    exact this.symm
  have hπc : π (cA D e) = 0 := (hπ.2.1 _).2 he.2.1
  have h1 : π (algebraMap (AF D.host.F) (AE D) (pairA D.host.F 0 α)) = 1 := by
    rw [← hf, map_add (f := _), hπe, hπc, add_zero]
  rw [hπ.2.2.1] at h1
  by_cases hvv : v' = v
  · subst hvv; exact ⟨π, hπ⟩
  · exfalso
    have h2 := hα0 v' hvv
    have h3 : sndA D.host.F (pairA D.host.F 0 α) = α := rfl
    rw [h3, h2] at h1
    exact zero_ne_one h1
theorem gInt_of_movLat_eq (O K : Type) [CommRing O] [Field K] [Algebra O K] {r : ℕ}
    (h h' : GL (Fin r) K) (hh : movLat O K h = movLat O K h') : GInt O (h⁻¹ * h') :=
  _root_.GlobalTheory.SplitHecke.gInt_inv_mul_of_map_eq O K r h h' hh

theorem latIndex_eq_split : ∀ {D : D7} (e : AE D) (v : HeightOneSpectrum (𝓞 D.host.F)) (π : AE D →+* Fv D.host.F v),
    IsSplitIdem D e → Chart e v π → ∀ (W : HSp D) (β : GL (Fin W.rank) (Fv D.host.F v)), Frame W e π β →
    ∀ g : GA D W, SuppAt e W g →
      latIndex W g = (movLat (Ov D v) (Fv D.host.F v) (rho W π β g)).toAddSubgroup.relIndex
          (stdLat (Ov D v) (Fv D.host.F v) W.rank).toAddSubgroup *
        (stdLat (Ov D v) (Fv D.host.F v) W.rank).toAddSubgroup.relIndex
          (movLat (Ov D v) (Fv D.host.F v) (rho W π β g)).toAddSubgroup := by
  intro D e v π he hπ W β hβ g hg
  haveI := Formalism.UG.P.glint_finite_residueField (F := D.host.F) v
  rw [_root_.GlobalTheory.SplitIndexLocal.latIndex_split_local e v π he hπ W β hβ g hg, map_inv, _root_.GlobalTheory.IndexTranspose.relIndex_transpose_inv]

theorem indexSum_split : ∀ (D : D7) (W : HSp D) (n : ℕ), 2 * W.rank + 5 ≤ n → ∀ (v : HeightOneSpectrum (𝓞 D.host.F)) (f : Formalism.L2.Theta.AE D), IsFinIdem D v f → (∃ e, Formalism.L2.Theta.IsSplitIdem D e ∧ e + Formalism.L2.Theta.cA D e = f) → ∀ C : Finset (GA D W), (∀ g ∈ C, SuppF W f g ∧ g ∉ KsphC W ∅) → (∀ g ∈ C, ∀ g' ∈ C, g⁻¹ * g' ∈ KsphC W ∅ → g = g') → ∑ g ∈ C, (latIndex W g : ℝ) ^ (-(n : ℝ) / 2) ≤ (∏ i ∈ Finset.range W.rank, (1 - (Ideal.absNorm v.asIdeal : ℝ) ^ ((i : ℝ) - (n : ℝ) / 2))⁻¹) ^ 2 - 1 := by
  classical
  intro D W n hn v f hf ⟨e, he, hef⟩ C hC hdist
  subst hef
  obtain ⟨π, hπ⟩ := chart_of_finIdem hf he
  obtain ⟨β, hβ⟩ := GlobalTheory.SplitFrame.exists_frame e v π he hπ W
  haveI := Formalism.UG.P.glint_finite_residueField (F := D.host.F) v
  set O := Ov D v
  set K := Fv D.host.F v
  set σ : ℝ := (n : ℝ) / 2 with hσ
  have hsupp : ∀ g ∈ C, SuppAt e W g := fun g hg => (hC g hg).1
  let Φ : GL (Fin W.rank) K → ℝ := fun h =>
    ((((movLat O K h).toAddSubgroup.relIndex (stdLat O K W.rank).toAddSubgroup : ℕ) : ℝ) *
      (((stdLat O K W.rank).toAddSubgroup.relIndex (movLat O K h).toAddSubgroup : ℕ) : ℝ)) ^ (-σ)
  have hK : ∀ g, SuppAt e W g → (g ∈ KsphC W ∅ ↔ GInt O (rho W π β g)) :=
    GlobalTheory.SplitHecke.Stab.mem_KsphC_iff_gInt e v π he hπ W β hβ
  have hterm : ∀ g ∈ C, (latIndex W g : ℝ) ^ (-(n : ℝ) / 2) = Φ (rho W π β g) := by
    intro g hg
    rw [latIndex_eq_split e v π he hπ W β hβ g (hsupp g hg), Nat.cast_mul, neg_div]
  have hinj : ∀ g ∈ C, ∀ g' ∈ C, movLat O K (rho W π β g) = movLat O K (rho W π β g') → g = g' := by
    intro g hg g' hg' hm
    have h1 := gInt_of_movLat_eq O K _ _ hm
    rw [← map_inv, ← map_mul] at h1
    exact hdist g hg g' hg' ((hK _ (suppAt_mul (GlobalTheory.SplitHecke.Stab.suppAt_inv (hsupp g hg)) (hsupp g' hg'))).2 h1)
  have hone : ∀ g ∈ C, movLat O K (1 : GL (Fin W.rank) K) ≠ movLat O K (rho W π β g) := by
    intro g hg hm
    have h1 := gInt_of_movLat_eq O K _ _ hm
    rw [inv_one, one_mul] at h1
    exact (hC g hg).2 ((hK g (hsupp g hg)).2 h1)
  have hnot : (1 : GL (Fin W.rank) K) ∉ C.image (rho W π β) := by
    intro h1
    obtain ⟨g, hg, hg1⟩ := Finset.mem_image.1 h1
    exact hone g hg (by rw [hg1])
  have hsum : ∑ g ∈ C, (latIndex W g : ℝ) ^ (-(n : ℝ) / 2) = ∑ h ∈ C.image (rho W π β), Φ h := by
    rw [Finset.sum_image (fun g hg g' hg' he' => hinj g hg g' hg' (congrArg (movLat O K) he'))]
    exact Finset.sum_congr rfl hterm
  have hΦ1 : Φ 1 = 1 := by
    have : movLat O K (1 : GL (Fin W.rank) K) = stdLat O K W.rank := by
      simp [movLat]
    simp only [Φ, this, AddSubgroup.relIndex_self, Nat.cast_one, mul_one, Real.one_rpow]
  have hσr : (W.rank : ℝ) - 1 < σ := by
    rw [hσ]; have : (2 * W.rank + 5 : ℝ) ≤ n := by exact_mod_cast hn
    linarith
  have hbig := _root_.GlobalTheory.LatticePairSum.sum_index_pairs_le O K W.rank σ hσr (insert 1 (C.image (rho W π β))) (by
    intro h hh h' hh' hm
    rcases Finset.mem_insert.1 hh with rfl | hh <;> rcases Finset.mem_insert.1 hh' with rfl | hh'
    · rfl
    · obtain ⟨g', hg', rfl⟩ := Finset.mem_image.1 hh'
      exact absurd hm (hone g' hg')
    · obtain ⟨g, hg, rfl⟩ := Finset.mem_image.1 hh
      exact absurd hm.symm (hone g hg)
    · obtain ⟨g, hg, rfl⟩ := Finset.mem_image.1 hh
      obtain ⟨g', hg', rfl⟩ := Finset.mem_image.1 hh'
      rw [hinj g hg g' hg' hm])
  rw [Finset.sum_insert hnot] at hbig
  have hq : (Nat.card (IsLocalRing.ResidueField O) : ℝ) = (Ideal.absNorm v.asIdeal : ℝ) := by
    rw [Formalism.UG.P.tjcosets_card_residue]; rfl
  rw [hq] at hbig
  rw [hsum]
  change Φ 1 + ∑ h ∈ C.image (rho W π β), Φ h ≤ _ at hbig
  rw [hΦ1] at hbig
  rw [hσ] at hbig
  linarith

end GlobalTheory.SplitIndexSum

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOneStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOneStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdjFormula\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceLatticeIndexSumLeZetaSqSubOneStatement =====

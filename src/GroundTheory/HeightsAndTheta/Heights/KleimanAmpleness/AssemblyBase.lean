module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsPres
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsDegLocExact
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFree
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountTopSt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropSt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.GenericPointSectionHypotheses
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropFiltSt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropTermSt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropHilbWSt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsSerrePoly
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeAway
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnW
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnWLift
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnWGen
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsTwistSplit
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrLenRestrictSt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsCechDSq
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsDegreePos
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepTwo
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsTwistSections
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechDSq
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechExact
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PExtension
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PNefRestrict
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PPrimeFiltrationPoint
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreOnto
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThreeAway
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSubvarDrop
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechCone
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechTransport
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGenerated
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PHilbertPositive
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PPrimeFiltrationRestrict
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PProjDegreePositive
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PRestrictTwist
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePolyLaurent
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepDataJProper
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistFinite
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistSections

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechTop, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCohomRetract, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PDegLocExact, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedPres, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedULift, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCount, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCountDrop, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFinite, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePoly, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePolyLaurentCohom, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreTail, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreVanish, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThree, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThreeOnW, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistVanish, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AssemblyBase

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechTop =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechTop", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

theorem CechTop.idx_isEmpty (N i : ℕ) (hi : N < i) :
    IsEmpty (Cech.Idx (Finset.univ : Finset (Fin (N + 1))) i) := by
  refine ⟨fun I => ?_⟩
  have h1 : I.1.1.card ≤ N + 1 := by
    simpa using Finset.card_le_univ I.1.1
  have h2 := I.2
  omega

theorem CechTop.proof : CechTop.Statement := by
  intro S _ _ N M _ _ _ _ 𝓜 i c hi
  have := CechTop.idx_isEmpty N i hi
  have hC : Subsingleton (Cech.Cochain (locSys S N M) i) := inferInstance
  constructor
  intro a b
  change (a : Cech.Hdeg _ _ _ i) = b
  induction a using Submodule.Quotient.induction_on with
  | H x =>
    induction b using Submodule.Quotient.induction_on with
    | H y =>
      congr 1
      exact Subtype.ext (hC.elim _ _)

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechTop =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCohomRetract =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCohomRetract", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsPres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v w

section Retract

variable {S : Type u} [CommRing S] {N : ℕ}
variable {M : Type v} [AddCommGroup M] [Module (Poly S N) M] [Module S M]
  [IsScalarTower S (Poly S N) M]
variable {M' : Type w} [AddCommGroup M'] [Module (Poly S N) M'] [Module S M']
  [IsScalarTower S (Poly S N) M']

theorem locMap_retract (f : M →ₗ[Poly S N] M') (g : M' →ₗ[Poly S N] M)
    (hgf : Function.LeftInverse g f) (I : Finset (Fin (N + 1))) :
    Function.LeftInverse (locMap g I) (locMap f I) := by
  intro x
  induction x using LocalizedModule.induction_on with
  | h m s => rw [locMap_mk, locMap_mk, hgf m]

theorem cohomMap_retract {𝓜 : GradedPMod S N M} {𝓜' : GradedPMod S N M'}
    (f : GradedHom 𝓜 𝓜') (g : GradedHom 𝓜' 𝓜) (hgf : Function.LeftInverse g.toLin f.toLin)
    (i : ℕ) (c : ℤ) : Function.LeftInverse (cohomMap g i c) (cohomMap f i c) := by
  intro x
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  exact congrArg Submodule.Quotient.mk
    (Subtype.ext (funext fun I => locMap_retract f.toLin g.toLin hgf I.1.1 (z.1 I)))

theorem CohomRetract.proof : CohomRetract.Statement.{u, v, w} := by
  intro S _ N M M' _ _ _ _ _ _ _ _ 𝓜 𝓜' f g hgf i c
  exact (cohomMap_retract f g hgf i c).injective

end Retract

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCohomRetract =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PDegLocExact =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PDegLocExact", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsDegLocExact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v

namespace DegLocExact

theorem decompose_map {ι R A B : Type*} [DecidableEq ι] [Semiring R] [AddCommMonoid A] [Module R A]
    [AddCommMonoid B] [Module R B] (𝒜 : ι → Submodule R A) (ℬ : ι → Submodule R B)
    [DirectSum.Decomposition 𝒜] [DirectSum.Decomposition ℬ] (φ : A → B) (h0 : φ 0 = 0)
    (hadd : ∀ a b, φ (a + b) = φ a + φ b) (hφ : ∀ i a, a ∈ 𝒜 i → φ a ∈ ℬ i) (a : A) (k : ι) :
    φ (DirectSum.decompose 𝒜 a k) = DirectSum.decompose ℬ (φ a) k := by
  induction a using DirectSum.Decomposition.inductionOn 𝒜 with
  | zero => simp [h0]
  | @homogeneous i m =>
    obtain ⟨m, hm⟩ := m
    by_cases hik : i = k
    · subst hik
      rw [DirectSum.decompose_of_mem_same (ℳ := 𝒜) hm,
        DirectSum.decompose_of_mem_same (ℳ := ℬ) (hφ _ _ hm)]
    · rw [DirectSum.decompose_of_mem_ne (ℳ := 𝒜) hm hik,
        DirectSum.decompose_of_mem_ne (ℳ := ℬ) (hφ _ _ hm) hik, h0]
  | add m m' hm hm' => simp [hadd, DirectSum.decompose_add, hm, hm']

theorem mem_of_map_mem {ι R A B : Type*} [DecidableEq ι] [Semiring R] [AddCommMonoid A] [Module R A]
    [AddCommMonoid B] [Module R B] (𝒜 : ι → Submodule R A) (ℬ : ι → Submodule R B)
    [DirectSum.Decomposition 𝒜] [DirectSum.Decomposition ℬ] (φ : A → B) (h0 : φ 0 = 0)
    (hadd : ∀ a b, φ (a + b) = φ a + φ b) (hφ : ∀ i a, a ∈ 𝒜 i → φ a ∈ ℬ i)
    (hinj : Function.Injective φ) {a : A} {k : ι} (ha : φ a ∈ ℬ k) : a ∈ 𝒜 k := by
  have h := decompose_map 𝒜 ℬ φ h0 hadd hφ a k
  rw [DirectSum.decompose_of_mem_same (ℳ := ℬ) ha] at h
  rw [← hinj h]
  exact SetLike.coe_mem _

variable {S : Type u} [CommRing S] {N : ℕ} {M : Type v} [AddCommGroup M] [Module (Poly S N) M]
  [Module S M] [IsScalarTower S (Poly S N) M]

theorem exists_frac (𝓜 : GradedPMod S N M) (c : ℤ) (I : StdCell N) (z : LocMod S N M I.1)
    (hz : z ∈ degLoc 𝓜 c I) :
    ∃ (m : M) (s : monos (S := S) I.1) (e : ℕ), (s : Poly S N).IsHomogeneous e ∧
      m ∈ 𝓜.piece (c + e) ∧ z = (LocalizedModule.mk m s : LocalizedModule (monos (S := S) I.1) M) := by
  induction hz using Submodule.span_induction with
  | mem z hz =>
    obtain ⟨m, s, a, e, hm, hs, hae, rfl⟩ := hz
    exact ⟨m, s, e, hs, by rwa [← hae, sub_add_cancel], rfl⟩
  | zero => exact ⟨0, 1, 0, isHomogeneous_one _ _, zero_mem _, (LocalizedModule.zero_mk _).symm⟩
  | add x y _ _ hx hy =>
    obtain ⟨m1, s1, e1, hs1, hm1, rfl⟩ := hx
    obtain ⟨m2, s2, e2, hs2, hm2, rfl⟩ := hy
    refine ⟨(s2 : Poly S N) • m1 + (s1 : Poly S N) • m2, s1 * s2, e1 + e2,
      by simpa using hs1.mul hs2, add_mem ?_ ?_, LocalizedModule.mk_add_mk⟩
    · have h : c + ((e1 + e2 : ℕ) : ℤ) = c + e1 + e2 := by push_cast; ring
      rw [h]; exact 𝓜.smul_mem e2 _ _ m1 hs2 hm1
    · have h : c + ((e1 + e2 : ℕ) : ℤ) = c + e2 + e1 := by push_cast; ring
      rw [h]; exact 𝓜.smul_mem e1 _ _ m2 hs1 hm2
  | smul r x _ hx =>
    obtain ⟨m, s, e, hs, hm, rfl⟩ := hx
    refine ⟨r • m, s, e, hs, Submodule.smul_mem _ r hm, ?_⟩
    change algebraMap S (Poly S N) r • (LocalizedModule.mk m s : LocalizedModule _ M) = _
    rw [LocalizedModule.smul'_mk, algebraMap_smul]

theorem proof : DegLocExact.Statement := by
  intro S _ N M' M M'' _ _ _ _ _ _ _ _ _ _ _ _ 𝓜' 𝓜 𝓜'' f g hf hg hfg c I
  let _ := 𝓜'.isInternal.chooseDecomposition
  let _ := 𝓜.isInternal.chooseDecomposition
  let _ := 𝓜''.isInternal.chooseDecomposition
  refine ⟨fun z hz hz0 => ?_, fun z hz => ?_⟩
  · obtain ⟨m, s, e, hs, hm, rfl⟩ := exists_frac 𝓜 c I z hz
    rw [locMap_mk] at hz0
    have h0 : (LocalizedModule.mk (g.toLin m) s : LocalizedModule (monos (S := S) I.1) M'') =
        LocalizedModule.mk 0 s := by rw [LocalizedModule.zero_mk]; exact hz0
    obtain ⟨u, hu⟩ := LocalizedModule.mk_eq.1 h0
    set T : monos (S := S) I.1 := u * s with hT
    obtain ⟨e', he'⟩ := monos_isHomogeneous T.2
    have hgT : g.toLin ((T : Poly S N) • m) = 0 := by
      rw [map_smul, hT, Submonoid.coe_mul, mul_smul, ← Submonoid.smul_def, ← Submonoid.smul_def,
        hu, smul_zero, smul_zero]
    obtain ⟨m', hm'⟩ := (hfg _).1 hgT
    have hTm : (T : Poly S N) • m ∈ 𝓜.piece (c + e + e') := 𝓜.smul_mem e' _ _ m he' hm
    have hm'd : m' ∈ 𝓜'.piece (c + e + e') :=
      mem_of_map_mem 𝓜'.piece 𝓜.piece f.toLin (map_zero _) (map_add _) f.map_piece hf (hm' ▸ hTm)
    refine ⟨LocalizedModule.mk m' (T * s), Submodule.subset_span
      ⟨m', T * s, c + e + e', e' + e, hm'd, by simpa using he'.mul hs, by push_cast; ring, rfl⟩, ?_⟩
    rw [locMap_mk, hm', ← Submonoid.smul_def, LocalizedModule.mk_cancel_common_left]
  · obtain ⟨m'', s, e, hs, hm'', rfl⟩ := exists_frac 𝓜'' c I z hz
    obtain ⟨m, rfl⟩ := hg m''
    refine ⟨LocalizedModule.mk (DirectSum.decompose 𝓜.piece m (c + e) : M) s, Submodule.subset_span
      ⟨_, s, c + e, e, SetLike.coe_mem _, hs, by ring, rfl⟩, ?_⟩
    rw [locMap_mk, decompose_map 𝓜.piece 𝓜''.piece g.toLin (map_zero _) (map_add _) g.map_piece,
      DirectSum.decompose_of_mem_same (ℳ := 𝓜''.piece) hm'']

end DegLocExact

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PDegLocExact =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedPres =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedPres", "h": "module\n\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFree\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsPres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v w

namespace GradedPres

theorem iSupIndep_of_coords {R X Y ι : Type*} [Ring R] [AddCommGroup X] [Module R X]
    [AddCommGroup Y] [Module R Y] {p : ℤ → Submodule R X} {q : ℤ → Submodule R Y}
    (hq : iSupIndep q) (π : ι → X →ₗ[R] Y) (σ : ι → ℤ → ℤ) (hσ : ∀ i, Function.Injective (σ i))
    (hp : ∀ i c, p c ≤ (q (σ i c)).comap (π i)) (hπ : ∀ x, (∀ i, π i x = 0) → x = 0) :
    iSupIndep p := by
  rw [iSupIndep_def]
  intro c
  rw [Submodule.disjoint_def]
  intro x hx hx'
  apply hπ
  intro i
  have h1 : π i x ∈ q (σ i c) := hp i c hx
  have hle : Submodule.map (π i) (⨆ (c' : ℤ) (_ : c' ≠ c), p c') ≤
      ⨆ (e : ℤ) (_ : e ≠ σ i c), q e := by
    rw [Submodule.map_iSup]
    refine iSup_le fun c' => ?_
    rw [Submodule.map_iSup]
    refine iSup_le fun hc' => ?_
    rw [Submodule.map_le_iff_le_comap]
    exact (hp i c').trans (Submodule.comap_mono
      (le_iSup₂_of_le (f := fun (e : ℤ) (_ : e ≠ σ i c) => q e) (σ i c')
        (fun h => hc' (hσ i h)) le_rfl))
  have h2 : π i x ∈ ⨆ (e : ℤ) (_ : e ≠ σ i c), q e := hle (Submodule.mem_map_of_mem hx')
  exact Submodule.disjoint_def.mp ((iSupIndep_def.mp hq) (σ i c)) _ h1 h2

section Free

variable {S : Type u} [CommRing S] {N : ℕ}

theorem smul_mem_piece {M : Type w} [AddCommGroup M] [Module (Poly S N) M] [Module S M]
    [IsScalarTower S (Poly S N) M] (𝓜 : GradedPMod S N M) {a c : ℤ} {p : Poly S N} {m : M}
    (hp : p ∈ (polyGraded (S := S) (N := N)).piece a) (hm : m ∈ 𝓜.piece c) :
    p • m ∈ 𝓜.piece (c + a) := by
  apply GroundTheory.Heights₂.Heights.Kleiman.smul_mem_of_mem_polyGraded <;> assumption

variable {r : ℕ}

def freePiece (d : Fin r → ℤ) (c : ℤ) : Submodule S (ULift.{v} (Fin r → Poly S N)) where
  carrier := {x | ∀ j, x.down j ∈ (polyGraded (S := S) (N := N)).piece (c - d j)}
  add_mem' ha hb j := add_mem (ha j) (hb j)
  zero_mem' _ := zero_mem _
  smul_mem' s _ hx j := Submodule.smul_mem _ s (hx j)

def coordIncl (j : Fin r) : Poly S N →ₗ[S] ULift.{v} (Fin r → Poly S N) :=
  (ULift.moduleEquiv (R := S)).symm.toLinearMap ∘ₗ LinearMap.single S (fun _ : Fin r => Poly S N) j

theorem coordIncl_down (j : Fin r) (p : Poly S N) :
    (coordIncl.{u, v} j p).down = Pi.single j p := rfl

theorem coordIncl_mem {d : Fin r → ℤ} (j : Fin r) {e : ℤ} {p : Poly S N}
    (hp : p ∈ (polyGraded (S := S) (N := N)).piece e) :
    coordIncl.{u, v} j p ∈ freePiece d (e + d j) := by
  intro i
  rw [coordIncl_down]
  by_cases h : i = j
  · subst h
    rw [Pi.single_eq_same, add_sub_cancel_right]
    exact hp
  · rw [Pi.single_eq_of_ne h]
    exact zero_mem _

variable (N) in
def freeGraded (d : Fin r → ℤ) : GradedPMod S N (ULift.{v} (Fin r → Poly S N)) where
  piece := freePiece d
  isInternal := by
    refine DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top ?_ ?_
    · exact iSupIndep_of_coords (polyGraded (S := S) (N := N)).isInternal.submodule_iSupIndep
        (fun j => (LinearMap.proj j : (Fin r → Poly S N) →ₗ[S] Poly S N) ∘ₗ
          (ULift.moduleEquiv (R := S)).toLinearMap)
        (fun j c => c - d j) (fun j => sub_left_injective) (fun j c x hx => hx j)
        (fun x hx => ULift.ext (funext hx))
    · rw [eq_top_iff]
      intro x _
      have hx : x = ∑ j, coordIncl.{u, v} j (x.down j) := by
        apply (ULift.moduleEquiv (R := S)).injective

        rw [map_sum]
        exact (Finset.univ_sum_single x.down).symm
      rw [hx]
      refine Submodule.sum_mem _ fun j _ => ?_
      have hp : x.down j ∈ ⨆ e, (polyGraded (S := S) (N := N)).piece e := by
        rw [(polyGraded (S := S) (N := N)).isInternal.submodule_iSup_eq_top]
        trivial
      refine Submodule.iSup_induction _ (motive := fun p => coordIncl.{u, v} j p ∈ ⨆ c, freePiece d c)
        hp (fun e p hp => Submodule.mem_iSup_of_mem (e + d j) (coordIncl_mem j hp)) ?_ ?_
      · rw [map_zero]
        exact zero_mem _
      · intro a b ha hb
        rw [map_add (f := _)]
        exact add_mem ha hb
  smul_mem n c p x hp hx j := by
    change p * x.down j ∈ (polyGraded (S := S) (N := N)).piece (c + n - d j)
    have h := smul_mem_piece (polyGraded (S := S) (N := N)) (a := n) (c := c - d j)
      (isWeightedHomogeneous_int_of_isHomogeneous hp) (hx j)
    rw [smul_eq_mul, show c - d j + n = c + n - d j by ring] at h
    exact h

variable (S N) in
def freeBasis (r : ℕ) : Module.Basis (Fin r) (Poly S N) (ULift.{v} (Fin r → Poly S N)) :=
  (Pi.basisFun (Poly S N) (Fin r)).map (ULift.moduleEquiv (R := Poly S N)).symm

theorem freeBasis_down (j : Fin r) : (freeBasis.{u, v} S N r j).down = Pi.single j 1 := by
  rw [freeBasis, Module.Basis.map_apply, Pi.basisFun_apply]
  rfl

theorem freeBasis_mem (d : Fin r → ℤ) (j : Fin r) :
    freeBasis.{u, v} S N r j ∈ (freeGraded.{u, v} N d).piece (d j) := by
  intro i
  rw [freeBasis_down]
  by_cases h : i = j
  · subst h
    rw [Pi.single_eq_same, sub_self]
    show (1 : Poly S N) ∈ weightedHomogeneousSubmodule S (fun _ => (1 : ℤ)) 0
    rw [mem_weightedHomogeneousSubmodule]
    exact isWeightedHomogeneous_one S _
  · rw [Pi.single_eq_of_ne h]
    exact zero_mem _

variable {M : Type w} [AddCommGroup M] [Module (Poly S N) M] [Module S M]
  [IsScalarTower S (Poly S N) M]

def genMap (𝓜 : GradedPMod S N M) (d : Fin r → ℤ) (m : Fin r → M) (hm : ∀ j, m j ∈ 𝓜.piece (d j)) :
    GradedHom (freeGraded.{u, v} N d) 𝓜 where
  toLin := Fintype.linearCombination (Poly S N) m ∘ₗ (ULift.moduleEquiv (R := Poly S N)).toLinearMap
  map_piece c x hx := by
    change Fintype.linearCombination (Poly S N) m x.down ∈ 𝓜.piece c
    rw [Fintype.linearCombination_apply]
    refine Submodule.sum_mem _ fun j _ => ?_
    have h := smul_mem_piece 𝓜 (hx j) (hm j)
    rwa [add_sub_cancel] at h

theorem genMap_basis (𝓜 : GradedPMod S N M) (d : Fin r → ℤ) (m : Fin r → M)
    (hm : ∀ j, m j ∈ 𝓜.piece (d j)) (j : Fin r) :
    (genMap.{u, v} 𝓜 d m hm).toLin (freeBasis.{u, v} S N r j) = m j := by
  classical
  change Fintype.linearCombination (Poly S N) m (freeBasis.{u, v} S N r j).down = m j
  rw [freeBasis_down, Fintype.linearCombination_apply_single, one_smul]

end Free

section Ker

variable {S : Type u} [CommRing S] {N : ℕ}
variable {F : Type v} [AddCommGroup F] [Module (Poly S N) F] [Module S F]
  [IsScalarTower S (Poly S N) F]
variable {M : Type w} [AddCommGroup M] [Module (Poly S N) M] [Module S M]
  [IsScalarTower S (Poly S N) M]
variable {𝓕 : GradedPMod S N F} {𝓜 : GradedPMod S N M}


omit [IsScalarTower S (Poly S N) F] [IsScalarTower S (Poly S N) M] in
theorem component_map (g : GradedHom 𝓕 𝓜) (y : DirectSum ℤ fun c => 𝓕.piece c) (c : ℤ) :
    (((LinearEquiv.ofBijective (DirectSum.coeLinearMap 𝓜.piece) 𝓜.isInternal).symm
      (g.toLin (DirectSum.coeLinearMap 𝓕.piece y))) c : M) = g.toLin (y c) := by
  induction y using DirectSum.induction_on with
  | zero => simp
  | of i x =>
    rw [DirectSum.coeLinearMap_of]
    by_cases h : i = c
    · subst h
      rw [𝓜.isInternal.ofBijective_coeLinearMap_of_mem (g.map_piece i x x.2), DirectSum.of_eq_same]
    · rw [𝓜.isInternal.ofBijective_coeLinearMap_of_mem_ne h (g.map_piece i x x.2)]
      simp [DirectSum.of_apply, h]
  | add a b ha hb =>
    simp only [map_add (f := _), DirectSum.add_apply, Submodule.coe_add, ha, hb]

def kerGraded (g : GradedHom 𝓕 𝓜) : GradedPMod S N (LinearMap.ker g.toLin) where
  piece c := (𝓕.piece c).comap ((LinearMap.ker g.toLin).subtype.restrictScalars S)
  isInternal := by
    classical
    refine DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top ?_ ?_
    · exact iSupIndep_of_coords 𝓕.isInternal.submodule_iSupIndep
        (fun _ : Unit => (LinearMap.ker g.toLin).subtype.restrictScalars S) (fun _ => id)
        (fun _ => Function.injective_id) (fun _ _ _ hx => hx) (fun x hx => Subtype.ext (hx ()))
    · rw [eq_top_iff]
      rintro ⟨x, hx⟩ -
      set y := (LinearEquiv.ofBijective (DirectSum.coeLinearMap 𝓕.piece) 𝓕.isInternal).symm x
      have hxy : DirectSum.coeLinearMap 𝓕.piece y = x :=
        (LinearEquiv.ofBijective (DirectSum.coeLinearMap 𝓕.piece) 𝓕.isInternal).apply_symm_apply x
      have hy : ∀ c, g.toLin (y c) = 0 := by
        intro c
        rw [← component_map g y c, hxy, LinearMap.mem_ker.mp hx, map_zero]
        rfl
      have hsum : (⟨x, hx⟩ : LinearMap.ker g.toLin) =
          ∑ c ∈ y.support,
            (⟨(y c : F), LinearMap.mem_ker.mpr (hy c)⟩ : LinearMap.ker g.toLin) := by
        apply Subtype.ext
        rw [Submodule.coe_sum]
        show x = ∑ c ∈ y.support, (y c : F)
        conv_lhs => rw [← hxy]
        rw [DirectSum.coeLinearMap_eq_dfinsuppSum]
        rfl
      rw [hsum]
      exact Submodule.sum_mem _ fun c _ => Submodule.mem_iSup_of_mem c (y c).2
  smul_mem n c p k hp hk := 𝓕.smul_mem n c p k hp hk

def kerIncl (g : GradedHom 𝓕 𝓜) : GradedHom (kerGraded g) 𝓕 where
  toLin := (LinearMap.ker g.toLin).subtype
  map_piece _ _ hk := hk

end Ker

theorem exists_homogeneous_generators {S : Type u} [CommRing S] {N : ℕ} {M : Type w}
    [AddCommGroup M] [Module (Poly S N) M] [Module S M] [IsScalarTower S (Poly S N) M]
    (𝓜 : GradedPMod S N M) (hfin : Module.Finite (Poly S N) M) :
    ∃ (r : ℕ) (m : Fin r → M) (d : Fin r → ℤ), (∀ j, m j ∈ 𝓜.piece (d j)) ∧
      Submodule.span (Poly S N) (Set.range m) = ⊤ := by
  classical
  let H : Set M := ⋃ c, (𝓜.piece c : Set M)
  have hH : Submodule.span (Poly S N) H = ⊤ := by
    rw [eq_top_iff]
    intro x _
    have hx : x ∈ ⨆ c, 𝓜.piece c := by
      rw [𝓜.isInternal.submodule_iSup_eq_top]
      trivial
    refine Submodule.iSup_induction _ (motive := fun y => y ∈ Submodule.span (Poly S N) H) hx
      (fun c y hy => Submodule.subset_span (Set.mem_iUnion.mpr ⟨c, hy⟩)) (zero_mem _)
      (fun a b ha hb => add_mem ha hb)
  have hcomp := (Submodule.fg_iff_compact (⊤ : Submodule (Poly S N) M)).mp hfin.fg_top
  have hle : (⊤ : Submodule (Poly S N) M) ≤ ⨆ h : H, Submodule.span (Poly S N) {(h : M)} := by
    rw [← hH, Submodule.span_le]
    intro y hy
    exact Submodule.mem_iSup_of_mem (⟨y, hy⟩ : H) (Submodule.mem_span_singleton_self y)
  obtain ⟨t, ht⟩ := hcomp.exists_finset_of_le_iSup _ hle
  let e := t.equivFin
  refine ⟨t.card, fun j => ((e.symm j : H) : M),
    fun j => Classical.choose (Set.mem_iUnion.mp (e.symm j : H).2),
    fun j => Classical.choose_spec (Set.mem_iUnion.mp (e.symm j : H).2), ?_⟩
  rw [eq_top_iff]
  refine ht.trans (iSup₂_le fun h hh => ?_)
  rw [Submodule.span_le, Set.singleton_subset_iff]
  exact Submodule.subset_span ⟨e ⟨h, hh⟩, by simp⟩

end GradedPres

theorem GradedPres.proof : GradedPres.Statement.{u, v} := by
  intro S _ _ N M _ _ _ _ 𝓜 hfin
  classical
  obtain ⟨r, m, d, hm, hspan⟩ := GradedPres.exists_homogeneous_generators 𝓜 hfin
  let g := GradedPres.genMap.{u, max u v} 𝓜 d m hm
  have : Module.Finite (Poly S N) (ULift.{max u v} (Fin r → Poly S N)) :=
    Module.Finite.equiv (ULift.moduleEquiv (R := Poly S N)).symm
  refine ⟨ULift.{max u v} (Fin r → Poly S N), inferInstance, inferInstance, inferInstance,
    inferInstance, LinearMap.ker g.toLin, inferInstance, inferInstance, inferInstance, inferInstance,
    GradedPres.freeGraded N d, GradedPres.kerGraded g, r, GradedPres.freeBasis S N r, d,
    GradedPres.kerIncl g, g, GradedPres.freeBasis_mem d, inferInstance, ?_, ?_,
    LinearMap.exact_subtype_ker_map _⟩
  · exact Subtype.val_injective
  · rw [← LinearMap.range_eq_top, eq_top_iff, ← hspan, Submodule.span_le]
    rintro _ ⟨j, rfl⟩
    exact ⟨_, GradedPres.genMap_basis 𝓜 d m hm j⟩

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedPres =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedULift =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedULift", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsPres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v

theorem GradedULift.proof : GradedULift.Statement.{u, v} := by
  intro S _ N M _ _ _ _ 𝓜
  let e : M ≃ₗ[S] ULift.{u} M := (ULift.moduleEquiv (R := S)).symm
  let eP : M ≃ₗ[Poly S N] ULift.{u} M := (ULift.moduleEquiv (R := Poly S N)).symm
  let pc : ℤ → Submodule S (ULift.{u} M) := fun c => (𝓜.piece c).map (e : M →ₗ[S] ULift.{u} M)
  have hpc : ∀ c, pc c = Submodule.orderIsoMapComap e (𝓜.piece c) := fun _ => rfl
  have hint : DirectSum.IsInternal pc := by
    have h0 := (DirectSum.isInternal_submodule_iff_iSupIndep_and_iSup_eq_top _).1 𝓜.isInternal
    refine (DirectSum.isInternal_submodule_iff_iSupIndep_and_iSup_eq_top _).2 ⟨?_, ?_⟩
    · have : pc = (Submodule.orderIsoMapComap e) ∘ 𝓜.piece := funext hpc
      rw [this]
      exact h0.1.map_orderIso _
    · have h1 : (⨆ c, pc c) = Submodule.orderIsoMapComap e (⨆ c, 𝓜.piece c) := by
        rw [OrderIso.map_iSup]
        rfl
      rw [h1, h0.2]
      exact (Submodule.orderIsoMapComap e).map_top
  let 𝓜' : GradedPMod S N (ULift.{u} M) :=
    { piece := pc
      isInternal := hint
      smul_mem := by
        intro d c p m hp hm
        obtain ⟨x, hx, rfl⟩ := hm
        refine ⟨p • x, 𝓜.smul_mem d c p x hp hx, ?_⟩
        rfl }
  refine ⟨ULift.{u} M, inferInstance, inferInstance, inferInstance, inferInstance, 𝓜',
    ⟨eP.toLinearMap, fun c m hm => ⟨m, hm, rfl⟩⟩,
    ⟨eP.symm.toLinearMap, fun c m hm => ?_⟩, fun m => rfl, fun m => rfl⟩
  obtain ⟨x, hx, rfl⟩ := hm
  exact hx

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedULift =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCount =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCount", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountTopSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.GenericPointSectionHypotheses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open Filter

universe u w

theorem SectionCount.proof (hT : SectionCount.Top.Statement.{u, w})
    (hD : SectionCount.Drop.Statement.{u, w}) : SectionCount.Statement.{u, w} := by
  intro k _ Ω _ _ N x d Nb b hZ hN hb
  obtain ⟨C₁, h₁⟩ := hT k Ω N x d Nb hZ hN
  obtain ⟨C₂, h₂⟩ := hD k Ω N x d Nb b hZ hN hb
  refine ⟨C₁ + C₂, ?_⟩
  filter_upwards [h₁, h₂, eventually_ge_atTop 1] with n hn₁ hn₂ hn
  set f : ℕ → ℝ := fun i =>
    (Module.finrank k (twistMul Nb.toSubSystem n (-((i : ℤ) * b))).secs : ℝ) with hf
  set Y : ℝ := (interNum (primeOf (S := k) x) (fun _ : Fin (d + 1) => Nb.toSubSystem) : ℝ) with hY
  set X : ℝ := (interNum (primeOf (S := k) x) (Fin.cons (α := fun _ => SubSystem k x Ω)
    (twistSys k x (b : ℤ)) (fun _ : Fin d => Nb.toSubSystem)) : ℝ) with hX
  have h0 : f 0 = (Module.finrank k (twistMul Nb.toSubSystem n 0).secs : ℝ) :=
    congrArg (fun m : ℤ => (Module.finrank k (twistMul Nb.toSubSystem n m).secs : ℝ)) (by simp)
  have htel : f 0 - f n = ∑ i ∈ Finset.range n, (f i - f (i + 1)) := by
    rw [Finset.sum_range_sub']
  have hsum : ∑ i ∈ Finset.range n, (f i - f (i + 1)) ≤
      ∑ _i ∈ Finset.range n, (X * (n : ℝ) ^ d / (d.factorial : ℝ) + C₂ * (n : ℝ) ^ d / n) :=
    Finset.sum_le_sum fun i hi => hn₂ i (Finset.mem_range.mp hi)
  rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul] at hsum
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hfac : ((d + 1).factorial : ℝ) = ((d : ℝ) + 1) * (d.factorial : ℝ) := by
    rw [Nat.factorial_succ]; push_cast; ring
  have hdf : (0 : ℝ) < (d.factorial : ℝ) := by exact_mod_cast Nat.factorial_pos d
  have key : (n : ℝ) * (X * (n : ℝ) ^ d / (d.factorial : ℝ) + C₂ * (n : ℝ) ^ d / n) =
      ((d : ℝ) + 1) * X * (n : ℝ) ^ (d + 1) / ((d + 1).factorial : ℝ) + C₂ * (n : ℝ) ^ d := by
    rw [hfac]; field_simp; ring
  rw [key] at hsum
  rw [← h0] at hn₁
  have hgoal : f n = (Module.finrank k (twistMul Nb.toSubSystem n (-((n : ℤ) * b))).secs : ℝ) := rfl
  rw [← hgoal]
  push_cast
  have e1 : (Y - ((d : ℝ) + 1) * X) * (n : ℝ) ^ (d + 1) / ((d + 1).factorial : ℝ) =
      Y * (n : ℝ) ^ (d + 1) / ((d + 1).factorial : ℝ) -
        ((d : ℝ) + 1) * X * (n : ℝ) ^ (d + 1) / ((d + 1).factorial : ℝ) := by ring
  rw [e1]
  linarith

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCount =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCountDrop =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCountDrop", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropFiltSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropTermSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropHilbWSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open Filter

universe u w

namespace SectionCount.Drop

theorem pow_add_le (c n : ℝ) (hc : 0 ≤ c) (hn : 1 ≤ n) :
    ∀ e : ℕ, (n + c) ^ e ≤ n ^ e + ((1 + c) ^ e - 1) * (n ^ e / n)
  | 0 => by simp
  | e + 1 => by
    have ih := pow_add_le c n hc hn e
    have hn0 : 0 < n := by linarith
    have hA : 0 ≤ (1 + c) ^ e - 1 := by
      have : 1 ≤ (1 + c) ^ e := one_le_pow₀ (by linarith)
      linarith
    have hq : n ^ e / n ≤ n ^ e := div_le_self (by positivity) hn
    have hq' : n ^ (e + 1) / n = n ^ e := by
      rw [pow_succ]; field_simp
    have hqn : n ^ e / n * n = n ^ e := by field_simp
    have h1 : (n + c) ^ e * (n + c) ≤ (n ^ e + ((1 + c) ^ e - 1) * (n ^ e / n)) * (n + c) :=
      mul_le_mul_of_nonneg_right ih (by linarith)
    have h2 : ((1 + c) ^ e - 1) * c * (n ^ e / n) ≤ ((1 + c) ^ e - 1) * c * n ^ e :=
      mul_le_mul_of_nonneg_left hq (mul_nonneg hA hc)
    rw [hq', pow_succ, pow_succ, pow_succ]
    nlinarith [h1, h2, hqn]

theorem pow_add_le_mul (c n : ℝ) (hc : 0 ≤ c) (hn : 1 ≤ n) (e : ℕ) :
    (n + c) ^ e ≤ (1 + c) ^ e * n ^ e := by
  rw [← mul_pow]
  exact pow_le_pow_left₀ (by linarith) (by nlinarith) e

theorem term_le (I C c n h : ℝ) (e d : ℕ) (hed : e ≤ d) (hc : 0 ≤ c) (hn : 1 ≤ n)
    (hh : |h - I * (n + c) ^ e / (e.factorial : ℝ)| ≤ C * (n + c) ^ e / (n + c)) :
    h ≤ (if e = d then I else 0) * n ^ d / (d.factorial : ℝ) +
      (|I| + |C|) * (1 + c) ^ e * (n ^ d / n) := by
  have hn0 : 0 < n := by linarith
  have hnc : n ≤ n + c := by linarith
  have hP : (n + c) ^ e ≤ (1 + c) ^ e * n ^ e := pow_add_le_mul c n hc hn e
  have hPe : 0 ≤ (n + c) ^ e := by positivity
  have hne : n ^ e ≤ n ^ d := pow_le_pow_right₀ hn hed
  have h1 := (abs_le.mp hh).2

  have hC : C * (n + c) ^ e / (n + c) ≤ |C| * (1 + c) ^ e * (n ^ d / n) := by
    calc C * (n + c) ^ e / (n + c) ≤ |C| * (n + c) ^ e / (n + c) := by
          gcongr; exact le_abs_self C
      _ ≤ |C| * (n + c) ^ e / n := by
          apply div_le_div_of_nonneg_left (by positivity) hn0 hnc
      _ ≤ |C| * ((1 + c) ^ e * n ^ e) / n := by gcongr
      _ ≤ |C| * ((1 + c) ^ e * n ^ d) / n := by gcongr
      _ = |C| * (1 + c) ^ e * (n ^ d / n) := by ring
  have hfac : (1 : ℝ) ≤ (e.factorial : ℝ) := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Nat.factorial_ne_zero e)

  have hM : I * (n + c) ^ e / (e.factorial : ℝ) ≤
      (if e = d then I else 0) * n ^ d / (d.factorial : ℝ) + |I| * (1 + c) ^ e * (n ^ d / n) := by
    split_ifs with hde
    · subst hde
      have hA := pow_add_le c n hc hn e
      have hlow : n ^ e ≤ (n + c) ^ e := pow_le_pow_left₀ hn0.le hnc e
      have hD : 0 ≤ (n + c) ^ e - n ^ e := by linarith
      have hq : 0 ≤ n ^ e / n := by positivity
      have hdiff : I * ((n + c) ^ e - n ^ e) ≤ |I| * (1 + c) ^ e * (n ^ e / n) := by
        calc I * ((n + c) ^ e - n ^ e) ≤ |I| * ((n + c) ^ e - n ^ e) :=
              mul_le_mul_of_nonneg_right (le_abs_self I) hD
          _ ≤ |I| * (((1 + c) ^ e - 1) * (n ^ e / n)) :=
              mul_le_mul_of_nonneg_left (by linarith) (abs_nonneg I)
          _ ≤ |I| * (1 + c) ^ e * (n ^ e / n) := by
              rw [mul_assoc]
              exact mul_le_mul_of_nonneg_left (by nlinarith) (abs_nonneg I)
      have hpos : (0 : ℝ) < (e.factorial : ℝ) := by linarith
      have hR : 0 ≤ |I| * (1 + c) ^ e * (n ^ e / n) := by positivity
      rw [div_le_iff₀ hpos]
      have : I * (n + c) ^ e = I * n ^ e + I * ((n + c) ^ e - n ^ e) := by ring
      rw [this, add_mul, div_mul_cancel₀ _ hpos.ne']
      nlinarith
    · have hlt : e < d := lt_of_le_of_ne hed hde
      have hd1 : n ^ e ≤ n ^ d / n := by
        rw [le_div_iff₀ hn0, ← pow_succ]
        exact pow_le_pow_right₀ hn hlt
      have hpos : (0 : ℝ) < (e.factorial : ℝ) := by linarith
      calc I * (n + c) ^ e / (e.factorial : ℝ) ≤ |I| * (n + c) ^ e / (e.factorial : ℝ) := by
            gcongr; exact le_abs_self I
        _ ≤ |I| * (n + c) ^ e := div_le_self (by positivity) hfac
        _ ≤ |I| * ((1 + c) ^ e * n ^ e) := by gcongr
        _ ≤ |I| * ((1 + c) ^ e * (n ^ d / n)) := by gcongr
        _ = 0 * n ^ d / (d.factorial : ℝ) + |I| * (1 + c) ^ e * (n ^ d / n) := by ring
  have : (|I| + |C|) * (1 + c) ^ e * (n ^ d / n) =
      |I| * (1 + c) ^ e * (n ^ d / n) + |C| * (1 + c) ^ e * (n ^ d / n) := by ring
  rw [this]
  linarith

theorem interNum_fin_congr {S : Type u} [CommRing S] {Ω : Type w} [Field Ω] [Algebra S Ω] {N : ℕ}
    {x : Fin (N + 1) → Ω} {a a' : ℕ} (h : a = a') (pp : Ideal (Poly S N)) (F : SubSystem S x Ω) :
    interNum pp (fun _ : Fin a => F) = interNum pp (fun _ : Fin a' => F) := by
  subst h; rfl

end SectionCount.Drop


open Classical in
theorem SectionCount.Drop.proof (hF : SectionCount.Drop.Filt.Statement.{u, w})
    (hT : SectionCount.Drop.Term.Statement.{u, w}) (hH : SectionCount.Drop.HilbW.Statement.{u, w})
    (hR : GenericPointSectionInput.Statement.{u, w}) : SectionCount.Drop.Statement.{u, w} := by
  intro k _ Ω _ _ N x d Nb b hZ hN hb
  obtain ⟨β, hβ, hβZ, m, pp, e, c, hpp, hcount, hloss⟩ := hF k Ω N x d Nb b hZ hb
  choose c' hc' using fun j => hT k Ω N x Nb b (pp j) (e j) (c j) hN (hpp j).1
  choose C hC using fun j => hH k Ω N x Nb (pp j) (e j) hN (hpp j).1
  obtain ⟨-, hsym, -, hcut, -⟩ := hR k Ω N x
  set g : Ideal (Poly k N) → ℤ := fun qq => interNum qq (fun _ : Fin d => Nb.toSubSystem) with hg

  have hkey : ∑ j, (if e j = d then interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) else 0) =
      interNum (primeOf (S := k) x) (Fin.cons (α := fun _ => SubSystem k x Ω) (twistSys k x (b : ℤ))
        (fun _ : Fin d => Nb.toSubSystem)) := by
    have h1 : ∀ j, (if e j = d then interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) else 0) =
        if e j = d then g (pp j) else 0 := fun j => by
      split_ifs with h
      · exact SectionCount.Drop.interNum_fin_congr h _ _
      · rfl
    have hc4 := hcut d (primeOf (S := k) x) (fun _ => Nb) (twistBundle k x (b : ℤ)) β hZ hβ hβZ
    have htb : (twistBundle k x (b : ℤ)).toSubSystem = twistSys k x (b : ℤ) := rfl
    simp only [htb] at hc4
    have hrot := hsym (d + 1) (primeOf (S := k) x)
      (Fin.cons (α := fun _ => LineBundle k x) (twistBundle k x (b : ℤ)) (fun _ => Nb))
      (finRotate (d + 1)) hZ
    have hL : (fun i => (Fin.cons (α := fun _ => LineBundle k x) (twistBundle k x (b : ℤ))
        (fun _ => Nb) i).toSubSystem) = Fin.cons (α := fun _ => SubSystem k x Ω) (twistSys k x (b : ℤ))
          (fun _ : Fin d => Nb.toSubSystem) := by
      funext i; refine Fin.cases ?_ (fun i => ?_) i
      · simp only [Fin.cons_zero]; rfl
      · simp only [Fin.cons_succ]
    have hLr : (fun i => (Fin.cons (α := fun _ => LineBundle k x) (twistBundle k x (b : ℤ))
        (fun _ => Nb) (finRotate (d + 1) i)).toSubSystem) =
          Fin.snoc (α := fun _ => SubSystem k x Ω) (fun i : Fin d => ((fun _ => Nb) i).toSubSystem)
            (twistSys k x (b : ℤ)) := by
      funext i; refine Fin.lastCases ?_ (fun i => ?_) i
      · simp; rfl
      · simp [finRotate_apply]
    rw [← hL, ← hrot, hLr, hc4, Finset.sum_congr rfl (fun j _ => h1 j)]
    have hTq : ∀ qq : Ideal (Poly k N),
        (if h : qq ∈ (primeOf (S := k) x ⊔ zeroIdeal (twistSys k x (b : ℤ)) β).minimalPrimes ∧
            IsSubvar x qq d then
          haveI : qq.IsPrime := h.1.1.1
          ((cutMult (primeOf (S := k) x ⊔ zeroIdeal (twistSys k x (b : ℤ)) β) qq).toNat : ℤ) *
            interNum qq (fun _ : Fin d => Nb.toSubSystem)
        else 0) = ∑ j, if e j = d ∧ pp j = qq then g qq else 0 := by
      intro qq
      have hq := hcount qq
      rw [← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul]
      by_cases hP : qq ∈ (primeOf (S := k) x ⊔ zeroIdeal (twistSys k x (b : ℤ)) β).minimalPrimes ∧
          IsSubvar x qq d
      · rw [dite_eq_left hP]; rw [dite_eq_left hP] at hq; rw [hq]
      · rw [dite_eq_right hP]; rw [dite_eq_right hP] at hq; rw [hq]; simp
    rw [finsum_congr hTq, finsum_eq_sum_of_support_subset (s := Finset.univ.image pp)]
    · rw [Finset.sum_comm]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      by_cases hd : e j = d
      · simp only [hd, true_and, if_true]
        rw [Finset.sum_ite_eq]
        simp
      · simp [hd]
    · intro qq hqq
      rw [Function.mem_support] at hqq
      obtain ⟨j, -, hj⟩ := Finset.exists_ne_zero_of_sum_ne_zero hqq
      have : pp j = qq := by
        by_contra hne; simp [hne] at hj
      simp only [Finset.coe_image, Finset.coe_univ, Set.image_univ, Set.mem_range]
      exact ⟨j, this⟩
  have hkeyR : ∑ j, (if e j = d then (interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) : ℝ) else 0) =
      (interNum (primeOf (S := k) x) (Fin.cons (α := fun _ => SubSystem k x Ω) (twistSys k x (b : ℤ))
        (fun _ : Fin d => Nb.toSubSystem)) : ℝ) := by
    rw [← hkey]; push_cast; rfl
  have hev : ∀ᶠ n : ℕ in atTop, ∀ j,
      |(Module.finrank k (SubSystem.quotH (twistMul Nb.toSubSystem (n + c' j) 0)
          ((twistMul Nb.toSubSystem (n + c' j) 0).twist (idealSys x (pp j))) 0) : ℝ) -
        (interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) : ℝ) * ((n + c' j : ℕ) : ℝ) ^ (e j) /
          ((e j).factorial : ℝ)| ≤ C j * ((n + c' j : ℕ) : ℝ) ^ (e j) / ((n + c' j : ℕ) : ℝ) := by
    rw [eventually_all]; intro j
    exact (tendsto_add_atTop_nat (c' j)).eventually (hC j)
  refine ⟨∑ j, (|(interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) : ℝ)| + |C j|) *
    (1 + (c' j : ℝ)) ^ (e j), ?_⟩
  filter_upwards [hev, eventually_ge_atTop 1] with n hn hn1 i _
  have hn1' : (1 : ℝ) ≤ n := by exact_mod_cast hn1
  have h1 := (Int.cast_le (R := ℝ)).mpr (hloss n i)
  push_cast at h1
  have h3 : ∀ j, (Module.finrank k (SubSystem.quotH (twistMul Nb.toSubSystem (n + c' j) 0)
      ((twistMul Nb.toSubSystem (n + c' j) 0).twist (idealSys x (pp j))) 0) : ℝ) ≤
      (if e j = d then (interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) : ℝ) else 0) *
        (n : ℝ) ^ d / (d.factorial : ℝ) +
      (|(interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) : ℝ)| + |C j|) * (1 + (c' j : ℝ)) ^ (e j) *
        ((n : ℝ) ^ d / n) := fun j => by
    have hj := hn j
    push_cast at hj
    exact SectionCount.Drop.term_le _ _ _ _ _ (e j) d (hpp j).2.1 (Nat.cast_nonneg _) hn1' hj
  calc _ ≤ _ := h1
    _ ≤ _ := Finset.sum_le_sum (fun j _ => by exact_mod_cast ((hc' j) n i).2)
    _ ≤ _ := Finset.sum_le_sum (fun j _ => h3 j)
    _ = (∑ j, (if e j = d then (interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) : ℝ) else 0)) *
          (n : ℝ) ^ d / (d.factorial : ℝ) +
        (∑ j, (|(interNum (pp j) (fun _ : Fin (e j) => Nb.toSubSystem) : ℝ)| + |C j|) *
          (1 + (c' j : ℝ)) ^ (e j)) * ((n : ℝ) ^ d / n) := by
      simp only [Finset.sum_add_distrib, Finset.sum_mul, Finset.sum_div]
    _ = _ := by rw [hkeyR]; ring

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCountDrop =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFinite =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFinite", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsPres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v

theorem SerreFinite.proof (hExact : CechExact.Statement.{u, max u v})
    (hTop : CechTop.Statement.{u, max u v}) (hFree : SerreFree.Statement.{u, max u v})
    (hPres : GradedPres.Statement.{u, v}) (hLift : GradedULift.Statement.{u, v})
    (hRet : CohomRetract.Statement.{u, v, max u v}) : SerreFinite.Statement.{u, v} := by
  intro S _ _ N

  have key : ∀ (k : ℕ) (M : Type (max u v)) [AddCommGroup M] [Module (Poly S N) M] [Module S M]
      [IsScalarTower S (Poly S N) M] (𝓜 : GradedPMod S N M), Module.Finite (Poly S N) M →
      ∀ i, N + 1 ≤ i + k → ∀ c : ℤ, Module.Finite S (cohom 𝓜 i c) := by
    intro k
    induction k with
    | zero =>
      intro M _ _ _ _ 𝓜 _ i hi c
      have := hTop S N M 𝓜 i c (by omega)
      exact ⟨by rw [Subsingleton.elim (⊤ : Submodule S (cohom 𝓜 i c)) ⊥]; exact Submodule.fg_bot⟩
    | succ k ih =>
      intro M _ _ _ _ 𝓜 hM i hi c
      obtain ⟨F, _, _, _, _, K, _, _, _, _, 𝓕, 𝓚, r, b, d, f, g, hb, hK, hf, hg, hfg⟩ :=
        hPres S N M 𝓜 hM
      have hF : Module.Finite S (cohom 𝓕 i c) := (hFree S N F 𝓕 r b d hb).1 i c
      have hKf : Module.Finite S (cohom 𝓚 (i + 1) c) := ih K 𝓚 hK (i + 1) (by omega) c
      obtain ⟨-, δ, hδ, -⟩ := (hExact S N K F M 𝓚 𝓕 𝓜 f g hf hg hfg c).2 i
      refine ⟨Submodule.fg_of_fg_map_of_fg_inf_ker δ (IsNoetherian.noetherian _) ?_⟩
      rw [top_inf_eq, LinearMap.exact_iff.mp hδ, LinearMap.range_eq_map]
      exact hF.fg_top.map _
  intro M _ _ _ _ 𝓜 hM i c
  obtain ⟨M', _, _, _, _, 𝓜', f, g, hgf, hfg⟩ := hLift S N M 𝓜
  have hM' : Module.Finite (Poly S N) M' :=
    Module.Finite.of_surjective f.toLin fun y => ⟨g.toLin y, hfg y⟩
  have := key (N + 1) M' 𝓜' hM' i (by omega) c
  exact Module.Finite.of_injective (cohomMap f i c) (hRet S N M M' 𝓜 𝓜' f g hgf i c)

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFinite =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePoly =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePoly", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsSerrePoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u

theorem SerrePoly.proof (hL : SerrePoly.Laurent.Statement.{u}) (hT : Cech.Transport.Statement.{u, u, u})
    (hC : SerrePoly.LaurentCohom.Statement.{u}) : SerrePoly.Statement.{u} := by
  intro S _ _ N
  obtain ⟨hinj, hpiece, ι, hι, hres, hmk, hdeg⟩ := hL S N
  obtain ⟨hfin, hvan, hconst⟩ := hC S N
  have hφ : ∀ (I J : StdCell N) (h : I.1 ⊆ J.1) (m : LocMod S N (Poly S N) I.1),
      ι J (locResS I J h m) = Cech.idRes S (Laurent S N) Finset.univ I J h (ι I m) :=
    fun I J h m => hres I J h m
  have hd : ∀ (c : ℤ) (I : StdCell N) (m : LocMod S N (Poly S N) I.1),
      m ∈ degLoc (polyGraded S N) c I → ι I m ∈ laurentDeg S N c I := fun c I m hm => by
    rw [← hdeg c I]; exact Submodule.mem_map_of_mem hm
  have hb : ∀ (i : ℕ) (c : ℤ), Function.Bijective
      (Cech.mapHdeg (degLoc (polyGraded S N) c) (laurentDeg S N c) ι hφ (hd c) i) :=
    fun i c => hT (N + 1) Finset.univ S _ _ _ _ (degLoc (polyGraded S N) c) (laurentDeg S N c) ι hφ
      (hd c) hι (hdeg c) i
  let E : ∀ (i : ℕ) (c : ℤ), cohom (polyGraded S N) i c ≃ₗ[S] laurentCohom S N i c :=
    fun i c => LinearEquiv.ofBijective _ (hb i c)
  refine ⟨fun i c => Module.Finite.equiv (E i c).symm, fun c hc => ⟨fun i hi => ?_, ?_, ?_⟩⟩
  · have := hvan c hc i hi
    exact (E i c).toEquiv.subsingleton
  ·
    intro m m' hmm
    have h0 : (constCochain (S := S) (N := N) (M := Poly S N) (m : Poly S N)) =
        constCochain (S := S) (N := N) (M := Poly S N) (m' : Poly S N) := by
      have hmem := (Submodule.Quotient.eq _).mp hmm
      change _ ∈ (⊥ : Submodule S _).comap _ at hmem
      rw [Submodule.mem_comap, Submodule.mem_bot] at hmem
      exact sub_eq_zero.mp hmem
    let I0 : Cech.Idx (Finset.univ : Finset (Fin (N + 1))) 0 :=
      ⟨⟨{0}, Finset.singleton_nonempty _, Finset.subset_univ _⟩, Finset.card_singleton _⟩
    have h1 := congrArg (ι I0.1) (congrFun h0 I0)
    change ι I0.1 (locMk (Poly S N) I0.1.1 m) = ι I0.1 (locMk (Poly S N) I0.1.1 m') at h1
    rw [hmk, hmk] at h1
    exact Subtype.ext (hinj h1)
  ·
    intro y
    obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ y
    have hw : (Cech.mapC ι 0 (z : Cech.Cochain (locSys S N (Poly S N)) 0)) ∈
        Cech.cocyDeg (fun _ : StdCell N => Laurent S N) (laurentDeg S N c)
          (Cech.idRes S (Laurent S N) Finset.univ) 0 := by
      refine Submodule.mem_inf.mpr ⟨LinearMap.mem_ker.mpr ?_, fun I _ => ?_⟩
      · rw [← Cech.mapC_d ι hφ, LinearMap.mem_ker.mp (Submodule.mem_inf.mp z.2).1, map_zero]
      · exact hd c I.1 _ ((Submodule.mem_inf.mp z.2).2 I (Set.mem_univ _))
    obtain ⟨f, hf, hzf⟩ := hconst c hc _ hw
    rw [← hpiece c] at hf
    obtain ⟨m, hm, rfl⟩ := hf
    refine ⟨⟨m, hm⟩, ?_⟩
    change Submodule.Quotient.mk _ = Submodule.Quotient.mk _
    congr 1
    apply Subtype.ext
    funext I
    apply hι I.1
    change ι I.1 (locMk (Poly S N) I.1.1 m) = _
    rw [hmk]
    exact (hzf I).symm

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePoly =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePolyLaurentCohom =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePolyLaurentCohom", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsSerrePoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

noncomputable section

universe u

namespace LaurentCohomProof

variable {S : Type u} [CommRing S] {N : ℕ}

def negSet (a : Fin (N + 1) → ℤ) : Finset (Fin (N + 1)) := Finset.univ.filter fun j => a j < 0

theorem mem_negSet {a : Fin (N + 1) → ℤ} {j : Fin (N + 1)} : j ∈ negSet a ↔ a j < 0 := by
  simp [negSet]


variable (S) in
def part (J : Finset (Fin (N + 1))) : Laurent S N →ₗ[S] Laurent S N where
  toFun f := f.filter fun a => negSet a = J
  map_add' _ _ := Finsupp.filter_add
  map_smul' _ _ := Finsupp.filter_smul

theorem part_apply (J : Finset (Fin (N + 1))) (f : Laurent S N) (a : Fin (N + 1) → ℤ) :
    part S J f a = if negSet a = J then f a else 0 :=
  Finsupp.filter_apply _ _ _

theorem sum_part (f : Laurent S N) : ∑ J, part S J f = f := by
  ext a
  rw [Finsupp.finsetSum_apply]
  simp only [part_apply]
  rw [Finset.sum_ite_eq]
  simp


variable (S N) in
def wPart (c : ℤ) (J : Finset (Fin (N + 1))) : Submodule S (Laurent S N) :=
  Finsupp.supported S S {a | negSet a = J ∧ ∑ j, a j = c}

theorem mem_exps {c : ℤ} {I : StdCell N} {f : Laurent S N} (hf : f ∈ laurentDeg S N c I)
    {a : Fin (N + 1) → ℤ} (ha : f a ≠ 0) : a ∈ laurentExps N c I.1 := by
  by_contra h
  exact ha ((Finsupp.mem_supported' S f).mp hf a h)

theorem part_mem_w {c : ℤ} {J : Finset (Fin (N + 1))} {I : StdCell N} {f : Laurent S N}
    (hf : f ∈ laurentDeg S N c I) : part S J f ∈ wPart S N c J := by
  refine (Finsupp.mem_supported' S _).mpr fun a ha => ?_
  rw [part_apply]
  split_ifs with h
  · by_contra h'
    exact ha ⟨h, (mem_exps hf h').1⟩
  · rfl

theorem part_eq_zero {c : ℤ} {J : Finset (Fin (N + 1))} {I : StdCell N} {f : Laurent S N}
    (hf : f ∈ laurentDeg S N c I) (hJ : ¬ J ⊆ I.1) : part S J f = 0 := by
  ext a
  rw [part_apply, Finsupp.zero_apply]
  split_ifs with h
  · by_contra h'
    apply hJ
    intro j hj
    by_contra hjI
    have h1 := (mem_exps hf h').2 j hjI
    rw [← h, mem_negSet] at hj
    omega
  · rfl

theorem mem_deg_of_w {c : ℤ} {J : Finset (Fin (N + 1))} {I : StdCell N} {y : Laurent S N}
    (hy : y ∈ wPart S N c J) (hJ : ¬ J ⊆ I.1 → y = 0) : y ∈ laurentDeg S N c I := by
  by_cases h : J ⊆ I.1
  · refine (Finsupp.mem_supported' S _).mpr fun a ha => ?_
    refine (Finsupp.mem_supported' S _).mp hy a fun ⟨hJa, hc⟩ => ha ⟨hc, fun j hj => ?_⟩
    by_contra hneg
    have : j ∈ negSet a := mem_negSet.mpr (by omega)
    rw [hJa] at this
    exact hj (h this)
  · rw [hJ h]; exact Submodule.zero_mem _

theorem part_mem_deg {c : ℤ} {J : Finset (Fin (N + 1))} {I : StdCell N} {f : Laurent S N}
    (hf : f ∈ laurentDeg S N c I) : part S J f ∈ laurentDeg S N c I :=
  mem_deg_of_w (part_mem_w hf) (part_eq_zero hf)


variable (S N) in
abbrev G : StdCell N → Type u := fun _ => Laurent S N


variable (S N) in
abbrev ρ := Cech.idRes S (Laurent S N) (Finset.univ : Finset (Fin (N + 1)))


variable (S) in
def partC (J : Finset (Fin (N + 1))) (i : ℕ) : Cech.Cochain (G S N) i →ₗ[S] Cech.Cochain (G S N) i :=
  Cech.mapC (fun _ => part S J) i

theorem partC_d (J : Finset (Fin (N + 1))) (i : ℕ) (z : Cech.Cochain (G S N) i) :
    Cech.d (G S N) (ρ S N) i (partC S J i z) = partC S J (i + 1) (Cech.d (G S N) (ρ S N) i z) :=
  (Cech.mapC_d (ρ := ρ S N) (ρ' := ρ S N) (fun _ => part S J) (fun _ _ _ _ => rfl) i z).symm

theorem sum_partC (i : ℕ) (z : Cech.Cochain (G S N) i) : ∑ J, partC S J i z = z := by
  funext I
  rw [Finset.sum_apply]
  exact sum_part (z I)

theorem partC_mem_cocy {c : ℤ} {i : ℕ} (J : Finset (Fin (N + 1))) {z : Cech.Cochain (G S N) i}
    (hz : z ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) i) :
    partC S J i z ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) i :=
  ⟨LinearMap.mem_ker.mpr (by rw [partC_d, LinearMap.mem_ker.mp hz.1, map_zero]),
    fun I _ => part_mem_deg (hz.2 I (Set.mem_univ _))⟩

theorem partC_mem_bdry (hC : Cech.Cone.Statement.{u, u}) {c : ℤ} {i : ℕ}
    {J : Finset (Fin (N + 1))} (hJ : J ≠ Finset.univ) {z : Cech.Cochain (G S N) (i + 1)}
    (hz : z ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) (i + 1)) :
    partC S J (i + 1) z ∈ Cech.bdryDeg (G S N) (laurentDeg S N c) (ρ S N) (i + 1) := by
  obtain ⟨i₀, hi₀⟩ : ∃ i₀, i₀ ∉ J := by
    by_contra h
    exact hJ (Finset.eq_univ_iff_forall.mpr fun x => by by_contra hx; exact h ⟨x, hx⟩)
  have hzI : ∀ I, z I ∈ laurentDeg S N c I.1 := fun I => hz.2 I (Set.mem_univ _)
  obtain ⟨y, hyW, hy0, hyd⟩ := (hC S (Laurent S N) N J).1 (wPart S N c J) i₀ hi₀ i (partC S J (i + 1) z)
    (by rw [partC_d, LinearMap.mem_ker.mp hz.1, map_zero]) (fun I => part_mem_w (hzI I))
    (fun I h => part_eq_zero (hzI I) h)
  exact Submodule.mem_map.mpr ⟨y, fun I _ => mem_deg_of_w (hyW I) (hy0 I), hyd⟩

theorem partC_zero (hC : Cech.Cone.Statement.{u, u}) {c : ℤ} {J : Finset (Fin (N + 1))}
    (hJ0 : J ≠ ∅) (hJ : J ≠ Finset.univ) {z : Cech.Cochain (G S N) 0}
    (hz : z ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) 0) : partC S J 0 z = 0 := by
  obtain ⟨i₀, hi₀⟩ : ∃ i₀, i₀ ∉ J := by
    by_contra h
    exact hJ (Finset.eq_univ_iff_forall.mpr fun x => by by_contra hx; exact h ⟨x, hx⟩)
  exact (hC S (Laurent S N) N J).2.1 (Finset.nonempty_iff_ne_empty.mpr hJ0) i₀ hi₀ _
    (by rw [partC_d, LinearMap.mem_ker.mp hz.1, map_zero])
    (fun I h => part_eq_zero (hz.2 I (Set.mem_univ _)) h)

theorem part_univ_eq_zero {c : ℤ} (hc : 0 ≤ c) {I : StdCell N} {f : Laurent S N}
    (hf : f ∈ laurentDeg S N c I) : part S Finset.univ f = 0 := by
  ext a
  rw [part_apply, Finsupp.zero_apply]
  split_ifs with h
  · by_contra h'
    have hneg : ∀ j ∈ Finset.univ, a j < 0 := fun j _ => mem_negSet.mp (h ▸ Finset.mem_univ j)
    have := Finset.sum_lt_sum_of_nonempty Finset.univ_nonempty hneg
    rw [Finset.sum_const_zero, (mem_exps hf h').1] at this
    omega
  · rfl

def bnd (c : ℤ) : Set (Fin (N + 1) → ℤ) :=
  {a | ∑ j, a j = c ∧ (negSet a = ∅ ∨ negSet a = Finset.univ)}

theorem bnd_finite (c : ℤ) : (bnd (N := N) c).Finite := by
  refine (Set.Finite.pi (t := fun _ : Fin (N + 1) => Set.Icc (-|c|) |c|)
    fun _ => Set.finite_Icc _ _).subset ?_
  rintro a ⟨hc, h | h⟩ j -
  · have hnn : ∀ k ∈ Finset.univ, 0 ≤ a k := fun k _ => by
      by_contra hk
      have : k ∈ negSet a := mem_negSet.mpr (by omega)
      rw [h] at this
      exact Finset.notMem_empty _ this
    have h1 := Finset.single_le_sum hnn (Finset.mem_univ j)
    rw [hc] at h1
    have := hnn j (Finset.mem_univ j)
    exact ⟨by linarith [abs_nonneg c], h1.trans (le_abs_self c)⟩
  · have hng : ∀ k ∈ Finset.univ, 0 ≤ -a k := fun k _ => by
      have := mem_negSet.mp (h ▸ Finset.mem_univ k)
      omega
    have h1 := Finset.single_le_sum hng (Finset.mem_univ j)
    rw [Finset.sum_neg_distrib, hc] at h1
    have := mem_negSet.mp (h ▸ Finset.mem_univ j)
    exact ⟨by linarith [neg_abs_le c], by linarith [abs_nonneg c]⟩

theorem reduce (hC : Cech.Cone.Statement.{u, u}) {c : ℤ} {i : ℕ} {z : Cech.Cochain (G S N) i}
    (hz : z ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) i) :
    ∃ w ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) i,
      (∀ I, w I ∈ Finsupp.supported S S (bnd c)) ∧
      z - w ∈ Cech.bdryDeg (G S N) (laurentDeg S N c) (ρ S N) i := by
  classical
  let K : Finset (Finset (Fin (N + 1))) := Finset.univ.filter fun J => J ≠ ∅ ∧ J ≠ Finset.univ
  refine ⟨z - ∑ J ∈ K, partC S J i z,
    Submodule.sub_mem _ hz (Submodule.sum_mem _ fun J _ => partC_mem_cocy J hz), fun I => ?_, ?_⟩
  · refine (Finsupp.mem_supported' S _).mpr fun a ha => ?_
    change z I a - (∑ J ∈ K, partC S J i z) I a = 0
    rw [Finset.sum_apply, Finsupp.finsetSum_apply]
    change z I a - ∑ J ∈ K, part S J (z I) a = 0
    simp only [part_apply]
    rw [Finset.sum_ite_eq]
    split_ifs with hK
    · exact sub_self _
    · rw [sub_zero]
      by_contra h'
      have hc := (mem_exps (hz.2 I (Set.mem_univ _)) h').1
      apply ha
      refine ⟨hc, ?_⟩
      by_contra hb
      exact hK (Finset.mem_filter.mpr ⟨Finset.mem_univ _, fun h0 => hb (Or.inl h0),
        fun h1 => hb (Or.inr h1)⟩)
  · rw [sub_sub_cancel]
    cases i with
    | zero =>
      have h0 : ∑ J ∈ K, partC S J 0 z = 0 := Finset.sum_eq_zero fun J hJ =>
        partC_zero hC (Finset.mem_filter.mp hJ).2.1 (Finset.mem_filter.mp hJ).2.2 hz
      rw [h0]
      exact Submodule.zero_mem _
    | succ i =>
      exact Submodule.sum_mem _ fun J hJ => partC_mem_bdry hC (Finset.mem_filter.mp hJ).2.2 hz

theorem mk_eq {c : ℤ} {i : ℕ} {z w : Cech.Cochain (G S N) i}
    (hz : z ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) i)
    (hw : w ∈ Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) i)
    (h : z - w ∈ Cech.bdryDeg (G S N) (laurentDeg S N c) (ρ S N) i) :
    (Submodule.Quotient.mk ⟨z, hz⟩ : laurentCohom S N i c) = Submodule.Quotient.mk ⟨w, hw⟩ :=
  (Submodule.Quotient.eq _).mpr h

end LaurentCohomProof


open LaurentCohomProof in
theorem SerrePoly.LaurentCohom.proof (hC : Cech.Cone.Statement.{u, u}) :
    SerrePoly.LaurentCohom.Statement.{u} := by
  intro S _ _ N
  refine ⟨fun i c => ?_, fun c hc i hi => ?_, fun c hc z hz => ?_⟩
  ·
    let B := Finsupp.supported S S (bnd (N := N) c)
    have : Finite (bnd (N := N) c) := (bnd_finite c).to_subtype
    have : Module.Finite S B := Module.Finite.equiv (Finsupp.supportedEquivFinsupp _).symm
    let T := ∀ _ : Cech.Idx (Finset.univ : Finset (Fin (N + 1))) i, B
    let ψ : T →ₗ[S] Cech.Cochain (G S N) i :=
      LinearMap.pi fun I => B.subtype.comp (LinearMap.proj I)
    let C := Cech.cocyDeg (G S N) (laurentDeg S N c) (ρ S N) i
    let P := C.comap ψ
    have : IsNoetherian S T := isNoetherian_of_linearEquiv
      (LinearEquiv.piCongrRight fun _ => Finsupp.supportedEquivFinsupp (M := S) (R := S) (bnd c)).symm
    have : Module.Finite S P := Module.Finite.iff_fg.mpr (IsNoetherian.noetherian P)
    let g : P →ₗ[S] laurentCohom S N i c :=
      (Submodule.mkQ _).comp (ψ.restrict (p := P) (q := C) fun _ hx => hx)
    refine Module.Finite.of_surjective g fun x => ?_
    obtain ⟨⟨z, hz⟩, rfl⟩ := Submodule.mkQ_surjective _ x
    obtain ⟨w, hw, hwB, hzw⟩ := reduce hC hz
    have hP : (fun I => (⟨w I, hwB I⟩ : B)) ∈ P := Submodule.mem_comap.mpr hw
    refine ⟨⟨_, hP⟩, ?_⟩
    exact (mk_eq hz hw hzw).symm
  ·
    obtain ⟨i, rfl⟩ : ∃ k, i = k + 1 := ⟨i - 1, by omega⟩
    refine (Submodule.Quotient.subsingleton_iff).mpr (eq_top_iff.mpr fun ⟨z, hz⟩ _ => ?_)
    change z ∈ Cech.bdryDeg _ _ _ _
    have hu : partC S Finset.univ (i + 1) z = 0 := by
      funext I
      exact part_univ_eq_zero hc (hz.2 I (Set.mem_univ _))
    rw [← sum_partC (S := S) (i + 1) z, ← Finset.sum_erase_add _ _ (Finset.mem_univ Finset.univ), hu,
      add_zero]
    exact Submodule.sum_mem _ fun J hJ => partC_mem_bdry hC (Finset.ne_of_mem_erase hJ) hz
  ·
    let sg : Fin (N + 1) → Cech.Idx (Finset.univ : Finset (Fin (N + 1))) 0 := fun k =>
      ⟨⟨{k}, Finset.singleton_nonempty k, Finset.subset_univ _⟩, Finset.card_singleton k⟩
    have hconst := (hC S (Laurent S N) N ∅).2.2 z (LinearMap.mem_ker.mp hz.1)
    refine ⟨z (sg 0), (Finsupp.mem_supported' S _).mpr fun a ha => ?_, fun I => hconst I (sg 0)⟩
    by_contra h'
    apply ha
    refine ⟨(mem_exps (hz.2 (sg 0) (Set.mem_univ _)) h').1, fun j _ => ?_⟩
    by_cases hk : ∃ k, k ≠ j
    · obtain ⟨k, hk⟩ := hk
      have h'' : z (sg k) a ≠ 0 := by rwa [hconst (sg k) (sg 0)]
      exact (mem_exps (hz.2 (sg k) (Set.mem_univ _)) h'').2 j (by simpa [sg] using hk.symm)
    · replace hk : ∀ k, k = j := fun k => by by_contra h; exact hk ⟨k, h⟩
      have hs := (mem_exps (hz.2 (sg 0) (Set.mem_univ _)) h').1
      rw [Finset.sum_eq_single j (fun k _ hkj => absurd (hk k) hkj) (by simp)] at hs
      omega

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePolyLaurentCohom =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreTail =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreTail", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v

theorem SerreTail.proof (hFin : SerreFinite.Statement.{u, v}) (hOnto : SerreOnto.Statement.{u, v}) :
    SerreTail.Statement.{u, v} := by
  classical
  intro S _ _ N M _ _ _ _ 𝓜 hM c₁

  have hfg : ∀ c : ℤ, ∃ s : Finset (Cech.Cochain (locSys S N M) 0),
      Submodule.span S (s : Set _) = Cech.cocyDeg (locSys S N M) (degLoc 𝓜 c) locResS 0 := by
    intro c
    have h0 : (Cech.bdryDeg (locSys S N M) (degLoc 𝓜 c) locResS 0).comap
        (Cech.cocyDeg (locSys S N M) (degLoc 𝓜 c) locResS 0).subtype = ⊥ := by
      change Submodule.comap _ ⊥ = ⊥
      rw [Submodule.comap_bot, Submodule.ker_subtype]
    have hf : Module.Finite S (Cech.cocyDeg (locSys S N M) (degLoc 𝓜 c) locResS 0 ⧸
        (Cech.bdryDeg (locSys S N M) (degLoc 𝓜 c) locResS 0).comap
          (Cech.cocyDeg (locSys S N M) (degLoc 𝓜 c) locResS 0).subtype) := hFin S N M 𝓜 hM 0 c
    have hf' : Module.Finite S (Cech.cocyDeg (locSys S N M) (degLoc 𝓜 c) locResS 0) :=
      Module.Finite.equiv (Submodule.quotEquivOfEqBot _ h0)
    obtain ⟨s, hs⟩ := Module.Finite.iff_fg.mp hf'
    exact ⟨s, hs⟩
  choose s hs using hfg
  obtain ⟨c₀, hc₀⟩ := hOnto S N M 𝓜 hM
  set c₂ := max c₀ c₁

  let Φ : M →ₗ[Poly S N] Cech.Cochain (locSys S N M) 0 := LinearMap.pi fun I => locMk M I.1.1
  let T : Finset (Cech.Cochain (locSys S N M) 0) := (Finset.Ico c₁ c₂).biUnion s
  let B : Submodule (Poly S N) (Cech.Cochain (locSys S N M) 0) :=
    LinearMap.range Φ ⊔ Submodule.span (Poly S N) (T : Set _)
  have hB : B.FG := by
    refine Submodule.FG.sup ?_ (Submodule.fg_span T.finite_toSet)
    rw [LinearMap.range_eq_map]
    exact (Module.Finite.fg_top).map Φ

  have hA : H0tail 𝓜 c₁ ≤ B.restrictScalars S := by
    refine iSup₂_le fun c hc => ?_
    intro z hz
    by_cases hc2 : c₂ ≤ c
    · obtain ⟨m, hm⟩ := hc₀ c (le_trans (le_max_left _ _) hc2) (Submodule.Quotient.mk ⟨z, hz⟩)
      have hz' : (constCochain (m : M) : Cech.Cochain (locSys S N M) 0) = z := by
        have := (Submodule.Quotient.eq _).mp hm
        change _ ∈ Submodule.comap _ ⊥ at this
        rw [Submodule.mem_comap, Submodule.mem_bot, map_sub, sub_eq_zero] at this
        exact this
      rw [← hz']
      exact Submodule.mem_sup_left ⟨(m : M), rfl⟩
    · have hcI : c ∈ Finset.Ico c₁ c₂ := Finset.mem_Ico.mpr ⟨hc, lt_of_not_ge hc2⟩
      rw [← hs c] at hz
      refine Submodule.mem_sup_right (Submodule.span_le_restrictScalars S (Poly S N) _ ?_)
      refine Submodule.span_mono ?_ hz
      intro y hy
      exact Finset.mem_coe.mpr (Finset.mem_biUnion.mpr ⟨c, hcI, hy⟩)
  have hspan : Submodule.span (Poly S N) (H0tail 𝓜 c₁ : Set (Cech.Cochain (locSys S N M) 0)) ≤ B :=
    Submodule.span_le.mpr hA
  have : IsNoetherian (Poly S N) B := isNoetherian_of_fg_of_noetherian B hB
  obtain ⟨t, ht, hteq⟩ := (Submodule.fg_span_iff_fg_span_finset_subset _).mp
    (Submodule.FG.of_le_of_isNoetherian hspan)
  refine ⟨t, fun z hz => ht hz, fun z hz => ?_⟩
  change z ∈ Submodule.span (Poly S N) (t : Set _)
  rw [← hteq]
  exact Submodule.subset_span hz

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreTail =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreVanish =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreVanish", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsPres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u v

theorem SerreVanish.proof (hExact : CechExact.Statement.{u, max u v})
    (hTop : CechTop.Statement.{u, max u v}) (hFree : SerreFree.Statement.{u, max u v})
    (hPres : GradedPres.Statement.{u, v}) (hLift : GradedULift.Statement.{u, v})
    (hRet : CohomRetract.Statement.{u, v, max u v}) : SerreVanish.Statement.{u, v} := by
  intro S _ _ N

  have key : ∀ (k : ℕ) (M : Type (max u v)) [AddCommGroup M] [Module (Poly S N) M] [Module S M]
      [IsScalarTower S (Poly S N) M] (𝓜 : GradedPMod S N M), Module.Finite (Poly S N) M →
      ∃ c₀ : ℤ, ∀ i, N + 1 ≤ i + k → 1 ≤ i → ∀ c ≥ c₀, Subsingleton (cohom 𝓜 i c) := by
    intro k
    induction k with
    | zero =>
      intro M _ _ _ _ 𝓜 _
      exact ⟨0, fun i hi _ c _ => hTop S N M 𝓜 i c (by omega)⟩
    | succ k ih =>
      intro M _ _ _ _ 𝓜 hM
      obtain ⟨F, _, _, _, _, K, _, _, _, _, 𝓕, 𝓚, r, b, d, f, g, hb, hK, hf, hg, hfg⟩ :=
        hPres S N M 𝓜 hM
      obtain ⟨c₁, hc₁⟩ := ih K 𝓚 hK
      refine ⟨max c₁ (∑ j, |d j|), fun i hi hi1 c hc => ?_⟩
      have hdc : ∀ j, d j ≤ c := fun j =>
        ((le_abs_self (d j)).trans (Finset.single_le_sum (fun j _ => abs_nonneg (d j))
          (Finset.mem_univ j))).trans ((le_max_right _ _).trans hc)
      have hF := ((hFree S N F 𝓕 r b d hb).2 c hdc).1 i hi1
      have hKv := hc₁ (i + 1) (by omega) (by omega) c ((le_max_left _ _).trans hc)
      obtain ⟨δ, hδ, -⟩ := ((hExact S N K F M 𝓚 𝓕 𝓜 f g hf hg hfg c).2 i).2
      refine ⟨fun x y => ?_⟩
      have hx : ∀ z : cohom 𝓜 i c, z = 0 := fun z => by
        obtain ⟨w, hw⟩ := (hδ z).mp (Subsingleton.elim _ _)
        rw [← hw, Subsingleton.elim w 0, map_zero]
      rw [hx x, hx y]
  intro M _ _ _ _ 𝓜 hM
  obtain ⟨M', _, _, _, _, 𝓜', f, g, hgf, hfg⟩ := hLift S N M 𝓜
  have hM' : Module.Finite (Poly S N) M' :=
    Module.Finite.of_surjective f.toLin fun y => ⟨g.toLin y, hfg y⟩
  obtain ⟨c₀, hc₀⟩ := key N M' 𝓜' hM'
  refine ⟨c₀, fun i hi c hc => ?_⟩
  have := hc₀ i (by omega) hi c hc
  exact (hRet S N M M' 𝓜 𝓜' f g hgf i c).subsingleton

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreVanish =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThree =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThree", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeAway\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnW\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Monotonicity.Lemmas\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u w

section ChartIdeal

variable {k : Type u} [Field k] {Ω : Type w} [Field Ω] [Algebra k Ω] {N : ℕ} {x : Fin (N + 1) → Ω}

abbrev idealChart (J : Ideal (Poly k N)) (I : Chart x) : Ideal (chartRing k x I) :=
  (idealMod (x := x) J I).comap (Algebra.linearMap (chartRing k x I) Ω)

theorem idealMod_le_range (J : Ideal (Poly k N)) (I : Chart x) :
    idealMod (x := x) J I ≤ LinearMap.range (Algebra.linearMap (chartRing k x I) Ω) := by
  rw [idealMod, Submodule.span_le]
  rintro _ ⟨f, s, e, -, hs, hf, hse, rfl⟩
  exact ⟨⟨_, f, s, e, hs, hf, hse, rfl⟩, rfl⟩

theorem idealMod_mono {J J' : Ideal (Poly k N)} (h : J ≤ J') (I : Chart x) :
    idealMod (x := x) J I ≤ idealMod (x := x) J' I := by
  refine Submodule.span_mono ?_
  rintro _ ⟨f, s, e, hf, hs, hfe, hse, rfl⟩
  exact ⟨f, s, e, h hf, hs, hfe, hse, rfl⟩

theorem idealMod_mul_le (J J' : Ideal (Poly k N)) (I : Chart x) :
    idealMod (x := x) J I * idealMod (x := x) J' I ≤ idealMod (x := x) (J * J') I := by
  rw [idealMod, idealMod, Submodule.span_mul_span, Submodule.span_le]
  rintro _ ⟨_, ⟨f, s, e, hf, hs, hfe, hse, rfl⟩, _, ⟨f', s', e', hf', hs', hfe', hse', rfl⟩, rfl⟩
  refine Submodule.subset_span ⟨f * f', s * s', e + e', Ideal.mul_mem_mul hf hf', mul_mem hs hs',
    hfe.mul hfe', hse.mul hse', ?_⟩
  simp only [map_mul, div_mul_div_comm]

theorem idealChart_mul_le (J J' : Ideal (Poly k N)) (I : Chart x) :
    idealChart J I * idealChart J' I ≤ idealChart (x := x) (J * J') I :=
  Ideal.mul_le.mpr fun a ha b hb => by
    have := idealMod_mul_le (x := x) J J' I (Submodule.mul_mem_mul ha hb)
    simpa using this

theorem idealChart_top (I : Chart x) : idealChart (x := x) (⊤ : Ideal (Poly k N)) I = ⊤ := by
  refine (Ideal.eq_top_iff_one _).mpr ?_
  refine Submodule.subset_span ⟨1, 1, 0, Submodule.mem_top, one_mem _, isHomogeneous_one _ _,
    isHomogeneous_one _ _, ?_⟩
  simp

theorem idealChart_prod_le {ι : Type*} (s : Finset ι) (P : ι → Ideal (Poly k N)) (I : Chart x) :
    ∏ i ∈ s, idealChart (P i) I ≤ idealChart (x := x) (∏ i ∈ s, P i) I := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.prod_empty, Ideal.one_eq_top, idealChart_top, le_refl]
  | insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.prod_insert ha]
    exact (Ideal.mul_mono_right ih).trans (idealChart_mul_le _ _ I)

theorem idealChart_pow_le (P : Ideal (Poly k N)) (I : Chart x) (n : ℕ) :
    idealChart P I ^ n ≤ idealChart (x := x) (P ^ n) I := by
  induction n with
  | zero => simp only [pow_zero, Ideal.one_eq_top, idealChart_top, le_refl]
  | succ n ih =>
    rw [pow_succ, pow_succ]
    exact (Ideal.mul_mono_left ih).trans (idealChart_mul_le _ _ I)

theorem twist_idealSys_le (F : SubSystem k x Ω) (pp : Ideal (Poly k N)) (I : Chart x) :
    (F.twist (idealSys x pp)).sub I ≤ idealChart pp I • F.sub I := by
  refine Submodule.span_le.mpr ?_
  rintro _ ⟨q, hq, y, hy, rfl⟩
  obtain ⟨a, rfl⟩ := idealMod_le_range pp I hq
  exact Submodule.smul_mem_smul (show a ∈ idealChart pp I from hq) hy

end ChartIdeal

section Algebra

variable {A M : Type*} [CommRing A] [AddCommGroup M] [Module A M]

theorem le_sup_mul_smul {G F : Submodule A M} {P Q : Ideal A} (hP : F ≤ G ⊔ P • F)
    (hQ : F ≤ G ⊔ Q • F) : F ≤ G ⊔ (P * Q) • F := by
  calc F ≤ G ⊔ P • F := hP
    _ ≤ G ⊔ P • (G ⊔ Q • F) := sup_le_sup_left (Submodule.smul_mono le_rfl hQ) _
    _ ≤ G ⊔ (P * Q) • F := by
      rw [Submodule.smul_sup, Submodule.mul_smul, ← sup_assoc]
      exact sup_le_sup_right (sup_le le_rfl Submodule.smul_le_right) _

theorem le_sup_prod_smul {ι : Type*} {G F : Submodule A M} (s : Finset ι) (P : ι → Ideal A)
    (h : ∀ i ∈ s, F ≤ G ⊔ P i • F) : F ≤ G ⊔ (∏ i ∈ s, P i) • F := by
  classical
  induction s using Finset.induction_on with
  | empty => rw [Finset.prod_empty, Ideal.one_eq_top, Submodule.top_smul]; exact le_sup_right
  | insert a s ha ih =>
    rw [Finset.prod_insert ha]
    exact le_sup_mul_smul (h a (Finset.mem_insert_self a s))
      (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem le_sup_pow_smul {G F : Submodule A M} {P : Ideal A} (h : F ≤ G ⊔ P • F) (n : ℕ) :
    F ≤ G ⊔ (P ^ n) • F := by
  induction n with
  | zero => rw [pow_zero, Ideal.one_eq_top, Submodule.top_smul]; exact le_sup_right
  | succ n ih => rw [pow_succ]; exact le_sup_mul_smul ih h

end Algebra

theorem StepThree.proof (hAway : StepThree.Away.Statement.{u, w})
    (hOnW : StepThree.OnW.Statement.{u, w}) : StepThree.Statement.{u, w} := by
  intro k _ Ω _ _ N x T hK
  classical
  have hfin := Ideal.finite_minimalPrimes_of_isNoetherianRing (Poly k N) T.J
  choose! c₀ hc₀ using hOnW k Ω N x T hK
  obtain ⟨n, hn⟩ := Ideal.exists_radical_pow_le_of_fg T.J (IsNoetherian.noetherian _)
  set s := hfin.toFinset
  refine ⟨∑ p ∈ s, |c₀ p|, fun b hb I => ?_⟩
  have hc : 0 ≤ ∑ p ∈ s, |c₀ p| := Finset.sum_nonneg fun p _ => abs_nonneg _
  set F := (T.L.pow b).twist (twistSys k x (∑ p ∈ s, |c₀ p|))
  set G := Submodule.span (chartRing k x I) (F.secs : Set Ω)
  refine le_antisymm (Submodule.span_le.mpr fun z hz => ?_) ?_
  · exact (Submodule.mem_iInf _).mp hz I
  have h1 : ∀ p ∈ s, F.sub I ≤ G ⊔ idealChart p I • F.sub I := fun p hp => by
    have hp' := hfin.mem_toFinset.mp hp
    refine (hc₀ p hp' b _ hb ?_ I).trans (sup_le_sup_left (twist_idealSys_le F p I) _)
    exact (le_abs_self _).trans (Finset.single_le_sum (fun q _ => abs_nonneg (c₀ q)) hp)
  have h2 := le_sup_pow_smul (le_sup_prod_smul s _ h1) (n * b)
  have hrad : ∏ p ∈ s, p ≤ T.J.radical := by
    rw [← Ideal.sInf_minimalPrimes]
    exact le_sInf fun q hq => Ideal.prod_le_inf.trans (Finset.inf_le (hfin.mem_toFinset.mpr hq))
  have h3 : (∏ p ∈ s, idealChart p I) ^ (n * b) ≤ idealChart T.J I ^ b := by
    rw [pow_mul]
    refine Ideal.pow_right_mono ?_ b
    refine (Ideal.pow_right_mono (idealChart_prod_le s (fun p => p) I) n).trans
      ((idealChart_pow_le _ I n).trans ?_)
    exact Submodule.comap_mono (idealMod_mono ((Ideal.pow_right_mono hrad n).trans hn) I)
  have h4 := hAway k Ω N x T b _ hc I
  exact h2.trans (sup_le le_rfl ((Submodule.smul_mono_left h3).trans h4))

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThree =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThreeOnW =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThreeOnW", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnWLift\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnWGen\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnW\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u w

theorem StepThree.OnW.proof (hL : StepThree.OnW.Lift.Statement.{u, w})
    (hG : StepThree.OnW.Gen.Statement.{u, w}) : StepThree.OnW.Statement.{u, w} := by
  intro k _ Ω _ _ N x T hK pp hpp
  obtain ⟨c₁, h₁⟩ := hL k Ω N x T hK pp hpp
  obtain ⟨c₂, h₂⟩ := hG k Ω N x T hK pp hpp
  refine ⟨max c₁ c₂, fun b c hb hc I => ?_⟩
  refine (h₂ b c hb (le_of_max_le_right hc) I).trans (sup_le ?_ le_sup_right)
  refine Submodule.span_le.mpr ?_
  rintro _ ⟨s, hs, hcomp, rfl⟩
  obtain ⟨t, ht, hts⟩ := h₁ b c hb (le_of_max_le_left hc) s hs hcomp
  have he : s I = t - (t - s I) := by abel
  rw [SetLike.mem_coe, he]
  exact Submodule.sub_mem _ (Submodule.mem_sup_left (Submodule.subset_span (SetLike.mem_coe.mpr ht)))
    (Submodule.mem_sup_right (hts I))

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThreeOnW =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistVanish =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistVanish", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsTwistSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

open MvPolynomial

noncomputable section

universe u w

theorem TwistVanish.proof (hE : Extension.Statement.{u, w, w}) (hV : SerreVanish.Statement.{u, w})
    (hT : TwistSplit.Statement.{u, w}) : TwistVanish.Statement.{u, w} := by
  intro S _ _ Ω _ _ N x G B r η hη hspan
  obtain ⟨M₀, -, hM₀⟩ := hE S Ω N x Ω G.toSubFamily G.fg
  obtain ⟨M, _, _, _, _, 𝓜, hfin, hsplit⟩ :=
    hT S Ω N x M₀ G.toSubSystem B.toSubSystem r η hM₀ hη hspan
  obtain ⟨c₀, hc₀⟩ := hV (MvPolynomial (Fin (r + 1)) S) N M 𝓜 hfin
  refine ⟨c₀, fun b c hc => ?_⟩
  obtain ⟨ι, π, hπ⟩ := hsplit b c 1
  have := hc₀ 1 le_rfl c hc
  exact ⟨fun z z' => by rw [← hπ z, ← hπ z', Subsingleton.elim (ι z) (ι z')]⟩

end

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistVanish =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AssemblyBase =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AssemblyBase", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.RestrLenRestrictSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropFiltSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropHilbWSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountDropTermSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SectionCountTopSt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsCechDSq\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsDegLocExact\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsDegreePos\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsPres\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsSerrePoly\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeAway\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnWGen\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepThreeOnWLift\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsStepTwo\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsTwistSections\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.StatementsTwistSplit\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechCone\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechDSq\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechExact\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechTop\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCechTransport\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PCohomRetract\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PDegLocExact\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PExtension\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGenerated\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedPres\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PGradedULift\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PHilbertPositive\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PNefRestrict\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PPrimeFiltrationPoint\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PPrimeFiltrationRestrict\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PProjDegreePositive\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PRestrictTwist\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCount\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSectionCountDrop\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFinite\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreFree\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreOnto\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePoly\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePolyLaurent\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerrePolyLaurentCohom\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreTail\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSerreVanish\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepDataJProper\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThree\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThreeAway\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PStepThreeOnW\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSubvarDrop\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistFinite\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistSections\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PTwistVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman

universe u v w

theorem CechDSq.full : CechDSq.Statement.{u, v} := CechDSq.proof
theorem DegLocExact.full : DegLocExact.Statement.{u, v} := DegLocExact.proof
theorem CechExact.full : CechExact.Statement.{u, v} := CechExact.proof CechDSq.full DegLocExact.full
theorem CechTop.full : CechTop.Statement.{u, v} := CechTop.proof
theorem Cech.Cone.full : Cech.Cone.Statement.{u, v} := Cech.Cone.proof
theorem Cech.Transport.full : Cech.Transport.Statement.{u, v, w} := Cech.Transport.proof
theorem SerrePoly.Laurent.full : SerrePoly.Laurent.Statement.{u} := SerrePoly.Laurent.proof
theorem SerrePoly.LaurentCohom.full : SerrePoly.LaurentCohom.Statement.{u} :=
  SerrePoly.LaurentCohom.proof Cech.Cone.full
theorem SerrePoly.full : SerrePoly.Statement.{u} :=
  SerrePoly.proof SerrePoly.Laurent.full Cech.Transport.full SerrePoly.LaurentCohom.full
theorem SerreFree.full : SerreFree.Statement.{u, v} := SerreFree.proof SerrePoly.full
theorem GradedPres.full : GradedPres.Statement.{u, v} := GradedPres.proof
theorem GradedULift.full : GradedULift.Statement.{u, v} := GradedULift.proof
theorem CohomRetract.full : CohomRetract.Statement.{u, v, w} := CohomRetract.proof

theorem SerreFinite.full : SerreFinite.Statement.{u, v} :=
  SerreFinite.proof CechExact.full CechTop.full SerreFree.full GradedPres.full GradedULift.full
    CohomRetract.full

theorem SerreVanish.full : SerreVanish.Statement.{u, v} :=
  SerreVanish.proof CechExact.full CechTop.full SerreFree.full GradedPres.full GradedULift.full
    CohomRetract.full

theorem SerreOnto.full : SerreOnto.Statement.{u, v} :=
  SerreOnto.proof CechExact.full SerreFree.full SerreVanish.full

theorem SerreTail.full : SerreTail.Statement.{u, v} := SerreTail.proof SerreFinite.full SerreOnto.full

alias Extension.full := _root_.GroundTheory.Heights₂.Heights.Kleiman.Extension.proof
theorem Generated.full : Generated.Statement.{u, w} := Generated.proof Extension.full
theorem TwistFinite.full : TwistFinite.Statement.{u, w} := TwistFinite.proof Extension.full SerreFinite.full
theorem TwistSections.full : TwistSections.Statement.{u, w} := TwistSections.proof SerreOnto.full
theorem ProjDegreePositive.full : ProjDegreePositive.Statement.{u} := ProjDegreePositive.proof
theorem HilbertPositive.full : HilbertPositive.Statement.{u, w} :=
  HilbertPositive.proof ProjDegreePositive.full TwistSections.full
alias PrimeFiltration.Point.full := _root_.GroundTheory.Heights₂.Heights.Kleiman.PrimeFiltration.Point.proof
theorem PrimeFiltration.Restrict.full : PrimeFiltration.Restrict.Statement.{u, w} :=
  PrimeFiltration.Restrict.proof

alias StepThree.Away.full := _root_.GroundTheory.Heights₂.Heights.Kleiman.StepThree.Away.proof
theorem RestrictTwist.full : RestrictTwist.Statement.{u, w} := RestrictTwist.proof
theorem StepData.JProper.full : StepData.JProper.Statement.{u, w} := StepData.JProper.proof
alias SubvarDrop.full := _root_.GroundTheory.Heights₂.Heights.Kleiman.SubvarDrop.proof

theorem TwistVanish.assembled (hS : TwistSplit.Statement.{u, w}) : TwistVanish.Statement.{u, w} :=
  TwistVanish.proof Extension.full SerreVanish.full hS

theorem NefRestrict.assembled (hRL : RestrLenRestrict.Statement.{u, w}) : NefRestrict.Statement.{u, w} :=
  NefRestrict.proof RestrictTwist.full hRL

alias SectionCount.Drop.assembled := _root_.GroundTheory.Heights₂.Heights.Kleiman.SectionCount.Drop.proof

theorem SectionCount.assembled (hTop : SectionCount.Top.Statement.{u, w})
    (hF : SectionCount.Drop.Filt.Statement.{u, w}) (hT : SectionCount.Drop.Term.Statement.{u, w})
    (hH : SectionCount.Drop.HilbW.Statement.{u, w}) (hR : GenericPointSectionInput.Statement.{u, w}) :
    SectionCount.Statement.{u, w} :=
  SectionCount.proof hTop (SectionCount.Drop.assembled hF hT hH hR)

theorem StepThree.assembled (hL : StepThree.OnW.Lift.Statement.{u, w})
    (hG : StepThree.OnW.Gen.Statement.{u, w}) : StepThree.Statement.{u, w} :=
  StepThree.proof StepThree.Away.full (StepThree.OnW.proof hL hG)

end GroundTheory.Heights₂.Heights.Kleiman
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AssemblyBase =====

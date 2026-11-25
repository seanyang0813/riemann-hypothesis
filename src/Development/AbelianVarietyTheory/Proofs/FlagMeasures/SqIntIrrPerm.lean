module

public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ScalarOfMultOne
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.PosPartUnitaryMul
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TraceTransposePow
public import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
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
import Mathlib.Topology.Algebra.Group.Units
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LayerProd
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.EigenfunctionFiniteCoefficients
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryGroupStructuresPermConjInvariant, Development.AbelianVarietyTheory.Proofs.FlagMeasures.SqIntIrrPerm

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryGroupStructuresPermConjInvariant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryGroupStructuresPermConjInvariant", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ScalarOfMultOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LayerProd\nimport Development.AbelianVarietyTheory.Statements.CuspFrameWeights.EigenfunctionFiniteCoefficients\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Finset Formalism.MainNotions.S Formalism.REAL Formalism.QuantumDeterminants GlobalTheory.Count GlobalTheory.Dec GlobalTheory.DSId
open scoped InnerProductSpace ComplexOrder

noncomputable section
namespace GlobalTheory.Dec.PermGroup
variable {n : ℕ}

lemma memLp_equiv {ε ε' : Fin n → Bool} (e : UJ ε' ≃ₜ* UJ ε) (F : UJ ε → ℂ) (p : ENNReal) :
    MemLp F p (muG ε) ↔ MemLp (fun g => F (e g)) p (muG ε') := by
  have hE : (Measure.map e (muG ε')).IsHaarMeasure := e.isHaarMeasure_map (muG ε')
  have hc : Measure.map e (muG ε') =
      Measure.haarScalarFactor (Measure.map e (muG ε')) (muG ε) • muG ε := Measure.isMulLeftInvariant_eq_smul _ _
  set c : ENNReal := ((Measure.haarScalarFactor (Measure.map e (muG ε')) (muG ε) : NNReal) : ENNReal)
    with hcdef
  have hc' : Measure.map e (muG ε') = c • muG ε := by rw [hcdef, ← ENNReal.smul_def]; exact hc
  have hT : c ≠ ⊤ := ENNReal.coe_ne_top
  have h0 : c ≠ 0 := by
    intro hz
    have hz' : Measure.map e (muG ε') = 0 := by rw [hc', hz, zero_smul]
    rw [Measure.map_eq_zero_iff
      (show AEMeasurable (⇑e) (muG ε') from (map_continuous e).measurable.aemeasurable)] at hz'
    exact NeZero.ne _ hz'
  have hm := (e.toHomeomorph.toMeasurableEquiv).memLp_map_measure_iff (g := F) (p := p) (μ := muG ε')
  change MemLp F p (Measure.map e (muG ε')) ↔ MemLp (F ∘ e) p (muG ε') at hm
  change MemLp F p (muG ε) ↔ MemLp (F ∘ e) p (muG ε')
  rw [← hm, hc']
  constructor
  · intro h
    exact h.smul_measure hT
  · intro h
    have h' := h.smul_measure (ENNReal.inv_ne_top.2 h0)
    rwa [smul_smul, ENNReal.inv_mul_cancel h0 hT, one_smul] at h'

def homUJ {ε ε' : Fin n → Bool} (φ : Matrix (Fin n) (Fin n) ℂ →* Matrix (Fin n) (Fin n) ℂ)
    (h : ∀ g ∈ UJset ε', φ g ∈ UJset ε) : UJ ε' →* UJ ε :=
  ((Units.map φ).comp (UJ ε').subtype).codRestrict (UJ ε) fun g => h _ g.2

lemma homUJ_cont {ε ε' : Fin n → Bool} (φ : Matrix (Fin n) (Fin n) ℂ →* Matrix (Fin n) (Fin n) ℂ)
    (h : ∀ g ∈ UJset ε', φ g ∈ UJset ε) (hc : Continuous φ) : Continuous (homUJ φ h) := by
  refine continuous_induced_rng.2 ?_
  rw [Units.continuous_iff]
  exact ⟨hc.comp (Units.continuous_val.comp continuous_subtype_val),
    hc.comp (Units.continuous_coe_inv.comp continuous_subtype_val)⟩

lemma memLp_hom {ε ε' : Fin n → Bool} (φ ψ : Matrix (Fin n) (Fin n) ℂ →* Matrix (Fin n) (Fin n) ℂ)
    (h : ∀ g ∈ UJset ε', φ g ∈ UJset ε) (h' : ∀ g ∈ UJset ε, ψ g ∈ UJset ε')
    (hc : Continuous φ) (hc' : Continuous ψ) (h1 : ∀ g, ψ (φ g) = g) (h2 : ∀ g, φ (ψ g) = g)
    (f : Matrix (Fin n) (Fin n) ℂ → ℂ) (p : ENNReal) :
    MemLp (fun g : UJ ε => f (umat g)) p (muG ε) ↔
      MemLp (fun g : UJ ε' => f (φ (umat g))) p (muG ε') := by
  let e : UJ ε' ≃ₜ* UJ ε :=
    { toFun := homUJ φ h
      invFun := homUJ ψ h'
      left_inv := fun g => Subtype.ext (Units.ext (h1 ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)))
      right_inv := fun g => Subtype.ext (Units.ext (h2 ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)))
      map_mul' := fun a b => map_mul (homUJ φ h) a b
      continuous_toFun := homUJ_cont φ h hc
      continuous_invFun := homUJ_cont ψ h' hc' }
  exact memLp_equiv e (fun g => f (umat g)) p

def perm (s : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) ℂ ≃+* Matrix (Fin n) (Fin n) ℂ :=
  (Matrix.reindexAlgEquiv ℂ ℂ s).toRingEquiv

lemma perm_apply (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) :
    perm s g = g.submatrix s.symm s.symm := rfl

lemma perm_cont (s : Equiv.Perm (Fin n)) : Continuous (perm s) := by
  have h : ⇑(perm s) = fun g => g.submatrix s.symm s.symm := funext (perm_apply s)
  rw [h]
  exact continuous_id.matrix_submatrix _ _

lemma perm_ct (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) : (perm s g)ᴴ = perm s gᴴ := rfl

lemma perm_Jm (ε : Fin n → Bool) (s : Equiv.Perm (Fin n)) : Jm ε = perm s (Jm (ε ∘ s)) := by
  rw [perm_apply]
  ext i j
  by_cases hij : i = j
  · subst hij
    simp [Jm]
  · have hij' : s.symm i ≠ s.symm j := fun h => hij (s.symm.injective h)
    simp [Jm, hij, hij']

lemma perm_UJ (ε : Fin n → Bool) (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) :
    g ∈ UJset (ε ∘ s) ↔ perm s g ∈ UJset ε := by
  simp only [UJset, Set.mem_ofPred_eq, inUJ]
  rw [perm_ct, perm_Jm ε s]
  simp only [← map_mul]
  exact (perm s).injective.eq_iff.symm

lemma perm_K (ε : Fin n → Bool) (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) :
    g ∈ Kset (ε ∘ s) ↔ perm s g ∈ Kset ε := by
  simp only [Kset, Set.mem_ofPred_eq, Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose]
  rw [perm_ct, perm_Jm ε s]
  simp only [← map_mul, EmbeddingLike.map_eq_one_iff, (perm s).injective.eq_iff]

lemma perm_P (ε : Fin n → Bool) (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) :
    inP (ε ∘ s) g ↔ inP ε (perm s g) := by
  simp only [inP, inG]
  rw [perm_ct, perm_Jm ε s]
  simp only [← map_mul, ← map_add (f := _), ← map_neg, EmbeddingLike.map_eq_zero_iff,
    (perm s).injective.eq_iff]

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra in
lemma perm_exp (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) :
    NormedSpace.exp (perm s g) = perm s (NormedSpace.exp g) := (NormedSpace.map_exp (perm s) (perm_cont s) g).symm

def permM (s : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) ℂ →* Matrix (Fin n) (Fin n) ℂ where
  toFun g := g.submatrix s.symm s.symm
  map_one' := map_one (perm s)
  map_mul' := map_mul (perm s)

lemma permM_symm (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) :
    permM s.symm (permM s g) = g := by
  show (g.submatrix s.symm s.symm).submatrix s.symm.symm s.symm.symm = g
  ext i j
  simp

lemma permM_symm' (s : Equiv.Perm (Fin n)) (g : Matrix (Fin n) (Fin n) ℂ) :
    permM s (permM s.symm g) = g := by
  show (g.submatrix s.symm.symm s.symm.symm).submatrix s.symm s.symm = g
  ext i j
  simp

def conj : Matrix (Fin n) (Fin n) ℂ →* Matrix (Fin n) (Fin n) ℂ where
  toFun g := g.map star
  map_one' := FormF.map_star_one
  map_mul' := FormF.map_star_mul

lemma conj_cont : Continuous (conj (n := n)) := by
  show Continuous fun g : Matrix (Fin n) (Fin n) ℂ => g.map star
  exact continuous_id.matrix_map continuous_star

theorem permGroup : ∀ (n : ℕ) (ε : Fin n → Bool) (s : Equiv.Perm (Fin n)), (∀ g : Matrix (Fin n) (Fin n) ℂ, (g ∈ UJset (ε ∘ s) ↔ g.submatrix s.symm s.symm ∈ UJset ε) ∧ (g ∈ Kset (ε ∘ s) ↔ g.submatrix s.symm s.symm ∈ Kset ε) ∧ (inP (ε ∘ s) g ↔ inP ε (g.submatrix s.symm s.symm)) ∧ NormedSpace.exp (g.submatrix s.symm s.symm) = (NormedSpace.exp g).submatrix s.symm s.symm) ∧ ∀ (f : Matrix (Fin n) (Fin n) ℂ → ℂ) (p : ENNReal), (MemLp (fun g : UJ ε => f (umat g)) p (muG ε) ↔ MemLp (fun g : UJ (ε ∘ s) => f ((umat g).submatrix s.symm s.symm)) p (muG (ε ∘ s))) ∧ (MemLp (fun g : UJ ε => f (umat g)) p (muG ε) ↔ MemLp (fun g : UJ ε => f ((umat g).map star)) p (muG ε)) := by
  intro n ε s
  have hpm : ∀ (t : Equiv.Perm (Fin n)) (x : Matrix (Fin n) (Fin n) ℂ), permM t x = perm t x :=
    fun t x => (perm_apply t x).symm
  have hcont : ∀ t : Equiv.Perm (Fin n), Continuous (permM t) := fun t => by
    have h : ⇑(permM t) = ⇑(perm t) := funext (hpm t)
    rw [h]
    exact perm_cont t
  refine ⟨fun g => ⟨?_, ?_, ?_, ?_⟩, fun f p => ⟨?_, ?_⟩⟩
  · rw [← perm_apply]; exact perm_UJ ε s g
  · rw [← perm_apply]; exact perm_K ε s g
  · rw [← perm_apply]; exact perm_P ε s g
  · rw [← perm_apply, ← perm_apply]; exact perm_exp s g
  · refine memLp_hom (permM s) (permM s.symm) (fun g hg => ?_) (fun g hg => ?_) (hcont s)
      (hcont s.symm) (permM_symm s) (permM_symm' s) f p
    · rw [hpm]; exact (perm_UJ ε s g).1 hg
    · apply (perm_UJ ε s _).2
      rw [← hpm, permM_symm']
      exact hg
  · exact memLp_hom GlobalTheory.Dec.PermGroup.conj GlobalTheory.Dec.PermGroup.conj (fun g hg => FormF.UJ_star hg)
      (fun g hg => FormF.UJ_star hg) conj_cont conj_cont (fun g => FormF.map_star_star g)
      (fun g => FormF.map_star_star g) f p

end GlobalTheory.Dec.PermGroup
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryGroupStructuresPermConjInvariant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.SqIntIrrPerm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.SqIntIrrPerm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.PosPartUnitaryMul\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TraceTransposePow\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryGroupStructuresPermConjInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LayerProd\nimport Development.AbelianVarietyTheory.Statements.CuspFrameWeights.EigenfunctionFiniteCoefficients\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Finset Formalism.MainNotions.S Formalism.REAL Formalism.QuantumDeterminants GlobalTheory.Count GlobalTheory.Dec GlobalTheory.DSId
open scoped InnerProductSpace ComplexOrder

noncomputable section
namespace GlobalTheory.DSId.PermK

open GlobalTheory.Dec.FormF

variable {n : ℕ}

lemma comp_symm {α : Type} (f : Fin n → α) (s : Equiv.Perm (Fin n)) : (f ∘ s) ∘ s.symm = f := by
  funext x
  simp

lemma K_back {ε : Fin n → Bool} (s : Equiv.Perm (Fin n)) {g : Matrix (Fin n) (Fin n) ℂ} (h : g ∈ Kset (ε ∘ s)) :
    g.submatrix s.symm s.symm ∈ Kset ε := by
  have h' := GlobalTheory.Dec.FormF.K_perm s.symm h
  rwa [PermK.comp_symm] at h'

lemma UJ_back {ε : Fin n → Bool} (s : Equiv.Perm (Fin n)) {g : Matrix (Fin n) (Fin n) ℂ} (h : g ∈ UJset (ε ∘ s)) :
    g.submatrix s.symm s.symm ∈ UJset ε := by
  have h' := GlobalTheory.Dec.FormF.UJ_perm s.symm h
  rwa [PermK.comp_symm] at h'

lemma lt_iff {ε : Fin n → Bool} {s : Equiv.Perm (Fin n)} (hs : ∀ a b, a < b → ε (s a) = ε (s b) → s a < s b)
    {a b : Fin n} (h : ε (s a) = ε (s b)) : s a < s b ↔ a < b := by
  constructor
  · intro hlt
    rcases lt_trichotomy a b with hab | rfl | hab
    · exact hab
    · exact absurd hlt (lt_irrefl _)
    · exact absurd (hs b a hab h.symm) (not_lt.mpr hlt.le)
  · intro hab
    exact hs a b hab h

lemma mono_symm {ε : Fin n → Bool} {s : Equiv.Perm (Fin n)} (hs : ∀ a b, a < b → ε (s a) = ε (s b) → s a < s b) :
    ∀ a b, a < b → (ε ∘ s) (s.symm a) = (ε ∘ s) (s.symm b) → s.symm a < s.symm b := by
  intro a b hab he
  have he' : ε (s (s.symm a)) = ε (s (s.symm b)) := he
  exact (PermK.lt_iff hs he').1 (by simpa using hab)

lemma cdom_perm {ε : Fin n → Bool} {s : Equiv.Perm (Fin n)} (hs : ∀ a b, a < b → ε (s a) = ε (s b) → s a < s b)
    {μ Λ : Fin n → ℝ} (h : CDom ε μ Λ) : CDom (ε ∘ s) (μ ∘ s) (Λ ∘ s) := by
  unfold CDom at h ⊢
  obtain ⟨c, hc, hsum⟩ := h
  refine ⟨fun a b => c (s a) (s b), fun a b hab => ?_, ?_⟩
  · obtain ⟨h1, h2⟩ := hc _ _ hab
    exact ⟨(PermK.lt_iff hs h2).1 h1, h2⟩
  · funext x
    have hx := congrFun hsum (s x)
    simp only [Pi.sub_apply, Function.comp_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul] at hx ⊢
    rw [hx]
    symm
    refine Fintype.sum_equiv s _ _ (fun a => ?_)
    refine Fintype.sum_equiv s _ _ (fun b => ?_)
    simp [Formalism.REAL.root, Pi.single_apply]

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

lemma wt_perm {ε : Fin n → Bool} (s : Equiv.Perm (Fin n)) {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)}
    {μ : Fin n → ℝ} {v : H} (h : IsWtOn (Kset ε) σ μ v) :
    IsWtOn (Kset (ε ∘ s)) (fun g => σ (g.submatrix s.symm s.symm)) (μ ∘ s) v := by
  intro θ hθ
  have hmem := PermK.K_back s hθ
  beta_reduce
  rw [Matrix.submatrix_diagonal_equiv] at hmem ⊢
  have key := h (θ ∘ s.symm) hmem
  have hsum : (∑ a, μ a * (θ ∘ s.symm) a) = ∑ a, (μ ∘ s) a * θ a :=
    Fintype.sum_equiv s.symm _ _ (fun a => by simp)
  rw [← hsum]
  exact key

lemma stable_perm {ε : Fin n → Bool} (s : Equiv.Perm (Fin n)) (σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H))
    (S : Submodule ℂ H) :
    IsKStableOn (ε ∘ s) (fun g => σ (g.submatrix s.symm s.symm)) S ↔ IsKStableOn ε σ S := by
  unfold IsKStableOn
  constructor
  · intro H' g hg v hv
    have := H' (g.submatrix s s) (GlobalTheory.Dec.FormF.K_perm s hg) v hv
    simpa [Matrix.submatrix_submatrix] using this
  · intro H' g hg v hv
    exact H' _ (PermK.K_back s hg) v hv

lemma ktype_perm {ε : Fin n → Bool} {s : Equiv.Perm (Fin n)} (hs : ∀ a b, a < b → ε (s a) = ε (s b) → s a < s b)
    {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {μ : Fin n → ℝ} {S : Submodule ℂ H} (h : IsKTypeOf ε σ μ S) :
    IsKTypeOf (ε ∘ s) (fun g => σ (g.submatrix s.symm s.symm)) (μ ∘ s) S := by
  unfold IsKTypeOf at h ⊢
  obtain ⟨hfd, hst, hirr, ⟨v, hvS, hv0, hwt⟩, hdom⟩ := h
  refine ⟨hfd, (PermK.stable_perm s σ S).2 hst,
    fun S' hle hS' => hirr S' hle ((PermK.stable_perm s σ S').1 hS'), ⟨v, hvS, hv0, PermK.wt_perm s hwt⟩, ?_⟩
  intro μ' w hwS hw0 hw
  have hw' := PermK.wt_perm s.symm hw
  rw [PermK.comp_symm] at hw'
  simp only [Equiv.symm_symm, Matrix.submatrix_submatrix, Equiv.self_comp_symm, Matrix.submatrix_id_id] at hw'
  have hc := PermK.cdom_perm hs (hdom (μ' ∘ s.symm) w hwS hw0 hw')
  have e : (μ' ∘ s.symm) ∘ s = μ' := by
    funext a
    simp
  rwa [e] at hc

lemma sqIntIrr_perm {ε : Fin n → Bool} (s : Equiv.Perm (Fin n))
    {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} (h : IsSqIntIrr ε σ) :
    IsSqIntIrr (ε ∘ s) (fun g => σ (g.submatrix s.symm s.symm)) := by
  unfold IsSqIntIrr IsURepOn Formalism.QuantumDeterminants.IsCRepOn IsIrredOn IsSqIntOn at h ⊢
  obtain ⟨hc, hn, ⟨⟨h1, hmul⟩, hiso, hcont⟩, hirr, hsq⟩ := h
  refine ⟨hc, hn, ⟨⟨?_, ?_⟩, ?_, ?_⟩, ?_, ?_⟩
  · simpa [Matrix.submatrix_one_equiv] using h1
  · intro a ha b hb
    beta_reduce
    rw [← Matrix.submatrix_mul_equiv _ _ _ s.symm _]
    exact hmul _ (PermK.UJ_back s ha) _ (PermK.UJ_back s hb)
  · intro g hg w
    exact hiso _ (PermK.UJ_back s hg) w
  · intro w
    exact (hcont w).comp (continuous_id.matrix_submatrix _ _).continuousOn (fun g hg => PermK.UJ_back s hg)
  · intro S hS hst
    apply hirr S hS
    intro g hg w hw
    have := hst (g.submatrix s s) (GlobalTheory.Dec.FormF.UJ_perm s hg) w hw
    simpa [Matrix.submatrix_submatrix] using this
  · intro v w
    exact ((_root_.GlobalTheory.Dec.PermGroup.permGroup _ ε s).2 (fun x => ⟪w, σ x v⟫_ℂ) 2).1.mp (hsq v w)

theorem permKType : ∀ (n : ℕ) (ε : Fin n → Bool) (s : Equiv.Perm (Fin n)) (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] (σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)), (∀ a b, a < b → ε (s a) = ε (s b) → s a < s b) → (∀ (μ : Fin n → ℝ) (S : Submodule ℂ H), IsKTypeOf ε σ μ S ↔ IsKTypeOf (ε ∘ s) (fun g => σ (g.submatrix s.symm s.symm)) (μ ∘ s) S) ∧ (IsSqIntIrr ε σ → IsSqIntIrr (ε ∘ s) (fun g => σ (g.submatrix s.symm s.symm))) := by
  intro n ε s H _ _ σ hs
  have hs' := PermK.mono_symm hs
  refine ⟨fun μ S => ⟨PermK.ktype_perm hs, fun h => ?_⟩, PermK.sqIntIrr_perm s⟩
  have h2 := PermK.ktype_perm hs' h
  rw [PermK.comp_symm, PermK.comp_symm] at h2
  simpa only [Equiv.symm_symm, Matrix.submatrix_submatrix, Equiv.self_comp_symm, Matrix.submatrix_id_id] using h2

end GlobalTheory.DSId.PermK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.SqIntIrrPerm =====

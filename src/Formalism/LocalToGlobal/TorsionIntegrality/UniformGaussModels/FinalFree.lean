module

public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.UniformGaussModelConditionEquivalent
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.IdealPowPrincipal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobalLUnit
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NormLeOneOfRoot
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NsmulRelIdxMem
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.DetMemOfEntries
public import Formalism.PeriodIntegrals.UnitDetRoot
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharactersFactAltForm
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep
public import Mathlib.CategoryTheory.Category.Basic
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.MemLatticeFourfoldOfMemDualLattice
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.Assembly
public import Mathlib.NumberTheory.GaussSum
public import Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.NumberTheory.LegendreSymbol.Basic
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocAbs
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ExistsUnitVec
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HfSelfProj
public import Mathlib.Algebra.BigOperators.Fin
public import Mathlib.Data.Matrix.Basic
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Matrix.ToLin
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormAddLeKur
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.IsUnitaryK
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementL
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OneLetterGaussSharpTranslateHolds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementK, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobTop, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobVol, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobFin, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.UnitDetRootOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.Partial, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitDetRoot, Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.FinalKappa, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.BlockDiagMulBlockShift, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ConjMatrixApply, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.PadicNormDivLeOne, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.AreaCmLNe, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.DeltaMem, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormIntKur, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameOfLocCore, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.InsSuccAbove, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.CardEqOfMulEqOne, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.TransposeMulBlockDiagMul, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocMain, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameHolds, Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.FinalFree

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementK =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementK", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.UniformGaussModelConditionEquivalent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.Top

open Formalism.InvariantFactorPaths.G7 (UnrOK)
open Formalism.L2.Th1.CM (MaximalUnramifiedExtension)
open Formalism.L2.Th1.H (cmL CmOK matH stdH stdLat blk4 pow4 imgLat relIdx IsIsom)

def FrameExistsH : Prop :=
  ∀ (a₀ : ℕ) (b₀ c₀ : ℤ) (dK : ℕ) (ha : 0 < a₀) (hdK : 0 < dK) (lam : ℂ) (hlam : lam ≠ 0), CmOK a₀ b₀ c₀ dK →
  ∀ (l : ℕ) [Fact l.Prime], 5 ≤ l → ¬ l ∣ dK → (¬ ∃ a : ZMod l, a ^ 2 = -(dK : ZMod l)) →
  ∀ (ι : ℂ ≃+* ℂ_[l]) (σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l), UnrOK (MaximalUnramifiedExtension l) l σ →
  ∀ (n : Type) [Fintype n] [DecidableEq n] (h : Matrix n n ℂ) (Λ : AddSubgroup (n → ℂ))
    (g₀ g₁ : (Fin 4 × n → ℂ) ≃ₗ[ℂ] (Fin 4 × n → ℂ)), IsLatH (cmL a₀ b₀ dK ha hdK lam hlam) b₀ dK h Λ g₀ →
    IsIsom (matH (blk4 h)) (stdH (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n))
      (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) →
    ¬ l ∣ relIdx (stdLat (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n))
      (imgLat (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) (pow4 Λ)) →
    ∃ (γ : Matrix (Fin 4 × n) (Fin 4 × n) (MaximalUnramifiedExtension l)) (B' : Matrix n n ℂ_[l]), IsFrameH σ ι g₁ γ B'

end Formalism.L2.Th1.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementK =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobTop =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobTop", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.IdealPowPrincipal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobalLUnit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NormLeOneOfRoot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NsmulRelIdxMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped NumberField

namespace PI.UnitaryGroupMassFormula.UnitDetRoot

open PI Submodule NumberField

lemma isIntegral_algebraMap_O (F : IntermediateField ℚ ℂ) (o : 𝓞 F) :
    IsIntegral ℤ (algebraMap (𝓞 F) ℂ o) := by
  first
    | exact (NumberField.RingOfIntegers.isIntegral o).algebraMap

lemma lunit_of (F : IntermediateField ℚ ℂ) {α β u : ℂ} {k l : ℕ} (hα : α ≠ 0) (hβ : β ≠ 0) (hu : u ≠ 0)
    (hl : ¬ l ∣ k)
    (h1 : span (𝓞 F) {(k : ℂ) * α} ≤ span (𝓞 F) {u * β})
    (h2 : span (𝓞 F) {(k : ℂ) * (u * β)} ≤ span (𝓞 F) {α}) :
    IsLUnit l (α / β / u) := by
  refine ⟨div_ne_zero (div_ne_zero hα hβ) hu, k, hl, ?_, ?_⟩
  · obtain ⟨o, ho⟩ := Submodule.mem_span_singleton.mp (h1 (Submodule.mem_span_singleton_self _))
    rw [Algebra.smul_def] at ho
    have e : (k : ℂ) * (α / β / u) = algebraMap (𝓞 F) ℂ o := by
      field_simp
      first | linear_combination ho | linear_combination -ho
    rw [e]
    exact isIntegral_algebraMap_O F o
  · obtain ⟨o, ho⟩ := Submodule.mem_span_singleton.mp (h2 (Submodule.mem_span_singleton_self _))
    rw [Algebra.smul_def] at ho
    have e : (k : ℂ) * (α / β / u)⁻¹ = algebraMap (𝓞 F) ℂ o := by
      field_simp
      first | linear_combination ho | linear_combination -ho
    rw [e]
    exact isIntegral_algebraMap_O F o

lemma ne_bot_of_smul {F : IntermediateField ℚ ℂ} {S T : Submodule (𝓞 F) ℂ} {c : ℂ} (hc : c ≠ 0)
    (hST : span (𝓞 F) {c} * S ≤ T) (hS : S ≠ ⊥) : T ≠ ⊥ := by
  obtain ⟨x, hxS, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hS
  intro hT
  have hmem : c * x ∈ span (𝓞 F) {c} * S :=
    Submodule.mul_mem_mul (Submodule.mem_span_singleton_self c) hxS
  have h2 := hST hmem
  rw [hT, Submodule.mem_bot] at h2
  exact mul_ne_zero hc hx0 h2

theorem globalLUnit_of
    (hV1 : ∀ (F : IntermediateField ℚ ℂ) (m : Type) [Fintype m] [DecidableEq m] (Λ Λ' : AddSubgroup (m → ℂ))
      (c : ℂ), (∀ x ∈ Λ, c • x ∈ Λ') → span (𝓞 F) {c ^ Fintype.card m} * vol F Λ ≤ vol F Λ')
    (hV2 : ∀ (F : IntermediateField ℚ ℂ) (m : Type) [Fintype m] [DecidableEq m]
      (δ : (m → ℂ) ≃ₗ[ℂ] (m → ℂ)) (Λ : AddSubgroup (m → ℂ)),
      vol F (UnitDetRootDefs.imgLat (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λ) =
        span (𝓞 F) {LinearMap.det (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ))} * vol F Λ)
    (hV3 : ∀ (a : ℕ) (b c : ℤ) (d : ℕ) (ha : 0 < a) (hd : 0 < d) (lam : ℂ) (hlam : lam ≠ 0)
      (m : Type) [Fintype m] [DecidableEq m], UnitDetRootDefs.CmOK a b c d →
      vol (KF b d) (UnitDetRootDefs.stdLat (UnitDetRootDefs.cmL a b d ha hd lam hlam) m) ≤ span (𝓞 (KF b d)) {lam ^ Fintype.card m})
    (hV4 : ∀ (a : ℕ) (b c : ℤ) (d : ℕ) (ha : 0 < a) (hd : 0 < d) (lam : ℂ) (hlam : lam ≠ 0)
      (m : Type) [Fintype m] [DecidableEq m], UnitDetRootDefs.CmOK a b c d →
      vol (KF b d) (UnitDetRootDefs.stdLat (UnitDetRootDefs.cmL a b d ha hd lam hlam) m) ≠ ⊥) :
    GlobalLUnit := by
  intro a b c d ha hd lam hlam m _ _ Λa hH
  obtain ⟨hok, -, -, hi1, hi2⟩ := hH
  have : FiniteDimensional ℚ (KF b d) := IntermediateField.adjoin.finiteDimensional (theta_isIntegral hok)
  have : NumberField (KF b d) := { }
  set F := KF b d with hFdef
  set Lt := UnitDetRootDefs.stdLat (UnitDetRootDefs.cmL a b d ha hd lam hlam) m with hLt
  set N1 := UnitDetRootDefs.relIdx Lt Λa with hN1
  set N2 := UnitDetRootDefs.relIdx Λa Lt with hN2
  set e := Fintype.card m with he
  set h := hF F with hh
  have hN10 : (N1 : ℂ) ≠ 0 := by exact_mod_cast hi1
  have hN20 : (N2 : ℂ) ≠ 0 := by exact_mod_cast hi2
  have hL0 : vol F Lt ≠ ⊥ := hV4 a b c d ha hd lam hlam m hok
  have hLle : vol F Lt ≤ span (𝓞 F) {lam ^ e} := hV3 a b c d ha hd lam hlam m hok
  have hA1 : span (𝓞 F) {(N1 : ℂ) ^ e} * vol F Λa ≤ vol F Lt :=
    hV1 F m Λa Lt _ fun x hx => by rw [Nat.cast_smul_eq_nsmul]; exact nsmul_relIdx_mem Lt Λa hx
  have hA2 : span (𝓞 F) {(N2 : ℂ) ^ e} * vol F Lt ≤ vol F Λa :=
    hV1 F m Lt Λa _ fun x hx => by rw [Nat.cast_smul_eq_nsmul]; exact nsmul_relIdx_mem Λa Lt hx
  have hA0 : vol F Λa ≠ ⊥ := ne_bot_of_smul (pow_ne_zero _ hN20) hA2 hL0
  have hAle : vol F Λa ≤ span (𝓞 F) {lam ^ e / (N1 : ℂ) ^ e} := by
    intro x hx
    obtain ⟨o, ho⟩ := mem_span_singleton.mp (hLle (hA1 (mul_mem_mul (mem_span_singleton_self _) hx)))
    rw [mem_span_singleton]
    refine ⟨o, ?_⟩
    rw [Algebra.smul_def] at ho ⊢
    rw [mul_div_assoc', div_eq_iff (pow_ne_zero _ hN10)]
    linear_combination ho
  obtain ⟨y1, hy1, e1⟩ := sub_pow_principal F (vol F Lt) hL0 (lam ^ e) (pow_ne_zero _ hlam) hLle
  obtain ⟨y2, hy2, e2⟩ := sub_pow_principal F (vol F Λa) hA0 (lam ^ e / (N1 : ℂ) ^ e)
    (div_ne_zero (pow_ne_zero _ hlam) (pow_ne_zero _ hN10)) hAle
  have hy1' : (y1 : ℂ) ≠ 0 := fun h0 => hy1 (Subtype.ext h0)
  have hy2' : (y2 : ℂ) ≠ 0 := fun h0 => hy2 (Subtype.ext h0)
  set α := (lam ^ e) ^ h * (y1 : ℂ) with hα
  set β := (lam ^ e / (N1 : ℂ) ^ e) ^ h * (y2 : ℂ) with hβ
  have hα0 : α ≠ 0 := mul_ne_zero (pow_ne_zero _ (pow_ne_zero _ hlam)) hy1'
  have hβ0 : β ≠ 0 :=
    mul_ne_zero (pow_ne_zero _ (div_ne_zero (pow_ne_zero _ hlam) (pow_ne_zero _ hN10))) hy2'
  have hγ : α / β = (N1 : ℂ) ^ (e * h) * (y1 : ℂ) / (y2 : ℂ) := by
    rw [hα, hβ, div_pow, pow_mul]
    field_simp
  have hγmem : α / β ∈ KF b d := by
    rw [hγ]
    exact div_mem (mul_mem (pow_mem (IntermediateField.natCast_mem _ N1) _) y1.2) y2.2
  have hpos : 0 < h := Fintype.card_pos
  refine ⟨α / β, hγmem, div_ne_zero hα0 hβ0, h, hpos, ?_⟩
  intro l _ δ _ hE
  obtain ⟨k, hk, hk1, hk2⟩ := hE
  set u := LinearMap.det (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) with hu
  have hu0 : u ≠ 0 := (LinearEquiv.isUnit_det' δ).ne_zero
  have hvi := hV2 F m δ Λa
  have i1 : span (𝓞 F) {(k : ℂ) ^ e} * vol F Lt ≤ span (𝓞 F) {u} * vol F Λa :=
    hvi ▸ hV1 F m _ _ _ hk1
  have i2 : span (𝓞 F) {(k : ℂ) ^ e} * (span (𝓞 F) {u} * vol F Λa) ≤ vol F Lt :=
    hvi ▸ hV1 F m _ _ _ hk2
  have j1 := sub_pow_le F i1 h
  have j2 := sub_pow_le F i2 h
  rw [mul_pow, mul_pow, span_single_pow, span_single_pow, e1, e2, span_single_mul,
    span_single_mul] at j1
  rw [mul_pow, mul_pow, span_single_pow, span_single_pow, e1, e2, span_single_mul,
    span_single_mul] at j2
  have hkc : ((k : ℂ) ^ e) ^ h = ((k ^ (e * h) : ℕ) : ℂ) := by push_cast; rw [pow_mul]
  rw [hkc] at j1 j2
  have hl : ¬ l ∣ k ^ (e * h) := fun hd' => hk ((Fact.out : l.Prime).dvd_of_dvd_pow hd')
  exact lunit_of F hα0 hβ0 (pow_ne_zero _ hu0) hl j1 j2

end PI.UnitaryGroupMassFormula.UnitDetRoot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobTop =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobVol =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobVol", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.IdealPowPrincipal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.DetMemOfEntries\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NormLeOneOfRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped NumberField ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnitDetRoot

open PI

section Vol

variable (F : IntermediateField ℚ ℂ) {m : Type} [Fintype m] [DecidableEq m]

lemma vol_smul_le {Λ Λ' : AddSubgroup (m → ℂ)} (c : ℂ) (h : ∀ x ∈ Λ, c • x ∈ Λ') :
    Submodule.span (𝓞 F) {c ^ Fintype.card m} * vol F Λ ≤ vol F Λ' := by
  unfold vol volSet
  rw [Submodule.span_mul_span]
  apply Submodule.span_le.mpr
  rintro _ ⟨x, hx, _, ⟨v, hv, rfl⟩, rfl⟩
  obtain rfl := Set.mem_singleton_iff.mp hx
  apply Submodule.subset_span
  refine ⟨fun j => c • v j, fun j => h _ (hv j), ?_⟩
  rw [show (Matrix.of fun j => c • v j) = c • Matrix.of v from by ext i j; rfl, Matrix.det_smul]

lemma det_rows_map (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (w : m → m → ℂ) :
    (Matrix.of fun j => δ (w j)).det = LinearMap.det δ * (Matrix.of w).det := by
  have h : Matrix.of (fun j => δ (w j)) = Matrix.of w * Matrix.transpose (LinearMap.toMatrix' δ) := by
    ext j i
    rw [Matrix.of_apply, ← LinearMap.toMatrix'_mulVec]
    simp only [Matrix.mulVec, dotProduct, Matrix.mul_apply, Matrix.transpose_apply, Matrix.of_apply]
    exact Finset.sum_congr rfl (fun k _ => mul_comm _ _)
  rw [h, Matrix.det_mul, Matrix.det_transpose, LinearMap.det_toMatrix', mul_comm]

lemma vol_img (δ : (m → ℂ) ≃ₗ[ℂ] (m → ℂ)) (Λ : AddSubgroup (m → ℂ)) :
    vol F (UnitDetRootDefs.imgLat (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) Λ)
      = Submodule.span (𝓞 F) {LinearMap.det (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ))} * vol F Λ := by
  unfold UnitDetRootDefs.imgLat vol volSet
  rw [Submodule.span_mul_span]
  congr 1
  ext z
  constructor
  · rintro ⟨v, hv, rfl⟩
    choose w hw hwv using fun j => AddSubgroup.mem_map.mp (hv j)
    refine Set.mem_mul.mpr ⟨_, Set.mem_singleton _, _, ⟨w, hw, rfl⟩, ?_⟩
    have hv' : v = fun j => (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (w j) := funext fun j => (hwv j).symm
    rw [hv', det_rows_map]
  · intro hz
    obtain ⟨_, h1, _, ⟨w, hw, rfl⟩, rfl⟩ := Set.mem_mul.mp hz
    obtain rfl := Set.mem_singleton_iff.mp h1
    refine ⟨fun j => (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (w j), fun j => AddSubgroup.mem_map.mpr ⟨w j, hw j, rfl⟩, ?_⟩
    rw [det_rows_map]

end Vol

def thetaO {a : ℕ} {b c : ℤ} {d : ℕ} (hok : UnitDetRootDefs.CmOK a b c d) : 𝓞 (KF b d) :=
  ⟨⟨UnitDetRootDefs.cmTheta b d, theta_mem b d⟩, by
    rw [mem_integralClosure_iff]
    refine ⟨Polynomial.X ^ 2 - Polynomial.C b * Polynomial.X + Polynomial.C ((a : ℤ) * c), ?_, ?_⟩
    · monicity!
    · apply (KF b d).val.injective
      have h : ((KF b d).val.toRingHom) ((Polynomial.X ^ 2 - Polynomial.C b * Polynomial.X +
          Polynomial.C ((a : ℤ) * c)).eval₂ (algebraMap ℤ (KF b d)) ⟨UnitDetRootDefs.cmTheta b d, theta_mem b d⟩)
          = (Polynomial.X ^ 2 - Polynomial.C b * Polynomial.X +
          Polynomial.C ((a : ℤ) * c)).eval₂ (Int.castRingHom ℂ) (UnitDetRootDefs.cmTheta b d) := by
        rw [Polynomial.hom_eval₂, RingHom.ext_int ((KF b d).val.toRingHom.comp (algebraMap ℤ (KF b d)))
          (Int.castRingHom ℂ)]
        rfl
      change ((KF b d).val.toRingHom) _ = (KF b d).val 0
      rw [h, map_zero]
      rw [Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_mul, Polynomial.eval₂_X_pow,
        Polynomial.eval₂_C, Polynomial.eval₂_C, Polynomial.eval₂_X]
      simp only [eq_intCast, Int.cast_mul, Int.cast_natCast]
      linear_combination theta_sq hok⟩

lemma algebraMap_thetaO {a : ℕ} {b c : ℤ} {d : ℕ} (hok : UnitDetRootDefs.CmOK a b c d) :
    algebraMap (𝓞 (KF b d)) ℂ (thetaO hok) = UnitDetRootDefs.cmTheta b d := by
  rfl

lemma vol_std_le {a : ℕ} {b c : ℤ} {d : ℕ} {ha : 0 < a} {hd : 0 < d} {lam : ℂ} {hlam : lam ≠ 0}
    (hok : UnitDetRootDefs.CmOK a b c d) {m : Type} [Fintype m] [DecidableEq m] :
    vol (KF b d) (UnitDetRootDefs.stdLat (UnitDetRootDefs.cmL a b d ha hd lam hlam) m) ≤ Submodule.span (𝓞 (KF b d)) {lam ^ Fintype.card m} := by
  unfold vol volSet UnitDetRootDefs.stdLat
  apply Submodule.span_le.mpr
  rintro _ ⟨v, hv, rfl⟩
  have h1 : ∀ j i, v j i ∈ (UnitDetRootDefs.cmL a b d ha hd lam hlam).lattice :=
    fun j i => (show ∀ i ∈ (Set.univ : Set m), v j i ∈ _ from hv j) i (Set.mem_univ i)
  clear hv
  have hent : ∀ j i, ∃ o : 𝓞 (KF b d), v j i = lam * algebraMap (𝓞 (KF b d)) ℂ o := by
    intro j i
    have h2 := h1 j i
    simp only [PeriodPair.lattice, UnitDetRootDefs.cmL, UnitDetRootDefs.scalePair,
      UnitDetRootDefs.cmPair] at h2
    obtain ⟨p, q, hpq⟩ := Submodule.mem_span_pair.mp h2
    refine ⟨p * (a : 𝓞 (KF b d)) + q * thetaO hok, ?_⟩
    rw [← hpq]
    simp only [map_add (f := _), map_mul, algebraMap_thetaO, map_intCast, map_natCast, zsmul_eq_mul]
    ring
  choose o ho using hent
  have hM : Matrix.of v = lam • (algebraMap (𝓞 (KF b d)) ℂ).mapMatrix (Matrix.of o) := by
    ext j i
    simp [ho j i]
  rw [hM, Matrix.det_smul, ← RingHom.map_det]
  refine Submodule.mem_span_singleton.mpr ⟨(Matrix.of o).det, ?_⟩
  rw [Algebra.smul_def, mul_comm]

lemma vol_std_ne_bot {a : ℕ} {b : ℤ} {d : ℕ} {ha : 0 < a} {hd : 0 < d} {lam : ℂ} {hlam : lam ≠ 0}
    {m : Type} [Fintype m] [DecidableEq m] :
    vol (KF b d) (UnitDetRootDefs.stdLat (UnitDetRootDefs.cmL a b d ha hd lam hlam) m) ≠ ⊥ := by
  unfold vol volSet UnitDetRootDefs.stdLat
  rw [Submodule.ne_bot_iff]
  refine ⟨(Matrix.of fun (j i : m) => if i = j then lam * (a : ℂ) else 0).det,
    Submodule.subset_span ⟨_, fun j => ?_, rfl⟩, ?_⟩
  · refine fun i _ => ?_
    show (if i = j then lam * (a : ℂ) else 0) ∈ (UnitDetRootDefs.cmL a b d ha hd lam hlam).lattice
    have hω : lam * (a : ℂ) ∈ (UnitDetRootDefs.cmL a b d ha hd lam hlam).lattice := by
      simp only [PeriodPair.lattice, UnitDetRootDefs.cmL, UnitDetRootDefs.scalePair,
        UnitDetRootDefs.cmPair]
      exact Submodule.subset_span (Set.mem_insert _ _)
    by_cases h : i = j
    · rw [if_pos h]
      exact hω
    · rw [if_neg h]
      exact zero_mem _
  · have hD : (Matrix.of fun (j i : m) => if i = j then lam * (a : ℂ) else 0) =
        Matrix.diagonal (fun _ => lam * (a : ℂ)) := by
      ext i j
      by_cases h : i = j <;> simp [h, eq_comm]
    rw [hD, Matrix.det_diagonal, Finset.prod_const]
    exact pow_ne_zero _ (mul_ne_zero hlam (by exact_mod_cast ha.ne'))

end PI.UnitaryGroupMassFormula.UnitDetRoot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobVol =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobFin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobFin", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobalLUnit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobTop\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobVol\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped NumberField

namespace PI.UnitaryGroupMassFormula.UnitDetRoot

open PI

theorem globalLUnit : GlobalLUnit :=
  globalLUnit_of
    (fun F _ _ _ _ _ c h => vol_smul_le F c h)
    (fun F _ _ _ δ Λ => vol_img F δ Λ)
    (fun _ _ _ _ _ _ _ _ _ _ _ hok => vol_std_le hok)
    (fun _ _ _ _ _ _ _ _ _ _ _ _ => vol_std_ne_bot)

end PI.UnitaryGroupMassFormula.UnitDetRoot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobFin =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.UnitDetRootOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.UnitDetRootOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobalLUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped ComplexConjugate

namespace PI.UnitaryGroupMassFormula.UnitDetRoot

open PI

theorem unitDetRoot_of (h1 : DetInK) (h2 : LocalStd) (h3 : GlobalLUnit) (h4 : NormOne)
    (h5 : RootStep) (h6 : ConjMem) (h7 : ConjLUnit) : PI.UnitDetRoot := by
  intro a b c d ha hd lam hlam hOK m _ _ Λa hSD hθ hi1 hi2
  have hH : Hyp a b c d ha hd lam hlam m Λa := ⟨hOK, hSD, hθ, hi1, hi2⟩
  obtain ⟨γ, hγK, hγ0, n, hn, hγ⟩ := h3 a b c d ha hd lam hlam m Λa hH
  have hγc0 : conj γ ≠ 0 := (map_ne_zero (starRingEnd ℂ)).mpr hγ0
  have hβK : γ / conj γ ∈ KF b d := div_mem hγK (h6 b d γ hγK)
  have hββ : γ / conj γ * conj (γ / conj γ) = 1 := by
    rw [map_div₀, Complex.conj_conj]
    field_simp
  obtain ⟨κ, hκN, hκalg, hκσ⟩ := h5 a b c d hOK (γ / conj γ) hβK hββ (4 * n) (by omega)
  refine ⟨κ, ?_, hκalg, hκσ, ?_⟩
  · rintro rfl
    rw [zero_pow (by omega), eq_comm, inv_eq_zero, div_eq_zero_iff] at hκN
    exact hκN.elim hγ0 hγc0
  · intro l _ ι δ hIso hidx1 hnl hidx2
    have hA : admitted a b d ha hd lam hlam m Λa δ := ⟨hIso, hidx1, hidx2⟩
    have hEq := h2 a b c d ha hd lam hlam m Λa hH l δ hA hnl
    have hU := hγ l δ hA hEq
    have n1 := h4 l ι _ hU
    have n2 := h4 l ι _ (h7 l _ hU)
    obtain ⟨-, hdd⟩ := h1 a b c d ha hd lam hlam m Λa hH δ hA
    set D := LinearMap.det (δ : (m → ℂ) →ₗ[ℂ] (m → ℂ)) with hD
    have hD0 : D ≠ 0 := by
      rintro h
      rw [h, zero_mul] at hdd
      exact zero_ne_one hdd
    have hDc : conj D = D⁻¹ := eq_inv_of_mul_eq_one_right hdd
    have hu0 : 0 < ‖ι D‖ := norm_pos_iff.mpr ((map_ne_zero ι).mpr hD0)
    have hDc0 : conj D ≠ 0 := (map_ne_zero (starRingEnd ℂ)).mpr hD0
    have n1' : ‖ι γ‖ = ‖ι D‖ ^ n := by
      have e : γ = (γ / D ^ n) * D ^ n := by field_simp
      rw [e, map_mul, norm_mul, n1, one_mul, map_pow, norm_pow]
    have n2' : ‖ι (conj γ)‖ = ‖ι D‖⁻¹ ^ n := by
      have e : conj γ = conj (γ / D ^ n) * (conj D) ^ n := by
        rw [map_div₀, map_pow]
        field_simp
      rw [e, map_mul, norm_mul, n2, one_mul, map_pow, norm_pow, hDc, map_inv₀, norm_inv]
    have e3 : ‖ι κ‖ ^ (4 * n) = ‖ι (conj γ)‖ / ‖ι γ‖ := by
      rw [← norm_pow, ← map_pow, hκN, inv_div, map_div₀, norm_div]
    have ht : (‖ι κ‖ ^ 2 * ‖ι D‖) ^ (2 * n) = 1 := by
      rw [mul_pow, ← pow_mul, show 2 * (2 * n) = 4 * n by ring, e3, n1', n2', inv_pow]
      field_simp
      ring
    exact (pow_eq_one_iff_of_nonneg (by positivity) (by omega)).mp ht

end PI.UnitaryGroupMassFormula.UnitDetRoot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.UnitDetRootOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.Partial =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.Partial", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobalLUnit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.DetMemOfEntries\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NormLeOneOfRoot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NsmulRelIdxMem\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.UnitDetRootOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryGroupMassFormula.UnitDetRoot

theorem unitDetRoot_of_global (h : GlobalLUnit) : PI.UnitDetRoot :=
  unitDetRoot_of detInK localStd h normOne rootStep conjMem conjLUnit

end PI.UnitaryGroupMassFormula.UnitDetRoot
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.Partial =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitDetRoot =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitDetRoot", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitDetRoot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobFin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.Partial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem unit_det_root_of_unity : PI.UnitDetRoot :=
  PI.UnitaryGroupMassFormula.UnitDetRoot.unitDetRoot_of_global PI.UnitaryGroupMassFormula.UnitDetRoot.globalLUnit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitDetRoot =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.FinalKappa =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.FinalKappa", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharactersFactAltForm\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnitDetRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.H

theorem kappaExists : KappaExists := unit_det_root_of_unity

end Formalism.L2.Th1.H
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.FinalKappa =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.BlockDiagMulBlockShift =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.BlockDiagMulBlockShift", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\npublic import Mathlib.CategoryTheory.Category.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
open Formalism.L2.Th1.Top.FrP

section Blocks
variable {n : Type} [Fintype n] [DecidableEq n]

def mv {R : Type*} [Zero R] [One R] (a : Fin 4) : Matrix (Fin 4 × n) (Fin 4 × n) R :=
  fun x y => if x.1 = a ∧ y.1 = 0 ∧ x.2 = y.2 then 1 else 0

theorem mv_mul_apply {R : Type*} [CommRing R] (a : Fin 4) (G : Matrix (Fin 4 × n) (Fin 4 × n) R)
    (z w : Fin 4 × n) : ((mv a : Matrix (Fin 4 × n) (Fin 4 × n) R) * G) z w = if z.1 = a then G (0, z.2) w else 0 := by
  simp only [Matrix.mul_apply, mv]
  by_cases h : z.1 = a
  · rw [Fintype.sum_eq_single (0, z.2)]
    · simp [h]
    · intro y hy
      rw [if_neg, zero_mul]
      rintro ⟨-, h0, h2⟩
      exact hy (Prod.ext h0 h2.symm)
  · simp [h]

theorem blockShift_mul_apply {R : Type*} [CommRing R] (k : Fin 4) (G : Matrix (Fin 4 × n) (Fin 4 × n) R)
    (z w : Fin 4 × n) : ((bmv0 k : Matrix (Fin 4 × n) (Fin 4 × n) R) * G) z w = if z.1 = 0 then G (k, z.2) w else 0 := by
  simp only [Matrix.mul_apply, bmv0]
  by_cases h : z.1 = 0
  · rw [Fintype.sum_eq_single (k, z.2)]
    · simp [h]
    · intro y hy
      rw [if_neg, zero_mul]
      rintro ⟨-, h0, h2⟩
      exact hy (Prod.ext h0 h2.symm)
  · simp [h]

theorem mv_mulVec (a : Fin 4) (y : Fin 4 × n → ℂ) :
    (mv a : Matrix _ _ ℂ).mulVec y = fun x => if x.1 = a then y (0, x.2) else 0 := by
  funext x
  simp only [Matrix.mulVec, dotProduct, mv]
  by_cases h : x.1 = a
  · rw [Fintype.sum_eq_single (0, x.2)]
    · simp [h]
    · intro z hz
      rw [if_neg, zero_mul]
      rintro ⟨-, h0, h2⟩
      exact hz (Prod.ext h0 h2.symm)
  · simp [h]

theorem blockShift_mulVec (k : Fin 4) (y : Fin 4 × n → ℂ) :
    (bmv0 k : Matrix _ _ ℂ).mulVec y = fun x => if x.1 = 0 then y (k, x.2) else 0 := by
  funext x
  simp only [Matrix.mulVec, dotProduct, bmv0]
  by_cases h : x.1 = 0
  · rw [Fintype.sum_eq_single (k, x.2)]
    · simp [h]
    · intro z hz
      rw [if_neg, zero_mul]
      rintro ⟨-, h0, h2⟩
      exact hz (Prod.ext h0 h2.symm)
  · simp [h]

theorem mv_pres (Λ : AddSubgroup (n → ℂ)) (a : Fin 4) :
    ∀ y ∈ pow4 Λ, Matrix.toLin' (mv a : Matrix _ _ ℂ) y ∈ pow4 Λ := by
  intro y hy
  have hy' : ∀ b, slice b y ∈ Λ := hy
  show ∀ b, slice b _ ∈ Λ
  intro b
  rw [Matrix.toLin'_apply, mv_mulVec]
  by_cases h : b = a
  · subst h
    convert hy' 0 using 1
    funext i
    simp [slice]
  · convert Λ.zero_mem using 1
    funext i
    simp [slice, h]

theorem blockShift_mapsTo (Λ : AddSubgroup (n → ℂ)) (k : Fin 4) :
    ∀ y ∈ pow4 Λ, Matrix.toLin' (bmv0 k : Matrix _ _ ℂ) y ∈ pow4 Λ := by
  intro y hy
  have hy' : ∀ b, slice b y ∈ Λ := hy
  show ∀ b, slice b _ ∈ Λ
  intro b
  rw [Matrix.toLin'_apply, blockShift_mulVec]
  by_cases h : b = 0
  · subst h
    convert hy' k using 1
    funext i
    simp [slice]
  · convert Λ.zero_mem using 1
    funext i
    simp [slice, h]

theorem bd4_transpose {R : Type*} [Zero R] (P : Matrix n n R) : (bd4 P).transpose = bd4 P.transpose := by
  ext x y
  by_cases h : x.1 = y.1
  · simp [bd4, Matrix.transpose_apply, h]
  · simp [bd4, Matrix.transpose_apply, h, Ne.symm h]

theorem bd4_smul {R : Type*} [CommRing R] (c : R) (P : Matrix n n R) : bd4 (c • P) = c • bd4 P := by
  ext x y
  by_cases h : x.1 = y.1 <;> simp [bd4, h]

theorem bd4_one {R : Type*} [CommRing R] : bd4 (1 : Matrix n n R) = 1 := by
  ext x y
  by_cases h1 : x.1 = y.1 <;> by_cases h2 : x.2 = y.2 <;>
    simp [bd4, Matrix.one_apply, Prod.ext_iff, h1, h2]

theorem blockDiag_mul_blockShift {R : Type*} [CommRing R] (P : Matrix n n R) (k : Fin 4) :
    bd4 P * bmv0 k = bmv0 k * bd4 P := by
  ext x y
  rw [blockShift_mul_apply]
  simp only [Matrix.mul_apply, bd4, bmv0]
  rw [Fintype.sum_eq_single (0, y.2)]
  · by_cases h1 : x.1 = 0 <;> by_cases h2 : y.1 = k
    · simp [h1, h2]
    · have h2' : k ≠ y.1 := fun h => h2 h.symm
      simp [h1, h2, h2']
    · simp [h1, h2]
    · simp [h1, h2]
  · intro z hz
    by_cases hc : z.1 = 0 ∧ y.1 = k ∧ z.2 = y.2
    · exact absurd (Prod.ext hc.1 hc.2.2 : z = (0, y.2)) hz
    · rw [if_neg hc, mul_zero]

theorem exists_cols (G Gi : Matrix (Fin 4 × n) (Fin 4 × n) ℂ) (hG : G * Gi = 1) :
    ∃ w : n → Fin 4 × n, IsUnit (Matrix.of fun i j => G (0, i) (w j)) := by
  classical
  set v : Fin 4 × n → (n → ℂ) := fun j i => G (0, i) j with hv
  have hspan : Submodule.span ℂ (Set.range v) = ⊤ := by
    rw [eq_top_iff]
    intro x _
    have hx : x = ∑ j, (∑ k, Gi j (0, k) * x k) • v j := by
      funext i
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, hv]
      have h : ∀ k, ∑ j, G (0, i) j * Gi j (0, k) = if i = k then 1 else 0 := fun k => by
        have := congrFun (congrFun hG (0, i)) (0, k)
        simpa [Matrix.mul_apply, Matrix.one_apply] using this
      symm
      calc ∑ j, (∑ k, Gi j (0, k) * x k) * G (0, i) j
          = ∑ k, (∑ j, G (0, i) j * Gi j (0, k)) * x k := by
            simp_rw [Finset.sum_mul]
            rw [Finset.sum_comm]
            exact Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun j _ => by ring
        _ = x i := by simp [h]
    rw [hx]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
  obtain ⟨b, hbs, hbspan, hbli⟩ := exists_linearIndependent ℂ (Set.range v)
  rw [hspan] at hbspan
  let B := Module.Basis.mk hbli (le_of_eq (by rw [Subtype.range_coe, hbspan]))
  let e := B.indexEquiv (Pi.basisFun ℂ n)
  have hmem : ∀ i : n, ∃ j, v j = ((e.symm i : b) : n → ℂ) := fun i => hbs (e.symm i).2
  choose w hw using hmem
  refine ⟨w, ?_⟩
  rw [← Matrix.linearIndependent_cols_iff_isUnit]
  have hfun : (Matrix.of fun i j => G (0, i) (w j)).col =
      (fun x : b => (x : n → ℂ)) ∘ e.symm := by
    funext j i
    simp [Matrix.col, Matrix.transpose_apply, ← hw j, hv]
  rw [hfun]
  exact hbli.comp _ e.symm.injective

end Blocks

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.BlockDiagMulBlockShift =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ConjMatrixApply =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ConjMatrixApply", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.MemLatticeFourfoldOfMemDualLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
open Formalism.L2.Th1.Top.FrP

theorem conj_entry_int {a₀ : ℕ} {b₀ c₀ : ℤ} {dK : ℕ} {ha : 0 < a₀} {hdK : 0 < dK} {lam : ℂ} {hlam : lam ≠ 0}
    (hCm : CmOK a₀ b₀ c₀ dK) (l : ℕ) [Fact l.Prime] (hl5 : 5 ≤ l)
    (hin : ¬ ∃ a : ZMod l, a ^ 2 = -(dK : ZMod l)) {n : Type} [Fintype n] [DecidableEq n]
    (h : Matrix n n ℂ) (Λ : AddSubgroup (n → ℂ)) (hΛ : IsSelfDual (matH h) Λ)
    (g₁ : (Fin 4 × n → ℂ) ≃ₗ[ℂ] (Fin 4 × n → ℂ))
    (hIso : IsIsom (matH (blk4 h)) (stdH (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n))
      (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)))
    (hIdx : ¬ l ∣ relIdx (stdLat (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n))
      (imgLat (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) (pow4 Λ)))
    (τ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) (hτ : ∀ y ∈ pow4 Λ, τ y ∈ pow4 Λ) (x w : Fin 4 × n) :
    ∃ q₁ q₂ : ℚ, padicNorm l q₁ ≤ 1 ∧ padicNorm l q₂ ≤ 1 ∧
      g₁ (τ (g₁.symm (Pi.single w 1))) x = q₁ + q₂ * sq dK := by
  classical
  have hl2 : ¬ l ∣ 2 := fun h2 => by have := Nat.le_of_dvd two_pos h2; omega
  have hla : ¬ l ∣ a₀ := by
    intro hla
    apply hin
    refine ⟨(b₀ : ZMod l), ?_⟩
    have e := congrArg (Int.cast : ℤ → ZMod l) hCm.1
    push_cast at e
    have ha0 : (a₀ : ZMod l) = 0 := (CharP.cast_eq_zero_iff (ZMod l) l a₀).mpr hla
    rw [ha0] at e
    linear_combination -e
  set N := relIdx (stdLat (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n))
    (imgLat (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) (pow4 Λ)) with hN
  have hN0 : N ≠ 0 := fun h0 => hIdx (by rw [h0]; exact dvd_zero l)
  have hden : ¬ l ∣ 2 * N ^ 2 * a₀ := by
    intro hd
    have hp : l.Prime := Fact.out
    rcases (Nat.Prime.dvd_mul hp).mp hd with h' | h'
    · rcases (Nat.Prime.dvd_mul hp).mp h' with h'' | h''
      · exact hl2 h''
      · exact hIdx (hp.dvd_of_dvd_pow h'')
    · exact hla h'
  have he : Pi.single w (lam * (a₀ : ℂ)) ∈ stdLat (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n) := by
    intro i _
    by_cases hi : i = w
    · subst hi
      rw [Pi.single_eq_same]
      exact (cmL a₀ b₀ dK ha hdK lam hlam).ω₁_mem_lattice
    · rw [Pi.single_eq_of_ne hi]
      exact (cmL a₀ b₀ dK ha hdK lam hlam).lattice.toAddSubgroup.zero_mem
  have h1 := idx_smul_symm_mem (cmL a₀ b₀ dK ha hdK lam hlam) h Λ hΛ g₁ hIso he
  have h3 := idx_smul_mem (cmL a₀ b₀ dK ha hdK lam hlam) Λ g₁ (hτ _ h1)
  have h4 := h3 x (Set.mem_univ x)
  obtain ⟨m, k, hmk⟩ := PeriodPair.mem_lattice.mp h4
  have hsingle : Pi.single w (lam * (a₀ : ℂ)) = (lam * (a₀ : ℂ)) • Pi.single w (1 : ℂ) := by
    ext i; by_cases hi : i = w
    · subst hi; simp
    · simp [Pi.single_eq_of_ne hi]
  rw [hsingle, ← Nat.cast_smul_eq_nsmul ℂ, ← Nat.cast_smul_eq_nsmul ℂ] at hmk
  simp only [map_smul, Pi.smul_apply, smul_eq_mul] at hmk
  have hω1 : (cmL a₀ b₀ dK ha hdK lam hlam).ω₁ = lam * (a₀ : ℂ) := rfl
  have hω2 : (cmL a₀ b₀ dK ha hdK lam hlam).ω₂ = lam * cmTheta b₀ dK := rfl
  rw [hω1, hω2, cmTheta] at hmk
  refine ⟨((2 * m * a₀ + k * b₀ : ℤ) : ℚ) / ((2 * N ^ 2 * a₀ : ℕ) : ℚ),
    ((k : ℤ) : ℚ) / ((2 * N ^ 2 * a₀ : ℕ) : ℚ), ?_, ?_, ?_⟩
  · rw [padicNorm.div, (padicNorm.nat_eq_one_iff _).mpr hden, div_one]; exact padicNorm.of_int _
  · rw [padicNorm.div, (padicNorm.nat_eq_one_iff _).mpr hden, div_one]; exact padicNorm.of_int _
  · have hNc : (N : ℂ) ≠ 0 := by exact_mod_cast hN0
    have hac : (a₀ : ℂ) ≠ 0 := by exact_mod_cast ha.ne'
    set E := g₁ (τ (g₁.symm (Pi.single w 1))) x with hEdef
    have hE : ((N : ℂ) ^ 2 * (lam * (a₀ : ℂ)) * 2) * E =
        lam * (2 * (m : ℂ) * a₀ + k * b₀ + k * (Complex.I * ((Real.sqrt dK : ℝ) : ℂ))) := by
      linear_combination (-2 : ℂ) * hmk
    have hc : ((N : ℂ) ^ 2 * (lam * (a₀ : ℂ)) * 2) ≠ 0 := by simp [hNc, hac, hlam]
    have hE' : E = lam * (2 * (m : ℂ) * a₀ + k * b₀ + k * (Complex.I * ((Real.sqrt dK : ℝ) : ℂ))) /
        ((N : ℂ) ^ 2 * (lam * (a₀ : ℂ)) * 2) := by
      rw [eq_div_iff hc, mul_comm]; exact hE
    rw [hE']
    unfold sq
    push_cast
    field_simp

theorem gmat_eq {n : Type} [Fintype n] [DecidableEq n] (g : (Fin 4 × n → ℂ) ≃ₗ[ℂ] (Fin 4 × n → ℂ)) :
    gmat g = LinearMap.toMatrix' (g.symm : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) := by
  ext x w
  rw [LinearMap.toMatrix'_apply]
  rfl

theorem conj_matrix_apply {n : Type} [Fintype n] [DecidableEq n] (g : (Fin 4 × n → ℂ) ≃ₗ[ℂ] (Fin 4 × n → ℂ))
    (T : Matrix (Fin 4 × n) (Fin 4 × n) ℂ) (x w : Fin 4 × n) :
    (LinearMap.toMatrix' (g : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) * T * gmat g) x w
      = g (Matrix.toLin' T (g.symm (Pi.single w 1))) x := by
  have e : LinearMap.toMatrix' (g : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) * T * gmat g =
      LinearMap.toMatrix' ((g : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) ∘ₗ Matrix.toLin' T ∘ₗ
        (g.symm : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ))) := by
    rw [LinearMap.toMatrix'_comp, LinearMap.toMatrix'_comp, LinearMap.toMatrix'_toLin', gmat_eq, mul_assoc]
  rw [e, LinearMap.toMatrix'_apply]
  rfl

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ConjMatrixApply =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.PadicNormDivLeOne =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.PadicNormDivLeOne", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
open Formalism.L2.Th1.Top.FrP

theorem sq_conj (d : ℕ) : conj (sq d) = -sq d := by
  simp [sq, Complex.conj_ofReal]

theorem sq_mul_sq (d : ℕ) : sq d * sq d = -(d : ℂ) := by
  rw [← pow_two]
  have h : ((Real.sqrt d : ℝ) : ℂ) ^ 2 = (d : ℂ) := by
    rw [← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg _)]; simp
  rw [sq, mul_pow, h, Complex.I_sq]; ring

def Kc (d : ℕ) (hd : 0 < d) : Subfield ℂ where
  carrier := {z | ∃ q₁ q₂ : ℚ, z = q₁ + q₂ * sq d}
  zero_mem' := ⟨0, 0, by simp⟩
  one_mem' := ⟨1, 0, by simp⟩
  add_mem' := by
    rintro _ _ ⟨a, b, rfl⟩ ⟨c, e, rfl⟩
    exact ⟨a + c, b + e, by push_cast; ring⟩
  mul_mem' := by
    rintro _ _ ⟨a, b, rfl⟩ ⟨c, e, rfl⟩
    refine ⟨a * c - d * b * e, a * e + b * c, ?_⟩
    have := sq_mul_sq d
    push_cast
    linear_combination (b * e : ℂ) * this
  neg_mem' := by
    rintro _ ⟨a, b, rfl⟩
    exact ⟨-a, -b, by push_cast; ring⟩
  inv_mem' := by
    rintro _ ⟨a, b, rfl⟩
    by_cases h0 : (a : ℂ) + b * sq d = 0
    · exact ⟨0, 0, by rw [h0]; simp⟩
    have hn : (a ^ 2 + d * b ^ 2 : ℚ) ≠ 0 := by
      intro hn
      have hb : b = 0 := by
        by_contra hb
        have : (0 : ℚ) < a ^ 2 + d * b ^ 2 := by
          have : (0 : ℚ) < d := by exact_mod_cast hd
          positivity
        linarith
      have ha : a = 0 := by subst hb; simpa using hn
      apply h0; subst ha; subst hb; simp
    refine ⟨a / (a ^ 2 + d * b ^ 2), -b / (a ^ 2 + d * b ^ 2), ?_⟩
    have hn' : ((a ^ 2 + d * b ^ 2 : ℚ) : ℂ) ≠ 0 := by exact_mod_cast hn
    refine (eq_inv_of_mul_eq_one_left ?_).symm
    have := sq_mul_sq d
    push_cast at hn' ⊢
    field_simp
    linear_combination (-(b:ℂ) ^ 2) * this

theorem conj_mem_Kc {d : ℕ} {hd : 0 < d} {z : ℂ} (hz : z ∈ Kc d hd) : conj z ∈ Kc d hd := by
  obtain ⟨a, b, rfl⟩ := hz
  exact ⟨a, -b, by simp [sq_conj]⟩

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.PadicNormDivLeOne =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.AreaCmLNe =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.AreaCmLNe", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.Assembly\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.BlockDiagMulBlockShift\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ConjMatrixApply\nimport Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.MemLatticeFourfoldOfMemDualLattice\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.PadicNormDivLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
open Formalism.L2.Th1.Top.FrP

theorem area_cmL_ne (a₀ : ℕ) (b₀ : ℤ) (dK : ℕ) (ha : 0 < a₀) (hdK : 0 < dK) (lam : ℂ) (hlam : lam ≠ 0) :
    area (cmL a₀ b₀ dK ha hdK lam hlam) ≠ 0 := by
  unfold area cmL scalePair cmPair
  simp only
  have e : conj (lam * (a₀ : ℂ)) * (lam * cmTheta b₀ dK) =
      (((a₀ : ℝ) * Complex.normSq lam : ℝ) : ℂ) * cmTheta b₀ dK := by
    rw [map_mul, Complex.conj_natCast]
    push_cast
    rw [Complex.normSq_eq_conj_mul_self]
    ring
  have hth : (cmTheta b₀ dK).im = Real.sqrt dK / 2 := by
    simp [cmTheta]
  rw [e, Complex.im_ofReal_mul, hth]
  have h1 : (0 : ℝ) < a₀ := by exact_mod_cast ha
  have h2 : 0 < Complex.normSq lam := Complex.normSq_pos.mpr hlam
  have h3 : 0 < Real.sqrt dK := Real.sqrt_pos.mpr (by exact_mod_cast hdK)
  exact abs_ne_zero.mpr (by positivity)

theorem gram_G (L : PeriodPair) {n : Type} [Fintype n] [DecidableEq n] (h : Matrix n n ℂ)
    (g₁ : (Fin 4 × n → ℂ) ≃ₗ[ℂ] (Fin 4 × n → ℂ))
    (hIso : IsIsom (matH (blk4 h)) (stdH L (Fin 4 × n)) (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ))) :
    (gmat g₁).transpose * bd4 h * (gmat g₁).map conj = (((area L : ℝ) : ℂ)⁻¹) • (1 : Matrix _ _ ℂ) := by
  ext u w
  have h1 := hIso (g₁.symm (Pi.single u 1)) (g₁.symm (Pi.single w 1))
  simp only [LinearEquiv.coe_coe, LinearEquiv.apply_symm_apply, stdH_apply] at h1
  have hl : ∑ i, (Pi.single u (1 : ℂ) : Fin 4 × n → ℂ) i * ((area L : ℝ) : ℂ)⁻¹ *
      conj ((Pi.single w (1 : ℂ) : Fin 4 × n → ℂ) i) =
      (((area L : ℝ) : ℂ)⁻¹ • (1 : Matrix (Fin 4 × n) (Fin 4 × n) ℂ)) u w := by
    by_cases huw : u = w
    · subst huw
      simp [Pi.single_apply]
    · simp [Pi.single_apply, huw]
      intro hi
      exact absurd hi.symm huw
  rw [hl] at h1
  rw [h1]
  simp only [matH, LinearMap.mk₂'ₛₗ_apply, Matrix.mul_apply, Matrix.transpose_apply,
    Matrix.map_apply, gmat, Finset.sum_mul]
  rw [Finset.sum_comm]
  rfl

theorem ratStep : RatStep := by
  intro a₀ b₀ c₀ dK ha hdK lam hlam hCm l _ hl5 hld hin n _ _ h Λ g₀ g₁ hLat hIso hIdx
  have hΛ : IsSelfDual (matH h) Λ := hLat.2.1
  set L := cmL a₀ b₀ dK ha hdK lam hlam with hL
  set G := gmat g₁ with hGdef
  set Gi : Matrix (Fin 4 × n) (Fin 4 × n) ℂ :=
    LinearMap.toMatrix' (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) with hGidef
  have hGGi : G * Gi = 1 := by
    rw [hGdef, hGidef, gmat_eq, ← LinearMap.toMatrix'_comp]
    have : ((g₁.symm : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) ∘ₗ (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)))
        = LinearMap.id := by ext x; simp
    rw [this, LinearMap.toMatrix'_id]
  have hGiG : Gi * G = 1 := by
    rw [hGdef, hGidef, gmat_eq, ← LinearMap.toMatrix'_comp]
    have : ((g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) ∘ₗ (g₁.symm : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)))
        = LinearMap.id := by ext x; simp
    rw [this, LinearMap.toMatrix'_id]
  have hint : ∀ T : Matrix (Fin 4 × n) (Fin 4 × n) ℂ, (∀ y ∈ pow4 Λ, Matrix.toLin' T y ∈ pow4 Λ) →
      ∀ x w, ∃ q₁ q₂ : ℚ, padicNorm l q₁ ≤ 1 ∧ padicNorm l q₂ ≤ 1 ∧ (Gi * T * G) x w = q₁ + q₂ * sq dK := by
    intro T hT x w
    rw [hGidef, hGdef, conj_matrix_apply]
    exact conj_entry_int hCm l hl5 hin h Λ hΛ g₁ hIso hIdx _ hT x w
  obtain ⟨w, hPu⟩ := exists_cols G Gi hGGi
  set P : Matrix n n ℂ := Matrix.of fun i j => G (0, i) (w j) with hP
  have hdetP : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).mp hPu
  set Pinv := P⁻¹ with hPinv
  have hPP : P * Pinv = 1 := Matrix.mul_nonsing_inv P hdetP
  have hPP' : Pinv * P = 1 := Matrix.nonsing_inv_mul P hdetP
  set S : Matrix (Fin 4 × n) (Fin 4 × n) ℂ :=
    Matrix.of fun x (y : Fin 4 × n) => (Gi * (mv y.1 : Matrix (Fin 4 × n) (Fin 4 × n) ℂ) * G) x (w y.2) with hS
  clear_value S
  have hGS : G * S = bd4 P := by
    ext z ⟨a, j⟩
    have e := congrFun (congrFun (show G * (Gi * (mv a : Matrix (Fin 4 × n) (Fin 4 × n) ℂ) * G) =
      (mv a : Matrix (Fin 4 × n) (Fin 4 × n) ℂ) * G by
        rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hGGi, Matrix.one_mul]) z) (w j)
    rw [mv_mul_apply, Matrix.mul_apply] at e
    rw [Matrix.mul_apply]
    simp only [hS, Matrix.of_apply]
    rw [e]
    simp only [bd4, hP, Matrix.of_apply]
  have hSdef : S = Gi * bd4 P := by rw [← hGS, ← Matrix.mul_assoc, hGiG, Matrix.one_mul]
  set M := bd4 Pinv * G with hM
  clear_value M
  have hSM : S * M = 1 := by
    rw [hSdef, hM, Matrix.mul_assoc, ← Matrix.mul_assoc (bd4 P), bd4_mul, hPP, bd4_one, Matrix.one_mul, hGiG]
  have hMS : M * S = 1 := by
    rw [hSdef, hM, Matrix.mul_assoc, ← Matrix.mul_assoc G, hGGi, Matrix.one_mul, bd4_mul, hPP', bd4_one]
  have hSK : ∀ x y, S x y ∈ Kc dK hdK := fun x y => by
    obtain ⟨q₁, q₂, -, -, e⟩ := hint (mv y.1) (mv_pres Λ y.1) x (w y.2)
    exact ⟨q₁, q₂, by rw [hS]; exact e⟩
  have hMK : ∀ x y, M x y ∈ Kc dK hdK := by
    set S' : Matrix (Fin 4 × n) (Fin 4 × n) (Kc dK hdK) := Matrix.of fun x y => ⟨S x y, hSK x y⟩ with hS'
    have hS'map : S'.map (Kc dK hdK).subtype = S := by ext x y; rfl
    have hdetS : IsUnit S.det := by
      have e := congrArg Matrix.det hSM
      rw [Matrix.det_mul, Matrix.det_one] at e
      exact isUnit_iff_ne_zero.mpr (left_ne_zero_of_mul_eq_one e)
    have hdet : IsUnit S'.det := by
      have e : (Kc dK hdK).subtype S'.det = S.det := by rw [RingHom.map_det]; rfl
      refine isUnit_iff_ne_zero.mpr fun h0 => ?_
      rw [h0, map_zero] at e
      exact not_isUnit_zero (e ▸ hdetS)
    have hinv : S * (S'⁻¹).map (Kc dK hdK).subtype = 1 := by
      rw [← hS'map, ← Matrix.map_mul, Matrix.mul_nonsing_inv _ hdet]
      exact Matrix.map_one _ (map_zero _) (map_one _)
    have e : M = (S'⁻¹).map (Kc dK hdK).subtype := by
      calc M = M * (S * (S'⁻¹).map (Kc dK hdK).subtype) := by rw [hinv, Matrix.mul_one]
        _ = _ := by rw [← Matrix.mul_assoc, hMS, Matrix.one_mul]
    intro x y
    rw [e]
    exact (S'⁻¹ x y).2
  have hA : ((area L : ℝ) : ℂ) ≠ 0 := by exact_mod_cast area_cmL_ne a₀ b₀ dK ha hdK lam hlam
  have hgram := gram_G L h g₁ hIso
  have hGi : Gi.transpose * Gi.map conj = ((area L : ℝ) : ℂ) • bd4 h := by
    have e1 : Gi.transpose * (G.transpose * bd4 h * G.map conj) * Gi.map conj = bd4 h := by
      have : Gi.transpose * (G.transpose * bd4 h * G.map conj) * Gi.map conj
          = (G * Gi).transpose * bd4 h * (G * Gi).map (starRingEnd ℂ) := by
        rw [Matrix.transpose_mul, Matrix.map_mul]; simp only [Matrix.mul_assoc]
      rw [this, hGGi]; simp
    rw [hGdef] at e1
    rw [hgram, Matrix.mul_smul, Matrix.mul_one, Matrix.smul_mul] at e1
    rw [← e1, smul_smul, mul_inv_cancel₀ hA, one_smul]
  set R : Matrix n n ℂ := ((area L : ℝ) : ℂ) • (P.transpose * h * P.map conj) with hR
  clear_value R
  have hbdR : bd4 R = S.transpose * S.map conj := by
    rw [hSdef, Matrix.transpose_mul, Matrix.map_mul, bd4_transpose, bd4_map _ (map_zero _),
      show bd4 P.transpose * Gi.transpose * (Gi.map (starRingEnd ℂ) * bd4 (P.map (starRingEnd ℂ)))
        = bd4 P.transpose * (Gi.transpose * Gi.map (starRingEnd ℂ)) * bd4 (P.map (starRingEnd ℂ)) by
          simp only [Matrix.mul_assoc],
      hGi, Matrix.mul_smul, Matrix.smul_mul, bd4_mul, bd4_mul, hR, bd4_smul]
  have hRK : ∀ i j, R i j ∈ Kc dK hdK := by
    intro i j
    have e : R i j = (S.transpose * S.map conj) (0, i) (0, j) := by rw [← hbdR]; simp [bd4]
    rw [e, Matrix.mul_apply]
    exact Subfield.sum_mem _ fun x _ => Subfield.mul_mem _ (hSK x (0, i)) (conj_mem_Kc (hSK x (0, j)))
  have hGramM : M.transpose * bd4 R * M.map conj = 1 := by
    rw [hbdR]
    calc M.transpose * (S.transpose * S.map conj) * M.map conj
        = (S * M).transpose * (S * M).map (starRingEnd ℂ) := by
          rw [Matrix.transpose_mul, Matrix.map_mul]; simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hSM]; simp
  have hUeq : ∀ k : Fin 4, (bmv0 k : Matrix _ _ ℂ) * M = M * (Gi * bmv0 k * G) := by
    intro k
    calc (bmv0 k : Matrix _ _ ℂ) * M = bmv0 k * bd4 Pinv * G := by rw [hM, Matrix.mul_assoc]
      _ = bd4 Pinv * bmv0 k * G := by rw [blockDiag_mul_blockShift]
      _ = bd4 Pinv * (G * Gi) * bmv0 k * G := by rw [hGGi, Matrix.mul_one]
      _ = M * (Gi * bmv0 k * G) := by rw [hM]; simp only [Matrix.mul_assoc]
  have hMK' : ∀ x y, ∃ q₁ q₂ : ℚ, M x y = q₁ + q₂ * sq dK := hMK
  have hRK' : ∀ i j, ∃ q₁ q₂ : ℚ, R i j = q₁ + q₂ * sq dK := hRK
  choose M₁ M₂ hMd using hMK'
  choose R₁ R₂ hRd using hRK'
  have hkM : kmat dK (Matrix.of M₁) (Matrix.of M₂) = M := by
    ext x y; simp [kmat, hMd x y, mul_comm]
  have hkMc : kmat dK (Matrix.of M₁) (-Matrix.of M₂) = M.map conj := by
    ext x y; simp [kmat, hMd x y, sq_conj, mul_comm]
  have hkR : kmat dK (Matrix.of R₁) (Matrix.of R₂) = R := by
    ext x y; simp [kmat, hRd x y, mul_comm]
  refine ⟨lam • P, Matrix.of M₁, Matrix.of M₂, Matrix.of R₁, Matrix.of R₂, 1, padicNorm.one, ?_, ?_, ?_⟩
  · rw [hkM, bd4_smul, Matrix.smul_mul, smul_smul, inv_mul_cancel₀ hlam, one_smul, hM, ← Matrix.mul_assoc,
      bd4_mul, hPP, bd4_one, Matrix.one_mul]
  · rw [hkM, hkR, hkMc, hGramM]; simp
  · intro k
    have := hint (bmv0 k) (blockShift_mapsTo Λ k)
    choose U₁ U₂ hU₁ hU₂ hUe using this
    refine ⟨Matrix.of U₁, Matrix.of U₂, fun x y => ⟨hU₁ x y, hU₂ x y⟩, ?_⟩
    rw [hkM, hUeq k]
    congr 1
    ext x y; simp [kmat, hUe x y, mul_comm]

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.AreaCmLNe =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.DeltaMem =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.DeltaMem", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.GaussSum\npublic import Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
open Formalism.L2.Th1.Top.FrP

theorem delta_mem (l : ℕ) [Fact l.Prime] (dK : ℕ) (hd : dK.Prime) (hd4 : dK % 4 = 3) (hld : ¬ l ∣ dK)
    (ι : ℂ ≃+* ℂ_[l]) : ι (sq dK) ∈ MaximalUnramifiedExtension l := by
  haveI : Fact dK.Prime := ⟨hd⟩
  have hd2 : ringChar (ZMod dK) ≠ 2 := by rw [ZMod.ringChar_zmod_n]; omega
  have hζ : IsPrimitiveRoot (ι (Complex.exp (2 * ↑Real.pi * Complex.I / ↑dK))) dK :=
    (Complex.isPrimitiveRoot_exp dK hd.ne_zero).map_of_injective ι.injective
  set χ := (quadraticChar (ZMod dK)).ringHomComp (Int.castRingHom ℂ_[l]) with hχ
  set ψ := AddChar.zmodChar dK hζ.pow_eq_one with hψdef
  have hψ : ψ.IsPrimitive := AddChar.zmodChar_primitive_of_primitive_root dK hζ
  have hχ1 : χ ≠ 1 := by
    obtain ⟨a, ha⟩ := MulChar.ne_one_iff.1 (quadraticChar_ne_one hd2)
    refine MulChar.ne_one_iff.2 ⟨a, fun h => ha ?_⟩
    rw [hχ, MulChar.ringHomComp_apply, eq_intCast] at h
    exact_mod_cast h
  have hG : gaussSum χ ψ ^ 2 = -(dK : ℂ_[l]) := by
    rw [gaussSum_sq hχ1 ((quadraticChar_isQuadratic (ZMod dK)).comp _) hψ, ZMod.card, hχ,
      MulChar.ringHomComp_apply, quadraticChar_neg_one hd2, ZMod.card, ZMod.χ₄_nat_three_mod_four hd4]
    simp
  have hx : ι (sq dK) ^ 2 = -(dK : ℂ_[l]) := by
    rw [← map_pow]
    have h2 : sq dK ^ 2 = -(dK : ℂ) := by
      unfold sq
      rw [mul_pow, Complex.I_sq, ← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg _)]
      push_cast
      ring
    rw [h2, map_neg, map_natCast]
  have hmem : gaussSum χ ψ ∈ MaximalUnramifiedExtension l := by
    unfold gaussSum
    refine Subfield.sum_mem _ (fun a _ => Subfield.mul_mem _ ?_ ?_)
    · rw [hχ, MulChar.ringHomComp_apply, eq_intCast]
      exact intCast_mem _ _
    · rw [hψdef, AddChar.zmodChar_apply]
      unfold MaximalUnramifiedExtension
      apply Subfield.le_topologicalClosure
      apply Subfield.subset_closure
      refine ⟨dK, hd.pos, hld, ?_⟩
      rw [← pow_mul, mul_comm a.val dK, pow_mul, hζ.pow_eq_one, one_pow]
  rcases sq_eq_sq_iff_eq_or_eq_neg.1 (hx.trans hG.symm) with h | h
  · rw [h]
    exact hmem
  · rw [h]
    exact Subfield.neg_mem _ hmem

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.DeltaMem =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormIntKur =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormIntKur", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.Assembly\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.DeltaMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.LegendreSymbol.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
open Formalism.L2.Th1.Top.FrP

theorem norm_int_Kur (l : ℕ) [Fact l.Prime] (z : ℤ) (hz : ¬ (l : ℤ) ∣ z) : ‖((z : ℤ) : MaximalUnramifiedExtension l)‖ = 1 := by
  have h2 : ‖(z : ℚ_[l])‖ = 1 := by
    have h5 : ‖(z : ℤ_[l])‖ = 1 := le_antisymm (PadicInt.norm_le_one _)
      (not_lt.mp ((PadicInt.norm_int_lt_one_iff_dvd z).not.mpr hz))
    simpa using h5
  have h3 : ‖((z : ℚ_[l]) : PadicAlgCl l)‖ = 1 := by rw [PadicAlgCl.norm_extends]; exact h2
  have h4 : ‖(((z : ℚ_[l]) : PadicAlgCl l) : ℂ_[l])‖ = 1 := by rw [PadicComplex.norm_extends]; exact h3
  have e1 : (((z : ℚ_[l]) : PadicAlgCl l)) = (z : PadicAlgCl l) := map_intCast _ z
  have e2 : (((z : PadicAlgCl l)) : ℂ_[l]) = (z : ℂ_[l]) := by
    exact map_intCast (UniformSpace.Completion.coeRingHom (α := PadicAlgCl l)) z
  have e3 : ((z : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) : ℂ_[l]) = (z : ℂ_[l]) := by simp
  show ‖((z : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) : ℂ_[l])‖ = 1
  rw [e3, ← e2, ← e1]; exact h4

private theorem norm_add_le_max_maxUnramified_lemma (l : ℕ) [Fact l.Prime] (a b : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) :
    ‖a + b‖ ≤ max ‖a‖ ‖b‖ :=
  IsUltrametricDist.norm_add_le_max (a : ℂ_[l]) (b : ℂ_[l])

private theorem inv_prime_lt_one_lemma_2 (l : ℕ) (hl : 1 < l) : (l : ℝ)⁻¹ < 1 := by
  have hpos : (0 : ℝ) < l := by exact_mod_cast (by omega : 0 < l)
  have h1 : (l : ℝ)⁻¹ * l = 1 := inv_mul_cancel₀ hpos.ne'
  have h2 : (1 : ℝ) < l := by exact_mod_cast hl
  nlinarith [inv_pos.2 hpos]

private theorem norm_frobenius_of_norm_eq_one_lemma_3 (l : ℕ) [Fact l.Prime]
    (σ : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l →+* Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) (hU : Formalism.L2.Th1.Top.FrP.UnrOK (Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) l σ)
    (u : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) (hu : ‖u‖ = 1) : ‖σ u‖ = 1 := by
  have hl2 : 2 < l := hU.2.1
  have hinv : (l : ℝ)⁻¹ < 1 := inv_prime_lt_one_lemma_2 l (by omega)
  have hc := hU.2.2.2.2 u hu.le
  have hul : ‖u ^ l‖ = 1 := by rw [norm_pow, hu, one_pow]
  apply le_antisymm
  · have h := norm_add_le_max_maxUnramified_lemma l (σ u - u ^ l) (u ^ l)
    rw [sub_add_cancel, hul] at h
    exact h.trans (max_le (hc.trans hinv.le) le_rfl)
  · have h := norm_add_le_max_maxUnramified_lemma l (σ u) (-(σ u - u ^ l))
    have e : σ u + -(σ u - u ^ l) = u ^ l := by ring
    rw [e, hul, norm_neg] at h
    by_contra hlt
    have := max_lt (not_le.mp hlt) (hc.trans_lt hinv)
    linarith

private theorem norm_frobenius_eq_lemma_4 (l : ℕ) [Fact l.Prime] (σ : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l →+* Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l)
    (hU : Formalism.L2.Th1.Top.FrP.UnrOK (Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) l σ) (x : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) : ‖σ x‖ = ‖x‖ := by
  by_cases hx : x = 0
  · simp [hx]
  obtain ⟨k, hk⟩ := hU.2.2.2.1 x hx
  have hl2 : 2 < l := hU.2.1
  have hlpos : (0 : ℝ) < l := by exact_mod_cast (by omega : 0 < l)
  have hkpos : (0 : ℝ) < (l : ℝ) ^ k := zpow_pos hlpos k
  have hcn : ‖((l : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) ^ k)‖ = ((l : ℝ) ^ k)⁻¹ := by
    rw [norm_zpow, hU.2.2.1, inv_zpow]
  have hσc : σ ((l : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) ^ k) = (l : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) ^ k := by
    rw [map_zpow₀, map_natCast]
  have hu : ‖x * (l : Formalism.L2.Th1.Top.FrP.MaximalUnramifiedExtension l) ^ k‖ = 1 := by
    rw [norm_mul, hk, hcn, mul_inv_cancel₀ hkpos.ne']
  have h := norm_frobenius_of_norm_eq_one_lemma_3 l σ hU _ hu
  rw [map_mul, hσc, norm_mul, hcn] at h
  rw [hk]
  exact mul_right_cancel₀ (inv_ne_zero hkpos.ne') (h.trans (mul_inv_cancel₀ hkpos.ne').symm)

theorem frob_conj (l : ℕ) [Fact l.Prime] (dK : ℕ) (hl5 : 5 ≤ l) (hld : ¬ l ∣ dK)
    (hin : ¬ ∃ a : ZMod l, a ^ 2 = -(dK : ZMod l)) (σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l) (hU : UnrOK (MaximalUnramifiedExtension l) l σ)
    (δ : MaximalUnramifiedExtension l) (hδ2 : δ ^ 2 = -(dK : MaximalUnramifiedExtension l)) : σ δ = -δ := by

  have hdvd : ¬ (l : ℤ) ∣ (-(dK : ℤ)) := by
    rw [dvd_neg]; exact_mod_cast hld
  have hcast : (((-(dK : ℤ)) : ℤ) : MaximalUnramifiedExtension l) = -(dK : MaximalUnramifiedExtension l) := by push_cast; ring
  have hδn : ‖δ‖ = 1 := by
    have h : ‖δ‖ ^ 2 = 1 := by rw [← norm_pow, hδ2, ← hcast, norm_int_Kur l _ hdvd]
    have h0 : 0 ≤ ‖δ‖ := norm_nonneg _
    nlinarith [h]
  obtain ⟨a, ha⟩ : ∃ a : ZMod l, a = (((-(dK : ℤ)) : ℤ) : ZMod l) := ⟨_, rfl⟩
  have ha' : a = -(dK : ZMod l) := by rw [ha]; push_cast; ring
  have ha0 : a ≠ 0 := by
    rw [ha]; intro h; exact hdvd ((ZMod.intCast_zmod_eq_zero_iff_dvd _ l).mp h)
  have hsq : ¬ IsSquare a := by
    rintro ⟨b, hb⟩
    exact hin ⟨b, by rw [pow_two, ← hb, ha']⟩
  have hpow : a ^ (l / 2) = -1 := by
    rcases ZMod.pow_div_two_eq_neg_one_or_one l ha0 with h | h
    · exact absurd ((ZMod.euler_criterion l ha0).mpr h) hsq
    · exact h
  have hpow' : (-(dK : ZMod l)) ^ (l / 2) = -1 := by rw [← ha']; exact hpow
  obtain ⟨c, hc⟩ : ∃ c : ℤ, c = 1 - (-(dK : ℤ)) ^ (l / 2) := ⟨_, rfl⟩
  have hcnd : ¬ (l : ℤ) ∣ c := by
    intro hdc
    have h0 : ((c : ℤ) : ZMod l) = 0 := (ZMod.intCast_zmod_eq_zero_iff_dvd c l).mpr hdc
    have h2 : ((c : ℤ) : ZMod l) = ((2 : ℤ) : ZMod l) := by
      rw [hc]; push_cast; rw [hpow']; ring
    rw [h2] at h0
    have := Int.le_of_dvd two_pos ((ZMod.intCast_zmod_eq_zero_iff_dvd 2 l).mp h0)
    omega
  have hodd : l = 2 * (l / 2) + 1 := by
    obtain ⟨k, hk⟩ := (Fact.out : l.Prime).odd_of_ne_two (by omega)
    omega
  have hpowl : δ ^ l = δ * (((-(dK : ℤ)) ^ (l / 2) : ℤ) : MaximalUnramifiedExtension l) := by
    have e : δ ^ l = δ ^ (2 * (l / 2) + 1) := by rw [← hodd]
    rw [e, pow_succ, pow_mul, hδ2]; push_cast; ring
  have hsq2 : (σ δ - δ) * (σ δ + δ) = 0 := by
    have h : σ δ ^ 2 = δ ^ 2 := by rw [← map_pow, hδ2, map_neg, map_natCast]
    linear_combination h
  rcases mul_eq_zero.mp hsq2 with h | h
  · exfalso
    have hσ : σ δ = δ := sub_eq_zero.mp h
    have hb := hU.2.2.2.2 δ hδn.le
    rw [hσ, hpowl] at hb
    have e : δ - δ * (((-(dK : ℤ)) ^ (l / 2) : ℤ) : MaximalUnramifiedExtension l) = δ * ((c : ℤ) : MaximalUnramifiedExtension l) := by
      rw [hc]; push_cast; ring
    rw [e, norm_mul, hδn, norm_int_Kur l c hcnd, one_mul] at hb
    have hinv : (l : ℝ)⁻¹ < 1 := inv_prime_lt_one_lemma_2 l (by omega)
    linarith
  · exact eq_neg_of_add_eq_zero_left h

theorem frobStep : FrobStep := by
  intro l hl dK hl5 hld hd hd8 hin ι σ hU
  refine ⟨_root_.Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.norm_frobenius_eq_lemma_4 l σ hU, ?_⟩
  have hmem := delta_mem l dK hd (by omega) hld ι
  refine ⟨⟨ι (sq dK), hmem⟩, rfl, ?_⟩
  apply frob_conj l dK hl5 hld hin σ hU
  have hsqc : (ι (sq dK)) ^ 2 = -(dK : ℂ_[l]) := by
    rw [← map_pow, sq_sq, map_neg, map_natCast]
  apply Subtype.ext
  simpa using hsqc

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormIntKur =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameOfLocCore =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameOfLocCore", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.AreaCmLNe\nimport Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.Assembly\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormIntKur\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame

theorem hermFrame_of_locCore (hL : LocCore) : Formalism.L2.Th1.Top.FrP.HermFrame := hermFrame_of frobStep ratStep hL

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameOfLocCore =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.InsSuccAbove =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.InsSuccAbove", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocAbs\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ExistsUnitVec\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HfSelfProj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Fin\npublic import Mathlib.Data.Matrix.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators
open Matrix

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Jac
namespace JSetup

variable {K : Type*} [Field K] (S : JSetup K)

theorem sum_mulVec' {ι κ : Type*} [Fintype ι] (s : Finset κ) (A : κ → Matrix ι ι K) (x : ι → K) :
    (∑ c ∈ s, A c) *ᵥ x = ∑ c ∈ s, A c *ᵥ x := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert c s hc ih => rw [Finset.sum_insert hc, Finset.sum_insert hc, add_mulVec, ih]

theorem vecMul_sum' {ι κ : Type*} [Fintype ι] (s : Finset κ) (A : κ → Matrix ι ι K) (x : ι → K) :
    x ᵥ* (∑ c ∈ s, A c) = ∑ c ∈ s, x ᵥ* A c := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert c s hc ih => rw [Finset.sum_insert hc, Finset.sum_insert hc, vecMul_add, ih]

section Drop

variable {m : ℕ} (i : Fin (m + 1))

def ins (x : Fin m → K) : Fin (m + 1) → K := Fin.insertNth i 0 x

omit S in
theorem ins_same (x : Fin m → K) : ins i x i = 0 := Fin.insertNth_apply_same _ _ _

omit S in
theorem ins_succAbove (x : Fin m → K) (s : Fin m) : ins i x (i.succAbove s) = x s :=
  Fin.insertNth_apply_succAbove _ _ _ _

omit S in
theorem mulVec_ins (G : Matrix (Fin (m + 1)) (Fin (m + 1)) K) (x : Fin m → K) (s : Fin m) :
    (G *ᵥ ins i x) (i.succAbove s) = (G.submatrix i.succAbove i.succAbove *ᵥ x) s := by
  simp only [mulVec, dotProduct, Fin.sum_univ_succAbove _ i, ins_same, ins_succAbove, mul_zero, zero_add,
    submatrix_apply]

omit S in
theorem vecMul_ins (G : Matrix (Fin (m + 1)) (Fin (m + 1)) K) (x : Fin m → K) (s : Fin m) :
    (ins i x ᵥ* G) (i.succAbove s) = (x ᵥ* G.submatrix i.succAbove i.succAbove) s := by
  simp only [vecMul, dotProduct, Fin.sum_univ_succAbove _ i, ins_same, ins_succAbove, zero_mul, zero_add,
    submatrix_apply]

theorem cv_ins (x : Fin m → K) : S.cv (ins i x) = ins i (S.cv x) := by
  funext r
  rcases Fin.eq_self_or_eq_succAbove i r with rfl | ⟨s, rfl⟩
  · simp [cv, ins_same]
  · simp [cv, ins_succAbove]

theorem hf_ins (G : Matrix (Fin (m + 1)) (Fin (m + 1)) K) (x y : Fin m → K) :
    S.hf G (ins i x) (ins i y) = S.hf (G.submatrix i.succAbove i.succAbove) x y := by
  rw [hf, hf, S.cv_ins, dotProduct, dotProduct, Fin.sum_univ_succAbove _ i]
  simp only [ins_same, ins_succAbove, zero_mul, zero_add, mulVec_ins]

theorem IntV_ins {x : Fin m → K} (hx : S.IntV x) : S.IntV (ins i x) := by
  intro r
  rcases Fin.eq_self_or_eq_succAbove i r with rfl | ⟨s, rfl⟩
  · rw [ins_same]; exact S.O.zero_mem
  · rw [ins_succAbove]; exact hx s

theorem ext_drop {M N : Matrix (Fin (m + 1)) (Fin (m + 1)) K} {a : Fin (m + 1) → K} (ha : a i ≠ 0)
    (hσa : S.σ (a i) ≠ 0) (hM : M *ᵥ a = 0) (hN : N *ᵥ a = 0) (hM' : S.cv a ᵥ* M = 0)
    (hN' : S.cv a ᵥ* N = 0)
    (h : ∀ s t, M (i.succAbove s) (i.succAbove t) = N (i.succAbove s) (i.succAbove t)) : M = N := by
  have hcol : ∀ s, M (i.succAbove s) i = N (i.succAbove s) i := by
    intro s
    have e1 := congrFun hM (i.succAbove s)
    have e2 := congrFun hN (i.succAbove s)
    simp only [mulVec, dotProduct, Fin.sum_univ_succAbove _ i, Pi.zero_apply] at e1 e2
    simp only [h] at e1
    have : (M (i.succAbove s) i - N (i.succAbove s) i) * a i = 0 := by linear_combination e1 - e2
    rcases mul_eq_zero.mp this with h' | h'
    · exact sub_eq_zero.mp h'
    · exact absurd h' ha
  have hrow : ∀ s j, M (i.succAbove s) j = N (i.succAbove s) j := by
    intro s j
    rcases Fin.eq_self_or_eq_succAbove i j with rfl | ⟨t, rfl⟩
    · exact hcol s
    · exact h s t
  ext r j
  rcases Fin.eq_self_or_eq_succAbove i r with hr | ⟨s, rfl⟩
  · rw [hr]
    have e1 := congrFun hM' j
    have e2 := congrFun hN' j
    simp only [vecMul, dotProduct, Fin.sum_univ_succAbove _ i, Pi.zero_apply, cv] at e1 e2
    simp only [hrow] at e1
    have : S.σ (a i) * (M i j - N i j) = 0 := by linear_combination e1 - e2
    rcases mul_eq_zero.mp this with h' | h'
    · exact absurd h' hσa
    · exact sub_eq_zero.mp h'
  · exact hrow s j

theorem UM_drop {G : Matrix (Fin (m + 1)) (Fin (m + 1)) K} {a : Fin (m + 1) → K} (hU : S.UM G)
    (ha : S.IntV a) (hai : ¬ S.NU (a i)) (hGa : G *ᵥ a = 0) (haG : S.cv a ᵥ* G = 0) :
    S.UM (G.submatrix i.succAbove i.succAbove) := by
  intro x hx hNU
  have hall : ∀ s, S.NU ((G *ᵥ ins i x) (i.succAbove s)) := fun s => by rw [mulVec_ins]; exact hNU s
  have hσO := S.hσO _ (ha i)
  have hσn := S.not_NU_σ (ha i) hai
  have hne : S.σ (a i) ≠ 0 := S.ne_zero_of_not_NU hσn
  have hNU' : ∀ r, S.NU ((G *ᵥ ins i x) r) := by
    intro r
    rcases Fin.eq_self_or_eq_succAbove i r with hr | ⟨s, rfl⟩
    · rw [hr]
      have e := congrArg (fun v => v ⬝ᵥ ins i x) haG
      simp only [zero_dotProduct] at e
      rw [← dotProduct_mulVec, dotProduct, Fin.sum_univ_succAbove _ i] at e
      have e' : S.σ (a i) * (G *ᵥ ins i x) i
          = -(∑ s, S.cv a (i.succAbove s) * (G *ᵥ ins i x) (i.succAbove s)) := by
        simp only [cv] at e ⊢; linear_combination e
      have hv : (G *ᵥ ins i x) i
          = (S.σ (a i))⁻¹ * -(∑ s, S.cv a (i.succAbove s) * (G *ᵥ ins i x) (i.succAbove s)) := by
        rw [← e', ← mul_assoc, inv_mul_cancel₀ hne, one_mul]
      rw [hv]
      exact S.NU_mul (S.hinv _ hσO hσn) (S.NU_neg (S.NU_sum _ _ fun s _ =>
        S.NU_mul (S.IntV_cv ha _) (hall s)))
    · exact hall s
  obtain ⟨x', hx', hxx⟩ := hU (ins i x) (S.IntV_ins i hx) hNU'
  have hai0 : a i ≠ 0 := S.ne_zero_of_not_NU hai
  set y := x' - (x' i * (a i)⁻¹) • a with hy_def
  have hyI : S.IntV y := S.IntV_sub hx' (S.IntV_smul (S.O.mul_mem (hx' i) (S.hinv _ (ha i) hai)) ha)
  have hyi : y i = 0 := by
    simp only [hy_def, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    field_simp; ring
  have hGy : G *ᵥ y = G *ᵥ x' := by
    rw [hy_def, mulVec_sub, mulVec_smul, hGa, smul_zero, sub_zero]
  have hins : ins i (fun s => y (i.succAbove s)) = y := by
    funext r
    rcases Fin.eq_self_or_eq_succAbove i r with rfl | ⟨s, rfl⟩
    · rw [ins_same, hyi]
    · rw [ins_succAbove]
  refine ⟨fun s => y (i.succAbove s), fun s => hyI _, ?_⟩
  funext s
  rw [← mulVec_ins, hxx, Pi.smul_apply, Pi.smul_apply, ← mulVec_ins, hins, hGy]

end Drop

theorem jac_fin : ∀ (m : ℕ) (Γ : Matrix (Fin m) (Fin m) K), S.IntM Γ → S.Herm Γ → S.UM Γ →
    ∃ (k : ℕ) (v : Fin k → Fin m → K), (∀ c, S.IntV (v c)) ∧
      (∀ c c', S.hf Γ (v c) (v c') = if c = c' then 1 else 0) ∧
      ∑ c, vecMulVec (Γ *ᵥ v c) (S.cv (v c) ᵥ* Γ) = Γ := by
  intro m
  induction m with
  | zero => exact fun Γ _ _ _ => ⟨0, Fin.elim0, fun c => c.elim0, fun c => c.elim0, by ext i; exact i.elim0⟩
  | succ m ih =>
    intro Γ hΓ hH hU
    by_cases h0 : Γ = 0
    · exact ⟨0, Fin.elim0, fun c => c.elim0, fun c => c.elim0, by simp [h0]⟩
    have hunit : ∃ (a : Fin (m + 1) → K) (i : Fin (m + 1)),
        S.IntV a ∧ ¬ S.NU (a i) ∧ S.hf Γ a a = 1 :=
      S.exists_unit_vec hΓ hH hU h0
    obtain ⟨a, i, ha, hai, haa⟩ := hunit
    have hG := S.IntM_Γp hΓ ha
    have hHG := S.Herm_Γp hΓ hH ha
    have hUG := S.UM_Γp hΓ hH hU ha haa
    have hGa := S.Γp_mulVec_self (Γ := Γ) haa
    have haG := S.vecMul_Γp_self (Γ := Γ) haa
    set G := S.Γp Γ a with hG_def
    obtain ⟨k, v'', hvI, hvo, hvs⟩ := ih (G.submatrix i.succAbove i.succAbove)
      (fun s t => hG _ _) (fun s t => hHG _ _) (S.UM_drop i hUG ha hai hGa haG)
    have hai0 : a i ≠ 0 := S.ne_zero_of_not_NU hai
    have hσa : S.σ (a i) ≠ 0 := S.ne_zero_of_not_NU (S.not_NU_σ (ha i) hai)
    set v' : Fin k → Fin (m + 1) → K := fun c => ins i (v'' c) with hv'_def
    have hv'I : ∀ c, S.IntV (v' c) := fun c => S.IntV_ins i (hvI c)
    have hv'o : ∀ c c', S.hf G (v' c) (v' c') = if c = c' then 1 else 0 := fun c c' => by
      rw [hv'_def, S.hf_ins, hvo]
    have hv's : ∑ c, vecMulVec (G *ᵥ v' c) (S.cv (v' c) ᵥ* G) = G := by
      apply S.ext_drop i hai0 hσa _ hGa _ haG
      · intro s t
        rw [Matrix.sum_apply]
        conv_rhs => rw [← submatrix_apply G i.succAbove i.succAbove s t, ← hvs, Matrix.sum_apply]
        refine Finset.sum_congr rfl fun c _ => ?_
        simp only [vecMulVec_apply, hv'_def, S.cv_ins, mulVec_ins, vecMul_ins]
      · rw [sum_mulVec']
        refine Finset.sum_eq_zero fun c _ => ?_
        rw [vecMulVec_mulVec, ← dotProduct_mulVec, hGa, dotProduct_zero, op_smul_eq_smul, zero_smul]
      · rw [vecMul_sum']
        refine Finset.sum_eq_zero fun c _ => ?_
        rw [vecMul_vecMulVec, dotProduct_mulVec, haG, zero_dotProduct, zero_smul]
    refine ⟨k + 1, Fin.cons a (fun c => S.proj Γ a (v' c)), ?_, ?_, ?_⟩
    · intro c
      refine Fin.cases ?_ (fun c => ?_) c
      · simpa using ha
      · simpa using S.IntV_proj hΓ ha (hv'I c)
    · intro c c'
      refine Fin.cases ?_ (fun c => ?_) c <;> refine Fin.cases ?_ (fun c' => ?_) c'
      · simpa using haa
      · simp only [Fin.cons_zero, Fin.cons_succ, S.hf_self_proj haa]
        rw [ite_eq_right (Fin.succ_ne_zero c').symm]
      · simp only [Fin.cons_zero, Fin.cons_succ, S.hf_proj_self hΓ hH ha haa (hv'I c)]
        rw [ite_eq_right (Fin.succ_ne_zero c)]
      · simp only [Fin.cons_succ, S.hf_proj_proj haa, Fin.succ_inj]
        exact hv'o c c'
    · rw [Fin.sum_univ_succ]
      simp only [Fin.cons_zero, Fin.cons_succ]
      have : ∀ c, vecMulVec (Γ *ᵥ S.proj Γ a (v' c)) (S.cv (S.proj Γ a (v' c)) ᵥ* Γ)
          = vecMulVec (G *ᵥ v' c) (S.cv (v' c) ᵥ* G) := fun c => by
        rw [S.mulVec_proj, S.vecMul_proj hΓ hH ha (hv'I c)]
      rw [Finset.sum_congr rfl (fun c _ => this c), hv's, hG_def, Γp]
      abel

end JSetup
end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Jac
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.InsSuccAbove =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.CardEqOfMulEqOne =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.CardEqOfMulEqOne", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocAbs\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.ExistsUnitVec\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HfSelfProj\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.InsSuccAbove\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.Matrix.ToLin\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Jac
namespace JSetup

variable {K : Type*} [Field K] (S : JSetup K)

private theorem mulVec_comp_equiv_apply {ι : Type*} [Fintype ι] {m : ℕ} (Γ : Matrix ι ι K) (e : ι ≃ Fin m)
    (x : Fin m → K) (i : ι) :
    (Γ *ᵥ (x ∘ e)) i = (Γ.submatrix e.symm e.symm *ᵥ x) (e i) := by
  simp only [mulVec, dotProduct, submatrix_apply, Equiv.symm_apply_apply, Function.comp]
  exact Fintype.sum_equiv e _ _ (fun j => by simp)

private theorem vecMul_comp_equiv_apply {ι : Type*} [Fintype ι] {m : ℕ} (Γ : Matrix ι ι K) (e : ι ≃ Fin m)
    (x : Fin m → K) (j : ι) :
    ((x ∘ e) ᵥ* Γ) j = (x ᵥ* Γ.submatrix e.symm e.symm) (e j) := by
  simp only [vecMul, dotProduct, submatrix_apply, Equiv.symm_apply_apply, Function.comp]
  exact Fintype.sum_equiv e _ _ (fun i => by simp)

theorem jac {ι : Type*} [Fintype ι] [DecidableEq ι] (Γ : Matrix ι ι K) (hΓ : S.IntM Γ) (hH : S.Herm Γ)
    (hU : S.UM Γ) :
    ∃ (k : ℕ) (v : Fin k → ι → K), (∀ c, S.IntV (v c)) ∧
      (∀ c c', S.hf Γ (v c) (v c') = if c = c' then 1 else 0) ∧
      ∑ c, Matrix.vecMulVec (Γ *ᵥ v c) (S.cv (v c) ᵥ* Γ) = Γ := by
  classical
  set e : ι ≃ Fin (Fintype.card ι) := Fintype.equivFin ι with he
  have hU' : S.UM (Γ.submatrix e.symm e.symm) := by
    intro x hx hxd
    obtain ⟨x', hx', hxx'⟩ := hU (x ∘ e) (fun i => hx (e i)) (fun i => by
      rw [mulVec_comp_equiv_apply Γ e x i]; exact hxd (e i))
    refine ⟨x' ∘ e.symm, fun s => hx' (e.symm s), ?_⟩
    funext s
    have h1 := mulVec_comp_equiv_apply Γ e x (e.symm s)
    have h2 := mulVec_comp_equiv_apply Γ e (x' ∘ e.symm) (e.symm s)
    rw [Equiv.apply_symm_apply] at h1 h2
    have h3 : (x' ∘ e.symm) ∘ e = x' := by funext i; simp
    rw [h3] at h2
    rw [Pi.smul_apply, ← h1, ← h2, hxx', Pi.smul_apply]
  obtain ⟨k, v, hv, hort, hsum⟩ := S.jac_fin (Fintype.card ι) (Γ.submatrix e.symm e.symm)
    (fun s t => hΓ _ _) (fun s t => hH _ _) hU'
  have hconj : ∀ x : Fin (Fintype.card ι) → K, S.cv (x ∘ e) = S.cv x ∘ e := fun x => rfl
  refine ⟨k, fun c => v c ∘ e, fun c i => hv c (e i), fun c c' => ?_, ?_⟩
  · rw [← hort c c']
    simp only [hf, hconj, dotProduct]
    exact Fintype.sum_equiv e _ _ (fun i => by
      simp only [Function.comp, mulVec_comp_equiv_apply Γ e (v c') i])
  · ext i j
    have h := congrFun (congrFun hsum (e i)) (e j)
    simp only [Matrix.sum_apply, vecMulVec_apply, submatrix_apply, Equiv.symm_apply_apply] at h
    simp only [Matrix.sum_apply, vecMulVec_apply, hconj, mulVec_comp_equiv_apply Γ e _ i,
      vecMul_comp_equiv_apply Γ e _ j]
    exact h

end JSetup

theorem card_eq_of_mul_eq_one {K : Type*} [Field K] {n : Type*} [Fintype n] [DecidableEq n] {k : ℕ}
    (V : Matrix n (Fin k) K) (W : Matrix (Fin k) n K) (h1 : V * W = 1) (h2 : W * V = 1) :
    Fintype.card n = k := by
  have e : (Fin k → K) ≃ₗ[K] (n → K) :=
    LinearEquiv.ofLinear (Matrix.toLin' V) (Matrix.toLin' W)
      (by rw [← Matrix.toLin'_mul, h1, Matrix.toLin'_one])
      (by rw [← Matrix.toLin'_mul, h2, Matrix.toLin'_one])
  have h := e.finrank_eq
  simp only [Module.finrank_fintype_fun_eq_card, Fintype.card_fin] at h
  omega

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Jac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.CardEqOfMulEqOne =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.TransposeMulBlockDiagMul =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.TransposeMulBlockDiagMul", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormAddLeKur\npublic import Mathlib.CategoryTheory.Category.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators
open Matrix

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Loc
open Formalism.L2.Th1.Top.FrP

section Blocks
variable {K : Type*} [CommRing K] {n : Type} [Fintype n] [DecidableEq n]

def what₂ {m : Type*} (X : Matrix (Fin 4 × n) m K) (b : Fin 4) : Matrix n m K := fun i w => X (b, i) w

theorem blockDiag_mul_apply' {m : Type*} [Fintype m] (P : Matrix n n K) (Q : Matrix (Fin 4 × n) m K)
    (a : Fin 4) (i : n) (w : m) : (bd4 P * Q) (a, i) w = ∑ j, P i j * Q (a, j) w := by
  simp only [bd4, Matrix.mul_apply, Fintype.sum_prod_type, ite_mul, zero_mul]
  rw [Finset.sum_eq_single a (fun b _ hb => by simp [Ne.symm hb]) (by simp)]
  simp

theorem mul_bd4_apply {m : Type*} [Fintype m] (X : Matrix m (Fin 4 × n) K) (P : Matrix n n K)
    (x : m) (a : Fin 4) (j : n) : (X * bd4 P) x (a, j) = ∑ k, X x (a, k) * P k j := by
  simp only [bd4, Matrix.mul_apply, Fintype.sum_prod_type, mul_ite, mul_zero]
  rw [Finset.sum_eq_single a (fun b _ hb => by simp [hb]) (by simp)]
  simp

theorem transpose_mul_blockDiag_mul {m m' : Type*} [Fintype m] [Fintype m'] (X : Matrix (Fin 4 × n) m K)
    (Y : Matrix (Fin 4 × n) m' K) (H : Matrix n n K) :
    Xᵀ * bd4 H * Y = ∑ b : Fin 4, (what₂ X b)ᵀ * H * what₂ Y b := by
  ext w w'
  rw [Matrix.sum_apply, Matrix.mul_apply, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [Matrix.mul_apply]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [mul_bd4_apply]
  simp only [what₂, Matrix.mul_apply, transpose_apply]

theorem blockShift_mul_apply {m : Type*} [Fintype m] (c : Fin 4) (X : Matrix (Fin 4 × n) m K) (b : Fin 4) (i : n)
    (w : m) : ((bmv0 c : Matrix (Fin 4 × n) (Fin 4 × n) K) * X) (b, i) w = if b = 0 then X (c, i) w else 0 := by
  simp only [bmv0, Matrix.mul_apply, ite_mul, one_mul, zero_mul]
  by_cases hb : b = 0
  · rw [if_pos hb, Finset.sum_eq_single (c, i)]
    · simp [hb]
    · rintro ⟨b', j⟩ _ hne
      rw [if_neg]
      rintro ⟨-, h1, h2⟩
      exact hne (Prod.ext h1 h2.symm)
    · simp
  · rw [if_neg hb]
    refine Finset.sum_eq_zero fun y _ => ?_
    rw [if_neg]
    rintro ⟨h, -⟩
    exact hb h

theorem blockDiag_map' {L : Type*} [CommRing L] (f : K →+* L) (P : Matrix n n K) : (bd4 P).map f = bd4 (P.map f) := by
  ext x y
  simp only [bd4, Matrix.map_apply]
  split_ifs <;> simp

theorem bd4_transpose (P : Matrix n n K) : (bd4 P)ᵀ = bd4 Pᵀ := by
  ext x y
  simp only [bd4, transpose_apply]
  split_ifs with h1 h2 h2 <;> first | rfl | exact absurd h1.symm h2 | exact absurd h2.symm h1

theorem blockDiag_mul' (P Q : Matrix n n K) : bd4 P * bd4 Q = bd4 (P * Q) := by
  ext ⟨a, i⟩ ⟨b, j⟩
  rw [blockDiag_mul_apply']
  simp only [bd4, Matrix.mul_apply]
  split_ifs with h <;> simp

theorem bd4_smul (r : K) (P : Matrix n n K) : bd4 (r • P) = r • bd4 P := by
  ext x y
  simp only [bd4, Matrix.smul_apply, smul_eq_mul]
  split_ifs <;> simp

end Blocks

section Lmat
variable {l : ℕ} [Fact l.Prime] {m m' : Type}

theorem lmat_apply (δ : MaximalUnramifiedExtension l) (A B : Matrix m m' ℚ) (x : m) (y : m') :
    lmat δ A B x y = (A x y : MaximalUnramifiedExtension l) + δ * (B x y : MaximalUnramifiedExtension l) := by
  simp [lmat]

theorem lmat_map_σ (σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l) (δ : MaximalUnramifiedExtension l) (hσδ : σ δ = -δ) (A B : Matrix m m' ℚ) :
    (lmat δ A B).map σ = lmat δ A (-B) := by
  ext x y
  simp only [Matrix.map_apply, lmat_apply, map_add (f := _), map_mul, map_ratCast, hσδ, Matrix.neg_apply, Rat.cast_neg]
  ring_nf

theorem lmat_mem {dK : ℕ} {δ : MaximalUnramifiedExtension l} {hδ : δ ^ 2 = -(dK : MaximalUnramifiedExtension l)} (U₁ U₂ : Matrix m m' ℚ)
    (hU : ∀ x y, padicNorm l (U₁ x y) ≤ 1 ∧ padicNorm l (U₂ x y) ≤ 1) (x : m) (y : m') :
    lmat δ U₁ U₂ x y ∈ OO dK δ hδ := by
  rw [lmat_apply]
  exact (OO dK δ hδ).add_mem (ratCast_mem _ (hU x y).1) ((OO dK δ hδ).mul_mem δ_mem (ratCast_mem _ (hU x y).2))

end Lmat

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Loc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.TransposeMulBlockDiagMul =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocMain =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocMain", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.FrobStep\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.CardEqOfMulEqOne\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.TransposeMulBlockDiagMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.NormAddLeKur\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators
open Matrix

namespace Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Loc
open Formalism.L2.Th1.Top.FrP Jac


theorem local_core' : LocCore := by
  intro l _ dK σ δ h5 hld hin hσ hδ hσδ n _ _ M₁ M₂ R₁ R₂ c hc hGram hmv
  set S := setup h5 dK hld hin σ hσ δ hδ hσδ with hS
  have hSσ : S.σ = σ := rfl
  set M := lmat δ M₁ M₂ with hM
  set Mb := lmat δ M₁ (-M₂) with hMb
  have hMσ : M.map σ = Mb := lmat_map_σ σ δ hσδ M₁ M₂
  have hMbσ : Mb.map σ = M := by rw [hMb, lmat_map_σ σ δ hσδ, neg_neg]
  have hc0 : (c : MaximalUnramifiedExtension l) ≠ 0 := by
    have : c ≠ 0 := by rintro rfl; simp at hc
    exact_mod_cast this
  set H₀ : Matrix n n (MaximalUnramifiedExtension l) := (c : MaximalUnramifiedExtension l)⁻¹ • (lmat δ R₁ R₂).map σ with hH₀

  have hE : Mbᵀ * bd4 H₀ * M = 1 := by
    have h1 := congrArg (fun X => X.map σ) hGram
    simp only [Matrix.map_mul, transpose_map, blockDiag_map', hMσ, hMbσ] at h1
    have h1' : ((c : MaximalUnramifiedExtension l) • (1 : Matrix (Fin 4 × n) (Fin 4 × n) (MaximalUnramifiedExtension l))).map σ = (c : MaximalUnramifiedExtension l) • 1 := by
      refine Matrix.ext fun x y => ?_
      simp only [Matrix.map_apply, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
      split_ifs <;> simp
    rw [h1'] at h1
    rw [hH₀, bd4_smul, Matrix.mul_smul, Matrix.smul_mul, h1, smul_smul, inv_mul_cancel₀ hc0, one_smul]
  have hE2 : Mbᵀ * bd4 (H₀.map σ)ᵀ * M = 1 := by
    have h1 := congrArg (fun X => (X.map σ)ᵀ) hE
    simp only [Matrix.map_mul, transpose_map, blockDiag_map', hMσ, hMbσ, transpose_mul, transpose_transpose,
      Matrix.map_one σ (map_zero σ) (map_one σ), transpose_one, bd4_transpose] at h1
    simpa [Matrix.mul_assoc] using h1

  set Z : Matrix n (Fin 4 × n) (MaximalUnramifiedExtension l) := what₂ M 0 with hZ
  set Zb : Matrix n (Fin 4 × n) (MaximalUnramifiedExtension l) := what₂ Mb 0 with hZb'
  have hZb : Z.map σ = Zb := Matrix.ext fun i w => congrFun (congrFun hMσ (0, i)) w
  have hZbσ : Zb.map σ = Z := Matrix.ext fun i w => congrFun (congrFun hMbσ (0, i)) w
  have hZZ : Z * (Zbᵀ * H₀) = 1 := by
    have h1 : M * (Mbᵀ * bd4 H₀) = 1 := mul_eq_one_comm.mp hE
    refine Matrix.ext fun i j => ?_
    have := congrFun (congrFun h1 (0, i)) (0, j)
    rw [← Matrix.mul_assoc, mul_bd4_apply] at this
    rw [← Matrix.mul_assoc, Matrix.mul_apply]
    simp only [Matrix.one_apply, Prod.mk.injEq, true_and] at this
    rw [Matrix.one_apply]
    simpa [Matrix.mul_apply, hZ, hZb', what₂] using this
  obtain ⟨Γ, hΓ⟩ : ∃ Γ : Matrix (Fin 4 × n) (Fin 4 × n) (MaximalUnramifiedExtension l), Γ = Zbᵀ * H₀ * Z := ⟨_, rfl⟩

  choose U₁ U₂ hUint hUeq using hmv
  set U : Fin 4 → Matrix (Fin 4 × n) (Fin 4 × n) (MaximalUnramifiedExtension l) := fun b => lmat δ (U₁ b) (U₂ b) with hU
  have hUO : ∀ b x y, U b x y ∈ S.O := fun b x y => lmat_mem (dK := dK) (hδ := hδ) (U₁ b) (U₂ b) (hUint b) x y
  have hZc : ∀ b, what₂ M b = Z * U b := by
    intro b; refine Matrix.ext fun i w => ?_
    have := congrFun (congrFun (hUeq b) (0, i)) w
    rw [blockShift_mul_apply, if_pos rfl] at this
    exact this
  have hrowsN : ∀ b, what₂ (M * U 0) b = if b = 0 then Z else 0 := by
    intro b; refine Matrix.ext fun i w => ?_
    have := congrFun (congrFun (hUeq 0) (b, i)) w
    rw [blockShift_mul_apply] at this
    rw [what₂, ← this]
    split_ifs <;> rfl
  have hΓU : Γ = ((U 0).map σ)ᵀ * U 0 := by
    have hN : ((M * U 0).map σ)ᵀ * bd4 H₀ * (M * U 0) = ((U 0).map σ)ᵀ * U 0 := by
      rw [Matrix.map_mul, hMσ, transpose_mul]
      calc ((U 0).map σ)ᵀ * Mbᵀ * bd4 H₀ * (M * U 0) = ((U 0).map σ)ᵀ * (Mbᵀ * bd4 H₀ * M) * U 0 := by
            simp only [Matrix.mul_assoc]
        _ = _ := by rw [hE, Matrix.mul_one]
    rw [← hN, transpose_mul_blockDiag_mul, Fin.sum_univ_four]
    have hr : ∀ b, what₂ ((M * U 0).map σ) b = (what₂ (M * U 0) b).map σ := fun b => rfl
    simp only [hr, hrowsN]
    simp [hZb, hΓ]
  have hΓI : S.IntM Γ := by
    intro w w'
    rw [hΓU, Matrix.mul_apply]
    exact S.O.sum_mem fun k _ => S.O.mul_mem (S.hσO _ (hUO 0 k w)) (hUO 0 k w')
  have hΓH : S.Herm Γ := by
    intro w w'
    rw [hΓU]

    simp only [hSσ, Matrix.mul_apply, transpose_apply, Matrix.map_apply, map_sum, map_mul]
    refine Finset.sum_congr rfl fun k _ => ?_
    have h := S.hσσ _ (hUO 0 k w)
    rw [hSσ] at h
    rw [h]
    ring
  have hidem : Γ * Γ = Γ := by
    calc Γ * Γ = Zbᵀ * H₀ * (Z * (Zbᵀ * H₀)) * Z := by simp only [hΓ, Matrix.mul_assoc]
      _ = Γ := by rw [hZZ, Matrix.mul_one, hΓ]
  have hΓUM : S.UM Γ := by
    intro x hx hNU
    choose y hyO hy using hNU
    refine ⟨y, hyO, ?_⟩
    have hΓx : Γ *ᵥ x = S.p • y := funext fun i => by rw [hy i]; rfl
    have h2 : Γ *ᵥ (Γ *ᵥ x) = Γ *ᵥ x := by rw [mulVec_mulVec, hidem]
    rw [hΓx, mulVec_smul] at h2
    rw [hΓx, h2]
  obtain ⟨k, v, hvI, hvo, hvs⟩ := S.jac Γ hΓI hΓH hΓUM
  clear_value Z Zb H₀ M Mb

  set A : Matrix (Fin 4 × n) (Fin k) (MaximalUnramifiedExtension l) := Matrix.of fun w c => v c w with hA
  have hAO : ∀ w c, A w c ∈ S.O := fun w c => hvI c w
  have hAo : (A.map σ)ᵀ * Γ * A = 1 := by
    refine Matrix.ext fun c c' => ?_
    rw [Matrix.one_apply, ← hvo c c']
    simp only [JSetup.hf, JSetup.cv, hSσ, dotProduct, mulVec, Matrix.mul_apply, transpose_apply,
      Matrix.map_apply, hA, Matrix.of_apply, Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    ring
  have hAs : Γ * A * ((A.map σ)ᵀ * Γ) = Γ := by
    conv_rhs => rw [← hvs]
    refine Matrix.ext fun w w' => ?_
    rw [Matrix.mul_apply, Matrix.sum_apply]
    refine Finset.sum_congr rfl fun c _ => ?_
    simp only [vecMulVec_apply, Matrix.mul_apply, mulVec, dotProduct, vecMul, JSetup.cv, hSσ, transpose_apply,
      Matrix.map_apply, hA, Matrix.of_apply]
  obtain ⟨V, hV⟩ : ∃ V : Matrix n (Fin k) (MaximalUnramifiedExtension l), V = Z * A := ⟨_, rfl⟩
  obtain ⟨Ti₀, hTi₀⟩ : ∃ Ti₀ : Matrix (Fin k) n (MaximalUnramifiedExtension l), Ti₀ = (V.map σ)ᵀ * H₀ := ⟨_, rfl⟩
  have hVσ : V.map σ = Zb * A.map σ := by rw [hV, Matrix.map_mul, hZb]
  have hTZ : Ti₀ * Z = (A.map σ)ᵀ * Γ := by
    rw [hTi₀, hVσ, transpose_mul, hΓ]; simp only [Matrix.mul_assoc]
  have hTV : Ti₀ * V = 1 := by
    rw [hV, ← Matrix.mul_assoc, hTZ, hAo]
  have hZΓ : Z * Γ = Z := by
    calc Z * Γ = Z * (Zbᵀ * H₀) * Z := by simp only [hΓ, Matrix.mul_assoc]
      _ = Z := by rw [hZZ, Matrix.one_mul]
  have hGZ : Zbᵀ * H₀ = Γ * (Zbᵀ * H₀) := by
    calc Zbᵀ * H₀ = Zbᵀ * H₀ * (Z * (Zbᵀ * H₀)) := by rw [hZZ, Matrix.mul_one]
      _ = Γ * (Zbᵀ * H₀) := by simp only [hΓ, Matrix.mul_assoc]
  have hTi₀' : Ti₀ = (A.map σ)ᵀ * (Zbᵀ * H₀) := by rw [hTi₀, hVσ, transpose_mul, Matrix.mul_assoc]
  have hVT : V * Ti₀ = 1 := by
    have s1 : V * Ti₀ = Z * A * ((A.map σ)ᵀ * (Zbᵀ * H₀)) := by rw [hV, hTi₀']
    have s2 : Z * A * ((A.map σ)ᵀ * (Zbᵀ * H₀)) = Z * Γ * A * ((A.map σ)ᵀ * (Γ * (Zbᵀ * H₀))) :=
      (congrArg (fun X => Z * A * ((A.map σ)ᵀ * X)) hGZ).trans
        (congrArg (fun X => X * A * ((A.map σ)ᵀ * (Γ * (Zbᵀ * H₀)))) hZΓ.symm)
    have s3 : Z * Γ * A * ((A.map σ)ᵀ * (Γ * (Zbᵀ * H₀))) = Z * (Γ * A * ((A.map σ)ᵀ * Γ)) * (Zbᵀ * H₀) := by
      simp only [Matrix.mul_assoc]
    have s4 : Z * (Γ * A * ((A.map σ)ᵀ * Γ)) * (Zbᵀ * H₀) = 1 := by rw [hAs, hZΓ, hZZ]
    exact s1.trans (s2.trans (s3.trans s4))

  have hk : Fintype.card n = k := card_eq_of_mul_eq_one V Ti₀ hVT hTV
  set e : Fin k ≃ n := (Fintype.equivFinOfCardEq hk).symm with he
  set T : Matrix n n (MaximalUnramifiedExtension l) := V.submatrix id e.symm with hT
  set Ti : Matrix n n (MaximalUnramifiedExtension l) := Ti₀.submatrix e.symm id with hTi
  have hTTi : T * Ti = 1 := by
    refine Matrix.ext fun i j => ?_
    have h1 := congrFun (congrFun hVT i) j
    rw [Matrix.mul_apply] at h1
    rw [← h1, Matrix.mul_apply]
    simp only [hT, hTi, submatrix_apply, id_eq]
    exact Equiv.sum_comp e.symm (fun c => V i c * Ti₀ c j)

  have hAσσ : (A.map σ).map σ = A := Matrix.ext fun w c => by
    have h := S.hσσ _ (hAO w c)
    rw [hSσ] at h
    simpa using h
  have hVσσ : (V.map σ).map σ = V := by rw [hVσ, Matrix.map_mul, hZbσ, hAσσ, hV]
  have hTi₀σ : (Ti₀.map σ)ᵀ * Ti₀ = (H₀.map σ)ᵀ := by
    have h1 : (Ti₀.map σ)ᵀ = (H₀.map σ)ᵀ * V := by
      rw [hTi₀, Matrix.map_mul, transpose_mul, transpose_map, transpose_transpose, hVσσ]
    rw [h1, Matrix.mul_assoc, hVT, Matrix.mul_one]
  have hTiσ : (Ti.map σ)ᵀ * Ti = (H₀.map σ)ᵀ := by
    rw [← hTi₀σ]
    refine Matrix.ext fun i j => ?_
    simp only [hTi, Matrix.mul_apply, transpose_apply, Matrix.map_apply, submatrix_apply, id_eq]
    exact Equiv.sum_comp e.symm (fun c => σ (Ti₀ c i) * Ti₀ c j)
  have hU1 : ((bd4 Ti * M).map σ)ᵀ * (bd4 Ti * M) = 1 := by
    rw [Matrix.map_mul, blockDiag_map', hMσ, transpose_mul, bd4_transpose]
    calc Mbᵀ * bd4 (Ti.map σ)ᵀ * (bd4 Ti * M) = Mbᵀ * (bd4 (Ti.map σ)ᵀ * bd4 Ti) * M := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by rw [blockDiag_mul', hTiσ]; exact hE2

  have hγ : ∀ b i w, (bd4 Ti * M) (b, i) w = ((A.map σ)ᵀ * Γ * U b) (e.symm i) w := by
    intro b i w
    rw [blockDiag_mul_apply']
    have h1 : (Ti * what₂ M b) i w = ∑ j, Ti i j * M (b, j) w := rfl
    rw [← h1, hZc b, ← Matrix.mul_assoc, Matrix.mul_apply, Matrix.mul_apply]
    refine Finset.sum_congr rfl fun w' _ => ?_
    congr 1
    show (Ti₀ * Z) (e.symm i) w' = _
    rw [hTZ]
  have hγO : ∀ x y, (bd4 Ti * M) x y ∈ S.O := by
    rintro ⟨b, i⟩ w
    rw [hγ, Matrix.mul_apply]
    refine S.O.sum_mem fun w' _ => S.O.mul_mem ?_ (hUO b w' w)
    rw [Matrix.mul_apply]
    refine S.O.sum_mem fun x _ => S.O.mul_mem ?_ (hΓI x w')
    have h := S.hσO _ (hAO x (e.symm i))
    rw [hSσ] at h
    simpa using h
  refine ⟨T, Ti, hTTi, ?_⟩
  unfold IsUnitaryK
  refine ⟨fun a b => ⟨norm_le_one_of_mem (dK := dK) (hδ := hδ) (hγO a b), ?_⟩, fun a b => ?_⟩
  · have h := S.hσσ _ (hγO a b)
    rwa [hSσ] at h
  · have h := congrFun (congrFun hU1 a) b
    rw [Matrix.mul_apply, Matrix.one_apply] at h
    simp only [transpose_apply, Matrix.map_apply] at h
    exact h

end Formalism.L2.Th1.Top.FrP.UnitaryGroupMassFormula.HermFrame.Loc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocMain =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.IsUnitaryK\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameOfLocCore\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.LocMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.Top.FrP

theorem hermFrame_holds : HermFrame :=
  UnitaryGroupMassFormula.HermFrame.hermFrame_of_locCore UnitaryGroupMassFormula.HermFrame.Loc.local_core'

end Formalism.L2.Th1.Top.FrP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameHolds =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.FinalFree =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.FinalFree", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementK\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementL\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.FinalKappa\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OneLetterGaussSharpTranslateHolds\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthogonalGaussModels.HermitianBlockFrames.HermFrameHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.Top

open Formalism.L2.Th1.H (localStandard kappaExists)

theorem frameExistsH : FrameExistsH := FrP.hermFrame_holds

theorem uniformGaussModels_fact_variant : ThetaFourthPowerShapeNormalised := theta_kappa_shape_holds localStandard kappaExists

theorem frobExistsH : FrobExistsH := by
  intro l _ hl
  obtain ⟨σ, hσ, -⟩ := Formalism.L2.Th1.D.kurFrob l (by omega)
  exact ⟨σ, hσ⟩

end Formalism.L2.Th1.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.FinalFree =====

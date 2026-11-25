module

public import Mathlib.MeasureTheory.Group.ModularCharacter
public import Mathlib.Topology.Algebra.Group.Units
public import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantHaarAdelicUnitaryGroupHermiti
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE
public import Mathlib.RingTheory.TensorProduct.Pi
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRadNMulLevM
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GodementSectionInvariantConvergent
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicUnitaryTopology
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
import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift
import Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected
import Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ContinuousResTSymm
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi
import Development.AbelianVarietyTheory.Proofs.HeightProofs.CoordDnApply
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Mathlib.Topology.Compactness.Paracompact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantOfModular, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOne, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOneStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLevi, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLeviStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantOfModular =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantOfModular", "h": "module\n\npublic import Mathlib.MeasureTheory.Group.ModularCharacter\npublic import Mathlib.Topology.Algebra.Group.Units\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.WeilM MeasureTheory MeasureTheory.Measure
open scoped Matrix NNReal

namespace GlobalTheory.ParAvg

theorem isMulRightInvariant_of_modular {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [LocallyCompactSpace G] [MeasurableSpace G] [BorelSpace G] (μ : Measure G) [μ.IsHaarMeasure] [μ.InnerRegular]
    (h : ∀ g : G, modularCharacterFun g = 1) : μ.IsMulRightInvariant :=
  ⟨fun g => by rw [map_right_mul_eq_modularCharacterFun_smul μ g, h g, one_smul]⟩

end GlobalTheory.ParAvg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantOfModular =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOne =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantHaarAdelicUnitaryGroupHermiti\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\npublic import Mathlib.RingTheory.TensorProduct.Pi\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal TensorProduct
open MeasureTheory Filter NumberField IsDedekindDomain
open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicPointsUnimod

noncomputable section

namespace GlobalTheory.CompanionTheory.GLUnimod

section Pi

variable {ι : Type} [Fintype ι] [DecidableEq ι] {k : ι → Type} [∀ i, Field (k i)]
  {n : Type} [Fintype n] [DecidableEq n]

def piM (h : ∀ i, Matrix n n (k i)) : Matrix n n (∀ i, k i) := Matrix.of fun a b i => h i a b

theorem piM_mul (x y : ∀ i, Matrix n n (k i)) : piM x * piM y = piM fun i => x i * y i := by
  ext a b i
  simp [piM, Matrix.mul_apply, Finset.sum_apply]

theorem piM_one : piM (fun i => (1 : Matrix n n (k i))) = 1 := by
  ext a b i
  by_cases h : a = b
  · subst h
    simp [piM]
  · simp [piM, Matrix.one_apply, h]

def piGL : (∀ i, GL n (k i)) →* GL n (∀ i, k i) where
  toFun h := ⟨piM fun i => (h i).val, piM fun i => (h i)⁻¹.val,
    by simp [piM_mul, piM_one], by simp [piM_mul, piM_one]⟩
  map_one' := Units.ext (by simp [piM_one])
  map_mul' x y := Units.ext (by simp [piM_mul])

theorem piGL_surjective : Function.Surjective (piGL (k := k) (n := n)) := fun g =>
  ⟨fun i => Matrix.GeneralLinearGroup.map (Pi.evalRingHom k i) g, by
    apply Units.ext
    ext a b i
    rfl⟩

theorem hom_eq_one_pi (Δ : GL n (∀ i, k i) →* ℝ≥0) (hc : ∀ g, (∀ h, g * h = h * g) → Δ g = 1)
    (g : GL n (∀ i, k i)) : Δ g = 1 := by
  have hsingle : ∀ (i : ι) (h : GL n (k i)), Δ (piGL (Pi.mulSingle i h)) = 1 := fun i h => by
    let Δi : GL n (k i) →* ℝ≥0 := (Δ.comp piGL).comp (MonoidHom.mulSingle (fun i => GL n (k i)) i)
    refine GlobalTheory.SplitFlip.hom_eq_one_of_center Δi (fun z hz => ?_) h
    refine hc _ fun y => ?_
    obtain ⟨w, rfl⟩ := piGL_surjective y
    rw [← map_mul, ← map_mul]
    congr 1
    funext j
    by_cases hj : j = i
    · subst hj
      simpa using hz (w j)
    · simp [Pi.mulSingle_eq_of_ne hj]
  have key : ∀ (s : Finset ι) (x : ∀ i, GL n (k i)), (∀ i ∉ s, x i = 1) → Δ (piGL x) = 1 := by
    intro s
    induction s using Finset.induction_on with
    | empty =>
      intro x hx
      rw [show x = 1 from funext fun i => hx i (by simp), map_one, map_one]
    | insert a s ha ih =>
      intro x hx
      have e : x = Pi.mulSingle a (x a) * Function.update x a 1 := by
        funext j
        by_cases hj : j = a
        · subst hj
          simp
        · simp [Pi.mulSingle_eq_of_ne hj, Function.update_of_ne hj]
      rw [e, map_mul, map_mul, hsingle, one_mul]
      refine ih _ fun i hi => ?_
      by_cases hj : i = a
      · subst hj
        simp
      · rw [Function.update_of_ne hj]
        exact hx i (by simp [hj, hi])
  obtain ⟨x, rfl⟩ := piGL_surjective g
  exact key Finset.univ x (by simp)

end Pi

section Reduced

variable {n : Type} [Fintype n] [DecidableEq n]

theorem hom_eq_one_reduced {B : Type} [CommRing B] [IsArtinianRing B] [IsReduced B] (Δ : GL n B →* ℝ≥0)
    (hc : ∀ g, (∀ h, g * h = h * g) → Δ g = 1) (g : GL n B) : Δ g = 1 := by
  classical
  letI : Fintype (MaximalSpectrum B) := Fintype.ofFinite _
  letI : ∀ I : MaximalSpectrum B, Field (B ⧸ I.asIdeal) := fun I =>
    @Ideal.Quotient.field _ _ _ I.isMaximal
  let ψ : B ≃+* ∀ I : MaximalSpectrum B, B ⧸ I.asIdeal := (IsArtinianRing.equivPi B).toRingEquiv
  let Φ : GL n B ≃* GL n (∀ I : MaximalSpectrum B, B ⧸ I.asIdeal) :=
    Units.mapEquiv (RingEquiv.mapMatrix ψ).toMulEquiv
  have h := hom_eq_one_pi (Δ.comp Φ.symm.toMonoidHom) (fun z hz => hc _ fun y => ?_) (Φ g)
  · simpa using h
  · apply Φ.injective
    simpa using hz (Φ y)

end Reduced

section Tens

theorem isReduced_tensor {F E R : Type} [Field F] [Field E] [Algebra F E] [Module.Finite F E]
    [Algebra.IsSeparable F E] [CommRing R] [Algebra F R] [IsArtinianRing R] [IsReduced R] :
    IsReduced (R ⊗[F] E) := by
  classical
  letI : Fintype (MaximalSpectrum R) := Fintype.ofFinite _
  letI : ∀ I : MaximalSpectrum R, Field (R ⧸ I.asIdeal) := fun I =>
    @Ideal.Quotient.field _ _ _ I.isMaximal
  have hk : ∀ I : MaximalSpectrum R, IsReduced (E ⊗[F] (R ⧸ I.asIdeal)) := fun I => by
    haveI : Algebra.FormallyUnramified F E := (Algebra.FormallyUnramified.iff_isSeparable F E).2 inferInstance
    haveI : Algebra.FormallyUnramified (R ⧸ I.asIdeal) ((R ⧸ I.asIdeal) ⊗[F] E) :=
      Algebra.FormallyUnramified.base_change (R ⧸ I.asIdeal)
    haveI : Algebra.EssFiniteType (R ⧸ I.asIdeal) ((R ⧸ I.asIdeal) ⊗[F] E) := inferInstance
    haveI : IsReduced ((R ⧸ I.asIdeal) ⊗[F] E) :=
      Algebra.FormallyUnramified.isReduced_of_field (R ⧸ I.asIdeal) _
    exact isReduced_of_injective (Algebra.TensorProduct.comm F E (R ⧸ I.asIdeal)).toRingEquiv.toRingHom
      (Algebra.TensorProduct.comm F E (R ⧸ I.asIdeal)).injective
  let e₁ : R ≃ₐ[F] ∀ I : MaximalSpectrum R, R ⧸ I.asIdeal := (IsArtinianRing.equivPi R).restrictScalars F
  let e₂ : R ⊗[F] E ≃ₐ[F] E ⊗[F] (∀ I : MaximalSpectrum R, R ⧸ I.asIdeal) :=
    (Algebra.TensorProduct.comm F R E).trans (Algebra.TensorProduct.congr AlgEquiv.refl e₁)
  let e₃ := Algebra.TensorProduct.piRight F F E (fun I : MaximalSpectrum R => R ⧸ I.asIdeal)
  exact isReduced_of_injective (e₂.trans e₃).toRingEquiv.toRingHom (e₂.trans e₃).injective

end Tens

section Split

variable {A B : Type} [CommRing A] [CommRing B] {n : Type} [Fintype n] [DecidableEq n]

def cut (e : A) (X : Matrix n n A) : Matrix n n A := e • X + (1 - e) • 1

theorem cut_mul {e : A} (he : e * e = e) (X Y : Matrix n n A) : cut e X * cut e Y = cut e (X * Y) := by
  have h0 : e * (1 - e) = 0 := by rw [mul_sub, he, mul_one, sub_self]
  have h1 : (1 - e) * (1 - e) = 1 - e := by rw [sub_mul, one_mul, h0, sub_zero]
  simp only [cut, add_mul, mul_add, Matrix.smul_mul, Matrix.mul_smul, smul_smul, Matrix.mul_one, Matrix.one_mul,
    he, h0, h1, mul_comm (1 - e) e, zero_smul, add_zero, zero_add]

theorem cut_one (e : A) : cut e (1 : Matrix n n A) = 1 := by
  simp only [cut, ← add_smul]
  simp

theorem smul_eq_of_map_eq {π : A →+* B} {e : A} (hk : ∀ x, π x = 0 → e * x = 0) {X Y : Matrix n n A}
    (h : X.map π = Y.map π) : e • X = e • Y := by
  ext i j
  have := congrFun (congrFun h i) j
  simp only [Matrix.map_apply] at this
  have h2 := hk (X i j - Y i j) (by rw [map_sub, this, sub_self])
  simp only [Matrix.smul_apply, smul_eq_mul]
  rw [mul_sub, sub_eq_zero] at h2
  exact h2

def secGL (π : A →+* B) (hs : Function.Surjective π) (e : A) (he : e * e = e)
    (hk : ∀ x, π x = 0 → e * x = 0) : GL n B →* GL n A :=
  let L : Matrix n n B → Matrix n n A := fun M => M.map (Function.surjInv hs)
  have hL : ∀ M, (L M).map π = M := fun M => by
    ext i j
    exact Function.surjInv_eq hs _
  have hc : ∀ X Y : Matrix n n A, X.map π = Y.map π → cut e X = cut e Y := fun X Y h => by
    simp only [cut, smul_eq_of_map_eq hk h]
  have hm : ∀ M N : Matrix n n B, (L M * L N).map π = M * N := fun M N => by
    rw [Matrix.map_mul, hL, hL]
  { toFun := fun h => ⟨cut e (L h.val), cut e (L h⁻¹.val),
      by rw [cut_mul he, hc _ 1 (by rw [hm]; simp [Matrix.map_one]), cut_one],
      by rw [cut_mul he, hc _ 1 (by rw [hm]; simp [Matrix.map_one]), cut_one]⟩
    map_one' := Units.ext (by
      show cut e (L 1) = 1
      rw [hc _ 1 (by rw [hL]; simp [Matrix.map_one]), cut_one])
    map_mul' := fun x y => Units.ext (by
      show cut e (L (x * y).val) = cut e (L x.val) * cut e (L y.val)
      rw [cut_mul he]
      exact hc _ _ (by rw [hL, hm]; rfl)) }

end Split

section Split2

variable {A B : Type} [CommRing A] [CommRing B] {n : Type} [Fintype n] [DecidableEq n]

theorem exists_char_eq_cut (π : A →+* B) (hs : Function.Surjective π) (e : A) (h1 : π e = 1)
    (hk : ∀ x, π x = 0 → e * x = 0)
    (hB : ∀ Δ : GL n B →* ℝ≥0, (∀ g, (∀ h, g * h = h * g) → Δ g = 1) → ∀ g, Δ g = 1)
    (χ : GL n A →* ℝ≥0) (hc : ∀ g, (∀ h, g * h = h * g) → χ g = 1) (g : GL n A) :
    ∃ k : GL n A, k.val - 1 = (1 - e) • (g.val - 1) ∧ k⁻¹.val - 1 = (1 - e) • (g⁻¹.val - 1) ∧ χ g = χ k := by
  have he : e * e = e := by
    have := hk (e - 1) (by rw [map_sub, h1, map_one, sub_self])
    rw [mul_sub, mul_one, sub_eq_zero] at this
    exact this
  let s : GL n B →* GL n A := secGL π hs e he hk
  let m : GL n A →* GL n B := Matrix.GeneralLinearGroup.map π
  have hsv : ∀ h : GL n B, ∀ X : Matrix n n A, X.map π = h.val → (s h).val = cut e X := fun h X hX => by
    show cut e (h.val.map (Function.surjInv hs)) = cut e X
    simp only [cut]
    rw [smul_eq_of_map_eq hk (X := h.val.map (Function.surjInv hs)) (Y := X)]
    rw [hX]
    ext i j
    exact Function.surjInv_eq hs _
  have hmv : ∀ y : GL n A, (y.val).map π = (m y).val := fun _ => rfl
  have hcen : ∀ z, (∀ h, z * h = h * z) → ∀ y, s z * y = y * s z := fun z hz y => by
    apply Units.ext
    obtain ⟨Z, hZ⟩ : ∃ Z : Matrix n n A, Z.map π = z.val :=
      ⟨z.val.map (Function.surjInv hs), by ext i j; exact Function.surjInv_eq hs _⟩
    have hzy : (Z * y.val).map π = (y.val * Z).map π := by
      rw [Matrix.map_mul, Matrix.map_mul, hZ, hmv]
      exact congrArg Units.val (hz (m y))
    rw [Units.val_mul, Units.val_mul, hsv z Z hZ]
    simp only [cut, add_mul, mul_add, Matrix.smul_mul, Matrix.mul_smul, Matrix.one_mul, Matrix.mul_one]
    rw [smul_eq_of_map_eq hk hzy]
  have hΔ := hB (χ.comp s) (fun z hz => hc _ (hcen z hz))
  have e0 : e • (1 : Matrix n n A) + (1 - e) • (1 : Matrix n n A) = 1 := by
    rw [← add_smul]
    simp
  have e0' : e • (1 : Matrix n n A) = 1 - (1 - e) • 1 := eq_sub_of_add_eq e0
  have hgi : (g⁻¹.val * g.val) = 1 := by simp
  have v1 : (s (m g)⁻¹).val = cut e g⁻¹.val := hsv _ _ (by simp [m, hmv, ← map_inv])
  have v2 : (s (m g)).val = cut e g.val := hsv _ _ (hmv g)
  refine ⟨(s (m g))⁻¹ * g, ?_, ?_, ?_⟩
  · rw [Units.val_mul, ← map_inv, v1]
    simp only [cut, add_mul, Matrix.smul_mul, Matrix.one_mul, hgi]
    rw [smul_sub, e0']
    abel
  · rw [_root_.mul_inv_rev, inv_inv, Units.val_mul, v2]
    simp only [cut, mul_add, Matrix.mul_smul, Matrix.mul_one, hgi]
    rw [smul_sub, e0']
    abel
  · rw [map_mul, map_inv]
    have := hΔ (m g)
    simp only [MonoidHom.comp_apply] at this
    rw [this]
    simp

def congGL (C : NonUnitalSubring A) : Subgroup (GL n A) where
  carrier := {k | (∀ i j, (k.val - 1) i j ∈ C) ∧ ∀ i j, (k⁻¹.val - 1) i j ∈ C}
  one_mem' := by simp [zero_mem]
  mul_mem' := fun {a b} ha hb => ⟨mul_sub_one_mem C ha.1 hb.1, by
    rw [_root_.mul_inv_rev]
    exact mul_sub_one_mem C hb.2 ha.2⟩
  inv_mem' := fun {a} ha => ⟨ha.2, by rw [inv_inv]; exact ha.1⟩

theorem isCompact_congGL [TopologicalSpace A] [IsTopologicalRing A] [T2Space A] (C : NonUnitalSubring A)
    (hC : IsCompact (C : Set A)) : IsCompact (congGL (n := n) C : Set (GL n A)) := by
  have h1 : IsCompact {X : Matrix n n A | ∀ i j, X i j ∈ C} := by
    have := isCompact_univ_pi fun _ : n => isCompact_univ_pi fun _ : n => hC
    have e : {X : n → n → A | ∀ i j, X i j ∈ C} = Set.univ.pi fun _ : n => Set.univ.pi fun _ : n => (C : Set A) := by
      ext X
      simp [Set.mem_pi]
    rw [← e] at this
    exact this
  have h2 : IsCompact {X : Matrix n n A | ∀ i j, (X - 1) i j ∈ C} :=
    (Homeomorph.subRight (1 : Matrix n n A)).isCompact_preimage.2 h1
  have h3 := (MulOpposite.opHomeomorph (M := Matrix n n A)).symm.isCompact_preimage.2 h2
  exact (Units.isClosedEmbedding_embedProduct (α := Matrix n n A)).isCompact_preimage (h2.prod h3)

end Split2

section Adele

theorem isReduced_adele (F : Type) [Field F] [NumberField F] : IsReduced (AF F) := by
  refine ⟨fun x hx => ?_⟩
  obtain ⟨m, hm⟩ := hx
  have h1 : x.1 = 0 := by
    have : (x.1) ^ m = 0 := congrArg Prod.fst hm
    have hr : IsReduced (Ainf F) := inferInstanceAs (IsReduced (∀ v : InfinitePlace F, v.Completion))
    exact IsReduced.eq_zero _ ⟨m, this⟩
  have h2 : x.2 = 0 := by
    refine FiniteAdeleRing.ext _ fun v => ?_
    have : (x.2 ^ m) v = 0 := congrArg (fun y : AF F => y.2 v) hm
    exact IsReduced.eq_zero _ ⟨m, this⟩
  exact Prod.ext h1 h2

theorem isReduced_of_split {A R : Type} [CommRing A] [CommRing R] [IsReduced A] (p : A →+* R)
    (hp : Function.Surjective p) (e : A) (h1 : p e = 1) (hk : ∀ x, p x = 0 → e * x = 0) : IsReduced R := by
  refine ⟨fun x hx => ?_⟩
  obtain ⟨y, rfl⟩ := hp x
  obtain ⟨m, hm⟩ := hx
  have h2 : e * y ^ m = 0 := hk _ (by rw [map_pow, hm])
  have h3 : (e * y) ^ (m + 1) = 0 := by
    rw [show (e * y) ^ (m + 1) = e ^ m * y * (e * y ^ m) by ring, h2, mul_zero]
  have h4 : e * y = 0 := IsReduced.eq_zero _ ⟨_, h3⟩
  have := congrArg p h4
  rwa [map_mul, h1, one_mul, map_zero] at this

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem exists_split_reduced {κ : Type} [Finite κ]
    (C : NonUnitalSubring (AF F ⊗[F] E)) (hC : ∀ r ∈ intFin F, ∀ β : 𝓞 E, r ⊗ₜ[F] (β : E) ∈ C)
    (x : κ → AF F ⊗[F] E) : ∃ (B : Type) (_ : CommRing B) (π : AF F ⊗[F] E →+* B) (e : AF F ⊗[F] E),
      IsArtinianRing B ∧ IsReduced B ∧ Function.Surjective π ∧ π e = 1 ∧
      (∀ x, π x = 0 → e * x = 0) ∧ ∀ k, (1 - e) * x k ∈ C := by
  classical
  choose a ha using fun k => exists_sum_tmul (x k)
  obtain ⟨R, _, _, p, e, hR, hp, hpe, hker, hint⟩ :=
    exists_split_adele (κ := κ × _) fun q => a q.1 q.2
  haveI : Module.Finite F E := Module.Finite.of_restrictScalars_finite ℚ F E
  haveI : IsArtinianRing (R ⊗[F] E) := IsArtinianRing.of_finite R _
  haveI : IsReduced (AF F) := isReduced_adele F
  haveI : IsReduced R := isReduced_of_split p.toRingHom hp e hpe hker
  haveI : Algebra.IsSeparable F E := inferInstance
  refine ⟨R ⊗[F] E, inferInstance, (Algebra.TensorProduct.map p (AlgHom.id F E)).toRingHom,
    e ⊗ₜ 1, inferInstance, isReduced_tensor, Algebra.TensorProduct.map_surjective _ _ hp Function.surjective_id,
    ?_, fun y hy => ?_, fun k => ?_⟩
  · simp [hpe, Algebra.TensorProduct.one_def]
  · have hy' : y ∈ RingHom.ker (Algebra.TensorProduct.map p (AlgHom.id F E)) := hy
    rw [Algebra.TensorProduct.rTensor_ker _ hp] at hy'
    clear hy
    induction hy' using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨z, hz, rfl⟩ := hy
      simp [hker z hz]
    | zero => simp
    | add x y _ _ hx hy => rw [mul_add, hx, hy, add_zero]
    | smul a x _ hx => rw [smul_eq_mul, mul_left_comm, hx, mul_zero]
  · rw [ha k, Finset.mul_sum, Algebra.TensorProduct.one_def, ← TensorProduct.sub_tmul]
    refine sum_mem fun i _ => ?_
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul]
    exact hC _ (hint (k, i)) _

end Adele

section General

variable {A : Type} [CommRing A] [TopologicalSpace A] [IsTopologicalRing A] [T2Space A]
  [SecondCountableTopology A] {r : ℕ} [LocallyCompactSpace (GL (Fin r) A)]

theorem modularCharacterFun_GL_of_split (C : NonUnitalSubring A) (hCc : IsCompact (C : Set A))
    (hsplit : ∀ x : Bool × Fin r × Fin r → A, ∃ (B : Type) (_ : CommRing B) (π : A →+* B) (e : A),
      IsArtinianRing B ∧ IsReduced B ∧ Function.Surjective π ∧ π e = 1 ∧
      (∀ x, π x = 0 → e * x = 0) ∧ ∀ k, (1 - e) * x k ∈ C) (a : GL (Fin r) A) :
    Measure.modularCharacterFun a = 1 := by
  haveI : SecondCountableTopology (Matrix (Fin r) (Fin r) A) :=
    inferInstanceAs (SecondCountableTopology (Fin r → Fin r → A))
  haveI : T2Space (Matrix (Fin r) (Fin r) A) := inferInstanceAs (T2Space (Fin r → Fin r → A))
  haveI : SecondCountableTopology (Matrix (Fin r) (Fin r) A)ᵐᵒᵖ :=
    (MulOpposite.opHomeomorph (M := Matrix (Fin r) (Fin r) A)).symm.secondCountableTopology
  haveI : SecondCountableTopology (GL (Fin r) A) :=
    (Units.isClosedEmbedding_embedProduct (α := Matrix (Fin r) (Fin r) A)).isEmbedding.secondCountableTopology
  borelize (GL (Fin r) A)
  obtain ⟨B, _, π, e, hA, hR, hs, h1, hk, hint⟩ := hsplit
    fun p => ((bif p.1 then a else a⁻¹).val - 1) p.2.1 p.2.2
  let χ : GL (Fin r) A →* ℝ≥0 := Measure.modularCharacter
  have hc : ∀ z, (∀ y, z * y = y * z) → χ z = 1 := fun z hz => by
    change Measure.modularCharacterFun z = 1
    have e' : Measure.map (fun x : GL (Fin r) A => x * z) (Measure.haar : Measure (GL (Fin r) A)) =
        Measure.haar := by
      rw [show (fun x : GL (Fin r) A => x * z) = fun x => z * x from funext fun x => (hz x).symm,
        map_mul_left_eq_self]
    rw [Measure.modularCharacterFun_eq_haarScalarFactor (Measure.haar : Measure (GL (Fin r) A)) z]
    simp only [e', Measure.haarScalarFactor_self]
  obtain ⟨k, hkv, hki, hkg⟩ := exists_char_eq_cut π hs e h1 hk (fun Δ hΔ g => hom_eq_one_reduced Δ hΔ g) χ hc a
  have hkK : k ∈ congGL (n := Fin r) C :=
    ⟨fun i j => by rw [hkv]; exact hint (true, i, j), fun i j => by rw [hki]; exact hint (false, i, j)⟩
  exact hkg.trans (modular_of_mem_compact _ (isCompact_congGL C hCc) hkK)

end General

section Main

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem modularCharacterFun_GL_adele : ∀ (D : D7) (r : ℕ) [LocallyCompactSpace (GL (Fin r) (AE D))]
    (a : GL (Fin r) (AE D)), Measure.modularCharacterFun a = 1 := by
  intro D r _ a
  haveI := GlobalTheory.AdelicUnitaryTop.t2Space_adeleRing_numberField D.host.F
  haveI := GlobalTheory.AdelicUnitaryTop.secondCountable_adele D.host.F
  obtain ⟨h⟩ := GlobalTheory.AdelicUnitaryTop.nonempty_homeomorph (F := D.host.F) (E := D.host.E) (AF D.host.F)
  haveI h2 : T2Space (AE D) := h.isEmbedding.t2Space
  haveI h3 : SecondCountableTopology (AE D) := h.secondCountableTopology
  obtain ⟨C, hCc, hC⟩ := exists_compact_subring (F := D.host.F) (E := D.host.E) (intFin D.host.F)
    (isCompact_intFin D.host.F)
  exact modularCharacterFun_GL_of_split C hCc (fun x => exists_split_reduced C hC x) a

end Main

end GlobalTheory.CompanionTheory.GLUnimod
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOne =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOneStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOneStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE\npublic import Mathlib.MeasureTheory.Group.ModularCharacter\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.AestronglyMeasurableQuotMeasureIffLift\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyEqOfIsPreconnected\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRadNMulLevM\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.CompanionTheory.QKAvg
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.modularCharacter_adelic_GL_eq_one : ∀ (D : D7) (r : ℕ) [LocallyCompactSpace (GL (Fin r) (AE D))] (a : GL (Fin r) (AE D)), Measure.modularCharacterFun a = 1 := by
  first | exact @GlobalTheory.CompanionTheory.GLUnimod.modularCharacterFun_GL_adele
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOneStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLevi =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLevi", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRadNMulLevM\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GodementSectionInvariantConvergent\npublic import Mathlib.MeasureTheory.Group.ModularCharacter\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ContinuousResTSymm\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantHaarAdelicUnitaryGroupHermiti\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantOfModular\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.CoordDnApply\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicUnitaryTopology\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModularCharacterAdelicGLEqOneStatement\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.CompanionTheory.QKAvg
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CompanionTheory.QKAvg

variable {D : D7} {B W : HSp D} {t : ℕ} (d : HypDec B W t)

def levPair : GA D W × GL (Fin t) (AE D) →* levM d where
  toFun p := ⟨⟨d.emb0 p.1 * d.levi p.2, mul_mem (GlobalTheory.GodementSectionReduction.wittCoreEmbedding_mem_isotropicStabilizer d _) (GlobalTheory.RegSW.levi_mem d _)⟩, p.1, p.2, rfl⟩
  map_one' := Subtype.ext (Subtype.ext (by simp))
  map_mul' p q := Subtype.ext (Subtype.ext (by
    show d.emb0 (p.1 * q.1) * d.levi (p.2 * q.2) = d.emb0 p.1 * d.levi p.2 * (d.emb0 q.1 * d.levi q.2)
    rw [map_mul, map_mul]
    calc d.emb0 p.1 * d.emb0 q.1 * (d.levi p.2 * d.levi q.2)
        = d.emb0 p.1 * (d.emb0 q.1 * d.levi p.2) * d.levi q.2 := by group
      _ = d.emb0 p.1 * (d.levi p.2 * d.emb0 q.1) * d.levi q.2 := by rw [d.wittHyperbolic_anisotropic_commute_levi]
      _ = _ := by group))

theorem coe_levPair (p : GA D W × GL (Fin t) (AE D)) :
    (((levPair d p : levM d) : GlobalTheory.RegSW.stab d) : GA D B) = d.emb0 p.1 * d.levi p.2 := rfl

theorem mt_eq_of_levPair (p : GA D W × GL (Fin t) (AE D)) :
    d.p0 ⬝ (mt B (((levPair d p : levM d) : GlobalTheory.RegSW.stab d) : GA D B) ⬝ d.j0) = mt W p.1 := by
  rw [coe_levPair, mt_mul, Matrix.mul_assoc, d.wittDecomp_levi_inclAnisotropic, d.wittDecomp_anisotropicEmbedding_inclAnisotropic, cancel₂ d.p0_j0, Matrix.one_mul]

theorem onX_levPair (p : GA D W × GL (Fin t) (AE D)) :
    GlobalTheory.RegSW.onX d ((levPair d p : levM d) : GlobalTheory.RegSW.stab d) = p.2 := by
  have h : mt B (((levPair d p : levM d) : GlobalTheory.RegSW.stab d) : GA D B) ⬝ d.jX = d.jX ⬝ p.2.1 := by
    rw [coe_levPair, mt_mul, Matrix.mul_assoc, d.levi_jX, ← Matrix.mul_assoc, d.wittDecomp_anisotropicEmbedding_inclX]
  exact Units.ext ((GlobalTheory.RegSW.eq_of_mul_jX d (GlobalTheory.RegSW.mul_jX d _)).trans (GlobalTheory.RegSW.eq_of_mul_jX d h).symm)

theorem levPair_bijective : Function.Bijective (levPair d) := by
  constructor
  · intro p q h
    refine Prod.ext (mt_injective W ?_) ?_
    · rw [← mt_eq_of_levPair d p, ← mt_eq_of_levPair d q, h]
    · rw [← onX_levPair d p, ← onX_levPair d q, h]
  · rintro ⟨⟨q, hq⟩, g, a, e⟩
    exact ⟨(g, a), Subtype.ext (Subtype.ext e.symm)⟩

def levEquiv : (GA D W × GL (Fin t) (AE D)) ≃* levM d := MulEquiv.ofBijective (levPair d) (levPair_bijective d)

theorem continuous_levEquiv : Continuous (levEquiv d) := by
  have := isTopologicalRing_tens (F := D.host.F) (E := D.host.E) (R := AF D.host.F)
  obtain ⟨-, -, -, -, h5, -⟩ := GlobalTheory.Mem.AdelicGroupTop.adelic_unitary_topology D B
  have h : Continuous fun p : GA D W × GL (Fin t) (AE D) => d.emb0 p.1 * d.levi p.2 :=
    (d.continuous_embed.comp continuous_fst).mul (d.continuous_levi.comp continuous_snd)
  exact (h.subtype_mk _).subtype_mk _

theorem continuous_levEquiv_symm : Continuous (levEquiv d).symm := by
  have := isTopologicalRing_tens (F := D.host.F) (E := D.host.E) (R := AF D.host.F)
  have hv : Continuous fun m : levM d => ((m : GlobalTheory.RegSW.stab d) : GA D B) :=
    continuous_subtype_val.comp continuous_subtype_val
  refine Continuous.prodMk (continuous_of_mt W ?_) ?_
  · have hc : Continuous fun m : levM d => d.p0 ⬝ (mt B ((m : GlobalTheory.RegSW.stab d) : GA D B) ⬝ d.j0) :=
      continuous_const.matrix_mul (((continuous_mt B).comp hv).matrix_mul continuous_const)
    refine hc.congr fun m => ?_
    have := mt_eq_of_levPair d ((levEquiv d).symm m)
    rwa [show levPair d ((levEquiv d).symm m) = m from (levEquiv d).apply_symm_apply m] at this
  · refine ((GlobalTheory.RegSW.continuous_onX d).comp continuous_subtype_val).congr fun m => ?_
    have := onX_levPair d ((levEquiv d).symm m)
    rwa [show levPair d ((levEquiv d).symm m) = m from (levEquiv d).apply_symm_apply m] at this

end GlobalTheory.CompanionTheory.QKAvg

theorem GlobalTheory.CompanionTheory.QKAvg.exists_haar_of_prod {G₁ G₂ M : Type} [Group G₁] [Group G₂] [Group M] [TopologicalSpace G₁]
    [TopologicalSpace G₂] [TopologicalSpace M] [IsTopologicalGroup G₁] [IsTopologicalGroup G₂] [IsTopologicalGroup M]
    [LocallyCompactSpace G₁] [LocallyCompactSpace G₂] [SecondCountableTopology G₁] [SecondCountableTopology G₂]
    [T2Space G₂] [MeasurableSpace G₁] [BorelSpace G₁] [MeasurableSpace M] [BorelSpace M]
    (e : (G₁ × G₂) ≃* M) (he : Continuous e) (he' : Continuous e.symm)
    (h₁ : ∀ μ : Measure G₁, μ.IsHaarMeasure → μ.IsMulRightInvariant)
    (h₂ : ∀ a : G₂, Measure.modularCharacterFun a = 1) :
    ∃ νM : Measure M, νM.IsHaarMeasure ∧ νM.IsMulRightInvariant := by
  borelize G₂
  haveI hr1 : (Measure.haar : Measure G₁).IsMulRightInvariant := h₁ _ inferInstance
  haveI hr2 : (Measure.haar : Measure G₂).IsMulRightInvariant := GlobalTheory.ParAvg.isMulRightInvariant_of_modular _ h₂
  obtain ⟨ν, hνH, hνR⟩ : ∃ ν : Measure (G₁ × G₂), ν.IsHaarMeasure ∧ ν.IsMulRightInvariant :=
    ⟨(Measure.haar : Measure G₁).prod Measure.haar, inferInstance, inferInstance⟩
  refine ⟨Measure.map e ν, MulEquiv.isHaarMeasure_map ν e he he', ⟨fun m => ?_⟩⟩
  obtain ⟨p, rfl⟩ := e.surjective m
  rw [Measure.map_map (measurable_mul_const _) he.measurable]
  have h : (fun x => x * e p) ∘ e = e ∘ fun x => x * p := by
    funext x; simp [map_mul]
  rw [h, ← Measure.map_map he.measurable (measurable_mul_const _), map_mul_right_eq_self]



theorem GlobalTheory.CompanionTheory.QKAvg.top_GL (D : D7) (t : ℕ) : LocallyCompactSpace (GL (Fin t) (AE D)) ∧
    SecondCountableTopology (GL (Fin t) (AE D)) ∧ T2Space (GL (Fin t) (AE D)) := by
  obtain ⟨-, m2, m3, m4, -⟩ := lattice_Mx D t t
  haveI : LocallyCompactSpace (Mx D t t)ᵐᵒᵖ := MulOpposite.opHomeomorph.symm.isClosedEmbedding.locallyCompactSpace
  haveI : SecondCountableTopology (Mx D t t)ᵐᵒᵖ := MulOpposite.opHomeomorph.symm.secondCountableTopology
  haveI : T2Space (Mx D t t)ᵐᵒᵖ := MulOpposite.opHomeomorph.symm.isEmbedding.t2Space
  haveI : T1Space (Mx D t t) := @T2Space.t1Space _ _ m4
  exact ⟨(Units.isClosedEmbedding_embedProduct (α := Mx D t t)).locallyCompactSpace,
    (Units.isEmbedding_embedProduct (M := Mx D t t)).secondCountableTopology,
    (Units.isEmbedding_embedProduct (M := Mx D t t)).t2Space⟩

theorem GlobalTheory.CompanionTheory.QKAvg.exists_levM_haar : ∀ (D : D7) (B W : HSp D) (t : ℕ) (d : HypDec B W t) [LocallyCompactSpace (levM d)],
    ∃ νM : Measure (levM d), νM.IsHaarMeasure ∧ νM.IsMulRightInvariant := by
  intro D B W t d _
  obtain ⟨g1, g2, g3, g4, g5, -, -⟩ := GlobalTheory.Mem.AdelicGroupTop.adelic_unitary_topology D W
  obtain ⟨l1, l2, l3⟩ := GlobalTheory.CompanionTheory.QKAvg.top_GL D t
  exact GlobalTheory.CompanionTheory.QKAvg.exists_haar_of_prod (levEquiv d) (continuous_levEquiv d) (continuous_levEquiv_symm d)
    (GlobalTheory.AdelicPointsUnimod.isMulRightInvariant_of_isHaarMeasure D W) (GlobalTheory.T.modularCharacter_adelic_GL_eq_one D t)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLevi =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLeviStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLeviStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRadNMulLevM\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLevi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.CompanionTheory.QKAvg
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.exists_right_invariant_haar_levi : ∀ (D : D7) (B W : HSp D) (t : ℕ) (d : HypDec B W t) [LocallyCompactSpace (levM d)], ∃ νM : Measure (levM d), νM.IsHaarMeasure ∧ νM.IsMulRightInvariant := by
  first | exact @GlobalTheory.CompanionTheory.QKAvg.exists_levM_haar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRightInvariantHaarLeviStatement =====

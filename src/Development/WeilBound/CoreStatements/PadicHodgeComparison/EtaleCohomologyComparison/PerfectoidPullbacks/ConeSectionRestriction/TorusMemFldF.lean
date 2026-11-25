module

public import Mathlib.RingTheory.Derivation.Basic
public import Mathlib.RingTheory.Trace.Defs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RaTpowSinglePow
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.RingTheory.Adjoin.FG
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic
public import Mathlib.Algebra.DualNumber

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DerivationCommutesWithTrace, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidFinPf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DerivationCommutesWithTrace =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DerivationCommutesWithTrace", "h": "module\n\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Mathlib.RingTheory.Trace.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open MvPolynomial

namespace GlobalTheory.CompanionTheory.TraceDerivation

theorem trace_map_derivation : ∀ (K F L : Type) [Field K] [CharZero K] [Field F] [Field L]
    [Algebra K F] [Algebra K L] [Algebra F L] [IsScalarTower K F L] [FiniteDimensional F L]
    (D : Derivation K L L) (D0 : Derivation K F F),
    (∀ x : F, D (algebraMap F L x) = algebraMap F L (D0 x)) →
    ∀ y : L, algebraMap F L (D0 (Algebra.trace F L y)) =
      algebraMap F L (Algebra.trace F L (D y)) := by
  intro K F L _ _ _ _ _ _ _ _ _ D D0 h y
  classical
  let b := Module.finBasis F L
  let M := Algebra.leftMulMatrix b y
  let N := Algebra.leftMulMatrix b (D y)
  let C : Matrix (Fin (Module.finrank F L)) (Fin (Module.finrank F L)) F :=
    Matrix.of fun i j => b.repr (D (b j)) i
  have hmul : ∀ (z : L) (j), z * b j = ∑ i, Algebra.leftMulMatrix b z i j • b i := by
    intro z j
    simp only [Algebra.leftMulMatrix_eq_repr_mul]
    exact (b.sum_repr _).symm
  have hD : ∀ j, D (b j) = ∑ k, C k j • b k := fun j => (b.sum_repr _).symm
  have hsmul : ∀ (a : F) (x : L), D (a • x) = D0 a • x + a • D x := by
    intro a x
    rw [Algebra.smul_def, D.leibniz, h, smul_eq_mul, smul_eq_mul, Algebra.smul_def,
      Algebra.smul_def]
    ring
  have h1 : ∀ j, ∑ i, (M * C) i j • b i = y * D (b j) := by
    intro j
    rw [hD j, Finset.mul_sum]
    simp only [Matrix.mul_apply, Finset.sum_smul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [mul_smul_comm, hmul y k, Finset.smul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [mul_comm, mul_smul]
  have h2 : ∀ j, ∑ i, (C * M) i j • b i = ∑ k, M k j • D (b k) := by
    intro j
    simp only [Matrix.mul_apply, Finset.sum_smul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [hD k, Finset.smul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [mul_comm, mul_smul]
  have key : ∀ j, ∑ i, (N + M * C) i j • b i = ∑ i, (M.map D0 + C * M) i j • b i := by
    intro j
    have e := congrArg D (hmul y j)

    rw [D.leibniz, map_sum] at e
    simp only [hsmul, Finset.sum_add_distrib, smul_eq_mul] at e
    simp only [Matrix.add_apply, add_smul, Finset.sum_add_distrib, h1, h2, Matrix.map_apply]
    rw [← hmul (D y) j]
    rw [add_comm (D y * b j), mul_comm (D y), e]
  have hmat : N + M * C = M.map D0 + C * M := by
    ext i j
    have : b.repr (∑ i, (N + M * C) i j • b i) i = b.repr (∑ i, (M.map D0 + C * M) i j • b i) i := by
      rw [key j]
    rw [b.repr_sum_self, b.repr_sum_self] at this
    exact this
  have htr : Matrix.trace N = D0 (Matrix.trace M) := by
    have := congrArg Matrix.trace hmat
    rw [Matrix.trace_add, Matrix.trace_add, Matrix.trace_mul_comm M C] at this
    have h3 := add_right_cancel this
    rw [h3]

    simp [Matrix.trace, map_sum]
  congr 1
  rw [Algebra.trace_eq_matrix_trace b y, Algebra.trace_eq_matrix_trace b (D y)]
  exact htr.symm

end GlobalTheory.CompanionTheory.TraceDerivation
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DerivationCommutesWithTrace =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidFinPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidFinPf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RaTpowSinglePow\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.RingTheory.Adjoin.FG\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Pb

variable {K : Type} [Field K] {R : Type} [CommRing R] [IsDomain R] [Algebra K R] {n : ℕ}

theorem fldF_findim_pf_tpow (t : Fin (n + 1) → Rˣ) (m : Fin (n + 1) → ℤ) :
    algebraMap R (FractionRing R) (tpow t m) = ∏ k, (algebraMap R (FractionRing R) (t k : R)) ^ (m k) := by
  have h : algebraMap R (FractionRing R) (tpow t m) =
      (((Units.map (algebraMap R (FractionRing R)).toMonoidHom) (∏ k, t k ^ m k) : (FractionRing R)ˣ) :
        FractionRing R) := rfl
  rw [h, map_prod, Units.coe_prod]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [map_zpow, Units.val_zpow_eq_zpow_val]
  rfl

theorem fldF_findim_pf_mem (t : Fin (n + 1) → Rˣ) :
    ∀ r ∈ torusS K t Finset.univ, algebraMap R (FractionRing R) r ∈ fldF K t := by
  intro r hr
  have hle : torusS K t Finset.univ ≤
      (fldF K t).toSubalgebra.comap (IsScalarTower.toAlgHom K R (FractionRing R)) := by
    unfold torusS
    rw [Algebra.adjoin_le_iff]
    rintro _ ⟨m, -, rfl⟩
    rw [SetLike.mem_coe, Subalgebra.mem_comap, IsScalarTower.coe_toAlgHom', IntermediateField.mem_toSubalgebra,
      fldF_findim_pf_tpow]
    exact prod_mem fun k _ => zpow_mem
      (IntermediateField.subset_adjoin K (Set.range fun k => algebraMap R (FractionRing R) (t k : R)) ⟨k, rfl⟩ :
        algebraMap R (FractionRing R) (t k : R) ∈ fldF K t) _
  have := hle hr
  rwa [Subalgebra.mem_comap, IsScalarTower.coe_toAlgHom', IntermediateField.mem_toSubalgebra] at this

theorem fldF_findim_pf (t : Fin (n + 1) → Rˣ) (Bu : Subalgebra K R) (hTB : torusS K t Finset.univ ≤ Bu) (hFG : Bu.FG)
    (hInt : ∀ b ∈ Bu, IsIntegral (torusS K t Finset.univ) b)
    (hFrac : ∀ r : R, ∃ b ∈ Bu, ∃ b' ∈ Bu, b' ≠ 0 ∧ r * b' = b) :
    FiniteDimensional (fldF K t) (FractionRing R) := by
  classical
  obtain ⟨s, hs⟩ := hFG

  let ψ : torusS K t Finset.univ →+* fldF K t :=
    ((algebraMap R (FractionRing R)).comp (torusS K t Finset.univ).val.toRingHom).codRestrict (fldF K t)
      (fun x => fldF_findim_pf_mem t x x.2)
  have hcomp : (algebraMap (fldF K t) (FractionRing R)).comp ψ =
      (algebraMap R (FractionRing R)).comp (algebraMap (torusS K t Finset.univ) R) := by
    ext x
    rfl

  have hint : ∀ x ∈ (s : Set R), IsIntegral (fldF K t) (algebraMap R (FractionRing R) x) := fun x hx =>
    IsIntegral.map_of_comp_eq ψ (algebraMap R (FractionRing R)) hcomp
      (hInt x (hs ▸ Algebra.subset_adjoin hx))
  let E := IntermediateField.adjoin (fldF K t) (algebraMap R (FractionRing R) '' (s : Set R))
  have : Finite (algebraMap R (FractionRing R) '' (s : Set R)) := (s.finite_toSet.image _).to_subtype
  have hE : FiniteDimensional (fldF K t) E := IntermediateField.finiteDimensional_adjoin (by
    rintro _ ⟨x, hx, rfl⟩
    exact hint x hx)

  have hBu : Bu ≤ ((E.restrictScalars K).toSubalgebra).comap (IsScalarTower.toAlgHom K R (FractionRing R)) := by
    rw [← hs, Algebra.adjoin_le_iff]
    intro x hx
    rw [SetLike.mem_coe, Subalgebra.mem_comap, IsScalarTower.coe_toAlgHom', IntermediateField.mem_toSubalgebra,
      IntermediateField.mem_restrictScalars]
    exact IntermediateField.subset_adjoin _ _ ⟨x, hx, rfl⟩
  have hmemB : ∀ b ∈ Bu, algebraMap R (FractionRing R) b ∈ E := fun b hb => by
    have := hBu hb
    rwa [Subalgebra.mem_comap, IsScalarTower.coe_toAlgHom', IntermediateField.mem_toSubalgebra,
      IntermediateField.mem_restrictScalars] at this

  have hmemR : ∀ r : R, algebraMap R (FractionRing R) r ∈ E := fun r => by
    obtain ⟨b, hb, b', hb', hb0, hrb⟩ := hFrac r
    have hne : algebraMap R (FractionRing R) b' ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective R (FractionRing R))).mpr hb0
    have heq : algebraMap R (FractionRing R) r = algebraMap R (FractionRing R) b / algebraMap R (FractionRing R) b' :=
      eq_div_of_mul_eq hne (by rw [← map_mul, hrb])
    rw [heq]
    exact div_mem (hmemB b hb) (hmemB b' hb')
  have htop : E = ⊤ := by
    rw [eq_top_iff]
    intro y _
    obtain ⟨r, r', -, rfl⟩ := IsFractionRing.div_surjective (A := R) y
    exact div_mem (hmemR r) (hmemR r')
  have e : E ≃ₗ[fldF K t] FractionRing R :=
    ((IntermediateField.equivOfEq htop).trans IntermediateField.topEquiv).toLinearEquiv
  exact e.finiteDimensional

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidFinPf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RaTpowSinglePow\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Mathlib.RingTheory.Trace.Defs\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DerivationCommutesWithTrace\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidFinPf\npublic import Mathlib.Algebra.DualNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Pb

variable {K : Type} [Field K] {R : Type} [CommRing R] [IsDomain R] [Algebra K R] {n : ℕ}

theorem frac_deriv (D : Derivation K R R) :
    ∃ D' : Derivation K (FractionRing R) (FractionRing R),
      ∀ r, D' (algebraMap R (FractionRing R) r) = algebraMap R (FractionRing R) (D r) := by
  let φ : R →+* TrivSqZeroExt (FractionRing R) (FractionRing R) :=
    { toFun := fun r => TrivSqZeroExt.inl (algebraMap R (FractionRing R) r) +
        TrivSqZeroExt.inr (algebraMap R (FractionRing R) (D r))
      map_one' := by ext <;> simp
      map_mul' := fun x y => by
        ext
        · simp
        · simp [D.leibniz, mul_comm, -DualNumber.inr_eq_smul_eps]
      map_zero' := by ext <;> simp
      map_add' := fun x y => by ext <;> simp [-DualNumber.inr_eq_smul_eps] }
  have hu : ∀ s : nonZeroDivisors R, IsUnit (φ s) := fun s =>
    TrivSqZeroExt.isUnit_iff_isUnit_fst.2 (by
      simpa [φ] using IsLocalization.map_units (FractionRing R) s)
  let Λ : FractionRing R →+* TrivSqZeroExt (FractionRing R) (FractionRing R) := IsLocalization.lift hu
  have hΛ : ∀ r, Λ (algebraMap R (FractionRing R) r) = φ r := fun r => IsLocalization.lift_eq hu r
  have hfst : ∀ x, (Λ x).fst = x := fun x => by
    have : (TrivSqZeroExt.fstHom (FractionRing R) (FractionRing R) (FractionRing R)).toRingHom.comp Λ =
        RingHom.id _ := by
      refine IsLocalization.ringHom_ext (nonZeroDivisors R) (RingHom.ext fun r => ?_)
      simp [hΛ, φ]
    exact congr($this x)
  have hsnd : ∀ r, (Λ (algebraMap R (FractionRing R) r)).snd = algebraMap R (FractionRing R) (D r) := fun r => by
    rw [hΛ]
    simp [φ, -DualNumber.inr_eq_smul_eps]
  have hmul : ∀ x y, (Λ (x * y)).snd = x • (Λ y).snd + y • (Λ x).snd := fun x y => by
    rw [map_mul, TrivSqZeroExt.snd_mul, hfst, hfst]
    simp [mul_comm]
  have hK : ∀ c : K, (Λ (algebraMap K (FractionRing R) c)).snd = 0 := fun c => by
    rw [IsScalarTower.algebraMap_apply K R (FractionRing R), hsnd, D.map_algebraMap, map_zero]
  let e : FractionRing R →ₗ[K] FractionRing R :=
    { toFun := fun x => (Λ x).snd
      map_add' := fun x y => by rw [map_add (f := _), TrivSqZeroExt.snd_add]
      map_smul' := fun c x => by
        rw [RingHom.id_apply, Algebra.smul_def, hmul, hK, smul_zero, add_zero, algebraMap_smul] }
  exact ⟨Derivation.mk' e fun x y => hmul x y, fun r => hsnd r⟩

theorem torus_mem_fldF (t : Fin (n + 1) → Rˣ) (S : Finset (Fin (n + 2))) :
    ∀ r ∈ torusS K t S, algebraMap R (FractionRing R) r ∈ fldF K t := fun r hr =>
  fldF_findim_pf_mem t r (torusS_le_univ t S hr)

theorem trace_deriv [CharZero K] (t : Fin (n + 1) → Rˣ) [FiniteDimensional (fldF K t) (FractionRing R)] (D : Derivation K R R)
    (hD : ∀ j, D (t j : R) ∈ Set.range (algebraMap K R)) (y b : R) (hb : b ∈ torusS K t Finset.univ)
    (hy : algebraMap (fldF K t) (FractionRing R)
      (Algebra.trace (fldF K t) (FractionRing R) (algebraMap R (FractionRing R) y)) = algebraMap R (FractionRing R) b) :
    algebraMap (fldF K t) (FractionRing R)
      (Algebra.trace (fldF K t) (FractionRing R) (algebraMap R (FractionRing R) (D y))) =
        algebraMap R (FractionRing R) (D b) := by
  obtain ⟨Dl, hDl⟩ := frac_deriv D

  have hF : ∀ x ∈ fldF K t, Dl x ∈ fldF K t := fun x hx => by
    induction hx using IntermediateField.adjoin_induction with
    | mem x hx =>
      obtain ⟨j, rfl⟩ := hx
      obtain ⟨c, hc⟩ := hD j
      rw [hDl, ← hc, ← IsScalarTower.algebraMap_apply]
      exact IntermediateField.algebraMap_mem _ c
    | algebraMap c =>
      rw [Derivation.map_algebraMap]
      exact zero_mem _
    | add x y _ _ hx hy =>
      rw [map_add (f := _)]
      exact add_mem hx hy
    | inv x hx0 hx =>
      rw [Derivation.leibniz_inv, smul_eq_mul]
      exact mul_mem (neg_mem (pow_mem (inv_mem hx0) 2)) hx
    | mul x y hx0 hy0 hx hy =>
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
      exact add_mem (mul_mem hx0 hy) (mul_mem hy0 hx)
  let e : fldF K t →ₗ[K] fldF K t :=
    { toFun := fun x => ⟨Dl (x : FractionRing R), hF _ x.2⟩
      map_add' := fun x y => Subtype.ext (map_add Dl (x : FractionRing R) y)
      map_smul' := fun c x => Subtype.ext (Dl.map_smul c (x : FractionRing R)) }
  let D0 : Derivation K (fldF K t) (fldF K t) :=
    Derivation.mk' e fun x y => Subtype.ext (by
      change Dl ((x : FractionRing R) * y) = (x : FractionRing R) * Dl (y : FractionRing R) +
        (y : FractionRing R) * Dl (x : FractionRing R)
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul])
  have hD0 : ∀ x : fldF K t, Dl (algebraMap (fldF K t) (FractionRing R) x) =
      algebraMap (fldF K t) (FractionRing R) (D0 x) := fun _ => rfl
  have key := _root_.GlobalTheory.CompanionTheory.TraceDerivation.trace_map_derivation K (fldF K t) (FractionRing R) Dl D0 hD0 (algebraMap R (FractionRing R) y)
  rw [← hDl, ← key, ← hD0, hy, hDl]

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF =====

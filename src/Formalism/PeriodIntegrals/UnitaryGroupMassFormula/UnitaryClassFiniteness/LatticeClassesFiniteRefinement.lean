module

public import Formalism.PeriodIntegrals.HermLatFin
public import Formalism.HermitianLattices.DefsCS
public import Mathlib.NumberTheory.NumberField.Discriminant.Defs
public import Formalism.HermitianLattices.HermitianLatticesProofs.ClassSetAssembly
public import Formalism.HermitianLattices.HermitianLatticesProofs.FinIntermediate
public import Formalism.HermitianLattices.HermitianLatticesProofs.GenusCovolBound
public import Formalism.HermitianLattices.HermitianLatticesProofs.IsomOfTrace
public import Formalism.HermitianLattices.HermitianLatticesProofs.ShortVectors
public import Formalism.HermitianLattices.HermitianLatticesProofs.TraceReal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.ClassFiniteOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.HermSingleLeft

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HformTracePos, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HermLatFinMain, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.LatticeClassesFiniteRefinement

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HformTracePos =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HformTracePos", "h": "module\n\npublic import Formalism.PeriodIntegrals.HermLatFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix
open scoped ComplexOrder

noncomputable section

namespace PI.HermLatFin.UnitaryGroupMassFormula

variable {E : Type} [Field E] [NumberField E]

theorem sigma_invol (σ : E →+* E)
    (hσ : ∀ τ : E →+* ℂ, ∀ a : E, τ (σ a) = starRingEnd ℂ (τ a)) (a : E) : σ (σ a) = a := by
  let τ : E →+* ℂ := (IsAlgClosed.lift : E →ₐ[ℚ] ℂ).toRingHom
  apply τ.injective
  rw [hσ, hσ, Complex.conj_conj]

@[instance_reducible]
def starOf (σ : E →+* E) (h2 : ∀ a, σ (σ a) = a) : StarRing E where
  star := σ
  star_involutive := h2
  star_mul a b := by
    show σ (a * b) = σ b * σ a
    rw [map_mul, mul_comm]
  star_add a b := map_add σ a b

theorem herm_hermitian {n : ℕ} (σ : E →+* E)
    (hσ : ∀ τ : E →+* ℂ, ∀ a : E, τ (σ a) = starRingEnd ℂ (τ a))
    (J : Matrix (Fin n) (Fin n) E) (hJ : ∀ τ : E →+* ℂ, (J.map τ).PosDef) (i j : Fin n) :
    σ (J i j) = J j i := by
  let τ : E →+* ℂ := (IsAlgClosed.lift : E →ₐ[ℚ] ℂ).toRingHom
  apply τ.injective
  rw [hσ]
  have h := congrFun (congrFun (hJ τ).isHermitian j) i
  rw [Matrix.conjTranspose_apply, Matrix.map_apply, Matrix.map_apply] at h
  rw [starRingEnd_apply]
  exact h

section Form

variable [StarRing E] {n : ℕ}

def hform (J : Matrix (Fin n) (Fin n) E) : (Fin n → E) →ₗ⋆[E] (Fin n → E) →ₗ[E] E :=
  LinearMap.mk₂'ₛₗ (starRingEnd E) (RingHom.id E)
    (fun x y => ∑ i, ∑ j, star (x i) * J i j * y j)
    (fun x x' y => by
      simp only [Pi.add_apply, star_add, add_mul, Finset.sum_add_distrib])
    (fun c x y => by
      simp only [Pi.smul_apply, smul_eq_mul, star_mul', starRingEnd_apply, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      ring)
    (fun x y y' => by
      simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib])
    (fun c x y => by
      simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      ring)

theorem hform_apply (J : Matrix (Fin n) (Fin n) E) (x y : Fin n → E) :
    hform J x y = ∑ i, ∑ j, star (x i) * J i j * y j := rfl

theorem hform_eq_herm (σ : E →+* E) (hst : ∀ a : E, star a = σ a)
    (J : Matrix (Fin n) (Fin n) E) (x y : Fin n → E) : hform J x y = herm σ J x y := by
  simp only [hform_apply, herm, hst]

theorem hform_isSymm (J : Matrix (Fin n) (Fin n) E) (hJ : ∀ i j, star (J i j) = J j i) :
    (hform J).IsSymm := by
  refine LinearMap.IsSymm.mk fun x y => ?_
  simp only [hform_apply, starRingEnd_apply, star_sum, star_mul', star_star, hJ]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

end Form

section Pos

variable [StarRing E] {n : ℕ}

theorem hform_trace_pos (σ : E →+* E) (hst : ∀ a : E, star a = σ a)
    (hσ : ∀ τ : E →+* ℂ, ∀ a : E, τ (σ a) = starRingEnd ℂ (τ a))
    (J : Matrix (Fin n) (Fin n) E) (hJ : ∀ τ : E →+* ℂ, (J.map τ).PosDef)
    (x : Fin n → E) (hx : x ≠ 0) : 0 < Algebra.trace ℚ E (hform J x x) := by
  haveI : Nonempty (E →ₐ[ℚ] ℂ) := ⟨IsAlgClosed.lift⟩
  have key : ∀ τ : E →ₐ[ℚ] ℂ, 0 < τ (hform J x x) := by
    intro τ
    have hτσ : ∀ a : E, τ (σ a) = star (τ a) := fun a => by
      rw [← starRingEnd_apply]
      exact hσ τ.toRingHom a
    have e : τ (hform J x x) =
        star (fun i => τ (x i)) ⬝ᵥ (J.map τ) *ᵥ (fun i => τ (x i)) := by
      rw [hform_apply]

      simp only [map_sum]
      simp only [dotProduct, Matrix.mulVec, Pi.star_apply, Matrix.map_apply, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      rw [map_mul, map_mul, hst, hτσ]
      ring
    rw [e]
    refine (hJ τ.toRingHom).dotProduct_mulVec_pos ?_
    intro h0
    apply hx
    funext i
    have h1 := congrFun h0 i
    exact (map_eq_zero_iff _ τ.toRingHom.injective).1 h1
  have hsum : 0 < ∑ τ : E →ₐ[ℚ] ℂ, τ (hform J x x) :=
    Finset.sum_pos (fun τ _ => key τ) Finset.univ_nonempty
  rw [← trace_eq_sum_embeddings ℂ, eq_ratCast, ← Complex.ofReal_ratCast, Complex.zero_lt_real,
    Rat.cast_pos] at hsum
  exact hsum

theorem isUJ_of_isom (σ : E →+* E) (hst : ∀ a : E, star a = σ a)
    (J : Matrix (Fin n) (Fin n) E) (g : (Fin n → E) →ₗ[E] (Fin n → E))
    (hg : ∀ x y, hform J (g x) (g y) = hform J x y) :
    IsUJ σ J (LinearMap.toMatrix' g) := by
  ext a b
  have h := hg (Pi.single a 1) (Pi.single b 1)
  rw [hform_apply, hform_apply] at h
  simp only [← LinearMap.toMatrix'_apply, hst] at h
  have hr : ∑ i, ∑ j, σ ((Pi.single a 1 : Fin n → E) i) * J i j * (Pi.single b 1 : Fin n → E) j = J a b := by
    simp [Pi.single_apply, apply_ite σ]
  rw [hr] at h
  rw [← h]
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, Finset.sum_mul]
  rw [Finset.sum_comm]

end Pos

end PI.HermLatFin.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HformTracePos =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HermLatFinMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HermLatFinMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HformTracePos\npublic import Formalism.HermitianLattices.DefsCS\npublic import Mathlib.NumberTheory.NumberField.Discriminant.Defs\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.ClassSetAssembly\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.FinIntermediate\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.GenusCovolBound\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.IsomOfTrace\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.ShortVectors\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.TraceReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix
open scoped ComplexOrder

noncomputable section

namespace PI.HermLatFin.UnitaryGroupMassFormula

variable {E : Type} [Field E] [NumberField E]

section Covol

variable [StarRing E] {n : ℕ}

theorem covol_le (σ : E →+* E) (hst : ∀ a : E, star a = σ a)
    (J : Matrix (Fin n) (Fin n) E) (T : ℕ) (N : ℕ)
    (ι : (Fin n → E) →+ EuclideanSpace ℝ (Fin N))
    (hι : ∀ x y, inner ℝ (ι x) (ι y) = ((Algebra.trace ℚ E (hform J x y) : ℚ) : ℝ))
    (M : Submodule (𝓞 E) (Fin n → E)) [DiscreteTopology (Formalism.HermitianLatticesTheory.zmap ι M)]
    [IsZLattice ℝ (Formalism.HermitianLatticesTheory.zmap ι M)] (hM : admitted σ J T M) (hT : 0 < T) :
    ZLattice.covolume (Formalism.HermitianLatticesTheory.zmap ι M) ≤
      Real.sqrt (((T * (NumberField.discr E).natAbs ^ 2 : ℕ) : ℝ) ^ N) := by
  classical
  set e : ℤ := NumberField.discr E with he
  have he0 : e ≠ 0 := NumberField.discr_ne_zero E
  have ecast : ((e.natAbs ^ 2 : ℕ) : E) = ((e : E)) * (e : E) := by
    have h0 : ((e.natAbs ^ 2 : ℕ) : ℤ) = e * e := by rw [Nat.cast_pow, Int.natAbs_sq, sq]
    rw [← Int.cast_natCast, h0, Int.cast_mul]
  have hstar : ∀ r : 𝓞 E, star (algebraMap (𝓞 E) E r) ∈ Set.range (algebraMap (𝓞 E) E) :=
    fun r => ⟨⟨star (algebraMap (𝓞 E) E r), r.isIntegral_coe.map (starRingEnd E).toIntAlgHom⟩, rfl⟩
  have hdual : ∀ y, (∀ x ∈ M, ∃ z : ℤ, Algebra.trace ℚ E (hform J x y) = z) →
      ∀ x ∈ M, IsIntegral ℤ (herm σ J x ((e : E) • y)) := by
    intro y hy x hx
    have hm : ((e : ℤ) : E) * hform J x y ∈ (1 : Submodule (𝓞 E) E) := by
      apply Formalism.HermitianLatticesTheory.genusCovolBound_discr
      intro r
      obtain ⟨s, hs'⟩ := hstar r
      obtain ⟨z, hz⟩ := hy (s • x) (M.smul_mem s hx)
      refine ⟨z, ?_⟩
      rw [← hz]
      congr 1
      rw [← algebraMap_smul E s x, LinearMap.map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul,
        starRingEnd_apply, hs', star_star, mul_comm]
    obtain ⟨r, hr⟩ := Submodule.mem_one.mp hm
    rw [← hform_eq_herm σ hst, LinearMap.map_smul, smul_eq_mul, ← hr]
    exact RingOfIntegers.isIntegral_coe r
  apply Formalism.HermitianLatticesTheory.genusCovolBound_covol_le (hform J) N ι hι M (T * e.natAbs ^ 2)
    (Nat.mul_pos hT (pow_pos (Int.natAbs_pos.mpr he0) 2))
  intro y y' hy hy'
  have h1 : (T : E) • ((e : E) • y) ∈ M := hM.2.2 _ (hdual y hy)
  have h2 := hdual y' hy' _ h1
  rw [← hform_eq_herm σ hst] at h2
  have key : hform J ((T : E) • ((e : E) • y)) ((e : E) • y') =
      algebraMap ℚ E ((T * e.natAbs ^ 2 : ℕ) : ℚ) * hform J y y' := by
    rw [map_natCast, Nat.cast_mul, ecast]
    simp only [LinearMap.map_smulₛₗ₂, LinearMap.map_smul, starRingEnd_apply, star_intCast,
      star_natCast, smul_eq_mul]
    ring
  rw [key] at h2
  obtain ⟨z, hz⟩ := Formalism.HermitianLatticesTheory.genusCovolBound_trace_int (K := E) ⟨_, h2⟩
  refine ⟨z, ?_⟩
  rw [← hz]
  show _ = Algebra.trace ℚ E (algebraMap ℚ E _ * hform J y y')
  rw [← Algebra.smul_def, LinearMap.map_smul, smul_eq_mul]

end Covol

theorem hermLatFin_main : HermLatFin := by
  intro E _ _ n σ J T hσ hJ hT
  classical
  letI : StarRing E := starOf σ (sigma_invol σ hσ)
  have hst : ∀ a : E, star a = σ a := fun _ => rfl
  have hJs : ∀ i j, star (J i j) = J j i := fun i j => herm_hermitian σ hσ J hJ i j
  have hs := hform_isSymm J hJs
  have hpos : ∀ x : Fin n → E, x ≠ 0 → 0 < Algebra.trace ℚ E (hform J x x) :=
    hform_trace_pos σ hst hσ J hJ
  obtain ⟨N, ι, hι, hmul, hlat⟩ := Formalism.HermitianLatticesTheory.traceReal E (Fin n → E) (hform J) hs hpos
  obtain ⟨s, -, hsall⟩ := Formalism.HermitianLatticesTheory.classSetFinite_core Formalism.HermitianLatticesTheory.shortVectors
    Formalism.HermitianLatticesTheory.finIntermediate Formalism.HermitianLatticesTheory.isomOfTrace (hform J) hpos N ι hι hmul 1 one_pos _
    {L | admitted σ J T L}
    (fun M hM x hx y hy => by
      rw [Nat.cast_one, one_mul, hform_eq_herm σ hst]
      exact Submodule.mem_one.mpr ⟨⟨_, hM.2.1 x hx y hy⟩, rfl⟩)
    (fun M hM => hlat M
      { toIsLattice := Submodule.IsLattice.of_fg E hM.1.1
        span_eq_top := hM.1.2 })
    (fun M hM _ _ => covol_le σ hst J T N ι hι M hM hT)
  refine ⟨(s : Set _), s.finite_toSet, fun L hL => ?_⟩
  obtain ⟨N', hN', g, hg, hgN⟩ := hsall L hL
  refine ⟨N', hN', LinearMap.toMatrix' (g : (Fin n → E) →ₗ[E] (Fin n → E)),
    isUJ_of_isom σ hst J _ (fun x y => hg x y), ?_⟩
  rw [← hgN, Formalism.HermitianLatticesTheory.gmap, Submodule.map_coe]
  congr 1
  funext x
  exact LinearMap.toMatrix'_mulVec _ x

end PI.HermLatFin.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HermLatFinMain =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.LatticeClassesFiniteRefinement =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.LatticeClassesFiniteRefinement", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.ClassFiniteOf\npublic import Formalism.PeriodIntegrals.HermLatFin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianLatticeFiniteness.HermLatFinMain\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.HermSingleLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix NumberField
open scoped ComplexOrder

namespace PI.UnitaryGroupMassFormula.UJClassFin

open PI.HermLatFin

variable {E : Type} [Field E] [NumberField E]

theorem int_nat (m : ℕ) : IsIntegral ℤ (m : E) := by
  have h := isIntegral_algebraMap (R := ℤ) (A := E) (x := (m : ℤ))
  simpa using h

theorem int_sigma (σ : E →+* E) {a : E} (ha : IsIntegral ℤ a) : IsIntegral ℤ (σ a) := ha.map σ.toIntAlgHom

theorem mat_den {M : ℕ} (A : Matrix (Fin M) (Fin M) E) : ∃ d : ℕ, 0 < d ∧ ∀ i j, IsIntegral ℤ ((d : E) * A i j) := by
  have hex : ∀ a : E, ∃ d : ℕ, 0 < d ∧ IsIntegral ℤ ((d : E) * a) := by
    intro a
    have halg : IsAlgebraic ℤ a := by
      first
      | exact (IsFractionRing.isAlgebraic_iff ℤ ℚ E).mpr (Algebra.IsAlgebraic.isAlgebraic a)
    obtain ⟨y, hy0, hy⟩ : ∃ y ≠ (0 : ℤ), IsIntegral ℤ (y • a) := by
      first
      | exact halg.exists_integral_multiple
    refine ⟨y.natAbs, Int.natAbs_pos.mpr hy0, ?_⟩
    have hcast : ((y.natAbs : ℕ) : E) = (((y.natAbs : ℕ) : ℤ) : E) := (Int.cast_natCast _).symm
    rcases (show ((y.natAbs : ℕ) : ℤ) = y ∨ ((y.natAbs : ℕ) : ℤ) = -y by omega) with h | h
    · rw [hcast, h, ← zsmul_eq_mul]
      exact hy
    · rw [hcast, h, Int.cast_neg, neg_mul, ← zsmul_eq_mul]
      exact hy.neg
  choose d hd0 hd using fun p : Fin M × Fin M => hex (A p.1 p.2)
  refine ⟨∏ p, d p, Finset.prod_pos fun p _ => hd0 p, fun i j => ?_⟩
  have hsplit : (∏ p, d p : ℕ) = (∏ p ∈ Finset.univ.erase (i, j), d p) * d (i, j) :=
    (Finset.prod_erase_mul _ _ (Finset.mem_univ _)).symm
  rw [hsplit, Nat.cast_mul, mul_assoc]
  exact (int_nat _).mul (hd (i, j))

theorem lattice_classes_finite_refinement : LatFin := by
  intro E _ _ σ M J D T c0 hσ hpos hD hT hc0
  classical
  set J' : Matrix (Fin M) (Fin M) E := (D : E) • J with hJ'
  have hpos' : ∀ τ : E →+* ℂ, (J'.map τ).PosDef := by
    intro τ
    have : J'.map τ = (D : ℂ) • J.map τ := by
      ext i j
      simp [hJ', map_natCast]
    rw [this]
    exact (hpos τ).smul (by exact_mod_cast hD)
  obtain ⟨SE, hSEf, hSE⟩ := _root_.PI.HermLatFin.UnitaryGroupMassFormula.hermLatFin_main E M σ J' T hσ hpos' hT
  let Sub : Submodule (𝓞 E) (Fin M → E) → Set (Set (Fin M → E)) := fun N₀ =>
    {s | (∃ G : AddSubgroup (Fin M → E), (G : Set (Fin M → E)) = s) ∧ (∀ x ∈ N₀, (c0 : E) • x ∈ s) ∧ s ⊆ N₀}
  refine ⟨⋃ N₀ ∈ {N₀ | N₀ ∈ SE ∧ N₀.FG}, Sub N₀,
    Set.Finite.biUnion (hSEf.subset (by exact fun N₀ h => h.1)) fun N₀ h => sub_finite N₀ h.2 c0 hc0, ?_⟩
  intro Λ h1 h2 h3 h4
  have hDE : (D : E) ≠ 0 := by exact_mod_cast hD.ne'

  have hJdet : J.det ≠ 0 := by
    intro h0
    obtain ⟨τ⟩ := (inferInstance : Nonempty (E →+* ℂ))
    have hu := (Matrix.isUnit_iff_isUnit_det _).1 (hpos τ).isUnit
    have e : (J.map τ).det = τ J.det := (RingHom.map_det τ J).symm
    rw [e, h0, map_zero] at hu
    exact not_isUnit_zero hu
  obtain ⟨d, hd, hdJ⟩ := mat_den J⁻¹
  set N : Submodule (𝓞 E) (Fin M → E) := Submodule.span (𝓞 E) (Λ : Set (Fin M → E)) with hNdef
  have smul_coe : ∀ (a : 𝓞 E) (y : Fin M → E), a • y = (a : E) • y := fun a y => rfl

  have hI1 : ∀ x ∈ Λ, ∀ y ∈ N, IsIntegral ℤ ((D : E) * herm σ J x y) := by
    intro x hx y hy
    induction hy using Submodule.span_induction with
    | mem y hy => exact h3 x hx y hy
    | zero => rw [herm_zero_right, mul_zero]; exact isIntegral_zero
    | add y z _ _ h1 h2 => rw [herm_add_right, mul_add]; exact h1.add h2
    | smul a y _ h1 =>
      rw [smul_coe, herm_smul_right, mul_left_comm]
      exact a.isIntegral_coe.mul h1
  have hI : ∀ x ∈ N, ∀ y ∈ N, IsIntegral ℤ (herm σ J' x y) := by
    intro x hx y hy
    rw [hJ', herm_scale]
    induction hx using Submodule.span_induction with
    | mem x hx => exact hI1 x hx y hy
    | zero => rw [herm_zero_left, mul_zero]; exact isIntegral_zero
    | add x z _ _ h1 h2 => rw [herm_add_left, mul_add]; exact h1.add h2
    | smul a x _ h1 =>
      rw [smul_coe, herm_smul_left, mul_left_comm]
      exact (int_sigma σ a.isIntegral_coe).mul h1

  have hDual : ∀ y : Fin M → E, (∀ x ∈ N, IsIntegral ℤ (herm σ J' x y)) → (T : E) • y ∈ N := by
    intro y hy
    refine Submodule.subset_span (h4 y fun x hx => ?_)
    have := hy x (Submodule.subset_span hx)
    rwa [hJ', herm_scale] at this

  obtain ⟨k, hk, hkΛ⟩ := h2
  have hsing : ∀ i, (Pi.single i (k : E) : Fin M → E) ∈ Λ := by
    intro i
    have := hkΛ i 1 isIntegral_one
    rwa [mul_one] at this
  have hNfg : N.FG := by
    refine fg_of_den N (d * D * k) (Nat.mul_pos (Nat.mul_pos hd hD) hk) fun y hy j => ?_
    have hJy : ∀ i, IsIntegral ℤ ((D : E) * (k : E) * (J.mulVec y) i) := by
      intro i
      have := hI1 _ (hsing i) y hy
      rwa [herm_single_left, ← mul_assoc] at this
    obtain ⟨w, hw⟩ : ∃ w, w = J.mulVec y := ⟨_, rfl⟩
    have hy' : y = J⁻¹.mulVec w := by
      rw [hw, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ (Ne.isUnit hJdet), Matrix.one_mulVec]
    rw [← hw] at hJy
    have : ((d * D * k : ℕ) : E) * y j = ∑ i, ((d : E) * J⁻¹ j i) * ((D : E) * (k : E) * w i) := by
      conv_lhs => rw [hy']
      rw [Matrix.mulVec, dotProduct, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      push_cast
      ring
    rw [this]
    exact IsIntegral.sum _ fun i _ => (hdJ j i).mul (hJy i)
  have hNspan : Submodule.span E (N : Set (Fin M → E)) = ⊤ := by
    refine eq_top_iff.2 fun v _ => ?_
    have hkE : (k : E) ≠ 0 := by exact_mod_cast hk.ne'
    have hv : v = ∑ j, (v j / (k : E)) • (Pi.single j (k : E) : Fin M → E) := by
      conv_lhs => rw [← Finset.univ_sum_single v]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [← Pi.single_smul]
      congr 1
      rw [smul_eq_mul, div_mul_cancel₀ _ hkE]
    rw [hv]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _
      (Submodule.subset_span (Submodule.subset_span (hsing j)))
  have hAdm : admitted σ J' T N := ⟨⟨hNfg, hNspan⟩, hI, hDual⟩
  obtain ⟨N₀, hN₀, g, hg, hgN⟩ := hSE N hAdm

  have hJ'det : J'.det ≠ 0 := by
    rw [hJ', Matrix.det_smul]
    exact mul_ne_zero (pow_ne_zero _ hDE) hJdet
  have hgdet : g.det ≠ 0 := by
    intro h0
    have := congrArg Matrix.det hg
    rw [Matrix.det_mul, Matrix.det_mul, h0, mul_zero] at this
    exact hJ'det this.symm
  have hgU : PI.UJClassFin.cT σ g * J * g = J := by
    have e1 : (g.map σ)ᵀ * J' * g = (D : E) • (PI.UJClassFin.cT σ g * J * g) := by
      rw [hJ', Matrix.mul_smul, Matrix.smul_mul]
      rfl
    have := hg
    unfold IsUJ at this
    rw [e1] at this
    exact smul_right_injective _ hDE this
  let G : GL (Fin M) E := Matrix.nonsingInvUnit g (Ne.isUnit hgdet)
  have hGg : ((G : GL (Fin M) E) : Matrix (Fin M) (Fin M) E) = g := rfl
  have hGU : G ∈ PI.UJClassFin.UJ σ J := by
    show PI.UJClassFin.cT σ (G : Matrix (Fin M) (Fin M) E) * J * (G : Matrix (Fin M) (Fin M) E) = J
    rw [hGg]; exact hgU
  have hgi : g⁻¹ * g = 1 := Matrix.nonsing_inv_mul _ (Ne.isUnit hgdet)
  have hig : g * g⁻¹ = 1 := Matrix.mul_nonsing_inv _ (Ne.isUnit hgdet)

  have hN₀eq : (N₀ : Set (Fin M → E)) = (fun x => g⁻¹.mulVec x) '' (N : Set (Fin M → E)) := by
    rw [← hgN, Set.image_image]
    simp only [Matrix.mulVec_mulVec, hgi, Matrix.one_mulVec, Set.image_id']
  have hN₀fg : N₀.FG := by
    have : N₀ = N.map ((Matrix.mulVecLin g⁻¹).restrictScalars (𝓞 E)) := by
      apply SetLike.coe_injective
      rw [hN₀eq, Submodule.map_coe]
      rfl
    rw [this]
    exact hNfg.map _

  have hc0N : ∀ y ∈ N, (c0 : E) • y ∈ Λ := by
    let Nc : Submodule (𝓞 E) (Fin M → E) :=
      { carrier := {y | ∀ a : 𝓞 E, (c0 : E) • ((a : E) • y) ∈ Λ}
        add_mem' := fun {y z} hy hz a => by rw [smul_add, smul_add]; exact Λ.add_mem (hy a) (hz a)
        zero_mem' := fun a => by rw [smul_zero, smul_zero]; exact Λ.zero_mem
        smul_mem' := fun b y hy a => by
          show (c0 : E) • ((a : E) • (b • y)) ∈ Λ
          have e : (a : E) • (b • y) = ((a * b : 𝓞 E) : E) • y := by
            rw [smul_coe b y, smul_smul]
            rfl
          rw [e]
          exact hy (a * b) }
    have hle : N ≤ Nc := by
      rw [hNdef, Submodule.span_le]
      intro x hx a
      rw [smul_smul]
      exact h1 x hx _ a.isIntegral_coe
    intro y hy
    have := hle hy 1
    rwa [show ((1 : 𝓞 E) : E) = 1 from rfl, one_smul] at this
  let s : Set (Fin M → E) := (fun x => g⁻¹.mulVec x) '' (Λ : Set (Fin M → E))
  have hs : s ∈ Sub N₀ := by
    refine ⟨⟨Λ.map (Matrix.mulVecLin g⁻¹).toAddMonoidHom, by rw [AddSubgroup.coe_map]; rfl⟩, ?_, ?_⟩
    · intro x hx
      have hgx : g.mulVec x ∈ N := by rw [← SetLike.mem_coe, ← hgN]; exact ⟨x, hx, rfl⟩
      refine ⟨(c0 : E) • g.mulVec x, hc0N _ hgx, ?_⟩
      show g⁻¹.mulVec ((c0 : E) • g.mulVec x) = (c0 : E) • x
      rw [Matrix.mulVec_smul, Matrix.mulVec_mulVec, hgi, Matrix.one_mulVec]
    · rintro _ ⟨x, hx, rfl⟩
      show g⁻¹.mulVec x ∈ (N₀ : Set (Fin M → E))
      rw [hN₀eq]
      exact Set.mem_image_of_mem _ (Submodule.subset_span hx)
  refine ⟨s, Set.mem_biUnion ⟨hN₀, hN₀fg⟩ hs, ⟨G, hGU⟩, ?_⟩
  show (Λ : Set (Fin M → E)) = (fun x => g.mulVec x) '' s
  rw [Set.image_image]
  simp only [Matrix.mulVec_mulVec, hig, Matrix.one_mulVec, Set.image_id']

end PI.UnitaryGroupMassFormula.UJClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryClassFiniteness.LatticeClassesFiniteRefinement =====

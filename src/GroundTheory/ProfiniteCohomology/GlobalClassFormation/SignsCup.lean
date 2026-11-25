module

public import Mathlib.NumberTheory.NumberField.Completion.InfinitePlace
public import GroundTheory.ProfiniteCohomology.GlobalClassFormation.CupLocal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.GlobalClassFormation.ExtensionEmbeddingOfIsRealAlgebraMap, GroundTheory.ProfiniteCohomology.GlobalClassFormation.SignsCup

-- ===== clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.ExtensionEmbeddingOfIsRealAlgebraMap =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.GlobalClassFormation.ExtensionEmbeddingOfIsRealAlgebraMap", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Completion.InfinitePlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open NumberField NumberField.InfinitePlace

variable {K : Type*} [Field K] [NumberField K]


omit [NumberField K] in
theorem apply_eq_abs_embedding_of_isReal {v : InfinitePlace K} (hv : v.IsReal) (x : K) :
    v x = |embedding_of_isReal hv x| := by
  rw [← norm_embedding_of_isReal hv x, Real.norm_eq_abs]

theorem exists_units_neg_iff_mem (S : Set {v : InfinitePlace K // v.IsReal}) :
    ∃ a : Kˣ, ∀ v : {v : InfinitePlace K // v.IsReal},
      (embedding_of_isReal v.2 (a : K) < 0 ↔ v ∈ S) ∧ (0 < embedding_of_isReal v.2 (a : K) ↔ v ∉ S) := by
  classical

  set c : InfinitePlace K → K := fun v => if h : v.IsReal then
    (if (⟨v, h⟩ : {v : InfinitePlace K // v.IsReal}) ∈ S then -1 else 1) else 1 with hcdef
  let t : (v : InfinitePlace K) → WithAbs v.1 := fun v => WithAbs.toAbs v.1 (c v)
  let U : Set ((v : InfinitePlace K) → WithAbs v.1) := Set.pi Set.univ fun v => Metric.ball (t v) 1
  have hU : IsOpen U := isOpen_set_pi Set.finite_univ fun v _ => Metric.isOpen_ball
  have htU : t ∈ U := fun v _ => Metric.mem_ball_self one_pos
  obtain ⟨x, hx⟩ := (InfinitePlace.denseRange_algebraMap_pi K).exists_mem_open hU ⟨t, htU⟩

  have hclose : ∀ v : InfinitePlace K, v (x - c v) < 1 := by
    intro v
    have h := hx v (Set.mem_univ v)
    rw [Metric.mem_ball, dist_eq_norm] at h
    exact h
  have hc : ∀ v : InfinitePlace K, v (c v) = 1 := by
    intro v
    rw [hcdef]
    show v.1 (if h : v.IsReal then (if (⟨v, h⟩ : {v : InfinitePlace K // v.IsReal}) ∈ S then -1 else 1)
      else 1) = 1
    split_ifs <;> simp only [AbsoluteValue.map_neg, AbsoluteValue.map_one]
  have hx0 : x ≠ 0 := by
    rintro rfl
    obtain ⟨v⟩ : Nonempty (InfinitePlace K) := inferInstance
    have := hclose v
    rw [zero_sub, show v (-c v) = v (c v) from v.1.map_neg _, hc] at this
    exact lt_irrefl _ this
  refine ⟨Units.mk0 x hx0, fun v => ?_⟩
  have h := hclose v.1
  rw [apply_eq_abs_embedding_of_isReal v.2, map_sub] at h
  have hcv : c v.1 = if v ∈ S then -1 else 1 := by rw [hcdef]; exact dif_pos v.2
  rw [hcv] at h
  rw [Units.val_mk0]
  by_cases hv : v ∈ S
  · rw [if_pos hv, map_neg, map_one, sub_neg_eq_add, abs_lt] at h
    exact ⟨⟨fun _ => hv, fun _ => by linarith [h.2]⟩, ⟨fun h' => by linarith [h.2], fun h' => absurd hv h'⟩⟩
  · rw [if_neg hv, map_one, abs_lt] at h
    exact ⟨⟨fun h' => by linarith [h.1], fun h' => absurd h' hv⟩, ⟨fun _ => hv, fun _ => by linarith [h.1]⟩⟩


omit [NumberField K] in
theorem extensionEmbeddingOfIsReal_algebraMap {v : InfinitePlace K} (hv : v.IsReal) (x : K) :
    Completion.extensionEmbeddingOfIsReal hv (algebraMap K v.Completion x) = embedding_of_isReal hv x :=
  by
    rw [AbsoluteValue.Completion.algebraMap_def, WithAbs.algebraMap_right_apply,
      Algebra.algebraMap_self_apply]
    simpa using Completion.extensionEmbeddingOfIsReal_coe hv (WithAbs.toAbs v.1 x)

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.ExtensionEmbeddingOfIsRealAlgebraMap =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.SignsCup =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.GlobalClassFormation.SignsCup", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.GlobalClassFormation.CupLocal\npublic import GroundTheory.ProfiniteCohomology.GlobalClassFormation.ExtensionEmbeddingOfIsRealAlgebraMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open NumberField NumberField.InfinitePlace GroundTheory.Global FiniteSubfield

open scoped NumberField.LiesOver

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : GroundTheory.Global.FiniteSubfield}

section Norms

variable (v : InfinitePlace K.1)

theorem range_norm_infAlgClosure_eq {F : GroundTheory.Global.FiniteSubfield} [Fact (K ≤ F)] (w : v.placesOver F.1)
    [(w : InfinitePlace F.1).LiesOver v]
    (e : (w : InfinitePlace F.1).Completion ≃ₐ[v.Completion] AlgebraicClosure v.Completion) :
    Set.range (Algebra.norm v.Completion : AlgebraicClosure v.Completion → v.Completion) =
      Set.range (Algebra.norm v.Completion : (w : InfinitePlace F.1).Completion → v.Completion) := by
  ext c
  constructor
  · rintro ⟨y, rfl⟩
    exact ⟨e.symm y, Algebra.norm_eq_of_algEquiv e.symm y⟩
  · rintro ⟨y, rfl⟩
    exact ⟨e y, Algebra.norm_eq_of_algEquiv e y⟩

theorem mem_range_norm_iff_mem_normSubgroup {F : GroundTheory.Global.FiniteSubfield} [Fact (K ≤ F)] (w : v.placesOver F.1)
    [(w : InfinitePlace F.1).LiesOver v] (c : v.Completionˣ) :
    (c : v.Completion) ∈ Set.range (Algebra.norm v.Completion : (w : InfinitePlace F.1).Completion → v.Completion) ↔
      c ∈ InfinitePlace.normSubgroup v (w : InfinitePlace F.1) := by
  constructor
  · rintro ⟨y, hy⟩
    have hy0 : y ≠ 0 := by
      rintro rfl
      rw [Algebra.norm_zero] at hy
      exact c.ne_zero hy.symm
    exact ⟨Units.mk0 y hy0, Units.ext hy⟩
  · rintro ⟨y, hy⟩
    exact ⟨y, congrArg Units.val hy⟩

theorem not_isAlgClosed_of_ringHom_real {L : Type*} [Field L] (f : L →+* ℝ) : ¬ IsAlgClosed L := by
  intro hL
  obtain ⟨z, hz⟩ := IsAlgClosed.exists_eq_mul_self (-1 : L)
  have h := congrArg f hz
  rw [map_neg, map_one, map_mul] at h
  nlinarith [mul_self_nonneg (f z)]

theorem infAlgClosure_mem_range_norm_iff_of_isReal (hv : v.IsReal) (c : v.Completionˣ) :
    (c : v.Completion) ∈ Set.range (Algebra.norm v.Completion : AlgebraicClosure v.Completion → v.Completion) ↔
      0 < Completion.extensionEmbeddingOfIsReal hv (c : v.Completion) := by
  obtain ⟨F, _, w, ⟨e⟩⟩ := exists_infCompletion_algEquiv v
  have : (w : InfinitePlace F.1).LiesOver v := w.2
  have hw : (w : InfinitePlace F.1).IsComplex := by
    rw [← not_isReal_iff_isComplex]
    intro hwr
    have hc : IsAlgClosed (w : InfinitePlace F.1).Completion :=
      IsAlgClosed.of_ringEquiv (AlgebraicClosure v.Completion) _ e.toRingEquiv.symm
    exact not_isAlgClosed_of_ringHom_real (Completion.extensionEmbeddingOfIsReal hwr) hc
  rw [range_norm_infAlgClosure_eq v w e, mem_range_norm_iff_mem_normSubgroup v w,
    InfinitePlace.mem_normSubgroup_iff hv hw]

theorem infAlgClosure_mem_range_norm_of_isComplex (hv : v.IsComplex) (c : v.Completionˣ) :
    (c : v.Completion) ∈ Set.range (Algebra.norm v.Completion : AlgebraicClosure v.Completion → v.Completion) := by
  obtain ⟨F, _, w, ⟨e⟩⟩ := exists_infCompletion_algEquiv v
  have : (w : InfinitePlace F.1).LiesOver v := w.2
  have h : ¬ (v.IsReal ∧ (w : InfinitePlace F.1).IsComplex) := fun h =>
    (not_isReal_iff_isComplex.2 hv) h.1
  rw [range_norm_infAlgClosure_eq v w e, mem_range_norm_iff_mem_normSubgroup v w,
    InfinitePlace.normSubgroup_eq_top (w : InfinitePlace F.1) h]
  exact Subgroup.mem_top c

theorem exists_gal_ne_of_sq_eq_neg_one (hv : v.IsReal) {s : AlgebraicClosure v.Completion}
    (hs : s ^ 2 = -1) : ∃ σ : Gal(AlgebraicClosure v.Completion/v.Completion), σ s ≠ s := by
  by_contra h
  push Not at h
  obtain ⟨z, hz⟩ := (IsGalois.mem_range_algebraMap_iff_fixed s).2 h
  have hz2 : z ^ 2 = -1 := by
    apply (algebraMap v.Completion (AlgebraicClosure v.Completion)).injective
    rw [map_pow, hz, hs, map_neg, map_one]
  have h2 := congrArg (Completion.extensionEmbeddingOfIsReal hv) hz2
  rw [map_pow, map_neg, map_one] at h2
  nlinarith [sq_nonneg (Completion.extensionEmbeddingOfIsReal hv z)]

end Norms

section IChar

def sqrtNegOne : ℚ̄ := (IsAlgClosed.exists_eq_mul_self (-1 : ℚ̄)).choose

theorem sqrtNegOne_mul_self : sqrtNegOne * sqrtNegOne = -1 :=
  (IsAlgClosed.exists_eq_mul_self (-1 : ℚ̄)).choose_spec.symm

theorem sqrtNegOne_sq : sqrtNegOne ^ 2 = -1 := by
  rw [sq, sqrtNegOne_mul_self]

theorem sqrtNegOne_ne_neg : sqrtNegOne ≠ -sqrtNegOne := by
  intro h
  have h2 : (2 : ℚ̄) * sqrtNegOne = 0 := by rw [two_mul]; nth_rw 2 [h]; exact add_neg_cancel _
  rcases mul_eq_zero.1 h2 with h2 | h2
  · exact two_ne_zero h2
  · have := sqrtNegOne_mul_self
    rw [h2, zero_mul, eq_comm, neg_eq_zero] at this
    exact one_ne_zero this

theorem apply_sqrtNegOne_eq_or (σ : ℚ̄ ≃ₐ[ℚ] ℚ̄) : σ sqrtNegOne = sqrtNegOne ∨ σ sqrtNegOne = -sqrtNegOne := by
  have h : (σ sqrtNegOne - sqrtNegOne) * (σ sqrtNegOne + sqrtNegOne) = 0 := by
    have h1 : σ sqrtNegOne * σ sqrtNegOne = -1 := by rw [← map_mul, sqrtNegOne_mul_self, map_neg, map_one]
    linear_combination h1 - sqrtNegOne_mul_self
  rcases mul_eq_zero.1 h with h | h
  · exact Or.inl (sub_eq_zero.1 h)
  · exact Or.inr (eq_neg_of_add_eq_zero_left h)


open Classical in
def iCharFun (K : GroundTheory.Global.FiniteSubfield) (g : Additive K.1.fixingSubgroup) : QZ :=
  if ((Additive.toMul g : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne = sqrtNegOne then 0 else QZ.mk (1 / 2)

theorem iCharFun_of_fix {g : Additive K.1.fixingSubgroup}
    (h : ((Additive.toMul g : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne = sqrtNegOne) : iCharFun K g = 0 := by
  simp [iCharFun, h]

theorem iCharFun_of_not_fix {g : Additive K.1.fixingSubgroup}
    (h : ((Additive.toMul g : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne ≠ sqrtNegOne) :
    iCharFun K g = QZ.mk (1 / 2) := by
  simp [iCharFun, h]

theorem iCharFun_congr {g h : Additive K.1.fixingSubgroup}
    (hgh : ((Additive.toMul h : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne =
      ((Additive.toMul g : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne) : iCharFun K h = iCharFun K g := by
  unfold iCharFun
  rw [hgh]

theorem continuous_iCharFun : Continuous (iCharFun K) := by
  refine IsLocallyConstant.continuous ?_
  rw [IsLocallyConstant.iff_exists_open]
  intro g
  let G := K.1.fixingSubgroup
  let g' : G := Additive.toMul g
  have hstab : IsOpen (MulAction.stabilizer (ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne : Set (ℚ̄ ≃ₐ[ℚ] ℚ̄)) :=
    stabilizer_isOpen_of_isIntegral sqrtNegOne
  have hopen : IsOpen ((fun h : G => g'⁻¹ * h) ⁻¹' ((G.subtype : G → ℚ̄ ≃ₐ[ℚ] ℚ̄) ⁻¹'
      (MulAction.stabilizer (ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne : Set (ℚ̄ ≃ₐ[ℚ] ℚ̄)))) :=
    (hstab.preimage continuous_subtype_val).preimage (continuous_const_mul _)
  refine ⟨(fun h : G => g'⁻¹ * h) ⁻¹' ((G.subtype : G → ℚ̄ ≃ₐ[ℚ] ℚ̄) ⁻¹'
      (MulAction.stabilizer (ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne : Set (ℚ̄ ≃ₐ[ℚ] ℚ̄))), hopen, ?_, ?_⟩
  · change (g'⁻¹ * g' : G).1 • sqrtNegOne = sqrtNegOne
    rw [inv_mul_cancel]
    exact one_smul _ _
  · intro h hh
    change (g'⁻¹ * Additive.toMul h : G).1 • sqrtNegOne = sqrtNegOne at hh
    apply iCharFun_congr
    rw [Subgroup.coe_mul, Subgroup.coe_inv, mul_smul, inv_smul_eq_iff] at hh
    exact hh


variable (K) in
def iChar : Additive K.1.fixingSubgroup →ₜ+ QZ where
  toFun := iCharFun K
  map_zero' := iCharFun_of_fix rfl
  map_add' g h := by
    have hmul : ((Additive.toMul (g + h) : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne =
        ((Additive.toMul g : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄)
          (((Additive.toMul h : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne) := rfl
    rcases apply_sqrtNegOne_eq_or ((Additive.toMul h : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) with hh | hh
    · rw [hh] at hmul
      rw [iCharFun_of_fix hh, add_zero]
      exact iCharFun_congr hmul
    · rw [hh, map_neg] at hmul
      have hh' : iCharFun K h = QZ.mk (1 / 2) :=
        iCharFun_of_not_fix (by rw [hh]; exact sqrtNegOne_ne_neg.symm)
      rcases apply_sqrtNegOne_eq_or ((Additive.toMul g : K.1.fixingSubgroup) : ℚ̄ ≃ₐ[ℚ] ℚ̄) with hg | hg
      · rw [hg] at hmul
        have hgh : iCharFun K (g + h) = QZ.mk (1 / 2) :=
          iCharFun_of_not_fix (by rw [hmul]; exact sqrtNegOne_ne_neg.symm)
        rw [hgh, hh', iCharFun_of_fix hg, zero_add]
      · rw [hg, neg_neg] at hmul
        have hg' : iCharFun K g = QZ.mk (1 / 2) :=
          iCharFun_of_not_fix (by rw [hg]; exact sqrtNegOne_ne_neg.symm)
        rw [iCharFun_of_fix hmul, hg', hh', QZ.mk_half_add_mk_half]
  continuous_toFun := continuous_iCharFun

theorem iChar_apply_of_fix (τ : K.1.fixingSubgroup) (h : (τ : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne = sqrtNegOne) :
    iChar K (Additive.ofMul τ) = 0 :=
  iCharFun_of_fix h

theorem iChar_apply_of_not_fix (τ : K.1.fixingSubgroup) (h : (τ : ℚ̄ ≃ₐ[ℚ] ℚ̄) sqrtNegOne ≠ sqrtNegOne) :
    iChar K (Additive.ofMul τ) = QZ.mk (1 / 2) :=
  iCharFun_of_not_fix h

end IChar

section Invariants

variable (ι : LocalEmbeddings K) (a : K.1ˣ)

theorem placeInv_brauerLocal_globalCupClass_iChar_of_mem_range_norm (v : InfinitePlace K.1)
    (ha : algebraMap K.1 v.Completion (a : K.1) ∈
      Set.range (Algebra.norm v.Completion : AlgebraicClosure v.Completion → v.Completion)) :
    placeInv (.inl v) (brauerLocal ι (globalCupClass (iChar K) a) (.inl v)) = 0 := by
  rw [placeInv_brauerLocal_globalCupClass_inl ι v (iChar K) a 1 (iff_of_true rfl ha), map_one, ofMul_one,
    map_zero]

theorem placeInv_brauerLocal_globalCupClass_iChar_of_neg (v : InfinitePlace K.1) (hv : v.IsReal)
    (ha : embedding_of_isReal hv (a : K.1) < 0) :
    placeInv (.inl v) (brauerLocal ι (globalCupClass (iChar K) a) (.inl v)) = QZ.mk (1 / 2) := by
  have hs : (ι.inf v) sqrtNegOne ^ 2 = -1 := by rw [← map_pow, sqrtNegOne_sq, map_neg, map_one]
  obtain ⟨σ, hσ⟩ := exists_gal_ne_of_sq_eq_neg_one v hv hs
  have hnorm : algebraMap K.1 v.Completion (a : K.1) ∉
      Set.range (Algebra.norm v.Completion : AlgebraicClosure v.Completion → v.Completion) := by
    intro hmem
    have hu := (infAlgClosure_mem_range_norm_iff_of_isReal v hv
      (Units.map (algebraMap K.1 v.Completion : K.1 →* v.Completion) a)).1 hmem
    rw [Units.coe_map, MonoidHom.coe_coe, extensionEmbeddingOfIsReal_algebraMap] at hu
    exact lt_asymm ha hu
  have hσ1 : σ ≠ 1 := fun h => hσ (by rw [h]; rfl)
  rw [placeInv_brauerLocal_globalCupClass_inl ι v (iChar K) a σ (iff_of_false hσ1 hnorm)]
  apply iChar_apply_of_not_fix
  intro hfix
  apply hσ
  rw [← globalDecomp_apply, hfix]

theorem placeInv_brauerLocal_globalCupClass_iChar_of_pos (v : InfinitePlace K.1) (hv : v.IsReal)
    (ha : 0 < embedding_of_isReal hv (a : K.1)) :
    placeInv (.inl v) (brauerLocal ι (globalCupClass (iChar K) a) (.inl v)) = 0 := by
  refine placeInv_brauerLocal_globalCupClass_iChar_of_mem_range_norm ι a v ?_
  have h := (infAlgClosure_mem_range_norm_iff_of_isReal v hv
    (Units.map (algebraMap K.1 v.Completion : K.1 →* v.Completion) a)).2
    (by rw [Units.coe_map, MonoidHom.coe_coe, extensionEmbeddingOfIsReal_algebraMap]; exact ha)
  rwa [Units.coe_map, MonoidHom.coe_coe] at h

theorem placeInv_brauerLocal_globalCupClass_iChar_of_isComplex (v : InfinitePlace K.1) (hv : v.IsComplex) :
    placeInv (.inl v) (brauerLocal ι (globalCupClass (iChar K) a) (.inl v)) = 0 := by
  refine placeInv_brauerLocal_globalCupClass_iChar_of_mem_range_norm ι a v ?_
  have h := infAlgClosure_mem_range_norm_of_isComplex v hv
    (Units.map (algebraMap K.1 v.Completion : K.1 →* v.Completion) a)
  rwa [Units.coe_map, MonoidHom.coe_coe] at h


open Classical in
theorem placeInv_brauerLocal_globalCupClass_iChar (v : InfinitePlace K.1) :
    placeInv (.inl v) (brauerLocal ι (globalCupClass (iChar K) a) (.inl v)) =
      if h : v.IsReal then (if v.embedding_of_isReal h (a : K.1) < 0 then QZ.mk (1 / 2) else 0) else 0 := by
  by_cases hv : v.IsReal
  · rw [dite_eq_left hv]
    by_cases ha : embedding_of_isReal hv (a : K.1) < 0
    · rw [if_pos ha]
      exact placeInv_brauerLocal_globalCupClass_iChar_of_neg ι a v hv ha
    · rw [if_neg ha]
      have hpos : 0 < embedding_of_isReal hv (a : K.1) :=
        lt_of_le_of_ne (not_lt.1 ha) (fun h => a.ne_zero ((map_eq_zero _).1 h.symm))
      exact placeInv_brauerLocal_globalCupClass_iChar_of_pos ι a v hv hpos
  · rw [dite_eq_right hv]
    exact placeInv_brauerLocal_globalCupClass_iChar_of_isComplex ι a v (not_isReal_iff_isComplex.1 hv)

end Invariants

section Bool

theorem exists_units_neg_iff {L : Type*} [Field L] [NumberField L] (s : {v : InfinitePlace L // v.IsReal} → Bool) :
    ∃ a : Lˣ, ∀ v : {v : InfinitePlace L // v.IsReal}, (v.1.embedding_of_isReal v.2 (a : L) < 0 ↔ s v = true) := by
  obtain ⟨a, ha⟩ := exists_units_neg_iff_mem {v | s v = true}
  exact ⟨a, fun v => (ha v).1⟩

end Bool

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.GlobalClassFormation.SignsCup =====

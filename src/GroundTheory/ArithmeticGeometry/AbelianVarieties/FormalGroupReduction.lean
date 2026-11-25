module

public import GroundTheory.LocalFields.FormalGroups.Inverse
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Mathlib.Topology.Algebra.Nonarchimedean.AdicTopology
public import GroundTheory.LocalFields.FormalGroups.Basics
public import Mathlib.RingTheory.AdicCompletion.Topology
public import Mathlib.RingTheory.Ideal.BigOperators
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupInverse

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupIdeal, GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupFiltration, GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupReduction

-- ===== clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupIdeal =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupIdeal", "h": "module\n\npublic import GroundTheory.LocalFields.FormalGroups.Inverse\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Mathlib.Topology.Algebra.Nonarchimedean.AdicTopology\npublic import GroundTheory.LocalFields.FormalGroups.Basics\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.AdicCompletion.Topology\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Ideal.BigOperators\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Arith.Abelian

noncomputable section

def AdicRing (𝒪 : Type*) : Type _ := 𝒪

namespace AdicRing

variable (𝒪 : Type*) [CommRing 𝒪]

instance : CommRing (AdicRing 𝒪) := inferInstanceAs (CommRing 𝒪)

instance : Algebra 𝒪 (AdicRing 𝒪) := inferInstanceAs (Algebra 𝒪 𝒪)

def equiv : 𝒪 ≃+* AdicRing 𝒪 := RingEquiv.refl 𝒪

variable [IsLocalRing 𝒪]

instance : WithIdeal (AdicRing 𝒪) := ⟨IsLocalRing.maximalIdeal 𝒪⟩

variable [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪]

theorem completeSpace_and_t2Space : CompleteSpace (AdicRing 𝒪) ∧ T2Space (AdicRing 𝒪) :=
  (IsAdic.isAdicComplete_iff (I := (WithIdeal.i : Ideal (AdicRing 𝒪))) rfl).1
    (inferInstanceAs (IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪))

instance : CompleteSpace (AdicRing 𝒪) := (completeSpace_and_t2Space 𝒪).1

instance : T2Space (AdicRing 𝒪) := (completeSpace_and_t2Space 𝒪).2

end AdicRing

section Eval

variable {𝒪 : Type*} [CommRing 𝒪] [IsLocalRing 𝒪]

def psEvalAt {σ : Type*} (f : MvPowerSeries σ 𝒪) (a : σ → 𝒪) : 𝒪 :=
  letI : UniformSpace 𝒪 := ⊥
  (AdicRing.equiv 𝒪).symm
    (MvPowerSeries.eval₂ (algebraMap 𝒪 (AdicRing 𝒪)) (fun i => AdicRing.equiv 𝒪 (a i)) f)

theorem hasEval_adicRing {σ : Type*} [Finite σ] {a : σ → 𝒪}
    (ha : ∀ i, a i ∈ IsLocalRing.maximalIdeal 𝒪) :
    MvPowerSeries.HasEval (fun i => AdicRing.equiv 𝒪 (a i)) :=
  ⟨fun i => WithIdeal.isTopologicallyNilpotent_of_mem (ha i),
    by rw [Filter.cofinite_eq_bot]; exact Filter.tendsto_bot⟩

theorem psEvalAt_X {σ : Type*} (a : σ → 𝒪) (i : σ) : psEvalAt (MvPowerSeries.X i) a = a i := by
  simp [psEvalAt, MvPowerSeries.eval₂_X]

variable [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪]

def evAlgHom {σ : Type*} [Finite σ] (a : σ → 𝒪) (ha : ∀ i, a i ∈ IsLocalRing.maximalIdeal 𝒪) :
    MvPowerSeries σ 𝒪 →ₐ[𝒪] 𝒪 :=
  letI : UniformSpace 𝒪 := ⊥
  haveI : DiscreteUniformity 𝒪 := ⟨rfl⟩
  have hφ : Continuous (algebraMap 𝒪 (AdicRing 𝒪)) := by
    rw [UniformSpace.toTopologicalSpace_bot]; exact continuous_bot
  { (AdicRing.equiv 𝒪).symm.toRingHom.comp (MvPowerSeries.eval₂Hom hφ (hasEval_adicRing ha)) with
    commutes' := fun r => by
      simp only [RingHom.toMonoidHom_eq_coe, OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe,
        MonoidHom.coe_coe, RingHom.coe_comp, Function.comp_apply, MvPowerSeries.coe_eval₂Hom]
      rw [MvPowerSeries.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply,
        MvPowerSeries.eval₂_C]
      rfl }

theorem evAlgHom_apply {σ : Type*} [Finite σ] (a : σ → 𝒪)
    (ha : ∀ i, a i ∈ IsLocalRing.maximalIdeal 𝒪) (f : MvPowerSeries σ 𝒪) :
    evAlgHom a ha f = psEvalAt f a := by
  simp [evAlgHom, psEvalAt, MvPowerSeries.coe_eval₂Hom]

omit [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪] in
theorem isClosed_maximalIdeal_adicRing :
    IsClosed ((WithIdeal.i : Ideal (AdicRing 𝒪)) : Set (AdicRing 𝒪)) := by
  have hopen : IsOpen ((WithIdeal.i : Ideal (AdicRing 𝒪)) : Set (AdicRing 𝒪)) := by
    refine (WithIdeal.i : Ideal (AdicRing 𝒪)).toAddSubgroup.isOpen_of_mem_nhds (g := 0) ?_
    have := (Ideal.hasBasis_nhds_zero_adic (WithIdeal.i : Ideal (AdicRing 𝒪))).mem_of_mem
      (i := 1) trivial
    simpa using this
  exact AddSubgroup.isClosed_of_isOpen (WithIdeal.i : Ideal (AdicRing 𝒪)).toAddSubgroup hopen

theorem psEvalAt_mem {σ : Type*} [Finite σ] {f : MvPowerSeries σ 𝒪}
    (hf : MvPowerSeries.constantCoeff f ∈ IsLocalRing.maximalIdeal 𝒪) {a : σ → 𝒪}
    (ha : ∀ i, a i ∈ IsLocalRing.maximalIdeal 𝒪) :
    psEvalAt f a ∈ IsLocalRing.maximalIdeal 𝒪 := by
  let _ : UniformSpace 𝒪 := ⊥
  have _ : DiscreteUniformity 𝒪 := ⟨rfl⟩
  have hφ : Continuous (algebraMap 𝒪 (AdicRing 𝒪)) := by
    rw [UniformSpace.toTopologicalSpace_bot]; exact continuous_bot
  have h := MvPowerSeries.hasSum_eval₂ hφ (hasEval_adicRing ha) f
  have hmem : MvPowerSeries.eval₂ (algebraMap 𝒪 (AdicRing 𝒪)) (fun i => AdicRing.equiv 𝒪 (a i)) f ∈
      (WithIdeal.i : Ideal (AdicRing 𝒪)) := by
    rw [HasSum] at h
    refine isClosed_maximalIdeal_adicRing.mem_of_tendsto h (Filter.Eventually.of_forall fun s => ?_)
    refine Ideal.sum_mem _ fun d _ => ?_
    by_cases hd : d = 0
    · subst hd
      refine Ideal.mul_mem_right _ _ ?_
      rw [MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
      exact hf
    · obtain ⟨i, hi⟩ := Finsupp.ne_iff.mp hd
      refine Ideal.mul_mem_left _ _ ?_
      rw [Finsupp.prod]
      refine Ideal.prod_mem _ (i := i) (Finsupp.mem_support_iff.mpr hi) ?_
      exact Ideal.pow_mem_of_mem _ (ha i) _ (Nat.pos_of_ne_zero hi)
  exact hmem

theorem psEvalAt_subst {σ τ : Type*} [Finite σ] [Finite τ] {g : σ → MvPowerSeries τ 𝒪}
    (hg : MvPowerSeries.HasSubst g) (f : MvPowerSeries σ 𝒪) {a : τ → 𝒪}
    (ha : ∀ i, a i ∈ IsLocalRing.maximalIdeal 𝒪) :
    psEvalAt (MvPowerSeries.subst g f) a = psEvalAt f (fun s => psEvalAt (g s) a) := by
  let _ : UniformSpace 𝒪 := ⊥
  have _ : DiscreteUniformity 𝒪 := ⟨rfl⟩
  simp only [psEvalAt]
  rw [MvPowerSeries.eval₂_subst hg (hasEval_adicRing ha)]
  rfl

theorem psEvalAt_powerSeries_subst {τ : Type*} [Finite τ] {g : MvPowerSeries τ 𝒪}
    (hg : PowerSeries.HasSubst g) (f : PowerSeries 𝒪) {a : τ → 𝒪}
    (ha : ∀ i, a i ∈ IsLocalRing.maximalIdeal 𝒪) :
    psEvalAt (PowerSeries.subst g f) a = psEvalAt f (fun _ => psEvalAt g a) := by
  rw [PowerSeries.subst, psEvalAt_subst hg.const f ha]

omit [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪] in
theorem mem_maximalIdeal_of_isNilpotent {x : 𝒪} (hx : IsNilpotent x) :
    x ∈ IsLocalRing.maximalIdeal 𝒪 := by
  obtain ⟨n, hn⟩ := hx
  exact (IsLocalRing.maximalIdeal.isMaximal 𝒪).isPrime.mem_of_pow_mem n (by rw [hn]; exact zero_mem _)

def MaxIdealPoint (_F : FormalGroup 𝒪) : Type _ := {x : 𝒪 // x ∈ IsLocalRing.maximalIdeal 𝒪}

variable {F : FormalGroup 𝒪}

namespace MaxIdealPoint

def val (x : MaxIdealPoint F) : 𝒪 := x.1

omit [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪] in
theorem val_mem (x : MaxIdealPoint F) : x.val ∈ IsLocalRing.maximalIdeal 𝒪 := x.2

def mk (x : 𝒪) (hx : x ∈ IsLocalRing.maximalIdeal 𝒪) : MaxIdealPoint F := ⟨x, hx⟩

omit [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪] in
@[simp] theorem val_mk (x : 𝒪) (hx : x ∈ IsLocalRing.maximalIdeal 𝒪) :
    (mk x hx : MaxIdealPoint F).val = x := rfl



instance : Zero (MaxIdealPoint F) := ⟨mk 0 (zero_mem _)⟩

omit [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪] in
@[simp] theorem val_zero : (0 : MaxIdealPoint F).val = 0 := rfl

omit [IsAdicComplete (IsLocalRing.maximalIdeal 𝒪) 𝒪] in
theorem pair_mem (x y : MaxIdealPoint F) :
    ∀ i, (![x.val, y.val] : Fin 2 → 𝒪) i ∈ IsLocalRing.maximalIdeal 𝒪 := by
  intro i; fin_cases i
  exacts [x.val_mem, y.val_mem]

instance : Add (MaxIdealPoint F) where
  add x y := mk (psEvalAt F.toPowerSeries ![x.val, y.val])
    (psEvalAt_mem (by rw [F.zero_constantCoeff]; exact zero_mem _) (pair_mem x y))

instance : Neg (MaxIdealPoint F) where
  neg x := mk (psEvalAt (GroundTheory.LocalField.FormalGroup.inv F : MvPowerSeries Unit 𝒪) fun _ => x.val)
    (psEvalAt_mem (by
      rw [show MvPowerSeries.constantCoeff (GroundTheory.LocalField.FormalGroup.inv F : MvPowerSeries Unit 𝒪)
        = 0 from GroundTheory.LocalField.FormalGroup.constantCoeff_inv F]; exact zero_mem _)
      fun _ => x.val_mem)

def evalPoint {σ : Type*} [Finite σ] (x : σ → MaxIdealPoint F) (p : F.Point σ) : MaxIdealPoint F :=
  mk (psEvalAt p.val fun i => (x i).val)
    (psEvalAt_mem (mem_maximalIdeal_of_isNilpotent p.prop) fun i => (x i).val_mem)

def pointVar {σ : Type*} (i : σ) : F.Point σ :=
  ⟨MvPowerSeries.X i, by simp [PowerSeries.HasSubst]⟩

theorem evalPoint_pointVar {σ : Type*} [Finite σ] (x : σ → MaxIdealPoint F) (i : σ) :
    evalPoint x (pointVar i) = x i :=
  Subtype.ext (psEvalAt_X _ i)

theorem evalPoint_zero {σ : Type*} [Finite σ] (x : σ → MaxIdealPoint F) :
    evalPoint x (0 : F.Point σ) = 0 := by
  apply Subtype.ext
  change psEvalAt 0 _ = 0
  rw [← evAlgHom_apply _ (fun i => (x i).val_mem), map_zero]

theorem evalPoint_add {σ : Type*} [Finite σ] (x : σ → MaxIdealPoint F) (p q : F.Point σ) :
    evalPoint x (p + q) = evalPoint x p + evalPoint x q := by
  apply Subtype.ext
  change psEvalAt (p + q).val _ = psEvalAt F.toPowerSeries
    ![(evalPoint x p).val, (evalPoint x q).val]
  rw [FormalGroup.add_apply, psEvalAt_subst (GroundTheory.LocalField.FormalGroup.point_hasSubst_pair p q)
    _ fun i => (x i).val_mem]
  congr 1
  funext i
  fin_cases i <;> rfl

theorem evalPoint_neg {σ : Type*} [Finite σ] (x : σ → MaxIdealPoint F) (p : F.Point σ) :
    evalPoint x (-p) = -evalPoint x p := by
  apply Subtype.ext
  change psEvalAt (-p).val _ = _
  rw [GroundTheory.LocalField.FormalGroup.neg_point_val,
    psEvalAt_powerSeries_subst p.prop _ fun i => (x i).val_mem]
  rfl

instance instAddGroup : AddGroup (MaxIdealPoint F) where
  add_assoc a b c := by
    have h := congrArg (evalPoint ![a, b, c])
      (add_assoc (pointVar 0 : F.Point (Fin 3)) (pointVar 1) (pointVar 2))
    simpa [evalPoint_add, evalPoint_pointVar] using h
  zero_add a := by
    have h := congrArg (evalPoint fun _ : Unit => a) (zero_add (pointVar () : F.Point Unit))
    simpa only [evalPoint_add, evalPoint_pointVar, evalPoint_zero] using h
  add_zero a := by
    have h := congrArg (evalPoint fun _ : Unit => a) (add_zero (pointVar () : F.Point Unit))
    simpa only [evalPoint_add, evalPoint_pointVar, evalPoint_zero] using h
  neg_add_cancel a := by
    have h := congrArg (evalPoint fun _ : Unit => a) (neg_add_cancel (pointVar () : F.Point Unit))
    simpa only [evalPoint_add, evalPoint_neg, evalPoint_pointVar, evalPoint_zero] using h
  nsmul := nsmulRec
  zsmul := zsmulRec

instance instAddCommGroup [F.IsComm] : AddCommGroup (MaxIdealPoint F) where
  add_comm a b := by
    have h := congrArg (evalPoint ![a, b])
      (add_comm (pointVar 0 : F.Point (Fin 2)) (pointVar 1))
    simpa [evalPoint_add, evalPoint_pointVar] using h

end MaxIdealPoint

end Eval

end

end GroundTheory.Arith.Abelian
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupIdeal =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupFiltration =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupFiltration", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupIdeal\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupInverse\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Arith.Abelian

noncomputable section

open IsLocalRing

variable {𝒪 : Type*} [CommRing 𝒪] [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪]

theorem infinite_of_isDiscreteValuationRing : Infinite 𝒪 := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible 𝒪
  refine Infinite.of_injective (fun n : ℕ => ϖ ^ n) fun m n h => ?_
  exact pow_injective_of_not_isUnit hϖ.not_isUnit hϖ.ne_zero h

end

end GroundTheory.Arith.Abelian
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupFiltration =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupReduction =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupReduction", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupFiltration\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Arith.Abelian

noncomputable section

open IsLocalRing

variable {𝒪 : Type*} [CommRing 𝒪] [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪]

section Residue

theorem isUnit_of_residue_ne_zero {a : 𝒪} (h : residue 𝒪 a ≠ 0) : IsUnit a := by
  by_contra hu
  exact h ((residue_eq_zero_iff a).2 ((mem_maximalIdeal a).2 hu))

theorem residue_eq_zero_of_mem {a : 𝒪} (h : a ∈ maximalIdeal 𝒪) : residue 𝒪 a = 0 :=
  (residue_eq_zero_iff a).2 h

theorem one_notMem_maximalIdeal : (1 : 𝒪) ∉ maximalIdeal 𝒪 :=
  fun h => (maximalIdeal.isMaximal 𝒪).ne_top ((Ideal.eq_top_iff_one _).2 h)

end Residue

variable (K : Type*) [Field K] [Algebra 𝒪 K] [IsFractionRing 𝒪 K] (W : WeierstrassCurve 𝒪)

abbrev curveK : WeierstrassCurve.Affine K := (W.map (algebraMap 𝒪 K)).toAffine

abbrev curveRed : WeierstrassCurve.Affine (ResidueField 𝒪) := (W.map (residue 𝒪)).toAffine

section Integral

theorem exists_inv_mem_of_notMem_range {X : K} (hX : X ∉ Set.range (algebraMap 𝒪 K)) :
    ∃ t ∈ maximalIdeal 𝒪, algebraMap 𝒪 K t = X⁻¹ := by
  obtain ⟨t, ht⟩ : ∃ t, algebraMap 𝒪 K t = X⁻¹ := by
    rcases ValuationRing.isInteger_or_isInteger 𝒪 X with h | h
    · exact absurd h hX
    · exact h
  refine ⟨t, (mem_maximalIdeal _).2 fun hu => hX ⟨↑hu.unit⁻¹, ?_⟩, ht⟩
  rw [← inv_inv X, ← ht]
  exact eq_inv_of_mul_eq_one_left (by rw [← map_mul, hu.val_inv_mul, map_one])

theorem exists_y_of_equation {x : 𝒪} {Y : K}
    (h : (W.map (algebraMap 𝒪 K)).toAffine.Equation (algebraMap 𝒪 K x) Y) :
    ∃ y, algebraMap 𝒪 K y = Y := by
  by_contra hY
  have hY' : Y ∉ Set.range (algebraMap 𝒪 K) := fun ⟨y, hy⟩ => hY ⟨y, hy⟩
  obtain ⟨t, ht, htY⟩ := exists_inv_mem_of_notMem_range K hY'
  have hY0 : Y ≠ 0 := fun h0 => hY ⟨0, by rw [h0, map_zero]⟩
  rw [WeierstrassCurve.Affine.equation_iff] at h
  have key : algebraMap 𝒪 K (1 + (W.a₁ * x + W.a₃) * t - (x ^ 3 + W.a₂ * x ^ 2 + W.a₄ * x + W.a₆) *
      t ^ 2) = 0 := by
    simp only [map_sub, map_add (f := _), map_mul, map_pow, map_one, htY]
    simp only [WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂, WeierstrassCurve.map_a₃,
      WeierstrassCurve.map_a₄, WeierstrassCurve.map_a₆] at h
    field_simp
    linear_combination h
  have k2 := (map_eq_zero_iff _ (IsFractionRing.injective 𝒪 K)).1 key
  apply one_notMem_maximalIdeal (𝒪 := 𝒪)
  have e : (1 : 𝒪) = (x ^ 3 + W.a₂ * x ^ 2 + W.a₄ * x + W.a₆) * t ^ 2 - (W.a₁ * x + W.a₃) * t := by
    linear_combination k2
  rw [e]
  exact Ideal.sub_mem _ (Ideal.mul_mem_left _ _ (Ideal.pow_mem_of_mem _ ht _ (by norm_num)))
    (Ideal.mul_mem_left _ _ ht)

omit [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪] in
theorem equation_of_map {x y : 𝒪}
    (h : (W.map (algebraMap 𝒪 K)).toAffine.Equation (algebraMap 𝒪 K x) (algebraMap 𝒪 K y)) :
    W.toAffine.Equation x y := by
  rw [WeierstrassCurve.Affine.equation_iff] at h ⊢
  apply IsFractionRing.injective 𝒪 K
  simpa using h

theorem equation_residue {x y : 𝒪} (h : W.toAffine.Equation x y) :
    (W.map (residue 𝒪)).toAffine.Equation (residue 𝒪 x) (residue 𝒪 y) := by
  rw [WeierstrassCurve.Affine.equation_iff] at h ⊢
  simpa using congrArg (residue 𝒪) h

end Integral

section Sum

variable [DecidableEq K] [DecidableEq (ResidueField 𝒪)]

local notation "ι" => algebraMap 𝒪 K
local notation "ρ" => residue 𝒪

omit [IsFractionRing 𝒪 K] in
theorem add_some_integral {x₁ y₁ x₂ y₂ ℓ : 𝒪} (h₁ : (curveK K W).Nonsingular (ι x₁) (ι y₁))
    (h₂ : (curveK K W).Nonsingular (ι x₂) (ι y₂)) (n₁ : (curveRed W).Nonsingular (ρ x₁) (ρ y₁))
    (n₂ : (curveRed W).Nonsingular (ρ x₂) (ρ y₂))
    (hxy : ¬(ι x₁ = ι x₂ ∧ ι y₁ = (curveK K W).negY (ι x₂) (ι y₂)))
    (hxy' : ¬(ρ x₁ = ρ x₂ ∧ ρ y₁ = (curveRed W).negY (ρ x₂) (ρ y₂)))
    (hs : (curveK K W).slope (ι x₁) (ι x₂) (ι y₁) (ι y₂) = ι ℓ)
    (hs' : (curveRed W).slope (ρ x₁) (ρ x₂) (ρ y₁) (ρ y₂) = ρ ℓ) :
    ∃ (h₃ : (curveK K W).Nonsingular (ι (W.toAffine.addX x₁ x₂ ℓ)) (ι (W.toAffine.addY x₁ x₂ y₁ ℓ)))
      (n₃ : (curveRed W).Nonsingular (ρ (W.toAffine.addX x₁ x₂ ℓ))
        (ρ (W.toAffine.addY x₁ x₂ y₁ ℓ))),
      WeierstrassCurve.Affine.Point.some _ _ h₁ + WeierstrassCurve.Affine.Point.some _ _ h₂ =
        WeierstrassCurve.Affine.Point.some _ _ h₃ ∧
      WeierstrassCurve.Affine.Point.some _ _ n₁ + WeierstrassCurve.Affine.Point.some _ _ n₂ =
        WeierstrassCurve.Affine.Point.some _ _ n₃ := by
  have hX : (curveK K W).addX (ι x₁) (ι x₂) ((curveK K W).slope (ι x₁) (ι x₂) (ι y₁) (ι y₂)) =
      ι (W.toAffine.addX x₁ x₂ ℓ) := by
    rw [hs]; exact WeierstrassCurve.Affine.map_addX _ _ _ _
  have hY : (curveK K W).addY (ι x₁) (ι x₂) (ι y₁)
      ((curveK K W).slope (ι x₁) (ι x₂) (ι y₁) (ι y₂)) =
      ι (W.toAffine.addY x₁ x₂ y₁ ℓ) := by
    rw [hs]; exact WeierstrassCurve.Affine.map_addY _ _ _ _ _
  have hX' : (curveRed W).addX (ρ x₁) (ρ x₂) ((curveRed W).slope (ρ x₁) (ρ x₂) (ρ y₁) (ρ y₂)) =
      ρ (W.toAffine.addX x₁ x₂ ℓ) := by
    rw [hs']; exact WeierstrassCurve.Affine.map_addX _ _ _ _
  have hY' : (curveRed W).addY (ρ x₁) (ρ x₂) (ρ y₁)
      ((curveRed W).slope (ρ x₁) (ρ x₂) (ρ y₁) (ρ y₂)) =
      ρ (W.toAffine.addY x₁ x₂ y₁ ℓ) := by
    rw [hs']; exact WeierstrassCurve.Affine.map_addY _ _ _ _ _
  have h₃ := WeierstrassCurve.Affine.nonsingular_add h₁ h₂ hxy
  rw [hX, hY] at h₃
  have n₃ := WeierstrassCurve.Affine.nonsingular_add n₁ n₂ hxy'
  rw [hX', hY'] at n₃
  refine ⟨h₃, n₃, ?_, ?_⟩
  · rw [WeierstrassCurve.Affine.Point.add_some hxy, WeierstrassCurve.Affine.Point.some.injEq]
    exact ⟨hX, hY⟩
  · rw [WeierstrassCurve.Affine.Point.add_some hxy', WeierstrassCurve.Affine.Point.some.injEq]
    exact ⟨hX', hY'⟩

theorem add_of_residue_X_ne {x₁ y₁ x₂ y₂ : 𝒪} (h₁ : (curveK K W).Nonsingular (ι x₁) (ι y₁))
    (h₂ : (curveK K W).Nonsingular (ι x₂) (ι y₂)) (n₁ : (curveRed W).Nonsingular (ρ x₁) (ρ y₁))
    (n₂ : (curveRed W).Nonsingular (ρ x₂) (ρ y₂)) (hx : ρ x₁ ≠ ρ x₂) :
    ∃ (x₃ y₃ : 𝒪) (h₃ : (curveK K W).Nonsingular (ι x₃) (ι y₃))
      (n₃ : (curveRed W).Nonsingular (ρ x₃) (ρ y₃)),
      WeierstrassCurve.Affine.Point.some _ _ h₁ + WeierstrassCurve.Affine.Point.some _ _ h₂ =
        WeierstrassCurve.Affine.Point.some _ _ h₃ ∧
      WeierstrassCurve.Affine.Point.some _ _ n₁ + WeierstrassCurve.Affine.Point.some _ _ n₂ =
        WeierstrassCurve.Affine.Point.some _ _ n₃ := by
  have hu : IsUnit (x₁ - x₂) := isUnit_of_residue_ne_zero (by rw [map_sub]; exact sub_ne_zero.2 hx)
  set ℓ := (y₁ - y₂) * ↑hu.unit⁻¹ with hℓdef
  have hℓ : ℓ * (x₁ - x₂) = y₁ - y₂ := by rw [hℓdef, mul_assoc, hu.val_inv_mul, mul_one]
  have hxK : ι x₁ ≠ ι x₂ := fun h => hx (by rw [IsFractionRing.injective 𝒪 K h])
  obtain ⟨h₃, n₃, e, e'⟩ := add_some_integral K W h₁ h₂ n₁ n₂ (fun h => hxK h.1) (fun h => hx h.1)
    (by
      rw [WeierstrassCurve.Affine.slope_of_X_ne hxK, div_eq_iff (sub_ne_zero.2 hxK), ← map_sub,
        ← map_sub, ← map_mul, hℓ])
    (by
      rw [WeierstrassCurve.Affine.slope_of_X_ne hx, div_eq_iff (sub_ne_zero.2 hx), ← map_sub,
        ← map_sub, ← map_mul, hℓ])
  exact ⟨_, _, h₃, n₃, e, e'⟩

theorem slope_identity {A : Type*} [CommRing A] (V : WeierstrassCurve A) {x₁ y₁ x₂ y₂ : A}
    (e₁ : V.toAffine.Equation x₁ y₁) (e₂ : V.toAffine.Equation x₂ y₂) :
    (y₁ - y₂) * (y₁ + y₂ + V.a₁ * x₁ + V.a₃) =
      (x₁ - x₂) * (x₁ ^ 2 + x₁ * x₂ + x₂ ^ 2 + V.a₂ * (x₁ + x₂) + V.a₄ - V.a₁ * y₂) := by
  rw [WeierstrassCurve.Affine.equation_iff] at e₁ e₂
  linear_combination e₁ - e₂

theorem add_of_residue_eq {x₁ y₁ x₂ y₂ : 𝒪} (h₁ : (curveK K W).Nonsingular (ι x₁) (ι y₁))
    (h₂ : (curveK K W).Nonsingular (ι x₂) (ι y₂)) (n₁ : (curveRed W).Nonsingular (ρ x₁) (ρ y₁))
    (n₂ : (curveRed W).Nonsingular (ρ x₂) (ρ y₂)) (hx : ρ x₁ = ρ x₂) (hy : ρ y₁ = ρ y₂)
    (hD : ρ (y₁ + y₂ + W.a₁ * x₁ + W.a₃) ≠ 0) :
    ∃ (x₃ y₃ : 𝒪) (h₃ : (curveK K W).Nonsingular (ι x₃) (ι y₃))
      (n₃ : (curveRed W).Nonsingular (ρ x₃) (ρ y₃)),
      WeierstrassCurve.Affine.Point.some _ _ h₁ + WeierstrassCurve.Affine.Point.some _ _ h₂ =
        WeierstrassCurve.Affine.Point.some _ _ h₃ ∧
      WeierstrassCurve.Affine.Point.some _ _ n₁ + WeierstrassCurve.Affine.Point.some _ _ n₂ =
        WeierstrassCurve.Affine.Point.some _ _ n₃ := by
  have hι := IsFractionRing.injective 𝒪 K
  set D := y₁ + y₂ + W.a₁ * x₁ + W.a₃ with hDdef
  set N := x₁ ^ 2 + x₁ * x₂ + x₂ ^ 2 + W.a₂ * (x₁ + x₂) + W.a₄ - W.a₁ * y₂ with hNdef
  have hu : IsUnit D := isUnit_of_residue_ne_zero hD
  set ℓ := N * ↑hu.unit⁻¹ with hℓdef
  have hℓ : ℓ * D = N := by rw [hℓdef, mul_assoc, hu.val_inv_mul, mul_one]
  have e₁ := equation_of_map K W h₁.1
  have e₂ := equation_of_map K W h₂.1
  have hid := slope_identity W e₁ e₂
  have hDK : ι D ≠ 0 := (map_ne_zero_iff _ hι).2 hu.ne_zero
  have hxy : ¬(ι x₁ = ι x₂ ∧ ι y₁ = (curveK K W).negY (ι x₂) (ι y₂)) := by
    rintro ⟨h1, h2⟩
    apply hDK
    rw [WeierstrassCurve.Affine.map_negY] at h2
    have hD0 : D = 0 := by
      rw [hDdef, hι h2, hι h1]; simp only [WeierstrassCurve.Affine.negY]; ring
    rw [hD0, map_zero]
  have hxy' : ¬(ρ x₁ = ρ x₂ ∧ ρ y₁ = (curveRed W).negY (ρ x₂) (ρ y₂)) := by
    rintro ⟨h1, h2⟩
    apply hD
    rw [WeierstrassCurve.Affine.map_negY] at h2
    rw [hDdef, map_add (f := _), map_add (f := _), map_add (f := _), map_mul, h2, h1]
    simp only [WeierstrassCurve.Affine.negY, map_sub, map_neg, map_mul]
    ring
  have hs : (curveK K W).slope (ι x₁) (ι x₂) (ι y₁) (ι y₂) = ι ℓ := by
    by_cases hxK : ι x₁ = ι x₂
    · have hx' := hι hxK
      have hyK : ι y₁ ≠ (curveK K W).negY (ι x₂) (ι y₂) := fun h => hxy ⟨hxK, h⟩
      rcases WeierstrassCurve.Affine.Y_eq_of_X_eq h₁.1 h₂.1 hxK with hy' | hy'
      · have hy'' := hι hy'
        subst hx' hy''
        rw [WeierstrassCurve.Affine.slope_of_Y_ne hxK hyK]
        have hne : ι y₁ - (curveK K W).negY (ι x₁) (ι y₁) = ι D := by
          simp only [WeierstrassCurve.Affine.negY, hDdef, map_add (f := _), map_mul,
            WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₃]
          ring
        rw [hne, eq_comm, eq_div_iff hDK, ← map_mul, hℓ, hNdef]
        simp only [map_sub, map_add (f := _), map_mul, map_pow, WeierstrassCurve.map_a₁,
          WeierstrassCurve.map_a₂, WeierstrassCurve.map_a₄]
        ring
      · exact absurd hy' hyK
    · rw [WeierstrassCurve.Affine.slope_of_X_ne hxK, div_eq_iff (sub_ne_zero.2 hxK), ← map_sub,
        ← map_sub, ← map_mul]
      congr 1
      have : (ℓ * (x₁ - x₂) - (y₁ - y₂)) * D = 0 := by linear_combination (x₁ - x₂) * hℓ - hid
      exact (sub_eq_zero.1 ((mul_eq_zero.1 this).resolve_right hu.ne_zero)).symm
  have hs' : (curveRed W).slope (ρ x₁) (ρ x₂) (ρ y₁) (ρ y₂) = ρ ℓ := by
    have hyk : ρ y₁ ≠ (curveRed W).negY (ρ x₂) (ρ y₂) := fun h => hxy' ⟨hx, h⟩
    rw [WeierstrassCurve.Affine.slope_of_Y_ne hx hyk]
    have hne : ρ y₁ - (curveRed W).negY (ρ x₁) (ρ y₁) = ρ D := by
      simp only [WeierstrassCurve.Affine.negY, hDdef, map_add (f := _), map_mul, WeierstrassCurve.map_a₁,
        WeierstrassCurve.map_a₃, hy]
      ring
    rw [hne, eq_comm, eq_div_iff hD, ← map_mul, hℓ, hNdef]
    simp only [map_sub, map_add (f := _), map_mul, map_pow, WeierstrassCurve.map_a₁,
      WeierstrassCurve.map_a₂, WeierstrassCurve.map_a₄, ← hx, ← hy]
    ring
  obtain ⟨h₃, n₃, e, e'⟩ := add_some_integral K W h₁ h₂ n₁ n₂ hxy hxy' hs hs'
  exact ⟨_, _, h₃, n₃, e, e'⟩


omit [DecidableEq K] [DecidableEq (ResidueField 𝒪)] in
theorem addX_notMem_range {x₁ x₂ s : 𝒪} (hs : s ∈ maximalIdeal 𝒪) (hs0 : s ≠ 0) :
    (curveK K W).addX (ι x₁) (ι x₂) (ι s)⁻¹ ∉ Set.range ι := by
  rintro ⟨r, hr⟩
  have hs0' : ι s ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective 𝒪 K)).2 hs0
  have key : ι (s ^ 2 * r - (1 + W.a₁ * s - (W.a₂ + x₁ + x₂) * s ^ 2)) = 0 := by
    simp only [map_sub, map_add (f := _), map_mul, map_pow, map_one, hr, WeierstrassCurve.Affine.addX,
      WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂]
    field_simp
    ring
  have k2 := sub_eq_zero.1 ((map_eq_zero_iff _ (IsFractionRing.injective 𝒪 K)).1 key)
  apply one_notMem_maximalIdeal (𝒪 := 𝒪)
  have e : (1 : 𝒪) = s ^ 2 * r - W.a₁ * s + (W.a₂ + x₁ + x₂) * s ^ 2 := by linear_combination -k2
  rw [e]
  refine Ideal.add_mem _ (Ideal.sub_mem _ ?_ (Ideal.mul_mem_left _ _ hs))
    (Ideal.mul_mem_left _ _ ?_)
  · exact Ideal.mul_mem_right _ _ (Ideal.pow_mem_of_mem _ hs _ (by norm_num))
  · exact Ideal.pow_mem_of_mem _ hs _ (by norm_num)

omit [DecidableEq K] [DecidableEq (ResidueField 𝒪)] in
theorem nonsingular_residue_iff {x y : 𝒪} (n : (curveRed W).Nonsingular (ρ x) (ρ y)) :
    ρ (W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) ≠ 0 ∨ ρ (2 * y + W.a₁ * x + W.a₃) ≠ 0 := by
  rw [WeierstrassCurve.Affine.nonsingular_iff'] at n
  have h3 : ρ (3 : 𝒪) = 3 := map_ofNat ρ 3
  have h2 : ρ (2 : 𝒪) = 2 := map_ofNat ρ 2
  have e1 : ρ (W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) = (W.map ρ).a₁ * ρ y -
      (3 * ρ x ^ 2 + 2 * (W.map ρ).a₂ * ρ x + (W.map ρ).a₄) := by
    simp only [map_sub, map_add (f := _), map_mul, map_pow, h3, h2, WeierstrassCurve.map_a₁,
      WeierstrassCurve.map_a₂, WeierstrassCurve.map_a₄]
  have e2 : ρ (2 * y + W.a₁ * x + W.a₃) = 2 * ρ y + (W.map ρ).a₁ * ρ x + (W.map ρ).a₃ := by
    simp only [map_add (f := _), map_mul, h2, WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₃]
  rw [e1, e2]
  exact n.2

theorem add_of_residue_neg {x₁ y₁ x₂ y₂ : 𝒪} (h₁ : (curveK K W).Nonsingular (ι x₁) (ι y₁))
    (h₂ : (curveK K W).Nonsingular (ι x₂) (ι y₂)) (n₁ : (curveRed W).Nonsingular (ρ x₁) (ρ y₁))
    (n₂ : (curveRed W).Nonsingular (ρ x₂) (ρ y₂)) (hx : ρ x₁ = ρ x₂)
    (hy : ρ y₁ = (curveRed W).negY (ρ x₂) (ρ y₂)) :
    WeierstrassCurve.Affine.Point.some _ _ h₁ + WeierstrassCurve.Affine.Point.some _ _ h₂ = 0 ∨
      ∃ (X Y : K) (h : (curveK K W).Nonsingular X Y),
        WeierstrassCurve.Affine.Point.some _ _ h₁ + WeierstrassCurve.Affine.Point.some _ _ h₂ =
          WeierstrassCurve.Affine.Point.some _ _ h ∧ X ∉ Set.range ι := by
  have hι := IsFractionRing.injective 𝒪 K
  by_cases hxy : ι x₁ = ι x₂ ∧ ι y₁ = (curveK K W).negY (ι x₂) (ι y₂)
  · exact Or.inl (WeierstrassCurve.Affine.Point.add_of_Y_eq hxy.1 hxy.2)
  right
  have hxm : x₁ - x₂ ∈ maximalIdeal 𝒪 := by
    rw [← residue_eq_zero_iff, map_sub, hx, sub_self]
  have e₁ := equation_of_map K W h₁.1
  have e₂ := equation_of_map K W h₂.1
  have hneg : ρ y₂ - (curveRed W).negY (ρ x₂) (ρ y₂) = ρ (2 * y₂ + W.a₁ * x₂ + W.a₃) := by
    simp only [WeierstrassCurve.Affine.negY, map_add (f := _), map_mul, map_ofNat, WeierstrassCurve.map_a₁,
      WeierstrassCurve.map_a₃]
    ring
  obtain ⟨s, hs, hs0, hsl⟩ : ∃ s ∈ maximalIdeal 𝒪, s ≠ 0 ∧
      (curveK K W).slope (ι x₁) (ι x₂) (ι y₁) (ι y₂) = (ι s)⁻¹ := by
    by_cases hxK : ι x₁ = ι x₂
    · have hx' := hι hxK
      have hyK : ι y₁ ≠ (curveK K W).negY (ι x₂) (ι y₂) := fun h => hxy ⟨hxK, h⟩
      rcases WeierstrassCurve.Affine.Y_eq_of_X_eq h₁.1 h₂.1 hxK with hy' | hy'
      · have hy'' := hι hy'
        subst hx' hy''
        set D := 2 * y₁ + W.a₁ * x₁ + W.a₃ with hD
        set N := 3 * x₁ ^ 2 + 2 * W.a₂ * x₁ + W.a₄ - W.a₁ * y₁ with hN
        have hDm : D ∈ maximalIdeal 𝒪 := by
          rw [← residue_eq_zero_iff, ← hneg, ← hy, sub_self]
        have hNu : IsUnit N := by
          refine isUnit_of_residue_ne_zero ?_
          rcases nonsingular_residue_iff W n₁ with h | h
          · intro h0; apply h
            rw [show W.a₁ * y₁ - (3 * x₁ ^ 2 + 2 * W.a₂ * x₁ + W.a₄) = -N by rw [hN]; ring,
              map_neg, h0, neg_zero]
          · exact absurd ((residue_eq_zero_iff _).2 hDm) h
        have hDK : ι y₁ - (curveK K W).negY (ι x₁) (ι y₁) = ι D := by
          simp only [WeierstrassCurve.Affine.negY, hD, map_add (f := _), map_mul, map_ofNat,
            WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₃]
          ring
        have hD0 : D ≠ 0 := by
          intro h0; apply hyK
          rw [← sub_eq_zero, hDK, h0, map_zero]
        refine ⟨D * ↑hNu.unit⁻¹, Ideal.mul_mem_right _ _ hDm,
          mul_ne_zero hD0 (Units.ne_zero _), ?_⟩
        rw [WeierstrassCurve.Affine.slope_of_Y_ne hxK hyK, hDK]
        have hN' : ι N * ι ↑hNu.unit⁻¹ = 1 := by rw [← map_mul, hNu.mul_val_inv, map_one]
        have hnum : 3 * ι x₁ ^ 2 + 2 * (curveK K W).a₂ * ι x₁ + (curveK K W).a₄ -
            (curveK K W).a₁ * ι y₁ = ι N := by
          rw [hN]
          simp only [map_sub, map_add (f := _), map_mul, map_pow, map_ofNat, WeierstrassCurve.map_a₁,
            WeierstrassCurve.map_a₂, WeierstrassCurve.map_a₄]
        have hDK' : ι D ≠ 0 := (map_ne_zero_iff _ hι).2 hD0
        rw [hnum]
        refine eq_inv_of_mul_eq_one_left ?_
        rw [map_mul]
        field_simp
        linear_combination hN'
      · exact absurd hy' hyK
    · have hx0 : x₁ - x₂ ≠ 0 := sub_ne_zero.2 (fun h => hxK (by rw [h]))
      have hsK : ι x₁ - ι x₂ ≠ 0 := sub_ne_zero.2 hxK
      by_cases hyr : ρ y₁ = ρ y₂
      ·
        set D := y₁ + y₂ + W.a₁ * x₁ + W.a₃ with hD
        set N := x₁ ^ 2 + x₁ * x₂ + x₂ ^ 2 + W.a₂ * (x₁ + x₂) + W.a₄ - W.a₁ * y₂ with hN
        have hid := slope_identity W e₁ e₂
        have hDm : D ∈ maximalIdeal 𝒪 := by
          rw [← residue_eq_zero_iff, hD]
          simp only [map_add (f := _), map_mul, hx, hy, WeierstrassCurve.Affine.negY,
            WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₃]
          ring
        have hNu : IsUnit N := by
          refine isUnit_of_residue_ne_zero ?_
          have hNr : ρ N = -ρ (W.a₁ * y₂ - (3 * x₂ ^ 2 + 2 * W.a₂ * x₂ + W.a₄)) := by
            rw [hN]
            simp only [map_sub, map_add (f := _), map_mul, map_pow, map_ofNat, hx]
            ring
          rcases nonsingular_residue_iff W n₂ with h | h
          · rw [hNr]; exact neg_ne_zero.2 h
          · refine absurd ?_ h
            rw [← hneg, sub_eq_zero]
            exact hyr.symm.trans hy
        have hid' : (y₁ - y₂) * D = (x₁ - x₂) * N := hid
        have hD0 : D ≠ 0 := by
          intro h0
          rw [h0, mul_zero] at hid'
          exact hx0 ((mul_eq_zero.1 hid'.symm).resolve_right hNu.ne_zero)
        refine ⟨D * ↑hNu.unit⁻¹, Ideal.mul_mem_right _ _ hDm,
          mul_ne_zero hD0 (Units.ne_zero _), ?_⟩
        rw [WeierstrassCurve.Affine.slope_of_X_ne hxK]
        have hN' : ι N * ι ↑hNu.unit⁻¹ = 1 := by rw [← map_mul, hNu.mul_val_inv, map_one]
        have hDK : ι D ≠ 0 := (map_ne_zero_iff _ hι).2 hD0
        have hidK := congrArg ι hid'
        rw [map_mul, map_mul, map_sub, map_sub] at hidK
        refine eq_inv_of_mul_eq_one_left ?_
        rw [map_mul]
        field_simp
        linear_combination (ι ↑hNu.unit⁻¹) * hidK + (ι x₁ - ι x₂) * hN'
      · have hyu : IsUnit (y₁ - y₂) :=
          isUnit_of_residue_ne_zero (by rw [map_sub]; exact sub_ne_zero.2 hyr)
        refine ⟨(x₁ - x₂) * ↑hyu.unit⁻¹, Ideal.mul_mem_right _ _ hxm,
          mul_ne_zero hx0 (Units.ne_zero _), ?_⟩
        rw [WeierstrassCurve.Affine.slope_of_X_ne hxK, ← map_sub, ← map_sub]
        have hy' : ι (y₁ - y₂) * ι ↑hyu.unit⁻¹ = 1 := by rw [← map_mul, hyu.mul_val_inv, map_one]
        have hxK' : ι (x₁ - x₂) ≠ 0 := by rw [map_sub]; exact hsK
        refine eq_inv_of_mul_eq_one_left ?_
        rw [map_mul]
        field_simp
        linear_combination hy'
  refine ⟨_, _, WeierstrassCurve.Affine.nonsingular_add h₁ h₂ hxy,
    WeierstrassCurve.Affine.Point.add_some hxy, ?_⟩
  rw [hsl]
  exact addX_notMem_range K W hs hs0

end Sum

section Reduction

variable [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic]

open Classical in
def intPart (X : K) : 𝒪 := if h : X ∈ Set.range (algebraMap 𝒪 K) then h.choose else 0

omit [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪] [IsAdicComplete (maximalIdeal 𝒪) 𝒪]
  [(W.map (algebraMap 𝒪 K)).IsElliptic] in
theorem intPart_algebraMap (x : 𝒪) : intPart K (algebraMap 𝒪 K x) = x := by
  have h : algebraMap 𝒪 K x ∈ Set.range (algebraMap 𝒪 K) := ⟨x, rfl⟩
  rw [intPart, dite_eq_left h]
  exact IsFractionRing.injective 𝒪 K h.choose_spec

open Classical in
def reducePoint : (curveK K W).Point → (curveRed W).Point
  | .zero => 0
  | @WeierstrassCurve.Affine.Point.some _ _ _ X Y _ =>
    if h : X ∈ Set.range (algebraMap 𝒪 K) ∧
        (curveRed W).Nonsingular (residue 𝒪 (intPart K X)) (residue 𝒪 (intPart K Y)) then
      .some _ _ h.2
    else 0

omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic]
  [IsFractionRing 𝒪 K] in
theorem reducePoint_zero : reducePoint K W 0 = 0 := rfl

omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic] in
theorem reducePoint_some_integral {x y : 𝒪}
    (h : (curveK K W).Nonsingular (algebraMap 𝒪 K x) (algebraMap 𝒪 K y))
    (n : (curveRed W).Nonsingular (residue 𝒪 x) (residue 𝒪 y)) :
    reducePoint K W (.some _ _ h) = .some _ _ n := by
  have hn : (curveRed W).Nonsingular (residue 𝒪 (intPart K (algebraMap 𝒪 K x)))
      (residue 𝒪 (intPart K (algebraMap 𝒪 K y))) := by
    rwa [intPart_algebraMap, intPart_algebraMap]
  rw [reducePoint, dite_eq_left ⟨⟨x, rfl⟩, hn⟩, WeierstrassCurve.Affine.Point.some.injEq,
    intPart_algebraMap, intPart_algebraMap]
  exact ⟨rfl, rfl⟩

omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic]
  [IsFractionRing 𝒪 K] in
theorem reducePoint_some_notMem {X Y : K} (h : (curveK K W).Nonsingular X Y)
    (hX : X ∉ Set.range (algebraMap 𝒪 K)) : reducePoint K W (.some _ _ h) = 0 := by
  rw [reducePoint, dite_eq_right (fun h' => hX h'.1)]


omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic] in
theorem point_cases (P : (curveK K W).Point) :
    P = 0 ∨ (∃ (X Y : K) (h : (curveK K W).Nonsingular X Y), P = .some _ _ h ∧
      X ∉ Set.range (algebraMap 𝒪 K)) ∨
    ∃ (x y : 𝒪) (h : (curveK K W).Nonsingular (algebraMap 𝒪 K x) (algebraMap 𝒪 K y)),
      P = .some _ _ h := by
  cases P with
  | zero => exact Or.inl rfl
  | @some X Y h =>
    by_cases hX : X ∈ Set.range (algebraMap 𝒪 K)
    · obtain ⟨x, rfl⟩ := hX
      obtain ⟨y, rfl⟩ := exists_y_of_equation K W h.1
      exact Or.inr (Or.inr ⟨x, y, h, rfl⟩)
    · exact Or.inr (Or.inl ⟨X, Y, h, rfl, hX⟩)

def E0Set : Set (curveK K W).Point :=
  {P | ∀ (x y : 𝒪) (h : (curveK K W).Nonsingular (algebraMap 𝒪 K x) (algebraMap 𝒪 K y)),
    P = .some _ _ h → (curveRed W).Nonsingular (residue 𝒪 x) (residue 𝒪 y)}

omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic] in
theorem mem_E0Set_some_integral {x y : 𝒪}
    (h : (curveK K W).Nonsingular (algebraMap 𝒪 K x) (algebraMap 𝒪 K y))
    (n : (curveRed W).Nonsingular (residue 𝒪 x) (residue 𝒪 y)) :
    WeierstrassCurve.Affine.Point.some _ _ h ∈ E0Set K W := by
  intro x' y' h' hP
  rw [WeierstrassCurve.Affine.Point.some.injEq] at hP
  rw [← IsFractionRing.injective 𝒪 K hP.1, ← IsFractionRing.injective 𝒪 K hP.2]
  exact n

omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic]
  [IsFractionRing 𝒪 K] in
theorem mem_E0Set_some_notMem {X Y : K} (h : (curveK K W).Nonsingular X Y)
    (hX : X ∉ Set.range (algebraMap 𝒪 K)) :
    WeierstrassCurve.Affine.Point.some _ _ h ∈ E0Set K W := by
  intro x y h' hP
  rw [WeierstrassCurve.Affine.Point.some.injEq] at hP
  exact absurd ⟨x, hP.1.symm⟩ hX

omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic]
  [IsFractionRing 𝒪 K] in
theorem zero_mem_E0Set : (0 : (curveK K W).Point) ∈ E0Set K W := by
  intro x y h hP
  exact absurd hP.symm (WeierstrassCurve.Affine.Point.some_ne_zero h)

variable [DecidableEq K] [DecidableEq (ResidueField 𝒪)]


omit [IsAdicComplete (maximalIdeal 𝒪) 𝒪] [(W.map (algebraMap 𝒪 K)).IsElliptic] in
theorem add_mem_and_reduce_of_exists {P Q : (curveK K W).Point}
    (H : ∃ (x₃ y₃ : 𝒪) (h₃ : (curveK K W).Nonsingular (algebraMap 𝒪 K x₃) (algebraMap 𝒪 K y₃))
      (n₃ : (curveRed W).Nonsingular (residue 𝒪 x₃) (residue 𝒪 y₃)),
      P + Q = .some _ _ h₃ ∧ reducePoint K W P + reducePoint K W Q = .some _ _ n₃) :
    P + Q ∈ E0Set K W ∧ reducePoint K W (P + Q) = reducePoint K W P + reducePoint K W Q := by
  obtain ⟨x₃, y₃, h₃, n₃, e, e'⟩ := H
  rw [e, e', reducePoint_some_integral K W h₃ n₃]
  exact ⟨mem_E0Set_some_integral K W h₃ n₃, rfl⟩

omit [DecidableEq K] [DecidableEq (ResidueField 𝒪)] [IsAdicComplete (maximalIdeal 𝒪) 𝒪]
  [(W.map (algebraMap 𝒪 K)).IsElliptic] in
theorem neg_mem_and_reduce {P : (curveK K W).Point} (hP : P ∈ E0Set K W) :
    -P ∈ E0Set K W ∧ reducePoint K W (-P) = -reducePoint K W P := by
  rcases point_cases K W P with rfl | ⟨X, Y, h, rfl, hX⟩ | ⟨x, y, h, rfl⟩
  · exact ⟨zero_mem_E0Set K W, rfl⟩
  · rw [WeierstrassCurve.Affine.Point.neg_some, reducePoint_some_notMem K W h hX,
      reducePoint_some_notMem K W _ hX]
    exact ⟨mem_E0Set_some_notMem K W _ hX, rfl⟩
  · have n := hP x y h rfl
    have hyK : (curveK K W).negY (algebraMap 𝒪 K x) (algebraMap 𝒪 K y) =
        algebraMap 𝒪 K (W.toAffine.negY x y) := WeierstrassCurve.Affine.map_negY _ _ _
    have hyk : (curveRed W).negY (residue 𝒪 x) (residue 𝒪 y) =
        residue 𝒪 (W.toAffine.negY x y) := WeierstrassCurve.Affine.map_negY _ _ _
    have h' : (curveK K W).Nonsingular (algebraMap 𝒪 K x)
        (algebraMap 𝒪 K (W.toAffine.negY x y)) :=
      hyK ▸ (WeierstrassCurve.Affine.nonsingular_neg _ _).2 h
    have n' : (curveRed W).Nonsingular (residue 𝒪 x) (residue 𝒪 (W.toAffine.negY x y)) :=
      hyk ▸ (WeierstrassCurve.Affine.nonsingular_neg _ _).2 n
    have e : -WeierstrassCurve.Affine.Point.some _ _ h =
        WeierstrassCurve.Affine.Point.some _ _ h' := by
      rw [WeierstrassCurve.Affine.Point.neg_some, WeierstrassCurve.Affine.Point.some.injEq]
      exact ⟨rfl, hyK⟩
    rw [e, reducePoint_some_integral K W h' n', reducePoint_some_integral K W h n,
      WeierstrassCurve.Affine.Point.neg_some, WeierstrassCurve.Affine.Point.some.injEq]
    exact ⟨mem_E0Set_some_integral K W h' n', rfl, hyk.symm⟩

end Reduction

end

end GroundTheory.Arith.Abelian
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupReduction =====

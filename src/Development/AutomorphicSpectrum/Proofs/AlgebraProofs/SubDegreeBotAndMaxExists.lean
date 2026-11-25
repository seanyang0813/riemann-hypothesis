module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars
public import Development.WeilBound.CoreStatements.HodgeTatePoints.DegLeOfEquiv
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BundleDegreeEqSumValuations
public import Mathlib.Order.Int.LeastGreatest
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubAndQuotientBundles

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DegreeMonoLatticeLe, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeNonposTrivialLattice, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeBotAndMaxExists

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DegreeMonoLatticeLe =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DegreeMonoLatticeLe", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.DegLeOfEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Crv

namespace GlobalTheory.CompanionTheory.Ar.Crv

theorem deg_le_deg_of_le : ∀ (K : Type) [Field K] (C : ACurve K) (V : Type) [AddCommGroup V] [Module K V] [FiniteDimensional K V] (L L' : C.I → AddSubgroup V), IsBun C L → IsBun C L' → (∀ i, L i ≤ L' i) → deg C L ≤ deg C L' :=
  @PositivityTheory.HtPt.Ch.deg_mono

end GlobalTheory.CompanionTheory.Ar.Crv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DegreeMonoLatticeLe =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeNonposTrivialLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeNonposTrivialLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.DegLeOfEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Crv

namespace GlobalTheory.CompanionTheory.Ar.Crv

theorem subDeg_le_zero_of_trivial : ∀ (K : Type) [Field K] (C : ACurve K) (V : Type) [AddCommGroup V] [Module K V] [FiniteDimensional K V] (n : ℕ) (b : Module.Basis (Fin n) K V) (L : C.I → AddSubgroup V) (W : Submodule K V), (∀ i, IsLatOf C i b (L i)) → subDeg C L W ≤ 0 :=
  @PositivityTheory.HtPt.Ch.subdeg_trivial

end GlobalTheory.CompanionTheory.Ar.Crv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeNonposTrivialLattice =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeBotAndMaxExists =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeBotAndMaxExists", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BundleDegreeEqSumValuations\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DegreeMonoLatticeLe\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeNonposTrivialLattice\npublic import Mathlib.Order.Int.LeastGreatest\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubAndQuotientBundles\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.CompanionTheory.Ar.Crv

namespace GlobalTheory.CompanionTheory.Ar.Crv.SubdegMax

variable {K : Type} [Field K] (C : ACurve K) {V : Type} [AddCommGroup V] [Module K V]

def latOf (i : C.I) {n : ℕ} (b : Module.Basis (Fin n) K V) : AddSubgroup V where
  carrier := {x | ∀ q, C.v i (b.repr x q) ≤ 1}
  zero_mem' := fun q => by simp
  add_mem' := fun {x y} hx hy q => by
    rw [map_add (f := _), Finsupp.add_apply]; exact (C.v i).map_add_le (hx q) (hy q)
  neg_mem' := fun {x} hx q => by
    rw [map_neg, Finsupp.neg_apply, Valuation.map_neg]; exact hx q

theorem isLatOf_latOf (i : C.I) {n : ℕ} (b : Module.Basis (Fin n) K V) :
    IsLatOf C i b (latOf C i b) := fun _ => Iff.rfl

def scale (L : C.I → AddSubgroup V) (c : C.I → Kˣ) : C.I → AddSubgroup V :=
  fun i => (L i).comap (DistribSMul.toAddMonoidHom V (((c i)⁻¹ : Kˣ) : K))

theorem mem_scale (L : C.I → AddSubgroup V) (c : C.I → Kˣ) (i : C.I) (x : V) :
    x ∈ scale C L c i ↔ (((c i)⁻¹ : Kˣ) : K) • x ∈ L i := Iff.rfl

theorem isLatOf_scale {L : C.I → AddSubgroup V} (c : C.I → Kˣ) {i : C.I} {n : ℕ}
    {b : Module.Basis (Fin n) K V} (h : IsLatOf C i b (L i)) :
    IsLatOf C i (b.unitsSMul fun _ => c i) (scale C L c i) := by
  intro x
  rw [mem_scale, h]
  refine forall_congr' fun q => ?_
  rw [Module.Basis.repr_unitsSMul, map_smul, Finsupp.smul_apply]
  rfl

theorem isBun_scale {L : C.I → AddSubgroup V} (c : C.I → Kˣ) (hc : {i | c i ≠ 1}.Finite)
    (h : IsBun C L) : IsBun C (scale C L c) := by
  refine ⟨fun i => ?_, ?_⟩
  · obtain ⟨b, hb⟩ := h.1 i
    exact ⟨_, isLatOf_scale C c hb⟩
  · obtain ⟨b, hb⟩ := h.2
    refine ⟨b, (hb.union hc).subset fun i hi => ?_⟩
    by_contra hn
    simp only [Set.mem_union, Set.mem_setOf_eq, not_or, not_not] at hn hi
    apply hi
    intro x
    rw [mem_scale, hn.2, inv_one, Units.val_one, one_smul]
    exact hn.1 x

theorem deg_scale [FiniteDimensional K V] {L : C.I → AddSubgroup V} (c : C.I → Kˣ)
    (hc : {i | c i ≠ 1}.Finite) (h : IsBun C L) :
    deg C (scale C L c) = deg C L +
      (Module.finrank K V : ℤ) * ∑ᶠ i, (C.w i : ℤ) * WithZero.log (C.v i (c i)) := by
  choose b hb using h.1
  obtain ⟨hf, e⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Crv.DegFormula.deg_formula K C V L _ (Module.finBasis K V) b h hb
  obtain ⟨-, e'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Crv.DegFormula.deg_formula K C V (scale C L c) _ (Module.finBasis K V)
    (fun i => (b i).unitsSMul fun _ => c i) (isBun_scale C c hc h)
    (fun i => isLatOf_scale C c (hb i))
  have hs1 : (Function.support fun i =>
      (C.w i : ℤ) * WithZero.log (C.v i ((Module.finBasis K V).det (b i)))).Finite := by
    refine hf.subset fun i hi => ?_
    intro h1
    exact hi (by simp [h1])
  have hs3 : (Function.support fun i => (Module.finrank K V : ℤ) *
      ((C.w i : ℤ) * WithZero.log (C.v i (c i)))).Finite := by
    refine hc.subset fun i hi => ?_
    intro h1
    exact hi (by simp [h1])
  rw [e, e', mul_finsum, ← finsum_add_distrib hs1 hs3]
  refine finsum_congr fun i => ?_
  have hd : (Module.finBasis K V).det ((b i).unitsSMul fun _ => c i) =
      (c i : K) ^ Module.finrank K V * (Module.finBasis K V).det (b i) := by
    have : ⇑((b i).unitsSMul fun _ => c i) = fun j => (c i : K) • b i j := by
      funext j; rw [Module.Basis.unitsSMul_apply]; rfl
    rw [this]
    have := (Module.finBasis K V).det.toMultilinearMap.map_smul_univ (fun _ => (c i : K)) (b i)
    simpa using this
  have h0 : C.v i ((Module.finBasis K V).det (b i)) ≠ 0 := by
    rw [Valuation.ne_zero_iff]
    exact ((Module.finBasis K V).isUnit_det (b i)).ne_zero
  have h1 : C.v i (c i) ≠ 0 := by
    rw [Valuation.ne_zero_iff]
    exact (c i).ne_zero
  rw [hd, map_mul, map_pow, WithZero.log_mul (pow_ne_zero _ h1) h0, WithZero.log_pow]
  simp only [nsmul_eq_mul]
  ring

theorem exists_scale (i : C.I) {n m : ℕ} (b : Module.Basis (Fin n) K V)
    {b' : Module.Basis (Fin m) K V} {L : AddSubgroup V} (h : IsLatOf C i b' L) :
    ∃ c : Kˣ, 1 ≤ C.v i c ∧ ∀ x ∈ L, ((c⁻¹ : Kˣ) : K) • x ∈ latOf C i b := by
  classical
  obtain ⟨c, -, hc⟩ := Finset.exists_max_image
    (insert (1 : K) (Finset.univ.image fun p : Fin m × Fin n => b.repr (b' p.1) p.2))
    (C.v i) (Finset.insert_nonempty _ _)
  have h1 : 1 ≤ C.v i c := by simpa using hc 1 (Finset.mem_insert_self _ _)
  have hpos : 0 < C.v i c := lt_of_lt_of_le zero_lt_one h1
  have hc0 : c ≠ 0 := by
    rintro rfl
    simp at hpos
  refine ⟨Units.mk0 c hc0, h1, fun x hx q => ?_⟩
  have hle : C.v i (b.repr x q) ≤ C.v i c := by
    have hx' : b.repr x q = ∑ j, b'.repr x j * b.repr (b' j) q := by
      conv_lhs => rw [← b'.sum_repr x]

      rw [map_sum, Finsupp.finsetSum_apply]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [map_smul, Finsupp.smul_apply, smul_eq_mul]
    rw [hx']
    refine (C.v i).map_sum_le fun j _ => ?_
    rw [map_mul]
    calc _ ≤ 1 * C.v i c := mul_le_mul' ((h x).1 hx j)
          (hc _ (Finset.mem_insert_of_mem (Finset.mem_image.2 ⟨(j, q), Finset.mem_univ _, rfl⟩)))
      _ = _ := one_mul _
  rw [map_smul, Finsupp.smul_apply, smul_eq_mul, map_mul, Units.val_inv_eq_inv_val, Units.val_mk0,
    map_inv₀, inv_mul_le_iff₀ hpos, mul_one]
  exact hle

theorem subDeg_bot [FiniteDimensional K V] (L : C.I → AddSubgroup V) : subDeg C L ⊥ = 0 := by
  unfold subDeg deg
  have : IsEmpty (Fin (Module.finrank K (⊥ : Submodule K V))) := by
    rw [finrank_bot]; infer_instance
  refine finsum_eq_zero_of_forall_eq_zero fun i => ?_
  simp

theorem subDeg_bdd [FiniteDimensional K V] (L : C.I → AddSubgroup V) (h : IsBun C L) :
    ∃ B : ℤ, ∀ W : Submodule K V, subDeg C L W ≤ B := by
  classical
  obtain ⟨b, hb⟩ := h.2
  have key : ∀ i, ∃ c : Kˣ, (IsLatOf C i b (L i) → c = 1) ∧ 1 ≤ C.v i c ∧
      ∀ x ∈ L i, ((c⁻¹ : Kˣ) : K) • x ∈ latOf C i b := by
    intro i
    by_cases hi : IsLatOf C i b (L i)
    · refine ⟨1, fun _ => rfl, by simp, fun x hx => ?_⟩
      rw [inv_one, Units.val_one, one_smul]
      exact (hi x).1 hx
    · obtain ⟨b', hb'⟩ := h.1 i
      obtain ⟨c, h1, h2⟩ := exists_scale C i b hb'
      exact ⟨c, fun h' => absurd h' hi, h1, h2⟩
  choose c hc1 hc2 hc3 using key
  have hc : {i | c i ≠ 1}.Finite := hb.subset fun i hi h' => hi (hc1 i h')
  have h0 : IsBun C (fun i => latOf C i b) :=
    ⟨fun i => ⟨b, isLatOf_latOf C i b⟩, b, by simp [isLatOf_latOf]⟩
  set S : ℤ := ∑ᶠ i, (C.w i : ℤ) * WithZero.log (C.v i (c i)) with hS
  have hS0 : 0 ≤ S := by
    refine finsum_nonneg fun i => mul_nonneg (Int.natCast_nonneg _) ?_
    have h1 : C.v i (c i) ≠ 0 := by
      rw [Valuation.ne_zero_iff]
      exact (c i).ne_zero
    have := (WithZero.log_le_log one_ne_zero h1).2 (hc2 i)
    simpa using this
  refine ⟨(Module.finrank K V : ℤ) * S, fun W => ?_⟩
  have hW := (_root_.GlobalTheory.CompanionTheory.Ar.Crv.SubQuot.isBun_sub_quot K C V _ W h0).1
  have e1 := _root_.GlobalTheory.CompanionTheory.Ar.Crv.deg_le_deg_of_le K C W (sub C L W) (scale C (sub C (fun i => latOf C i b) W) c)
    (_root_.GlobalTheory.CompanionTheory.Ar.Crv.SubQuot.isBun_sub_quot K C V _ W h).1 (isBun_scale C c hc hW) (fun i x hx => hc3 i x hx)
  have e2 := deg_scale C c hc hW
  have e3 := _root_.GlobalTheory.CompanionTheory.Ar.Crv.subDeg_le_zero_of_trivial K C V _ b (fun i => latOf C i b) W (fun i => isLatOf_latOf C i b)
  have e4 : (Module.finrank K W : ℤ) * S ≤ (Module.finrank K V : ℤ) * S :=
    mul_le_mul_of_nonneg_right (by exact_mod_cast W.finrank_le) hS0
  unfold subDeg at e3 ⊢
  rw [← hS] at e2
  linarith

theorem subDeg_max : ∀ (K : Type) [Field K] (C : ACurve K) (V : Type) [AddCommGroup V] [Module K V]
    [FiniteDimensional K V] (L : C.I → AddSubgroup V), IsBun C L →
    subDeg C L ⊥ = 0 ∧ ∃ W₀ : Submodule K V, ∀ W : Submodule K V, subDeg C L W ≤ subDeg C L W₀ := by
  intro K _ C V _ _ _ L h
  refine ⟨subDeg_bot C L, ?_⟩
  obtain ⟨B, hB⟩ := subDeg_bdd C L h
  obtain ⟨z, ⟨W₀, rfl⟩, hz⟩ := Int.exists_greatest_of_bdd
    (P := fun z => ∃ W : Submodule K V, subDeg C L W = z)
    ⟨B, by rintro _ ⟨W, rfl⟩; exact hB W⟩ ⟨_, ⊥, rfl⟩
  exact ⟨W₀, fun W => hz _ ⟨W, rfl⟩⟩

end GlobalTheory.CompanionTheory.Ar.Crv.SubdegMax
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SubDegreeBotAndMaxExists =====

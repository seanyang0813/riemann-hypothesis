module

public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.Order.CompletePartialOrder
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ThetaSetupAlgebraMaps
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.ConnAbs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.FilRZero
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.RedAbs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsProps
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.ExistsWeightBasisFiltration, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.MemOfMulIsU, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.RedSum, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.Imports

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.ExistsWeightBasisFiltration =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.ExistsWeightBasisFiltration", "h": "module\n\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace CrystallineSemistableComparison.Inj

open Submodule

theorem exists_weight_basis_filtration {K H : Type*} [Field K] [AddCommGroup H] [Module K H]
    (F : ℕ → Set H) (N : ℕ) (hN : ∀ j, N ≤ j → ∀ x ∈ F j, x = 0) :
    ∀ i, ∃ (s : Set H) (w : H → ℕ), LinearIndepOn K id s ∧
      (∀ v ∈ s, v ∈ F (w v) ∧ N - i ≤ w v) ∧
      ∀ j, N - i ≤ j → F j ⊆ span K {v | v ∈ s ∧ j ≤ w v} := by
  intro i
  induction i with
  | zero =>
    refine ⟨∅, fun _ => 0, linearIndepOn_empty K id, by simp, ?_⟩
    intro j hj x hx
    rw [hN j (by omega) x hx]
    exact zero_mem _
  | succ i ih =>
    obtain ⟨s, w, hli, hs, hspan⟩ := ih
    by_cases hi : N - (i + 1) = N - i
    · exact ⟨s, w, hli, fun v hv => by rw [hi]; exact hs v hv, fun j hj => hspan j (hi ▸ hj)⟩
    obtain ⟨b, hbt, hsb, htb, hlib⟩ :=
      exists_linearIndepOn_extension hli (Set.subset_union_left : s ⊆ s ∪ F (N - (i + 1)))
    classical
    refine ⟨b, fun v => if v ∈ s then w v else N - (i + 1), hlib, ?_, ?_⟩
    · intro v hv
      by_cases h : v ∈ s
      · simp only [h, if_true]
        exact ⟨(hs v h).1, by have := (hs v h).2; omega⟩
      · simp only [h, if_false]
        refine ⟨?_, le_rfl⟩
        rcases hbt hv with h' | h'
        · exact absurd h' h
        · exact h'
    · intro j hj
      rcases Nat.eq_or_lt_of_le hj with hjk | hlt
      · subst hjk
        intro x hx
        have hx' : x ∈ span K (id '' b) := htb ⟨x, Or.inr hx, rfl⟩
        rw [Set.image_id] at hx'
        refine span_mono ?_ hx'
        intro v hv
        refine ⟨hv, ?_⟩
        by_cases h : v ∈ s
        · simp only [h, if_true]
          have := (hs v h).2
          omega
        · simp [h]
      · have hj' : N - i ≤ j := by omega
        refine (hspan j hj').trans (span_mono ?_)
        rintro v ⟨hv, hw⟩
        exact ⟨hsb hv, by simp [hv, hw]⟩

theorem wt_basis {K H : Type*} [Field K] [AddCommGroup H] [Module K H] [FiniteDimensional K H]
    (F : ℕ → Set H) (hF : Antitone F) (h0 : F 0 = Set.univ) (N : ℕ) (hN : ∀ x ∈ F N, x = 0) :
    ∃ (m : ℕ) (b : Module.Basis (Fin m) K H) (w : Fin m → ℕ),
      ∀ s, b s ∈ F (w s) ∧ ∀ x ∈ F (w s + 1), b.coord s x = 0 := by
  obtain ⟨s, w, hli, hs, hspan⟩ := exists_weight_basis_filtration (K := K) F N (fun j hj x hx => hN x (hF hj hx)) N
  have hli' : LinearIndependent K ((↑) : s → H) := hli
  have htop : ⊤ ≤ span K (Set.range ((↑) : s → H)) := by
    rw [Subtype.range_coe]
    intro x _
    have := hspan 0 (by omega) (h0 ▸ Set.mem_univ x)
    exact span_mono (show {v | v ∈ s ∧ 0 ≤ w v} ⊆ s from fun v hv => hv.1) this
  let b0 := Module.Basis.mk hli' htop
  have hb0 : ∀ v, b0 v = (v : H) := fun v => Module.Basis.mk_apply hli' htop v
  have : Finite s := Module.Finite.finite_basis b0
  haveI : Fintype s := Fintype.ofFinite s
  let e := Fintype.equivFin s
  refine ⟨Fintype.card s, b0.reindex e, fun t => w (e.symm t), fun t => ⟨?_, ?_⟩⟩
  · rw [Module.Basis.reindex_apply, hb0]
    exact (hs _ (e.symm t).2).1
  · intro x hx
    rw [Module.Basis.coord_apply, Module.Basis.repr_reindex_apply]
    have hx' := hspan (w (e.symm t) + 1) (by omega) hx
    have himg : {v | v ∈ s ∧ w (e.symm t) + 1 ≤ w v} = b0 '' {u : s | w (e.symm t) + 1 ≤ w u} := by
      ext v
      constructor
      · rintro ⟨hv, hw⟩
        exact ⟨⟨v, hv⟩, hw, hb0 _⟩
      · rintro ⟨u, hu, rfl⟩
        rw [hb0]
        exact ⟨u.2, hu⟩
    rw [himg, SetLike.mem_coe, Module.Basis.mem_span_image] at hx'
    by_contra hne
    have := hx' (Finsupp.mem_support_iff.mpr hne)
    simp at this

end CrystallineSemistableComparison.Inj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.ExistsWeightBasisFiltration =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.MemOfMulIsU =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.MemOfMulIsU", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ThetaSetupAlgebraMaps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.ConnAbs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.ExistsWeightBasisFiltration\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.FilRZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison.Inj

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {R : Per l K}

theorem isU_of_mul {x y : R.B} (hx : x ∈ R.P) (hy : y ∈ R.P) (h : R.IsU (x * y)) : R.IsU y := by
  obtain ⟨-, w, hw, e⟩ := h
  exact ⟨hy, x * w, R.P.mul_mem hx hw, by rw [← e]; ring⟩

theorem not_isU_zero : ¬ R.IsU 0 := by
  rintro ⟨-, w, -, e⟩
  rw [zero_mul] at e
  exact zero_ne_one e

theorem mem_of_mul_isU {x u : R.B} (h : x * u ∈ R.P) (hu : R.IsU u) : x ∈ R.P := by
  obtain ⟨-, w, hw, e⟩ := hu
  have : x = x * u * w := by rw [mul_assoc, e, mul_one]
  rw [this]
  exact R.P.mul_mem h hw

theorem isU_σ (hR : R.Facts) (g : K.fixingSubgroup) {x : R.B} (h : R.IsU x) : R.IsU (R.σ g x) := by
  obtain ⟨hx, y, hy, e⟩ := h
  exact ⟨hR.σ_mem g x hx, R.σ g y, hR.σ_mem g y hy, by rw [← map_mul, e, map_one]⟩

theorem isU_sum (hR : R.Facts) {ι : Type*} (S : Finset ι) (x : ι → R.B) (hx : ∀ i, x i ∈ R.P)
    (h : R.IsU (∑ i ∈ S, x i)) : ∃ i, R.IsU (x i) := by
  classical
  induction S using Finset.induction_on with
  | empty => rw [Finset.sum_empty] at h; exact absurd h not_isU_zero
  | insert a S ha ih =>
    rw [Finset.sum_insert ha] at h
    rcases hR.loc _ (hx a) _ (R.P.sum_mem fun i _ => hx i) h with h1 | h1
    · exact ⟨a, h1⟩
    · exact ih h1

theorem toV_exists (M : Model l K) (n : ℕ) (v : M.V n) :
    ∃ ζ : ℤ_[l], ζ ≠ 0 ∧ ∃ x : M.T n, (ζ : ℚ_[l]) • v = M.toV n x :=
  exists_int_mul (T := GlobalTheory.EtC.Hl l M.spc n 0) v

variable {G : Model l K → Prop}

theorem key (P : Pre G R) (M : Model l K) (hM : G M) {i j : ℕ} {a : ℕ} (b : Module.Basis (Fin a) ℚ_[l] (M.V i))
    (z : Fin a → R.B) (g : M.V (i + j)) (y : M.T j) (f : Module.Dual ℚ_[l] (M.V i))
    (hf : ∀ x : M.T i, ∃ w, M.CupT x y w ∧ M.toV (i + j) w = f (M.toV i x) • g)
    {m m' : ℕ} (β : Module.Basis (Fin m) K (HdR M.q i)) (β' : Module.Basis (Fin m') K (HdR M.q j))
    (φ : Module.Dual K (HdR M.q (i + j))) :
    (∑ k, z k * R.q (f (b k))) * P.c M (i + j) g φ =
      ∑ s, ∑ s', (∑ k, z k * P.c M i (b k) (β.coord s)) * P.c M j (M.toV j y) (β'.coord s') *
        R.o (φ (P.cupR M i j (β s) (β' s'))) := by
  have hk : ∀ k, z k * R.q (f (b k)) * P.c M (i + j) g φ = ∑ s, ∑ s', z k * P.c M i (b k) (β.coord s) *
      P.c M j (M.toV j y) (β'.coord s') * R.o (φ (P.cupR M i j (β s) (β' s'))) := by
    intro k
    obtain ⟨ζ, hζ, x, hx⟩ := toV_exists M i (b k)
    obtain ⟨w, hw, hw'⟩ := hf x
    have e := P.cup M hM x y w hw β β' φ
    rw [hw', ← hx] at e
    simp only [P.lin, map_smul, smul_eq_mul, map_mul] at e
    have hq : R.q (ζ : ℚ_[l]) ≠ 0 := (map_ne_zero R.q).mpr (fun h => hζ (Subtype.ext h))
    have hk0 : R.q (f (b k)) * P.c M (i + j) g φ = ∑ s, ∑ s', P.c M i (b k) (β.coord s) *
        P.c M j (M.toV j y) (β'.coord s') * R.o (φ (P.cupR M i j (β s) (β' s'))) := by
      apply mul_left_cancel₀ hq
      rw [← mul_assoc, e, Finset.mul_sum]
      refine Finset.sum_congr rfl fun s _ => ?_
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun s' _ => ?_
      ring
    rw [mul_assoc, hk0, Finset.mul_sum]
    refine Finset.sum_congr rfl fun s _ => ?_
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun s' _ => ?_
    ring
  rw [Finset.sum_mul]
  simp_rw [hk]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun s _ => ?_
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun s' _ => ?_
  rw [Finset.sum_mul, Finset.sum_mul]

theorem coords {M : Model l K} {n : ℕ} (A : Set (Module.Dual ℚ_[l] (M.V n)))
    (hA : Submodule.span ℚ_[l] A = ⊤) (T : R.B → Prop) (h0 : T 0) (hadd : ∀ x y, T x → T y → T (x + y))
    (hsmul : ∀ (c : ℚ_[l]) x, T x → T (R.q c * x)) {a : ℕ} (b : Module.Basis (Fin a) ℚ_[l] (M.V n))
    (z : Fin a → R.B) (h : ∀ f ∈ A, T (∑ k, z k * R.q (f (b k)))) : ∀ k, T (z k) := by
  intro k0
  have hall : ∀ f ∈ Submodule.span ℚ_[l] A, T (∑ k, z k * R.q (f (b k))) := by
    intro f hf
    refine Submodule.span_induction (p := fun f _ => T (∑ k, z k * R.q (f (b k)))) ?_ ?_ ?_ ?_ hf
    · exact fun f hf => h f hf
    · simpa using h0
    · intro f f' _ _ h1 h2
      simp only [LinearMap.add_apply, map_add (f := _), mul_add, Finset.sum_add_distrib]
      exact hadd _ _ h1 h2
    · intro c f _ h1
      have e : ∑ k, z k * R.q ((c • f) (b k)) = R.q c * ∑ k, z k * R.q (f (b k)) := by
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl fun k _ => ?_
        rw [LinearMap.smul_apply, smul_eq_mul, map_mul]
        ring
      show T (∑ k, z k * R.q ((c • f) (b k)))
      rw [e]
      exact hsmul c _ h1
  have := hall (b.coord k0) (by rw [hA]; trivial)
  have e : ∑ k, z k * R.q (b.coord k0 (b k)) = z k0 := by
    rw [Finset.sum_eq_single k0]
    · simp
    · intro k _ hk
      simp [Module.Basis.coord_apply, hk]
    · simp
  rwa [e] at this

theorem conn (P : Pre G R) (hR : R.Facts) (hE : EtSide G) (M : Model l K) (hM : G M) (d : ℕ) (hc : M.Conn d)
    (n : ℕ) : P.Inj M n ∧ P.Strict M n := by
  obtain ⟨hsub, hdual⟩ := hE.dual M hM d hc
  by_cases hn : 2 * d < n
  · have := hsub n hn
    exact ⟨fun b z _ => funext fun i => absurd (Subsingleton.elim (b i) 0) (b.ne_zero i),
      fun b z _ i => absurd (Subsingleton.elim (b i) 0) (b.ne_zero i)⟩
  replace hn : n ≤ 2 * d := by omega
  obtain ⟨j, hj⟩ : ∃ j, n + j = 2 * d := ⟨2 * d - n, by omega⟩
  obtain ⟨r, g, hg, htr, hspan⟩ := hdual n j hj
  obtain ⟨v, φ, hu⟩ : ∃ (v : M.V (n + j)) (φ : Module.Dual K (HdR M.q (n + j))),
      R.IsU (R.tB ^ d * P.c M (n + j) v φ) := by
    have key : ∀ k, k = 2 * d → ∃ (v : M.V k) (φ : Module.Dual K (HdR M.q k)), R.IsU (R.tB ^ d * P.c M k v φ) := by
      rintro k rfl
      exact P.c1 M hM d hc
    exact key _ hj
  have hfil : ∀ s, R.tB ^ d * P.c M (n + j) (g s) φ ∈ R.P := fun s =>
    P.fil M (n + j) hM d (g s) φ (fun x hx => by rw [P.top M hM d hc (n + j) x hx, map_zero])
  have hv : v ∈ Submodule.span ℚ_[l] (Set.range g) := by rw [hg]; trivial
  obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun ℚ_[l]).mp hv
  have e1 : R.tB ^ d * P.c M (n + j) v φ = ∑ s, R.q (a s) * (R.tB ^ d * P.c M (n + j) (g s) φ) := by

    rw [← ha, map_sum, AddMonoidHom.finsetSum_apply, Finset.mul_sum]
    refine Finset.sum_congr rfl fun s _ => ?_
    rw [P.lin]
    ring
  rw [e1] at hu
  obtain ⟨s0, hs0⟩ := isU_sum hR Finset.univ _ (fun s => R.P.mul_mem (hR.q_mem _) (hfil s)) hu
  have h0 := isU_of_mul (hR.q_mem _) (hfil s0) hs0
  have hall : ∀ s, R.IsU (R.tB ^ d * P.c M (n + j) (g s) φ) := by
    intro s
    obtain ⟨σ, ζ, -, he⟩ := htr s0 s
    have := isU_σ hR σ h0
    rw [map_mul, map_pow, ← P.equi M (n + j) hM σ, he, P.lin] at this
    obtain ⟨u, hu, hut⟩ := hR.galois_t_transform σ
    rw [hut, mul_pow] at this
    have e : u ^ d * R.tB ^ d * (R.q ζ * P.c M (n + j) (g s) φ) =
        (u ^ d * R.q ζ) * (R.tB ^ d * P.c M (n + j) (g s) φ) := by ring
    rw [e] at this
    exact isU_of_mul (R.P.mul_mem (R.P.pow_mem hu.1 _) (hR.q_mem _)) (hfil s) this
  have hne : ∀ s, P.c M (n + j) (g s) φ ≠ 0 := by
    intro s h
    have := hall s
    rw [h, mul_zero] at this
    exact not_isU_zero this
  obtain ⟨hfin_i, htop_i⟩ := P.fin M hM n
  obtain ⟨hfin_j, htop_j⟩ := P.fin M hM j
  have := hfin_i
  have := hfin_j
  obtain ⟨m, β, w, hβ⟩ := wt_basis (K := K) (FilR M.q n) (filR_anti M.q n) (filR_zero M.q n) (n + 1) htop_i
  obtain ⟨m', β', w', hβ'⟩ := wt_basis (K := K) (FilR M.q j) (filR_anti M.q j) (filR_zero M.q j) (j + 1) htop_j
  refine ⟨fun {a'} b z hz => ?_, fun {a'} b z hz => ?_⟩
  · funext k
    refine coords _ hspan (fun x => x = 0) rfl (fun x y hx hy => by rw [hx, hy, add_zero])
      (fun c x hx => by rw [hx, mul_zero]) b z ?_ k
    rintro f ⟨s, y, hf⟩
    have e := key P M hM b z (g s) y f hf β β' φ
    simp only [hz, zero_mul, Finset.sum_const_zero] at e
    exact (mul_eq_zero.mp e).resolve_right (hne s)
  · refine coords _ hspan (fun x => x ∈ R.P) R.P.zero_mem (fun x y hx hy => R.P.add_mem hx hy)
      (fun c x hx => R.P.mul_mem (hR.q_mem c) hx) b z ?_
    rintro f ⟨s, y, hf⟩
    have e := key P M hM b z (g s) y f hf β β' φ
    have hp := cup_fil R.P R.tB hR.t_mem R.o hR.o_mem (FilR M.q n) (FilR M.q j) (FilR M.q (n + j))
      (P.cupR M n j) (P.cupR_fil M hM n j) d
      (fun e hde x hx => P.top M hM d hc (n + j) x (filR_anti M.q (n + j) (by omega : d + 1 ≤ e) hx))
      β w hβ β' w' hβ' (fun ψ => ∑ k, z k * P.c M n (b k) ψ) (fun r ψ h => hz r ψ h)
      (fun ψ => P.c M j (M.toV j y) ψ) (fun r ψ h => P.fil M j hM r _ ψ h) φ
    rw [← e, mul_comm, mul_assoc, mul_comm (P.c M (n + j) (g s) φ)] at hp
    exact mem_of_mul_isU hp (hall s)

end CrystallineSemistableComparison.Inj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.MemOfMulIsU =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.RedSum =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.RedSum", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ThetaSetupAlgebraMaps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.RedAbs\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison.Inj

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {R : Per l K} {G : Model l K → Prop}

theorem red_sum (P : Pre G R) {M N : Model l K} (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p) (hM : G M) (hN : G N) (n : ℕ)
    {a c : ℕ} (b : Module.Basis (Fin a) ℚ_[l] (N.V n)) (e : Module.Basis (Fin c) ℚ_[l] (M.V n)) (z : Fin a → R.B)
    (φ : Module.Dual K (HdR M.q n)) :
    ∑ j, (∑ m, z m * R.q (e.coord j (Model.pullV u hu n (b m)))) * P.c M n (e j) φ =
      ∑ m, z m * P.c N n (b m) (φ ∘ₗ pullR n (Model.genMap u hu) (Model.genMap_q u hu)) := by
  have hexp : ∀ v, P.c M n v φ = ∑ j, R.q (e.coord j v) * P.c M n (e j) φ := by
    intro v
    conv_lhs => rw [← e.sum_repr v]

    rw [map_sum, AddMonoidHom.finsetSum_apply]
    simp only [P.lin, Module.Basis.coord_apply]
  simp_rw [← P.nat M N u hu n hM hN, Finset.sum_mul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [hexp (Model.pullV u hu n (b m)), Finset.mul_sum]
  exact Finset.sum_congr rfl fun j _ => by ring

theorem reduce (P : Pre G R) (hR : R.Facts) (hE : EtSide G)
    (hpull : ∀ (M N : Model l K) (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p) (n r : ℕ), ∀ x ∈ FilR N.q n r,
      pullR n (Model.genMap u hu) (Model.genMap_q u hu) x ∈ FilR M.q n r)
    (hconn : ∀ M, G M → ∀ d, M.Conn d → ∀ n, P.Inj M n ∧ P.Strict M n) :
    ∀ M, G M → ∀ n, P.Inj M n ∧ P.Strict M n := by
  intro M hM n
  obtain ⟨r, Q, d, u, hu, hQ, hinj⟩ := hE.comp M hM
  have : ∀ a, FiniteDimensional ℚ_[l] ((Q a).V n) := fun a => hE.fin _ (hQ a).1 n
  let e : ∀ a, Module.Basis (Fin (Module.finrank ℚ_[l] ((Q a).V n))) ℚ_[l] ((Q a).V n) :=
    fun a => Module.finBasis _ _
  let f : (Σ a, Fin (Module.finrank ℚ_[l] ((Q a).V n))) → Module.Dual ℚ_[l] (M.V n) :=
    fun i => (e i.1).coord i.2 ∘ₗ Model.pullV (u i.1) (hu i.1) n
  have hf : ∀ v, (∀ i, f i v = 0) → v = 0 := by
    intro v hv
    refine hinj n v fun a => (e a).ext_elem fun j => ?_
    simpa [f, Module.Basis.coord_apply] using hv ⟨a, j⟩
  refine ⟨fun {c} b z hz => ?_, fun {c} b z hz => ?_⟩
  · funext m
    have hm := red_abs R.q ⊥ (fun x s hs => by rw [AddSubgroup.mem_bot] at hs ⊢; rw [hs, mul_zero]) f hf b z ?_ m
    · simpa using hm
    rintro ⟨a, j⟩
    have hc := (hconn (Q a) (hQ a).1 (d a) (hQ a).2 n).1 (e a) (fun j => ∑ m, z m * R.q (f ⟨a, j⟩ (b m))) (fun φ => by
      have h := hz (φ ∘ₗ pullR n (Model.genMap (u a) (hu a)) (Model.genMap_q (u a) (hu a)))
      rw [← red_sum P (u a) (hu a) (hQ a).1 hM n b (e a) z φ] at h
      exact h)
    rw [AddSubgroup.mem_bot]
    exact congrFun hc j
  · intro m
    refine red_abs R.q R.P.toAddSubgroup (fun x s hs => R.P.mul_mem (hR.q_mem x) hs) f hf b z ?_ m
    rintro ⟨a, j⟩
    refine (hconn (Q a) (hQ a).1 (d a) (hQ a).2 n).2 (e a) (fun j => ∑ m, z m * R.q (f ⟨a, j⟩ (b m)))
      (fun r φ hφ => ?_) j
    have h := hz r (φ ∘ₗ pullR n (Model.genMap (u a) (hu a)) (Model.genMap_q (u a) (hu a)))
      (fun x hx => hφ _ (hpull (Q a) M (u a) (hu a) n (r + 1) x hx))
    rw [← red_sum P (u a) (hu a) (hQ a).1 hM n b (e a) z φ] at h
    exact h

end CrystallineSemistableComparison.Inj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.RedSum =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.Imports =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.Imports", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AbsProps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.FilRZero\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.MemOfMulIsU\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.RedSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison

theorem inj : ComparisonInjectiveStrict := by
  intro l _ K R G P hR hE
  exact Inj.reduce P hR hE (fun M N u hu n r => Inj.filR_pull (Model.genMap u hu) (Model.genMap_q u hu) n r)
    (fun M hM d hc n => Inj.conn P hR hE M hM d hc n)

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AdmissibleMinors.Imports =====

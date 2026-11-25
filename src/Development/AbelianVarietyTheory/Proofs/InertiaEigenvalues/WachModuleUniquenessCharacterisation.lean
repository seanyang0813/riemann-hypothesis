module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusIntegralityTensorAinfCoefficients
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeSandwichAinf
public import Mathlib.RingTheory.TensorProduct.IsBaseChangeFree
public import Formalism.SharpRestriction.LevelLetterCocycles.GammaSemisimpleLocalOfConsequences
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapConstantCoeffEqOne
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFreeLatticeEqWachLatticeInvertX, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleUniquenessCharacterisation

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFreeLatticeEqWachLatticeInvertX =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFreeLatticeEqWachLatticeInvertX", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusIntegralityTensorAinfCoefficients\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeSandwichAinf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\npublic import Mathlib.RingTheory.TensorProduct.IsBaseChangeFree\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices Module

noncomputable section

namespace GlobalTheory.NL.InvX

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {RA RW : Type} [CommRing RA] [CommRing RW] [Algebra O RA]
    [Algebra O RW] {inclR : RA →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : RA}
    {W : LocWach PD LL O v n} (E : EtTie W RA RW inclR φR gR πA)

theorem jD_smulA (T : LocLat G Qp LL O) (a : LetA O n) (y : W.DD T) :
    E.jD T (a • y) = inclR (E.io a) • E.jD T y := by
  rw [← algebraMap_smul W.EE a y, E.jD_smul, E.ioE_ext]

theorem φD_smulA (T : LocLat G Qp LL O) (a : LetA O n) (y : W.DD T) :
    W.φD T (a • y) = W.φA a • W.φD T y := by
  rw [← algebraMap_smul W.EE a y, W.φD_smul, W.φE_ext, algebraMap_smul]
  rfl

theorem uniform {A M ι : Type} [CommRing A] [AddCommGroup M] [Module A M] [Fintype ι] (q : A)
    (S : Submodule A M) (w : ι → M) (h : ∀ i, ∃ k : ℕ, q ^ k • w i ∈ S) :
    ∃ k₀ : ℕ, ∀ k ≥ k₀, ∀ i, q ^ k • w i ∈ S := by
  choose k hk using h
  refine ⟨Finset.univ.sup k, fun m hm i => ?_⟩
  have : k i ≤ m := (Finset.le_sup (Finset.mem_univ i)).trans hm
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le this
  rw [add_comm, pow_add, mul_smul]
  exact S.smul_mem _ (hk i)

theorem basis_of_free (T : LocLat G Qp LL O) (S : Submodule (LetA O n) (W.DD T)) (hS : FreeA W T S) :
    ∃ r : ℕ, Nonempty (Basis (Fin r) (LetA O n) ↥S) := by
  obtain ⟨r, b, hb, hu⟩ := hS
  refine ⟨r, ⟨Basis.mk (v := fun j => (⟨b j, hb j⟩ : ↥S)) ?_ ?_⟩⟩
  · rw [Fintype.linearIndependent_iff]
    intro g hg
    have h1 := congrArg S.subtype hg

    rw [map_sum, map_zero] at h1
    have h2 : g = 0 := (hu 0 S.zero_mem).unique h1.symm (by simp)
    intro i; rw [h2]; rfl
  · intro x _
    obtain ⟨a, ha, -⟩ := hu x.1 x.2
    rw [Submodule.mem_span_range_iff_exists_fun]
    refine ⟨a, Subtype.ext ?_⟩
    change S.subtype _ = _

    rw [map_sum]
    exact ha.symm

theorem basis_rank [Nontrivial W.EE] (T : LocLat G Qp LL O) (S : Submodule (LetA O n) (W.DD T))
    (hS : FreeA W T S) (hB : IsBaseChange W.EE S.subtype) :
    Nonempty (Basis (Fin (Module.finrank O ↥T.L.T)) (LetA O n) ↥S) := by
  obtain ⟨r, ⟨b⟩⟩ := basis_of_free T S hS
  have h := Module.finrank_eq_card_basis (hB.basis b)
  rw [(W.DD_free T).2, Fintype.card_fin] at h
  rw [h]
  exact ⟨b⟩

theorem sand_of
    (hA : ∀ (p q : Type) [Fintype p] [Fintype q] (Z : Matrix p q RW) (P : Matrix p p RA)
      (P' : Matrix q q RA) (Y : Matrix p q RA),
      Z.map φR = P.map inclR * Z * P'.map inclR + Y.map inclR → ∀ a b, Z a b ∈ Set.range inclR)
    (hφ : ∀ a, inclR (E.io (W.φA a)) = φR (inclR (E.io a)))
    (hE : ∀ x : W.EE, (∃ y, inclR y = E.ioE x) → ∃ a : LetA O n, algebraMap _ W.EE a = x)
    (T : LocLat G Qp LL O) [Nontrivial O] (S : Submodule (LetA O n) (W.DD T))
    (b : Basis (Fin (Module.finrank O ↥T.L.T)) (LetA O n) ↥S)
    (hB : IsBaseChange W.EE S.subtype)
    (hS1 : ∀ x ∈ S, ∃ k : ℕ, W.Q ^ k • W.φD T x ∈ S)
    (hS2 : ∀ y ∈ S, ∃ k : ℕ, W.Q ^ k • y ∈ φspan W T S) :
    ∃ m : ℕ, (∀ y ∈ S, E.jD T (W.X ^ m • y) ∈ LinearMap.range (TWincl inclR T)) ∧
      ∀ y : W.DD T, E.jD T y ∈ LinearMap.range (TWincl inclR T) → W.X ^ m • y ∈ S := by
  classical
  have hx : φR (inclR (E.io W.X)) = inclR (E.io W.X) * inclR (E.io W.Q) := by
    rw [← hφ, W.φA_X, map_mul, map_mul]
  have : Module.Free O ↥T.L.T := T.L.free
  have : Module.Finite O ↥T.L.T := Module.Finite.iff_fg.mpr T.L.fg
  let tb := Module.finBasis O ↥T.L.T
  have hexp : ∀ y ∈ S, ∃ c : Fin (Module.finrank O ↥T.L.T) → LetA O n,
      y = ∑ j, c j • (b j : W.DD T) := by
    intro y hy
    refine ⟨fun j => b.repr ⟨y, hy⟩ j, ?_⟩
    have := congrArg S.subtype (b.sum_repr ⟨y, hy⟩)

    rw [map_sum] at this
    exact this.symm
  have hexpE : ∀ y : W.DD T, ∃ c : Fin (Module.finrank O ↥T.L.T) → W.EE,
      y = ∑ j, c j • (b j : W.DD T) := by
    intro y
    refine ⟨fun j => (hB.basis b).repr y j, ?_⟩
    conv_lhs => rw [← (hB.basis b).sum_repr y]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [hB.basis_apply]; rfl
  have hj : ∀ (c : Fin (Module.finrank O ↥T.L.T) → LetA O n)
      (w : Fin (Module.finrank O ↥T.L.T) → W.DD T),
      E.jD T (∑ j, c j • w j) = ∑ j, inclR (E.io (c j)) • E.jD T (w j) := by
    intro c w

    rw [map_sum]
    exact Finset.sum_congr rfl fun j _ => jD_smulA E T _ _
  have hjE : ∀ (c : Fin (Module.finrank O ↥T.L.T) → W.EE)
      (w : Fin (Module.finrank O ↥T.L.T) → W.DD T),
      E.jD T (∑ j, c j • w j) = ∑ j, E.ioE (c j) • E.jD T (w j) := by
    intro c w

    rw [map_sum]
    exact Finset.sum_congr rfl fun j _ => E.jD_smul T _ _
  have hsp : ⊤ ≤ Submodule.span RW (Set.range fun i => E.jD T (b i : W.DD T)) := by
    rw [← E.jD_span T, Submodule.span_le]
    rintro _ ⟨y, rfl⟩
    obtain ⟨c, rfl⟩ := hexpE y
    rw [hjE]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
  have hli : LinearIndependent RW fun i => E.jD T (b i : W.DD T) := by
    have hs := hsp
    rw [← Finsupp.range_linearCombination, top_le_iff, LinearMap.range_eq_top] at hs
    exact OrzechProperty.injective_of_surjective_of_injective _ _
      (Algebra.TensorProduct.basis RW tb).linearIndependent hs
  obtain ⟨k₁, h1⟩ := uniform W.Q S (fun i => W.φD T (b i : W.DD T))
    (fun i => hS1 _ (b i).2)
  obtain ⟨k₂, h2⟩ := uniform W.Q (φspan W T S)
    (fun i => (b i : W.DD T)) (fun i => hS2 _ (b i).2)
  replace h1 := h1 (max k₁ k₂) (le_max_left _ _)
  replace h2 := h2 (max k₁ k₂) (le_max_right _ _)
  refine ⟨max k₁ k₂, ?_⟩
  generalize max k₁ k₂ = m at h1 h2
  constructor
  · choose P hP using fun i => hexp _ (h1 i)
    have hup := GlobalTheory.Sandwich.upper tb inclR φR hA _ _ hx m (fun i => E.jD T (b i : W.DD T))
      (Matrix.of fun i j => E.io (P i j)) (by
        intro i
        have := congrArg (E.jD T) (hP i)
        rw [hj, jD_smulA, E.jD_φ, map_pow, map_pow] at this
        exact this)
    intro y hy
    obtain ⟨c, rfl⟩ := hexp y hy
    rw [jD_smulA, map_pow, map_pow, hj, Finset.smul_sum]
    refine Submodule.sum_mem _ fun j _ => ?_
    rw [smul_comm]
    exact GlobalTheory.Sandwich.incl_smul_mem inclR _ _ (hup j)
  · have hexp2 : ∀ y ∈ φspan W T S,
        ∃ c : Fin (Module.finrank O ↥T.L.T) → LetA O n,
        y = ∑ j, c j • W.φD T (b j : W.DD T) := by
      intro y hy
      have : φspan W T S ≤ Submodule.span (LetA O n)
          (Set.range fun j => W.φD T (b j : W.DD T)) := by
        refine Submodule.span_le.mpr ?_
        rintro _ ⟨z, hz, rfl⟩
        obtain ⟨c, rfl⟩ := hexp z hz

        rw [map_sum]
        refine Submodule.sum_mem _ fun j _ => ?_
        rw [φD_smulA]
        exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
      obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun _).mp (this hy)
      exact ⟨c, hc.symm⟩
    choose U hU using fun i => hexp2 _ (h2 i)
    let nb : Basis (Fin (Module.finrank O ↥T.L.T)) RW (TW RW T) := Basis.mk hli hsp
    have hnb : ∀ i, nb i = E.jD T (b i : W.DD T) := fun i => Basis.mk_apply _ _ i
    have hlow := GlobalTheory.Sandwich.lower tb inclR φR hA _ _ hx m nb
      (Matrix.of fun i j => E.io (U i j)) (by
        intro i
        have := congrArg (E.jD T) (hU i)
        rw [hj, jD_smulA, map_pow, map_pow] at this
        simp only [E.jD_φ] at this
        simp only [hnb]
        exact this)
    choose cc hcc using hlow
    have hall : ∀ w : TW RA T, ∃ c : Fin (Module.finrank O ↥T.L.T) → RA,
        inclR (E.io W.X) ^ m • TWincl inclR T w = ∑ j, inclR (c j) • nb j := by
      intro w
      let ta := Algebra.TensorProduct.basis RA tb
      refine ⟨fun j => ∑ k, ta.repr w k * cc k j, ?_⟩
      have hk : ∀ (a : RA) k, TWincl inclR T (a • ta k) = inclR a • ((1 : RW) ⊗ₜ[O] tb k) := by
        intro a k
        simp [ta, TWincl, Algebra.TensorProduct.basis_apply, TensorProduct.smul_tmul']
      conv_lhs => rw [← ta.sum_repr w]

      simp only [map_sum, hk, Finset.smul_sum, Finset.sum_smul, map_mul]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [smul_comm, hcc k, Finset.smul_sum]
      exact Finset.sum_congr rfl fun j _ => by rw [smul_smul]
    rintro y ⟨w, hw⟩
    obtain ⟨c, hc⟩ := hall w
    obtain ⟨e, he⟩ := hexpE (W.X ^ m • y)
    have h3 : ∑ j, E.ioE (e j) • nb j = ∑ j, inclR (c j) • nb j := by
      rw [← hc, hw, ← map_pow, ← map_pow, ← jD_smulA, he, hjE]
      simp only [hnb]
    have h4 : ∀ j, E.ioE (e j) = inclR (c j) := fun j =>
      (Fintype.linearIndependent_iffₛ.mp nb.linearIndependent) _ _ h3 j
    choose a ha using fun j => hE (e j) ⟨c j, (h4 j).symm⟩
    rw [he]
    refine Submodule.sum_mem _ fun j _ => ?_
    rw [← ha j, algebraMap_smul]
    exact S.smul_mem _ (b j).2

theorem compare
    (hA : ∀ (p q : Type) [Fintype p] [Fintype q] (Z : Matrix p q RW) (P : Matrix p p RA)
      (P' : Matrix q q RA) (Y : Matrix p q RA),
      Z.map φR = P.map inclR * Z * P'.map inclR + Y.map inclR → ∀ a b, Z a b ∈ Set.range inclR)
    (hφ : ∀ a, inclR (E.io (W.φA a)) = φR (inclR (E.io a)))
    (hE : ∀ x : W.EE, (∃ y, inclR y = E.ioE x) → ∃ a : LetA O n, algebraMap _ W.EE a = x)
    (T : LocLat G Qp LL O) [Nontrivial O] (hT : IsCrys PD T.ρ)
    (hb : Nonempty (Basis (Fin (Module.finrank O ↥T.L.T)) (LetA O n) ↥(W.N T)))
    (S : Submodule (LetA O n) (W.DD T)) (hS : FreeA W T S)
    (hB : IsBaseChange W.EE S.subtype)
    (hS1 : ∀ x ∈ S, ∃ k : ℕ, W.Q ^ k • W.φD T x ∈ S)
    (hS2 : ∀ y ∈ S, ∃ k : ℕ, W.Q ^ k • y ∈ φspan W T S) :
    ∃ a : ℕ, (∀ x ∈ S, W.X ^ a • x ∈ W.N T) ∧ ∀ x ∈ W.N T, W.X ^ a • x ∈ S := by
  have : Nontrivial W.EE := W.EE_inj.nontrivial
  obtain ⟨b⟩ := hb
  obtain ⟨b₁⟩ := basis_rank T S hS hB
  obtain ⟨m, h1, h2⟩ := sand_of E hA hφ hE T (W.N T) b (W.N_base T hT) (W.N_φ T) (W.N_φinv T)
  obtain ⟨m', h1', h2'⟩ := sand_of E hA hφ hE T S b₁ hB hS1 hS2
  refine ⟨m + m', fun x hx => ?_, fun x hx => ?_⟩
  · rw [pow_add, mul_smul]
    exact h2 _ (h1' x hx)
  · rw [add_comm, pow_add, mul_smul]
    exact h2' _ (h1 x hx)

end Generic



theorem main : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; ∀ T : Lt K LL, IsCrys ((D.loc l).PD K) T.ρ → ∀ N₁ : Submodule (AA K LL) (W.DD T), FreeA W T N₁ → IsBaseChange W.EE N₁.subtype → (∀ x ∈ N₁, ∃ k : ℕ, W.Q ^ k • W.φD T x ∈ N₁) → (∀ y ∈ N₁, ∃ k : ℕ, W.Q ^ k • y ∈ φspan W T N₁) → ∃ a : ℕ, (∀ x ∈ N₁, W.X ^ a • x ∈ W.N T) ∧ ∀ x ∈ W.N T, W.X ^ a • x ∈ N₁ := by
  intro D HW F l _ K s LL h
  have hio := GlobalTheory.NL.IoXQ.main D.loc D.locA HW F l K s LL h
  exact fun T hT N₁ h1 h2 h3 h4 => compare ((F l).E K s LL h).tie
    (GlobalTheory.FrobIntegralCoeff.frobenius_integrality_coeff l LL) hio.2.2.2.2.1 hio.2.2.2.2.2.1 T hT
    (GlobalTheory.NL.N_basis D.loc D.locA HW F l K s LL h T hT) N₁ h1 h2 h3 h4

end GlobalTheory.NL.InvX
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFreeLatticeEqWachLatticeInvertX =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleUniquenessCharacterisation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleUniquenessCharacterisation", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.GammaSemisimpleLocalOfConsequences\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapConstantCoeffEqOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFreeLatticeEqWachLatticeInvertX\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TensorProduct.IsBaseChangeFree\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

noncomputable section

namespace GlobalTheory.NL.FrobeniusMatrixUniqueness

section Comb

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M] {r : ℕ}

theorem comb_mul (b : Fin r → M) (P P' : Matrix (Fin r) (Fin r) R) (j : Fin r) :
    ∑ i, (P * P') i j • b i = ∑ k, P' k j • ∑ i, P i k • b i := by
  simp only [Matrix.mul_apply, Finset.sum_smul, Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun i _ => ?_
  rw [mul_comm]

theorem comb_smul (b : Fin r → M) (c : R) (P : Matrix (Fin r) (Fin r) R) (j : Fin r) :
    ∑ i, (c • P) i j • b i = c • ∑ i, P i j • b i := by
  simp only [Matrix.smul_apply, smul_eq_mul, Finset.smul_sum, smul_smul]

theorem comb_one (b : Fin r → M) (j : Fin r) :
    ∑ i, (1 : Matrix (Fin r) (Fin r) R) i j • b i = b j := by
  simp [Matrix.one_apply]

theorem matrix_eq_of_comb {b : Fin r → M} (hb : LinearIndependent R b) {P P' : Matrix (Fin r) (Fin r) R}
    (h : ∀ j, ∑ i, P i j • b i = ∑ i, P' i j • b i) : P = P' := by
  ext i j
  have h0 : ∑ k, (P k j - P' k j) • b k = 0 := by
    simp only [sub_smul, Finset.sum_sub_distrib, h j, sub_self]
  exact sub_eq_zero.1 (Fintype.linearIndependent_iff.1 hb _ h0 i)

theorem exists_pow_uniform {S : Submodule R M} (q : R) (w : Fin r → M) (h : ∀ k, ∃ e : ℕ, q ^ e • w k ∈ S) :
    ∃ e : ℕ, ∀ k, q ^ e • w k ∈ S := by
  choose e he using h
  refine ⟨∑ k, e k, fun k => ?_⟩
  have hk : e k ≤ ∑ k, e k := Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.mem_univ k)
  rw [← Nat.sub_add_cancel hk, pow_add, mul_smul]
  exact S.smul_mem _ (he k)

theorem coords {S : Submodule R M} (bS : Module.Basis (Fin r) R ↥S) {x : M} (hx : x ∈ S) :
    ∃ c : Fin r → R, x = ∑ i, c i • (bS i : M) := by
  refine ⟨bS.repr ⟨x, hx⟩, ?_⟩
  have h := congrArg Subtype.val (bS.sum_repr ⟨x, hx⟩)
  rw [Submodule.coe_sum] at h
  simp only [Submodule.coe_smul] at h
  exact h.symm

end Comb

section Generic

open Formalism.MainNotions.DeltaInvariantLattices

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem φD_smulA (a : LetA O n) (x : W.DD T) : W.φD T (a • x) = W.φA a • W.φD T x := by
  have h := W.φD_smul T (algebraMap (LetA O n) W.EE a) x
  rw [algebraMap_smul, W.φE_ext, algebraMap_smul] at h
  exact h

theorem γ_smulA (a : LetA O n) (x : W.DD T) : W.γ T (a • x) = W.γA W.gam a • W.γ T x := by
  have h := W.γD_smul T W.gam (algebraMap (LetA O n) W.EE a) x
  rw [algebraMap_smul, W.γE_ext, algebraMap_smul] at h
  exact h

theorem X_pow_smul_cancel (a : ℕ) {x y : W.DD T} (h : W.X ^ a • x = W.X ^ a • y) : x = y := by
  rw [← algebraMap_smul W.EE (W.X ^ a) x, ← algebraMap_smul W.EE (W.X ^ a) y, map_pow] at h
  exact ((GlobalTheory.NL.IoXQ.isUnit_X W).pow a).smul_left_cancel.1 h

theorem basis_of_freeA {S : Submodule (LetA O n) (W.DD T)} (hS : FreeA W T S) :
    ∃ r : ℕ, Nonempty (Module.Basis (Fin r) (LetA O n) ↥S) := by
  obtain ⟨r, b, hb, hu⟩ := hS
  let w : Fin r → ↥S := fun j => ⟨b j, hb j⟩
  have li : LinearIndependent (LetA O n) w := by
    refine Fintype.linearIndependent_iff.2 fun g hg i => ?_
    have hg' : (0 : W.DD T) = ∑ j, g j • b j := by
      have := congrArg Subtype.val hg
      rw [Submodule.coe_sum] at this
      simpa [w] using this.symm
    have h0 : (0 : W.DD T) = ∑ j, (0 : Fin r → LetA O n) j • b j := by simp
    have := (hu 0 S.zero_mem).unique hg' h0
    exact congrFun this i
  have sp : ⊤ ≤ Submodule.span (LetA O n) (Set.range w) := by
    rintro ⟨x, hx⟩ -
    obtain ⟨c, hc, -⟩ := hu x hx
    rw [Submodule.mem_span_range_iff_exists_fun]
    refine ⟨c, Subtype.ext ?_⟩
    rw [Submodule.coe_sum]
    simp [w, hc]
  exact ⟨r, ⟨Module.Basis.mk li sp⟩⟩

end Generic

section Key

open Formalism.MainNotions.DeltaInvariantLattices

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem gam_matrix {r : ℕ} {S : Submodule (LetA O n) (W.DD T)} (bS : Module.Basis (Fin r) (LetA O n) ↥S)
    (h : ∀ x ∈ S, ∃ y ∈ S, W.γ T x - x = (letπ : LetA O n) • y) :
    ∃ Gm : Matrix (Fin r) (Fin r) (LetA O n), (∀ i j, (Gm - 1) i j ∈ Ideal.span {(letπ : LetA O n)}) ∧
      ∀ k, W.γ T (bS k) = ∑ i, Gm i k • (bS i : W.DD T) := by
  choose y hy hyeq using fun k => h _ (bS k).2
  choose c hc using fun k => coords bS (hy k)
  refine ⟨1 + (letπ : LetA O n) • Matrix.of (fun i k => c k i), fun i j => ?_, fun k => ?_⟩
  · rw [add_sub_cancel_left, Matrix.smul_apply, smul_eq_mul]
    exact Ideal.mem_span_singleton.2 (dvd_mul_right _ _)
  · simp only [Matrix.add_apply, add_smul, Finset.sum_add_distrib]
    rw [comb_one, comb_smul]
    simp only [Matrix.of_apply]
    rw [← hc k, ← hyeq k, add_sub_cancel]

theorem phi_matrix {r : ℕ} {S : Submodule (LetA O n) (W.DD T)} (bS : Module.Basis (Fin r) (LetA O n) ↥S)
    (h : ∀ x ∈ S, ∃ k : ℕ, W.Q ^ k • W.φD T x ∈ S) :
    ∃ (e : ℕ) (F : Matrix (Fin r) (Fin r) (LetA O n)),
      ∀ k, W.Q ^ e • W.φD T (bS k) = ∑ i, F i k • (bS i : W.DD T) := by
  obtain ⟨e, he⟩ := exists_pow_uniform W.Q (fun k => W.φD T (bS k)) (fun k => h _ (bS k).2)
  choose c hc using fun k => coords bS (he k)
  exact ⟨e, Matrix.of fun i k => c k i, hc⟩

theorem phiinv_matrix {r : ℕ} {S : Submodule (LetA O n) (W.DD T)} (bS : Module.Basis (Fin r) (LetA O n) ↥S)
    (h : ∀ y ∈ S, ∃ k : ℕ, W.Q ^ k • y ∈ φspan W T S) :
    ∃ (e : ℕ) (P : Matrix (Fin r) (Fin r) (LetA O n)),
      ∀ k, ∑ i, P i k • W.φD T (bS i) = W.Q ^ e • (bS k : W.DD T) := by
  have hspan : φspan W T S ≤ Submodule.span (LetA O n) (Set.range fun i => W.φD T (bS i)) := by
    rw [φspan, Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    obtain ⟨c, rfl⟩ := coords bS hx

    rw [map_sum]
    refine Submodule.sum_mem _ fun i _ => ?_
    rw [φD_smulA]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  obtain ⟨e, he⟩ := exists_pow_uniform W.Q (fun k => (bS k : W.DD T))
    (S := Submodule.span (LetA O n) (Set.range fun i => W.φD T (bS i)))
    (fun k => let ⟨e, he⟩ := h _ (bS k).2; ⟨e, hspan he⟩)
  choose c hc using fun k => (Submodule.mem_span_range_iff_exists_fun (LetA O n)).1 (he k)
  exact ⟨e, Matrix.of fun i k => c k i, hc⟩

theorem le_of_X_pow_smul_le
    (hmat : ∀ (r a m m' : ℕ) (B G G₁ Pm P₁ P₁' : Matrix (Fin r) (Fin r) (LetA O n)),
      (∀ i j, (G - 1) i j ∈ Ideal.span {(letπ : LetA O n)}) →
      (∀ i j, (G₁ - 1) i j ∈ Ideal.span {(letπ : LetA O n)}) →
      (W.X ^ a) • (G * B.map (W.γA W.gam)) = (W.γA W.gam W.X ^ a) • (B * G₁) →
      P₁ * P₁' = (W.Q ^ m') • (1 : Matrix (Fin r) (Fin r) (LetA O n)) →
      Pm * B.map W.φA = (W.Q ^ m) • (B * P₁) → ∀ i j, W.X ^ a ∣ B i j)
    {M M₁ : Submodule (LetA O n) (W.DD T)} {r : ℕ}
    (bM : Module.Basis (Fin r) (LetA O n) ↥M) (bM₁ : Module.Basis (Fin r) (LetA O n) ↥M₁)
    (hγ : ∀ x ∈ M, ∃ y ∈ M, W.γ T x - x = (letπ : LetA O n) • y)
    (hφ : ∀ x ∈ M, ∃ k : ℕ, W.Q ^ k • W.φD T x ∈ M)
    (hγ₁ : ∀ x ∈ M₁, ∃ y ∈ M₁, W.γ T x - x = (letπ : LetA O n) • y)
    (hφ₁ : ∀ x ∈ M₁, ∃ k : ℕ, W.Q ^ k • W.φD T x ∈ M₁)
    (hφinv₁ : ∀ y ∈ M₁, ∃ k : ℕ, W.Q ^ k • y ∈ φspan W T M₁)
    (a : ℕ) (ha : ∀ x ∈ M₁, W.X ^ a • x ∈ M) : M₁ ≤ M := by
  set b : Fin r → W.DD T := fun i => (bM i : W.DD T) with hbdef
  set b₁ : Fin r → W.DD T := fun i => (bM₁ i : W.DD T) with hb₁def
  have hbM : ∀ i, b i ∈ M := fun i => (bM i).2
  have hb₁M : ∀ i, b₁ i ∈ M₁ := fun i => (bM₁ i).2
  have li : LinearIndependent (LetA O n) b := bM.linearIndependent.map' M.subtype (Submodule.ker_subtype M)
  have li₁ : LinearIndependent (LetA O n) b₁ :=
    bM₁.linearIndependent.map' M₁.subtype (Submodule.ker_subtype M₁)
  choose Bt hBt using fun j => coords bM (ha _ (hb₁M j))
  set Bm : Matrix (Fin r) (Fin r) (LetA O n) := Matrix.of fun i j => Bt j i with hBm
  have hB : ∀ j, W.X ^ a • b₁ j = ∑ i, Bm i j • b i := fun j => hBt j
  obtain ⟨Gm, hG1, hG⟩ := gam_matrix W T bM hγ
  obtain ⟨Gm₁, hG₁1, hG₁⟩ := gam_matrix W T bM₁ hγ₁
  obtain ⟨hM, F, hF⟩ := phi_matrix W T bM hφ
  obtain ⟨h₁, F₁, hF₁⟩ := phi_matrix W T bM₁ hφ₁
  obtain ⟨e, P', hP'⟩ := phiinv_matrix W T bM₁ hφinv₁
  have R1 : (W.X ^ a) • (Gm * Bm.map (W.γA W.gam)) = (W.γA W.gam W.X ^ a) • (Bm * Gm₁) := by
    refine matrix_eq_of_comb li fun j => ?_
    rw [comb_smul, comb_mul, comb_smul, comb_mul]
    have e1 : ∑ k, Bm.map (W.γA W.gam) k j • ∑ i, Gm i k • b i = W.γ T (W.X ^ a • b₁ j) := by

      rw [hB j, map_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [γ_smulA, ← hG k, Matrix.map_apply]
    have e2 : ∑ k, Gm₁ k j • ∑ i, Bm i k • b i = W.X ^ a • W.γ T (b₁ j) := by
      rw [hG₁ j, Finset.smul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [← hB k, smul_comm]
    rw [e1, e2, γ_smulA, map_pow]
    exact smul_comm _ _ _
  have R2 : F₁ * P' = (W.Q ^ (h₁ + e)) • (1 : Matrix (Fin r) (Fin r) (LetA O n)) := by
    refine matrix_eq_of_comb li₁ fun j => ?_
    rw [comb_mul, comb_smul, comb_one]
    have e1 : ∑ k, P' k j • ∑ i, F₁ i k • b₁ i = W.Q ^ h₁ • ∑ k, P' k j • W.φD T (b₁ k) := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [← hF₁ k, smul_comm]
    rw [e1, hP' j, smul_smul, ← pow_add]
  have R3 : (W.Q ^ h₁ • F) * Bm.map W.φA = (W.Q ^ (a + hM)) • (Bm * F₁) := by
    refine matrix_eq_of_comb li fun j => ?_
    rw [Matrix.smul_mul, comb_smul, comb_mul, comb_smul, comb_mul]
    have e1 : ∑ k, Bm.map W.φA k j • ∑ i, F i k • b i = W.Q ^ hM • W.φD T (W.X ^ a • b₁ j) := by

      rw [hB j, map_sum, Finset.smul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [φD_smulA, ← hF k, Matrix.map_apply, smul_comm]
    have e2 : ∑ k, F₁ k j • ∑ i, Bm i k • b i = W.X ^ a • W.Q ^ h₁ • W.φD T (b₁ j) := by
      rw [hF₁ j, Finset.smul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [← hB k, smul_comm]
    rw [e1, e2, φD_smulA, map_pow, W.φA_X]
    simp only [smul_smul]
    congr 1
    ring
  have hdiv := hmat r a (a + hM) (h₁ + e) Bm Gm Gm₁ (W.Q ^ h₁ • F) F₁ P' hG1 hG₁1 R1 R2 R3
  choose d hd using hdiv
  have hb₁ : ∀ j, b₁ j ∈ M := by
    intro j
    have h' : W.X ^ a • b₁ j = W.X ^ a • ∑ i, d i j • b i := by
      rw [hB j, Finset.smul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [hd i j, mul_smul]
    rw [X_pow_smul_cancel W T a h']
    exact M.sum_mem fun i _ => M.smul_mem _ (hbM i)
  intro x hx
  obtain ⟨c, rfl⟩ := coords bM₁ hx
  exact M.sum_mem fun j _ => M.smul_mem _ (hb₁ j)

end Key


open Formalism.MainNotions.DeltaInvariantLattices in
set_option maxHeartbeats 800000 in
theorem main : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW), WachCharacterisation D HW F := by
  intro D HW F l _ K s LL h T hT N₁ hfree hbc hγN₁ hγπ hφ hφinv
  obtain ⟨a, h1, h2⟩ := _root_.GlobalTheory.NL.InvX.main D HW F l K s LL h T hT N₁ hfree hbc hφ hφinv
  obtain ⟨nb⟩ := GlobalTheory.NL.N_basis D.loc D.locA HW F l K s LL h T hT
  obtain ⟨r₁, ⟨b₁⟩⟩ := basis_of_freeA _ T hfree
  haveI : Nontrivial ((HW l).W K s LL h).EE := ((HW l).W K s LL h).EE_inj.nontrivial
  have hr : r₁ = Module.finrank ↥(OL LL) ↥T.L.T := by
    have e := (hbc.basis b₁).indexEquiv ((((HW l).W K s LL h).N_base T hT).basis nb)
    set_option synthInstance.maxHeartbeats 200000 in
      simpa using Fintype.card_congr e
  subst hr
  have hmat := fun r a m m' B G G₁ Pm P₁ P₁' =>
    GlobalTheory.NL.WachMat.X_pow_dvd_entry D HW l K s LL h r a m m' B G G₁ Pm P₁ P₁'
  have hγ₁ : ∀ x ∈ N₁, ∃ y ∈ N₁, ((HW l).W K s LL h).γ T x - x = (letπ : AA K LL) • y := by
    intro x hx
    obtain ⟨y, hy, e⟩ := hγπ x hx
    exact ⟨y, hy, e.symm⟩
  have hγN : ∀ x ∈ ((HW l).W K s LL h).N T, ∃ y ∈ ((HW l).W K s LL h).N T,
      ((HW l).W K s LL h).γ T x - x = (letπ : AA K LL) • y :=
    fun x hx => ((HW l).W K s LL h).N_π T _ x hx
  apply le_antisymm
  · exact le_of_X_pow_smul_le _ T hmat nb b₁ hγN (((HW l).W K s LL h).N_φ T) hγ₁ hφ hφinv a h1
  · exact le_of_X_pow_smul_le _ T hmat b₁ nb hγ₁ hφ hγN (((HW l).W K s LL h).N_φ T)
      (((HW l).W K s LL h).N_φinv T) a h2

end GlobalTheory.NL.FrobeniusMatrixUniqueness
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleUniquenessCharacterisation =====

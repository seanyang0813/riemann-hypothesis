module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionBasisDivisibility
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeExpansionsStdBelowLevel
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
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
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSmulOfDvdRepr, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeGaloisTrivialModUniformizer

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSmulOfDvdRepr =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSmulOfDvdRepr", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionBasisDivisibility\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeExpansionsStdBelowLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

namespace GlobalTheory.NL.GamModX

theorem full_of_std {L M : Type} [Field L] [AddCommGroup M] [Module L M] {D : Submodule L M}
    {Λ : Submodule L (ℤ → M)} (h : Std D Λ) : Full D Λ :=
  ⟨0, fun f h1 h2 => (h f).2 ⟨h1, by simpa using h2⟩⟩

theorem shift_mem {L M : Type} [Field L] [AddCommGroup M] [Module L M] {D : Submodule L M}
    {Λ : Submodule L (ℤ → M)} (h : Std D Λ) (e y : ℤ → M) (he : e ∈ Λ) (u : L)
    (hy : ∀ k : ℤ, y k = u ^ k • e k - e k) :
    ∃ f ∈ Λ, ∀ j : ℤ, y j = f (j - ((1 : ℕ) : ℤ)) := by
  obtain ⟨h1, h2⟩ := (h e).1 he
  refine ⟨fun k => y (k + 1), (h _).2 ⟨fun k => ?_, fun k hk => ?_⟩, fun j => by simp⟩
  · rw [hy]; exact D.sub_mem (D.smul_mem _ (h1 _)) (h1 _)
  · rw [hy]
    rcases (show k + 1 < 0 ∨ k + 1 = 0 by omega) with h3 | h3
    · simp [h2 _ h3]
    · simp [h3]

theorem exists_smul_of_dvd_repr {A M ι : Type} [CommRing A] [AddCommGroup M] [Module A M]
    [Fintype ι] (N : Submodule A M) (nb : Module.Basis ι A ↥N) (a : A) (z : ↥N)
    (hz : ∀ j, a ^ 1 ∣ nb.repr z j) : ∃ y ∈ N, (z : M) = a • y := by
  choose c hc using hz
  refine ⟨((∑ j, c j • nb j : ↥N) : M), Subtype.property _, ?_⟩
  have key : z = a • ∑ j, c j • nb j := by
    conv_lhs => rw [← nb.sum_repr z]
    rw [Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [hc j, pow_one, mul_smul]
  exact congrArg Subtype.val key



theorem ex_of_val {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {H : LocHW l P}
    {F : LocFon l P AI H} (C : LocCmpT l P AI H F) {K : FinExt l} {s : ℕ} {LL : FinExt l}
    (h : Good K s LL) (T : Lt K LL) (hT : IsCrys (P.PD K) T.ρ) (i : Let K) (ζ : ↥LL.1) (m : ℕ)
    (hζ : ζ ^ (l ^ m) = 1) (g : (H.W K s LL h).Gam)
    (hg : (m : WithTop ℚ) ≤
      P.v LL (algebraMap ↥(OL LL) ↥LL.1 ((H.W K s LL h).χΓ g : ↥(OL LL)) - 1))
    (x : ↥((H.W K s LL h).N T)) (k : ℤ) :
    ex C h T i ζ ⟨_, (H.W K s LL h).N_Γ T g x x.2⟩ k =
      (algebraMap ↥(OL LL) ↥LL.1 ((H.W K s LL h).χΓ g : ↥(OL LL))) ^ k • ex C h T i ζ x k := by
  obtain ⟨j, hj, hord⟩ := (Nat.dvd_prime_pow (Fact.out : l.Prime)).1 (orderOf_dvd_of_pow_eq_one hζ)
  have hjs : (j : WithTop ℚ) ≤ (m : WithTop ℚ) := by exact_mod_cast hj
  exact (C.C K s LL h).tie.levB_Γ T hT g i ζ ζ j 1
    (by rw [P.PD_p, ← hord]; exact IsPrimitiveRoot.orderOf ζ)
    (by rw [Nat.cast_one]; exact hjs.trans hg) (pow_one ζ).symm x
    ((H.W K s LL h).N_Γ T g x x.2) k



theorem sub_mem_X_of_val : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (_ : CmpOf D.loc D.locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l)
    (h : Good K s LL), let W := (HW l).W K s LL h;
    ∀ T : Lt K LL, IsCrys ((D.loc l).PD K) T.ρ → ∀ g : W.Gam,
      ((s - 1 : ℕ) : WithTop ℚ) ≤
        (D.loc l).v LL (algebraMap ↥(OL LL) ↥LL.1 (W.χΓ g : ↥(OL LL)) - 1) →
      ∀ x ∈ W.N T, ∃ y ∈ W.N T, W.γD T g x - x = W.X • y := by
  intro D HW F Cm l _ K s LL h W T hT g hg x hx
  obtain ⟨nb⟩ := GlobalTheory.NL.N_basis D.loc D.locA HW F l K s LL h T hT
  let x' : ↥(W.N T) := ⟨x, hx⟩
  let g' : ↥(W.N T) := ⟨_, W.N_Γ T g x hx⟩
  refine exists_smul_of_dvd_repr (W.N T) nb W.X (g' - x') fun j => ?_
  refine (_root_.GlobalTheory.NL.WDiv.weierstrass_dense D.loc HW l K s LL h).2.1 1 _ fun i ζ hζ => ?_
  have hS := _root_.GlobalTheory.NL.LatLow.lat_low D.loc D.locA D.locT HW F Cm l K s LL h T hT i ζ hζ
  have hprim : ∃ j : ℕ, IsPrimitiveRoot ζ (l ^ j) := by
    obtain ⟨j, -, hord⟩ :=
      (Nat.dvd_prime_pow (Fact.out : l.Prime)).1 (orderOf_dvd_of_pow_eq_one hζ)
    exact ⟨j, hord ▸ IsPrimitiveRoot.orderOf ζ⟩
  have hI := (_root_.GlobalTheory.NL.LevInj.expansion_basis D.loc D.locA D.locT HW F Cm l K s LL h T hT i ζ hprim (full_of_std hS)).2 _ nb
  refine (hI.2.2 (g' - x') 1).1 ?_ j
  refine shift_mem hS (ex (Cm l) h T i ζ x') _ ?_
    (algebraMap ↥(OL LL) ↥LL.1 (W.χΓ g : ↥(OL LL))) fun k => ?_
  · exact Submodule.subset_span ⟨1, x', (_root_.GlobalTheory.NL.Model.conv_one _).symm⟩
  · rw [← ex_of_val (Cm l) h T hT i ζ (s - 1) hζ g hg x' k]
    unfold ex
    rw [map_sub]
    rfl



theorem gam_mod_π_mod_X : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (_ : CmpOf D.loc D.locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l)
    (h : Good K s LL), let W := (HW l).W K s LL h;
    ∀ T : Lt K LL, IsCrys ((D.loc l).PD K) T.ρ →
      (∀ g : W.Gam, ∀ x ∈ W.N T, W.γD T g x ∈ W.N T) ∧
      (∀ g : W.Gam, ∀ x ∈ W.N T, ∃ y ∈ W.N T, W.γD T g x - x = (letπ : AA K LL) • y) ∧
      ∀ x ∈ W.N T, ∃ y ∈ W.N T, W.γD T W.gam x - x = W.X • y := by
  intro D HW F Cm l _ K s LL h W T hT
  refine ⟨W.N_Γ T, W.N_π T, sub_mem_X_of_val D HW F Cm l K s LL h T hT W.gam ?_⟩
  have hg := W.gam_gen
  rw [(HW l).W_s] at hg
  have hs : ((s - 1 : ℕ) : WithTop ℚ) ≤ (s : WithTop ℚ) := by exact_mod_cast Nat.sub_le s 1
  exact hs.trans hg.ge

end GlobalTheory.NL.GamModX
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSmulOfDvdRepr =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeGaloisTrivialModUniformizer =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeGaloisTrivialModUniformizer", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSmulOfDvdRepr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices

namespace GlobalTheory.NL.WachLatticeTrivialModUniformizer



theorem wachLattice_galois_trivial_mod_uniformizer : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F), P2 D HW F := by
  intro D HW F Cm l _ K s LL h T hT
  obtain ⟨h1, h2, h3⟩ := GlobalTheory.NL.GamModX.gam_mod_π_mod_X D HW F Cm l K s LL h T hT
  refine ⟨(wach_gamma_stable_first _ T).1, (wach_gamma_stable_first _ T).2, fun x hx => ?_⟩
  obtain ⟨y, hy, e⟩ := h3 x hx
  exact ⟨y, hy, e.symm⟩

end GlobalTheory.NL.WachLatticeTrivialModUniformizer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeGaloisTrivialModUniformizer =====

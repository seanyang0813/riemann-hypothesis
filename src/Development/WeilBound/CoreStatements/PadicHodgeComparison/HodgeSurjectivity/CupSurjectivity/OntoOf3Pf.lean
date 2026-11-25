module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.SumCoordBasisDual
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.TowerRallisLemma
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimitiveCl
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CupK
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement
import GroundTheory.PAdicHodge.NormalizedTraceTower
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsDlogFirstChernClass
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DpZeroRight

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.StepA, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.MkDat, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.SurjOfCore, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CastTRfl, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.GenPb, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.T2a, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.RhsF, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.Tgt, Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.OntoOf3Pf

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.StepA =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.StepA", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.SumCoordBasisDual\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem stepA (hC : CupLaws) (P : HTPre l K) {M : Model l K} {d : ℕ} (S : Sq M (d + 1)) (hEt : Etale S.D.f)
    (r : E.Roots l) (v : S.Y.T 2) (hv : IsEtaleFirstChernUntwisted r S.D v) (e : Hdg S.Y.q 1 2) (he : IsDlogFirstChernClass S.Y.q (genD S.D) e)
    (c : S.P.T (2 + 2 * d)) (w : S.Y.T (2 * d)) (z : S.Y.T (2 + 2 * d)) (hz : S.Y.CupT v w z)
    (hcz : S.Y.toV _ (Model.pullT S.π S.hπ _ c) = S.Y.toV _ z) (A : ℕ) (Θ : Module.Dual K (Hdg S.P.q A (2 + 2 * d)))
    (hΘ : ∀ C, (pullH (Model.genMap S.π S.hπ) (Model.genMap_q S.π S.hπ) A _ C = 0 ∨ ∃ (a₀ n₀ : ℕ) (ha : 1 + a₀ = A)
      (hn : 2 + n₀ = 2 + 2 * d) (w : Hdg S.Y.q a₀ n₀),
        pullH (Model.genMap S.π S.hπ) (Model.genMap_q S.π S.hπ) A _ C = cupH S.Y.q ha hn e w) → Θ C = 0) :
    P.h S.P A (2 + 2 * d) (S.P.toV _ c) Θ = 0 := by
  obtain ⟨φ, hφf, hφg⟩ : ∃ φ : Module.Dual K (Hdg S.Y.q A (2 + 2 * d)),
      φ ∘ₗ pullH (Model.genMap S.π S.hπ) (Model.genMap_q S.π S.hπ) A (2 + 2 * d) = Θ ∧
      ∀ (a₀ : ℕ) (ha : 1 + a₀ = A) (u : Hdg S.Y.q a₀ (2 * d)), φ (cupH S.Y.q ha rfl e u) = 0 := by
    rcases Nat.eq_zero_or_pos A with hA | hA
    · subst hA
      obtain ⟨φ, h1, -⟩ := la_kill (pullH (Model.genMap S.π S.hπ) (Model.genMap_q S.π S.hπ) 0 (2 + 2 * d))
        (0 : Hdg S.Y.q 0 (2 + 2 * d) →ₗ[K] Hdg S.Y.q 0 (2 + 2 * d)) Θ
        (fun C u h => hΘ C (Or.inl (by simpa using h)))
      exact ⟨φ, h1, fun a₀ ha => absurd ha (by omega)⟩
    · obtain ⟨a, rfl⟩ : ∃ a, A = 1 + a := ⟨A - 1, by omega⟩
      obtain ⟨φ, h1, h2⟩ := la_kill (pullH (Model.genMap S.π S.hπ) (Model.genMap_q S.π S.hπ) (1 + a) (2 + 2 * d))
        (cupL hC S.Y.q (a := 1) (a' := a) (c := 1 + a) (i := 2) (j := 2 * d) (n := 2 + 2 * d) rfl rfl e) Θ
        (fun C u h => hΘ C (Or.inr ⟨a, 2 * d, rfl, rfl, u, by rw [h, cupL_apply]⟩))
      refine ⟨φ, h1, fun a₀ ha u => ?_⟩
      obtain rfl : a₀ = a := by omega
      have := LinearMap.congr_fun h2 u
      simpa [cupL_apply] using this
  have hc1 := P.c1 S.Y S.smY S.D hEt S.loc r v e hv he
  let b : ∀ a, Module.Basis (Fin (Module.finrank K (Hdg S.Y.q a 2))) K (Hdg S.Y.q a 2) := fun a =>
    haveI := (P.fin S.Y S.smY a 2).1
    Module.finBasis K _
  let b' : ∀ a, Module.Basis (Fin (Module.finrank K (Hdg S.Y.q a (2 * d)))) K (Hdg S.Y.q a (2 * d)) := fun a =>
    haveI := (P.fin S.Y S.smY a (2 * d)).1
    Module.finBasis K _
  have key : ∀ (a a' : ℕ) (ha : a + a' = A), ∑ s, ∑ s', P.h S.Y a 2 (S.Y.toV _ v) ((b a).coord s) *
      P.h S.Y a' (2 * d) (S.Y.toV _ w) ((b' a').coord s') *
        kC K (φ (cupH S.Y.q ha rfl (b a s) (b' a' s'))) = 0 := by
    intro a a' ha
    by_cases h1 : a = 1
    · subst h1
      simp_rw [hc1.1]
      rw [Finset.sum_comm]
      refine Finset.sum_eq_zero fun s' _ => ?_
      have hs := esum (kC K) (b 1) (φ ∘ₗ (cupL hC S.Y.q (i := 2) (j := 2 * d) ha rfl).flip (b' a' s')) e
      simp only [LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply] at hs
      rw [hφg a' ha, map_zero] at hs
      calc ∑ s, kC K ((b 1).coord s e) * P.h S.Y a' (2 * d) (S.Y.toV _ w) ((b' a').coord s') *
            kC K (φ (cupH S.Y.q ha rfl (b 1 s) (b' a' s')))
          = P.h S.Y a' (2 * d) (S.Y.toV _ w) ((b' a').coord s') *
            ∑ s, kC K ((b 1).coord s e) * kC K (φ (cupH S.Y.q ha rfl (b 1 s) (b' a' s'))) := by
            rw [Finset.mul_sum]
            refine Finset.sum_congr rfl fun s _ => ?_
            ring
        _ = 0 := by rw [hs, mul_zero]
    · refine Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun s' _ => ?_
      rw [hc1.2 a h1, zero_mul, zero_mul]
  rw [← hφf, ← P.nat S.Y S.P S.π S.hπ S.smY S.smP A (2 + 2 * d) (S.P.toV _ c) φ, pullV_toV, hcz,
    P.cup S.Y S.smY v w z hz b b' A φ]
  exact Finset.sum_eq_zero fun p _ => key _ _ _

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.StepA =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.MkDat =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.MkDat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.TowerRallisLemma\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimitiveCl\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.StepA\nimport GroundTheory.PAdicHodge.NormalizedTraceTower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem mkDat (hC : CupLaws) (hK : HodgeKill) (hD : DiagEt3) (P : HTPre l K) [FiniteDimensional ℚ_[l] K] {M : Model l K}
    {d : ℕ} (hd : 1 ≤ d) (hM : M.Sm) (hs : SmoothOfRelativeDimension (d + 1) M.p) (S : Sq M (d + 1)) (hEt : Etale S.D.f) :
    Nonempty (Dat hC P M d) := by
  obtain ⟨r⟩ := GlobalTheory.CompanionTheory.RootsC.rootsEx l
  obtain ⟨v, hv⟩ := (P.first_chern_class_exists S.Y S.smY S.D hEt S.loc).1 r
  obtain ⟨e, he, -⟩ := (P.first_chern_class_exists S.Y S.smY S.D hEt S.loc).2
  obtain ⟨c, w, z, m₀, a₀, b₀, ab₀, m, i, j, hij, a, b, ab, one, N, hz, hcz, hcup₀, hcup, hjne, hdec, hone, hN, hli,
    hsum₀⟩ := hD l K M d hd hM hs S hEt r v hv
  have := (sm_gen S.smP).1
  have := (sm_gen S.smP).2
  have := proper_genMap S.π S.hπ S.smY S.smP
  refine ⟨⟨S, c, m₀, a₀, b₀, ab₀, m, i, j, hij, a, b, ab, one, N, hcup₀, hcup, hjne, hdec, hone, hN, hli, hsum₀, ?_⟩⟩
  intro A a' n' y hy Θ
  apply stepA hC P S hEt r v hv e he c w z hz hcz A
  intro C hCd
  rw [LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply,
    killR hK (↥K) M.gen S.P.gen S.Y.gen S.P.q (Model.genMap S.Δ S.hΔ) (Model.genMap S.π S.hπ) S.Y.q
      (Model.genMap_q S.π S.hπ) M.q (Model.genMap_q S.Δ S.hΔ) (genD S.D) (d + 1) (by omega) S.blow e he A (2 + 2 * d)
      a' n' C y hCd hy, map_zero]

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.MkDat =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.SurjOfCore =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.SurjOfCore", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem surj_of_core (hC : CupLaws) (P : HTPre l K) (M : Model l K) (n : ℕ)
    (h : ∀ a' (x : Hdg M.q a' n), ∃ N : ℚ_[l], N ≠ 0 ∧ tgt hC x N ∈ Sp P M n) : Surj P M n := by
  intro m b z hz a' ha'
  funext s0
  let L : GF M n →ₗ[ℂ_[l]] ℂ_[l] :=
    { toFun := fun g => ∑ a ∈ Finset.range (n + 1), ∑ s, z a s * g a ((b a).coord s)
      map_add' := by
        intro f g
        simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib]
      map_smul' := by
        intro c f
        simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
        refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun s _ => ?_
        ring }
  have hL : Sp P M n ≤ LinearMap.ker L := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨v, rfl⟩
    exact hz v
  obtain ⟨N, hN, hmem⟩ := h a' (b a' s0)
  have h0 : L (tgt hC (b a' s0) N) = 0 := hL hmem
  have hGe : ∀ s, Gx hC (b a' s0) ((b a').coord s) (oneH M.q) = (b a').coord s (b a' s0) := by
    intro s
    unfold Gx
    rw [dite_eq_left (Nat.zero_add a')]
    simp only [LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply]
    rw [(hC _ _ M.q).2.2.2.1]
  have hGn : ∀ a, a ≠ a' → ∀ s, Gx hC (b a' s0) ((b a).coord s) (oneH M.q) = 0 := by
    intro a ha s
    unfold Gx
    rw [dite_eq_right (by omega)]
    rfl
  have hv : L (tgt hC (b a' s0) N) = z a' s0 * qC l N := by
    show ∑ a ∈ Finset.range (n + 1), ∑ s, z a s * (qC l N * kC K (Gx hC (b a' s0) ((b a).coord s) (oneH M.q))) = _
    rw [Finset.sum_eq_single a']
    · simp only [hGe, Module.Basis.coord_apply, Module.Basis.repr_self]
      rw [Finset.sum_eq_single s0]
      · simp
      · intro s _ hs
        simp [Ne.symm hs]
      · simp
    · intro a _ ha
      refine Finset.sum_eq_zero fun s _ => ?_
      rw [hGn a ha]
      simp
    · intro ha
      exact absurd (Finset.mem_range.2 (by omega)) ha
  rw [hv] at h0
  have hq : qC l N ≠ 0 := (map_ne_zero (qC l)).2 hN
  simpa [hq] using h0

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.SurjOfCore =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CastTRfl =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CastTRfl", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CupK\nimport GroundTheory.PAdicHodge.NormalizedTraceTower\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem castT_rfl {M : Model l K} {i : ℕ} (x : M.T i) : castT rfl x = x := rfl

theorem dfac {C : Type*} [CommRing C] {m m' : ℕ} (f : Fin m → C) (g : Fin m' → C) (F : Fin m → C) (G : Fin m' → C)
    (z : ℤ) : ∑ s, ∑ s', f s * g s' * (z • (F s * G s')) = (z • ∑ s, f s * F s) * ∑ s', g s' * G s' := by
  rw [Finset.smul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun s _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun s' _ => ?_
  simp only [zsmul_eq_mul]
  ring

theorem r1 (hC : CupLaws) {M : Model l K} {D : ℕ} (S : Sq M D) {a' n : ℕ} (x : Hdg M.q a' n) {A β T : ℕ}
    (sl : Hdg S.P.q (A + a') (T + n) →ₗ[K] Hdg M.q β n) (ψ : Module.Dual K (Hdg M.q β n))
    {e f i j : ℕ} (hp : e + f = A) (hT : i + j = T) (u : Hdg M.q e i) (v : Hdg M.q f j)
    {a₁₂ ij : ℕ} (h₁ : e + a' = a₁₂) (g₁ : i + n = ij) (h₂ : a₁₂ + f = A + a') (g₂ : ij + j = T + n) :
    th hC S sl ψ (S.pl₁ a' n x) (cupH S.P.q hp hT (S.pl₁ e i u) (S.pl₂ f j v)) =
      ((-1 : ℤ) ^ (j * n)) • ψ (sl (cupH S.P.q h₂ g₂ (S.pl₁ a₁₂ ij (cupH M.q h₁ g₁ u x)) (S.pl₂ f j v))) := by
  have L := hC K S.P.gen S.P.q
  have LM := hC K M.gen M.q
  simp only [th, LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply]
  rw [L.2.1 hp rfl (rfl : f + a' = f + a') (by omega : e + (f + a') = A + a') hT rfl (rfl : j + n = j + n)
    (by omega : i + (j + n) = T + n)]
  rw [L.2.2.1 (rfl : f + a' = f + a') (add_comm a' f) (rfl : j + n = j + n) (add_comm n j)]
  rw [← cupL_apply hC S.P.q (by omega : e + (f + a') = A + a') (by omega : i + (j + n) = T + n), map_zsmul, cupL_apply]
  rw [← L.2.1 h₁ h₂ (add_comm a' f) (by omega) g₁ g₂ (add_comm n j) (by omega)]
  rw [← LM.2.2.2.2.1 S.P.gen S.P.q (Model.genMap S.p₁ S.h₁) (Model.genMap_q S.p₁ S.h₁) h₁ g₁ u x]
  rw [map_zsmul, map_zsmul]

theorem t1 (hC : CupLaws) (P : HTPre l K) {M : Model l K} (hM : M.Sm) {D : ℕ} (S : Sq M D) {a' n : ℕ} (x : Hdg M.q a' n)
    {α β A t : ℕ} (hA : α + β = A + a') (φ' : Module.Dual K (Hdg M.q α t)) (ψ : Module.Dual K (Hdg M.q β n))
    (sl : Hdg S.P.q (A + a') (t + n) →ₗ[K] Hdg M.q β n) (hsl : IsSl S hA φ' sl)
    {i j : ℕ} (X : M.T i) (Y : M.T j) (Z : S.P.T (i + j))
    (hZ : S.P.CupT (Model.pullT S.p₁ S.h₁ i X) (Model.pullT S.p₂ S.h₂ j Y) Z) (hij : i + j = t) :
    P.h S.P A t (S.P.toV t (castT hij Z)) (th hC S sl ψ (S.pl₁ a' n x)) =
      if hj : j = n then kap hC P x φ' X * P.h M β n (M.toV n (castT hj Y)) ψ else 0 := by
  subst hij
  have hfin : ∀ a k, FiniteDimensional K (Hdg M.q a k) := fun a k => (P.fin M hM a k).1
  let b : ∀ a, Module.Basis (Fin (Module.finrank K (Hdg M.q a i))) K (Hdg M.q a i) := fun a => Module.finBasis K _
  let b' : ∀ a, Module.Basis (Fin (Module.finrank K (Hdg M.q a j))) K (Hdg M.q a j) := fun a => Module.finBasis K _
  rw [castT_rfl, cupK P hM S X Y Z hZ b b' A]
  have tz : ∀ p : (Finset.HasAntidiagonal.antidiagonal A : Finset (ℕ × ℕ)), (p.1.1 + a', i + n) ≠ (α, i + j) → ∀ s s',
      th hC S sl ψ (S.pl₁ a' n x) (cupH S.P.q (Finset.HasAntidiagonal.mem_antidiagonal.1 p.2) rfl
        (S.pl₁ p.1.1 i (b p.1.1 s)) (S.pl₂ p.1.2 j (b' p.1.2 s'))) = 0 := by
    intro p hne s s'
    have hp := Finset.HasAntidiagonal.mem_antidiagonal.1 p.2
    rw [r1 hC S x sl ψ _ rfl _ _ rfl rfl (by omega) (by omega), hsl.2 _ _ _ _ _ _ hne, map_zero, smul_zero]
  have allz : (∀ p : (Finset.HasAntidiagonal.antidiagonal A : Finset (ℕ × ℕ)), (p.1.1 + a', i + n) ≠ (α, i + j)) →
      ∑ p : (Finset.HasAntidiagonal.antidiagonal A : Finset (ℕ × ℕ)), ∑ s, ∑ s',
        P.h M p.1.1 i (M.toV _ X) ((b p.1.1).coord s) * P.h M p.1.2 j (M.toV _ Y) ((b' p.1.2).coord s') *
        kC K (th hC S sl ψ (S.pl₁ a' n x) (cupH S.P.q (Finset.HasAntidiagonal.mem_antidiagonal.1 p.2) rfl
          (S.pl₁ p.1.1 i (b p.1.1 s)) (S.pl₂ p.1.2 j (b' p.1.2 s')))) = 0 := fun h =>
    Finset.sum_eq_zero fun p _ => Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun s' _ => by
      rw [tz p (h p) s s', map_zero, mul_zero]
  by_cases hj : j = n
  · subst hj
    rw [dite_eq_left rfl, castT_rfl]
    by_cases hα : a' ≤ α
    · have hmem : (α - a', β) ∈ (Finset.HasAntidiagonal.antidiagonal A : Finset (ℕ × ℕ)) :=
        Finset.HasAntidiagonal.mem_antidiagonal.2 (by simp only; omega)
      rw [Finset.sum_eq_single ⟨(α - a', β), hmem⟩]
      · have key : ∀ s s', th hC S sl ψ (S.pl₁ a' j x) (cupH S.P.q (Finset.HasAntidiagonal.mem_antidiagonal.1 hmem) rfl
            (S.pl₁ (α - a') i (b (α - a') s)) (S.pl₂ β j (b' β s'))) =
            ((-1 : ℤ) ^ (j * j)) • (Fx hC x φ' i (b (α - a') s) * ψ (b' β s')) := by
          intro s s'
          rw [r1 hC S x sl ψ _ rfl _ _ (Nat.sub_add_cancel hα) rfl hA rfl, hsl.1, map_smul, smul_eq_mul]
          rw [Fx, dite_eq_left (And.intro hα rfl)]
          simp only [LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply]
        simp only [key, map_zsmul, map_mul]
        rw [dfac, kap, _root_.CrystallineSemistableComparison.Onto.sum_coord_basis_dual (kC K) _ (fun k φ => P.lin' M _ _ k _ φ) (b (α - a')), _root_.CrystallineSemistableComparison.Onto.sum_coord_basis_dual (kC K) _ (fun k φ => P.lin' M _ _ k _ φ) (b' β)]
      · intro p _ hne
        refine Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun s' _ => ?_
        rw [tz p ?_ s s', map_zero, mul_zero]
        intro h
        have hp := Finset.HasAntidiagonal.mem_antidiagonal.1 p.2
        have h1 : p.1.1 + a' = α := (Prod.ext_iff.1 h).1
        exact hne (Subtype.ext (Prod.ext (by simp only; omega) (by simp only; omega)))
      · intro h; exact absurd (Finset.mem_univ _) h
    · rw [allz fun p h => hα (by have := (Prod.ext_iff.1 h).1; simp only at this; omega)]
      simp [kap, Fx, hα]
  · rw [dite_eq_right hj]
    exact allz fun p h => hj (by have := (Prod.ext_iff.1 h).2; simp only at this; omega)

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CastTRfl =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.GenPb =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.GenPb", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsDlogFirstChernClass\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DpZeroRight\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

theorem gen_pb {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {M P : Model l K} (p₁ p₂ : P.X ⟶ M.X) (h₁ : p₁ ≫ M.p = P.p) (h₂ : p₂ ≫ M.p = P.p) (hP : IsPullback p₁ p₂ M.p M.p) : IsPullback (Model.genMap p₁ h₁) (Model.genMap p₂ h₂) M.q M.q := by
  have hw : Model.genMap p₁ h₁ ≫ M.q = Model.genMap p₂ h₂ ≫ M.q := by
    rw [Model.genMap_q, Model.genMap_q]
  have hc : pullback.fst M.p (Spec.map (CommRingCat.ofHom (OK l K).subtype)) ≫ M.p =
      M.q ≫ Spec.map (CommRingCat.ofHom (OK l K).subtype) := pullback.condition
  have g1 : ∀ {u : P.X ⟶ M.X} (hu : u ≫ M.p = P.p),
      Model.genMap u hu ≫ pullback.fst M.p (Spec.map (CommRingCat.ofHom (OK l K).subtype)) =
        pullback.fst P.p (Spec.map (CommRingCat.ofHom (OK l K).subtype)) ≫ u := fun hu => by
    unfold Model.genMap
    exact pullback.lift_fst _ _ _
  have g2 : ∀ {u : P.X ⟶ M.X} (hu : u ≫ M.p = P.p),
      Model.genMap u hu ≫ pullback.snd M.p (Spec.map (CommRingCat.ofHom (OK l K).subtype)) =
        pullback.snd P.p (Spec.map (CommRingCat.ofHom (OK l K).subtype)) := fun hu =>
    Model.genMap_q _ hu
  refine IsPullback.of_isLimit (c := PullbackCone.mk _ _ hw) ?_
  refine PullbackCone.IsLimit.mk hw
    (fun s => pullback.lift
      (hP.lift (s.fst ≫ pullback.fst _ _) (s.snd ≫ pullback.fst _ _) (by
        simp only [Category.assoc, hc]
        rw [reassoc_of% s.condition]))
      (s.fst ≫ M.q) (by
        rw [← h₁]
        simp only [← Category.assoc, hP.lift_fst]
        simp only [Category.assoc, hc]))
    (fun s => by
      apply pullback.hom_ext
      · simp only [Category.assoc, g1 h₁, pullback.lift_fst_assoc, hP.lift_fst]
      · simp only [Category.assoc, g2 h₁, pullback.lift_snd])
    (fun s => by
      apply pullback.hom_ext
      · simp only [Category.assoc, g1 h₂, pullback.lift_fst_assoc, hP.lift_snd]
      · simp only [Category.assoc, g2 h₂, pullback.lift_snd]
        exact s.condition)
    (fun s m hm₁ hm₂ => by
      apply pullback.hom_ext
      · rw [pullback.lift_fst]
        apply hP.hom_ext
        · rw [hP.lift_fst, Category.assoc, ← g1 h₁, ← Category.assoc, hm₁]
        · rw [hP.lift_snd, Category.assoc, ← g1 h₂, ← Category.assoc, hm₂]
      · rw [pullback.lift_snd, ← hm₁, Category.assoc, g2 h₁])

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.GenPb =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.T2a =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.T2a", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CupK\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem t2z (hC : CupLaws) (P : HTPre l K) {M : Model l K} (hM : M.Sm) {D : ℕ} (S : Sq M D) {a' n : ℕ} (x : Hdg M.q a' n)
    {α β A t : ℕ} (hA : α + β = A + a') (φ' : Module.Dual K (Hdg M.q α t)) (ψ : Module.Dual K (Hdg M.q β n))
    (sl : Hdg S.P.q (A + a') (t + n) →ₗ[K] Hdg M.q β n) (hsl : IsSl S hA φ' sl)
    (X : M.T t) (Y : M.T 0) (Z : S.P.T (t + 0))
    (hZ : S.P.CupT (Model.pullT S.p₁ S.h₁ t X) (Model.pullT S.p₂ S.h₂ 0 Y) Z) :
    P.h S.P A t (S.P.toV t Z) (th hC S sl ψ (S.pl₂ a' n x)) =
      P.h M α t (M.toV t X) φ' * P.h M 0 0 (M.toV 0 Y) (Gx hC x ψ) := by
  classical
  have hfin : ∀ a n, FiniteDimensional K (Hdg M.q a n) := fun a n => (P.fin M hM a n).1
  have assoc : ∀ {a1 a2 i1 j1 a23 jk : ℕ} (h12 : a1 + a2 = A) (g12 : i1 + j1 = t) (h3 : a2 + a' = a23)
      (g3 : j1 + n = jk) (u : Hdg M.q a1 i1) (v : Hdg M.q a2 j1),
      th hC S sl ψ (S.pl₂ a' n x) (cupH S.P.q h12 g12 (S.pl₁ a1 i1 u) (S.pl₂ a2 j1 v)) =
        ψ (sl (cupH S.P.q (by omega : a1 + a23 = A + a') (by omega : i1 + jk = t + n) (S.pl₁ a1 i1 u)
          (S.pl₂ a23 jk (cupH M.q h3 g3 v x)))) := by
    intro a1 a2 i1 j1 a23 jk h12 g12 h3 g3 u v
    simp only [th, LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply]
    rw [(hC K S.P.gen S.P.q).2.1 h12 (by omega) h3 (by omega) g12 (by omega) g3 (by omega),
      ← (hC K M.gen M.q).2.2.2.2.1 S.P.gen S.P.q (Model.genMap S.p₂ S.h₂) (Model.genMap_q S.p₂ S.h₂) h3 g3 v x]
  refine (cupK P hM S X Y Z hZ (fun a => Module.finBasis K (Hdg M.q a t))
    (fun a => Module.finBasis K (Hdg M.q a 0)) A _).trans ?_
  rw [Fintype.sum_eq_single (⟨(A, 0), by simp⟩ : (Finset.HasAntidiagonal.antidiagonal A : Finset (ℕ × ℕ)))]
  swap
  · rintro ⟨⟨p1, p2⟩, hm⟩ hp
    have hm' : p1 + p2 = A := Finset.HasAntidiagonal.mem_antidiagonal.1 hm
    have h2 : 0 < p2 := by
      rcases Nat.eq_zero_or_pos p2 with h0 | h0
      · exact absurd (by simp only [Subtype.mk.injEq, Prod.mk.injEq]; exact ⟨by omega, h0⟩) hp
      · exact h0
    dsimp only
    have hsub : Subsingleton (Hdg M.q p2 0) := (P.fin M hM p2 0).2 h2
    refine Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun s' _ => ?_
    exact absurd (Subsingleton.elim _ _) ((Module.finBasis K (Hdg M.q p2 0)).ne_zero s')
  dsimp only
  by_cases hAα : A = α
  · subst hAα
    obtain rfl : β = a' := by omega
    have hG : ∀ v : Hdg M.q 0 0, Gx hC x ψ v = ψ (cupH M.q (Nat.zero_add β) (Nat.zero_add n) v x) := by
      intro v
      unfold Gx
      rw [dite_eq_left (Nat.zero_add β)]
      simp only [LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply]
    have hterm : ∀ (s : Fin (Module.finrank K (Hdg M.q A t))) (s' : Fin (Module.finrank K (Hdg M.q 0 0))),
        th hC S sl ψ (S.pl₂ β n x) (cupH S.P.q (Nat.add_zero A) rfl (S.pl₁ A t (Module.finBasis K (Hdg M.q A t) s))
          (S.pl₂ 0 0 (Module.finBasis K (Hdg M.q 0 0) s'))) =
        φ' (Module.finBasis K (Hdg M.q A t) s) * Gx hC x ψ (Module.finBasis K (Hdg M.q 0 0) s') := by
      intro s s'
      rw [assoc (Nat.add_zero A) rfl (Nat.zero_add β) (Nat.zero_add n), hsl.1, map_smul, smul_eq_mul, hG]
    rw [← _root_.CrystallineSemistableComparison.Onto.sum_coord_basis_dual (kC K) (P.h M A t (M.toV t X)) (fun k φ => P.lin' M A t k _ φ) (Module.finBasis K (Hdg M.q A t)) φ',
      ← _root_.CrystallineSemistableComparison.Onto.sum_coord_basis_dual (kC K) (P.h M 0 0 (M.toV 0 Y)) (fun k φ => P.lin' M 0 0 k _ φ) (Module.finBasis K (Hdg M.q 0 0)) (Gx hC x ψ),
      Finset.sum_mul_sum]
    refine Finset.sum_congr rfl fun s _ => Finset.sum_congr rfl fun s' _ => ?_
    erw [hterm s s']
    rw [map_mul]
    ring
  · have hG0 : Gx hC x ψ = 0 := by
      unfold Gx
      rw [dite_eq_right (show ¬ (0 + a' = β) by omega)]
    simp only [hG0, map_zero, mul_zero]
    refine Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun s' _ => ?_
    erw [assoc (i1 := t) (j1 := 0) (Nat.add_zero A) (Nat.add_zero t) rfl rfl,
      hsl.2 A t (0 + a') (0 + n) _ _ (fun h => hAα (congrArg Prod.fst h))]
    simp only [map_zero, mul_zero]

theorem t2a (hC : CupLaws) (P : HTPre l K) {M : Model l K} (hM : M.Sm) {D : ℕ} (S : Sq M D) {a' n : ℕ} (x : Hdg M.q a' n)
    {α β A t : ℕ} (hA : α + β = A + a') (φ' : Module.Dual K (Hdg M.q α t)) (ψ : Module.Dual K (Hdg M.q β n))
    (sl : Hdg S.P.q (A + a') (t + n) →ₗ[K] Hdg M.q β n) (hsl : IsSl S hA φ' sl)
    {i j : ℕ} (X : M.T i) (Y : M.T j) (Z : S.P.T (i + j))
    (hZ : S.P.CupT (Model.pullT S.p₁ S.h₁ i X) (Model.pullT S.p₂ S.h₂ j Y) Z) (hij : i + j = t) (hj : j ≠ 0) :
    P.h S.P A t (S.P.toV t (castT hij Z)) (th hC S sl ψ (S.pl₂ a' n x)) = 0 := by
  classical
  have hfin : ∀ a n, FiniteDimensional K (Hdg M.q a n) := fun a n => (P.fin M hM a n).1
  subst hij
  have assoc : ∀ {a1 a2 i1 j1 a23 jk : ℕ} (h12 : a1 + a2 = A) (g12 : i1 + j1 = (i + j)) (h3 : a2 + a' = a23)
      (g3 : j1 + n = jk) (u : Hdg M.q a1 i1) (v : Hdg M.q a2 j1),
      th hC S sl ψ (S.pl₂ a' n x) (cupH S.P.q h12 g12 (S.pl₁ a1 i1 u) (S.pl₂ a2 j1 v)) =
        ψ (sl (cupH S.P.q (by omega : a1 + a23 = A + a') (by omega : i1 + jk = (i + j) + n) (S.pl₁ a1 i1 u)
          (S.pl₂ a23 jk (cupH M.q h3 g3 v x)))) := by
    intro a1 a2 i1 j1 a23 jk h12 g12 h3 g3 u v
    simp only [th, LinearMap.comp_apply, LinearMap.flip_apply, cupL_apply]
    rw [(hC K S.P.gen S.P.q).2.1 h12 (by omega) h3 (by omega) g12 (by omega) g3 (by omega),
      ← (hC K M.gen M.q).2.2.2.2.1 S.P.gen S.P.q (Model.genMap S.p₂ S.h₂) (Model.genMap_q S.p₂ S.h₂) h3 g3 v x]
  refine (cupK P hM S X Y Z hZ (fun a => Module.finBasis K (Hdg M.q a i))
    (fun a => Module.finBasis K (Hdg M.q a j)) A _).trans ?_
  refine Finset.sum_eq_zero fun p _ => Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun s' _ => ?_
  have hm : p.1.1 + p.1.2 = A := Finset.HasAntidiagonal.mem_antidiagonal.1 p.2
  rw [assoc hm rfl rfl rfl, hsl.2 p.1.1 i (p.1.2 + a') (j + n) (by omega) (by omega)
    (fun h => hj (by have := congrArg Prod.snd h; dsimp only at this; omega))]
  simp only [map_zero, mul_zero]

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.T2a =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.RhsF =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.RhsF", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.CastTRfl\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.GenPb\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.T2a\nimport GroundTheory.PAdicHodge.NormalizedTraceTower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem eid (hC : CupLaws) (hS : Slant) (P : HTPre l K) {M : Model l K} (hM : M.Sm) {d : ℕ} (Dt : Dat hC P M d)
    {a' n : ℕ} (x : Hdg M.q a' n) {α : ℕ} (φ' : Module.Dual K (Hdg M.q α (2 + 2 * d))) :
    lhsF hC P Dt x φ' = rhsF hC P Dt x φ' := by
  funext β ψ
  have hL : lhsF hC P Dt x φ' β ψ =
      (∑ s, if h : 0 = n then kap hC P x φ' (Dt.a₀ s) * P.h M β n (M.toV n (castT h (Dt.b₀ s))) ψ else 0) +
      ∑ s, if h : Dt.j s = n then kap hC P x φ' (Dt.a s) * P.h M β n (M.toV n (castT h (Dt.b s))) ψ else 0 := by
    simp only [lhsF, Pi.add_apply, Finset.sum_apply]
    congr 1 <;> refine Finset.sum_congr rfl fun s _ => ?_ <;> split_ifs <;> rfl
  rw [hL]
  simp only [rhsF]
  by_cases hlt : a' ≤ α + β
  · obtain ⟨A, hA⟩ : ∃ A, α + β = A + a' := ⟨α + β - a', by omega⟩
    have hPM := sm_gen hM
    have := hPM.1
    have := hPM.2
    obtain ⟨sl, hsl⟩ := slantR hS K M.gen M.gen Dt.S.P.gen M.q M.q (Model.genMap Dt.S.p₁ Dt.S.h₁)
      (Model.genMap Dt.S.p₂ Dt.S.h₂) (gen_pb _ _ _ _ Dt.S.prod) Dt.S.P.q (Model.genMap_q _ _) (Model.genMap_q _ _)
      α (2 + 2 * d) β n (A + a') (2 + 2 * d + n) hA rfl φ'
    have hsl' : IsSl Dt.S hA φ' sl := hsl
    have hy : pullH (Model.genMap Dt.S.Δ Dt.S.hΔ) (Model.genMap_q Dt.S.Δ Dt.S.hΔ) a' n
        (Dt.S.pl₁ a' n x - Dt.S.pl₂ a' n x) = 0 := by
      rw [map_sub, sub_eq_zero]
      have c7 := (hC K M.gen M.q).2.2.2.2.2.2
      rw [c7 _ _ _ _ _ _ _ _ (𝟙 _) (Category.id_comp _) (gen_sec _ _ _ _ Dt.S.Δ₁) a' n x,
        c7 _ _ _ _ _ _ _ _ (𝟙 _) (Category.id_comp _) (gen_sec _ _ _ _ Dt.S.Δ₂) a' n x]
    have hk := Dt.kill A a' n _ hy (ψ ∘ₗ sl)
    have split : (ψ ∘ₗ sl) ∘ₗ (cupL hC Dt.S.P.q (a := A) (a' := a') (i := 2 + 2 * d) (j := n) rfl rfl).flip
        (Dt.S.pl₁ a' n x - Dt.S.pl₂ a' n x) = th hC Dt.S sl ψ (Dt.S.pl₁ a' n x) - th hC Dt.S sl ψ (Dt.S.pl₂ a' n x) := by
      ext C
      simp [th]
    rw [split, map_sub, sub_eq_zero, Dt.dec] at hk

    simp only [map_add (f := _), map_sum, AddMonoidHom.add_apply, AddMonoidHom.finsetSum_apply] at hk
    have e1 : ∀ s, P.h Dt.S.P A (2 + 2 * d) (Dt.S.P.toV (2 + 2 * d) (Dt.ab₀ s)) (th hC Dt.S sl ψ (Dt.S.pl₁ a' n x)) =
        if h : 0 = n then kap hC P x φ' (Dt.a₀ s) * P.h M β n (M.toV n (castT h (Dt.b₀ s))) ψ else 0 :=
      fun s => t1 hC P hM Dt.S x hA φ' ψ sl hsl' (Dt.a₀ s) (Dt.b₀ s) (Dt.ab₀ s) (Dt.cup₀ s) rfl
    have e2 : ∀ s, P.h Dt.S.P A (2 + 2 * d) (Dt.S.P.toV (2 + 2 * d) (castT (Dt.hij s) (Dt.ab s)))
        (th hC Dt.S sl ψ (Dt.S.pl₁ a' n x)) =
        if h : Dt.j s = n then kap hC P x φ' (Dt.a s) * P.h M β n (M.toV n (castT h (Dt.b s))) ψ else 0 :=
      fun s => t1 hC P hM Dt.S x hA φ' ψ sl hsl' (Dt.a s) (Dt.b s) (Dt.ab s) (Dt.cup s) (Dt.hij s)
    have f1 : ∀ s, P.h Dt.S.P A (2 + 2 * d) (Dt.S.P.toV (2 + 2 * d) (Dt.ab₀ s)) (th hC Dt.S sl ψ (Dt.S.pl₂ a' n x)) =
        P.h M α _ (M.toV _ (Dt.a₀ s)) φ' * P.h M 0 0 (M.toV 0 (Dt.b₀ s)) (Gx hC x ψ) :=
      fun s => t2z hC P hM Dt.S x hA φ' ψ sl hsl' (Dt.a₀ s) (Dt.b₀ s) (Dt.ab₀ s) (Dt.cup₀ s)
    have f2 : ∀ s, P.h Dt.S.P A (2 + 2 * d) (Dt.S.P.toV (2 + 2 * d) (castT (Dt.hij s) (Dt.ab s)))
        (th hC Dt.S sl ψ (Dt.S.pl₂ a' n x)) = 0 :=
      fun s => t2a hC P hM Dt.S x hA φ' ψ sl hsl' (Dt.a s) (Dt.b s) (Dt.ab s) (Dt.cup s) (Dt.hij s) (Dt.jne s)
    simp only [e1, e2, f1, f2, Finset.sum_const_zero, add_zero] at hk
    exact hk
  · have hk : ∀ {i : ℕ} (X : M.T i), kap hC P x φ' X = 0 := by
      intro i X
      rw [kap, Fx, dite_eq_right (fun h => hlt (by omega)), map_zero, smul_zero]
    have hg : Gx hC x ψ = 0 := by
      rw [Gx, dite_eq_right (by omega)]
    simp only [hk, hg, zero_mul, map_zero, mul_zero, dite_eq_ite, ite_self, Finset.sum_const_zero, add_zero]

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.RhsF =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.Tgt =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.Tgt", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.ProperGenMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.RhsF\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem core (hC : CupLaws) (hS : Slant) (P : HTPre l K) {M : Model l K} (hM : M.Sm) {d : ℕ} (Dt : Dat hC P M d)
    (hfin : FiniteDimensional ℚ_[l] (M.V (2 + 2 * d))) (hI : P.Inj M (2 + 2 * d)) {a' n : ℕ} (x : Hdg M.q a' n) :
    tgt hC x Dt.N ∈ Sp P M n := by
  classical
  have hR : ∀ (α : ℕ) (φ' : Module.Dual K (Hdg M.q α (2 + 2 * d))), rhsF hC P Dt x φ' ∈ Sp P M n := by
    intro α φ'
    rw [← eid hC hS P hM Dt x φ']
    unfold lhsF Sp
    refine Submodule.add_mem _ (Submodule.sum_mem _ fun s _ => ?_) (Submodule.sum_mem _ fun s _ => ?_) <;>
      split_ifs <;>
      first
        | exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, rfl⟩)
        | exact Submodule.zero_mem _
  have hsum : ∀ G : Module.Dual K (Hdg M.q 0 0),
      ∑ s, P.h M 0 0 (M.toV 0 (Dt.b₀ s)) G = qC l Dt.N * kC K (G (oneH M.q)) := by
    intro G
    have e1 : ∑ s, P.h M 0 0 (M.toV 0 (Dt.b₀ s)) G = P.h M 0 0 (∑ s, M.toV 0 (Dt.b₀ s)) G := by

      rw [map_sum, AddMonoidHom.finsetSum_apply]
    rw [e1, Dt.sum₀, P.lin, P.one M hM Dt.one Dt.hone]
  let vec : (Σ α : ℕ, Module.Dual K (Hdg M.q α (2 + 2 * d))) → (Fin Dt.m₀ → ℂ_[l]) :=
    fun p s => P.h M p.1 (2 + 2 * d) (M.toV _ (Dt.a₀ s)) p.2
  have h1 : (fun _ => (1 : ℂ_[l])) ∈ Submodule.span ℂ_[l] (Set.range vec) := by
    by_contra hn
    obtain ⟨f, hf1, hf0⟩ := Submodule.exists_dual_map_eq_bot_of_notMem hn inferInstance
    have hvan : ∀ p, f (vec p) = 0 := fun p => by
      have hm : f (vec p) ∈ (Submodule.span ℂ_[l] (Set.range vec)).map f :=
        Submodule.mem_map_of_mem (Submodule.subset_span ⟨p, rfl⟩)
      rw [hf0] at hm
      exact (Submodule.mem_bot _).mp hm
    let z : Fin Dt.m₀ → ℂ_[l] := fun s => f (fun j => if s = j then 1 else 0)
    have hfz : ∀ y, f y = ∑ s, y s * z s := fun y => by
      rw [LinearMap.pi_apply_eq_sum_univ f y]
      simp only [smul_eq_mul, z]
    obtain ⟨S, _, b0, hb0⟩ : ∃ (S : Set (M.V (2 + 2 * d))) (_ : Fintype S)
        (b0 : Module.Basis (Fin Dt.m₀ ⊕ S) ℚ_[l] (M.V (2 + 2 * d))),
        ∀ s, b0 (Sum.inl s) = M.toV _ (Dt.a₀ s) := by
      have hfi := Module.Finite.finite_basis (Module.Basis.sumExtend Dt.li)
      refine ⟨Module.Basis.sumExtendIndex Dt.li, ?_, Module.Basis.sumExtend Dt.li, fun s => ?_⟩
      · exact @Fintype.ofFinite _ (@Finite.of_injective _ _ hfi Sum.inr Sum.inr_injective)
      · simp only [Module.Basis.sumExtend, Module.Basis.reindex_apply, Module.Basis.coe_extend]
        rfl
    let e := Fintype.equivFin (Fin Dt.m₀ ⊕ S)
    let b := b0.reindex e
    let z' : Fin (Fintype.card (Fin Dt.m₀ ⊕ S)) → ℂ_[l] := fun i => Sum.elim z (fun _ => 0) (e.symm i)
    have hyp : ∀ (a : ℕ) (φ : Module.Dual K (Hdg M.q a (2 + 2 * d))),
        ∑ i, z' i * P.h M a (2 + 2 * d) (b i) φ = 0 := by
      intro a φ
      have hv := hvan ⟨a, φ⟩
      rw [hfz] at hv
      simp only [b, z', Module.Basis.reindex_apply]
      rw [Equiv.sum_comp e.symm (fun j => Sum.elim z (fun _ => 0) j * P.h M a (2 + 2 * d) (b0 j) φ),
        Fintype.sum_sum_type]
      simp only [Sum.elim_inl, Sum.elim_inr, zero_mul, Finset.sum_const_zero, add_zero, hb0]
      refine Eq.trans ?_ hv
      exact Finset.sum_congr rfl fun s _ => mul_comm _ _
    have hz' : z' = 0 := hI b z' hyp
    have hz : z = 0 := by
      funext s
      have hs := congrFun hz' (e (Sum.inl s))
      simpa [z'] using hs
    apply hf1
    rw [hfz]
    simp [hz]
  let Φ : (Fin Dt.m₀ → ℂ_[l]) →ₗ[ℂ_[l]] GF M n :=
    { toFun := fun c β ψ => ∑ s, c s * P.h M 0 0 (M.toV 0 (Dt.b₀ s)) (Gx hC x ψ)
      map_add' := fun c c' => by
        funext β ψ
        simp [add_mul, Finset.sum_add_distrib]
      map_smul' := fun r c => by
        funext β ψ
        simp [Finset.mul_sum, mul_assoc] }
  have hle : Submodule.span ℂ_[l] (Set.range vec) ≤ (Sp P M n).comap Φ := by
    rw [Submodule.span_le]
    rintro _ ⟨p, rfl⟩
    exact hR p.1 p.2
  have hmem := hle h1
  rw [Submodule.mem_comap] at hmem
  convert hmem using 1
  funext β ψ
  simp only [Φ, LinearMap.coe_mk, AddHom.coe_mk, one_mul]
  unfold tgt
  exact (hsum _).symm

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.Tgt =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.OntoOf3Pf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.OntoOf3Pf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.TowerRallisLemma\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.MkDat\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.SurjOfCore\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.Tgt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem ontoOf3_pf : OntoOf3 := by
  intro hC hS hK hSq hD hF l _ K _ P M d hd hM hs hI n
  obtain ⟨S, hEt⟩ := hSq l K M d hd hM hs
  obtain ⟨Dt⟩ := mkDat hC hK hD P hd hM hs S hEt
  exact surj_of_core hC P M n fun a' x => ⟨Dt.N, Dt.hN, core hC hS P hM Dt (hF l K M hM _) hI x⟩

end CrystallineSemistableComparison.Onto

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.CupSurjectivity.OntoOf3Pf =====

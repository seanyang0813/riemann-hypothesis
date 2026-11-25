module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LeadMinorEMulUpper
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.SpanFrameLtSucc
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixLeU
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpLocPSubE
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LocPBLatTransport
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.RelevanceConstantDoubleCosets, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixMapLoc, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GeneratorMemLocalLatticeBackward, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GenericityConstantDoubleCosets

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.RelevanceConstantDoubleCosets =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.RelevanceConstantDoubleCosets", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LeadMinorEMulUpper\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.SpanFrameLtSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermAttrConst.UnitaryGroupMassFormula

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def RelevanceConstantDoubleCosets : Prop :=
  ∀ (D : D7) (u u' : D.what₂.Word) (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
    (Λ : Submodule (𝓞 D.host.E) (VS D).V), IsRowLat D F0 Λ →
      RelFun Λ (lf D F0) (PD D Λ (lf D F0) u') D.host.F

def GenericityConstantDoubleCosets : Prop :=
  ∀ (D : D7) (u u' : D.what₂.Word) (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
    (Λ : Submodule (𝓞 D.host.E) (VS D).V), IsRowLat D F0 Λ →
      GenFun Λ (lf D F0) (PD D Λ (lf D F0) u') (gS D)

theorem termFun_of (hG : GenericityConstantDoubleCosets) (D : D7) (u u' : D.what₂.Word) : TermFun D u u' := by
  intro F0 Λ hΛ
  exact ⟨gFun_all _ _ _, cellFun_all _ _ _, relFun_all _ _ _ _, hG D u u' F0 Λ hΛ, feqFFun_all _ _ _⟩

end PI.TermAttrConst.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.RelevanceConstantDoubleCosets =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixMapLoc =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixMapLoc", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixLeU\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpLocPSubE\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LeadMinorEMulUpper\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LocPBLatTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

set_option linter.style.haveILetI false

namespace PI.TermAttrConst.UnitaryGroupMassFormula

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef PI.DCRelEquiv PI.DCRelEquiv.UnitaryGroupMassFormula
  IsDedekindDomain

section GP3

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T T' : E}
  {Λ : Submodule (𝓞 E) S.V}

theorem gp_div (g : ℕ) : ∀ v ∈ Ideal.span {(g : 𝓞 E)} • Λ, ((g : E))⁻¹ • v ∈ Λ := by
  intro v hv
  refine Submodule.smul_induction_on hv ?_ ?_
  · intro a ha w hw
    obtain ⟨t, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    by_cases hg : (g : E) = 0
    · rw [hg, inv_zero, zero_smul]
      exact zero_mem _
    · have : ((g : E))⁻¹ • ((t * (g : 𝓞 E)) • w) = t • w := by
        rw [gp_osmul, gp_osmul, map_mul, map_natCast, smul_smul, mul_comm (algebraMap (𝓞 E) E t),
          ← mul_assoc, inv_mul_cancel₀ hg, one_mul]
      rw [this]
      exact Submodule.smul_mem _ t hw
  · intro a b ha hb
    rw [smul_add]
    exact add_mem ha hb

theorem gp_locΛ_map (p : Ideal (𝓞 E)) [p.IsPrime] {n : S.V ≃ₗ[E] S.V} (hn : IsAutLam S Λ n) {v : S.V}
    (hv : v ∈ Formalism.HermitianLatticesTheory.localization₂ p Λ) : n v ∈ Formalism.HermitianLatticesTheory.localization₂ p Λ := by
  obtain ⟨s, hs, hv⟩ := (mem_localization_iff p Λ v).1 hv
  exact (mem_localization_iff p Λ _).2 ⟨s, hs, by rw [← gp_map_osmul]; exact autLam_maps hn hv⟩

theorem gp_gen_mem (P : HeightOneSpectrum (𝓞 E)) (g : ℕ) {F : LFlag S r T} {F' : LFlag S r T'}
    {ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) (𝓞 E)} (hξ : AdmWit Λ g F F' ξ) (hP : (g : 𝓞 E) ∈ P.asIdeal)
    (b : Fin (r + 1)) : (haveI := P.isPrime; gpGen g F F' ξ b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal Λ) := by
  haveI := P.isPrime
  have h := hξ.2.2 b P hP
  obtain ⟨s, hs, hv⟩ := (mem_localization_iff P.asIdeal _ _).1 h
  refine (mem_localization_iff P.asIdeal Λ _).2 ⟨s, hs, ?_⟩
  unfold gpGen
  rw [gp_smul_comm]
  exact gp_div g _ hv

theorem gp_Mfix_map {F : LFlag S r T} (hl : IsLift Λ F) {n : S.V ≃ₗ[E] S.V} (hn : n ∈ NLam Λ F) :
    ∀ v ∈ gpMfix Λ F, n v ∈ gpMfix Λ F := by
  have h : gpMfix Λ F ≤ (gpMfix Λ F).comap (fO n) := by
    refine Submodule.span_le.2 ?_
    rintro w (hw | hw)
    · obtain ⟨h1, h2⟩ := mem_XLam.1 hw
      exact Submodule.subset_span (Set.mem_union_left _ (mem_XLam.2 ⟨autLam_maps hn.1 h1, nlam_maps_X hn _ h2⟩))
    · rw [Set.mem_singleton_iff] at hw
      rw [hw, hl.2]
      show n F.fl.z ∈ gpMfix Λ F
      have h1 : F.fl.z ∈ gpMfix Λ F := by
        refine Submodule.subset_span (Set.mem_union_right _ ?_)
        rw [Set.mem_singleton_iff, hl.2]
      have h2 : n F.fl.z - F.fl.z ∈ gpMfix Λ F :=
        Submodule.subset_span (Set.mem_union_left _ (nlam_z_sub hn hl.1))
      have := Submodule.add_mem _ h2 h1
      rwa [sub_add_cancel] at this
  exact fun v hv => h hv

theorem gp_Mfix_map_loc (p : Ideal (𝓞 E)) [p.IsPrime] {F : LFlag S r T} (hl : IsLift Λ F)
    {n : S.V ≃ₗ[E] S.V} (hn : n ∈ NLam Λ F) {v : S.V} (hv : v ∈ Formalism.HermitianLatticesTheory.localization₂ p (gpMfix Λ F)) :
    n v ∈ Formalism.HermitianLatticesTheory.localization₂ p (gpMfix Λ F) := by
  obtain ⟨s, hs, hv⟩ := (mem_localization_iff p _ v).1 hv
  exact (mem_localization_iff p _ _).2 ⟨s, hs, by rw [← gp_map_osmul]; exact gp_Mfix_map hl hn _ hv⟩

theorem gp_e_mem (P : HeightOneSpectrum (𝓞 E)) (g : ℕ) {F' : LFlag S r T'} (hc : IsFixedConv Λ g F')
    (hP : (g : 𝓞 E) ∈ P.asIdeal) (a : Fin r) :
    (haveI := P.isPrime; F'.fl.e a ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (XLam Λ F')) := by
  haveI := P.isPrime
  obtain ⟨c, -, hc1, heq⟩ := hc.1 P
  rw [heq]
  have : c a • F'.fl.e a ∈ Submodule.span (𝓞 E) (Set.range fun a => c a • F'.fl.e a) :=
    Submodule.subset_span ⟨a, rfl⟩
  rw [hc1 hP a, one_smul] at this
  exact gp_le_locP _ _ this

theorem gp_XLam_le (P : HeightOneSpectrum (𝓞 E)) (g : ℕ) {F' : LFlag S r T'} (hc : IsFixedConv Λ g F')
    (hP : (g : 𝓞 E) ∈ P.asIdeal) (K : Submodule (𝓞 E) S.V)
    (hK : ∀ s ∈ P.asIdeal.primeCompl, ∀ k : S.V, s • k ∈ K → k ∈ K) (he : ∀ a, F'.fl.e a ∈ K) :
    (haveI := P.isPrime; Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (XLam Λ F') ≤ K) := by
  haveI := P.isPrime
  obtain ⟨c, -, hc1, heq⟩ := hc.1 P
  rw [heq]
  intro v hv
  obtain ⟨s, hs, hv⟩ := (mem_localization_iff P.asIdeal _ v).1 hv
  refine hK s hs v ((Submodule.span_le.2 ?_) hv)
  rintro _ ⟨a, rfl⟩
  show c a • F'.fl.e a ∈ K
  rw [hc1 hP a, one_smul]
  exact he a

theorem gp_frame_loc (P : HeightOneSpectrum (𝓞 E)) (g : ℕ) {F' : LFlag S r T'} (hl : IsLift Λ F')
    (hc : IsFixedConv Λ g F') (hP : (g : 𝓞 E) ∈ P.asIdeal) (b : Fin (r + 1)) :
    (haveI := P.isPrime; frame F' b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal Λ) := by
  haveI := P.isPrime
  induction b using Fin.lastCases with
  | last =>
    rw [frame_last]
    exact gp_le_locP _ _ hl.1
  | cast i =>
    rw [frame_castSucc]
    refine locP_mono _ (fun v hv => (mem_XLam.1 hv).1) (gp_e_mem P g hc hP i)

theorem gp_frameAct_mem (P : HeightOneSpectrum (𝓞 E)) (g : ℕ) {F : LFlag S r T} (hl : IsLift Λ F)
    (hc : IsFixedConv Λ g F) (hP : (g : 𝓞 E) ∈ P.asIdeal)
    (ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) (𝓞 E)) (b : Fin (r + 1)) :
    (haveI := P.isPrime; frameAct (frame F) ξ b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (gpMfix Λ F)) := by
  haveI := P.isPrime
  unfold frameAct
  refine Submodule.sum_mem _ fun a _ => ?_
  have e : ((ξ a b : 𝓞 E) : E) • frame F a = ξ a b • frame F a := (gp_osmul _ _).symm
  rw [e]
  refine Submodule.smul_mem _ _ ?_
  induction a using Fin.lastCases with
  | last =>
    rw [frame_last]
    refine gp_le_locP _ _ (Submodule.subset_span (Set.mem_union_right _ ?_))
    rw [Set.mem_singleton_iff, hl.2]
  | cast i =>
    rw [frame_castSucc]
    exact locP_mono _ (show XLam Λ F ≤ gpMfix Λ F from fun v hv => Submodule.subset_span
      (Set.mem_union_left _ hv)) (gp_e_mem P g hc hP i)

theorem gp_nlam_sub_X {F' : LFlag S r T'} {m : S.V ≃ₗ[E] S.V} (hm : m ∈ NLam Λ F') (b : Fin (r + 1)) :
    m (frame F' b) - frame F' b ∈ Xsp F' := by
  induction b using Fin.lastCases with
  | last =>
    rw [frame_last]
    exact hm.2.2 _ (z_mem_orth F')
  | cast i =>
    rw [frame_castSucc]
    exact Xflag_le_X F' i.1 (hm.2.1 i.1 _ (e_mem_Xflag F' i))

theorem gp_loc_X (p : Ideal (𝓞 E)) [p.IsPrime] {F' : LFlag S r T'} {v : S.V} (hv : v ∈ Formalism.HermitianLatticesTheory.localization₂ p Λ)
    (hX : v ∈ Xsp F') : v ∈ Formalism.HermitianLatticesTheory.localization₂ p (XLam Λ F') := by
  obtain ⟨s, hs, hv⟩ := (mem_localization_iff p Λ v).1 hv
  refine (mem_localization_iff p _ v).2 ⟨s, hs, mem_XLam.2 ⟨hv, ?_⟩⟩
  rw [gp_osmul]
  exact Submodule.smul_mem _ _ hX

end GP3

end PI.TermAttrConst.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixMapLoc =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GeneratorMemLocalLatticeBackward =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GeneratorMemLocalLatticeBackward", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixLeU\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpLocPSubE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GpMfixMapLoc\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LeadMinorEMulUpper\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LocPBLatTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

set_option linter.style.haveILetI false

namespace PI.TermAttrConst.UnitaryGroupMassFormula

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef PI.DCRelEquiv PI.DCRelEquiv.UnitaryGroupMassFormula
  IsDedekindDomain

section GP4

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T T' : E}
  {Λ : Submodule (𝓞 E) S.V} {g : ℕ} {F : LFlag S r T} {x y : LFlag S r T'} {n m : S.V ≃ₗ[E] S.V}
  {ξ ξ' : Matrix (Fin (r + 1)) (Fin (r + 1)) (𝓞 E)}

theorem generator_mem_local_lattice_forward (P : HeightOneSpectrum (𝓞 E)) (hFl : IsLift Λ F) (hFc : IsFixedConv Λ g F)
    (hxl : IsLift Λ x) (hxc : IsFixedConv Λ g x) (hn : n ∈ NLam Λ F) (hm : m ∈ NLam Λ x)
    (hfr : ∀ a, frame y a = n (m (frame x a))) (hξ : AdmWit Λ g F x ξ) (hξ' : AdmWit Λ g F y ξ')
    (hP : (g : 𝓞 E) ∈ P.asIdeal) (b : Fin (r + 1)) :
    (haveI := P.isPrime; gpGen g F y ξ' b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal
      (gpMfix Λ F ⊔ Submodule.span (𝓞 E) (Set.range fun a => n (gpGen g F x ξ a)))) := by
  haveI := P.isPrime
  set N := Submodule.span (𝓞 E) (Set.range fun a => n (gpGen g F x ξ a)) with hNdef
  by_cases hg : (g : E) = 0
  · unfold gpGen
    rw [hg, inv_zero, zero_smul]
    exact zero_mem _
  have hNΛ : N ≤ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal Λ := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨a, rfl⟩
    exact gp_locΛ_map _ hn.1 (gp_gen_mem P g hξ hP a)
  have hdec : ∀ a, frame x a = frameAct (frame F) ξ a + (g : E) • gpGen g F x ξ a := by
    intro a
    unfold gpGen
    rw [smul_smul, mul_inv_cancel₀ hg, one_smul]
    abel
  have hK : ∀ a, n (frame x a) ∈ gpK P.asIdeal (gpMfix Λ F) N (g : E) := by
    intro a
    refine (gp_mem_K _).2 ⟨n (frameAct (frame F) ξ a),
      gp_Mfix_map_loc _ hFl hn (gp_frameAct_mem P g hFl hFc hP ξ a), n (gpGen g F x ξ a),
      gp_le_locP _ _ (Submodule.subset_span ⟨a, rfl⟩), ?_⟩
    rw [hdec a, map_add (f := _), map_smul]
  have hH : frame y b - n (frame x b) ∈ gpK P.asIdeal (gpMfix Λ F) N (g : E) := by
    have hd : m (frame x b) - frame x b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (XLam Λ x) :=
      gp_loc_X _ (sub_mem (gp_locΛ_map _ hm.1 (gp_frame_loc P g hxl hxc hP b))
        (gp_frame_loc P g hxl hxc hP b)) (gp_nlam_sub_X hm b)
    have hle := gp_XLam_le P g hxc hP ((gpK P.asIdeal (gpMfix Λ F) N (g : E)).comap (fO n)) ?_ ?_
    · have h1 := hle hd
      rw [Submodule.mem_comap, fO_apply, map_sub] at h1
      rw [hfr b]
      exact h1
    · intro s hs k hk
      rw [Submodule.mem_comap, fO_apply] at hk ⊢
      rw [gp_map_osmul] at hk
      exact gp_K_loc _ hs hk
    · intro a
      rw [Submodule.mem_comap, fO_apply, ← frame_castSucc x a]
      exact hK _
  exact gp_core P.asIdeal (M := gpMfix Λ F) (Λ := Λ) (N := N) (U := gpU F) (c := (g : E))
    (gp_sat _ F hFl hFc.2) (gp_Mfix_le_U F hFl) hNΛ (t := frame y b) (s := frameAct (frame F) ξ' b)
    (t' := n (frame x b)) (s' := n (frameAct (frame F) ξ b)) (v := gpGen g F y ξ' b) (w := n (gpGen g F x ξ b)) rfl
    (gp_gen_mem P g hξ' hP b)
    (gp_locP_sub_E _ (gp_Mfix_le_U F hFl) (gp_frameAct_mem P g hFl hFc hP ξ' b))
    (gp_Mfix_map_loc _ hFl hn (gp_frameAct_mem P g hFl hFc hP ξ b))
    (by unfold gpGen; rw [map_smul, map_sub]) (Submodule.subset_span ⟨b, rfl⟩) hH

theorem generator_mem_local_lattice_backward (P : HeightOneSpectrum (𝓞 E)) (hFl : IsLift Λ F) (hFc : IsFixedConv Λ g F)
    (hxl : IsLift Λ x) (hxc : IsFixedConv Λ g x) (hyc : IsFixedConv Λ g y) (hn : n ∈ NLam Λ F)
    (hm : m ∈ NLam Λ x) (hfr : ∀ a, frame y a = n (m (frame x a))) (hξ : AdmWit Λ g F x ξ)
    (hξ' : AdmWit Λ g F y ξ') (hP : (g : 𝓞 E) ∈ P.asIdeal) (b : Fin (r + 1)) :
    (haveI := P.isPrime; n (gpGen g F x ξ b) ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal
      (gpMfix Λ F ⊔ Submodule.span (𝓞 E) (Set.range (gpGen g F y ξ')))) := by
  haveI := P.isPrime
  set N := Submodule.span (𝓞 E) (Set.range (gpGen g F y ξ')) with hNdef
  by_cases hg : (g : E) = 0
  · unfold gpGen
    rw [hg, inv_zero, zero_smul, map_zero]
    exact zero_mem _
  have hNΛ : N ≤ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal Λ := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨a, rfl⟩
    exact gp_gen_mem P g hξ' hP a
  have hdec : ∀ a, frame y a = frameAct (frame F) ξ' a + (g : E) • gpGen g F y ξ' a := by
    intro a
    unfold gpGen
    rw [smul_smul, mul_inv_cancel₀ hg, one_smul]
    abel
  have hH : n (frame x b) - frame y b ∈ gpK P.asIdeal (gpMfix Λ F) N (g : E) := by
    have hX : n (m (frame x b) - frame x b) ∈ Xsp y := by
      have hfr' : ∀ a, frame y a = (m.trans n) (frame x a) := fun a => hfr a
      rw [Xsp_mem_transport hfr', LinearEquiv.symm_trans_apply, LinearEquiv.symm_apply_apply]
      exact nlam_maps_X (nlam_inv hm) _ (gp_nlam_sub_X hm b)
    have hd : n (m (frame x b) - frame x b) ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (XLam Λ y) :=
      gp_loc_X _ (gp_locΛ_map _ hn.1 (sub_mem (gp_locΛ_map _ hm.1 (gp_frame_loc P g hxl hxc hP b))
        (gp_frame_loc P g hxl hxc hP b))) hX
    have hle := gp_XLam_le P g hyc hP (gpK P.asIdeal (gpMfix Λ F) N (g : E))
      (fun s hs k hk => gp_K_loc _ hs hk) (fun a => by
        rw [← frame_castSucc y a]
        exact (gp_mem_K _).2 ⟨frameAct (frame F) ξ' _, gp_frameAct_mem P g hFl hFc hP ξ' _,
          gpGen g F y ξ' _, gp_le_locP _ _ (Submodule.subset_span ⟨_, rfl⟩), hdec _⟩)
    have h1 := neg_mem (hle hd)
    rw [map_sub, ← hfr b, neg_sub] at h1
    exact h1
  exact gp_core P.asIdeal (M := gpMfix Λ F) (Λ := Λ) (N := N) (U := gpU F) (c := (g : E))
    (gp_sat _ F hFl hFc.2) (gp_Mfix_le_U F hFl) hNΛ (t := n (frame x b))
    (s := n (frameAct (frame F) ξ b)) (t' := frame y b) (s' := frameAct (frame F) ξ' b)
    (v := n (gpGen g F x ξ b)) (w := gpGen g F y ξ' b) (by unfold gpGen; rw [map_smul, map_sub]) (gp_locΛ_map _ hn.1 (gp_gen_mem P g hξ hP b))
    (gp_locP_sub_E _ (gp_Mfix_le_U F hFl) (gp_Mfix_map_loc _ hFl hn (gp_frameAct_mem P g hFl hFc hP ξ b)))
    (gp_frameAct_mem P g hFl hFc hP ξ' b) rfl (Submodule.subset_span ⟨b, rfl⟩) hH

theorem gp_mplus (P : HeightOneSpectrum (𝓞 E)) (hFl : IsLift Λ F) (hFc : IsFixedConv Λ g F)
    (hxl : IsLift Λ x) (hxc : IsFixedConv Λ g x) (hyc : IsFixedConv Λ g y) (hn : n ∈ NLam Λ F)
    (hm : m ∈ NLam Λ x) (hfr : ∀ a, frame y a = n (m (frame x a))) (hξ : AdmWit Λ g F x ξ)
    (hξ' : AdmWit Λ g F y ξ') (hP : (g : 𝓞 E) ∈ P.asIdeal) :
    (haveI := P.isPrime; Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Mplus Λ g F y ξ') =
      Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Formalism.HermitianLatticesTheory.gmap n (Mplus Λ g F x ξ))) := by
  haveI := P.isPrime
  have hMfix_sub : ∀ v ∈ gpMfix Λ F, v ∈ Formalism.HermitianLatticesTheory.gmap n (Mplus Λ g F x ξ) := by
    intro v hv
    rw [mem_gmap_iff, gp_mplus_eq]
    exact Submodule.mem_sup_left (gp_Mfix_map hFl (nlam_inv hn) v hv)
  apply le_antisymm
  · refine locP_le _ ?_
    rw [gp_mplus_eq]
    refine sup_le (fun v hv => gp_le_locP _ _ (hMfix_sub v hv)) (Submodule.span_le.2 ?_)
    rintro _ ⟨b, rfl⟩
    refine locP_mono _ (sup_le (fun v hv => hMfix_sub v hv) (Submodule.span_le.2 ?_))
      (generator_mem_local_lattice_forward P hFl hFc hxl hxc hn hm hfr hξ hξ' hP b)
    rintro _ ⟨a, rfl⟩
    show n (gpGen g F x ξ a) ∈ Formalism.HermitianLatticesTheory.gmap n (Mplus Λ g F x ξ)
    rw [mem_gmap_iff, LinearEquiv.symm_apply_apply, gp_mplus_eq]
    exact Submodule.mem_sup_right (Submodule.subset_span ⟨a, rfl⟩)
  · refine locP_le _ ?_
    intro v hv
    rw [mem_gmap_iff] at hv
    have key : Mplus Λ g F x ξ ≤ (Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Mplus Λ g F y ξ')).comap (fO n) := by
      rw [gp_mplus_eq (F' := x)]
      refine sup_le ?_ (Submodule.span_le.2 ?_)
      · intro w hw
        rw [Submodule.mem_comap, fO_apply, gp_mplus_eq]
        exact gp_le_locP _ _ (Submodule.mem_sup_left (gp_Mfix_map hFl hn w hw))
      · rintro _ ⟨b, rfl⟩
        show n (gpGen g F x ξ b) ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Mplus Λ g F y ξ')
        rw [gp_mplus_eq]
        exact generator_mem_local_lattice_backward P hFl hFc hxl hxc hyc hn hm hfr hξ hξ' hP b
    have h1 := key hv
    rw [Submodule.mem_comap, fO_apply, LinearEquiv.apply_symm_apply] at h1
    exact h1

end GP4

end PI.TermAttrConst.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GeneratorMemLocalLatticeBackward =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GenericityConstantDoubleCosets =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GenericityConstantDoubleCosets", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.RelevanceConstantDoubleCosets\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GeneratorMemLocalLatticeBackward\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.LocPBLatTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

set_option linter.style.haveILetI false

namespace PI.TermAttrConst.UnitaryGroupMassFormula

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef PI.DCRelEquiv PI.DCRelEquiv.UnitaryGroupMassFormula
  IsDedekindDomain

section GenAll

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T T' : E}

theorem gen_fwd {Λ : Submodule (𝓞 E) S.V} {g : ℕ} {F : LFlag S r T} {x y : LFlag S r T'}
    (hFl : IsLift Λ F) (hFc : IsFixedConv Λ g F) (hxl : IsLift Λ x) (hxc : IsFixedConv Λ g x)
    (hyc : IsFixedConv Λ g y) (hya : IsAdmissible Λ g F y) (hxy : DCRel Λ F x y)
    (hgx : IsGeneric Λ g F x) : IsGeneric Λ g F y := by
  obtain ⟨ξ', hξ'⟩ := hya
  obtain ⟨n, hn, m, hm, hfr, hzt⟩ := hxy
  obtain ⟨ξ, hξ, hgx⟩ := hgx
  refine ⟨ξ', hξ', fun P => ?_⟩
  haveI := P.isPrime
  have hB := locP_BLat_transport hFl hxl hn hm hfr hzt P.asIdeal
  constructor
  · intro hP
    rw [hB, (hgx P).1 hP, ← locP_gmap]
    exact (gp_mplus P hFl hFc hxl hxc hyc hn hm hfr hξ hξ' hP).symm
  · intro hP
    rw [hB, (hgx P).2 hP, ← locP_gmap, UU_transport hFl hxl hn hm hfr hzt]

theorem genFun_gen (Λ : Submodule (𝓞 E) S.V) (F : LFlag S r T) (Pc : LFlag S r T' → Prop) (g : ℕ)
    (hFl : IsLift Λ F) (hFc : IsFixedConv Λ g F)
    (hPc : ∀ x, Pc x → IsLift Λ x ∧ IsAdmissible Λ g F x ∧ IsFixedConv Λ g x) :
    GenFun Λ F Pc g := by
  intro x y hxy
  obtain ⟨hxl, hxa, hxc⟩ := hPc x.1 x.2
  obtain ⟨hyl, hya, hyc⟩ := hPc y.1 y.2
  have hyx : DCRel Λ F y.1 x.1 := (dCRelEquivAll_holds E S r T T' Λ F).symm hxy
  exact ⟨gen_fwd hFl hFc hxl hxc hyc hya hxy, gen_fwd hFl hFc hyl hyc hxc hxa hyx⟩

end GenAll

section D7

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem genericity_constant_double_cosets : GenericityConstantDoubleCosets := by
  intro D u u' F0 Λ hΛ
  obtain ⟨-, ⟨-, -, hFl, hFc⟩, -⟩ := hΛ
  exact genFun_gen Λ (lf D F0) _ (gS D) hFl hFc fun x hx => ⟨hx.1, hx.2.1, hx.2.2.1⟩

end D7

end PI.TermAttrConst.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermAttractorConstant.GenericityConstantDoubleCosets =====

module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.IsUnitWitt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BcrisRegularPeriodRing
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.WFixAlg, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.NormLLtOne

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.WFixAlg =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.WFixAlg", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.IsUnitWitt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb.G3

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem pow_of_alg {k : Type} [Field k] [Algebra (ZMod l) k] (c : k) (h : IsAlgebraic (ZMod l) c) :
    ∃ f : ℕ, 0 < f ∧ c ^ (l ^ f) = c := by
  have hi : IsIntegral (ZMod l) c := h.isIntegral
  haveI : FiniteDimensional (ZMod l) (IntermediateField.adjoin (ZMod l) {c}) :=
    IntermediateField.adjoin.finiteDimensional hi
  haveI : Finite (IntermediateField.adjoin (ZMod l) {c}) := Module.finite_of_finite (ZMod l)
  letI := Fintype.ofFinite (IntermediateField.adjoin (ZMod l) {c})
  haveI : CharP (IntermediateField.adjoin (ZMod l) {c}) l :=
    charP_of_injective_algebraMap (algebraMap (ZMod l) _).injective l
  obtain ⟨n, -, hn⟩ := FiniteField.card (IntermediateField.adjoin (ZMod l) {c}) l
  refine ⟨n, n.pos, ?_⟩
  have := FiniteField.pow_card
    (⟨c, IntermediateField.mem_adjoin_simple_self _ c⟩ : IntermediateField.adjoin (ZMod l) {c})
  rw [hn] at this
  exact congrArg Subtype.val this


variable (K) in
def iZ : ℤ_[l] →+* OK l K :=
  ((algebraMap ℚ_[l] K).comp PadicInt.Coe.ringHom).codRestrict (OK l K) fun a => by
    show K.val.toRingHom (algebraMap ℚ_[l] K a) ∈ normInteger (PadicAlgCl l)
    rw [mem_normInteger]
    change ‖K.val (algebraMap ℚ_[l] K a)‖ ≤ 1
    rw [K.val.commutes, PadicAlgCl.norm_extends]
    exact a.2

theorem rho_iZ (r : Res l K) (a : ℤ_[l]) : r.ρ (iZ K a) = ZMod.castHom (dvd_refl l) r.k (PadicInt.toZMod a) := by
  have h1 : a - ((PadicInt.toZMod a).val : ℤ_[l]) ∈ RingHom.ker PadicInt.toZMod := by
    rw [RingHom.mem_ker, map_sub, map_natCast, ZMod.natCast_zmod_val, sub_self]
  rw [PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p, Ideal.mem_span_singleton'] at h1
  obtain ⟨b, hb⟩ := h1
  have ha : a = ((PadicInt.toZMod a).val : ℤ_[l]) + b * l := by rw [hb]; ring
  have e : PadicInt.toZMod a = (((PadicInt.toZMod a).val : ℕ) : ZMod l) := (ZMod.natCast_zmod_val _).symm
  rw [e, map_natCast]
  conv_lhs => rw [ha]
  rw [map_add (f := _), map_add (f := _), map_mul, map_mul, map_natCast, map_natCast, map_natCast, map_natCast,
    CharP.cast_eq_zero r.k l, mul_zero, add_zero]

theorem alg_pow (r : Res l K) [FiniteDimensional ℚ_[l] K] (c : r.k) : ∃ f : ℕ, 0 < f ∧ c ^ (l ^ f) = c := by
  obtain ⟨x, rfl⟩ := r.surj c
  letI : Algebra (ZMod l) r.k := (ZMod.castHom (dvd_refl l) r.k).toAlgebra
  apply pow_of_alg
  have hint : IsIntegral ℚ_[l] (x.1 : K) := Algebra.IsIntegral.isIntegral _
  set q := minpoly ℚ_[l] (x.1 : K) with hqdef
  have hqm : q.Monic := minpoly.monic hint
  obtain ⟨j, hj, hmax⟩ := Finset.exists_max_image (Finset.range (q.natDegree + 1)) (fun i => ‖q.coeff i‖)
    ⟨q.natDegree, by simp⟩
  have hge : 1 ≤ ‖q.coeff j‖ := by
    have := hmax q.natDegree (by simp)
    rwa [hqm.coeff_natDegree, norm_one] at this
  have hj0 : q.coeff j ≠ 0 := by
    intro h; rw [h, norm_zero] at hge; linarith
  set u := (q.coeff j)⁻¹ with hu
  have hle : ∀ i, ‖u * q.coeff i‖ ≤ 1 := by
    intro i
    rw [norm_mul, norm_inv]
    by_cases hi : i ≤ q.natDegree
    · have := hmax i (by simp; omega)
      rw [inv_mul_le_iff₀ (by linarith), mul_one]
      exact this
    · rw [Polynomial.coeff_eq_zero_of_natDegree_lt (p := q) (n := i) (by omega), norm_zero, mul_zero]
      exact zero_le_one
  have hlift : Polynomial.C u * q ∈ Polynomial.lifts (PadicInt.Coe.ringHom (p := l)) := by
    rw [Polynomial.lifts_iff_coeff_lifts]
    intro n
    rw [Polynomial.coeff_C_mul]
    exact ⟨⟨_, hle n⟩, rfl⟩
  obtain ⟨Q, hQ⟩ := (Polynomial.mem_lifts _).1 hlift
  have hQj : Q.coeff j = 1 := by
    have := congrArg (fun P => P.coeff j) hQ
    simp only [Polynomial.coeff_map, Polynomial.coeff_C_mul] at this
    apply Subtype.ext
    rw [PadicInt.coe_one]
    exact this.trans (inv_mul_cancel₀ hj0)
  have hev : Polynomial.eval₂ (iZ K) x Q = 0 := by
    apply Subtype.ext
    have h2 := Polynomial.hom_eval₂ Q (iZ K) (OK l K).subtype x
    change (OK l K).subtype (Polynomial.eval₂ (iZ K) x Q) = 0
    rw [h2]
    change Polynomial.eval₂ ((algebraMap ℚ_[l] K).comp PadicInt.Coe.ringHom) (x.1 : K) Q = 0
    rw [← Polynomial.eval₂_map, hQ, ← Polynomial.aeval_def, map_mul, Polynomial.aeval_C, minpoly.aeval, mul_zero]
  refine ⟨Q.map PadicInt.toZMod, ?_, ?_⟩
  · intro h
    have := congrArg (fun P => P.coeff j) h
    simp only [Polynomial.coeff_map, hQj, map_one, Polynomial.coeff_zero] at this
    exact one_ne_zero this
  · rw [Polynomial.aeval_def, Polynomial.eval₂_map]
    have hcomp : (algebraMap (ZMod l) r.k).comp PadicInt.toZMod = r.ρ.comp (iZ K) :=
      RingHom.ext fun a => (rho_iZ r a).symm
    rw [hcomp, ← Polynomial.hom_eval₂, hev, map_zero]

end CrystallineSemistableComparison.Pb.G3
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.WFixAlg =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.NormLLtOne =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.NormLLtOne", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.IsUnitWitt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.BcrisRegularPeriodRing\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.WFixAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.Pb.G3

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem norm_l_lt_one : ‖((l : ℕ) : ℂ_[l])‖ < 1 := by
  exact IsPerfectoidField.norm_natCast_lt_one

theorem tilt_fix (r : Res l K) (σ : Gal(PadicAlgCl l/K)) (c : r.k) (f : ℕ) (hf : 0 < f) (hc : c ^ (l ^ f) = c) :
    preTiltMap l (galCp σ : ℂ_[l] →+* ℂ_[l]) (AInf.norm_galCp_toRingHom σ) (r.s c) = r.s c := by
  set τ := preTiltMap l (galCp σ : ℂ_[l] →+* ℂ_[l]) (AInf.norm_galCp_toRingHom σ) with hτ
  obtain ⟨x, rfl⟩ := r.surj c
  set a := r.s (r.ρ x) with ha
  have hd : (τ a - a) ^ (l ^ f) = τ a - a := by
    rw [sub_pow_char_pow, ← map_pow, ha, ← map_pow, hc]
  have h1 : ‖((PreTilt.untilt (τ a) : OC l) : ℂ_[l]) - ((PreTilt.untilt a : OC l) : ℂ_[l])‖ < 1 := by
    have hx := r.hs x
    rw [← ha] at hx
    push_cast at hx
    have e1 : ((PreTilt.untilt (τ a) : OC l) : ℂ_[l]) = galCp σ ((PreTilt.untilt a : OC l) : ℂ_[l]) :=
      coe_untilt_preTiltMap _ _ a
    have e2 : galCp σ ((okToOC l K x : OC l) : ℂ_[l]) = ((okToOC l K x : OC l) : ℂ_[l]) :=
      congrArg Subtype.val (galOC_okToOC σ x)
    have h2 : ‖((PreTilt.untilt (τ a) : OC l) : ℂ_[l]) - ((okToOC l K x : OC l) : ℂ_[l])‖ < 1 := by
      rw [e1, ← e2, ← map_sub]
      exact (AInf.norm_galCp_toRingHom σ _).trans_lt hx
    have e3 : ((PreTilt.untilt (τ a) : OC l) : ℂ_[l]) - ((PreTilt.untilt a : OC l) : ℂ_[l]) =
        (((PreTilt.untilt (τ a) : OC l) : ℂ_[l]) - ((okToOC l K x : OC l) : ℂ_[l])) +
          -(((PreTilt.untilt a : OC l) : ℂ_[l]) - ((okToOC l K x : OC l) : ℂ_[l])) := by ring
    rw [e3]
    exact (IsUltrametricDist.norm_add_le_max _ _).trans_lt (max_lt h2 (by rw [norm_neg]; exact hx))
  have h3 : ‖((PreTilt.untilt (τ a - a) : OC l) : ℂ_[l])‖ < 1 := by
    have hm : Ideal.Quotient.mk (Ideal.span {((l : ℕ) : OC l)}) (PreTilt.untilt (τ a - a)) =
        Ideal.Quotient.mk (Ideal.span {((l : ℕ) : OC l)}) (PreTilt.untilt (τ a) - PreTilt.untilt a) := by
      simp only [IsPerfectoidField.mk_untilt, map_sub]
    obtain ⟨z, hz⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq.1 hm)
    have e4 : ((PreTilt.untilt (τ a - a) : OC l) : ℂ_[l]) = (((z * (l : OC l) : OC l)) : ℂ_[l]) +
        (((PreTilt.untilt (τ a) : OC l) : ℂ_[l]) - ((PreTilt.untilt a : OC l) : ℂ_[l])) := by
      rw [hz]; push_cast; ring
    rw [e4]
    refine (IsUltrametricDist.norm_add_le_max _ _).trans_lt (max_lt ?_ h1)
    push_cast
    rw [norm_mul]
    calc ‖(z : ℂ_[l])‖ * ‖((l : ℕ) : ℂ_[l])‖ ≤ 1 * ‖((l : ℕ) : ℂ_[l])‖ :=
          mul_le_mul_of_nonneg_right (mem_normInteger.1 z.2) (norm_nonneg _)
      _ < 1 := by rw [one_mul]; exact norm_l_lt_one
  have h4 : ‖((PreTilt.untilt (τ a - a) : OC l) : ℂ_[l])‖ ^ (l ^ f) = ‖((PreTilt.untilt (τ a - a) : OC l) : ℂ_[l])‖ := by
    conv_rhs => rw [← hd]
    rw [map_pow, SubmonoidClass.coe_pow, norm_pow]
  have h5 : ‖((PreTilt.untilt (τ a - a) : OC l) : ℂ_[l])‖ = 0 := by
    by_contra hne
    have hpos := lt_of_le_of_ne (norm_nonneg _) (Ne.symm hne)
    have hl : 1 < l ^ f := Nat.one_lt_pow hf.ne' (Fact.out : l.Prime).one_lt
    exact (pow_lt_self_of_lt_one₀ hpos h3 hl).ne h4
  have h6 : PreTilt.untilt (τ a - a) = 0 := Subtype.ext (by rw [norm_eq_zero.1 h5]; rfl)
  exact sub_eq_zero.1 ((IsPerfectoidField.untilt_eq_zero_iff l).1 h6)

theorem w_fix (r : Res l K) [FiniteDimensional ℚ_[l] K] (g : K.fixingSubgroup) (w : WittVector l r.k) :
    (per l K).σA g (r.w w) = r.w w := by
  change ACris.galCris (IntermediateField.fixingSubgroupEquiv K g) ((algebraMap (Ainf l) (Acris l)) (WittVector.map r.s w)) =
    (algebraMap (Ainf l) (Acris l)) (WittVector.map r.s w)
  rw [← ACris.gal_smul_def, ACris.gal_smul_algebraMap, AInf.gal_smul_def]
  congr 1
  change WittVector.map _ (WittVector.map r.s w) = _
  ext n
  rw [WittVector.map_coeff, WittVector.map_coeff]
  obtain ⟨f, hf, hc⟩ := alg_pow r (w.coeff n)
  exact tilt_fix r _ _ f hf hc

end CrystallineSemistableComparison.Pb.G3
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.FrobeniusWittActions.FrobeniusNormBounds.NormLLtOne =====

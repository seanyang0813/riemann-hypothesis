module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CfCoe
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.IsCompactSpanRange
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.MemUniformizerHermitianIdeal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CrossMSmulRight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.OrbAllOfUnitV
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.FFInertB
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.HRAddRight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.EtaSpHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.NormOneUnitFixedPoints
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.ResAlgOfSp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.UnitNormOfRes
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.GramCoord
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.NearTIff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CoordComb, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIff, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CorOneRed

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CoordComb =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CoordComb", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CfCoe\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.IsCompactSpanRange\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.MemUniformizerHermitianIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmVg

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain PI.OmLocU PI.OmLocU.Red
  Topology Filter
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)
  (v : HeightOneSpectrum (𝓞 F)) (Λ : Set (Fin n → E))

theorem exists_pow_mem {ϖ : Fv F v} (hϖ : IsUnif v ϖ) {a : ℕ} (c : Fin a → Fv F v ⊗[F] E) :
    ∃ m : ℕ, ∀ i, sc (E := E) v (ϖ ^ m) * c i ∈ OEv (E := E) v := by
  obtain ⟨-, hπ, -⟩ := unif_spec v ϖ hϖ
  have hN : OEv (E := E) v ∈ 𝓝 (0 : Fv F v ⊗[F] E) := (isOpen_oEv v).mem_nhds (Orb.oev_zero v)
  obtain ⟨m, hm⟩ := PI.VolStabSW.eventually_smul_sub (Set.range c) (Set.finite_range c).isCompact
    (fun k => ϖ ^ k) hπ _ hN
  exact ⟨m, fun i => by rw [← smul_eq_sc]; exact hm _ ⟨i, rfl⟩⟩

variable (hSD : IsSDLoc σ J v Λ) {e : Fin n → Fin n → Fv F v ⊗[F] E} (he : Orb.IsOBas v Λ e)
  (he1 : gramR (Fv F v) σ J e = 1)

theorem coord_comb {K : Type} [CommRing K] (π : OR (E := E) v →+* K) {a : ℕ} (x : lamA v Λ a)
    (d : Fin a → OR (E := E) v) (p : Fin n)
    (hw : hR (Fv F v) σ J (e p) (∑ i, (d i : Fv F v ⊗[F] E) • (x : TupV (E := E) v n a) i) ∈ OR (E := E) v) :
    π ⟨_, hw⟩ = ∑ i, π (d i) * phi σ J v Λ hSD he π a x i p := by
  have e1 : (⟨_, hw⟩ : OR (E := E) v) = ∑ i, d i * cf σ J v Λ hSD he x i p := by
    apply Subtype.ext
    simp only [AddSubmonoidClass.coe_finsetSum, Subring.coe_mul, cf_coe]
    rw [Orb.hR_sum_right σ J v]

  rw [e1, map_sum]
  simp only [map_mul, phi_apply]


include he1 in
theorem ker_vec {ϖ : Fv F v} {K : Type} [CommRing K] {τ : K →+* K} {π : OR (E := E) v →+* K}
    (hπ : IsRes σ v ϖ τ π) {w : Fin n → Fv F v ⊗[F] E} (hw : w ∈ latLoc (E := E) v Λ)
    (h0 : ∀ p, π ⟨hR (Fv F v) σ J (e p) w, (hSD _).1 hw _ (bas_mem v Λ he p)⟩ = 0) :
    ∃ w' ∈ latLoc (E := E) v Λ, w = sc (E := E) v ϖ • w' := by
  have hP : ∀ p, ∃ d ∈ OEv (E := E) v, hR (Fv F v) σ J (e p) w = sc (E := E) v ϖ * d :=
    fun p => (hπ.2.1 _).1 (h0 p)
  choose d hd hde using hP
  refine ⟨∑ p, d p • e p, (he _).2 ⟨d, hd, rfl⟩, ?_⟩
  rw [expand σ J v Λ he he1 hw, Finset.smul_sum]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [hde, smul_smul]

end PI.OmVg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CoordComb =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIff =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIff", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CfCoe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CrossMSmulRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.MemUniformizerHermitianIdeal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.OrbAllOfUnitV\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CoordComb\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmVg

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain PI.OmLocU PI.OmLocU.Red
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)
  (v : HeightOneSpectrum (𝓞 F)) (Λ : Set (Fin n → E))
  (hSD : IsSDLoc σ J v Λ) {e : Fin n → Fin n → Fv F v ⊗[F] E} (he : Orb.IsOBas v Λ e)
  (he1 : gramR (Fv F v) σ J e = 1)


include he1 in
theorem prim_iff (hL : ∃ L : Submodule (𝓞 E) (Fin n → E), Submodule.IsLattice E L ∧ (L : Set (Fin n → E)) = Λ)
    {ϖ : Fv F v} (hϖ : IsUnif v ϖ) {K : Type} [CommRing K] {τ : K →+* K} {π : OR (E := E) v →+* K}
    (hπ : IsRes σ v ϖ τ π) {a : ℕ} (x : lamA v Λ a) :
    IsPrim v Λ (x : TupV (E := E) v n a) ↔ LinearIndependent K (phi σ J v Λ hSD he π a x) := by
  obtain ⟨h0, -, hint⟩ := unif_spec v ϖ hϖ
  have hcomb : ∀ d : Fin a → OR (E := E) v,
      (∑ i, (d i : Fv F v ⊗[F] E) • (x : TupV (E := E) v n a) i) ∈ latLoc (E := E) v Λ := fun d =>
    Submodule.sum_mem _ fun i _ => Orb.oSmul v Λ hL _ (d i).2 _ (memA v Λ x i)
  rw [Fintype.linearIndependent_iff]
  constructor
  · intro hP κ hκ i
    choose d hd using fun j => hπ.1 (κ j)
    have hw := hcomb d
    have hz : ∀ p, π ⟨hR (Fv F v) σ J (e p) (∑ j, (d j : Fv F v ⊗[F] E) • (x : TupV (E := E) v n a) j),
        (hSD _).1 hw _ (bas_mem v Λ he p)⟩ = 0 := by
      intro p
      refine (coord_comb σ J v Λ hSD he π x d p _).trans ?_
      have := congrFun hκ p
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply] at this
      simpa [hd] using this
    obtain ⟨w', hw', hww⟩ := ker_vec σ J v Λ hSD he he1 hπ hw hz
    have hc := hP.2 (fun j => sc (E := E) v ϖ⁻¹ * d j) (by
      have e2 : (∑ j, (sc (E := E) v ϖ⁻¹ * d j) • (x : TupV (E := E) v n a) j) =
          sc (E := E) v ϖ⁻¹ • ∑ j, (d j : Fv F v ⊗[F] E) • (x : TupV (E := E) v n a) j := by
        rw [Finset.smul_sum]
        exact Finset.sum_congr rfl fun j _ => by rw [smul_smul]
      rw [e2, hww, smul_smul, sc_mul, inv_mul_cancel₀ h0, sc_one, one_smul]
      exact hw') i
    rw [← hd i]
    apply (hπ.2.1 _).2
    refine ⟨_, hc, ?_⟩
    rw [← mul_assoc, sc_mul, mul_inv_cancel₀ h0, sc_one, one_mul]
  · intro hLI
    refine ⟨fun i => memA v Λ x i, fun c hc => ?_⟩
    have key : ∀ m : ℕ, ∀ c : Fin a → Fv F v ⊗[F] E,
        (∑ i, c i • (x : TupV (E := E) v n a) i) ∈ latLoc (E := E) v Λ →
        (∀ i, sc (E := E) v (ϖ ^ m) * c i ∈ OEv (E := E) v) → ∀ i, c i ∈ OEv (E := E) v := by
      intro m
      induction m with
      | zero => intro c _ hm i; simpa [sc_one] using hm i
      | succ m ih =>
        intro c hc hm
        apply ih c hc
        set u := ∑ i, c i • (x : TupV (E := E) v n a) i with hu
        have hpm : sc (E := E) v (ϖ ^ m) ∈ OEv (E := E) v := by
          simpa using sc_mul_mem_oEv v (pow_mem hint m) (Orb.oSub (E := E) v).1
        have hu' : sc (E := E) v (ϖ ^ m) • u ∈ latLoc (E := E) v Λ := Orb.oSmul v Λ hL _ hpm _ hc
        let d : Fin a → OR (E := E) v := fun i => ⟨_, hm i⟩
        have hwe : (∑ i, (d i : Fv F v ⊗[F] E) • (x : TupV (E := E) v n a) i) =
            sc (E := E) v ϖ • (sc (E := E) v (ϖ ^ m) • u) := by
          rw [smul_smul, sc_mul, ← pow_succ', hu, Finset.smul_sum]
          exact Finset.sum_congr rfl fun i _ => by rw [smul_smul]
        have hw := hcomb d
        have hz : ∀ p, ∑ i, π (d i) * phi σ J v Λ hSD he π a x i p = 0 := by
          intro p
          rw [← coord_comb σ J v Λ hSD he π x d p ((hSD _).1 hw _ (bas_mem v Λ he p))]
          apply (hπ.2.1 _).2
          refine ⟨hR (Fv F v) σ J (e p) (sc (E := E) v (ϖ ^ m) • u),
            (hSD _).1 hu' _ (bas_mem v Λ he p), ?_⟩
          show hR (Fv F v) σ J (e p) (∑ i, (d i : Fv F v ⊗[F] E) • (x : TupV (E := E) v n a) i) = _
          rw [hwe, Orb.hR_smul_right]
        have hd0 := hLI (fun i => π (d i)) (by
          funext p
          simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply]
          exact hz p)
        intro i
        obtain ⟨g, hg, hge⟩ := (hπ.2.1 (d i)).1 (hd0 i)
        have : sc (E := E) v (ϖ ^ m) * c i = g := by
          have h1 : sc (E := E) v ϖ * (sc (E := E) v (ϖ ^ m) * c i) = sc (E := E) v ϖ * g := by
            rw [← mul_assoc, sc_mul, ← pow_succ']
            exact hge
          have h2 := congrArg (fun y => sc (E := E) v ϖ⁻¹ * y) h1
          simp only [← mul_assoc, sc_mul, inv_mul_cancel₀ h0, sc_one, one_mul] at h2
          exact h2
        rw [this]
        exact hg
    obtain ⟨m, hm⟩ := exists_pow_mem v hϖ c
    exact key m c hc hm

end PI.OmVg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIff =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CorOneRed =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CorOneRed", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.FFInertB\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.HRAddRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.EtaSpHolds\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.GramCoord\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.NearTIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.NormOneUnitFixedPoints\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.ResAlgOfSp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.UnitNormOfRes\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CfCoe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.LocDensFF\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmVg

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain PI.OmLocU PI.OmLocU.Red
  PI.VolStabSW
open PI.VolStabS (ffGram)
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ)
  (v : HeightOneSpectrum (𝓞 F)) (Λ : Set (Fin n → E))

theorem card_clsP (hL : ∃ L : Submodule (𝓞 E) (Fin n → E), Submodule.IsLattice E L ∧ (L : Set (Fin n → E)) = Λ)
    (hcm : IsCMExt F E σ) (hJ : ∀ i j, σ (J j i) = J i j) (hSD : IsSDLoc σ J v Λ)
    {e : Fin n → Fin n → Fv F v ⊗[F] E} (he : Orb.IsOBas v Λ e) (he1 : gramR (Fv F v) σ J e = 1)
    {ϖ : Fv F v} (hϖ : IsUnif v ϖ) {K : Type} [CommRing K] (τ : K →+* K) (π : OR (E := E) v →+* K)
    (hπ : IsRes σ v ϖ τ π) {a : ℕ} (T : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E))
    (hT : ∀ i j, T i j ∈ OR (E := E) v) :
    Nat.card (PI.OmVd.clsP σ J v Λ a ϖ T) =
      Nat.card {X : Fin a → Fin n → K //
        ffGram τ 1 X = (fun i j => π ⟨T i j, hT i j⟩) ∧ LinearIndependent K X} := by
  set Φ := phi σ J v Λ hSD he π a with hΦ
  let eq : (lamA v Λ a ⧸ (lamP v Λ a ϖ).addSubgroupOf (lamA v Λ a)) ≃+ (Fin a → Fin n → K) :=
    (QuotientAddGroup.quotientAddEquivOfEq (phi_ker σ J v Λ hSD he he1 hπ a)).trans
      (QuotientAddGroup.quotientKerEquivOfSurjective Φ (phi_surj σ J v Λ hSD he he1 hπ a))
  have heq : ∀ x : lamA v Λ a, eq (QuotientAddGroup.mk x) = Φ x := fun x => rfl
  set P : (Fin a → Fin n → K) → Prop := fun M =>
    ffGram τ 1 M = (fun i j => π ⟨T i j, hT i j⟩) ∧ LinearIndependent K M with hP
  have hset : PI.OmVd.clsP σ J v Λ a ϖ T = {q | P (eq q)} := by
    ext q
    induction q using QuotientAddGroup.induction_on with
    | H x =>
      constructor
      · rintro ⟨y, ⟨hyP, hyN⟩, hyx⟩
        show P (eq (QuotientAddGroup.mk x))
        rw [← hyx, heq]
        exact ⟨(nearT_iff σ J v Λ hcm hJ hSD he he1 hπ T hT y).1 hyN,
          (prim_iff σ J v Λ hSD he he1 hL hϖ hπ y).1 hyP⟩
      · intro hx
        have h2 : P (eq (QuotientAddGroup.mk x)) := hx
        rw [heq] at h2
        exact ⟨x, ⟨(prim_iff σ J v Λ hSD he he1 hL hϖ hπ x).2 h2.2,
          (nearT_iff σ J v Λ hcm hJ hSD he he1 hπ T hT x).2 h2.1⟩, rfl⟩
  rw [hset]
  exact Nat.card_congr (Equiv.subtypeEquiv (p := fun q => q ∈ {q | P (eq q)}) eq.toEquiv (fun q => Iff.rfl))

def GramCor (ϖ : Fv F v) {a : ℕ} (T : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) : Prop :=
  ∃ i₀ : Fin a, (∀ j, T i₀ j ∈ PO (E := E) v ϖ) ∧ (∀ j, T j i₀ ∈ PO (E := E) v ϖ) ∧
    ∃ w ∈ OEv (E := E) v, (T + Matrix.single i₀ i₀ 1).det * w = 1

theorem corOne_red {ϖ : Fv F v} {K : Type} [CommRing K] {τ : K →+* K} {π : OR (E := E) v →+* K}
    (hπ : IsRes σ v ϖ τ π) {a : ℕ} (T : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E))
    (hT : ∀ i j, T i j ∈ OR (E := E) v) (hC : GramCor v ϖ T) :
    PI.OmVd.CorOne (fun i j => π ⟨T i j, hT i j⟩ : Matrix (Fin a) (Fin a) K) := by
  obtain ⟨i₀, hr, hc, w, hw, hd⟩ := hC
  refine ⟨i₀, fun j => (hπ.2.1 _).2 (hr j), fun j => (hπ.2.1 _).2 (hc j), ?_⟩
  have hT' : ∀ i j, (T + Matrix.single i₀ i₀ 1 : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) i j ∈ OR (E := E) v := by
    intro i j
    rw [Matrix.add_apply, Matrix.single_apply]
    split_ifs
    · exact (OR (E := E) v).add_mem (hT i j) (OR (E := E) v).one_mem
    · simpa using hT i j
  convert det_red v π _ hT' hw hd using 2
  congr 1
  ext i j
  by_cases h : i₀ = i ∧ i₀ = j
  · obtain ⟨h1', h2'⟩ := h
    subst h1'
    subst h2'
    have h1 : (⟨(T + Matrix.single i₀ i₀ 1 : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) i₀ i₀, hT' i₀ i₀⟩ :
        OR (E := E) v) = ⟨T i₀ i₀, hT i₀ i₀⟩ + 1 := by
      apply Subtype.ext
      simp [Matrix.add_apply]
    rw [h1, map_add (f := _), map_one]
    show π ⟨T i₀ i₀, hT i₀ i₀⟩ + (Matrix.single i₀ i₀ 1 : Matrix (Fin a) (Fin a) K) i₀ i₀ = _
    simp
  · have h1 : (⟨(T + Matrix.single i₀ i₀ 1 : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) i j, hT' i j⟩ :
        OR (E := E) v) = ⟨T i j, hT i j⟩ := by
      apply Subtype.ext
      simp [Matrix.add_apply, h]
    rw [h1]
    show π ⟨T i j, hT i j⟩ + (Matrix.single i₀ i₀ 1 : Matrix (Fin a) (Fin a) K) i j = _
    simp [h]

theorem redP_of_gramCor (a : ℕ) (Y : TupV (E := E) v n a)
    (hC : ∀ ϖ : Fv F v, IsUnif v ϖ → GramCor v ϖ (gramR (Fv F v) σ J Y)) :
    PI.OmVd.RedP σ J ψ v Λ a Y := by
  intro hG ϖ hϖ
  have hR : ResAlg σ J ψ v := resAlg_of_sp σ J ψ v (etaSp_holds σ J ψ v)
  have hU : Orb.UnitV σ J ψ v Λ :=
    Orb.unitV_of σ J ψ v Λ (NormOneUnitFixedPoints.normOne_of σ J ψ v hR) (UnN.unitNorm_of_res σ J ψ v Λ hR)
  have hstd := hG.1
  have hcm := hstd.1
  have hJ : ∀ i j, σ (J j i) = J i j := hstd.2.1.1
  have hL := hG.2.1
  have hSD : IsSDLoc σ J v Λ := hG.2.2.1
  obtain ⟨e, he, he1⟩ := oBas1_of_unitV σ J ψ v Λ hU hstd hL hSD hG.2.2.2.1
  have hY := hG.2.2.2.2.2.1
  have hT : ∀ i j, gramR (Fv F v) σ J Y i j ∈ OR (E := E) v := fun i j =>
    (hSD (Y j)).1 (hY j) (Y i) (hY i)
  have hconj : ∀ i j, gramR (Fv F v) σ J Y i j = sigR (Fv F v) σ (gramR (Fv F v) σ J Y j i) := fun i j =>
    (Orb.hR_conj σ J v hcm hJ (Y j) (Y i)).symm
  obtain ⟨k, _, _, hk, h⟩ := hR hstd hG.2.2.2.1 ϖ hϖ
  refine ⟨k, inferInstance, inferInstance, hk, ?_⟩
  rcases h with ⟨hη, K, _, _, σ', π, hσ, h2, hne, hπ⟩ | ⟨hη, π, hπ⟩
  · refine Or.inl ⟨hη, K, inferInstance, inferInstance, σ', 1, fun i j => π ⟨_, hT i j⟩, hσ, h2, hne, ?_,
      by simp, ?_, corOne_red σ v hπ _ hT (hC ϖ hϖ),
      card_clsP σ J v Λ hL hcm hJ hSD he he1 hϖ (σ' : K →+* K) π hπ _ hT⟩
    · intro i j
      by_cases h : i = j
      · subst h; simp
      · simp [h, Ne.symm h]
    · intro i j
      exact (hπ.2.2 _ _ (hconj i j)).symm
  · refine Or.inr ⟨hη, 1, fun i j => π ⟨_, hT i j⟩, ?_, by simp, ?_, corOne_red σ v hπ _ hT (hC ϖ hϖ),
      card_clsP σ J v Λ hL hcm hJ hSD he he1 hϖ (RingEquiv.prodComm (R := k) (S := k)).toRingHom π hπ _ hT⟩
    · intro i j
      by_cases h : i = j
      · subst h; ext <;> simp
      · ext <;> simp [h, Ne.symm h]
    · intro i j
      exact (hπ.2.2 _ _ (hconj i j)).symm

end PI.OmVg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CorOneRed =====

module

public import Formalism.LocalToGlobal.GlobalTheory.EqGlobOfHat
public import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.PClassD
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelv
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.UpLatLoc0Of
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.StabiliserOfLocalTransport
public import Formalism.LocalToGlobal.GlobalTheory.GL4.PFrCore
public import Formalism.LocalToGlobal.HermitianForms.PrkSmul
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnIncInt0Of
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.CharacterFiniteLevelZeroOfForms
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiamondPreservesRationalFormZero
public import Formalism.LocalToGlobal.GlobalTheory.GL6.FrobeniusNoKernelOfFrobeniusSimilitude
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocElim
public import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocInd
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfIncrements
public import Formalism.SharpRestriction.GlobalSchurBounds.IntegralityOfRationalityLocal
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AdelstabL
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV
import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.PClassE
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsEquiv
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf
import Formalism.LocalToGlobal.GlobalTheory.GL6.PKerAtP
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntInvOfLoc

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayLoc, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayCore, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatKer, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatB, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DownOperatorPreservesRationalForm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfLattices, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAwayUp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAway, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IntegralAtT0Lattice

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayLoc =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayLoc", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.EqGlobOfHat\npublic import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.PClassD\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AdelstabL\npublic import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix TensorProduct NumberField IsDedekindDomain Formalism.UG Formalism.UG.P

namespace PI.UnitaryGroupMassFormula.IAT

section AwayLocSec

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

theorem locv_incl_int (v : HeightOneSpectrum (𝓞 F)) (e : E) (he : IsIntegral ℤ e) :
    Formalism.UG.inclE (F := F) (v.adicCompletion F) e ∈ Formalism.L2.Geo.Def.PC.SV E v := by
  have he' : e ∈ intOE E := ⟨⟨e, he⟩, rfl⟩
  exact levelv_tmul_mem v e he' 1 (one_mem _)

theorem locv_upper (v : HeightOneSpectrum (𝓞 F)) (Λ : Submodule (𝓞 E) (Fin n → E))
    (hfin : Module.Finite (𝓞 E) Λ) :
    ∃ m : ℤ, m ≠ 0 ∧ ∀ z ∈ Formalism.L2.Geo.Def.PC.latV v Λ, ∀ i,
      Formalism.UG.inclE (F := F) (v.adicCompletion F) (m : E) * z i ∈ Formalism.L2.Geo.Def.PC.SV E v := by
  classical
  obtain ⟨t, ht⟩ : Λ.FG := Module.Finite.iff_fg.mp hfin
  obtain ⟨m, hm0, hm⟩ := adelstabL_den (fun p : t × Fin n => (p.1 : Fin n → E) p.2)
  have hΛ : ∀ x ∈ Λ, ∀ k, IsIntegral ℤ ((m : E) * x k) := by
    intro x hx
    rw [← ht] at hx
    induction hx using Submodule.span_induction with
    | mem x hx => intro k; exact hm (⟨x, hx⟩, k)
    | zero => intro k; simp [isIntegral_zero]
    | add x y _ _ hx hy => intro k; simpa [mul_add] using (hx k).add (hy k)
    | smul r x _ hx =>
      intro k
      have : (m : E) * (r • x) k = algebraMap (𝓞 E) E r * ((m : E) * x k) := by
        simp [Algebra.smul_def]; ring
      rw [this]
      exact (RingOfIntegers.isIntegral_coe r).mul (hx k)
  refine ⟨m, hm0, fun z hz => ?_⟩
  induction hz using Submodule.span_induction with
  | mem z hz =>
    obtain ⟨x, hx, rfl⟩ := hz
    intro i
    rw [← map_mul]
    exact locv_incl_int v _ (hΛ x hx i)
  | zero => intro i; simp
  | add a b _ _ ha hb => intro i; rw [Pi.add_apply, mul_add]; exact add_mem (ha i) (hb i)
  | smul s a _ ha =>
    intro i
    rw [Pi.smul_apply, Subring.smul_def, smul_eq_mul, mul_left_comm]
    exact mul_mem s.2 (ha i)

theorem locv_lower (v : HeightOneSpectrum (𝓞 F)) (Λ : Submodule (𝓞 E) (Fin n → E))
    (hspan : Submodule.span E (Λ : Set (Fin n → E)) = ⊤) :
    ∃ m : ℤ, m ≠ 0 ∧ ∀ w : Fin n → E ⊗[F] v.adicCompletion F, (∀ i, w i ∈ Formalism.L2.Geo.Def.PC.SV E v) →
      (fun i => Formalism.UG.inclE (F := F) (v.adicCompletion F) (m : E) * w i) ∈ Formalism.L2.Geo.Def.PC.latV v Λ := by
  classical
  have hk : ∀ k : Fin n, ∃ N : ℕ, ∃ f : Fin N → E, ∃ w : Fin N → Λ,
      ∑ j, f j • (w j : Fin n → E) = Pi.single k 1 := by
    intro k
    have : (Pi.single k 1 : Fin n → E) ∈ Submodule.span E (Λ : Set (Fin n → E)) := by
      rw [hspan]; exact Submodule.mem_top
    obtain ⟨N, f, w, h⟩ := Submodule.mem_span_set'.1 this
    exact ⟨N, f, fun j => ⟨w j, (w j).2⟩, h⟩
  choose N f w hw using hk
  obtain ⟨m, hm0, hm⟩ := adelstabL_den (fun p : Σ k : Fin n, Fin (N k) => f p.1 p.2)
  have hsingle : ∀ k, (Pi.single k (m : E) : Fin n → E) ∈ Λ := by
    intro k
    have : (Pi.single k (m : E) : Fin n → E) =
        ∑ j, (⟨(m : E) * f k j, hm ⟨k, j⟩⟩ : 𝓞 E) • (w k j : Fin n → E) := by
      have h1 : (Pi.single k (m : E) : Fin n → E) = (m : E) • (Pi.single k 1 : Fin n → E) := by
        rw [← Pi.single_smul', smul_eq_mul, mul_one]
      rw [h1, ← hw k, Finset.smul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [← algebraMap_smul E, smul_smul]
      rfl
    rw [this]
    exact sum_mem fun j _ => Λ.smul_mem _ (w k j).2
  refine ⟨m, hm0, fun y hy => ?_⟩
  have : (fun i => Formalism.UG.inclE (F := F) (v.adicCompletion F) (m : E) * y i) =
      ∑ k, (⟨y k, hy k⟩ : Formalism.L2.Geo.Def.PC.SV E v) •
        (fun i => Formalism.UG.inclE (F := F) (v.adicCompletion F) ((Pi.single k (m : E) : Fin n → E) i)) := by
    ext i
    rw [Finset.sum_apply, Finset.sum_eq_single i]
    · show _ = (_ : Formalism.L2.Geo.Def.PC.SV E v) •
        Formalism.UG.inclE (F := F) (v.adicCompletion F) ((Pi.single i (m : E) : Fin n → E) i)
      rw [Pi.single_eq_same, Subring.smul_def, smul_eq_mul, mul_comm]
    · intro k _ hki
      show (_ : Formalism.L2.Geo.Def.PC.SV E v) •
        Formalism.UG.inclE (F := F) (v.adicCompletion F) ((Pi.single k (m : E) : Fin n → E) i) = 0
      rw [Pi.single_apply, if_neg (Ne.symm hki), map_zero, smul_zero]
    · exact fun h => absurd (Finset.mem_univ i) h
  rw [this]
  exact sum_mem fun k _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, hsingle k, rfl⟩)

end AwayLocSec

theorem loc_bound {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}
    (v : IsDedekindDomain.HeightOneSpectrum (𝓞 F)) (Λ : Submodule (𝓞 E) (Fin n → E)) (hΛ : Formalism.L2.GlobalTheoryTheory.Comp.IsLat Λ)
    (M : Matrix (Fin n) (Fin n) (E ⊗[F] v.adicCompletion F)) :
    ∃ N : ℤ, N ≠ 0 ∧ ∀ z ∈ Formalism.L2.Geo.Def.PC.latV v Λ,
      (fun i => inclE (F := F) (v.adicCompletion F) ((N : ℤ) : E) * (M *ᵥ z) i) ∈ Formalism.L2.Geo.Def.PC.latV v Λ := by
  obtain ⟨mu, hmu, hu⟩ := locv_upper v Λ hΛ.1
  obtain ⟨ml, hml, hl⟩ := locv_lower v Λ hΛ.2
  obtain ⟨N0, hN0, hN⟩ := levelv_denom_family v (fun p : Fin n × Fin n => M p.1 p.2)
  refine ⟨ml * (N0 : ℤ) * mu, mul_ne_zero (mul_ne_zero hml (by exact_mod_cast hN0)) hmu, fun z hz => ?_⟩
  set w : Fin n → E ⊗[F] v.adicCompletion F :=
    fun i => N0 • (M *ᵥ fun j => inclE (F := F) (v.adicCompletion F) (mu : E) * z j) i with hw
  have hwS : ∀ i, w i ∈ Formalism.L2.Geo.Def.PC.SV E v := by
    intro i
    simp only [hw, Matrix.mulVec, dotProduct, Finset.smul_sum]
    exact sum_mem fun j _ => by rw [← smul_mul_assoc]; exact mul_mem (hN (i, j)) (hu z hz j)
  have e : (fun i => inclE (F := F) (v.adicCompletion F) (((ml * (N0 : ℤ) * mu : ℤ)) : E) * (M *ᵥ z) i) =
      fun i => inclE (F := F) (v.adicCompletion F) (ml : E) * w i := by
    funext i
    simp only [hw, Matrix.mulVec, dotProduct, Finset.mul_sum, Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [nsmul_eq_mul]
    push_cast
    simp only [map_mul, map_natCast]
    ring
  rw [e]
  exact hl w hwS

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayLoc =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayCore =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayCore", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.UpLatLoc0Of\npublic import Formalism.LocalToGlobal.GlobalTheory.EqGlobOfHat\npublic import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.PClassD\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.StabiliserOfLocalTransport\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV\nimport Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.PClassE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayLoc\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsEquiv\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelaf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix Formalism.UG
open scoped TensorProduct

namespace PI.UnitaryGroupMassFormula.IAT

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

theorem inclE_algebraMap' (R : Type) [CommRing R] [Algebra F R] (f : F) :
    inclE (F := F) R (algebraMap F E f) = (1 : E) ⊗ₜ[F] (algebraMap F R f) := by
  show algebraMap F E f ⊗ₜ[F] (1 : R) = _
  rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one f, TensorProduct.smul_tmul]

theorem exists_not_mem_valuation_div_le_one (v0 p : HeightOneSpectrum (𝓞 F)) (hne : v0 ≠ p) (N : ℤ) (hN : N ≠ 0) :
    ∃ s : 𝓞 F, s ∉ p.asIdeal ∧ v0.valuation F (algebraMap (𝓞 F) F s / (N : F)) ≤ 1 := by
  have hN' : ((N : 𝓞 F)) ≠ 0 := Int.cast_ne_zero.2 hN
  have hv : v0.intValuation (N : 𝓞 F) =
      WithZero.exp (-(multiplicity v0.asIdeal (Ideal.span {((N : 𝓞 F))}) : ℤ)) :=
    v0.intValuation_eq_exp_neg_multiplicity hN'
  have hnot : ¬ (v0.asIdeal ^ (multiplicity v0.asIdeal (Ideal.span {((N : 𝓞 F))})) ≤ p.asIdeal) := by
    intro h
    have := p.isPrime
    have h1 : v0.asIdeal ≤ p.asIdeal := Ideal.IsPrime.le_of_pow_le h
    exact hne (HeightOneSpectrum.ext (v0.isMaximal.eq_of_le p.isPrime.ne_top h1))
  obtain ⟨s, hs, hsp⟩ := Set.not_subset.1 hnot
  refine ⟨s, hsp, ?_⟩
  have hNF : (N : F) = algebraMap (𝓞 F) F (N : 𝓞 F) := (map_intCast _ N).symm
  rw [hNF, map_div₀, HeightOneSpectrum.valuation_of_algebraMap, HeightOneSpectrum.valuation_of_algebraMap, hv]
  rw [div_le_one₀ (zero_lt_iff.2 WithZero.exp_ne_zero)]
  exact (v0.intValuation_le_pow_iff_mem s _).2 hs

theorem away_core (Λ : Submodule (𝓞 E) (Fin n → E)) (hΛ : Formalism.L2.GlobalTheoryTheory.Comp.IsLat Λ)
    (g1 g2 : GL (Fin n) (E ⊗[F] FiniteAdeleRing (𝓞 F) F)) (v0 : HeightOneSpectrum (𝓞 F))
    (hst : ∀ q, q ≠ v0 → ∀ z ∈ Formalism.L2.Geo.Def.PC.latV q Λ,
      ((bc (prV (E := E) q) (g2⁻¹ * g1) : GL (Fin n) (E ⊗[F] q.adicCompletion F)) :
        Matrix (Fin n) (Fin n) (E ⊗[F] q.adicCompletion F)) *ᵥ z ∈ Formalism.L2.Geo.Def.PC.latV q Λ)
    (N : ℤ) (hN : N ≠ 0)
    (hM : ∀ z ∈ Formalism.L2.Geo.Def.PC.latV v0 Λ,
      (fun i => inclE (F := F) (v0.adicCompletion F) ((N : ℤ) : E) *
        ((((bc (prV (E := E) v0) (g2⁻¹ * g1) : GL (Fin n) (E ⊗[F] v0.adicCompletion F)) :
          Matrix (Fin n) (Fin n) (E ⊗[F] v0.adicCompletion F)) *ᵥ z) i)) ∈ Formalism.L2.Geo.Def.PC.latV v0 Λ)
    (s : 𝓞 F) (hs : v0.valuation F (algebraMap (𝓞 F) F s / (N : F)) ≤ 1)
    (x : Fin n → E) (hx : x ∈ Formalism.UG.CS.globLat g1 Λ) :
    (algebraMap (𝓞 F) (𝓞 E) s) • x ∈ Formalism.UG.CS.globLat g2 Λ := by
  set a : E := algebraMap F E (algebraMap (𝓞 F) F s) with ha
  have hcoe : algebraMap (𝓞 E) E (algebraMap (𝓞 F) (𝓞 E) s) = a := rfl
  have hxs : (fun i => inclE (F := F) (FiniteAdeleRing (𝓞 F) F) (((algebraMap (𝓞 F) (𝓞 E) s) • x) i)) =
      inclE (F := F) (FiniteAdeleRing (𝓞 F) F) a • (fun i => inclE (F := F) (FiniteAdeleRing (𝓞 F) F) (x i)) := by
    funext i
    rw [Pi.smul_apply, Pi.smul_apply, smul_eq_mul, Algebra.smul_def, hcoe, map_mul]
  set y : Fin n → E ⊗[F] FiniteAdeleRing (𝓞 F) F :=
    ((g1⁻¹ : GL (Fin n) _) : Matrix (Fin n) (Fin n) _) *ᵥ (fun i => inclE (F := F) (FiniteAdeleRing (𝓞 F) F) (x i))
    with hy
  have hyl : y ∈ Formalism.L2.Geo.Def.PC.latA (F := F) Λ := hx
  show ((g2⁻¹ : GL (Fin n) _) : Matrix (Fin n) (Fin n) _) *ᵥ
      (fun i => inclE (F := F) (FiniteAdeleRing (𝓞 F) F) (((algebraMap (𝓞 F) (𝓞 E) s) • x) i)) ∈
    Formalism.L2.Geo.Def.PC.latA (F := F) Λ
  have e2 : ((g2⁻¹ : GL (Fin n) _) : Matrix (Fin n) (Fin n) _) *ᵥ
      (fun i => inclE (F := F) (FiniteAdeleRing (𝓞 F) F) (x i)) =
      ((g2⁻¹ * g1 : GL (Fin n) _) : Matrix (Fin n) (Fin n) _) *ᵥ y := by
    rw [hy, mulVec_mulVec, ← Units.val_mul, mul_assoc, mul_inv_cancel, mul_one]
  rw [hxs, Matrix.mulVec_smul, e2]
  apply Formalism.L2.Geo.Def.PC.lg Λ hΛ.2
  intro q
  have hz := Formalism.L2.Geo.Def.PC.pr_lat q Λ y hyl
  have e3 : (fun i => prV (E := E) q ((inclE (F := F) (FiniteAdeleRing (𝓞 F) F) a •
      (((g2⁻¹ * g1 : GL (Fin n) _) : Matrix (Fin n) (Fin n) _) *ᵥ y)) i)) =
      fun i => inclE (F := F) (q.adicCompletion F) a *
        ((((bc (prV (E := E) q) (g2⁻¹ * g1) : GL (Fin n) (E ⊗[F] q.adicCompletion F)) :
          Matrix (Fin n) (Fin n) (E ⊗[F] q.adicCompletion F)) *ᵥ (fun j => prV (E := E) q (y j))) i) := by
    rw [← Formalism.L2.Geo.Def.PC.pr_mulVec]
    funext i
    rw [Pi.smul_apply, smul_eq_mul, map_mul]
    rfl
  rw [e3]
  by_cases hq : q = v0
  · subst hq
    have ho : algebraMap F (q.adicCompletion F) (algebraMap (𝓞 F) F s / (N : F)) ∈ q.adicCompletionIntegers F := by
      rw [HeightOneSpectrum.mem_adicCompletionIntegers, Formalism.UG.P.levelaf_valued_algebraMap]
      exact hs
    have hmem : (1 : E) ⊗ₜ[F] algebraMap F (q.adicCompletion F) (algebraMap (𝓞 F) F s / (N : F)) ∈
        tensInt (F := F) (q.adicCompletion F) (intOE E) (q.adicCompletionIntegers F).toSubring :=
      Subring.subset_closure (Or.inr ⟨⟨_, ho⟩, rfl⟩)
    have hNF : ((N : ℤ) : F) ≠ 0 := Int.cast_ne_zero.2 hN
    have hid : inclE (F := F) (q.adicCompletion F) a =
        ((1 : E) ⊗ₜ[F] algebraMap F (q.adicCompletion F) (algebraMap (𝓞 F) F s / (N : F))) *
          inclE (F := F) (q.adicCompletion F) ((N : ℤ) : E) := by
      rw [ha, show ((N : ℤ) : E) = algebraMap F E ((N : ℤ) : F) from (map_intCast _ N).symm,
        inclE_algebraMap', inclE_algebraMap', Algebra.TensorProduct.tmul_mul_tmul, one_mul, ← map_mul,
        div_mul_cancel₀ _ hNF]
    have := Submodule.smul_mem (Formalism.L2.Geo.Def.PC.latV q Λ) (⟨_, hmem⟩ : Formalism.L2.Geo.Def.PC.SV E q) (hM _ hz)
    convert this using 1
    funext i
    rw [Pi.smul_apply, Subring.smul_def, smul_eq_mul, hid, mul_assoc]
  · have hmem : inclE (F := F) (q.adicCompletion F) a ∈
        tensInt (F := F) (q.adicCompletion F) (intOE E) (q.adicCompletionIntegers F).toSubring :=
      Subring.subset_closure (Or.inl ⟨⟨a, ⟨algebraMap (𝓞 F) (𝓞 E) s, hcoe⟩⟩, rfl⟩)
    have := Submodule.smul_mem (Formalism.L2.Geo.Def.PC.latV q Λ) (⟨_, hmem⟩ : Formalism.L2.Geo.Def.PC.SV E q) (hst q hq _ hz)
    convert this using 1

end Gen

section F0

open Formalism.BasicNotions Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0

variable {D : D7} {u : D.what₂.Word}

theorem kappa_stab_dl (T : Forms0 D u) (κ : T.cls0.lev.U) :
    κ.1 ∈ stabGL (Formalism.L2.Geo.Def.PC.latA (F := D.host.F)
      (Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D 0 (Nat.zero_le _)) T.cls0.lev.Lb)) := by
  have hLb : Formalism.L2.GlobalTheoryTheory.Comp.IsLat T.cls0.lev.Lb := ⟨T.cls0.lev.Lb_fin, T.cls0.lev.Lb_span⟩
  have hΛ := dual_base_lattice_full T.cls0
  have hκ := level_stabilises_base_lattice T κ
  have hU := ((T.cls0.lev.U_eq _).1 κ.2).1
  have hfix : ∀ g : GL (Fin (D.R.N 0)) (D.host.E ⊗[D.host.F] FiniteAdeleRing (𝓞 D.host.F) D.host.F),
      g ∈ stabGL (Formalism.L2.Geo.Def.PC.latA (F := D.host.F) T.cls0.lev.Lb) → Formalism.UG.CS.globLat g T.cls0.lev.Lb = T.cls0.lev.Lb := by
    intro g hg
    conv_rhs => rw [← Formalism.L2.GlobalTheoryTheory.Comp.glob_one (F := D.host.F) hLb]
    ext x
    show ((g⁻¹ : GL (Fin (D.R.N 0)) (D.host.E ⊗[D.host.F] FiniteAdeleRing (𝓞 D.host.F) D.host.F)) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) (D.host.E ⊗[D.host.F] FiniteAdeleRing (𝓞 D.host.F) D.host.F)) *ᵥ _ ∈ Formalism.L2.Geo.Def.PC.latA (F := D.host.F) T.cls0.lev.Lb ↔
      ((((1 : GL (Fin (D.R.N 0)) (D.host.E ⊗[D.host.F] FiniteAdeleRing (𝓞 D.host.F) D.host.F)))⁻¹ : GL (Fin (D.R.N 0)) (D.host.E ⊗[D.host.F] FiniteAdeleRing (𝓞 D.host.F) D.host.F)) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) (D.host.E ⊗[D.host.F] FiniteAdeleRing (𝓞 D.host.F) D.host.F)) *ᵥ _ ∈ Formalism.L2.Geo.Def.PC.latA (F := D.host.F) T.cls0.lev.Lb
    rw [inv_one, Units.val_one, one_mulVec]
    exact ((inv_mem hg) _).symm
  have h1 := Formalism.L2.GlobalTheoryTheory.Comp.glob_dl_le (sigD D) (gramN D 0 (Nat.zero_le _)) T.cls0.lev.Lb κ.1 hU
  have h2 := Formalism.L2.GlobalTheoryTheory.Comp.glob_dl_le (sigD D) (gramN D 0 (Nat.zero_le _)) T.cls0.lev.Lb κ.1⁻¹ (inv_mem hU)
  rw [hfix _ hκ] at h1
  rw [hfix _ (inv_mem hκ)] at h2
  have h3 := Formalism.L2.GlobalTheoryTheory.Comp.glob_mono κ.1 h2
  rw [Formalism.L2.GlobalTheoryTheory.Comp.glob_inv_glob hΛ] at h3
  have heq := le_antisymm h1 h3
  have hst : κ.1⁻¹ ∈ stabGL (Formalism.L2.Geo.Def.PC.latA (F := D.host.F)
      (Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D 0 (Nat.zero_le _)) T.cls0.lev.Lb)) := by
    intro y
    have := Formalism.L2.GlobalTheoryTheory.Comp.mem_hat_glob hΛ κ.1 y
    rw [heq] at this
    exact this
  simpa using inv_mem hst

theorem lattices_away_from_place (T : Forms0 D u) : AwayLat0 T := by
  intro v v' hvv c c' γ η κ h1 h2
  have hΛ := dual_base_lattice_full T.cls0
  have hκ := kappa_stab_dl T κ
  have hne : (T.atT.eV v).1 ≠ (T.atT.eV v').1 := fun h => hvv (T.atT.eV.injective (Subtype.ext h.symm))
  have hc : Ld D u 0 (Nat.zero_le _) c = Formalism.UG.CS.globLat (T.cls0.y c).1
      (Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D 0 (Nat.zero_le _)) T.cls0.lev.Lb) := dual_class_lattice_eq_global T.cls0 c
  have hc' : mulLat γ.1.1 (Ld D u 0 (Nat.zero_le _) c') = Formalism.UG.CS.globLat
      (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c').1)
      (Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D 0 (Nat.zero_le _)) T.cls0.lev.Lb) := by
    ext x
    rw [mem_mul_lattice_iff, dual_class_lattice_eq_global T.cls0 c']
    have := Formalism.UG.P.csEquiv_mem (Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D 0 (Nat.zero_le _)) T.cls0.lev.Lb) γ.1
      (T.cls0.y c').1 1 (one_mem _) x
    rw [mul_one] at this
    exact this.symm
  have hG1 : (T.cls0.y c).1⁻¹ *
      (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c').1) = η.1 * κ.1 := by
    rw [h2]; group
  have hG2 : (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c').1)⁻¹ *
      (T.cls0.y c).1 = κ.1⁻¹ * η.1⁻¹ := by
    rw [h2]; group
  have hS := fun q => Formalism.L2.Geo.Def.PC.stab_pr _ κ.1 hκ q
  obtain ⟨N1, hN1, hM1⟩ := loc_bound (T.atT.eV v).1 _ hΛ
    ((bc (prV (E := D.host.E) (T.atT.eV v).1) ((T.cls0.y c).1⁻¹ *
      (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 * (T.cls0.y c').1)) : GL _ _) : Matrix _ _ _)
  obtain ⟨N2, hN2, hM2⟩ := loc_bound (T.atT.eV v).1 _ hΛ
    ((bc (prV (E := D.host.E) (T.atT.eV v).1) ((bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 *
      (T.cls0.y c').1)⁻¹ * (T.cls0.y c).1) : GL _ _) : Matrix _ _ _)
  obtain ⟨s1, hs1p, hs1⟩ := exists_not_mem_valuation_div_le_one _ _ hne N1 hN1
  obtain ⟨s2, hs2p, hs2⟩ := exists_not_mem_valuation_div_le_one _ _ hne N2 hN2
  have hnP : ∀ s : 𝓞 D.host.F, s ∉ (T.atT.eV v').1.asIdeal →
      algebraMap (𝓞 D.host.F) (𝓞 D.host.E) s ∉ T.atT.Pv v' := by
    intro s hs h
    exact hs ((T.atT.res_v v' s).2 (RingHom.mem_ker.1 h))
  apply le_antisymm
  · intro x hx
    obtain ⟨t, ht, htx⟩ := (rlv_mem_locP _ _ _).1 hx
    rw [hc'] at htx
    have := away_core _ hΛ _ _ (T.atT.eV v).1 (fun q hq z hz => by
        rw [hG1, map_mul, h1 q hq, one_mul]; exact ((hS q) z).1 hz) N1 hN1 hM1 s1 hs1 _ htx
    rw [← hc, smul_smul] at this
    exact (rlv_mem_locP _ _ _).2 ⟨_, fun h => (Ideal.IsPrime.mem_or_mem inferInstance h).elim (hnP s1 hs1p) ht, this⟩
  · intro x hx
    obtain ⟨t, ht, htx⟩ := (rlv_mem_locP _ _ _).1 hx
    rw [hc] at htx
    have := away_core _ hΛ _ _ (T.atT.eV v).1 (fun q hq z hz => by
        rw [hG2, map_mul, map_inv, map_inv, h1 q hq, inv_one, mul_one]; exact ((inv_mem (hS q)) z).1 hz)
      N2 hN2 hM2 s2 hs2 _ htx
    rw [← hc', smul_smul] at this
    exact (rlv_mem_locP _ _ _).2 ⟨_, fun h => (Ideal.IsPrime.mem_or_mem inferInstance h).elim (hnP s2 hs2p) ht, this⟩

end F0

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayCore =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatKer =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatKer", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.PFrCore\npublic import Formalism.LocalToGlobal.HermitianForms.PrkSmul\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.StabiliserOfLocalTransport\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PKerAtP\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PRLocV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Ideal IsDedekindDomain

namespace PI.UnitaryGroupMassFormula.IAT

open Formalism.BasicNotions Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0 Matrix Formalism.UG

variable {D : D7} {u : D.what₂.Word} {i : ℕ} {hi : i ≤ D.R.m}

theorem cls_tLd (K : ClsTied u i hi) (c : (D.mem u).C.cls i) (y : Fin (D.R.N i) → D.host.E) (hy : y ∈ Ld D u i hi c) :
    (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • y ∈ clsCrd D u i hi c := by
  have hM : clsCrd D u i hi c = Formalism.UG.CS.globLat (K.y c).1 K.lev.Lb :=
    Formalism.L2.GlobalTheoryTheory.Comp.eq_glob_of_hat (tld_isLat i hi c) (K.y c).1 (fun w => K.y_lat c w)
  rw [dual_class_lattice_eq_global K c] at hy
  rw [hM]
  have key : Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D i hi) K.lev.Lb ≤
      K.lev.Lb.comap ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • LinearMap.id) := by
    unfold Formalism.L2.GlobalTheoryTheory.Comp.dl
    refine Submodule.span_le.mpr ?_
    intro z hz
    have h2 := K.lev.Lb_dual z hz
    simpa [Nat.cast_smul_eq_nsmul] using h2
  have hG : ∀ x ∈ Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D i hi) K.lev.Lb,
      ((((D.mem u).A.T : ℕ) : D.host.E) • (1 : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)) *ᵥ x ∈
        K.lev.Lb := by
    intro x hx
    have h2 := key hx
    simp only [Submodule.mem_comap, LinearMap.smul_apply, LinearMap.id_apply] at h2
    have h3 : ((((D.mem u).A.T : ℕ) : D.host.E) • (1 : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)) *ᵥ x =
        (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • x := by
      ext j
      simp [Matrix.mulVec, dotProduct, Matrix.one_apply, Nat.cast_smul_eq_nsmul, nsmul_eq_mul]
    rw [h3]
    exact h2
  have hy' : ((((K.y c).1)⁻¹ : GL _ _) : Matrix _ _ _) *ᵥ Formalism.L2.GlobalTheoryTheory.TraceIntegrality.Fr.vi D.host.F y ∈
      Formalism.L2.GlobalTheoryTheory.Comp.hat D.host.F (Formalism.L2.GlobalTheoryTheory.Comp.dl (sigD D) (gramN D i hi) K.lev.Lb) := hy
  have h1 := Formalism.L2.GlobalTheoryTheory.TraceIntegrality.Fr.hat_fwd _ hG _ hy'
  show ((((K.y c).1)⁻¹ : GL _ _) : Matrix _ _ _) *ᵥ
      Formalism.L2.GlobalTheoryTheory.TraceIntegrality.Fr.vi D.host.F ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • y) ∈
    Formalism.L2.GlobalTheoryTheory.Comp.hat D.host.F K.lev.Lb
  convert h1 using 1
  have hv : Formalism.L2.GlobalTheoryTheory.TraceIntegrality.Fr.vi D.host.F ((((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • y) =
      ((D.mem u).A.T) • Formalism.L2.GlobalTheoryTheory.TraceIntegrality.Fr.vi D.host.F y := by
    ext k
    simp [Formalism.L2.GlobalTheoryTheory.TraceIntegrality.Fr.vi, Nat.cast_smul_eq_nsmul]
  have hGm : ∀ w : Fin (D.R.N i) → TensorProduct D.host.F D.host.E (FiniteAdeleRing (𝓞 D.host.F) D.host.F),
      ((((D.mem u).A.T : ℕ) : D.host.E) • (1 : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map
        (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) *ᵥ w = ((D.mem u).A.T) • w := by
    intro w
    ext k
    simp only [Matrix.mulVec, dotProduct, Matrix.map_apply, Matrix.smul_apply, Matrix.one_apply,
      smul_eq_mul, mul_one, mul_zero, apply_ite, map_zero, ite_mul, zero_mul,
      Finset.sum_ite_eq, Finset.mem_univ, if_true, map_natCast, Pi.smul_apply, nsmul_eq_mul]
  rw [hv, hGm, Matrix.mulVec_smul]

theorem lk_locP (A : AtTTied u) (K : ClsTied u i hi) (v : (D.mem u).A.vT) (c : (D.mem u).C.cls i) :
    Formalism.HermitianLatticesTheory.localization₂ (A.Pv v) (Lk A i hi v c) = Formalism.HermitianLatticesTheory.localization₂ (A.Pv v) (clsCrd D u i hi c) := by
  apply le_antisymm
  · obtain ⟨s, hs, h⟩ := unr_smul A v
    intro x hx
    obtain ⟨r, hr, hrx⟩ := (rlv_mem_locP _ _ _).1 hx
    obtain ⟨l, hl, m, hm, ex⟩ := Submodule.mem_sup.1 hrx
    obtain ⟨y, hy, ey⟩ := h (Ld D u i hi c) m hm
    refine (rlv_mem_locP _ _ _).2 ⟨s * r, fun h' => (Ideal.IsPrime.mem_or_mem inferInstance h').elim hs hr, ?_⟩
    rw [mul_smul, ← ex, smul_add, ey]
    exact Submodule.add_mem _ (Submodule.smul_mem _ _ hl) (cls_tLd K c y hy)
  · intro x hx
    obtain ⟨r, hr, hrx⟩ := (rlv_mem_locP _ _ _).1 hx
    exact (rlv_mem_locP _ _ _).2 ⟨r, hr, Submodule.mem_sup_left hrx⟩

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatKer =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatB =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatB", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.UpLatLoc0Of\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnIncInt0Of\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatKer\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntInvOfLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Ideal Matrix IsDedekindDomain

namespace PI.UnitaryGroupMassFormula.IAT

open Formalism.BasicNotions Formalism.L2.Forms Formalism.L2.Host Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.UG

variable {D : D7} {u : D.what₂.Word}

theorem dnLatLoc0_of_away (T : Forms0 D u) (hA : AwayLat0 T) : DnLatLoc0 T := by
  intro w hw hs v c g hg γ η κ hη hy hP B B' B₂ hB hB' hB₂ τ
  split_ifs with hτ
  · subst hτ
    have hk := lk_locP T.atT T.cls0 v c
    refine intInv_of_loc T.atT w hw hs v B₂ B' γ.1 hB₂ hB' ?_ ?_
    · rw [hP, ← hk]
      exact le_locP' _ _
    · rw [hk, ← hP]
      exact le_locP' _ _
  · obtain ⟨v', rfl⟩ : ∃ v', (D.fm u).tauOf w v' = τ := ⟨((D.fm u).tauOf w).symm τ, by simp⟩
    have hv' : v' ≠ v := fun h => hτ (h ▸ rfl)
    have hA' := hA v v' hv' c ((D.fm u).dn 0 v c g) γ η κ hη hy
    refine intInv_of_loc T.atT w hw hs v' B₂ B γ.1 hB₂ hB ?_ ?_
    · rw [hA']
      exact le_locP' _ _
    · rw [← hA']
      exact le_locP' _ _

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatB =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DownOperatorPreservesRationalForm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DownOperatorPreservesRationalForm", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.CharacterFiniteLevelZeroOfForms\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiamondPreservesRationalFormZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.FrobeniusNoKernelOfFrobeniusSimilitude\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocElim\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.NaturalTranslateAdelicFunction\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocInd\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfIncrements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.RingTheory.MvPolynomial\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.IAT

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases NumberField Classical IsDedekindDomain Formalism.UG

def ratO (D : D7) : Subring ℂ := (⊤ : Subring D.what₂.LL).map D.what₂.embLL

theorem ratO_mem (D : D7) (r : D.what₂.LL) : D.what₂.embLL r ∈ ratO D :=
  Subring.mem_map.2 ⟨r, Subring.mem_top _, rfl⟩

theorem ratO_loc (D : D7) : bwE_Loc (ratO D) := by
  intro r s c m hc hm hsum
  by_contra hno
  have h0 : ∀ i ∈ s, m i = 0 := by
    intro i hi
    by_contra hne
    obtain ⟨q, -, hq⟩ := Subring.mem_map.1 (hm i)
    refine hno ⟨i, hi, D.what₂.embLL q⁻¹, ratO_mem D _, ?_⟩
    rw [map_inv₀, hq, mul_inv_cancel₀ hne]
  rw [Finset.sum_eq_zero (fun i hi => by rw [h0 i hi, mul_zero])] at hsum
  exact zero_ne_one hsum

theorem ratGLStab (D : D7) {n : ℕ} (ν : DomWeight n) (s : ℤ) (M M' : Matrix (Fin n) (Fin n) ℂ) (hMM' : M * M' = 1)
    (hM : ∀ a b, M a b ∈ ratO D) (hM' : ∀ a b, M' a b ∈ ratO D) (g : MvPolynomial (Fin n × Fin n) ℤ)
    (hg : g ∈ delSq ℤ n ν) :
    M.det ^ s • Formalism.GradedWeylDivisibility.rowAct ℂ M (MvPolynomial.map (Int.castRingHom ℂ) g) ∈
      bwA_span (ratO D) le_rfl ν.natW := by
  have hM'M : M' * M = 1 := mul_eq_one_comm.1 hMM'
  have hEO : M ∈ bwA_EO (ratO D) n := bwE_elim (ratO_loc D) M hM ⟨M', hM', hM'M⟩
  have hg' : MvPolynomial.map (Int.castRingHom ℂ) g ∈ bwA_span (ratO D) le_rfl ν.natW :=
    Submodule.subset_span ⟨g, hg, rfl⟩
  have hrow := bwA_span_closure (ratO D) le_rfl ν.natW M hEO _ hg'
  have hdet : M.det * M'.det = 1 := by rw [← Matrix.det_mul, hMM', Matrix.det_one]
  have hdM : M.det ∈ ratO D := bwE_det_mem hM
  have hdM' : M'.det ∈ ratO D := bwE_det_mem hM'
  have hds : M.det ^ s ∈ ratO D := by
    rcases s with k | k
    · rw [Int.ofNat_eq_natCast, zpow_natCast]
      exact pow_mem hdM k
    · have e : M.det ^ (Int.negSucc k) = M'.det ^ (k + 1) := by
        rw [zpow_negSucc, ← inv_pow]
        congr 1
        exact inv_eq_of_mul_eq_one_right hdet
      rw [e]
      exact pow_mem hdM' _
  have e : M.det ^ s • Formalism.GradedWeylDivisibility.rowAct ℂ M (MvPolynomial.map (Int.castRingHom ℂ) g) =
      (⟨M.det ^ s, hds⟩ : ratO D) • Formalism.GradedWeylDivisibility.rowAct ℂ M (MvPolynomial.map (Int.castRingHom ℂ) g) := rfl
  rw [e]
  exact Submodule.smul_mem _ _ hrow

theorem ratSpan_smul (D : D7) {N : ℕ} (lam : D.what₂.Tau → DomWeight N) (r : D.what₂.LL)
    (P : MvPolynomial (D.what₂.Tau × Fin N × Fin N) ℂ) (hP : P ∈ Formalism.L2.Forms.RatSpan D lam) :
    D.what₂.embLL r • P ∈ Formalism.L2.Forms.RatSpan D lam := by
  induction hP using AddSubgroup.closure_induction with
  | mem p hp =>
    obtain ⟨r', f, hf, rfl⟩ := hp
    exact AddSubgroup.subset_closure ⟨r * r', f, hf, by rw [smul_smul, map_mul]⟩
  | zero => rw [smul_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
  | neg x _ hx => rw [smul_neg]; exact neg_mem hx

open Classical in
theorem ratSpan_ten (D : D7) {N : ℕ} (lam : D.what₂.Tau → DomWeight N) (τv : D.what₂.Tau)
    (f : D.what₂.Tau → MvPolynomial (Fin N × Fin N) ℤ) (hf : ∀ τ, f τ ∈ delSq ℤ N (lam τ))
    (q : MvPolynomial (Fin N × Fin N) ℂ) (hq : q ∈ bwA_span (ratO D) le_rfl (lam τv).natW) (r : D.what₂.LL) :
    D.what₂.embLL r • Formalism.L2.Forms.ten (Function.update (fun τ => MvPolynomial.map (Int.castRingHom ℂ) (f τ)) τv q) ∈
      Formalism.L2.Forms.RatSpan D lam := by
  classical
  induction hq using Submodule.span_induction generalizing r with
  | mem x hx =>
    obtain ⟨g, hg, rfl⟩ := hx
    apply AddSubgroup.subset_closure
    refine ⟨r, Function.update f τv g, fun τ => ?_, ?_⟩
    · by_cases h : τ = τv
      · subst h; rw [Function.update_self]; exact hg
      · rw [Function.update_of_ne h]; exact hf τ
    · congr 1
      congr 1
      funext τ
      by_cases h : τ = τv
      · subst h; rw [Function.update_self, Function.update_self]
      · rw [Function.update_of_ne h, Function.update_of_ne h]
  | zero =>
    rw [bwA_ten_update]; simp
  | add x y _ _ hx hy =>
    have e : Formalism.L2.Forms.ten (Function.update (fun τ => MvPolynomial.map (Int.castRingHom ℂ) (f τ)) τv (x + y)) =
        Formalism.L2.Forms.ten (Function.update (fun τ => MvPolynomial.map (Int.castRingHom ℂ) (f τ)) τv x) +
          Formalism.L2.Forms.ten (Function.update (fun τ => MvPolynomial.map (Int.castRingHom ℂ) (f τ)) τv y) := by
      rw [bwA_ten_update, bwA_ten_update, bwA_ten_update, map_add (f := _), add_mul]
    rw [e, smul_add]
    exact AddSubgroup.add_mem _ (hx r) (hy r)
  | smul o x _ hx =>
    obtain ⟨r', -, ho⟩ := Subring.mem_map.1 o.2
    have e : Formalism.L2.Forms.ten (Function.update (fun τ => MvPolynomial.map (Int.castRingHom ℂ) (f τ)) τv (o • x)) =
        (o : ℂ) • Formalism.L2.Forms.ten (Function.update (fun τ => MvPolynomial.map (Int.castRingHom ℂ) (f τ)) τv x) := by
      rw [bwA_ten_update, bwA_ten_update]
      show MvPolynomial.rename _ ((o : ℂ) • x) * _ = _
      rw [map_smul, smul_mul_assoc]
    rw [e, smul_smul, ← ho, ← map_mul]
    exact hx (r * r')

open Classical in
theorem ratSpan_subP (D : D7) {N : ℕ} (lam : D.what₂.Tau → DomWeight N) (τv : D.what₂.Tau)
    (o : D.what₂.Tau → Matrix (Fin N) (Fin N) ℂ) (ho : ∀ τ, τ ≠ τv → o τ = 1) (c : ℂ)
    (hB : ∀ g ∈ delSq ℤ N (lam τv),
      c • Formalism.GradedWeylDivisibility.rowAct ℂ (o τv) (MvPolynomial.map (Int.castRingHom ℂ) g) ∈
        bwA_span (ratO D) le_rfl (lam τv).natW)
    (P : MvPolynomial (D.what₂.Tau × Fin N × Fin N) ℂ) (hP : P ∈ Formalism.L2.Forms.RatSpan D lam) :
    c • subP o P ∈ Formalism.L2.Forms.RatSpan D lam := by
  induction hP using AddSubgroup.closure_induction with
  | mem p hp =>
    obtain ⟨r, f, hf, rfl⟩ := hp
    set F : D.what₂.Tau → MvPolynomial (Fin N × Fin N) ℂ := fun τ => MvPolynomial.map (Int.castRingHom ℂ) (f τ) with hF
    have h1 : (fun τ => Formalism.GradedWeylDivisibility.rowAct ℂ (o τ) (F τ)) = Function.update F τv (Formalism.GradedWeylDivisibility.rowAct ℂ (o τv) (F τv)) := by
      funext τ
      by_cases h : τ = τv
      · subst h; rw [Function.update_self]
      · rw [Function.update_of_ne h, ho τ h, bwA_rowAct_one]
    have e : c • subP o (D.what₂.embLL r • Formalism.L2.Forms.ten F) =
        D.what₂.embLL r • Formalism.L2.Forms.ten (Function.update F τv (c • Formalism.GradedWeylDivisibility.rowAct ℂ (o τv) (F τv))) := by
      rw [map_smul, substitution_tensor, h1, smul_comm, bwA_ten_update, bwA_ten_update, map_smul, smul_mul_assoc]
    rw [e]
    exact ratSpan_ten D lam τv f hf _ (hB (f τv) (hf τv)) r
  | zero => rw [map_zero, smul_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _), smul_add]; exact add_mem hx hy
  | neg x _ hx => rw [map_neg, smul_neg]; exact neg_mem hx

theorem ratSpan_allSubP (D : D7) {n : ℕ} (lam : D.what₂.Tau → DomWeight n)
    (N : D.what₂.Tau → Matrix (Fin n) (Fin n) ℂ) (s : D.what₂.Tau → ℤ)
    (hB : ∀ τ, ∀ g ∈ delSq ℤ n (lam τ), (N τ).det ^ s τ • Formalism.GradedWeylDivisibility.rowAct ℂ (N τ) (MvPolynomial.map (Int.castRingHom ℂ) g) ∈
      bwA_span (ratO D) le_rfl (lam τ).natW)
    (Q : MvPolynomial (D.what₂.Tau × Fin n × Fin n) ℂ) (hQ : Q ∈ Formalism.L2.Forms.RatSpan D lam) :
    MvPolynomial.C (∏ τ, (N τ).det ^ s τ) * subP N Q ∈ Formalism.L2.Forms.RatSpan D lam := by
  have key : ∀ S : Finset D.what₂.Tau, MvPolynomial.C (∏ τ ∈ S, (N τ).det ^ s τ) *
      subP (fun τ => if τ ∈ S then N τ else 1) Q ∈ Formalism.L2.Forms.RatSpan D lam := by
    intro S
    induction S using Finset.induction_on with
    | empty =>
      simp only [Finset.prod_empty, map_one, one_mul, Finset.notMem_empty, if_false]
      rw [substitution_one]
      exact hQ
    | insert τ0 S h0 ih =>
      set U : D.what₂.Tau → Matrix (Fin n) (Fin n) ℂ := Function.update 1 τ0 (N τ0) with hU
      have hU1 : ∀ τ, τ ≠ τ0 → U τ = 1 := fun τ hτ => by rw [hU, Function.update_of_ne hτ]; rfl
      have hUτ : U τ0 = N τ0 := by rw [hU, Function.update_self]
      have hcomp : (fun τ => (if τ ∈ S then N τ else 1) * U τ) = fun τ => if τ ∈ insert τ0 S then N τ else 1 := by
        funext τ
        by_cases hτ : τ = τ0
        · subst hτ
          rw [if_neg h0, if_pos (Finset.mem_insert_self _ _), one_mul, hUτ]
        · rw [hU1 τ hτ, mul_one]
          by_cases hS : τ ∈ S
          · rw [if_pos hS, if_pos (Finset.mem_insert_of_mem hS)]
          · rw [if_neg hS, if_neg (by simp [hτ, hS])]
      have e : MvPolynomial.C (∏ τ ∈ insert τ0 S, (N τ).det ^ s τ) *
          subP (fun τ => if τ ∈ insert τ0 S then N τ else 1) Q =
          (N τ0).det ^ s τ0 • subP U (MvPolynomial.C (∏ τ ∈ S, (N τ).det ^ s τ) *
            subP (fun τ => if τ ∈ S then N τ else 1) Q) := by
        have hC : ∀ x, subP U (MvPolynomial.C x) = MvPolynomial.C x := fun x => by
          rw [← MvPolynomial.algebraMap_eq, AlgHom.commutes]
        rw [map_mul, substitution_substitution, hcomp, Finset.prod_insert h0, map_mul, MvPolynomial.smul_eq_C_mul, hC, mul_assoc]
      rw [e]
      refine ratSpan_subP D lam τ0 U hU1 _ ?_ _ ih
      intro g hg
      rw [hUτ]
      exact hB τ0 g hg
  have h := key Finset.univ
  simp only [Finset.mem_univ, if_true] at h
  exact h

variable {D : D7} {u : D.what₂.Word}

def RatC (T : Forms0 D u) (h : (D.mem u).C.Y 0 → ℂ) : Prop :=
  ∃ P ∈ Formalism.L2.Forms.RatSpan D ((D.fm u).lam 0), ∀ z, h z = fnOf _ (shiftOf (lamT u 0)) 1 P (T.val0.eY z)

theorem ratC_sum (T : Forms0 D u) {ι : Type} (s : Finset ι) (h : ι → (D.mem u).C.Y 0 → ℂ)
    (hh : ∀ i ∈ s, RatC T (h i)) : RatC T (∑ i ∈ s, h i) := by
  choose! P hP hPe using hh
  refine ⟨∑ i ∈ s, P i, AddSubgroup.sum_mem _ fun i hi => hP i hi, fun z => ?_⟩

  rw [map_sum, Finset.sum_apply, Finset.sum_apply]
  exact Finset.sum_congr rfl fun i hi => hPe i hi z

theorem fnOf_trR (s : D.what₂.Tau → ℤ) (M : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ)
    (P : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ) (g : GL (Fin (D.R.N 0)) D.host.E)
    (hg : g ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)))
    (y : Frames (gramC (gramN D 0 (Nat.zero_le _)) (embT D))) :
    fnOf _ s M P (frameTranslate (embT D) (fun τ x => embedding_conj_compat D τ x) g hg y) =
      fnOf _ s (fun τ => M τ * atInf (embT D) (g : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ) P y := by
  simp only [fnOf, LinearMap.coe_mk, AddHom.coe_mk, frameTranslate, Matrix.mul_assoc]

theorem atInf_ratO (M : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) (τ : D.what₂.Tau) (a b : Fin (D.R.N 0)) :
    atInf (embT D) M τ a b ∈ ratO D := by
  show embT D τ (M a b) ∈ ratO D
  rw [bwA_embT_eq]
  exact ratO_mem D _

theorem ratC_tr (T : Forms0 D u) (hC : LocalLatticeBases.ChiFin0 T)
    (γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))) (κ : T.cls0.lev.U)
    (h : (D.mem u).C.Y 0 → ℂ) (hh : RatC T h) :
    RatC T (fun s => ((((T.cls0.lev.chi κ)⁻¹ : ℂˣ)) : ℂ) *
      h (T.val0.eY.symm (frameTranslate (embT D) (fun τ x => embedding_conj_compat D τ x) γ.1⁻¹
        ((UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))).inv_mem γ.2) (T.val0.eY s)))) := by
  obtain ⟨P, hP, hPe⟩ := hh
  obtain ⟨n, -, hc⟩ := hC
  obtain ⟨-, r, hr⟩ := hc 0 (Nat.zero_le _) rfl κ
  set N : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ := fun τ =>
    atInf (embT D) ((γ.1⁻¹ : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ with hNdef
  have hNN' : ∀ τ, N τ * atInf (embT D) ((γ.1 : GL (Fin (D.R.N 0)) D.host.E) :
      Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ = 1 := fun τ =>
    mul_eq_one_comm.1 (Formalism.L2.Forms.atInf_mul_inv _ γ.1 τ)
  have e1 : ∀ z, h (T.val0.eY.symm (frameTranslate (embT D) (fun τ x => embedding_conj_compat D τ x) γ.1⁻¹
        ((UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))).inv_mem γ.2) (T.val0.eY z))) =
      fnOf _ (shiftOf (lamT u 0)) (fun τ => N τ * (1 : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ) τ) P
        (T.val0.eY z) := by
    intro z
    rw [hPe, Equiv.apply_symm_apply, fnOf_trR]
    simp only [hNdef, Pi.one_apply, one_mul, mul_one]
  have e2 : ((((T.cls0.lev.chi κ)⁻¹ : ℂˣ)) : ℂ) = D.what₂.embLL r⁻¹ := by
    rw [map_inv₀, Units.val_inv_eq_inv_val]
    exact congrArg _ hr.symm
  refine ⟨D.what₂.embLL r⁻¹ • (MvPolynomial.C (∏ τ, (N τ).det ^ shiftOf (lamT u 0) τ) * subP N P),
    ratSpan_smul D _ r⁻¹ _ (ratSpan_allSubP D _ N _ (fun τ q hq => ratGLStab D _ _ (N τ) _ (hNN' τ)
      (atInf_ratO _ τ) (atInf_ratO _ τ) q hq) P hP), fun z => ?_⟩
  have e3 := e1 z
  rw [LocalLatticeBases.fnOf_mul] at e3
  change ((((T.cls0.lev.chi κ)⁻¹ : ℂˣ)) : ℂ) * h (T.val0.eY.symm (frameTranslate (embT D) (fun τ x => embedding_conj_compat D τ x) γ.1⁻¹
        ((UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))).inv_mem γ.2) (T.val0.eY z))) = _
  rw [e3, e2, LinearMap.map_smul, Pi.smul_apply, smul_eq_mul]

theorem up_operator_preserves_rational_form (T : Forms0 D u) (hC : LocalLatticeBases.ChiFin0 T) (v : (D.mem u).A.vT) (x : Vl D u 0) :
    ∃ y, (D.fm u).emb 0 y = Uop D u 0 v ((D.fm u).emb 0 x) := by
  have hx := (T.val0.rat ((D.fm u).emb 0 x)).1 ⟨x, rfl⟩
  refine (T.val0.rat _).2 ⟨Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.U_op_preserves_forms_zero T v _ hx.1, fun c => ?_⟩
  show RatC T _
  rw [uop_apply]
  refine ratC_sum T _ _ fun y hy => ?_
  obtain ⟨z, rfl⟩ := T.lv0.pr_surj v c y
  obtain ⟨γ, η, κ, -, -, -, -, -, h6⟩ := T.up_natural_level_zero v c z (Finset.mem_filter.1 hy).2
  have e : (D.fm u).upT 0 v c (T.lv0.pr v c z) ((D.fm u).emb 0 x ((D.fm u).up 0 v c (T.lv0.pr v c z))) = fun s =>
      ((((T.cls0.lev.chi κ)⁻¹ : ℂˣ)) : ℂ) * (D.fm u).emb 0 x ((D.fm u).up 0 v c (T.lv0.pr v c z))
        (T.val0.eY.symm (frameTranslate (embT D) (fun τ x => embedding_conj_compat D τ x) γ.1⁻¹
          ((UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))).inv_mem γ.2) (T.val0.eY s))) :=
    funext fun s => h6 _ s _ (Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.is_translate_inverse T γ s)
  rw [e]
  exact ratC_tr T hC γ κ _ (hx.2 _)

theorem down_operator_preserves_rational_form (T : Forms0 D u) (hC : LocalLatticeBases.ChiFin0 T) (v : (D.mem u).A.vT) (x : Vl D u 0) :
    ∃ y, (D.fm u).emb 0 y = Dop D u 0 v ((D.fm u).emb 0 x) := by
  have hx := (T.val0.rat ((D.fm u).emb 0 x)).1 ⟨x, rfl⟩
  refine (T.val0.rat _).2 ⟨Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.D_op_preserves_forms_zero T v _ hx.1, fun c => ?_⟩
  show RatC T _
  rw [dop_apply]
  refine ratC_sum T _ _ fun g hg => ?_
  have hg0 : g ≠ 0 := by
    intro h0
    have h1 := (Finset.mem_filter.1 hg).2
    rw [h0, LinearMap.zero_apply] at h1
    exact zero_ne_one h1
  obtain ⟨γ, η, κ, -, -, -, -, h5⟩ := T.down_natural_level_zero v c g hg0
  have e : (D.fm u).dnT 0 v c g ((D.fm u).emb 0 x ((D.fm u).dn 0 v c g)) = fun s =>
      ((((T.cls0.lev.chi κ)⁻¹ : ℂˣ)) : ℂ) * (D.fm u).emb 0 x ((D.fm u).dn 0 v c g)
        (T.val0.eY.symm (frameTranslate (embT D) (fun τ x => embedding_conj_compat D τ x) γ.1⁻¹
          ((UJ (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _))).inv_mem γ.2) (T.val0.eY s))) :=
    funext fun s => h5 _ s _ (Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.is_translate_inverse T γ s)
  rw [e]
  exact ratC_tr T hC γ κ _ (hx.2 _)

theorem rationality_of_finite_character (T : Forms0 D u) (hC : LocalLatticeBases.ChiFin0 T) : Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.HeckeRationalLevelZero D u :=
  fun v x => ⟨up_operator_preserves_rational_form T hC v x, down_operator_preserves_rational_form T hC v x⟩

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DownOperatorPreservesRationalForm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfLattices =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfLattices", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnIncInt0Of\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.IAT

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

theorem integrality_at_forms_of_lattices
    (hR : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), LocalLatticeBases.ChiFin0 T → admS D u → HidaSetting D u → HeckeRationalLevelZero D u)
    (hU : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), LocalLatticeBases.ChiFin0 T → admS D u → HidaSetting D u → UpLatLoc0 T)
    (hD : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), LocalLatticeBases.ChiFin0 T → admS D u → HidaSetting D u → DnLatLoc0 T)
    (D : D7) (u : D.what₂.Word) : Formalism.MainNotions.RT.IntegralityLevelZeroUnderForms D u :=
  integrality_at_forms_of_increments hR (fun D u T hC hA hS => upIncInt0_of T hC (hU D u T hC hA hS))
    (fun D u T hC hA hS => dnIncInt0_of T hC (hD D u T hC hA hS)) D u

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfLattices =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAwayUp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAwayUp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.UpLatLoc0Of\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnIncInt0Of\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DownOperatorPreservesRationalForm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfLattices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.IAT

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

theorem integrality_at_forms_of_away_up
    (hA : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), LocalLatticeBases.ChiFin0 T → admS D u → HidaSetting D u → AwayLat0 T)
    (hD : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), LocalLatticeBases.ChiFin0 T → admS D u → HidaSetting D u → DnLatLoc0 T)
    (D : D7) (u : D.what₂.Word) : Formalism.MainNotions.RT.IntegralityLevelZeroUnderForms D u :=
  integrality_at_forms_of_lattices (fun D u T hC _ _ => rationality_of_finite_character T hC) (fun D u T hC hA' hS => upLatLoc0_of T (hA D u T hC hA' hS)) hD D u

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAwayUp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAway =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAway", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.UpLatLoc0Of\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.DnLatB\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAwayUp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.IAT

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

theorem integrality_at_forms_of_away
    (hA : ∀ (D : D7) (u : D.what₂.Word) (T : Forms0 D u), LocalLatticeBases.ChiFin0 T → admS D u → HidaSetting D u → AwayLat0 T)
    (D : D7) (u : D.what₂.Word) : Formalism.MainNotions.RT.IntegralityLevelZeroUnderForms D u :=
  integrality_at_forms_of_away_up hA (fun D u T hC hA' hS => dnLatLoc0_of_away T (hA D u T hC hA' hS)) D u

end PI.UnitaryGroupMassFormula.IAT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAway =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IntegralAtT0Lattice =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IntegralAtT0Lattice", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.IntegralityOfRationalityLocal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.AwayCore\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegralityAtPrimeLattices.IntegralityAtFormsOfAway\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.IntegralAtBasePointLattice

theorem integral_at_t0_lattice : ∀ (D : Formalism.BasicNotions.D7) (u : D.what₂.Word), Formalism.MainNotions.RT.IntegralityLevelZeroUnderForms D u :=
  PI.UnitaryGroupMassFormula.IAT.integrality_at_forms_of_away (fun _ _ T _ _ _ => PI.UnitaryGroupMassFormula.IAT.lattices_away_from_place T)

end PI.IntegralAtBasePointLattice
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IntegralAtT0Lattice =====

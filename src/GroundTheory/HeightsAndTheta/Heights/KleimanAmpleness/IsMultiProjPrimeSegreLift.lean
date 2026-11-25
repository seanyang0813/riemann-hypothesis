module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftVal
public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Statements
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.ModelSt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideLast
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailTer
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailAlt
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideSide
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailFurther
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideRest
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailExtra
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PModelGenericPoint
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.AlgDefs
import Mathlib.RingTheory.LocalProperties.Reduced
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.BlockVecSegreJoin
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeMIdealOverGraph
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailBis, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSegreFibresNef, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreInclWeightedHomogeneousComponent, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftMapMap, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeSegreLift

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailBis =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailBis", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Statements\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.AlgDefs\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.ModelSt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open GroundTheory.Heights₂.Heights.NumbersDVR (MRing IsMultiProjPrime intNum)
open GroundTheory.Heights₂.Heights.FieldNumbers (relDim)
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (mIdealOver)

def SegreLiftPrime.Statement : Prop :=
  ∀ (F : Type) [Field F] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type)
    [∀ k, Fintype (ι k)] (W : Ideal (MRing ι F)), IsMultiProjPrime W →
      IsMultiProjPrime (segreLift ι F W)

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailBis =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSegreFibresNef =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSegreFibresNef", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideLast\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailBis\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailTer\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailAlt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideSide\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open GroundTheory.Heights₂.Heights.NumbersDVR (MRing IsMultiProjPrime intNum)
open GroundTheory.Heights₂.Heights.FieldNumbers (relDim)
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (mIdealOver)

theorem segreFibresNef_of_map (hA : SegreLiftComap.Statement) (hB : SegreLiftPrime.Statement)
    (hC : SegreLiftRelDim.Statement) (hN : SegreLiftIntNum.Statement)
    (hD : SegreFibreIdeal.Statement) (O : Type) [CommRing O] (Ω : Type) [Field Ω] [Algebra O Ω]
    (F : Type) [Field F] (φ : O →+* F) (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type)
    [∀ k, Fintype (ι k)] (y : (Σ k, ι k) → Ω) (β : K → ℤ) :
    IndefiniteRowSideFullHecke.Kleiman2.IsNefIdeal F ((mIdealOver O (segreJoin y)).map (MvPolynomial.map φ))
                              (IndefiniteRowSideFullHecke.Kleiman2.pullDeg β) ↔
      IndefiniteRowSideFullHecke.Kleiman2.IsNefIdeal F ((mIdealOver O y).map (MvPolynomial.map φ)) β := by
  obtain ⟨hrel, hle, hlift⟩ := hD O Ω F φ K ι y
  constructor
  · intro h W hW hPW hdim
    have hpos := h (segreLift ι F W) (hB F K ι W hW) (hlift W hPW)
      (by rw [hC F K ι W hW]; exact hdim)
    rwa [hN F K ι W hW β] at hpos
  · intro h W' hW' hPW' hdim
    obtain ⟨hWp, heq⟩ := hA F K ι W' hW' fun g hg => hPW' (hrel hg)
    have hPW : (mIdealOver O y).map (MvPolynomial.map φ) ≤ W'.comap (segreIncl ι F) :=
      hle.trans (Ideal.comap_mono hPW')
    have hdimW : relDim (W'.comap (segreIncl ι F)) = ((1 : ℕ) : WithBot (WithTop ℤ)) := by
      rw [← hC F K ι _ hWp, ← heq]
      exact hdim
    have hpos := h _ hWp hPW hdimW
    rw [heq, hN F K ι _ hWp β]
    exact hpos

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSegreFibresNef =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreInclWeightedHomogeneousComponent =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreInclWeightedHomogeneousComponent", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideLast\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.LocalProperties.Reduced\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open GroundTheory.Heights₂.Heights.NumbersDVR (MRing IsMultiProjPrime)

noncomputable section

section

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} {F : Type} [Field F]


omit [Fintype K] in
theorem segre_weight_mapDomain (e : (Σ k, ι k) →₀ ℕ) :
    Finsupp.weight (NumbersDVR.blockWeight (segreIdx ι))
        (Finsupp.mapDomain (fun v : Σ k, ι k => (⟨Sum.inr v.1, v.2⟩ : Σ c, segreIdx ι c)) e) =
      Sum.elim (fun _ => 0) (Finsupp.weight (NumbersDVR.blockWeight ι) e) := by
  rw [Finsupp.weight_apply, Finsupp.weight_apply,
    Finsupp.sum_mapDomain_index
      (h := fun (v : Σ c, segreIdx ι c) (n : ℕ) => n • NumbersDVR.blockWeight (segreIdx ι) v)
      (fun _ => zero_smul _ _) (fun _ _ _ => add_smul _ _ _)]
  funext c
  rcases c with ⟨⟨⟩⟩ | k
  · simp [Finsupp.sum, Finset.sum_apply, NumbersDVR.blockWeight]
  · simp [Finsupp.sum, Finset.sum_apply, NumbersDVR.blockWeight, Pi.single_apply]

theorem segreIncl_weightedHomogeneousComponent (b : K → ℕ) (f : MRing ι F) :
    segreIncl ι F (weightedHomogeneousComponent (NumbersDVR.blockWeight ι) b f) =
      weightedHomogeneousComponent (NumbersDVR.blockWeight (segreIdx ι)) (Sum.elim (fun _ => 0) b)
        (segreIncl ι F f) := by
  classical
  have hinj : Function.Injective (fun v : Σ k, ι k => (⟨Sum.inr v.1, v.2⟩ : Σ c, segreIdx ι c)) := by
    rintro ⟨k, i⟩ ⟨k', i'⟩ h
    have h1 := Sigma.mk.inj h
    obtain rfl := Sum.inr_injective h1.1
    obtain rfl := eq_of_heq h1.2
    rfl
  ext e'
  rw [coeff_weightedHomogeneousComponent]
  by_cases he : ∃ e, Finsupp.mapDomain
      (fun v : Σ k, ι k => (⟨Sum.inr v.1, v.2⟩ : Σ c, segreIdx ι c)) e = e'
  · obtain ⟨e, rfl⟩ := he
    rw [segreIncl, coeff_rename_mapDomain _ hinj, coeff_rename_mapDomain _ hinj,
      coeff_weightedHomogeneousComponent, segre_weight_mapDomain]
    by_cases hd : Finsupp.weight (NumbersDVR.blockWeight ι) e = b
    · rw [if_pos hd, if_pos (by rw [hd])]
    · rw [if_neg hd, if_neg fun h => hd (funext fun k => congrFun h (Sum.inr k))]
  · push Not at he
    rw [segreIncl, coeff_rename_eq_zero _ _ _ fun u hu => absurd hu (he u)]
    split_ifs
    · rw [coeff_rename_eq_zero _ _ _ fun u hu => absurd hu (he u)]
    · rfl

theorem segreLiftVal_eq (W : Ideal (MRing ι F)) (v : Σ c, segreIdx ι c) :
    ∃ β, segreLiftVal ι F W v =
      Polynomial.X ^ (NumbersDVR.blockWeight (segreIdx ι) v (Sum.inl ())) * Polynomial.C β := by
  rcases v with ⟨⟨⟨⟩⟩ | k, i⟩
  · exact ⟨Ideal.Quotient.mk W (∏ k, X ⟨k, i k⟩), by
      simp [segreLiftVal, NumbersDVR.blockWeight]⟩
  · exact ⟨Ideal.Quotient.mk W (X ⟨k, i⟩), by simp [segreLiftVal, NumbersDVR.blockWeight]⟩

theorem segreLiftMap_monomial (W : Ideal (MRing ι F)) (s : (Σ c, segreIdx ι c) →₀ ℕ) :
    ∀ r : F, ∃ a, segreLiftMap ι F W (monomial s r) =
      Polynomial.X ^ (Finsupp.weight (NumbersDVR.blockWeight (segreIdx ι)) s (Sum.inl ())) *
        Polynomial.C a := by
  refine Finsupp.induction s ?_ ?_
  · intro r
    refine ⟨algebraMap F _ r, ?_⟩
    simp [segreLiftMap, Polynomial.algebraMap_apply]
  · intro v n s _ _ ih r
    obtain ⟨a, ha⟩ := ih r
    obtain ⟨β, hβ⟩ := segreLiftVal_eq W v
    refine ⟨β ^ n * a, ?_⟩
    have hm : (monomial (Finsupp.single v n + s) r : MRing (segreIdx ι) F) =
        X v ^ n * monomial s r := by
      rw [X_pow_eq_monomial, monomial_mul, one_mul]
    rw [hm, map_mul, map_pow, ha, segreLiftMap, aeval_X, hβ, map_add (f := _), Pi.add_apply,
      Finsupp.weight_single, Pi.smul_apply, smul_eq_mul, map_mul, map_pow]
    ring

theorem segreLiftMap_of_isWeightedHomogeneous (W : Ideal (MRing ι F)) {f : MRing (segreIdx ι) F}
    {e : Unit ⊕ K → ℕ} (hf : IsWeightedHomogeneous (NumbersDVR.blockWeight (segreIdx ι)) f e) :
    ∃ a, segreLiftMap ι F W f = Polynomial.X ^ e (Sum.inl ()) * Polynomial.C a := by
  classical
  choose a ha using fun s => segreLiftMap_monomial W s (AddMonoidAlgebra.coeff f s)
  refine ⟨∑ s ∈ f.support, a s, ?_⟩
  conv_lhs => rw [f.as_sum]

  rw [map_sum, map_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun s hs => ?_
  rw [ha s, hf (mem_support_iff.mp hs)]

end

theorem SegreLiftComap.proof : SegreLiftComap.Statement := by
  intro F _ K _ _ ι _ W' hW' hrel
  classical
  have := hW'.isPrime
  have hW : IsMultiProjPrime (W'.comap (segreIncl ι F)) := by
    refine ⟨inferInstance, ?_, ?_⟩
    · intro f hf b
      rw [Ideal.mem_comap, segreIncl_weightedHomogeneousComponent]
      exact hW'.multiHomog _ hf _
    · intro k
      obtain ⟨i, hi⟩ := hW'.relevant (Sum.inr k)
      exact ⟨i, by rwa [Ideal.mem_comap, segreIncl, rename_X]⟩
  refine ⟨hW, ?_⟩
  set W := W'.comap (segreIncl ι F) with hWdef

  choose c' hc using fun k => hW'.relevant (Sum.inr k)
  let c : ∀ k, ι k := c'
  let D := MRing (segreIdx ι) F ⧸ W'
  let L := FractionRing D
  let π : MRing (segreIdx ι) F →+* L := (algebraMap D L).comp (Ideal.Quotient.mk W')
  have hπ : ∀ f, π f = 0 ↔ f ∈ W' := by
    intro f
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    exact (IsFractionRing.injective D L).eq_iff' (map_zero _)
  have hmc : segreMon (R := F) c ∉ W' := by
    intro h
    obtain ⟨k, -, hk⟩ := Ideal.IsPrime.prod_mem_iff.mp h
    exact hc k hk
  have hYc : segreY (R := F) c ∉ W' := by
    intro h
    obtain ⟨d, hd⟩ := hW'.relevant (Sum.inl ())
    have hr : segreY c * segreMon d - segreY d * segreMon c ∈ W' := hrel ⟨c, d, rfl⟩
    have : segreY (R := F) d * segreMon c ∈ W' := by
      have := W'.sub_mem (W'.mul_mem_right (segreMon d) h) hr
      rwa [sub_sub_cancel] at this
    exact (hW'.isPrime.mem_or_mem this).elim hd hmc
  have hMc : π (segreMon c) ≠ 0 := fun h => hmc ((hπ _).mp h)
  let u : L := π (segreY c) / π (segreMon c)
  have hu : u ≠ 0 := div_ne_zero (fun h => hYc ((hπ _).mp h)) hMc
  let j : MRing ι F ⧸ W →+* D :=
    Ideal.quotientMap W' (segreIncl ι F : MRing ι F →+* MRing (segreIdx ι) F) le_rfl
  have hj : Function.Injective j := Ideal.quotientMap_injective' le_rfl
  have hjmk : ∀ x, j (Ideal.Quotient.mk W x) = Ideal.Quotient.mk W' (segreIncl ι F x) :=
    fun x => Ideal.quotientMap_mk
  let Φ : Polynomial (MRing ι F ⧸ W) →+* L := Polynomial.eval₂RingHom ((algebraMap D L).comp j) u
  have hΦ : ∀ a, Φ (Polynomial.C a) = algebraMap D L (j a) := fun a => by
    simp [Φ]
  have hkey : ∀ f, Φ (segreLiftMap ι F W f) = π f := by
    have : Φ.comp (segreLiftMap ι F W : MRing (segreIdx ι) F →+* Polynomial (MRing ι F ⧸ W)) = π := by
      refine MvPolynomial.ringHom_ext (fun r => ?_) (fun v => ?_)
      · simp only [RingHom.comp_apply, RingHom.coe_coe, segreLiftMap, aeval_C,
          Polynomial.algebraMap_apply, hΦ]
        rw [← Ideal.Quotient.mk_algebraMap, MvPolynomial.algebraMap_eq, hjmk, segreIncl, rename_C]
        rfl
      · rcases v with ⟨⟨⟨⟩⟩ | k, i⟩
        · have hs : π (segreY c) * π (segreMon i) = π (segreY i) * π (segreMon c) := by
            have := (hπ _).mpr (hrel ⟨c, i, rfl⟩)
            rwa [map_sub, map_mul, map_mul, sub_eq_zero] at this
          have hinc : segreIncl ι F (∏ k, X ⟨k, i k⟩) = segreMon i := by
            simp [segreIncl, segreMon, map_prod]
          simp only [RingHom.comp_apply, RingHom.coe_coe, segreLiftMap, aeval_X, segreLiftVal,
            map_mul, hΦ]
          simp only [Φ, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]
          rw [hjmk, hinc]
          change u * π (segreMon i) = π (segreY i)
          rw [div_mul_eq_mul_div, div_eq_iff hMc, hs]
        · simp only [RingHom.comp_apply, RingHom.coe_coe, segreLiftMap, aeval_X, segreLiftVal, hΦ]
          rw [hjmk, segreIncl, rename_X]
          rfl
    intro f
    exact RingHom.congr_fun this f
  ext f
  rw [segreLift, RingHom.mem_ker]
  constructor
  · intro hf

    rw [← sum_weightedHomogeneousComponent (NumbersDVR.blockWeight (segreIdx ι)) f,
    finsum_eq_sum _ (weightedHomogeneousComponent_finsupp f), map_sum]
    refine Finset.sum_eq_zero fun e _ => ?_
    obtain ⟨a, ha⟩ := segreLiftMap_of_isWeightedHomogeneous W
      (weightedHomogeneousComponent_isWeightedHomogeneous
        (w := NumbersDVR.blockWeight (segreIdx ι)) e f)
    have h0 : Φ (Polynomial.X ^ e (Sum.inl ()) * Polynomial.C a) = 0 := by
      rw [← ha, hkey]
      exact (hπ _).mpr (hW'.multiHomog f hf e)
    rw [map_mul, map_pow, hΦ] at h0
    have h1 := (mul_eq_zero.mp h0).resolve_left (pow_ne_zero _ (by simpa [Φ] using hu))
    have h2 : j a = 0 := (IsFractionRing.injective D L) (by rw [h1, map_zero])
    have h3 : a = 0 := hj (by rw [h2, map_zero])
    rw [ha, h3, map_zero, mul_zero]
  · intro hf
    exact (hπ f).mp (by rw [← hkey, hf, map_zero])

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreInclWeightedHomogeneousComponent =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftMapMap =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftMapMap", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideSide\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open GroundTheory.Heights₂.Heights.NumbersDVR (MRing)
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (mIdealOver mConeMapOver)

noncomputable section

namespace SegreFibreIdeal

variable {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
  {K : Type} [Fintype K] {ι : K → Type}

def thetaVal (ι : K → Type) (R : Type) [CommRing R] : (Σ k, segreIdx ι k) → Polynomial (MRing ι R)
  | ⟨Sum.inl _, c⟩ => Polynomial.X * Polynomial.C (∏ k, X ⟨k, c k⟩)
  | ⟨Sum.inr k, i⟩ => Polynomial.C (X ⟨k, i⟩)

def theta (ι : K → Type) (R : Type) [CommRing R] : MRing (segreIdx ι) R →+* Polynomial (MRing ι R) :=
  eval₂Hom (Polynomial.C.comp C) (thetaVal ι R)

def chi (K : Type) [Fintype K] : MvPolynomial (Unit ⊕ K) Ω →+* Polynomial (MvPolynomial K Ω) :=
  eval₂Hom (Polynomial.C.comp C)
    (Sum.elim (fun _ => Polynomial.X * Polynomial.C (∏ k, X k)) (fun k => Polynomial.C (X k)))

theorem map_cone_theta (y : (Σ k, ι k) → Ω) :
    (Polynomial.mapRingHom (mConeMapOver O y).toRingHom).comp (theta ι O) =
      (chi K).comp (mConeMapOver O (segreJoin y)).toRingHom := by
  apply MvPolynomial.ringHom_ext
  · intro a
    simp [theta, chi, mConeMapOver]
  · rintro ⟨(u | k), i⟩
    · simp [theta, thetaVal, chi, mConeMapOver, segreJoin, IndefiniteRowSideFullHecke.Kleiman2.joinVec,
        IndefiniteRowSideFullHecke.Kleiman2.oneBlock, NumbersDVR.segreVec, Polynomial.map_prod, Finset.prod_mul_distrib]
      ring
    · simp [theta, thetaVal, chi, mConeMapOver, segreJoin, IndefiniteRowSideFullHecke.Kleiman2.joinVec]

theorem segreLiftMap_map (F : Type) [Field F] (φ : O →+* F) (W : Ideal (MRing ι F)) :
    (segreLiftMap ι F W).toRingHom.comp (MvPolynomial.map φ) =
      (Polynomial.mapRingHom ((Ideal.Quotient.mk W).comp (MvPolynomial.map φ))).comp (theta ι O) := by
  apply MvPolynomial.ringHom_ext
  · intro a
    simp only [theta, segreLiftMap, RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
      coe_eval₂Hom, eval₂_C, Polynomial.coe_mapRingHom, Polynomial.map_C, map_C, aeval_C]
    rfl
  · rintro ⟨(u | k), i⟩
    · simp [theta, thetaVal, segreLiftMap, segreLiftVal, Polynomial.map_prod]
    · simp [theta, thetaVal, segreLiftMap, segreLiftVal]

end SegreFibreIdeal

open SegreFibreIdeal in
theorem SegreFibreIdeal.proof : SegreFibreIdeal.Statement := by
  intro O _ Ω _ _ F _ φ K _ _ ι _ y
  refine ⟨?_, ?_, ?_⟩
  · rintro g ⟨c, d, rfl⟩
    have hm : (segreY c * segreMon d - segreY d * segreMon c : MRing (segreIdx ι) O) ∈
        mIdealOver O (segreJoin y) := by
      simp only [mIdealOver, RingHom.mem_ker, map_sub, map_mul, map_prod, segreY, segreMon,
        mConeMapOver, aeval_X, segreJoin, IndefiniteRowSideFullHecke.Kleiman2.joinVec, IndefiniteRowSideFullHecke.Kleiman2.oneBlock,
        NumbersDVR.segreVec, Sum.elim_inr, Finset.prod_mul_distrib]
      ring
    have := Ideal.mem_map_of_mem (MvPolynomial.map φ) hm
    rw [SetLike.mem_coe]
    convert this using 1
    simp [segreY, segreMon, map_prod]
  · rw [Ideal.map_le_iff_le_comap]
    intro f hf
    simp only [Ideal.mem_comap]
    have hr : segreIncl ι F (MvPolynomial.map φ f) = MvPolynomial.map φ (segreIncl ι O f) := by
      simp [segreIncl, MvPolynomial.map_rename]
    rw [hr]
    refine Ideal.mem_map_of_mem _ ?_
    have key : (mConeMapOver O (segreJoin y)).toRingHom.comp (segreIncl ι O).toRingHom =
        (rename (R := Ω) (Sum.inr : K → Unit ⊕ K)).toRingHom.comp (mConeMapOver O y).toRingHom := by
      apply MvPolynomial.ringHom_ext
      · intro a
        simp [segreIncl, mConeMapOver]
      · rintro ⟨k, i⟩
        simp [segreIncl, mConeMapOver, segreJoin, IndefiniteRowSideFullHecke.Kleiman2.joinVec]
    have hc : mConeMapOver O (segreJoin y) (segreIncl ι O f) =
        rename Sum.inr (mConeMapOver O y f) := by
      simpa using congrArg (fun g => g f) key
    rw [mIdealOver, RingHom.mem_ker] at hf ⊢
    rw [hc, hf, map_zero]
  · intro W hW
    rw [Ideal.map_le_iff_le_comap]
    intro f hf
    rw [Ideal.mem_comap, segreLift, RingHom.mem_ker]
    have h1 := congrArg (fun g => g f) (segreLiftMap_map F φ W)
    simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe] at h1
    rw [h1]
    have h2 := congrArg (fun g => g f) (map_cone_theta (O := O) y)
    simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe] at h2
    rw [mIdealOver, RingHom.mem_ker] at hf
    rw [hf, map_zero] at h2
    ext n
    simp only [Polynomial.coeff_map, Polynomial.coe_mapRingHom, Polynomial.coeff_zero,
      RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
    apply hW
    apply Ideal.mem_map_of_mem
    rw [mIdealOver, RingHom.mem_ker]
    have := congrArg (fun p => _root_.AddMonoidAlgebra.coeff (M := ℕ) p n) h2
    simpa [Polynomial.coeff_map] using this

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftMapMap =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeSegreLift =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeSegreLift", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailFurther\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsSideRest\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailExtra\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PModelGenericPoint\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailAlt\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.ImportsTailTer\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.BlockVecSegreJoin\nimport GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeMIdealOverGraph\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PSegreFibresNef\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreInclWeightedHomogeneousComponent\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SegreLiftMapMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open GroundTheory.Heights₂.Heights.NumbersDVR (MRing IsMultiProjPrime intNum)
open GroundTheory.Heights₂.Heights.FieldNumbers (relDim)
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (mIdealOver)

noncomputable section

namespace SegreNef

set_option linter.unusedSectionVars false

variable {F : Type} [Field F] {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem map_id_ideal {σ : Type*} (I : Ideal (MvPolynomial σ F)) :
    I.map (MvPolynomial.map (RingHom.id F)) = I := by
  have h : (MvPolynomial.map (RingHom.id F) : MvPolynomial σ F →+* MvPolynomial σ F) = RingHom.id _ :=
    RingHom.ext MvPolynomial.map_id
  rw [h, Ideal.map_id]

theorem comap_segreLift (W : Ideal (MRing ι F)) : (segreLift ι F W).comap (segreIncl ι F) = W := by
  have h : (segreLiftMap ι F W).comp (segreIncl ι F) =
      (Polynomial.CAlgHom : (MRing ι F ⧸ W) →ₐ[F] Polynomial (MRing ι F ⧸ W)).comp
        (Ideal.Quotient.mkₐ F W) := by
    apply MvPolynomial.algHom_ext
    intro p
    simp [segreIncl, segreLiftMap, segreLiftVal]
  ext g
  rw [Ideal.mem_comap, segreLift, RingHom.mem_ker]
  have hg := congrArg (fun φ => φ g) h
  simp only [AlgHom.comp_apply] at hg
  rw [hg, Polynomial.CAlgHom_apply, Polynomial.C_eq_zero, Ideal.Quotient.mkₐ_eq_mk,
    Ideal.Quotient.eq_zero_iff_mem]

theorem genPt_block_ne_zero (W : Ideal (MRing ι F)) [W.IsPrime] (hW : IsMultiProjPrime W) :
    ∀ k, ∃ i, ModelGenericPoint.genPt W ⟨k, i⟩ ≠ 0 := fun k => by
  obtain ⟨i, hi⟩ := hW.relevant k
  exact ⟨i, (ModelGenericPoint.genPt_ne_zero W _).mpr hi⟩

theorem segreJoin_block_ne_zero {Ω : Type} [Field Ω] (y : (Σ k, ι k) → Ω) (hy : ∀ k, ∃ i, y ⟨k, i⟩ ≠ 0) :
    ∀ k, ∃ i, segreJoin y ⟨k, i⟩ ≠ 0
  | Sum.inl () => ⟨fun k => (hy k).choose,
      show ∏ k, y ⟨k, (hy k).choose⟩ ≠ 0 from Finset.prod_ne_zero_iff.mpr fun k _ => (hy k).choose_spec⟩
  | Sum.inr k => hy k

theorem segreLift_eq_mIdealOver (W : Ideal (MRing ι F)) [W.IsPrime] (hW : IsMultiProjPrime W) :
    segreLift ι F W = mIdealOver F (segreJoin (ModelGenericPoint.genPt W)) := by
  have hy : mIdealOver F (ModelGenericPoint.genPt W) = W :=
    ModelGenericPoint.mIdealOver_genPt W hW.multiHomog
  have hP' : IsMultiProjPrime (mIdealOver F (segreJoin (ModelGenericPoint.genPt W))) :=
    isMultiProjPrime_mIdealOver _ (segreJoin_block_ne_zero _ (genPt_block_ne_zero W hW))
  obtain ⟨hrel, hle, hlift⟩ := SegreFibreIdeal.proof F _ F (RingHom.id F) K ι (ModelGenericPoint.genPt W)
  simp only [map_id_ideal] at hrel hle hlift
  have hc : (mIdealOver F (segreJoin (ModelGenericPoint.genPt W))).comap (segreIncl ι F) = W := by
    refine le_antisymm ?_ (hy.ge.trans hle)
    have h := hlift W hy.le
    exact (Ideal.comap_mono h).trans (comap_segreLift W).le
  calc segreLift ι F W
      = segreLift ι F ((mIdealOver F (segreJoin (ModelGenericPoint.genPt W))).comap (segreIncl ι F)) := by
        rw [hc]
    _ = _ := ((SegreLiftComap.proof F K ι _ hP' hrel).2).symm

theorem isMultiProjPrime_segreLift (W : Ideal (MRing ι F)) (hW : IsMultiProjPrime W) :
    IsMultiProjPrime (segreLift ι F W) := by
  have := hW.isPrime
  rw [segreLift_eq_mIdealOver W hW]
  exact isMultiProjPrime_mIdealOver _ (segreJoin_block_ne_zero _ (genPt_block_ne_zero W hW))

end SegreNef

open SegreNef

theorem SegreLiftRelDim.proof_of_segreDim (hD : SegreDim.Statement) : SegreLiftRelDim.Statement := by
  intro F _ K _ _ ι _ W hW
  have := hW.isPrime
  rw [segreLift_eq_mIdealOver W hW,
    hD F K ι _ (ModelGenericPoint.genPt W) (genPt_block_ne_zero W hW),
    ModelGenericPoint.mIdealOver_genPt W hW.multiHomog]

theorem SegreLiftIntNum.proof_of_segreNum (hN : SegreNum.Statement) : SegreLiftIntNum.Statement := by
  intro F _ K _ _ ι _ W hW β
  have := hW.isPrime
  have h := hN F K ι _ (ModelGenericPoint.genPt W) (genPt_block_ne_zero W hW) 1 ![β]
  have hfun : (fun j : Fin 1 => IndefiniteRowSideFullHecke.Kleiman2.pullDeg (K₁ := Unit) (![β] j)) = ![IndefiniteRowSideFullHecke.Kleiman2.pullDeg β] := by
    funext j
    fin_cases j
    rfl
  rw [hfun, ModelGenericPoint.mIdealOver_genPt W hW.multiHomog] at h
  rw [segreLift_eq_mIdealOver W hW]
  exact h

theorem SegreNef.proof_of_lift (hC : SegreLiftRelDim.Statement) (hN : SegreLiftIntNum.Statement) :
    SegreNef.Statement := by
  intro F _ K _ _ ι _ Ω _ _ y _ β
  have h := segreFibresNef_of_map SegreLiftComap.proof (fun F _ K _ _ ι _ W hW => isMultiProjPrime_segreLift W hW)
    hC hN SegreFibreIdeal.proof F Ω F (RingHom.id F) K ι y β
  rw [map_id_ideal, map_id_ideal] at h
  exact h

theorem SegreNef.proof (hD : SegreDim.Statement) (hN : SegreNum.Statement) : SegreNef.Statement :=
  SegreNef.proof_of_lift (SegreLiftRelDim.proof_of_segreDim hD) (SegreLiftIntNum.proof_of_segreNum hN)

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsMultiProjPrimeSegreLift =====

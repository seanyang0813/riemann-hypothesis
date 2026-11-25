module

public import Formalism.SharpRestriction.LevelLetterCocycles.TeichOnto
public import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalTheoremOfUnramifiedLifting
public import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcParametersShiftInvariant
public import Formalism.SharpRestriction.LevelLetterCocycles.BoundedNumeratorPowerSummability
public import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ConstSectionStatement
public import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi
public import Formalism.SharpRestriction.LevelLetterCocycles.ExponentWindowSubsetShort
public import Mathlib.NumberTheory.Padics.Hensel
public import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingEveryOrdering
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfAssemble
public import Formalism.SharpRestriction.LevelLetterCocycles.InvariantsGenerators
public import Formalism.SharpRestriction.LevelLetterCocycles.SecondComparisonInCoordinates
public import Development.AutomorphicArithmetic.BlochKatoExtensions.BkExtHolds
public import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangeEveryTheory
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfUTieRec
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfComplMax, Formalism.SharpRestriction.LevelLetterCocycles.ThmELiftAtBc, Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryOfDeRham, Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ExpRescaleCoeff, Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicFrobeniusPowerSeriesX, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfArcChoices, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfTeichOnto, Formalism.SharpRestriction.LevelLetterCocycles.Realised2Pf, Formalism.SharpRestriction.LevelLetterCocycles.LocalTheoremOfInputs, Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryConstant

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfComplMax =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfComplMax", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.TeichOnto\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open IsLocalRing

namespace ComplMaxPf

variable {R : Type} [CommRing R]

theorem isAdicComplete_of_pow {I J : Ideal R} (e : ℕ) (he : 1 ≤ e) (h1 : ∀ k, J ^ (e * k) ≤ I ^ k)
    (h2 : ∀ k, I ^ k ≤ J ^ k) (hI : IsAdicComplete I R) : IsAdicComplete J R := by
  have m1 : ∀ k, (J ^ (e * k) • ⊤ : Submodule R R) ≤ I ^ k • ⊤ := fun k => Submodule.smul_mono_left (h1 k)
  have m2 : ∀ k, (I ^ k • ⊤ : Submodule R R) ≤ J ^ k • ⊤ := fun k => Submodule.smul_mono_left (h2 k)
  refine { haus' := fun x hx => hI.haus' x fun k => SModEq.mono (m1 k) (hx (e * k)),
           prec' := fun f hf => ?_ }
  obtain ⟨L, hL⟩ := hI.prec' (fun k => f (e * k)) fun {m n} hmn =>
    SModEq.mono (m1 m) (hf (Nat.mul_le_mul_left e hmn))
  refine ⟨L, fun n => ?_⟩
  have hn : n ≤ e * n := Nat.le_mul_of_pos_left n he
  exact (hf hn).trans (SModEq.mono (m2 n) (hL n))

end ComplMaxPf

theorem complMax_holds : ComplMax := by
  intro O _ _ _ p hpm hp0 hc
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨e, u, hu⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hp0 hϖ
  have he : 1 ≤ e := by
    rcases Nat.eq_zero_or_pos e with rfl | h
    · exfalso
      rw [pow_zero, mul_one] at hu
      rw [hu] at hpm
      exact (IsLocalRing.mem_maximalIdeal _).1 hpm u.isUnit
    · exact h
  have hIk : ∀ k, Ideal.span {(p : O)} ^ k = maximalIdeal O ^ (e * k) := fun k => by
    rw [hϖ.maximalIdeal_eq, Ideal.span_singleton_pow, Ideal.span_singleton_pow, hu, mul_pow, ← pow_mul,
      Ideal.span_singleton_mul_left_unit (u.isUnit.pow k)]
  refine ComplMaxPf.isAdicComplete_of_pow e he (fun k => (hIk k).ge) (fun k => ?_) hc
  rw [hIk k]
  exact Ideal.pow_le_pow_right (Nat.le_mul_of_pos_left k he)

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfComplMax =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.ThmELiftAtBc =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.ThmELiftAtBc", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.WachCoordinates.Br

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Module

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {LL' O' : Type} [Field LL'] [Algebra Qp LL'] [TopologicalSpace LL'] [CommRing O'] [Algebra O' LL']
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n]

theorem comp_inj {E : Type} [Field E] [Algebra Qp E] (ι : LL →ₐ[Qp] LL') :
    Function.Injective (fun τ : E →ₐ[Qp] LL => ι.comp τ) := by
  intro τ τ' h
  apply AlgHom.ext
  intro x
  exact ι.toRingHom.injective (congrArg (fun f : E →ₐ[Qp] LL' => f x) h)

theorem comp_bij {E : Type} [Field E] [Algebra Qp E] [FiniteDimensional Qp E] (ι : LL →ₐ[Qp] LL')
    (hcard : Nat.card (E →ₐ[Qp] LL) = finrank Qp E) :
    Function.Bijective (fun τ : E →ₐ[Qp] LL => ι.comp τ) :=
  (comp_inj ι).bijective_of_nat_card_le (hcard ▸ card_algHom_le_finrank Qp E LL')

variable [Fintype (K →ₐ[Qp] LL)] [Fintype (K →ₐ[Qp] LL')]

theorem thmELiftAt_bc (ι : LL →ₐ[Qp] LL') (v' : AddValuation LL' (WithTop ℚ))
    (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (hfin : FiniteDimensional Qp LL') (hv' : v' (PD.p : LL') = 1)
    (hO' : ∃ hO : IsDomain O', @IsDiscreteValuationRing O' _ hO ∧ IsFractionRing O' LL')
    (hBC : BCAt PD (LL := LL) (O := O) (O' := O') ι)
    (H : ThmELiftAt PD (O := O') n (fun i => ι.comp (emb i)) v') :
    ThmELiftAt PD (O := O) n emb v := by
  intro hL h5 T₁ T₂ F hG hc₁ hc₂ hon j Gp S η h ty cuts arcLen Mb₁ hb₁ Mb₂ hb₂ hK hJ hg hS hC hT hb1 hb2
    hW
  obtain ⟨T₁', T₂', F', hc₁', hc₂', hon', hj, -, hlift, -⟩ := hBC T₁ T₂ F hc₁ hc₂ hon
  apply hlift
  have := PD.finK
  have := PD.finK₀
  obtain ⟨l1, l2, l3, l4, l5, l6⟩ := hL
  have hbK := comp_bij (E := K) ι (by rw [Nat.card_eq_fintype_card]; exact hG.1.2)
  have hbK₀ := comp_bij (E := K₀) ι (by
    rw [← Nat.card_congr (Equiv.ofBijective emb l4), Nat.card_zmod, l3])
  have hL' : Letters PD LL' v' (fun i => ι.comp (emb i)) :=
    ⟨l1, hfin, l3, hbK₀.comp l4, fun i => by
      change (ι.comp (emb (i + 1))).comp PD.σ = ι.comp (emb i)
      rw [AlgHom.comp_assoc, l5], hv'⟩
  have hG' : GoodCoeffs (K := K) (Qp := Qp) (LL := LL') (O := O') (V := T₁'.V) := by
    refine ⟨⟨hfin, ?_⟩, hc₁'.2.1, hO'⟩
    rw [← hG.1.2]
    exact (Fintype.card_of_bijective hbK).symm
  have tr₁ : ∀ (i : ZMod n) (X : Set ℤ), JumpsAtE PD T₁ emb i X →
      JumpsAtE PD T₁' (fun i => ι.comp (emb i)) i X := by
    intro i X hX τ' hτ' a ha
    obtain ⟨τ, rfl⟩ := hbK.2 τ'
    exact hX τ (comp_inj ι (by simpa [AlgHom.comp_assoc] using hτ')) a ((hj τ a).1.1 ha)
  have tr₂ : ∀ (i : ZMod n) (X : Set ℤ), JumpsAtE PD T₂ emb i X →
      JumpsAtE PD T₂' (fun i => ι.comp (emb i)) i X := by
    intro i X hX τ' hτ' a ha
    obtain ⟨τ, rfl⟩ := hbK.2 τ'
    exact hX τ (comp_inj ι (by simpa [AlgHom.comp_assoc] using hτ')) a ((hj τ a).2.1 ha)
  refine H hL' h5 T₁' T₂' F' hG' hc₁' hc₂' hon' j Gp S η h ty cuts arcLen Mb₁ hb₁ Mb₂ hb₂
    (fun i => tr₁ i _ (hK i)) ?_ hg hS hC hT (fun i => tr₁ i _ (hb1 i)) (fun i => tr₂ i _ (hb2 i)) hW
  intro τ' a ha
  obtain ⟨τ, rfl⟩ := hbK.2 τ'
  exact hJ τ a ((hj τ a).1.1 ha)

end Formalism.MainNotions.WachCoordinates.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.ThmELiftAtBc =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryOfDeRham =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryOfDeRham", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalTheoremOfUnramifiedLifting\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcParametersShiftInvariant\npublic import Formalism.SharpRestriction.LevelLetterCocycles.BoundedNumeratorPowerSummability\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ThmELiftAtBc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Module

variable {l : ℕ} [Fact l.Prime]

theorem fd_mu (m : ℕ) :
    FiniteDimensional ℚ_[l] ↥(IntermediateField.adjoin ℚ_[l] {x : Om l | x ^ (l ^ m) = 1}) := by
  classical
  have hl : 0 < l ^ m := pow_pos (Fact.out : l.Prime).pos m
  have hfin : Set.Finite {x : Om l | x ^ (l ^ m) = 1} := by
    have : {x : Om l | x ^ (l ^ m) = 1} ⊆
        ((Polynomial.nthRoots (l ^ m) (1 : Om l)).toFinset : Set (Om l)) := by
      intro x hx
      simp only [Finset.mem_coe, Multiset.mem_toFinset]
      exact (Polynomial.mem_nthRoots hl).2 hx
    exact (Finset.finite_toSet _).subset this
  have := hfin.to_subtype
  exact IntermediateField.finiteDimensional_adjoin fun x _ =>
    (Algebra.IsAlgebraic.isAlgebraic x).isIntegral

def richLL (K LL : FinExt l) (m : ℕ) : FinExt l :=
  ⟨(bigLL K LL).1 ⊔ IntermediateField.adjoin ℚ_[l] {x : Om l | x ^ (l ^ m) = 1}, by
    have := (bigLL K LL).2
    have := fd_mu (l := l) m
    exact IntermediateField.finiteDimensional_sup _ _⟩

theorem le_richLL (K LL : FinExt l) (m : ℕ) : LL.1 ≤ (richLL K LL m).1 := (le_bigLL K LL).trans le_sup_left

theorem caseA_richLL (K LL : FinExt l) (m : ℕ) (hK : K.1 ≤ MaximalUnramifiedExtension l) (h2 : l ≠ 2) :
    CaseA K (richLL K LL m) :=
  ⟨hK, h2, le_rfl, fun h => absurd h h2, (le_inf le_rfl hK).trans le_sup_left, fun τ x =>
    (le_sup_left : (bigLL K LL).1 ≤ (richLL K LL m).1)
      ((le_sup_right : _ ≤ (bigLL K LL).1) (τ.fieldRange_le_normalClosure ⟨x, rfl⟩))⟩

theorem exists_prim_Om (m : ℕ) : ∃ x : Om l, IsPrimitiveRoot x (l ^ m) := by
  have hpos : 0 < l ^ m := pow_pos (Fact.out : l.Prime).pos m
  have : NeZero ((l ^ m : ℕ) : Om l) := ⟨by exact_mod_cast hpos.ne'⟩
  obtain ⟨x, hx⟩ := IsAlgClosed.exists_root (Polynomial.cyclotomic (l ^ m) (Om l))
    (Polynomial.degree_cyclotomic_pos (l ^ m) (Om l) hpos).ne'
  exact ⟨x, (Polynomial.isRoot_cyclotomic_iff).mp hx⟩

theorem prim_richLL (K LL : FinExt l) (m : ℕ) :
    ∃ ζ : ↥(richLL K LL m).1, IsPrimitiveRoot ζ (l ^ m) := by
  obtain ⟨x, hx⟩ := exists_prim_Om (l := l) m
  have hmem : x ∈ (richLL K LL m).1 :=
    (le_sup_right : _ ≤ (richLL K LL m).1) (IntermediateField.subset_adjoin _ _ hx.pow_eq_one)
  exact ⟨⟨x, hmem⟩, IsPrimitiveRoot.coe_submonoidClass_iff.mp hx⟩

theorem lift_of_caseA_rich (Th : LocTheory) (N : ℕ → ℕ)
    (Wf : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l), CaseA K LL →
      LocWach ((Th l).PD K) ↥LL.1 ↥(OL LL) ((Th l).v LL) (finrank ℚ_[l] ↥(K0 K)))
    (hLift : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (h : CaseA K LL)
      [NeZero (finrank ℚ_[l] ↥(K0 K))], 5 ≤ l →
      (∃ ζ : ↥LL.1, IsPrimitiveRoot ζ (l ^ N (finrank ℚ_[l] ↥(K0 K)))) →
      haveI : FiniteDimensional ℚ_[l] ↥K.1 := K.2
      letI : Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) := Fintype.ofFinite _
      ThmELiftAt ((Th l).PD K) (O := ↥(OL LL)) (finrank ℚ_[l] ↥(K0 K)) (Wf l K LL h).emb
        ((Th l).v LL))
    (hBC : admBC Th) :
    ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (n : ℕ) [NeZero n]
      (emb : ZMod n → (↥(K0 K) →ₐ[ℚ_[l]] ↥LL.1)),
      haveI : FiniteDimensional ℚ_[l] ↥K.1 := K.2
      letI : Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) := Fintype.ofFinite _
      ThmELiftAt ((Th l).PD K) (O := ↥(OL LL)) n emb ((Th l).v LL) := by
  intro l _ K LL n _ emb
  have : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  let _ : Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) := Fintype.ofFinite _
  intro hL h5
  have hn := hL.2.2.1
  subst hn
  have h5' : 5 ≤ l := by rwa [(Th l).PD_p K] at h5
  have hK : K.1 ≤ MaximalUnramifiedExtension l := by
    intro x hx
    obtain ⟨y, hy⟩ := hL.1.2 ⟨x, hx⟩
    have : (y : Om l) = x := congrArg Subtype.val hy
    rw [← this]
    exact y.2.2
  set m := N (finrank ℚ_[l] ↥(K0 K))
  have hA := caseA_richLL K LL m hK (by omega)
  let _ : Fintype (↥K.1 →ₐ[ℚ_[l]] ↥(richLL K LL m).1) := Fintype.ofFinite _
  have H' : ThmELiftAt ((Th l).PD K) (O := ↥(OL (richLL K LL m))) (finrank ℚ_[l] ↥(K0 K))
      (fun i => (IntermediateField.inclusion (le_richLL K LL m)).comp (emb i))
      ((Th l).v (richLL K LL m)) := by
    intro hL'
    obtain ⟨a, ha⟩ := exists_rot (PD := (Th l).PD K)
      (emb := fun i => (IntermediateField.inclusion (le_richLL K LL m)).comp (emb i))
      (Wf l K (richLL K LL m) hA).emb_bij.2
      hL'.2.2.2.2.1 (Wf l K (richLL K LL m) hA).emb_σ
    have := thmELiftAt_rot (Wf l K (richLL K LL m) hA).emb a
      (hLift l K (richLL K LL m) hA h5' (prim_richLL K LL m))
    rw [← ha] at this
    exact this hL'
  exact thmELiftAt_bc (IntermediateField.inclusion (le_richLL K LL m)) ((Th l).v (richLL K LL m))
    emb (richLL K LL m).2 (by rw [(Th l).PD_p K]; exact (Th l).v_l _)
    ⟨inferInstance, Formalism.BasicNotions.Examples₂.LB.OL_dvr _, Formalism.BasicNotions.Examples₂.LB.OL_frac _⟩
    (hBC l K LL (richLL K LL m) (le_richLL K LL m)) H' hL h5

theorem local_theorem_of_cyclotomic_lift (Th : LocTheory) (N : ℕ → ℕ)
    (Wf : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l), CaseA K LL →
      LocWach ((Th l).PD K) ↥LL.1 ↥(OL LL) ((Th l).v LL) (finrank ℚ_[l] ↥(K0 K)))
    (hLift : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (h : CaseA K LL)
      [NeZero (finrank ℚ_[l] ↥(K0 K))], 5 ≤ l →
      (∃ ζ : ↥LL.1, IsPrimitiveRoot ζ (l ^ N (finrank ℚ_[l] ↥(K0 K)))) →
      haveI : FiniteDimensional ℚ_[l] ↥K.1 := K.2
      letI : Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) := Fintype.ofFinite _
      ThmELiftAt ((Th l).PD K) (O := ↥(OL LL)) (finrank ℚ_[l] ↥(K0 K)) (Wf l K LL h).emb
        ((Th l).v LL))
    (hBC : admBC Th) : LiftingTheoremLocalTheory Th 800 :=
  ⟨lift_of_caseA_rich Th N Wf hLift hBC, thmEBound_holds⟩

end Formalism.MainNotions.N.Ln03
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryOfDeRham =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ExpRescaleCoeff =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ExpRescaleCoeff", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ConstSectionStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace LevelStatements.Lv

open PowerSeries IsLocalRing

theorem expRescale_coeff (S : Type) [CommRing S] [Algebra ℚ S] (E : PowerSeries S)
    (h0 : constantCoeff E = 1) (hd : PowerSeries.derivative E = E) (n : ℕ) :
    coeff n E = algebraMap ℚ S (1 / (n.factorial : ℚ)) := by
  induction n with
  | zero => simp [h0]
  | succ n ih =>
    have h := congrArg (coeff n) hd
    rw [PowerSeries.coeff_derivative, ih] at h
    have hn : ((n : S) + 1) = algebraMap ℚ S ((n : ℚ) + 1) := by simp
    rw [hn] at h
    have hu : coeff (n + 1) E =
        coeff (n + 1) E * algebraMap ℚ S ((n : ℚ) + 1) * algebraMap ℚ S (1 / ((n : ℚ) + 1)) := by
      rw [mul_assoc, ← map_mul, mul_one_div_cancel (by positivity), map_one, mul_one]
    rw [hu, h, ← map_mul, Nat.factorial_succ]
    congr 1
    push_cast
    field_simp

theorem expRescale : ExpRescaleStatement := by
  intro S _ _ E h0 hd
  have hE : E = PowerSeries.exp S := by
    ext n
    rw [expRescale_coeff S E h0 hd n, PowerSeries.coeff_exp]
  refine ⟨hE, fun a => ?_⟩
  rw [hE, PowerSeries.exp_pow_eq_rescale_exp]

end LevelStatements.Lv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ExpRescaleCoeff =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicFrobeniusPowerSeriesX =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicFrobeniusPowerSeriesX", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicPowerSeries.ExpRescaleCoeff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows PowerSeries

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}

theorem cyclotomicFrobeniusPowerSeries_X (W : LocWach PD LL O v n) : W.φ₀ X = (1 + X) ^ PD.p - 1 := by
  rw [W.φ₀_X, W.q₀_def]

theorem cyclo_comp_mul_X {R : Type} [CommRing R] (p : ℕ) [hp : Fact p.Prime] :
    (Polynomial.cyclotomic p R).comp (Polynomial.X + 1) * Polynomial.X =
      (Polynomial.X + 1) ^ p - 1 := by
  rw [Polynomial.cyclotomic_prime]
  have hc : (∑ i ∈ Finset.range p, (Polynomial.X : Polynomial R) ^ i).comp (Polynomial.X + 1) =
      ∑ i ∈ Finset.range p, (Polynomial.X + 1) ^ i := by
    simp [Polynomial.comp, Polynomial.eval₂_finsetSum]
  have h := geom_sum_mul (Polynomial.X + 1 : Polynomial R) p
  rw [add_sub_cancel_right] at h
  rw [hc, h]

theorem glue2 [IsDomain O] (hR : Ring9 W) :
    ∃ w : (PowerSeries O)ˣ, (baseIdOf hR).ι (baseIdOf hR).Bs.q = (w : PowerSeries O) *
      (((Polynomial.cyclotomic PD.p O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O) := by
  obtain ⟨w, hw⟩ := hR.2.2.2.2.1
  have h0 := congrFun hw 0
  have hq : (baseIdOf hR).ι (baseIdOf hR).Bs.q = W.π₀₁ + PowerSeries.C ((PD.p : ℕ) : O) := by
    change (baseIdOf hR).ι (PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) = _
    rw [map_add (f := _), (baseIdOf hR).ι_X]
    congr 1
    exact (baseIdOf hR).ι.commutes _
  have hcyc : (W.q₀ : PowerSeries O) =
      (((Polynomial.cyclotomic PD.p O).comp (Polynomial.X + 1) : Polynomial O) : PowerSeries O) := by
    have hX : (PowerSeries.X : PowerSeries O) ≠ 0 := PowerSeries.X_ne_zero
    apply mul_left_cancel₀ hX
    rw [W.q₀_def]
    have := congrArg (fun f : Polynomial O => (f : PowerSeries O)) (cyclo_comp_mul_X (R := O) PD.p)
    simp only [Polynomial.coe_mul, Polynomial.coe_X, Polynomial.coe_sub, Polynomial.coe_pow,
      Polynomial.coe_add, Polynomial.coe_one] at this
    rw [mul_comm, this, add_comm]
  have h0' : W.q₀ = (w : LetA O n) 0 * (W.π₀₁ + PowerSeries.C ((PD.p : ℕ) : O)) := by
    simpa [LocWach.q, Formalism.MainNotions.DeltaInvariantLattices.Eat, LocWach.π₀, Polynomial.aeval_add, Polynomial.aeval_X,
      Polynomial.aeval_C] using h0
  let w0 : (PowerSeries O)ˣ := Units.map (Pi.evalMonoidHom (fun _ : ZMod n => PowerSeries O) 0) w
  refine ⟨w0⁻¹, ?_⟩
  rw [hq, ← hcyc, h0']
  change _ = ((w0⁻¹ : (PowerSeries O)ˣ) : PowerSeries O) * ((w0 : PowerSeries O) * _)
  rw [← mul_assoc, Units.inv_mul, one_mul]

theorem rhoZ_exp [CharZero LL] (c : ZMod n) (ζ : LL) (hζ : ∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) :
    1 + rhoZ W c ζ X = PowerSeries.C ζ * exp LL := by
  obtain ⟨E, h0, h1, h2⟩ := W.lev_π c ζ hζ
  have hE := (LevelStatements.Lv.expRescale LL E h0 h1).1
  rw [← hE, ← h2]
  rfl

end Formalism.MainNotions.N.Ln03
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicFrobeniusPowerSeriesX =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfArcChoices =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfArcChoices", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExponentWindowSubsetShort\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.MainNotions.WachCoordinates

theorem hn_of {n j : ℕ} {ty : ZMod n → LT} {cuts : Finset (ZMod n)} {arcLen : ZMod n → ℕ}
    (hCu : CutsOK n j ty cuts arcLen) {c : ZMod n} (hc : c ∈ (cutsOf hCu).cuts) :
    (cutsOf hCu).ell c ≤ n :=
  (cutsOf hCu).ell_le c hc

theorem hj_of {n j : ℕ} {ty : ZMod n → LT} {cuts : Finset (ZMod n)} {arcLen : ZMod n → ℕ}
    (hCu : CutsOK n j ty cuts arcLen) {c : ZMod n} (hc : c ∈ (cutsOf hCu).cuts) :
    j ≤ (cutsOf hCu).ell c := by
  simp only [Formalism.MainNotions.WachCoordinates.cutsOf_cuts] at hc
  simp only [Formalism.MainNotions.WachCoordinates.cutsOf_ell]
  exact hCu.2.2.2.1 c hc

theorem three_g_le_parameter_bound {l : ℕ} (hl : 2 ≤ l) {G S η h : ℕ} (hg : gPar G S η ≤ h) :
    3 * gPar G S η ≤ (l - 1) * Formalism.ExponentWindows.E.parM l h (gPar G S η) := by
  unfold Formalism.ExponentWindows.E.parM
  have hd : 0 < l - 1 := by omega
  have h1 := Nat.lt_mul_div_succ (h + 2 * gPar G S η) hd
  exact le_of_lt (lt_of_le_of_lt (by omega) h1)

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfArcChoices =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfTeichOnto =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfTeichOnto", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.TeichOnto\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Padics.Hensel\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.MainNotions.N.Ln03 Polynomial

theorem teichOnto_toZMod_eq_zero_iff {p : ℕ} [Fact p.Prime] (x : ℤ_[p]) :
    PadicInt.toZMod x = 0 ↔ ‖x‖ < 1 := by
  rw [← RingHom.mem_ker, PadicInt.ker_toZMod, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
    ← PadicInt.mem_nonunits, mem_nonunits_iff]

theorem teichOnto_norm_eq_one {p : ℕ} [Fact p.Prime] (x : ℤ_[p]) (h : PadicInt.toZMod x ≠ 0) :
    ‖x‖ = 1 :=
  le_antisymm (PadicInt.norm_le_one x) (not_lt.mp fun h' => h ((teichOnto_toZMod_eq_zero_iff x).mpr h'))

theorem teichOnto_holds (p : ℕ) [Fact p.Prime] : TeichOnto p := by
  intro a ha
  have hp : p.Prime := Fact.out
  set a₀ : ℤ_[p] := ((a.val : ℕ) : ℤ_[p]) with ha₀
  have hres : PadicInt.toZMod a₀ = a := by rw [ha₀, map_natCast, ZMod.natCast_zmod_val]
  set F : Polynomial ℤ_[p] := X ^ (p - 1) - 1 with hF
  have hFa : F.aeval a₀ = a₀ ^ (p - 1) - 1 := by simp [hF]
  have hF'a : F.derivative.aeval a₀ = ((p - 1 : ℕ) : ℤ_[p]) * a₀ ^ (p - 1 - 1) := by
    simp [hF, Polynomial.derivative_X_pow]
  have h1 : ‖F.aeval a₀‖ < 1 := by
    rw [← teichOnto_toZMod_eq_zero_iff, hFa, map_sub, map_pow, hres, map_one,
      ZMod.pow_card_sub_one_eq_one ha, sub_self]
  have h2 : ‖F.derivative.aeval a₀‖ = 1 := by
    apply teichOnto_norm_eq_one
    rw [hF'a, map_mul, map_pow, hres, map_natCast]
    refine mul_ne_zero ?_ (pow_ne_zero _ ha)
    rw [Nat.cast_sub hp.one_le, ZMod.natCast_self, Nat.cast_one, zero_sub, neg_ne_zero]
    exact one_ne_zero
  obtain ⟨z, hz, hza, -, -⟩ := hensels_lemma (F := F) (a := a₀) (by rw [h2, one_pow]; exact h1)
  rw [h2] at hza
  have hzp : z ^ (p - 1) = 1 := by
    have : F.aeval z = z ^ (p - 1) - 1 := by simp [hF]
    rw [this, sub_eq_zero] at hz
    exact hz
  have hzz : z * z ^ (p - 2) = 1 := by
    have h2p := hp.two_le
    rw [← pow_succ', show p - 2 + 1 = p - 1 by omega, hzp]
  let u : ℤ_[p]ˣ := ⟨z, z ^ (p - 2), hzz, by rw [mul_comm]; exact hzz⟩
  refine ⟨⟨u, Units.ext (by rw [Units.val_pow_eq_pow_val, Units.val_one]; exact hzp)⟩, ?_⟩
  show PadicInt.toZMod z = a
  have h3 : PadicInt.toZMod (z - a₀) = 0 := (teichOnto_toZMod_eq_zero_iff _).mpr hza
  rw [map_sub, sub_eq_zero, hres] at h3
  exact h3

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfTeichOnto =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.Realised2Pf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.Realised2Pf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingEveryOrdering\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CyclotomicFrobeniusPowerSeriesX\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfArcChoices\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfAssemble\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfTeichOnto\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows IsLocalRing

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}

theorem basis_of {I : BaseId W} {T : LocLat G Qp LL O} (hInj : I.Inj) (hFull : I.Full)
    (hmod : Formalism.MainNotions.DeltaInvariantLattices.wachModuleOverLetters W T W.π₀) (C : Coord W I T) (i : ZMod n) :
    ∃ (r : ℕ) (e : Fin r → C.V) (b : Module.Basis (Fin r) (PowerSeries O) ↥((latOf C).N i)),
      ∀ k, (b k : C.V) = e k := by
  obtain ⟨r, e, hli, hsp⟩ := free_of hInj hFull hmod C i
  refine ⟨r, e, (Module.Basis.span hli).map (LinearEquiv.ofEq _ _ hsp), fun k => ?_⟩
  simp [Module.Basis.span_apply]

theorem matrix_of {V₁ V₂ : Type} [AddCommGroup V₁] [Module (PowerSeries O) V₁] [AddCommGroup V₂]
    [Module (PowerSeries O) V₂] {N₂ : Submodule (PowerSeries O) V₂} {r₁ r₂ : ℕ} (f : V₁ → V₂)
    (e₁ : Fin r₁ → V₁) (e₂ : Fin r₂ → V₂) (b₂ : Module.Basis (Fin r₂) (PowerSeries O) ↥N₂)
    (hb₂ : ∀ k, (b₂ k : V₂) = e₂ k) (hf : ∀ k, f (e₁ k) ∈ N₂) :
    ∃ P : (Fin r₁ → O) →ₗ[O] (Fin r₂ → O), ∀ k, ∃ a : Fin r₂ → PowerSeries O,
      f (e₁ k) = ∑ l, a l • e₂ l ∧ ∀ l, LinearMap.toMatrix' P l k = PowerSeries.constantCoeff (a l) := by
  refine ⟨Matrix.toLin' (Matrix.of fun l k => PowerSeries.constantCoeff (b₂.repr ⟨_, hf k⟩ l)),
    fun k => ⟨fun l => b₂.repr ⟨_, hf k⟩ l, ?_, fun l => by simp⟩⟩
  have h := b₂.sum_repr ⟨_, hf k⟩
  have h' := congrArg (fun x : ↥N₂ => (x : V₂)) h
  simp only [Submodule.coe_sum, Submodule.coe_smul, hb₂] at h'
  exact h'.symm

variable [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (maximalIdeal O) O] [CharZero LL]
  [IsFractionRing O LL] [Fintype (K →ₐ[Qp] LL)]

theorem realised2_pf (Lb : LevB W) (hR : Ring9 W) (e : W.DD W.one) (uZ : ℤ_[PD.p]ˣ)
    (ιZ : ℤ_[PD.p] →+* O)
    (hLevN : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (hCmp : ∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ → ∀ (i : ZMod n) (x : ↥(W.N T)),
      W.cmp T ((letE i : LetA O n) • x) = Lb.levB T i 1 x 0)
    (hLevBφ : ∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ → ∀ (i : ZMod n) (ζ : LL),
      (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) • φVB PD (LL := LL) (V := T.V)
            (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (hLevBΓ : ∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL)
      (j a : ℕ), IsPrimitiveRoot ζ (PD.p ^ j) →
      (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) → ζ' = ζ ^ a →
      ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (hLevΓ : ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ), IsPrimitiveRoot ζ (PD.p ^ j) →
      (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) → ζ' = ζ ^ a →
      ∀ f : LetA O n, W.lev i ζ (W.γA g f) = PowerSeries.rescale (algebraMap O LL (W.χΓ g : O)) (W.lev i ζ' f))
    (hLevφ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (hs : W.s = 1) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (hP4 : Formalism.MainNotions.DeltaInvariantLattices.P4W W Pt)
    (hP4Lev : LevelMapHodgeFiltration W) (hSat : Sat W) (hP3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (hP9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W)
    (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hLem3 : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeLengthLemma W) (hDdR : Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris PD LL)
    (hHod : ∀ (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L), CrysLat PD T₁ → CrysLat PD T₂ →
      F.Onto → ∀ (τ : K →ₐ[Qp] LL) (a : ℤ), IsJumpV PD T₂.ρ τ a → IsJumpV PD T₁.ρ τ a)
    (hV : ValRing O v) (hK : Function.Bijective (algebraMap K₀ K))
    (hpm : (PD.p : O) ∈ maximalIdeal O) (hrich : ∃ ζ : LL, IsPrimitiveRoot ζ (PD.p ^ n))
    (huZ : ((uZ : ℤ_[PD.p]) - 1).valuation = 1) (hutie : ιZ uZ = (W.χΓ W.gam : O))
    (he : UnitGen W e) (hone : IsCrys PD W.one.ρ) (h5 : 5 ≤ PD.p) : Realised2 hR e := by
  intro T₁ T₂ F hG hc₁ hc₂ hon j Gp S η h ty cuts arcLen hCu hKJ hJ hg hS hT
  obtain ⟨C₁, C₂, C₀, hC, e₀, he₀⟩ :=
    Formalism.MainNotions.N.Ln03.Pf.coordSteps_holds hR hs hP9 hLem3 hDdR he hone hK h5 T₁ T₂ F hc₁ hc₂ hon
  refine ⟨{ C₁ := C₁, C₂ := C₂, C₀ := C₀, h := hC, e₀ := e₀, Ks := KsW W, Δ := DeltaT PD.p },
    { he₀ := he₀, arcs := fun ϖ hϖ c hc => ?_ }⟩
  have hp2 : PD.p ≠ 2 := by omega
  have hp9 : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → Formalism.MainNotions.DeltaInvariantLattices.wachModuleOverLetters W T W.π₀ := fun T hT =>
    ((hP9 T hT hs hp2).2.2 (unram_of hK)).2
  obtain ⟨r₁, e₁, b₁, hb₁⟩ := basis_of (baseIdOf_inj hR) (baseIdOf_full hR) (hp9 T₁ hc₁.2.2.2) C₁
    (c - ((cutsOf hCu).ell c : ZMod n))
  obtain ⟨r₂, e₂, b₂, hb₂⟩ := basis_of (baseIdOf_inj hR) (baseIdOf_full hR) (hp9 T₂ hc₂.2.2.2) C₂
    (c - ((cutsOf hCu).ell c : ZMod n))
  obtain ⟨P, hP⟩ := matrix_of (latHomOf hC).f e₁ e₂ b₂ hb₂ (fun k =>
    (latHomOf hC).map_N _ _ (by rw [← hb₁ k]; exact (b₁ k).2))
  exact Formalism.MainNotions.N.Ln03.Pf.finalArc_holds Lb uZ ιZ hC c _ _ ϖ j _ _ Gp S η ty e₁ e₂ P hLevN hCmp hLevBφ
    hLevBΓ hLevΓ hLevφ hs hP4 hP4Lev hSat hP3 hP9 hP5 hDdR hHod hc₁ hc₂ hon hKJ hV hK hϖ hpm
    (Formalism.MainNotions.N.Ln03.Pf.hn_of hCu hc) hrich (glue2 hR) (cyclotomicFrobeniusPowerSeries_X W)
    (fun s _ ζ hζ => rhoZ_exp c ζ ⟨s + 1, (mem_primitiveRoots (pow_pos PD.hp.pos _)).1 hζ⟩)
    huZ hutie (Formalism.MainNotions.N.Ln03.Pf.teichOnto_holds PD.p) h5 b₁ hb₁ b₂ hb₂ hP
    (Formalism.MainNotions.N.Ln03.Pf.hj_of hCu hc) (Formalism.MainNotions.N.Ln03.Pf.three_g_le_parameter_bound PD.hp.two_le hg)

end Formalism.MainNotions.N.Ln03
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.Realised2Pf =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LocalTheoremOfInputs =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LocalTheoremOfInputs", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantsGenerators\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SecondComparisonInCoordinates\npublic import Development.AutomorphicArithmetic.BlochKatoExtensions.BkExtHolds\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE\npublic import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangeEveryTheory\npublic import Formalism.SharpRestriction.LevelLetterCocycles.BoundedNumeratorPowerSummability\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfComplMax\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfUTieRec\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryOfDeRham\npublic import Formalism.SharpRestriction.LevelLetterCocycles.Realised2Pf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingEveryOrdering\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Module IsLocalRing

def levBOfSit {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {K : FinExt l} {s : ℕ}
    {LL : FinExt l} {h : Good K s LL}
    {W : LocWach (P.PD K) ↥LL.1 ↥(OL LL) (P.v LL) (finrank ℚ_[l] ↥(K0 K))} {E : EtSit P AI K s LL h W}
    (S : CmpSit P AI K s LL h E) : LevB W where
  levB := S.tie.levB
  mem := S.tie.levB_mem
  supp := S.tie.levB_supp



theorem local_theorem_of_inputs (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F) (C : ℝ)
    (hP3 : Formalism.MainNotions.DeltaInvariantLattices.P3 D HW F Cm) (hP4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm) (hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5 D HW F)
    (hP6 : Formalism.MainNotions.DeltaInvariantLattices.P6 D HW F) (hP9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F) (hPr2a : Formalism.MainNotions.DeltaInvariantLattices.Pr2a D HW F)
    (hLem3 : Formalism.MainNotions.DeltaInvariantLattices.lem3 D HW F)
    (h3 : adm3 D HW F) (h4 : ArchimedeanSignatureMatching D HW F C) (h7 : adm7 D HW F Cm)
    (h8 : adm8 D HW F) (h9a : adm9 D HW F) (h10 : adm10 D HW F) (h14 : adm14 D)
    (hDdR : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l), CaseA K LL →
      Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris ((D.loc l).PD K) ↥LL.1)
    (h9 : Formalism.MainNotions.LocalSituation.adm9 D HW F) (hFont : Formalism.MainNotions.InvariantsGenerators.LitFont D HW F)
    (hUG : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (h : CaseA K LL), 5 ≤ l →
      ∃ e, UnitGen ((HW l).W K 1 LL h.2.2) e) : Conclusion1 D 800 := by
  refine local_theorem_of_cyclotomic_lift D.loc id (fun l _ K LL h => (HW l).W K 1 LL h.2.2)
    (fun l _ K LL h _ h5 hz => ?_) (Formalism.MainNotions.UnusedSlot80.base_change_every_theory D.loc)
  have : FiniteDimensional ℚ_[l] ↥K.1 := K.2
  let _ : Fintype (↥K.1 →ₐ[ℚ_[l]] ↥LL.1) := Fintype.ofFinite _
  refine crystalline_lifting_second_form (brHyp2_of_rec (D.loc l) h h5 _ ((HW l).W_s K 1 LL h.2.2)
    (hP5 l K 1 LL h.2.2) (hP6 l K 1 LL h.2.2) (hP9 l K 1 LL h.2.2) (hPr2a l K 1 LL h.2.2)
    (h3.1 l K 1 LL h.2.2) (h4 l K 1 LL h.2.2)
    (h7 l K LL h h5).1 (h9a l K LL h h5) (h10 l K LL h h5) (h14 l K LL) ?_)
  have : FiniteDimensional ℚ_[l] ↥LL.1 := LL.2
  obtain ⟨e, he⟩ := hUG l K LL h h5
  refine ⟨e, he, UpperTheory.Prune.bkExt_holds D HW F h9 hFont l K LL h h5 e he, fun hR => ?_⟩
  have hV := valRing_rec (D.loc l) LL
  have hpl := (D.loc l).PD_p K
  have : IsDiscreteValuationRing ↥(OL LL) := Formalism.BasicNotions.Examples₂.LB.OL_dvr LL
  have : IsFractionRing ↥(OL LL) ↥LL.1 := Formalism.BasicNotions.Examples₂.LB.OL_frac LL
  have hpm : ((((D.loc l).PD K).p : ℕ) : ↥(OL LL)) ∈ maximalIdeal ↥(OL LL) :=
    (mem_maximalIdeal _).2 (not_isUnit_p ((HW l).W K 1 LL h.2.2) hV)
  have hpm' : ((l : ℕ) : ↥(OL LL)) ∈ maximalIdeal ↥(OL LL) := by
    have h' := hpm
    rwa [hpl] at h'
  have hp0 : ((l : ℕ) : ↥(OL LL)) ≠ 0 := by
    intro h0
    have h0' := congrArg (algebraMap ↥(OL LL) ↥LL.1) h0
    rw [map_natCast, map_zero] at h0'
    exact (Nat.cast_ne_zero.2 (Fact.out : l.Prime).ne_zero) h0'
  have : IsAdicComplete (maximalIdeal ↥(OL LL)) ↥(OL LL) :=
    Formalism.MainNotions.N.Ln03.Pf.complMax_holds ↥(OL LL) l hpm' hp0 (complete_OL LL)
  obtain ⟨uZ, huZ, hutie⟩ := Formalism.MainNotions.N.Ln03.Pf.uTieRec_holds D HW l K LL h h5
  have hrich : ∃ ζ : ↥LL.1, IsPrimitiveRoot ζ (((D.loc l).PD K).p ^ finrank ℚ_[l] ↥(K0 K)) := by
    obtain ⟨ζ, hζ⟩ := hz
    exact ⟨ζ, by rw [hpl]; exact hζ⟩
  have h5' : 5 ≤ ((D.loc l).PD K).p := by rw [hpl]; exact h5
  refine realised2_pf (K := ↥K.1) (W := (HW l).W K 1 LL h.2.2) (levBOfSit ((Cm l).C K 1 LL h.2.2)) hR e uZ
    (ιZrec (D.loc l) K LL)
    ?_ ?_ ?_ ?_ ?_ ?_ ((HW l).W_s K 1 LL h.2.2) (hP4 l K 1 LL h.2.2) ?_ ?_ (hP3 l K 1 LL h.2.2)
    (hP9 l K 1 LL h.2.2) (hP5 l K 1 LL h.2.2) ?_ ?_ ?_ hV (unram_of_caseA h) hpm hrich huZ hutie he ?_ h5'
  · exact ((Cm l).C K 1 LL h.2.2).tie.levN_eq
  · exact ((Cm l).C K 1 LL h.2.2).tie.cmp_eq
  · exact ((Cm l).C K 1 LL h.2.2).tie.levB_φ
  · exact ((Cm l).C K 1 LL h.2.2).tie.levB_Γ
  · exact ((Cm l).C K 1 LL h.2.2).tie.lev_Γ
  · exact ((Cm l).C K 1 LL h.2.2).tie.lev_φ
  · exact (h7 l K LL h h5).2
  · exact h8 l K LL h h5
  · exact hLem3 l K 1 LL h.2.2
  · exact hDdR l K LL h
  · exact (h14 l K LL).1
  · exact Formalism.MainNotions.LiftingTheory.gen_one_crys _

theorem logb_nat_nonneg_sk (p h : ℕ) (hp : 11 ≤ p) : 0 ≤ Real.logb p (h : ℝ) := by
  rcases Nat.eq_zero_or_pos h with rfl | hh
  · simp
  · apply Real.logb_nonneg
    · have : (11 : ℝ) ≤ p := by exact_mod_cast hp
      linarith
    · exact_mod_cast hh

theorem corollary_monotone_in_constant (D : D7) (C C' : ℝ) (h : C ≤ C') (H : Conclusion2 D C) : Conclusion2 D C' := by
  intro l _ K LL n _ emb
  have H' := H l K LL n emb
  intro hL h11 T₁ T₂ F hG h1 h2 hF r b w S η j typ sz hr hj hn hJ hT hb hC
  obtain ⟨mm, k, e1, e2, e3⟩ := H' hL h11 T₁ T₂ F hG h1 h2 hF r b w S η j typ sz hr hj hn hJ hT
    (le_trans (by gcongr) hb) hC
  refine ⟨mm, k, e1, e2, le_trans e3 ?_⟩
  have hp : (11 : ℝ) ≤ ((D.loc l).PD K).p := by exact_mod_cast h11
  refine mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right h ?_) ?_) ?_) ?_
  · positivity
  · positivity
  · have := logb_nat_nonneg_sk ((D.loc l).PD K).p (hCor b w S η sz) h11
    have h3 : (0 : ℝ) ≤ (((D.loc l).PD K).p : ℝ) - 1 := by linarith
    positivity
  · positivity

theorem corollary_local_exists_constant : ∃ C₀ : ℝ, ∀ (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F) (C : ℝ),
    Formalism.MainNotions.DeltaInvariantLattices.P3 D HW F Cm → Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm → Formalism.MainNotions.DeltaInvariantLattices.P5 D HW F →
    Formalism.MainNotions.DeltaInvariantLattices.P6 D HW F → Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F → Formalism.MainNotions.DeltaInvariantLattices.Pr2a D HW F → Formalism.MainNotions.DeltaInvariantLattices.lem3 D HW F →
    adm3 D HW F → ArchimedeanSignatureMatching D HW F C → adm7 D HW F Cm → adm8 D HW F → adm9 D HW F →
    adm10 D HW F → adm12 D → adm14 D →
    (∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l), CaseA K LL →
      Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris ((D.loc l).PD K) ↥LL.1) →
    Formalism.MainNotions.LocalSituation.adm9 D HW F → Formalism.MainNotions.InvariantsGenerators.LitFont D HW F →
    (∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (h : CaseA K LL), 5 ≤ l →
      ∃ e, UnitGen ((HW l).W K 1 LL h.2.2) e) →
    Conclusion1 D 800 ∧ ∀ C₂ : ℝ, C₀ ≤ C₂ → Conclusion2 D C₂ := by
  obtain ⟨C', h1', h'⟩ := corollary_of_Theorem_E
  refine ⟨max C' (4 * 800), fun D HW F Cm C hP3 hP4 hP5 hP6 hP9 hPr2a hLem3 h3 h4 h7 h8 h9a h10 h12 h14
    hDdR h9 hFont hUG => ?_⟩
  have hp1 := local_theorem_of_inputs D HW F Cm C hP3 hP4 hP5 hP6 hP9 hPr2a hLem3 h3 h4 h7 h8 h9a h10 h14 hDdR h9 hFont hUG
  refine ⟨hp1, fun C₂ h2 => ?_⟩
  refine corollary_monotone_in_constant D _ C₂ h2 ?_
  refine h' D 800 (by norm_num) hp1 h12 ?_
  intro l _ K LL n _ emb T₁ T₂ F h1 h2 hF i A hA' τ hτ a ha
  exact hA' τ hτ a ((h14 l K LL).1 T₁ T₂ F h1 h2 hF τ a ha)

end Formalism.MainNotions.N.Ln03
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LocalTheoremOfInputs =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryConstant =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryConstant", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalTheoremOfInputs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br

def localCorollaryConstant : ℝ := Classical.choose corollary_local_exists_constant

theorem local_corollary_of_de_rham (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (CR E1 E2 : ℝ) (hE1 : E1 = 800) (hE2 : localCorollaryConstant ≤ E2)
    (hDdR : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l), CaseA K LL →
      Formalism.MainNotions.TruncatedSeriesCountingBounds.DdREqDcris ((D.loc l).PD K) ↥LL.1)
    (h9 : Formalism.MainNotions.LocalSituation.adm9 D HW F) (hFont : Formalism.MainNotions.InvariantsGenerators.LitFont D HW F)
    (hUG : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (h : CaseA K LL), 5 ≤ l →
      ∃ e, UnitGen ((HW l).W K 1 LL h.2.2) e) :
    Stmt D HW F Cm CR E1 E2 := by
  have h := Classical.choose_spec corollary_local_exists_constant
  intro hA
  subst hE1
  obtain ⟨a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16⟩ := hA
  obtain ⟨t1, c2, pr2, l3⟩ := a1
  have hP3 : Formalism.MainNotions.DeltaInvariantLattices.P3 D HW F Cm := fun l _ K s LL hg => (t1 l K s LL hg).2.2.1
  have hP4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm := fun l _ K s LL hg => (t1 l K s LL hg).2.2.2.1
  have hP5 : Formalism.MainNotions.DeltaInvariantLattices.P5 D HW F := fun l _ K s LL hg => (t1 l K s LL hg).2.2.2.2.1
  have hP6 : Formalism.MainNotions.DeltaInvariantLattices.P6 D HW F := fun l _ K s LL hg => (t1 l K s LL hg).2.2.2.2.2.1
  have hP9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F := fun l _ K s LL hg => (t1 l K s LL hg).2.2.2.2.2.2.2.2.1
  have hP2a : Formalism.MainNotions.DeltaInvariantLattices.Pr2a D HW F := fun l _ K s LL hg => (pr2 l K s LL hg).1
  have r := h D HW F Cm CR hP3 hP4 hP5 hP6 hP9 hP2a l3 a3 a4 a7 a8 a9 a10 a12 a14 hDdR h9 hFont hUG
  exact ⟨r.1, r.2 E2 hE2⟩

end Formalism.MainNotions.N.Ln03
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LocalCorollaryConstant =====

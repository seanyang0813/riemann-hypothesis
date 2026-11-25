module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.ThetaMove
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSympLevel
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIvDOfDefinite
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.TorsionEqOneOfTranslationKeepsRatios
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SquareUnits
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.UnitOnInjectiveOfCommRing
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsUniqueFactorOfIsAlgClosed
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Counterexamples.AbelianLawCounterexamples.WeilIsUniqueOfLocal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFullSymplecticLevelStructureOfTateIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFullSymplecticLevelStructureUniqueOfLevels, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueFullLevel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPointStatement

-- ===== clump member: Development.AbelianVarietyTheory.Counterexamples.AbelianLawCounterexamples.WeilIsUniqueOfLocal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Counterexamples.AbelianLawCounterexamples.WeilIsUniqueOfLocal", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.ThetaMove\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.TorsionEqOneOfTranslationKeepsRatios\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SquareUnits\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
  TopologicalSpace

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.ThetaGroupTest

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
  ReciprocityTheory.ChartRestriction.G.H1.SectionArithmetic ReciprocityTheory.ChartRestriction.G.H1.SquareUnits GlobalTheory.ThetaScalar

variable {S : Scheme.{0}} {A : Over S} [GrpObj A] {L : LB A.left} {k : ℤ} {T : Over S}

end GlobalTheory.ThetaGroupTest
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Counterexamples.AbelianLawCounterexamples.WeilIsUniqueOfLocal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFullSymplecticLevelStructureOfTateIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFullSymplecticLevelStructureOfTateIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSympLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.FullLevel

open ReciprocityTheory.ChartRestriction.G.Geo.Tor NumberField

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem bar_bar (a : 𝓞 E) : H.bar (H.bar a) = a := by
  apply RingOfIntegers.ext
  rw [H.bar_eq, H.bar_eq]
  exact IsCMField.complexConj_apply_apply E _

theorem exists_twist (l : Level H) (L : ℤ) (hL : (l.A : ℤ) ∣ L - 1) :
    ∃ u w c : 𝓞 E, c ∈ l.Mb ∧ u = 1 + (l.A : 𝓞 E) * c ∧
      H.bar u * u = (L : 𝓞 E) + (l.M' : 𝓞 E) * w := by
  obtain ⟨q, hq⟩ := hL
  have h1 : (1 : 𝓞 E) ∈ l.Mb ⊔ l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) := by rw [l.coprime]; trivial
  obtain ⟨n, hn, m, hm, hnm⟩ := Submodule.mem_sup.1 h1
  have hbn : H.bar n ∈ l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) := Ideal.mem_map_of_mem _ hn
  have hbm : H.bar m ∈ l.Mb := by
    obtain ⟨m0, hm0, rfl⟩ := (Ideal.mem_map_iff_of_surjective _ H.bar.surjective).1 hm
    simpa [bar_bar] using hm0
  have hbar1 : H.bar n + H.bar m = 1 := by rw [← map_add (f := _), hnm, map_one]
  have hxN : H.bar n - m ∈ l.Mb := by
    have e : H.bar n - m = n - H.bar m := by linear_combination hbar1 - hnm
    rw [e]; exact sub_mem hn hbm
  have hxN' : H.bar n - m ∈ l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) := sub_mem hbn hm
  have hx : H.bar n - m ∈ l.Mb * l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) := by
    have e : H.bar n - m = n * (H.bar n - m) + (H.bar n - m) * m := by
      linear_combination -(H.bar n - m) * hnm
    rw [e]
    exact add_mem (Ideal.mul_mem_mul hn hxN') (Ideal.mul_mem_mul hxN hm)
  have hnn : n * H.bar n ∈ l.Mb * l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) := Ideal.mul_mem_mul hn hbn
  rw [l.prod] at hx hnn
  obtain ⟨y1, hy1⟩ := Ideal.mem_span_singleton'.1 hx
  obtain ⟨y2, hy2⟩ := Ideal.mem_span_singleton'.1 hnn
  have hg : ((l.M : ℕ) : 𝓞 E) * l.A = (l.M' : 𝓞 E) * (Nat.gcd l.M l.A : ℕ) := by
    have := Nat.gcd_mul_lcm l.M l.A
    unfold Level.M'
    exact_mod_cast (by rw [mul_comm (Nat.lcm _ _), this] : l.M * l.A = Nat.lcm l.M l.A * Nat.gcd l.M l.A)
  have hq' : (L : 𝓞 E) - 1 = (l.A : 𝓞 E) * q := by exact_mod_cast hq
  refine ⟨1 + ((L : 𝓞 E) - 1) * n, (Nat.gcd l.M l.A : 𝓞 E) * q * (y1 + ((L : 𝓞 E) - 1) * y2),
    (q : 𝓞 E) * n, Ideal.mul_mem_left _ _ hn, ?_, ?_⟩
  · rw [hq']; ring
  · have hb : H.bar (1 + ((L : 𝓞 E) - 1) * n) = 1 + ((L : 𝓞 E) - 1) * H.bar n := by
      simp [map_add (f := _), map_mul, map_sub, map_one, map_intCast]
    rw [hb]
    linear_combination ((L : 𝓞 E) - 1) * hnm - ((L : 𝓞 E) - 1) * hy1 - ((L : 𝓞 E) - 1) ^ 2 * hy2
      + (l.M : 𝓞 E) * (y1 + ((L : 𝓞 E) - 1) * y2) * hq' + (q : 𝓞 E) * (y1 + ((L : 𝓞 E) - 1) * y2) * hg

theorem smul_mem_M (l : Level H) {D : Datum H} {c : 𝓞 E} (hc : c ∈ l.Mb) {a : D.La}
    (ha : a ∈ l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) • (⊤ : Submodule (𝓞 E) D.La)) :
    ∃ y : D.La, c • a = l.M • y := by
  refine Submodule.smul_induction_on ha ?_ ?_
  · intro r hr t _
    have : c * r ∈ Ideal.span {((l.M : ℕ) : 𝓞 E)} := l.prod ▸ Ideal.mul_mem_mul hc hr
    obtain ⟨s, hs⟩ := Ideal.mem_span_singleton'.1 this
    exact ⟨s • t, by rw [← mul_smul, ← hs, mul_comm, mul_smul, Nat.cast_smul_eq_nsmul]⟩
  · rintro x y ⟨x', hx'⟩ ⟨y', hy'⟩
    exact ⟨x' + y', by rw [smul_add, hx', hy', smul_add]⟩

theorem exists_sympLevel_of_tate : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} (l : Level H) {k : Type} [Field k]
    {Q : Type} [Group Q] {act : 𝓞 E → Q → Q} {e : ℕ → Q → Q → kˣ → Prop} (I : TateIso D k Q act e)
    {z : kˣ}, IsPrimitiveRoot z l.M' → z ^ (l.M' / l.A) = I.ζ l.A →
    ∃ ev : D.La → Q, IsSympLevel D act e l.M' z ev ∧ Induces l (I.ev l.A) (I.ev l.M) ev := by
  intro E _ _ _ H D l k _ Q _ act e I z hz hzA
  have hM' := M'_pos l
  haveI : NeZero l.M' := ⟨hM'.ne'⟩
  have hζ := I.ζ_prim l.M' hM'
  obtain ⟨L, -, hcop, hL⟩ := (hζ.isPrimitiveRoot_iff').1 hz
  obtain ⟨d, hd⟩ := A_dvd_M' l
  have hd0 : 0 < d := Nat.pos_of_ne_zero (by rintro rfl; simp at hd; omega)
  have hdiv : l.M' / l.A = d := by rw [hd, Nat.mul_div_cancel_left _ l.A_pos]
  have hζA : I.ζ l.M' ^ d = I.ζ l.A := by
    have := I.ζ_pow l.A d l.A_pos hd0; rwa [← hd] at this
  have hAL : (l.A : ℤ) ∣ (L : ℤ) - 1 := by
    have e1 : I.ζ l.M' ^ (L * d) = I.ζ l.M' ^ d := by
      rw [pow_mul, hL, ← hdiv, hzA, hdiv, hζA]
    have h2 : I.ζ l.M' ^ (((L : ℤ) - 1) * d) = 1 := by
      rw [sub_mul, one_mul, zpow_sub, show ((L : ℤ) * d) = ((L * d : ℕ) : ℤ) by push_cast; ring,
        zpow_natCast, zpow_natCast, e1, mul_inv_cancel]
    have h3 := (hζ.zpow_eq_one_iff_dvd _).1 h2
    rw [hd] at h3; push_cast at h3
    exact (mul_dvd_mul_iff_right (by exact_mod_cast hd0.ne')).1 h3
  obtain ⟨a', b', hab⟩ := Nat.isCoprime_iff_coprime.2 hcop
  obtain ⟨u, w, c, hc, hu, hw⟩ := exists_twist l L hAL
  set v : 𝓞 E := (a' : 𝓞 E) * H.bar u with hv
  have hvu : v * u = 1 + (l.M' : 𝓞 E) * ((a' : 𝓞 E) * w - b') := by
    have hab' : (a' : 𝓞 E) * (L : ℤ) + (b' : 𝓞 E) * ((l.M' : ℕ) : ℤ) = 1 := by exact_mod_cast hab
    push_cast at hab'
    rw [hv, mul_assoc, hw]
    push_cast
    linear_combination hab'
  have key : ∀ a : D.La, v • u • a = a + l.M' • (((a' : 𝓞 E) * w - b') • a) := by
    intro a; rw [← mul_smul, hvu, add_smul, one_smul, mul_smul, Nat.cast_smul_eq_nsmul]
  have key' : ∀ a : D.La, u • v • a = a + l.M' • (((a' : 𝓞 E) * w - b') • a) := by
    intro a; rw [smul_comm]; exact key a
  have hcong : ∀ a b : D.La, I.ev l.M' (a + l.M' • b) = I.ev l.M' a := by
    intro a b; rw [I.add, (I.ker _ hM' _).2 ⟨b, rfl⟩, mul_one]
  have hEF : ∀ a b : D.La, D.EF (u • a) (u • b) = L * D.EF a b + l.M' * D.EF a (w • b) := by
    intro a b
    rw [D.adj, ← mul_smul, hw, add_smul, mul_smul, Nat.cast_smul_eq_nsmul]
    simp only [Int.cast_natCast, Nat.cast_smul_eq_nsmul, map_add (f := _), map_nsmul, nsmul_eq_mul]
  refine ⟨fun a => I.ev l.M' (u • a), ⟨?_, ?_, ?_, ?_, ?_⟩, ?_, ?_⟩
  · intro a b; simp only [smul_add, I.add]
  · intro c a; try simp only
    rw [smul_comm, I.lin]
  · intro a; try simp only
    rw [I.ker _ hM']
    constructor
    · rintro ⟨b, hb⟩
      refine ⟨v • b - ((a' : 𝓞 E) * w - b') • a, ?_⟩
      have h := congrArg (v • ·) hb
      change v • u • a = v • (l.M' • b) at h
      rw [key, smul_comm v l.M' b] at h
      rw [smul_sub, ← h]; abel
    · rintro ⟨b, rfl⟩; exact ⟨u • b, smul_comm _ _ _⟩
  · intro x; rw [I.onto _ hM']
    constructor
    · rintro ⟨a0, rfl⟩; exact ⟨v • a0, by simp only [key', hcong]⟩
    · rintro ⟨a, rfl⟩; exact ⟨u • a, rfl⟩
  · intro a b
    have h := I.isom _ hM' (u • a) (u • b)
    convert h using 1
    rw [hEF, zpow_add, zpow_mul, zpow_mul, zpow_natCast, zpow_natCast, hL, hζ.pow_eq_one, one_zpow, mul_one]
  · intro a
    have htow : I.ev l.M' (u • a) ^ d = I.ev l.A (u • a) := by
      have := I.tower l.A d l.A_pos hd0 (u • a); rwa [← hd] at this
    try simp only
    rw [hdiv, htow, hu, add_smul, one_smul, mul_smul, Nat.cast_smul_eq_nsmul, I.add,
      (I.ker _ l.A_pos _).2 ⟨_, rfl⟩, mul_one]
  · intro a ha
    obtain ⟨dM, hdM⟩ := M_dvd_M' l
    have hMp : 0 < l.M := by have := l.three_le; omega
    have hdM0 : 0 < dM := Nat.pos_of_ne_zero (by rintro rfl; simp at hdM; omega)
    have hdivM : l.M' / l.M = dM := by rw [hdM, Nat.mul_div_cancel_left _ hMp]
    have htow : I.ev l.M' (u • a) ^ dM = I.ev l.M (u • a) := by
      have := I.tower l.M dM hMp hdM0 (u • a); rwa [← hdM] at this
    obtain ⟨y, hy⟩ := smul_mem_M l hc ha
    try simp only
    rw [hdivM, htow, hu, add_smul, one_smul, mul_smul, hy, Nat.cast_smul_eq_nsmul, smul_comm, I.add,
      (I.ker _ hMp _).2 ⟨_, rfl⟩, mul_one]

end GlobalTheory.FullLevel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFullSymplecticLevelStructureOfTateIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFullSymplecticLevelStructureUniqueOfLevels =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFullSymplecticLevelStructureUniqueOfLevels", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSympLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.ChartRestriction.G.Geo.Tor NumberField GlobalTheory.FullLevel

namespace GlobalTheory.FullLevel.Uniq

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H}

theorem nsmul_cancel {n : ℕ} (hn : n ≠ 0) {x y : D.La} (h : n • x = n • y) : x = y := by
  apply D.unimod.1
  ext w
  have h1 := congrArg (fun t => D.EF t w) h
  simp only [map_nsmul, LinearMap.smul_apply, nsmul_eq_mul] at h1
  exact mul_left_cancel₀ (by exact_mod_cast hn) h1

theorem mem_of_dvd {M : ℕ} (hM : M ≠ 0) {x : D.La} (h : ∀ y, (M : ℤ) ∣ D.EF x y) : ∃ u, x = M • u := by
  have hM' : (M : ℤ) ≠ 0 := by exact_mod_cast hM
  choose f hf using h
  let φ : D.La →ₗ[ℤ] ℤ :=
    { toFun := f
      map_add' := fun a b => by
        apply mul_left_cancel₀ hM'
        rw [mul_add, ← hf, ← hf, ← hf, map_add (f := _)]
      map_smul' := fun c a => by
        apply mul_left_cancel₀ hM'
        rw [← hf, map_smul, hf]
        simp only [smul_eq_mul, RingHom.id_apply]
        ring }
  obtain ⟨u, hu⟩ := D.unimod.2 φ
  refine ⟨u, D.unimod.1 ?_⟩
  ext w
  rw [map_nsmul, LinearMap.smul_apply, hu, hf, nsmul_eq_mul]
  rfl

theorem mem_lcm {M A : ℕ} (hM : M ≠ 0) {x u v : D.La} (hu : x = M • u) (hv : x = A • v) :
    ∃ w, x = Nat.lcm M A • w := by
  have hg : Nat.gcd M A ≠ 0 := fun h => hM (Nat.eq_zero_of_gcd_eq_zero_left h)
  refine ⟨Nat.gcdA M A • v + Nat.gcdB M A • u, nsmul_cancel hg ?_⟩
  rw [← mul_nsmul', Nat.gcd_mul_lcm, ← natCast_zsmul x, Nat.gcd_eq_gcd_ab, add_zsmul, smul_add]
  congr 1
  · rw [hv, ← natCast_zsmul, ← natCast_zsmul, smul_smul, smul_smul]
    congr 1
    push_cast
    ring
  · rw [hu, ← natCast_zsmul, ← natCast_zsmul, smul_smul, smul_smul]
    congr 1
    push_cast
    ring

variable {k : Type} [Field k] {Q : Type} [Group Q] {act : 𝓞 E → Q → Q} {e : ℕ → Q → Q → kˣ → Prop}
  {N : ℕ} {z : kˣ} {ev : D.La → Q}

theorem ev_zero (h : IsSympLevel D act e N z ev) : ev 0 = 1 := (h.2.2.1 0).2 ⟨0, by simp⟩

theorem ev_nsmul (h : IsSympLevel D act e N z ev) (n : ℕ) (a : D.La) : ev (n • a) = ev a ^ n := by
  induction n with
  | zero => simp [ev_zero h]
  | succ n ih => rw [succ_nsmul, h.1, ih, pow_succ]

theorem ev_eq_iff (h : IsSympLevel D act e N z ev) (x y : D.La) : ev x = ev y ↔ ∃ b, x - y = N • b := by
  rw [← h.2.2.1]
  have h1 : ev x = ev (x - y) * ev y := by rw [← h.1, sub_add_cancel]
  rw [h1]
  exact mul_eq_right

theorem ev_pow_eq (h : IsSympLevel D act e N z ev) (hN : 0 < N) {A : ℕ} (hA : A ∣ N) {x y : D.La}
    (hxy : ev x ^ (N / A) = ev y ^ (N / A)) : ∃ b, x - y = A • b := by
  obtain ⟨m, hm⟩ := hA
  have hA0 : 0 < A := Nat.pos_of_ne_zero (by rintro rfl; simp at hm; omega)
  have hm0 : m ≠ 0 := by rintro rfl; simp at hm; omega
  have hd : N / A = m := by rw [hm, Nat.mul_div_cancel_left _ hA0]
  rw [hd, ← ev_nsmul h, ← ev_nsmul h, ev_eq_iff h] at hxy
  obtain ⟨b, hb⟩ := hxy
  refine ⟨b, nsmul_cancel hm0 ?_⟩
  rw [smul_sub, hb, hm, smul_smul, mul_comm]

end GlobalTheory.FullLevel.Uniq

namespace GlobalTheory.FullLevel

open Uniq

theorem isSympLevel_unique {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} (l : Level H)
    {k : Type} [Field k] {Q : Type} [Group Q] {act : 𝓞 E → Q → Q} {e : ℕ → Q → Q → kˣ → Prop}
    (he : ∀ (g g' : Q) (c c' : kˣ), e l.M' g g' c → e l.M' g g' c' → c = c')
    {z : kˣ} (hz : IsPrimitiveRoot z l.M') {etaA eta ev ev' : D.La → Q}
    (h : IsSympLevel D act e l.M' z ev) (hi : Induces l etaA eta ev)
    (h' : IsSympLevel D act e l.M' z ev') (hi' : Induces l etaA eta ev') : ev = ev' := by
  have hM' := M'_pos l
  have hM : l.M ≠ 0 := by have := l.three_le; omega
  have hex : ∀ a, ∃ x, ev x = ev' a := fun a =>
    (h.2.2.2.1 _).1 ((h'.2.2.2.1 _).2 ⟨a, rfl⟩)
  choose g hg using hex
  have h1 : ∀ a, ∃ b, g a - a = l.A • b := fun a =>
    ev_pow_eq h hM' (A_dvd_M' l) (by rw [hg, hi'.1, hi.1])
  have h2 : ∀ c ∈ l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E), ∀ a : D.La, ∃ b, g (c • a) - c • a = l.M • b := by
    intro c hc a
    have hmem : c • a ∈ l.Mb.map (H.bar : 𝓞 E →+* 𝓞 E) • (⊤ : Submodule (𝓞 E) D.La) :=
      Submodule.smul_mem_smul hc Submodule.mem_top
    exact ev_pow_eq h hM' (M_dvd_M' l) (by rw [hg, hi'.2 _ hmem, hi.2 _ hmem])
  have h3 : ∀ a b, (l.M : ℤ) ∣ D.EF (g a) (g b) - D.EF a b := by
    intro a b
    have e1 := h.2.2.2.2 (g a) (g b)
    rw [hg, hg] at e1
    have e2 := he _ _ _ _ e1 (h'.2.2.2.2 a b)
    have e3 : z ^ (D.EF (g a) (g b) - D.EF a b) = 1 := by rw [zpow_sub, e2, mul_inv_cancel]
    exact (Int.natCast_dvd_natCast.2 (M_dvd_M' l)).trans ((hz.zpow_eq_one_iff_dvd _).1 e3)
  obtain ⟨n, hn, m, hm, hnm⟩ := Submodule.mem_sup.1 (show (1 : 𝓞 E) ∈ _ from l.coprime ▸ Submodule.mem_top)
  funext a
  have h4 : ∃ u, m • (g a - a) = l.M • u := by
    obtain ⟨b, hb⟩ := h2 m hm a
    obtain ⟨c, hc⟩ := (ev_eq_iff h (m • g a) (g (m • a))).1 (by rw [h.2.1, hg, hg, h'.2.1])
    obtain ⟨t, ht⟩ := M_dvd_M' l
    refine ⟨t • c + b, ?_⟩
    rw [smul_add, smul_smul, ← ht, ← hc, ← hb, smul_sub]
    abel
  have h5 : ∃ u, n • (g a - a) = l.M • u := by
    refine mem_of_dvd hM fun y => ?_
    obtain ⟨b, hb⟩ := h2 (H.bar n) (Ideal.mem_map_of_mem (H.bar : 𝓞 E →+* 𝓞 E) hn) y
    have h6 := h3 a (H.bar n • y)
    rw [sub_eq_iff_eq_add] at hb
    rw [hb, map_add (f := _), map_nsmul, nsmul_eq_mul, add_sub_assoc, dvd_add_right (dvd_mul_right _ _)] at h6
    rw [D.adj, map_sub, LinearMap.sub_apply]
    exact h6
  obtain ⟨u, hu⟩ := h4
  obtain ⟨v, hv⟩ := h5
  obtain ⟨b, hb⟩ := h1 a
  have h7 : g a - a = l.M • (v + u) := by rw [smul_add, ← hu, ← hv, ← add_smul, hnm, one_smul]
  rw [← hg]
  exact ((ev_eq_iff h _ _).2 (mem_lcm hM h7 hb)).symm

end GlobalTheory.FullLevel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFullSymplecticLevelStructureUniqueOfLevels =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueFullLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueFullLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSympLevel\npublic import Development.AbelianVarietyTheory.Counterexamples.AbelianLawCounterexamples.WeilIsUniqueOfLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFullSymplecticLevelStructureOfTateIso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFullSymplecticLevelStructureUniqueOfLevels\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.UnitOnInjectiveOfCommRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.FullLevel

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem weilIs_unitOn_unique {S : Scheme.{0}} (G : Over S) [GrpObj G] {L : LB G.left} (hL : L.IsLB)
    {k : Type} [Field k] (x : Sp k ⟶ S) (n : ℤ) (g g' : Over.mk x ⟶ G) (c c' : kˣ)
    (h : Out.WeilIs G L n g g' (unitOn c)) (h' : Out.WeilIs G L n g g' (unitOn c')) : c = c' := by
  apply (config := { allowSynthFailures := true }) GlobalTheory.weilIs_unique_fieldPoint <;> assumption

theorem exists_unique_fullLevel {D : Datum H} {l : Level H} {B : Type} [CommRing B] {b : Base l B}
    {S : Scheme.{0}} {s : S ⟶ Sp B} (o : Obj D l b s) (k : Type) [Field k] [IsAlgClosed k] (x : Sp k ⟶ S)
    (β : B →+* k) (hx : x ≫ s = spMap β) (z : kˣ) (hz : IsPrimitiveRoot z l.M')
    (hzA : (z : k) ^ (l.M' / l.A) = β b.ζ) :
    ∃! ev : D.La → (Over.mk x ⟶ o.t.G),
      IsSympLevel D (fun a g => g ≫ o.t.act.act a)
          (fun n g g' c => Out.WeilIs o.t.G o.t.PP.L n g g' (unitOn c)) l.M' z ev ∧
        Induces l (fun a => toUnit _ ≫ o.etaA a) (fun a => toUnit _ ≫ o.eta a) ev := by
  obtain ⟨-, I, hIA, hetaA, heta⟩ := o.geom k x β hx
  have hzA' : z ^ (l.M' / l.A) = I.ζ l.A := Units.ext (by rw [Units.val_pow_eq_pow_val, hzA, hIA])
  obtain ⟨ev, hev, hA, hM⟩ := _root_.GlobalTheory.FullLevel.exists_sympLevel_of_tate l I hz hzA'
  have hi : Induces l (fun a => toUnit _ ≫ o.etaA a) (fun a => toUnit _ ≫ o.eta a) ev :=
    ⟨fun a => (hA a).trans (hetaA a).symm, fun a ha => (hM a ha).trans (heta a ha).symm⟩
  refine ⟨ev, ⟨hev, hi⟩, ?_⟩
  rintro ev' ⟨h1, h2⟩
  have := _root_.GlobalTheory.FullLevel.isSympLevel_unique l (fun g g' c c' => weilIs_unitOn_unique o.t.G o.t.PP.isLB x _ g g' c c') hz
    hev hi h1 h2
  exact this.symm

end GlobalTheory.FullLevel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueFullLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIvDOfDefinite\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueFullLevel\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsUniqueFactorOfIsAlgClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.XFTorsion

open GlobalTheory.FullLevel

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

alias spMap_comp := _root_.GlobalTheory.spMap_comp_ring

theorem zeta_pow (l : Geo.Tor.Level H) : zeta l.M' ^ (l.M' / l.A) = zeta l.A := by
  obtain ⟨m, hm⟩ := A_dvd_M' l
  have hM := M'_pos l
  have hm0 : (m : ℂ) ≠ 0 := by
    rintro h
    rw [Nat.cast_eq_zero] at h
    subst h
    omega
  have hA : (l.A : ℂ) ≠ 0 := Nat.cast_ne_zero.2 l.A_pos.ne'
  rw [hm, Nat.mul_div_cancel_left _ l.A_pos, zeta, zeta, ← Complex.exp_nat_mul]
  congr 1
  push_cast
  field_simp

theorem torsion_fixed {D : Datum H} {l : Geo.Tor.Level H} {B : Type} [CommRing B] {b : Base l B}
    {S : Scheme.{0}} {s : S ⟶ Sp B} (o : Obj D l b s) (k : Type) [Field k] [IsAlgClosed k] (x : Sp k ⟶ S)
    (β : B →+* k) (hx : x ≫ s = spMap β) (z : kˣ) (hz : IsPrimitiveRoot z l.M')
    (hzA : (z : k) ^ (l.M' / l.A) = β b.ζ) (σ : k ≃+* k) (hσ : spMap (σ : k →+* k) ≫ x = x) (hσz : σ z = z)
    (w : Over.mk x ⟶ o.t.G) (hw : w ^ l.M' = 1) : spMap (σ : k →+* k) ≫ w.left = w.left := by
  obtain ⟨ev, ⟨⟨h1, h2, h3, h4, h5⟩, h6, h7⟩, hu⟩ := exists_unique_fullLevel o k x β hx z hz hzA
  have hid : spMap (RingHom.id k) = 𝟙 (Sp k) := Spec.map_id _
  have e1 : spMap (σ.symm : k →+* k) ≫ spMap (σ : k →+* k) = 𝟙 _ := by
    rw [spMap_comp, ← hid]; congr 1; ext a; simp
  have e2 : spMap (σ : k →+* k) ≫ spMap (σ.symm : k →+* k) = 𝟙 _ := by
    rw [spMap_comp, ← hid]; congr 1; ext a; simp
  have hσ' : spMap (σ.symm : k →+* k) ≫ x = x := by
    conv_lhs => rw [← hσ, ← Category.assoc, e1, Category.id_comp]
  let g : (Over.mk x : Over S) ⟶ Over.mk x := Over.homMk (spMap (σ : k →+* k)) hσ
  let g' : (Over.mk x : Over S) ⟶ Over.mk x := Over.homMk (spMap (σ.symm : k →+* k)) hσ'
  have gg' : g ≫ g' = 𝟙 _ := Over.OverMorphism.ext e2
  have g'g : g' ≫ g = 𝟙 _ := Over.OverMorphism.ext e1
  have key : (fun a => g ≫ ev a) = ev := by
    refine (hu _ ⟨⟨fun a c => ?_, fun c a => ?_, fun a => ?_, fun u => ?_, fun a c => ?_⟩, fun a => ?_, fun a ha => ?_⟩).trans
      (hu ev ⟨⟨h1, h2, h3, h4, h5⟩, h6, h7⟩).symm
    · show g ≫ ev (a + c) = (g ≫ ev a) * (g ≫ ev c)
      rw [h1, MonObj.comp_mul]
    · show g ≫ ev (c • a) = (g ≫ ev a) ≫ o.t.act.act c
      rw [h2, Category.assoc]
    · show g ≫ ev a = 1 ↔ _
      rw [← h3]
      refine ⟨fun h => ?_, fun h => by rw [h, MonObj.comp_one]⟩
      rw [← Category.id_comp (ev a), ← g'g, Category.assoc, h, MonObj.comp_one]
    · refine ⟨fun h => ?_, ?_⟩
      · obtain ⟨a, ha⟩ := (h4 (g' ≫ u)).1 (by rw [← MonObj.comp_pow, h, MonObj.comp_one])
        refine ⟨a, ?_⟩
        show g ≫ ev a = u
        rw [ha, ← Category.assoc, gg', Category.id_comp]
      · rintro ⟨a, rfl⟩
        show (g ≫ ev a) ^ l.M' = 1
        rw [← MonObj.comp_pow, (h4 _).2 ⟨a, rfl⟩, MonObj.comp_one]
    · have h₁ := GlobalTheory.CommPairing.weilIs_pull GlobalTheory.SemiRigid.globalFns (GlobalTheory.ObjDim.isAbelianScheme o) o.t.PP.isLB g
        (h5 a c)
      have e' : Units.map g.left.appTop.hom.toMonoidHom (unitOn (z ^ D.EF a c)) =
          unitOn (Units.map (σ : k →+* k).toMonoidHom (z ^ D.EF a c)) :=
        Units.ext (congrArg (fun q => q.hom (z ^ D.EF a c).val)
          (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (σ : k →+* k)))).symm
      have e'' : Units.map (σ : k →+* k).toMonoidHom (z ^ D.EF a c) = z ^ D.EF a c := by
        rw [map_zpow]
        congr 1
        exact Units.ext hσz
      rw [e''] at e'
      exact (congrArg (WeilIs o.t.G o.t.PP.L (l.M' : ℕ) (g ≫ ev a) (g ≫ ev c)) e').mp h₁
    · show (g ≫ ev a) ^ (l.M' / l.A) = toUnit _ ≫ o.etaA a
      rw [← MonObj.comp_pow, h6, comp_toUnit_assoc]
    · show (g ≫ ev a) ^ (l.M' / l.M) = toUnit _ ≫ o.eta a
      rw [← MonObj.comp_pow, h7 a ha, comp_toUnit_assoc]
  obtain ⟨a, rfl⟩ := (h4 w).1 hw
  exact congrArg CommaMorphism.left (congrFun key a)

theorem torsion_rational : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), ∀ (K K' : Type) [Field K] [Field K'] [IsAlgClosed K'] (κ : K →+* K') (y : Sp K ⟶ Xo.XF c) (x : Over.mk (spMap κ ≫ y ≫ pullback.fst _ _) ⟶ Xo.univ.t.G), x ^ l.M' = 1 → ∃ x₀ : Over.mk (y ≫ pullback.fst _ _) ⟶ Xo.univ.t.G, x₀ ^ l.M' = 1 ∧ x.left = spMap κ ≫ x₀.left := by
  intro E _ _ _ H Dw l Xo c _ K K' _ _ _ κ y x hx
  obtain ⟨bF, hbF⟩ : ∃ bF : c.F →+* K, y ≫ pullback.snd _ _ = spMap bF :=
    ⟨(Spec.preimage (y ≫ pullback.snd _ _)).hom, (Spec.map_preimage _).symm⟩
  haveI : CharZero K := RingHom.charZero_iff bF.injective |>.1 inferInstance
  letI : Algebra K K' := κ.toAlgebra
  let inc := (IntermediateField.inclusion c.le).toRingHom
  have hs : (spMap κ ≫ y ≫ pullback.fst _ _) ≫ Xo.s = spMap (κ.comp (bF.comp inc)) := by
    rw [Category.assoc, Category.assoc, pullback.condition, ← Category.assoc y, hbF, spMap_comp, spMap_comp]
  let z₀ : c.F := ⟨zeta l.M', c.zeta_mem⟩
  have hz₀ : IsPrimitiveRoot z₀ l.M' := IsPrimitiveRoot.of_map_of_injective (f := c.F.val.toRingHom)
    (Complex.isPrimitiveRoot_exp l.M' (M'_pos l).ne') Subtype.val_injective
  have hz₁ : IsPrimitiveRoot (κ (bF z₀)) l.M' := (hz₀.map_of_injective bF.injective).map_of_injective κ.injective
  let z : K'ˣ := (hz₁.isUnit (M'_pos l).ne').unit
  have hz : IsPrimitiveRoot z l.M' := IsPrimitiveRoot.coe_units_iff.1 hz₁
  have hzA : (z : K') ^ (l.M' / l.A) = (κ.comp (bF.comp inc)) (baseKA l).ζ := by
    show κ (bF z₀) ^ _ = κ (bF (inc _))
    rw [← map_pow, ← map_pow]
    congr 2
    exact Subtype.ext (zeta_pow l)
  obtain ⟨p, hp, -⟩ := GlobalTheory.FixedPoint.existsUnique_factor_of_isAlgClosed (K₀ := K) (L := K') x.left fun σ =>
    torsion_fixed Xo.univ K' _ _ hs z hz hzA σ.toRingEquiv (by
      rw [← Category.assoc, spMap_comp]
      congr 2
      ext a
      exact σ.commutes a) (σ.commutes (bF z₀)) x hx
  haveI : Epi (spMap κ) := GlobalTheory.FixedPoint.epi_specAlg (K₀ := K) (K₁ := K')
  have hp' : spMap κ ≫ p = x.left := hp
  have hpo : p ≫ Xo.univ.t.G.hom = y ≫ pullback.fst _ _ := by
    rw [← cancel_epi (spMap κ), ← Category.assoc, hp']
    exact Over.w x
  let x₀ : Over.mk (y ≫ pullback.fst _ _) ⟶ Xo.univ.t.G := Over.homMk p hpo
  let g : (Over.mk (spMap κ ≫ y ≫ pullback.fst _ _) : Over Xo.X) ⟶ Over.mk (y ≫ pullback.fst _ _) :=
    Over.homMk (spMap κ) rfl
  have hg : g ≫ x₀ = x := Over.OverMorphism.ext hp'
  refine ⟨x₀, Over.OverMorphism.ext ?_, hp'.symm⟩
  have h : g ≫ x₀ ^ l.M' = g ≫ 1 := by rw [MonObj.comp_pow, hg, hx, MonObj.comp_one]
  exact (cancel_epi (spMap κ)).1 (congrArg CommaMorphism.left h)

end GlobalTheory.XFTorsion
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPointStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPointStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIvDOfDefinite\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversalAbelianSchemeTorsionRationalFieldPointStatement =====

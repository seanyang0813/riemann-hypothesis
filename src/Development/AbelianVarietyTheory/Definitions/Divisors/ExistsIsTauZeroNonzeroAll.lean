module

public import Development.AbelianVarietyTheory.Definitions.ThetaValues.IsNullVal
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ConnectionLinearInSection
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsFaithfullyFlatFullLinearLevelStructure
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FaithfullyFlatPointsBaseChangeDescent
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FullLinearLevelCoverBaseChangeTorsor
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.UniversalWeilPairingPullbackExistsUnique
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal
public import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsFlatSecRankZero
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FlagComponentFramedPointFrame
public import Development.AbelianVarietyTheory.Definitions.TorusSections.IsTorusOf
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.CardLevGrpAndSpan
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.EtaValAtExistsUniqueNatural
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsShiftNullValNeZero
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.IsEtaRuleExistsUniqueMemSec
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsFlatUniversalTorsionTuple
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsIsIdempotentElemRangeSpMapSubset
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.IsLocallyNoetherian
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsFramedPointBaseChangeAlgHom
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FramedPointBaseChangeLaws
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ThetaNullValueExistsUniqueNaturalLinear
import Development.AbelianVarietyTheory.Proofs.GenericRegularity.GenFrExAndGenFromTest
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsLevWithGeometric, Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsTauZeroNonzeroAll

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsLevWithGeometric =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsLevWithGeometric", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ThetaValues.IsNullVal\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsUniqueWeilIs\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ConnectionLinearInSection\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsFaithfullyFlatFullLinearLevelStructure\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsFlatUniversalTorsionTuple\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsIsIdempotentElemRangeSpMapSubset\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FaithfullyFlatPointsBaseChangeDescent\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FullLinearLevelCoverBaseChangeTorsor\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.IsLocallyNoetherian\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.UniversalWeilPairingPullbackExistsUnique\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.ThetaConst

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.EtaForm

attribute [local instance] Over.cartesianMonoidalCategory

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}

theorem exists_sep (l : Level H) : ∃ e : 𝓞 E, e ∈ Mfr l ∧ 1 - e ∈ l.Mb ∧ H.bar e ∈ l.Mb ∧ H.bar (1 - e) ∈ Mfr l := by
  have h1 : (1 : 𝓞 E) ∈ l.Mb ⊔ Mfr l := by
    unfold Mfr; rw [l.coprime]; trivial
  obtain ⟨a, ha, b, hb, hab⟩ := Submodule.mem_sup.1 h1
  have h2 : 1 - b ∈ l.Mb := by rw [← hab]; simpa using ha
  refine ⟨b, hb, h2, ?_, Ideal.mem_map_of_mem (H.bar : 𝓞 E →+* 𝓞 E) h2⟩
  obtain ⟨d, hd, rfl⟩ := (Ideal.mem_map_iff_of_surjective (H.bar : 𝓞 E →+* 𝓞 E) H.bar.surjective).1 hb
  have : H.bar (H.bar d) = d := by
    apply RingOfIntegers.ext
    show ((H.bar (H.bar d) : 𝓞 E) : E) = (d : E)
    rw [H.bar_eq, H.bar_eq, IsCMField.complexConj_apply_apply]
  exact this.symm ▸ hd

theorem smul_modN {t : 𝓞 E} (ht : t ∈ l.Mb) {a : Dw.La} (ha : a ∈ (Mfr l • ⊤ : Submodule (𝓞 E) Dw.La)) :
    Dw.ModN l.M (t • a) := by
  rw [← FullLevel.mem_iff_modN, ← l.prod, Submodule.mul_smul]
  exact Submodule.smul_mem_smul ht ha

theorem modN_of_dvd {k m : ℕ} (h : k ∣ m) {a : Dw.La} (ha : Dw.ModN m a) : Dw.ModN k a := by
  obtain ⟨j, rfl⟩ := h
  obtain ⟨b, rfl⟩ := ha
  exact ⟨j • b, mul_nsmul' _ _ _⟩

theorem modN_of_forall_dvd {k : ℕ} (hk : 0 < k) {a : Dw.La} (h : ∀ y, (k : ℤ) ∣ Dw.EF a y) : Dw.ModN k a := by
  choose f hf using h
  have hk' : (k : ℤ) ≠ 0 := by exact_mod_cast hk.ne'
  let g : Dw.La →+ ℤ := AddMonoidHom.mk' f fun x y => mul_left_cancel₀ hk' (by rw [mul_add, ← hf, ← hf, ← hf, map_add (f := _)])
  obtain ⟨b, hb⟩ := Dw.unimod.2 g.toIntLinearMap
  refine ⟨b, Dw.unimod.1 (LinearMap.ext fun y => ?_)⟩
  rw [map_nsmul, hb, hf, LinearMap.smul_apply, nsmul_eq_mul]
  rfl

theorem dvd_EF_sub {k : ℕ} {a a' b b' : Dw.La} (ha : Dw.ModN k (a - a')) (hb : Dw.ModN k (b - b')) :
    (k : ℤ) ∣ Dw.EF a b - Dw.EF a' b' := by
  obtain ⟨x, hx⟩ := ha
  obtain ⟨y, hy⟩ := hb
  rw [sub_eq_iff_eq_add.1 hx, sub_eq_iff_eq_add.1 hy]
  refine ⟨Dw.EF x (k • y + b') + Dw.EF a' y, ?_⟩
  simp only [map_add (f := _), map_nsmul, LinearMap.add_apply, LinearMap.smul_apply, nsmul_eq_mul]
  ring

theorem zpow_congr {G : Type} [CommGroup G] {ζ : G} {k : ℕ} (h : ζ ^ k = 1) {a b : ℤ} (hab : (k : ℤ) ∣ a - b) :
    ζ ^ a = ζ ^ b := by
  obtain ⟨d, hd⟩ := hab
  rw [sub_eq_iff_eq_add.1 hd, zpow_add, zpow_mul, zpow_natCast, h, one_zpow, _root_.one_mul]

theorem unitOn_bijective (R : Type) [CommRing R] : Function.Bijective (unitOn (R := R)) :=
  (Units.mapEquiv (Scheme.ΓSpecIso (CommRingCat.of R)).symm.commRingCatIsoToRingEquiv.toMulEquiv).bijective

variable (Xo : Moduli Dw l) (c : Coeff l)

def halfPt (k : ℕ) {S : Type} [CommRing S] (x0 : Sp S ⟶ Xo.X) (a : Dw.La) : ptO Xo x0 ⟶ Xo.univ.t.G :=
  levPt Xo x0 a ^ (l.M / k)

def IsLevWith (k : ℕ) {S : Type} [CommRing S] (ζ : Sˣ) (x0 : Sp S ⟶ Xo.X)
    (ev : LatMod Dw k → (ptO Xo x0 ⟶ Xo.univ.t.G)) : Prop :=
  IsFullLev Xo k x0 ev ∧
    (∀ a ∈ (Mfr l • ⊤ : Submodule (𝓞 E) Dw.La), ev (Submodule.Quotient.mk a) = halfPt Xo k x0 a) ∧
    ∀ a b : Dw.La, WeilIs Xo.univ.t.G Xo.univ.t.PP.L k (ev (Submodule.Quotient.mk a)) (ev (Submodule.Quotient.mk b))
      (unitOn (ζ ^ Dw.EF a b))

theorem isPrimitiveRoot_zetaM : IsPrimitiveRoot (zetaM c) l.M := by
  have hM : 0 < l.M := by have := l.three_le; omega
  have hM' : 0 < l.M' := Nat.lcm_pos hM l.A_pos
  have h0 : IsPrimitiveRoot (⟨zeta l.M', c.zeta_mem⟩ : c.F) l.M' :=
    IsPrimitiveRoot.of_map_of_injective (f := c.F.val) (Complex.isPrimitiveRoot_exp _ hM'.ne') Subtype.val_injective
  exact h0.pow hM' (Nat.div_mul_cancel (Nat.dvd_lcm_left l.M l.A)).symm

def rootOn (k : ℕ) (S : Type) [CommRing S] [Algebra c.F S] : Sˣ :=
  Units.map (algebraMap c.F S : c.F →* S)
    (Units.mk0 (zetaM c ^ (l.M / k))
      (pow_ne_zero _ ((isPrimitiveRoot_zetaM c).ne_zero (by have := l.three_le; omega))))

def IsLevOf (k : ℕ) {S : Type} [CommRing S] [Algebra c.F S] (x0 : Sp S ⟶ Xo.X)
    (ev : LatMod Dw k → (ptO Xo x0 ⟶ Xo.univ.t.G)) : Prop :=
  k ∣ l.M ∧ IsLevWith Xo k (rootOn c k S) x0 ev

theorem map_rootOn (k : ℕ) {S T : Type} [CommRing S] [Algebra c.F S] [CommRing T] [Algebra c.F T] (ψ : S →ₐ[c.F] T) :
    Units.map ψ.toRingHom.toMonoidHom (rootOn c k S) = rootOn c k T := Units.ext (ψ.commutes _)

theorem isPrimitiveRoot_rootOn {k : ℕ} (hk : k ∣ l.M) {S : Type} [CommRing S] [Algebra c.F S] (K : Type) [Field K]
    (χ : S →+* K) : IsPrimitiveRoot (Units.map χ.toMonoidHom (rootOn c k S)) k := by
  have hM : 0 < l.M := by have := l.three_le; omega
  rw [← IsPrimitiveRoot.coe_units_iff]
  exact ((isPrimitiveRoot_zetaM c).pow hM (Nat.div_mul_cancel hk).symm).map_of_injective
    (f := χ.comp (algebraMap c.F S)) (RingHom.injective _)

theorem rootOn_pow {k : ℕ} (hk : k ∣ l.M) (S : Type) [CommRing S] [Algebra c.F S] : rootOn c k S ^ k = 1 := by
  rw [rootOn, ← map_pow, ← map_one (Units.map (algebraMap c.F S : c.F →* S))]
  congr 1
  ext1
  show (zetaM c ^ (l.M / k)) ^ k = 1
  rw [← pow_mul, Nat.div_mul_cancel hk, (isPrimitiveRoot_zetaM c).pow_eq_one]

theorem levPt_add {S : Type} [CommRing S] (x0 : Sp S ⟶ Xo.X) (a b : Dw.La) :
    levPt Xo x0 (a + b) = levPt Xo x0 a * levPt Xo x0 b := by
  unfold levPt; rw [Xo.univ.eta_add, MonObj.comp_mul]

theorem levPt_pow {S : Type} [CommRing S] (x0 : Sp S ⟶ Xo.X) (a : Dw.La) : levPt Xo x0 a ^ l.M = 1 := by
  let f : Dw.La →+ Additive (ptO Xo x0 ⟶ Xo.univ.t.G) :=
    AddMonoidHom.mk' (fun q => Additive.ofMul (levPt Xo x0 q)) fun a b => congrArg Additive.ofMul (levPt_add Xo x0 a b)
  have h1 : levPt Xo x0 (l.M • a) = levPt Xo x0 a ^ l.M := congrArg Additive.toMul (map_nsmul f l.M a)
  have h2 : (l.M : 𝓞 E) ∈ l.Mb := by
    have : (l.M : 𝓞 E) ∈ l.Mb * Mfr l := by
      unfold Mfr; rw [l.prod]; exact Ideal.mem_span_singleton_self _
    exact (Ideal.mul_le_inf.trans inf_le_left) this
  rw [← h1, ← Nat.cast_smul_eq_nsmul (𝓞 E), levPt, Xo.univ.eta_ker _ (Submodule.smul_mem_smul h2 trivial),
    MonObj.comp_one]

theorem halfPt_pow {k : ℕ} (hk : k ∣ l.M) {S : Type} [CommRing S] (x0 : Sp S ⟶ Xo.X) (a : Dw.La) :
    halfPt Xo k x0 a ^ k = 1 := by
  rw [halfPt, ← pow_mul, Nat.div_mul_cancel hk, levPt_pow]

theorem halfPt_congr {k : ℕ} (hk : k ∣ l.M) {S : Type} [CommRing S] (x0 : Sp S ⟶ Xo.X) {a b : Dw.La}
    (h : Dw.ModN k (a - b)) : halfPt Xo k x0 a = halfPt Xo k x0 b := by
  obtain ⟨d, hd⟩ := h
  let f : Dw.La →+ Additive (ptO Xo x0 ⟶ Xo.univ.t.G) :=
    AddMonoidHom.mk' (fun q => Additive.ofMul (levPt Xo x0 q)) fun a b => congrArg Additive.ofMul (levPt_add Xo x0 a b)
  have h1 : levPt Xo x0 (k • d) = levPt Xo x0 d ^ k := congrArg Additive.toMul (map_nsmul f k d)
  rw [sub_eq_iff_eq_add.1 hd, halfPt, halfPt, levPt_add, mul_pow, h1, ← pow_mul, Nat.mul_div_cancel' hk, levPt_pow,
    _root_.one_mul]

theorem comp_halfPt (k : ℕ) {S T : Type} [CommRing S] [CommRing T] {x0 : Sp S ⟶ Xo.X} {x1 : Sp T ⟶ Xo.X}
    (h : ptO Xo x1 ⟶ ptO Xo x0) (a : Dw.La) : h ≫ halfPt Xo k x0 a = halfPt Xo k x1 a := by
  rw [halfPt, halfPt, MonObj.comp_pow, levPt, levPt, ← Category.assoc, comp_toUnit]

theorem weilIs_baseChange {k : ℕ} {S T : Type} [CommRing S] [CommRing T] (ψ : S →+* T) {x0 : Sp S ⟶ Xo.X}
    {x1 : Sp T ⟶ Xo.X} (h : ptO Xo x1 ⟶ ptO Xo x0) (hh : h.left = spMap ψ) {p q : ptO Xo x0 ⟶ Xo.univ.t.G} {u : Sˣ}
    (hu : WeilIs Xo.univ.t.G Xo.univ.t.PP.L k p q (unitOn u)) :
    WeilIs Xo.univ.t.G Xo.univ.t.PP.L k (h ≫ p) (h ≫ q) (unitOn (Units.map ψ.toMonoidHom u)) := by
  have h1 := CommPairing.weilIs_pull GlobalTheory.firstFiveLaws.1.globalFns (UnivPol.pol Xo).isAb (UnivPol.pol Xo).isLB h hu
  have e : Units.map h.left.appTop.hom.toMonoidHom (unitOn u) = unitOn (Units.map ψ.toMonoidHom u) := by
    refine Units.ext ?_
    show h.left.appTop.hom (toΓ S u) = toΓ T (ψ u)
    rw [hh]
    exact GlobalTheory.NabLinear.appTop_toΓ ψ _
  exact e ▸ h1

theorem weilIs_unique {k : ℕ} {S : Type} [CommRing S] {x0 : Sp S ⟶ Xo.X} {p q : ptO Xo x0 ⟶ Xo.univ.t.G} {u v : Sˣ}
    (hu : WeilIs Xo.univ.t.G Xo.univ.t.PP.L k p q (unitOn u))
    (hv : WeilIs Xo.univ.t.G Xo.univ.t.PP.L k p q (unitOn v)) : u = v :=
  (unitOn_bijective S).1
    (CommutatorPairing.weilIs_unique GlobalTheory.firstFiveLaws.1.globalFns (UnivPol.pol Xo).isAb (UnivPol.pol Xo).isLB hu hv)


variable {Xo} in
theorem IsLevWith.baseChange {k : ℕ} {S T : Type} [CommRing S] [CommRing T] (ψ : S →+* T) {x0 : Sp S ⟶ Xo.X}
    {x1 : Sp T ⟶ Xo.X} (h : ptO Xo x1 ⟶ ptO Xo x0) (hh : h.left = spMap ψ) {ζ : Sˣ}
    {ev : LatMod Dw k → (ptO Xo x0 ⟶ Xo.univ.t.G)} (hev : IsLevWith Xo k ζ x0 ev) :
    IsLevWith Xo k (Units.map ψ.toMonoidHom ζ) x1 (fun q => h ≫ ev q) := by
  refine ⟨FullLevel.baseChange Xo ψ h hh hev.1, fun a ha => ?_, fun a b => ?_⟩
  · beta_reduce
    rw [hev.2.1 a ha, comp_halfPt]
  · rw [← map_zpow]
    exact weilIs_baseChange Xo ψ h hh (hev.2.2 a b)


variable {Xo} in
theorem IsLevWith.unique_field {k : ℕ} (hk : k ∣ l.M) {K : Type} [Field K] {x0 : Sp K ⟶ Xo.X} {ζ : Kˣ}
    (hζ : IsPrimitiveRoot ζ k) {ev ev' : LatMod Dw k → (ptO Xo x0 ⟶ Xo.univ.t.G)} (h : IsLevWith Xo k ζ x0 ev)
    (h' : IsLevWith Xo k ζ x0 ev') : ev = ev' := by
  have hk0 : 0 < k := Nat.pos_of_dvd_of_pos hk (by have := l.three_le; omega)
  obtain ⟨e, he, -, -, hf⟩ := exists_sep l
  funext q
  obtain ⟨a, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  obtain ⟨q', hq'⟩ := FullLevel.onto_of_local Xo GlobalTheory.firstFiveLaws.1 hk0 h.1 (ev' (Submodule.Quotient.mk a))
    (FullLevel.pow_eq_one Xo h'.1 _)
  obtain ⟨a', rfl⟩ := Submodule.Quotient.mk_surjective _ q'
  have hh : ∀ b ∈ (Mfr l • ⊤ : Submodule (𝓞 E) Dw.La), ev (Submodule.Quotient.mk b) = ev' (Submodule.Quotient.mk b) :=
    fun b hb => (h.2.1 b hb).trans (h'.2.1 b hb).symm
  have h1 : Dw.ModN k (e • a - e • a') := by
    rw [← FullLevel.mk_eq_iff]
    apply FullLevel.injective_of_local Xo h.1
    rw [hh _ (Submodule.smul_mem_smul he trivial), Submodule.Quotient.mk_smul, Submodule.Quotient.mk_smul, h.1.2.1,
      h'.1.2.1, hq']
  have h2 : Dw.ModN k ((1 - e) • (a - a')) := modN_of_forall_dvd hk0 fun y => by
    have hy := Submodule.smul_mem_smul hf (Submodule.mem_top (x := y))
    have w1 := h.2.2 a' (H.bar (1 - e) • y)
    rw [hq', hh _ hy] at w1
    have w2 := weilIs_unique Xo (h'.2.2 a (H.bar (1 - e) • y)) w1
    rw [Dw.adj, map_sub, LinearMap.sub_apply, ← hζ.zpow_eq_one_iff_dvd, zpow_sub, w2, mul_inv_cancel]
  rw [← hq']
  congr 1
  rw [FullLevel.mk_eq_iff]
  obtain ⟨x, hx⟩ := h1
  obtain ⟨y, hy⟩ := h2
  exact ⟨x + y, by rw [smul_add, ← hx, ← hy, sub_smul, one_smul, smul_sub]; abel⟩


variable {Xo c} in
theorem IsLevOf.unique {k : ℕ} {S : Type} [CommRing S] [Algebra c.F S] {x0 : Sp S ⟶ Xo.X}
    {ev ev' : LatMod Dw k → (ptO Xo x0 ⟶ Xo.univ.t.G)} (h : IsLevOf Xo c k x0 ev) (h' : IsLevOf Xo c k x0 ev') :
    ev = ev' := by
  have hk0 : 0 < k := Nat.pos_of_dvd_of_pos h.1 (by have := l.three_le; omega)
  funext q
  obtain ⟨e, he, He⟩ := exists_isIdempotentElem_torsion_eq GlobalTheory.firstFiveLaws.1 E H Dw l Xo S x0 k hk0 (ev q) (ev' q)
    (FullLevel.pow_eq_one Xo h.2.1 q) (FullLevel.pow_eq_one Xo h'.2.1 q)
  obtain ⟨n, hn⟩ : IsNilpotent (1 - e) := UnivPairing.isNilpotent_of_geometric fun K _ _ χ => by
    let g : ptO Xo (spMap χ ≫ x0) ⟶ ptO Xo x0 := Over.homMk (spMap χ) rfl
    have := (h.2.baseChange χ g rfl).unique_field h.1 (isPrimitiveRoot_rootOn c h.1 K χ) (h'.2.baseChange χ g rfl)
    rw [map_sub, map_one, (He K χ).2 (congrArg CommaMorphism.left (congrFun this q)), sub_self]
  have h1 : e = 1 := by
    have := he.one_sub.pow_succ_eq n
    rw [pow_succ, hn, MulZeroClass.zero_mul] at this
    exact (sub_eq_zero.1 this.symm).symm
  have h2 := (He S (RingHom.id S)).1 h1
  have h3 : spMap (RingHom.id S) = 𝟙 _ := Spec.map_id (CommRingCat.of S)
  rw [h3] at h2
  exact Over.OverMorphism.ext ((Category.id_comp _).symm.trans (h2.trans (Category.id_comp _)))

theorem exists_isLevWith_geometric {k : ℕ} (hk : k ∣ l.M) {K : Type} [Field K] [IsAlgClosed K] (x0 : Sp K ⟶ Xo.X)
    {ζ : Kˣ} (hζ : IsPrimitiveRoot ζ k) : ∃ ev, IsLevWith Xo k ζ x0 ev := by
  have hM : 0 < l.M := by have := l.three_le; omega
  have hk0 : 0 < k := Nat.pos_of_dvd_of_pos hk hM
  haveI : NeZero k := ⟨hk0.ne'⟩
  obtain ⟨β, hβ⟩ := Spec.map_surjective (x0 ≫ Xo.s)
  obtain ⟨-, I, -, -, hI⟩ := Xo.univ.geom K x0 β.hom hβ.symm
  obtain ⟨m, -, hm⟩ := (I.ζ_prim k hk0).eq_pow_of_mem_rootsOfUnity (ξ := ζ) ((mem_rootsOfUnity _ _).2 hζ.pow_eq_one)
  obtain ⟨e, he, hf, he', hf'⟩ := exists_sep l
  set s : 𝓞 E := e + m * (1 - e) with hs
  have hcong : ∀ a b, Dw.ModN k (a - b) → I.ev k a = I.ev k b := fun a b hab => by
    rw [← sub_add_cancel a b, I.add, (I.ker k hk0 _).2 hab, _root_.one_mul]
  have hss : ∀ b : Dw.La, Dw.ModN k ((H.bar s * s) • b - m • b) := fun b => by
    obtain ⟨x, hx⟩ := modN_of_dvd hk (smul_modN he' (Submodule.smul_mem_smul he (Submodule.mem_top (x := b))))
    obtain ⟨y, hy⟩ := modN_of_dvd hk (smul_modN hf (Submodule.smul_mem_smul hf' (Submodule.mem_top (x := b))))
    refine ⟨(1 - m : 𝓞 E) • x + (m * m - m : 𝓞 E) • y, ?_⟩
    rw [smul_add, smul_comm k, smul_comm k, ← hx, ← hy, ← Nat.cast_smul_eq_nsmul (𝓞 E), hs]
    simp only [map_add (f := _), map_mul, map_sub, map_one, map_natCast]
    module
  have hEF : ∀ a b : Dw.La, I.ζ k ^ Dw.EF (s • a) (s • b) = ζ ^ Dw.EF a b := fun a b => by
    rw [Dw.adj, ← mul_smul, zpow_congr (I.ζ_prim k hk0).pow_eq_one
      (dvd_EF_sub (a := a) (a' := a) ⟨0, by simp⟩ (hss b)), map_nsmul, nsmul_eq_mul, zpow_mul, zpow_natCast, hm]
  obtain ⟨ev, hev, h⟩ := FullLevel.exists_descend Xo k x0 (fun a => I.ev k (s • a))
    (fun a b => by rw [smul_add, I.add]) (fun o a => by rw [smul_comm]; exact I.lin k _ _)
    (fun a => (I.ker k hk0 _).2 ⟨s • a, smul_comm _ _ _⟩) fun K' _ χ a b hab => by
      have h1 : I.ev k (s • a) = I.ev k (s • b) :=
        FullLevel.eq_of_agree Xo GlobalTheory.firstFiveLaws.1 hk0 χ (fun e he => isUnit_iff_ne_zero.2 fun h0 => by simp [h0] at he)
          ((I.onto k hk0 _).2 ⟨_, rfl⟩) ((I.onto k hk0 _).2 ⟨_, rfl⟩) hab
      have h2 : I.ev k (s • a) = I.ev k (s • (a - b)) * I.ev k (s • b) := by rw [← I.add, ← smul_add, sub_add_cancel]
      rw [h2, mul_eq_right, I.ker k hk0] at h1
      refine modN_of_forall_dvd hk0 fun y => ?_
      rw [← hζ.zpow_eq_one_iff_dvd, ← hEF, zpow_congr (I.ζ_prim k hk0).pow_eq_one
        (dvd_EF_sub (a' := 0) (b := s • y) (b' := s • y) (by rwa [sub_zero]) ⟨0, by simp⟩)]
      simp
  refine ⟨ev, hev, fun a ha => ?_, fun a b => ?_⟩
  · obtain ⟨x, hx⟩ := modN_of_dvd hk (smul_modN hf ha)
    have h1 : I.ev k (s • a) = I.ev k a := hcong _ _ ⟨(m - 1 : 𝓞 E) • x, by rw [smul_comm k, ← hx, hs]; module⟩
    have h2 := I.tower k (l.M / k) hk0 (Nat.div_pos (Nat.le_of_dvd hM hk) hk0) a
    rw [Nat.mul_div_cancel' hk] at h2
    rw [h, h1, ← h2, ← hI a ha]
    rfl
  · rw [h, h, ← hEF]
    exact I.isom k hk0 _ _

theorem exists_isLevOf_geometric {k : ℕ} (hk : k ∣ l.M) {K : Type} [Field K] [IsAlgClosed K] [Algebra c.F K]
    (x0 : Sp K ⟶ Xo.X) : ∃ ev, IsLevOf Xo c k x0 ev :=
  (exists_isLevWith_geometric Xo hk x0 (isPrimitiveRoot_rootOn c hk K (RingHom.id K))).imp fun _ h => ⟨hk, h⟩

theorem exists_isLevWith_cover {k : ℕ} (hk : k ∣ l.M) {S : Type} [CommRing S] (x0 : Sp S ⟶ Xo.X) {ζ : Sˣ}
    (hkS : IsUnit (k : S)) (hζ1 : ζ ^ k = 1)
    (hζ : ∀ (K : Type) [Field K] (χ : S →+* K), IsPrimitiveRoot (Units.map χ.toMonoidHom ζ) k) :
    ∃ (B : Type) (_ : CommRing B) (φ : S →+* B) (ev : LatMod Dw k → (ptO Xo (spMap φ ≫ x0) ⟶ Xo.univ.t.G)),
      φ.FaithfullyFlat ∧ IsLevWith Xo k (Units.map φ.toMonoidHom ζ) (spMap φ ≫ x0) ev := by
  classical
  have hL := GlobalTheory.firstFiveLaws.1
  have hk0 : 0 < k := Nat.pos_of_dvd_of_pos hk (by have := l.three_le; omega)
  haveI := FullLevel.finite_latMod (Dw := Dw) k hk0
  haveI := Fintype.ofFinite (LatMod Dw k)
  haveI := UnivPol.isLocallyNoetherian Xo
  choose r hr using Submodule.Quotient.mk_surjective (Ideal.span {(k : 𝓞 E)} • ⊤ : Submodule (𝓞 E) Dw.La)
  have hra : ∀ a, Dw.ModN k (r (Submodule.Quotient.mk a) - a) := fun a => (FullLevel.mk_eq_iff k _ _).1 (hr _)
  haveI : IsAddFG (𝓞 E) := Module.Finite.iff_addGroup_fg.1 inferInstance
  obtain ⟨s, hs⟩ : ∃ s : Finset (𝓞 E), AddSubgroup.closure (s : Set (𝓞 E)) = ⊤ :=
    AddGroup.exists_of_isAddFG (𝓞 E)
  obtain ⟨B, _, φ, w, hφ, hw, hU⟩ := exists_flat_universal_torsion_tuple hL E H Dw l Xo S x0 k hk0 (LatMod Dw k)
  let P : LatMod Dw k → Prop := fun q => ∃ a ∈ (Mfr l • ⊤ : Submodule (𝓞 E) Dw.La), Submodule.Quotient.mk a = q
  obtain ⟨e, he, he'⟩ := LevelFlat.exists_element hL Xo B (spMap φ ≫ x0) k hk0
    (((LatMod Dw k × LatMod Dw k) ⊕ (s × LatMod Dw k)) ⊕ {q // P q}) {p : LatMod Dw k × LatMod Dw k // p.1 ≠ p.2}
    (Sum.elim (Sum.elim (fun p => w (p.1 + p.2)) fun p => w ((p.1 : 𝓞 E) • p.2)) fun q => w q.1)
    (Sum.elim (Sum.elim (fun p => w p.1 * w p.2) fun p => w p.2 ≫ Xo.univ.t.act.act p.1)
      fun q => halfPt Xo k _ (r q.1))
    (fun p => w p.1.1) (fun p => w p.1.2) (by rintro ((p | p) | p) <;> exact hw _)
    (by
      rintro ((p | p) | p)
      · show (w p.1 * w p.2) ^ k = 1
        rw [mul_pow, hw, hw, _root_.mul_one]
      · show (w p.2 ≫ Xo.univ.t.act.act p.1) ^ k = 1
        haveI := Xo.univ.t.act.hom p.1
        rw [← MonObj.pow_comp, hw, MonObj.one_comp]
      · exact halfPt_pow Xo hk _ _)
    (fun _ => hw _) (fun _ => hw _)
  have hex : ∀ a b : LatMod Dw k, ∃ u : Bˣ, WeilIs Xo.univ.t.G Xo.univ.t.PP.L k (w a) (w b) (unitOn u) ∧ u ^ k = 1 := by
    intro a b
    obtain ⟨u, hu, -⟩ := (hL.weil Xo.X (UnivPol.pol Xo) k _).1 (w a) (w b) (hw a) (hw b)
    have h1 := UnivPairing.weilIs_pow_eq_one hL.weil (UnivPol.pol Xo) k _ _ (hw a) (hw b) u hu
    obtain ⟨u, rfl⟩ := (unitOn_bijective B).2 u
    exact ⟨u, hu, (unitOn_bijective B).1 ((map_pow _ _ _).trans (h1.trans (map_one _).symm))⟩
  choose u hu hu1 using hex
  let v : LatMod Dw k × LatMod Dw k → Bˣ := fun p => u p.1 p.2 / Units.map φ.toMonoidHom ζ ^ Dw.EF (r p.1) (r p.2)
  have hζB : Units.map φ.toMonoidHom ζ ^ k = 1 := by rw [← map_pow, hζ1, map_one]
  have hv : ∀ p, (v p : B) ^ k = 1 := fun p => by
    rw [← Units.val_pow_eq_pow_val, div_pow, hu1, ← zpow_natCast, ← zpow_mul, mul_comm, zpow_mul, zpow_natCast, hζB,
      one_zpow, div_one, Units.val_one]
  have hvχ : ∀ (T : Type) [CommRing T] (χ : B →+* T) p, χ (v p) = 1 ↔
      Units.map χ.toMonoidHom (u p.1 p.2) = Units.map (χ.comp φ).toMonoidHom ζ ^ Dw.EF (r p.1) (r p.2) := by
    intro T _ χ p
    have : Units.map χ.toMonoidHom (v p) =
        Units.map χ.toMonoidHom (u p.1 p.2) / Units.map (χ.comp φ).toMonoidHom ζ ^ Dw.EF (r p.1) (r p.2) := by
      rw [map_div, map_zpow]; rfl
    exact (Units.ext_iff (u := Units.map χ.toMonoidHom (v p)) (v := 1)).symm.trans (this ▸ div_eq_one)
  let d : B := e * ∏ p, ∑ i ∈ Finset.range k, (v p : B) ^ i
  let ρ : ∀ {T : Type} [CommRing T] (χ : B →+* T), ptO Xo (spMap (χ.comp φ) ≫ x0) ⟶ ptO Xo (spMap φ ≫ x0) :=
    fun χ => Over.homMk (spMap χ) (by
      show spMap χ ≫ spMap φ ≫ x0 = spMap (χ.comp φ) ≫ x0
      rw [spMap_comp, Category.assoc])
  have hρ : ∀ {T : Type} [CommRing T] (χ : B →+* T) (a b : ptO Xo (spMap φ ≫ x0) ⟶ Xo.univ.t.G),
      spMap χ ≫ a.left = spMap χ ≫ b.left ↔ ρ χ ≫ a = ρ χ ≫ b := fun χ a b =>
    ⟨fun h => Over.OverMorphism.ext h, fun h => congrArg CommaMorphism.left h⟩
  let lo : B →+* Localization.Away d := algebraMap B (Localization.Away d)
  have hd : IsUnit (lo d) := IsLocalization.Away.algebraMap_isUnit d
  have hlo : IsUnit (lo e) := isUnit_of_dvd_unit (map_dvd lo (dvd_mul_right _ _)) hd
  obtain ⟨h1, -⟩ := he _ lo hlo
  have hadd : ∀ a b, ρ lo ≫ w (a + b) = (ρ lo ≫ w a) * (ρ lo ≫ w b) := fun a b => by
    rw [← MonObj.comp_mul]
    exact (hρ lo _ _).1 (h1 (Sum.inl (Sum.inl (a, b))))
  refine ⟨Localization.Away d, inferInstance, lo.comp φ, fun a => ρ lo ≫ w a, ?_, ⟨hadd, ?_, fun K _ χ a b hab => ?_⟩,
    fun a ha => ?_, fun a b => ?_⟩
  · refine faithfullyFlat_points_baseChange_descent.1 _ _ _
      (faithfullyFlat_points_baseChange_descent.2.1 _ _ φ d hφ) fun K _ _ ψ => ?_
    obtain ⟨ev, hev⟩ := exists_isLevWith_geometric Xo hk (spMap ψ ≫ x0) (hζ K ψ)
    obtain ⟨χ, hχ, hw'⟩ := hU K ψ ev (FullLevel.pow_eq_one Xo hev.1)
    subst hχ
    have hu' : ∀ j, ρ χ ≫ w j = ev j := fun j => Over.OverMorphism.ext (hw' j).symm
    have hχe : IsUnit (χ e) := by
      refine he' K χ ?_ fun p hp => p.2 ?_
      · rintro ((p | p) | p) <;> refine (hρ χ _ _).2 ?_
        · show ρ χ ≫ w (p.1 + p.2) = ρ χ ≫ (w p.1 * w p.2)
          rw [MonObj.comp_mul, hu', hu', hu', hev.1.1]
        · show ρ χ ≫ w ((p.1 : 𝓞 E) • p.2) = ρ χ ≫ w p.2 ≫ Xo.univ.t.act.act p.1
          rw [← Category.assoc, hu', hu', hev.1.2.1]
        · show ρ χ ≫ w p.1 = ρ χ ≫ halfPt Xo k _ (r p.1)
          obtain ⟨_, a, ha, rfl⟩ := p
          rw [hu', comp_halfPt, hev.2.1 a ha, halfPt_congr Xo hk _ (hra a)]
      · have := (hρ χ _ _).1 hp
        rw [hu', hu'] at this
        exact FullLevel.injective_of_local Xo hev.1 this
    have hχv : ∀ p, χ (v p) = 1 := fun p => (hvχ K χ p).2 (by
      have w1 := weilIs_baseChange Xo χ (ρ χ) rfl (hu p.1 p.2)
      have w2 := hev.2.2 (r p.1) (r p.2)
      rw [hu', hu'] at w1
      rw [hr, hr] at w2
      exact weilIs_unique Xo w1 w2)
    have hχd : IsUnit (χ d) := by
      rw [map_mul, map_prod]
      refine hχe.mul (IsUnit.prod_iff.2 fun p _ => ?_)
      simpa [hχv] using hkS.map (χ.comp φ)
    refine ⟨IsLocalization.Away.lift d hχd, ?_⟩
    rw [← RingHom.comp_assoc, IsLocalization.Away.lift_comp]
  · refine LevelFlat.lin_of_generators Xo.univ.t.act (fun a => ρ lo ≫ w a) hadd hs fun o ho a => ?_
    show ρ lo ≫ w (o • a) = (ρ lo ≫ w a) ≫ Xo.univ.t.act.act o
    rw [Category.assoc]
    exact (hρ lo _ _).1 (h1 (Sum.inl (Sum.inr (⟨o, ho⟩, a))))
  · by_contra hn
    refine (he K (χ.comp lo) (hlo.map χ)).2 inferInstance ⟨(a, b), hn⟩ ?_
    rw [spMap_comp, Category.assoc, Category.assoc]
    exact hab
  · exact ((hρ lo _ _).1 (h1 (Sum.inr ⟨_, a, ha, rfl⟩))).trans
      ((comp_halfPt Xo k _ _).trans (halfPt_congr Xo hk _ (hra a)))
  · let p : LatMod Dw k × LatMod Dw k := (Submodule.Quotient.mk a, Submodule.Quotient.mk b)
    have h2 : IsUnit (lo (∑ i ∈ Finset.range k, (v p : B) ^ i)) := isUnit_of_dvd_unit
      (map_dvd lo ((Finset.dvd_prod_of_mem (fun p => ∑ i ∈ Finset.range k, (v p : B) ^ i)
        (Finset.mem_univ p)).mul_left _)) hd
    have h3 := congrArg lo (geom_sum_mul (v p : B) k)
    rw [hv, sub_self, map_zero, map_mul, h2.mul_right_eq_zero, map_sub, map_one, sub_eq_zero] at h3
    have h4 := weilIs_baseChange Xo lo (ρ lo) rfl (hu p.1 p.2)
    rw [(hvχ _ lo p).1 h3, zpow_congr (by rw [← map_pow, hζ1, map_one]) (dvd_EF_sub (hra a) (hra b))] at h4
    exact h4


variable {Xo c} in
theorem IsLevOf.baseChange {k : ℕ} {S T : Type} [CommRing S] [Algebra c.F S] [CommRing T] [Algebra c.F T]
    (ψ : S →ₐ[c.F] T) {x0 : Sp S ⟶ Xo.X} {x1 : Sp T ⟶ Xo.X} (h : ptO Xo x1 ⟶ ptO Xo x0)
    (hh : h.left = spMap ψ.toRingHom) {ev : LatMod Dw k → (ptO Xo x0 ⟶ Xo.univ.t.G)} (hev : IsLevOf Xo c k x0 ev) :
    IsLevOf Xo c k x1 (fun q => h ≫ ev q) :=
  ⟨hev.1, map_rootOn c k ψ ▸ hev.2.baseChange ψ.toRingHom h hh⟩

theorem exists_isLevOf_cover {k : ℕ} (hk : k ∣ l.M) {S : Type} [CommRing S] [Algebra c.F S] (x0 : Sp S ⟶ Xo.X) :
    ∃ (B : Type) (_ : CommRing B) (_ : Algebra c.F B) (φ : S →ₐ[c.F] B)
      (ev : LatMod Dw k → (ptO Xo (spMap φ.toRingHom ≫ x0) ⟶ Xo.univ.t.G)),
      φ.toRingHom.FaithfullyFlat ∧ IsLevOf Xo c k (spMap φ.toRingHom ≫ x0) ev := by
  have hk0 : 0 < k := Nat.pos_of_dvd_of_pos hk (by have := l.three_le; omega)
  have hu : IsUnit (k : S) := by
    simpa using (IsUnit.mk0 (k : c.F) (Nat.cast_ne_zero.2 hk0.ne')).map (algebraMap c.F S)
  obtain ⟨B, _, ψ, ev, hψ, hev⟩ :=
    exists_isLevWith_cover Xo hk x0 hu (rootOn_pow c hk S) (isPrimitiveRoot_rootOn c hk)
  letI : Algebra c.F B := (ψ.comp (algebraMap c.F S)).toAlgebra
  exact ⟨B, inferInstance, inferInstance, { ψ with commutes' := fun _ => rfl }, ev, hψ, hk, hev⟩

end GlobalTheory.ThetaConst
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsLevWithGeometric =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsTauZeroNonzeroAll =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsTauZeroNonzeroAll", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsLevWithGeometric\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsHomogeneousCompIdeal\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsFlatSecRankZero\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FlagComponentFramedPointFrame\npublic import Development.AbelianVarietyTheory.Definitions.TorusSections.IsTorusOf\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.CardLevGrpAndSpan\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.EtaValAtExistsUniqueNatural\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsFramedPointBaseChangeAlgHom\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsShiftNullValNeZero\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FaithfullyFlatPointsBaseChangeDescent\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FramedPointBaseChangeLaws\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.IsEtaRuleExistsUniqueMemSec\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ThetaNullValueExistsUniqueNaturalLinear\nimport Development.AbelianVarietyTheory.Proofs.GenericRegularity.GenFrExAndGenFromTest\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.ThetaConst

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.EtaForm
open GlobalTheory.AllWt GlobalTheory.FlatLine GlobalTheory.ShFam GlobalTheory.CompHt

attribute [local instance] Over.cartesianMonoidalCategory

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H}

def tauExpr {S : Type} [CommRing S] {k : ℕ} {J : Type} [Fintype J] {n : ℕ} (cf : J → ℤ)
    (x : J → Fin n → LatMod Dw k) (w : LatMod Dw k → S) : S :=
  ∑ j, (cf j : S) * ∏ b, w (x j b)

theorem map_tauExpr {S T : Type} [CommRing S] [CommRing T] (φ : S →+* T) {k : ℕ} {J : Type} [Fintype J] {n : ℕ}
    (cf : J → ℤ) (x : J → Fin n → LatMod Dw k) (w : LatMod Dw k → S) :
    φ (tauExpr cf x w) = tauExpr cf x (fun q => φ (w q)) := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp only [tauExpr, map_prod, map_sum, map_mul, map_intCast]

theorem tauExpr_scale {S : Type} [CommRing S] {k : ℕ} {J : Type} [Fintype J] {n : ℕ} (cf : J → ℤ)
    (x : J → Fin n → LatMod Dw k) (w : LatMod Dw k → S) (t : S) :
    tauExpr cf x (fun q => t * w q) = t ^ n * tauExpr cf x w := by
  rw [tauExpr, tauExpr, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  ring

def IsAdm (R : ℕ) {n : ℕ} (x₀ : Fin n → Dw.La) : Prop :=
  Submodule.span (𝓞 E) (Set.range x₀) ⊔ (Ideal.span {(R : 𝓞 E)} • ⊤) = ⊤

theorem IsAdm.spans {R : ℕ} (hR : 1 < R) {n : ℕ} {x₀ : Fin n → Dw.La} (h : IsAdm R x₀) :
    EtaAn.Spans (shiftFam R x₀ : (Fin n → LatMod Dw R) → Fin n → LatMod Dw (R ^ 4)) := fun u =>
  (EtaCard.card_levGrp_and_span E H Dw R hR).2.2.2.2.2.2 n x₀ h u (LinearEquiv.refl _ _)


variable (Dw) in
theorem exists_isAdm {R : ℕ} (hR : 1 < R) : ∃ x₀ : Fin (Dw.p + Dw.q) → Dw.La, IsAdm R x₀ :=
  (EtaCard.card_levGrp_and_span E H Dw R hR).2.2.2.2.2.1

variable (Xo : Moduli Dw l) (c : Coeff l)

def TauValAt (R : ℕ) {J : Type} [Fintype J] {n : ℕ} (cf : J → ℤ) (x : J → Fin n → LatMod Dw (R ^ 4))
    {S : Type} [CommRing S] [Algebra c.F S] (y : FrPt Xo c S) (v : S) : Prop :=
  ∃ (S' : Type) (_ : CommRing S') (_ : Algebra c.F S') (φ : S →ₐ[c.F] S') (y' : FrPt Xo c S')
    (ev : LatMod Dw (R ^ 4) → (ptO Xo y'.x ⟶ Xo.univ.t.G)) (w : LatMod Dw (R ^ 4) → S'),
    φ.toRingHom.FaithfullyFlat ∧ FrMap φ y y' ∧ IsLevOf Xo c (R ^ 4) y'.x ev ∧
    (∀ q, IsNullVal Xo c (R ^ 2) y' (ev q) (w q)) ∧ φ v = tauExpr cf x w

def IsTauRule (R : ℕ) {J : Type} [Fintype J] {n : ℕ} (cf : J → ℤ) (x : J → Fin n → LatMod Dw (R ^ 4))
    (f : Rul Xo c) : Prop :=
  ∀ (p : TRing c.F) (y : FrPt Xo c p.R), TauValAt Xo c R cf x y (f p y)

def IsGenRule (R : ℕ) {n : ℕ} (x₀ : Fin n → Dw.La) (u : Fin n → LatMod Dw R) (f : Rul Xo c) : Prop :=
  IsTauRule Xo c R (fun _ : Unit => 1) (fun _ => shiftFam R x₀ u) f

variable {Xo c}

def NonzeroOn (Z : Comp Xo c) (f : Rul Xo c) : Prop := genVal Z f ≠ 0

section Val

variable {R : ℕ} {J : Type} [Fintype J] {n : ℕ} {cf : J → ℤ} {x : J → Fin n → LatMod Dw (R ^ 4)}

theorem exists_lev_baseChange {S T : Type} [CommRing S] [Algebra c.F S] [CommRing T] [Algebra c.F T]
    (ψ : S →ₐ[c.F] T) {y : FrPt Xo c S} {z : FrPt Xo c T} (hm : FrMap ψ y z)
    {ev : LatMod Dw (R ^ 4) → (ptO Xo y.x ⟶ Xo.univ.t.G)} {w : LatMod Dw (R ^ 4) → S}
    (hev : IsLevOf Xo c (R ^ 4) y.x ev) (hw : ∀ q, IsNullVal Xo c (R ^ 2) y (ev q) (w q)) :
    ∃ ev' : LatMod Dw (R ^ 4) → (ptO Xo z.x ⟶ Xo.univ.t.G), IsLevOf Xo c (R ^ 4) z.x ev' ∧
      ∀ q, IsNullVal Xo c (R ^ 2) z (ev' q) (ψ (w q)) :=
  let h : ptO Xo z.x ⟶ ptO Xo y.x := Over.homMk (spMap ψ.toRingHom) hm.1.symm
  ⟨fun q => h ≫ ev q, hev.baseChange ψ h rfl, fun q => NullValue.baseChange ψ hm (ev q) (h ≫ ev q) rfl (hw q)⟩

theorem map_val_eq (hR : Odd R) {S₁ S₂ T : Type} [CommRing S₁] [Algebra c.F S₁] [CommRing S₂] [Algebra c.F S₂]
    [CommRing T] [Algebra c.F T] (ψ₁ : S₁ →ₐ[c.F] T) (ψ₂ : S₂ →ₐ[c.F] T) {y₁ : FrPt Xo c S₁} {y₂ : FrPt Xo c S₂}
    {z : FrPt Xo c T} (h₁ : FrMap ψ₁ y₁ z) (h₂ : FrMap ψ₂ y₂ z)
    {ev₁ : LatMod Dw (R ^ 4) → (ptO Xo y₁.x ⟶ Xo.univ.t.G)} {w₁ : LatMod Dw (R ^ 4) → S₁}
    {ev₂ : LatMod Dw (R ^ 4) → (ptO Xo y₂.x ⟶ Xo.univ.t.G)} {w₂ : LatMod Dw (R ^ 4) → S₂}
    (hev₁ : IsLevOf Xo c (R ^ 4) y₁.x ev₁) (hw₁ : ∀ q, IsNullVal Xo c (R ^ 2) y₁ (ev₁ q) (w₁ q))
    (hev₂ : IsLevOf Xo c (R ^ 4) y₂.x ev₂) (hw₂ : ∀ q, IsNullVal Xo c (R ^ 2) y₂ (ev₂ q) (w₂ q)) :
    ψ₁ (tauExpr cf x w₁) = ψ₂ (tauExpr cf x w₂) := by
  obtain ⟨e₁, he₁, hv₁⟩ := exists_lev_baseChange ψ₁ h₁ hev₁ hw₁
  obtain ⟨e₂, he₂, hv₂⟩ := exists_lev_baseChange ψ₂ h₂ hev₂ hw₂
  obtain rfl := he₁.unique he₂
  have : (fun q => ψ₁ (w₁ q)) = fun q => ψ₂ (w₂ q) := funext fun q =>
    (existsUnique_nullVal GlobalTheory.firstFiveLaws.1 hR he₁.2.1 q).unique (hv₁ q) (hv₂ q)
  exact (map_tauExpr ψ₁.toRingHom cf x w₁).trans
    ((congrArg (tauExpr cf x) this).trans (map_tauExpr ψ₂.toRingHom cf x w₂).symm)

theorem tauValAt_self {S : Type} [CommRing S] [Algebra c.F S] {y : FrPt Xo c S}
    {ev : LatMod Dw (R ^ 4) → (ptO Xo y.x ⟶ Xo.univ.t.G)} {w : LatMod Dw (R ^ 4) → S}
    (hev : IsLevOf Xo c (R ^ 4) y.x ev) (hw : ∀ q, IsNullVal Xo c (R ^ 2) y (ev q) (w q)) :
    TauValAt Xo c R cf x y (tauExpr cf x w) :=
  ⟨S, inferInstance, inferInstance, AlgHom.id _ _, y, ev, w,
    RingHom.FaithfullyFlat.of_bijective Function.bijective_id, FramedBaseChange.refl y, hev, hw, rfl⟩

theorem TauValAt.map_eq (hR : Odd R) {S T : Type} [CommRing S] [Algebra c.F S] [CommRing T] [Algebra c.F T]
    (φ : S →ₐ[c.F] T) {y₀ : FrPt Xo c S} {y : FrPt Xo c T} (hm : FrMap φ y₀ y) {v₀ : S} {v : T}
    (h₀ : TauValAt Xo c R cf x y₀ v₀) (h : TauValAt Xo c R cf x y v) : φ v₀ = v := by
  obtain ⟨S', _, _, α, y₀', ev₀, w₀, hα, hmα, hev₀, hw₀, e₀⟩ := h₀
  obtain ⟨T', _, _, β, y', ev, w, hβ, hmβ, hev, hw, e⟩ := h
  obtain ⟨U, _, _, ψ₁, ψ₂, hc, -, hinj⟩ := GlobalTheory.exists_faithfullyFlat_pushout c.F S T' S' (β.comp φ) α hα
  obtain ⟨z, hz⟩ := FramedBaseChange.exists_frMap GlobalTheory.firstFiveLaws.1 E H Dw l Xo c T' U ψ₁ y'
  have hz₀ : FrMap (ψ₂.comp α) y₀ z :=
    hc ▸ FramedBaseChange.trans _ ψ₁ (FramedBaseChange.trans φ β hm hmβ) hz
  have key := map_val_eq (cf := cf) (x := x) hR ψ₁ ψ₂ hz (FramedBaseChange.cancel α ψ₂ hmα hz₀) hev hw hev₀ hw₀
  have hβi : Function.Injective β := hβ.injective
  refine hβi (hinj ?_)
  rw [e, key, ← e₀]
  exact DFunLike.congr_fun hc v₀

theorem TauValAt.unique (hR : Odd R) {S : Type} [CommRing S] [Algebra c.F S] {y : FrPt Xo c S} {v v' : S}
    (h : TauValAt Xo c R cf x y v) (h' : TauValAt Xo c R cf x y v') : v = v' :=
  TauValAt.map_eq hR (AlgHom.id c.F S) (FramedBaseChange.refl y) h h'

theorem exists_cover (hR : Odd R) (hM : R ^ 4 ∣ l.M) {S : Type} [CommRing S] [Algebra c.F S] (y : FrPt Xo c S) :
    ∃ (S' : Type) (_ : CommRing S') (_ : Algebra c.F S') (φ : S →ₐ[c.F] S') (y' : FrPt Xo c S')
      (ev : LatMod Dw (R ^ 4) → (ptO Xo y'.x ⟶ Xo.univ.t.G)) (w : LatMod Dw (R ^ 4) → S'),
      φ.toRingHom.FaithfullyFlat ∧ FrMap φ y y' ∧ IsLevOf Xo c (R ^ 4) y'.x ev ∧
      ∀ q, IsNullVal Xo c (R ^ 2) y' (ev q) (w q) := by
  obtain ⟨B, _, _, φ, ev₀, hφ, hev₀⟩ := exists_isLevOf_cover Xo c hM y.x
  obtain ⟨y', hm⟩ := FramedBaseChange.exists_frMap GlobalTheory.firstFiveLaws.1 E H Dw l Xo c S B φ y
  obtain ⟨ev, hev⟩ : ∃ ev, IsLevOf Xo c (R ^ 4) y'.x ev := by
    rw [hm.1]
    exact ⟨ev₀, hev₀⟩
  choose w hw using fun q => (existsUnique_nullVal GlobalTheory.firstFiveLaws.1 hR hev.2.1 q).exists
  exact ⟨B, inferInstance, inferInstance, φ, y', ev, w, hφ, hm, hev, hw⟩


variable (cf x) in
theorem exists_tauValAt (hR : Odd R) (hM : R ^ 4 ∣ l.M) {S : Type} [CommRing S] [Algebra c.F S] (y : FrPt Xo c S) :
    ∃ v, TauValAt Xo c R cf x y v := by
  obtain ⟨B, _, _, φ, y', ev, w, hφ, hm, hev, hw⟩ := exists_cover hR hM y
  obtain ⟨v, hv, -⟩ := GlobalTheory.existsUnique_preimage_of_faithfullyFlat c.F S B φ hφ (tauExpr cf x w)
    fun T _ _ ψ₁ ψ₂ hc => by
      obtain ⟨z, hz⟩ := FramedBaseChange.exists_frMap GlobalTheory.firstFiveLaws.1 E H Dw l Xo c B T ψ₁ y'
      have hz₀ : FrMap (ψ₂.comp φ) y z := hc ▸ FramedBaseChange.trans φ ψ₁ hm hz
      exact map_val_eq hR ψ₁ ψ₂ hz (FramedBaseChange.cancel φ ψ₂ hm hz₀) hev hw hev hw
  exact ⟨v, B, inferInstance, inferInstance, φ, y', ev, w, hφ, hm, hev, hw, hv⟩

theorem TauValAt.dvd {S : Type} [CommRing S] [Algebra c.F S] {y : FrPt Xo c S} {v : S}
    (h : TauValAt Xo c R cf x y v) : R ^ 4 ∣ l.M := by
  obtain ⟨_, _, _, _, _, _, _, -, -, hev, -⟩ := h
  exact hev.1

theorem TauValAt.map (hR : Odd R) {S T : Type} [CommRing S] [Algebra c.F S] [CommRing T] [Algebra c.F T]
    (φ : S →ₐ[c.F] T) {y₀ : FrPt Xo c S} {y : FrPt Xo c T} (hm : FrMap φ y₀ y) {v₀ : S}
    (h₀ : TauValAt Xo c R cf x y₀ v₀) : TauValAt Xo c R cf x y (φ v₀) := by
  obtain ⟨v, hv⟩ := exists_tauValAt cf x hR h₀.dvd y
  rwa [TauValAt.map_eq hR φ hm h₀ hv]

theorem TauValAt.frBor {S : Type} [CommRing S] [Algebra c.F S] {t : Ix Dw → Sˣ} {y y' : FrPt Xo c S}
    (h : FrBor t y y') {v : S} (hv : TauValAt Xo c R cf x y v) :
    TauValAt Xo c R cf x y' ((t none : S) ^ n * v) := by
  obtain ⟨S', _, _, φ, z, ev, w, hφ, hz, hev, hw, hv⟩ := hv
  obtain ⟨z', hz'⟩ := FramedBaseChange.exists_frMap GlobalTheory.firstFiveLaws.1 E H Dw l Xo c S S' φ y'
  have hb := ScalarWeight.frBor_baseChange φ h hz hz'
  obtain ⟨ev', hev', he⟩ : ∃ ev', IsLevOf Xo c (R ^ 4) z'.x ev' ∧ ∀ q, (ev' q).left = (ev q).left := by
    rw [hb.1]
    exact ⟨ev, hev, fun _ => rfl⟩
  refine ⟨S', _, _, φ, z', ev', fun q => φ (t none) * w q, hφ, hz', hev', fun q => ?_, ?_⟩
  · exact NullValue.triangular hb (ev q) (ev' q) (he q) (hw q)
  · rw [tauExpr_scale, map_mul, map_pow, hv]


variable (Xo c cf x) in
theorem existsUnique_isTauRule (hR : Odd R) (hM : R ^ 4 ∣ l.M) : ∃! f, IsTauRule Xo c R cf x f :=
  ⟨fun _ y => (exists_tauValAt cf x hR hM y).choose, fun _ y => (exists_tauValAt cf x hR hM y).choose_spec,
    fun _ hf => funext fun p => funext fun y => (hf p y).unique hR (exists_tauValAt cf x hR hM y).choose_spec⟩

theorem IsTauRule.mem_sec (hR : Odd R) {f : Rul Xo c} (hf : IsTauRule Xo c R cf x f) : f ∈ sec Xo c 0 n := by
  refine ⟨fun p q φ y z h => (TauValAt.map_eq hR φ h (hf p y) (hf q z)).symm, fun p t y y' h => ?_⟩
  rw [(hf p y').unique hR ((hf p y).frBor h)]
  congr 1
  simp [wchar, ex, Fintype.prod_option]

theorem IsTauRule.tauValAt_evR (hR : Odd R) {f : Rul Xo c} (hf : IsTauRule Xo c R cf x f) {S : Type} [CommRing S]
    [Algebra c.F S] {y : FrPt Xo c S} (hy : Tested y) : TauValAt Xo c R cf x y (evR Xo c f y) := by
  unfold evR evalAt
  rw [dite_eq_left hy]
  exact (hf _ _).map hR _ hy.choose_spec.choose_spec.choose_spec

end Val

theorem tested_genFr (h : GenFrEx Xo c) (Z : Comp Xo c) : Tested (genFr h Z) :=
  (Reg.genFrEx_and_genFromTest E H Dw l Xo c).2 h Z

theorem genVal_idem (Z : Comp Xo c) : genVal Z (idem Z) = 1 :=
  have h := (Reg.genFrEx_and_genFromTest E H Dw l Xo c).1
  (genVal_apply h Z _).trans (evR_idem (liesOn_genFr h Z) (tested_genFr h Z))

theorem NonzeroOn.ne_zero {Z : Comp Xo c} {f : Rul Xo c} (h : NonzeroOn Z f) : f ≠ 0 := by
  rintro rfl; exact h (map_zero _)

theorem exists_gen_val_ne_zero {R : ℕ} (hR : Odd R) (h1 : 1 < R) (hM : R ^ 4 ∣ l.M) {n : ℕ} (x₀ : Fin n → Dw.La)
    {K : Type} [Field K] [Algebra c.F K] (y : FrPt Xo c K) :
    ∃ u : Fin n → LatMod Dw R, ∀ v, TauValAt Xo c R (fun _ : Unit => 1) (fun _ => shiftFam R x₀ u) y v → v ≠ 0 := by
  let φ : K →ₐ[c.F] AlgebraicClosure K := IsScalarTower.toAlgHom c.F K _
  obtain ⟨z, hz⟩ := FramedBaseChange.exists_frMap GlobalTheory.firstFiveLaws.1 E H Dw l Xo c K _ φ y
  obtain ⟨ev, hev⟩ := exists_isLevOf_geometric Xo c hM z.x
  choose w hw using fun q => (existsUnique_nullVal GlobalTheory.firstFiveLaws.1 hR hev.2.1 q).exists
  obtain ⟨u, hu⟩ := GlobalTheory.exists_shift_nullVal_ne_zero GlobalTheory.firstFiveLaws.1 E H Dw l Xo c R hR h1 _ z ev w hev.2.1 hw n x₀
    (LinearEquiv.refl _ _)
  refine ⟨u, fun v hv h0 => ?_⟩
  have := TauValAt.map_eq hR φ hz hv (tauValAt_self hev hw)
  rw [h0, map_zero, tauExpr, Fintype.sum_unique, Int.cast_one, _root_.one_mul] at this
  exact Finset.prod_ne_zero_iff.2 (fun b _ => hu b) this.symm

theorem exists_isGenRule_nonzeroOn {R : ℕ} (hR : Odd R) (h1 : 1 < R) (hM : R ^ 4 ∣ l.M) {n : ℕ} (x₀ : Fin n → Dw.La)
    (Z : Comp Xo c) : ∃ u f, IsGenRule Xo c R x₀ u f ∧ NonzeroOn Z f := by
  have h := (Reg.genFrEx_and_genFromTest E H Dw l Xo c).1
  obtain ⟨u, hu⟩ := exists_gen_val_ne_zero hR h1 hM x₀ (genFr h Z)
  obtain ⟨f, hf, -⟩ := existsUnique_isTauRule Xo c (fun _ : Unit => 1) (fun _ => shiftFam R x₀ u) hR hM
  exact ⟨u, f, hf, hu _ (hf.tauValAt_evR hR (tested_genFr h Z))⟩

section Theta

variable {r : ℕ} {U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r} {x : ℝ} {Z : Comp Xo c}

def thetaOn (h : HasPts U Z) (s : ∀ τ, FlatSec U x Z τ) (K : (Rul Xo c)ˣ) (f : Rul Xo c) : Rul Xo c :=
  f ^ 8 * (K : Rul Xo c) ^ (Dw.p + Dw.q) * (FlatSec.shift h s fun _ => -(4 * ((Dw.p + Dw.q : ℕ) : ℤ))).sig

theorem shift_sig (h : HasPts U Z) (s : ∀ τ, FlatSec U x Z τ) (m : ℕ) :
    (FlatSec.shift h s fun _ => -(4 * (m : ℤ))).sig = idem Z * ∏ τ, (s τ).sig ^ (4 * m) := by
  have h1 : ∀ τ, ((s τ).zpow (- -(4 * (m : ℤ)))).sig = idem Z * (s τ).sig ^ (4 * m) := fun τ => by
    have a : (- -(4 * (m : ℤ))).toNat = 4 * m := by omega
    have b : (- - -(4 * (m : ℤ))).toNat = 0 := by omega
    rw [(ConstSec.zpow_spec _ _).1, a, b, pow_zero, _root_.mul_one]
  rw [(FlatSec.shift_spec h s _).1]
  simp only [h1]
  rw [Finset.prod_mul_distrib, Finset.prod_const, ← _root_.mul_assoc, ← pow_succ',
    (show IsIdempotentElem (idem Z) from idem_mul_idem Z).pow_succ_eq]
  convert rfl

theorem pow_mem_secZ {e : Ix Dw → ℤ} {f : Rul Xo c} (hf : f ∈ secZ Xo c e) (m : ℕ) : f ^ m ∈ secZ Xo c (m • e) := by
  induction m with
  | zero => rw [pow_zero, zero_smul]; exact one_mem_secZ
  | succ m ih => rw [pow_succ, succ_nsmul]; exact mul_mem_secZ ih hf

theorem ex_tau_key (m : ℕ) :
    (8 • fun i => (ex Dw 0 m i : ℤ)) + m • (4 : ℤ) • keyEx Dw =
      exOf Dw ((8 * (m : ℤ)) • hodgeWt Dw + parWt Dw fun _ => 4 * (m : ℤ)) 0 := by
  have h : ((8 * (m : ℤ)) • hodgeWt Dw + parWt Dw fun _ => 4 * (m : ℤ)) =
      weightOf Dw (fun y => (((0 : (E →+* ℂ) × ℕ → ℕ) y : ℕ) : ℤ)) ((4 * m : ℕ) : ℤ) := by
    funext τ j
    simp only [weightOf, hodgeWt, barWt, parWt, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply]
    split_ifs <;> push_cast <;> ring
  rw [h, ← exKey_two_mul]
  funext i
  cases i <;> simp [exKey, keyEx, ex] <;> ring

theorem pow_mul_key_mem_secZ {m : ℕ} {K f : Rul Xo c} (hK : K ∈ secZ Xo c ((4 : ℤ) • keyEx Dw))
    (hf : f ∈ sec Xo c 0 m) :
    f ^ 8 * K ^ m ∈ secZ Xo c (exOf Dw ((8 * (m : ℤ)) • hodgeWt Dw + parWt Dw fun _ => 4 * (m : ℤ)) 0) := by
  rw [← secZ_nat] at hf
  exact ex_tau_key (Dw := Dw) m ▸ mul_mem_secZ (pow_mem_secZ hf 8) (pow_mem_secZ hK m)

theorem thetaOn_mem_secZ (h : HasPts U Z) (s : ∀ τ, FlatSec U x Z τ) {K : (Rul Xo c)ˣ}
    (hK : (K : Rul Xo c) ∈ secZ Xo c ((4 : ℤ) • keyEx Dw)) {f : Rul Xo c} (hf : f ∈ sec Xo c 0 (Dw.p + Dw.q)) :
    thetaOn h s K f ∈ secZ Xo c (exOf Dw ((8 * ((Dw.p + Dw.q : ℕ) : ℤ)) • hodgeWt Dw) 0) := by
  have h1 := mul_mem_secZ (pow_mul_key_mem_secZ hK hf)
    (FlatSec.shift h s fun _ => -(4 * ((Dw.p + Dw.q : ℕ) : ℤ))).sig_mem
  rw [← exOf_add'] at h1
  have e : ((8 * ((Dw.p + Dw.q : ℕ) : ℤ)) • hodgeWt Dw + parWt Dw fun _ => 4 * ((Dw.p + Dw.q : ℕ) : ℤ)) +
      parWt Dw (fun _ => -(4 * ((Dw.p + Dw.q : ℕ) : ℤ))) = (8 * ((Dw.p + Dw.q : ℕ) : ℤ)) • hodgeWt Dw := by
    funext τ j
    simp [parWt]
  rw [e] at h1
  exact h1

theorem thetaOn_mem_suppOn (h : HasPts U Z) (s : ∀ τ, FlatSec U x Z τ) (K : (Rul Xo c)ˣ) (f : Rul Xo c) :
    thetaOn h s K f ∈ suppOn Z := mul_mem_suppOn _ (ConstSec.sig_mem_suppOn _)

theorem nonzeroOn_thetaOn_iff (h : HasPts U Z) (s : ∀ τ, FlatSec U x Z τ) (K : (Rul Xo c)ˣ) (f : Rul Xo c) :
    NonzeroOn Z (thetaOn h s K f) ↔ NonzeroOn Z f := by
  have h1 := congrArg (genVal Z) (FlatSec.shift h s fun _ => -(4 * ((Dw.p + Dw.q : ℕ) : ℤ))).mul_inv
  rw [map_mul, genVal_idem] at h1
  have h2 := left_ne_zero_of_mul_eq_one h1
  have h3 := (K.isUnit.map (genVal Z)).ne_zero
  rw [NonzeroOn, NonzeroOn, thetaOn, map_mul, map_mul, map_pow, map_pow, mul_ne_zero_iff_right h2,
    mul_ne_zero_iff_right (pow_ne_zero _ h3), pow_ne_zero_iff (by norm_num)]

end Theta

end GlobalTheory.ThetaConst
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsTauZeroNonzeroAll =====

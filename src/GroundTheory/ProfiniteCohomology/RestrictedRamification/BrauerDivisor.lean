module

public import GroundTheory.ProfiniteCohomology.RestrictedRamification.MemMaxUnramifiedOutsideOfMemLevelOfField
public import GroundTheory.GlobalFields.KummerTheory.Unramified
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.IsUnramifiedOutsideIffLeMaxUnramifiedOutside
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.SUnits
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerOrd
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.DivisorModule
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.SInvariantToInvariantsEqZeroIff
import GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleLimits.NormalFixingSubgroupGaloisClosure
import GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer
import GroundTheory.ProfiniteCohomology.GlobalClassFormation.Splitting
import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDefs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisorKummer, GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisor

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisorKummer =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisorKummer", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.MemMaxUnramifiedOutsideOfMemLevelOfField\npublic import GroundTheory.GlobalFields.KummerTheory.Unramified\nimport GroundTheory.ProfiniteCohomology.GlobalClassFormation.IdeleLimits.NormalFixingSubgroupGaloisClosure\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.IsUnramifiedOutsideIffLeMaxUnramifiedOutside\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.SUnits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

namespace PicInf

open CategoryTheory NumberField IsDedekindDomain IntermediateField GroundTheory.Global FiniteSubfield

local notation "ℚ̄" => AlgebraicClosure ℚ

noncomputable section

variable {K : FiniteSubfield} {S : Set (HeightOneSpectrum (𝓞 K.1))}

variable (L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) [FiniteDimensional K.1 L]


omit [FiniteDimensional K.1 L] in
theorem exists_mem_pow_eq_of_dvd_log_valuation (Lq : IntermediateField K.1 ℚ̄) [FiniteDimensional K.1 Lq]
    [NumberField Lq]
    (hLqle : Lq ≤ maxUnramifiedOutside K.1 ℚ̄ S) (M : ℕ) (hM : M ≠ 0)
    (hMS : ∀ v ∉ S, ((M : ℕ) : 𝓞 K.1) ∉ v.asIdeal) (π : Lqˣ)
    (hπ : ∀ W : HeightOneSpectrum (𝓞 Lq), (M : ℤ) ∣ WithZero.log (W.valuation Lq (π : Lq))) :
    ∃ α : ℚ̄, α ∈ maxUnramifiedOutside K.1 ℚ̄ S ∧ α ^ M = ((π : Lq) : ℚ̄) := by
  have hLu : IsUnramifiedOutside S Lq := (isUnramifiedOutside_iff_le_maxUnramifiedOutside S).2 hLqle
  obtain ⟨α, hα⟩ := IsAlgClosed.exists_pow_nat_eq ((π : Lq) : ℚ̄) (Nat.pos_of_ne_zero hM)
  have hαint : IsIntegral Lq α := by
    refine IsIntegral.of_pow (Nat.pos_of_ne_zero hM) ?_
    rw [hα]
    exact isIntegral_algebraMap (x := (π : Lq))
  let E : IntermediateField Lq ℚ̄ := IntermediateField.adjoin Lq {α}
  have : FiniteDimensional Lq E := IntermediateField.adjoin.finiteDimensional hαint
  have : NumberField E := NumberField.of_module_finite Lq E
  have hβ : IntermediateField.AdjoinSimple.gen Lq α ^ M = algebraMap Lq E (π : Lq) := by
    apply Subtype.ext
    rw [SubmonoidClass.coe_pow, IntermediateField.AdjoinSimple.coe_gen, hα]
    rfl
  have hEu : IsUnramifiedOutside (placesOver S) E := by
    intro w hw
    refine Global.Kummer.isUnramifiedIn_of_pow_eq π hβ (adjoin_gen_eq_top Lq α) w ?_ (hπ w)
    intro hmem
    have hv : underPlace (F := K.1) w ∉ S := fun h => hw (mem_placesOver_iff.2 h)
    apply hMS _ hv
    change ((M : ℕ) : 𝓞 K.1) ∈ Ideal.comap (algebraMap (𝓞 K.1) (𝓞 Lq)) w.asIdeal
    rw [Ideal.mem_comap, map_natCast]
    exact hmem
  have hEF := (isUnramifiedOutside_restrictScalars_iff S hLu E).2 hEu
  have : FiniteDimensional K.1 (E.restrictScalars K.1) := FiniteDimensional.trans K.1 Lq E
  exact ⟨α, le_maxUnramifiedOutside S hEF (IntermediateField.mem_adjoin_simple_self Lq α), hα⟩

theorem exists_pow_eq_of_dvd_log_valuation (M : ℕ) (hM : M ≠ 0)
    (hMS : ∀ v ∉ S, ((M : ℕ) : 𝓞 K.1) ∉ v.asIdeal) (π : (levelOfField L).1ˣ)
    (hπ : ∀ W : HeightOneSpectrum (𝓞 (levelOfField L).1),
      (M : ℤ) ∣ WithZero.log (W.valuation (levelOfField L).1 (π : (levelOfField L).1))) :
    ∃ α : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ,
      ((α : maxUnramifiedOutside K.1 ℚ̄ S) : ℚ̄) ^ M = ((π : (levelOfField L).1) : ℚ̄) := by
  have hLqf : FiniteDimensional K.1 (L.map (maxUnramifiedOutside K.1 ℚ̄ S).val) :=
    LinearEquiv.finiteDimensional (L.equivMap (maxUnramifiedOutside K.1 ℚ̄ S).val).toLinearEquiv
  have hLqle : L.map (maxUnramifiedOutside K.1 ℚ̄ S).val ≤ maxUnramifiedOutside K.1 ℚ̄ S := by
    rintro z ⟨w, -, rfl⟩
    exact w.2
  have : NumberField (L.map (maxUnramifiedOutside K.1 ℚ̄ S).val) := NumberField.of_module_finite K.1 _
  obtain ⟨α, hαS, hα⟩ := exists_mem_pow_eq_of_dvd_log_valuation
    (L.map (maxUnramifiedOutside K.1 ℚ̄ S).val) hLqle M hM hMS π hπ
  have hα0 : (⟨α, hαS⟩ : maxUnramifiedOutside K.1 ℚ̄ S) ≠ 0 := by
    intro h
    have h' : α = 0 := congrArg Subtype.val h
    rw [h', zero_pow hM] at hα
    exact (π : (levelOfField L).1ˣ).ne_zero (Subtype.ext hα.symm)
  exact ⟨Units.mk0 _ hα0, hα⟩

end

end PicInf

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisorKummer =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisor =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisor", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerOrd\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.DivisorModule\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.MemMaxUnramifiedOutsideOfMemLevelOfField\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.SInvariantToInvariantsEqZeroIff\nimport GroundTheory.ProfiniteCohomology.GaloisCohomology.Kummer\nimport GroundTheory.ProfiniteCohomology.GlobalClassFormation.Splitting\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDefs\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisorKummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain IntermediateField GroundTheory.Global FiniteSubfield

local notation "ℚ̄" => AlgebraicClosure ℚ

noncomputable section

variable (K : FiniteSubfield) (S : Set (HeightOneSpectrum (𝓞 K.1))) (ιs : LocalEmbeddings K)

def gsDecomp (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S}) :
    Gal(AlgebraicClosure (v.1.adicCompletion K.1)/v.1.adicCompletion K.1) →*
      galUnramifiedOutside K.1 ℚ̄ S :=
  decompHomS (v.1.adicCompletion K.1) S (ιs.fin v.1)

theorem continuous_gsDecomp (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S}) :
    Continuous (gsDecomp K S ιs v) :=
  continuous_decompHomS (Kv := v.1.adicCompletion K.1) S _

abbrev gsDiv (A : Type) [AddCommGroup A] : Rep.{0} (ULift.{0} ℤ) (galUnramifiedOutside K.1 ℚ̄ S) :=
  divFunRep (gsDecomp K S ιs) A

instance isDiscreteRep_gsDiv (A : Type) [AddCommGroup A] : IsDiscreteRep (gsDiv K S ιs A) :=
  have := galUnramifiedOutside_isProfinite (F := K.1) (Ω := ℚ̄) S
  isDiscreteRep_divFunRep _ _

theorem isLocallyConstant_galUnitsHom_apply (y : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
    IsLocallyConstant fun x : galUnramifiedOutside K.1 ℚ̄ S => galUnitsHom K.1 _ x y := by
  rw [IsLocallyConstant.iff_eventually_eq]
  intro x
  have ho := isOpen_stabilizer (galUnits.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) (Additive.ofMul y)
  have hn := (ho.preimage (continuous_const_mul x⁻¹)).mem_nhds
    (show x⁻¹ * x ∈ (stabilizer (galUnits.{0} K.1 (maxUnramifiedOutside K.1 ℚ̄ S)).ρ (Additive.ofMul y) :
      Set (galUnramifiedOutside K.1 ℚ̄ S)) by rw [inv_mul_cancel]; exact one_mem _)
  filter_upwards [hn] with x' hx'
  have hs' : galUnitsHom K.1 _ (x⁻¹ * x') y = y := congrArg Additive.toMul ((mem_stabilizer _ _ _).1 hx')
  have : x' = x * (x⁻¹ * x') := by rw [mul_inv_cancel_left]
  rw [this, map_mul]
  change galUnitsHom K.1 _ x (galUnitsHom K.1 _ (x⁻¹ * x') y) = _
  rw [hs']

def unitsDivFun (y : Additive (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) : divFun (gsDecomp K S ιs) ℤ :=
  ⟨fun v x => ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x y.toMul)), by
    refine ⟨(finite_ordEmb_ne_zero S ιs y.toMul).subset fun v hv => ?_, fun v => ⟨?_, fun σ x => ?_⟩⟩
    · by_contra h
      exact hv (funext fun σ => by_contra fun hσ => h ⟨σ, hσ⟩)
    · exact (isLocallyConstant_galUnitsHom_apply K S y.toMul).comp _
    · show ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ (gsDecomp K S ιs v σ * x) y.toMul)) =
        ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x y.toMul))
      rw [map_mul]
      exact ordEmb_decompHomS S (ιs.fin v.1) v.2 σ _⟩

def unitsDivHom : Additive (maxUnramifiedOutside K.1 ℚ̄ S)ˣ →+ divFun (gsDecomp K S ιs) ℤ where
  toFun := unitsDivFun K S ιs
  map_zero' := Subtype.ext (funext fun v => funext fun x => by
    change ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x 1)) = 0
    rw [map_one, ofMul_one, map_zero])
  map_add' y z := Subtype.ext (funext fun v => funext fun x => by
    change ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x (y.toMul * z.toMul))) =
      ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x y.toMul)) +
        ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x z.toMul))
    rw [map_mul, ofMul_mul, map_add (f := _)])

def unitsDiv : galUnits K.1 (maxUnramifiedOutside K.1 ℚ̄ S) ⟶ gsDiv K S ιs ℤ :=
  Rep.ofHom ⟨uliftIntLinearMap (unitsDivHom K S ιs), fun σ => LinearMap.ext fun y =>
    Subtype.ext (funext fun v => funext fun x => by
      change ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x (galUnitsHom K.1 _ σ y.toMul))) =
        ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ (x * σ) y.toMul))
      rw [map_mul]
      rfl)⟩

theorem coe_unitsDiv_hom_apply (y : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
    (((unitsDiv K S ιs).hom (Additive.ofMul y) : divFun (gsDecomp K S ιs) ℤ) :
      {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ) =
      fun v x => ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x y)) :=
  rfl

theorem divFunEval_unitsDiv (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S})
    (y : Additive (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
    (divFunEval (gsDecomp K S ιs) ℤ v).hom ((unitsDiv K S ιs).hom y) = ordEmb S (ιs.fin v.1) v.2 y := by
  rw [divFunEval_hom_apply]
  change ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ 1 y.toMul)) = _
  rw [map_one]
  rfl

theorem unitsDiv_eq_zero_iff (y : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ) :
    (unitsDiv K S ιs).hom (Additive.ofMul y) = 0 ↔ y ∈ sUnitsMax K.1 ℚ̄ S := by
  rw [mem_sUnitsMax_iff_ordEmb S ιs]
  constructor
  · intro h v hv σ
    have := congrFun (congrFun (congrArg Subtype.val h) ⟨v, hv⟩) σ
    exact this
  · intro h
    exact Subtype.ext (funext fun v => funext fun x => h v.1 v.2 x)

theorem sUnitsSubmodule_le_ker_unitsDiv :
    sUnitsSubmodule K.1 ℚ̄ S ≤ LinearMap.ker (unitsDiv K S ιs).hom.toLinearMap := fun y hy =>
  (unitsDiv_eq_zero_iff K S ιs y.toMul).2 hy

def sUnitsQuotDiv : galUnitsModSUnits K.1 ℚ̄ S ⟶ gsDiv K S ιs ℤ :=
  Rep.ofHom ⟨(sUnitsSubmodule K.1 ℚ̄ S).liftQ (unitsDiv K S ιs).hom.toLinearMap
      (sUnitsSubmodule_le_ker_unitsDiv K S ιs), fun σ => by
    apply Submodule.linearMap_qext
    apply LinearMap.ext
    intro y
    exact congrArg (fun f : _ →ₗ[ULift ℤ] _ => f y) ((unitsDiv K S ιs).hom.isIntertwining' σ)⟩

theorem sUnitsQuotSequence_g_comp_sUnitsQuotDiv :
    (sUnitsQuotSequence K.1 ℚ̄ S).g ≫ sUnitsQuotDiv K S ιs = unitsDiv K S ιs := by
  apply Rep.hom_ext
  apply Representation.IntertwiningMap.ext
  apply LinearMap.ext
  intro y
  rfl

theorem sUnitsQuotDiv_injective : Function.Injective (sUnitsQuotDiv K S ιs).hom := by
  have h : LinearMap.ker (sUnitsQuotDiv K S ιs).hom.toLinearMap = ⊥ :=
    Submodule.ker_liftQ_eq_bot _ _ _ fun y hy => (unitsDiv_eq_zero_iff K S ιs y.toMul).1 hy
  exact LinearMap.ker_eq_bot.1 h

def principalDivSubmodule : Submodule (ULift.{0} ℤ) (gsDiv K S ιs ℤ) :=
  LinearMap.range (sUnitsQuotDiv K S ιs).hom.toLinearMap

theorem principalDivSubmodule_le_comap (σ : galUnramifiedOutside K.1 ℚ̄ S) :
    principalDivSubmodule K S ιs ≤ (principalDivSubmodule K S ιs).comap ((gsDiv K S ιs ℤ).ρ σ) := by
  rintro _ ⟨p, rfl⟩
  refine ⟨(galUnitsModSUnits K.1 ℚ̄ S).ρ σ p, ?_⟩
  exact congrArg (fun f : _ →ₗ[ULift ℤ] _ => f p) ((sUnitsQuotDiv K S ιs).hom.isIntertwining' σ)

def picInfRep : Rep.{0} (ULift.{0} ℤ) (galUnramifiedOutside K.1 ℚ̄ S) :=
  (gsDiv K S ιs ℤ).quotient (principalDivSubmodule K S ιs) (principalDivSubmodule_le_comap K S ιs)

instance isDiscreteRep_picInfRep : IsDiscreteRep (picInfRep K S ιs) :=
  isDiscreteRep_quotient _ _ _

def picQuot : gsDiv K S ιs ℤ ⟶ picInfRep K S ιs :=
  Rep.mkQ _ (principalDivSubmodule K S ιs) (principalDivSubmodule_le_comap K S ιs)

theorem picQuot_surjective : Function.Surjective (picQuot K S ιs).hom :=
  Submodule.mkQ_surjective _

def picSequence : ShortComplex (Rep.{0} (ULift.{0} ℤ) (galUnramifiedOutside K.1 ℚ̄ S)) :=
  ShortComplex.mk (sUnitsQuotDiv K S ιs) (picQuot K S ιs) (by
    apply Rep.hom_ext
    apply Representation.IntertwiningMap.ext
    apply LinearMap.ext
    intro p
    exact (Submodule.Quotient.mk_eq_zero _).2 ⟨p, rfl⟩)

theorem picSequence_shortExact : (picSequence K S ιs).ShortExact := by
  refine ShortComplex.ShortExact.mk' ?_ ?_ ?_
  · apply shortComplex_exact_of_forall_exists
    intro f hf
    obtain ⟨p, hp⟩ := (Submodule.Quotient.mk_eq_zero _).1 hf
    exact ⟨p, hp⟩
  · exact (Rep.mono_iff_injective _).2 (sUnitsQuotDiv_injective K S ιs)
  · exact (Rep.epi_iff_surjective _).2 (picQuot_surjective K S ιs)

namespace PicInf

variable {K S ιs}

def Good (ℓ : ℕ) (f : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ) : Prop :=
  ∃ N : ℕ, N.Coprime ℓ ∧ ∃ y : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ, ∀ v x,
    ordEmb S (ιs.fin v.1) v.2 (Additive.ofMul (galUnitsHom K.1 _ x y)) = N * f v x

theorem good_zero (ℓ : ℕ) : Good (S := S) (ιs := ιs) ℓ 0 :=
  ⟨1, Nat.coprime_one_left ℓ, 1, fun v x => by
    rw [map_one, ofMul_one, map_zero, Pi.zero_apply, Pi.zero_apply, mul_zero]⟩

theorem Good.add {ℓ : ℕ}
    {f g : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ}
    (hf : Good (ιs := ιs) ℓ f) (hg : Good (ιs := ιs) ℓ g) : Good (ιs := ιs) ℓ (f + g) := by
  obtain ⟨N₁, h₁, y₁, hy₁⟩ := hf
  obtain ⟨N₂, h₂, y₂, hy₂⟩ := hg
  refine ⟨N₁ * N₂, Nat.Coprime.mul_left h₁ h₂, y₁ ^ N₂ * y₂ ^ N₁, fun v x => ?_⟩
  rw [map_mul, map_pow, map_pow, ofMul_mul, ofMul_pow, ofMul_pow, map_add (f := _), map_nsmul, map_nsmul,
    hy₁, hy₂, Pi.add_apply, Pi.add_apply, nsmul_eq_mul, nsmul_eq_mul]
  push_cast
  ring

theorem Good.zsmul {ℓ : ℕ} {f : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ}
    (hf : Good (ιs := ιs) ℓ f) (c : ℤ) : Good (ιs := ιs) ℓ (c • f) := by
  obtain ⟨N, h, y, hy⟩ := hf
  refine ⟨N, h, y ^ c, fun v x => ?_⟩
  rw [map_zpow, ofMul_zpow, map_zsmul, hy, Pi.smul_apply, Pi.smul_apply, smul_eq_mul, smul_eq_mul]
  ring

theorem good_sum {ℓ : ℕ} {ι : Type} (T : Finset ι)
    (f : ι → {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ)
    (hf : ∀ i ∈ T, Good (ιs := ιs) ℓ (f i)) : Good (ιs := ιs) ℓ (∑ i ∈ T, f i) := by
  classical
  induction T using Finset.induction_on with
  | empty => rw [Finset.sum_empty]; exact good_zero ℓ
  | insert a T ha ih =>
    rw [Finset.sum_insert ha]
    exact (hf a (Finset.mem_insert_self a T)).add (ih fun i hi => hf i (Finset.mem_insert_of_mem hi))

theorem Good.translate {ℓ : ℕ}
    {f : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ}
    (hf : Good (ιs := ιs) ℓ f) (g : galUnramifiedOutside K.1 ℚ̄ S) :
    Good (ιs := ιs) ℓ (fun v x => f v (x * g)) := by
  obtain ⟨N, h, y, hy⟩ := hf
  refine ⟨N, h, galUnitsHom K.1 _ g y, fun v x => ?_⟩
  rw [← hy v (x * g), map_mul]
  rfl

end PicInf

namespace PicInf

variable {K S ιs}


open Classical in
noncomputable def zuInd (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S})
    (U : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)) : galUnramifiedOutside K.1 ℚ̄ S → ℤ :=
  fun g => @ite ℤ (∃ z ∈ (gsDecomp K S ιs v).range, ∃ u ∈ U, g = z * u)
    (Classical.propDecidable _) 1 0


open Classical in
theorem good_single_of_base {ℓ : ℕ} (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S})
    (U : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)) [hUn : U.Normal]
    (hU : IsOpen (U : Set (galUnramifiedOutside K.1 ℚ̄ S)))
    (hbase : Good (ιs := ιs) ℓ (Pi.single v (zuInd (ιs := ιs) v U)))
    (φ : galUnramifiedOutside K.1 ℚ̄ S → ℤ) (hφU : ∀ x, ∀ u ∈ U, φ (x * u) = φ x)
    (hφZ : ∀ z ∈ (gsDecomp K S ιs v).range, ∀ x, φ (z * x) = φ x) :
    Good (ιs := ιs) ℓ (Pi.single v φ) := by
  have : Finite (galUnramifiedOutside K.1 ℚ̄ S ⧸ U) := Subgroup.quotient_finite_of_isOpen U hU
  have := Fintype.ofFinite (galUnramifiedOutside K.1 ℚ̄ S ⧸ U)
  set Z := (gsDecomp K S ιs v).range with hZ
  induction' hn : (Finset.univ.filter (fun q : galUnramifiedOutside K.1 ℚ̄ S ⧸ U =>
    ∃ x : galUnramifiedOutside K.1 ℚ̄ S, (x : galUnramifiedOutside K.1 ℚ̄ S ⧸ U) = q ∧ φ x ≠ 0)).card
    using Nat.strong_induction_on with n ih generalizing φ
  by_cases h0 : ∀ x, φ x = 0
  · have : φ = 0 := funext h0
    rw [this, Pi.single_zero]
    exact good_zero ℓ
  simp only [not_forall] at h0
  obtain ⟨x₀, hx₀⟩ := h0

  obtain ⟨χ, hχ⟩ : ∃ χ : galUnramifiedOutside K.1 ℚ̄ S → ℤ,
      χ = fun g => zuInd (ιs := ιs) v U (g * x₀⁻¹) := ⟨_, rfl⟩
  have hmemD : ∀ g, (∃ z ∈ Z, ∃ u ∈ U, g * x₀⁻¹ = z * u) ↔ ∃ z ∈ Z, ∃ u ∈ U, g = z * x₀ * u := by
    intro g
    constructor
    · rintro ⟨z, hz, u, hu, h⟩
      refine ⟨z, hz, x₀⁻¹ * u * x₀, hUn.conj_mem' u hu x₀, ?_⟩
      calc g = g * x₀⁻¹ * x₀ := by group
        _ = _ := by rw [h]; group
    · rintro ⟨z, hz, u, hu, rfl⟩
      refine ⟨z, hz, x₀ * u * x₀⁻¹, hUn.conj_mem u hu x₀, by group⟩
  have hφD : ∀ z ∈ Z, ∀ u ∈ U, φ (z * x₀ * u) = φ x₀ := by
    intro z hz u hu
    rw [hφU _ u hu, hφZ z hz]
  obtain ⟨ψ, hψ⟩ : ∃ ψ : galUnramifiedOutside K.1 ℚ̄ S → ℤ, ψ = fun g => φ g - φ x₀ * χ g := ⟨_, rfl⟩
  let decZU (g : galUnramifiedOutside K.1 ℚ̄ S) : Decidable (∃ z ∈ Z, ∃ u ∈ U, g = z * u) :=
    Classical.propDecidable _
  let decZxU (g : galUnramifiedOutside K.1 ℚ̄ S) : Decidable (∃ z ∈ Z, ∃ u ∈ U, g = z * x₀ * u) :=
    Classical.propDecidable _
  have hχ1 : ∀ g, χ g = if ∃ z ∈ Z, ∃ u ∈ U, g = z * x₀ * u then 1 else 0 := by
    intro g
    simp only [hχ, zuInd, ← hZ, hmemD g]
  have hsplit : Pi.single v φ = Pi.single v ψ + (φ x₀) • fun v' x =>
      (Pi.single v (zuInd (ιs := ιs) v U) :
        {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ) v' (x * x₀⁻¹) := by
    funext v' x
    by_cases hv : v' = v
    · subst hv
      simp [hψ, hχ]
    · simp [Pi.single_eq_of_ne hv]
  rw [hsplit]
  refine Good.add ?_ ((hbase.translate x₀⁻¹).zsmul (φ x₀))

  refine ih _ ?_ ψ ?_ ?_ rfl
  · rw [← hn]
    apply Finset.card_lt_card
    refine ⟨fun q hq => ?_, fun hsub => ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hq ⊢
      obtain ⟨x, rfl, hx⟩ := hq
      refine ⟨x, rfl, fun hφx => hx ?_⟩
      have : χ x = 0 := by
        rw [hχ1]
        split_ifs with hD
        · obtain ⟨z, hz, u, hu, rfl⟩ := hD
          exact absurd (hφD z hz u hu ▸ hφx) hx₀
        · rfl
      simp [hψ, hφx, this]
    · have := hsub (Finset.mem_filter.2 ⟨Finset.mem_univ _, x₀, rfl, hx₀⟩)
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at this
      obtain ⟨x, hx, hψx⟩ := this
      obtain ⟨u, hu, rfl⟩ : ∃ u ∈ U, x = x₀ * u := by
        have h := QuotientGroup.eq.1 hx
        refine ⟨x₀⁻¹ * x, ?_, by group⟩
        have := U.inv_mem h
        rwa [mul_inv_rev, inv_inv] at this
      apply hψx
      have hD : ∃ z ∈ Z, ∃ u' ∈ U, x₀ * u = z * x₀ * u' := ⟨1, Z.one_mem, u, hu, by rw [one_mul]⟩
      simp only [hψ, hχ1, ite_eq_left hD, hφU x₀ u hu, mul_one, sub_self]
  · intro x u hu
    have hAB : (∃ z ∈ Z, ∃ u' ∈ U, x * u = z * x₀ * u') ↔ ∃ z ∈ Z, ∃ u' ∈ U, x = z * x₀ * u' := by
      constructor
      · rintro ⟨z, hz, u', hu', h⟩
        refine ⟨z, hz, u' * u⁻¹, U.mul_mem hu' (U.inv_mem hu), ?_⟩
        rw [← mul_assoc, ← h, mul_inv_cancel_right]
      · rintro ⟨z, hz, u', hu', rfl⟩
        exact ⟨z, hz, u' * u, U.mul_mem hu' hu, mul_assoc _ _ _⟩
    simp only [hψ, hφU x u hu, hχ1, hAB]
  · intro z hz x
    have hAB : (∃ z' ∈ Z, ∃ u' ∈ U, z * x = z' * x₀ * u') ↔ ∃ z' ∈ Z, ∃ u' ∈ U, x = z' * x₀ * u' := by
      constructor
      · rintro ⟨z', hz', u', hu', h⟩
        refine ⟨z⁻¹ * z', Z.mul_mem (Z.inv_mem hz) hz', u', hu', ?_⟩
        simp only [mul_assoc] at h ⊢
        rw [← h, inv_mul_cancel_left]
      · rintro ⟨z', hz', u', hu', rfl⟩
        exact ⟨z * z', Z.mul_mem hz hz', u', hu', by simp only [mul_assoc]⟩
    simp only [hψ, hφZ z hz, hχ1, hAB]

end PicInf

namespace PicInf

variable {K S ιs}

theorem exists_normal_level (φ : galUnramifiedOutside K.1 ℚ̄ S → ℤ) (hφ : IsLocallyConstant φ) :
    ∃ L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S), FiniteDimensional K.1 L ∧ Normal K.1 L ∧
      ∀ x, ∀ u ∈ L.fixingSubgroup, φ (x * u) = φ x := by
  have := (galUnramifiedOutside_isProfinite (F := K.1) (Ω := ℚ̄) S).1
  obtain ⟨V, hV, hVφ⟩ := exists_mem_nhds_one_forall_mul_eq hφ
  obtain ⟨E, hEf, hEn, hEV⟩ := (krullTopology_mem_nhds_one_iff_of_normal K.1 _ V).1 hV
  exact ⟨E, hEf, hEn, fun x u hu => hVφ x u (hEV hu)⟩


open Classical in
theorem eq_sum_single (f : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ)
    (T : Finset {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S}) (hT : ∀ v ∉ T, f v = 0) :
    f = ∑ v ∈ T, Pi.single v (f v) := by
  funext v
  rw [Finset.sum_apply, Finset.sum_pi_single]
  split_ifs with h
  · rfl
  · exact hT v h


open Classical in
theorem good_single {ℓ : ℕ}
    (hbase : ∀ (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S})
      (L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) [FiniteDimensional K.1 L] [Normal K.1 L],
      Good (ιs := ιs) ℓ (Pi.single v (zuInd (ιs := ιs) v L.fixingSubgroup)))
    (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S}) (φ : galUnramifiedOutside K.1 ℚ̄ S → ℤ)
    (hφ : IsLocallyConstant φ) (hZ : ∀ σ x, φ (gsDecomp K S ιs v σ * x) = φ x) :
    Good (ιs := ιs) ℓ (Pi.single v φ) := by
  obtain ⟨L, hLf, hLn, hL⟩ := exists_normal_level _ hφ
  have : IsGalois K.1 L := ⟨⟩
  have : IsGalois K.1 (maxUnramifiedOutside K.1 ℚ̄ S) := isGalois_maxUnramifiedOutside S
  exact good_single_of_base v L.fixingSubgroup (L.fixingSubgroup_isOpen) (hbase v L) φ hL
    (fun z hz x => by
      obtain ⟨σ, rfl⟩ := hz
      exact hZ σ x)

end PicInf

namespace PicInf

variable {K S ιs}

def levelWith (L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) [FiniteDimensional K.1 L]
    (α : ℚ̄) : FiniteSubfield :=
  ⟨(levelOf K α).1 ⊔ (levelOfField L).1, inferInstance⟩

instance fact_le_levelWith (L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S))
    [FiniteDimensional K.1 L] (α : ℚ̄) : Fact (K ≤ levelWith L α) :=
  ⟨le_trans (fact_le_levelOf α).out (le_sup_left (a := (levelOf K α).1))⟩

theorem levelWith_le (L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) [FiniteDimensional K.1 L]
    {α : ℚ̄} (hα : α ∈ maxUnramifiedOutside K.1 ℚ̄ S) :
    ∀ z ∈ (levelWith L α).1, z ∈ maxUnramifiedOutside K.1 ℚ̄ S := by
  have h1 : (levelOf K α).1 ≤ (maxUnramifiedOutside K.1 ℚ̄ S).restrictScalars ℚ := by
    refine sup_le (fun z hz => ?_) ?_
    · exact (maxUnramifiedOutside K.1 ℚ̄ S).algebraMap_mem ⟨z, hz⟩
    · rw [IntermediateField.adjoin_le_iff, Set.singleton_subset_iff]
      exact hα
  have h2 : (levelOfField L).1 ≤ (maxUnramifiedOutside K.1 ℚ̄ S).restrictScalars ℚ :=
    fun z hz => mem_maxUnramifiedOutside_of_mem_levelOfField L hz
  exact fun z hz => (sup_le h1 h2) hz

theorem ordEmbFun_root (L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) [FiniteDimensional K.1 L]
    {v : HeightOneSpectrum (𝓞 K.1)} (ι : ℚ̄ →ₐ[K.1] AlgebraicClosure (v.adicCompletion K.1)) (hv : v ∉ S)
    (M : ℕ) (π : (levelOfField L).1ˣ) (α : (maxUnramifiedOutside K.1 ℚ̄ S)ˣ)
    (hα : ((α : maxUnramifiedOutside K.1 ℚ̄ S) : ℚ̄) ^ M = ((π : (levelOfField L).1) : ℚ̄)) :
    (M : ℤ) * ordEmbFun ι (maxUnitsToUnits S α) =
      -WithZero.log ((placeOfEmbedding ι (levelOfField L)).1.valuation (levelOfField L).1
        (π : (levelOfField L).1)) := by
  set a : ℚ̄ := ((α : maxUnramifiedOutside K.1 ℚ̄ S) : ℚ̄) with ha
  have haS : a ∈ maxUnramifiedOutside K.1 ℚ̄ S := (α : maxUnramifiedOutside K.1 ℚ̄ S).2

  let πq : ℚ̄ˣ := Units.map ((levelOfField L).1.val.toRingHom.toMonoidHom) π
  have hπq : (πq : ℚ̄) = ((π : (levelOfField L).1) : ℚ̄) := rfl
  have hπL : (πq : ℚ̄) ∈ (levelOfField L).1 := (π : (levelOfField L).1).2
  have e1 := valuation_placeOfEmbedding_eq S ι hv (levelOfField L)
    (fun z hz => mem_maxUnramifiedOutside_of_mem_levelOfField L hz) πq hπL

  have hF := levelWith_le L haS
  have haF : ((maxUnitsToUnits S α : ℚ̄ˣ) : ℚ̄) ∈ (levelWith L a).1 :=
    (le_sup_left (a := (levelOf K a).1)) (mem_levelOf a)
  have hπF : (πq : ℚ̄) ∈ (levelWith L a).1 := (le_sup_right (a := (levelOf K a).1)) hπL
  have e2 := valuation_placeOfEmbedding_eq S ι hv (levelWith L a) hF (maxUnitsToUnits S α) haF
  have e3 := valuation_placeOfEmbedding_eq S ι hv (levelWith L a) hF πq hπF
  have hpow : (⟨(πq : ℚ̄), hπF⟩ : (levelWith L a).1) = ⟨((maxUnitsToUnits S α : ℚ̄ˣ) : ℚ̄), haF⟩ ^ M := by
    apply Subtype.ext
    simp only [SubmonoidClass.coe_pow]
    exact hα.symm
  rw [hpow, map_pow, e2, ← WithZero.exp_nsmul] at e3
  have e4 := congrArg WithZero.log e3
  rw [WithZero.log_exp, WithZero.log_exp] at e4
  have e5 : -WithZero.log ((placeOfEmbedding ι (levelOfField L)).1.valuation (levelOfField L).1
      (π : (levelOfField L).1)) = ordEmbFun ι πq := by
    have : (⟨(πq : ℚ̄), hπL⟩ : (levelOfField L).1) = (π : (levelOfField L).1) := rfl
    rw [← this, e1, WithZero.log_exp, neg_neg]
  rw [e5]
  simp only [smul_neg, nsmul_eq_mul] at e4
  linarith

end PicInf

namespace PicInf

variable {K S ιs}


open Classical GroundTheory.Global.SemiLocal in
theorem good_base (ℓ : ℕ) (hℓ : ℓ.Prime)
    (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)
    (v : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S})
    (L : IntermediateField K.1 (maxUnramifiedOutside K.1 ℚ̄ S)) [FiniteDimensional K.1 L] [Normal K.1 L] :
    Good (ιs := ιs) ℓ (Pi.single v (zuInd (ιs := ιs) v L.fixingSubgroup)) := by
  obtain ⟨a, N, hN, hh⟩ := Nat.exists_eq_pow_mul_and_not_dvd (classNumber_ne_zero (levelOfField L).1) ℓ
    hℓ.one_lt.ne'
  have hval : ∀ W : HeightOneSpectrum (𝓞 (levelOfField L).1),
      W.valuation (levelOfField L).1
        (Global.SUnit.placeUnit (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).1 : (levelOfField L).1) =
        if W = (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).1 then
          WithZero.exp (-(classNumber (levelOfField L).1 : ℤ)) else 1 := by
    intro W
    rw [← HeightOneSpectrum.valuationOfNeZero_eq, Global.SUnit.valuationOfNeZero_placeUnit]
    split_ifs <;> rfl
  have hMS : ∀ w ∉ S, ((ℓ ^ a : ℕ) : 𝓞 K.1) ∉ w.asIdeal := by
    intro w hw hmem
    rw [Nat.cast_pow] at hmem
    exact hw (hS w (w.isPrime.mem_of_pow_mem _ hmem))
  have hdvd : ∀ W : HeightOneSpectrum (𝓞 (levelOfField L).1),
      ((ℓ ^ a : ℕ) : ℤ) ∣ WithZero.log (W.valuation (levelOfField L).1
        (Global.SUnit.placeUnit (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).1 : (levelOfField L).1)) := by
    intro W
    rw [hval W]
    split_ifs
    · rw [WithZero.log_exp, hh]
      exact ⟨-(N : ℤ), by push_cast; ring⟩
    · rw [WithZero.log_one]
      exact dvd_zero _
  obtain ⟨α, hα⟩ := exists_pow_eq_of_dvd_log_valuation L (ℓ ^ a) (pow_ne_zero a hℓ.ne_zero) hMS
    (Global.SUnit.placeUnit (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).1) hdvd
  refine ⟨N, (Nat.coprime_comm.1 ((Nat.Prime.coprime_iff_not_dvd hℓ).2 hN)), α, fun v' x => ?_⟩

  let x' : ℚ̄ →ₐ[K.1] ℚ̄ := ((x : maxUnramifiedOutside K.1 ℚ̄ S ≃ₐ[K.1] maxUnramifiedOutside K.1 ℚ̄ S).liftNormal ℚ̄)
  have hx' : ∀ z : maxUnramifiedOutside K.1 ℚ̄ S, x' z = ((x z : maxUnramifiedOutside K.1 ℚ̄ S) : ℚ̄) :=
    fun z => AlgEquiv.liftNormal_commutes _ _ z
  have hord : ordEmb S (ιs.fin v'.1) v'.2 (Additive.ofMul (galUnitsHom K.1 _ x α)) =
      ordEmbFun ((ιs.fin v'.1).comp x') (maxUnitsToUnits S α) := by
    obtain ⟨F, hKF, hgal, hFS, hαF⟩ := exists_galois_level S (α : maxUnramifiedOutside K.1 ℚ̄ S).2
    have : Normal K.1 F.1 := hgal.to_normal
    let gF : F.1 ≃ₐ[K.1] F.1 := x'.restrictNormal' F.1
    have hgF (z : F.1) : ((gF z : F.1) : ℚ̄) = x' z := AlgHom.restrictNormal_commutes x' F.1 z
    have hw := placeOfEmbedding_eq_inv_smul (ιs.fin v'.1) gF ((ιs.fin v'.1).comp x') fun z => by
      rw [AlgHom.comp_apply, hgF]
    have hmem : ((maxUnitsToUnits S (galUnitsHom K.1 _ x α) : ℚ̄ˣ) : ℚ̄) ∈ F.1 := by
      change ((x (α : maxUnramifiedOutside K.1 ℚ̄ S) : maxUnramifiedOutside K.1 ℚ̄ S) : ℚ̄) ∈ F.1
      rw [← hx', ← hgF ⟨_, hαF⟩]
      exact (gF _).2
    have hsame : (⟨_, hmem⟩ : F.1) = gF ⟨(maxUnitsToUnits S α : ℚ̄ˣ), hαF⟩ :=
      Subtype.ext ((hgF ⟨_, hαF⟩).trans (hx' α)).symm
    have e1 := valuation_placeOfEmbedding_eq S (ιs.fin v'.1) v'.2 F hFS _ hmem
    have e2 := valuation_placeOfEmbedding_eq S ((ιs.fin v'.1).comp x') v'.2 F hFS
      (maxUnitsToUnits S α) hαF
    rw [hw, valuation_inv_smul_placesOver, ← hsame, e1] at e2
    rw [ordEmb_apply]
    exact neg_injective (WithZero.exp_injective e2)
  rw [hord]
  have hroot := ordEmbFun_root L ((ιs.fin v'.1).comp x') v'.2 (ℓ ^ a)
    (Global.SUnit.placeUnit (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).1) α hα
  rw [hval] at hroot
  have hiff : (placeOfEmbedding ((ιs.fin v'.1).comp x') (levelOfField L)).1 =
      (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).1 ↔
      v'.1 = v.1 ∧ ∃ z ∈ (gsDecomp K S ιs v).range, ∃ u ∈ L.fixingSubgroup, x = z * u := by
    constructor
    · intro h
      have hvv : v'.1 = v.1 := by
        have h₁ := (placeOfEmbedding ((ιs.fin v'.1).comp x') (levelOfField L)).2
        have h₂ := (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).2
        rw [h] at h₁
        exact HeightOneSpectrum.ext (h₁.over.trans h₂.over.symm)
      have hvv' : v' = v := Subtype.ext hvv
      subst v'
      refine ⟨rfl, ?_⟩
      let F := levelOfField L
      let ι := ιs.fin v.1
      let w := placeOfEmbedding ι F
      have hplace : w = placeOfEmbedding (ι.comp x') F := Subtype.ext h.symm
      have hc : ∃ c : w.1.adicCompletion F.1 →ₐ[v.1.adicCompletion K.1]
          AlgebraicClosure (v.1.adicCompletion K.1),
          ∀ z : F.1, c (algebraMap F.1 _ z) = (ι.comp x') z := by
        have key (w' : PlacesOver F.1 v.1) (hw' : w' = placeOfEmbedding (ι.comp x') F) :
            ∃ c : w'.1.adicCompletion F.1 →ₐ[v.1.adicCompletion K.1]
              AlgebraicClosure (v.1.adicCompletion K.1),
              ∀ z : F.1, c (algebraMap F.1 _ z) = (ι.comp x') z := by
          subst w'
          exact ⟨completionEmbedding (ι.comp x') F, completionEmbedding_algebraMap (ι.comp x') F⟩
        exact key w hplace
      obtain ⟨c₁, hc₁⟩ := hc
      have := finiteDimensional_adicCompletion_placesOver (K := K) (E := F) w
      let c₂ := completionEmbedding ι F
      let : Algebra (w.1.adicCompletion F.1) (AlgebraicClosure (v.1.adicCompletion K.1)) :=
        c₂.toRingHom.toAlgebra
      have : IsScalarTower (v.1.adicCompletion K.1) (w.1.adicCompletion F.1)
          (AlgebraicClosure (v.1.adicCompletion K.1)) :=
        IsScalarTower.of_algebraMap_eq fun z => (c₂.commutes z).symm
      have : Algebra.IsAlgebraic (w.1.adicCompletion F.1) (AlgebraicClosure (v.1.adicCompletion K.1)) :=
        Algebra.IsAlgebraic.tower_top (K := v.1.adicCompletion K.1) _
      obtain ⟨φ, hφ⟩ := IsAlgClosed.surjective_domRestrict_of_isAlgebraic
        (K := v.1.adicCompletion K.1) (L := w.1.adicCompletion F.1)
        (M := AlgebraicClosure (v.1.adicCompletion K.1))
        (E := AlgebraicClosure (v.1.adicCompletion K.1)) c₁
      let σ := AlgEquiv.ofBijective φ (Algebra.IsAlgebraic.algHom_bijective φ)
      have hσ (z : F.1) : (ι.comp x') z = σ (ι z) := by
        have e := DFunLike.congr_fun hφ (algebraMap F.1 (w.1.adicCompletion F.1) z)
        change φ (c₂ (algebraMap F.1 _ z)) = c₁ (algebraMap F.1 _ z) at e
        rw [← hc₁, ← e, completionEmbedding_algebraMap]
        rfl
      let z := gsDecomp K S ιs v σ
      refine ⟨z, ⟨σ, rfl⟩, z⁻¹ * x, ?_, (mul_inv_cancel_left z x).symm⟩
      rw [IntermediateField.mem_fixingSubgroup_iff]
      intro y hy
      have hxy : x y = z y := by
        have e := hσ ⟨(y : ℚ̄), (mem_levelOfField L).2 ⟨y, hy, rfl⟩⟩
        change ι (x' (y : ℚ̄)) = σ (ι (y : ℚ̄)) at e
        rw [hx'] at e
        apply Subtype.val_injective
        apply ι.injective
        exact e.trans (decompHom_apply (Kv := v.1.adicCompletion K.1)
          (ι.comp (maxUnramifiedOutside K.1 ℚ̄ S).val) σ y).symm
      rw [AlgEquiv.mul_apply, hxy, AlgEquiv.aut_inv, AlgEquiv.symm_apply_apply]
    · rintro ⟨hvv, z, ⟨σ, rfl⟩, u, hu, hxu⟩
      have hvv' : v' = v := Subtype.ext hvv
      subst v'
      apply congrArg Subtype.val
      rw [← placeOfEmbedding_comp_algEquiv (ιs.fin v.1) σ]
      refine (eq_placeOfEmbedding ((ιs.fin v.1).comp x') (levelOfField L)
        (completionEmbedding ((σ.restrictScalars K.1).toAlgHom.comp (ιs.fin v.1)) (levelOfField L))
        fun a => ?_).symm
      rw [completionEmbedding_algebraMap]
      obtain ⟨y, hy, hya⟩ := (mem_levelOfField L).1 a.2
      change σ ((ιs.fin v.1) (a : ℚ̄)) = (ιs.fin v.1) (x' (a : ℚ̄))
      rw [← hya, hx', hxu, AlgEquiv.mul_apply, (IntermediateField.mem_fixingSubgroup_iff _ _).1 hu y hy]
      exact (decompHom_apply (Kv := v.1.adicCompletion K.1)
        ((ιs.fin v.1).comp (maxUnramifiedOutside K.1 ℚ̄ S).val) σ y).symm
  have hM0 : ((ℓ ^ a : ℕ) : ℤ) ≠ 0 := by exact_mod_cast pow_ne_zero a hℓ.ne_zero
  by_cases hpl : (placeOfEmbedding ((ιs.fin v'.1).comp x') (levelOfField L)).1 =
      (placeOfEmbedding (ιs.fin v.1) (levelOfField L)).1
  · rw [ite_eq_left hpl, WithZero.log_exp, neg_neg, hh] at hroot
    obtain ⟨hvv, z, hz, u, hu, hxzu⟩ := hiff.1 hpl
    have hvv' : v' = v := Subtype.ext hvv
    subst hvv'
    rw [Pi.single_eq_same, zuInd, ite_eq_left ⟨z, hz, u, hu, hxzu⟩, mul_one]
    push_cast at hroot
    have hM0' : ((ℓ : ℤ)) ^ a ≠ 0 := pow_ne_zero _ (by exact_mod_cast hℓ.ne_zero)
    exact mul_left_cancel₀ hM0' hroot
  · rw [ite_eq_right hpl, WithZero.log_one, neg_zero] at hroot
    have h0 := (mul_eq_zero.1 hroot).resolve_left hM0
    rw [h0]
    by_cases hvv : v' = v
    · subst hvv
      rw [Pi.single_eq_same, zuInd, ite_eq_right, mul_zero]
      exact fun hx => hpl (hiff.2 ⟨rfl, hx⟩)
    · rw [Pi.single_eq_of_ne hvv, Pi.zero_apply, mul_zero]

end PicInf


open PicInf Classical in
theorem exists_coprime_smul_picInfRep (ℓ : ℕ) (hℓ : ℓ.Prime)
    (hS : ∀ v : HeightOneSpectrum (𝓞 K.1), ((ℓ : ℕ) : 𝓞 K.1) ∈ v.asIdeal → v ∈ S)
    (m : (picInfRep K S ιs).V) : ∃ N : ℕ, N.Coprime ℓ ∧ N • m = 0 := by
  obtain ⟨f, rfl⟩ := picQuot_surjective K S ιs m
  have hgood : Good (ιs := ιs) ℓ (f : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} →
      galUnramifiedOutside K.1 ℚ̄ S → ℤ) := by
    have hf := (mem_divFun _ _).1 f.2
    rw [eq_sum_single (f : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ)
      hf.1.toFinset (fun v hv => by simpa using hv)]
    refine good_sum _ _ fun v _ => ?_
    exact good_single (fun v L _ _ => good_base ℓ hℓ hS v L) v _ (hf.2 v).1 (hf.2 v).2
  obtain ⟨N, hN, y, hy⟩ := hgood
  refine ⟨N, hN, ?_⟩
  have hdiv : N • f = (unitsDiv K S ιs).hom (Additive.ofMul y) := by
    apply Subtype.ext
    funext v x
    have e := congrFun (congrFun (AddSubgroup.coe_nsmul _ f N) v) x
    refine e.trans ?_
    rw [coe_unitsDiv_hom_apply]
    change N • (f : {v : HeightOneSpectrum (𝓞 K.1) // v ∉ S} → galUnramifiedOutside K.1 ℚ̄ S → ℤ) v x = _
    rw [nsmul_eq_mul]
    exact (hy v x).symm
  rw [← map_nsmul, hdiv, ← sUnitsQuotSequence_g_comp_sUnitsQuotDiv]
  exact (Submodule.Quotient.mk_eq_zero _).2 ⟨(sUnitsQuotSequence K.1 ℚ̄ S).g.hom (Additive.ofMul y), rfl⟩

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.RestrictedRamification.BrauerDivisor =====

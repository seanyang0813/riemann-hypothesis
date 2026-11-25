module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.DomBy
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsExcisionNbhdAway
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieLatticeDominantCompat
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt
public import Mathlib.Basic.Complex.Basic
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.HodgeIPIffHodgeFormConj
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ArchBetween
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.TowerOrigin
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsLieModel
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GrGenOfIsFlagVBOn
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GlueApplyOfNotInFibre
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCompCompareFlag
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptAwayFromPrimes
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptFiniteExtension
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LatticeSpanProjectionBound
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.HasMultiplier
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ValuationCoordsComplexPoint
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper
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
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackCorrespondence
import Mathlib.Tactic.Linter.Style
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptInteriorFlag
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptInteriorGeneric
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeHermitianFormExists
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeInnerProductPullbackUnique
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.StalkSpecializesBijective
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentBaseChangeCompat, Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentLatticeMapCompat, Development.AutomorphicSpectrum.Proofs.GeometryProofs.SubringCoordsComplexValue, Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginCompareFirst

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentBaseChangeCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentBaseChangeCompat", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.DomBy\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsExcisionNbhdAway\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.OrVert

namespace GlobalTheory.CompanionTheory.Ar.OrArch

theorem isLocalRing_of_value {Ω : Type} [Field Ω] (W : Subring Ω) (φ : W →+* ℂ)
    (hW : ∀ a : W, φ a ≠ 0 → IsUnit a) : IsLocalRing W := by
  haveI : Nontrivial W := φ.domain_nontrivial
  refine IsLocalRing.of_nonunits_add fun a b ha hb hu => ?_
  have h0 : ∀ c : W, c ∈ nonunits W → φ c = 0 := fun c hc => by_contra fun h => hc (hW c h)
  have := hu.map φ
  rw [map_add (f := _), h0 a ha, h0 b hb, add_zero] at this
  exact not_isUnit_zero this

theorem exists_stalkHom {X : Scheme.{0}} {Ω₁ Ω : Type} [Field Ω₁] [Field Ω]
    (ξ : Spec (CommRingCat.of Ω₁) ⟶ X) (i : Ω₁ →+* Ω) (W : Subring Ω) (φ : W →+* ℂ)
    (z : Spec (CommRingCat.of ℂ) ⟶ X) (hz : genPt ξ ⤳ centre z)
    (hv : ∀ (a : Ω₁) (r : ℂ), ValAt ξ z a r → ∃ h : i a ∈ W, φ ⟨_, h⟩ = r) :
    ∃ σ : X.presheaf.stalk (centre z) →+* W, (∀ s, (σ s : Ω) = i (genMap ξ ⟨centre z, hz⟩ s)) ∧
      ∀ s, φ (σ s) = (Scheme.stalkClosedPointTo z).hom s := by
  have hm : ∀ s, ValAt ξ z (genMap ξ ⟨centre z, hz⟩ s) ((Scheme.stalkClosedPointTo z).hom s) :=
    fun s => ⟨hz, s, rfl, rfl⟩
  exact ⟨(i.comp (genMap ξ ⟨centre z, hz⟩)).codRestrict W fun s => (hv _ _ (hm s)).1,
    fun _ => rfl, fun s => (hv _ _ (hm s)).2⟩

theorem spec_stalkHom {X : Scheme.{0}} {Ω₁ Ω : Type} [Field Ω₁] [Field Ω]
    (ξ : Spec (CommRingCat.of Ω₁) ⟶ X) (i : Ω₁ →+* Ω) (q : Cpt ξ) (W : Subring Ω)
    (σ : X.presheaf.stalk q.1 →+* W) (hσ : ∀ s, (σ s : Ω) = i (genMap ξ q s)) :
    spMap W.subtype ≫ spMap σ ≫ X.fromSpecStalk q.1 = spMap i ≫ ξ := by
  have e : W.subtype.comp σ = i.comp (genMap ξ q) := RingHom.ext hσ
  have e2 : spMap W.subtype ≫ spMap σ = spMap i ≫ spMap (genMap ξ q) :=
    (LieTangent.spec_comp σ W.subtype).trans
      ((congrArg (fun g => Spec.map (CommRingCat.ofHom g)) e).trans (LieTangent.spec_comp _ _).symm)
  rw [← Category.assoc, e2, Category.assoc]
  exact congrArg (spMap i ≫ ·) (LieTangent.spec_genMap ξ q)

theorem exists_common_point : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S S₀ : Finset ℕ) (Ω Ω₀ : Type) [Field Ω] [Field Ω₀] (K K₀ : Type) [Fintype K] [Fintype K₀] (J : K → Type) (J₀ : K₀ → Type) (y : (Σ k, J k) → Ω) (y₀ : (Σ k, J₀ k) → Ω₀) (𝔐 : HodgeCpt Y S y) (𝔐₀ : HodgeCpt Y S₀ y₀) (i : Ω₀ →+* Ω) (W : Subring Ω) (φ : W →+* ℂ) (z₁ : Spec (CommRingCat.of ℂ) ⟶ 𝔐.X) (z₂ : Spec (CommRingCat.of ℂ) ⟶ 𝔐₀.X), 𝔐.ξ ≫ 𝔐.f = spMap i ≫ 𝔐₀.ξ ≫ 𝔐₀.f → (∀ a : W, φ a ≠ 0 → IsUnit a) → (∀ (a : Ω) (r : ℂ), ValAt 𝔐.ξ z₁ a r → ∃ h : a ∈ W, φ ⟨a, h⟩ = r) → (∀ (a : Ω₀) (r : ℂ), ValAt 𝔐₀.ξ z₂ a r → ∃ h : i a ∈ W, φ ⟨_, h⟩ = r) → ∃ (σ₁ : 𝔐.X.presheaf.stalk (centre z₁) →+* W) (σ₂ : 𝔐₀.X.presheaf.stalk (centre z₂) →+* W), (∀ s, (σ₁ s : Ω) = genMap 𝔐.ξ ⟨centre z₁, 𝔐.all _⟩ s) ∧ (∀ s, (σ₂ s : Ω) = i (genMap 𝔐₀.ξ ⟨centre z₂, 𝔐₀.all _⟩ s)) ∧ (∀ s, φ (σ₁ s) = (Scheme.stalkClosedPointTo z₁).hom s) ∧ (∀ s, φ (σ₂ s) = (Scheme.stalkClosedPointTo z₂).hom s) ∧ spMap σ₁ ≫ 𝔐.X.fromSpecStalk (centre z₁) ≫ 𝔐.f = spMap σ₂ ≫ 𝔐₀.X.fromSpecStalk (centre z₂) ≫ 𝔐₀.f := by
  intro E _ _ _ H D l Xo c Y S S₀ Ω Ω₀ _ _ K K₀ _ _ J J₀ y y₀ 𝔐 𝔐₀ i W φ z₁ z₂ hξ hW h₁ h₂
  haveI := isLocalRing_of_value W φ hW
  obtain ⟨σ₁, a₁, b₁⟩ := exists_stalkHom 𝔐.ξ (RingHom.id Ω) W φ z₁ (𝔐.all _) h₁
  obtain ⟨σ₂, a₂, b₂⟩ := exists_stalkHom 𝔐₀.ξ i W φ z₂ (𝔐₀.all _) h₂
  refine ⟨σ₁, σ₂, a₁, a₂, b₁, b₂, ?_⟩
  have e₁ := spec_stalkHom 𝔐.ξ (RingHom.id Ω) ⟨centre z₁, 𝔐.all _⟩ W σ₁ a₁
  have e₂ := spec_stalkHom 𝔐₀.ξ i ⟨centre z₂, 𝔐₀.all _⟩ W σ₂ a₂
  have hid : spMap (RingHom.id Ω) = 𝟙 _ := by simp [spMap]
  rw [hid, Category.id_comp] at e₁
  have f₁ := congrArg (· ≫ 𝔐.f) e₁
  have f₂ := congrArg (· ≫ 𝔐₀.f) e₂
  simp only [Category.assoc] at f₁ f₂
  have hgen : spMap W.subtype ≫ (spMap σ₁ ≫ 𝔐.X.fromSpecStalk (centre z₁) ≫ 𝔐.f) =
      spMap W.subtype ≫ (spMap σ₂ ≫ 𝔐₀.X.fromSpecStalk (centre z₂) ≫ 𝔐₀.f) := by
    simpa only [Category.assoc] using f₁.trans (hξ.trans f₂.symm)
  have hdom : IsDominant (spMap W.subtype) := ⟨(PrimeSpectrum.denseRange_comap_iff_ker_le_nilRadical W.subtype).2 (by
    rw [(RingHom.injective_iff_ker_eq_bot W.subtype).1 Subtype.val_injective]; exact bot_le)⟩
  have hbase : (spMap σ₁ ≫ 𝔐.X.fromSpecStalk (centre z₁) ≫ 𝔐.f) ≫ Y.s =
      (spMap σ₂ ≫ 𝔐₀.X.fromSpecStalk (centre z₂) ≫ 𝔐₀.f) ≫ Y.s := by
    have hsepZ : IsSeparated (specZIsTerminal.from (Sp (𝓞 c.F))) := inferInstance
    refine ext_of_isDominant_of_isSeparated (X := Sp W) (specZIsTerminal.from (Sp (𝓞 c.F)))
      (specZIsTerminal.hom_ext _ _) (spMap W.subtype) ?_
    simp only [← Category.assoc] at hgen ⊢
    rw [hgen]
  have hsep : IsSeparated Y.s := by
    obtain ⟨N, j, hj, he⟩ := Y.proj
    letI : IsClosedImmersion j := hj
    rw [← he]
    have : IsSeparated (PSpace.str (𝓞 c.F) N) := by
      unfold PSpace.str
      infer_instance
    infer_instance
  exact ext_of_isDominant_of_isSeparated (X := Sp W) Y.s hbase (spMap W.subtype) hgen

end GlobalTheory.CompanionTheory.Ar.OrArch
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentBaseChangeCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentLatticeMapCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentLatticeMapCompat", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsExcisionNbhdAway\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieLatticeDominantCompat\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackCorrespondence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar.SingVal

open LiePull LieTangent

section Abstract

open MonObj

variable {S : Scheme.{0}} {G : Over S} [GrpObj G] {Ω : Type} [Field Ω] {L V : Type} [AddCommGroup L] [Module Ω L]
  [AddCommGroup V] [Module ℂ V] {ξ : Sp Ω ⟶ S} {z : Sp ℂ ⟶ S}

def extSub (W : Subring Ω) {x : Sp W ⟶ S} (hx : spMap W.subtype ≫ x = ξ) (N : LieModel G ξ L) : Submodule W L where
  carrier := {e | ∃ v, Ext W.subtype x N e v}
  add_mem' := fun ⟨_, hv⟩ ⟨_, hv'⟩ => ⟨_, hv.mul hx hv'⟩
  zero_mem' := ⟨_, Ext.zero hx⟩
  smul_mem' c _ := fun ⟨_, hv⟩ => ⟨_, hv.smul c⟩

theorem exists_val (W : Subring Ω) (φ : W →+* ℂ) {x : Sp W ⟶ S} (hz : spMap φ ≫ x = z) (N : LieModel G ξ L)
    (Nz : LieModel G z V) :
    ∃ val : L → V, ∀ e v, Ext W.subtype x N e v → Nz.pt (val e) = epsBase φ hz ≫ v := by
  classical
  have key : ∀ e, ∃ w, ∀ v, Ext W.subtype x N e v → Nz.pt w = epsBase φ hz ≫ v := by
    intro e
    by_cases h : ∃ v, Ext W.subtype x N e v
    · obtain ⟨v, hv⟩ := h
      obtain ⟨w, hw⟩ := Nz.onto _ (isTanAt_base φ hz hv.1)
      exact ⟨w, fun v' hv' => by rw [hw, hv.unique Subtype.val_injective hv']⟩
    · exact ⟨0, fun v hv => (h ⟨v, hv⟩).elim⟩
  choose val hval using key
  exact ⟨val, hval⟩

theorem exists_lat_val (W : Subring Ω) (φ : W →+* ℂ) {x : Sp W ⟶ S} (hx : spMap W.subtype ≫ x = ξ)
    (hz : spMap φ ≫ x = z) (N : LieModel G ξ L) (Nz : LieModel G z V) :
    ∃ (Lm : Submodule W L) (val : L → V), val 0 = 0 ∧ (∀ e ∈ Lm, ∀ e' ∈ Lm, val (e + e') = val e + val e') ∧
      (∀ a : W, ∀ e ∈ Lm, val ((a : Ω) • e) = φ a • val e) ∧
      ∀ e v, Ext W.subtype x N e v → e ∈ Lm ∧ Nz.pt (val e) = epsBase φ hz ≫ v := by
  obtain ⟨val, hval⟩ := exists_val W φ hz N Nz
  refine ⟨extSub W hx N, val, ?_, ?_, ?_, fun e v h => ⟨⟨v, h⟩, hval e v h⟩⟩
  · apply Nz.inj
    rw [hval 0 1 (Ext.zero hx), LieModel.pt_zero, comp_one]
  · rintro e ⟨v, hv⟩ e' ⟨v', hv'⟩
    apply Nz.inj
    rw [hval _ _ (hv.mul hx hv'), Nz.add, hval _ _ hv, hval _ _ hv', comp_mul]
  · rintro a e ⟨v, hv⟩
    apply Nz.inj
    have h1 := hval _ _ (hv.smul a)
    refine h1.trans ?_
    rw [LieModel.pt_smul, hval _ _ hv]
    have e1 : epsBase φ hz ≫ epsScale x a = epsScale z (φ a) ≫ epsBase φ hz := base_scale φ hz a
    have e2 : LieEx.hom x (a • (LinearMap.id : W →ₗ[W] W)) = epsScale x a := rfl
    rw [e2, ← Category.assoc, e1, Category.assoc]

theorem spMap_dual_comp {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (a : A →+* B) (b : B →+* C)
    {T : Scheme.{0}} (t : Sp (DualNumber A) ⟶ T) :
    spMap (dualMap (b.comp a)) ≫ t = spMap (dualMap b) ≫ spMap (dualMap a) ≫ t := by
  rw [← dualMap_comp]
  exact (congrArg (· ≫ t) (spec_comp (dualMap a) (dualMap b)).symm).trans (Category.assoc _ _ _)

theorem assoc_three {P Q R T U : Scheme.{0}} (a : P ⟶ Q) (b : Q ⟶ R) (c : R ⟶ T) (d : T ⟶ U) :
    (a ≫ b ≫ c) ≫ d = a ≫ b ≫ c ≫ d := by
  simp only [Category.assoc]

theorem ext_of_tan {X' : Scheme.{0}} {G' : Over X'} [GrpObj G'] {f : X' ⟶ S} {ψ : G'.left ⟶ G.left}
    (hG : IsGrpPullback G' G f ψ) {A B : Type} [CommRing A] [CommRing B] {g : A →+* Ω} {y : Sp B ⟶ X'} (σ : B →+* A)
    {h : B →+* Ω} {x : Sp A ⟶ S} (hxy : x = (spMap σ ≫ y) ≫ f) (hσ : g.comp σ = h) {N : LieModel G ξ L} {e : L}
    {v : epsAt y ⟶ G'} (hv : IsTanAt G' y v)
    (he : (N.pt e).left = spMap (dualMap h) ≫ v.left ≫ ψ) :
    ∃ u : epsAt x ⟶ G, Ext g x N e u ∧ u.left = spMap (dualMap σ) ≫ v.left ≫ ψ := by
  subst hxy
  subst hσ
  refine ⟨LieMove.pushEps hG (epsBase σ rfl ≫ v), ⟨(LieMove.tan_iff hG _).1 (isTanAt_base σ rfl hv), ?_⟩,
    Category.assoc _ _ _⟩
  refine he.trans ?_
  have e1 : spMap (dualMap (g.comp σ)) = spMap (dualMap g) ≫ spMap (dualMap σ) := by
    rw [← dualMap_comp]
    exact (spec_comp _ _).symm
  rw [e1, Category.assoc]
  rfl

end Abstract

theorem value_map : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S S₀ : Finset ℕ) (Ω Ω₀ : Type) [Field Ω] [Field Ω₀] (K K₀ : Type) [Fintype K] [Fintype K₀] (J : K → Type) (J₀ : K₀ → Type) (y : (Σ k, J k) → Ω) (y₀ : (Σ k, J₀ k) → Ω₀) (𝔐 : HodgeCpt Y S y) (𝔐₀ : HodgeCpt Y S₀ y₀) (i : Ω₀ →+* Ω) (ι : 𝔐₀.Li →+ 𝔐.Li) (W : Subring Ω) (φ : W →+* ℂ) (z₁ : Spec (CommRingCat.of ℂ) ⟶ 𝔐.X) (z₂ : Spec (CommRingCat.of ℂ) ⟶ 𝔐₀.X) (σ₁ : 𝔐.X.presheaf.stalk (centre z₁) →+* W) (σ₂ : 𝔐₀.X.presheaf.stalk (centre z₂) →+* W), 𝔐.ξ ≫ 𝔐.f = spMap i ≫ 𝔐₀.ξ ≫ 𝔐₀.f → (∀ (e : 𝔐₀.Li) (e' : 𝔐.Li), (𝔐.M.pt e').left ≫ 𝔐.m.φ = spMap (dualMap i) ≫ (𝔐₀.M.pt e).left ≫ 𝔐₀.m.φ ↔ e' = ι e) → (∀ s, (σ₁ s : Ω) = genMap 𝔐.ξ ⟨centre z₁, 𝔐.all _⟩ s) → (∀ s, (σ₂ s : Ω) = i (genMap 𝔐₀.ξ ⟨centre z₂, 𝔐₀.all _⟩ s)) → (∀ s, φ (σ₁ s) = (Scheme.stalkClosedPointTo z₁).hom s) → (∀ s, φ (σ₂ s) = (Scheme.stalkClosedPointTo z₂).hom s) → spMap σ₁ ≫ 𝔐.X.fromSpecStalk (centre z₁) ≫ 𝔐.f = spMap σ₂ ≫ 𝔐₀.X.fromSpecStalk (centre z₂) ≫ 𝔐₀.f → ∀ (Vz : Type) [AddCommGroup Vz] [Module ℂ Vz] (MR : LieModel 𝔐.t.G z₁ Vz), ∃ (Lm : Submodule W 𝔐.Li) (val : 𝔐.Li → Vz), val 0 = 0 ∧ (∀ e ∈ Lm, ∀ e' ∈ Lm, val (e + e') = val e + val e') ∧ (∀ a : W, ∀ e ∈ Lm, val ((a : Ω) • e) = φ a • val e) ∧ (∀ (e : 𝔐.Li) (v : epsAt z₁ ⟶ 𝔐.t.G), 𝔐.M.ValAt z₁ e v → e ∈ Lm ∧ v = MR.pt (val e)) ∧ ∀ (e₀ : 𝔐₀.Li) (v₀ : epsAt z₂ ⟶ 𝔐₀.t.G), 𝔐₀.M.ValAt z₂ e₀ v₀ → ι e₀ ∈ Lm ∧ (MR.pt (val (ι e₀))).left ≫ 𝔐.m.φ = v₀.left ≫ 𝔐₀.m.φ := by
  intro E _ _ _ H D l Xo c Y S S₀ Ω Ω₀ _ _ K K₀ _ _ J J₀ y y₀ 𝔐 𝔐₀ i ι W φ z₁ z₂ σ₁ σ₂ hgen hι hσ₁ hσ₂ hφ₁ hφ₂ hxx
    Vz _ _ MR
  have hG := 𝔐.m.cart
  have hG₀ := 𝔐₀.m.cart
  have s₁ : W.subtype.comp σ₁ = genMap 𝔐.ξ ⟨centre z₁, 𝔐.all _⟩ := RingHom.ext hσ₁
  have s₂ : W.subtype.comp σ₂ = i.comp (genMap 𝔐₀.ξ ⟨centre z₂, 𝔐₀.all _⟩) := RingHom.ext hσ₂
  have t₁ : φ.comp σ₁ = (Scheme.stalkClosedPointTo z₁).hom := RingHom.ext hφ₁
  have t₂ : φ.comp σ₂ = (Scheme.stalkClosedPointTo z₂).hom := RingHom.ext hφ₂
  obtain ⟨x, hx₁⟩ : ∃ x : Sp W ⟶ Y.X, x = (spMap σ₁ ≫ 𝔐.X.fromSpecStalk (centre z₁)) ≫ 𝔐.f := ⟨_, rfl⟩
  have hx₂ : x = (spMap σ₂ ≫ 𝔐₀.X.fromSpecStalk (centre z₂)) ≫ 𝔐₀.f := by
    rw [hx₁, Category.assoc, Category.assoc, hxx]
  have hx : spMap W.subtype ≫ x = 𝔐.ξ ≫ 𝔐.f := by
    rw [hx₁, ← Category.assoc, ← Category.assoc, spec_comp, s₁]
    exact congrArg (· ≫ 𝔐.f) (spec_genMap 𝔐.ξ ⟨centre z₁, 𝔐.all _⟩)
  have hz : spMap φ ≫ x = z₁ ≫ 𝔐.f := by
    rw [hx₁, ← Category.assoc, ← Category.assoc, spec_comp, t₁]
    exact congrArg (· ≫ 𝔐.f) (spec_centre z₁)
  obtain ⟨Lm, val, h0, hadd, hsm, hext⟩ := exists_lat_val W φ hx hz (LieMove.pushModel hG 𝔐.M)
    (LieMove.pushModel hG MR)
  refine ⟨Lm, val, h0, hadd, hsm, ?_, ?_⟩
  · intro e v hv
    obtain ⟨h, v', hv', hl⟩ := hv
    obtain ⟨u, hu, hul⟩ := ext_of_tan (N := LieMove.pushModel hG 𝔐.M) (e := e) hG σ₁ hx₁ s₁ hv'.1
      (by
        show (𝔐.M.pt e).left ≫ _ = _
        rw [hv'.2]
        exact Category.assoc _ _ _)
    obtain ⟨hm, hpt⟩ := hext e u hu
    refine ⟨hm, LieMove.pushEps_inj hG (Eq.trans ?_ hpt.symm)⟩
    have e3 : v.left = spMap (dualMap φ) ≫ spMap (dualMap σ₁) ≫ v'.left := by
      rw [hl, ← t₁]
      exact spMap_dual_comp _ _ _
    apply Over.OverMorphism.ext
    show v.left ≫ _ = spMap (dualMap φ) ≫ u.left
    rw [hul, e3]
    exact assoc_three _ _ _ _
  · intro e₀ v₀ hv
    obtain ⟨h, v', hv', hl⟩ := hv
    have hι' := (hι e₀ (ι e₀)).2 rfl
    obtain ⟨u, hu, hul⟩ := ext_of_tan (N := LieMove.pushModel hG 𝔐.M) (e := ι e₀) hG₀ σ₂ hx₂ s₂ hv'.1
      (by
        show (𝔐.M.pt (ι e₀)).left ≫ _ = _
        rw [hι', hv'.2, spMap_dual_comp]
        exact congrArg (_ ≫ ·) (Category.assoc _ _ _))
    obtain ⟨hm, hpt⟩ := hext _ u hu
    refine ⟨hm, ?_⟩
    have e3 : v₀.left = spMap (dualMap φ) ≫ spMap (dualMap σ₂) ≫ v'.left := by
      rw [hl, ← t₂]
      exact spMap_dual_comp _ _ _
    refine (congrArg (fun q => q.left) hpt).trans ?_
    show spMap (dualMap φ) ≫ u.left = _
    rw [hul, e3]
    exact (assoc_three _ _ _ _).symm

end GlobalTheory.CompanionTheory.Ar.SingVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentLatticeMapCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.SubringCoordsComplexValue =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.SubringCoordsComplexValue", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt\npublic import Mathlib.Basic.Complex.Basic\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.HodgeIPIffHodgeFormConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.RegVal

open AlgebraicGeometry CategoryTheory GlobalTheory.CompanionTheory.Ar

variable {X : Scheme.{0}} {Ω Ω' : Type} [Field Ω] [Field Ω']

theorem germ_frac {U : X.Opens} (hU : IsAffineOpen U) {p : X} (hp : p ∈ U) (s : X.presheaf.stalk p) :
    ∃ (n d : Γ(X, U)) (m : ℕ), IsUnit (X.presheaf.germ U p hp d) ∧
      s * X.presheaf.germ U p hp d ^ m = X.presheaf.germ U p hp n := by
  obtain ⟨V, hpV, t, rfl⟩ := X.presheaf.exists_germ_eq s
  obtain ⟨d, hdV, hpd⟩ := hU.exists_basicOpen_le (V := V) ⟨p, hpV⟩ hp
  have := hU.isLocalization_basicOpen d
  obtain ⟨m, n, e⟩ := IsLocalization.Away.surj (S := Γ(X, X.basicOpen d)) d
    (X.presheaf.map (homOfLE hdV).op t)
  refine ⟨n, d, m, (X.mem_basicOpen d p hp).1 hpd, ?_⟩
  have e' := congrArg (X.presheaf.germ (X.basicOpen d) p hpd) e
  rw [map_mul, map_pow] at e'
  have h0 : ∀ f : Γ(X, U), X.presheaf.germ (X.basicOpen d) p hpd (algebraMap Γ(X, U) Γ(X, X.basicOpen d) f) =
      X.presheaf.germ U p hp f := fun f =>
    X.presheaf.germ_res_apply (homOfLE (X.basicOpen_le d)) p hpd f
  rw [h0, h0, TopCat.Presheaf.germ_res_apply] at e'
  exact e'

theorem genMap_germ (ξ : Spec (CommRingCat.of Ω) ⟶ X) {U : X.Opens} {q : X} (hq : q ∈ U) (h : genPt ξ ⤳ q)
    (f : Γ(X, U)) :
    genMap ξ ⟨q, h⟩ (X.presheaf.germ U q hq f) =
      (Scheme.stalkClosedPointTo ξ).hom (X.presheaf.germ U (genPt ξ) (h.mem_open U.isOpen hq) f) := by
  have e := congr($(X.presheaf.germ_stalkSpecializes hq h) f)
  simp only [CommRingCat.comp_apply] at e
  simp only [genMap]
  exact congrArg (Scheme.stalkClosedPointTo ξ).hom e

theorem add_val {ξ : Spec (CommRingCat.of Ω) ⟶ X} {z : Spec (CommRingCat.of ℂ) ⟶ X} {a b : Ω} {r s : ℂ}
    (h : ValAt ξ z a r) (h' : ValAt ξ z b s) : ValAt ξ z (a + b) (r + s) := by
  obtain ⟨h, x, rfl, rfl⟩ := h
  obtain ⟨_, y, rfl, rfl⟩ := h'
  exact ⟨h, x + y, map_add _ _ _, map_add _ _ _⟩

def QV (i : Ω →+* Ω') (W : Subring Ω') (φ : W →+* ℂ) (ξ : Spec (CommRingCat.of Ω) ⟶ X)
    (z : Spec (CommRingCat.of ℂ) ⟶ X) (n : Ω) : Prop :=
  ∃ h : i n ∈ W, ValAt ξ z n (φ ⟨i n, h⟩)

variable {i : Ω →+* Ω'} {W : Subring Ω'} {φ : W →+* ℂ} {ξ : Spec (CommRingCat.of Ω) ⟶ X}
  {z : Spec (CommRingCat.of ℂ) ⟶ X}

theorem QV.add {a b : Ω} (ha : QV i W φ ξ z a) (hb : QV i W φ ξ z b) : QV i W φ ξ z (a + b) := by
  obtain ⟨h1, v1⟩ := ha
  obtain ⟨h2, v2⟩ := hb
  have hm : i (a + b) ∈ W := by rw [map_add (f := _)]; exact W.add_mem h1 h2
  refine ⟨hm, ?_⟩
  have e : (⟨i (a + b), hm⟩ : W) = ⟨_, h1⟩ + ⟨_, h2⟩ := Subtype.ext (by simp)
  rw [e, map_add (f := _)]
  exact add_val v1 v2

theorem QV.mul {a b : Ω} (ha : QV i W φ ξ z a) (hb : QV i W φ ξ z b) : QV i W φ ξ z (a * b) := by
  obtain ⟨h1, v1⟩ := ha
  obtain ⟨h2, v2⟩ := hb
  have hm : i (a * b) ∈ W := by rw [map_mul]; exact W.mul_mem h1 h2
  refine ⟨hm, ?_⟩
  have e : (⟨i (a * b), hm⟩ : W) = ⟨_, h1⟩ * ⟨_, h2⟩ := Subtype.ext (by simp)
  rw [e, map_mul]
  exact CxVal.mul v1 v2

theorem QV.int (hz : genPt ξ ⤳ centre z) (n : ℤ) : QV i W φ ξ z (n : Ω) := by
  have hm : i (n : Ω) ∈ W := by rw [map_intCast]; exact intCast_mem W n
  refine ⟨hm, ?_⟩
  have e : (⟨i (n : Ω), hm⟩ : W) = (n : W) := Subtype.ext (by simp)
  rw [e, map_intCast]
  exact ⟨hz, n, by simp, (map_intCast (Scheme.stalkClosedPointTo z).hom n).trans (by simp)⟩

theorem QV.prod {ι : Type} (hz : genPt ξ ⤳ centre z) (s : Finset ι) (f : ι → Ω)
    (h : ∀ k ∈ s, QV i W φ ξ z (f k)) : QV i W φ ξ z (∏ k ∈ s, f k) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using QV.int (i := i) (W := W) (φ := φ) hz 1
  | insert k s hk ih =>
    rw [Finset.prod_insert hk]
    exact (h k (Finset.mem_insert_self k s)).mul (ih fun l hl => h l (Finset.mem_insert_of_mem hl))

theorem QV.adjoin (hz : genPt ξ ⤳ centre z) {S : Set Ω} (hS : ∀ n ∈ S, QV i W φ ξ z n) {a : Ω}
    (ha : a ∈ Algebra.adjoin ℤ S) : QV i W φ ξ z a := by
  induction ha using Algebra.adjoin_induction with
  | mem x hx => exact hS x hx
  | algebraMap n => simpa using QV.int (i := i) (W := W) (φ := φ) hz n
  | add x y _ _ hx hy => exact hx.add hy
  | mul x y _ _ hx hy => exact hx.mul hy

theorem val_frac {S T : Type} [CommRing S] [CommRing T] (f : S →+* T) {s g n : S} {m : ℕ} (e : s * g ^ m = n) :
    f s * f g ^ m = f n := by
  rw [← e, map_mul, map_pow]

theorem frac_mem (hU : ∀ a : W, φ a ≠ 0 → IsUnit a) {a nn dd : Ω} {m : ℕ} {r vn vd : ℂ}
    (hn : i nn ∈ W) (hd : i dd ∈ W) (vn' : φ ⟨_, hn⟩ = vn) (vd' : φ ⟨_, hd⟩ = vd) (hvd : vd ≠ 0)
    (e : a * dd ^ m = nn) (e' : r * vd ^ m = vn) : ∃ h : i a ∈ W, φ ⟨_, h⟩ = r := by
  obtain ⟨u, hu⟩ := hU ⟨_, hd⟩ (by rw [vd']; exact hvd)
  have h1 : ((u : W) : Ω') = i dd := by rw [hu]
  have h2 : (((u⁻¹ : Wˣ) : W) : Ω') * i dd = 1 := by
    rw [← h1]
    exact congrArg Subtype.val u.inv_mul
  have hia : i a = i nn * (((u⁻¹ : Wˣ) : W) : Ω') ^ m := by
    rw [← e, map_mul, map_pow, mul_assoc, ← mul_pow, mul_comm (i dd), h2, one_pow, mul_one]
  have hm : i a ∈ W := by
    rw [hia]
    exact W.mul_mem hn (W.pow_mem (SetLike.coe_mem _) m)
  refine ⟨hm, ?_⟩
  have e2 : (⟨i a, hm⟩ : W) = ⟨_, hn⟩ * ((u⁻¹ : Wˣ) : W) ^ m := Subtype.ext (by simpa using hia)
  have h3 : φ ((u⁻¹ : Wˣ) : W) * vd = 1 := by
    rw [← vd', ← hu, ← map_mul, u.inv_mul, map_one]
  rw [e2, map_mul, map_pow, vn', ← e', mul_assoc, ← mul_pow, mul_comm vd, h3, one_pow, mul_one]

theorem contains_localRing : ∀ (X : Scheme.{0}) (Ω Ω' : Type) [Field Ω] [Field Ω'] (i : Ω →+* Ω')
    (ξ : Spec (CommRingCat.of Ω) ⟶ X) (K : Type) [Fintype K] (J : K → Type) (y : (Σ k, J k) → Ω)
    (z : Spec (CommRingCat.of ℂ) ⟶ X) (w : (Σ k, J k) → ℂ) (W : Subring Ω') (φ : W →+* ℂ),
    CoordTie ℤ ξ (fun c' : (k : K) → J k => ∏ k, y ⟨k, c' k⟩) → CoordsAt ξ y z w →
    (∀ a : W, φ a ≠ 0 → IsUnit a) →
    (∀ (k : K) (c e : J k), w ⟨k, c⟩ ≠ 0 →
      ∃ h : i (y ⟨k, e⟩ / y ⟨k, c⟩) ∈ W, φ ⟨_, h⟩ * w ⟨k, c⟩ = w ⟨k, e⟩) →
    ∀ (a : Ω) (r : ℂ), ValAt ξ z a r → ∃ h : i a ∈ W, φ ⟨_, h⟩ = r := by
  intro X Ω Ω' _ _ i ξ K _ J y z w W φ tie hw hU hyp a r har
  obtain ⟨hz, s, hsa, hsr⟩ := har
  choose c hc using hw.1
  have hc0 : ∀ k, w ⟨k, c k⟩ ≠ 0 := fun k => (hc k).ne_zero
  have hy : ∀ k, y ⟨k, c k⟩ ≠ 0 := fun k => (hw.2 k (c k) (hc k)).1
  have hxc : (∏ k, y ⟨k, c k⟩) ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => hy k
  have ratio : ∀ (k : K) (e : J k), QV i W φ ξ z (y ⟨k, e⟩ / y ⟨k, c k⟩) := fun k e => by
    obtain ⟨h, v⟩ := hyp k (c k) e (hc0 k)
    obtain ⟨t, ht, ht'⟩ := (hw.2 k (c k) (hc k)).2 e
    refine ⟨h, ?_⟩
    rwa [mul_right_cancel₀ (hc0 k) (v.trans ht')]
  have gen : ∀ c' : (k : K) → J k, QV i W φ ξ z ((∏ k, y ⟨k, c' k⟩) / ∏ k, y ⟨k, c k⟩) := fun c' => by
    rw [← Finset.prod_div_distrib]
    exact QV.prod hz _ _ fun k _ => ratio k (c' k)
  have hin : InChart ξ (fun c' : (k : K) → J k => ∏ k, y ⟨k, c' k⟩) c ⟨centre z, hz⟩ := by
    refine ⟨hxc, fun c' => ?_⟩
    obtain ⟨_, _, s', hs', _⟩ := gen c'
    exact ⟨s', hs'⟩
  obtain ⟨U, hUa, hUm⟩ := tie.affine c hxc
  have hpU : centre z ∈ U := (hUm _).2 ⟨hz, hin⟩
  obtain ⟨n, d, m, hd, e⟩ := germ_frac hUa hpU s
  have hgU : genPt ξ ∈ U := hz.mem_open U.isOpen hpU
  have hQ : ∀ f : Γ(X, U), QV i W φ ξ z
      ((Scheme.stalkClosedPointTo ξ).hom (X.presheaf.germ U (genPt ξ) hgU f)) := fun f => by
    refine QV.adjoin hz (S := Set.range fun j : (k : K) → J k =>
      (∏ k, y ⟨k, j k⟩) / ∏ k, y ⟨k, c k⟩) ?_ ((tie.ring c hxc _).2 fun q hq => ?_)
    · rintro _ ⟨j, rfl⟩
      exact gen j
    · have hqU : q.1 ∈ U := (hUm _).2 ⟨q.2, hq⟩
      exact ⟨X.presheaf.germ U q.1 hqU f, genMap_germ ξ hqU q.2 f⟩
  have hval : ∀ f : Γ(X, U), ∃ h : i ((Scheme.stalkClosedPointTo ξ).hom (X.presheaf.germ U (genPt ξ) hgU f)) ∈ W,
      φ ⟨_, h⟩ = (Scheme.stalkClosedPointTo z).hom (X.presheaf.germ U (centre z) hpU f) := fun f => by
    obtain ⟨h, v⟩ := hQ f
    exact ⟨h, CxVal.unique v ⟨hz, _, genMap_germ ξ hpU hz f, rfl⟩⟩
  obtain ⟨hn, vn⟩ := hval n
  obtain ⟨hd', vd⟩ := hval d
  refine frac_mem (m := m) hU hn hd' vn vd (hd.map (Scheme.stalkClosedPointTo z).hom).ne_zero ?_ ?_
  · have e1 := congrArg (genMap ξ ⟨centre z, hz⟩) e
    rw [map_mul, map_pow, hsa, genMap_germ ξ hpU hz, genMap_germ ξ hpU hz] at e1
    exact e1
  · rw [← hsr]
    exact val_frac (Scheme.stalkClosedPointTo z).hom e

end GlobalTheory.CompanionTheory.Ar.RegVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.SubringCoordsComplexValue =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginCompareFirst =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginCompareFirst", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ArchBetween\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.TowerOrigin\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsLieModel\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GrGenOfIsFlagVBOn\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GlueApplyOfNotInFibre\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCompCompareFlag\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentBaseChangeCompat\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeComponentLatticeMapCompat\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptAwayFromPrimes\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptFiniteExtension\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LatticeSpanProjectionBound\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CoordsAt\npublic import Mathlib.Basic.Complex.Basic\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.SubringCoordsComplexValue\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.HasMultiplier\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ValuationCoordsComplexPoint\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptInteriorFlag\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeCptInteriorGeneric\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.HodgeIPIffHodgeFormConj\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeHermitianFormExists\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeInnerProductPullbackUnique\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsExcisionNbhdAway\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.StalkSpecializesBijective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section
namespace GlobalTheory.CompanionTheory.Ar.SingCmp

theorem val_ext : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S S₀ : Finset ℕ) (Ω Ω₀ : Type) [Field Ω] [Field Ω₀] (K K₀ : Type) [Fintype K] [Fintype K₀] (J : K → Type) (J₀ : K₀ → Type) (y : (Σ k, J k) → Ω) (y₀ : (Σ k, J₀ k) → Ω₀) (𝔐 : HodgeCpt Y S y) (𝔐₀ : HodgeCpt Y S₀ y₀) (i : Ω₀ →+* Ω) (ι : 𝔐₀.Li →+ 𝔐.Li) (W : Subring Ω) (φ : W →+* ℂ) (z₁ : Spec (CommRingCat.of ℂ) ⟶ 𝔐.X) (z₂ : Spec (CommRingCat.of ℂ) ⟶ 𝔐₀.X), 𝔐.ξ ≫ 𝔐.f = spMap i ≫ 𝔐₀.ξ ≫ 𝔐₀.f → (∀ (e : 𝔐₀.Li) (e' : 𝔐.Li), (𝔐.M.pt e').left ≫ 𝔐.m.φ = spMap (dualMap i) ≫ (𝔐₀.M.pt e).left ≫ 𝔐₀.m.φ ↔ e' = ι e) → (∀ a : W, φ a ≠ 0 → IsUnit a) → (∀ (a : Ω) (r : ℂ), ValAt 𝔐.ξ z₁ a r → ∃ h : a ∈ W, φ ⟨a, h⟩ = r) → (∀ (a : Ω₀) (r : ℂ), ValAt 𝔐₀.ξ z₂ a r → ∃ h : i a ∈ W, φ ⟨_, h⟩ = r) → z₁ ≫ 𝔐.f = z₂ ≫ 𝔐₀.f ∧ ∀ (Vz : Type) [AddCommGroup Vz] [Module ℂ Vz] (MR : LieModel 𝔐.t.G z₁ Vz), ∃ (Lm : Submodule W 𝔐.Li) (val : 𝔐.Li → Vz), val 0 = 0 ∧ (∀ e ∈ Lm, ∀ e' ∈ Lm, val (e + e') = val e + val e') ∧ (∀ a : W, ∀ e ∈ Lm, val ((a : Ω) • e) = φ a • val e) ∧ (∀ (e : 𝔐.Li) (v : epsAt z₁ ⟶ 𝔐.t.G), 𝔐.M.ValAt z₁ e v → e ∈ Lm ∧ v = MR.pt (val e)) ∧ ∀ (e₀ : 𝔐₀.Li) (v₀ : epsAt z₂ ⟶ 𝔐₀.t.G), 𝔐₀.M.ValAt z₂ e₀ v₀ → ι e₀ ∈ Lm ∧ (MR.pt (val (ι e₀))).left ≫ 𝔐.m.φ = v₀.left ≫ 𝔐₀.m.φ := by
  intro E _ _ _ H D l Xo c Y S S₀ Ω Ω₀ _ _ K K₀ _ _ J J₀ y y₀ 𝔐 𝔐₀ i ι W φ z₁ z₂ hξ hpt hW h₁ h₂
  obtain ⟨σ₁, σ₂, g₁, g₂, v₁, v₂, hx⟩ := _root_.GlobalTheory.CompanionTheory.Ar.OrArch.exists_common_point E H D l Xo c Y S S₀ Ω Ω₀ K K₀ J J₀ y y₀ 𝔐 𝔐₀ i W φ z₁ z₂ hξ hW h₁ h₂
  refine ⟨?_, _root_.GlobalTheory.CompanionTheory.Ar.SingVal.value_map E H D l Xo c Y S S₀ Ω Ω₀ K K₀ J J₀ y y₀ 𝔐 𝔐₀ i ι W φ z₁ z₂ σ₁ σ₂ hξ hpt g₁ g₂ v₁ v₂ hx⟩
  have e₁ : spMap φ ≫ spMap σ₁ ≫ 𝔐.X.fromSpecStalk (centre z₁) = z₁ := by
    have : φ.comp σ₁ = (Scheme.stalkClosedPointTo z₁).hom := RingHom.ext v₁
    rw [← Category.assoc, ← FlagPull.spMap_comp, this]
    exact LieTangent.spec_centre z₁
  have e₂ : spMap φ ≫ spMap σ₂ ≫ 𝔐₀.X.fromSpecStalk (centre z₂) = z₂ := by
    have : φ.comp σ₂ = (Scheme.stalkClosedPointTo z₂).hom := RingHom.ext v₂
    rw [← Category.assoc, ← FlagPull.spMap_comp, this]
    exact LieTangent.spec_centre z₂
  have f₁ : z₁ ≫ 𝔐.f = spMap φ ≫ spMap σ₁ ≫ 𝔐.X.fromSpecStalk (centre z₁) ≫ 𝔐.f :=
    (congrArg (· ≫ 𝔐.f) e₁).symm.trans (by simp only [Category.assoc])
  have f₂ : z₂ ≫ 𝔐₀.f = spMap φ ≫ spMap σ₂ ≫ 𝔐₀.X.fromSpecStalk (centre z₂) ≫ 𝔐₀.f :=
    (congrArg (· ≫ 𝔐₀.f) e₂).symm.trans (by simp only [Category.assoc])
  rw [f₁, f₂, hx]
end GlobalTheory.CompanionTheory.Ar.SingCmp

noncomputable section
namespace GlobalTheory.CompanionTheory.Ar.SingCmp
open scoped ComplexOrder Matrix
open Limits MonoidalCategory CartesianMonoidalCategory MonObj
open GlobalTheory.CompanionTheory.Ar.HodgeCpt (rootIdx rootSgn)

section Move

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem hodgeInnerProduct_congr {X : Scheme.{0}} {G : Over X} [GrpObj G] {L : LB G.left} {z z' : Spec (CommRingCat.of ℂ) ⟶ X}
    (h : z = z') {v w : epsAt z ⟶ G} {v' w' : epsAt z' ⟶ G} (hv : v.left = v'.left) (hw : w.left = w'.left) (c : ℂ) :
    HodgeIP G L z v w c ↔ HodgeIP G L z' v' w' c := by
  subst h
  obtain rfl : v = v' := Over.OverMorphism.ext hv
  obtain rfl : w = w' := Over.OverMorphism.ext hw
  rfl

theorem hodge_move {S₁ S₂ S : Scheme.{0}} {t₁ : SAB H S₁} {t₂ : SAB H S₂} {t : SAB H S} {f₁ : S₁ ⟶ S} {f₂ : S₂ ⟶ S}
    (m₁ : SABMap t₁ t f₁) (m₂ : SABMap t₂ t f₂) {z₁ : Spec (CommRingCat.of ℂ) ⟶ S₁} {z₂ : Spec (CommRingCat.of ℂ) ⟶ S₂}
    (hz : z₁ ≫ f₁ = z₂ ≫ f₂) {v₁ w₁ : epsAt z₁ ⟶ t₁.G} {v₂ w₂ : epsAt z₂ ⟶ t₂.G}
    (hv : v₁.left ≫ m₁.φ = v₂.left ≫ m₂.φ) (hw : w₁.left ≫ m₁.φ = w₂.left ≫ m₂.φ) (c : ℂ) :
    HodgeIP t₁.G t₁.PP.L z₁ v₁ w₁ c ↔ HodgeIP t₂.G t₂.PP.L z₂ v₂ w₂ c := by
  have a₁ := (_root_.GlobalTheory.CompanionTheory.Ar.HodgeUnique.main E H S₁ S t₁ t f₁ m₁ z₁ v₁ w₁ (HodgePull.push m₁ v₁) (HodgePull.push m₁ w₁) rfl rfl).1 c
  have a₂ := (_root_.GlobalTheory.CompanionTheory.Ar.HodgeUnique.main E H S₂ S t₂ t f₂ m₂ z₂ v₂ w₂ (HodgePull.push m₂ v₂) (HodgePull.push m₂ w₂) rfl rfl).1 c
  exact a₁.trans ((hodgeInnerProduct_congr hz hv hw c).trans a₂.symm)

end Move

theorem flagStep_top {Ω Li : Type} [Field Ω] [AddCommGroup Li] [Module Ω Li] {r : ℕ} (c : Fin r → Li) :
    flagStep Ω c r = Submodule.span Ω (Set.range c) := by
  unfold flagStep
  congr 1
  ext x
  simp

section Norm

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {Y : Model Xo c (algebraMap (𝓞 c.F) c.F)} {S S₀ : Finset ℕ}
  {Ω Ω₀ : Type} [Field Ω] [Field Ω₀] {K K₀ : Type} [Fintype K] [Fintype K₀] {J : K → Type} {J₀ : K₀ → Type}
  [∀ k, Fintype (J k)] [∀ k, Fintype (J₀ k)] {y : (Σ k, J k) → Ω} {y₀ : (Σ k, J₀ k) → Ω₀}

theorem norm_cmp (𝔐 : HodgeCpt Y S y) (𝔐₀ : HodgeCpt Y S₀ y₀) (Fl : 𝔐.Flag) (Fl₀ : 𝔐₀.Flag) (i : Ω₀ →+* Ω)
    (hξ : 𝔐.ξ ≫ 𝔐.f = spMap i ≫ 𝔐₀.ξ ≫ 𝔐₀.f)
    (hFl : ∀ s k, (𝔐.M.pt (Fl.b s k)).left ≫ 𝔐.m.φ = spMap (dualMap i) ≫ (𝔐₀.M.pt (Fl₀.b s k)).left ≫ 𝔐₀.m.φ)
    (W : Subring Ω) (φ : W →+* ℂ) (hW : ∀ a : W, φ a ≠ 0 → IsUnit a) (z₁ : Spec (CommRingCat.of ℂ) ⟶ 𝔐.X)
    (z₂ : Spec (CommRingCat.of ℂ) ⟶ 𝔐₀.X) (hI₁ : 𝔐.Interior z₁)
    (h₁ : ∀ (a : Ω) (r : ℂ), ValAt 𝔐.ξ z₁ a r → ∃ h : a ∈ W, φ ⟨a, h⟩ = r)
    (h₂ : ∀ (a : Ω₀) (r : ℂ), ValAt 𝔐₀.ξ z₂ a r → ∃ h : i a ∈ W, φ ⟨_, h⟩ = r)
    (s : CMType H ⊕ CMType H) (idx : Fin (labelRk D s)) {t : Ω} {ν : ℝ} {t₀ : Ω₀} {ν₀ : ℝ}
    (hn : 𝔐.M.IsGrNorm 𝔐.t.PP.L (𝔐.V s) (Fl.b s) idx z₁ t ν)
    (hn₀ : 𝔐₀.M.IsGrNorm 𝔐₀.t.PP.L (𝔐₀.V s) (Fl₀.b s) idx z₂ t₀ ν₀) :
    ∃ a : W, IsUnit a ∧ (a : Ω) * t = i t₀ ∧ ν₀ = ‖φ a‖ * ν := by
  classical
  have hβ : Function.Injective (algebraMap (𝓞 c.F) c.F) := RingOfIntegers.coe_injective
  obtain ⟨jj, hext, hspan, hpt, hlat⟩ := _root_.GlobalTheory.CompanionTheory.Ar.OrVert.LieCmp.lie_cmp E H D l Xo c Y S S₀ Ω Ω₀ K K₀ J J₀ y y₀ 𝔐 𝔐₀ Fl₀ i hξ
  obtain ⟨hz, hval⟩ := val_ext E H D l Xo c Y S S₀ Ω Ω₀ K K₀ J J₀ y y₀ 𝔐 𝔐₀ i jj W φ z₁ z₂ hξ hpt hW h₁ h₂
  have hq : genPt 𝔐.ξ ⤳ centre z₁ := 𝔐.all _
  have hq₀ : genPt 𝔐₀.ξ ⤳ centre z₂ := 𝔐₀.all _
  set q : Cpt 𝔐.ξ := ⟨centre z₁, hq⟩ with hqdef
  set q₀ : Cpt 𝔐₀.ξ := ⟨centre z₂, hq₀⟩ with hq₀def
  have hfq : 𝔐.f q.1 = 𝔐₀.f q₀.1 := by
    have := congrArg (fun g : Spec (CommRingCat.of ℂ) ⟶ Y.X => g (IsLocalRing.closedPoint ℂ)) hz
    exact (Scheme.Hom.comp_apply z₁ 𝔐.f _).symm.trans (this.trans (Scheme.Hom.comp_apply z₂ 𝔐₀.f _))
  obtain ⟨Vz, _, _, ⟨MR⟩⟩ := lieModel_exists 𝔐.X 𝔐.t.G ℂ z₁
  obtain ⟨Lm, val, h0, hadd, hsm, hv₁, hv₂⟩ := hval Vz MR
  obtain ⟨h, hHI, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.exists_hodgeInnerProduct_form E H 𝔐.X 𝔐.t z₁ Vz MR (GrNorm.interior_pol 𝔐 hβ z₁ hI₁)
  obtain ⟨_, b, Γ, hflag, hfr, ht, ⟨v, hv, hI⟩, -, rfl⟩ := hn
  obtain ⟨_, b₀, Γ₀, hflag₀, hfr₀, ht₀, ⟨v₀, hv₀, hI₀⟩, -, rfl⟩ := hn₀
  obtain ⟨-, -, -, -, -, -, hind, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HodgeCpt.basic E H D l Xo c _ _ Y S Ω K J y 𝔐 hβ
  obtain ⟨-, -, -, -, -, -, hind₀, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HodgeCpt.basic E H D l Xo c _ _ Y S₀ Ω₀ K₀ J₀ y₀ 𝔐₀ hβ
  obtain ⟨hV, -, hL⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HodgeChar0.lattices_of_char_zero E H D l Xo c _ _ Y S Ω K J y 𝔐 hβ q
    fun r hr => GrNorm.not_inFibre 𝔐.tie.gen hq hr
  obtain ⟨hV₀, -, hL₀⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HodgeChar0.lattices_of_char_zero E H D l Xo c _ _ Y S₀ Ω₀ K₀ J₀ y₀ 𝔐₀ hβ q₀
    fun r hr => GrNorm.not_inFibre 𝔐₀.tie.gen hq₀ hr
  obtain ⟨π, hπ, hreg⟩ := GrNorm.exists_dual 𝔐 hind q hL s b hfr.1 ((hV s).symm.trans hfr.2)
  obtain ⟨π₀, hπ₀, hreg₀⟩ := GrNorm.exists_dual 𝔐₀ hind₀ q₀ hL₀ s b₀ hfr₀.1 ((hV₀ s).symm.trans hfr₀.2)
  have hbL : ∀ k, b k ∈ 𝔐.M.lat q := fun k => by
    have e1 : b k ∈ 𝔐.V s q := hfr.2 ▸ Submodule.subset_span ⟨k, rfl⟩
    rw [hV s] at e1
    rw [hL]
    exact (le_iSup (fun s' => 𝔐.dR s' q) s) e1
  have hbL₀ : ∀ k, b₀ k ∈ 𝔐₀.M.lat q₀ := fun k => by
    have e1 : b₀ k ∈ 𝔐₀.V s q₀ := hfr₀.2 ▸ Submodule.subset_span ⟨k, rfl⟩
    rw [hV₀ s] at e1
    rw [hL₀]
    exact (le_iSup (fun s' => 𝔐₀.dR s' q₀) s) e1
  have regW : ∀ a ∈ regAt 𝔐.ξ q, a ∈ W := fun a ha => by
    obtain ⟨g, hg⟩ := ha
    exact (h₁ a _ ⟨hq, g, hg, rfl⟩).1
  have regW₀ : ∀ a ∈ regAt 𝔐₀.ξ q₀, i a ∈ W := fun a ha => by
    obtain ⟨g, hg⟩ := ha
    exact (h₂ a _ ⟨hq₀, g, hg, rfl⟩).1
  have hb : ∀ s' k, jj (Fl₀.b s' k) = Fl.b s' k := fun s' k => ((hpt _ _).1 (hFl s' k)).symm
  have hFlli : LinearIndependent Ω (Fl.b s) := by
    obtain ⟨_, _, -, -, -, h4, -⟩ := Fl.generic
    exact h4 s
  have hflagJ : ∀ n, flagStep Ω (fun k => jj (b₀ k)) n = flagStep Ω (Fl.b s) n := fun n => by
    have e1 := FlagPull.flagStep_map_eq hext.1 hflag₀ n
    have e2 : (fun k => jj (Fl₀.b s k)) = Fl.b s := funext (hb s)
    rw [e1, e2]
  have hspb : Submodule.span Ω (Set.range b) = Submodule.span Ω (Set.range fun k => jj (b₀ k)) := by
    rw [← flagStep_top, ← flagStep_top, hflag, hflagJ]
  let T : Module.End Ω 𝔐.Li := ∑ l, (π l).smulRight (b l)
  have hT : ∀ e, T e = ∑ l, π l e • b l := fun e => by
    simp [T, LinearMap.sum_apply]
  have hTb : ∀ x ∈ Submodule.span Ω (Set.range b), T x = x := by
    have hon : Set.EqOn (T : 𝔐.Li →ₗ[Ω] 𝔐.Li) (LinearMap.id : 𝔐.Li →ₗ[Ω] 𝔐.Li) (Set.range b) := by
      rintro _ ⟨k, rfl⟩
      simp [hT, hπ, ite_smul]
    intro x hx
    exact LinearMap.eqOn_span hon hx
  have fr := _root_.GlobalTheory.CompanionTheory.Ar.Frames.two_frames Ω Ω₀ i 𝔐.Li 𝔐₀.Li jj hext hspan W (𝔐₀.M.lat q₀ : Set 𝔐₀.Li) (𝔐.M.lat q : Set 𝔐.Li)
    (labelRk D s) b b₀ π₀ T 1 1 1 (hlat W q q₀ regW regW₀ hfq)
    (fun e he => by
      rw [hT]
      exact Submodule.sum_mem _ fun l _ =>
        (Submodule.span W (Set.range b)).smul_mem (⟨π l e, regW _ (hreg l e he)⟩ : W) (Submodule.subset_span ⟨l, rfl⟩))
    (fun j => by
      rw [one_smul]
      exact hTb _ (hspb ▸ Submodule.subset_span ⟨j, rfl⟩))
    (fun j => by rw [one_smul]; exact hbL₀ j)
    hπ₀
    (fun a e he => by
      rw [_root_.one_mul]
      exact regW₀ _ (hreg₀ a e he))
    (fun j => by rw [one_smul]; exact hbL j)
    (fun j => hspb ▸ Submodule.subset_span ⟨j, rfl⟩)
  have hs : Submodule.span W (Set.range b) = Submodule.span W (Set.range fun k => jj (b₀ k)) := by
    refine le_antisymm (Submodule.span_le.2 ?_) (Submodule.span_le.2 ?_)
    · rintro _ ⟨k, rfl⟩
      have := fr.2 k
      simpa using this
    · rintro _ ⟨k, rfl⟩
      have := fr.1 k
      simpa using this
  have ht' : jj (b₀ idx) - i t₀ • Fl.b s idx ∈ flagStep Ω (Fl.b s) idx := by
    have e1 := FlagPull.map_mem_flagStep hext.1 (Fl₀.b s) idx ht₀
    have e2 : (fun k => jj (Fl₀.b s k)) = Fl.b s := funext (hb s)
    rw [e2, map_sub, hext.1, hb] at e1
    exact e1
  obtain ⟨a, ha, e1, e2⟩ := GrNorm.compare (A := W) (φ := φ) (Lm := Lm) (val := val) h0 hadd hsm h hFlli hfr.1
    (hext.2 _ _ hfr₀.1) (fun k => (hv₁ _ _ (hv k)).1) hs hflag hflagJ idx ht ht'
  refine ⟨a, ha, e1, ?_⟩
  have eΓ : Γ = GrNorm.gramOf h val b := by
    ext p p'
    have e3 := hI p p'
    rw [(hv₁ _ _ (hv p)).2, (hv₁ _ _ (hv p')).2] at e3
    exact (hHI _ _ _).1 e3
  have eΓ₀ : Γ₀ = GrNorm.gramOf h val (fun k => jj (b₀ k)) := by
    ext p p'
    have e3 := (hodge_move 𝔐.m 𝔐₀.m hz (hv₂ _ _ (hv₀ p)).2 (hv₂ _ _ (hv₀ p')).2 _).2 (hI₀ p p')
    exact (hHI _ _ _).1 e3
  rw [eΓ, eΓ₀]
  exact e2

end Norm

section Final

theorem real_alg {N Pn hM hR U₁ U₂ X W₁ W₂ V : ℝ} (hP : Pn * N ≠ 0) (hW : W₂ ≠ 0) (e1 : N * hM = U₁ * W₁)
    (e2 : (Pn * N) * hR = U₂ * W₂) (k : U₁ * Pn = U₂ * X) (ev : X * (W₁ * W₂⁻¹) = V) : V * hR = hM := by
  have hW2 : W₂⁻¹ * W₂ = 1 := inv_mul_cancel₀ hW
  apply mul_right_cancel₀ hP
  subst ev
  linear_combination (X * W₁ * W₂⁻¹) * e2 + (X * W₁ * U₂) * hW2 - Pn * e1 - W₁ * k

theorem zpow_unit_val {R F : Type} [CommRing R] [Field F] (f : R →+* F) (u : Rˣ) (n : ℤ) :
    f ((u ^ n : Rˣ) : R) = f (u : R) ^ n := by
  have e := congrArg Units.val (map_zpow (Units.map (f : R →* F)) u n)
  rw [Units.val_zpow_eq_zpow_val] at e
  exact e

theorem sing_agree : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (S S₀ : Finset ℕ) (M R : Top.RootModel (CMType H) (D.p + D.q)) (Sys : PB.AnSys (Top.dimFl (CMType H) (D.p + D.q)) (Option (RootIx D))) (Fx : FixedData Y Sys) (o : RootOrigin Y S M Fx) (o₀ : RootOrigin Y S₀ R Fx) (i : R.Ω →+* M.Ω), i.comp o₀.g = o.g → ∀ (z₁ : Spec (CommRingCat.of ℂ) ⟶ o.𝔐.X) (z₂ : Spec (CommRingCat.of ℂ) ⟶ o₀.𝔐.X) (w : (Σ k, Cmp.joinIdx M.ι R.ι k) → ℂ), w ∈ Small.ptsOver ℂ (mCoordIdeal (Ht.joinOf M R i)) → CoordsAt o.𝔐.ξ M.y z₁ (fun p => w (Cmp.joinInl M.ι R.ι p)) → CoordsAt o₀.𝔐.ξ R.y z₂ (fun p => w (Cmp.joinInr M.ι R.ι p)) → o.𝔐.Interior z₁ → o₀.𝔐.Interior z₂ → ∀ (r : RootIx D) (v : ℂ), Small.HasVal (Ht.joinOf M R i) (Ht.joinDeg M R (some r)) (i (o₀.e r) / o.e r) w v → ‖v‖ * (o₀.sing r).h (fun p => w (Cmp.joinInr M.ι R.ι p)) = (o.sing r).h (fun p => w (Cmp.joinInl M.ι R.ι p)) := by
  intro E _ _ _ H D l Xo c Y S S₀ M R Sys Fx o o₀ i hi z₁ z₂ w hw hc₁ hc₂ hI₁ hI₂ r v hv
  classical
  have hβ : Function.Injective (algebraMap (𝓞 c.F) c.F) := RingOfIntegers.coe_injective
  have hξ : o.𝔐.ξ ≫ o.𝔐.f = spMap i ≫ o₀.𝔐.ξ ≫ o₀.𝔐.f := by
    rw [o.g_over, o₀.g_over, ← hi, ← Category.assoc]
    congr 1
    exact (FlagPull.spMap_comp _ _)
  have hFl : ∀ s k, (o.𝔐.M.pt (o.Fl.b s k)).left ≫ o.𝔐.m.φ =
      spMap (dualMap i) ≫ (o₀.𝔐.M.pt (o₀.Fl.b s k)).left ≫ o₀.𝔐.m.φ := fun s k => by
    rw [o.g_flag, o₀.g_flag, ← hi, ← Category.assoc, FlagPull.dualMap_comp]
    congr 1
    exact (FlagPull.spMap_comp _ _)
  obtain ⟨W, φ, hW, hr, hs⟩ := _root_.GlobalTheory.CompanionTheory.Ar.LocVal.exists_locRing_val _ _ _ (Ht.joinOf M R i) w hw
  obtain h₁ := _root_.GlobalTheory.CompanionTheory.Ar.RegVal.contains_localRing o.𝔐.X M.Ω M.Ω (RingHom.id _) o.𝔐.ξ M.K M.ι M.y z₁ _ W φ o.𝔐.tie hc₁ hW
    (fun k c' e hc => hr (Sum.inl k) c' e hc)
  obtain h₂ := _root_.GlobalTheory.CompanionTheory.Ar.RegVal.contains_localRing o₀.𝔐.X R.Ω M.Ω i o₀.𝔐.ξ R.K R.ι R.y z₂ _ W φ o₀.𝔐.tie hc₂ hW
    (fun k c' e hc => by
      obtain ⟨h, e'⟩ := hr (Sum.inr k) c' e hc
      have e1 : i (R.y ⟨k, e⟩ / R.y ⟨k, c'⟩) = Ht.joinOf M R i ⟨Sum.inr k, e⟩ / Ht.joinOf M R i ⟨Sum.inr k, c'⟩ :=
        map_div₀ i _ _
      exact ⟨e1 ▸ h, by
        show φ _ * w ⟨Sum.inr k, c'⟩ = w ⟨Sum.inr k, e⟩
        simpa only [e1] using e'⟩)

  obtain ⟨t, ht⟩ := Flag.gr_gen_of_isFlagVBOn (o.Fl.sub (rootIdx D r).1) (p := ⟨centre z₁, o.𝔐.all _⟩)
    (Set.mem_univ _) (rootIdx D r).2
  obtain ⟨ν, hνpos, hn⟩ := GrNorm.exists_norm E H D l Xo c _ _ Y S M.Ω M.K M.ι M.y o.𝔐 o.Fl hβ z₁ hI₁ _ _ t ht
  have hg := (hn t ν).2 ⟨1, one_ne_zero, by rw [div_self ht.1]; exact CxVal.one (o.𝔐.all _), by simp⟩
  obtain ⟨t₀, ht₀⟩ := Flag.gr_gen_of_isFlagVBOn (o₀.Fl.sub (rootIdx D r).1) (p := ⟨centre z₂, o₀.𝔐.all _⟩)
    (Set.mem_univ _) (rootIdx D r).2
  obtain ⟨ν₀, hνpos₀, hn₀⟩ := GrNorm.exists_norm E H D l Xo c _ _ Y S₀ R.Ω R.K R.ι R.y o₀.𝔐 o₀.Fl hβ z₂ hI₂ _ _ t₀ ht₀
  have hg₀ := (hn₀ t₀ ν₀).2 ⟨1, one_ne_zero, by rw [div_self ht₀.1]; exact CxVal.one (o₀.𝔐.all _), by simp⟩
  obtain ⟨a, ha, eat, eν⟩ := norm_cmp o.𝔐 o₀.𝔐 o.Fl o₀.Fl i hξ hFl W φ hW z₁ z₂ hI₁ h₁ h₂ _ _ hg hg₀

  have s1 := o.hodge r z₁ _ hc₁ hI₁ t ν hg
  have s2 := o₀.hodge r z₂ _ hc₂ hI₂ t₀ ν₀ hg₀
  choose c₁ hc₁' using hc₁.1
  choose c₂ hc₂' using hc₂.1
  have hne₁ : ∀ k, w (Cmp.joinInl M.ι R.ι ⟨k, c₁ k⟩) ≠ 0 := fun k => (hc₁' k).ne_zero
  have hne₂ : ∀ k, w (Cmp.joinInr M.ι R.ι ⟨k, c₂ k⟩) ≠ 0 := fun k => (hc₂' k).ne_zero
  obtain ⟨u₁, hu₁, en₁⟩ := s1.2.2 c₁ hne₁
  obtain ⟨u₂, hu₂, en₂⟩ := s2.2.2 c₂ hne₂
  let C : ∀ k, Cmp.joinIdx M.ι R.ι k := fun k => match k with
    | Sum.inl k => c₁ k
    | Sum.inr k => c₂ k
  obtain ⟨hx, evx⟩ := hs _ _ v C hv (by
    rintro (k | k)
    · exact hne₁ k
    · exact hne₂ k)
  obtain ⟨m₁, em₁⟩ := h₁ _ _ hu₁
  obtain ⟨m₂, em₂⟩ := h₂ _ _ hu₂
  have hdM : ∀ k, Ht.joinDeg M R (some r) (Sum.inl k) = (o.sing r).a k := fun k => by
    rw [o.sing_deg r]
    show (M.x 1 r).a k = _
    rw [M.x_deg]
  have hdR : ∀ k, Ht.joinDeg M R (some r) (Sum.inr k) = -(o₀.sing r).a k := fun k => by
    rw [o₀.sing_deg r]
    show -(R.x 1 r).a k = _
    rw [R.x_deg]
  have pY : ∏ k, Ht.joinOf M R i ⟨k, C k⟩ ^ (-Ht.joinDeg M R (some r) k) =
      (∏ k, M.y ⟨k, c₁ k⟩ ^ (o.sing r).a k)⁻¹ * i (∏ k, R.y ⟨k, c₂ k⟩ ^ (o₀.sing r).a k) := by
    rw [Fintype.prod_sum_type]
    simp only [hdM, hdR]
    show (∏ k, M.y ⟨k, c₁ k⟩ ^ (-(o.sing r).a k)) * ∏ k, i (R.y ⟨k, c₂ k⟩) ^ (- -(o₀.sing r).a k) = _
    simp only [zpow_neg, neg_neg, Finset.prod_inv_distrib, map_prod, map_zpow₀]
  have pw : ∏ k, w ⟨k, C k⟩ ^ Ht.joinDeg M R (some r) k =
      (∏ k, w (Cmp.joinInl M.ι R.ι ⟨k, c₁ k⟩) ^ (o.sing r).a k) *
        (∏ k, w (Cmp.joinInr M.ι R.ι ⟨k, c₂ k⟩) ^ (o₀.sing r).a k)⁻¹ := by
    rw [Fintype.prod_sum_type]
    simp only [hdM, hdR]
    show (∏ k, w (Cmp.joinInl M.ι R.ι ⟨k, c₁ k⟩) ^ (o.sing r).a k) *
      ∏ k, w (Cmp.joinInr M.ι R.ι ⟨k, c₂ k⟩) ^ (-(o₀.sing r).a k) = _
    simp only [zpow_neg, Finset.prod_inv_distrib]
  obtain ⟨au, rfl⟩ := ha
  have hmon : (∏ k, M.y ⟨k, c₁ k⟩ ^ (o.sing r).a k) ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun k _ => zpow_ne_zero _ (s1.2.1.2 k (c₁ k) (hc₁' k)).1
  have hmon₀ : (∏ k, R.y ⟨k, c₂ k⟩ ^ (o₀.sing r).a k) ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun k _ => zpow_ne_zero _ (s2.2.1.2 k (c₂ k) (hc₂' k)).1
  have he : o.e r ≠ 0 := s1.1
  have he₀ : o₀.e r ≠ 0 := s2.1
  have key : (⟨_, m₁⟩ : W) * ((au ^ rootSgn D r : Wˣ) : W) = ⟨_, m₂⟩ * ⟨_, hx⟩ := by
    apply Subtype.ext
    have e1 : (((au ^ rootSgn D r : Wˣ) : W) : M.Ω) = ((au : W) : M.Ω) ^ rootSgn D r :=
      zpow_unit_val W.subtype au _
    have e2 : i t₀ ^ rootSgn D r = ((au : W) : M.Ω) ^ rootSgn D r * t ^ rootSgn D r := by
      rw [← eat, mul_zpow]
    simp only [Subring.coe_mul, e1, RingHom.id_apply, pY, map_div₀, map_mul, map_zpow₀, e2]
    have hm' := (map_ne_zero i).2 hmon₀
    have he' := (map_ne_zero i).2 he₀
    generalize ∏ k, M.y ⟨k, c₁ k⟩ ^ (o.sing r).a k = m at hmon ⊢
    generalize i (∏ k, R.y ⟨k, c₂ k⟩ ^ (o₀.sing r).a k) = m₀ at hm' ⊢
    generalize i (o₀.e r) = f₀ at he' ⊢
    generalize o.e r = f at he ⊢
    field_simp
  have key2 := congrArg (fun x => ‖φ x‖) key
  simp only [map_mul, norm_mul, em₁, em₂, zpow_unit_val φ au] at key2
  have hp0 : φ (au : W) ≠ 0 := ((au.isUnit).map φ).ne_zero
  have hpn : ‖φ (au : W)‖ ^ rootSgn D r * ν ^ rootSgn D r ≠ 0 :=
    mul_ne_zero (zpow_ne_zero _ (norm_ne_zero_iff.2 hp0)) (zpow_ne_zero _ hνpos.ne')
  have hW₂ : (∏ k, ‖w (Cmp.joinInr M.ι R.ι ⟨k, c₂ k⟩)‖ ^ (o₀.sing r).a k) ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun k _ => zpow_ne_zero _ (norm_ne_zero_iff.2 (hne₂ k))
  rw [pw] at evx
  have evn := congrArg norm evx
  simp only [norm_mul, norm_inv, norm_prod, norm_zpow] at evn
  rw [norm_zpow] at key2
  rw [eν, mul_zpow] at en₂
  exact real_alg hpn hW₂ en₁ en₂ key2 evn

end Final

end GlobalTheory.CompanionTheory.Ar.SingCmp
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginCompareFirst =====

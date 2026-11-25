module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasArcDataIff
public import Formalism.LocalToGlobal.ProjectiveLattices.DataAtPointN3
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsProperOfSubsingleton
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PeriodFormAdditiveBalancedPosDefBoundedRank
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
public import Formalism.LocalToGlobal.ProjectiveLattices.BetaAddRight
public import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.SubsingletonOfLeOne
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.BetaAtAddLeftAndDiagEqTwoOrder
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsGoodIntegral
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Algebra.Module.Submodule.Order
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsMonHomOfMul
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsRosatiGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC
import Formalism.SharpRestriction.Divisibility.AbelianOpenPart.AbelianAt
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.DimEqRankAddDim
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SmoothOfRelativeDimensionOfGeneric
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsUnitOfNorm, Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RankOneBaseWeightEqCmTheta

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsUnitOfNorm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsUnitOfNorm", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasArcDataIff\npublic import Formalism.LocalToGlobal.ProjectiveLattices.DataAtPointN3\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Formalism.LocalToGlobal.ProjectiveLattices.BetaAddRight\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsProperOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.BetaAtAddLeftAndDiagEqTwoOrder\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsGoodIntegral\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PeriodFormAdditiveBalancedPosDefBoundedRank\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Module.Submodule.Order\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsMonHomOfMul\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsRosatiGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBLocalC\nimport Formalism.SharpRestriction.Divisibility.AbelianOpenPart.AbelianAt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open Formalism.MainNotions.DIV.Cons (SCF intO)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.LocM.Per

section Defs

variable {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (T : Over (Sp R))

abbrev cT (χ : D.X) : T ⟶ D.P.A := toUnit T ≫ D.c χ

def biφ (a b : D.X) : Fin 4 → (T.left ⟶ D.P.A.left) :=
  ![(cT D T (a + b)).left, (cT D T a).left, (cT D T b).left, (toUnit T ≫ η[D.P.A]).left]

abbrev BiGen (a b : D.X) : Type := LB.Gen (LB.LinComb D.P.L (biφ D T a b) Oinvε)

variable {D T}

structure IsBiTriv {O : Type} [Ring O] [StarRing O] [Module O D.X] (oa : D.OAct O) (e : ∀ a b, BiGen D T a b) : Prop where
  gen : ∀ a b, (e a b).IsGen
  symm : ∀ a b, LB.Gen.Corr D.P.L _ _ _ _ (e a b) (e b a)
  mul : ∀ a a' b, LB.Gen.Corr D.P.L _ _ _ _
    (LB.mulGen D.P.L _ _ _ _ (e (a + a') b)
      (LB.pullGen D.P.L (thφ D.P.A (x3 D.P.A)) thε D.cub.t (lift (cT D T a) (lift (cT D T a') (cT D T b))).left))
    (LB.mulGen D.P.L _ _ _ _ (e a b) (e a' b))
  bal : ∀ (x : O) (u : LB.Gen (LB.LinComb D.P.L (rosatiφ D.P.A (oa.onB.act x) (oa.onB.act (star x))) rosatiε)), u.IsGen →
    LB.Gen.Corr D.P.L _ _ _ _ (LB.pullGen D.P.L _ _ u (zero2 D.P.A)) (LB.oneGen D.P.L) →
    ∀ a b, LB.Gen.Corr D.P.L _ _ _ _
      (LB.mulGen D.P.L _ _ _ _ (e (x • a) b) (LB.pullGen D.P.L _ _ u (lift (cT D T a) (cT D T b)).left))
      (e a (star x • b))

def CoordAt (D : DegPre R) (χ : D.X) (i : D.P.L.ι) (r : R) : Prop :=
  ∃ (_ : (⊤ : (Sp R).Opens) ≤ (D.c χ).left ⁻¹ᵁ D.P.L.U i)
    (h : jK R ⁻¹ᵁ ⊤ ≤ (LB.LinComb D.P.L (K := PUnit) (fun _ => D.xK χ) (fun _ => -1)).U fun _ => i),
    ((jK R).app ⊤).hom (DegPre.toOpen (R := R) ⊤ r) =
      ((TK R).left.presheaf.map (homOfLE h).op).hom ((D.psi χ).s fun _ => i).val

theorem psiCoord_iff (χ : D.X) (r : R) : PsiCoord D χ r ↔ ∃ i, CoordAt D χ i r :=
  ⟨fun ⟨j, h⟩ => ⟨j PUnit.unit, h⟩, fun ⟨i, h⟩ => ⟨fun _ => i, h⟩⟩

def rigAt (D : DegPre R) (i : D.P.L.ι) : R := valR (𝟙 (Sp R)) _ (D.rig.s fun _ => i).val

variable {C : Type} [NormedField C] [IsUltrametricDist C]

def IsTauVal (g : R →+* intO C) {a b : D.X} (e : BiGen D (Over.mk (spMap g)) a b) (t : C) : Prop :=
  ∀ (j : Fin 4 → D.P.L.ι) (r₁ r₂ r₃ : R), CoordAt D (a + b) (j 0) r₁ → CoordAt D a (j 1) r₂ → CoordAt D b (j 2) r₃ →
    ⊤ ≤ eSec D.P.A ⁻¹ᵁ D.P.L.U (j 3) →
    (g r₁ : C) = t * (valR (𝟙 (Sp (intO C))) _ (e.s j).val : intO C) * g r₂ * g r₃ * g (rigAt D (j 3))

end Defs

section Rel

variable {R V : Type} [CommRing R] [IsDomain R] [CommRing V] [IsDomain V]

def gen (V : Type) [CommRing V] [IsDomain V] : Sp V := (⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum V)

theorem jK_mem {U : (Sp R).Opens} {y : Sp R} (h : y ∈ U) : jK R (gen (FractionRing R)) ∈ U := by
  refine ((PrimeSpectrum.le_iff_specializes _ y).1 fun r hr => ?_).mem_open U.isOpen h
  have : algebraMap R (FractionRing R) r = 0 := hr
  rw [(IsFractionRing.to_map_eq_zero_iff).1 this]
  exact zero_mem _

theorem gmK_inj {U : (Sp R).Opens} (h : jK R (gen (FractionRing R)) ∈ U) {a b : Γ(Sp R, U)ˣ}
    (e : gm (jK R) (gen _) U a = gm (jK R) (gen _) U b) : a = b := by
  have := congrArg Units.val e
  rw [gm_val _ _ U h, gm_val _ _ U h] at this
  have : IsDominant (jK R) := DVR.isDominant_jK
  have : IsSchemeTheoreticallyDominant (jK R) := .of_isDominant _
  exact Units.ext ((jK R).app_injective U
    (germ_injective_of_isIntegral (Sp (FractionRing R)) (U := jK R ⁻¹ᵁ U) (gen _) h ‹_›))

def Rel (g : R →+* V) (x : ((Sp (FractionRing R)).presheaf.stalk (gen _))ˣ) (y : ((Sp V).presheaf.stalk (gen V))ˣ) : Prop :=
  ∃ (U : (Sp R).Opens) (a : Γ(Sp R, U)ˣ), spMap g (gen V) ∈ U ∧ x = gm (jK R) (gen _) U a ∧ y = gm (spMap g) (gen V) U a

variable {g : R →+* V}

theorem Rel.mul {x x' y y'} (h : Rel g x y) (h' : Rel g x' y') : Rel g (x * x') (y * y') := by
  obtain ⟨U, a, hU, rfl, rfl⟩ := h
  obtain ⟨U', a', hU', rfl, rfl⟩ := h'
  have hm : spMap g (gen V) ∈ U ⊓ U' := ⟨hU, hU'⟩
  refine ⟨U ⊓ U', res inf_le_left a * res inf_le_right a', hm, ?_, ?_⟩
  · rw [map_mul, gm_res _ _ _ (jK_mem hm), gm_res _ _ _ (jK_mem hm)]
  · rw [map_mul, gm_res _ _ _ hm, gm_res _ _ _ hm]

theorem Rel.inv {x y} (h : Rel g x y) : Rel g x⁻¹ y⁻¹ := by
  obtain ⟨U, a, hU, rfl, rfl⟩ := h
  exact ⟨U, a⁻¹, hU, (map_inv _ _).symm, (map_inv _ _).symm⟩

theorem Rel.congr {x x' y} (h : Rel g x y) (e : x = x') : Rel g x' y := e ▸ h

theorem Rel.unique {x y y'} (h : Rel g x y) (h' : Rel g x y') : y = y' := by
  obtain ⟨U, a, hU, rfl, rfl⟩ := h
  obtain ⟨U', a', hU', e, rfl⟩ := h'
  have hm : spMap g (gen V) ∈ U ⊓ U' := ⟨hU, hU'⟩
  have : res (inf_le_left : U ⊓ U' ≤ U) a = res inf_le_right a' := gmK_inj (jK_mem hm) (by
    rw [gm_res _ _ _ (jK_mem hm), gm_res _ _ _ (jK_mem hm), e])
  rw [← gm_res _ _ (inf_le_left : U ⊓ U' ≤ U) hm, this, gm_res _ _ _ hm]

end Rel

section Main

variable {R V : Type} [CommRing R] [IsDomain R] [CommRing V] [IsDomain V] {D : DegPre R} {g : R →+* V}

end Main

section Exist

variable {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] {D : DegPre R}
  {C : Type} [NormedField C] [IsUltrametricDist C]


theorem IsTauVal.unique {g : R →+* intO C} (hex : ∀ χ, ∃ r, PsiCoord D χ r) (hne : ∀ χ r, PsiCoord D χ r → g r ≠ 0)
    {a b : D.X} {e : BiGen D (Over.mk (spMap g)) a b} {t t' : C} (h : IsTauVal g e t) (h' : IsTauVal g e t') : t = t' := by
  choose r₀ hr₀ using hex
  choose i₀ hi₀ using fun χ => (psiCoord_iff χ _).1 (hr₀ χ)
  obtain ⟨i, hi⟩ := exists_chart D.P.isLB (eSec D.P.A (closedPoint R))
  have hi : ⊤ ≤ eSec D.P.A ⁻¹ᵁ D.P.L.U i := (DVR.eq_top_of_closedPoint_mem _ hi).ge
  have e₁ := h ![i₀ (a + b), i₀ a, i₀ b, i] _ _ _ (hi₀ _) (hi₀ _) (hi₀ _) hi
  have e₂ := h' ![i₀ (a + b), i₀ a, i₀ b, i] _ _ _ (hi₀ _) (hi₀ _) (hi₀ _) hi
  have h0 : (g (r₀ (a + b)) : C) ≠ 0 := fun e => hne _ _ (hr₀ _) (Subtype.ext e)
  simp only [_root_.mul_assoc] at e₁ e₂
  exact mul_right_cancel₀ (right_ne_zero_of_mul (e₁ ▸ h0)) (e₁.symm.trans e₂)


end Exist

section Point

open NumberField

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}
variable {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
variable {Y : Model Xo c β} {p : ℕ} {C : SCF p} {P : PointsOfFlagModel.PtC Y C}

structure Reading (A : DatAt Y P) : Type where
  e : ∀ a b, BiGen A.U.D.toPre (Over.mk (spMap A.f)) a b
  triv : letI := H.starRing; IsBiTriv A.U.oD e
  t : A.Ylat → A.Ylat → (↥C.S)ˣ
  isVal : ∀ a b, IsTauVal A.f (e a b) (t a b)
  symm : ∀ a b, t a b = t b a
  add_left : ∀ a a' b, t (a + a') b = t a b * t a' b
  bal : ∀ (x : 𝓞 E) a b, t (x • a) b = t a (H.bar x • b)
  beta_eq : ∀ a b, A.beta a b = -Real.logb p ‖(t a b : ↥C.S)‖

end Point

end GlobalTheory.LocM.Per
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsUnitOfNorm =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RankOneBaseWeightEqCmTheta =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RankOneBaseWeightEqCmTheta", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsUnitOfNorm\npublic import Formalism.LocalToGlobal.ProjectiveLattices.BetaAddRight\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.BetaAtAddLeftAndDiagEqTwoOrder\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsGoodIntegral\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsProperOfSubsingleton\npublic import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.SubsingletonOfLeOne\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.DimEqRankAddDim\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SmoothOfRelativeDimensionOfGeneric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf\nimport Formalism.SharpRestriction.Divisibility.AbelianOpenPart.AbelianAt\n\n"}
section -- clump:auto
@[expose] public section



noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.ModuliIntegralCharts Formalism.MainNotions.BoundaryLocalData GlobalTheory.ShFam
open Formalism.MainNotions.DIV.Cons (SCF intO)

namespace GlobalTheory.LocM

section Dim

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
variable {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
variable {Y : Model Xo c β} {p : ℕ} {C : SCF p} {P : PointsOfFlagModel.PtC Y C}

end Dim

variable {D : D7} {A : Amb D} {N j : ℕ} {S : Sig A N j} {κ : Lv A} {p : ℕ}

theorem complexConj_eq_conj (D : D7) (x : D.host.E) : IsCMField.complexConj D.host.E x = D.host.conj x := by
  apply D.host.φ₀.injective
  rw [NumberField.IsCMField.complexEmbedding_complexConj, Formalism.HC.HostAx.conjE_apply]

namespace At

variable (ct : At S κ p) {Z : ct.Mdl} (y : ct.Pt Z)

end At

section Api

variable (ct : At S κ p) {Z : ct.Mdl} (y : ct.Pt Z)

end Api

end GlobalTheory.LocM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RankOneBaseWeightEqCmTheta =====

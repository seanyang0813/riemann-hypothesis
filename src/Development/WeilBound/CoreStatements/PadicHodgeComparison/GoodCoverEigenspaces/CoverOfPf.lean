module

public import Mathlib.AlgebraicGeometry.IdealSheaf.Subscheme
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.Order.CompletePartialOrder
public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CoverOf
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HodgePullHodgePull
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.OmegaPullId
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT
import Formalism.SharpRestriction.LevelLetterCocycles.DataN

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ReductionUniformizerPoint, Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GaloisActionWeightSpectralE1Apply, Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CoverOfPf

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ReductionUniformizerPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ReductionUniformizerPoint", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.IdealSheaf.Subscheme\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry

namespace GlobalTheory.Strata

variable {X : Scheme.{0}} {ι : Type} (I : ι → X.IdealSheafData)

def ideal (S : Finset ι) : X.IdealSheafData := ⨆ i ∈ S, I i

theorem le_ideal {S : Finset ι} {i : ι} (h : i ∈ S) : I i ≤ ideal I S :=
  le_iSup₂ (f := fun i (_ : i ∈ S) => I i) i h

theorem ideal_mono {S S' : Finset ι} (h : S ⊆ S') : ideal I S ≤ ideal I S' :=
  iSup₂_le fun _ hi => le_ideal I (h hi)

def Y (S : Finset ι) : Scheme.{0} := (ideal I S).subscheme

def Yι (S : Finset ι) : Y I S ⟶ X := (ideal I S).subschemeι

def incl {S S' : Finset ι} (h : S ⊆ S') : Y I S' ⟶ Y I S :=
  Scheme.IdealSheafData.inclusion (ideal_mono I h)

abbrev Idx (ι : Type) (s : ℕ) : Type := {S : Finset ι // S.card = s + 1}

def Ystr (s : ℕ) : Scheme.{0} := ∐ fun S : Idx ι s => Y I S.1

def inj {s : ℕ} (S : Idx ι s) : Y I S.1 ⟶ Ystr I s := Sigma.ι (fun S : Idx ι s => Y I S.1) S

section Face

variable [LinearOrder ι]

def face {s : ℕ} (S : Idx ι (s + 1)) (j : Fin (s + 2)) : Idx ι s :=
  ⟨S.1.erase (S.1.orderEmbOfFin S.2 j), by
    rw [Finset.card_erase_of_mem (Finset.orderEmbOfFin_mem _ _ _), S.2]; rfl⟩

theorem face_subset {s : ℕ} (S : Idx ι (s + 1)) (j : Fin (s + 2)) : (face S j).1 ⊆ S.1 :=
  Finset.erase_subset _ _

def δ (s : ℕ) (j : Fin (s + 2)) : Ystr I (s + 1) ⟶ Ystr I s :=
  Sigma.desc fun S : Idx ι (s + 1) => incl I (face_subset S j) ≫ inj I (face S j)

end Face

end GlobalTheory.Strata

namespace GlobalTheory.Strata

variable {X : Scheme.{0}} {ι : Type} (I : ι → X.IdealSheafData)

section Fibre

variable {O : Type} [CommRing O] (p : X ⟶ Spec (CommRingCat.of O)) (ϖ : O)

end Fibre

section BaseChange

variable {X' : Scheme.{0}} (f : X' ⟶ X)

end BaseChange

theorem nonempty_Ystr {s : ℕ} (S : Idx ι s) (y : Y I S.1) : Nonempty (Ystr I s) := ⟨(inj I S).base y⟩

theorem isEmpty_Ystr {s : ℕ} (h : IsEmpty (Idx ι s)) : IsEmpty (Ystr I s) :=
  ⟨fun x => IsEmpty.false ((Sigma.desc (fun S : Idx ι s => (isEmptyElim S : Y I S.1 ⟶ ∅)) : Ystr I s ⟶ ∅).base x)⟩

theorem nonempty_Y_iff (S : Finset ι) : Nonempty (Y I S) ↔ ((ideal I S).support : Set X).Nonempty := by
  rw [← Set.range_nonempty_iff_nonempty (f := (Yι I S).base)]
  unfold Yι
  rw [← Scheme.IdealSheafData.range_subschemeι]
  rfl

end GlobalTheory.Strata

namespace GlobalTheory.Strata

variable {X : Scheme.{0}} {ι : Type} (I : ι → X.IdealSheafData)

section FibreStr

variable {O : Type} [CommRing O] (p : X ⟶ Spec (CommRingCat.of O)) (ϖ : O)

end FibreStr

section BaseChangeStr

variable {X' : Scheme.{0}} (f : X' ⟶ X)

end BaseChangeStr

end GlobalTheory.Strata

namespace GlobalTheory.Strata.Example

open MvPolynomial

variable (O : Type) [CommRing O] (ϖ : O)

abbrev A : Type := MvPolynomial (Fin 2) O ⧸ Ideal.span {X 0 * X 1 - C ϖ}

def T (k : Fin 2) : A O ϖ := Ideal.Quotient.mk _ (X k)

abbrev XS : Scheme.{0} := Spec (CommRingCat.of (A O ϖ))

def compIdeal (k : Fin 2) : (XS O ϖ).IdealSheafData :=
  Scheme.IdealSheafData.ofIdealTop (Ideal.span {(Scheme.ΓSpecIso (CommRingCat.of (A O ϖ))).inv.hom (T O ϖ k)})

def red : A O ϖ →+* O ⧸ Ideal.span {ϖ} :=
  Ideal.Quotient.lift _ (eval₂Hom (Ideal.Quotient.mk _) (fun _ => 0)) (by
    intro a ha
    rw [Ideal.mem_span_singleton'] at ha
    obtain ⟨c, rfl⟩ := ha
    simp [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton_self])

theorem reduction_uniformizerPoint (k : Fin 2) : red O ϖ (T O ϖ k) = 0 := by simp [red, T]

theorem mem_support_compIdeal (x : XS O ϖ) (k : Fin 2) (hx : T O ϖ k ∈ x.asIdeal) :
    x ∈ ((compIdeal O ϖ k).support : Set (XS O ϖ)) := by
  rw [compIdeal, Scheme.IdealSheafData.coe_support_ofIdealTop, Scheme.zeroLocus_span, Scheme.zeroLocus_singleton,
    basicOpen_eq_of_affine]
  exact fun h' => (PrimeSpectrum.mem_basicOpen (x := (x : PrimeSpectrum (A O ϖ))) _).1 h' hx

theorem isEmpty_Ystr_two : IsEmpty (Ystr (compIdeal O ϖ) 2) :=
  isEmpty_Ystr _ ⟨fun S => by have := S.1.card_le_univ; have h2 := S.2; simp at this; omega⟩

theorem nonempty_Ystr_one (h : ¬ IsUnit ϖ) : Nonempty (Ystr (compIdeal O ϖ) 1) := by
  haveI : Nontrivial (O ⧸ Ideal.span {ϖ}) :=
    Ideal.Quotient.nontrivial_iff.2 (by rwa [Ne, Ideal.span_singleton_eq_top])
  obtain ⟨M, hM⟩ := Ideal.exists_maximal (O ⧸ Ideal.span {ϖ})
  let x : XS O ϖ := ⟨M.comap (red O ϖ), Ideal.comap_isPrime _ _⟩
  have hx : x ∈ ((ideal (compIdeal O ϖ) Finset.univ).support : Set (XS O ϖ)) := by
    simp only [ideal, Scheme.IdealSheafData.support_iSup, TopologicalSpace.Closeds.coe_iInf, Set.mem_iInter]
    intro k _
    refine mem_support_compIdeal O ϖ x k ?_
    show red O ϖ (T O ϖ k) ∈ M
    rw [reduction_uniformizerPoint]; exact zero_mem _
  obtain ⟨y⟩ := (nonempty_Y_iff (compIdeal O ϖ) Finset.univ).2 ⟨x, hx⟩
  exact nonempty_Ystr (compIdeal O ϖ) (s := 1) ⟨Finset.univ, by simp⟩ y

end GlobalTheory.Strata.Example

namespace GlobalTheory.Strata

theorem orderEmbOfFin_univ_fin {n : ℕ} (h : (Finset.univ : Finset (Fin n)).card = n) :
    ((Finset.univ : Finset (Fin n)).orderEmbOfFin h : Fin n → Fin n) = id :=
  (Finset.orderEmbOfFin_unique h (f := id) (fun _ => Finset.mem_univ _) strictMono_id).symm

end GlobalTheory.Strata
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ReductionUniformizerPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GaloisActionWeightSpectralE1Apply =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GaloisActionWeightSpectralE1Apply", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ReductionUniformizerPoint\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry

namespace GlobalTheory.EtC.WSS

open GlobalTheory.EtC GlobalTheory.Strata

variable (l : ℕ) [Fact l.Prime]

def castHQ {E : Spc} {n i n' i' : ℤ} (hn : n = n') (hi : i = i') : HQ l E n i ≃ₗ[ℚ_[l]] HQ l E n' i' := by
  subst hn; subst hi; exact LinearEquiv.refl _ _

theorem pullHQ_map_id (E : Spc) (n i : ℤ) : pullHQ l (𝟙 E) n i = LinearMap.id := by
  unfold pullHQ; rw [pullHl_id]; exact LinearMap.baseChange_id

theorem pullHQ_map_comp {E E' E'' : Spc} (f : E ⟶ E') (g : E' ⟶ E'') (n i : ℤ) :
    pullHQ l (f ≫ g) n i = pullHQ l f n i ∘ₗ pullHQ l g n i := by
  unfold pullHQ; rw [pullHl_comp]; exact LinearMap.baseChange_comp _ _

end GlobalTheory.EtC.WSS

namespace GlobalTheory.EtC.WSS

open GlobalTheory.EtC GlobalTheory.Strata

variable (l : ℕ) [Fact l.Prime]

def idx (m : ℕ) (a : ℤ) : Finset ℕ := (Finset.range m).filter fun s => -a ≤ (s : ℤ) ∧ a + 2 * (s : ℤ) < m

variable {ι : Type} [Fintype ι] [LinearOrder ι] {Z : Scheme.{0}} (J : ι → Z.IdealSheafData)

def res (t : ℕ) (n i : ℤ) : HQ l (sch.obj (Ystr J t)) n i →ₗ[ℚ_[l]] HQ l (sch.obj (Ystr J (t + 1))) n i :=
  ∑ j : Fin (t + 2), ((-1 : ℚ_[l]) ^ (j : ℕ)) • pullHQ l (sch.map (δ J t j)) n i

end GlobalTheory.EtC.WSS

namespace GlobalTheory.EtC.WSS

open GlobalTheory.EtC GlobalTheory.Strata

variable (l : ℕ) [Fact l.Prime] {ι : Type} [Fintype ι] [LinearOrder ι] {Z : Scheme.{0}} (J : ι → Z.IdealSheafData)

end GlobalTheory.EtC.WSS

namespace GlobalTheory.EtC.WSS

open GlobalTheory.EtC GlobalTheory.Strata

variable (l : ℕ) [Fact l.Prime] {ι : Type} [Fintype ι] [LinearOrder ι] {Z : Scheme.{0}} (J : ι → Z.IdealSheafData)

end GlobalTheory.EtC.WSS

namespace GlobalTheory.EtC.WSS

open GlobalTheory.EtC GlobalTheory.Strata

variable (l : ℕ) [Fact l.Prime] {ι : Type} [Fintype ι] [LinearOrder ι]

section Galois

variable {k : Type} [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] {V : Scheme.{0}} (p : V ⟶ Spec (CommRingCat.of k))
  (I : ι → V.IdealSheafData)

variable (a b w : ℤ)

end Galois

end GlobalTheory.EtC.WSS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GaloisActionWeightSpectralE1Apply =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CoverOfPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CoverOfPf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CoverOf\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GaloisActionWeightSpectralE1Apply\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HodgePullHodgePull\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.OmegaPullId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocalPrimeGaloisActionPeriodT\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataN\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.GalV GlobalTheory.HTLink GlobalTheory.HodgeCoh GlobalTheory.EtC GlobalTheory.Pst

namespace PositivityTheory.AutomorphicGaloisHodgeTate.G8.CoverOfPf

section Geom

variable {k : Type} [Field k] (Ω : Type) [Field Ω] [Algebra k Ω]

theorem geomMap_comp' {X Y Z : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of k)) {q : Y ⟶ Spec (CommRingCat.of k)}
    {r : Z ⟶ Spec (CommRingCat.of k)} (u : X ⟶ Y) (v : Y ⟶ Z) (hu : u ≫ q = p) (hv : v ≫ r = q)
    (huv : (u ≫ v) ≫ r = p) :
    GlobalTheory.Et.geomMap Ω p u hu ≫ GlobalTheory.Et.geomMap Ω q v hv = GlobalTheory.Et.geomMap Ω p (u ≫ v) huv := by
  apply pullback.hom_ext
  · rw [Category.assoc]
    unfold GlobalTheory.Et.geomMap
    erw [pullback.lift_fst, pullback.lift_fst_assoc, pullback.lift_fst]
    rw [Category.assoc]
  · rw [Category.assoc]
    unfold GlobalTheory.Et.geomMap
    erw [pullback.lift_snd, pullback.lift_snd, pullback.lift_snd]

theorem geomMap_id' {X : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of k)) (h : 𝟙 X ≫ p = p) :
    GlobalTheory.Et.geomMap Ω p (𝟙 X) h = 𝟙 _ := by
  apply pullback.hom_ext <;> simp [GlobalTheory.Et.geomMap]

theorem galMap_geomMap' {X Y : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of k)) (q : Y ⟶ Spec (CommRingCat.of k))
    (u : X ⟶ Y) (hu : u ≫ q = p) (σ : Ω ≃ₐ[k] Ω) :
    GlobalTheory.Et.galMap Ω p σ ≫ GlobalTheory.Et.geomMap Ω p u hu = GlobalTheory.Et.geomMap Ω p u hu ≫ GlobalTheory.Et.galMap Ω q σ := by
  apply pullback.hom_ext
  · rw [Category.assoc, Category.assoc, GlobalTheory.Et.galMap_fst, GlobalTheory.Et.geomMap, pullback.lift_fst, ← Category.assoc,
      GlobalTheory.Et.galMap_fst]
  · rw [Category.assoc, Category.assoc, GlobalTheory.Et.galMap_snd, GlobalTheory.Et.geomMap, pullback.lift_snd, pullback.lift_snd_assoc,
      GlobalTheory.Et.galMap_snd]

end Geom

theorem toMatrix_map {R : Type*} [CommSemiring R] {M M' N N' : Type*} [AddCommMonoid M] [Module R M]
    [AddCommMonoid M'] [Module R M'] [AddCommMonoid N] [Module R N] [AddCommMonoid N'] [Module R N']
    {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ] (b : Module.Basis ι R M)
    (b' : Module.Basis κ R N) (e : M ≃ₗ[R] M') (e' : N ≃ₗ[R] N') (φ : M' →ₗ[R] N') :
    LinearMap.toMatrix (b.map e) (b'.map e') φ =
      LinearMap.toMatrix b b' (e'.symm.toLinearMap ∘ₗ φ ∘ₗ e.toLinearMap) := by
  ext i j
  simp [LinearMap.toMatrix_apply]

variable {l : ℕ} [Fact l.Prime] {K : FinExt l}

section Et

theorem etPull_comp {X X' X'' : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : X' ⟶ Sp ↥K.1} {q'' : X'' ⟶ Sp ↥K.1}
    {f : X' ⟶ X} {g : X'' ⟶ X'} (hf : f ≫ q = q') (hg : g ≫ q' = q'') (n : ℕ) (x : EtV q n) :
    etPull hg n (etPull hf n x) = etPull (f := g ≫ f) (by rw [Category.assoc, hf, hg]) n x := by
  unfold GlobalTheory.HTLink.etPull
  rw [← LinearMap.comp_apply, ← GlobalTheory.EtC.WSS.pullHQ_map_comp, ← Functor.map_comp, geomMap_comp']

theorem etPull_congr {X X' : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : X' ⟶ Sp ↥K.1} {f f' : X' ⟶ X}
    (hf : f ≫ q = q') (hf' : f' ≫ q = q') (h : f = f') (n : ℕ) (x : EtV q n) : etPull hf n x = etPull hf' n x := by
  subst h; rfl

theorem etPull_id {X : Scheme.{0}} (q : X ⟶ Sp ↥K.1) (h : 𝟙 X ≫ q = q) (n : ℕ) (x : EtV q n) :
    etPull (f := 𝟙 X) h n x = x := by
  unfold GlobalTheory.HTLink.etPull
  rw [geomMap_id', CategoryTheory.Functor.map_id, GlobalTheory.EtC.WSS.pullHQ_map_id]
  rfl

theorem etAct_eq {X : Scheme.{0}} (q : X ⟶ Sp ↥K.1) (n : ℕ) (σ : ↥(GK K)) :
    etAct q n σ = GlobalTheory.EtC.pullHQ l (GlobalTheory.EtC.sch.map (GlobalTheory.Et.galMap (PadicAlgCl l) q
      (IntermediateField.fixingSubgroupEquiv K.1 σ))) n 0 := rfl

theorem etPull_etAct {X X' : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : X' ⟶ Sp ↥K.1} {f : X' ⟶ X} (hf : f ≫ q = q')
    (n : ℕ) (σ : ↥(GK K)) (x : EtV q n) : etPull hf n (etAct q n σ x) = etAct q' n σ (etPull hf n x) := by
  rw [etAct_eq, etAct_eq]
  unfold GlobalTheory.HTLink.etPull
  rw [← LinearMap.comp_apply, ← LinearMap.comp_apply, ← GlobalTheory.EtC.WSS.pullHQ_map_comp, ← GlobalTheory.EtC.WSS.pullHQ_map_comp,
    ← Functor.map_comp, ← Functor.map_comp, galMap_geomMap']

def etEquiv {X Y : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : Y ⟶ Sp ↥K.1} (e : X ≅ Y) (he : e.hom ≫ q' = q) (n : ℕ) :
    EtV q' n ≃ₗ[ℚ_[l]] EtV q n where
  toLinearMap := etPull he n
  invFun := etPull (f := e.inv) (by rw [← he, ← Category.assoc, e.inv_hom_id, Category.id_comp]) n
  left_inv x := by
    change etPull (f := e.inv) _ n (etPull he n x) = x
    rw [etPull_comp, etPull_congr _ (Category.id_comp q') e.inv_hom_id, etPull_id]
  right_inv x := by
    change etPull he n (etPull (f := e.inv) _ n x) = x
    rw [etPull_comp, etPull_congr _ (Category.id_comp q) e.hom_inv_id, etPull_id]

theorem etEquiv_symm_apply {X Y : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : Y ⟶ Sp ↥K.1} (e : X ≅ Y)
    (he : e.hom ≫ q' = q) (n : ℕ) (x : EtV q n) :
    (etEquiv e he n).symm x = etPull (f := e.inv) (by rw [← he, ← Category.assoc, e.inv_hom_id, Category.id_comp]) n x :=
  rfl

end Et

section Hodge

theorem hodgePull_comp' {X X' X'' : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : X' ⟶ Sp ↥K.1} {q'' : X'' ⟶ Sp ↥K.1}
    {f : X' ⟶ X} {g : X'' ⟶ X'} (hf : f ≫ q = q') (hg : g ≫ q' = q'') (j b : ℕ) (x : hodgeH q j b) :
    hodgePull hg j b (hodgePull hf j b x) = hodgePull (f := g ≫ f) (by rw [Category.assoc, hf, hg]) j b x :=
  GlobalTheory.HodgeCoh.hodgePull_comp hf hg _ j b x

theorem hodgePull_congr {X X' : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : X' ⟶ Sp ↥K.1} {f f' : X' ⟶ X}
    (hf : f ≫ q = q') (hf' : f' ≫ q = q') (h : f = f') (j b : ℕ) (x : hodgeH q j b) :
    hodgePull hf j b x = hodgePull hf' j b x := by
  subst h; rfl

def hodgeEquiv {X Y : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : Y ⟶ Sp ↥K.1} (e : X ≅ Y) (he : e.hom ≫ q' = q) (j b : ℕ) :
    hodgeH q' j b ≃ₗ[↥K.1] hodgeH q j b where
  toLinearMap := hodgePull he j b
  invFun := hodgePull (f := e.inv) (by rw [← he, ← Category.assoc, e.inv_hom_id, Category.id_comp]) j b
  left_inv x := by
    change hodgePull (f := e.inv) _ j b (hodgePull he j b x) = x
    rw [hodgePull_comp', hodgePull_congr _ (Category.id_comp q') e.inv_hom_id]
    exact GlobalTheory.HodgeCoh.hodgePull_id q' j b x
  right_inv x := by
    change hodgePull he j b (hodgePull (f := e.inv) _ j b x) = x
    rw [hodgePull_comp', hodgePull_congr _ (Category.id_comp q) e.hom_inv_id]
    exact GlobalTheory.HodgeCoh.hodgePull_id q j b x

end Hodge

def trFrame {X Y : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : Y ⟶ Sp ↥K.1} {n : ℕ} (F : Frame (K := K) q n) (e : X ≅ Y)
    (he : e.hom ≫ q' = q) : Frame (K := K) q' n where
  d := F.d
  b := F.b.map (etEquiv e he n).symm
  e := F.e
  c a := (F.c a).map (hodgeEquiv e he a (n - a)).symm

section Tr

variable {A A' X X' : Scheme.{0}} {qA : A ⟶ Sp ↥K.1} {qA' : A' ⟶ Sp ↥K.1} {q : X ⟶ Sp ↥K.1} {q' : X' ⟶ Sp ↥K.1}
  {n : ℕ} (F : Frame (K := K) qA n) (F' : Frame (K := K) qA' n) (e : A ≅ X) (he : e.hom ≫ q = qA)
  (e' : A' ≅ X') (he' : e'.hom ≫ q' = qA') {f : X' ⟶ X} (hf : f ≫ q = q') {f₀ : A' ⟶ A} (hf₀ : f₀ ≫ qA = qA')

theorem rho_tr (σ : ↥(GK K)) : (trFrame F e he).rho σ = F.rho σ := by
  have key : (etEquiv e he n).toLinearMap ∘ₗ etAct q n σ ∘ₗ (etEquiv e he n).symm.toLinearMap = etAct qA n σ := by
    refine LinearMap.ext fun x => ?_
    change etPull he n (etAct q n σ ((etEquiv e he n).symm x)) = etAct qA n σ x
    rw [etPull_etAct]
    exact congrArg _ ((etEquiv e he n).apply_symm_apply x)
  change (LinearMap.toMatrix (F.b.map (etEquiv e he n).symm) (F.b.map (etEquiv e he n).symm) (etAct q n σ)).map
      (algebraMap ℚ_[l] ℂ_[l]) = (LinearMap.toMatrix F.b F.b (etAct qA n σ)).map (algebraMap ℚ_[l] ℂ_[l])
  rw [toMatrix_map, LinearEquiv.symm_symm, key]

theorem isHT_tr (Φ : Matrix (Fin F.d) F.Col ℂ_[l]) (h : F.IsHT Φ) : (trFrame F e he).IsHT Φ := by
  refine ⟨h.1, fun σ => ?_⟩
  rw [rho_tr]
  exact h.2 σ

include hf hf₀ in
theorem etMat_tr (h : f₀ ≫ e.hom = e'.hom ≫ f) :
    (trFrame F e he).etMat (trFrame F' e' he') hf = F.etMat F' hf₀ := by
  have key : (etEquiv e' he' n).toLinearMap ∘ₗ etPull hf n ∘ₗ (etEquiv e he n).symm.toLinearMap = etPull hf₀ n := by
    refine LinearMap.ext fun x => ?_
    change etPull he' n (etPull hf n ((etEquiv e he n).symm x)) = etPull hf₀ n x
    rw [etEquiv_symm_apply, etPull_comp, etPull_comp]
    refine etPull_congr _ _ ?_ n x
    rw [← h, Category.assoc, e.hom_inv_id, Category.comp_id]
  change (LinearMap.toMatrix (F.b.map (etEquiv e he n).symm) (F'.b.map (etEquiv e' he' n).symm) (etPull hf n)).map
      (algebraMap ℚ_[l] ℂ_[l]) = (LinearMap.toMatrix F.b F'.b (etPull hf₀ n)).map (algebraMap ℚ_[l] ℂ_[l])
  rw [toMatrix_map, LinearEquiv.symm_symm, key]

include hf hf₀ in
theorem hodgeMat_tr (h : f₀ ≫ e.hom = e'.hom ≫ f) :
    (trFrame F e he).hodgeMat (trFrame F' e' he') hf = F.hodgeMat F' hf₀ := by
  have key : ∀ a : Fin (n + 1), LinearMap.toMatrix ((F.c a).map (hodgeEquiv e he a (n - a)).symm)
      ((F'.c a).map (hodgeEquiv e' he' a (n - a)).symm) (hodgePull hf a (n - a)) =
      LinearMap.toMatrix (F.c a) (F'.c a) (hodgePull hf₀ a (n - a)) := by
    intro a
    rw [toMatrix_map, LinearEquiv.symm_symm]
    congr 1
    refine LinearMap.ext fun x => ?_
    change hodgePull he' a (n - a) (hodgePull hf a (n - a) (hodgePull (f := e.inv)
      (by rw [← he, ← Category.assoc, e.inv_hom_id, Category.id_comp]) a (n - a) x)) = hodgePull hf₀ a (n - a) x
    rw [hodgePull_comp', hodgePull_comp']
    refine hodgePull_congr _ _ ?_ a (n - a) x
    rw [← h, Category.assoc, e.hom_inv_id, Category.comp_id]
  change (Matrix.blockDiagonal' fun a : Fin (n + 1) => LinearMap.toMatrix ((F.c a).map (hodgeEquiv e he a (n - a)).symm)
      ((F'.c a).map (hodgeEquiv e' he' a (n - a)).symm) (hodgePull hf a (n - a))).map (GlobalTheory.HTLink.toC K) =
    (Matrix.blockDiagonal' fun a : Fin (n + 1) => LinearMap.toMatrix (F.c a) (F'.c a) (hodgePull hf₀ a (n - a))).map
      (GlobalTheory.HTLink.toC K)
  simp only [key]

end Tr

end PositivityTheory.AutomorphicGaloisHodgeTate.G8.CoverOfPf

namespace PositivityTheory.AutomorphicGaloisHodgeTate.G8

open CoverOfPf in
theorem coverOf : CoverOf := by
  intro hG l _ K H J ι hcov n
  obtain ⟨hfr, Φ, hHT, hnat⟩ := hG l K n
  obtain ⟨MZ, eZ, ⟨hSm, hd, -⟩, hqZ, hj⟩ := hcov
  obtain ⟨FZ, -⟩ := hfr MZ hSm hd
  refine ⟨trFrame FZ eZ hqZ, Φ MZ hSm hd FZ, isHT_tr FZ eZ hqZ _ (hHT MZ hSm hd FZ), fun j => ?_⟩
  obtain ⟨W, c, G, hG1, hG2, a, I, hI, σ, hgal, hspl, MW, eW, ⟨hSmW, hdW, -⟩, ⟨uc, huc, hc⟩, hi⟩ := hj j
  have hqW : eW.hom ≫ c ≫ H.q = MW.q := by
    rw [← Category.assoc, ← hc, Category.assoc, hqZ, CrystallineSemistableComparison.Model.genMap_q]
  have hσ : ∀ i, (σ i ≫ H.t (ι j)) ≫ H.q = c ≫ H.q := by
    intro i
    obtain ⟨ui, hui, h⟩ := hi i
    rw [← cancel_epi eW.hom, hqW, ← Category.assoc, ← Category.assoc, Category.assoc eW.hom, ← h, Category.assoc, hqZ,
      CrystallineSemistableComparison.Model.genMap_q]
  obtain ⟨FW, -⟩ := hfr MW hSmW hdW
  refine ⟨W, c, G, hG1, hG2, a, I, hI, σ, hσ, hgal, hspl, trFrame FW eW hqW, Φ MW hSmW hdW FW, ?_, fun i => ?_⟩
  · rw [etMat_tr FZ FW eZ hqZ eW hqW rfl (CrystallineSemistableComparison.Model.genMap_q uc huc) hc,
      hodgeMat_tr FZ FW eZ hqZ eW hqW rfl (CrystallineSemistableComparison.Model.genMap_q uc huc) hc]
    exact hnat MZ MW hSm hSmW hd hdW FZ FW uc huc
  · obtain ⟨ui, hui, h⟩ := hi i
    rw [etMat_tr FZ FW eZ hqZ eW hqW (hσ i) (CrystallineSemistableComparison.Model.genMap_q ui hui) h,
      hodgeMat_tr FZ FW eZ hqZ eW hqW (hσ i) (CrystallineSemistableComparison.Model.genMap_q ui hui) h]
    exact hnat MZ MW hSm hSmW hd hdW FZ FW ui hui

end PositivityTheory.AutomorphicGaloisHodgeTate.G8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CoverOfPf =====

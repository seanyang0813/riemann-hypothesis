module

public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadSurjective
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.PullHEq
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedRestrictPullBijective
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FV
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsDlogFirstChernClass
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HodgeAffineIsoType
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.OmegaPullId
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp
import Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocVan
import Mathlib.Tactic.Linter.Style
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.CechDesc
import Mathlib.Tactic.Linter.HaveILetI
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DpZeroRight
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechDoubleComplexMap, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassSurjective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassZeroOfLeadZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadZeroOfClassZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexDegenerateColumnIso, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexMapLeadCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeToCohomologyIso, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedIso, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedVanish, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverStarIsCosieve, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeDegenerationNatural, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullbackCoverStarCompat, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapMPull, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FormsRestrictOpenBijective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RestrictGradedPullNatural, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.TermAff, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.AffineOpenCaps.GlobTerm, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.HodgeCechComparison

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechDoubleComplexMap =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechDoubleComplexMap", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.LocVan\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section

namespace GlobalTheory.CompanionTheory.CechSerre

section MorDbl

variable {R : Type} [CommRing R] {C C' : Type 1} [Category.{0} C] [Category.{0} C']
  {F : C ⥤ ModuleCat.{0} R} {F' : C' ⥤ ModuleCat.{0} R} {ι ι' : Type}
  {U : ι → ObjectProperty C} {U' : ι' → ObjectProperty C'} {hU : ∀ α, Cosieve (U α)}
  {hU' : ∀ α, Cosieve (U' α)}

def nerveG (m : CH.Mor F F' (RingHom.id R)) (τ : ι' → ι) (hτ : ∀ α T, U' α T → U (τ α) (m.G.obj T)) (p : ℕ) :
    (CH.cech (idxπ U' hU') p).Elements ⥤ (CH.cech (idxπ U hU) p).Elements where
  obj x := (CH.cech (idxπ U hU) p).elementsMk (m.G.obj x.obj)
    ⟨fun k => ⟨τ (x.val.1 k).1, hτ _ _ (x.val.1 k).2⟩, fun _ _ => rfl⟩
  map {_x y} f := ⟨m.G.map f.hom, Subtype.ext (funext fun k => Subtype.ext
    (congrArg (fun z : (CH.cech (idxπ U' hU') p).obj y.obj => τ (z.1 k).1) f.map_val))⟩
  map_id x := Functor.Elements.hom_ext (m.G.map_id x.obj)
  map_comp f g := Functor.Elements.hom_ext (m.G.map_comp f.hom g.hom)

def nerveM (m : CH.Mor F F' (RingHom.id R)) (τ : ι' → ι) (hτ : ∀ α T, U' α T → U (τ α) (m.G.obj T)) (p : ℕ) :
    CH.Mor (CH.elF (CH.cech (idxπ U hU) p) F) (CH.elF (CH.cech (idxπ U' hU') p) F') (RingHom.id R) where
  G := nerveG m τ hτ p
  τ T := m.τ T.obj
  nat φ x := m.nat φ.hom x

theorem nerveM_face (m : CH.Mor F F' (RingHom.id R)) (τ : ι' → ι) (hτ : ∀ α T, U' α T → U (τ α) (m.G.obj T))
    (p q : ℕ) (k : Fin (p + 2)) (x : CH.Cn (CH.elF (CH.cech (idxπ U hU) p) F) q) :
    (CH.elMor (CH.cechMap (idxπ U' hU') k.succAbove) F').pullC q ((nerveM (hU := hU) (hU' := hU') m τ hτ p).pullC q x) =
      (nerveM (hU := hU) (hU' := hU') m τ hτ (p + 1)).pullC q ((CH.elMor (CH.cechMap (idxπ U hU) k.succAbove) F).pullC q x) :=
  rfl

def dblHom (m : CH.Mor F F' (RingHom.id R)) (τ : ι' → ι) (hτ : ∀ α T, U' α T → U (τ α) (m.G.obj T)) :
    DCx.Hom (dbl U hU F) (dbl U' hU' F') (RingHom.id R) where
  f p q := (nerveM m τ hτ p).pullC q
  ch p q x := by
    refine (Cos.d_apply ((CH.cechCos (idxπ U' hU') F').cos q) p _).trans ?_
    refine Eq.trans ?_ (congrArg _ (Cos.d_apply ((CH.cechCos (idxπ U hU) F).cos q) p x).symm)

    rw [map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_zsmul]
    exact congrArg _ (nerveM_face m τ hτ p q k x)
  cv p q x := (nerveM m τ hτ p).d_pullC q x

theorem dblHom_sgl {K L : DCx.{1} R} (φ : DCx.Hom K L (RingHom.id R)) (a b : ℕ) (y : K.X a b) (p q : ℕ) :
    φ.f p q (K.sgl a b y p q) = L.sgl a b (φ.f a b y) p q := by
  by_cases h : p = a ∧ q = b
  · obtain ⟨rfl, rfl⟩ := h
    rw [K.sgl_self, L.sgl_self]
  · rw [K.sgl_ne _ (by omega), L.sgl_ne _ (by omega), map_zero]

end MorDbl

theorem dbl_mor : ∀ {R : Type} [CommRing R] {C C' : Type 1} [Category.{0} C] [Category.{0} C'] (F : C ⥤ ModuleCat.{0} R)
    (F' : C' ⥤ ModuleCat.{0} R) {ι ι' : Type} (U : ι → ObjectProperty C) (U' : ι' → ObjectProperty C') (hU : ∀ α, Cosieve (U α))
    (hU' : ∀ α, Cosieve (U' α)) (m : CH.Mor F F' (RingHom.id R)) (τ : ι' → ι) (hτ : ∀ α T, U' α T → U (τ α) (m.G.obj T)),
    ∃ φ : DCx.Hom (dbl U hU F) (dbl U' hU' F') (RingHom.id R),
      (∀ n (x : CH.H F n), φ.tot.mapH n ((CH.cechAugRow (idxπ U hU) F).edge.mapH n
          ((CH.Mor.restrict F (Functor.Elements.π ((Functor.const C).obj PUnit.{1}))).hom.mapH n x)) =
        (CH.cechAugRow (idxπ U' hU') F').edge.mapH n
          ((CH.Mor.restrict F' (Functor.Elements.π ((Functor.const C').obj PUnit.{1}))).hom.mapH n (m.pull n x))) ∧
      ∀ p q (x : ((dbl U hU F).col p).H q) (i : Fin (p + 1) → ι'),
        (tupM U' hU' F' i).pull q ((φ.col p).mapH q x) =
          (morU m (U := capT U (τ ∘ i)) (U' := capT U' i) fun T hT k => hτ (i k) T (hT k)).pull q ((tupM U hU F (τ ∘ i)).pull q x) := by
  intro R _ C C' _ _ F F' ι ι' U U' hU hU' m τ hτ
  refine ⟨dblHom m τ hτ, fun n x => ?_, fun p q x i => ?_⟩
  · obtain ⟨a, ha, rfl⟩ := (P.cls_surj (CH.cx F) n).1 x
    refine _root_.GlobalTheory.CompanionTheory.LocGrInd.cls_congr (Subtype.ext (funext fun p => funext fun q => ?_)) _ _
    exact dblHom_sgl (dblHom m τ hτ) 0 n _ p q
  · obtain ⟨a, ha, rfl⟩ := (P.cls_surj ((dbl U hU F).col p) q).1 x
    exact _root_.GlobalTheory.CompanionTheory.LocGrInd.cls_congr rfl _ _

end GlobalTheory.CompanionTheory.CechSerre
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechDoubleComplexMap =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassSurjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassSurjective", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

namespace GlobalTheory.CompanionTheory.CechSerre

theorem clsZ_mem_Ff_succ {R : Type} [CommRing R] (K : DCx.{w} R) {n p q : ℕ} (hpq : p + q = n)
    (hS : Subsingleton ((K.col p).H q)) (z : Zf K n p) : clsZ K n p z ∈ Ff K n (p + 1) := by
  have hv : (K.col p).d q (z.1.1.1 p q) = 0 := dv_lead K z.1.1.1 (D_zero K z.1) p q z.2
  have h1 : (K.col p).cls (z.1.1.1 p q) hv = 0 := Subsingleton.elim _ _
  rw [(P.cls_surj _ q).2.1] at h1
  obtain ⟨W, hW, hl⟩ := lower_vert K z.1.1.1 z.1.1.2 hpq z.2 0 0 (fun _ _ _ => rfl) (by simp)
    (by simpa using h1)
  exact lower K z W hW hl

theorem Ff_eq_top_of_acyclic {R : Type} [CommRing R] (K : DCx.{w} R) (a j : ℕ)
    (h : ∀ p q, a < q → Subsingleton ((K.col p).H q)) : ∀ p, p ≤ j → Ff K (a + j) p = ⊤ := by
  intro p
  induction p with
  | zero =>
    intro _
    refine (Submodule.eq_top_iff').2 fun x => ?_
    obtain ⟨z, rfl⟩ := Submodule.mkQ_surjective _ x
    exact ⟨⟨z, fun p q hp => absurd hp (Nat.not_lt_zero p)⟩, rfl⟩
  | succ p ih =>
    intro hp
    refine (Submodule.eq_top_iff').2 fun x => ?_
    have hx : x ∈ Ff K (a + j) p := by rw [ih (by omega)]; exact Submodule.mem_top
    obtain ⟨z, rfl⟩ := hx
    exact clsZ_mem_Ff_succ K (q := a + j - p) (by omega) (h p _ (by omega)) z

theorem clsZ_surjective_of_acyclic : ∀ {R : Type} [CommRing R] (K : DCx.{w} R) (a j : ℕ),
    (∀ p q, a < q → Subsingleton ((K.col p).H q)) →
    Function.Surjective (clsZ K (a + j) j) := by
  intro R _ K a j h
  exact LinearMap.range_eq_top.1 (Ff_eq_top_of_acyclic K a j h j le_rfl)

end GlobalTheory.CompanionTheory.CechSerre
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassSurjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassZeroOfLeadZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassZeroOfLeadZero", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

namespace GlobalTheory.CompanionTheory.RowInj

theorem clsZ_mem_of_leadE {R : Type} [CommRing R] (K : DCx.{w} R) (n a q : ℕ) (haq : a + q = n)
    (z : Zf K n a) (hz : leadE K a q z = 0) : clsZ K n a z ∈ Ff K n (a + 1) := by
  have hT : (Subtype.val (Subtype.val (Subtype.val z)) : (p q : ℕ) → K.X p q) ∈ K.T n :=
    Subtype.prop (Subtype.val (Subtype.val z))
  have h0 : ∀ p r, p < a → (Subtype.val (Subtype.val (Subtype.val z)) : (p q : ℕ) → K.X p q) p r = 0 :=
    fun p r hp => z.2 p r hp
  have hdv : K.dv a q ((Subtype.val (Subtype.val (Subtype.val z)) : (p q : ℕ) → K.X p q) a q) = 0 :=
    dv_lead K _ (D_zero K (Subtype.val z)) a q h0
  have hB : leadC K a q z ∈ (colH K q).B a := by
    have hz' := hz
    rw [leadE_eq] at hz'
    unfold CrystallineSemistableComparison.Cx.cls at hz'
    rw [Submodule.Quotient.mk_eq_zero] at hz'
    exact hz'
  have hL := leadC_eq K a q z hdv
  obtain ⟨v₁, W₁, hW₁, hD, hv⟩ : ∃ (v₁ : K.X a q) (W₁ : (p q : ℕ) → K.X p q),
      (∀ p r, p + r + 1 ≠ n → W₁ p r = 0) ∧ K.D W₁ = K.sgl a q v₁ ∧
      (Subtype.val (Subtype.val (Subtype.val z)) : (p q : ℕ) → K.X p q) a q - v₁ ∈ (K.col a).B q := by
    cases a with
    | zero =>
      refine ⟨0, 0, fun _ _ _ => rfl, by simp, ?_⟩
      have hb : leadC K 0 q z ∈ (⊥ : Submodule R ((colH K q).X 0)) := hB
      rw [Submodule.mem_bot, hL] at hb
      unfold CrystallineSemistableComparison.Cx.cls at hb
      rw [Submodule.Quotient.mk_eq_zero] at hb
      simpa using hb
    | succ a' =>
      have hb : leadC K (a' + 1) q z ∈ LinearMap.range ((colH K q).d a') := hB
      obtain ⟨y, hy⟩ := LinearMap.mem_range.mp hb
      obtain ⟨w, rfl⟩ := Submodule.Quotient.mk_surjective
        (Submodule.comap ((K.col a').Z q).subtype ((K.col a').B q)) y
      have hw : K.dv a' q (w : K.X a' q) = 0 := w.2
      refine ⟨K.dh a' q w, K.sgl a' q w, ?_, ?_, ?_⟩
      · intro p r hpr
        apply K.sgl_ne
        by_cases hp : p = a'
        · right
          intro hr
          apply hpr
          omega
        · left
          exact hp
      · rw [DCx.D_sgl, hw, map_zero, smul_zero, add_zero]
      · rw [hL] at hy
        unfold CrystallineSemistableComparison.Cx.cls at hy
        change (colMap K a').mapH q (Submodule.Quotient.mk w) = _ at hy
        unfold CrystallineSemistableComparison.Cx.Hom.mapH at hy
        rw [Submodule.mapQ_apply, Submodule.Quotient.eq] at hy
        have h2 := Submodule.neg_mem _ hy
        rw [neg_sub] at h2
        exact h2
  obtain ⟨W, hW, hW'⟩ := lower_vert K _ hT haq h0 v₁ W₁ hW₁ hD hv
  exact lower K z W hW hW'

theorem leadE_eq_zero_of_subsingleton {R : Type} [CommRing R] (K : DCx.{w} R) (n a q : ℕ)
    (hs : Subsingleton ((K.col a).H q)) (z : Zf K n a) : leadE K a q z = 0 := by
  have h0 : leadC K a q z = 0 := Subsingleton.elim _ _
  rw [leadE_eq]
  unfold CrystallineSemistableComparison.Cx.cls
  rw [Submodule.Quotient.mk_eq_zero]
  show leadC K a q z ∈ (colH K q).B a
  rw [h0]
  exact Submodule.zero_mem _

theorem Ff_eq_zero {R : Type} [CommRing R] (K : DCx.{w} R) (a j : ℕ)
    (hK : ∀ p q, q < a → Subsingleton ((K.col p).H q)) :
    ∀ k b, j < b → b + k = a + j + 1 → ∀ x ∈ Ff K (a + j) b, x = 0 := by
  intro k
  induction k with
  | zero =>
    intro b _ hbk x hx
    have hb' : b = a + j + 1 := by omega
    subst hb'
    have hs := Ff_top_subsingleton K (a + j)
    have hxx := Subsingleton.elim (⟨x, hx⟩ : ↥(Ff K (a + j) (a + j + 1))) 0
    simpa using congrArg Subtype.val hxx
  | succ k ih =>
    intro b hb hbk x hx
    have hx' : x ∈ LinearMap.range (clsZ K (a + j) b) := hx
    obtain ⟨z, rfl⟩ := LinearMap.mem_range.mp hx'
    have hq : b + (a + j - b) = a + j := by omega
    have hz : leadE K b (a + j - b) z = 0 :=
      leadE_eq_zero_of_subsingleton K (a + j) b (a + j - b) (hK b _ (by omega)) z
    exact ih (b + 1) (by omega) (by omega) _ (clsZ_mem_of_leadE K (a + j) b (a + j - b) hq z hz)

theorem clsZ_eq_zero_of_leadE : ∀ {R : Type} [CommRing R] (K : DCx.{w} R) (a j : ℕ), (∀ p q, q < a → Subsingleton ((K.col p).H q)) →
    ∀ z : Zf K (a + j) j, leadE K j a z = 0 → clsZ K (a + j) j z = 0 := by
  intro R _ K a j hK z hz
  exact Ff_eq_zero K a j hK a (j + 1) (by omega) (by omega) _
    (clsZ_mem_of_leadE K (a + j) j a (by omega) z hz)

end GlobalTheory.CompanionTheory.RowInj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassZeroOfLeadZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadZeroOfClassZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadZeroOfClassZero", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.DcColSurj\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section

namespace GlobalTheory.CompanionTheory.CechSerre.RowKer

variable {R : Type} [CommRing R] (K : DCx.{w} R)

theorem Dv_mem (W : ∀ p q, K.X p q) (p q : ℕ) : K.Dv W p q ∈ (K.col p).B q := by
  cases q with
  | zero =>
    have h : K.Dv W p 0 = 0 := by cases p <;> rfl
    rw [h]
    exact Submodule.zero_mem _
  | succ q => exact ⟨W p q, rfl⟩

theorem dv_low (W x : ∀ p q, K.X p q) (hD : K.D W = x) (k q : ℕ) (h0 : ∀ p q, p < k → W p q = 0)
    (hx : x k (q + 1) = 0) : K.dv k q (W k q) = 0 := by
  have h1 := congrFun (congrFun hD k) (q + 1)
  rw [DCx.D_apply, hx] at h1
  have h2 : K.Dh W k (q + 1) = 0 := by
    cases k with
    | zero => rfl
    | succ k =>
      show K.dh k (q + 1) (W k (q + 1)) = 0
      rw [h0 k _ (by omega), map_zero]
  rw [h2, zero_add] at h1
  exact Auxfb.zsm_cancel k _ h1

theorem push_step (n k q : ℕ) (hkq : k + q + 1 = n) (W : ∀ p q, K.X p q)
    (hs : ∀ p q, p + q + 1 ≠ n → W p q = 0) (h0 : ∀ p q, p < k → W p q = 0)
    (hv : K.dv k q (W k q) = 0) (hH : Subsingleton ((K.col k).H q)) (hq : 0 < q) :
    ∃ W' : ∀ p q, K.X p q, (∀ p q, p + q + 1 ≠ n → W' p q = 0) ∧ K.D W' = K.D W ∧
      ∀ p q, p < k + 1 → W' p q = 0 := by
  have hB : W k q ∈ (K.col k).B q :=
    ((P.cls_surj (K.col k) q).2.1 _ hv).1 (Subsingleton.elim _ _)
  obtain ⟨q, rfl⟩ : ∃ r, q = r + 1 := ⟨q - 1, by omega⟩
  obtain ⟨y, hy⟩ := hB
  have hy' : K.dv k q y = W k (q + 1) := hy
  have hsq : ((-1 : ℤ) ^ k * (-1) ^ k) = 1 := by rw [← mul_pow]; simp
  have hDY : K.D (K.sgl k q ((-1 : ℤ) ^ k • y)) =
      K.sgl (k + 1) q (K.dh k q ((-1 : ℤ) ^ k • y)) + K.sgl k (q + 1) (W k (q + 1)) := by
    rw [K.D_sgl, map_zsmul (K.dv k q), hy', map_zsmul (K.sgl k (q + 1)), smul_smul, hsq, one_smul]
  refine ⟨W - K.D (K.sgl k q ((-1 : ℤ) ^ k • y)), fun p r h => ?_, ?_, fun p r hp => ?_⟩
  · rw [hDY, Pi.sub_apply, Pi.sub_apply, Pi.add_apply, Pi.add_apply, hs p r h,
      K.sgl_ne _ (by omega : p ≠ k + 1 ∨ r ≠ q), K.sgl_ne _ (by omega : p ≠ k ∨ r ≠ q + 1)]
    simp
  · rw [map_sub, K.DD, sub_zero]
  · rw [hDY, Pi.sub_apply, Pi.sub_apply, Pi.add_apply, Pi.add_apply,
      K.sgl_ne _ (by omega : p ≠ k + 1 ∨ r ≠ q), zero_add]
    by_cases h : p = k ∧ r = q + 1
    · obtain ⟨rfl, rfl⟩ := h
      rw [K.sgl_self, sub_self]
    · rw [K.sgl_ne _ (by omega : p ≠ k ∨ r ≠ q + 1), sub_zero]
      by_cases hpk : p < k
      · exact h0 p r hpk
      · exact hs p r (by omega)

theorem push (n a i : ℕ) (hn : n = a + (i + 1)) (W : ∀ p q, K.X p q)
    (hs : ∀ p q, p + q + 1 ≠ n → W p q = 0) (hx : ∀ p q, p < i + 1 → K.D W p q = 0)
    (hac : ∀ p q, a < q → Subsingleton ((K.col p).H q)) (k : ℕ) (hk : k ≤ i) :
    ∃ W' : ∀ p q, K.X p q, (∀ p q, p + q + 1 ≠ n → W' p q = 0) ∧ K.D W' = K.D W ∧
      ∀ p q, p < k → W' p q = 0 := by
  induction k with
  | zero => exact ⟨W, hs, rfl, fun p q hp => absurd hp (Nat.not_lt_zero p)⟩
  | succ k ih =>
    obtain ⟨W₁, hs₁, hD₁, h₁⟩ := ih (by omega)
    have hv : K.dv k (a + i - k) (W₁ k (a + i - k)) = 0 :=
      dv_low K W₁ _ rfl k _ h₁ (by rw [hD₁]; exact hx k _ (by omega))
    obtain ⟨W₂, hs₂, hD₂, h₂⟩ := push_step K n k (a + i - k) (by omega) W₁ hs₁ h₁ hv
      (hac k _ (by omega)) (by omega)
    exact ⟨W₂, hs₂, hD₂.trans hD₁, h₂⟩

theorem exists_prim {n : ℕ} (z : K.tot.Z n) (hz : K.tot.cls z.1 z.2 = 0) :
    ∃ W : ∀ p q, K.X p q, (∀ p q, p + q + 1 ≠ n → W p q = 0) ∧ K.D W = z.1.1 := by
  have hB : z.1 ∈ K.tot.B n := ((P.cls_surj K.tot n).2.1 _ _).1 hz
  cases n with
  | zero =>
    have h : z.1 = 0 := (Submodule.mem_bot R).1 hB
    refine ⟨0, fun _ _ _ => rfl, ?_⟩
    rw [h, map_zero]
    rfl
  | succ m =>
    obtain ⟨u, hu⟩ := hB
    exact ⟨u.1, fun p q h => u.2 p q (by omega), congrArg Subtype.val hu⟩

theorem leadE_eq_zero : ∀ {R : Type} [CommRing R] (K : DCx.{w} R) (a j : ℕ),
    (∀ p q, a < q → Subsingleton ((K.col p).H q)) →
    ∀ z : Zf K (a + j) j, clsZ K (a + j) j z = 0 → leadE K j a z = 0 := by
  intro R _ K a j hac z hz
  obtain ⟨W, hs, hD⟩ := exists_prim K z.1 hz
  have hv : (K.col j).d a (z.1.1.1 j a) = 0 := dv_lead K _ (D_zero K z.1) j a z.2
  suffices h : leadC K j a z ∈ (colH K a).B j by
    rw [leadE_eq]
    exact ((P.cls_surj (colH K a) j).2.1 _ _).2 h
  cases j with
  | zero =>
    have h1 : z.1.1.1 0 a ∈ (K.col 0).B a := by
      rw [← hD, DCx.D_apply]
      have h2 : K.Dh W 0 a = 0 := rfl
      rw [h2, zero_add, pow_zero, one_smul]
      exact Dv_mem K W 0 a
    show _ ∈ (⊥ : Submodule R _)
    rw [Submodule.mem_bot, leadC_eq K 0 a z hv]
    exact ((P.cls_surj _ a).2.1 _ hv).2 h1
  | succ i =>
    obtain ⟨W', -, hD', h0⟩ := push K (a + (i + 1)) a i rfl W hs
      (fun p q hp => by rw [hD]; exact z.2 p q hp) hac i le_rfl
    have hD'' : K.D W' = z.1.1.1 := hD'.trans hD
    have hy : K.dv i a (W' i a) = 0 := dv_low K W' _ hD'' i a h0 (z.2 i _ (by omega))
    have hb : (K.col (i + 1)).d a ((colMap K i).f a (W' i a)) = 0 := by
      rw [(colMap K i).comm]
      exact (congrArg _ hy).trans (map_zero _)
    refine ⟨(K.col i).cls _ hy, ?_⟩
    show (colMap K i).mapH a _ = leadC K (i + 1) a z
    rw [P.mapH_cls _ a _ hy hb, leadC_eq K (i + 1) a z hv]
    refine ((P.cls_surj _ a).2.2.1 _ _ hb hv).2 ?_
    have h2 : z.1.1.1 (i + 1) a = K.dh i a (W' i a) + (-1 : ℤ) ^ (i + 1) • K.Dv W' (i + 1) a := by
      rw [← hD'', DCx.D_apply]
      rfl
    have e : (colMap K i).f a (W' i a) - z.1.1.1 (i + 1) a =
        -((-1 : ℤ) ^ (i + 1) • K.Dv W' (i + 1) a) := by
      rw [h2]
      show K.dh i a (W' i a) - _ = _
      abel
    rw [e]
    exact Submodule.neg_mem _ (zsmul_mem (Dv_mem K W' (i + 1) a) _)

end GlobalTheory.CompanionTheory.CechSerre.RowKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadZeroOfClassZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexDegenerateColumnIso =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexDegenerateColumnIso", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassSurjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexClassZeroOfLeadZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadSurjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadZeroOfClassZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

namespace GlobalTheory.CompanionTheory.CechSerre

theorem row_iso_of_columns : ∀ {R : Type} [CommRing R] (K : DCx.{w} R) (a : ℕ), (∀ p q, q ≠ a → Subsingleton ((K.col p).H q)) →
    ∀ j, ∃ e : K.tot.H (a + j) ≃ₗ[R] (colH K a).H j, ∀ z : Zf K (a + j) j, e (clsZ K (a + j) j z) = leadE K j a z := by
  intro R _ K a hK j
  have hab : ∀ p q, a < q → Subsingleton ((K.col p).H q) := fun p q h => hK p q (ne_of_gt h)
  have hbe : ∀ p q, q < a → Subsingleton ((K.col p).H q) := fun p q h => hK p q (ne_of_lt h)
  have hs := _root_.GlobalTheory.CompanionTheory.CechSerre.clsZ_surjective_of_acyclic K a j hab
  have hk := _root_.GlobalTheory.CompanionTheory.CechSerre.RowKer.leadE_eq_zero K a j hab
  have hi := _root_.GlobalTheory.CompanionTheory.RowInj.clsZ_eq_zero_of_leadE K a j hbe
  have hl := _root_.GlobalTheory.CompanionTheory.CechSerre.leadE_surjective K a j hbe
  let c := clsZ K (a + j) j
  let ψ : Zf K (a + j) j →ₗ[R] (colH K a).H j := leadE K j a
  have hle : LinearMap.ker c ≤ LinearMap.ker ψ := fun z hz => hk z hz
  let L := (LinearMap.ker c).liftQ ψ hle
  have hL : Function.Bijective L := by
    constructor
    · refine (injective_iff_map_eq_zero L).2 fun x hx => ?_
      obtain ⟨z, rfl⟩ := Submodule.mkQ_surjective _ x
      have hz : ψ z = 0 := by simpa [L] using hx
      have hc : c z = 0 := hi z hz
      exact (Submodule.Quotient.mk_eq_zero _).2 hc
    · intro y
      obtain ⟨z, rfl⟩ := hl y
      exact ⟨Submodule.Quotient.mk z, Submodule.liftQ_apply _ _ _⟩
  let e0 := c.quotKerEquivOfSurjective hs
  refine ⟨e0.symm.trans (LinearEquiv.ofBijective L hL), fun z => ?_⟩
  have h0 : e0.symm (c z) = Submodule.Quotient.mk z :=
    e0.symm_apply_eq.2 (LinearMap.quotKerEquivOfSurjective_apply_mk c hs z).symm
  change L (e0.symm (c z)) = ψ z
  rw [h0]
  exact Submodule.liftQ_apply _ _ _

end GlobalTheory.CompanionTheory.CechSerre
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexDegenerateColumnIso =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexMapLeadCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexMapLeadCompat", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section

namespace GlobalTheory.CompanionTheory.CechSerre

theorem leadE_map : ∀ {R : Type} [CommRing R] (K L : DCx.{1} R) (φ : DCx.Hom K L (RingHom.id R)) (a j : ℕ) (z : Zf K (a + j) j),
    ∃ z' : Zf L (a + j) j, clsZ L (a + j) j z' = φ.tot.mapH (a + j) (clsZ K (a + j) j z) ∧
      ∃ (y : (L.col j).H a) (hy : (colH L a).d j y = 0) (y₀ : (K.col j).H a) (hy₀ : (colH K a).d j y₀ = 0),
        leadE K j a z = (colH K a).cls y₀ hy₀ ∧ leadE L j a z' = (colH L a).cls y hy ∧ y = (φ.col j).mapH a y₀ := by
  intro R _ K L φ a j z
  have hc : L.tot.d (a + j) (φ.tot.f (a + j) z.1.1) = 0 := by
    rw [φ.tot.comm, show K.tot.d (a + j) z.1.1 = 0 from z.1.2, map_zero]
  have hvan : ∀ p q, p < j → (φ.tot.f (a + j) z.1.1).1 p q = 0 := by
    intro p q hp
    change φ.f p q (z.1.1.1 p q) = 0
    rw [z.2 p q hp, map_zero]
  let z' : Zf L (a + j) j := ⟨⟨φ.tot.f (a + j) z.1.1, hc⟩, hvan⟩
  have hv : (K.col j).d a (z.1.1.1 j a) = 0 := dv_lead K z.1.1.1 (D_zero K z.1) j a z.2
  have hv' : (L.col j).d a ((φ.col j).f a (z.1.1.1 j a)) = 0 := by
    rw [(φ.col j).comm, hv, map_zero]
  have hy : leadC L j a z' = (φ.col j).mapH a (leadC K j a z) := by
    rw [leadC_eq K j a z hv, P.mapH_cls _ a _ hv hv']
    rfl
  refine ⟨z', ?_, leadC L j a z', leadC_mem L j a z', leadC K j a z, leadC_mem K j a z,
    leadE_eq K j a z, leadE_eq L j a z', hy⟩
  exact (P.mapH_cls φ.tot (a + j) z.1.1 z.1.2 hc).symm

end GlobalTheory.CompanionTheory.CechSerre
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexMapLeadCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeToCohomologyIso =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeToCohomologyIso", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechDoubleComplexMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexDegenerateColumnIso\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexMapLeadCompat\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DoubleComplexLeadSurjective\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.CechDesc\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section

namespace GlobalTheory.CompanionTheory.CechSerre

variable {R : Type} [CommRing R]

def colHMap {K L : DCx.{1} R} (φ : DCx.Hom K L (RingHom.id R)) (q : ℕ) :
    Cx.Hom (colH K q) (colH L q) (RingHom.id R) where
  f p := (φ.col p).mapH q
  comm p x := by
    obtain ⟨a, ha, rfl⟩ := (P.cls_surj (K.col p) q).1 x
    have h1 : (K.col (p + 1)).d q ((colMap K p).f q a) = 0 := by
      rw [(colMap K p).comm, ha, map_zero]
    have h2 : (L.col p).d q ((φ.col p).f q a) = 0 := by
      rw [(φ.col p).comm, ha, map_zero]
    have h3 : (L.col (p + 1)).d q ((colMap L p).f q ((φ.col p).f q a)) = 0 := by
      rw [(colMap L p).comm, h2, map_zero]
    have h4 : (L.col (p + 1)).d q ((φ.col (p + 1)).f q ((colMap K p).f q a)) = 0 := by
      rw [(φ.col (p + 1)).comm, h1, map_zero]
    change (colMap L p).mapH q ((φ.col p).mapH q _) = (φ.col (p + 1)).mapH q ((colMap K p).mapH q _)
    rw [P.mapH_cls _ q a ha h2, P.mapH_cls _ q _ h2 h3, P.mapH_cls _ q a ha h1, P.mapH_cls _ q _ h1 h4]
    have e : (colMap L p).f q ((φ.col p).f q a) = (φ.col (p + 1)).f q ((colMap K p).f q a) := φ.ch p q a
    exact ((P.cls_surj (L.col (p + 1)) q).2.2.1 _ _ h3 h4).2 (by rw [e, sub_self]; exact Submodule.zero_mem _)

variable {C : Type 1} [Category.{0} C]

theorem restr_bij (F : C ⥤ ModuleCat.{0} R) (n : ℕ) :
    Function.Bijective ((CH.Mor.restrict F (CategoryOfElements.π ((Functor.const C).obj PUnit.{1}))).hom.mapH n) := by
  let E : C ⥤ Type := (Functor.const C).obj PUnit.{1}
  let G : C ⥤ E.Elements :=
    { obj := fun T => Functor.elementsMk E T PUnit.unit
      map := fun φ => ⟨φ, rfl⟩ }
  refine P.mapH_bij _ (fun k => ⟨fun x y h => ?_, fun y => ?_⟩) n
  · funext c
    exact congrFun h (c ⋙ G)
  · exact ⟨fun c => y (c ⋙ G), funext fun s => rfl⟩

variable {ι : Type}

def eTot (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α))
    (hc : ∀ T, ∃ α, U α T) (n : ℕ) : CH.H F n ≃ₗ[R] (dbl U hU F).tot.H n :=
  (LinearEquiv.ofBijective _ (restr_bij F n)).trans
    (LinearEquiv.ofBijective _ (P.cech_desc (idxπ U hU) F (fun T x => by
      obtain ⟨α, hα⟩ := hc T
      exact ⟨⟨α, hα⟩, rfl⟩) n))

theorem col_sub (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α)) (a : ℕ)
    (hv : ∀ n (i : Fin (n + 1) → ι) r, r ≠ a → Subsingleton (HU F (capT U i) r)) (p q : ℕ) (hq : q ≠ a) :
    Subsingleton (((dbl U hU F).col p).H q) := by
  have := fun i => hv p i q hq
  exact (colCmp_bij U hU F p q).1.subsingleton

def eRow (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α)) (a : ℕ)
    (hv : ∀ n (i : Fin (n + 1) → ι) r, r ≠ a → Subsingleton (HU F (capT U i) r)) (j : ℕ) :
    (dbl U hU F).tot.H (a + j) ≃ₗ[R] (colH (dbl U hU F) a).H j :=
  Classical.choose (_root_.GlobalTheory.CompanionTheory.CechSerre.row_iso_of_columns (dbl U hU F) a (fun p q hq => col_sub F U hU a hv p q hq) j)

theorem eRow_clsZ (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α)) (a : ℕ)
    (hv : ∀ n (i : Fin (n + 1) → ι) r, r ≠ a → Subsingleton (HU F (capT U i) r)) (j : ℕ)
    (z : Zf (dbl U hU F) (a + j) j) :
    eRow F U hU a hv j (clsZ (dbl U hU F) (a + j) j z) = leadE (dbl U hU F) j a z :=
  Classical.choose_spec (_root_.GlobalTheory.CompanionTheory.CechSerre.row_iso_of_columns (dbl U hU F) a (fun p q hq => col_sub F U hU a hv p q hq) j) z

def eCol (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α)) (a j : ℕ) :
    (colH (dbl U hU F) a).H j ≃ₗ[R] (CrystallineSemistableComparison.Pb.cechH F U a).cx.H j :=
  LinearEquiv.ofBijective _ (P.mapH_bij (colCmp U hU F a) (fun p => colCmp_bij U hU F p a) j)

theorem eCol_cls (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α)) (a j : ℕ)
    (x : (colH (dbl U hU F) a).X j) (hx : (colH (dbl U hU F) a).d j x = 0)
    (h : (CrystallineSemistableComparison.Pb.cechH F U a).cx.d j ((colCmp U hU F a).f j x) = 0) :
    eCol F U hU a j ((colH (dbl U hU F) a).cls x hx) = (CrystallineSemistableComparison.Pb.cechH F U a).cx.cls _ h :=
  P.mapH_cls _ j x hx h

def eDeg (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α))
    (hc : ∀ T, ∃ α, U α T) (a : ℕ)
    (hv : ∀ n (i : Fin (n + 1) → ι) r, r ≠ a → Subsingleton (HU F (capT U i) r)) (j : ℕ) :
    CH.H F (a + j) ≃ₗ[R] (CrystallineSemistableComparison.Pb.cechH F U a).cx.H j :=
  (eTot F U hU hc (a + j)).trans ((eRow F U hU a hv j).trans (eCol F U hU a j))

theorem eDeg_apply (F : C ⥤ ModuleCat.{0} R) (U : ι → ObjectProperty C) (hU : ∀ α, Cosieve (U α))
    (hc : ∀ T, ∃ α, U α T) (a : ℕ)
    (hv : ∀ n (i : Fin (n + 1) → ι) r, r ≠ a → Subsingleton (HU F (capT U i) r)) (j : ℕ) (x : CH.H F (a + j)) :
    eDeg F U hU hc a hv j x = eCol F U hU a j (eRow F U hU a hv j (eTot F U hU hc (a + j) x)) := rfl

theorem cech_deg : ∀ (R : Type) [CommRing R], ∃ e : ∀ {C : Type 1} [Category.{0} C] (F : C ⥤ ModuleCat.{0} R) {ι : Type}
    (U : ι → ObjectProperty C), (∀ α, Cosieve (U α)) → (∀ T, ∃ α, U α T) → ∀ a : ℕ,
    (∀ n (i : Fin (n + 1) → ι) r, r ≠ a → Subsingleton (HU F (capT U i) r)) → ∀ j : ℕ,
      CH.H F (a + j) ≃ₗ[R] (CrystallineSemistableComparison.Pb.cechH F U a).cx.H j,
    ∀ {C C' : Type 1} [Category.{0} C] [Category.{0} C'] (F : C ⥤ ModuleCat.{0} R) (F' : C' ⥤ ModuleCat.{0} R) {ι ι' : Type}
      (U : ι → ObjectProperty C) (U' : ι' → ObjectProperty C') (hU : ∀ α, Cosieve (U α)) (hc : ∀ T, ∃ α, U α T)
      (hU' : ∀ α, Cosieve (U' α)) (hc' : ∀ T, ∃ α, U' α T) (a : ℕ)
      (hv : ∀ n (i : Fin (n + 1) → ι) r, r ≠ a → Subsingleton (HU F (capT U i) r))
      (hv' : ∀ n (i : Fin (n + 1) → ι') r, r ≠ a → Subsingleton (HU F' (capT U' i) r)) (m : CH.Mor F F' (RingHom.id R))
      (τ : ι' → ι) (hτ : ∀ α T, U' α T → U (τ α) (m.G.obj T)) (j : ℕ) (c : (CrystallineSemistableComparison.Pb.cechH F U a).X j)
      (h0 : (CrystallineSemistableComparison.Pb.cechH F U a).cx.d j c = 0)
      (h1 : (CrystallineSemistableComparison.Pb.cechH F' U' a).cx.d j (fun i => (morU m (U := capT U (τ ∘ i)) (U' := capT U' i)
        fun T hT k => hτ (i k) T (hT k)).pull a (c (τ ∘ i))) = 0),
      m.pull (a + j) ((e F U hU hc a hv j).symm ((CrystallineSemistableComparison.Pb.cechH F U a).cx.cls c h0)) =
        (e F' U' hU' hc' a hv' j).symm ((CrystallineSemistableComparison.Pb.cechH F' U' a).cx.cls _ h1) := by
  intro R _
  refine ⟨fun F _ U hU hc a hv j => eDeg F U hU hc a hv j, ?_⟩
  intro C C' _ _ F F' ι ι' U U' hU hc hU' hc' a hv hv' m τ hτ j c h0 h1
  obtain ⟨φ, hφ1, hφ2⟩ := _root_.GlobalTheory.CompanionTheory.CechSerre.dbl_mor F F' U U' hU hU' m τ hτ
  obtain ⟨c₁, rfl⟩ := (colCmp_bij U hU F j a).2 c
  have hd₁ : (colH (dbl U hU F) a).d j c₁ = 0 := by
    refine (colCmp_bij U hU F (j + 1) a).1 ?_
    rw [← (colCmp U hU F a).comm, h0, map_zero]
  obtain ⟨z, hz⟩ := _root_.GlobalTheory.CompanionTheory.CechSerre.leadE_surjective (dbl U hU F) a j
    (fun p q hq => col_sub F U hU a hv p q hq.ne) ((colH (dbl U hU F) a).cls c₁ hd₁)
  have hy : (eDeg F U hU hc a hv j).symm ((CrystallineSemistableComparison.Pb.cechH F U a).cx.cls _ h0) =
      (eTot F U hU hc (a + j)).symm (clsZ (dbl U hU F) (a + j) j z) := by
    rw [LinearEquiv.symm_apply_eq, eDeg_apply, LinearEquiv.apply_symm_apply, eRow_clsZ, hz, eCol_cls F U hU a j c₁ hd₁ h0]
  obtain ⟨z', hz'1, y', hy', y₀, hy₀, e1, e2, e3⟩ := _root_.GlobalTheory.CompanionTheory.CechSerre.leadE_map (dbl U hU F) (dbl U' hU' F') φ a j z
  show m.pull (a + j) ((eDeg F U hU hc a hv j).symm _) = (eDeg F' U' hU' hc' a hv' j).symm _
  rw [hy, LinearEquiv.eq_symm_apply, eDeg_apply]
  have h2 : eTot F' U' hU' hc' (a + j) (m.pull (a + j) ((eTot F U hU hc (a + j)).symm (clsZ (dbl U hU F) (a + j) j z))) =
      clsZ (dbl U' hU' F') (a + j) j z' := by
    rw [hz'1, ← LinearEquiv.apply_symm_apply (eTot F U hU hc (a + j)) (clsZ (dbl U hU F) (a + j) j z)]
    simp only [LinearEquiv.symm_apply_apply]
    exact (hφ1 _ _).symm
  rw [h2, eRow_clsZ, e2]
  have h3 : (colH (dbl U hU F) a).cls y₀ hy₀ = (colH (dbl U hU F) a).cls c₁ hd₁ := e1.symm.trans hz
  have hd₂ : (colH (dbl U' hU' F') a).d j ((colHMap φ a).f j c₁) = 0 := by
    rw [(colHMap φ a).comm, hd₁, map_zero]
  have h4 : (colH (dbl U' hU' F') a).cls y' hy' = (colH (dbl U' hU' F') a).cls _ hd₂ := by
    have hd₃ : (colH (dbl U' hU' F') a).d j ((colHMap φ a).f j y₀) = 0 := by
      rw [(colHMap φ a).comm, hy₀, map_zero]
    have h5 := congrArg ((colHMap φ a).mapH j) h3
    rw [P.mapH_cls _ j _ hy₀ hd₃, P.mapH_cls _ j _ hd₁ hd₂] at h5
    subst e3
    exact h5
  have h6 : (colCmp U' hU' F' a).f j ((colHMap φ a).f j c₁) =
      fun i => (morU m (U := capT U (τ ∘ i)) (U' := capT U' i)
        fun T hT k => hτ (i k) T (hT k)).pull a ((colCmp U hU F a).f j c₁ (τ ∘ i)) := by
    funext i
    exact hφ2 j a c₁ i
  have h7 : (CrystallineSemistableComparison.Pb.cechH F' U' a).cx.d j ((colCmp U' hU' F' a).f j ((colHMap φ a).f j c₁)) = 0 := by
    rw [(colCmp U' hU' F' a).comm, hd₂, map_zero]
  rw [h4, eCol_cls F' U' hU' a j _ hd₂ h7]
  exact ((P.cls_surj (CrystallineSemistableComparison.Pb.cechH F' U' a).cx j).2.2.1 _ _ h7 h1).2 (by rw [h6, sub_self]; exact Submodule.zero_mem _)

end GlobalTheory.CompanionTheory.CechSerre
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeToCohomologyIso =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedIso =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedIso", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob

namespace GlobalTheory.CompanionTheory.CapKC

variable {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

theorem inU_capO {O : Type} [CommRing O] {R : Type} [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ}
    {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} {ι : Type} (U : ι → X.Opens) {n : ℕ}
    (i : Fin n → ι) (T : Thick (nlFun γ p X q κ)) : InU (capO U i) T ↔ ∀ a, InU (U (i a)) T := by
  constructor
  · intro h a x hx
    exact capO_le U i a (h hx)
  · intro h x hx
    let W : X.Opens := ⟨⋂ a, (U (i a) : Set X), isOpen_iInter_of_finite fun a => (U (i a)).isOpen⟩
    have hW : W ≤ capO U i := le_iInf fun a y hy => Set.mem_iInter.1 hy a
    exact hW (Set.mem_iInter.2 fun a => h a hx)

variable (U : Cov q) (a n : ℕ) (i : Fin (n + 1) → U.ι)

def toCap : (KS q (a + 1) {capO U.U i}).FullSubcategory ⥤ (capT (Vk q U a) i).FullSubcategory :=
  (capT (Vk q U a) i).lift ((KC q U a).lift (KS q (a + 1) {capO U.U i}).ι fun T =>
      ⟨T.property.1, U.U (i 0), ⟨i 0, rfl⟩, by
        obtain ⟨_, V, rfl, hV⟩ := T.property
        exact (inU_capO U.U i T.obj).1 hV 0⟩) fun T k => by
    obtain ⟨_, V, rfl, hV⟩ := T.property
    exact (inU_capO U.U i T.obj).1 hV k

def ofCap : (capT (Vk q U a) i).FullSubcategory ⥤ (KS q (a + 1) {capO U.U i}).FullSubcategory :=
  (KS q (a + 1) {capO U.U i}).lift ((capT (Vk q U a) i).ι ⋙ (KC q U a).ι) fun T =>
    ⟨T.obj.property.1, capO U.U i, rfl, (inU_capO U.U i T.obj.obj).2 T.property⟩

def capAdj : toCap q U a n i ⊣ ofCap q U a n i := Adjunction.mkOfHomEquiv
  { homEquiv := fun A B =>
      { toFun := fun g => ObjectProperty.homMk g.hom.hom
        invFun := fun g => ObjectProperty.homMk (ObjectProperty.homMk g.hom)
        left_inv := fun _ => rfl
        right_inv := fun _ => rfl }
    homEquiv_naturality_left_symm := fun _ _ => rfl
    homEquiv_naturality_right := fun _ _ => rfl }

theorem cap_kc : ∀ {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) (a n : ℕ)
    (i : Fin (n + 1) → U.ι) (r : ℕ), Nonempty (HU (Fk q U a) (capT (Vk q U a) i) r ≃+ HQ (KS q (a + 1) {capO U.U i}) (a : ℤ) ((a : ℤ) + 1) r) := by
  intro K _ X q U a n i r
  have hb := CrystallineSemistableComparison.P.adj ((capT (Vk q U a) i).ι ⋙ Fk q U a) (toCap q U a n i) (ofCap q U a n i) (capAdj q U a n i) r
  exact ⟨(LinearEquiv.ofBijective _ hb).toAddEquiv⟩

end GlobalTheory.CompanionTheory.CapKC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedIso =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedVanish =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedVanish", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedIso\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

namespace GlobalTheory.CompanionTheory.CapVan

theorem capO_eq_iInf_image {X : Scheme.{0}} {ι : Type} [DecidableEq ι] [Fintype ι] (V : ι → X.Opens) {m : ℕ}
    (i : Fin m → ι) : capO V i = ⨅ α ∈ Finset.image i Finset.univ, V α := by
  show (⨅ a, V (i a)) = _
  apply le_antisymm
  · refine le_iInf₂ fun α hα => ?_
    obtain ⟨a, -, rfl⟩ := Finset.mem_image.1 hα
    exact iInf_le _ a
  · exact le_iInf fun a => iInf₂_le (i a) (Finset.mem_image_of_mem i (Finset.mem_univ a))

theorem van {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q]
    (U : Cov q) (a n : ℕ) (i : Fin (n + 1) → U.ι) (r : ℕ) (hr : r ≠ a) :
    Subsingleton (HU (Fk q U a) (capT (Vk q U a) i) r) := by
  classical
  obtain ⟨e⟩ := _root_.GlobalTheory.CompanionTheory.CapKC.cap_kc q U a n i r
  have hV : IsAffineOpen (capO U.U i) := by
    rw [capO_eq_iInf_image]
    exact U.inter _ ⟨i 0, Finset.mem_image_of_mem i (Finset.mem_univ 0)⟩
  haveI := CrystallineSemistableComparison.Pb.gr_aff q (capO U.U i) hV (a + 1) a r (Nat.lt_succ_self a) hr
  exact e.injective.subsingleton

end GlobalTheory.CompanionTheory.CapVan
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedVanish =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverStarIsCosieve =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverStarIsCosieve", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

namespace GlobalTheory.CompanionTheory.OmGlob

theorem vk_cosieve {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) (a : ℕ) (α : U.ι) :
    Cosieve (Vk q U a α) :=
  fun _ _ φ h => Site.inU_hom φ.hom h

end GlobalTheory.CompanionTheory.OmGlob
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverStarIsCosieve =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeDegenerationNatural =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeDegenerationNatural", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.PullHEq\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeToCohomologyIso\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverIntersectionGradedVanish\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoverStarIsCosieve\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedRestrictPullBijective\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section
namespace GlobalTheory.CompanionTheory.OmGlobSite

variable {K : Type} [Field K]

theorem vk_cover {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) (a : ℕ) (T : (KC q U a).FullSubcategory) :
    ∃ α, Vk q U a α T := by
  obtain ⟨-, V, ⟨α, rfl⟩, h⟩ := T.property
  exact ⟨α, h⟩

theorem cov_sSup {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) : sSup (Set.range U.U) = ⊤ := by
  rw [sSup_range]
  exact U.cover

def rho {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) (a n : ℕ) :
    HT.Hdg q a n ≃ₗ[K] CH.H (Fk q U a) n :=
  LinearEquiv.ofBijective ((CH.Mor.restrict (HT.grT (smFun X q) a) (KC q U a).ι).pull n)
    (GlobalTheory.CompanionTheory.OmLoc.grT_restrict_bijective q _ (cov_sSup q U) a (a + 1) (Nat.lt_succ_self a) n)

theorem rho_pull {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K))
    (u : X ⟶ Y) (hu : u ≫ p = q) (U : Cov q) (W : Cov p) (a n : ℕ)
    (hG : ∀ T, KC q U a T → KC p W a ((pullM u hu a).G.obj T)) (x : HT.Hdg p a n) :
    rho q U a n (HT.pullH u hu a n x) =
      (morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG).pull n (rho p W a n x) := by
  have h1 := (CrystallineSemistableComparison.P.pull_comp (σ'' := RingHom.id K) (pullM u hu a)
    (CH.Mor.restrict (HT.grT (smFun X q) a) (KC q U a).ι) n x).1
  have h2 := (CrystallineSemistableComparison.P.pull_comp (σ'' := RingHom.id K)
    (CH.Mor.restrict (HT.grT (smFun Y p) a) (KC p W a).ι)
    (morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG) n x).1
  change (CH.Mor.restrict (HT.grT (smFun X q) a) (KC q U a).ι).pull n ((pullM u hu a).pull n x) =
    (morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG).pull n
      ((CH.Mor.restrict (HT.grT (smFun Y p) a) (KC p W a).ι).pull n x)
  rw [← h1, ← h2]
  rfl

theorem glob_site : ∀ (K : Type) [Field K] [CharZero K],
    ∃ e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (U : Cov q) (a j : ℕ),
      HT.Hdg q a (a + j) ≃ₗ[K] (CrystallineSemistableComparison.Pb.cechH (Fk q U a) (Vk q U a) a).cx.H j,
    ∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [Smooth q] [Smooth p]
      (u : X ⟶ Y) (hu : u ≫ p = q) (U : Cov q) (W : Cov p) (τ : U.ι → W.ι) (a : ℕ)
      (hG : ∀ T, KC q U a T → KC p W a ((pullM u hu a).G.obj T))
      (hτ : ∀ α T, Vk q U a α T → Vk p W a (τ α) ((morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG).G.obj T))
      (j : ℕ) (c : (CrystallineSemistableComparison.Pb.cechH (Fk p W a) (Vk p W a) a).X j) (h0 : (CrystallineSemistableComparison.Pb.cechH (Fk p W a) (Vk p W a) a).cx.d j c = 0)
      (h1 : (CrystallineSemistableComparison.Pb.cechH (Fk q U a) (Vk q U a) a).cx.d j (fun i =>
        (morU (morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG) (U := capT (Vk p W a) (τ ∘ i))
          (U' := capT (Vk q U a) i) fun T hT k => hτ (i k) T (hT k)).pull a (c (τ ∘ i))) = 0),
      HT.pullH u hu a (a + j) ((e p W a j).symm ((CrystallineSemistableComparison.Pb.cechH (Fk p W a) (Vk p W a) a).cx.cls c h0)) =
        (e q U a j).symm ((CrystallineSemistableComparison.Pb.cechH (Fk q U a) (Vk q U a) a).cx.cls _ h1) := by
  intro K _ _
  obtain ⟨E, hE⟩ := _root_.GlobalTheory.CompanionTheory.CechSerre.cech_deg K
  refine ⟨fun q _ U a j => (rho q U a (a + j)).trans
      (E (Fk q U a) (Vk q U a) (_root_.GlobalTheory.CompanionTheory.OmGlob.vk_cosieve q U a) (vk_cover q U a) a
        (fun n i r hr => _root_.GlobalTheory.CompanionTheory.CapVan.van q U a n i r hr) j), ?_⟩
  intro X Y q p _ _ u hu U W τ a hG hτ j c h0 h1
  dsimp only
  rw [LinearEquiv.symm_trans_apply, LinearEquiv.symm_trans_apply]
  apply (rho q U a (a + j)).injective
  rw [LinearEquiv.apply_symm_apply, rho_pull q p u hu U W a (a + j) hG, LinearEquiv.apply_symm_apply]
  exact hE _ _ _ _ (_root_.GlobalTheory.CompanionTheory.OmGlob.vk_cosieve p W a) (vk_cover p W a) (_root_.GlobalTheory.CompanionTheory.OmGlob.vk_cosieve q U a) (vk_cover q U a) a
    (fun n i r hr => _root_.GlobalTheory.CompanionTheory.CapVan.van p W a n i r hr) (fun n i r hr => _root_.GlobalTheory.CompanionTheory.CapVan.van q U a n i r hr)
    (morU (pullM u hu a) hG) τ hτ j c h0 h1

end GlobalTheory.CompanionTheory.OmGlobSite
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeDegenerationNatural =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullbackCoverStarCompat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullbackCoverStarCompat", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.PullHEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section

namespace GlobalTheory.CompanionTheory.OmGlobPush

theorem push_kc : ∀ {K : Type} [CommRing K] {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K))
    (u : X ⟶ Y) (hu : u ≫ p = q) (U : Cov q) (W : Cov p) (τ : U.ι → W.ι)
    (hτ : ∀ n (i : Fin (n + 1) → U.ι), capO U.U i ≤ u ⁻¹ᵁ capO W.U (τ ∘ i)) (a : ℕ),
    ∃ hG : ∀ T, KC q U a T → KC p W a ((pullM u hu a).G.obj T),
      ∀ α T, Vk q U a α T → Vk p W a (τ α) ((morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG).G.obj T) := by
  intro K _ X Y q p u hu U W τ hτ a
  have key : ∀ (T : GlobalTheory.LogCris.Thick (CrystallineSemistableComparison.smFun X q)) (α : U.ι),
      CrystallineSemistableComparison.Pb.InU (U.U α) T → CrystallineSemistableComparison.Pb.InU (W.U (τ α)) ((pullM u hu a).G.obj T) := by
    intro T α h
    have h0 : U.U α ≤ u ⁻¹ᵁ W.U (τ α) := by
      have h1 := hτ 0 (fun _ => α)
      simpa [CrystallineSemistableComparison.Pb.capO] using h1
    unfold CrystallineSemistableComparison.Pb.InU at h ⊢
    change ⊤ ≤ (TopologicalSpace.Opens.map (pt T ≫ u).base).obj (W.U (τ α))
    exact h.trans ((TopologicalSpace.Opens.map (pt T).base).monotone h0)
  have ktf : ∀ (T : GlobalTheory.LogCris.Thick (CrystallineSemistableComparison.smFun X q)),
      CrystallineSemistableComparison.Pb.TF 1 (a + 1) T → CrystallineSemistableComparison.Pb.TF 1 (a + 1) ((pullM u hu a).G.obj T) := by
    intro T h
    exact h
  refine ⟨fun T hT => ?_, fun α T hT => ?_⟩
  · obtain ⟨hTF, V, ⟨α, rfl⟩, hV⟩ := hT
    exact ⟨ktf T hTF, W.U (τ α), ⟨τ α, rfl⟩, key T α hV⟩
  · exact key T.obj α hT

end GlobalTheory.CompanionTheory.OmGlobPush
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullbackCoverStarCompat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapMPull =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapMPull", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.PullHEq\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w
noncomputable section
namespace GlobalTheory.CompanionTheory.OmGlobTerm

section Cap
variable {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

theorem inU_mono {V W : X.Opens} (h : V ≤ W) (T : Thick (smFun X q))
    (hT : InU (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) V T) :
    InU (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) W T :=
  fun x hx => h (hT hx)

theorem coe_capO {ι : Type} (U : ι → X.Opens) {n : ℕ} (i : Fin n → ι) :
    ((capO U i : X.Opens) : Set X) = ⋂ k, (U (i k) : Set X) := by
  have h : capO U i = Finset.univ.inf fun k => U (i k) := by
    rw [Finset.inf_univ_eq_iInf]; rfl
  rw [h, TopologicalSpace.Opens.coe_finset_inf]
  ext x
  simp [Finset.inf_eq_iInf]

theorem inU_capO {ι : Type} (U : ι → X.Opens) {n : ℕ} (i : Fin n → ι) (T : Thick (smFun X q)) :
    InU (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (capO U i) T ↔
      ∀ k, InU (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (U (i k)) T := by
  constructor
  · exact fun h k => inU_mono q (capO_le U i k) T h
  · intro h x hx
    have : (pt T x) ∈ ((capO U i : X.Opens) : Set X) := by
      rw [coe_capO]
      exact Set.mem_iInter.2 fun k => h k hx
    exact this

variable (U : Cov q) (a n : ℕ) (i : Fin (n + 1) → U.ι)

theorem kc_of_ks (T : Thick (smFun X q)) (h : KS q (a + 1) {capO U.U i} T) : KC q U a T := by
  obtain ⟨h1, V, rfl, h2⟩ := h
  exact ⟨h1, U.U (i 0), ⟨_, rfl⟩, inU_mono q (capO_le U.U i 0) T h2⟩

theorem ks_of_cap (T : (KC q U a).FullSubcategory) (h : capT (Vk q U a) i T) : KS q (a + 1) {capO U.U i} T.obj :=
  ⟨T.property.1, _, rfl, (inU_capO q U.U i T.obj).2 h⟩

def capG : (KS q (a + 1) {capO U.U i}).FullSubcategory ⥤ (capT (Vk q U a) i).FullSubcategory :=
  (capT (Vk q U a) i).lift ((KC q U a).lift (KS q (a + 1) {capO U.U i}).ι fun T => kc_of_ks q U a n i _ T.property)
    fun T => by
      obtain ⟨h1, V, rfl, h2⟩ := T.property
      exact (inU_capO q U.U i T.obj).1 h2

def capH : (capT (Vk q U a) i).FullSubcategory ⥤ (KS q (a + 1) {capO U.U i}).FullSubcategory :=
  (KS q (a + 1) {capO U.U i}).lift ((capT (Vk q U a) i).ι ⋙ (KC q U a).ι) fun T => ks_of_cap q U a n i T.obj T.property

def capE : (KS q (a + 1) {capO U.U i}).FullSubcategory ≌ (capT (Vk q U a) i).FullSubcategory :=
  CategoryTheory.Equivalence.mk (capG q U a n i) (capH q U a n i)
    (NatIso.ofComponents (fun _ => Iso.refl _) (fun f => by
      simp only [Iso.refl_hom, Category.comp_id, Category.id_comp]; rfl))
    (NatIso.ofComponents (fun _ => Iso.refl _) (fun f => by
      simp only [Iso.refl_hom, Category.comp_id, Category.id_comp]; rfl))

def capM : CH.Mor ((capT (Vk q U a) i).ι ⋙ Fk q U a) ((KS q (a + 1) {capO U.U i}).ι ⋙ HT.grT (smFun X q) a) (RingHom.id K) where
  G := capG q U a n i
  τ _ := LinearMap.id
  nat _ _ := rfl

theorem capM_bij (r : ℕ) : Function.Bijective ((capM q U a n i).pull r) := by
  haveI : (capM q U a n i).G.IsLeftAdjoint := (capE q U a n i).isLeftAdjoint_functor
  exact CrystallineSemistableComparison.P.adj_mor (capM q U a n i) (fun _ => Function.bijective_id) r

end Cap
end GlobalTheory.CompanionTheory.OmGlobTerm

noncomputable section
namespace GlobalTheory.CompanionTheory.OmGlobTerm

section Nat
variable {K : Type} [CommRing K] {X Y : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)}

theorem ks_pull (u : X ⟶ Y) (hu : u ≫ p = q) {V : X.Opens} {W : Y.Opens} (h : V ≤ u ⁻¹ᵁ W) (s a : ℕ) (T : Thick (smFun X q))
    (hT : KS q s {V} T) : KS p s {W} ((pullM u hu a).G.obj T) := by
  obtain ⟨h1, V', rfl, h2⟩ := hT
  exact ⟨h1, W, rfl, fun x hx => h (h2 hx)⟩

theorem capM_res (U : Cov q) (a m n : ℕ) (i : Fin (n + 1) → U.ι) (θ : Fin (m + 1) → Fin (n + 1))
    (x : HU (Fk q U a) (capT (Vk q U a) (i ∘ θ)) a) :
    (capM q U a n i).pull a ((resU (Fk q U a) (U := capT (Vk q U a) (i ∘ θ)) (V := capT (Vk q U a) i) fun T hT k => hT (θ k)).pull a x) =
      (resU (HT.grT (smFun X q) a) (U := KS q (a + 1) {capO U.U (i ∘ θ)}) (V := KS q (a + 1) {capO U.U i}) (by
        rintro T ⟨h1, V', rfl, h2⟩
        exact ⟨h1, _, rfl, inU_mono q (capO_comp U.U i θ) T h2⟩)).pull a ((capM q U a m (i ∘ θ)).pull a x) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rfl

theorem capM_pull (u : X ⟶ Y) (hu : u ≫ p = q) (U : Cov q) (W : Cov p) (τ : U.ι → W.ι) (a : ℕ)
    (hG : ∀ T, KC q U a T → KC p W a ((pullM u hu a).G.obj T)) (n : ℕ) (i : Fin (n + 1) → U.ι)
    (hG' : ∀ T, capT (Vk q U a) i T →
      capT (Vk p W a) (τ ∘ i) ((morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG).G.obj T))
    (h : ∀ T, KS q (a + 1) {capO U.U i} T → KS p (a + 1) {capO W.U (τ ∘ i)} ((pullM u hu a).G.obj T))
    (x : HU (Fk p W a) (capT (Vk p W a) (τ ∘ i)) a) :
    (capM q U a n i).pull a ((morU (morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG) (U := capT (Vk p W a) (τ ∘ i))
        (U' := capT (Vk q U a) i) hG').pull a x) =
      (morU (pullM u hu a) (U := KS p (a + 1) {capO W.U (τ ∘ i)}) (U' := KS q (a + 1) {capO U.U i}) h).pull a
        ((capM p W a n (τ ∘ i)).pull a x) := by
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rfl

end Nat
end GlobalTheory.CompanionTheory.OmGlobTerm

noncomputable section
namespace GlobalTheory.CompanionTheory.OmGlobTerm

section Id
variable {K : Type} [CommRing K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

def idT (hu : 𝟙 X ≫ q = q) (T : Thick (smFun X q)) : T ⟶ (smMor (𝟙 X) hu).functor.obj T :=
  mkH (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (T := T) (T' := (smMor (𝟙 X) hu).functor.obj T) (RingHom.id _) (fun _ => rfl) ⟨Ideal.map_le_iff_le_comap.2 (fun x hx => hx), fun x hx => rfl⟩ (fun x hx => hx) (by
    have e : CommRingCat.ofHom (Ideal.quotientMap ((smMor (𝟙 X) hu).functor.obj T).J (RingHom.id T.B) (fun x hx => hx)) = 𝟙 (CommRingCat.of (T.B ⧸ T.J)) := by
      refine CommRingCat.hom_ext (Ideal.Quotient.ringHom_ext (RingHom.ext fun x => rfl))
    refine Eq.trans (congrArg (fun f => (ConcreteCategory.hom ((nlFun (dividedPowersBot K) 0 X q (Ideal.Quotient.mk ⊥)).Pt.map f)) T.y) e) ?_
    refine Eq.trans (congrFun (congrArg (fun f => (ConcreteCategory.hom f : _ → _)) ((nlFun (dividedPowersBot K) 0 X q (Ideal.Quotient.mk ⊥)).Pt.map_id _)) T.y) ?_
    exact Subtype.ext (Prod.ext rfl (Category.comp_id _).symm))

theorem morU_id (hu : 𝟙 X ≫ q = q) (a : ℕ) (Q Q' : ObjectProperty (Thick (smFun X q)))
    (h : ∀ T, Q' T → Q ((pullM (𝟙 X) hu a).G.obj T)) (hle : Q' ≤ Q) (n : ℕ) (x) :
    (morU (pullM (𝟙 X) hu a) (U := Q) (U' := Q') h).pull n x = (resU (HT.grT (smFun X q) a) hle).pull n x := by
  symm
  refine CrystallineSemistableComparison.P.prism (resU (HT.grT (smFun X q) a) hle) (morU (pullM (𝟙 X) hu a) (U := Q) (U' := Q') h)
    { app := fun T => ObjectProperty.homMk (idT hu T.obj)
      naturality := fun T T' f => ?_ } ?_ n x
  · refine ObjectProperty.hom_ext _ ?_
    exact hom_ext (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) rfl
  · intro T x
    obtain ⟨y, hy, rfl⟩ := HT.sq_surj _ _ x
    rfl

end Id
end GlobalTheory.CompanionTheory.OmGlobTerm
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapMPull =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FormsRestrictOpenBijective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FormsRestrictOpenBijective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DpZeroRight\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.IsCompl\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section
namespace GlobalTheory.CompanionTheory.FormOpen

variable {K : Type} [CommRing K]

theorem mOm_bijective {A B : Type} [CommRing A] [CommRing B] [Algebra K A] [Algebra K B]
    {φ : A →+* B} (hφ : SemiHom (RingHom.id K) φ) (hb : Function.Bijective φ) (j : ℕ) :
    Function.Bijective (hφ.mOm j) := by
  let e : A ≃+* B := RingEquiv.ofBijective φ hb
  have he : ∀ a, e a = φ a := fun _ ↦ rfl
  have hψ : SemiHom (RingHom.id K) (e.symm : B →+* A) := fun r b ↦ by
    apply e.injective
    change e (e.symm (r • b)) = e (RingHom.id K r • e.symm b)
    rw [RingEquiv.apply_symm_apply, he, RingHom.id_apply, show φ (r • e.symm b) = _ from hφ r _,
      ← he, RingEquiv.apply_symm_apply, RingHom.id_apply]
  have hA : SemiHom (RingHom.id K) (RingHom.id A) := fun _ _ ↦ rfl
  have hB : SemiHom (RingHom.id K) (RingHom.id B) := fun _ _ ↦ rfl
  have l : Function.LeftInverse (hψ.mOm j) (hφ.mOm j) := fun x ↦
    (SemiHom.mOm_mOm (ρ := RingHom.id K) hφ hψ hA (fun a ↦ e.symm_apply_apply a) x).trans
      (hA.mOm_id (fun _ ↦ rfl) x)
  have r : Function.RightInverse (hψ.mOm j) (hφ.mOm j) := fun x ↦
    (SemiHom.mOm_mOm (ρ := RingHom.id K) hψ hφ hB (fun a ↦ e.apply_symm_apply a) x).trans
      (hB.mOm_id (fun _ ↦ rfl) x)
  exact ⟨l.injective, r.surjective⟩

variable {X : Scheme.{0}}

theorem app_map_eq (V : X.Opens) (h : (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V) :
    V.ι.app V ≫ V.toScheme.presheaf.map (homOfLE h).op = V.topIso.inv := by
  simp only [Scheme.Opens.topIso, Scheme.Opens.ι_app, Scheme.Opens.toScheme_presheaf_map,
    Iso.op_inv, Functor.mapIso_inv, eqToIso.inv, ← Functor.map_comp, ← op_comp]
  rfl

theorem res_appSec_bijective (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens)
    (h : (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V) :
    Function.Bijective ((Sec.res (V.ι ≫ q) h : Sec (V.ι ≫ q) (V.ι ⁻¹ᵁ V) →+* Sec (V.ι ≫ q) ⊤).comp
      (appSec q (V.ι ≫ q) V.ι V)) := by
  have e : ((Sec.res (V.ι ≫ q) h : Sec (V.ι ≫ q) (V.ι ⁻¹ᵁ V) →+* Sec (V.ι ≫ q) ⊤).comp (appSec q (V.ι ≫ q) V.ι V) :
      Sec q V → Sec (V.ι ≫ q) ⊤) = V.topIso.inv.hom := by
    rw [← app_map_eq V h]; rfl
  rw [e]
  exact ConcreteCategory.bijective_of_isIso V.topIso.inv

theorem formRes_formPull_open_bijective {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (a : ℕ) :
    Function.Bijective fun x : OmU q V a => formRes (V.ι ≫ q) (show (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V by simp) a
      (formPull (f := V.ι) rfl V a x) := by
  have h : (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V := by simp
  have hγ : SemiHom (RingHom.id K) ((Sec.res (V.ι ≫ q) h : Sec (V.ι ≫ q) (V.ι ⁻¹ᵁ V) →+* Sec (V.ι ≫ q) ⊤).comp
      (appSec q (V.ι ≫ q) V.ι V)) :=
    (semiHom_appSec rfl V).comp (SemiHom.of_algHom (Sec.res (V.ι ≫ q) h))
  have e : (fun x : OmU q V a => formRes (V.ι ≫ q) h a (formPull (f := V.ι) rfl V a x)) =
      hγ.mOm a := funext fun x ↦
    SemiHom.mOm_mOm (semiHom_appSec rfl V) (SemiHom.of_algHom (Sec.res (V.ι ≫ q) h)) hγ
      (fun _ ↦ rfl) x
  rw [e]
  exact mOm_bijective hγ (res_appSec_bijective q V h) a

end GlobalTheory.CompanionTheory.FormOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FormsRestrictOpenBijective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RestrictGradedPullNatural =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RestrictGradedPullNatural", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.PullHEq\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.OneFormMapEqKaehlerDifferentialMap\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SerreClassOfCechSpectralSequence\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

set_option linter.unusedVariables false

noncomputable section

namespace GlobalTheory.CompanionTheory.OpenThick

variable {K : Type} [CommRing K]

section Pt

variable {X Y : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)}

abbrev Pt (q : X ⟶ Spec (CommRingCat.of K)) (B : Type) [CommRing B] : Type :=
  PtOver X q (Ideal.Quotient.mk (⊥ : Ideal K)) B

theorem pt_ext (V : X.Opens) {B : Type} [CommRing B] {y y' : Pt (V.ι ≫ q) B} (h1 : y.1.1 = y'.1.1)
    (h2 : y.1.2 ≫ V.ι = y'.1.2 ≫ V.ι) : y = y' :=
  Subtype.ext (Prod.ext h1 ((cancel_mono V.ι).1 h2))

def liftPt (V : X.Opens) {B : Type} [CommRing B] (y : Pt q B) (h : ⊤ ≤ y.1.2 ⁻¹ᵁ V) : Pt (V.ι ≫ q) B :=
  ⟨(y.1.1, IsOpenImmersion.lift V.ι y.1.2 (by
      rw [Scheme.Opens.range_ι]
      rintro _ ⟨x, rfl⟩
      exact h (Set.mem_univ x))), by
    rw [← Category.assoc, IsOpenImmersion.lift_fac]
    exact y.2⟩

theorem liftPt_fac (V : X.Opens) {B : Type} [CommRing B] (y : Pt q B) (h : ⊤ ≤ y.1.2 ⁻¹ᵁ V) :
    (liftPt V y h).1.2 ≫ V.ι = y.1.2 := IsOpenImmersion.lift_fac _ _ _

theorem liftPt_map (V : X.Opens) {B B' : CommRingCat.{0}} (φ : B ⟶ B') (y : Pt q B) (y' : Pt q B')
    (h : ⊤ ≤ y.1.2 ⁻¹ᵁ V) (h' : ⊤ ≤ y'.1.2 ⁻¹ᵁ V)
    (e : (ptFun X q (Ideal.Quotient.mk (⊥ : Ideal K))).map φ y = y') :
    (ptFun V.toScheme (V.ι ≫ q) (Ideal.Quotient.mk (⊥ : Ideal K))).map φ (liftPt V y h) = liftPt V y' h' := by
  subst e
  refine pt_ext V rfl ?_
  change (Spec.map φ ≫ (liftPt V y h).1.2) ≫ V.ι = (liftPt V _ h').1.2 ≫ V.ι
  rw [Category.assoc, liftPt_fac, liftPt_fac]
  rfl

theorem pt_id {Z : Scheme.{0}} {r : Z ⟶ Spec (CommRingCat.of K)} {B : Type} [CommRing B] (J : Ideal B) (hJ)
    (y : Pt r (B ⧸ J)) :
    (ptFun Z r (Ideal.Quotient.mk (⊥ : Ideal K))).map
      (CommRingCat.ofHom (Ideal.quotientMap J (RingHom.id B) hJ)) y = y := by
  have e : Ideal.quotientMap J (RingHom.id B) hJ = RingHom.id (B ⧸ J) := by
    ext
    rfl
  rw [e]
  exact congrFun (congrArg (fun t => (ConcreteCategory.hom t : _ → _))
    ((ptFun Z r (Ideal.Quotient.mk (⊥ : Ideal K))).map_id (CommRingCat.of (B ⧸ J)))) y

end Pt

section Thickenings

variable {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

abbrev InV (V : X.Opens) (T : Thick (smFun X q)) : Prop :=
  InU (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) V T

def smH {T T' : Thick (smFun X q)} (φ : T.B →+* T'.B) (comm : ∀ r, φ (T.i r) = T'.i r)
    (dp : IsDPMorphism T.δ T'.δ φ) (hle : T.J ≤ T'.J.comap φ)
    (hpt : (smFun X q).Pt.map (CommRingCat.ofHom (Ideal.quotientMap T'.J φ hle)) T.y = T'.y) : T ⟶ T' :=
  mkH (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (T := T) (T' := T') φ comm dp hle hpt

theorem sm_ext {T T' : Thick (smFun X q)} {f g : T ⟶ T'} (h : f.φ = g.φ) : f = g :=
  hom_ext (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (T := T) (T' := T') h

def liftT (V : X.Opens) (T : Thick (smFun X q)) (h : InV V T) : Thick (smFun V.toScheme (V.ι ≫ q)) :=
  mkT (γ := dividedPowersBot K) (p := 0) (q := V.ι ≫ q) (κ := Ideal.Quotient.mk ⊥) T.B T.i T.J T.δ T.adm T.compat
    (liftPt V T.y h) T.w

theorem inV_of {V : X.Opens} {s : ℕ} {T : Thick (smFun X q)} (h : KS q s {V} T) : InV V T := by
  obtain ⟨-, V', hV', hT⟩ := h
  obtain rfl := Set.mem_singleton_iff.1 hV'
  exact hT


variable (q) in
def mF (V : X.Opens) (s : ℕ) : (KS q s {V}).FullSubcategory ⥤ (KS (V.ι ≫ q) s {⊤}).FullSubcategory where
  obj T := ⟨liftT V T.obj (inV_of T.property), T.property.1, ⊤, rfl, fun _ _ => trivial⟩
  map {T T'} f := ObjectProperty.homMk (smH (T := liftT V T.obj (inV_of T.property)) (T' := liftT V T'.obj (inV_of T'.property))
    f.hom.φ f.hom.comm f.hom.dp f.hom.hle (liftPt_map V (CommRingCat.ofHom (Ideal.quotientMap T'.obj.J f.hom.φ f.hom.hle)) T.obj.y T'.obj.y (inV_of T.property) (inV_of T'.property) f.hom.pt))
  map_id _ := ObjectProperty.hom_ext _ (sm_ext rfl)
  map_comp _ _ := ObjectProperty.hom_ext _ (sm_ext rfl)


variable (q) in
def mV (V : X.Opens) (s a : ℕ) :
    CH.Mor ((KS (V.ι ≫ q) s {⊤}).ι ⋙ HT.grT (smFun V.toScheme (V.ι ≫ q)) a)
      ((KS q s {V}).ι ⋙ HT.grT (smFun X q) a) (RingHom.id K) where
  G := mF q V s
  τ T := LinearMap.id
  nat _ _ := rfl

end Thickenings

section Equivalence

variable {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem liftPt_unmap (V : X.Opens) {B B' : CommRingCat.{0}} (φ : B ⟶ B') (y : Pt q B) (y' : Pt q B')
    (h : ⊤ ≤ y.1.2 ⁻¹ᵁ V) (h' : ⊤ ≤ y'.1.2 ⁻¹ᵁ V)
    (e : (ptFun V.toScheme (V.ι ≫ q) (Ideal.Quotient.mk (⊥ : Ideal K))).map φ (liftPt V y h) = liftPt V y' h') :
    (ptFun X q (Ideal.Quotient.mk (⊥ : Ideal K))).map φ y = y' := by
  refine Subtype.ext (Prod.ext (congrArg (fun z : Pt (V.ι ≫ q) B' => z.1.1) e) ?_)
  have e2 := congrArg (fun z : Pt (V.ι ≫ q) B' => z.1.2 ≫ V.ι) e
  change (Spec.map φ ≫ (liftPt V y h).1.2) ≫ V.ι = (liftPt V y' h').1.2 ≫ V.ι at e2
  rw [Category.assoc, liftPt_fac, liftPt_fac] at e2
  exact e2

instance mF_faithful (V : X.Opens) (s : ℕ) : (mF q V s).Faithful where
  map_injective {T T'} f g e :=
    ObjectProperty.hom_ext _ (sm_ext (T := T.obj) (T' := T'.obj) (congrArg (fun t => t.hom.φ) e))

instance mF_full (V : X.Opens) (s : ℕ) : (mF q V s).Full where
  map_surjective {T T'} g :=
    ⟨ObjectProperty.homMk (smH (T := T.obj) (T' := T'.obj) g.hom.φ g.hom.comm g.hom.dp g.hom.hle
      (liftPt_unmap V (CommRingCat.ofHom (Ideal.quotientMap T'.obj.J g.hom.φ g.hom.hle)) T.obj.y T'.obj.y
        (inV_of T.property) (inV_of T'.property) g.hom.pt)),
      ObjectProperty.hom_ext _ (sm_ext rfl)⟩

theorem top_le_comp (V : X.Opens) {Z : Scheme.{0}} (z : Z ⟶ V.toScheme) : ⊤ ≤ (z ≫ V.ι) ⁻¹ᵁ V := by
  intro x _
  change (z ≫ V.ι) x ∈ V
  rw [Scheme.Hom.comp_apply]
  have hx : V.ι (z x) ∈ (V : Set X) := Scheme.Opens.range_ι V ▸ ⟨z x, rfl⟩
  exact hx

def pushPt (V : X.Opens) {B : Type} [CommRing B] (y : Pt (V.ι ≫ q) B) : Pt q B :=
  ⟨(y.1.1, y.1.2 ≫ V.ι), by
    rw [Category.assoc]
    exact y.2⟩

theorem lift_push (V : X.Opens) {B : Type} [CommRing B] (y : Pt (V.ι ≫ q) B) (h : ⊤ ≤ (pushPt V y).1.2 ⁻¹ᵁ V) :
    liftPt V (pushPt V y) h = y :=
  pt_ext V rfl (liftPt_fac V (pushPt V y) h)

def downT (V : X.Opens) (T : Thick (smFun V.toScheme (V.ι ≫ q))) : Thick (smFun X q) :=
  mkT (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) T.B T.i T.J T.δ T.adm T.compat
    (pushPt V T.y) T.w

theorem down_inV (V : X.Opens) (T : Thick (smFun V.toScheme (V.ι ≫ q))) : InV V (downT V T) :=
  top_le_comp V _

def dnHom (V : X.Opens) (T : Thick (smFun V.toScheme (V.ι ≫ q))) (h : InV V (downT V T)) :
    liftT V (downT V T) h ⟶ T :=
  smH (T := liftT V (downT V T) h) (T' := T) (RingHom.id T.B) (fun _ => rfl) (DPMorphism.id T.δ).isDPMorphism
    (fun _ hx => hx) ((pt_id T.J _ _).trans (lift_push V T.y h))

def dnInv (V : X.Opens) (T : Thick (smFun V.toScheme (V.ι ≫ q))) (h : InV V (downT V T)) :
    T ⟶ liftT V (downT V T) h :=
  smH (T := T) (T' := liftT V (downT V T) h) (RingHom.id T.B) (fun _ => rfl) (DPMorphism.id T.δ).isDPMorphism
    (fun _ hx => hx) ((pt_id T.J _ _).trans (lift_push V T.y h).symm)

theorem ks_of {V : X.Opens} {s : ℕ} {T : Thick (smFun X q)} (h1 : TF 1 s T) (h2 : InV V T) : KS q s {V} T :=
  ⟨h1, V, rfl, h2⟩

def pushK (V : X.Opens) (s : ℕ) (T : (KS (V.ι ≫ q) s {⊤}).FullSubcategory) : (KS q s {V}).FullSubcategory :=
  ⟨downT V T.obj, ks_of T.property.1 (down_inV V T.obj)⟩

def pushIso (V : X.Opens) (s : ℕ) (T : (KS (V.ι ≫ q) s {⊤}).FullSubcategory) : (mF q V s).obj (pushK V s T) ≅ T where
  hom := ObjectProperty.homMk (dnHom V T.obj (inV_of (pushK V s T).property))
  inv := ObjectProperty.homMk (dnInv V T.obj (inV_of (pushK V s T).property))
  hom_inv_id := ObjectProperty.hom_ext _ (sm_ext rfl)
  inv_hom_id := ObjectProperty.hom_ext _ (sm_ext rfl)

instance mF_essSurj (V : X.Opens) (s : ℕ) : (mF q V s).EssSurj where
  mem_essImage T := ⟨pushK V s T, ⟨pushIso V s T⟩⟩

instance mF_equiv (V : X.Opens) (s : ℕ) : (mF q V s).IsEquivalence := { }

theorem mV_bij (V : X.Opens) (s a n : ℕ) : Function.Bijective ((mV q V s a).pull n) :=
  haveI : (mV q V s a).G.IsLeftAdjoint := inferInstanceAs (mF q V s).IsLeftAdjoint
  P.adj_mor (mV q V s a) (fun _ => Function.bijective_id) n

end Equivalence

section Natural

variable {X Y : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)}
  (u : X ⟶ Y) (hu : u ≫ p = q) (V : X.Opens) (W : Y.Opens) (h : V ≤ u ⁻¹ᵁ W)
  (hh : u.resLE W V h ≫ (W.ι ≫ p) = V.ι ≫ q)

theorem push_lift {B : CommRingCat.{0}} (y : Pt q B) (hV : ⊤ ≤ y.1.2 ⁻¹ᵁ V)
    (hW : ⊤ ≤ ((smMor u hu).pt.app B y : Pt p B).1.2 ⁻¹ᵁ W) :
    ((smMor (u.resLE W V h) hh).pt.app B (liftPt V y hV) : Pt (W.ι ≫ p) B) =
      liftPt W ((smMor u hu).pt.app B y) hW := by
  refine pt_ext W rfl ?_
  change ((liftPt V y hV).1.2 ≫ u.resLE W V h) ≫ W.ι = _
  rw [Category.assoc, Scheme.Hom.resLE_comp_ι, ← Category.assoc, liftPt_fac, liftPt_fac]
  rfl

variable (s a : ℕ) (hG : ∀ T, KS q s {V} T → KS p s {W} ((pullM u hu a).G.obj T))
  (hG' : ∀ T, KS (V.ι ≫ q) s {⊤} T → KS (W.ι ≫ p) s {⊤} ((pullM (u.resLE W V h) hh a).G.obj T))

def etaN : (mV q V s a).G ⋙ (morU (pullM (u.resLE W V h) hh a) (U := KS (W.ι ≫ p) s {⊤}) (U' := KS (V.ι ≫ q) s {⊤}) hG').G ⟶
    (morU (pullM u hu a) (U := KS p s {W}) (U' := KS q s {V}) hG).G ⋙ (mV p W s a).G where
  app T := ObjectProperty.homMk (smH (RingHom.id _) (fun _ => rfl) (DPMorphism.id T.obj.δ).isDPMorphism (fun _ hx => hx)
    ((pt_id T.obj.J _ _).trans (push_lift u hu V W h hh T.obj.y (inV_of T.property) (inV_of (hG _ T.property)))))
  naturality _ _ _ := ObjectProperty.hom_ext _ (sm_ext rfl)

theorem mV_nat (n : ℕ) (x) :
    (mV q V s a).pull n ((morU (pullM (u.resLE W V h) hh a) (U := KS (W.ι ≫ p) s {⊤}) (U' := KS (V.ι ≫ q) s {⊤}) hG').pull n x) =
      (morU (pullM u hu a) (U := KS p s {W}) (U' := KS q s {V}) hG).pull n ((mV p W s a).pull n x) := by
  have e1 := (P.pull_comp (σ'' := RingHom.id K) (morU (pullM (u.resLE W V h) hh a) (U := KS (W.ι ≫ p) s {⊤})
    (U' := KS (V.ι ≫ q) s {⊤}) hG') (mV q V s a) n x).1
  have e2 := (P.pull_comp (σ'' := RingHom.id K) (mV p W s a) (morU (pullM u hu a) (U := KS p s {W}) (U' := KS q s {V}) hG) n x).1
  refine e1.symm.trans (Eq.trans ?_ e2)
  refine P.prism _ _ (etaN u hu V W h hh s a hG hG') (fun T z => ?_) n x
  obtain ⟨z, hz⟩ := z
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective z
  rfl

end Natural

theorem open_thick : ∀ (K : Type) [CommRing K], ∃ m : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (s a : ℕ),
    CH.Mor ((KS (V.ι ≫ q) s {⊤}).ι ⋙ HT.grT (smFun V.toScheme (V.ι ≫ q)) a) ((KS q s {V}).ι ⋙ HT.grT (smFun X q) a)
      (RingHom.id K),
    (∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (s a n : ℕ), Function.Bijective ((m q V s a).pull n)) ∧
    ∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) (u : X ⟶ Y) (hu : u ≫ p = q)
      (V : X.Opens) (W : Y.Opens) (h : V ≤ u ⁻¹ᵁ W) (hh : u.resLE W V h ≫ (W.ι ≫ p) = V.ι ≫ q) (s a : ℕ)
      (hG : ∀ T, KS q s {V} T → KS p s {W} ((pullM u hu a).G.obj T))
      (hG' : ∀ T, KS (V.ι ≫ q) s {⊤} T → KS (W.ι ≫ p) s {⊤} ((pullM (u.resLE W V h) hh a).G.obj T)) (n : ℕ) x,
      (m q V s a).pull n ((morU (pullM (u.resLE W V h) hh a) (U := KS (W.ι ≫ p) s {⊤}) (U' := KS (V.ι ≫ q) s {⊤}) hG').pull n x) =
        (morU (pullM u hu a) (U := KS p s {W}) (U' := KS q s {V}) hG).pull n ((m p W s a).pull n x) :=
  fun K _ => ⟨@fun X q V s a => mV q V s a, @fun X q V s a n => mV_bij V s a n,
    @fun X Y q p u hu V W h hh s a hG hG' n x => mV_nat u hu V W h hh s a hG hG' n x⟩

end GlobalTheory.CompanionTheory.OpenThick
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RestrictGradedPullNatural =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.TermAff =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.TermAff", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FV\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CoeEqAlgebraMapZeroEquiv\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.PullHEq\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FormsRestrictOpenBijective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsDlogFirstChernClass\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedRestrictPullBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RestrictGradedPullNatural\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.AffineHodgeIsomorphisms.HodgeAffineIsoType\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w

noncomputable section

namespace CrystallineSemistableComparison.Om.Nt2.TermAff

theorem mOm_four {K A B₁ B₂ B₃ B₄ C₁ C₂ C₃ : Type} [CommRing K] [CommRing A] [Algebra K A]
    [CommRing B₁] [Algebra K B₁] [CommRing B₂] [Algebra K B₂] [CommRing B₃] [Algebra K B₃] [CommRing B₄] [Algebra K B₄]
    [CommRing C₁] [Algebra K C₁] [CommRing C₂] [Algebra K C₂] [CommRing C₃] [Algebra K C₃]
    {α₁ : A →+* B₁} {α₂ : B₁ →+* B₂} {α₃ : B₂ →+* B₃} {α₄ : B₃ →+* B₄}
    {β₁ : A →+* C₁} {β₂ : C₁ →+* C₂} {β₃ : C₂ →+* C₃} {β₄ : C₃ →+* B₄}
    (h₁ : SemiHom (RingHom.id K) α₁) (h₂ : SemiHom (RingHom.id K) α₂) (h₃ : SemiHom (RingHom.id K) α₃) (h₄ : SemiHom (RingHom.id K) α₄)
    (k₁ : SemiHom (RingHom.id K) β₁) (k₂ : SemiHom (RingHom.id K) β₂) (k₃ : SemiHom (RingHom.id K) β₃) (k₄ : SemiHom (RingHom.id K) β₄)
    (e : ∀ b, α₄ (α₃ (α₂ (α₁ b))) = β₄ (β₃ (β₂ (β₁ b)))) {j : ℕ} (x : Om K A j) :
    h₄.mOm j (h₃.mOm j (h₂.mOm j (h₁.mOm j x))) = k₄.mOm j (k₃.mOm j (k₂.mOm j (k₁.mOm j x))) := by
  have a₂ : SemiHom (RingHom.id K) (α₂.comp α₁) := h₁.comp h₂
  have a₃ : SemiHom (RingHom.id K) (α₃.comp (α₂.comp α₁)) := a₂.comp h₃
  have a₄ : SemiHom (RingHom.id K) (α₄.comp (α₃.comp (α₂.comp α₁))) := a₃.comp h₄
  have b₂ : SemiHom (RingHom.id K) (β₂.comp β₁) := k₁.comp k₂
  have b₃ : SemiHom (RingHom.id K) (β₃.comp (β₂.comp β₁)) := b₂.comp k₃
  have b₄ : SemiHom (RingHom.id K) (β₄.comp (β₃.comp (β₂.comp β₁))) := b₃.comp k₄
  have e' : α₄.comp (α₃.comp (α₂.comp α₁)) = β₄.comp (β₃.comp (β₂.comp β₁)) := RingHom.ext e
  rw [SemiHom.mOm_mOm h₁ h₂ a₂ (fun _ => rfl), SemiHom.mOm_mOm a₂ h₃ a₃ (fun _ => rfl), SemiHom.mOm_mOm a₃ h₄ a₄ (fun _ => rfl),
    SemiHom.mOm_mOm k₁ k₂ b₂ (fun _ => rfl), SemiHom.mOm_mOm b₂ k₃ b₃ (fun _ => rfl), SemiHom.mOm_mOm b₃ k₄ b₄ (fun _ => rfl)]
  have key : ∀ (γ δ : A →+* B₄) (hγ : SemiHom (RingHom.id K) γ) (hδ : SemiHom (RingHom.id K) δ), γ = δ → hγ.mOm j x = hδ.mOm j x := by
    intro γ δ hγ hδ h
    subst h
    rfl
  exact key _ _ a₄ b₄ e'

section Forms

variable {K : Type} [CommRing K] {X Y : Scheme.{0}}

def fb (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (a : ℕ) : OmU q V a →ₗ[K] OmU (V.ι ≫ q) ⊤ a :=
  (formRes (V.ι ≫ q) (show (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V by simp) a).comp (formPull (f := V.ι) rfl V a)

theorem fb_bij (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (a : ℕ) : Function.Bijective (fb q V a) :=
  _root_.GlobalTheory.CompanionTheory.FormOpen.formRes_formPull_open_bijective q V a

theorem over_res {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)} {u : X ⟶ Y} (hu : u ≫ p = q)
    {V : X.Opens} {W : Y.Opens} (h : V ≤ u ⁻¹ᵁ W) : u.resLE W V h ≫ (W.ι ≫ p) = V.ι ≫ q := by
  rw [← Category.assoc, Scheme.Hom.resLE_comp_ι, Category.assoc, hu]

theorem fb_nat {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)} {u : X ⟶ Y} (hu : u ≫ p = q)
    {V : X.Opens} {W : Y.Opens} (h : V ≤ u ⁻¹ᵁ W) (a : ℕ) (ω : OmU p W a) :
    fb q V a (formRes q h a (formPull hu W a ω)) =
      formRes (V.ι ≫ q) (show (⊤ : V.toScheme.Opens) ≤ (u.resLE W V h) ⁻¹ᵁ ⊤ by simp) a
        (formPull (over_res hu h) ⊤ a (fb p W a ω)) := by
  refine mOm_four (semiHom_appSec hu W) (SemiHom.of_algHom (Sec.res q h)) (semiHom_appSec rfl V)
    (SemiHom.of_algHom (Sec.res (V.ι ≫ q) _))
    (semiHom_appSec rfl W) (SemiHom.of_algHom (Sec.res (W.ι ≫ p) _)) (semiHom_appSec (over_res hu h) ⊤)
    (SemiHom.of_algHom (Sec.res (V.ι ≫ q) _)) (fun b => ?_) ω
  have hT1 : (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V := by simp
  have hT2 : (⊤ : W.toScheme.Opens) ≤ W.ι ⁻¹ᵁ W := by simp
  have hT3 : (⊤ : V.toScheme.Opens) ≤ (u.resLE W V h) ⁻¹ᵁ ⊤ := by simp
  have key : ∀ (f g : V.toScheme ⟶ Y) (hfg : f = g) (e : ⊤ ≤ f ⁻¹ᵁ W) (e' : ⊤ ≤ g ⁻¹ᵁ W), f.appLE W ⊤ e = g.appLE W ⊤ e' := by
    intro f g hfg e e'
    subst hfg
    rfl
  have e1 := Scheme.Hom.appLE_comp_appLE V.ι u W V ⊤ h hT1
  have e2 := Scheme.Hom.appLE_comp_appLE (u.resLE W V h) W.ι W ⊤ ⊤ hT2 hT3
  have e3 := key _ _ (Scheme.Hom.resLE_comp_ι u h).symm
    (hT1.trans (V.ι.preimage_mono h)) ((hT3.trans ((u.resLE W V h).preimage_mono hT2)))
  exact congrArg (fun φ => φ.hom b) (e1.trans (e3.trans e2.symm))

end Forms

section Main

variable {K : Type} [Field K] {X Y : Scheme.{0}}

abbrev trM (q : X ⟶ Spec (CommRingCat.of K)) (s a : ℕ) :
    CH.Mor (HT.grT (smFun X q) a) ((KS q s {⊤}).ι ⋙ HT.grT (smFun X q) a) (RingHom.id K) :=
  CH.Mor.restrict (HT.grT (smFun X q) a) (KS q s {⊤}).ι

theorem trM_bij (q : X ⟶ Spec (CommRingCat.of K)) (s a : ℕ) (h : a < s) (n : ℕ) : Function.Bijective ((trM q s a).pull n) :=
  _root_.GlobalTheory.CompanionTheory.OmLoc.grT_restrict_bijective q {⊤} (by simp) a s h n

theorem ks_top {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)} (r : X ⟶ Y) (hr : r ≫ p = q) (s a : ℕ)
    (T) (hT : KS q s {⊤} T) : KS p s {⊤} ((pullM r hr a).G.obj T) :=
  ⟨hT.1, ⊤, rfl, le_of_eq rfl⟩

theorem trM_nat {q : X ⟶ Spec (CommRingCat.of K)} {p : Y ⟶ Spec (CommRingCat.of K)} (r : X ⟶ Y) (hr : r ≫ p = q) (s a n : ℕ)
    (hG : ∀ T, KS q s {⊤} T → KS p s {⊤} ((pullM r hr a).G.obj T)) (z : CH.H (HT.grT (smFun Y p) a) n) :
    (morU (pullM r hr a) (U := KS p s {⊤}) (U' := KS q s {⊤}) hG).pull n ((trM p s a).pull n z) =
      (trM q s a).pull n ((pullM r hr a).pull n z) := by
  have h1 := (P.pull_comp (σ'' := RingHom.id K) (trM p s a) (morU (pullM r hr a) (U := KS p s {⊤}) (U' := KS q s {⊤}) hG) n z).1
  have h2 := (P.pull_comp (σ'' := RingHom.id K) (pullM r hr a) (trM q s a) n z).1
  rw [← h1, ← h2]
  rfl

def tq (e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a : ℕ), HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a)
    (m : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (s a : ℕ),
      CH.Mor ((KS (V.ι ≫ q) s {⊤}).ι ⋙ HT.grT (smFun V.toScheme (V.ι ≫ q)) a) ((KS q s {V}).ι ⋙ HT.grT (smFun X q) a)
        (RingHom.id K))
    (hm : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (s a n : ℕ), Function.Bijective ((m q V s a).pull n))
    (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (V : X.Opens) (hV : IsAffineOpen V) (a : ℕ) :
    CH.H (FV q V a) a ≃ₗ[K] OmU q V a :=
  haveI : IsAffine V.toScheme := hV
  (LinearEquiv.ofBijective ((m q V (a + 1) a).pull a) (hm q V (a + 1) a a)).symm ≪≫ₗ
    (LinearEquiv.ofBijective ((trM (V.ι ≫ q) (a + 1) a).pull a) (trM_bij _ _ _ (Nat.lt_succ_self a) a)).symm ≪≫ₗ
      e (V.ι ≫ q) a ≪≫ₗ (LinearEquiv.ofBijective (fb q V a) (fb_bij q V a)).symm

theorem tq_spec (e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [IsAffine X] [Smooth q] (a : ℕ), HT.Hdg q a a ≃ₗ[K] OmU q ⊤ a)
    (m : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (s a : ℕ),
      CH.Mor ((KS (V.ι ≫ q) s {⊤}).ι ⋙ HT.grT (smFun V.toScheme (V.ι ≫ q)) a) ((KS q s {V}).ι ⋙ HT.grT (smFun X q) a)
        (RingHom.id K))
    (hm : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (V : X.Opens) (s a n : ℕ), Function.Bijective ((m q V s a).pull n))
    (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (V : X.Opens) (hV : IsAffineOpen V) (a : ℕ) (z : HT.Hdg (V.ι ≫ q) a a) :
    haveI : IsAffine V.toScheme := hV
    fb q V a (tq e m hm q V hV a ((m q V (a + 1) a).pull a ((trM (V.ι ≫ q) (a + 1) a).pull a z))) = e (V.ι ≫ q) a z := by
  haveI : IsAffine V.toScheme := hV
  have h1 := (LinearEquiv.ofBijective ((m q V (a + 1) a).pull a) (hm q V (a + 1) a a)).symm_apply_apply
    ((trM (V.ι ≫ q) (a + 1) a).pull a z)
  have h2 := (LinearEquiv.ofBijective ((trM (V.ι ≫ q) (a + 1) a).pull a) (trM_bij _ _ _ (Nat.lt_succ_self a) a)).symm_apply_apply z
  have h4 : tq e m hm q V hV a ((m q V (a + 1) a).pull a ((trM (V.ι ≫ q) (a + 1) a).pull a z)) =
      (LinearEquiv.ofBijective (fb q V a) (fb_bij q V a)).symm (e (V.ι ≫ q) a z) := by
    refine congrArg (fun w => (LinearEquiv.ofBijective (fb q V a) (fb_bij q V a)).symm (e (V.ι ≫ q) a w)) ?_
    exact (congrArg (LinearEquiv.ofBijective ((trM (V.ι ≫ q) (a + 1) a).pull a) (trM_bij _ _ _ (Nat.lt_succ_self a) a)).symm h1).trans h2
  rw [h4]
  exact (LinearEquiv.ofBijective (fb q V a) (fb_bij q V a)).apply_symm_apply _

end Main



theorem term_aff : ∀ (K : Type) [Field K] [CharZero K],
    ∃ t : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (V : X.Opens), IsAffineOpen V → ∀ a : ℕ,
      CH.H (FV q V a) a ≃ₗ[K] OmU q V a,
    ∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [Smooth q] [Smooth p]
      (u : X ⟶ Y) (hu : u ≫ p = q) (V : X.Opens) (W : Y.Opens) (hV : IsAffineOpen V) (hW : IsAffineOpen W) (h : V ≤ u ⁻¹ᵁ W)
      (a : ℕ) (hG : ∀ T, KS q (a + 1) {V} T → KS p (a + 1) {W} ((pullM u hu a).G.obj T)) (x : CH.H (FV p W a) a),
      t q V hV a ((morU (pullM u hu a) (U := KS p (a + 1) {W}) (U' := KS q (a + 1) {V}) hG).pull a x) =
        formRes q h a (formPull hu W a (t p W hW a x)) := by
  intro K _ _
  obtain ⟨e, ε, -, he, -, -⟩ := CrystallineSemistableComparison.Om.L2.hodge_affine_iso_sign K
  obtain ⟨m, hm, hn⟩ := _root_.GlobalTheory.CompanionTheory.OpenThick.open_thick K
  refine ⟨fun q _ V hV a => tq (@e) (@m) (@hm) q V hV a, ?_⟩
  intro X Y q p _ _ u hu V W hV hW h a hG x
  haveI : IsAffine V.toScheme := hV
  haveI : IsAffine W.toScheme := hW
  obtain ⟨y, rfl⟩ := (hm p W (a + 1) a a).2 x
  obtain ⟨z, rfl⟩ := (trM_bij (W.ι ≫ p) (a + 1) a (Nat.lt_succ_self a) a).2 y
  have hh := over_res hu h
  have hG' := ks_top (u.resLE W V h) hh (a + 1) a
  refine (fb_bij q V a).1 ?_
  have s1 := hn q p u hu V W h hh (a + 1) a hG hG' a ((trM (W.ι ≫ p) (a + 1) a).pull a z)
  have s2 := trM_nat (u.resLE W V h) hh (a + 1) a a hG' z
  have s3 := tq_spec (@e) (@m) (@hm) q V hV a ((pullM (u.resLE W V h) hh a).pull a z)
  have s4 := tq_spec (@e) (@m) (@hm) p W hW a z
  have s5 := fb_nat hu h a (tq (@e) (@m) (@hm) p W hW a ((m p W (a + 1) a).pull a ((trM (W.ι ≫ p) (a + 1) a).pull a z)))
  have s6 := he _ _ (u.resLE W V h) hh a z
  have s7 := s1.symm.trans (congrArg ((m q V (a + 1) a).pull a) s2)
  have s8 := (congrArg (fun w => fb q V a (tq (@e) (@m) (@hm) q V hV a w)) s7).trans s3
  have s9 := s5.trans (congrArg (fun w => formRes (V.ι ≫ q) (show (⊤ : V.toScheme.Opens) ≤ (u.resLE W V h) ⁻¹ᵁ ⊤ by simp) a
        (formPull (over_res hu h) ⊤ a w)) s4)
  exact s8.trans (s6.trans s9.symm)

end CrystallineSemistableComparison.Om.Nt2.TermAff
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.TermAff =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.AffineOpenCaps.GlobTerm =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.AffineOpenCaps.GlobTerm", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FV\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapMPull\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.OmegaPullId\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.CoverRefinementHodge.TermAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob GlobalTheory.CompanionTheory.CechSerre
universe w
noncomputable section
namespace GlobalTheory.CompanionTheory.OmGlobTerm.AssemblyHe1

theorem capO_isAffineOpen {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q)
    {n : ℕ} (i : Fin (n + 1) → U.ι) : IsAffineOpen (capO U.U i) := by
  classical
  have h := U.inter (Finset.image i Finset.univ) ⟨i 0, Finset.mem_image_of_mem i (Finset.mem_univ 0)⟩
  have e : (⨅ α ∈ Finset.image i Finset.univ, U.U α) = capO U.U i := by
    refine le_antisymm ?_ ?_
    · exact le_iInf fun k => iInf₂_le (i k) (Finset.mem_image_of_mem i (Finset.mem_univ k))
    · refine le_iInf₂ fun α hα => ?_
      obtain ⟨k, -, rfl⟩ := Finset.mem_image.1 hα
      exact capO_le U.U i k
  rwa [e] at h

def capEquiv {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) (a n : ℕ)
    (i : Fin (n + 1) → U.ι) : HU (Fk q U a) (capT (Vk q U a) i) a ≃ₗ[K] CH.H (FV q (capO U.U i) a) a :=
  LinearEquiv.ofBijective ((capM q U a n i).pull a) (capM_bij q U a n i a)

theorem term : ∀ (K : Type) [Field K] [CharZero K],
    ∃ t : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (U : Cov q) (a n : ℕ) (i : Fin (n + 1) → U.ι),
      HU (Fk q U a) (capT (Vk q U a) i) a ≃ₗ[K] OmU q (capO U.U i) a,
    (∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (U : Cov q) (a m n : ℕ) (i : Fin (n + 1) → U.ι)
      (θ : Fin (m + 1) → Fin (n + 1)) (x : HU (Fk q U a) (capT (Vk q U a) (i ∘ θ)) a),
      t q U a n i ((resU (Fk q U a) (U := capT (Vk q U a) (i ∘ θ)) (V := capT (Vk q U a) i) fun T hT k => hT (θ k)).pull a x) =
        formRes q (capO_comp U.U i θ) a (t q U a m (i ∘ θ) x)) ∧
    ∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [Smooth q] [Smooth p]
      (u : X ⟶ Y) (hu : u ≫ p = q) (U : Cov q) (W : Cov p) (τ : U.ι → W.ι)
      (hτ : ∀ n (i : Fin (n + 1) → U.ι), capO U.U i ≤ u ⁻¹ᵁ capO W.U (τ ∘ i)) (a : ℕ)
      (hG : ∀ T, KC q U a T → KC p W a ((pullM u hu a).G.obj T)) (n : ℕ) (i : Fin (n + 1) → U.ι)
      (hG' : ∀ T, capT (Vk q U a) i T →
        capT (Vk p W a) (τ ∘ i) ((morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG).G.obj T))
      (x : HU (Fk p W a) (capT (Vk p W a) (τ ∘ i)) a),
      t q U a n i ((morU (morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG) (U := capT (Vk p W a) (τ ∘ i))
        (U' := capT (Vk q U a) i) hG').pull a x) =
        formRes q (hτ n i) a (formPull hu (capO W.U (τ ∘ i)) a (t p W a n (τ ∘ i) x)) := by
  intro K _ _
  obtain ⟨t0, h0⟩ := CrystallineSemistableComparison.Om.Nt2.TermAff.term_aff K
  refine ⟨fun {X} q _ U a n i => (capEquiv q U a n i).trans (t0 q (capO U.U i) (capO_isAffineOpen q U i) a), ?_, ?_⟩
  · intro X q _ U a m n i θ x
    have hle : KS q (a + 1) {capO U.U i} ≤ KS q (a + 1) {capO U.U (i ∘ θ)} := by
      rintro T ⟨h1, V', rfl, h2⟩
      exact ⟨h1, _, rfl, inU_mono q (capO_comp U.U i θ) T h2⟩
    have hG : ∀ T, KS q (a + 1) {capO U.U i} T → KS q (a + 1) {capO U.U (i ∘ θ)} ((pullM (𝟙 X) (Category.id_comp q) a).G.obj T) :=
      fun T hT => ks_pull (𝟙 X) (Category.id_comp q) (capO_comp U.U i θ) (a + 1) a T hT
    have e1 := capM_res U a m n i θ x
    have e2 := morU_id (Category.id_comp q) a _ _ hG hle a ((capM q U a m (i ∘ θ)).pull a x)
    have e3 := h0 q q (𝟙 X) (Category.id_comp q) (capO U.U i) (capO U.U (i ∘ θ)) (capO_isAffineOpen q U i)
      (capO_isAffineOpen q U (i ∘ θ)) (capO_comp U.U i θ) a hG ((capM q U a m (i ∘ θ)).pull a x)
    have e4 := formPull_id q a (capO U.U (i ∘ θ)) (t0 q (capO U.U (i ∘ θ)) (capO_isAffineOpen q U (i ∘ θ)) a ((capM q U a m (i ∘ θ)).pull a x))
    change t0 q (capO U.U i) _ a ((capM q U a n i).pull a _) = formRes q _ a (t0 q (capO U.U (i ∘ θ)) _ a ((capM q U a m (i ∘ θ)).pull a x))
    rw [e1, ← e2, e3]
    exact congrArg (formRes q (capO_comp U.U i θ) a) e4
  · intro X Y q p _ _ u hu U W τ hτ a hG n i hG' x
    have h : ∀ T, KS q (a + 1) {capO U.U i} T → KS p (a + 1) {capO W.U (τ ∘ i)} ((pullM u hu a).G.obj T) :=
      fun T hT => ks_pull u hu (hτ n i) (a + 1) a T hT
    have e1 := capM_pull u hu U W τ a hG n i hG' h x
    have e3 := h0 q p u hu (capO U.U i) (capO W.U (τ ∘ i)) (capO_isAffineOpen q U i)
      (capO_isAffineOpen p W (τ ∘ i)) (hτ n i) a h ((capM p W a n (τ ∘ i)).pull a x)
    change t0 q (capO U.U i) _ a ((capM q U a n i).pull a _) = formRes q _ a (formPull hu _ a (t0 p (capO W.U (τ ∘ i)) _ a ((capM p W a n (τ ∘ i)).pull a x)))
    rw [e1, e3]

end GlobalTheory.CompanionTheory.OmGlobTerm.AssemblyHe1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.AffineOpenCaps.GlobTerm =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.HodgeCechComparison =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.HodgeCechComparison", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.FormCos\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.PullHEq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechHodgeDegenerationNatural\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullbackCoverStarCompat\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.AffineOpenCaps.GlobTerm\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.HodgeC\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.CechDR GlobalTheory.HodgeCoh CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Om CrystallineSemistableComparison.Om.Glob

namespace CrystallineSemistableComparison.Om.GlobPf2

section
variable {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (U : Cov q) (a : ℕ)
  (t : ∀ n (i : Fin (n + 1) → U.ι), HU (Fk q U a) (capT (Vk q U a) i) a ≃ₗ[K] OmU q (capO U.U i) a)

def tH (ht : ∀ m n (i : Fin (n + 1) → U.ι) (θ : Fin (m + 1) → Fin (n + 1)) (x : HU (Fk q U a) (capT (Vk q U a) (i ∘ θ)) a),
      t n i ((resU (Fk q U a) (U := capT (Vk q U a) (i ∘ θ)) (V := capT (Vk q U a) i) fun T hT k => hT (θ k)).pull a x) =
        formRes q (capO_comp U.U i θ) a (t m (i ∘ θ) x)) :
    Cx.Hom (cechH (Fk q U a) (Vk q U a) a).cx (formCos q U.U a).cx (RingHom.id K) where
  f n := LinearMap.pi fun i => (t n i).toLinearMap.comp (LinearMap.proj i)
  comm n x := by
    funext i
    let e := (t (n + 1) i).toAddEquiv.toAddMonoidHom
    have key : ∀ k : Fin (n + 2), (formCos q U.U a).δ n k (fun i' => t n i' (x i')) i =
        e ((cechH (Fk q U a) (Vk q U a) a).δ n k x i) := fun k =>
      (ht n (n + 1) i k.succAbove (x (i ∘ k.succAbove))).symm
    change (formCos q U.U a).d n (fun i' => t n i' (x i')) i =
      e ((cechH (Fk q U a) (Vk q U a) a).d n x i)
    rw [Cos.d_apply, Cos.d_apply, Finset.sum_apply, Finset.sum_apply, map_sum e]
    exact Finset.sum_congr rfl fun k _ => by
      rw [Pi.smul_apply, Pi.smul_apply, e.map_zsmul, key k]

theorem tH_bij (ht) (n : ℕ) : Function.Bijective ((tH q U a t ht).f n) := by
  refine ⟨fun x y h => funext fun i => (t n i).injective (congrFun h i), fun y => ⟨fun i => (t n i).symm (y i), ?_⟩⟩
  funext i
  exact (t n i).apply_symm_apply (y i)

end

theorem cls_congr0 {R : Type} [CommRing R] (L : Cx.{0} R) (n : ℕ) (x y : L.X n) (hx : L.d n x = 0) (hy : L.d n y = 0)
    (h : x = y) : L.cls x hx = L.cls y hy := by
  subst h; rfl

theorem glob_iso : ∀ (K : Type) [Field K] [CharZero K],
    ∃ e : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (U : Cov q) (a j : ℕ),
      HT.Hdg q a (a + j) ≃ₗ[K] (formCos q U.U a).cx.H j,
    ∀ {X Y : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (p : Y ⟶ Spec (CommRingCat.of K)) [Smooth q] [Smooth p]
      (u : X ⟶ Y) (hu : u ≫ p = q) (U : Cov q) (W : Cov p) (τ : U.ι → W.ι)
      (hτ : ∀ n (i : Fin (n + 1) → U.ι), capO U.U i ≤ u ⁻¹ᵁ capO W.U (τ ∘ i)) (a j : ℕ) (c : (formCos p W.U a).X j)
      (h0 : (formCos p W.U a).cx.d j c = 0)
      (h1 : (formCos q U.U a).cx.d j (fun i => formRes q (hτ j i) a (formPull hu (capO W.U (τ ∘ i)) a (c (τ ∘ i)))) = 0),
      HT.pullH u hu a (a + j) ((e p W a j).symm ((formCos p W.U a).cx.cls c h0)) =
        (e q U a j).symm ((formCos q U.U a).cx.cls _ h1) := by
  intro K _ _
  obtain ⟨e1, he1⟩ := _root_.GlobalTheory.CompanionTheory.OmGlobSite.glob_site K
  obtain ⟨t, htr, htp⟩ := GlobalTheory.CompanionTheory.OmGlobTerm.AssemblyHe1.term K
  let φ : ∀ {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q] (U : Cov q) (a : ℕ),
      Cx.Hom (cechH (Fk q U a) (Vk q U a) a).cx (formCos q U.U a).cx (RingHom.id K) := fun q _ U a =>
    tH q U a (t q U a) fun m n i θ x => htr q U a m n i θ x
  refine ⟨fun q _ U a j => (e1 q U a j).trans
    (LinearEquiv.ofBijective ((φ q U a).mapH j) (P.mapH_bij (φ q U a) (fun n => tH_bij q U a (t q U a) (fun m n i θ x => htr q U a m n i θ x) n) j)), ?_⟩
  intro X Y q p _ _ u hu U W τ hτ a j c h0 h1
  obtain ⟨hG, hτ'⟩ := _root_.GlobalTheory.CompanionTheory.OmGlobPush.push_kc q p u hu U W τ hτ a

  let c₀ : (cechH (Fk p W a) (Vk p W a) a).X j := fun i => (t p W a j i).symm (c i)
  have hc₀ : (φ p W a).f j c₀ = c := funext fun i => (t p W a j i).apply_symm_apply (c i)
  have h0' : (cechH (Fk p W a) (Vk p W a) a).cx.d j c₀ = 0 := by
    refine (tH_bij p W a (t p W a) (fun m n i θ x => htr p W a m n i θ x) (j + 1)).1 ?_
    rw [map_zero, ← (φ p W a).comm, hc₀, h0]

  let c₁ : (cechH (Fk q U a) (Vk q U a) a).X j := fun i =>
    (morU (morU (pullM u hu a) (U := KC p W a) (U' := KC q U a) hG) (U := capT (Vk p W a) (τ ∘ i))
      (U' := capT (Vk q U a) i) fun T hT k => hτ' (i k) T (hT k)).pull a (c₀ (τ ∘ i))
  have hc₁ : (φ q U a).f j c₁ = fun i => formRes q (hτ j i) a (formPull hu (capO W.U (τ ∘ i)) a (c (τ ∘ i))) := by
    funext i
    refine (htp q p u hu U W τ hτ a hG j i (fun T hT k => hτ' (i k) T (hT k)) (c₀ (τ ∘ i))).trans ?_
    exact congrArg _ (congrArg _ ((t p W a j (τ ∘ i)).apply_symm_apply (c (τ ∘ i))))
  have h1' : (cechH (Fk q U a) (Vk q U a) a).cx.d j c₁ = 0 := by
    refine (tH_bij q U a (t q U a) (fun m n i θ x => htr q U a m n i θ x) (j + 1)).1 ?_
    rw [map_zero, ← (φ q U a).comm, hc₁, h1]
  have key := he1 q p u hu U W τ a hG hτ' j c₀ h0' h1'
  have eY : (LinearEquiv.ofBijective ((φ p W a).mapH j) (P.mapH_bij (φ p W a) (fun n => tH_bij p W a (t p W a) (fun m n i θ x => htr p W a m n i θ x) n) j)).symm
      ((formCos p W.U a).cx.cls c h0) = (cechH (Fk p W a) (Vk p W a) a).cx.cls c₀ h0' := by
    rw [LinearEquiv.symm_apply_eq, LinearEquiv.ofBijective_apply, P.mapH_cls (φ p W a) j c₀ h0' (by rw [hc₀]; exact h0)]
    exact cls_congr0 _ j _ _ _ _ hc₀.symm
  have eX : (LinearEquiv.ofBijective ((φ q U a).mapH j) (P.mapH_bij (φ q U a) (fun n => tH_bij q U a (t q U a) (fun m n i θ x => htr q U a m n i θ x) n) j)).symm
      ((formCos q U.U a).cx.cls _ h1) = (cechH (Fk q U a) (Vk q U a) a).cx.cls c₁ h1' := by
    rw [LinearEquiv.symm_apply_eq, LinearEquiv.ofBijective_apply, P.mapH_cls (φ q U a) j c₁ h1' (by rw [hc₁]; exact h1)]
    exact cls_congr0 _ j _ _ _ _ hc₁.symm
  rw [LinearEquiv.symm_trans_apply, LinearEquiv.symm_trans_apply, eY, eX]
  exact key

end CrystallineSemistableComparison.Om.GlobPf2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.DifferentialFormsCech.GlobalDifferentialForms.HodgeCechComparison =====

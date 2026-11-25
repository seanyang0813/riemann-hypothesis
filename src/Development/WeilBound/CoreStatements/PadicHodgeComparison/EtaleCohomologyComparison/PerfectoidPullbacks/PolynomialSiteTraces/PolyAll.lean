module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap
public import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerPolynomialFiltration
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeExpansion
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeUniversal
import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsDividedPowersAug

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeFiltration, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatCompEnvelopeAlgebraMap, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyAll

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeFiltration =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeFiltration", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerPolynomialFiltration\nimport Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.ExistsDividedPowersAug\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Site

namespace GlobalTheory.CompanionTheory.PDCrit

theorem repr_sum {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) (b : ℕ →₀ B) :
    (pq B).e.repr (b.sum fun k c => algebraMap B (pq B).P c * (eta δ).dpow k ((pq B).e 1)) = b := by
  have hs := _root_.CrystallineSemistableComparison.Pb.Site.eta_std δ
  have h1 : (b.sum fun k c => algebraMap B (pq B).P c * (eta δ).dpow k ((pq B).e 1)) =
      Finsupp.linearCombination B (pq B).e b := by
    rw [Finsupp.linearCombination_apply]
    refine Finsupp.sum_congr fun k _ => ?_
    rw [hs.var k, Algebra.smul_def]
  rw [h1, (pq B).e.repr_linearCombination]

theorem mem_span_iff {B : Type} [CommRing B] (c : B) (z : (pq B).P) :
    z ∈ Ideal.span {algebraMap B (pq B).P c} ↔ ∀ k, (pq B).e.repr z k ∈ Ideal.span {c} := by
  constructor
  · intro hz k
    obtain ⟨w, rfl⟩ := Ideal.mem_span_singleton'.1 hz
    rw [mul_comm, ← Algebra.smul_def, map_smul, Finsupp.smul_apply, smul_eq_mul]
    exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self c)
  · intro h
    choose d hd using fun k => Ideal.mem_span_singleton'.1 (h k)
    rw [Ideal.mem_span_singleton']
    refine ⟨∑ k ∈ ((pq B).e.repr z).support, d k • (pq B).e k, ?_⟩
    conv_rhs => rw [← (pq B).e.linearCombination_repr z]
    rw [Finsupp.linearCombination_apply, Finsupp.sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [← hd k, mul_comm (d k • (pq B).e k), ← Algebra.smul_def, smul_smul, mul_comm c (d k)]

private theorem sum_finsupp_single_apply_eq_ite {B : Type} [CommRing B] (s : Finset ℕ) (a : ℕ → B) (k : ℕ) :
    (∑ i ∈ s, Finsupp.single i (a i)) k = if k ∈ s then a k else 0 := by
  simp [Finsupp.finsetSum_apply, Finsupp.single_apply]

theorem mem_fil_sup_iff {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) (r : ℕ) (c : B)
    (z : (pq B).P) :
    z ∈ fil (eta δ) r ⊔ Ideal.span {algebraMap B (pq B).P c} ↔
      ∀ k, (pq B).e.repr z k ∈ fil δ (r - k) ⊔ Ideal.span {c} := by
  have hT := (_root_.GlobalTheory.CompanionTheory.PDFil.fil_pdPoly δ (pq B) (eta δ)
    (_root_.CrystallineSemistableComparison.Pb.Site.eta_std δ)).2.2.2
  constructor
  · intro hz k
    obtain ⟨a, ha, s, hs, rfl⟩ := Submodule.mem_sup.1 hz
    rw [map_add (f := _), Finsupp.add_apply]
    exact Submodule.add_mem_sup ((hT r a).1 ha k) ((mem_span_iff c s).1 hs k)
  · intro h
    choose a ha s hs hsum using fun k => Submodule.mem_sup.1 (h k)
    have hF : (∑ i ∈ ((pq B).e.repr z).support, Finsupp.single i (a i)) +
        (∑ i ∈ ((pq B).e.repr z).support, Finsupp.single i (s i)) = (pq B).e.repr z := by
      ext k
      rw [Finsupp.add_apply, sum_finsupp_single_apply_eq_ite, sum_finsupp_single_apply_eq_ite]
      split_ifs with hk
      · exact hsum k
      · rw [add_zero]
        exact (Finsupp.notMem_support_iff.1 hk).symm
    have hz : z = (pq B).e.repr.symm (∑ i ∈ ((pq B).e.repr z).support, Finsupp.single i (a i)) +
        (pq B).e.repr.symm (∑ i ∈ ((pq B).e.repr z).support, Finsupp.single i (s i)) := by
      rw [← map_add (f := _), hF, LinearEquiv.symm_apply_apply]
    rw [hz]
    refine Submodule.add_mem_sup ((hT r _).2 fun k => ?_) ((mem_span_iff c _).2 fun k => ?_)
    · rw [LinearEquiv.apply_symm_apply, sum_finsupp_single_apply_eq_ite]
      split_ifs
      · exact ha k
      · exact Submodule.zero_mem _
    · rw [LinearEquiv.apply_symm_apply, sum_finsupp_single_apply_eq_ite]
      split_ifs
      · exact hs k
      · exact Submodule.zero_mem _

theorem coeff_criteria : ∀ {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) (b : ℕ →₀ B) (r : ℕ) (c : B), ((b.sum fun k c => algebraMap B (pq B).P c * (eta δ).dpow k ((pq B).e 1)) ∈ fil (eta δ) r ↔ ∀ k, b k ∈ fil δ (r - k)) ∧ ((b.sum fun k c => algebraMap B (pq B).P c * (eta δ).dpow k ((pq B).e 1)) ∈ fil (eta δ) r ⊔ Ideal.span {algebraMap B (pq B).P c} ↔ ∀ k, b k ∈ fil δ (r - k) ⊔ Ideal.span {c}) ∧ ((b.sum fun k c => algebraMap B (pq B).P c * (eta δ).dpow k ((pq B).e 1)) ∈ Ideal.span {algebraMap B (pq B).P c} ↔ ∀ k, b k ∈ Ideal.span {c}) ∧ ((b.sum fun k c => algebraMap B (pq B).P c * (eta δ).dpow k ((pq B).e 1)) = 0 ↔ ∀ k, b k = 0) := by
  intro B _ J δ b r c
  have hT := (_root_.GlobalTheory.CompanionTheory.PDFil.fil_pdPoly δ (pq B) (eta δ)
    (_root_.CrystallineSemistableComparison.Pb.Site.eta_std δ)).2.2.2
  have hr := repr_sum δ b
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [hT, hr]
  · rw [mem_fil_sup_iff, hr]
  · rw [mem_span_iff, hr]
  · rw [← LinearEquiv.map_eq_zero_iff (pq B).e.repr, hr]
    simp only [Finsupp.ext_iff, Finsupp.coe_zero, Pi.zero_apply]

end GlobalTheory.CompanionTheory.PDCrit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeFiltration =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatCompEnvelopeAlgebraMap =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatCompEnvelopeAlgebraMap", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.Pb CrystallineSemistableComparison.Pb.Site

namespace GlobalTheory.CompanionTheory.SitePD

theorem pdPoly_flat_comp : ∀ {A B : Type} [CommRing A] [CommRing B] (i : A →+* B), i.Flat →
    ((algebraMap B (pq B).P).comp i).Flat := by
  intro A B _ _ i hi
  have hfree : Module.Free B (pq B).P := Module.Free.of_basis (pq B).e
  have h2 : (algebraMap B (pq B).P).Flat := by
    rw [RingHom.flat_algebraMap_iff]
    infer_instance
  exact RingHom.Flat.comp hi h2

end GlobalTheory.CompanionTheory.SitePD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatCompEnvelopeAlgebraMap =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyAll =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyAll", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeExpansion\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeFiltration\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeUniversal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FlatCompEnvelopeAlgebraMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.PDA

namespace CrystallineSemistableComparison.Pb.Site

theorem polyT_mem {O R : Type} [CommRing O] [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} (hp : p ≠ 0)
    {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I}
    (Q₀ : ObjectProperty (Thick (nlFun γ p X q κ))) (h : Q₀ = ⊤ ∨ Q₀ = FlatT) (𝒱 : Set X.Opens)
    (T : (St Q₀ 𝒱).FullSubcategory) : St Q₀ 𝒱 (polyT T.obj hp) := by
  refine ⟨?_, ?_⟩
  · rcases h with rfl | rfl
    · trivial
    · exact _root_.GlobalTheory.CompanionTheory.SitePD.pdPoly_flat_comp T.obj.i T.property.1
  · obtain ⟨V, hV, hT⟩ := T.property.2
    exact ⟨V, hV, inU_hom (polyJ T.obj hp) hT⟩

def polyDesc {O R : Type} [CommRing O] [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} {X : Scheme.{0}}
    {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} (T : Thick (nlFun γ p X q κ)) (hp : p ≠ 0)
    {T' : Thick (nlFun γ p X q κ)} (φ : T ⟶ T') (F : (pq T.B).P →+* T'.B)
    (hF : F.comp (algebraMap T.B (pq T.B).P) = φ.φ) (hFd : IsDPMorphism (eta T.δ) T'.δ F)
    (hle : (pq T.B).ext T.J ≤ T'.J.comap F) : polyT T hp ⟶ T' :=
  descOf φ F hF hFd hle

def polyAll {O R : Type} [CommRing O] [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} (hp : p ≠ 0)
    {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I}
    (Q₀ : ObjectProperty (Thick (nlFun γ p X q κ))) (h : Q₀ = ⊤ ∨ Q₀ = FlatT) (𝒱 : Set X.Opens) :
    Poly (sP (St Q₀ 𝒱)) where
  P T := ⟨polyT T.obj hp, polyT_mem hp Q₀ h 𝒱 T⟩
  j T := ObjectProperty.homMk (polyJ T.obj hp)
  X T := (pq T.obj.B).e 1
  X_mem T := Ideal.mem_sup_right (Ideal.subset_span ⟨0, rfl⟩)
  univ {T T'} φ x hx := by
    obtain ⟨F, ⟨hF, hF1, hFd⟩, hFu⟩ := _root_.GlobalTheory.CompanionTheory.PDUniv.pdPoly_universal T.obj.δ T'.obj.δ φ.hom.φ φ.hom.dp x hx
    have hle : (pq T.obj.B).ext T.obj.J ≤ T'.obj.J.comap F := Ideal.map_le_iff_le_comap.1 hFd.1
    refine ⟨ObjectProperty.homMk (polyDesc T.obj hp φ.hom F hF hFd hle), ?_, ?_⟩
    · refine And.intro ?_ ?_
      · ext1
        exact CrystallineSemistableComparison.Pb.hom_ext hF
      · exact hF1
    · rintro ψ ⟨h1, h2⟩
      ext1
      refine CrystallineSemistableComparison.Pb.hom_ext ?_
      refine hFu ψ.hom.φ ⟨?_, h2, ψ.hom.dp⟩
      exact congrArg (fun f => f.hom.φ) h1
  span T z := _root_.GlobalTheory.CompanionTheory.PDSpanning.exists_sum_dpow T.obj.δ z

theorem poly_all' : ∀ {O R : Type} [CommRing O] [CommRing R] {I : Ideal R} (γ : DividedPowers I) (p : ℕ) (hp : p ≠ 0) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (κ : O →+* R ⧸ I) (Q₀ : ObjectProperty (Thick (nlFun γ p X q κ))) (h : Q₀ = ⊤ ∨ Q₀ = FlatT)
    (𝒱 : Set X.Opens), ∃ Q : Poly (sP (St Q₀ 𝒱)), ∀ r : ℤ, Q.Crit (sFil _) r ∧ Q.Crit (fun _ => IdF.bot _) r ∧
      ∀ c : R, Q.Crit (fun r => stdI _ (some r) c) r ∧ Q.Crit (fun _ => stdI _ none c) r ∧ Q.Crit (fun _ => IdF.span _ c) r := by
  intro O R _ _ I γ p hp X q κ Q₀ h 𝒱
  refine ⟨polyAll hp Q₀ h 𝒱, fun r => ⟨?_, ?_, fun c => ⟨?_, ?_, ?_⟩⟩⟩
  · intro T b
    refine Iff.trans (_root_.GlobalTheory.CompanionTheory.PDCrit.coeff_criteria T.obj.δ b r.toNat 0).1 (forall_congr' fun k => ?_)
    change _ ↔ b k ∈ fil T.obj.δ (r - k).toNat
    rw [show (r - k).toNat = r.toNat - k by omega]
    exact Iff.rfl
  · intro T b
    refine Iff.trans (_root_.GlobalTheory.CompanionTheory.PDCrit.coeff_criteria T.obj.δ b 0 0).2.2.2 (forall_congr' fun k => ?_)
    change _ ↔ b k ∈ (⊥ : Ideal T.obj.B)
    rw [Ideal.mem_bot]
    exact Iff.rfl
  · intro T b
    refine Iff.trans (_root_.GlobalTheory.CompanionTheory.PDCrit.coeff_criteria T.obj.δ b r.toNat (T.obj.i c)).2.1 (forall_congr' fun k => ?_)
    change _ ↔ b k ∈ fil T.obj.δ (r - k).toNat ⊔ Ideal.span {T.obj.i c}
    rw [show (r - k).toNat = r.toNat - k by omega]
    exact Iff.rfl
  · intro T b
    have e : ∀ (B : Type) [CommRing B] (a : B), (⊥ : Ideal B) ⊔ Ideal.span {a} = Ideal.span {a} := fun _ _ _ => bot_sup_eq _
    refine Iff.trans ?_ (Iff.trans (_root_.GlobalTheory.CompanionTheory.PDCrit.coeff_criteria T.obj.δ b 0 (T.obj.i c)).2.2.1 (forall_congr' fun k => ?_))
    · change _ ∈ (⊥ : Ideal (pq T.obj.B).P) ⊔ Ideal.span {algebraMap T.obj.B (pq T.obj.B).P (T.obj.i c)} ↔ _
      rw [e]
      rfl
    · change _ ↔ b k ∈ (⊥ : Ideal T.obj.B) ⊔ Ideal.span {T.obj.i c}
      rw [e]
      exact Iff.rfl
  · intro T b
    exact (_root_.GlobalTheory.CompanionTheory.PDCrit.coeff_criteria T.obj.δ b 0 (T.obj.i c)).2.2.1

end CrystallineSemistableComparison.Pb.Site
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyAll =====

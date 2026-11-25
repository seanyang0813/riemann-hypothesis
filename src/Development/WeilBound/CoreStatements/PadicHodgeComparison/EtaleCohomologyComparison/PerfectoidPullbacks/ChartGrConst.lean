module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeExpansion
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeUniversal
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TruncatedEnvelopeFiltrationQuotient
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TruncatedEnvelopeTorsionFree
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordinatesRestrictAffineOpen
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsSmoothCoordinateCover
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCohomologyRestrictionBijective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyAll
import Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.FilIsSubDPIdeal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyTf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyTf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyTf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.AdmissibleMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeExpansion\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DividedPowerEnvelopeUniversal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TruncatedEnvelopeFiltrationQuotient\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TruncatedEnvelopeTorsionFree\nimport Development.WeilBound.CoreStatements.AbelianHeightsDuality.DividedPowerAlgebras.FilIsSubDPIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers GlobalTheory.PDA

namespace CrystallineSemistableComparison.Pb.Site

variable {O R : Type} [CommRing O] [CommRing R] {I : Ideal R} {γ : DividedPowers I} {X : Scheme.{0}}
  {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I}

theorem trAdm (T : Thick (nlFun γ 0 X q κ)) (l s : ℕ) (hT : TF l s T) :
    (0 ≠ 0 → IsNilpotent ((0 : ℕ) : trB T s)) ∧ (0 = 0 → IsNilpotent (trJ T s)) :=
  ⟨fun h => absurd rfl h, fun _ => (_root_.GlobalTheory.CompanionTheory.SiteTr.tr_tf T.δ l s (trD T s) (trD_spec T s).1 hT.1 hT.2).2.2⟩

def trH (T : Thick (nlFun γ 0 X q κ)) (s : ℕ)
    (adm : (0 ≠ 0 → IsNilpotent ((0 : ℕ) : trB T s)) ∧ (0 = 0 → IsNilpotent (trJ T s))) : T ⟶ polyTr T s adm :=
  homOf T (trF T s) (trJ T s) (trD T s) (trF_le T s) (trF_dp T s) adm

def trDesc (T : Thick (nlFun γ 0 X q κ)) (s : ℕ)
    (adm : (0 ≠ 0 → IsNilpotent ((0 : ℕ) : trB T s)) ∧ (0 = 0 → IsNilpotent (trJ T s))) {T' : Thick (nlFun γ 0 X q κ)} (φ : T ⟶ T')
    (G : trB T s →+* T'.B) (hG : G.comp (trF T s) = φ.φ) (hGd : IsDPMorphism (trD T s) T'.δ G)
    (hle : trJ T s ≤ T'.J.comap G) : polyTr T s adm ⟶ T' :=
  descOf φ G hG hGd hle

theorem trSum (T : Thick (nlFun γ 0 X q κ)) (s : ℕ) (b : ℕ →₀ T.B) :
    (b.sum fun k c => trF T s c * (trD T s).dpow k (Ideal.Quotient.mk (trI T s) ((pq T.B).e 1))) =
      Ideal.Quotient.mk (trI T s) (b.sum fun k c => algebraMap T.B (pq T.B).P c * (eta T.δ).dpow k ((pq T.B).e 1)) := by
  rw [map_finsuppSum]
  refine Finsupp.sum_congr fun k _ => ?_
  rw [map_mul, (trD_spec T s).1.2 _ (Ideal.mem_sup_right (Ideal.subset_span ⟨0, rfl⟩))]
  rfl

theorem polyTr_mem (l s : ℕ) (𝒱 : Set X.Opens)
    (T : (St (γ := γ) (p := 0) (q := q) (κ := κ) (TF l s) 𝒱).FullSubcategory) :
    St (TF l s) 𝒱 (polyTr T.obj s (trAdm T.obj l s T.property.1)) := by
  have h := _root_.GlobalTheory.CompanionTheory.SiteTr.tr_tf T.obj.δ l s (trD T.obj s) (trD_spec T.obj s).1 T.property.1.1 T.property.1.2
  refine ⟨⟨h.1, h.2.1⟩, ?_⟩
  obtain ⟨V, hV, hT⟩ := T.property.2
  exact ⟨V, hV, inU_hom (trH T.obj s _) hT⟩

def polyTf (l s : ℕ) (𝒱 : Set X.Opens) : Poly (sP (St (γ := γ) (p := 0) (q := q) (κ := κ) (TF l s) 𝒱)) where
  P T := ⟨polyTr T.obj s (trAdm T.obj l s T.property.1), polyTr_mem l s 𝒱 T⟩
  j T := ObjectProperty.homMk (trH T.obj s _)
  X T := Ideal.Quotient.mk (trI T.obj s) ((pq T.obj.B).e 1)
  X_mem T := Ideal.mem_map_of_mem _ (Ideal.mem_sup_right (Ideal.subset_span ⟨0, rfl⟩))
  univ {T T'} φ x hx := by
    obtain ⟨F, ⟨hF, hF1, hFd⟩, hFu⟩ := _root_.GlobalTheory.CompanionTheory.PDUniv.pdPoly_universal T.obj.δ T'.obj.δ φ.hom.φ φ.hom.dp x hx
    have hK : ∀ a ∈ trI T.obj s, F a = 0 := by
      intro a ha
      have h1 : F a ∈ fil T'.obj.δ (max s 1) := FubiniStudyChowHeightFormula₂.Adr.Fil.map_fil_le _ _ F hFd _ (Ideal.mem_map_of_mem F ha)
      have h2 : T'.obj.pdPow (max s 1) ≤ T'.obj.pdPow s := T'.obj.pdPow_anti (le_max_left _ _)
      have h3 := h2 h1
      rw [T'.property.1.1, Ideal.mem_bot] at h3
      exact h3
    let G : trB T.obj s →+* T'.obj.B := Ideal.Quotient.lift _ F hK
    have hGF : G.comp (Ideal.Quotient.mk (trI T.obj s)) = F := Ideal.Quotient.lift_comp_mk _ _ _
    have hGd : IsDPMorphism (trD T.obj s) T'.obj.δ G := (trD_spec T.obj s).2 _ _ _ G (by rw [hGF]; exact hFd)
    have hG : G.comp (trF T.obj s) = φ.hom.φ := by
      rw [← hF, ← hGF]
      rfl
    have hle : trJ T.obj s ≤ T'.obj.J.comap G := Ideal.map_le_iff_le_comap.1 hGd.1
    refine ⟨ObjectProperty.homMk (trDesc T.obj s _ φ.hom G hG hGd hle), ?_, ?_⟩
    · refine And.intro ?_ ?_
      · ext1
        exact CrystallineSemistableComparison.Pb.hom_ext hG
      · exact hF1
    · rintro ψ ⟨h1, h2⟩
      ext1
      refine CrystallineSemistableComparison.Pb.hom_ext ?_
      change ψ.hom.φ = G
      refine Ideal.Quotient.ringHom_ext ?_
      rw [hGF]
      refine hFu _ ⟨?_, h2, ?_⟩
      · exact congrArg (fun f => f.hom.φ) h1
      · exact IsDPMorphism.comp _ ψ.hom.dp (trD_spec T.obj s).1
  span T z := by
    obtain ⟨w, rfl⟩ := Ideal.Quotient.mk_surjective z
    obtain ⟨b, rfl⟩ := _root_.GlobalTheory.CompanionTheory.PDSpanning.exists_sum_dpow T.obj.δ w
    exact ⟨b, (trSum T.obj s b).symm⟩

theorem poly_tf' : ∀ {O R : Type} [CommRing O] [CommRing R] {I : Ideal R} (γ : DividedPowers I) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (κ : O →+* R ⧸ I) (l s : ℕ) (𝒱 : Set X.Opens),
    ∃ Q : Poly (sP (St (γ := γ) (p := 0) (q := q) (κ := κ) (TF l s) 𝒱)),
      ∀ r : ℤ, r ≤ s → Q.Crit (sFil _) r ∧ ∀ c : R, Q.Crit (fun r => stdI _ (some r) c) r := by
  intro O R _ _ I γ X q κ l s 𝒱
  refine ⟨polyTf l s 𝒱, fun r hr => ⟨?_, fun c => ?_⟩⟩
  · intro T b
    have e := trSum T.obj s b
    refine Iff.trans ?_ (Iff.trans ((_root_.GlobalTheory.CompanionTheory.SiteTrCrit.tr_crit T.obj.δ s (trD T.obj s) (trD_spec T.obj s).1 b r.toNat
      (by omega) 0).1) (forall_congr' fun k => ?_))
    · change (b.sum fun k c => trF T.obj s c * (trD T.obj s).dpow k (Ideal.Quotient.mk (trI T.obj s) ((pq T.obj.B).e 1)))
        ∈ fil (trD T.obj s) r.toNat ↔ _
      exact Iff.of_eq (congrArg (fun z => z ∈ fil (trD T.obj s) r.toNat) e)
    · change _ ↔ b k ∈ fil T.obj.δ (r - k).toNat
      rw [show (r - k).toNat = r.toNat - k by omega]
      exact Iff.rfl
  · intro T b
    have e := trSum T.obj s b
    refine Iff.trans ?_ (Iff.trans ((_root_.GlobalTheory.CompanionTheory.SiteTrCrit.tr_crit T.obj.δ s (trD T.obj s) (trD_spec T.obj s).1 b r.toNat
      (by omega) (T.obj.i c)).2) (forall_congr' fun k => ?_))
    · change (b.sum fun k c => trF T.obj s c * (trD T.obj s).dpow k (Ideal.Quotient.mk (trI T.obj s) ((pq T.obj.B).e 1)))
        ∈ fil (trD T.obj s) r.toNat ⊔ Ideal.span {trF T.obj s (T.obj.i c)} ↔ _
      exact Iff.of_eq (congrArg (fun z => z ∈ fil (trD T.obj s) r.toNat ⊔ Ideal.span {trF T.obj s (T.obj.i c)}) e)
    · change _ ↔ b k ∈ fil T.obj.δ (r - k).toNat ⊔ Ideal.span {T.obj.i c}
      rw [show (r - k).toNat = r.toNat - k by omega]
      exact Iff.rfl

end CrystallineSemistableComparison.Pb.Site
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyTf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordinatesRestrictAffineOpen\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsSmoothCoordinateCover\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCohomologyRestrictionBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyAll\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.PolynomialSiteTraces.PolyTf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem isFil : ∀ {b : Base} {L : b.Fun} (Q : ObjectProperty (Thick L)), IsFil (sP Q) (sFil Q) := @_root_.GlobalTheory.CompanionTheory.DPFil.isFil_sFil

alias poly_all := _root_.CrystallineSemistableComparison.Pb.Site.poly_all'

alias zar := _root_.GlobalTheory.CompanionTheory.NlZar.zariski_descent

alias refl := _root_.GlobalTheory.CompanionTheory.PDTrunc.pull_incl_bijective

theorem cov_ex : ∀ {O : Type} [CommRing O] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of O)) [IsSeparated q] [QuasiCompact q],
    (Smooth q → Nonempty (Cov q)) ∧ ∀ d, SmoothOfRelativeDimension d q → ∃ U : Cov q, ∀ α, U.d α = d := @_root_.GlobalTheory.CompanionTheory.CovEx.exists_cov

theorem coord_res : ∀ {O : Type} [CommRing O] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {V W : X.Opens} {d : ℕ}
    (c : Coord q V d) (h : W ≤ V) (hW : IsAffineOpen W), ∃ c' : Coord q W d, ∀ i, c'.t i = rs h (c.t i) := @_root_.GlobalTheory.CompanionTheory.CoordRes.main

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst =====

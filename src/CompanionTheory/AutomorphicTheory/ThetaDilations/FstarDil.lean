module

public import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData
public import CompanionTheory.AutomorphicTheory.ThetaDilations.ProdRho
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionAutomorphy
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionModularity
public import Development.WeilBound.CoreStatements.ThetaDilations.IsOpenCoset
public import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionGrowthBound
import CompanionTheory.AutomorphicTheory.ThetaDilations.SqPosOfNe
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanGaussianFourier
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaSeriesSummable
import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.AutomorphicTheory.ThetaDilations.IntFou, CompanionTheory.AutomorphicTheory.ThetaDilations.FstarDil

-- ===== clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.IntFou =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ThetaDilations.IntFou", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\npublic import CompanionTheory.AutomorphicTheory.ThetaDilations.ProdRho\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionAutomorphy\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionModularity\npublic import Development.WeilBound.CoreStatements.ThetaDilations.IsOpenCoset\nimport CompanionTheory.AutomorphicTheory.ThetaDilations.SqPosOfNe\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanGaussianFourier\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaSeriesSummable\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology GlobalTheory.CompanionTheory.SW.Core
open scoped ENNReal NNReal MatrixGroups

noncomputable section

namespace CompanionTheory.PlacePermOperatorBicommutantSpan

open PositivityTheory.PlacePermOperatorBicommutantSpan (chi_sym chi_zero fou_sb fou_smul)

theorem int_fou {V : Type} [AddCommGroup V] [TopologicalSpace V] [MeasurableSpace V] {χ : V → V → ℂ} {μ : Measure V}
    (h : NADual V χ μ) {f : V → ℂ} (hf : SB f) : ∫ y, fou χ μ f y ∂μ = f 0 := by
  have := (fou_sb h hf).2 0
  simpa only [fou, neg_zero, chi_sym h _ 0, chi_zero h, mul_one] using this

theorem recip : ∀ (F : Type) [Field F] [NumberField F] [MeasurableSpace (A F)] [BorelSpace (A F)] (lf : Measure (A F)), lf.IsAddHaarMeasure → lf (Oh F) = 1 → ∀ ψ : AddChar (A F) ℂ, IsStdChar F ψ → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (M : ℕ) (B : Matrix ι ι F) (ρ : InfinitePlace F → (F →+* ℝ)) (P : InfinitePlace F → Matrix ι ι ℝ), QSetup M B ρ P → ∀ φ : (ι → A F) → ℂ, SB φ → ∀ τ : InfinitePlace F → ℂ, (∀ w, 0 < (τ w).im) → ∀ b : F, b ≠ 0 → cG B ρ P τ * eiTerm ψ lf B ρ P (fou (chiB ψ (Bf B)) (muF B lf) φ) (fun w => -(τ w)⁻¹) b = eiTerm ψ lf B ρ P φ τ (-b⁻¹) := by
  intro F _ _ _ _ lf hlf h1 ψ hψ ι _ _ M B ρ P hQ φ hφ τ hτ b hb
  have H := _root_.GlobalTheory.CompanionTheory.SW.Core.SelfDual.naQuad F lf hlf h1 ψ hψ ι B hQ.2.2.1 hQ.2.2.2.1
  have hD := H.2.2.2.2.2
  set m : ℝ := |((Algebra.norm ℚ (b⁻¹ : F) : ℚ) : ℝ)|⁻¹ ^ M with hm
  have hm0 : 0 < m := pow_pos (inv_pos.2 (abs_pos.2 (by exact_mod_cast Algebra.norm_ne_zero_iff.2 (inv_ne_zero hb)))) M
  obtain ⟨γ, -, hγ⟩ := weil_id H (uA (Units.mk0 b hb)) hm0 (mod_rat hlf h1 hQ.2.1 B (Units.mk0 b hb)⁻¹)
  set c : A F := algebraMap F (A F) b⁻¹ with hc
  have hγ' : ∀ φ, SB φ → opU ψ (hf F) (Bf B) (algebraMap F (A F) b) (fou (chiB ψ (Bf B)) (muF B lf) φ) =
      (γ * m) • fou (chiB ψ (Bf B)) (muF B lf) (opU ψ (hf F) (Bf B) (algebraMap F (A F) (-b⁻¹))
        (opD 1 c (fou (chiB ψ (Bf B)) (muF B lf) (opU ψ (hf F) (Bf B) (algebraMap F (A F) (-b⁻¹)) φ)))) := by
    intro φ hφ
    refine (hγ φ hφ).trans ?_
    rw [mul_smul, ← fou_smul (m : ℂ), map_neg]
    congr 2
    ext u
    simp [opU, opD, uA, c]
    ring
  have hO : IsOrth B ρ 1 fun _ => 1 := ⟨by simp, fun _ => by simp⟩
  have hU := fun φ τ => (_root_.GlobalTheory.CompanionTheory.SW.ThetaUD.main F ψ hψ ι M B ρ P hQ _ _ hO φ τ)
  have hW := _root_.GlobalTheory.CompanionTheory.SW.ThW.thetaInvariance F lf hlf h1 ψ hψ ι M B ρ P hQ _ _ hO
  have hG := _root_.GlobalTheory.CompanionTheory.SW.GaussFou.gauss_fourier F ι M B ρ P hQ
  obtain ⟨φ₀, hφ₀, hne⟩ := (_root_.GlobalTheory.CompanionTheory.SW.ThetaSum.theta_summable_and_ne_zero F ι M B ρ P hQ _ _ hO τ hτ).2
  have hρ : ∀ w, ((ρ w b : ℝ) : ℂ) ≠ 0 := fun w => by exact_mod_cast (map_ne_zero (ρ w)).2 hb
  have him : ∀ {σ : InfinitePlace F → ℂ}, (∀ w, 0 < (σ w).im) → ∀ w, 0 < (-(σ w)⁻¹).im := fun h w => by
    rw [Complex.neg_im, Complex.inv_im, neg_div, neg_neg]
    exact div_pos (h w) (Complex.normSq_pos.2 fun h0 => by simpa [h0] using h w)
  set τ₁ : InfinitePlace F → ℂ := fun w => τ w + (ρ w (-b⁻¹) : ℝ) with hτ₁
  have p1 : ∀ w, 0 < (τ₁ w).im := fun w => by simpa [hτ₁] using hτ w
  set τ₄ : InfinitePlace F → ℂ := fun w => ((ρ w b⁻¹ : ℝ) : ℂ) ^ 2 * -(τ₁ w)⁻¹ + (ρ w (-b⁻¹) : ℝ) with hτ₄
  have p4 : ∀ w, 0 < (τ₄ w).im := fun w => by
    simp only [hτ₄, Complex.add_im, Complex.ofReal_im, add_zero, ← Complex.ofReal_pow, Complex.im_ofReal_mul]
    exact mul_pos (sq_pos_of_ne_zero ((map_ne_zero (ρ w)).2 (inv_ne_zero hb))) (him p1 w)
  have e4 : (fun w => -(τ₄ w)⁻¹) = fun w => -(τ w)⁻¹ + (ρ w b : ℝ) := by
    funext w
    have h0 : τ w ≠ 0 := fun h => by simpa [h] using hτ w
    have h2 : τ₁ w ≠ 0 := fun h => by simpa [h] using p1 w
    have h3 : τ w * (ρ w b : ℝ) - 1 ≠ 0 := fun h => h2 (by
      simp only [hτ₁, map_neg, map_inv₀, Complex.ofReal_neg, Complex.ofReal_inv]
      field_simp [hρ w]
      linear_combination h)
    have h5 : τ₄ w = -(τ w / (τ w * (ρ w b : ℝ) - 1)) := by
      have h6 : τ₁ w = (τ w * (ρ w b : ℝ) - 1) / (ρ w b : ℝ) := by
        simp only [hτ₁, map_neg, map_inv₀, Complex.ofReal_neg, Complex.ofReal_inv]
        field_simp [hρ w]
        ring
      have h7 := hρ w
      simp only [hτ₄, h6, map_neg, map_inv₀, Complex.ofReal_neg, Complex.ofReal_inv]
      generalize ((ρ w b : ℝ) : ℂ) = r at h3 h7 ⊢
      rw [inv_div, div_eq_mul_inv, div_eq_mul_inv]
      have h8 := mul_inv_cancel₀ h3
      have h9 := mul_inv_cancel₀ h7
      linear_combination (-(r⁻¹ * (τ w * r - 1)⁻¹) - τ w * (τ w * r - 1)⁻¹) * h9 + r⁻¹ * h8
    rw [h5]
    field_simp
    ring
  have s1 := sb_opU H (algebraMap F (A F) (-b⁻¹)) hφ₀
  have s3 : SB (opD 1 c (fou (chiB ψ (Bf B)) (muF B lf) (opU ψ (hf F) (Bf B) (algebraMap F (A F) (-b⁻¹)) φ₀))) :=
    sb_opD H 1 (uA (Units.mk0 b hb)⁻¹) (fou_sb hD s1).1
  have t1 := (hW _ s1 τ₁ p1).trans ((hU φ₀ τ).1 (-b⁻¹))
  have t4 := (hW _ (sb_opU H (algebraMap F (A F) (-b⁻¹)) s3) τ₄ p4).trans
    (((hU _ _).1 (-b⁻¹)).trans ((hU _ fun w => -(τ₁ w)⁻¹).2.1 b⁻¹ (inv_ne_zero hb)))
  have t0 := hW φ₀ hφ₀ τ hτ
  rw [← (hU _ fun w => -(τ w)⁻¹).1 b, hγ' φ₀ hφ₀, (hU _ _).2.2, ← e4] at t0
  have t5 := (hG τ₄ p4).2.2.1
  have key : cG B ρ P τ * (γ * m) * cG B ρ P (fun w => -(τ₄ w)⁻¹) = cG B ρ P τ₁ := by
    refine mul_right_cancel₀ hne ?_
    conv_rhs => rw [← t0]
    conv_lhs => rw [← t1, ← t4]
    linear_combination (cG B ρ P τ * (γ * m) * cG B ρ P τ₁ * theta B ρ P 1 (fun _ => 1)
      (fou (chiB ψ (Bf B)) (muF B lf) (opU ψ (hf F) (Bf B) (algebraMap F (A F) (-b⁻¹)) (opD 1 c
        (fou (chiB ψ (Bf B)) (muF B lf) (opU ψ (hf F) (Bf B) (algebraMap F (A F) (-b⁻¹)) φ₀)))))
      fun w => -(τ₄ w)⁻¹) * t5
  have s1' := sb_opU H (algebraMap F (A F) (-b⁻¹)) hφ
  have s3' : SB (opD 1 c (fou (chiB ψ (Bf B)) (muF B lf) (opU ψ (hf F) (Bf B) (algebraMap F (A F) (-b⁻¹)) φ))) :=
    sb_opD H 1 (uA (Units.mk0 b hb)⁻¹) (fou_sb hD s1').1
  have f1 : fstar ψ (hf F) (Bf B) (muF B lf) (fou (chiB ψ (Bf B)) (muF B lf) φ) (algebraMap F (A F) b) =
      γ * m * fstar ψ (hf F) (Bf B) (muF B lf) φ (algebraMap F (A F) (-b⁻¹)) := by
    rw [fstar, hγ' φ hφ]
    simp only [Pi.smul_apply, smul_eq_mul, integral_const_mul, int_fou hD (sb_opU H _ s3')]
    simp [opU, opD, qf, fou, chiB, fstar]
  rw [eiTerm, eiTerm, f1, ← e4, ← key]
  ring

end CompanionTheory.PlacePermOperatorBicommutantSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.IntFou =====

-- ===== clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.FstarDil =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.ThetaDilations.FstarDil", "h": "module\n\npublic import CompanionTheory.SpectralGeometry.CountingDefinitions.AdelicEulerProducts.CountData\npublic import CompanionTheory.AutomorphicTheory.ThetaDilations.IntFou\npublic import CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ThetaFunctionGrowthBound\nimport Development.WeilBound.CoreStatements.ThetaDilations.IsOpenCoset\nimport CompanionTheory.AutomorphicTheory.ThetaDilations.ProdRho\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.ArchimedeanGaussianFourier\nimport CompanionTheory.SpectralGeometry.LocalGlobalProofs.AdelicAnalysis.WeilRepresentationQuadraticDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix Topology GlobalTheory.CompanionTheory.SW.Core
open scoped ENNReal NNReal MatrixGroups

noncomputable section

namespace CompanionTheory.PlacePermOperatorBicommutantSpan

open PositivityTheory.PlacePermOperatorBicommutantSpan (fou_sb)

theorem cG_dil {F : Type} [Field F] [NumberField F] {ι : Type} [Fintype ι] [DecidableEq ι] {M : ℕ} {B : Matrix ι ι F}
    {ρ : InfinitePlace F → (F →+* ℝ)} {P : InfinitePlace F → Matrix ι ι ℝ} (hQ : QSetup M B ρ P) {a : F} (ha : a ≠ 0)
    (τ : InfinitePlace F → ℂ) : cG B ρ P (fun w => ((ρ w a : ℝ) : ℂ) ^ 2 * τ w) =
      ((|((Algebra.norm ℚ a : ℚ) : ℝ)|⁻¹ ^ M) ^ 2 : ℝ) * cG B ρ P τ := by
  let L : (InfinitePlace F → ι → ℝ) →ₗ[ℝ] (InfinitePlace F → ι → ℝ) :=
    LinearMap.pi fun w => (ρ w a • LinearMap.id) ∘ₗ LinearMap.proj w
  have hdet : |LinearMap.det L| = |((Algebra.norm ℚ a : ℚ) : ℝ)| ^ (2 * M) := by
    rw [LinearMap.det_pi, ← prod_rho hQ.1 hQ.2.2.2.2.1, Finset.abs_prod, ← Finset.prod_pow]
    simp [hQ.2.1]
  have hn : (0 : ℝ) < |((Algebra.norm ℚ a : ℚ) : ℝ)| := abs_pos.2 (by exact_mod_cast Algebra.norm_ne_zero_iff.2 ha)
  have hd : LinearMap.det L ≠ 0 := abs_pos.1 (by rw [hdet]; positivity)
  have e : gauss B ρ P (fun w => ((ρ w a : ℝ) : ℂ) ^ 2 * τ w) = fun x => gauss B ρ P τ (L x) := by
    funext x
    simp only [gauss, L, LinearMap.pi_apply, LinearMap.comp_apply, LinearMap.proj_apply, LinearMap.smul_apply,
      LinearMap.id_apply, mulVec_smul, dotProduct_smul, smul_dotProduct, smul_eq_mul, ← Complex.ofReal_pow,
      Complex.re_ofReal_mul, Complex.im_ofReal_mul]
    congr 1
    refine Finset.sum_congr rfl fun w _ => ?_
    push_cast
    ring
  have hm := Measure.map_linearMap_addHaar_eq_smul_addHaar (volume : Measure (InfinitePlace F → ι → ℝ)) hd
  have e2 : ∫ x, gauss B ρ P τ (L x) = ∫ x, gauss B ρ P τ x ∂(Measure.map L volume) :=
    (integral_map_equiv (L.equivOfDetNeZero hd).toContinuousLinearEquiv.toHomeomorph.toMeasurableEquiv _).symm
  rw [cG, cG, e, e2, hm, integral_smul_measure, abs_inv, hdet, ENNReal.toReal_ofReal (by positivity),
    Complex.real_smul, ← pow_mul, mul_comm M 2, inv_pow]
  ring

theorem fstar_dil {R : Type} [CommRing R] {ι : Type} [Fintype ι] [TopologicalSpace R] [MeasurableSpace R]
    {ψ : AddChar R ℂ} {h : R} {B : Matrix ι ι R} {μ : Measure (ι → R)} (H : NAQuad ψ h B μ) (a : Rˣ) {m : ℝ}
    (hm : 0 ≤ m) (hμ : ∀ s : Set (ι → R), MeasurableSet s → μ ((fun u => (a : R) • u) '' s) = ENNReal.ofReal m * μ s)
    (φ : (ι → R) → ℂ) (b : R) : m * fstar ψ h B μ (opD 1 (a : R) φ) ((a : R) ^ 2 * b) = fstar ψ h B μ φ b := by
  have := H.1
  have := H.2.2.2.2.2.2.2.2.2.1
  let e : (ι → R) ≃ᵐ (ι → R) := (Homeomorph.smul a).toMeasurableEquiv
  have he : μ = ENNReal.ofReal m • μ.map e := by
    ext s hs
    rw [Measure.smul_apply, e.map_apply, smul_eq_mul, ← hμ _ (e.measurable hs)]
    exact congrArg μ (e.surjective.image_preimage s).symm
  rw [fstar, fstar]
  conv_rhs => rw [he]
  rw [integral_smul_measure, integral_map_equiv, ENNReal.toReal_ofReal hm, Complex.real_smul]
  congr 2
  funext u
  show _ = opU ψ h B b φ ((a : R) • u)
  simp only [opU, opD, qf, mulVec_smul, dotProduct_smul, smul_dotProduct, smul_eq_mul, Complex.ofReal_one, one_mul]
  congr 2
  ring

theorem ei_inv : ∀ (F : Type) [Field F] [NumberField F] [MeasurableSpace (A F)] [BorelSpace (A F)] (lf : Measure (A F)), lf.IsAddHaarMeasure → lf (Oh F) = 1 → ∀ ψ : AddChar (A F) ℂ, IsStdChar F ψ → ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (M : ℕ) (B : Matrix ι ι F) (ρ : InfinitePlace F → (F →+* ℝ)) (P : InfinitePlace F → Matrix ι ι ℝ), QSetup M B ρ P → 3 ≤ M → ∀ φ : (ι → A F) → ℂ, SB φ → ∀ τ : InfinitePlace F → ℂ, (∀ w, 0 < (τ w).im) → (∀ b : F, eis ψ lf B ρ P (opU ψ (hf F) (Bf B) (algebraMap F (A F) b) φ) (fun w => τ w + (ρ w b : ℝ)) = eis ψ lf B ρ P φ τ) ∧ (∀ a : F, a ≠ 0 → eis ψ lf B ρ P (opD 1 (algebraMap F (A F) a) φ) (fun w => ((ρ w a : ℝ) : ℂ) ^ 2 * τ w) = eis ψ lf B ρ P φ τ) ∧ (cG B ρ P τ * eis ψ lf B ρ P (fou (chiB ψ (Bf B)) (muF B lf) φ) (fun w => -(τ w)⁻¹) = eis ψ lf B ρ P φ τ) ∧ ∀ c : ℂ, eis ψ lf B ρ P (c • φ) τ = c * eis ψ lf B ρ P φ τ := by
  intro F _ _ _ _ lf hlf h1 ψ hψ ι _ _ M B ρ P hQ hM φ hφ τ hτ
  have H := _root_.GlobalTheory.CompanionTheory.SW.Core.SelfDual.naQuad F lf hlf h1 ψ hψ ι B hQ.2.2.1 hQ.2.2.2.1
  have hD := H.2.2.2.2.2
  have hsum : ∀ φ, SB φ → ∀ τ : InfinitePlace F → ℂ, (∀ w, 0 < (τ w).im) → Summable (eiTerm ψ lf B ρ P φ τ) := by
    intro φ hφ τ hτ
    obtain ⟨w₀, hw₀⟩ := Finite.exists_min fun w => (τ w).im
    obtain ⟨_, s⟩ := _root_.GlobalTheory.CompanionTheory.SW.Core.EiBound.ei_bound F lf hlf h1 ψ hψ ι M B ρ P hQ hM φ hφ _ (hτ w₀)
    exact (s τ hw₀).1.of_norm
  refine ⟨fun b => ?_, fun a ha => ?_, ?_, fun c => ?_⟩
  · rw [eis, eis, ← (Equiv.addLeft b).tsum_eq (eiTerm ψ lf B ρ P φ τ)]
    congr 1
    · simp [opU, qf]
    · refine tsum_congr fun b' => ?_
      simp only [eiTerm, fstar, opU, Equiv.coe_addLeft, map_add (f := _), Complex.ofReal_add, add_assoc, ← mul_assoc,
        ← AddChar.map_add_eq_mul, add_mul, add_comm (algebraMap F (A F) b * _)]
  · rw [eis, eis, ← (Equiv.mulLeft₀ (a ^ 2) (pow_ne_zero 2 ha)).tsum_eq]
    congr 1
    · simp [opD]
    · refine tsum_congr fun b' => ?_
      have e := fstar_dil H (uA (Units.mk0 a ha)) (by positivity) (mod_rat hlf h1 hQ.2.1 B (Units.mk0 a ha)) φ
        (algebraMap F (A F) b')
      have e2 := cG_dil hQ ha fun w => τ w + (ρ w b' : ℝ)
      simp only [eiTerm, Equiv.mulLeft₀_apply, map_mul, map_pow, Complex.ofReal_mul, Complex.ofReal_pow, ← mul_add]
      rw [e2, ← e, mul_left_comm, ← mul_assoc]
      rfl
  · have hτ' : ∀ w, 0 < (-(τ w)⁻¹).im := fun w => by
      rw [Complex.neg_im, Complex.inv_im, neg_div, neg_neg]
      exact div_pos (hτ w) (Complex.normSq_pos.2 fun h0 => by simpa [h0] using hτ w)
    classical
    have hF := (fou_sb hD hφ).1
    have e1 : cG B ρ P τ * fou (chiB ψ (Bf B)) (muF B lf) φ 0 = eiTerm ψ lf B ρ P φ τ 0 := by
      simp [eiTerm, fstar, opU, fou, chiB, mul_comm]
    have e2 : cG B ρ P τ * eiTerm ψ lf B ρ P (fou (chiB ψ (Bf B)) (muF B lf) φ) (fun w => -(τ w)⁻¹) 0 = φ 0 := by
      have := (_root_.GlobalTheory.CompanionTheory.SW.GaussFou.gauss_fourier F ι M B ρ P hQ τ hτ).2.2.1
      simp only [eiTerm, fstar, opU, map_zero, zero_mul, AddChar.map_zero_eq_one, one_mul, Complex.ofReal_zero, add_zero,
        int_fou hD hφ]
      rw [mul_left_comm, this, mul_one]
    rw [eis, eis, (hsum _ hF _ hτ').tsum_eq_add_tsum_ite 0, (hsum _ hφ _ hτ).tsum_eq_add_tsum_ite 0, mul_add, mul_add,
      e1, e2, ← tsum_mul_left, add_left_comm, ← ((Equiv.inv F).trans (Equiv.neg F)).tsum_eq
        fun b => if b = 0 then 0 else eiTerm ψ lf B ρ P φ τ b]
    congr 2
    refine tsum_congr fun b => ?_
    by_cases hb : b = 0
    · simp [hb]
    · rw [if_neg hb, recip F lf hlf h1 ψ hψ ι M B ρ P hQ φ hφ τ hτ b hb]
      exact (if_neg (by simpa using hb)).symm
  · simp only [eis, eiTerm, fstar, opU, Pi.smul_apply, smul_eq_mul, mul_left_comm _ c, integral_const_mul, mul_assoc,
      tsum_mul_left, mul_add]

end CompanionTheory.PlacePermOperatorBicommutantSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.ThetaDilations.FstarDil =====

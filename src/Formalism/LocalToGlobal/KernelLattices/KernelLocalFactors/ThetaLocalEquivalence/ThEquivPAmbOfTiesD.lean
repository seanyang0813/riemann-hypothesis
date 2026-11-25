module

public import Formalism.LocalToGlobal.KernelLattices.ColInst
public import Formalism.LocalToGlobal.KernelLattices.ThEquiv
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FourthTensorThetaEqKernel
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.StdOK
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.VacEntire
public import Formalism.LocalToGlobal.KernelLattices.MuProd
public import Formalism.LocalToGlobal.KernelLattices.RatKDeg
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BlockShape
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.JetsRationalOfKernelRationality
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.KerEquivGen
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RatKDeg
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ChiLawAmbOf
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPStepCIff
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThIndEqAmbOfOf
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ColInst
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.AtZeroCompProdX
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.PeriodLatticeFinitelyGenerated

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOf, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOfTiesD

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOf", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColInst\npublic import Formalism.LocalToGlobal.KernelLattices.ThEquiv\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FourthTensorThetaEqKernel\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.StdOK\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.VacEntire\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.MainNotions

section An

variable {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem eNat_analytic (B : Base D cc δ) (χ : TaylorLogMetric.IdE D → ℂ) (hθ : AnalyticOnNhd ℂ B.thMM Set.univ) (N N' : ℕ)
    (L : Submodule (𝓞 D.host.E) (Fin N → D.host.E)) (L' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)) :
    AnalyticOnNhd ℂ (B.eNat χ N N' L L') Set.univ := by
  have hT := entireStatements_holds
  have h0 : AnalyticOnNhd ℂ (B.thZero N N') Set.univ := hT.2 _ B.thMM N N' hθ
  have h1 : AnalyticOnNhd ℂ (B.thHalf N N' L) Set.univ := hT.1 _ _ _ _ _ _ _ _ h0
  have h2 : AnalyticOnNhd ℂ (B.thMoved N N' L L') Set.univ := hT.1 _ _ _ _ _ _ _ _ h1
  intro z _
  exact analyticAt_const.mul (h2 z (Set.mem_univ _))

variable {X : Fields} (s : Seam D X) (B : Base D cc δ) (χ : TaylorLogMetric.IdE D → ℂ) (cD : D.what₂.Tau → ℂ)

theorem eOmega_ambOf {σ₀ : X.K →+* ℂ} (hN : NatOk s cc δ χ cD σ₀) (a b : ℕ) : (ambOf s B χ cD : Amb X).EOmega a b := by
  obtain ⟨hcc, hδ, -, -, -, -, -⟩ := hN
  intro N N' _ _
  have hA := eNat_analytic B χ (Formalism.L2.KerInert.AlgP.thMM_analytic B (B.stdOK hcc hδ)) a b (s.lat N) (s.lat N')
  have hc : ContDiff ℂ ⊤ (B.eNat χ a b (s.lat N) (s.lat N')) := hA.contDiff
  exact hc.comp (contDiff_pi.2 fun τ => contDiff_apply ℂ _ (s.iT.symm τ))

end An

section Main

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ}
  (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (u : Pr.Word)
  {D : D7} (s : Seam D X) {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ) (χ : TaylorLogMetric.IdE D → ℂ) (cD : D.what₂.Tau → ℂ)

end Main

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOf =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOfTiesD =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOfTiesD", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColInst\npublic import Formalism.LocalToGlobal.KernelLattices.MuProd\npublic import Formalism.LocalToGlobal.KernelLattices.RatKDeg\npublic import Formalism.LocalToGlobal.KernelLattices.ThEquiv\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BlockShape\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.JetsRationalOfKernelRationality\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.KerEquivGen\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.PeriodLatticeFinitelyGenerated\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RatKDeg\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ChiLawAmbOf\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOf\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPStepCIff\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThIndEqAmbOfOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ColInst\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.AtZeroCompProdX\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MvPolynomial

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.MainNotions

namespace TE

section PullD

variable {K : Type} [Field K] {ι : Type} [Fintype ι] {a b : ℕ}

theorem map_jetMap' {L : Type} [Field L] (σ : K →+* L) (J : (DVar ι a b →₀ ℕ) → K) (n : ι → ℕ) (P : Pol K ι a) :
    MvPolynomial.map σ (jetMap J n P) = jetMap (fun m => σ (J m)) n (MvPolynomial.map σ P) := by
  rw [Shape.map_jetMap]
  unfold jetMap
  simp only [LinearMap.comp_apply, LinearMap.mulRight_apply, AlgHom.toLinearMap_apply]

theorem jetMap_pullD (σ : K →+* ℂ) (cD : ι → ℂ) (G : VCx ι a b → ℂ) (hG : ContDiff ℂ ⊤ G)
    (g : ι → Matrix (Fin a) (Fin a) K) (h : ι → Matrix (Fin b) (Fin b) K) (L : VCx ι a b →ₗ[ℂ] VCx ι a b)
    (hL : ∀ k : DVar ι a b, L (coordX k) =
      ∑ p : Fin b × Fin a, (σ (h k.1 p.1 k.2.1) * σ (g k.1 k.2.2 p.2)) • coordX ((k.1, p.1, p.2) : DVar ι a b))
    (lam : ι → DomWeight a) (n : ι → ℕ)
    (J J' : (DVar ι a b →₀ ℕ) → K) (κ κ' : ℂ) (hJ : ∀ m, (∀ τ, degAt m τ = opDeg lam n τ) → σ (J m) = κ * jetC cD G m)
    (hJ' : ∀ m, (∀ τ, degAt m τ = opDeg lam n τ) → σ (J' m) = κ' * jetC cD (fun z => G (L z)) m) (r : K) (hr : κ' = σ r * κ)
    (P : Pol K ι a) (hP : P ∈ DIV.VV K lam) (hgP : Formalism.GradedWeylDivisibility.blockAct K g P ∈ DIV.VV K lam) :
    jetMap J' n P = (r * ∏ τ, (g τ).det ^ n τ) • Formalism.GradedWeylDivisibility.blockAct K h (jetMap J n (Formalism.GradedWeylDivisibility.blockAct K g P)) := by
  apply MvPolynomial.map_injective σ σ.injective
  have hc := jetMap_pull (RingHom.id ℂ) cD G hG (fun τ => (g τ).map σ) (fun τ => (h τ).map σ) L (fun k => hL k)
    (fun m => κ * jetC cD G m) (fun m => κ' * jetC cD (fun z => G (L z)) m) κ κ' (fun m => rfl) (fun m => rfl) (σ r) hr n
    (MvPolynomial.map σ P)
  have e1 : jetMap (fun m => σ (J' m)) n (MvPolynomial.map σ P) = jetMap (fun m => κ' * jetC cD (fun z => G (L z)) m) n (MvPolynomial.map σ P) :=
    jet_local_rationality ℂ ι a b lam n _ _ hJ' _ (map_mem_VV σ lam P hP)
  have e2 : jetMap (fun m => σ (J m)) n (MvPolynomial.map σ (Formalism.GradedWeylDivisibility.blockAct K g P)) =
      jetMap (fun m => κ * jetC cD G m) n (MvPolynomial.map σ (Formalism.GradedWeylDivisibility.blockAct K g P)) :=
    jet_local_rationality ℂ ι a b lam n _ _ hJ _ (map_mem_VV σ lam _ hgP)
  have hR : MvPolynomial.map σ ((r * ∏ τ, (g τ).det ^ n τ) • Formalism.GradedWeylDivisibility.blockAct K h (jetMap J n (Formalism.GradedWeylDivisibility.blockAct K g P))) =
      (σ r * ∏ τ, ((g τ).map σ).det ^ n τ) • Formalism.GradedWeylDivisibility.blockAct ℂ (fun τ => (h τ).map σ)
        (jetMap (fun m => κ * jetC cD G m) n (Formalism.GradedWeylDivisibility.blockAct ℂ (fun τ => (g τ).map σ) (MvPolynomial.map σ P))) := by
    rw [smul_eq_C_mul, map_mul, map_C, map_blockAct, map_jetMap', e2, map_blockAct, C_mul']
    congr 1
    rw [map_mul, map_prod]
    simp only [map_pow, RingHom.map_det]
    rfl
  rw [map_jetMap', e1, hc, hR]

end PullD

end TE

section MainD

variable {X : Fields} (A : Amb X) {a b : ℕ} (Sall SB : Finset (HeightOneSpectrum (𝓞 X.E))) (D : ℕ)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) (mU : HeightOneSpectrum (𝓞 X.E) → X.Kˣ) (mI : SB → X.E → X.K)
  (lam : X.Tau → DomWeight a) (lam' : X.Tau → DomWeight b) (n : X.Tau → ℕ)

theorem thEquivP_ofD (e : X.Tau → ℤ) (hV : JetInVV X.K lam lam' n) (hrat : A.JetsRatDeg a b Sall D (opDeg lam n)) (hAn : A.IndOmega a b Sall D)
    (hInd : A.ThIndEq a b Sall D) (hChi : A.ChiLaw a b) (hMa : MuProdLaw a sel SB mU mI e) (hMb : MuProdLaw b sel SB mU mI e)
    (hW : WtLaw lam lam' n e) :
    ThEquivP (thDistC A Sall SB D sel mU mI lam lam' n) Sall D ((rhoVr X.emb lam).comp (ufGL X.E a)) ((rhoVr X.emb lam').comp (ufGL X.E b)) := by
  intro γ γ' N fr N' fr' c x hR
  have hR' : InRange Sall D c (gmap γ.1 N) (gmap γ'.1 N') (γ'.1.toLinearMap ∘ₗ x ∘ₗ γ.1.symm.toLinearMap) :=
    ⟨isSdLat_gmap hR.1 γ, isSdLat_gmap hR.2.1 γ', hR.2.2.1, hR.2.2.2.1, (divLat_gmap_iff Sall D γ.1 γ'.1 N N' x).2 hR.2.2.2.2⟩
  unfold thDistC
  rw [if_pos ⟨hR'.2.2.2.1, hR'.2.2.2.2⟩, if_pos ⟨hR.2.2.2.1, hR.2.2.2.2⟩]
  apply LinearMap.ext
  intro P
  apply Subtype.ext
  obtain ⟨d, hd⟩ : ∃ d : X.Tau → X.K, d = fun τ => X.emb τ ((LinearEquiv.det γ.1 : X.Eˣ) : X.E) := ⟨_, rfl⟩
  obtain ⟨d', hd'⟩ : ∃ d' : X.Tau → X.K, d' = fun τ => X.emb τ ((LinearEquiv.det γ'.1 : X.Eˣ) : X.E) := ⟨_, rfl⟩
  have hdτ : ∀ τ, X.emb τ ((LinearEquiv.det γ.1 : X.Eˣ) : X.E) = d τ := fun τ => by rw [hd]
  have hdτ' : ∀ τ, X.emb τ ((LinearEquiv.det γ'.1 : X.Eˣ) : X.E) = d' τ := fun τ => by rw [hd']
  have hd0 : ∀ τ, d τ ≠ 0 := fun τ => by rw [← hdτ]; exact (map_ne_zero (X.emb τ)).2 (Units.ne_zero _)
  have hd0' : ∀ τ, d' τ ≠ 0 := fun τ => by rw [← hdτ']; exact (map_ne_zero (X.emb τ)).2 (Units.ne_zero _)
  have hinv : ∀ τ, X.emb τ ((LinearEquiv.det (γ⁻¹ : UF X.E a).1 : X.Eˣ) : X.E) = (d τ)⁻¹ := by
    intro τ
    rw [← hdτ, InvMemClass.coe_inv, map_inv, Units.val_inv_eq_inv_val, map_inv₀]
  have hgP : Formalism.GradedWeylDivisibility.blockAct X.K (TE.matT X.emb γ) (P : Pol X.K X.Tau a) ∈ DIV.VV X.K lam := by
    have hm := (((rhoVr X.emb lam).comp (ufGL X.E a)) γ⁻¹ P).2
    rw [TE.rho_coe, inv_inv] at hm
    have hne : (∏ τ, (X.emb τ ((LinearEquiv.det (γ⁻¹ : UF X.E a).1 : X.Eˣ) : X.E)) ^ (-(lam τ).detShift)) ≠ 0 :=
      Finset.prod_ne_zero_iff.2 fun τ _ => zpow_ne_zero _ ((map_ne_zero (X.emb τ)).2 (Units.ne_zero _))
    have h2 := (DIV.VV X.K lam).smul_mem (∏ τ, (X.emb τ ((LinearEquiv.det (γ⁻¹ : UF X.E a).1 : X.Eˣ) : X.E)) ^ (-(lam τ).detShift))⁻¹ hm
    rwa [inv_smul_smul₀ hne] at h2
  have hpull := TE.jetMap_pullD A.σ₀ A.cD (A.thInd Sall N N' c x) (hAn N N' c x hR) (TE.matT X.emb γ) (TE.matT X.emb γ'⁻¹)
    (TE.mulL (fun τ => (TE.matT X.emb γ'⁻¹ τ).map A.σ₀) (fun τ => (TE.matT X.emb γ τ).map A.σ₀))
    (fun k => TE.mulL_coordX _ _ k) lam n
    (A.jetK Sall N N' c x) (A.jetK Sall (gmap γ.1 N) (gmap γ'.1 N') c (γ'.1.toLinearMap ∘ₗ x ∘ₗ γ.1.symm.toLinearMap))
    (A.chiF a b N N')⁻¹ (A.chiF a b (gmap γ.1 N) (gmap γ'.1 N'))⁻¹ (fun m hm => jetK_spec_deg A Sall D _ hrat N N' c x hR m hm)
    (by
      intro m hm
      rw [jetK_spec_deg A Sall D _ hrat _ _ c _ hR' m hm]
      congr 2
      funext z
      rw [hInd γ γ' N N' c x hR z, pullV_eq])
    ((∏ τ, d τ) ^ ((b / 2 : ℕ) : ℤ) * (∏ τ, d' τ) ^ (-((a / 2 : ℕ) : ℤ)))
    (by
      rw [hChi γ γ' N N' hR.1 hR.2.1, mul_inv, mul_inv, ← zpow_neg, neg_neg, ← zpow_neg, map_mul, map_zpow₀, map_zpow₀, map_prod, map_prod]
      simp only [hd, hd']
      rfl)
    (P : Pol X.K X.Tau a) P.2 hgP
  rw [LinearMap.smul_apply, LinearMap.comp_apply, LinearMap.comp_apply, LinearMap.smul_apply, map_smul, Submodule.coe_smul,
    Submodule.coe_smul, jetOp_coe lam lam' n hV, TE.rho_coe, jetOp_coe lam lam' n hV, TE.rho_coe, inv_inv, hpull,
    hMa γ N fr hR.1, hMb γ' N' fr' hR.2.1]
  simp only [map_smul, smul_smul, TE.det_matT, hinv, hdτ, hdτ']
  congr 1
  have A1 := scal_a d hd0 e (fun τ => (lam τ).detShift) n (b / 2) hW.1
  have A2 := scal_b d' hd0' e (fun τ => (lam' τ).detShift) (a / 2) hW.2
  rw [← A1, ← A2, mul_inv]
  ring

end MainD

section Chain

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ}
  (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (A : Amb X) (u : Pr.Word)

theorem thEquivP_stepT_ofD {i : ℕ} (hi : i < R.m) (e : X.Tau → ℤ) (he : ∀ τ, (e τ : ℚ) = (W.hc u τ).e ⟨i, hi⟩)
    (hrat : A.JetsRatDeg (R.N i) (R.N (i + 1)) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u) (stepDeg W u i))
    (hE : A.EOmega (R.N i) (R.N (i + 1)))
    (hInd : A.ThIndEq (R.N i) (R.N (i + 1)) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u))
    (hChi : A.ChiLaw (R.N i) (R.N (i + 1)))
    (hMa : MuProdLaw (R.N i) sel (rowSG Pr sel mu) (mUof Ch mu i) (muAtT Ch sel mu cst i) e)
    (hMb : MuProdLaw (R.N (i + 1)) sel (rowSG Pr sel mu) (mUof Ch mu i) (muAtT Ch sel mu cst i) e) :
    ThEquivP (stepT W Ch sel mu cst A u i (W.lamTrue u (i + 1))) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u)
      (colValF W sel mu u i).rho (colValF W sel mu u (i + 1)).rho :=
  thEquivP_ofD A (Sall sel mu u) (rowSG Pr sel mu) (cAof sel mu cst * cBof sel mu cst u) sel (mUof Ch mu i) (muAtT Ch sel mu cst i)
    (W.lamTrue u i) (W.lamTrue u (i + 1)) (nuLast W u i) e (jet_in_weight_space_chain W u hi) hrat (indOmega_of A _ _ _ _ hE) hInd hChi hMa hMb
    (wtLaw_step W u hi e he)

theorem chThT_laws_of {m2 : ℕ} (hm : R.m = m2 + 2)
    (h : ∀ i, i < R.m → ThEquivP (stepT W Ch sel mu cst A u i (W.lamTrue u (i + 1))) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u)
      (colValF W sel mu u i).rho (colValF W sel mu u (i + 1)).rho) :
    (∀ i, i ≤ m2 → ThEquivP ((chThT W Ch sel mu cst A u m2).th i) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u)
      (colValF W sel mu u i).rho (colValF W sel mu u (i + 1)).rho) ∧
    ThEquivP (chThT W Ch sel mu cst A u m2).top (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u)
      (colValF W sel mu u (m2 + 1)).rho (colVal W u R.m (Pr.vT u) (rowSG Pr sel mu)).rho :=
  ⟨fun i hi => h i (by omega), (top_cast W Ch sel mu cst A u hm).1.2 (h (m2 + 1) (by omega))⟩

end Chain

section Rec

variable {X : Fields} {Pr : Primes X} {R : Ranks} {W : Wts X Pr.Word R} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {G : ChGlob X R.m} (u : Pr.Word)
  {D : D7} (s : Seam D X) {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ) (χ : TaylorLogMetric.IdE D → ℂ) (cD : D.what₂.Tau → ℂ)

theorem thEquivP_ambOf_tiesD (hIT : ThIndOfEq) {σ₀ : X.K →+* ℂ} (hN : NatOk s cc δ χ cD σ₀) (hX : X.AbelianUnramifiedExtensionConditions) (hPr : Pr.Ok) (hsel : IsSel X sel)
    (hg : XiOffG Pr (mu : Chr X.F X.E X.K)) (hT : LawTies W Ch sel mu cst G) (hTu : 0 < Pr.T u) {i : ℕ} (hi : i < R.m) (e : X.Tau → ℤ)
    (he : ∀ τ, (e τ : ℚ) = (W.row τ).e ⟨i, hi⟩)
    (hLa : (ambOf s B χ cD : Amb X).LaHyp (R.N i) (R.N (i + 1)) (Sall sel mu u))
    (hrat : (ambOf s B χ cD : Amb X).JetsRatDeg (R.N i) (R.N (i + 1)) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u) (stepDeg W u i)) :
    ThEquivP (stepT W Ch sel mu cst (ambOf s B χ cD) u i (W.lamTrue u (i + 1))) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u)
      (colValF W sel mu u i).rho (colValF W sel mu u (i + 1)).rho := by
  have he' : ∀ τ, (e τ : ℚ) = (W.hc u τ).e ⟨i, hi⟩ := by
    intro τ
    rw [he τ, ← hT.2.2.2 u τ]
    rfl
  exact thEquivP_stepT_ofD W Ch sel mu cst (ambOf s B χ cD) u hi e he' hrat (eOmega_ambOf s B χ cD hN _ _)
    (thIndEq_ambOf_of s B χ cD hIT hN (even_rankN R i) (even_rankN R (i + 1)) _ (modulus_pos sel mu cst u hTu) hLa)
    (chiLaw_ambOf s B χ cD hN (even_rankN R i) (even_rankN R (i + 1)))
    (muProdLaw_of hX hPr hsel hg hT i hi e he _) (muProdLaw_of hX hPr hsel hg hT i hi e he _)

end Rec

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThetaLocalEquivalence.ThEquivPAmbOfTiesD =====

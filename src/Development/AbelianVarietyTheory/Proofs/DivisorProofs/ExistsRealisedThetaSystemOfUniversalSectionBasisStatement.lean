module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitOfBasicOpenTop
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpanEqTopOfFunctionals
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SecMInvariantEqBotOrUnivAtGeometricPoint
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ThetaGrpActsLinearly
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaEmbeddingSectionsBaseChangeAffine
public import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ClosureZmodPowEqTopOfMeetsTorsionCosetsStatement
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsIsTorsFrameOfSymLiftStatement
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsNormalisedMulPullIsoOriginStatement
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsOperators
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsSymLiftGlobalStatement
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsThetaSystemOfPolarisedLevel
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsThetaLevelAbelianSchemeGlueAffineCover
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ForallGeometricallyIntegralOfSmoothOfGeometrical
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.PsbLb
import Development.AbelianVarietyTheory.Definitions.Degenerations.InducedModelMorphismCompStructureMap
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnivBasis
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.CoeNonzeroLocusCanonicalEqComplRange
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorsionPointsOfSquareLevelStatement
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUniqueOfBasis
import Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.IsThetaPtOverMove
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsGeneratorNeZero
import Development.AbelianVarietyTheory.Statements.TorsionEndomorphisms.ExistsGeneratorOfIsField
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf
import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaSectionGeneratorPower, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasisStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaSectionGeneratorPower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaSectionGeneratorPower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SpanEqTopOfFunctionals\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ForallGeometricallyIntegralOfSmoothOfGeometrical\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SecMInvariantEqBotOrUnivAtGeometricPoint\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ThetaGrpActsLinearly\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaEmbeddingSectionsBaseChangeAffine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.PsbLb\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.InducedModelMorphismCompStructureMap\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnivBasis\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.ZH
open Classical
open ReciprocityTheory.ChartRestriction.G.Out
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.ThetaSpan

open GlobalTheory.VVRank GlobalTheory.EmbPull GlobalTheory.ThetaReal TopologicalSpace

theorem exists_pow_smul_of_mem_span {R R' M M' I : Type} [CommRing R] [CommRing R'] [AddCommGroup M]
    [AddCommGroup M'] [Module R M] [Module R' M'] (σ : R →+* R') (φ : M →ₛₗ[σ] M') (f : R)
    (hf : ∀ d : R', ∃ (m : ℕ) (d₀ : R), σ d₀ = σ (f ^ m) * d) (t : I → M) (y : M')
    (hy : y ∈ Submodule.span R' (Set.range fun i => φ (t i))) :
    ∃ (n : ℕ) (u : M), u ∈ Submodule.span R (Set.range t) ∧ φ u = σ (f ^ n) • y := by
  induction hy using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨i, rfl⟩ := hy
    exact ⟨0, t i, Submodule.subset_span ⟨i, rfl⟩, by simp⟩
  | zero => exact ⟨0, 0, Submodule.zero_mem _, by simp⟩
  | add y z _ _ hy hz =>
    obtain ⟨n, u, hu, e⟩ := hy
    obtain ⟨k, v, hv, e'⟩ := hz
    refine ⟨n + k, f ^ k • u + f ^ n • v,
      Submodule.add_mem _ (Submodule.smul_mem _ _ hu) (Submodule.smul_mem _ _ hv), ?_⟩
    rw [map_add (f := _), LinearMap.map_smulₛₗ, LinearMap.map_smulₛₗ, e, e', smul_add, smul_smul, smul_smul,
      ← map_mul, ← map_mul, ← pow_add, ← pow_add, add_comm k n]
  | smul d y _ hy =>
    obtain ⟨n, u, hu, e⟩ := hy
    obtain ⟨k, d₀, hd⟩ := hf d
    refine ⟨k + n, d₀ • u, Submodule.smul_mem _ _ hu, ?_⟩
    rw [LinearMap.map_smulₛₗ, e, hd, smul_smul, smul_smul, pow_add, map_mul]
    congr 1
    ring

variable {S : Scheme.{0}} (P : PolAV S)

theorem span_eq_top_of_geomFibres (hS : SecBaseChangeAnySt) [IsAffine S] (N : ℕ) (hN : 1 ≤ N) {I : Type}
    (t : I → SecM P.A P.L N (baseOver S))
    (H : ∀ (K : Type) [Field K] [IsAlgClosed K] (w : Spec (CommRingCat.of K) ⟶ S) (h : Over.mk w ⟶ baseOver S),
      Submodule.span Γ((Over.mk w).left, ⊤) (Set.range fun i => pullM P.A P.L N h (t i)) = ⊤) :
    Submodule.span Γ((baseOver S).left, ⊤) (Set.range t) = ⊤ := by
  have haff : IsAffine (baseOver S).left := ‹IsAffine S›
  refine eq_top_iff.2 fun x _ => ?_
  let J : Ideal Γ((baseOver S).left, ⊤) := (Submodule.span Γ((baseOver S).left, ⊤) (Set.range t)).comap
    (LinearMap.toSpanSingleton _ _ x)
  have key : ∀ p : (baseOver S).left, ∃ f ∈ J, p ∈ (baseOver S).left.basicOpen f := fun p => by
    obtain ⟨V, hV, b, hb⟩ := hS S P N hN p
    obtain ⟨f, hf, hp⟩ := (isAffineOpen_top (baseOver S).left).exists_basicOpen_le (V := V) ⟨p, hV⟩ trivial
    let W := (baseOver S).left.basicOpen f
    let l : overRes W ⟶ overRes (T := baseOver S) V := Over.homMk ((baseOver S).left.homOfLE hf) (by
      change (baseOver S).left.homOfLE hf ≫ V.ι ≫ _ = W.ι ≫ _
      rw [Scheme.homOfLE_ι_assoc])
    have hW : IsAffineOpen W := (isAffineOpen_top _).basicOpen f
    have : IsAffine (overRes W).left := hW
    obtain ⟨c, hc⟩ := exists_basis P N b hb (overRes W) l
    have hspan : Submodule.span Γ((overRes W).left, ⊤)
        (Set.range fun i => pullM P.A P.L N (overResι W) (t i)) = ⊤ := by
      refine span_eq_top_of_functionals c _ fun 𝔪 h𝔪 ℓ hl y => ?_
      obtain ⟨K, _, _, u, hu⟩ := exists_geomPoint (overRes W).left 𝔪 h𝔪
      let w : Spec (CommRingCat.of K) ⟶ S := u ≫ (overRes W).hom
      let h : Over.mk w ⟶ overRes W := Over.homMk u rfl
      have haffK : IsAffine (Over.mk w).left := inferInstanceAs (IsAffine (Spec _))
      obtain ⟨b', hb'⟩ := exists_basis P N b hb (Over.mk w) (h ≫ l)
      refine (hu _).1 (functional_mem_of_span h.left.appTop.hom (pullM P.A P.L N h) c b'
        (fun i => by rw [hc, hb', pullM_comp P.A P.isLB]) _ ?_ ℓ (fun i => (hu _).2 (hl i)) y)
      simp only [pullM_comp P.A P.isLB]
      exact H K w _
    obtain ⟨n, u, hu, e⟩ := exists_pow_smul_of_mem_span (overResι W).left.appTop.hom
      (pullM P.A P.L N (overResι W)) f (exists_pow_mul_extend f) t (pullM P.A P.L N (overResι W) x)
      (hspan.ge trivial)
    obtain ⟨k, hk⟩ := exists_pow_kill_secM P N f (f ^ n • x - u) (by
      rw [map_sub, LinearMap.map_smulₛₗ, e, sub_self])
    refine ⟨f ^ k * f ^ n, ?_, ?_⟩
    · rw [smul_sub, sub_eq_zero, ← mul_smul] at hk
      change (f ^ k * f ^ n) • x ∈ Submodule.span _ _
      rw [hk]
      exact Submodule.smul_mem _ _ hu
    · rw [Scheme.mem_basicOpen_top] at hp ⊢
      simp only [map_mul, map_pow]
      exact (hp.pow _).mul (hp.pow _)
  have hI : Ideal.span (J : Set Γ((baseOver S).left, ⊤)) = ⊤ :=
    (isAffineOpen_top (baseOver S).left).self_le_iSup_basicOpen_iff.1 fun p _ => by
      obtain ⟨f, hf, hp⟩ := key p
      exact Opens.mem_iSup.2 ⟨⟨f, hf⟩, hp⟩
  rw [Ideal.span_eq, Ideal.eq_top_iff_one] at hI
  have := Submodule.mem_comap.1 hI
  rwa [LinearMap.toSpanSingleton_apply, one_smul] at this

theorem pullS_ne_zero (hS : SecBaseChangeAnySt) {T : Over S} [IsAffine T.left] {th : LB.Sec (LPow P.A P.L 1 T)}
    (hth : IsGenSec P.A P.L 1 th) {K : Type} [Field K] (w : Spec (CommRingCat.of K) ⟶ S) (h : Over.mk w ⟶ T) :
    (SecM.ofSec P.A (pullS P.A 1 h th) : SecM P.A P.L 1 (Over.mk w)) ≠ 0 := by
  intro hz
  have haffK : IsAffine (Over.mk w).left := inferInstanceAs (IsAffine (Spec _))
  have hntK : Nontrivial Γ((Over.mk w).left, ⊤) :=
    (Scheme.ΓSpecIso (CommRingCat.of K)).hom.hom.domain_nontrivial
  obtain ⟨V, hV, b, hb⟩ := hS S P 1 le_rfl (w (default : Spec (CommRingCat.of K)))
  let l : Over.mk w ⟶ overRes (T := baseOver S) V := Over.homMk
    (IsOpenImmersion.lift V.ι w (by
      rw [Scheme.Opens.range_ι]
      rintro _ ⟨y, rfl⟩
      rw [Subsingleton.elim (α := Spec (CommRingCat.of K)) y default]
      exact hV)) ((congrArg (_ ≫ ·) (Category.comp_id _)).trans (IsOpenImmersion.lift_fac _ _ _))
  obtain ⟨c, -⟩ := exists_basis P 1 b hb (Over.mk w) l
  let i₀ : Fin (1 ^ P.g) := ⟨0, by simp⟩
  obtain ⟨r, hr⟩ := isGenSec_pullS P hS h hth (SecM.toSec P.A (c i₀))
  have hr' : c i₀ = r • SecM.ofSec P.A (pullS P.A 1 h th) := Subtype.ext (funext hr)
  exact c.ne_zero i₀ (hr'.trans ((congrArg (r • ·) hz).trans (smul_zero r)))

theorem span_translates_mulPull_of_isGenSec : Laws → Laws2 → ∀ (R : Type) [CommRing R] [IsDomain R] [IsNoetherianRing R] (P : PolAV (Sp R)) (m N : ℕ), N = m ^ 2 → 1 ≤ m → IsUnit (m : Γ(Sp R, ⊤)) → ∀ (th : LB.Sec (LPow P.A P.L 1 (baseOver (Sp R)))), IsGenSec P.A P.L 1 th → ∀ (α : LB.Gen (LB.LinComb P.L (K := Fin 2) ![(snd (baseOver (Sp R)) P.A).left, (snd (baseOver (Sp R)) P.A ^ m).left] ![(N : ℤ), -1])), α.IsGen → ∀ s₀ : LB.Sec (LPow P.A P.L N (baseOver (Sp R))), IsTwistPull P.A P.L (mulT P.A _ m) (snd _ P.A ^ m) (lift_snd _ _) N 1 α th s₀ → ∀ (I : Type) (U : I → ThetaGrp P.A P.L N (baseOver (Sp R))) (t : I → LB.Sec (LPow P.A P.L N (baseOver (Sp R)))), (∀ (K : Type) [Field K] [IsAlgClosed K] (x : Sp K ⟶ Sp R) (z : Over.mk x ⟶ P.A), z ^ N = 1 → ∃ i, (Over.homMk x (by simp) : Over.mk x ⟶ baseOver (Sp R)) ≫ (U i).pt = z) → (∀ i, IsActOf P.A P.L N (U i) s₀ (t i)) → Submodule.span Γ((baseOver (Sp R)).left, ⊤) (Set.range fun i => (SecM.ofSec P.A (t i) : SecM P.A P.L N (baseOver (Sp R)))) = ⊤ := by
  intro hL hL2 R _ _ _ P m N hN hm hunit th hth α hα s₁ hs₁ I U t hU ht
  subst hN
  have hk : m ^ 2 = 1 ∨ 4 ≤ m ^ 2 := by
    rcases Nat.lt_or_ge m 2 with h | h
    · left; rw [show m = 1 by omega]; rfl
    · right; nlinarith
  have hsurj : Surjective (mulA P.A m).left := (hL.mulN (Sp R) P m hm).2.2.1
  have haff : IsAffine (baseOver (Sp R)).left := inferInstanceAs (IsAffine (Spec _))
  refine span_eq_top_of_geomFibres P hL2.secBaseChangeAny (m ^ 2) (Nat.one_le_pow _ _ hm) _ fun K _ _ w h => ?_
  obtain rfl : h = Over.homMk w (Category.comp_id _) :=
    Over.OverMorphism.ext ((Category.comp_id _).symm.trans (Over.w h))
  set h : Over.mk w ⟶ baseOver (Sp R) := Over.homMk w (Category.comp_id _)
  obtain ⟨ρ', k₁, -, k₃, k₄⟩ := thetaGrp_acts_linearly hL.globalFns (Sp R) P (m ^ 2 : ℕ) (Over.mk w)
  choose U' hU' using fun c => exists_theta_pull P.A P.isLB h (U c)
  have e : ∀ c, pullM P.A P.L (m ^ 2 : ℕ) h (SecM.ofSec P.A (t c)) =
      ρ' (U' c) (SecM.ofSec P.A (pullS P.A _ h s₁)) := fun c =>
    ((k₁ _ _ _).1 ((hU' c).2 _ _ (ht c))).symm
  simp only [e]
  have hI : Nonempty I := ⟨(hU K w 1 (by have := P.isAb.comm; exact one_pow _)).choose⟩
  refine span_translates_eq_top P.A
    ((secM_invariant_eq_bot_or_univ_at_geometric_point hL.polBaseChange).2 hL.irred (Sp R) P K w (m ^ 2) hk
    (by rw [Nat.cast_pow]; exact pow_ne_zero _ (natCast_ne_zero w hunit))) ρ' k₁ k₃ k₄ U'
    (fun θ => ?_) _ fun h0 => ?_
  · obtain ⟨c, hc'⟩ := hU K w θ.pt ((hL.kerPow (Sp R) P (m ^ 2) (Nat.one_le_pow _ _ hm) (Over.mk w) θ.pt).1 fun _ =>
      ⟨⊤, trivial, _, LB.isGen_genPull _ θ.φ θ.isGen _⟩)
    exact ⟨c, (hU' c).1.trans hc'⟩
  · obtain ⟨α', -, k₂⟩ := exists_twist_pull P.A (ψ := mulT P.A (baseOver (Sp R)) m) (hm := lift_snd _ _)
      (b := 1) P.isLB hα h (ψ' := mulT P.A (Over.mk w) m) (lift_snd _ _) (mulT_comm P.A h m)
    have hint : IsIntegral (Over.mk w ⊗ P.A).left :=
      (forall_geometricallyIntegral_of_smooth_of_geometricallyConnected _ _ P.A.hom P.isAb.smooth
        P.isAb.geomConnected).geometrically_isIntegral w _ _
        (IsPullback.of_hasPullback w P.A.hom).flip
    exact pullS_ne_zero P hL2.secBaseChangeAny hth w h
      (ofSec_eq_zero_of_twist P.A P.isLB (surjective_mulT P.A m hsurj _) (k₂ _ _ hs₁) h0)

end GlobalTheory.ThetaSpan
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaSectionGeneratorPower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.CoeNonzeroLocusCanonicalEqComplRange\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ClosureZmodPowEqTopOfMeetsTorsionCosetsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsIsTorsFrameOfSymLiftStatement\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsNormalisedMulPullIsoOriginStatement\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsOperators\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsSymLiftGlobalStatement\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsThetaSystemOfPolarisedLevel\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorsionPointsOfSquareLevelStatement\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUniqueOfBasis\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsThetaLevelAbelianSchemeGlueAffineCover\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaEmbeddingSectionsBaseChangeAffine\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ThetaSectionGeneratorPower\nimport Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.IsThetaPtOverMove\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsGeneratorNeZero\nimport Development.AbelianVarietyTheory.Statements.TorsionEndomorphisms.ExistsGeneratorOfIsField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

section
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.ZH
open Classical
open ReciprocityTheory.ChartRestriction.G.Out
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.ThetaReal

noncomputable section
namespace GlobalTheory.ThetaSBasis

theorem isGenSec_of_isSecBasis {S : Scheme.{0}} (P : PolAV S) {T : Over S} {th : LB.Sec (LPow P.A P.L 1 T)}
    (h : IsSecBasis _ (fun _ : Fin 1 => th)) : IsGenSec P.A P.L 1 th := fun s => by
  obtain ⟨r, hr, -⟩ := h s
  exact ⟨r 0, fun j => (hr j).trans (Fin.sum_univ_one _)⟩

theorem isUnit_of_basicOpen_eq_top {Y : Scheme.{0}} (a : Γ(Y, ⊤)) (h : Y.basicOpen a = ⊤) :
    IsUnit a := by
  apply _root_.GlobalTheory.RescaleLift.isUnit_of_basicOpen_top <;> assumption

theorem exists_good_translate (hL : Laws) (hL₂ : Laws2) {S : Scheme.{0}} [IsAffine S] (P : PolAV S) (K : Type)
    [Field K] [IsAlgClosed K] (x : Sp K ⟶ S) (n : ℕ) (hn : 2 ≤ n) (hK : (n : K) ≠ 0)
    (th : LB.Sec (LPow P.A P.L 1 (baseOver S))) (hth : IsGenSec P.A P.L 1 th) (a : Over.mk x ⟶ P.A) :
    ∃ y : Over.mk x ⟶ P.A, y ^ n = 1 ∧ ∀ (z : baseOver S ⟶ P.A)
      (τ : LB.Gen (LB.LinComb P.L (Y := (baseOver S).left) (K := Fin 1) (fun _ => z.left) (fun _ => 1)))
      (v : Γ((baseOver S).left, ⊤)), (Over.homMk x (by simp) : Over.mk x ⟶ baseOver S) ≫ z = a * y →
        τ.IsGen → IsValueAt P.A P.L 1 th z τ v → v ≠ 0 := by
  let β : Over.mk x ⟶ baseOver S := Over.homMk x (by simp)
  have : IsAffine (baseOver S).left := ‹IsAffine S›
  have h₀ : SecM.ofSec P.A (VVRank.pullS P.A 1 β th) ≠ 0 :=
    GlobalTheory.ThetaSpan.pullS_ne_zero P hL₂.secBaseChangeAny hth x β
  obtain ⟨y, hy, hu⟩ := GlobalTheory.UT.ExactTerm.exists_good_point hL.goodPt hL.polBaseChange P x hn hK _ h₀ a
  refine ⟨y, hy, fun z τ v hz _ hv h0 => ?_⟩
  let p : (Over.mk x).left := IsLocalRing.closedPoint K
  obtain ⟨J, hJ⟩ := GlobalTheory.ConstFam.exists_good' P.isLB p
  have q := hu p J hJ
  have e : (ptSecT P.A (a * y)).left ≫ (β ▷ P.A).left = β.left ≫ (ptSecT P.A z).left := by
    rw [← Over.comp_left, ← Over.comp_left, ← hz]
    congr 1
    ext1 <;> simp [ptSecT, β]
  rw [VVRank.sv_pullS _ _ _ _ _ _ hJ, e, GlobalTheory.ThetaPtMove.sv_of_isValueAt hv _ p hJ, h0,
    GlobalTheory.UT.ExactTerm.gs_zero' β.left p ⊤ trivial, MulZeroClass.zero_mul] at q
  exact not_isUnit_zero q


open VVRank in
theorem linearIndependent_of_span (hS : SecBaseChangeAnySt) {R : Type} [CommRing R] [IsDomain R]
    (P : PolAV (Sp R)) (N : ℕ) (hN : 1 ≤ N) {κ : Type} [Fintype κ]
    (t : κ → SecM P.A P.L N (baseOver (Sp R))) (hcard : Fintype.card κ = N ^ P.g)
    (hspan : ⊤ ≤ Submodule.span Γ((baseOver (Sp R)).left, ⊤) (Set.range t)) :
    LinearIndependent Γ((baseOver (Sp R)).left, ⊤) t := by
  let X : Scheme.{0} := (baseOver (Sp R)).left
  have haff : IsAffine X := inferInstanceAs (IsAffine (Sp R))
  have hint : IsIntegral X := inferInstanceAs (IsIntegral (Sp R))
  let p : X := (⊥ : PrimeSpectrum R)
  obtain ⟨V, hV, b, hb⟩ := hS (Sp R) P N hN p
  obtain ⟨f, hf, hp⟩ := (isAffineOpen_top X).exists_basicOpen_le (V := V) ⟨p, hV⟩ trivial
  let W := X.basicOpen f
  let l : overRes W ⟶ overRes (T := baseOver (Sp R)) V := Over.homMk (X.homOfLE hf) (by
    change X.homOfLE hf ≫ V.ι ≫ _ = W.ι ≫ _
    rw [Scheme.homOfLE_ι_assoc])
  have hW : IsAffineOpen W := (isAffineOpen_top _).basicOpen f
  have : IsAffine (overRes W).left := hW
  obtain ⟨c, hc⟩ := exists_basis P N b hb (overRes W) l
  have : Nonempty (overRes W).left := ⟨⟨p, hp⟩⟩
  have : IsOpenImmersion (overResι W).left := inferInstanceAs (IsOpenImmersion W.ι)
  let σ := (overResι W).left.appTop.hom
  have hσ : Function.Injective σ := _root_.GlobalTheory.NormalCubeExt.appTop_injective (overResι W).left
  have hnt : Nontrivial Γ((overRes W).left, ⊤) :=
    ⟨⟨1, 0, fun e => one_ne_zero (hσ ((map_one σ).trans (e.trans (map_zero σ).symm)))⟩⟩
  have hfu : IsUnit (σ f) := isUnit_of_basicOpen_eq_top _ (by
    refine (Scheme.preimage_basicOpen_top (overResι W).left f).symm.trans ?_
    exact eq_top_iff.2 fun z _ => z.2)
  have key : ∀ u ∈ Submodule.span Γ(X, ⊤) (Set.range t), pullM P.A P.L N (overResι W) u ∈
      Submodule.span Γ((overRes W).left, ⊤) (Set.range fun i => pullM P.A P.L N (overResι W) (t i)) := by
    intro u hu
    induction hu using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨i, rfl⟩ := hy
      exact Submodule.subset_span ⟨i, rfl⟩
    | zero => rw [map_zero]; exact Submodule.zero_mem _
    | add y z _ _ hy hz => rw [map_add (f := _)]; exact Submodule.add_mem _ hy hz
    | smul d y _ hy => rw [LinearMap.map_smulₛₗ]; exact Submodule.smul_mem _ _ hy
  have hspanW : ⊤ ≤ Submodule.span Γ((overRes W).left, ⊤)
      (Set.range fun i => pullM P.A P.L N (overResι W) (t i)) := by
    intro y _
    obtain ⟨n, u, hu⟩ := EmbPull.exists_pow_extend_secM P N f y
    have h1 := key u (hspan trivial)
    rw [hu] at h1
    obtain ⟨v, hv⟩ := (hfu.pow n).exists_left_inv
    have h2 := Submodule.smul_mem _ v h1
    rwa [smul_smul, map_pow, hv, one_smul] at h2
  haveI : Module.Free Γ((overRes W).left, ⊤) (SecM P.A P.L N (overRes W)) := Module.Free.of_basis c
  haveI : Module.Finite Γ((overRes W).left, ⊤) (SecM P.A P.L N (overRes W)) := Module.Finite.of_basis c
  have hfr : Fintype.card κ = Module.finrank Γ((overRes W).left, ⊤) (SecM P.A P.L N (overRes W)) := by
    rw [Module.finrank_eq_card_basis c, hcard, Fintype.card_fin]
  have hli := linearIndependent_of_top_le_span_of_card_eq_finrank hspanW hfr
  rw [linearIndependent_iff'] at hli ⊢
  intro s g hg i hi
  have e := congrArg (pullM P.A P.L N (overResι W)) hg

  rw [map_sum, map_zero] at e
  simp only [LinearMap.map_smulₛₗ] at e
  exact hσ ((hli s (fun i => σ (g i)) e i hi).trans (map_zero σ).symm)

theorem exists_monomial_matrices_of_indep : ∀ (o A M : Type) [CommRing o] [CommRing A] [Nontrivial A] [AddCommGroup M] [Module A M] (f : o →+* A), Function.Injective f → ∀ (g m r N : ℕ), N = m ^ 2 → 1 ≤ m → 1 ≤ r → ∀ (ζ : o) (q : ℕ), 1 ≤ q → ζ ^ q = 1 → ∀ (u : (Fin g ⊕ Fin g → ZMod (r * N)) → M →ₗ[A] M) (s₀ : M), (∀ a, r • a = 0 → ∀ v, u a v = v) → (∀ a b, ∃ e : ℕ, ∀ v, u a (u b v) = f (ζ ^ e) • u (a + b) v) → (∀ a b, r • eStd g _ a b = 0 → ∀ v, u a (u b v) = u (a + b) v) → (∀ a, (r * m) • a = 0 → u a s₀ = s₀) → Submodule.span A (Set.range fun a => u a s₀) = ⊤ → (∀ t : (Fin g ⊕ Fin g → ZMod m) → M, ⊤ ≤ Submodule.span A (Set.range t) → LinearIndependent A t) → ∃ (J : Type) (_ : Fintype J) (ρ : (Fin g ⊕ Fin g → ZMod (r * N)) → Matrix J J o) (s : Module.Basis J A M) (i₀ : J), Fintype.card J = N ^ g ∧ s i₀ = s₀ ∧ (∀ a, r • a = 0 → ρ a = 1) ∧ (∀ a b, ∃ k : ℕ, ρ a * ρ b = ζ ^ k • ρ (a + b)) ∧ (∀ a b, r • eStd g _ a b = 0 → ρ a * ρ b = ρ (a + b)) ∧ (∀ a i, u a (s i) = ∑ l, f (ρ a l i) • s l) ∧ ∀ i, ∃ a, ∃ e : ℕ, ∀ l, ρ a l i₀ = if l = i then ζ ^ e else 0 := by
  intro o A M _ _ _ _ _ f hf g m r N hN hm hr ζ q hq hζ u s₀ h1 h2 h3 h4 h5 H
  subst hN
  haveI : NeZero m := ⟨by omega⟩
  haveI : NeZero (r * m ^ 2) := ⟨by positivity⟩
  have hd : m ∣ r * m ^ 2 := ⟨r * m, by ring⟩
  let π : (Fin g ⊕ Fin g → ZMod (r * m ^ 2)) → (Fin g ⊕ Fin g → ZMod m) :=
    fun a i => ZMod.castHom hd (ZMod m) (a i)
  let x : (Fin g ⊕ Fin g → ZMod m) → (Fin g ⊕ Fin g → ZMod (r * m ^ 2)) :=
    fun j i => (((j i).val : ℕ) : ZMod (r * m ^ 2))
  have hπadd : ∀ a b, π (a + b) = π a + π b := by
    intro a b; funext i; simp only [π, Pi.add_apply, map_add (f := _)]
  have hπsub : ∀ a b, π (a - b) = π a - π b := by
    intro a b; funext i; simp only [π, Pi.sub_apply, map_sub]
  have hπx : ∀ j, π (x j) = j := by
    intro j; funext i; simp only [π, x, map_natCast, ZMod.natCast_zmod_val]
  have hx0 : x 0 = 0 := by
    funext i; simp [x]
  have hker : ∀ a, π a = 0 → (r * m) • a = 0 := by
    intro a ha
    funext i
    have hi : ZMod.castHom hd (ZMod m) (a i) = 0 := congrFun ha i
    obtain ⟨n, hn⟩ := ZMod.natCast_zmod_surjective (a i)
    rw [← hn, map_natCast, ZMod.natCast_eq_zero_iff] at hi
    obtain ⟨c, rfl⟩ := hi
    rw [Pi.smul_apply, ← hn, nsmul_eq_mul, ← Nat.cast_mul, Pi.zero_apply, ZMod.natCast_eq_zero_iff]
    exact ⟨c, by ring⟩
  let s : (Fin g ⊕ Fin g → ZMod m) → M := fun j => u (x j) s₀
  have key : ∀ a, ∃ e : ℕ, u a s₀ = f (ζ ^ e) • s (π a) := by
    intro a
    have hh : (r * m) • (a - x (π a)) = 0 := hker _ (by rw [hπsub, hπx, sub_self])
    obtain ⟨e, he⟩ := h2 (x (π a)) (a - x (π a))
    have := he s₀
    rw [h4 _ hh, add_sub_cancel] at this
    refine ⟨(q - 1) * e, ?_⟩
    have hq' : (q - 1) * e + e = q * e := by
      obtain ⟨p, rfl⟩ := Nat.exists_eq_add_of_le' hq
      simp [add_mul]
    simp only [s]
    rw [this, smul_smul, ← map_mul, ← pow_add, hq', pow_mul, hζ, one_pow, map_one, one_smul]
  have key2 : ∀ a i, ∃ e : ℕ, u a (s i) = f (ζ ^ e) • s (π a + i) := by
    intro a i
    obtain ⟨e, he⟩ := h2 a (x i)
    obtain ⟨e', he'⟩ := key (a + x i)
    refine ⟨e + e', ?_⟩
    have := he s₀
    rw [he', hπadd, hπx, smul_smul, ← map_mul, ← pow_add] at this
    exact this
  choose E hE using key2
  have hspan : ⊤ ≤ Submodule.span A (Set.range s) := by
    rw [← h5, Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    obtain ⟨e, he⟩ := key a
    simp only [he]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, rfl⟩)
  have hcard : Fintype.card (Fin g ⊕ Fin g → ZMod m) = (m ^ 2) ^ g := by
    simp only [Fintype.card_fun, ZMod.card, Fintype.card_sum, Fintype.card_fin]
    ring
  have hli : LinearIndependent A s := H s hspan
  let b : Module.Basis (Fin g ⊕ Fin g → ZMod m) A M := Module.Basis.mk hli hspan
  have hb : ∀ i, b i = s i := fun i => Module.Basis.mk_apply hli hspan i
  let ρ : (Fin g ⊕ Fin g → ZMod (r * m ^ 2)) → Matrix (Fin g ⊕ Fin g → ZMod m) (Fin g ⊕ Fin g → ZMod m) o :=
    fun a l i => if l = π a + i then ζ ^ E a i else 0
  have hρ : ∀ a, (ρ a).map f = LinearMap.toMatrix b b (u a) := by
    intro a
    ext l i
    rw [LinearMap.toMatrix_apply, hb, hE, ← hb, map_smul, Module.Basis.repr_self]
    rw [Matrix.map_apply, Finsupp.smul_apply, smul_eq_mul]
    by_cases h : l = π a + i
    · have : ρ a l i = ζ ^ E a i := if_pos h
      rw [this, h, Finsupp.single_eq_same, _root_.mul_one]
    · have : ρ a l i = 0 := if_neg h
      rw [this, Finsupp.single_eq_of_ne h, mul_zero, map_zero]
  have hinj : Function.Injective (fun X : Matrix (Fin g ⊕ Fin g → ZMod m) (Fin g ⊕ Fin g → ZMod m) o => X.map f) := Matrix.map_injective hf
  have hmul : ∀ a c, (ρ a * ρ c).map f = LinearMap.toMatrix b b (u a ∘ₗ u c) := by
    intro a c
    rw [Matrix.map_mul, hρ, hρ, LinearMap.toMatrix_comp b b b]
  refine ⟨Fin g ⊕ Fin g → ZMod m, inferInstance, ρ, b, 0, hcard, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hb]; simp only [s, hx0]; exact h1 0 (by simp) _
  · intro a ha
    apply hinj
    have : u a = LinearMap.id := LinearMap.ext (h1 a ha)
    simp only [hρ, this]
    ext l i
    simp [Matrix.one_apply, apply_ite f]
  · intro a c
    obtain ⟨e, he⟩ := h2 a c
    refine ⟨e, hinj ?_⟩
    have : u a ∘ₗ u c = f (ζ ^ e) • u (a + c) := LinearMap.ext he
    simp only [hmul, this, map_smul, ← hρ]
    ext l i
    simp
  · intro a c hac
    apply hinj
    have : u a ∘ₗ u c = u (a + c) := LinearMap.ext (h3 a c hac)
    simp only [hmul, this, hρ]
  · intro a i
    rw [hb, hE, Finset.sum_eq_single (π a + i)]
    · simp [ρ, hb]
    · intro l _ hl
      simp [ρ, hl]
    · simp
  · intro i
    refine ⟨x i, E (x i) 0, fun l => ?_⟩
    simp [ρ, hπx]

end GlobalTheory.ThetaSBasis
end
end

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR


open Classical GlobalTheory.ThetaReal GlobalTheory.ThetaSBasis in
theorem GlobalTheory.ThetaSBasis.exists_real_of_secBasis : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (R : Subalgebra o Ω), R.FG → (∀ x : Ω, ∃ a ∈ R, ∃ b ∈ R, x = a / b) → ∀ (P : PolAV (Sp R)) (n k j : ℕ) (ze : oˣ), n.Prime → Odd n → 2 ≤ k → 1 ≤ j → IsUnit (n : o) → HypS P.A P.L → ∀ (th : LB.Sec (LPow P.A P.L 1 (baseOver (Sp R)))), IsSecBasis _ (fun _ : Fin 1 => th) → ∀ lev : Out.Level P ((n ^ j * (n ^ k) ^ 2) ^ 2) (unitOn (Units.map (algebraMap o R).toMonoidHom ze)), ∃ (S : ThetaSys o Ω) (ρ : S.Real) (h : R ≤ S.R) (φ : ρ.P.A.left ⟶ P.A.left), S.R = R ∧ ρ.n = n ∧ S.ζ = ze ∧ S.N = (n ^ k) ^ 2 ∧ S.r = n ^ j ∧ S.g = P.g ∧ IsGrpPullback ρ.P.A P.A (spMap (Subalgebra.inclusion h).toRingHom) φ ∧ LBIso ρ.P.L (P.L.pull φ) := by
  intro o Ω _ _ _ _ R fg frac P n k j ze hp ho hk hj hu hS th hth lev
  obtain ⟨hL, hL₂⟩ := GlobalTheory.abelianSchemeLaws_all
  have hgen : IsGenSec P.A P.L 1 th := isGenSec_of_isSecBasis P hth
  haveI := isNoetherian_of_fg fg
  haveI : IsAffine (baseOver (Sp R)).left := inferInstanceAs (IsAffine (Sp R))
  have hn2 : 2 ≤ n := hp.two_le
  have hn1 : 1 ≤ n := by omega
  have hm1 : 1 ≤ n ^ k := Nat.one_le_pow _ _ hn1
  have hr1 : 1 ≤ n ^ j := Nat.one_le_pow _ _ hn1
  haveI : NeZero (n ^ k) := ⟨by omega⟩
  have hN2 : 2 ≤ (n ^ k) ^ 2 := by
    have : n ^ 1 ≤ n ^ k := Nat.pow_le_pow_right hn1 (by omega)
    nlinarith
  have hM : n ^ j * (n ^ k) ^ 2 = n ^ (j + 2 * k) := by ring
  have hM1 : 1 ≤ n ^ j * (n ^ k) ^ 2 := hM ▸ Nat.one_le_pow _ _ hn1
  have hMo : Odd (n ^ j * (n ^ k) ^ 2) := hM ▸ ho.pow
  let f : o →+* Γ((baseOver (Sp R)).left, ⊤) := (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom.comp (algebraMap o R)
  have hf : Function.Injective f := fn_injective.comp (algebraMap_injective R)
  haveI : Nontrivial Γ((baseOver (Sp R)).left, ⊤) := (fn_injective (R := R)).nontrivial
  have un : ∀ q e : ℕ, q = n ^ e → IsUnit (q : Γ(Sp R, ⊤)) := fun q e hq => by
    have := (hu.pow e).map f
    rw [map_pow, map_natCast] at this
    rw [hq, Nat.cast_pow]
    exact this
  have prim : IsPrimitiveRoot (ze : o) ((n ^ j * (n ^ k) ^ 2) ^ 2) := (prim_iff R ze _).1 lev.prim
  obtain ⟨pt, hadd, hbij, hweil, hdiv, -⟩ := GlobalTheory.T.exists_torsionPoints_of_squareLevel_alt hL _ P _ _ hM1 (un _ _ hM) lev
  obtain ⟨h0, hsm⟩ := pt_nsmul pt hadd
  obtain ⟨rig, hrig⟩ := P.rigid
  have hfr : ∀ a, ∃ τ, IsTorsFrame P rig (n ^ j * (n ^ k) ^ 2) (pt a) τ := fun a => by
    obtain ⟨y, hy, e⟩ := hdiv a
    obtain ⟨θ, hθ⟩ := GlobalTheory.T.exists_symLift_of_pow_eq_one hL _ P _ hMo.pow (un _ ((j + 2 * k) * 2) (by rw [hM, pow_mul])) _ y hy
    exact GlobalTheory.T.exists_isTorsFrame_of_symLift' hL _ P rig hrig _ hMo _ y _ hy e θ hθ
  choose fr hfr using hfr
  have tors : ∀ a, pt (n ^ j • a) ^ ((n ^ k) ^ 2) = 1 := fun a => by
    rw [← hsm, smul_smul, mul_comm ((n ^ k) ^ 2) (n ^ j), nsmul_self, h0]
  choose U hU using fun a => GlobalTheory.T.exists_symLift_of_pow_eq_one hL _ P _ ho.pow.pow (un _ (k * 2) (pow_mul _ _ _).symm) _ _ (tors a)
  obtain ⟨α, hα, hαn⟩ := GlobalTheory.T.exists_normalised_mulPull_iso_origin hL _ P rig hrig (n ^ k) _ rfl (baseOver (Sp R))
  obtain ⟨s₀, hs₀⟩ := VVRank.exists_isTwistPull P.A (ψ := mulT P.A (baseOver (Sp R)) (n ^ k)) (hm := lift_snd _ _)
    (b := 1) P.isLB hα th
  obtain ⟨u, u₁, u₂, u₃, u₄, u₅⟩ := exists_operators hL P rfl ho.pow (un _ _ hM) _ pt hadd hweil U hU hα hs₀
  have hspan := GlobalTheory.ThetaSpan.span_translates_mulPull_of_isGenSec hL hL₂ R P (n ^ k) _ rfl hm1 (un _ _ rfl) th hgen
    α hα s₀ hs₀ _ U
    (fun a => SecM.toSec P.A (u a (SecM.ofSec P.A s₀))) (fun K _ _ x z hz => by
      obtain ⟨a, ha, uniq⟩ := hbij K x z (by rw [mul_comm, pow_mul, hz, one_pow])
      obtain ⟨a₀, -, uniq₀⟩ := hbij K x 1 (one_pow _)
      have e : (n ^ k) ^ 2 • a = 0 := (uniq₀ _ (by beta_reduce; rw [hsm, MonObj.comp_pow, ha, hz])).trans
        (uniq₀ _ (by beta_reduce; rw [h0, MonObj.comp_one])).symm
      obtain ⟨c, rfl⟩ := exists_nsmul_eq hM1 a e
      exact ⟨c, by rw [(hU c).pt_eq, ha]⟩) (fun a => (u₁ _ _ _).2 rfl)
  obtain ⟨J, _, ρ, s, i₀, hcard, hi₀, ρ₁, ρ₂, ρ₃, ρ₄, ρ₅⟩ := exists_monomial_matrices_of_indep o _ _ f hf P.g (n ^ k)
    (n ^ j) _ rfl hm1 hr1 ze _ (Nat.one_le_pow _ _ hM1) prim.pow_eq_one u (SecM.ofSec P.A s₀) u₂
    (fun a b => (u₃ a b).imp fun e he v => (he v).trans (congrArg (· • _) (map_pow f _ _).symm)) u₄ u₅ hspan
    (fun t ht => linearIndependent_of_span hL₂.secBaseChangeAny P ((n ^ k) ^ 2) (by omega) t (by
      simp only [Fintype.card_fun, ZMod.card, Fintype.card_sum, Fintype.card_fin]
      ring) ht)
  choose v hv using fun a => ThetaPtExist.exists_isValueAt P.isLB th (pt a) (fr a) (hfr a).2.1
  choose w hw using fun a i => (hL.evVal _ P ((n ^ k) ^ 2) (pt a) (fr a) (hfr a).2.1 (SecM.toSec P.A (s i))).exists
  let ev : Γ((baseOver (Sp R)).left, ⊤) → R := (Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom
  have good : ∀ a, ∃ y, n • y = 0 ∧ a + y ∈ {a | (ev (v a) : Ω) ≠ 0} := fun a => by
    let K := AlgebraicClosure Ω
    let x : Sp K ⟶ Sp R := spMap ((algebraMap Ω K).comp R.val.toRingHom)
    have := ArithBase.char (o := o) (Ω := Ω)
    obtain ⟨y, hy, H⟩ := GlobalTheory.ThetaSBasis.exists_good_translate hL hL₂ P K x n hn2 (Nat.cast_ne_zero.2 (by omega)) th
      hgen ((Over.homMk x (by simp) : Over.mk x ⟶ baseOver (Sp R)) ≫ pt a)
    obtain ⟨c, hc, -⟩ := hbij K x y (by rw [hM, show j + 2 * k = (j + 2 * k - 1) + 1 by omega, pow_succ', pow_mul, hy,
      one_pow])
    obtain ⟨a₀, -, uniq₀⟩ := hbij K x 1 (one_pow _)
    refine ⟨c, (uniq₀ _ (by beta_reduce; rw [hsm, MonObj.comp_pow, hc, hy])).trans
      (uniq₀ _ (by beta_reduce; rw [h0, MonObj.comp_one])).symm, fun e => ?_⟩
    refine H (pt (a + c)) (fr _) (v _) (by rw [hadd, MonObj.comp_mul, hc]) (hfr _).2.1 (hv _) ?_
    have e' : ev (v (a + c)) = 0 := Subtype.ext e
    exact (fn_hom _).symm.trans ((congrArg fn e').trans (map_zero _))
  let S : ThetaSys o Ω :=
    { g := P.g, N := (n ^ k) ^ 2, r := n ^ j, N_ge := hN2, r_pos := hr1, ζ := ze, prim := prim
      unit := by rw [hM, Nat.cast_pow]; exact hu.pow _
      J := J, ne := ⟨i₀⟩, ρ := ρ, ρ_one := ρ₁, ρ_mul := ρ₂, ρ_add := ρ₃
      th := fun a => ev (v a), ev := fun a i => ev (w a i), R := R, fg := fg, frac := frac
      th_mem := fun a => (ev (v a)).2, ev_mem := fun a i => (ev (w a i)).2
      supp := GlobalTheory.T.closure_zmodPow_eq_top_of_meets_torsion_cosets _ n (j + 2 * k) _ hn1 (by omega) hM _ good
      th_ne := by
        obtain ⟨y, -, hy⟩ := good 0
        exact ⟨_, hy⟩ }
  let ρ' : S.Real :=
    { P := P, g_eq := rfl, hypS := hS, n := n, n_prime := hp, n_odd := ho, k := k, two_le := hk, N_eq := rfl
      r_eq := ⟨j, hj, rfl⟩, card := hcard, pt := pt, pt_add := hadd, pt_bij := hbij
      weil := fun a b c hc => by
        have e : unitOn c = unitOn (Units.map (algebraMap o R).toMonoidHom ze) ^
            (n ^ j * (n ^ k) ^ 2 * (eStd P.g _ a b).val) := Units.ext
          ((congrArg fn hc).trans ((map_pow f _ _).trans (Units.val_pow_eq_pow_val (unitOn (Units.map (algebraMap o R).toMonoidHom ze)) _).symm))
        rw [e]
        exact hweil a b
      rig := rig, rig_gen := hrig, th₁ := th
      th₁_basis := hth
      fr := fr, fr_tors := hfr
      th_val := fun a => (fn_hom (v a)).symm ▸ hv a
      s := fun i => SecM.toSec P.A (s i)
      s_basis := existsUnique_of_basis s
      ev_val := fun i a => (congrArg (IsValueAt _ _ _ _ _ _) (fn_hom (w a i))).mpr (hw a i)
      i₀ := i₀, α := α, α_gen := hα, α_norm := hαn
      s_zero := by
        have e : SecM.toSec P.A (s i₀) = s₀ := by rw [hi₀]; rfl
        exact e ▸ hs₀
      U := U, U_sym := hU
      U_act := fun a i σ H => (sum_iff σ s _).2 (((u₁ _ _ _).1 H).symm.trans (ρ₄ a i))
      orbit := ρ₅ }
  have eid : spMap (Subalgebra.inclusion (le_refl R)).toRingHom = 𝟙 (Sp R) := by
    rw [Subalgebra.inclusion_self]
    exact Spec.map_id _
  refine ⟨S, ρ', le_refl R, 𝟙 _, rfl, rfl, rfl, rfl, rfl, rfl, ?_, ?_⟩
  · show IsGrpPullback P.A P.A (spMap (Subalgebra.inclusion (le_refl R)).toRingHom) (𝟙 P.A.left)
    rw [eid]
    refine ⟨IsPullback.of_horiz_isIso ⟨by simp⟩, fun T x y x₀ y₀ hx hy => ?_⟩
    let ρ₀ : Over.mk (T.hom ≫ 𝟙 (Sp R)) ⟶ T := Over.homMk (𝟙 T.left) (by simp)
    have ex : x₀ = ρ₀ ≫ x := Over.OverMorphism.ext (hx.trans ((Category.comp_id _).trans (Category.id_comp _).symm))
    have ey : y₀ = ρ₀ ≫ y := Over.OverMorphism.ext (hy.trans ((Category.comp_id _).trans (Category.id_comp _).symm))
    rw [ex, ey, ← MonObj.comp_mul]
    exact (Category.id_comp _).trans (Category.comp_id _).symm
  · exact GlobalTheory.ThetaAffineGlue.lbIso_pull_id P.isLB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasisStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasisStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealisedThetaSystemOfUniversalSectionBasisStatement =====

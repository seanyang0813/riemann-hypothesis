module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.AdelicCharacterRationalDual
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.RationalUnitsHaarCharacterOne
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.SplitQuadraticAlgebraOrder
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaDistributionNonzeroAdmissible
public import Mathlib.MeasureTheory.Measure.Haar.DistribChar
public import Mathlib.NumberTheory.NumberField.AdeleRing
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaHeisenbergTranslatesSeparate
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumAdmissibility
public import Mathlib.LinearAlgebra.Charpoly.BaseChange
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.RemovableLogGrowthSingularity
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.MembershipProofs.SeesawThetaDualPair, Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumTensorProduct

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.SeesawThetaDualPair =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.SeesawThetaDualPair", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.AdelicCharacterRationalDual\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.RationalUnitsHaarCharacterOne\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.SplitQuadraticAlgebraOrder\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaDistributionNonzeroAdmissible\npublic import Mathlib.MeasureTheory.Measure.Haar.DistribChar\npublic import Mathlib.NumberTheory.NumberField.AdeleRing\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaHeisenbergTranslatesSeparate\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumAdmissibility\npublic import Mathlib.LinearAlgebra.Charpoly.BaseChange\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix NumberField IsDedekindDomain GlobalTheory.WeilM MeasureTheory
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.CompanionTheory.ThetaSplit

section Algebra

variable {F : Type} [Field F] {E : Type} [Field E] [Algebra F E] (A : Type) [CommRing A] [Algebra F A]

abbrev inc : E →+* A ⊗[F] E := (Algebra.TensorProduct.includeRight : E →ₐ[F] A ⊗[F] E).toRingHom

abbrev cA (c : E →ₐ[F] E) : A ⊗[F] E →ₐ[A] A ⊗[F] E := Algebra.TensorProduct.map (AlgHom.id A A) c

theorem lmul_inc (z : E) :
    (Algebra.lmul A (A ⊗[F] E)) ((1 : A) ⊗ₜ[F] z) = ((Algebra.lmul F E) z).baseChange A := by
  ext x
  simp

theorem trace_inc [Module.Finite F E] (z : E) :
    Algebra.trace A (A ⊗[F] E) ((1 : A) ⊗ₜ[F] z) = algebraMap F A (Algebra.trace F E z) := by
  rw [Algebra.trace_apply, Algebra.trace_apply, lmul_inc, LinearMap.trace_baseChange]

theorem norm_inc [Module.Finite F E] (z : E) :
    Algebra.norm A ((1 : A) ⊗ₜ[F] z : A ⊗[F] E) = algebraMap F A (Algebra.norm F z) := by
  rw [Algebra.norm_apply, Algebra.norm_apply, lmul_inc, LinearMap.det_baseChange]

theorem map_cA (c : E →ₐ[F] E) {m n : Type} (x : Matrix m n E) :
    (x.map (inc (F := F) A)).map (cA A c) = (x.map c).map (inc (F := F) A) := by
  ext i j
  simp

variable {α β : Type} [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β]

omit [DecidableEq α] [DecidableEq β] in
theorem symp_inc [Module.Finite F E] (c : E →ₐ[F] E) (ξ : E) (JA : Matrix α α E) (JB : Matrix β β E)
    (x y : Matrix α β E) :
    symp (cA A c) ((1 : A) ⊗ₜ[F] ξ) (JA.map (inc (F := F) A)) (JB.map (inc (F := F) A)) (x.map (inc (F := F) A))
      (y.map (inc (F := F) A)) = algebraMap F A (symp c ξ JA JB x y) := by
  rw [symp, symp, ← trace_inc]
  congr 1
  simp [hTens, TensorProduct.tmul_sum, Finset.mul_sum]

def ratPt (c : E →ₐ[F] E) (J : Matrix β β E) : UG c J →* UG (cA A c) (J.map (inc (F := F) A)) where
  toFun g := ⟨Matrix.GeneralLinearGroup.map (inc (F := F) A) (g : GL β E), by
    have h : ((g : GL β E) : Matrix β β E)ᵀ * J * ((g : GL β E) : Matrix β β E).map c = J := g.2
    change (((g : GL β E) : Matrix β β E).map (inc (F := F) A))ᵀ * J.map (inc (F := F) A) *
      (((g : GL β E) : Matrix β β E).map (inc (F := F) A)).map (cA A c) = J.map (inc (F := F) A)
    rw [map_cA, ← Matrix.transpose_map, ← Matrix.map_mul, ← Matrix.map_mul, h]⟩
  map_one' := Subtype.ext (map_one _)
  map_mul' g h := Subtype.ext (map_mul _ _ _)

theorem ratPt_val (c : E →ₐ[F] E) (J : Matrix β β E) (g : UG c J) :
    ((ratPt A c J g : GL β (A ⊗[F] E)) : Matrix β β (A ⊗[F] E)) =
      ((g : GL β E) : Matrix β β E).map (inc (F := F) A) := rfl

theorem exists_ratPt [Nontrivial A] (c : E →ₐ[F] E) (J : Matrix β β E) (g : UG (cA A c) (J.map (inc (F := F) A)))
    (γ : Matrix β β E) (hg : ((g : GL β (A ⊗[F] E)) : Matrix β β (A ⊗[F] E)) = γ.map (inc (F := F) A)) :
    ∃ g₀, ratPt A c J g₀ = g := by
  have hi : Function.Injective (inc (F := F) (E := E) A) :=
    Algebra.TensorProduct.includeRight_injective (algebraMap F A).injective
  haveI : Nontrivial (A ⊗[F] E) := hi.nontrivial
  have hd : γ.det ≠ 0 := by
    intro h0
    have hu : IsUnit ((g : GL β (A ⊗[F] E)) : Matrix β β (A ⊗[F] E)).det :=
      (Matrix.isUnit_iff_isUnit_det _).mp (Units.isUnit _)
    rw [hg, show (γ.map (inc (F := F) A)).det = inc (F := F) A γ.det from (RingHom.map_det _ _).symm, h0,
      map_zero] at hu
    exact not_isUnit_zero hu
  refine ⟨⟨Matrix.GeneralLinearGroup.mkOfDetNeZero γ hd, ?_⟩, Subtype.ext (Units.ext hg.symm)⟩
  have h : ((g : GL β (A ⊗[F] E)) : Matrix β β (A ⊗[F] E))ᵀ * J.map (inc (F := F) A) *
      ((g : GL β (A ⊗[F] E)) : Matrix β β (A ⊗[F] E)).map (cA A c) = J.map (inc (F := F) A) := g.2
  rw [hg, map_cA, ← Matrix.transpose_map, ← Matrix.map_mul, ← Matrix.map_mul] at h
  exact Matrix.map_injective hi h


omit [Fintype β] in
theorem mem_span_inc (z : Matrix α β (A ⊗[F] E)) [Finite β] :
    z ∈ Submodule.span A (Set.range fun x : Matrix α β E => x.map (inc (F := F) A)) := by
  induction z using Matrix.induction_on' with
  | h_zero => exact zero_mem _
  | h_add p q hp hq => exact add_mem hp hq
  | h_std_basis i j x =>
    induction x using TensorProduct.induction_on with
    | zero => rw [Matrix.single_zero]; exact zero_mem _
    | add x y hx hy => rw [Matrix.single_add]; exact add_mem hx hy
    | tmul a e =>
      have : Matrix.single i j (a ⊗ₜ[F] e : A ⊗[F] E) = a • (Matrix.single i j e).map (inc (F := F) A) := by
        rw [Matrix.map_single, Matrix.smul_single]
        congr 1
        simp [TensorProduct.smul_tmul']
      rw [this]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, rfl⟩)

omit [DecidableEq α] [DecidableEq β] in
theorem hTens_eq (c : E →ₐ[F] E) (JA : Matrix α α E) (JB : Matrix β β E) (x y : Matrix α β E) :
    hTens c JA JB x y = Matrix.trace (JAᵀ * x * JB * (y.map c)ᵀ) := by
  simp only [hTens, Matrix.trace, Matrix.diag, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply,
    Finset.sum_mul]
  calc _ = ∑ i, ∑ k, ∑ j, ∑ l, x i j * JA i k * JB j l * c (y k l) := Finset.sum_congr rfl fun i _ => Finset.sum_comm
    _ = ∑ k, ∑ i, ∑ j, ∑ l, x i j * JA i k * JB j l * c (y k l) := Finset.sum_comm
    _ = ∑ k, ∑ l, ∑ j, ∑ i, x i j * JA i k * JB j l * c (y k l) := Finset.sum_congr rfl fun k _ => by
      rw [Finset.sum_comm]
      calc _ = ∑ j, ∑ l, ∑ i, x i j * JA i k * JB j l * c (y k l) := Finset.sum_congr rfl fun j _ => Finset.sum_comm
        _ = _ := Finset.sum_comm
    _ = _ := by
      refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun j _ =>
        Finset.sum_congr rfl fun i _ => by ring

theorem lagr_iff [CharZero F] {c : E →ₐ[F] E} {ξ : E} (hq : IsQuad c ξ) {JA : Matrix α α E} {JB : Matrix β β E}
    (hA : IsHerm c JA) (hB : IsHerm c JB) {ν : Type} [Fintype ν] [DecidableEq ν] {Cy : Matrix β ν E}
    (hL : IsLagr c JB Cy) (x : Matrix α β E) :
    (∃ z : Matrix α ν E, x = z * Cyᵀ) ↔ ∀ z : Matrix α ν E, symp c ξ JA JB x (z * Cyᵀ) = 0 := by
  obtain ⟨h0, Cx, M, hx, h1, h2⟩ := hL
  have key : ∀ z : Matrix α ν E, hTens c JA JB x (z * Cyᵀ) =
      Matrix.trace (JAᵀ * (x * JB * Cy.map c) * (z.map c)ᵀ) := fun z => by
    rw [hTens_eq, show (z * Cyᵀ).map c = z.map c * Cyᵀ.map c from Matrix.map_mul (f := c.toRingHom),
      Matrix.transpose_mul, Matrix.transpose_map, Matrix.transpose_transpose]
    simp only [Matrix.mul_assoc]
  constructor
  · rintro ⟨u, rfl⟩ z
    rw [symp, key, Matrix.mul_assoc u, Matrix.mul_assoc u, h0]
    simp
  · intro h
    obtain ⟨b, -, -⟩ := hq.basis
    haveI : Module.Finite F E := Module.Finite.of_basis b
    have h3 : JAᵀ * (x * JB * Cy.map c) = 0 := by
      ext i j
      by_contra hne
      set e := (JAᵀ * (x * JB * Cy.map c)) i j with he
      have hξ : ξ ≠ 0 := hq.unit.ne_zero
      have hne' : e ≠ 0 := hne
      have := h (Matrix.single i j (c (ξ * e)⁻¹))
      rw [symp, key, Matrix.map_single, hq.invol, Matrix.transpose_single, Matrix.trace_mul_single, ← he] at this
      rw [show ξ * (MulOpposite.op (ξ * e)⁻¹ • e) = algebraMap F E 1 by simp; field_simp,
        Algebra.trace_algebraMap, Module.finrank_eq_card_basis b] at this
      simp at this
    have hAu : IsUnit JAᵀ := (Matrix.isUnit_iff_isUnit_det _).mpr (by rw [Matrix.det_transpose]; exact hA.2)
    have hBu : IsUnit JB := (Matrix.isUnit_iff_isUnit_det _).mpr hB.2
    have h4 : x * JB * Cy.map c = 0 := by
      obtain ⟨U, hU⟩ := hAu
      rw [← Matrix.one_mul (x * JB * Cy.map c), ← U.inv_mul, Matrix.mul_assoc, hU, h3, Matrix.mul_zero]
    set u : Matrix α ν E := x * (M.toRows₁)ᵀ
    set v : Matrix α ν E := x * (M.toRows₂)ᵀ
    have hxx : x = u * Cyᵀ + v * Cxᵀ := by
      rw [← Matrix.fromRows_toRows M, Matrix.fromCols_mul_fromRows] at h1
      simp only [u, v, Matrix.mul_assoc, ← Matrix.mul_add, ← Matrix.transpose_mul, ← Matrix.transpose_add, h1,
        Matrix.transpose_one, Matrix.mul_one]
    have h5 : v * Cxᵀ * JB * Cy.map c = 0 := by
      rw [hxx, Matrix.add_mul, Matrix.add_mul, Matrix.mul_assoc u, Matrix.mul_assoc u, h0] at h4
      simpa using h4
    have h6 : v * Cxᵀ * JB * Cx.map c = 0 := by
      rw [Matrix.mul_assoc v, Matrix.mul_assoc v, hx, Matrix.mul_zero]
    have h7 : v * Cxᵀ * JB * (Matrix.fromCols Cy Cx).map c = 0 := by
      rw [Matrix.fromCols_map, Matrix.mul_fromCols, h5, h6, Matrix.fromCols_zero]
    have h8 : (Matrix.fromCols Cy Cx).map c * M.map c = 1 := by
      rw [← show (Matrix.fromCols Cy Cx * M).map c = (Matrix.fromCols Cy Cx).map c * M.map c from
        Matrix.map_mul (f := c.toRingHom), h1]
      exact Matrix.map_one _ (map_zero c) (map_one c)
    have h9 : v * Cxᵀ * JB = 0 := by
      rw [← Matrix.mul_one (v * Cxᵀ * JB), ← h8, ← Matrix.mul_assoc, h7, Matrix.zero_mul]
    have h10 : v * Cxᵀ = 0 := by
      obtain ⟨U, hU⟩ := hBu
      rw [← Matrix.mul_one (v * Cxᵀ), ← U.mul_inv, ← Matrix.mul_assoc, hU, h9, Matrix.zero_mul]
    exact ⟨u, by rw [h10, add_zero] at hxx; exact hxx⟩

end Algebra

def rmul (R : Type) [CommRing R] {S : Type} [CommRing S] [Algebra R S] (α : Type) {β : Type} [Fintype β]
    [DecidableEq β] (g : GL β S) : Matrix α β S ≃ₗ[R] Matrix α β S where
  toFun x := x * (g : Matrix β β S)ᵀ
  invFun x := x * ((g⁻¹ : GL β S) : Matrix β β S)ᵀ
  map_add' x y := Matrix.add_mul _ _ _
  map_smul' a x := Matrix.smul_mul _ _ _
  left_inv x := by
    simp only [Matrix.mul_assoc, ← Matrix.transpose_mul, Units.inv_mul, Matrix.transpose_one, Matrix.mul_one]
  right_inv x := by
    simp only [Matrix.mul_assoc, ← Matrix.transpose_mul, Units.mul_inv, Matrix.transpose_one, Matrix.mul_one]

theorem theta_split_inc : ∀ (F : Type) [Field F] [NumberField F] [LocallyCompactSpace (AdeleRing (𝓞 F) F)] [Invertible (2 : AdeleRing (𝓞 F) F)] (E : Type) [Field E] [Algebra F E] (c : E →ₐ[F] E) (ξ : E) (α β κ : Type) [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β] [Fintype κ] (JA : Matrix α α E) (JB : Matrix β β E) (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ), Continuous ψ → ψ ≠ 1 → (∀ a : F, ψ (algebraMap F (AdeleRing (𝓞 F) F) a) = 1) → IsQuad c ξ → IsHerm c JA → IsHerm c JB → ∀ (d : Darboux (symp (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map (inc (F := F) (AdeleRing (𝓞 F) F))) (JB.map (inc (F := F) (AdeleRing (𝓞 F) F)))) κ) (d₀ : Matrix α β E ≃ₗ[F] (κ → F) × (κ → F)), (∀ x, d.e (x.map (inc (F := F) (AdeleRing (𝓞 F) F))) = (fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).1 i), fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).2 i))) → ∀ (χ : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ →* Circle) (ν : Type) [Fintype ν] [DecidableEq ν] (Cy : Matrix β ν E) (om : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (JB.map (inc (F := F) (AdeleRing (𝓞 F) F))) →* Module.End ℂ ((κ → AdeleRing (𝓞 F) F) → ℂ)), (∀ (z : E) (u : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ), (u : AdeleRing (𝓞 F) F ⊗[F] E) = (1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z → χ u = 1) → IsLagr c JB Cy → IsSplitting (adeleClass F) ψ d (actB (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c)) om → SiegelRule (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (adeleClass F) ψ ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map (inc (F := F) (AdeleRing (𝓞 F) F))) (JB.map (inc (F := F) (AdeleRing (𝓞 F) F))) d χ (Cy.map (inc (F := F) (AdeleRing (𝓞 F) F))) om → ∀ g : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (JB.map (inc (F := F) (AdeleRing (𝓞 F) F))), (∃ γ : Matrix β β E, ((g : GL β (AdeleRing (𝓞 F) F ⊗[F] E)) : Matrix β β (AdeleRing (𝓞 F) F ⊗[F] E)) = γ.map (inc (F := F) (AdeleRing (𝓞 F) F))) → ∀ Φ ∈ schA F κ, thetaSum F (om g Φ) = thetaSum F Φ := by
  intro F _ _ _ _ E _ _ c ξ α β κ _ _ _ _ _ JA JB ψ hψc hψ1 hψF hq hA hB d d₀ hd χ ν _ _ Cy om hχ hL hS hR g
    ⟨γ, hγ⟩ Φ hΦ
  haveI : Nontrivial (AdeleRing (𝓞 F) F) := (AdeleRing.algebraMap_injective (𝓞 F) F).nontrivial
  haveI : Module.Finite F E := by
    obtain ⟨b, -, -⟩ := hq.basis
    exact Module.Finite.of_basis b
  letI : Invertible (2 : F) := invertibleOfNonzero two_ne_zero
  obtain ⟨g₀, rfl⟩ := exists_ratPt (AdeleRing (𝓞 F) F) c JB g γ hγ
  obtain ⟨-, ⟨l₀, hl₀, hl₀Θ⟩, Φ₀, hΦ₀, hΦ₀ne⟩ := _root_.GlobalTheory.CompanionTheory.ThetaAdm.theta_adm F κ
  obtain ⟨hpres, hrat⟩ := _root_.GlobalTheory.CompanionTheory.AdelicHeis.schr_mem_and_thetaSum F κ ψ hψc hψ1 hψF
  have hact : ∀ (p : UG c JB) (x : Matrix α β E),
      actB (cA (AdeleRing (𝓞 F) F) c) (ratPt (AdeleRing (𝓞 F) F) c JB p) (x.map (inc (F := F) (AdeleRing (𝓞 F) F))) =
      (x * ((p : GL β E) : Matrix β β E)ᵀ).map (inc (F := F) (AdeleRing (𝓞 F) F)) := fun p x => by
    rw [actB, ratPt_val, Matrix.map_mul, Matrix.transpose_map]
  have hd' : ∀ x : Matrix α β E, d.e (x.map (inc (F := F) (AdeleRing (𝓞 F) F))) =
      (fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).1 i),
        fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).2 i)) := hd
  have hex : ∀ p : UG c JB, ∃ a : ℂ, ∀ Φ ∈ schA F κ,
      thetaSum F (om (ratPt (AdeleRing (𝓞 F) F) c JB p) Φ) = a * thetaSum F Φ := fun p => by
    obtain ⟨a, ha⟩ := _root_.GlobalTheory.CompanionTheory.ThetaUniq.theta_unique F κ ψ hψc hψ1 hψF _ (hS.adm (ratPt (AdeleRing (𝓞 F) F) c JB p) l₀ hl₀) (by
      intro w Φ hΦ
      obtain ⟨x, rfl⟩ := d₀.surjective w
      have h1 := hS.impl (ratPt (AdeleRing (𝓞 F) F) c JB p) (x.map (inc (F := F) (AdeleRing (𝓞 F) F))) Φ hΦ
      rw [hact, Darboux.rho, Darboux.rho, hd', hd'] at h1
      have h2 : om (ratPt (AdeleRing (𝓞 F) F) c JB p) Φ ∈ schA F κ := hS.pres _ _ hΦ
      rw [LinearMap.comp_apply, LinearMap.comp_apply, h1, hl₀Θ _ (hpres _ _ h2), hrat, hl₀Θ _ h2])
    refine ⟨a, fun Φ hΦ => ?_⟩
    rw [← ha Φ hΦ, LinearMap.comp_apply, hl₀Θ _ (hS.pres _ _ hΦ)]
  choose a ha using hex
  let lam : UG c JB →* ℂ :=
    { toFun := a
      map_one' := by
        have := ha 1 Φ₀ hΦ₀
        rw [map_one, map_one, Module.End.one_apply] at this
        exact (mul_eq_right₀ hΦ₀ne).mp this.symm
      map_mul' := fun p q => by
        have := ha (p * q) Φ₀ hΦ₀
        rw [map_mul, map_mul, Module.End.mul_apply, ha p _ (hS.pres _ _ hΦ₀), ha q _ hΦ₀, ← mul_assoc] at this
        exact (mul_right_cancel₀ hΦ₀ne this).symm }

  let Y : Matrix α ν E →ₗ[F] Matrix α β E :=
    { toFun := fun z => z * Cyᵀ
      map_add' := fun x y => Matrix.add_mul _ _ _
      map_smul' := fun a x => Matrix.smul_mul _ _ _ }
  let L : Submodule F ((κ → F) × (κ → F)) := LinearMap.range (d₀.toLinearMap ∘ₗ Y)
  have hmem : ∀ x : Matrix α β E, d₀ x ∈ L ↔ ∃ z : Matrix α ν E, x = z * Cyᵀ := fun x => by
    constructor
    · rintro ⟨z, hz⟩
      exact ⟨z, (d₀.injective hz).symm⟩
    · rintro ⟨z, rfl⟩
      exact ⟨z, rfl⟩
  have hform : ∀ x y : Matrix α β E, symp c ξ JA JB x y = (d₀ x).1 ⬝ᵥ (d₀ y).2 - (d₀ y).1 ⬝ᵥ (d₀ x).2 := fun x y => by
    apply AdeleRing.algebraMap_injective (𝓞 F) F
    have h1 := d.form (x.map (inc (F := F) (AdeleRing (𝓞 F) F))) (y.map (inc (F := F) (AdeleRing (𝓞 F) F)))
    rw [hd', hd'] at h1
    rw [← symp_inc]
    refine h1.trans ?_
    simp [dotProduct]
  have hLag : ∀ w, w ∈ L ↔ ∀ w' ∈ L, w.1 ⬝ᵥ w'.2 = w'.1 ⬝ᵥ w.2 := fun w => by
    obtain ⟨x, rfl⟩ := d₀.surjective w
    rw [hmem, lagr_iff hq hA hB hL]
    constructor
    · rintro h _ ⟨z, rfl⟩
      have := h z
      rw [hform, sub_eq_zero] at this
      exact this
    · intro h z
      rw [hform, sub_eq_zero]
      exact h _ ⟨z, rfl⟩
  obtain ⟨l, hl, ⟨Φ₁, hΦ₁, hΦ₁ne⟩, hinv, heig⟩ := _root_.GlobalTheory.CompanionTheory.ThetaAvg.theta_mean F κ ψ hψc hψ1 hψF L hLag
  have hinv' : ∀ z : Matrix α ν (AdeleRing (𝓞 F) F ⊗[F] E), ∀ φ ∈ (adeleClass F).sp κ,
      l (d.rho ψ (z * (Cy.map (inc (F := F) (AdeleRing (𝓞 F) F)))ᵀ) φ) = l φ := fun z φ hφ => by
    refine hinv _ ?_ φ hφ
    have hz := mem_span_inc (F := F) (AdeleRing (𝓞 F) F) z
    induction hz using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨z₀, rfl⟩ := hx
      rw [← Matrix.transpose_map, ← Matrix.map_mul, hd']
      exact Submodule.subset_span ⟨_, ⟨z₀, rfl⟩, rfl⟩
    | zero => rw [Matrix.zero_mul, map_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [Matrix.add_mul, map_add (f := _)]; exact add_mem hx hy
    | smul r x _ hx => rw [Matrix.smul_mul, map_smul]; exact Submodule.smul_mem _ _ hx
  have hlam := _root_.GlobalTheory.CompanionTheory.SiegelChar.char_trivial F E c ξ β ν JB Cy hq hB hL lam.toHomUnits (by
    intro p t hpt
    have h1 := hR l hl hinv' (ratPt (AdeleRing (𝓞 F) F) c JB p)
      (Matrix.GeneralLinearGroup.map (inc (F := F) (AdeleRing (𝓞 F) F)) t) (by
        change ((p : GL β E) : Matrix β β E).map (inc (F := F) (AdeleRing (𝓞 F) F)) *
          Cy.map (inc (F := F) (AdeleRing (𝓞 F) F)) = Cy.map (inc (F := F) (AdeleRing (𝓞 F) F)) *
            (t : Matrix ν ν E).map (inc (F := F) (AdeleRing (𝓞 F) F))
        rw [← Matrix.map_mul, ← Matrix.map_mul, hpt]) Φ₁ hΦ₁
    have hdet : ((Matrix.GeneralLinearGroup.det (Matrix.GeneralLinearGroup.map (inc (F := F) (AdeleRing (𝓞 F) F)) t) :
        (AdeleRing (𝓞 F) F ⊗[F] E)ˣ) : AdeleRing (𝓞 F) F ⊗[F] E) =
        (1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] (t : Matrix ν ν E).det :=
      (RingHom.map_det (inc (F := F) (AdeleRing (𝓞 F) F)) (t : Matrix ν ν E)).symm
    have hn : Units.map (Algebra.norm (AdeleRing (𝓞 F) F) : AdeleRing (𝓞 F) F ⊗[F] E →* AdeleRing (𝓞 F) F)
        (Matrix.GeneralLinearGroup.det (Matrix.GeneralLinearGroup.map (inc (F := F) (AdeleRing (𝓞 F) F)) t)) =
        Units.map (algebraMap F (AdeleRing (𝓞 F) F) : F →* AdeleRing (𝓞 F) F)
          (Units.map (Algebra.norm F : E →* F) (Matrix.GeneralLinearGroup.det t)) := by
      apply Units.ext
      rw [Units.coe_map, hdet, norm_inc]
      rfl
    have hm : (adeleClass F).modu = distribHaarChar (AdeleRing (𝓞 F) F) := rfl
    rw [hχ _ _ hdet, hn, hm, _root_.GlobalTheory.CompanionTheory.AdeleModule.distribHaarChar_principal F] at h1
    have h2 := heig ((d₀.symm.trans (rmul F α (p : GL β E))).trans d₀)
      ((d.e.symm.trans (rmul (AdeleRing (𝓞 F) F) α
        (ratPt (AdeleRing (𝓞 F) F) c JB p : GL β (AdeleRing (𝓞 F) F ⊗[F] E)))).trans d.e).toLinearMap
      (om (ratPt (AdeleRing (𝓞 F) F) c JB p)) (a p) (by
        intro w
        obtain ⟨x, rfl⟩ := d₀.surjective w
        rw [← hd']
        simp only [LinearEquiv.coe_coe, LinearEquiv.trans_apply, LinearEquiv.symm_apply_apply]
        rw [← hd']
        exact congrArg d.e (hact p x)) (by
        intro w
        obtain ⟨x, rfl⟩ := d₀.surjective w
        simp only [LinearEquiv.trans_apply, LinearEquiv.symm_apply_apply]
        rw [hmem, hmem]
        constructor
        · rintro ⟨z, hz⟩
          refine ⟨z * ((t⁻¹ : GL ν E) : Matrix ν ν E)ᵀ, (rmul F α (p : GL β E)).injective ?_⟩
          rw [hz]
          change _ = z * ((t⁻¹ : GL ν E) : Matrix ν ν E)ᵀ * Cyᵀ * ((p : GL β E) : Matrix β β E)ᵀ
          rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.transpose_mul, ← Matrix.transpose_mul, hpt,
            Matrix.mul_assoc, Units.mul_inv, Matrix.mul_one]
        · rintro ⟨z, rfl⟩
          refine ⟨z * (t : Matrix ν ν E)ᵀ, ?_⟩
          change z * Cyᵀ * ((p : GL β E) : Matrix β β E)ᵀ = _
          rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.transpose_mul, ← Matrix.transpose_mul, hpt])
      (hS.pres _) (by
        intro w Φ hΦ
        obtain ⟨x, rfl⟩ := d.e.surjective w
        simp only [LinearEquiv.coe_coe, LinearEquiv.trans_apply, LinearEquiv.symm_apply_apply]
        exact hS.impl _ x Φ hΦ) (ha p) Φ₁ hΦ₁
    rw [h2] at h1
    apply Units.ext
    have h3 : a p * l Φ₁ = l Φ₁ := by simpa using h1
    exact (mul_eq_right₀ hΦ₁ne).mp h3)
  have h4 : a g₀ = 1 := congrArg (fun f : UG c JB →* ℂˣ => (f g₀ : ℂ)) hlam
  rw [ha g₀ Φ hΦ, h4, one_mul]

theorem theta_split : ∀ (F : Type) [Field F] [NumberField F] [LocallyCompactSpace (AdeleRing (𝓞 F) F)] [Invertible (2 : AdeleRing (𝓞 F) F)] (E : Type) [Field E] [Algebra F E] (c : E →ₐ[F] E) (ξ : E) (α β κ : Type) [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β] [Fintype κ] (JA : Matrix α α E) (JB : Matrix β β E) (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ), Continuous ψ → ψ ≠ 1 → (∀ a : F, ψ (algebraMap F (AdeleRing (𝓞 F) F) a) = 1) → IsQuad c ξ → IsHerm c JA → IsHerm c JB → ∀ (d : Darboux (symp (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E))) κ) (d₀ : Matrix α β E ≃ₗ[F] (κ → F) × (κ → F)), (∀ x, d.e (x.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) = (fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).1 i), fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).2 i))) → ∀ (χ : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ →* Circle) (ν : Type) [Fintype ν] [DecidableEq ν] (Cy : Matrix β ν E) (om : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) →* Module.End ℂ ((κ → AdeleRing (𝓞 F) F) → ℂ)), (∀ (z : E) (u : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ), (u : AdeleRing (𝓞 F) F ⊗[F] E) = (1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z → χ u = 1) → IsLagr c JB Cy → IsSplitting (adeleClass F) ψ d (actB (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c)) om → SiegelRule (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (adeleClass F) ψ ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) d χ (Cy.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) om → ∀ g : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)), (∃ γ : Matrix β β E, ((g : GL β (AdeleRing (𝓞 F) F ⊗[F] E)) : Matrix β β (AdeleRing (𝓞 F) F ⊗[F] E)) = γ.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) → ∀ Φ ∈ schA F κ, thetaSum F (om g Φ) = thetaSum F Φ :=
  theta_split_inc

end GlobalTheory.CompanionTheory.ThetaSplit

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.SeesawThetaDualPair =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumTensorProduct =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumTensorProduct", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.RemovableLogGrowthSingularity\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.SeesawThetaDualPair\nimport Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumAdmissibility\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix NumberField IsDedekindDomain GlobalTheory.WeilM MeasureTheory
open scoped TensorProduct

namespace GlobalTheory.CompanionTheory.ThetaMember

section General

variable {R : Type} [CommRing R] {E : Type} [CommRing E] [Algebra R E] {c : E →ₐ[R] E}
  {β : Type} [Fintype β] [DecidableEq β]

theorem isHerm_dbl {J : Matrix β β E} (h : IsHerm c J) : IsHerm c (dbl J) := by
  refine ⟨?_, ?_⟩
  · rintro (i | i) (j | j) <;> simp [dbl, h.1]
  · rw [dbl, det_fromBlocks_zero₂₁, det_neg]
    exact h.2.mul ((isUnit_one.neg.pow _).mul h.2)

theorem exists_dbl_elem {J : Matrix β β E} (g : UG c J) : ∃ gd : UG c (dbl J),
    ((gd : GL (β ⊕ β) E) : Matrix (β ⊕ β) (β ⊕ β) E) = fromBlocks ((g : GL β E) : Matrix β β E) 0 0 1 := by
  have hg : ((g : GL β E) : Matrix β β E)ᵀ * J * ((g : GL β E) : Matrix β β E).map c = J := g.2
  refine ⟨⟨⟨fromBlocks ((g : GL β E) : Matrix β β E) 0 0 1,
    fromBlocks (((g : GL β E)⁻¹ : GL β E) : Matrix β β E) 0 0 1, ?_, ?_⟩, ?_⟩, rfl⟩
  · rw [fromBlocks_multiply, Units.mul_inv]; simp
  · rw [fromBlocks_multiply, Units.inv_mul]; simp
  · change (fromBlocks ((g : GL β E) : Matrix β β E) 0 0 1)ᵀ * dbl J *
      (fromBlocks ((g : GL β E) : Matrix β β E) 0 0 1).map c = dbl J
    rw [fromBlocks_map, fromBlocks_transpose, dbl, fromBlocks_multiply, fromBlocks_multiply,
      Matrix.map_one _ (map_zero c) (map_one c), Matrix.map_zero _ (map_zero c)]
    simp [hg]

end General

def dblCoord {F : Type} [Field F] {E : Type} [AddCommGroup E] [Module F E] {α β κ : Type}
    (d₀ : Matrix α β E ≃ₗ[F] (κ → F) × (κ → F)) :
    Matrix α (β ⊕ β) E ≃ₗ[F] (κ ⊕ κ → F) × (κ ⊕ κ → F) where
  toFun x := (Sum.elim (d₀ x.toCols₁).1 (d₀ x.toCols₂).1, Sum.elim (d₀ x.toCols₁).2 (-(d₀ x.toCols₂).2))
  invFun p := fromCols (d₀.symm (p.1 ∘ Sum.inl, p.2 ∘ Sum.inl)) (d₀.symm (p.1 ∘ Sum.inr, -(p.2 ∘ Sum.inr)))
  map_add' x y := by
    have h1 : (x + y).toCols₁ = x.toCols₁ + y.toCols₁ := rfl
    have h2 : (x + y).toCols₂ = x.toCols₂ + y.toCols₂ := rfl
    rw [h1, h2, map_add (f := _), map_add (f := _)]
    ext (i | i) <;> simp [add_comm]
  map_smul' a x := by
    have h1 : (a • x).toCols₁ = a • x.toCols₁ := rfl
    have h2 : (a • x).toCols₂ = a • x.toCols₂ := rfl
    rw [h1, h2, map_smul, map_smul]
    ext (i | i) <;> simp
  left_inv x := by
    simp
  right_inv p := by
    simp only [toCols₁_fromCols, toCols₂_fromCols, LinearEquiv.apply_symm_apply]
    ext (i | i) <;> simp

theorem split_of_eq (F : Type) [Field F] [NumberField F] [LocallyCompactSpace (AdeleRing (𝓞 F) F)] [Invertible (2 : AdeleRing (𝓞 F) F)]
    (E : Type) [Field E] [Algebra F E] (c : E →ₐ[F] E) (ξ : E) (α β κ : Type) [Fintype α] [DecidableEq α] [Fintype β]
    [DecidableEq β] [Fintype κ] (JA : Matrix α α E) (JB : Matrix β β E) (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ)
    (h1 : Continuous ψ) (h2 : ψ ≠ 1) (h3 : ∀ a : F, ψ (algebraMap F (AdeleRing (𝓞 F) F) a) = 1)
    (hq : IsQuad c ξ) (hA : IsHerm c JA) (hB : IsHerm c JB)
    (J' : Matrix β β (AdeleRing (𝓞 F) F ⊗[F] E)) (hJ : JB.map (fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) = J')
    (d : Darboux (symp (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) J') κ)
    (d₀ : Matrix α β E ≃ₗ[F] (κ → F) × (κ → F))
    (hd : ∀ x, d.e (x.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) =
      (fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).1 i), fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).2 i)))
    (χ : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ →* Circle) (ν : Type) [Fintype ν] [DecidableEq ν] (Cy : Matrix β ν E)
    (C' : Matrix β ν (AdeleRing (𝓞 F) F ⊗[F] E)) (hC : Cy.map (fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) = C')
    (om : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) J' →* Module.End ℂ ((κ → AdeleRing (𝓞 F) F) → ℂ))
    (hχ : ∀ (z : E) (u : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ), (u : AdeleRing (𝓞 F) F ⊗[F] E) = (1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z → χ u = 1)
    (hL : IsLagr c JB Cy) (hS : IsSplitting (adeleClass F) ψ d (actB (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c)) om)
    (hR : SiegelRule (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (adeleClass F) ψ ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) J' d χ C' om)
    (g : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) J')
    (hg : ∃ γ : Matrix β β E, ((g : GL β (AdeleRing (𝓞 F) F ⊗[F] E)) : Matrix β β (AdeleRing (𝓞 F) F ⊗[F] E)) = γ.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) :
    ∀ Φ ∈ schA F κ, thetaSum F (om g Φ) = thetaSum F Φ := by
  subst hJ hC
  exact _root_.GlobalTheory.CompanionTheory.ThetaSplit.theta_split F E c ξ α β κ JA JB ψ h1 h2 h3 hq hA hB d d₀ hd χ ν Cy om hχ hL hS hR g hg

theorem theta_om_rational : ∀ (F : Type) [Field F] [NumberField F] [LocallyCompactSpace (AdeleRing (𝓞 F) F)] [Invertible (2 : AdeleRing (𝓞 F) F)] (E : Type) [Field E] [Algebra F E] (c : E →ₐ[F] E) (ξ : E) (α β κ : Type) [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β] [Fintype κ] (JA : Matrix α α E) (JB : Matrix β β E) (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ), Continuous ψ → ψ ≠ 1 → (∀ a : F, ψ (algebraMap F (AdeleRing (𝓞 F) F) a) = 1) → IsQuad c ξ → IsHerm c JA → IsHerm c JB → ∀ (d : Darboux (symp (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E))) κ) (d₀ : Matrix α β E ≃ₗ[F] (κ → F) × (κ → F)), (∀ x, d.e (x.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) = (fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).1 i), fun i => algebraMap F (AdeleRing (𝓞 F) F) ((d₀ x).2 i))) → ∀ (χ : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ →* Circle) (om : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) →* Module.End ℂ ((κ → AdeleRing (𝓞 F) F) → ℂ)), (∀ (z : E) (u : (AdeleRing (𝓞 F) F ⊗[F] E)ˣ), (u : AdeleRing (𝓞 F) F ⊗[F] E) = (1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z → χ u = 1) → IsWeilB (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (adeleClass F) ψ ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] ξ) (JA.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) d χ om → ∀ g : UG (Algebra.TensorProduct.map (AlgHom.id (AdeleRing (𝓞 F) F) (AdeleRing (𝓞 F) F)) c) (JB.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)), (∃ γ : Matrix β β E, ((g : GL β (AdeleRing (𝓞 F) F ⊗[F] E)) : Matrix β β (AdeleRing (𝓞 F) F ⊗[F] E)) = γ.map fun z => ((1 : AdeleRing (𝓞 F) F) ⊗ₜ[F] z : AdeleRing (𝓞 F) F ⊗[F] E)) → ∀ Φ ∈ schA F κ, thetaSum F (om g Φ) = thetaSum F Φ := by
  intro F _ _ _ _ E _ _ c ξ α β κ _ _ _ _ _ JA JB ψ h1 h2 h3 hq hA hB d d₀ hd χ om hχ hW g hg Φ hΦ
  obtain ⟨hS, dd, omd, hdd, hSd, hRd, hbox⟩ := hW
  obtain ⟨γ, hγ⟩ := hg
  obtain ⟨gd, hgd⟩ := exists_dbl_elem g
  obtain ⟨-, -, Φ₀, hΦ₀, hne⟩ := GlobalTheory.CompanionTheory.ThetaAdm.theta_adm F κ
  have : Invertible (2 : F) := invertibleOfNonzero two_ne_zero
  have key := split_of_eq F E c ξ α (β ⊕ β) (κ ⊕ κ) JA (dbl JB) ψ h1 h2 h3 hq hA (isHerm_dbl hB) _ ?_ dd
    (dblCoord d₀) ?_ χ β (diagCols β) _ ?_ omd hχ (isLagr_diagCols c JB) hSd hRd gd ⟨fromBlocks γ 0 0 1, ?_⟩
    (boxFun Φ Φ₀) (_root_.GlobalTheory.CompanionTheory.ThetaBox.theta_box F κ κ Φ hΦ Φ₀ hΦ₀).1
  · rw [hbox g gd hgd Φ hΦ Φ₀ hΦ₀, (_root_.GlobalTheory.CompanionTheory.ThetaBox.theta_box F κ κ _ (hS.pres g Φ hΦ) Φ₀ hΦ₀).2,
      (_root_.GlobalTheory.CompanionTheory.ThetaBox.theta_box F κ κ Φ hΦ Φ₀ hΦ₀).2] at key
    exact mul_right_cancel₀ hne key
  · ext (i | i) (j | j) <;> simp [dbl, TensorProduct.tmul_neg]
  · intro x
    rw [← fromCols_toCols x, fromCols_map, hdd, hd, hd]
    ext (i | i) <;> simp [dblCoord]
  · ext (i | i) j <;> by_cases h : i = j <;> simp [diagCols, h, Algebra.TensorProduct.one_def]
  · rw [hgd, hγ]
    ext (i | i) (j | j)
    · simp
    · simp
    · simp
    · by_cases h : i = j <;> simp [h, Algebra.TensorProduct.one_def]

end GlobalTheory.CompanionTheory.ThetaMember
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumTensorProduct =====

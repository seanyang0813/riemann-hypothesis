module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CapelliLowestGelfandConj
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapQdetEtr
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlacesStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.EnvelopingMapSurjectiveStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSigmaList
import Development.AbelianVarietyTheory.Proofs.HeightProofs.UnitaryLieGeneratorsRepStatement
import Formalism.RealPlaceAnalysis.ThirdArithmeticHolds
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlock, Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlockStatement

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlock =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlock", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CapelliLowestGelfandConj\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlacesStatement\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.EnvelopingMapSurjectiveStatement\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSigmaList\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.UnitaryLieGeneratorsRepStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapQdetEtr\nimport Formalism.RealPlaceAnalysis.ThirdArithmeticHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

namespace GlobalTheory.CompanionTheory.CoreGL.CapScalar

def linOf {A : Type} [Ring A] [Algebra ℂ A] {n : ℕ} (E : Fin n → Fin n → A) : Matrix (Fin n) (Fin n) ℂ →ₗ[ℂ] A where
  toFun Z := ∑ a, ∑ b, Z a b • E a b
  map_add' Z W := by simp only [Matrix.add_apply, add_smul, Finset.sum_add_distrib]
  map_smul' c Z := by
    simp only [Matrix.smul_apply, smul_eq_mul, mul_smul, Finset.smul_sum, RingHom.id_apply]

theorem linOf_single {A : Type} [Ring A] [Algebra ℂ A] {n : ℕ} (E : Fin n → Fin n → A) (a b : Fin n) :
    linOf E (Matrix.single a b 1) = E a b := by
  classical
  change ∑ i, ∑ j, (Matrix.single a b (1 : ℂ)) i j • E i j = E a b
  rw [Finset.sum_eq_single a, Finset.sum_eq_single b]
  · simp
  · intro j _ hj; simp [Ne.symm hj]
  · simp
  · intro i _ hi; exact Finset.sum_eq_zero fun j _ => by simp [Ne.symm hi]
  · simp

theorem glRel_linOf {A : Type} [Ring A] [Algebra ℂ A] {n : ℕ} {E : Fin n → Fin n → A} (hE : Formalism.REAL.GlRel E)
    {M : Fin n → Fin n → Matrix (Fin n) (Fin n) ℂ} (hM : Formalism.REAL.GlRel M) :
    Formalism.REAL.GlRel fun i j => linOf E (M i j) := by
  have h : Formalism.REAL.GlRel (fun i j => linOf E (Matrix.single i j 1)) := by
    simpa only [linOf_single] using hE
  intro a b c d
  simp only
  rw [GlobalTheory.CapelliLowest.lie_of_glRel (linOf E) h, hM a b c d, map_sub, apply_ite (linOf E), apply_ite (linOf E), map_zero]

theorem qdet_commute {A : Type} [Ring A] [Algebra ℂ A] {n : ℕ} {E : Fin n → Fin n → A} (hE : Formalism.REAL.GlRel E)
    {M : Fin n → Fin n → Matrix (Fin n) (Fin n) ℂ} (hM : Formalism.REAL.GlRel M)
    (hs : Submodule.span ℂ (Set.range fun p : Fin n × Fin n => M p.1 p.2) = ⊤) (v : ℂ) (Z : Matrix (Fin n) (Fin n) ℂ) :
    linOf E Z * Formalism.REAL.qdet (fun i j => linOf E (M i j)) v = Formalism.REAL.qdet (fun i j => linOf E (M i j)) v * linOf E Z := by
  have hZ : Z ∈ Submodule.span ℂ (Set.range fun p : Fin n × Fin n => M p.1 p.2) := hs ▸ Submodule.mem_top
  induction hZ using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨p, rfl⟩ := hx
    exact (Formalism.REAL.qDetCentral A n _ (glRel_linOf hE hM) v p.1 p.2).symm
  | zero => simp
  | add x y _ _ hx hy => rw [map_add (f := _), add_mul, mul_add, hx, hy]
  | smul c x _ hx => rw [map_smul, smul_mul_assoc, mul_smul_comm, hx]

end GlobalTheory.CompanionTheory.CoreGL.CapScalar

namespace GlobalTheory.CompanionTheory.CoreGL

open GlobalTheory.CompanionTheory.CoreGL.CapScalar GlobalTheory.SmoothForms GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraExponentialFamilies

attribute [local instance 100] LieRing.ofAssociativeRing

theorem qdet_scalar_of_gelf : ∀ (D : D7) (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (hθ : IsInfFam θ) (V : HSp D) (τ : D.what₂.Tau)
    (M : Fin V.rank → Fin V.rank → Matrix (Fin V.rank) (Fin V.rank) ℂ), Formalism.REAL.GlRel M →
    Submodule.span ℂ (Set.range fun p : Fin V.rank × Fin V.rank => M p.1 p.2) = ⊤ → ∀ (c : ℕ → ℂ) (v : ℂ), ∃ s : ℂ,
      ∀ f : GlobalTheory.Mem.AutSpace.SmFun θ V, (∀ k, gelf θ V τ k f.1 = c k • f.1) →
        Formalism.REAL.qdet (fun i j => GlobalTheory.Mem.RealTranslate.derEnd hθ τ (M i j)) v f = s • f := by
  intro D θ hθ V τ M hM hsp c v
  have R := (GlobalTheory.T.adelicUnitary_realPoints_structure_realPlaces D).2 θ hθ V
  obtain ⟨P, Q, hPQ, h⟩ := GlobalTheory.T.unitary_lie_generators_rep _ _ (R.1 τ).1 (R.1 τ).2
  obtain ⟨h1, h2⟩ := h (EnvAt V τ) (fun X => UniversalEnvelopingAlgebra.ι ℂ ((1 : ℂ) ⊗ₜ[ℝ] X))
    (fun X Y => by rw [TensorProduct.tmul_add, map_add (f := _)])
    (fun c X => by
      rw [← map_smul, TensorProduct.tmul_smul, TensorProduct.smul_tmul', TensorProduct.smul_tmul']
      simp)
    (fun X Y Z hZ => by
      have : Z = ⁅X, Y⁆ := Subtype.ext hZ
      rw [this, ← Ring.lie_def, ← LieHom.map_lie, LieAlgebra.ExtendScalars.bracket_tmul, one_mul])
  set E : Fin V.rank → Fin V.rank → EnvAt V τ := fun a b =>
    UniversalEnvelopingAlgebra.ι ℂ ((1 : ℂ) ⊗ₜ[ℝ] P a b) + Complex.I • UniversalEnvelopingAlgebra.ι ℂ ((1 : ℂ) ⊗ₜ[ℝ] Q a b) with hEdef

  have hcomm := qdet_commute h1 hM hsp v
  set z : EnvAt V τ := Formalism.REAL.qdet (fun i j => linOf E (M i j)) v with hz
  have hι : ∀ X : LieAt V τ, UniversalEnvelopingAlgebra.ι ℂ ((1 : ℂ) ⊗ₜ[ℝ] X) * z = z * UniversalEnvelopingAlgebra.ι ℂ ((1 : ℂ) ⊗ₜ[ℝ] X) := by
    intro X
    have hX := h2 X
    generalize UniversalEnvelopingAlgebra.ι ℂ ((1 : ℂ) ⊗ₜ[ℝ] X) = y at hX
    induction hX using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨p, rfl⟩ := hx
      have := hcomm (Matrix.single p.1 p.2 1)
      rwa [linOf_single] at this
    | zero => simp
    | add x y _ _ hx hy => rw [add_mul, mul_add, hx, hy]
    | smul c x _ hx => rw [smul_mul_assoc, mul_smul_comm, hx]
  obtain ⟨cg, hc, hg⟩ := exists_gelf R τ
  have hcen : z ∈ Subalgebra.center ℂ (EnvAt V τ) := by
    rw [Subalgebra.mem_center_iff]
    intro u
    have : u ∈ Subalgebra.centralizer ℂ ({z} : Set (EnvAt V τ)) := by
      obtain ⟨w, rfl⟩ := GlobalTheory.T.enveloping_map_surjective D V τ u
      refine Subalgebra.sum_mem _ fun l _ => Subalgebra.smul_mem _ (Subalgebra.list_prod_mem _ fun x hx => ?_) _
      obtain ⟨X, -, rfl⟩ := List.mem_map.1 hx
      rw [Subalgebra.mem_centralizer_iff]
      rintro _ rfl
      exact (hι X).symm
    rw [Subalgebra.mem_centralizer_iff] at this
    exact (this z rfl).symm

  have key : ∀ y ∈ Algebra.adjoin ℂ (Set.range cg), ∃ s : ℂ, ∀ ψ : SmF θ V,
      (∀ k, gelf θ V τ k ψ.1 = c k • ψ.1) → envRep R τ y ψ = s • ψ := by
    intro y hy
    induction hy using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨k, rfl⟩ := hx
      exact ⟨c k, fun ψ e => Subtype.ext ((hg k ψ).symm.trans (e k))⟩
    | algebraMap r => exact ⟨r, fun ψ _ => by rw [AlgHom.commutes]; rfl⟩
    | add x y _ _ hx hy =>
      obtain ⟨s, hs⟩ := hx
      obtain ⟨t, ht⟩ := hy
      exact ⟨s + t, fun ψ e => by rw [map_add (f := _), LinearMap.add_apply, hs ψ e, ht ψ e, add_smul]⟩
    | mul x y _ _ hx hy =>
      obtain ⟨s, hs⟩ := hx
      obtain ⟨t, ht⟩ := hy
      exact ⟨s * t, fun ψ e => by
        rw [map_mul, Module.End.mul_apply, ht ψ e, map_smul, hs ψ e, smul_smul, mul_comm]⟩
  rw [hc] at hcen
  obtain ⟨s, hs⟩ := key z hcen

  have e : GlobalTheory.Mem.AutSpace.SmFun θ V = SmF θ V := Submodule.ext fun φ => smooth_iff R φ
  let T := (LinearEquiv.ofEq _ _ e).conjAlgEquiv ℂ
  have k0 : ∀ a b, T (GlobalTheory.Mem.RealTranslate.derEnd (V := V) hθ τ (Matrix.single a b 1)) = envRep R τ (E a b) := by
    intro a b
    rw [hEdef]
    simp only [map_add (f := _), map_smul, envRep_ι]
    refine LinearMap.ext fun φ => Subtype.ext ?_
    change RderC θ V τ (Matrix.single a b 1) φ.1 = _
    rw [RderC, conjAt, ← (hPQ _ _).1, ← (hPQ _ _).2, Rder_eq R, Rder_eq R]
    rfl
  have k1 : ∀ Z, T (GlobalTheory.Mem.RealTranslate.derEnd (V := V) hθ τ Z) = envRep R τ (linOf E Z) := by
    intro Z
    conv_lhs => rw [Matrix.matrix_eq_sum_single Z]
    change _ = envRep R τ (∑ a, ∑ b, Z a b • E a b)

    simp only [map_sum]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    have : Matrix.single a b (Z a b) = Z a b • Matrix.single a b (1 : ℂ) := by
      rw [Matrix.smul_single, smul_eq_mul, mul_one]
    rw [this, map_smul, map_smul, map_smul, k0]
  have k2 : T (Formalism.REAL.qdet (fun i j => GlobalTheory.Mem.RealTranslate.derEnd hθ τ (M i j)) v) = envRep R τ z := by
    have a1 := GlobalTheory.CompanionTheory.CapelliMap.map_qdet T.toAlgHom (fun i j => GlobalTheory.Mem.RealTranslate.derEnd (V := V) hθ τ (M i j)) v
    have a2 := GlobalTheory.CompanionTheory.CapelliMap.map_qdet (envRep R τ) (fun i j => linOf E (M i j)) v
    change T _ = _ at a1
    rw [a1, hz, a2]
    congr 1
    funext i j
    exact k1 (M i j)
  refine ⟨s, fun f hf => ?_⟩
  have k3 := congrArg (fun S : Module.End ℂ (SmF θ V) => (S (LinearEquiv.ofEq _ _ e f)).1) k2
  have k4 := hs (LinearEquiv.ofEq _ _ e f) hf
  exact Subtype.ext (k3.trans (congrArg Subtype.val k4))

end GlobalTheory.CompanionTheory.CoreGL

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlock =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlockStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlockStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlock\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

theorem _root_.GlobalTheory.T.gelfand_eigenvalue_casimir_scalar : ∀ (D : D7) (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)) (hθ : IsInfFam θ) (V : HSp D) (τ : D.what₂.Tau)
    (M : Fin V.rank → Fin V.rank → Matrix (Fin V.rank) (Fin V.rank) ℂ), Formalism.REAL.GlRel M →
    Submodule.span ℂ (Set.range fun p : Fin V.rank × Fin V.rank => M p.1 p.2) = ⊤ → ∀ (c : ℕ → ℂ) (v : ℂ), ∃ s : ℂ,
      ∀ f : GlobalTheory.Mem.AutSpace.SmFun θ V, (∀ k, gelf θ V τ k f.1 = c k • f.1) →
        Formalism.REAL.qdet (fun i j => GlobalTheory.Mem.RealTranslate.derEnd hθ τ (M i j)) v f = s • f := by
  first | exact @GlobalTheory.CompanionTheory.CoreGL.qdet_scalar_of_gelf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.AutomorphicFunctionRestrictBlockStatement =====

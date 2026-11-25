module

public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.LinearAlgebra.FreeModule.PID
public import Mathlib.LinearAlgebra.Matrix.Basis
public import Development.AutomorphicSpectrum.Proofs.AdelicProofs.LocGram
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar
import Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyNormFinLeOne
import Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsBasisCols, Development.AutomorphicSpectrum.Proofs.AdelicProofs.HasSatOfFamily

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsBasisCols =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsBasisCols", "h": "module\n\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar\npublic import Mathlib.LinearAlgebra.FreeModule.PID\npublic import Mathlib.LinearAlgebra.Matrix.Basis\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.VacLoc GlobalTheory.CompanionTheory.FinHeis GlobalTheory.WeilM MeasureTheory Matrix ValuativeRel NumberField IsDedekindDomain
open scoped TensorProduct

namespace GlobalTheory.CompanionTheory.MatSat

theorem exists_basis_cols {O : Type} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O]
    {β γ : Type} [Fintype β] [DecidableEq β] [Fintype γ] [DecidableEq γ]
    (A : Matrix (β ⊕ γ) β O) (hA : Function.Injective A.mulVecLin) :
    ∃ (P : Matrix (β ⊕ γ) (β ⊕ γ) O) (a : β → O) (s u : Matrix β β O),
      IsUnit P.det ∧ (∀ j, a j ≠ 0) ∧ A * s = P.toCols₁ * Matrix.diagonal a ∧
        A = P.toCols₁ * u := by
  classical
  obtain ⟨n, S⟩ := Submodule.smithNormalForm (Pi.basisFun O (β ⊕ γ)) (LinearMap.range A.mulVecLin)
  obtain ⟨φ⟩ : Nonempty (Fin n ≃ β) :=
    ⟨S.bN.indexEquiv ((Pi.basisFun O β).map (LinearEquiv.ofInjective A.mulVecLin hA))⟩
  obtain ⟨f', hf'⟩ : ∃ f' : β ↪ β ⊕ γ, ∀ b, f' b = S.f (φ.symm b) :=
    ⟨φ.symm.toEmbedding.trans S.f, fun _ => rfl⟩
  have hcard : Fintype.card γ = Fintype.card ((Set.range f')ᶜ : Set (β ⊕ γ)) := by
    rw [Fintype.card_compl_set, Set.card_range_of_injective f'.injective, Fintype.card_sum]
    omega
  obtain ⟨e, he⟩ : ∃ e : β ⊕ γ ≃ β ⊕ γ, ∀ b, e (Sum.inl b) = f' b :=
    ⟨(Equiv.sumCongr (Equiv.ofInjective f' f'.injective) (Fintype.equivOfCardEq hcard)).trans
      (Equiv.Set.sumCompl (Set.range f')), fun b => by simp⟩
  obtain ⟨P, hPdef⟩ : ∃ P : Matrix (β ⊕ γ) (β ⊕ γ) O,
      P = (Pi.basisFun O (β ⊕ γ)).toMatrix (S.bM.reindex e.symm) := ⟨_, rfl⟩
  have hPdet : IsUnit P.det := by
    letI := (Pi.basisFun O (β ⊕ γ)).invertibleToMatrix (S.bM.reindex e.symm)
    rw [hPdef]
    exact Matrix.isUnit_det_of_invertible _
  have hP1 : ∀ i b, P.toCols₁ i b = S.bM (f' b) i := by
    intro i b
    show P i (Sum.inl b) = _
    rw [hPdef, Module.Basis.toMatrix_apply, Pi.basisFun_repr, Module.Basis.reindex_apply,
      Equiv.symm_symm, he]
  have hpre : ∀ b, ∃ v : β → O, A *ᵥ v = (S.bN (φ.symm b) : β ⊕ γ → O) := by
    intro b
    obtain ⟨v, hv⟩ := LinearMap.mem_range.1 (S.bN (φ.symm b)).2
    exact ⟨v, hv⟩
  choose pre hpre using hpre
  obtain ⟨s, hs⟩ : ∃ s : Matrix β β O, ∀ i b, s i b = pre b i :=
    ⟨Matrix.of fun i b => pre b i, fun _ _ => rfl⟩
  have ha : ∀ b, S.a (φ.symm b) ≠ 0 := by
    intro b h
    have h1 := S.snf (φ.symm b)
    rw [h, zero_smul] at h1
    exact S.bN.ne_zero _ ((Submodule.coe_eq_zero).1 h1)
  obtain ⟨u, hu⟩ : ∃ u : Matrix β β O, ∀ b' b, u b' b =
      S.bN.repr ⟨A.mulVecLin (Pi.single b 1), LinearMap.mem_range_self _ _⟩ (φ.symm b') *
        S.a (φ.symm b') :=
    ⟨Matrix.of fun b' b => S.bN.repr ⟨A.mulVecLin (Pi.single b 1), LinearMap.mem_range_self _ _⟩
      (φ.symm b') * S.a (φ.symm b'), fun _ _ => rfl⟩
  refine ⟨P, fun b => S.a (φ.symm b), s, u, hPdet, ha, ?_, ?_⟩
  · ext i b
    rw [Matrix.mul_diagonal, hP1, Matrix.mul_apply]
    have h1 := congrFun (hpre b) i
    simp only [Matrix.mulVec, dotProduct] at h1
    simp only [hs]
    rw [h1, S.snf, hf']
    simp only [Pi.smul_apply, smul_eq_mul]
    ring
  · ext i b
    have hw := S.bN.sum_repr ⟨A.mulVecLin (Pi.single b 1), LinearMap.mem_range_self _ _⟩
    have hw' := congrArg (fun v : LinearMap.range A.mulVecLin => (v : β ⊕ γ → O) i) hw
    simp only [Submodule.coe_sum, Submodule.coe_smul, Finset.sum_apply, Pi.smul_apply,
      smul_eq_mul, S.snf] at hw'
    have hcol : (A.mulVecLin (Pi.single b 1)) i = A i b := by
      simp [Matrix.mulVec, dotProduct, Pi.single_apply]
    rw [Matrix.mul_apply]
    refine hcol.symm.trans (hw'.symm.trans ?_)
    simp only [hP1, hu, hf']
    refine Fintype.sum_equiv φ _ _ fun k => ?_
    simp only [Equiv.symm_apply_apply]
    ring

theorem exists_saturation {O K : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [Field K] [Algebra O K] [IsFractionRing O K] {β γ : Type} [Fintype β] [DecidableEq β]
    [Fintype γ] [DecidableEq γ] (C : Matrix (β ⊕ γ) β K)
    (hC : ∃ L : Matrix β (β ⊕ γ) K, L * C = 1) :
    ∃ (t : GL β K) (C₀ : Matrix (β ⊕ γ) β O) (D : Matrix (β ⊕ γ) γ O),
      C * (t : Matrix β β K) = C₀.map (algebraMap O K) ∧
        IsUnit (Matrix.fromCols C₀ D).det := by
  classical
  obtain ⟨L, hL⟩ := hC
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors O)
    (fun p : (β ⊕ γ) × β => C p.1 p.2)
  have hb' : ∀ p : (β ⊕ γ) × β, ∃ x : O,
      algebraMap O K x = algebraMap O K (b : O) * C p.1 p.2 := by
    intro p
    obtain ⟨x, hx⟩ := RingHom.mem_rangeS.1 (hb p)
    exact ⟨x, by rw [hx, Algebra.smul_def]⟩
  choose c hc using hb'
  have hbne : algebraMap O K (b : O) ≠ 0 :=
    IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors b.2
  obtain ⟨C₁, hC₁⟩ : ∃ C₁ : Matrix (β ⊕ γ) β O,
      C₁.map (algebraMap O K) = algebraMap O K (b : O) • C :=
    ⟨Matrix.of fun i j => c (i, j), by ext i j; simp [hc]⟩
  have hinj : Function.Injective C₁.mulVecLin := by
    intro v w hvw
    have h1 : C₁ *ᵥ v = C₁ *ᵥ w := hvw
    have h2 : ∀ x : β → O, (algebraMap O K) ∘ (C₁ *ᵥ x) =
        algebraMap O K (b : O) • (C *ᵥ ((algebraMap O K) ∘ x)) := by
      intro x
      funext i
      rw [Function.comp_apply, RingHom.map_mulVec, hC₁]
      first
      | rw [Matrix.smul_mulVec]
    have e1 := h2 v
    have e2 := h2 w
    rw [h1] at e1
    have h3 : C *ᵥ ((algebraMap O K) ∘ v) = C *ᵥ ((algebraMap O K) ∘ w) :=
      smul_right_injective (β ⊕ γ → K) hbne (e1.symm.trans e2)
    have h4 : (algebraMap O K) ∘ v = (algebraMap O K) ∘ w := by
      have := congrArg (fun z => L *ᵥ z) h3
      simpa only [Matrix.mulVec_mulVec, hL, Matrix.one_mulVec] using this
    funext i
    exact IsFractionRing.injective O K (congrFun h4 i)
  obtain ⟨P, a, s, u, hP, -, -, hu⟩ := exists_basis_cols C₁ hinj
  have hCw : C = (P.toCols₁.map (algebraMap O K)) *
      ((algebraMap O K (b : O))⁻¹ • u.map (algebraMap O K)) := by
    have e1 : algebraMap O K (b : O) • C = (P.toCols₁.map (algebraMap O K)) * (u.map (algebraMap O K)) := by
      rw [← hC₁, hu, Matrix.map_mul]
    rw [Matrix.mul_smul, ← e1, smul_smul, inv_mul_cancel₀ hbne, one_smul]
  have hLw : (L * P.toCols₁.map (algebraMap O K)) *
      ((algebraMap O K (b : O))⁻¹ • u.map (algebraMap O K)) = 1 := by
    rw [Matrix.mul_assoc, ← hCw, hL]
  have hwL : ((algebraMap O K (b : O))⁻¹ • u.map (algebraMap O K)) *
      (L * P.toCols₁.map (algebraMap O K)) = 1 := by
    first
    | exact mul_eq_one_comm.1 hLw
  refine ⟨⟨L * P.toCols₁.map (algebraMap O K),
    (algebraMap O K (b : O))⁻¹ • u.map (algebraMap O K), hLw, hwL⟩, P.toCols₁, P.toCols₂, ?_, ?_⟩
  · show C * (L * P.toCols₁.map (algebraMap O K)) = P.toCols₁.map (algebraMap O K)
    rw [hCw, Matrix.mul_assoc, hwL, Matrix.mul_one]
  · rw [Matrix.fromCols_toCols]
    exact hP

end GlobalTheory.CompanionTheory.MatSat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsBasisCols =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AdelicProofs.HasSatOfFamily =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AdelicProofs.HasSatOfFamily", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AdelicProofs.LocGram\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsBasisCols\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.EventuallyNormFinLeOne\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.UG GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.CompanionTheory.IwaDbl

namespace GlobalTheory.CompanionTheory.IwaDbl

theorem hasSat_of_family {B K O I : Type} [CommRing B] [Field K] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [Algebra O K] [IsFractionRing O K] (π : I → B →+* K) (hinj : ∀ y z : B, (∀ i, π i y = π i z) → y = z)
    (hsurj : ∀ f : I → K, ∃ y : B, ∀ i, π i y = f i) (A : Subring B)
    (hA : ∀ y, y ∈ A ↔ ∀ i, π i y ∈ (algebraMap O K).range) (β : Type) [Fintype β] [DecidableEq β] : HasSat A β := by
  have hlift : ∀ {m n : Type} (f : I → Matrix m n K), ∃ X : Matrix m n B, ∀ i, X.map (π i) = f i := by
    intro m n f
    choose g hg using fun p : m × n => hsurj fun i => f i p.1 p.2
    exact ⟨Matrix.of fun a b => g (a, b), fun i => Matrix.ext fun a b => by simp [hg]⟩
  have hext : ∀ {m n : Type} (X Y : Matrix m n B), (∀ i, X.map (π i) = Y.map (π i)) → X = Y := by
    intro m n X Y h
    exact Matrix.ext fun a b => hinj _ _ fun i => by simpa using congrFun (congrFun (h i) a) b
  have hmem : ∀ {m n : Type} (X : Matrix m n B) (Y : I → Matrix m n O),
      (∀ i, X.map (π i) = (Y i).map (algebraMap O K)) → ∀ a b, X a b ∈ A := by
    intro m n X Y h a b
    refine (hA _).2 fun i => RingHom.mem_range.2 ⟨Y i a b, ?_⟩
    simpa using (congrFun (congrFun (h i) a) b).symm
  intro C N hNC
  have hleft : ∀ i, ∃ L : Matrix β (β ⊕ β) K, L * C.map (π i) = 1 := fun i =>
    ⟨N.map (π i), by rw [← Matrix.map_mul, hNC]; simp⟩
  choose t C₀ D htC hdet using fun i =>
    GlobalTheory.CompanionTheory.MatSat.exists_saturation (O := O) (C.map (π i)) (hleft i)
  obtain ⟨T, hT⟩ := hlift fun i => Units.val (t i)
  obtain ⟨T', hT'⟩ := hlift fun i => Units.val (t i)⁻¹
  obtain ⟨Dl, hDl⟩ := hlift fun i => (D i).map (algebraMap O K)
  obtain ⟨Ml, hMl⟩ := hlift fun i => ((Matrix.fromCols (C₀ i) (D i))⁻¹).map (algebraMap O K)
  have hCT : ∀ i, (C * T).map (π i) = (C₀ i).map (algebraMap O K) := fun i => by
    rw [Matrix.map_mul, hT]
    exact htC i
  refine ⟨T, T', Dl, Ml, ?_, hmem _ C₀ hCT, hmem _ D hDl,
    hmem _ (fun i => (Matrix.fromCols (C₀ i) (D i))⁻¹) hMl, ?_⟩
  · refine hext _ _ fun i => ?_
    rw [Matrix.map_mul, hT, hT', Units.mul_inv]
    simp
  · refine hext _ _ fun i => ?_
    rw [Matrix.map_mul, Matrix.fromCols_map, hMl, hCT, hDl, ← Matrix.fromCols_map, ← Matrix.map_mul,
      Matrix.nonsing_inv_mul _ (hdet i)]
    simp

end GlobalTheory.CompanionTheory.IwaDbl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AdelicProofs.HasSatOfFamily =====

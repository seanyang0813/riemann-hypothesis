module

public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.HTSpecAllHodge
public import Mathlib.LinearAlgebra.Eigenspace.Basic
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.MemRangeOfSol
public import Mathlib.RingTheory.Flat.Basic
public import Mathlib.RingTheory.TensorProduct.Free
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.JumpStepOf
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalProjectiveModel
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HodgePullHodgePull
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeMatrices.HodgeMat, Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.CoordsOfCommonEigenvector, Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.HOpCover

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeMatrices.HodgeMat =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeMatrices.HodgeMat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.HTSpecAllHodge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions.Loc GlobalTheory.HTLink

namespace CrystallineSemistableComparison.Jump

theorem corr_mat {R m m' c c' I : Type*} [CommRing R] [Fintype m] [Fintype m'] [Fintype c] [Fintype c'] [Fintype I]
    [DecidableEq m] (Φ : Matrix m c R) (Φ' : Matrix m' c' R) (Ep : Matrix m' m R) (Hp : Matrix c' c R)
    (E : I → Matrix m' m R) (H : I → Matrix c' c R) (a : I → ℤ) (np : Ep * Φ = Φ' * Hp) (nt : ∀ i, E i * Φ = Φ' * H i)
    (L : Matrix m m' R) (hL : L * Ep = 1) (T : Matrix m m R) (T' : Matrix c c R)
    (hE : Ep * T = ∑ i, a i • E i) (hH : Hp * T' = ∑ i, a i • H i) : T * Φ = Φ * T' := by
  have h : Ep * (T * Φ) = Ep * (Φ * T') := by
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hE, np, Matrix.mul_assoc, hH, Matrix.sum_mul, Matrix.mul_sum]
    exact Finset.sum_congr rfl fun i _ => by rw [Matrix.smul_mul, Matrix.mul_smul, nt]
  have h2 := congrArg (L * ·) h
  simpa only [← Matrix.mul_assoc, hL, Matrix.one_mul] using h2

variable {l : ℕ} [Fact l.Prime] {K : FinExt l} {X X' : Scheme.{0}} {q : X ⟶ Sp ↥K.1} {q' : X' ⟶ Sp ↥K.1} {n : ℕ}

theorem corr_ht (F : Frame q n) (F' : Frame q' n) (Φ : Matrix (Fin F.d) F.Col ℂ_[l]) (Φ' : Matrix (Fin F'.d) F'.Col ℂ_[l])
    {p : X' ⟶ X} (hp : p ≫ q = q') {I : Type} [Fintype I] {t : I → (X' ⟶ X)} (ht : ∀ i, t i ≫ q = q') (a : I → ℤ)
    (np : F.etMat F' hp * Φ = Φ' * F.hodgeMat F' hp) (nt : ∀ i, F.etMat F' (ht i) * Φ = Φ' * F.hodgeMat F' (ht i))
    (hinj : Function.Injective (etPull hp n)) (TV : EtV q n →ₗ[ℚ_[l]] EtV q n)
    (TH : ∀ j : Fin (n + 1), HodgeV q n j →ₗ[↥K.1] HodgeV q n j)
    (hV : etPull hp n ∘ₗ TV = ∑ i, a i • etPull (ht i) n)
    (hH : ∀ j : Fin (n + 1), GlobalTheory.HodgeCoh.hodgePull hp j (n - j) ∘ₗ TH j = ∑ i, a i • GlobalTheory.HodgeCoh.hodgePull (ht i) j (n - j)) :
    (LinearMap.toMatrix F.b F.b TV).map (algebraMap ℚ_[l] ℂ_[l]) * Φ =
      Φ * (Matrix.blockDiagonal' fun j : Fin (n + 1) => LinearMap.toMatrix (F.c j) (F.c j) (TH j)).map (toC K) := by
  obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective (etPull hp n) (LinearMap.ker_eq_bot.2 hinj)
  refine corr_mat Φ Φ' _ _ (fun i => F.etMat F' (ht i)) (fun i => F.hodgeMat F' (ht i)) a np nt
    ((LinearMap.toMatrix F'.b F.b g).map (algebraMap ℚ_[l] ℂ_[l])) ?_ _ _ ?_ ?_
  · rw [Frame.etMat, ← Matrix.map_mul, ← LinearMap.toMatrix_comp, hg, LinearMap.toMatrix_id,
      Matrix.map_one _ (map_zero _) (map_one _)]
  · rw [Frame.etMat, ← Matrix.map_mul, ← LinearMap.toMatrix_comp, hV]
    ext i j

    simp [Frame.etMat, Matrix.sum_apply, map_sum]
  · rw [Frame.hodgeMat, ← Matrix.map_mul, ← Matrix.blockDiagonal'_mul]
    simp only [← LinearMap.toMatrix_comp, hH]
    ext ⟨i, x⟩ ⟨j, y⟩
    by_cases hij : i = j
    · subst hij

      simp [Frame.hodgeMat, Matrix.sum_apply, map_sum]
    · rw [Matrix.map_apply, Matrix.blockDiagonal'_apply_ne _ _ _ hij, map_zero, Matrix.sum_apply]
      refine (Finset.sum_eq_zero fun k _ => ?_).symm
      rw [Matrix.smul_apply, Frame.hodgeMat, Matrix.map_apply, Matrix.blockDiagonal'_apply_ne _ _ _ hij, map_zero, smul_zero]

end CrystallineSemistableComparison.Jump

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeMatrices.HodgeMat =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.CoordsOfCommonEigenvector =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.CoordsOfCommonEigenvector", "h": "module\n\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.MemRangeOfSol\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.RingTheory.Flat.Basic\npublic import Mathlib.RingTheory.TensorProduct.Free\n\n"}
section -- clump:auto
@[expose] public section

open Matrix TensorProduct

namespace PositivityTheory.AutomorphicGaloisHodgeTate.G8

theorem coords_of_common_eigenvector {k k' M M' I J : Type*} [Field k] [Field k'] [AddCommGroup M] [Module k M] [AddCommGroup M'] [Module k' M']
    [Fintype I] [DecidableEq I] (φ : k →+* k') (β : M →ₛₗ[φ] M') (c : Module.Basis I k M) (c' : Module.Basis I k' M')
    (hc : ∀ i, c' i = β (c i)) (T : J → Module.End k M) (S : J → Module.End k' M') (h : ∀ j x, β (T j x) = S j (β x))
    (θ : J → k') (x : M') (hx0 : x ≠ 0) (hx : ∀ j, S j x = θ j • x) :
    ∃ y : I → k', y ≠ 0 ∧ ∀ j, (LinearMap.toMatrix c c (T j)).map φ *ᵥ y = θ j • y := by
  have hm : ∀ j, (LinearMap.toMatrix c c (T j)).map φ = LinearMap.toMatrix c' c' (S j) := fun j => by
    ext p q
    rw [map_apply, LinearMap.toMatrix_apply, LinearMap.toMatrix_apply, hc, ← h]

    conv_rhs => rw [← c.sum_repr (T j (c q)), map_sum]
    simp [LinearMap.map_smulₛₗ, ← hc, Finsupp.single_apply]
  refine ⟨c'.repr x, fun h0 => hx0 (c'.repr.injective (by ext p; simpa using congrFun h0 p)), fun j => ?_⟩
  rw [hm, LinearMap.toMatrix_mulVec_repr, hx, map_smul]
  rfl

theorem exists_emb {k L M U I : Type*} [Field k] [Field L] [Algebra k L] [AddCommGroup M] [Module k M] [AddCommGroup U]
    [Module k U] [Fintype I] [DecidableEq I] (b : Module.Basis I k M) (f : M →ₗ[k] U) (hf : Function.Injective f) :
    ∃ E : (I → L) →ₗ[L] L ⊗[k] U, Function.Injective E ∧ ∀ (T : M →ₗ[k] M) (S : U →ₗ[k] U), (∀ x, S (f x) = f (T x)) →
      ∀ v, S.baseChange L (E v) = E ((LinearMap.toMatrix b b T).map (algebraMap k L) *ᵥ v) := by
  let c := Algebra.TensorProduct.basis L b
  refine ⟨f.baseChange L ∘ₗ c.equivFun.symm.toLinearMap, ?_, fun T S h v => ?_⟩
  · exact (Module.Flat.lTensor_preserves_injective_linearMap (M := L) f hf).comp c.equivFun.symm.injective
  · have h1 : S ∘ₗ f = f ∘ₗ T := LinearMap.ext h
    have h2 : T.baseChange L (c.equivFun.symm v) = c.equivFun.symm ((LinearMap.toMatrix b b T).map (algebraMap k L) *ᵥ v) := by
      rw [← LinearMap.toMatrix_baseChange, LinearEquiv.eq_symm_apply, Module.Basis.equivFun_apply,
        ← LinearMap.toMatrix_mulVec_repr c c]
      exact congrArg _ (c.equivFun.apply_symm_apply v)
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
    rw [← h2, ← LinearMap.comp_apply, ← LinearMap.baseChange_comp, h1, LinearMap.baseChange_comp, LinearMap.comp_apply]

theorem block_eig {k o : Type*} [Field k] [Fintype o] [DecidableEq o] {e : o → Type*} [∀ r, Fintype (e r)] [∀ r, DecidableEq (e r)]
    (M : ∀ r, Matrix (e r) (e r) k) (r₀ : o) (y : e r₀ → k) (t : k) (h : M r₀ *ᵥ y = t • y) :
    ∃ Y : (Σ r, e r) → k, (∀ i, Y ⟨r₀, i⟩ = y i) ∧ (∀ p, Y p ≠ 0 → p.1 = r₀) ∧
      ∀ (M' : ∀ r, Matrix (e r) (e r) k) (t' : k), M' r₀ *ᵥ y = t' • y →
        (blockDiagonal' M' - t' • (1 : Matrix (Σ r, e r) (Σ r, e r) k)) ^ 1 *ᵥ Y = 0 := by
  let Y : (Σ r, e r) → k := fun p => if h : p.1 = r₀ then y (h ▸ p.2) else 0
  have h1 : ∀ i, Y ⟨r₀, i⟩ = y i := fun i => dif_pos rfl
  have h2 : ∀ p, p.1 ≠ r₀ → Y p = 0 := fun p hp => dif_neg hp
  refine ⟨Y, h1, fun p hp => by_contra fun hn => hp (h2 p hn), fun M' t' h' => funext fun ⟨r, i⟩ => ?_⟩
  rw [pow_one, sub_mulVec, smul_mulVec, one_mulVec, Pi.sub_apply, Pi.zero_apply, sub_eq_zero, mulVec, dotProduct,
    Fintype.sum_sigma, Finset.sum_eq_single r]
  · by_cases hr : r = r₀
    · subst hr
      simp only [blockDiagonal'_apply_eq, h1, Pi.smul_apply]
      exact congrFun h' i
    · simp [h2 _ (show (⟨r, _⟩ : Σ r, e r).1 ≠ r₀ from hr)]
  · intro r' _ hr'
    exact Finset.sum_eq_zero fun q _ => by rw [blockDiagonal'_apply_ne _ _ _ (Ne.symm hr'), zero_mul]
  · simp

variable {k C : Type*} [Field k] [Field C] [Algebra k C]

theorem occ1 {Γ m n d J : Type*} [Fintype m] [Fintype n] [Fintype d] [DecidableEq m] [DecidableEq n]
    (a : Γ → C →+* C) (R : Γ → Matrix m m k) (Φ : Matrix m n C) (hΦi : Function.Injective Φ.mulVec) (w : Γ → n → C)
    (hΦ : ∀ σ, (R σ).map (algebraMap k C) * Φ.map (a σ) = Φ * diagonal (w σ))
    (TV : J → Matrix m m k) (TH : J → Matrix n n k)
    (hT : ∀ j, (TV j).map (algebraMap k C) * Φ = Φ * (TH j).map (algebraMap k C)) (θ : J → k)
    (y : n → k) (hy : y ≠ 0) (c : Γ → C) (hw : ∀ σ p, y p ≠ 0 → w σ p = c σ)
    (he : ∀ j, (TH j - θ j • (1 : Matrix n n k)) ^ 1 *ᵥ y = 0)
    (B : Matrix m d k) (hBi : Function.Injective B.mulVec)
    (hB : ∀ v : m → k, (∀ j, (TV j - θ j • (1 : Matrix m m k)) ^ 1 *ᵥ v = 0) → ∃ u, B *ᵥ u = v)
    (ρ : Γ → Matrix d d k) (hρ : ∀ σ, R σ * B = B * ρ σ) :
    ∃ z : d → C, z ≠ 0 ∧ ∀ σ, (∀ p, a σ (algebraMap k C (y p)) = algebraMap k C (y p)) →
      (∀ p q, a σ (algebraMap k C (B p q)) = algebraMap k C (B p q)) →
      (ρ σ).map (algebraMap k C) *ᵥ (fun q => a σ (z q)) = c σ • z := by
  classical
  have hN := he
  set i := algebraMap k C
  let yC : n → C := fun p => i (y p)
  have hpow : ∀ j r, ((TV j - θ j • (1 : Matrix m m k)) ^ r).map i * Φ = Φ * ((TH j - θ j • (1 : Matrix n n k)) ^ r).map i := by
    intro j r
    have h1 : (TV j - θ j • (1 : Matrix m m k)).map i * Φ = Φ * (TH j - θ j • (1 : Matrix n n k)).map i := by
      have e1 : (TV j - θ j • (1 : Matrix m m k)).map i = (TV j).map i - i (θ j) • (1 : Matrix m m C) := by
        ext p q; by_cases h : p = q <;> simp [h]
      have e2 : (TH j - θ j • (1 : Matrix n n k)).map i = (TH j).map i - i (θ j) • (1 : Matrix n n C) := by
        ext p q; by_cases h : p = q <;> simp [h]
      rw [e1, e2, Matrix.sub_mul, Matrix.mul_sub, hT, Matrix.smul_mul, Matrix.mul_smul, Matrix.one_mul, Matrix.mul_one]
    induction r with
    | zero => simp [Matrix.map_one _ (map_zero i) (map_one i)]
    | succ r ih => rw [pow_succ, pow_succ, Matrix.map_mul, Matrix.map_mul, Matrix.mul_assoc, h1, ← Matrix.mul_assoc, ih, Matrix.mul_assoc]
  obtain ⟨z, hz⟩ := mem_range_of_sol (C := C) (fun j => (TV j - θ j • (1 : Matrix m m k)) ^ 1) B
    (fun v hv => hB v hv) (Φ *ᵥ yC) fun j => by
      rw [mulVec_mulVec, hpow, ← mulVec_mulVec]
      have : ((TH j - θ j • (1 : Matrix n n k)) ^ 1).map i *ᵥ yC = 0 := funext fun p => by
        have := congrArg i (congrFun (hN j) p)
        rw [RingHom.map_mulVec] at this
        exact this.trans (map_zero i)
      rw [this, mulVec_zero]
  refine ⟨z, fun h0 => hy (funext fun p => ?_), fun σ h1 h2 => map_injective (C := C) B hBi ?_⟩
  · have : yC = 0 := hΦi (by rw [← hz, h0, mulVec_zero, mulVec_zero])
    exact (map_eq_zero i).1 (congrFun this p)
  · have hBσ : (B.map i).map (a σ) = B.map i := by ext p q; exact h2 p q
    have hx : B.map i *ᵥ (fun q => a σ (z q)) = Φ.map (a σ) *ᵥ yC := funext fun p => by
      have e1 := (RingHom.map_mulVec (a σ) (B.map i) z p).symm
      have e2 := RingHom.map_mulVec (a σ) Φ yC p
      have e3 : (⇑(a σ) ∘ yC) = yC := funext h1
      rw [hBσ, hz, e2, e3] at e1
      exact e1
    change B.map i *ᵥ _ = B.map i *ᵥ _
    rw [mulVec_mulVec, ← Matrix.map_mul, ← hρ, Matrix.map_mul, ← mulVec_mulVec, hx, mulVec_mulVec, hΦ, ← mulVec_mulVec,
      mulVec_smul, hz, ← mulVec_smul]
    congr 1
    funext p
    rw [mulVec_diagonal, Pi.smul_apply, smul_eq_mul]
    by_cases hp : y p = 0
    · simp [yC, hp]
    · rw [hw σ p hp]

theorem occE {U : Type*} [AddCommGroup U] [Module k U]
    {Γ m n d J : Type*} [Fintype m] [Fintype n] [Fintype d] [DecidableEq m] [DecidableEq n]
    (a : Γ → C →+* C) (R : Γ → Matrix m m k) (Φ : Matrix m n C) (hΦi : Function.Injective Φ.mulVec) (w : Γ → n → C)
    (hΦ : ∀ σ, (R σ).map (algebraMap k C) * Φ.map (a σ) = Φ * diagonal (w σ))
    (TV : J → Matrix m m k) (TH : J → Matrix n n k)
    (hT : ∀ j, (TV j).map (algebraMap k C) * Φ = Φ * (TH j).map (algebraMap k C)) (θ : J → k)
    (y : n → k) (hy : y ≠ 0) (c : Γ → C) (hw : ∀ σ p, y p ≠ 0 → w σ p = c σ)
    (he : ∀ j, (TH j - θ j • (1 : Matrix n n k)) ^ 1 *ᵥ y = 0)
    (E : (m → k) →ₗ[k] U) (hE : Function.Injective E) (op : J → Module.End k U) (hop : ∀ j v, op j (E v) = E (TV j *ᵥ v))
    (g : Γ → Module.End k U) (hg : ∀ σ v, g σ (E v) = E (R σ *ᵥ v))
    (V : Submodule k U) (hV : V = ⨅ j, Module.End.eigenspace (op j) (θ j)) (b : Module.Basis d k V) (ρ : Γ → Matrix d d k)
    (hρ : ∀ σ q, g σ (b q) = ∑ p, ρ σ p q • (b p).1) :
    ∃ (S : Finset k) (z : d → C), z ≠ 0 ∧ ∀ σ, (∀ x ∈ S, a σ (algebraMap k C x) = algebraMap k C x) →
      (ρ σ).map (algebraMap k C) *ᵥ (fun q => a σ (z q)) = c σ • z := by
  classical
  have hpow : ∀ j (N : ℕ) v, ((op j - θ j • 1) ^ N) (E v) = E ((TV j - θ j • (1 : Matrix m m k)) ^ N *ᵥ v) := by
    intro j N
    induction N with
    | zero => intro v; simp
    | succ N ih =>
      intro v
      rw [pow_succ, pow_succ, Module.End.mul_apply, ← mulVec_mulVec, ← ih]
      congr 1
      simp [hop, sub_mulVec, smul_mulVec]
  have hmem : ∀ v, E v ∈ V ↔ ∀ j, (TV j - θ j • (1 : Matrix m m k)) ^ 1 *ᵥ v = 0 := fun v => by
    rw [hV, Submodule.mem_iInf]
    refine forall_congr' fun j => ?_
    rw [Module.End.mem_eigenspace_iff, ← map_eq_zero_iff _ hE, ← hpow, pow_one, LinearMap.sub_apply, sub_eq_zero]
    rfl
  have hst : ∀ σ (u : V), g σ u ∈ V ∧ ∀ h : g σ u ∈ V, ⇑(b.repr ⟨g σ u, h⟩) = ρ σ *ᵥ ⇑(b.repr u) := by
    intro σ u
    have h1 : g σ u = ((∑ p, (ρ σ *ᵥ ⇑(b.repr u)) p • b p : V) : U) := by
      have h0 : (u : U) = ∑ q, b.repr u q • (b q).1 := by
        conv_lhs => rw [← b.sum_repr u]
        simp only [Submodule.coe_sum, Submodule.coe_smul]
      have hρ' : ∀ q, g σ (b q).1 = ∑ p, ρ σ p q • (b p).1 := hρ σ

      rw [h0, map_sum, Submodule.coe_sum]
      simp only [mulVec, dotProduct, Submodule.coe_smul]
      simp only [Finset.sum_smul]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun q _ => ?_
      rw [map_smul, hρ', Finset.smul_sum]
      exact Finset.sum_congr rfl fun p _ => by rw [smul_smul, mul_comm]
    refine ⟨h1 ▸ Subtype.property _, fun h => ?_⟩
    rw [show (⟨g σ u, h⟩ : V) = ∑ p, (ρ σ *ᵥ ⇑(b.repr u)) p • b p from Subtype.ext h1]
    exact b.repr_sum_self _
  let W : Submodule k (m → k) := V.comap E
  let e := Module.finBasis k W
  let B : Matrix m (Fin (Module.finrank k W)) k := fun p q => (e q).1 p
  have hB : ∀ u, B *ᵥ u = ((∑ q, u q • e q : W) : m → k) := fun u => funext fun p => by
    simp [B, mulVec, dotProduct, Finset.sum_apply, mul_comm]
  have hR : ∀ σ (v : W), R σ *ᵥ v.1 ∈ W := fun σ v => by
    change E _ ∈ V
    rw [← hg]
    exact (hst σ ⟨E v, v.2⟩).1
  let ρ' : Γ → Matrix (Fin (Module.finrank k W)) (Fin (Module.finrank k W)) k := fun σ p q => e.repr ⟨_, hR σ (e q)⟩ p
  let A : Matrix d (Fin (Module.finrank k W)) k := fun p q => b.repr ⟨E (e q), (e q).2⟩ p
  have hA : ∀ u, A *ᵥ u = ⇑(b.repr ⟨E (∑ q, u q • e q : W), (∑ q, u q • e q : W).2⟩) := fun u => by
    have : (⟨E (∑ q, u q • e q : W), (∑ q, u q • e q : W).2⟩ : V) = ∑ q, u q • (⟨E (e q), (e q).2⟩ : V) :=
      Subtype.ext (by simp)
    rw [this]
    funext p

    simp only [A, mulVec, dotProduct, map_sum, map_smul]
    change _ = (Finsupp.applyAddHom p) (∑ q, u q • b.repr ⟨E (e q), (e q).2⟩)
    rw [map_sum]
    simp only [Finsupp.applyAddHom_apply, Finsupp.smul_apply, smul_eq_mul]
    exact Finset.sum_congr rfl fun q _ => mul_comm _ _
  have hinj : ∀ u u' : Fin (Module.finrank k W) → k, (∑ q, u q • e q : W) = ∑ q, u' q • e q → u = u' := fun u u' h => by
    have := congrArg (fun t => ⇑(e.repr t)) h
    simpa only [e.repr_sum_self] using this
  have hcol : ∀ σ q, (∑ p, ρ' σ p q • e p : W) = ⟨_, hR σ (e q)⟩ := fun σ q => e.sum_repr _
  obtain ⟨z, hz, hz'⟩ := occ1 a R Φ hΦi w hΦ TV TH hT θ y hy c hw he B
    (fun u u' h => hinj u u' (Subtype.ext (by rw [← hB, ← hB]; exact h)))
    (fun v hv => ⟨e.repr ⟨v, (hmem v).2 hv⟩, by rw [hB, e.sum_repr]⟩) ρ'
    (fun σ => by
      ext p q
      exact (congrFun ((hB fun r => ρ' σ r q).trans (congrArg Subtype.val (hcol σ q))) p).symm)
  have hAi : Function.Injective A.mulVec := fun u u' h => hinj u u' (by
    rw [hA, hA] at h
    exact Subtype.ext (hE (congrArg Subtype.val (b.repr.injective (DFunLike.coe_injective h)))))
  have hAρ : ∀ σ, ρ σ * A = A * ρ' σ := fun σ => by
    ext p q
    have h1 := congrFun ((hst σ ⟨E (e q), (e q).2⟩).2 (hst σ _).1) p
    have h2 := congrFun (hA fun r => ρ' σ r q) p
    refine h1.symm.trans (Eq.trans ?_ h2.symm)
    congr 2
    exact Subtype.ext (by rw [hcol]; exact hg σ _)
  refine ⟨(Finset.univ.image y ∪ Finset.univ.image fun t : m × _ => B t.1 t.2) ∪ Finset.univ.image fun t : d × _ => A t.1 t.2,
    A.map (algebraMap k C) *ᵥ z, fun h0 => hz (map_injective (C := C) A hAi (by rw [h0, mulVec_zero])), fun σ hS => ?_⟩
  have h3 := hz' σ (fun p => hS _ (by simp)) fun p q => hS _ (Finset.mem_union_left _ (Finset.mem_union_right _
    (Finset.mem_image.2 ⟨(p, q), Finset.mem_univ _, rfl⟩)))
  have h4 : (A.map (algebraMap k C)).map (a σ) = A.map (algebraMap k C) := by
    ext p q; exact hS _ (Finset.mem_union_right _ (Finset.mem_image.2 ⟨(p, q), Finset.mem_univ _, rfl⟩))
  have h5 : (fun q => a σ ((A.map (algebraMap k C) *ᵥ z) q)) = A.map (algebraMap k C) *ᵥ fun q => a σ (z q) := funext fun p => by
    rw [RingHom.map_mulVec, h4]; rfl
  rw [h5, mulVec_mulVec, ← Matrix.map_mul, hAρ, Matrix.map_mul, ← mulVec_mulVec, h3, mulVec_smul]

end PositivityTheory.AutomorphicGaloisHodgeTate.G8
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.CoordsOfCommonEigenvector =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.HOpCover =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.HOpCover", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.JumpStepOf\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalProjectiveModel\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HodgePullHodgePull\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeMatrices.HodgeMat\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.CoordsOfCommonEigenvector\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry NumberField IsDedekindDomain Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.GalV GlobalTheory.HTLink GlobalTheory.HodgeCoh GlobalTheory.EtC GlobalTheory.Pst
open UpperTheory.Gal.Int.Geo

namespace PositivityTheory.AutomorphicGaloisHodgeTate.G8

def hOp {k : Type} [Field k] (H : HTower k) (g : H.Γ) (h1 : IsFinite (H.s g)) (h2 : Etale (H.s g)) (a b : ℕ) :
    hodgeH H.q a b →ₗ[k] hodgeH H.q a b :=
  hodgeTrace (s := H.q) (s' := H.s g ≫ H.q) (f := H.s g) rfl a b ∘ₗ hodgePull (s := H.q) (s' := H.s g ≫ H.q) (H.comm g) a b

theorem hOp_cover (hTr : TraceSplit) {k : Type} [Field k] (H : HTower k) (g : H.Γ) (h1 : IsFinite (H.s g)) (h2 : Etale (H.s g))
    {W : Scheme.{0}} (c : W ⟶ H.Z) [IsFinite c] [Etale c] {I : Type} [Fintype I] (σ : I → (W ⟶ H.Y g))
    (hσ : ∀ i, (σ i ≫ H.t g) ≫ H.q = c ≫ H.q) (hS : Splits (H.s g) c σ) (a b : ℕ) :
    hodgePull (s := H.q) (s' := c ≫ H.q) rfl a b ∘ₗ hOp H g h1 h2 a b = ∑ i, (1 : ℤ) • hodgePull (hσ i) a b := by
  have hσ' : ∀ i, σ i ≫ (H.s g ≫ H.q) = c ≫ H.q := fun i => by rw [← Category.assoc, hS.1 i]
  ext x
  simp only [hOp, LinearMap.comp_apply, one_smul, LinearMap.sum_apply]
  rw [hTr _ H.q (H.s g) c σ hσ' hS]
  exact Finset.sum_congr rfl fun i _ => hodgePull_comp (H.comm g) (hσ' i) (hσ i) a b x

theorem eig_bc (hBC : HodgeBC) {k k' : Type} [Field k] [Field k'] (φ : k →+* k') (H : HTower k) [IsProper H.q] (H' : HTower k')
    (ι' : H.Γ → H'.Γ) (bc : TowerBC φ H H' id ι') (h1 : ∀ g, IsFinite (H.s g)) (h2 : ∀ g, Etale (H.s g)) (θ' : H'.Γ → k')
    (a b : ℕ) (x : hodgeH H'.q a b) (hx0 : x ≠ 0) (hx : IsHEig H' θ' a b x) {I : Type} [Fintype I] [DecidableEq I]
    (c : Module.Basis I k (hodgeH H.q a b)) :
    ∃ y : I → k', y ≠ 0 ∧ ∀ g, (LinearMap.toMatrix c c (hOp H g (h1 g) (h2 g) a b)).map φ *ᵥ y = θ' (ι' g) • y := by
  obtain ⟨β, hβ1, hβ2⟩ := hBC _ _ φ
  obtain ⟨c', hc'⟩ := hβ1 H.q H'.q bc.z bc.hz a b c
  choose f1 f2 hx' using hx
  refine coords_of_common_eigenvector φ (β H.q H'.q bc.z bc.hz a b) c c' hc' _ (fun g => hOp H' (ι' g) (f1 _) (f2 _) a b) (fun g v => ?_) _ x hx0
    fun g => hx' (ι' g)
  have hp := (bc.hs g).paste_vert bc.hz
  have := h1 g; have := h2 g; have := f1 (ι' g); have := f2 (ι' g)
  have e1 := (hβ2 H.q H'.q bc.z bc.hz _ _ (bc.y g) hp (H.s g) rfl (H'.s (ι' g)) rfl (bc.hs g).w a b).2
  have e2 := (hβ2 H.q H'.q bc.z bc.hz _ _ (bc.y g) hp (H.t g) (H.comm _) (H'.t (ι' g)) (H'.comm _) (bc.ht g) a b).1
  exact (e1 _).trans (congrArg _ (e2 v))


theorem locE_of : LocEOf := by
  classical
  intro hBC hTr hOpE l _ K ιC H H' ι' bc θ θ' a hθ hN hops hcov hocc d ρ hρ
  obtain ⟨b, x, hx0, hx⟩ := hocc
  obtain ⟨F, Φ, hΦ, hj⟩ := hcov (a + b)
  obtain ⟨bV, hbV⟩ := hρ
  have h1 : ∀ g, IsFinite (H.s g) := fun g => (hN.2.2 g).choose_spec.1
  have h2 : ∀ g, Etale (H.s g) := fun g => (hN.2.2 g).choose_spec.2.1
  have : IsProper H.q := GlobalTheory.CommonModel.isProper_of_isProjOver hN.2.1
  let lof := DirectSum.lof ℚ_[l] ℤ (fun n : ℤ => HQ l (sch.obj (H.geomZ (Qbar l))) n 0) ((a + b : ℕ) : ℤ)
  let MH : H.Γ → ∀ r : Fin (a + b + 1), Matrix (Fin (F.e r)) (Fin (F.e r)) ↥K.1 := fun g r =>
    LinearMap.toMatrix (F.c r) (F.c r) (hOp H g (h1 g) (h2 g) r (a + b - r))
  have key : ∀ g, ∃ T : EtV (K := K) H.q (a + b) →ₗ[ℚ_[l]] EtV (K := K) H.q (a + b),
      (∀ v, hop l H (Qbar l) g (lof v) = lof (T v)) ∧
      (LinearMap.toMatrix F.b F.b T).map (algebraMap ℚ_[l] ℂ_[l]) * Φ = Φ * (blockDiagonal' (MH g)).map (toC K) := by
    intro g
    obtain ⟨W, c, G, _, _, act, I, _, σ, hσ, hG, hS, F', Φ', np, nt⟩ := hj g
    have := h1 g; have := h2 g; have := hG.1; have := hG.2.1
    obtain ⟨hinj, T, hT1, hT2⟩ := hOpE l K H g W c G act I σ hσ hG hS (hops g) (a + b)
    exact ⟨T, hT1, CrystallineSemistableComparison.Jump.corr_ht F F' Φ Φ' rfl hσ (fun _ => 1) np nt hinj T
      (fun r => hOp H g (h1 g) (h2 g) r (a + b - r)) (hT2.trans (Finset.sum_congr rfl fun i _ => (one_smul _ _).symm))
      fun r => hOp_cover hTr H g (h1 g) (h2 g) c σ hσ hS r (a + b - r)⟩
  choose TV hTV hint using key
  let r₀ : Fin (a + b + 1) := ⟨a, by omega⟩
  have hex : ∀ m, m = b → ∃ x : hodgeH H'.q a m, x ≠ 0 ∧ IsHEig H' θ' a m x := by rintro _ rfl; exact ⟨x, hx0, hx⟩
  obtain ⟨x', hx0', hx'⟩ := hex (a + b - a) (by omega)
  obtain ⟨y', hy0, hy'⟩ := eig_bc hBC _ H H' ι' bc h1 h2 θ' a (a + b - a) x' hx0' hx' (F.c r₀)
  let i := algebraMap ↥K.1 (Qbar l)
  have hy : ∀ g, (MH g r₀).map i *ᵥ (fun p => ιC.symm (y' p)) = θ g • fun p => ιC.symm (y' p) := fun g => funext fun p => by
    apply ιC.injective
    have := congrFun (hy' g) p
    rw [hθ] at this
    simpa [mulVec, dotProduct, MH, i] using this
  obtain ⟨Y, hY1, hY2, hY3⟩ := block_eig (fun r => (0 : Matrix (Fin (F.e r)) (Fin (F.e r)) (Qbar l))) r₀
    (fun p => ιC.symm (y' p)) 0 (by simp)
  obtain ⟨E, hE, hEc⟩ := exists_emb (L := Qbar l) F.b lof (DirectSum.of_injective _)
  obtain ⟨⟨Ψ, -, hΨ⟩, hΦ2⟩ := hΦ
  have hmm : ∀ {m n : Type} (M : Matrix m n ℚ_[l]),
      (M.map (algebraMap ℚ_[l] (Qbar l))).map (algebraMap (Qbar l) ℂ_[l]) = M.map (algebraMap ℚ_[l] ℂ_[l]) := fun M => by
    ext p q; exact (IsScalarTower.algebraMap_apply ℚ_[l] (Qbar l) ℂ_[l] (M p q)).symm
  obtain ⟨S, z, hz, hz'⟩ := occE (k := Qbar l) (C := ℂ_[l]) (Γ := ↥(GK K)) (fun σ => Formalism.Per.σC (σ : GQ l))
    (fun σ => (LinearMap.toMatrix F.b F.b (etAct H.q (a + b) σ)).map (algebraMap ℚ_[l] (Qbar l))) Φ
    (fun u v h => by
      have := congrArg (Ψ *ᵥ ·) h
      simpa only [mulVec_mulVec, hΨ, one_mulVec] using this)
    (fun σ j => chiPow (σ : GQ l) (-((j.1 : ℕ) : ℤ))) (fun σ => by rw [hmm]; exact hΦ2 σ)
    (fun g => (LinearMap.toMatrix F.b F.b (TV g)).map (algebraMap ℚ_[l] (Qbar l)))
    (fun g => blockDiagonal' fun r => (MH g r).map i)
    (fun g => by
      rw [hmm, hint g]
      congr 1
      rw [← blockDiagonal'_map _ _ (map_zero i)]
      rfl)
    θ Y (fun h0 => hy0 (funext fun p => by
      have := (hY1 p).symm.trans (congrFun h0 _)
      simpa using this))
    (fun σ => chiPow (σ : GQ l) (-(a : ℤ))) (fun σ p hp => by rw [hY2 p hp])
    (fun g => hY3 _ _ (hy g)) E hE (fun g => (hop l H (Qbar l) g).baseChange (Qbar l)) (fun g => hEc _ _ (hTV g))
    (fun σ => galV l H (Qbar l) (Qbar l) (IntermediateField.fixingSubgroupEquiv K.1 σ))
    (fun σ => hEc _ _ fun v => DirectSum.lmap_lof _ _ _) _ rfl bV _ fun σ => hbV _
  refine ⟨S, z, hz, fun σ hS => hz' σ fun t ht => ?_⟩
  exact (GlobalTheory.RingBasics.σC_coe _ t).trans (congrArg _ (hS t ht))

end PositivityTheory.AutomorphicGaloisHodgeTate.G8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.GoodCoverEigenspaces.CubeCechEquivalences.HOpCover =====

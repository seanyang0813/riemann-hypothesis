module

public import Formalism.LocalToGlobal.IndefiniteReal.CutTuples2
public import Formalism.LocalToGlobal.Divisibility.ProjLemmas
public import Formalism.LocalToGlobal.Divisibility.RowLatLemmas
public import Formalism.LocalToGlobal.Divisibility.LiftLat
public import Formalism.LocalToGlobal.IndefiniteForms.PairingConditionOfInverseMatrixIdentity
public import Formalism.LocalToGlobal.IndefiniteReal.PartsOrth
public import Formalism.LocalToGlobal.Divisibility.FramesLemmas
public import Formalism.LocalToGlobal.IndefiniteReal.CutPassage
public import Formalism.LocalToGlobal.IndefiniteReal.FaceOf3
public import Formalism.LocalToGlobal.IndefiniteReal.LiftCoordinatesInGoodPartOfDefinite
public import Formalism.LocalToGlobal.IndefiniteReal.RationalAdjoints.RatZOfTests
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit
import Formalism.LocalToGlobal.IndefiniteReal.CxLemmas
import Mathlib.RingTheory.PiTensorProduct

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.IndefiniteReal.EigSumLeComapSemi, Formalism.LocalToGlobal.IndefiniteReal.CxHecke, Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfHypotheses, Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfUnitHypotheses, Formalism.LocalToGlobal.IndefiniteReal.PrimitiveStatementsWithPassage

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.EigSumLeComapSemi =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.EigSumLeComapSemi", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.CutTuples2\npublic import Formalism.LocalToGlobal.Divisibility.ProjLemmas\npublic import Formalism.LocalToGlobal.Divisibility.RowLatLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.Divisibility.LiftLat\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.IndefR.Cx

open Formalism.DivisionValues Formalism.L2.Indef Formalism.L2.DIV Formalism.L2.Col

section Gen

variable {K : Type} [Field K] {σ : K →+* ℂ}

def cxSys {I : Type} (σ : K →+* ℂ) (C : (I → K) → Prop) : (I → ℂ) → Prop :=
  fun y => ∃ x, C x ∧ y = fun i => σ (x i)

variable {V E : Type} [AddCommGroup V] [Module K V] [AddCommGroup E] [Module ℂ E]

theorem map_pow_sub (f : V →ₛₗ[σ] E) (T : Module.End K V) (S : Module.End ℂ E)
    (h : ∀ v, f (T v) = S (f v)) (a : K) (k : ℕ) (v : V) :
    f (((T - a • 1) ^ k) v) = ((S - σ a • 1) ^ k) (f v) := by
  induction k generalizing v with
  | zero => simp
  | succ k ih =>
    rw [pow_succ, Module.End.mul_apply, ih, pow_succ, Module.End.mul_apply]
    congr 1
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply, map_sub, map_smulₛₗ, h]

theorem map_maxGen (f : V →ₛₗ[σ] E) {T : Module.End K V} {S : Module.End ℂ E}
    (h : ∀ v, f (T v) = S (f v)) {a : K} {v : V} (hv : v ∈ T.maxGenEigenspace a) :
    f v ∈ S.maxGenEigenspace (σ a) := by
  rw [Module.End.mem_maxGenEigenspace] at hv ⊢
  obtain ⟨k, hk⟩ := hv
  exact ⟨k, by rw [← map_pow_sub f T S h a k v, hk, map_zero]⟩

variable {I : Type}

theorem map_eigAt (f : V →ₛₗ[σ] E) {op : I → Module.End K V} {h : I → Module.End ℂ E}
    (hf : ∀ i v, f (op i v) = h i (f v)) {x : I → K} {v : V} (hv : v ∈ eigAt op x) :
    f v ∈ eigAt h (fun i => σ (x i)) := by
  unfold eigAt at hv ⊢
  rw [Submodule.mem_iInf] at hv ⊢
  exact fun i => map_maxGen f (hf i) (hv i)

theorem eigSum_le_comap_semi (f : V →ₛₗ[σ] E) {op : I → Module.End K V} {h : I → Module.End ℂ E}
    (hf : ∀ i v, f (op i v) = h i (f v)) (C : (I → K) → Prop) :
    eigSum op C ≤ (eigSum h (cxSys σ C)).comap f := by
  show (⨆ (x : I → K) (_ : C x), eigAt op x) ≤ _
  refine iSup₂_le fun x hx => ?_
  intro v hv
  rw [Submodule.mem_comap]
  exact eigAt_le_eigSum (op := h) ⟨x, hx, rfl⟩ (map_eigAt f hf hv)

theorem mem_eigSum_iff_map [FiniteDimensional K V] [FiniteDimensional ℂ E] (f : V →ₛₗ[σ] E)
    {op : I → Module.End K V} (hc : PairComm op) (hs : SplitOver op)
    {h : I → Module.End ℂ E} (hch : PairComm h) (hf : ∀ i v, f (op i v) = h i (f v))
    {Z : Submodule K V} (hZ : ∀ i, Z ≤ Z.comap (op i)) (hinj : ∀ z ∈ Z, f z = 0 → z = 0)
    (C : (I → K) → Prop) {v : V} (hv : v ∈ Z) :
    v ∈ eigSum op C ↔ f v ∈ eigSum h (cxSys σ C) := by
  constructor
  · intro hv'
    exact eigSum_le_comap_semi f hf C hv'
  · intro hfv
    have hpv : eigProj hc hs C v ∈ eigSum op C := eigProj_apply_mem hc hs C v
    have h2 : v - eigProj hc hs C v ∈ eigSum op (fun x => ¬ C x) := sub_eigProj_mem hc hs C v
    have hZ2 : v - eigProj hc hs C v ∈ Z := Z.sub_mem hv (eigProj_mem_of_stable hc hs C hZ hv)
    have hf1 : f (v - eigProj hc hs C v) ∈ eigSum h (cxSys σ C) := by
      rw [map_sub]
      exact Submodule.sub_mem _ hfv (eigSum_le_comap_semi f hf C hpv)
    have hf2 : f (v - eigProj hc hs C v) ∈ eigSum h (cxSys σ fun x => ¬ C x) :=
      eigSum_le_comap_semi f hf _ h2
    have hdis : Disjoint (eigSum h (cxSys σ C)) (eigSum h (cxSys σ fun x => ¬ C x)) := by
      apply disjoint_eigSum hch
      rintro y ⟨x, hx, rfl⟩ ⟨x', hx', hxx⟩
      apply hx'
      have e : x' = x := funext fun i => (σ.injective (congrFun hxx i)).symm
      rw [e]
      exact hx
    have h0 : f (v - eigProj hc hs C v) = 0 := (Submodule.disjoint_def.1 hdis) _ hf1 hf2
    have e := hinj _ hZ2 h0
    rw [sub_eq_zero] at e
    rw [e]
    exact hpv

theorem inj_of_li {ι : Type*} (b : Basis ι K V) (f : V →ₛₗ[σ] E)
    (h : LinearIndependent ℂ fun k => f (b k)) : Function.Injective f := by
  refine (injective_iff_map_eq_zero f).2 fun v hv => ?_
  have e := b.linearCombination_repr v
  rw [Finsupp.linearCombination_apply, Finsupp.sum] at e
  have h3 : ∑ i ∈ (b.repr v).support, σ (b.repr v i) • f (b i) = f v := by

    rw [← congrArg f e, map_sum]
    simp only [map_smulₛₗ]
  have hall := linearIndependent_iff'.1 h _ _ (h3.trans hv)
  have hr : b.repr v = 0 := by
    ext i
    by_contra hi
    exact hi (σ.injective ((hall i (Finsupp.mem_support_iff.2 hi)).trans (map_zero σ).symm))
  simpa using congrArg b.repr.symm hr

end Gen

variable {K : Type} [Field K] [NumberField K] [StarRing K]

namespace CxData

variable {Bs : DefBase K} {A : DefAmb Bs} (X : CxData A)

theorem theta_jR_inj (hR : X.KFormR) (t : Bs.Tup) (z : A.FR t) (hz : z ∈ X.Z t)
    (h0 : X.Θ t (X.jR t z) = 0) : z = 0 := by
  simp only [CxData.Z, Submodule.mem_comap, LinearMap.mem_range] at hz
  obtain ⟨w, hw⟩ := hz
  have h1 : X.jR t z = 0 := by
    rw [← inner_self_eq_zero (𝕜 := ℂ), ← hw, LinearMap.adjoint_inner_left, hw, h0, inner_zero_right]
  exact inj_of_li (bR (A := A) t) (X.jR t) (hR t).1 (h1.trans (map_zero _).symm)

theorem theta_jL_inj (hL : X.KFormL) (j : Bs.J) (t : Bs.Tup) (z : A.FL j t) (hz : z ∈ X.Zl j t)
    (h0 : X.θ' j t (X.jL j t z) = 0) : z = 0 := by
  simp only [CxData.Zl, Submodule.mem_comap, LinearMap.mem_range] at hz
  obtain ⟨w, hw⟩ := hz
  have h1 : X.jL j t z = 0 := by
    rw [← inner_self_eq_zero (𝕜 := ℂ), ← hw, LinearMap.adjoint_inner_left, hw, h0, inner_zero_right]
  exact inj_of_li (bL (A := A) j t) (X.jL j t) (hL j t).1 (h1.trans (map_zero _).symm)

variable {fc : DefSub A → DefFace Bs} (cr : Crd A fc) (b : Bool)

theorem iC_cpt_eq (t : Bs.Tup) (x : Fin ((lv (fc X.zs) b).dQ t) → K) :
    X.iC cr b t (cpt Bs.v0.embedding x) = X.Θ t (X.jR t (cr.toR X.zs b t x)) := by
  have hx : x = ∑ k, x k • Pi.single k (1 : K) := by
    funext i
    simp [Finset.sum_apply, Pi.single_apply]
  conv_rhs => rw [hx]

  simp only [map_sum, map_smul, map_smulₛₗ, CxData.iC, lin, Fintype.linearCombination_apply, cpt]

theorem tC_cpt_eq (j : Bs.J) (t : Bs.Tup) (x : Fin ((lv (fc X.zs) b).dZ j t) → K) :
    X.tC cr b j t (cpt Bs.v0.embedding x) = X.θ' j t (X.jL j t (cr.toL X.zs b j t x)) := by
  have hx : x = ∑ k, x k • Pi.single k (1 : K) := by
    funext i
    simp [Finset.sum_apply, Pi.single_apply]
  conv_rhs => rw [hx]

  simp only [map_sum, map_smul, map_smulₛₗ, CxData.tC, lin, Fintype.linearCombination_apply, cpt]

end CxData

section Concrete

variable {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {m : ℕ}
variable (A : FamIn K G Pl0 T m) (X : CxData A.fam.amb)

variable {A X}

theorem toF_mem_Z {B : BlockDat K G Pl0} (ℓ : Lvl K G) (Z : Submodule K B.S.Forms) (y : Fin (B.dZ ℓ Z) → K) :
    B.toF ℓ Z y ∈ Z := by
  have h1 : (B.zE ℓ Z).mulVec y ∈ B.Z0 ℓ Z := by
    rw [BlockDat.zE, subE_mulVec]
    exact Submodule.coe_mem _
  simp only [BlockDat.Z0, BlockDat.inV0, BlockDat.coord, Submodule.mem_comap, Submodule.mem_map,
    Matrix.mulVecLin_apply] at h1
  obtain ⟨w, hw, hwe⟩ := h1
  have e : B.toF ℓ Z y = w := by
    simp only [BlockDat.toF, LinearMap.coe_comp, Function.comp_apply, LinearEquiv.coe_coe,
      Matrix.mulVecLin_apply]
    rw [← hwe]
    simp
  rw [e]
  exact hw

variable (P0 : Subgroup G) (ψ0 : P0 →* Kˣ) (P1 : Subgroup G) (ψ1 : P1 →* Kˣ)
  (Dc : ∀ Zs : DefSub A.fam.amb, DefCols (A.side P1 ψ1 Zs)) (Sp : ∀ Zs : DefSub A.fam.amb, SPer (Dc Zs))
  (Zsc : DefSub A.fam.amb → IndefScale A.fam.base)

end Concrete

end Formalism.IndefR.Cx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.EigSumLeComapSemi =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.CxHecke =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.CxHecke", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteForms.PairingConditionOfInverseMatrixIdentity\npublic import Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.IndefR.Cx

open Formalism.DivisionValues Formalism.L2.Indef Formalism.L2.DIV

variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem cpt_smul (σ : K →+* ℂ) {n : ℕ} (a : K) (x : Fin n → K) : cpt σ (a • x) = σ a • cpt σ x := by
  funext i
  simp [cpt]

theorem relMat_op_key (σ : K →+* ℂ) {E : Type} [AddCommGroup E] [Module ℂ E] {D : ℕ} (f : (Fin D → ℂ) →ₗ[ℂ] E)
    (S : Module.End ℂ E) (hS : ∀ y, S (f y) ∈ LinearMap.range f) (hr : IsRat σ (relMat f (S ∘ₗ f)))
    (x : Fin D → K) :
    f (cpt σ ((kMat σ (relMat f (S ∘ₗ f))).mulVec x)) = S (f (cpt σ x)) := by
  have hsol : ∀ e ∈ LinearMap.range f, f (solve f e) = e := by
    rintro e ⟨y, rfl⟩
    have h : ∃ y', f y' = f y := ⟨y, rfl⟩
    simp only [solve, dif_pos h]
    exact h.choose_spec
  have hk : ∀ i k, σ (kOf σ (relMat f (S ∘ₗ f) i k)) = relMat f (S ∘ₗ f) i k := by
    intro i k
    obtain ⟨a, ha⟩ := hr i k
    have h : ∃ a : K, σ a = relMat f (S ∘ₗ f) i k := ⟨a, ha⟩
    simp only [kOf, dif_pos h]
    exact h.choose_spec
  have hc : cpt σ ((kMat σ (relMat f (S ∘ₗ f))).mulVec x) = (relMat f (S ∘ₗ f)).mulVec (cpt σ x) := by
    funext i

    simp only [cpt, Matrix.mulVec, dotProduct, kMat, Matrix.map_apply, map_sum, map_mul, hk]
  rw [hc]
  have hv : ∀ v : Fin D → ℂ, v = ∑ k, v k • (Pi.single k (1 : ℂ) : Fin D → ℂ) := fun v => by
    ext j
    simp [Finset.sum_apply, Pi.single_apply]
  have hcol : ∀ k, f (fun i => relMat f (S ∘ₗ f) i k) = S (f (Pi.single k 1)) := by
    intro k
    have h : (fun i => relMat f (S ∘ₗ f) i k) = solve f (S (f (Pi.single k 1))) := by
      funext i
      simp [relMat]
    rw [h, hsol _ (hS _)]
  have hM : (relMat f (S ∘ₗ f)).mulVec (cpt σ x) =
      ∑ k, (cpt σ x) k • (fun i => relMat f (S ∘ₗ f) i k) := by
    funext i
    simp only [Matrix.mulVec, dotProduct, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    exact Finset.sum_congr rfl fun k _ => mul_comm _ _

  rw [hM, map_sum]

  conv_rhs => rw [hv (cpt σ x), map_sum, map_sum]
  simp only [map_smul, hcol]

theorem eig_transport (σ : K →+* ℂ) {E : Type} [AddCommGroup E] [Module ℂ E] {D : ℕ} {H : Type}
    (f : (Fin D → ℂ) →ₗ[ℂ] E) (hf : Function.Injective f) (S : H → Module.End ℂ E)
    (hS : ∀ T y, S T (f y) ∈ LinearMap.range f) (hr : ∀ T, IsRat σ (relMat f (S T ∘ₗ f)))
    (P : Submodule ℂ E) (e : H → K)
    (hP : P ⊓ LinearMap.range f = (⨅ T, LinearMap.ker (S T - σ (e T) • LinearMap.id)) ⊓ LinearMap.range f) :
    P.comap (f.comp (cptL σ D)) =
      ⨅ T, LinearMap.ker (Matrix.toLin' (kMat σ (relMat f (S T ∘ₗ f))) - e T • LinearMap.id) := by
  have hcinj : ∀ {a b : Fin D → K}, cpt σ a = cpt σ b → a = b := fun h =>
    funext fun i => σ.injective (congrFun h i)
  have key : ∀ x, x ∈ P.comap (f.comp (cptL σ D)) ↔ f (cpt σ x) ∈ P := fun x => Iff.rfl
  ext x
  rw [key]
  simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply,
    LinearMap.id_apply, Matrix.toLin'_apply, sub_eq_zero]
  have hmem : f (cpt σ x) ∈ LinearMap.range f := LinearMap.mem_range_self f _
  constructor
  · intro hx T
    have h1 : f (cpt σ x) ∈ P ⊓ LinearMap.range f := Submodule.mem_inf.mpr ⟨hx, hmem⟩
    rw [hP] at h1
    have h2 := (Submodule.mem_iInf _).mp (Submodule.mem_inf.mp h1).1 T
    rw [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply, sub_eq_zero] at h2
    apply hcinj
    apply hf
    rw [relMat_op_key σ f (S T) (hS T) (hr T) x, cpt_smul, map_smul]
    exact h2
  · intro hx
    have h1 : f (cpt σ x) ∈ P ⊓ LinearMap.range f := by
      rw [hP]
      refine Submodule.mem_inf.mpr ⟨(Submodule.mem_iInf _).mpr fun T => ?_, hmem⟩
      rw [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply, sub_eq_zero]
      have h3 := relMat_op_key σ f (S T) (hS T) (hr T) x
      rw [hx T, cpt_smul, map_smul] at h3
      exact h3.symm
    exact (Submodule.mem_inf.mp h1).1

namespace CxData

variable {Bs : DefBase K} {A : DefAmb Bs} (X : CxData A)

structure HeckeRowsC {fc : DefSub A → DefFace Bs} (_cr : Crd A fc) (_b : Bool) (cf : ConvFace Bs) where

  hC : cf.Hk → Module.End ℂ X.EE

structure HeckeWC (_b : Bool) (cf : ConvFace Bs) where

  hC : ∀ j, cf.Hk → Module.End ℂ (X.W j)

variable {X} {fc : DefSub A → DefFace Bs} {cr : Crd A fc} {b : Bool} {cf : ConvFace Bs}

def HeckeRowsC.hEK (H : X.HeckeRowsC cr b cf) (T : cf.Hk) :
    Module.End K (Fin ((lv (fc X.zs) b).dQ Bs.μ0) → K) :=
  Matrix.toLin' (kMat Bs.v0.embedding (relMat (X.iC cr b Bs.μ0) (H.hC T ∘ₗ X.iC cr b Bs.μ0)))

def HeckeWC.hWK (H : X.HeckeWC b cf) (j : Bs.J) (T : cf.Hk) : Module.End K (Fin (X.dW b j) → K) :=
  Matrix.toLin' (kMat Bs.v0.embedding (relMat (X.w0C b j) (H.hC j T ∘ₗ X.w0C b j)))

def heckeRows_of (_h2 : X.H2 cr b) (H : X.HeckeRowsC cr b cf) : HeckeRows cf (X.data cr b) where
  hE := H.hEK

def heckeAll_of (h2 : X.H2 cr b) (_hk : X.KForm b) (_he : X.EWnorm b) (_hn : 0 < X.nP b) (H : X.HeckeRowsC cr b cf)
    (HW : X.HeckeWC b cf) : HeckeAll cf (X.data cr b) where
  toHeckeRows := heckeRows_of h2 H
  hW := HW.hWK

theorem heckeB_of (h2 : X.H2 cr false) (hk : X.KForm false) (he : X.EWnorm false) (hp : X.H4pos)
    (H : X.HeckeRowsC cr false cf) (HW : X.HeckeWC false cf) : Nonempty (HeckeAll cf (X.data cr false)) := ⟨heckeAll_of h2 hk he (hp.2.2 false) H HW⟩

theorem heckeC_of (h2 : X.H2 cr true) (H : X.HeckeRowsC cr true cf) : Nonempty (HeckeRows cf (X.data cr true)) := ⟨heckeRows_of h2 H⟩

end CxData

end Formalism.IndefR.Cx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.CxHecke =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfHypotheses =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfHypotheses", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.CutTuples2\npublic import Formalism.LocalToGlobal.Divisibility.FramesLemmas\npublic import Formalism.LocalToGlobal.IndefiniteReal.CutPassage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.IndefR.Cx

open Formalism.DivisionValues Formalism.L2.Indef Formalism.L2.DIV

variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem fnorm_gram_smul {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℂ E] {n : ℕ} (w : Fin n → E)
    (hli : LinearIndependent ℂ w) (c : ℝ) (hc : 0 < c) (y : Fin n → ℂ) :
    fnorm (frameOf ((c : ℂ) • Matrix.gram ℂ w)) y = Real.sqrt c * ‖lin w y‖ := by
  have hpd : ((c : ℂ) • Matrix.gram ℂ w).PosDef :=
    (Matrix.posDef_gram_of_linearIndependent hli).smul (Complex.zero_lt_real.mpr hc)
  have hm := (frameOfSpec n _ hpd).2
  set Y := frameOf ((c : ℂ) • Matrix.gram ℂ w) with hY
  have h0 : star y ⬝ᵥ (metOf Y).mulVec y = star (Y⁻¹.mulVec y) ⬝ᵥ Y⁻¹.mulVec y := by
    rw [metOf, ← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec, ← Matrix.star_mulVec]
  have hg : star y ⬝ᵥ (metOf Y).mulVec y = (c : ℂ) * ⟪lin w y, lin w y⟫_ℂ := by
    rw [hm, Matrix.smul_mulVec, dotProduct_smul, Matrix.star_dotProduct_gram_mulVec, smul_eq_mul]
    rfl
  have h2 : ((∑ i, ‖Y⁻¹.mulVec y i‖ ^ 2 : ℝ) : ℂ) = star (Y⁻¹.mulVec y) ⬝ᵥ Y⁻¹.mulVec y := by
    push_cast
    simp only [dotProduct, Pi.star_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Complex.star_def, Complex.conj_mul']
  have h3 : ⟪lin w y, lin w y⟫_ℂ = ((‖lin w y‖ ^ 2 : ℝ) : ℂ) := by
    rw [inner_self_eq_norm_sq_to_K]
    push_cast
    rfl
  have h1 : (∑ i, ‖Y⁻¹.mulVec y i‖ ^ 2 : ℝ) = c * ‖lin w y‖ ^ 2 := by
    have h4 : ((∑ i, ‖Y⁻¹.mulVec y i‖ ^ 2 : ℝ) : ℂ) = ((c * ‖lin w y‖ ^ 2 : ℝ) : ℂ) := by
      rw [h2, ← h0, hg, h3]
      push_cast
      ring
    exact_mod_cast h4
  unfold fnorm Formalism.HermitianLatticesTheory.cnorm
  rw [h1, Real.sqrt_mul hc.le, Real.sqrt_sq (norm_nonneg _)]

theorem cpt_single (σ : K →+* ℂ) {n : ℕ} (i : Fin n) : cpt σ (Pi.single i (1 : K)) = Pi.single i 1 := by
  funext j
  by_cases h : j = i
  · subst h
    simp [cpt]
  · simp [cpt, h]

theorem bil_expand {a D : ℕ} (Φ : (Fin a → ℂ) →ₗ[ℂ] (Fin D → ℂ) →ₗ[ℂ] ℂ) (x : Fin a → ℂ) (y : Fin D → ℂ) :
    Φ x y = ∑ i, ∑ k, x i * y k * Φ (Pi.single i (1 : ℂ)) (Pi.single k (1 : ℂ)) := by
  have hx : x = ∑ i, x i • (Pi.single i (1 : ℂ) : Fin a → ℂ) := by
    ext j
    simp [Finset.sum_apply, Pi.single_apply]
  have hy : y = ∑ k, y k • (Pi.single k (1 : ℂ) : Fin D → ℂ) := by
    ext j
    simp [Finset.sum_apply, Pi.single_apply]
  conv_lhs => rw [hx, hy]

  simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, Finset.mul_sum, mul_assoc]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun k _ => mul_left_comm _ _ _

theorem mulVec_rinv {d n : ℕ} (P : Matrix (Fin d) (Fin n) K) (h : Function.Surjective P.mulVec) (y : Fin d → K) :
    P.mulVec ((CxData.rinv P).mulVec y) = y := by
  rw [Matrix.mulVec_mulVec, CxData.rinv_spec P h, Matrix.one_mulVec]

namespace CxData

variable {Bs : DefBase K} {A : DefAmb Bs} (X : CxData A)

structure MIDat (fc : DefSub A → DefFace Bs) where

  V : X.EE →ₗ[ℂ] X.EE

  a : (fc X.zs).Dc.Mem → ℂ

  U : ∀ u, Matrix (Fin ((fc X.zs).Dc.a u)) (Fin ((fc X.zs).Dc.a u)) ℂ

  ζC : (fc X.zs).Dc.Mem → Bs.Tup → ℂ

variable {fc : DefSub A → DefFace Bs} (cr : Crd A fc) (cv : CrdV A)

def AuNZ (d : X.MIDat fc) : Prop := ∀ u, d.a u ≠ 0

def MIid (eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t) (sEE : X.EE →ₗ⋆[ℂ] (fc X.zs).Sp.HH)
    (d : X.MIDat fc) : Prop :=
  ∀ u t (φ : Fin ((fc X.zs).Dc.a u) → K) (F : Fin ((fc X.zs).Df1.nV t) → K),
    d.ζC u t * Bs.v0.embedding ((fc X.zs).Dc.Pt u t φ F) =
      d.a u * ⟪sEE (d.V (X.Θ t (X.jR t (eV t F)))), (fc X.zs).Sp.Pu u ((d.U u).mulVec (cpt Bs.v0.embedding φ))⟫_ℂ

def EVTie (eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t) : Prop :=
  (∀ t F, eV t F ∈ cv.v0R X.zs true t) ∧
    ∀ t F (x : Fin ((lv (fc X.zs) true).dQ t) → K),
      cv.hR t (cr.toR X.zs true t x) (eV t F) =
        cv.hR t (cr.toR X.zs true t x) (cr.toR X.zs true t (((fc X.zs).Df1.Pq t).mulVec F))

def SEEIso (sEE : X.EE →ₗ⋆[ℂ] (fc X.zs).Sp.HH) : Prop :=
  (∀ e ∈ X.EEl true, X.nP true * ‖sEE e‖ ^ 2 = ‖e‖ ^ 2) ∧ (∀ e ∈ X.EEl true, sEE e ∈ (fc X.zs).Sp.Rw) ∧
    Module.finrank ℂ (fc X.zs).Sp.Rw = Module.finrank ℂ (X.EEl true)

def zetaOf (d : X.MIDat fc) (u : (fc X.zs).Dc.Mem) (t : Bs.Tup) : K :=
  open Classical in if h : ∃ k : K, Bs.v0.embedding k = d.ζC u t then h.choose else 1

theorem iC_cpt' (b : Bool) (t : Bs.Tup) (x : Fin ((lv (fc X.zs) b).dQ t) → K) :
    X.iC cr b t (cpt Bs.v0.embedding x) = X.Θ t (X.jR t (cr.toR X.zs b t x)) := by
  have hx : x = ∑ k, x k • (Pi.single k (1 : K) : Fin ((lv (fc X.zs) b).dQ t) → K) := by
    ext i
    simp [Finset.sum_apply, Pi.single_apply]
  conv_rhs => rw [hx]

  simp only [iC, map_sum, map_smul, map_smulₛₗ, lin, Fintype.linearCombination_apply, cpt]

theorem theta_eV (eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t) (hJ : X.JIsoR cv)
    (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true) (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true)
    (hE : X.EVTie cr cv eV) (t : Bs.Tup) (F : Fin ((fc X.zs).Df1.nV t) → K) :
    X.Θ t (X.jR t (eV t F)) = X.Θ t (X.jR t (cr.toR X.zs true t (((fc X.zs).Df1.Pq t).mulVec F))) := by
  set q : A.FR t := cr.toR X.zs true t (((fc X.zs).Df1.Pq t).mulVec F) with hq
  have hdV : eV t F - q ∈ cv.v0R X.zs true t := sub_mem (hE.1 t F) (hC t _)
  have hdo : ∀ x, cv.hR t (cr.toR X.zs true t x) (eV t F - q) = 0 := by
    intro x; rw [map_sub, hE.2 t F x, sub_self]
  have hjV : X.jR t (eV t F - q) ∈ X.V0C cv true t := Submodule.subset_span ⟨_, hdV, rfl⟩
  have hΘE : X.Θ t (X.jR t (eV t F - q)) ∈ X.EEl true := hDn t ⟨_, hjV, rfl⟩
  have horth : ∀ e ∈ X.EEl true, ⟪e, X.Θ t (X.jR t (eV t F - q))⟫_ℂ = 0 := by
    intro e he
    rw [← LinearMap.adjoint_inner_left]
    have h1 : LinearMap.adjoint (X.Θ t) e ∈
        Submodule.span ℂ (Set.range fun x : Fin ((lv (fc X.zs) true).dQ t) → K => X.jR t (cr.toR X.zs true t x)) := by
      rw [hRL t]
      exact Submodule.mem_inf.2 ⟨LinearMap.mem_range_self _ e, hUp t (Submodule.mem_map_of_mem he)⟩
    have h2 : Submodule.span ℂ (Set.range fun x : Fin ((lv (fc X.zs) true).dQ t) → K => X.jR t (cr.toR X.zs true t x)) ≤
        (Submodule.span ℂ {X.jR t (eV t F - q)})ᗮ := by
      rw [Submodule.span_le]
      rintro _ ⟨x, rfl⟩
      rw [SetLike.mem_coe, Submodule.mem_orthogonal_singleton_iff_inner_right, inner_eq_zero_symm, hJ, hdo x, map_zero]
    have h3 := Submodule.mem_orthogonal_singleton_iff_inner_right.1 (h2 h1)
    rwa [inner_eq_zero_symm] at h3
  have h0 : X.Θ t (X.jR t (eV t F - q)) = 0 := inner_self_eq_zero.1 (horth _ hΘE)
  rw [map_sub, map_sub, sub_eq_zero] at h0
  exact h0

section Ident

variable {eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t} {sEE : X.EE →ₗ⋆[ℂ] (fc X.zs).Sp.HH} {d : X.MIDat fc}

theorem zetaOf_spec (u : (fc X.zs).Dc.Mem) (t : Bs.Tup) (h : ∃ k : K, Bs.v0.embedding k = d.ζC u t) :
    Bs.v0.embedding (X.zetaOf d u t) = d.ζC u t := by
  simp only [zetaOf, dif_pos h]
  exact h.choose_spec

theorem zetaOf_not (u : (fc X.zs).Dc.Mem) (t : Bs.Tup) (h : ¬ ∃ k : K, Bs.v0.embedding k = d.ζC u t) :
    X.zetaOf d u t = 1 := by
  simp only [zetaOf, dif_neg h]

end Ident

end CxData

end Formalism.IndefR.Cx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfHypotheses =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfUnitHypotheses =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfUnitHypotheses", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfHypotheses\npublic import Formalism.LocalToGlobal.Divisibility.RowLatLemmas\nimport Formalism.LocalToGlobal.IndefiniteReal.CutPassage\nimport Formalism.LocalToGlobal.IndefiniteReal.CxLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.IndefR.Cx

open Formalism.DivisionValues Formalism.L2.Indef Formalism.L2.DIV

variable {K : Type} [Field K] [NumberField K] [StarRing K]

namespace CxData

variable {Bs : DefBase K} {A : DefAmb Bs} (X : CxData A)

variable {fc : DefSub A → DefFace Bs} (cr : Crd A fc) (cv : CrdV A)

def MIUnit2 (d : X.MIDat fc) : Prop :=
  (∀ e ∈ X.EEl true, d.V e ∈ X.EEl true ∧ ‖d.V e‖ = ‖e‖) ∧
    (∀ u x, fnorm ((fc X.zs).Dc.Xc u Bs.v0) ((d.U u).mulVec x) = fnorm ((fc X.zs).Dc.Xc u Bs.v0) x) ∧
    ((∀ u t, d.ζC u t ≠ 0) ∧ ∀ u w (k : K), Bs.v0.embedding k = d.ζC u (X.μ w) → vw w k = 0) ∧
    ∀ u, d.ζC u Bs.μ0 = 1

def MIstar2 (eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t) (sEE : X.EE →ₗ⋆[ℂ] (fc X.zs).Sp.HH) : Prop :=
  ∃ d : X.MIDat fc, X.MIUnit2 d ∧ X.MIid eV sEE d ∧ X.AuNZ d

theorem vw_eq_zero_of_pow {k : K} {n : ℕ} (hn : 0 < n) (hk : k ^ n = 1) (w : HeightOneSpectrum (𝓞 K)) : vw w k = 0 := by
  have h1 : (n : ℤ) * vw w k = 0 := by
    unfold vw
    rw [← FractionalIdeal.count_pow]
    first
    | rw [FractionalIdeal.spanSingleton_pow]
    rw [hk, FractionalIdeal.spanSingleton_one, FractionalIdeal.count_one]
  rcases mul_eq_zero.mp h1 with h | h
  · exact absurd h (by exact_mod_cast hn.ne')
  · exact h

theorem zetaOK_of_miUnit2 {d : X.MIDat fc} (hU : X.MIUnit2 d) : X.ZetaOK (X.zetaOf d) := by
  refine ⟨fun u => ?_, fun u t => ?_, fun u w => ?_⟩
  · have h : ∃ k : K, Bs.v0.embedding k = d.ζC u Bs.μ0 := ⟨1, by rw [map_one, hU.2.2.2 u]⟩
    apply Bs.v0.embedding.injective
    rw [X.zetaOf_spec u Bs.μ0 h, hU.2.2.2 u, map_one]
  · by_cases h : ∃ k : K, Bs.v0.embedding k = d.ζC u t
    · intro h0
      have h' := X.zetaOf_spec u t h
      rw [h0, map_zero] at h'
      exact hU.2.2.1.1 u t h'.symm
    · rw [X.zetaOf_not u t h]
      exact one_ne_zero
  · by_cases h : ∃ k : K, Bs.v0.embedding k = d.ζC u (X.μ w)
    · exact hU.2.2.1.2 u w _ (X.zetaOf_spec u (X.μ w) h)
    · rw [X.zetaOf_not u (X.μ w) h]
      exact vw_eq_zero_of_pow one_pos (one_pow 1) w

section Ident2

variable {eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t} {sEE : X.EE →ₗ⋆[ℂ] (fc X.zs).Sp.HH} {d : X.MIDat fc}

theorem embedding_pairing_eq_mul_inner (hW : (fc X.zs).Df1.WF) (hJ : X.JIsoR cv) (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true)
    (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true) (hE : X.EVTie cr cv eV) (hU : X.MIUnit2 d)
    (hI : X.MIid eV sEE d) (u : (fc X.zs).Dc.Mem) (φ : Fin ((fc X.zs).Dc.a u) → K)
    (y : Fin ((lv (fc X.zs) true).dQ Bs.μ0) → K) :
    Bs.v0.embedding (X.Bdef u φ y) =
      d.a u * ⟪sEE (d.V (X.iC cr true Bs.μ0 (cpt Bs.v0.embedding y))),
        (fc X.zs).Sp.Pu u ((d.U u).mulVec (cpt Bs.v0.embedding φ))⟫_ℂ := by
  have h1 := hI u Bs.μ0 φ ((rinv ((fc X.zs).Df1.Pq Bs.μ0)).mulVec y)
  rw [hU.2.2.2 u, one_mul, X.theta_eV cr cv eV hJ hRL hDn hUp hC hE] at h1
  have h3 : ((fc X.zs).Df1.Pq Bs.μ0).mulVec ((rinv ((fc X.zs).Df1.Pq Bs.μ0)).mulVec y) = y :=
    mulVec_rinv _ (hW.Pq_surj Bs.μ0) y
  rw [h3] at h1
  rw [X.iC_cpt' cr true Bs.μ0 y]
  exact h1

theorem zetaC_mul_embedding_Pt (hW : (fc X.zs).Df1.WF) (h2 : X.H2 cr true) (hr : X.RATmu cr true) (hJ : X.JIsoR cv)
    (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true) (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true)
    (hE : X.EVTie cr cv eV) (hU : X.MIUnit2 d) (hI : X.MIid eV sEE d) (u : (fc X.zs).Dc.Mem) (t : Bs.Tup)
    (φ : Fin ((fc X.zs).Dc.a u) → K) (F : Fin ((fc X.zs).Df1.nV t) → K) :
    d.ζC u t * Bs.v0.embedding ((fc X.zs).Dc.Pt u t φ F) =
      Bs.v0.embedding (X.Bdef u φ ((X.rowMat cr true t).mulVec (((fc X.zs).Df1.Pq t).mulVec F))) := by
  rw [X.embedding_pairing_eq_mul_inner cr cv hW hJ hRL hDn hUp hC hE hU hI, hI u t φ F, X.theta_eV cr cv eV hJ hRL hDn hUp hC hE]
  have hx : X.iC cr true Bs.μ0 (cpt Bs.v0.embedding ((X.rowMat cr true t).mulVec (((fc X.zs).Df1.Pq t).mulVec F))) =
      X.Θ t (X.jR t (cr.toR X.zs true t (((fc X.zs).Df1.Pq t).mulVec F))) :=
    (X.key_row cr true h2 hr t _).trans (X.iC_cpt' cr true t _)
  rw [hx]

theorem base_tuple_vanishing_of_hypotheses (hJ : X.JIsoR cv) (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true)
    (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true) (hE : X.EVTie cr cv eV) (hU : X.MIUnit2 d)
    (hI : X.MIid eV sEE d) : X.BtVanish (fc := fc) := by
  intro u φ F hF
  have hP : ((fc X.zs).Df1.Pq Bs.μ0).mulVec F = 0 := LinearMap.mem_ker.1 hF
  have h1 := hI u Bs.μ0 φ F
  have h0 : cr.toR X.zs true Bs.μ0 (((fc X.zs).Df1.Pq Bs.μ0).mulVec F) = 0 := by
    rw [hP]; exact map_zero _
  rw [hU.2.2.2 u, one_mul, X.theta_eV cr cv eV hJ hRL hDn hUp hC hE, h0] at h1
  simp only [map_zero, inner_zero_left, mul_zero] at h1
  exact (map_eq_zero Bs.v0.embedding).1 h1

theorem matrix_identity_of_unit_hypotheses (hW : (fc X.zs).Df1.WF) (h2 : X.H2 cr true) (hr : X.RATmu cr true) (hJ : X.JIsoR cv)
    (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true) (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true)
    (hE : X.EVTie cr cv eV) (hU : X.MIUnit2 d) (hI : X.MIid eV sEE d) : X.MatrixIdentityOffBase cr (X.zetaOf d) := by
  intro u t _ φ F
  have hk := X.zetaC_mul_embedding_Pt cr cv hW h2 hr hJ hRL hDn hUp hC hE hU hI u t φ F
  by_cases h : ∃ k : K, Bs.v0.embedding k = d.ζC u t
  · apply Bs.v0.embedding.injective
    rw [map_mul, X.zetaOf_spec u t h, hk]
  · have hP : (fc X.zs).Dc.Pt u t φ F = 0 := by
      by_contra hP
      apply h
      refine ⟨X.Bdef u φ ((X.rowMat cr true t).mulVec (((fc X.zs).Df1.Pq t).mulVec F)) /
        (fc X.zs).Dc.Pt u t φ F, ?_⟩
      rw [map_div₀, ← hk, mul_div_assoc, div_self ((map_ne_zero _).2 hP), mul_one]
    rw [hP, map_zero, mul_zero] at hk
    rw [hP, mul_zero]
    exact ((map_eq_zero _).1 hk.symm).symm

theorem isometric_periods_of_unit_hypotheses (hW : (fc X.zs).Df1.WF) (hpos : X.H4pos) (h2 : X.H2 cr true) (hJ : X.JIsoR cv)
    (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true) (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true)
    (hE : X.EVTie cr cv eV) (hS : X.SEEIso sEE) (hU : X.MIUnit2 d) (hI : X.MIid eV sEE d) (hA : X.AuNZ d)
    (ζ : (fc X.zs).Dc.Mem → Bs.Tup → K) : (X.colOf cr (X.colDef ζ sEE)).L1e := by
  have hn : 0 < X.nP true := hpos.2.2 true
  have hli : LinearIndependent ℂ (fun i => X.iC cr true Bs.μ0 (Pi.single i 1)) :=
    li_of_lin_injective (by rw [lin_basis]; exact h2.1)
  have hXE : X.XE cr true Bs.v0 = frameOf (X.gramE cr true) :=
    (rowXE_spec (Df := lv (fc X.zs) true) hW _ (X.gramE_unit cr true h2 hn) X.κ hpos.1
      (fun j p v => X.lam j Bs.μ0 p v) (fun j p v => hpos.2.1 j Bs.μ0 p v)).2.1
  have hfn : ∀ y, fnorm (X.XE cr true Bs.v0) y = Real.sqrt (X.nP true)⁻¹ * ‖X.iC cr true Bs.μ0 y‖ := by
    intro y
    rw [hXE, gramE, fnorm_gram_smul _ hli _ (inv_pos.mpr hn), lin_basis]
  have hmem : ∀ y, X.iC cr true Bs.μ0 y ∈ X.EEl true := fun y => h2.2.2 ▸ LinearMap.mem_range_self _ y
  have hsn : ∀ e ∈ X.EEl true, ‖sEE e‖ = Real.sqrt (X.nP true)⁻¹ * ‖e‖ := by
    intro e he
    have h3 : ‖sEE e‖ ^ 2 = (X.nP true)⁻¹ * ‖e‖ ^ 2 := by
      rw [← hS.1 e he, ← mul_assoc, inv_mul_cancel₀ hn.ne', one_mul]
    rw [← Real.sqrt_sq (norm_nonneg (sEE e)), h3, Real.sqrt_mul (inv_pos.mpr hn).le, Real.sqrt_sq (norm_nonneg e)]
  have hex : ∀ y, ∃ y', X.iC cr true Bs.μ0 y' = d.V (X.iC cr true Bs.μ0 y) := by
    intro y
    have h4 := (hU.1 _ (hmem y)).1
    rw [← h2.2.2] at h4
    exact LinearMap.mem_range.1 h4
  choose w hw using hex
  let W : (Fin ((lv (fc X.zs) true).dQ Bs.μ0) → ℂ) →ₗ[ℂ] (Fin ((lv (fc X.zs) true).dQ Bs.μ0) → ℂ) :=
    { toFun := w
      map_add' := fun x y => h2.1 (by simp only [hw, map_add (f := _)])
      map_smul' := fun c y => h2.1 (by simp only [hw, map_smul, RingHom.id_apply]) }
  have hWy : ∀ y, (LinearMap.toMatrix' W).mulVec y = w y := fun y => LinearMap.toMatrix'_mulVec W y
  refine ⟨fun (y : Fin ((lv (fc X.zs) true).dQ Bs.μ0) → ℂ) => ?_, fun y => ?_, ?_, LinearMap.toMatrix' W,
    fun (y : Fin ((lv (fc X.zs) true).dQ Bs.μ0) → ℂ) => ?_,
    fun u => ⟨d.a u, hA u, d.U u, hU.2.1 u, fun x (y : Fin ((lv (fc X.zs) true).dQ Bs.μ0) → ℂ) => ?_⟩⟩
  · exact (hsn _ (hmem y)).trans (hfn y).symm
  · exact hS.2.1 _ (hmem y)
  · show Module.finrank ℂ (fc X.zs).Sp.Rw = (lv (fc X.zs) true).dQ Bs.μ0
    rw [hS.2.2, ← h2.2.2, LinearMap.finrank_range_of_inj h2.1, Module.finrank_fin_fun]
  · have e1 : fnorm (X.XE cr true Bs.v0) ((LinearMap.toMatrix' W).mulVec y) = fnorm (X.XE cr true Bs.v0) (w y) :=
      congrArg _ (hWy y)
    refine e1.trans ((hfn _).trans ?_)
    rw [hw, (hU.1 _ (hmem y)).2]
    exact (hfn y).symm
  · show pairC Bs.v0 (X.Bdef u) x y =
      d.a u * ⟪sEE (X.iC cr true Bs.μ0 ((LinearMap.toMatrix' W).mulVec y)), (fc X.zs).Sp.Pu u ((d.U u).mulVec x)⟫_ℂ
    rw [hWy, hw]
    let Φ : (Fin ((fc X.zs).Dc.a u) → ℂ) →ₗ[ℂ] (Fin ((lv (fc X.zs) true).dQ Bs.μ0) → ℂ) →ₗ[ℂ] ℂ :=
      LinearMap.mk₂ ℂ
        (fun x y => d.a u * ⟪sEE (d.V (X.iC cr true Bs.μ0 y)), (fc X.zs).Sp.Pu u ((d.U u).mulVec x)⟫_ℂ)
        (fun x x' y => by simp only [Matrix.mulVec_add, map_add (f := _), inner_add_right, mul_add])
        (fun c x y => by simp only [Matrix.mulVec_smul, map_smul, inner_smul_right, smul_eq_mul]; ring)
        (fun x y y' => by simp only [map_add (f := _), inner_add_left, mul_add])
        (fun c x y => by
          simp only [map_smul, LinearMap.map_smulₛₗ, inner_smul_left, smul_eq_mul, starRingEnd_self_apply]; ring)
    have hΦ : d.a u * ⟪sEE (d.V (X.iC cr true Bs.μ0 y)), (fc X.zs).Sp.Pu u ((d.U u).mulVec x)⟫_ℂ = Φ x y := rfl
    rw [hΦ, bil_expand Φ x y, pairC]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun k _ => ?_
    have hik : Φ (Pi.single i 1) (Pi.single k 1) = Bs.v0.embedding (X.Bdef u (Pi.single i 1) (Pi.single k 1)) := by
      rw [X.embedding_pairing_eq_mul_inner cr cv hW hJ hRL hDn hUp hC hE hU hI, cpt_single, cpt_single]
      rfl
    rw [hik]

end Ident2

theorem btVanish_of_miStar2 (eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t) (sEE : X.EE →ₗ⋆[ℂ] (fc X.zs).Sp.HH)
    (hW : (fc X.zs).Df1.WF) (hpos : X.H4pos) (h2 : X.H2 cr true) (hr : X.RATmu cr true) (hJ : X.JIsoR cv)
    (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true) (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true)
    (hE : X.EVTie cr cv eV) (hS : X.SEEIso sEE) (hM : X.MIstar2 eV sEE) :
    X.BtVanish (fc := fc) ∧ ∃ ζ : (fc X.zs).Dc.Mem → Bs.Tup → K, X.MatrixIdentityOffBase cr ζ ∧ X.ZetaOK ζ ∧
      (X.colOf cr (X.colDef (fun u t => (ζ u t)⁻¹) sEE)).L1e := by
  obtain ⟨d, hU, hI, hA⟩ := hM
  exact ⟨X.base_tuple_vanishing_of_hypotheses cr cv hJ hRL hDn hUp hC hE hU hI, X.zetaOf d,
    X.matrix_identity_of_unit_hypotheses cr cv hW h2 hr hJ hRL hDn hUp hC hE hU hI, X.zetaOK_of_miUnit2 hU,
    X.isometric_periods_of_unit_hypotheses cr cv hW hpos h2 hJ hRL hDn hUp hC hE hS hU hI hA _⟩

theorem exists_zeta_pairing_factors_through_periods (eV : ∀ t, (Fin ((fc X.zs).Df1.nV t) → K) →ₗ[K] A.FR t) (sEE : X.EE →ₗ⋆[ℂ] (fc X.zs).Sp.HH)
    (hW : (fc X.zs).Df1.WF) (hpos : X.H4pos) (h2 : X.H2 cr true) (hr : X.RATmu cr true) (hJ : X.JIsoR cv)
    (hRL : X.RatLev cr cv true) (hDn : X.DnLev cv true) (hUp : X.UpLev cv true) (hC : X.CoordinatesInGoodPart cr cv true)
    (hE : X.EVTie cr cv eV) (hS : X.SEEIso sEE) (hM : X.MIstar2 eV sEE) :
    ∃ ζ : (fc X.zs).Dc.Mem → Bs.Tup → K, (X.colOf cr (X.colDef (fun u t => (ζ u t)⁻¹) sEE)).PairingFactorsThroughPeriods ∧
      (X.colOf cr (X.colDef (fun u t => (ζ u t)⁻¹) sEE)).L1e := by
  obtain ⟨hBt, ζ, hMI, hZ, hL⟩ := X.btVanish_of_miStar2 cr cv eV sEE hW hpos h2 hr hJ hRL hDn hUp hC hE hS hM
  exact ⟨ζ, X.cutPairing cr ζ sEE hW h2 hBt hMI hZ, hL⟩

end CxData

end Formalism.IndefR.Cx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfUnitHypotheses =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.PrimitiveStatementsWithPassage =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.PrimitiveStatementsWithPassage", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.FaceOf3\npublic import Formalism.LocalToGlobal.IndefiniteReal.LiftCoordinatesInGoodPartOfDefinite\npublic import Formalism.LocalToGlobal.IndefiniteReal.EigSumLeComapSemi\npublic import Formalism.LocalToGlobal.IndefiniteReal.CxHecke\npublic import Formalism.LocalToGlobal.IndefiniteReal.RationalAdjoints.RatZOfTests\npublic import Formalism.LocalToGlobal.IndefiniteReal.IsometricPeriodsOfUnitHypotheses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.IndefR.Cx

open Formalism.DivisionValues Formalism.L2.Indef Formalism.L2.DIV Formalism.L2.Col

variable {K : Type} [Field K] [NumberField K] [StarRing K]
variable {G : Type} [Group G] [Fintype G] {Pl0 I0 Ty T : Type} {m : ℕ}

section Prims3

variable (A3 : FamIn3 K G Pl0 I0 Ty T m)

def cvOf3 (P0 : Subgroup G) (ψ0 : P0 →* Kˣ) (P1 : Subgroup G) (ψ1 : P1 →* Kˣ) : CrdV A3.fam3.amb3 where
  v0R _ b t := match b with
    | false => BlockGood.goodR (A3.A.fam.R t) (A3.A.fam.lvl P0 ψ0)
    | true => BlockGood.goodR (A3.A.fam.R t) (A3.A.fam.lvl P1 ψ1)
  v0L _ b j t := match b with
    | false => BlockGood.goodR (A3.A.fam.L j t) (A3.A.fam.lvlA P0 ψ0)
    | true => BlockGood.goodR (A3.A.fam.L j t) (A3.A.fam.lvlA P1 ψ1)
  hR t := CSDForm.csumForm (A3.A.fam.R t).S
  hL j t := CSDForm.csumForm (A3.A.fam.L j t).S

variable (X : CxData A3.fam3.amb3)

structure HeckeIntertwiningDefinite (hE : ∀ t, (A3.rowI t).OpIx → Module.End ℂ X.EE) : Prop where

  intw : ∀ t i (u : X.FC t), X.Θ t (X.opC t (Sum.inl i) u) = hE t i (X.Θ t u)

  comm : PairComm (hE A3.A.fam.μ0)

  parts : ∀ p : A3.fam3.base3.Ix,
    X.EEp p = eigSum (hE A3.A.fam.μ0) (cxSys A3.fam3.base3.v0.embedding ((A3.rowI A3.A.fam.μ0).HasRes3 p.1))

structure HeckeIntertwiningLifts (hW : ∀ j t, (A3.liftI j t).OpIx → Module.End ℂ (X.W j)) : Prop where

  intw : ∀ j t i (u : X.FLC j t), X.θ' j t (X.opLC j t (Sum.inl i) u) = hW j t i (X.θ' j t u)

  comm : ∀ j, PairComm (hW j A3.A.fam.μ0)

  parts : ∀ (j : Fin m) (p : A3.fam3.base3.Ix),
    X.Wp j p = eigSum (hW j A3.A.fam.μ0)
      (cxSys A3.fam3.base3.v0.embedding ((A3.liftI j A3.A.fam.μ0).HasRes3 (A3.fam3.tr3 j p.1)))

def GEquiv3 (gE : Representation ℂ G X.EE) : Prop :=
  ∀ t (g : G) (x : A3.fam3.amb3.FR t), X.Θ t (X.jR t (A3.fam3.amb3.opR t (Sum.inr g) x)) = gE g (X.Θ t (X.jR t x))

def LiftGroupEquivariance (gW : ∀ j, Representation ℂ G (X.W j)) : Prop :=
  ∀ j t (g : G) (x : A3.fam3.amb3.FL j t),
    X.θ' j t (X.jL j t (A3.fam3.amb3.opL j t (Sum.inr g) x)) = gW j g (X.θ' j t (X.jL j t x))

def typeSp3 (gE : Representation ℂ G X.EE) (P : Subgroup G) (ψ : P →* Kˣ) : Submodule ℂ X.EE :=
  ⨅ h : P, LinearMap.ker (gE (h : G) - (A3.A.fam.v0.embedding ((ψ h : Kˣ) : K)) • LinearMap.id)

def typeSubspace (j : Fin m) (gW : Representation ℂ G (X.W j)) (P : Subgroup G) (ψ : P →* Kˣ) : Submodule ℂ (X.W j) :=
  ⨅ h : P, LinearMap.ker (gW (h : G) - (A3.A.fam.v0.embedding ((ψ h : Kˣ) : K)) • LinearMap.id)

def LiftsEig3 (P : Subgroup G) (ψ : P →* Kˣ) (C : ∀ j : Fin m, ((A3.liftI j A3.A.fam.μ0).OpIx → K) → Prop) : Prop :=
  ∀ j, (A3.A.fam.L j A3.A.fam.μ0).Z0 (A3.A.fam.lvlA P ψ) (X.Zl j A3.A.fam.μ0) =
    (A3.A.fam.L j A3.A.fam.μ0).inV0 (A3.A.fam.lvlA P ψ) (eigSum (A3.liftI j A3.A.fam.μ0).opAll (C j))


variable {A3} in
def LiftsTyp3 (A3 : FamIn3 K G Pl0 I0 Ty T m) (C : ∀ j : Fin m, ((A3.liftI j A3.A.fam.μ0).OpIx → K) → Prop) : Prop :=
  ∀ j x, C j x → A3.fam3.IsType3 (A3.fam3.LI j A3.A.fam.μ0) (A3.fam3.tr3 j) x

variable {P1 : Subgroup G} {ψ1 : P1 →* Kˣ} {Dc : ∀ Zs : DefSub A3.fam3.amb3, DefCols (A3.side3 P1 ψ1 Zs)}
  {Sp : ∀ Zs : DefSub A3.fam3.amb3, SPer (Dc Zs)} {Zsc : DefSub A3.fam3.amb3 → IndefScale A3.fam3.base3}

def EEg3 : Submodule ℂ X.EE := LinearMap.range (X.iC (crdOf3 A3 ⊥ 1 P1 ψ1 Dc Sp Zsc) false A3.A.fam.μ0)

def PrincipalLevelBijectivity : Prop :=
  Function.Injective (X.iC (crdOf3 A3 ⊥ 1 P1 ψ1 Dc Sp Zsc) false A3.A.fam.μ0) ∧
    ∀ t, Function.Injective (X.iC (crdOf3 A3 ⊥ 1 P1 ψ1 Dc Sp Zsc) false t) ∧
      LinearMap.range (X.iC (crdOf3 A3 ⊥ 1 P1 ψ1 Dc Sp Zsc) false t) =
        LinearMap.range (X.iC (crdOf3 A3 ⊥ 1 P1 ψ1 Dc Sp Zsc) false A3.A.fam.μ0)

def LevType3 (gE : Representation ℂ G X.EE) (b : Bool) (P : Subgroup G) (ψ : P →* Kˣ) : Prop :=
  X.EEl b = EEg3 A3 X (P1 := P1) (ψ1 := ψ1) (Dc := Dc) (Sp := Sp) (Zsc := Zsc) ⊓ typeSp3 A3 X gE P ψ

def principalFormsSubspace (j : Fin m) : Submodule ℂ (X.W j) :=
  ⨆ t, LinearMap.range (X.tC (crdOf3 A3 ⊥ 1 P1 ψ1 Dc Sp Zsc) false j t)

def LevelTypeOfLifts (gW : ∀ j, Representation ℂ G (X.W j)) (b : Bool) (P : Subgroup G) (ψ : P →* Kˣ) : Prop :=
  ∀ j, LinearMap.range (X.w0C b j) =
    principalFormsSubspace A3 X (P1 := P1) (ψ1 := ψ1) (Dc := Dc) (Sp := Sp) (Zsc := Zsc) j ⊓ typeSubspace A3 X j (gW j) P ψ⁻¹

end Prims3

structure ComplexDataConditionsExceptBaseDecomposition (A3 : FamIn3 K G Pl0 I0 Ty T m) (P0 : Subgroup G) (ψ0 : P0 →* Kˣ) (P1 : Subgroup G) (ψ1 : P1 →* Kˣ)
    (Dc : ∀ Zs : DefSub A3.fam3.amb3, DefCols (A3.side3 P1 ψ1 Zs)) (Sp : ∀ Zs : DefSub A3.fam3.amb3, SPer (Dc Zs))
    (Zsc : DefSub A3.fam3.amb3 → IndefScale A3.fam3.base3) (X : CxData A3.fam3.amb3) (s : ℕ)
    (hE : ∀ t, (A3.rowI t).OpIx → Module.End ℂ X.EE)
    (hW : ∀ j t, (A3.liftI j t).OpIx → Module.End ℂ (X.W j)) (gE : Representation ℂ G X.EE)
    (gW : ∀ j, Representation ℂ G (X.W j)) : Prop where

  kFormR : X.KFormR

  kFormL : X.KFormL

  jIsoR : X.JIsoR (cvOf3 A3 P0 ψ0 P1 ψ1)

  jIsoL : X.JIsoL (cvOf3 A3 P0 ψ0 P1 ψ1)

  npTie : X.nP false = (Nat.card P0 : ℝ) ∧ X.nP true = (Nat.card P1 : ℝ)

  ok : A3.fam3.Ok3 s

  sep : A3.fam3.TypesSep3

  heckeR : ∀ t, (A3.A.fam.R t).OkH ∧ (A3.rowI t).InertRationalAdjoint

  heckeL : ∀ j t, (A3.A.fam.L j t).OkH ∧ (A3.liftI j t).InertRationalAdjoint

  thetaR : HeckeIntertwiningDefinite A3 X hE

  thetaL : HeckeIntertwiningLifts A3 X hW

  gUnit : ∀ (g : G) (x y : X.EE), ⟪gE g x, gE g y⟫_ℂ = ⟪x, y⟫_ℂ

  gEquiv : GEquiv3 A3 X gE

  lev0 : LevType3 A3 X (P1 := P1) (ψ1 := ψ1) (Dc := Dc) (Sp := Sp) (Zsc := Zsc) gE false P0 ψ0

  lev1 : LevType3 A3 X (P1 := P1) (ψ1 := ψ1) (Dc := Dc) (Sp := Sp) (Zsc := Zsc) gE true P1 ψ1

  h2P : PrincipalLevelBijectivity A3 X (P1 := P1) (ψ1 := ψ1) (Dc := Dc) (Sp := Sp) (Zsc := Zsc)

  gUnitL : ∀ j (g : G) (x y : X.W j), ⟪gW j g x, gW j g y⟫_ℂ = ⟪x, y⟫_ℂ

  gEquivL : LiftGroupEquivariance A3 X gW

  lower_level_lift_type : LevelTypeOfLifts A3 X (P1 := P1) (ψ1 := ψ1) (Dc := Dc) (Sp := Sp) (Zsc := Zsc) gW false P0 ψ0

  inBlock : X.zs.InBlock

  rowTest : Formalism.IndefR.Rat.RowTest X

  liftTest : Formalism.IndefR.Rat.LiftTest X

  pos : ∀ b, (lv (faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs) b).Pos

  h0 : X.H0

  h4pos : X.H4pos

  thmBop : ∀ b, X.ThmBop b

  partsE : ∀ b, X.PartsE b

  kForm : X.KForm false

  mLat : X.MLat false

  ewNorm : X.EWnorm false

  thmAop : X.ThmAop false

  partsW : X.PartsW false

  base_lift_test : Formalism.IndefR.Rat.LiftTestB X false

  galD : X.GalD (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) false

  dimParts : X.DimParts false

structure ComplexDataConditionsBaseLevel (A3 : FamIn3 K G Pl0 I0 Ty T m) (P0 : Subgroup G) (ψ0 : P0 →* Kˣ) (P1 : Subgroup G) (ψ1 : P1 →* Kˣ)
    (Dc : ∀ Zs : DefSub A3.fam3.amb3, DefCols (A3.side3 P1 ψ1 Zs)) (Sp : ∀ Zs : DefSub A3.fam3.amb3, SPer (Dc Zs))
    (Zsc : DefSub A3.fam3.amb3 → IndefScale A3.fam3.base3) (X : CxData A3.fam3.amb3) (s : ℕ)
    (C0 : ∀ j : Fin m, ((A3.liftI j A3.A.fam.μ0).OpIx → K) → Prop)
    (hE : ∀ t, (A3.rowI t).OpIx → Module.End ℂ X.EE)
    (hW : ∀ j t, (A3.liftI j t).OpIx → Module.End ℂ (X.W j)) (gE : Representation ℂ G X.EE)
    (gW : ∀ j, Representation ℂ G (X.W j)) : Prop
    extends ComplexDataConditionsExceptBaseDecomposition A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X s hE hW gE gW where

  eig0 : LiftsEig3 A3 X P0 ψ0 C0

  typ0 : LiftsTyp3 A3 C0

structure PrimitiveStatementsBaseLiftsOnly (A3 : FamIn3 K G Pl0 I0 Ty T m) (P0 : Subgroup G) (ψ0 : P0 →* Kˣ) (P1 : Subgroup G) (ψ1 : P1 →* Kˣ)
    (Dc : ∀ Zs : DefSub A3.fam3.amb3, DefCols (A3.side3 P1 ψ1 Zs)) (Sp : ∀ Zs : DefSub A3.fam3.amb3, SPer (Dc Zs))
    (Zsc : DefSub A3.fam3.amb3 → IndefScale A3.fam3.base3) (X : CxData A3.fam3.amb3) (s : ℕ)
    (C0 : ∀ j : Fin m, ((A3.liftI j A3.A.fam.μ0).OpIx → K) → Prop)
    (eV : ∀ t, (Fin ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Df1.nV t) → K) →ₗ[K] A3.fam3.amb3.FR t)
    (sEE : X.EE →ₗ⋆[ℂ] (faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Sp.HH)
    (C CH : ℝ)
    (hE : ∀ t, (A3.rowI t).OpIx → Module.End ℂ X.EE)
    (hW : ∀ j t, (A3.liftI j t).OpIx → Module.End ℂ (X.W j)) (gE : Representation ℂ G X.EE)
    (gW : ∀ j, Representation ℂ G (X.W j)) (cf : ConvFace A3.fam3.base3) : Prop
    extends ComplexDataConditionsBaseLevel A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X s C0 hE hW gE gW where

  w1 : ∀ w, X.W1 (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Z.num C CH) w → w ∈ X.Tw

  l3 : (X.data (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) false).L3 ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Z.num C CH)

  on : (X.data (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) false).ON ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Z.num C CH)

  l6 : (X.data (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) true).L6 ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Z.num C CH)

  evTie : X.EVTie (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) (cvOf3 A3 P0 ψ0 P1 ψ1) eV

  seeIso : X.SEEIso sEE

  miStar : X.MIstar2 eV sEE

  conv : IndefConv A3.fam3.base3 X.μ cf

  heckeRB : Nonempty (X.HeckeRowsC (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) false cf)

  heckeWB : Nonempty (X.HeckeWC false cf)

  heckeRC : Nonempty (X.HeckeRowsC (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) true cf)

  fun0 : (X.data (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) false).FUN ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Z.num C CH)

structure PrimitiveStatementsWithPassage (A3 : FamIn3 K G Pl0 I0 Ty T m) (P0 : Subgroup G) (ψ0 : P0 →* Kˣ) (P1 : Subgroup G) (ψ1 : P1 →* Kˣ)
    (Dc : ∀ Zs : DefSub A3.fam3.amb3, DefCols (A3.side3 P1 ψ1 Zs)) (Sp : ∀ Zs : DefSub A3.fam3.amb3, SPer (Dc Zs))
    (Zsc : DefSub A3.fam3.amb3 → IndefScale A3.fam3.base3) (X : CxData A3.fam3.amb3) (s : ℕ)
    (C0 : ∀ j : Fin m, ((A3.liftI j A3.A.fam.μ0).OpIx → K) → Prop)
    (eV : ∀ t, (Fin ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Df1.nV t) → K) →ₗ[K] A3.fam3.amb3.FR t)
    (sEE : X.EE →ₗ⋆[ℂ] (faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Sp.HH)
    (C CH : ℝ)
    (hE : ∀ t, (A3.rowI t).OpIx → Module.End ℂ X.EE)
    (hW : ∀ j t, (A3.liftI j t).OpIx → Module.End ℂ (X.W j)) (gE : Representation ℂ G X.EE)
    (gW : ∀ j, Representation ℂ G (X.W j)) (cf : ConvFace A3.fam3.base3) : Prop
    extends PrimitiveStatementsBaseLiftsOnly A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X s C0 eV sEE C CH hE hW gE gW cf where

  passage : Passage ((faceOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc X.zs).Z.num C CH)
    (X.data (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) false) (X.data (crdOf3 A3 P0 ψ0 P1 ψ1 Dc Sp Zsc) true)

end Formalism.IndefR.Cx
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.PrimitiveStatementsWithPassage =====

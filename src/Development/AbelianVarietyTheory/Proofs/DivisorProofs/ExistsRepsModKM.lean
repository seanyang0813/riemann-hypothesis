module

public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.DefiniteBound
public import Mathlib.RingTheory.SimpleRing.Principal
public import Mathlib.NumberTheory.NumberField.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGensModNsmulOfFgNumberField
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FundamentalDomainPointBound
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeModRepsCardLe
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsApprox
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open NumberField Matrix GlobalTheory.AdLat GlobalTheory.UCls ReciprocityTheory.ChartRestriction.G.FD
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.UCls.IdxK

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]

theorem fv_mem {n : ℕ} {L : Set (Fin n → E)} {t : Fin n → E} (ht : t ∈ L) : fv F t ∈ hat F L :=
  AddSubgroup.subset_closure ⟨1, fun v => one_mem _, t, ht, rfl⟩

theorem fv_add {n : ℕ} (x y : Fin n → E) : fv F (x + y) = fv F x + fv F y := by
  funext i; simp [fv, TensorProduct.tmul_add]

theorem fv_nsmul {n : ℕ} (M : ℕ) (x : Fin n → E) : fv F (M • x) = M • fv F x := by
  funext i
  exact map_nsmul (TensorProduct.mk F (IsDedekindDomain.FiniteAdeleRing (𝓞 F) F) E 1) M (x i)

theorem smul_mem_hat {n : ℕ} {L : Set (Fin n → E)} (hL : ∀ o : 𝓞 E, ∀ x ∈ L, o • x ∈ L)
    {a : IsDedekindDomain.FiniteAdeleRing (𝓞 F) F}
    (ha : ∀ v, a v ∈ IsDedekindDomain.HeightOneSpectrum.adicCompletionIntegers F v) (o : 𝓞 E)
    {z : Fin n → RA F E} (hz : z ∈ hat F L) : (a ⊗ₜ[F] (o : E)) • z ∈ hat F L := by
  induction hz using AddSubgroup.closure_induction with
  | mem z hz =>
    obtain ⟨b, hb, x, hx, rfl⟩ := hz
    refine AddSubgroup.subset_closure ⟨a * b, fun v => ?_, o • x, hL o x hx, ?_⟩
    · exact mul_mem (ha v) (hb v)
    · funext i
      simp [Algebra.TensorProduct.tmul_mul_tmul, Algebra.smul_def]
  | zero => rw [smul_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
  | neg x _ hx => rw [smul_neg]; exact neg_mem hx

end GlobalTheory.UCls.IdxK

namespace GlobalTheory.UCls.IdxK

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]

theorem cong_of_gens {n M : ℕ} {L : Set (Fin n → E)} (hL : ∀ o : 𝓞 E, ∀ x ∈ L, o • x ∈ L)
    (e : Fin n → Fin n → E)
    (he : ∀ x ∈ L, ∃ o : Fin n → 𝓞 E, ∃ y ∈ L, x = ∑ i, o i • e i + M • y)
    (g s : Matrix (Fin n) (Fin n) (RA F E))
    (hg : ∀ x ∈ hat F L, g *ᵥ x ∈ hat F L) (hs : ∀ x ∈ hat F L, s *ᵥ x ∈ hat F L)
    (hgs : ∀ i, ∃ y ∈ hat F L, g *ᵥ fv F (e i) - s *ᵥ fv F (e i) = M • y) :
    ∀ x ∈ hat F L, ∃ y ∈ hat F L, g *ᵥ x - s *ᵥ x = M • y := by
  intro x hx
  induction hx using AddSubgroup.closure_induction with
  | mem z hz =>
    obtain ⟨a, ha, x, hx, rfl⟩ := hz
    obtain ⟨o, y, hy, rfl⟩ := he x hx
    choose w hw hwe using hgs
    set u : Fin n → RA F E := fun i => a ⊗ₜ[F] y i with hu
    have huH : u ∈ hat F L := AddSubgroup.subset_closure ⟨a, ha, y, hy, rfl⟩
    have key : (fun i => a ⊗ₜ[F] (∑ j, o j • e j + M • y) i) =
        ∑ j, (a ⊗ₜ[F] (o j : E)) • fv F (e j) + M • u := by
      funext i
      simp only [Pi.add_apply, Finset.sum_apply, Pi.smul_apply, TensorProduct.tmul_add, TensorProduct.tmul_sum, hu]
      congr 1
      · refine Finset.sum_congr rfl fun j _ => ?_
        rw [smul_eq_mul, fv, Algebra.TensorProduct.tmul_mul_tmul, mul_one, Algebra.smul_def]
      · exact map_nsmul (TensorProduct.mk F (IsDedekindDomain.FiniteAdeleRing (𝓞 F) F) E a) M (y i)
    refine ⟨∑ j, (a ⊗ₜ[F] (o j : E)) • w j + (g *ᵥ u - s *ᵥ u),
      add_mem (sum_mem fun j _ => smul_mem_hat hL ha (o j) (hw j)) (sub_mem (hg u huH) (hs u huH)), ?_⟩
    rw [key, ← Matrix.sub_mulVec, Matrix.mulVec_add, Matrix.mulVec_sum, Matrix.mulVec_smul, Matrix.sub_mulVec,
      smul_add, Finset.smul_sum]
    congr 1
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [Matrix.mulVec_smul, Matrix.sub_mulVec, hwe j, smul_comm]
  | zero => exact ⟨0, zero_mem _, by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨y1, h1, e1⟩ := hx
    obtain ⟨y2, h2, e2⟩ := hy
    refine ⟨y1 + y2, add_mem h1 h2, ?_⟩
    rw [Matrix.mulVec_add, Matrix.mulVec_add, smul_add, ← e1, ← e2]
    abel
  | neg x _ hx =>
    obtain ⟨y1, h1, e1⟩ := hx
    refine ⟨-y1, neg_mem h1, ?_⟩
    rw [Matrix.mulVec_neg, Matrix.mulVec_neg, smul_neg, ← e1]
    abel

end GlobalTheory.UCls.IdxK

namespace GlobalTheory.UCls.IdxK

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E]

theorem hat_approx {n M : ℕ} (hM : 1 ≤ M) {L : Set (Fin n → E)}
    (hL : ∀ b : 𝓞 F, ∀ x ∈ L, algebraMap F E (b : F) • x ∈ L) (hL0 : (0 : Fin n → E) ∈ L)
    (hLa : ∀ x ∈ L, ∀ y ∈ L, x + y ∈ L) (hLn : ∀ x ∈ L, -x ∈ L) :
    ∀ z ∈ hat F L, ∃ t ∈ L, ∃ y ∈ hat F L, z = fv F t + M • y := by
  intro z hz
  induction hz using AddSubgroup.closure_induction with
  | mem z hz =>
    obtain ⟨a, ha, x, hx, rfl⟩ := hz
    obtain ⟨b, y, hy, e⟩ := Formalism.UG.P.integral_adele_approximation_holds F (M : 𝓞 F) (by exact_mod_cast (by omega : M ≠ 0)) a ha
    refine ⟨algebraMap F E (b : F) • x, hL b x hx, fun i => y ⊗ₜ[F] x i,
      AddSubgroup.subset_closure ⟨y, hy, x, hx, rfl⟩, ?_⟩
    funext i
    rw [e]
    simp only [fv, Pi.add_apply, Pi.smul_apply, TensorProduct.add_tmul, smul_eq_mul]
    congr 1
    · rw [show algebraMap (𝓞 F) (IsDedekindDomain.FiniteAdeleRing (𝓞 F) F) b =
          algebraMap F (IsDedekindDomain.FiniteAdeleRing (𝓞 F) F) (b : F) from rfl,
        Algebra.algebraMap_eq_smul_one, TensorProduct.smul_tmul, Algebra.smul_def]
    · rw [map_natCast, ← nsmul_eq_mul, TensorProduct.smul_tmul']
  | zero => exact ⟨0, hL0, 0, zero_mem _, by funext i; simp [fv]⟩
  | add x y _ _ hx hy =>
    obtain ⟨t1, ht1, y1, hy1, rfl⟩ := hx
    obtain ⟨t2, ht2, y2, hy2, rfl⟩ := hy
    exact ⟨t1 + t2, hLa _ ht1 _ ht2, y1 + y2, add_mem hy1 hy2, by rw [fv_add, smul_add]; abel⟩
  | neg x _ hx =>
    obtain ⟨t1, ht1, y1, hy1, rfl⟩ := hx
    refine ⟨-t1, hLn _ ht1, -y1, neg_mem hy1, ?_⟩
    rw [neg_add, smul_neg]
    congr 1
    funext i; simp [fv, TensorProduct.tmul_neg]

end GlobalTheory.UCls.IdxK

namespace GlobalTheory.UCls.IdxK

end GlobalTheory.UCls.IdxK

module

public import Formalism.SharpRestriction.CuspSpanNormBounds.PsiEDef
public import Formalism.SharpRestriction.LevelLetterCocycles.DataN
public import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
public import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
public import Formalism.LocalRingCardinality.SpanPowerMembership.Places
import Mathlib.Algebra.AffineMonoid.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
public import Mathlib.Algebra.Polynomial.SpecificDegree
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
public import Mathlib.NumberTheory.Padics.Hensel
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
public import Formalism.LocalRingCardinality.DataArith
import Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq

@[expose] public section

noncomputable section

namespace Formalism.BasicNotions.Examples₂

open NumberField IsDedekindDomain HeightOneSpectrum WithZero ValuativeRel Formalism.MainNotions.S.Loc
open scoped TensorProduct

def intSub (K A : Type) [Field K] [ValuativeRel K] [CommRing A] [Algebra K A] : Subring A :=
  (integralClosure 𝒪[K] A).toSubring

def psiTr (l : ℕ) [Fact l.Prime] (K A : Type) [Field K] [CommRing A] [Algebra K A] [Algebra ℚ_[l] K] :
    AddChar A ℂ :=
  letI := ((algebraMap K A).comp (algebraMap ℚ_[l] K)).toAlgebra
  (LocF.psi0 l).compAddMonoidHom (Algebra.trace ℚ_[l] A).toAddMonoidHom

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (sig : E →ₐ[F] E) (hsig : ∀ x, sig (sig x) = x) (h2 : Module.finrank F E = 2)
  (v : HeightOneSpectrum (𝓞 F))

theorem resChar_prime : (resChar v).Prime := by
  show (ringChar (𝓞 F ⧸ v.asIdeal)).Prime
  haveI : v.asIdeal.IsPrime := v.isPrime
  haveI : Finite (𝓞 F ⧸ v.asIdeal) := by
    first
    | exact Ideal.finiteQuotientOfFreeOfNeBot v.asIdeal v.ne_bot
  exact (CharP.char_is_prime_or_zero (𝓞 F ⧸ v.asIdeal) (ringChar (𝓞 F ⧸ v.asIdeal))).resolve_right
    (CharP.char_ne_zero_of_finite (𝓞 F ⧸ v.asIdeal) _)

theorem resChar_mem : ((resChar v : ℕ) : 𝓞 F) ∈ v.asIdeal := by
  show ((ringChar (𝓞 F ⧸ v.asIdeal) : ℕ) : 𝓞 F) ∈ v.asIdeal
  rw [← Ideal.Quotient.eq_zero_iff_mem, map_natCast]
  first
  | exact ringChar.Nat.cast_ringChar

def cjT : (v.adicCompletion F ⊗[F] E) ≃ₐ[v.adicCompletion F] (v.adicCompletion F ⊗[F] E) :=
  AlgEquiv.ofAlgHom (Algebra.TensorProduct.map (AlgHom.id _ _) sig)
    (Algebra.TensorProduct.map (AlgHom.id _ _) sig)
    (by ext x; simp [hsig]) (by ext x; simp [hsig])

def locAtC : LocAt F E sig v :=
  haveI : Fact (resChar v).Prime := ⟨resChar_prime v⟩
  letI := LocF.vrel v
  letI := (LocF.emb v (resChar v) (resChar_mem v)).toAlgebra
  letI : TopologicalSpace (v.adicCompletion F ⊗[F] E) := moduleTopology (v.adicCompletion F) _
  letI : MeasurableSpace (v.adicCompletion F ⊗[F] E) := borel _
  { Fp := v.adicCompletion F
    Ep := v.adicCompletion F ⊗[F] E
    lf := LocF.isLocalField v
    char0 := inferInstance
    ιF := algebraMap F _
    ιE := (Algebra.TensorProduct.includeRight : E →ₐ[F] v.adicCompletion F ⊗[F] E).toRingHom
    compat := fun a => by
      show (1 : v.adicCompletion F) ⊗ₜ[F] algebraMap F E a = (algebraMap F (v.adicCompletion F) a) ⊗ₜ[F] (1 : E)
      rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one a, TensorProduct.smul_tmul]
    dense := v.denseRange_algebraMap F
    val := fun x y => by
      show Valued.v (algebraMap F (v.adicCompletion F) x) ≤ Valued.v (algebraMap F (v.adicCompletion F) y) ↔ _
      have hval (a : F) : Valued.v (algebraMap F (v.adicCompletion F) a) = v.valuation F a :=
        valuedAdicCompletion_eq_valuation' v a
      rw [hval x, hval y]
    free := inferInstance
    rank := by rw [Module.finrank_baseChange, h2]
    span := by
      rw [eq_top_iff]
      rintro x -
      induction x using TensorProduct.induction_on with
      | zero => exact zero_mem _
      | add a b ha hb => exact add_mem ha hb
      | tmul a x =>
        have : a ⊗ₜ[F] x = a • ((1 : v.adicCompletion F) ⊗ₜ[F] x) := by
          rw [TensorProduct.smul_tmul', smul_eq_mul, mul_one]
        rw [this]
        exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨x, rfl⟩)
    top := ⟨rfl⟩
    borel := ⟨rfl⟩
    cj := cjT sig hsig v
    cj_ιE := fun _ => rfl
    O := intSub _ _
    O_def := fun _ => Iff.rfl
    ellPrime := ⟨resChar_prime v⟩
    qlCont := LocF.emb_cont v _ _
    qlFin := LocF.emb_finite v _ _
    psiE := psiTr (resChar v) (v.adicCompletion F) _
    psiE_def := fun _ => LocF.padicCharacter_spec _ _
    split := none }

end Gen

section HostLoc

variable {R : Ranks} (H : Host R)

theorem conjF_conjF (x : H.E) : conjF H (conjF H x) = x := by
  show H.conj (H.conj x) = x
  have hcc : R.toFrame.cc * R.toFrame.cc = 1 := by
    refine Prod.ext ?_ ?_
    · first
      | rfl
    · first
      | exact mul_one _
  have hc2 : H.conj * H.conj = 1 := by
    show H.gal.symm R.toFrame.cc * H.gal.symm R.toFrame.cc = 1
    rw [← map_mul, hcc, map_one]
  calc H.conj (H.conj x) = (H.conj * H.conj) x := rfl
    _ = x := by rw [hc2]; rfl

theorem finrank_FE : Module.finrank H.F H.E = 2 := by
  classical
  have hcc : ∀ y, conjF H (conjF H y) = y := conjF_conjF H
  have hdpos : 0 < H.d := lt_of_le_of_lt (Nat.zero_le _) H.qd_big.2
  have hb0 : H.sqd ≠ 0 := by
    intro h0
    have h1 := H.sqd_sq
    rw [h0] at h1
    have h3 : (H.d : H.E) = 0 := by linear_combination h1
    exact hdpos.ne' (by exact_mod_cast h3)
  have hb : conjF H H.sqd = -H.sqd := by
    show H.conj H.sqd = -H.sqd
    have h1 := H.gal_sqd H.conj
    have hg1 : H.gal H.conj = R.toFrame.cc := H.gal.apply_symm_apply _
    rw [hg1] at h1
    have hc : (((R.toFrame.cc.1.2 : ℤˣ) : ℤ)) = -1 := by
      first
      | rfl
    rw [h1, hc]
    simp
  have hfix : ∀ x, conjF H x = x → ∃ a, algebraMap H.F H.E a = x :=
    fun x hx => ⟨⟨x, (conj_eq_self_iff H x).1 hx⟩, rfl⟩
  have hbF : H.sqd ∉ Set.range (algebraMap H.F H.E) := by
    rintro ⟨a, ha⟩
    apply hb0
    have h1 : conjF H H.sqd = H.sqd := by rw [← ha]; exact (conjF H).commutes a
    have h2 : (2 : H.E) * H.sqd = 0 := by linear_combination hb - h1
    exact (mul_eq_zero.mp h2).resolve_left two_ne_zero
  have hmonic : (Polynomial.X ^ 2 + Polynomial.C (H.d : H.F) : Polynomial H.F).Monic := by
    first
    | exact Polynomial.monic_X_pow_add_C _ two_ne_zero
  have haeval : Polynomial.aeval H.sqd (Polynomial.X ^ 2 + Polynomial.C (H.d : H.F) : Polynomial H.F) = 0 := by
    simp [H.sqd_sq]
  have hirr : Irreducible (Polynomial.X ^ 2 + Polynomial.C (H.d : H.F) : Polynomial H.F) := by
    apply Polynomial.irreducible_of_degree_le_three_of_not_isRoot
    · rw [Polynomial.natDegree_X_pow_add_C]
      decide
    · intro a ha
      apply hbF
      have ha' : a ^ 2 + (H.d : H.F) = 0 := by simpa using ha
      have hx : (algebraMap H.F H.E a) ^ 2 + (H.d : H.E) = 0 := by
        rw [← map_pow, ← map_natCast (algebraMap H.F H.E) H.d, ← map_add (f := _), ha', map_zero]
      have hsq : (H.sqd - algebraMap H.F H.E a) * (H.sqd + algebraMap H.F H.E a) = 0 := by
        linear_combination H.sqd_sq - hx
      rcases mul_eq_zero.mp hsq with h | h
      · exact ⟨a, (sub_eq_zero.mp h).symm⟩
      · exact ⟨-a, by rw [map_neg]; linear_combination -h⟩
  have hmin : (Polynomial.X ^ 2 + Polynomial.C (H.d : H.F) : Polynomial H.F) = minpoly H.F H.sqd :=
    minpoly.eq_of_irreducible_of_monic hirr haeval hmonic
  have hint : IsIntegral H.F H.sqd := ⟨_, hmonic, haeval⟩
  have htop : IntermediateField.adjoin H.F {H.sqd} = ⊤ := by
    rw [eq_top_iff]
    intro x _
    have hA : conjF H ((x + conjF H x) / 2) = (x + conjF H x) / 2 := by
      rw [map_div₀, map_add (f := _), hcc, map_ofNat]
      ring
    have hB : conjF H ((x - conjF H x) / (2 * H.sqd)) = (x - conjF H x) / (2 * H.sqd) := by
      rw [map_div₀, map_sub, map_mul, hcc, map_ofNat, hb]
      first
      | (field_simp; ring)
    obtain ⟨a1, ha1⟩ := hfix _ hA
    obtain ⟨a2, ha2⟩ := hfix _ hB
    have hx : x = algebraMap H.F H.E a1 + algebraMap H.F H.E a2 * H.sqd := by
      rw [ha1, ha2]
      first
      | (field_simp; ring)
    rw [hx]
    exact add_mem (IntermediateField.algebraMap_mem _ a1)
      (mul_mem (IntermediateField.algebraMap_mem _ a2) (IntermediateField.mem_adjoin_simple_self H.F H.sqd))
  have hfin : Module.finrank H.F (IntermediateField.adjoin H.F {H.sqd}) = (minpoly H.F H.sqd).natDegree :=
    IntermediateField.adjoin.finrank hint
  rw [← hmin, Polynomial.natDegree_X_pow_add_C] at hfin
  rw [← hfin]
  exact ((IntermediateField.equivOfEq htop).trans IntermediateField.topEquiv).toLinearEquiv.finrank_eq.symm

end HostLoc

end Formalism.BasicNotions.Examples₂

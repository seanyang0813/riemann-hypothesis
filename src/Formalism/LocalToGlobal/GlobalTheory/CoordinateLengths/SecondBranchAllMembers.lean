module

public import Formalism.LocalToGlobal.GlobalTheory.GL6.ValuationDetBasisChange
public import Formalism.LocalToGlobal.GlobalTheory.GL6.BwAValIntegralNonneg
public import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.PowSmulLatticeLeWeightLatticeTop
public import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfCoordinatesAndCount
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocBases
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGen
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PKerAtP
public import Formalism.LocalToGlobal.HermitianForms.TiedStep
public import Formalism.SharpRestriction.GlobalSchurBounds.ProductFirstZerothParts
public import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocInd
public import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IntSpanLeRat
public import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.DuCount
public import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength
public import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.RatStab
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.UnitaryNorms.UnramT
import Formalism.LocalToGlobal.GlobalTheory.GL6.CoordMapInjective

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.ValuationDetBasisChangeZero, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchCoordinatesOfSurjectivity, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.MixedChange, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfRationality, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchAllMembers

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.ValuationDetBasisChangeZero =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.ValuationDetBasisChangeZero", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.ValuationDetBasisChange\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.BwAValIntegralNonneg\npublic import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.PowSmulLatticeLeWeightLatticeTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB.V0

open Formalism.BasicNotions NumberField Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Classical Formalism.L2.GlobalTheoryTheory.LocalLatticeBases
open scoped Matrix

variable (D : D7) (u : D.what₂.Word)

theorem residue_nat_ne_zero_level_zero (Tt : Forms0 D u) (v : (D.mem u).A.vT) (s : ℕ) (hs : ¬ (D.mem u).A.T ∣ s) :
    Tt.atT.res v (s : 𝓞 D.host.E) ≠ 0 := by
  haveI : Fact (D.mem u).A.T.Prime := ⟨(D.mem u).A.T_prime⟩
  intro h
  apply hs
  rw [map_natCast] at h
  have e : (D.mem u).A.Fv v ≃+* ZMod (D.mem u).A.T :=
    FiniteField.ringEquivOfCardEq (by rw [(D.mem u).A.card_Fv v, ZMod.card])
  have h2 : (s : ZMod (D.mem u).A.T) = 0 := by
    rw [← map_natCast e s, h, map_zero]
  exact (CharP.cast_eq_zero_iff (ZMod (D.mem u).A.T) (D.mem u).A.T s).mp h2

alias not_T_dvd_finset_prod := _root_.Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.not_dvd_prod_of_not_dvd

theorem det_basis_change_mem_prime_zero (Tt : Forms0 D u) (w : D.what₂.places.Pl) (hw : OverT D u w) (v : (D.mem u).A.vT)
    (i : ℕ) (hi : i ≤ D.R.m) (h0 : i = 0) (c : (D.mem u).C.cls i) (B B' : GL (Fin (D.R.N i)) D.host.E)
    (hB : IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B)
    (hB' : IsLocBasis (D.mem u).A.T (Lk Tt.atT i hi v c : Set _) B') :
    ∃ (S : ℕ) (x : 𝓞 D.host.E), ¬ (D.mem u).A.T ∣ S ∧ Tt.atT.res v x = 0 ∧
      (x : D.host.E) = (S : D.host.E) ^ D.R.N i *
        (((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).det := by
  set M : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E := ((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) with hMdef
  have hLk : Lk Tt.atT i hi v c ≤ Ld D u i hi c := sup_le (Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.bwL_lcInt0 D u Tt i hi h0 c) Submodule.smul_le_right
  have hone : ¬ (D.mem u).A.T ∣ 1 := (D.mem u).A.T_prime.not_dvd_one

  choose sk hsk hskL using fun k => bwD_col_loc D u w hw hB' k
  have hcolM : ∀ k a, (((B⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) *ᵥ
      (fun r => (B' : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r k)) a = M a k := by
    intro k a; rw [bwD_mulVec_col, ← Units.val_mul]
  have hco : ∀ k, ∃ s' : ℕ, ¬ (D.mem u).A.T ∣ s' ∧ ∀ a, ((s' * sk k : ℕ) : D.host.E) * M a k ∈ (algebraMap (𝓞 D.host.E) D.host.E).range := by
    intro k
    obtain ⟨s', hs', hm⟩ := (hB ((sk k : D.host.E) • fun r => (B' : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r k)).1
      ⟨1, hone, by rw [Nat.cast_one, one_smul]; exact hLk (hskL k)⟩
    refine ⟨s', hs', fun a => ?_⟩
    have := hm a
    rw [Matrix.mulVec_smul, Pi.smul_apply, smul_eq_mul, hcolM] at this
    rw [Nat.cast_mul, mul_assoc]; exact this
  choose s2 hs2 hs2m using hco
  set S : ℕ := ∏ k, s2 k * sk k with hSdef
  have hS : ¬ (D.mem u).A.T ∣ S :=
    not_T_dvd_finset_prod D u _ _ (fun k _ => by
      intro hd
      rcases (Nat.Prime.dvd_mul (D.mem u).A.T_prime).1 hd with h | h
      · exact hs2 k h
      · exact hsk k h)
  have hSM : ∀ a k, (S : D.host.E) * M a k ∈ (algebraMap (𝓞 D.host.E) D.host.E).range := by
    intro a k
    obtain ⟨q, hq⟩ : s2 k * sk k ∣ S := Finset.dvd_prod_of_mem _ (Finset.mem_univ k)
    rw [hq, Nat.cast_mul, mul_comm ((s2 k * sk k : ℕ) : D.host.E), mul_assoc]
    exact Subring.mul_mem _ ⟨(q : 𝓞 D.host.E), map_natCast _ _⟩ (hs2m k a)
  choose m hm using hSM

  choose tb htb htbL using fun a => bwD_col_loc D u w hw hB a
  set t : ℕ := ∏ a, tb a with htdef
  have ht : ¬ (D.mem u).A.T ∣ t := not_T_dvd_finset_prod D u _ _ (fun a _ => htb a)
  have hbL : ∀ a, (t : D.host.E) • (fun r => (B : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r a) ∈ (Ld D u i hi c : Set _) := by
    intro a
    obtain ⟨q, hq⟩ : tb a ∣ t := Finset.dvd_prod_of_mem _ (Finset.mem_univ a)
    have h1 := (Ld D u i hi c).smul_mem (q : 𝓞 D.host.E) (htbL a)
    have e : (q : 𝓞 D.host.E) • ((tb a : D.host.E) • fun r => (B : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r a) =
        (t : D.host.E) • fun r => (B : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r a := by
      ext r
      rw [Pi.smul_apply, Pi.smul_apply, Pi.smul_apply, smul_eq_mul, smul_eq_mul, hq, Nat.cast_mul, Algebra.smul_def,
        map_natCast]
      ring
    rw [← e]; exact h1
  set eb : Fin (D.R.N i) → ↥(Ld D u i hi c) := fun a => ⟨_, hbL a⟩ with hebdef
  set P := Tt.lv i hi h0
  set φ : Fin (D.R.N i) → (D.mem u).A.Fv v := fun a => (D.fm u).fv i v c (P.pr v c (eb a)) with hφdef

  have hexp : ∀ (z : Fin (D.R.N i) → D.host.E) (g : Fin (D.R.N i) → 𝓞 D.host.E) (s : ℕ),
      (∀ a, (algebraMap (𝓞 D.host.E) D.host.E (g a)) = (s : D.host.E) * (((B⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) *ᵥ z) a) →
      ((s * t : ℕ) : D.host.E) • z = ∑ a, (algebraMap (𝓞 D.host.E) D.host.E (g a)) • ((eb a : ↥(Ld D u i hi c)) : Fin (D.R.N i) → D.host.E) := by
    intro z g s hg
    set cz := ((B⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) *ᵥ z with hcz
    have hz : z = (B : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) *ᵥ cz := by
      rw [hcz, Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mulVec]
    ext r
    simp only [hebdef, Pi.smul_apply, smul_eq_mul, Finset.sum_apply, hg, Nat.cast_mul]
    have hzr : z r = ∑ x, (B : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r x * cz x := by
      conv_lhs => rw [hz]
      rfl
    rw [hzr, Finset.mul_sum]
    refine Finset.sum_congr rfl fun x _ => ?_
    ring
  have hprS : ∀ (z : ↥(Ld D u i hi c)) (g : Fin (D.R.N i) → 𝓞 D.host.E) (s : ℕ),
      (∀ a, (algebraMap (𝓞 D.host.E) D.host.E (g a)) = (s : D.host.E) * (((B⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) *ᵥ z.1) a) →
      Tt.atT.res v ((s * t : ℕ) : 𝓞 D.host.E) * (D.fm u).fv i v c (P.pr v c z) = ∑ a, Tt.atT.res v (g a) * φ a := by
    intro z g s hg
    have hz : ((s * t : ℕ) : 𝓞 D.host.E) • z = ∑ a, g a • eb a := by
      apply Subtype.ext
      rw [Submodule.coe_smul, Submodule.coe_sum]
      simp only [Submodule.coe_smul]
      rw [show ((s * t : ℕ) : 𝓞 D.host.E) • z.1 = ((s * t : ℕ) : D.host.E) • z.1 by
        rw [Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul]]
      rw [hexp z.1 g s hg]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [Algebra.smul_def]; rfl
    have := congrArg (fun y => (D.fm u).fv i v c (P.pr v c y)) hz

    simp only [P.pr_smul, map_smul, map_sum, smul_eq_mul] at this
    exact this

  have hφ : φ ≠ 0 := by
    intro h0
    apply (D.fm u).fv_ne i v c
    apply LinearMap.ext
    intro y
    obtain ⟨z, rfl⟩ := P.pr_surj v c y
    obtain ⟨s3, hs3, hs3m⟩ := (hB z.1).1 ⟨1, hone, by rw [Nat.cast_one, one_smul]; exact z.2⟩
    choose g hg using hs3m
    have h := hprS z g s3 (fun a => hg a)
    simp only [h0, Pi.zero_apply, mul_zero, Finset.sum_const_zero] at h
    rcases mul_eq_zero.1 h with h1 | h1
    · exact absurd h1 (residue_nat_ne_zero_level_zero D u Tt v _ (by
        intro hd
        rcases (Nat.Prime.dvd_mul (D.mem u).A.T_prime).1 hd with h | h
        · exact hs3 h
        · exact ht h))
    · rw [h1]; rfl

  have hrel : ∀ k, ∑ a, Tt.atT.res v (m a k) * φ a = 0 := by
    intro k
    have hg : ∀ a, algebraMap (𝓞 D.host.E) D.host.E ((sk k : 𝓞 D.host.E) * m a k) =
        (S : D.host.E) * (((B⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) *ᵥ
          ((sk k : D.host.E) • fun r => (B' : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) r k)) a := by
      intro a
      rw [map_mul, map_natCast, hm a k, Matrix.mulVec_smul, Pi.smul_apply, smul_eq_mul, hcolM]; ring
    have h := hprS ⟨_, hLk (hskL k)⟩ (fun a => (sk k : 𝓞 D.host.E) * m a k) S hg
    rw [((P.fv_ker v c ⟨_, hLk (hskL k)⟩).2 (hskL k)), mul_zero] at h
    simp only [map_mul, mul_assoc] at h
    rw [← Finset.mul_sum] at h
    rcases mul_eq_zero.1 h.symm with h1 | h1
    · exact absurd h1 (residue_nat_ne_zero_level_zero D u Tt v _ (hsk k))
    · exact h1

  have hdetR : (Matrix.of fun a k => Tt.atT.res v (m a k)).det = 0 := by
    refine Matrix.exists_vecMul_eq_zero_iff.1 ⟨φ, hφ, funext fun k => ?_⟩
    simp only [Matrix.vecMul, dotProduct, Matrix.of_apply, Pi.zero_apply]
    rw [← hrel k]
    exact Finset.sum_congr rfl fun a _ => mul_comm _ _
  refine ⟨S, (Matrix.of m).det, hS, ?_, ?_⟩
  · rw [RingHom.map_det]; exact hdetR
  · show algebraMap (𝓞 D.host.E) D.host.E (Matrix.of m).det = _
    rw [RingHom.map_det, RingHom.mapMatrix_apply]
    have e : (Matrix.of m).map (algebraMap (𝓞 D.host.E) D.host.E) = (S : D.host.E) • M := by
      ext a k; simp [hm a k]
    rw [e, Matrix.det_smul, Fintype.card_fin]

theorem withTop_add_neg_nonneg (a : WithTop ℤ) (e : ℤ) (h : (e : WithTop ℤ) ≤ a) : 0 ≤ a + -(e : WithTop ℤ) := by
  induction a using WithTop.recTopCoe with
  | top => simp
  | coe b =>
    have hb : e ≤ b := by exact_mod_cast h
    have key : ((b : WithTop ℤ) + -(e : WithTop ℤ)) = ((b - e : ℤ) : WithTop ℤ) := by
      first
        | rw [sub_eq_add_neg, WithTop.coe_add, WithTop.LinearOrderedAddCommGroup.coe_neg]
    rw [key]
    exact_mod_cast (show (0 : ℤ) ≤ b - e by omega)

theorem valuation_det_basis_change_zero (Tt : Forms0 D u) (hU : UnramifiedAtLevelPrimes D u Tt.atT) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (hs : (D.fm u).seenP w = true) (v : (D.mem u).A.vT)
    (i : ℕ) (hi : i ≤ D.R.m) (h0 : i = 0) (c : (D.mem u).C.cls i) (B B' : GL (Fin (D.R.N i)) D.host.E)
    (hB : IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B)
    (hB' : IsLocBasis (D.mem u).A.T (Lk Tt.atT i hi v c : Set _) B') :
    ((((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det * (((D.mem u).A.T : ℂ))⁻¹ ∈ bwA_Ow D w := by
  obtain ⟨S, x, hS, hx0, hxe⟩ := det_basis_change_mem_prime_zero D u Tt w hw v i hi h0 c B B' hB hB'
  have hv := hU w hw hs v x hx0
  set σ := D.host.sigmaOf (D.eTau ((D.fm u).tauOf w v) : D.R.GG) with hσ
  set δ := (((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).det with hδ
  have hS0 : D.what₂.places.val w (S : D.what₂.LL) = 0 :=
    bwA_val_nat_eq_zero D.what₂.places w S (by rw [hw]; exact hS)
  have hvx : D.what₂.places.val w (D.embE (σ (x : D.host.E))) = D.what₂.places.val w (D.embE (σ δ)) := by
    rw [hxe, map_mul, map_mul, map_pow, map_pow, map_natCast, map_natCast, AddValuation.map_mul, AddValuation.map_pow,
      hS0, nsmul_zero, zero_add]
  rw [hvx] at hv
  rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
  refine Subring.mem_map.2 ⟨D.embE (σ δ) * ((D.mem u).A.T : D.what₂.LL)⁻¹, ?_, ?_⟩
  · show (0 : WithTop ℤ) ≤ D.what₂.places.val w (D.embE (σ δ) * ((D.mem u).A.T : D.what₂.LL)⁻¹)
    rw [AddValuation.map_mul, AddValuation.map_inv, ← hw, D.what₂.places.val_resChar]
    exact withTop_add_neg_nonneg _ _ hv
  · rw [map_mul, map_inv₀, map_natCast, bwA_embT_eq]

theorem det_basis_change_unit_zero (Tt : Forms0 D u) (hU : UnramifiedAtLevelPrimes D u Tt.atT) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (hs : (D.fm u).seenP w = true) (v : (D.mem u).A.vT)
    (i : ℕ) (hi : i ≤ D.R.m) (h0 : i = 0) (c : (D.mem u).C.cls i) (B B' : GL (Fin (D.R.N i)) D.host.E)
    (hB : IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B)
    (hB' : IsLocBasis (D.mem u).A.T (Lk Tt.atT i hi v c : Set _) B') :
    ((((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det * (((D.mem u).A.T : ℂ))⁻¹ ∈ bwA_Ow D w ∧
    ((D.mem u).A.T : ℂ) * (((((B⁻¹ * B' : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E)).map
        (embT D ((D.fm u).tauOf w v))).det)⁻¹ ∈ bwA_Ow D w :=
  ⟨valuation_det_basis_change_zero D u Tt hU w hw hs v i hi h0 c B B' hB hB',
    (Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.basis_change_mem_elementary (D := D) (u := u) Tt w hw v ((D.fm u).tauOf w v) i hi h0 c B B' hB hB').2.2.2⟩

end Formalism.L2.GlobalTheoryTheory.LemB.V0
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.ValuationDetBasisChangeZero =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchCoordinatesOfSurjectivity =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchCoordinatesOfSurjectivity", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfCoordinatesAndCount\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.ValuationDetBasisChangeZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocBases\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGen\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PKerAtP\nimport Formalism.LocalToGlobal.UnitaryNorms.UnramT\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.LocB NumberField Classical

theorem locBases {D : D7} {u : D.what₂.Word} (A : AtTTied u) (i : ℕ) (hi : i ≤ D.R.m) (c : (D.mem u).C.cls i) :
    (∃ B : GL (Fin (D.R.N i)) D.host.E, IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B) ∧
    ∀ v, ∃ B' : GL (Fin (D.R.N i)) D.host.E, IsLocBasis (D.mem u).A.T (Lk A i hi v c : Set _) B' := by
  have : Fact (D.mem u).A.T.Prime := ⟨(D.mem u).A.T_prime⟩
  have hL := bwB_clsCrd_lat D u i hi c
  have hFull : Submodule.IsFullLattice D.host.E (clsCrd D u i hi c) :=
    { toIsLattice := hL, span_eq_top := (tld_isLat i hi c).2 }
  obtain ⟨d, hd, hle⟩ := dual_le_bnd (sigD D : D.host.E →+* D.host.E) (gramN D i hi) (bwB_gramN_det D i hi) _ hFull
  obtain ⟨d0, hd0, hle0⟩ := exists_le_bnd _ hL
  have hLd : Ld D u i hi c ≤ bnd d := hle
  have hLd_sp := dual_span (sigD D : D.host.E →+* D.host.E) (gramN D i hi) _ hL
  refine ⟨exists_isLocBasis _ _ _ (fg_of_le_bnd hd hLd) hLd_sp, fun v => exists_isLocBasis _ _ _ ?_ ?_⟩
  · refine fg_of_le_bnd (mul_ne_zero hd hd0) (sup_le (hle0.trans (bnd_mono d0 d)) ?_)
    refine (Submodule.smul_le_right.trans hLd).trans ?_
    rw [mul_comm]
    exact bnd_mono d d0
  · apply eq_top_iff.2
    rw [← hLd_sp]
    apply Submodule.span_le.2
    intro z hz
    have ht : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := by
      exact_mod_cast (D.mem u).A.T_prime.ne_zero
    have hm : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) ∈ A.Pv v := by
      show A.res v _ = 0
      rw [map_natCast, ← (D.mem u).A.card_Fv v]
      exact FiniteField.cast_card_eq_zero _
    have hz' : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z ∈ Lk A i hi v c :=
      Submodule.mem_sup_right (Submodule.smul_mem_smul hm hz)
    have h : (((D.mem u).A.T : ℕ) : 𝓞 D.host.E) • z ∈
        Submodule.span D.host.E (Lk A i hi v c : Set _) := Submodule.subset_span hz'
    have hfield : (((D.mem u).A.T : ℕ) : D.host.E) • z ∈
        Submodule.span D.host.E (Lk A i hi v c : Set _) := by
      change (algebraMap (𝓞 D.host.E) D.host.E (((D.mem u).A.T : ℕ) : 𝓞 D.host.E)) • z ∈ _
      rw [IsScalarTower.algebraMap_smul]
      exact h
    have h' := (Submodule.span D.host.E (Lk A i hi v c : Set (Fin (D.R.N i) → D.host.E))).smul_mem
      ((((D.mem u).A.T : ℕ) : D.host.E)⁻¹) hfield
    simpa [smul_smul, ht] using h'

def OntoAll (D : D7) (u : D.what₂.Word) : Prop :=
  ∀ T : Forms0 D u, admS D u → ∀ w, OverT D u w → (D.fm u).seenP w = true → ∀ v,
    0 ≤ (D.fm u).bTop ((D.fm u).tauOf w v) →
    ∀ B B' : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E,
      (∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c)) →
      (∀ c, IsLocBasis (D.mem u).A.T (Lk T.atT 0 (Nat.zero_le _) v c : Set _) (B' c)) →
      OntoAt T w v B B'

theorem second_branch_coordinates_of_surjectivity {D : D7} {u : D.what₂.Word} (h : OntoAll D u) : SecondBranchCoordinates D u := by
  intro T hA w hw hs v hb
  choose B hB using fun c => (locBases T.atT 0 (Nat.zero_le _) c).1
  choose B' hB' using fun c => (locBases T.atT 0 (Nat.zero_le _) c).2 v
  refine ⟨B, B', hB, hB', fun c => ?_, h T hA w hw hs v hb B B' hB hB'⟩
  exact V0.det_basis_change_unit_zero D u T (Formalism.L2.Host.second_unramified_condition_holds (D := D) (u := u) T.atT) w hw hs v 0 (Nat.zero_le _) rfl c
    (B c) (B' c) (hB c) (hB' c)

theorem second_branch_of_surjectivity (hO : ∀ (D : D7) (u : D.what₂.Word), OntoAll D u)
    (hd : ∀ (D : D7) (u : D.what₂.Word), Forms0 D u → admS D u → DuCount D u) :
    ∀ (D : D7) (u : D.what₂.Word), Formalism.MainNotions.RT.SecondBranchIntegralityUnderForms D u :=
  second_branch_of_coordinates_and_count (fun D u => second_branch_coordinates_of_surjectivity (hO D u)) hd

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchCoordinatesOfSurjectivity =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.MixedChange =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.MixedChange", "h": "module\n\npublic import Formalism.LocalToGlobal.HermitianForms.TiedStep\npublic import Formalism.SharpRestriction.GlobalSchurBounds.ProductFirstZerothParts\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocInd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.BwAValIntegralNonneg\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.CoordMapInjective\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Classical

variable {D : D7} {u : D.what₂.Word}

def mixF (τ₀ : D.what₂.Tau) (B B' : GL (Fin (D.R.N 0)) D.host.E) : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ :=
  fun τ => if τ = τ₀ then atInf (embT D) (B'⁻¹ : GL (Fin (D.R.N 0)) D.host.E).1 τ
    else atInf (embT D) (B⁻¹ : GL (Fin (D.R.N 0)) D.host.E).1 τ

private theorem atInf_mul' (X Y : GL (Fin (D.R.N 0)) D.host.E) (τ : D.what₂.Tau) :
    atInf (embT D) (X * Y : GL (Fin (D.R.N 0)) D.host.E).1 τ =
      atInf (embT D) X.1 τ * atInf (embT D) Y.1 τ := by
  simp only [atInf, Units.val_mul, Matrix.map_mul]

private theorem atInf_one' (τ : D.what₂.Tau) :
    atInf (embT D) (1 : GL (Fin (D.R.N 0)) D.host.E).1 τ = 1 := by
  simp only [atInf, Units.val_one]
  exact Matrix.map_one _ (map_zero _) (map_one _)

theorem mixed_change (w : D.what₂.places.Pl) (hw : OverT D u w) (τ₀ : D.what₂.Tau)
    {L L' : Set (Fin (D.R.N 0) → D.host.E)} {B B₁ B' B₁' : GL (Fin (D.R.N 0)) D.host.E}
    (hB : IsLocBasis (D.mem u).A.T L B) (hB₁ : IsLocBasis (D.mem u).A.T L B₁)
    (hB' : IsLocBasis (D.mem u).A.T L' B') (hB₁' : IsLocBasis (D.mem u).A.T L' B₁')
    (P : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ)
    (hP : P ∈ Formalism.L2.Forms.IntSpan D w ((D.fm u).lam 0)) :
    ∃ P₁ ∈ Formalism.L2.Forms.IntSpan D w ((D.fm u).lam 0), ∀ y,
      fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0)) (mixF τ₀ B B') P y =
        fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0)) (mixF τ₀ B₁ B₁') P₁ y := by
  let N : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ := fun τ =>
    if τ = τ₀ then atInf (embT D) (B'⁻¹ * B₁' : GL (Fin (D.R.N 0)) D.host.E).1 τ
    else atInf (embT D) (B⁻¹ * B₁ : GL (Fin (D.R.N 0)) D.host.E).1 τ
  let N' : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ := fun τ =>
    if τ = τ₀ then atInf (embT D) (B₁'⁻¹ * B' : GL (Fin (D.R.N 0)) D.host.E).1 τ
    else atInf (embT D) (B₁⁻¹ * B : GL (Fin (D.R.N 0)) D.host.E).1 τ
  have hmul : ∀ τ, N τ * N' τ = 1 := by
    intro τ
    by_cases hτ : τ = τ₀
    · simp only [N, N', if_pos hτ]
      rw [← atInf_mul', show B'⁻¹ * B₁' * (B₁'⁻¹ * B') = 1 by group, atInf_one']
    · simp only [N, N', if_neg hτ]
      rw [← atInf_mul', show B⁻¹ * B₁ * (B₁⁻¹ * B) = 1 by group, atInf_one']
  have hN : ∀ τ a b, N τ a b ∈ bwA_Ow D w := by
    intro τ a b
    by_cases hτ : τ = τ₀
    · simp only [N, if_pos hτ]
      exact bwG_change_mem D u w hw τ hB₁' hB' a b
    · simp only [N, if_neg hτ]
      exact bwG_change_mem D u w hw τ hB₁ hB a b
  have hN' : ∀ τ a b, N' τ a b ∈ bwA_Ow D w := by
    intro τ a b
    by_cases hτ : τ = τ₀
    · simp only [N', if_pos hτ]
      exact bwG_change_mem D u w hw τ hB' hB₁' a b
    · simp only [N', if_neg hτ]
      exact bwG_change_mem D u w hw τ hB hB₁ a b
  have hfac : mixF τ₀ B B' = fun τ => N τ * mixF τ₀ B₁ B₁' τ := by
    funext τ
    by_cases hτ : τ = τ₀
    · simp only [mixF, N, if_pos hτ]
      rw [← atInf_mul', show B'⁻¹ * B₁' * B₁'⁻¹ = B'⁻¹ by group]
    · simp only [mixF, N, if_neg hτ]
      rw [← atInf_mul', show B⁻¹ * B₁ * B₁⁻¹ = B⁻¹ by group]
  refine ⟨MvPolynomial.C (∏ τ, (N τ).det ^ shiftOf (lamT u 0) τ) * subP N P,
    bwG_intSpan_allSubP D w _ N _
      (fun τ => local_GL_stabilises_lattice D w _ _ _ (N τ) (N' τ) (hmul τ) (hN τ) (hN' τ)) P hP, fun y => ?_⟩
  rw [hfac, fnOf_mul]

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.MixedChange =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfRationality =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfRationality", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IntSpanLeRat\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchCoordinatesOfSurjectivity\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.DuCount\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.MixedChange\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Classical

variable {D : D7} {u : D.what₂.Word}

theorem onto_Bw (hRC : RatInC D u) (hRG : RatGL D u) (T : Forms0 D u) (hA : admS D u) (w : D.what₂.places.Pl)
    (hw : OverT D u w) (hs : (D.fm u).seenP w = true) (v : (D.mem u).A.vT)
    (B B' : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c))
    (hB' : ∀ c, IsLocBasis (D.mem u).A.T (Lk T.atT 0 (Nat.zero_le _) v c : Set _) (B' c)) :
    (Submodule.pi Set.univ fun c =>
      ((intSubm D w ((D.fm u).lam 0)).map
            ((Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c))).toLinearMap.restrictScalars (bwA_Ow D w))).map
          (scO (bwA_Ow D w) _ ((bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) ((D.fm u).tauOf w v)).det ^
            ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift))) ≤ ((D.fm u).Bw 0 w v).map (crdL T B w) := by
  intro y hy
  have hy' := fun c => hy c (Set.mem_univ c)
  choose q hq hqy using hy'
  choose Q hQ hQq using hq
  have hQI : ∀ c, Q c ∈ Formalism.L2.Forms.IntSpan D w ((D.fm u).lam 0) := fun c => mem_intSubm w _ _ (hQ c)
  let γ : (D.mem u).C.cls 0 → D.what₂.Tau → GL (Fin (D.R.N 0)) D.host.E := fun c τ =>
    if τ = (D.fm u).tauOf w v then (B' c)⁻¹ * B c else 1
  have hγ : ∀ c, (fun τ => atInf (Formalism.L2.Forms.embT D) ((γ c τ : GL (Fin (D.R.N 0)) D.host.E) :
      Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ) = bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) := by
    intro c
    funext τ
    simp only [γ]
    unfold bwA_N
    split_ifs
    · rfl
    · simp [atInf]
  have ho : ∀ c τ, τ ≠ (D.fm u).tauOf w v → bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) τ = 1 := by
    intro c τ h
    unfold bwA_N
    rw [if_neg h]
  have hprod : ∀ c, ∏ τ, (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) τ).det ^ shiftOf (lamT u 0) τ =
      (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) ((D.fm u).tauOf w v)).det ^
        ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift := by
    intro c
    rw [Fintype.prod_eq_single ((D.fm u).tauOf w v) (fun τ h => by rw [ho c τ h, Matrix.det_one, one_zpow]), lamT_zero]
    rfl
  have hyc : ∀ c, y c = MvPolynomial.C (∏ τ, (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) τ).det ^ shiftOf (lamT u 0) τ) *
      Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c)) (Q c) := by
    intro c
    rw [hprod c, MvPolynomial.C_mul', ← hqy c, ← hQq c]
    rfl
  have hyR : ∀ c, y c ∈ RatSpan D ((D.fm u).lam 0) := by
    intro c
    have h := hRG (γ c) (Q c) (intSpan_le_rat w _ (hQI c))
    have hpt : ∀ τ, atInf (Formalism.L2.Forms.embT D) ((γ c τ : GL (Fin (D.R.N 0)) D.host.E) :
        Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ = bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) τ :=
      fun τ => congrFun (hγ c) τ
    simp only [hpt] at h
    rw [hyc c]
    exact h
  obtain ⟨x, hx⟩ := crd_surj T hA B y fun c =>
    ⟨_, hRG (fun _ => (B c)⁻¹) _ (hyR c), hRC _ (hRG (fun _ => (B c)⁻¹) _ (hyR c)), fun z => fnOf_frame (B c) (y c) z⟩
  refine ⟨x, (T.bw0 w hw hs v x).2 fun c B₁ B₁' hB₁ hB₁' => ?_, funext fun c => crd_eq T B (hx c)⟩
  obtain ⟨P₁, hP₁, he⟩ := mixed_change w hw ((D.fm u).tauOf w v) (hB c) hB₁ (hB' c) hB₁' (Q c) (hQI c)
  refine ⟨P₁, hP₁, fun z => ?_⟩
  rw [hx c z, hyc c, ← fnOf_mul, bwA_N_mul]
  exact he _

theorem ontoAll_of (hRC : RatInC D u) (hRG : RatGL D u) : OntoAll D u :=
  fun T hA w hw hs v _ B B' hB hB' => ⟨onto_Bw hRC hRG T hA w hw hs v B B' hB hB', onto_tL hRC hRG T hA w hw B hB _⟩

theorem second_branch_of_rationality (hRC : ∀ (D : D7) (u : D.what₂.Word), RatInC D u) (hRG : ∀ (D : D7) (u : D.what₂.Word), RatGL D u) :
    ∀ (D : D7) (u : D.what₂.Word), Formalism.MainNotions.RT.SecondBranchIntegralityUnderForms D u :=
  second_branch_of_surjectivity (fun D u => ontoAll_of (hRC D u) (hRG D u)) duCount_holds

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfRationality =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchAllMembers =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchAllMembers", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.RatStab\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfRationality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.GlobalTheoryTheory.LemB

theorem second_branch_all_members : ∀ (D : Formalism.BasicNotions.D7) (u : D.what₂.Word), Formalism.MainNotions.RT.SecondBranchIntegralityUnderForms D u :=
  second_branch_of_rationality ratInC_holds ratGL_holds

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchAllMembers =====

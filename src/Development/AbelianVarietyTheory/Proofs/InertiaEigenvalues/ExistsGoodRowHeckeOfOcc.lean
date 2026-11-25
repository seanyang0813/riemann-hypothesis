module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
public import Development.AbelianVarietyTheory.Definitions.Divisors.InstCMHostS
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeEqSmulOfIsot
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeOnMemMult
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RankWeightComponentEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RowTypeHasSphericalHeckeEigensystem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SphericalHeckeScalarOnSphericalVectors
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCoordLattice
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.InvolutionSphericalHeckeAnti
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelOperatorsAtPrimeOffLevelDatum
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.TypeStar
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace GlobalTheory.EigRows

section Abstract

variable {K V ι κ : Type*} [Field K] [AddCommGroup V] [Module K V]

end Abstract

section Record

open Formalism.BasicNotions

def OccGood (D : D7) : Prop :=
  ∀ j, 1 ≤ j → j ≤ D.R.m → ∀ σ : D.what₂.FT, D.what₂.isot j σ ≠ ⊥ → D.nd.goodRow σ

theorem occGood_of_all (D : D7) (h : GoodFTAll D) : OccGood D := fun _ _ _ σ _ => h σ

end Record

section Real

open IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx
  Formalism.IndefR.RecTie GlobalTheory.Mem.R3

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
  {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
  {R : RealDat D A3.A Ks} {F : Face D A3.A} {X0 : BaseLevelRowSide D}

abbrev levW (R : RealDat D A3.A Ks) (F : Face D A3.A) (i : Fin D.R.m) : Set (GA D (Wc D i)) :=
  levS _ (R.βW i) (R.datWp i (R.levL F false (sg0 D A3.A)))

abbrev chiW (R : RealDat D A3.A Ks) (F : Face D A3.A) (i : Fin D.R.m) : GA D (Wc D i) → ℂ :=
  levChi _ (R.βW i) (R.datWp i (R.levL F false (sg0 D A3.A)))

abbrev goodW (R : RealDat D A3.A Ks) (F : Face D A3.A) (i : Fin D.R.m) :
    Submodule ℂ (Formalism.IndefR.Mult.MMap (R.MW i (sg0 D A3.A))) :=
  Formalism.IndefR.Mult.goodPart R.θ (R.MW i (sg0 D A3.A)) (levW R F i) (chiW R F i) (R.eWf i (sg0 D A3.A))

def partR (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) (σ : D.what₂.FT) :
    Submodule ℂ (Formalism.IndefR.Mult.MMap (R.MW i (sg0 D A3.A))) :=
  principalLevelFrame.isotL R.θ (Y.PW i) (R.MW i (sg0 D A3.A)) (levW R F i) (chiW R F i) (R.eWf i (sg0 D A3.A))
    (principalLevelFrame.rowRepR R.θ (Y.eFT σ))

def readW (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) :
    D.what₂.Mj ((i : ℕ) + 1) →ₗ[ℂ] Formalism.IndefR.Mult.MMap (R.MW i (sg0 D A3.A)) :=
  (R.HW i (sg0 D A3.A)).e ∘ₗ Y.mj.eW i

theorem lift_readW (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) (y : D.what₂.Mj ((i : ℕ) + 1)) :
    PiTensorProduct.lift (readW Y i y) = (Y.IL.jMj i y).1 :=
  (Y.mjRead i y).symm

theorem mem_isot_iff (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) (σ : D.what₂.FT) (y : D.what₂.Mj ((i : ℕ) + 1)) :
    y ∈ D.what₂.isot ((i : ℕ) + 1) σ ↔ readW Y i y ∈ partR Y i σ := by
  rw [Y.tied.lift.isot, Y.prtWE, ← lift_readW]
  change PiTensorProduct.lift (readW Y i y) ∈ (partR Y i σ).map
    (PiTensorProduct.lift : Formalism.IndefR.Mult.MMap (R.MW i (sg0 D A3.A)) ≃ₗ[ℂ] _).toLinearMap ↔ _
  constructor
  · intro h
    obtain ⟨a, ha, e⟩ := Submodule.mem_map.1 h
    have h' := (PiTensorProduct.lift : Formalism.IndefR.Mult.MMap (R.MW i (sg0 D A3.A)) ≃ₗ[ℂ] _).injective e
    rw [h'] at ha
    exact ha
  · intro h
    exact Submodule.mem_map_of_mem h

theorem exists_readW (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) {x : Formalism.IndefR.Mult.MMap (R.MW i (sg0 D A3.A))}
    (hx : x ∈ goodW R F i) : ∃ y, readW Y i y = x := by
  refine ⟨(Y.IL.jMj i).symm ⟨PiTensorProduct.lift x, Submodule.mem_map_of_mem hx⟩, ?_⟩
  apply (PiTensorProduct.lift : Formalism.IndefR.Mult.MMap (R.MW i (sg0 D A3.A)) ≃ₗ[ℂ] _).injective
  rw [lift_readW, LinearEquiv.apply_symm_apply]
  rfl

end Real

section RealMain

open IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx
  Formalism.IndefR.RecTie GlobalTheory.Mem.R3

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
  {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
  {R : RealDat D A3.A Ks} {F : Face D A3.A} {X0 : BaseLevelRowSide D}

end RealMain

section Spherical

open scoped TensorProduct
open IsDedekindDomain NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Mult
open GlobalTheory.Hk3 (SphOp hyp)
open GlobalTheory.StdFrame (StdPsi)

variable {D : D7} {V : HSp D} {n : ℕ}

def IsSphVec (Q : principalLevelFrame.RowPsi V n) (π : Formalism.L2.NG.FinTyp D.host.E n) (P : HeightOneSpectrum (𝓞 D.host.E))
    (x : Formalism.AUTREP.GAf D.host.E n → ℂ) : Prop :=
  x ∈ π.S ∧ ∀ κ, Q.ψ κ ∈ hyp V P → Formalism.L2.NG.rt D.host.E n κ x = x

def ActsOnSph (Q : principalLevelFrame.RowPsi V n) (π : Formalism.L2.NG.FinTyp D.host.E n) (P : HeightOneSpectrum (𝓞 D.host.E)) (d : List ℤ)
    (a : ℂ) : Prop :=
  ∀ B, SphOp V P d B → ∀ x, IsSphVec Q π P x → principalLevelFrame.Hecke₃ Q B x = a • x


open Classical in
def sphEig (Q : principalLevelFrame.RowPsi V n) (π : Formalism.L2.NG.FinTyp D.host.E n) (P : HeightOneSpectrum (𝓞 D.host.E)) (d : List ℤ) : ℂ :=
  if h : ∃ a, ActsOnSph Q π P d a then h.choose else 0

open GlobalTheory.RowEig (lift_fixed rtV lift rtV_lift_psi heckeOperator_apply') in
theorem actsOnSph_sphEig {hF : D.host.F = maximalRealSubfield D.host.E} {Q : principalLevelFrame.RowPsi V n} (hQ : StdPsi hF Q)
    (π : Formalism.L2.NG.FinTyp D.host.E n) (P : HeightOneSpectrum (𝓞 D.host.E)) (d : List ℤ) :
    ActsOnSph Q π P d (sphEig Q π P d) := by
  have h : ∃ a, ActsOnSph Q π P d a := by
    by_cases hB : ∃ B, SphOp V P d B
    · obtain ⟨B, hB⟩ := hB
      obtain ⟨a, ha⟩ := GlobalTheory.SphScalar.spherical_scalar hF Q hQ π P d B hB
      refine ⟨a, fun B' hB' x hx => ?_⟩
      have hEq : principalLevelFrame.Hecke₃ Q B' x = principalLevelFrame.Hecke₃ Q B x := by
        have hx' := lift_fixed Q x (hyp V P) (fun _ hk => hk.1.1) hx.2
        have hsum := fun C hC =>
          ((GlobalTheory.SphLabelOps.label_operators V P).1 d C hC).2 (GA D V → ℂ) (rtV V) (lift Q x) hx'
        have hmem : ∀ {C}, SphOp V P d C → ∀ γ ∈ C, γ ∈ GfC V := by
          intro C hC γ hγ
          obtain ⟨e, f, ϖ, α, -, -, -, -, -, -, -, -, -, -, hcos⟩ := hC
          exact (hcos.1 γ hγ).1
        funext y
        have hy := congrFun ((hsum B' hB').trans (hsum B hB).symm) (Q.ψ y)
        simp only [Finset.sum_apply] at hy
        rw [Finset.sum_congr rfl (fun γ hγ => rtV_lift_psi Q x (hmem hB' γ hγ) y),
          Finset.sum_congr rfl (fun γ hγ => rtV_lift_psi Q x (hmem hB γ hγ) y)] at hy
        simpa only [heckeOperator_apply'] using hy
      rw [hEq]
      exact ha x hx.1 hx.2
    · exact ⟨0, fun B h => (hB ⟨B, h⟩).elim⟩
  unfold sphEig
  rw [dite_eq_left h]
  exact h.choose_spec

variable {Sp : D.what₂.Tau → SPar} {θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)} {M : DSModel V Sp}
  {J : Set (GA D V)} {χ : GA D V → ℂ} {Sb : Finset (HeightOneSpectrum (𝓞 D.host.F))}

theorem fixed_of_full {P : HeightOneSpectrum (𝓞 D.host.E)} {d : List ℤ} {B : Finset (GA D V)}
    (hB : Hecke₂ V J χ Sb P d B) {U : MMap M} (hU : U ∈ Mult θ M J χ) :
    ∀ k ∈ hyp V P, postOn M (principalLevelFrame.rtA k) U = U := by
  intro k hk
  obtain ⟨e, f, ϖ, α, -, hP, -, -, -, hJ, hχ, -⟩ := hB
  rw [GlobalTheory.SphLabelOps.hyp_eq hP] at hk
  have h1 : k ∈ J := (hJ k hk.2).2 hk.1
  apply MultilinearMap.ext
  intro v
  funext g
  show U v (g * k) = U v g
  rw [principalLevelFrame.mult_lev hU v k h1 g, hχ k h1 hk.2, one_mul]

open GlobalTheory.IsotSph (piRep piRep_coe finite_quot stabN avg avg_of_fixed avg_map avg_fixed) in
private theorem scalar_on_fixed_isot {hF : D.host.F = maximalRealSubfield D.host.E}
    {Q : principalLevelFrame.RowPsi V n} (hQ : StdPsi hF Q)
    (π : Formalism.L2.NG.FinTyp D.host.E n) {Pr : HeightOneSpectrum (𝓞 D.host.E)}
    {d : List ℤ} {B : Finset (GA D V)} {a : ℂ} (hB : Hecke₂ V J χ Sb Pr d B)
    (ha : ActsOnSph Q π Pr d a)
    (U : MMap M) (hU : U ∈ principalLevelFrame.isotIn (principalLevelFrame.actM Q M) (principalLevelFrame.Minf θ Q M) π)
    (hfix : ∀ k ∈ hyp V Pr, postOn M (principalLevelFrame.rtA k) U = U) :
    heckeOn M B U = a • U := by
  classical
  have hS : SphOp V Pr d B := by
    obtain ⟨e, f, ϖ, α, -, hPI, h1, h2, hd, hJ, -, hα, hdiv, hR, hcos⟩ := hB
    have hset : {k | k ∈ J ∧ SuppF V f k} = {k | k ∈ KsphC V ∅ ∧ SuppF V f k} := by
      ext k
      exact ⟨fun ⟨a, b⟩ => ⟨(hJ k b).1 a, b⟩, fun ⟨a, b⟩ => ⟨(hJ k b).2 a, b⟩⟩
    rw [hset] at hcos
    exact ⟨e, f, ϖ, α, fun v hv => absurd hv (Finset.notMem_empty v), hPI, h1, h2, hd,
      fun _ _ => Iff.rfl, fun _ _ _ => rfl, hα, hdiv, hR, hcos⟩
  have hBG : ∀ γ ∈ B, Q.ψ (principalLevelFrame.pre Q γ) = γ := by
    obtain ⟨e, f, ϖ, α, -, -, -, -, -, -, -, -, -, -, hc⟩ := hB
    intro γ hγ
    obtain ⟨h, hh⟩ := Q.onto γ (hc.1 γ hγ).1
    have hex : ∃ x, Q.ψ x = γ := ⟨h, hh⟩
    unfold principalLevelFrame.pre
    rw [dite_eq_left hex]
    exact hex.choose_spec
  have hOn : ∀ T : MMap M, heckeOn M B T = ∑ γ ∈ B, principalLevelFrame.actM Q M (principalLevelFrame.pre Q γ) T := by
    intro T
    apply MultilinearMap.ext
    intro v
    funext g
    rw [sum_apply, Finset.sum_apply]
    show ∑ γ ∈ B, T v (g * γ) = _
    refine Finset.sum_congr rfl fun γ hγ => ?_
    rw [principalLevelFrame.actM_apply, hBG γ hγ]
  have hΦ : ∀ Φ : π.S →ₗ[ℂ] MMap M, principalLevelFrame.IsEqvA (principalLevelFrame.actM Q M) π Φ → ∀ x : π.S,
      (∀ κ, Q.ψ κ ∈ hyp V Pr → Formalism.L2.NG.rt D.host.E n κ (x : Formalism.AUTREP.GAf D.host.E n → ℂ) = x) →
      heckeOn M B (Φ x) = a • Φ x := by
    intro Φ hE x hx
    have h1 := ha B hS x ⟨x.2, hx⟩
    have h2 : (∑ γ ∈ B, piRep π (principalLevelFrame.pre Q γ) x) = a • x := by
      apply Subtype.ext
      rw [Submodule.coe_sum]
      simpa [principalLevelFrame.Hecke₃, principalLevelFrame.heckeG, LinearMap.sum_apply, piRep_coe] using h1

    rw [hOn, ← map_smul, ← h2, map_sum]
    exact Finset.sum_congr rfl fun γ _ => (hE _ x).symm
  let W : Submodule ℂ (MMap M) := Submodule.span ℂ {T | ∃ Φ : π.S →ₗ[ℂ] MMap M, principalLevelFrame.IsEqvA (principalLevelFrame.actM Q M) π Φ ∧ ∃ x : π.S,
      (∀ κ, Q.ψ κ ∈ hyp V Pr → Formalism.L2.NG.rt D.host.E n κ (x : Formalism.AUTREP.GAf D.host.E n → ℂ) = x) ∧ T = Φ x}
  have hWe : ∀ T ∈ W, heckeOn M B T = a • T := by
    intro T hT
    induction hT using Submodule.span_induction with
    | mem T hT =>
      obtain ⟨Φ, hE, x, hx, rfl⟩ := hT
      exact hΦ Φ hE x hx
    | zero => simp
    | add T T' _ _ h h' => rw [map_add (f := _), h, h', smul_add]
    | smul c T _ h => rw [map_smul, h, smul_comm]
  let H : Subgroup (Formalism.AUTREP.GAf D.host.E n) := Subgroup.closure {κ | Q.ψ κ ∈ hyp V Pr}
  have hH : H ≤ ReciprocityTheory.Aut.Umax D.host.E n := (Subgroup.closure_le _).2 fun κ hκ => (hQ.2 κ).2 hκ.1
  have hfixH : ∀ h ∈ H, principalLevelFrame.actM Q M h U = U := by
    intro h hh
    induction hh using Subgroup.closure_induction with
    | mem κ hκ => exact hfix _ hκ
    | one => simp
    | mul x y _ _ hx hy => rw [map_mul, mul_apply_eq_comp, hy, hx]
    | inv x _ hx =>
      conv_lhs => rw [← hx]
      rw [← mul_apply_eq_comp, ← map_mul]
      simp
  let G : ℕ → Set (MMap M) := fun N => {T | ∃ Φ : π.S →ₗ[ℂ] MMap M, principalLevelFrame.IsEqvA (principalLevelFrame.actM Q M) π Φ ∧ ∃ x : π.S,
      (∀ κ, Formalism.L2.NG.Cong D.host.E n N κ → piRep π κ x = x) ∧ T = Φ x}
  have hmono : ∀ N N' : ℕ, (∀ κ, Formalism.L2.NG.Cong D.host.E n N' κ → Formalism.L2.NG.Cong D.host.E n N κ) →
      Submodule.span ℂ (G N) ≤ Submodule.span ℂ (G N') := by
    intro N N' hc
    apply Submodule.span_mono
    rintro T ⟨Φ, hE, x, hx, rfl⟩
    exact ⟨Φ, hE, x, fun κ hκ => hx κ (hc κ hκ), rfl⟩
  let Pn : Submodule ℂ (MMap M) :=
    { carrier := {T | ∃ N, 0 < N ∧ T ∈ Submodule.span ℂ (G N)}
      add_mem' := by
        rintro T T' ⟨N, hN, h⟩ ⟨N', hN', h'⟩
        exact ⟨N * N', Nat.mul_pos hN hN', add_mem (hmono _ _ (fun κ => Formalism.L2.NG.Cong.of_mul_left _ _) h)
          (hmono _ _ (fun κ => Formalism.L2.NG.Cong.of_mul_right _ _) h')⟩
      zero_mem' := ⟨1, one_pos, zero_mem _⟩
      smul_mem' := by
        rintro c T ⟨N, hN, h⟩
        exact ⟨N, hN, Submodule.smul_mem _ c h⟩ }
  have hle : principalLevelFrame.isotIn (principalLevelFrame.actM Q M) (principalLevelFrame.Minf θ Q M) π ≤ Pn := by
    unfold principalLevelFrame.isotIn
    refine iSup₂_le fun Φ hE => ?_
    rintro _ ⟨x, rfl⟩
    obtain ⟨N, hN, hx⟩ := π.smooth x x.2
    exact ⟨N, hN, Submodule.subset_span ⟨Φ, hE.1, x, fun κ hκ => Subtype.ext (hx κ hκ), rfl⟩⟩
  obtain ⟨N, hN, hUN⟩ := hle hU
  have hfinq := finite_quot H hH hN (stabN π H N) (fun s hs x hx => hx _ hs)
  let quotientFintype : Fintype (H ⧸ stabN π H N) := Fintype.ofFinite _
  let ρ1 : H →* Module.End ℂ π.S := (piRep π).comp H.subtype
  let ρ2 : H →* Module.End ℂ (MMap M) := (principalLevelFrame.actM Q M).comp H.subtype
  have hAU : avg (stabN π H N) ρ2 U = U := avg_of_fixed _ ρ2 fun k => hfixH k k.2
  have hAW : ∀ T ∈ Submodule.span ℂ (G N), avg (stabN π H N) ρ2 T ∈ W := by
    intro T hT
    induction hT using Submodule.span_induction with
    | mem T hT =>
      obtain ⟨Φ, hE, x, hx, rfl⟩ := hT
      rw [← avg_map (stabN π H N) ρ1 ρ2 Φ (fun g b => hE g b)]
      refine Submodule.subset_span ⟨Φ, hE, avg (stabN π H N) ρ1 x, fun κ hκ => ?_, rfl⟩
      have hf := avg_fixed (stabN π H N) ρ1 (x := x) (fun s hs => hs x hx) ⟨κ, Subgroup.subset_closure hκ⟩
      exact congrArg Subtype.val hf
    | zero => simp
    | add T T' _ _ h h' => rw [map_add]; exact add_mem h h'
    | smul c T _ h => rw [map_smul]; exact Submodule.smul_mem _ c h
  have := hWe _ (hAW U hUN)
  rwa [hAU] at this

theorem isotL_le_partFull {hF : D.host.F = maximalRealSubfield D.host.E} {Q : principalLevelFrame.RowPsi V n} (hQ : StdPsi hF Q)
    (e : (GA D V → ℂ) →ₗ[ℂ] (GA D V → ℂ)) (π : Formalism.L2.NG.FinTyp D.host.E n) :
    principalLevelFrame.isotL θ Q M J χ e π ≤ partFull θ M J χ Sb (sphEig Q π) := by
  intro U hU
  have hM : U ∈ Mult θ M J χ := hU.1.1
  refine Submodule.mem_inf.2 ⟨hM, ?_⟩
  simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply, sub_eq_zero]
  intro P d B hB
  exact scalar_on_fixed_isot hQ π hB (actsOnSph_sphEig hQ π P d) U hU.2 (fixed_of_full hB hM)

theorem exists_sphVec {hF : D.host.F = maximalRealSubfield D.host.E} {Q : principalLevelFrame.RowPsi V n} (hQ : StdPsi hF Q)
    {e : (GA D V → ℂ) →ₗ[ℂ] (GA D V → ℂ)} {π : Formalism.L2.NG.FinTyp D.host.E n} (h : principalLevelFrame.isotL θ Q M J χ e π ≠ ⊥)
    {P : HeightOneSpectrum (𝓞 D.host.E)} {d : List ℤ} {B : Finset (GA D V)} (hB : Hecke₂ V J χ Sb P d B) :
    ∃ x, IsSphVec Q π P x ∧ x ≠ 0 := by
  by_contra hn
  push Not at hn
  obtain ⟨U, hU, h0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot h
  have key : ∀ a : ℂ, heckeOn M B U = a • U := fun a =>
    scalar_on_fixed_isot hQ π hB
      (fun B' hB' x hx => by rw [hn x hx, map_zero, smul_zero]) U hU.2 (fixed_of_full hB hU.1.1)
  exact h0 (by rw [← one_smul ℂ U, ← key 1, key 0, zero_smul])

theorem heckeOn_of_mem_partFull {c : HeightOneSpectrum (𝓞 D.host.E) → List ℤ → ℂ} {x : MMap M}
    (hx : x ∈ partFull θ M J χ Sb c) {P : HeightOneSpectrum (𝓞 D.host.E)} {d : List ℤ} {B : Finset (GA D V)}
    (h : Hecke₂ V J χ Sb P d B) : heckeOn M B x = c P d • x := by
  have := (Submodule.mem_inf.1 hx).2
  simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply,
    sub_eq_zero] at this
  exact this P d B h

def diagLab (n k : ℕ) : List ℤ := List.replicate k 1 ++ List.replicate (n - k) 0


variable (V) in
def IsDiagOpAt (J : Set (GA D V)) (χ : GA D V → ℂ) (S : Finset (HeightOneSpectrum (𝓞 D.host.F)))
    (P : HeightOneSpectrum (𝓞 D.host.E)) (k : ℕ) (B : Finset (GA D V)) : Prop :=
  ∃ (e : AE D) (ϖ : 𝓞 D.host.E) (α : GA D V),
    OffS D S P ∧ Formalism.L2.NTheta.IsIdemAt e P ∧ ϖ ∈ P.asIdeal ∧ ϖ ∉ P.asIdeal ^ 2 ∧ k ≤ V.rank ∧
    (∀ g, SuppAt e V g → (g ∈ J ↔ g ∈ KsphC V ∅)) ∧ (∀ g ∈ J, SuppAt e V g → χ g = 1) ∧
    Formalism.L2.NTheta.IsHeckeElt V e (ϖ : D.host.E) k α ∧ (∀ γ ∈ B, SuppAt e V γ) ∧
    IsCosetRep V (locPart V J e) α B

theorem IsDiagOpAt.full {P : HeightOneSpectrum (𝓞 D.host.E)} {k : ℕ} {B : Finset (GA D V)}
    (h : IsDiagOpAt V J χ Sb P k B) : Hecke₂ V J χ Sb P (diagLab V.rank k) B := by
  obtain ⟨e, ϖ, α, hS, he, hϖ, hϖ2, hk, hJ, hχ, hα, hR, hC⟩ := h
  have h0 : (ϖ : D.host.E) ≠ 0 := fun h => hϖ2 (by
    rw [show ϖ = 0 from RingOfIntegers.coe_eq_zero_iff.1 h]; exact zero_mem _)
  have hD := (GlobalTheory.DivDual.divAt_inv_and_mul V e _ _ _ he.1.1 h0
    (GlobalTheory.SplitHeckeLabel.divAt_inv V e P he ϖ hϖ hϖ2 k hk α hα)).1
  rw [inv_inv, show dualLab (splitLab V.rank k) = diagLab V.rank k by simp [dualLab, splitLab, diagLab]] at hD
  exact ⟨e, e + cA D e, ϖ, α, hS, Or.inl ⟨he, rfl⟩, hϖ, hϖ2,
    by simp [diagLab, List.pairwise_append, List.pairwise_replicate], hJ, hχ, hα.2.1, hD, hR, hC⟩

end Spherical

section RealHecke

open IsDedekindDomain NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx
  Formalism.IndefR.RecTie GlobalTheory.Mem.R3

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
  {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
  {R : RealDat D A3.A Ks} {F : Face D A3.A} {X0 : BaseLevelRowSide D}

def typeR (Y : Read (A3 := A3) R F X0) (σ : D.what₂.FT) : Formalism.L2.NG.FinTyp D.host.E D.R.r :=
  principalLevelFrame.rowRepR R.θ (Y.eFT σ)

def rowEig (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) (σ : D.what₂.FT) (P : HeightOneSpectrum (𝓞 D.host.E)) (d : List ℤ) : ℂ :=
  sphEig (Y.PW i) (typeR Y σ) P d

theorem stdPsi_PW (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) : GlobalTheory.StdFrame.StdPsi Y.hF (Y.PW i) := Y.stdPsi.2 i

theorem partR_le_partFull (Y : Read (A3 := A3) R F X0) (Sb : Finset (HeightOneSpectrum (𝓞 D.host.F))) (i : Fin D.R.m)
    (σ : D.what₂.FT) :
    partR Y i σ ≤ Mult.partFull R.θ (R.MW i (sg0 D A3.A)) (levW R F i) (chiW R F i) Sb (rowEig Y i σ) :=
  isotL_le_partFull (stdPsi_PW Y i) _ _

theorem readW_injective (Y : Read (A3 := A3) R F X0) (i : Fin D.R.m) : Function.Injective (readW Y i) := fun y y' h =>
  (Y.IL.jMj i).injective (Subtype.ext (by rw [← lift_readW, ← lift_readW, h]))

theorem partR_ne_bot (Y : Read (A3 := A3) R F X0) {i : Fin D.R.m} {σ : D.what₂.FT} (h : D.what₂.isot ((i : ℕ) + 1) σ ≠ ⊥) :
    partR Y i σ ≠ ⊥ := by
  obtain ⟨y, hy, h0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot h
  intro e
  have := (mem_isot_iff Y i σ y).1 hy
  rw [e, Submodule.mem_bot] at this
  exact h0 (readW_injective Y i (this.trans (map_zero _).symm))

abbrev levTriv (R : RealDat D A3.A Ks) (i : Fin D.R.m) : Subgroup (GA D (Wc D i)) :=
  levG (Wc D i) (R.βW i) (R.datWp i R.triv)

alias rank_Wc := _root_.Formalism.IndefR.FWT.rank_Wc

theorem exists_local (hL : R.toLevCh.Is A3.A.μ0) (i : Fin D.R.m) {P : HeightOneSpectrum (𝓞 D.host.E)}
    (hP : ∀ PP ∈ R.Pg, PP ≠ P ∧ ¬ Lev.IsConjPl PP P) {k : ℕ} (hk : k ≤ D.R.r) {α : GA D (Wc D i)}
    (hα : IsHeckeAt (Wc D i) P k α) :
    ∃ B, IsDiagOpAt (Wc D i) (levW R F i) (chiW R F i) ∅ P k B ∧ Bridge.IsDC (levTriv R i) α B := by
  obtain ⟨e, ϖ, he, h1, h2, hα⟩ := hα
  obtain ⟨c, hβ⟩ := hL.βW i
  have hN : ((1 ^ c : ℕ) : 𝓞 D.host.E) ∉ P.asIdeal := by
    rw [one_pow, Nat.cast_one]
    exact (Ideal.ne_top_iff_one _).1 P.isPrime.ne_top
  have hp : Mult.IsPrimeIdem P e (e + cA D e) := Or.inl ⟨he, rfl⟩
  have LS := fun Lv : LevelP R.Pg D.R.r ℂ => (GlobalTheory.LevSplit.lev_split (Wc D i) (R.βW i) (R.ΛW i) _ (R.datWp i Lv) hβ).2 P e _ hp hN
    fun PP h => hP PP (h.elim id fun h => absurd h (Finset.notMem_empty _))
  obtain ⟨B, hB, hC⟩ := (GlobalTheory.SplitPlace.split_local (Wc D i) P e he).2.1 α hα.2.1
  have hset : ∀ Lv : LevelP R.Pg D.R.r ℂ, Mult.locPart (Wc D i) (levS _ (R.βW i) (R.datWp i Lv)) e =
      Mult.locPart (Wc D i) (KsphC (Wc D i) ∅) e := fun Lv => Set.ext fun g => and_congr_left fun hg => (LS Lv).1 g hg
  refine ⟨B, ⟨e, ϖ, α, GlobalTheory.LevOp.offS_empty, he, h1, h2, (rank_Wc i).symm ▸ hk, (LS _).1, (LS _).2.1, hα, hB,
    (hset _).symm ▸ hC⟩, ?_⟩
  obtain ⟨L, hLm⟩ := GlobalTheory.HeckeKeep.exists_loc (Wc D i) (e + cA D e)
  have hm : ∀ g, g ∈ levTriv R i ⊓ L ↔ g ∈ Mult.locPart (Wc D i) (KsphC (Wc D i) ∅) e := fun g => by
    rw [← hset R.triv]
    exact and_congr_right fun _ => hLm g
  refine GlobalTheory.HeckeParts.isDC_of_local ((hLm α).2 hα.2.1) (fun γ hγ => (hLm γ).2 (hB γ hγ)) (fun g hg => ?_)
    (fun γ hγ => ?_) fun y hy => ?_
  · obtain ⟨a, ha, b, hb, s₁, s₂, e'⟩ := (LS R.triv).2.2 g hg
    exact ⟨a, ha, b, hb, (hLm a).2 s₁, GlobalTheory.LevOp.comm_of_supp hp hα.2.1 s₂, e'⟩
  · simpa only [hm] using (hC.1 γ hγ).2
  · simpa only [hm] using hC.2 y (by simpa only [hm] using hy)

theorem inv_levTriv (i : Fin D.R.m) {U : Mult.MMap (R.MW i (sg0 D A3.A))}
    (hU : U ∈ Mult.Mult R.θ (R.MW i (sg0 D A3.A)) (levW R F i) (chiW R F i)) (v) :
    ∀ k ∈ levTriv R i, ∀ g, U v (g * k) = U v g := by
  intro k hk g
  obtain ⟨h1, h2⟩ := GlobalTheory.HeckeParts.triv_le (V := Wc D i) (β := R.βW i) (R.levL F false (sg0 D A3.A)) k hk
  rw [principalLevelFrame.mult_lev hU v k h1 g]
  exact (congrArg (· * U v g) h2).trans (one_mul _)

theorem heckeOn_partR (Y : Read (A3 := A3) R F X0) (hL : R.toLevCh.Is A3.A.μ0) (i : Fin D.R.m)
    {P : HeightOneSpectrum (𝓞 D.host.E)} (hP : ∀ PP ∈ R.Pg, PP ≠ P ∧ ¬ Lev.IsConjPl PP P) {k : ℕ} (hk : k ≤ D.R.r)
    {α : GA D (Wc D i)} (hα : IsHeckeAt (Wc D i) P k α) {Rs : Finset (GA D (Wc D i))} (hR : Bridge.IsDC (levTriv R i) α Rs)
    (σ : D.what₂.FT) {z : Mult.MMap (R.MW i (sg0 D A3.A))} (hz : z ∈ partR Y i σ) :
    Mult.heckeOn (R.MW i (sg0 D A3.A)) Rs z = rowEig Y i σ P (diagLab D.R.r k) • z := by
  obtain ⟨B, hB, hD⟩ := exists_local (F := F) hL i hP hk hα
  have h := partR_le_partFull Y ∅ i σ hz
  have e := heckeOn_of_mem_partFull h hB.full
  rw [rank_Wc] at e
  rw [← e]
  exact MultilinearMap.ext fun v => funext fun g => GlobalTheory.HeckeParts.sum_eq_of_isDC hR hD (z v) (inv_levTriv i h.1 v) g

end RealHecke

end GlobalTheory.EigRows

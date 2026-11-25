module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmissibleEmptyOfGood
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.CoefficientSpaceEqSpanOrbitExtremalVector
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualWeylLatticeBaseChangeSpanProof
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockHarmonicLatticeFgAndSpansValueSpace
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockHarmonicValueSpaceMapEqDualWeylModuleFunctio
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockMinorProductEqSignDualWeylExtremalVector
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HarmonicPolynomialEqZeroOfFunction
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsGlob
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.PiTensorProduct
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsSplitOfMemAdmissibleConjugatePairPlaces

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain
open NumberField Matrix GlobalTheory.ExportSeries GlobalTheory.SeriesTie
open Formalism.IndefR.Links (PolF labLL)
open Formalism.L2.Host (embLL0)

namespace GlobalTheory.SmallSpan

variable {D : D7} {m n : ℕ}


open GlobalTheory.ExportSeries.Onto in
theorem exists_harm (w : Weight D n) (B : GLR D n) (hw : w.Good) (hm : ∀ τ, w.p τ + w.q τ ≤ m) (F : VV ℂ w.lam) :
    ∃ P ∈ harm m w B, harmFn m w B P = coefFn (RingHom.id ℂ) w.lam (F : Pol ℂ D.what₂.Tau n) := by
  obtain ⟨s, hs⟩ := GlobalTheory.ExportSeries.DeltaExtremal.harmFn_delta D m n w B hw hm
  have hs0 : ((s : ℤ) : ℂ) ≠ 0 := by exact_mod_cast s.ne_zero
  have key : ∀ u : GLR D n, harmFn m w B (fockGL m w B u (w.delta m)) =
      ((s : ℤ) : ℂ) • coefLin w.lam (actP w.lam (invTrK (u * B)) (ten fun τ => extremal ℂ n (w.lam τ))) := fun u => by
    funext x
    rw [harmFn_fockGL, hs, Pi.smul_apply, smul_eq_mul]
    congr 1
    change _ = coefFn _ _ _ _
    rw [coefFn_actP, _root_.mul_inv_rev, mul_assoc]
  have hle : (VV ℂ w.lam).map (coefLin w.lam) ≤ (harm m w B).map (harmFn m w B) := by
    rw [GlobalTheory.OrbitSpan.VV_eq_span_orbit, harm, Submodule.map_span, Submodule.map_span, Submodule.span_le]
    rintro _ ⟨_, ⟨g, rfl⟩, rfl⟩
    have h2 := key (invTrK g * B⁻¹)
    rw [inv_mul_cancel_right, invTrK_invTrK] at h2
    refine (Submodule.smul_mem_iff _ hs0).1 ?_
    beta_reduce
    rw [← h2]
    exact Submodule.subset_span ⟨_, ⟨_, rfl⟩, rfl⟩
  exact hle (Submodule.mem_map_of_mem F.2)


open GlobalTheory.ExportSeries.HarmLattice in
theorem harmLat_le_span {K₀ K : Type} [Field K₀] [NumberField K₀] [Field K] [NumberField K] (f : K₀ →+* K) (σ : K →+* ℂ)
    (emb : D.what₂.Tau → (D.host.E →+* K₀)) (O O' : Subring ℂ) (hO' : ∀ a : 𝓞 K, σ a ∈ O') (w : Weight D n) (B : GLR D n)
    (hw : w.Good) (hm : ∀ τ, w.p τ + w.q τ ≤ m) {M : Submodule (𝓞 D.host.E) (Fin n → D.host.E)}
    (hM : Submodule.IsFullLattice D.host.E M) {P : PolF D m n} (hP : P ∈ harmLat σ (fun τ => f.comp (emb τ)) O' m w B M) :
    P ∈ Submodule.span O' (harmLat (σ.comp f) emb O m w B M : Set (PolF D m n)) := by
  set N := Submodule.span O' (harmLat (σ.comp f) emb O m w B M : Set (PolF D m n))
  have hN : N ≤ (harm m w B).restrictScalars O' := Submodule.span_le.2 fun Q hQ => hQ.1
  have hle : coefLatFn σ (fun τ => f.comp (emb τ)) O' w.lam M ≤ N.map ((harmFn m w B).restrictScalars O') := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨F, hF, rfl⟩
    have hF' := GlobalTheory.NabBC.nabBaseChange _ _ _ _ n f emb w.lam M hM hF
    rw [coefFn_eq, SetLike.mem_coe]
    clear hF
    induction hF' using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨x, hx, e⟩ := hy
      obtain ⟨Q, hQ, eQ⟩ := exists_harm w B hw hm (GlobalTheory.CoefModel.mapVV (σ.comp f) w.lam x)
      have e1 : harmFn m w B Q = coefFn (σ.comp f) w.lam (x : Pol K₀ D.what₂.Tau n) := eQ.trans (coefFn_eq _ _ x).symm
      refine ⟨Q, Submodule.subset_span ⟨hQ, ?_⟩, ?_⟩
      · exact Submodule.subset_span ⟨x, hx, e1⟩
      · refine eQ.trans (congrArg (cf w.lam) (Subtype.ext ?_))
        change MvPolynomial.map (σ.comp f) x.1 = MvPolynomial.map σ y.1
        rw [e, MvPolynomial.map_map]
    | zero => rw [map_zero, map_zero]; exact zero_mem _
    | add _ _ _ _ h1 h2 => rw [map_add (f := _), map_add (f := _)]; exact add_mem h1 h2
    | smul a F _ h1 =>
      rw [← algebraMap_smul K a F, LinearMap.map_smulₛₗ, map_smul]
      exact Submodule.smul_mem _ (⟨σ a, hO' a⟩ : O') h1
  obtain ⟨Q, hQ, e⟩ := hle hP.2
  have h0 : P - Q = 0 := GlobalTheory.ExportSeries.HarmInj.harm_inj D m n w B hw hm _ (sub_mem hP.1 (hN hQ)) (by
    rw [map_sub, sub_eq_zero]
    exact e.symm)
  rw [sub_eq_zero.1 h0]
  exact hQ

theorem isLattice_latAt {S T : HSp D} {B : Base S T} (hF : B.F.Good) (h : Bridge.Gf S) :
    Submodule.IsFullLattice D.host.E (B.latAt h) :=
  by
  classical
  have hspan : Submodule.span D.host.E (B.F.ΛS : Set (Fin S.rank → D.host.E)) = ⊤ := by
    let W := Submodule.span D.host.E (B.F.ΛS : Set (Fin S.rank → D.host.E))
    change W = ⊤
    by_contra hW
    let g : (Fin S.rank → D.host.E) →ₗ[D.host.E] Module.Dual D.host.E W :=
      { toFun := fun x => { toFun := fun y => ∑ i, ∑ j, x i * S.gram i j * y.1 j
                            map_add' := by intros; simp [mul_add, Finset.sum_add_distrib]
                            map_smul' := by intros; simp [mul_left_comm, mul_assoc, Finset.mul_sum] }
        map_add' := by intros; ext y; simp [add_mul, Finset.sum_add_distrib]
        map_smul' := by intros; ext y; simp [mul_assoc, Finset.mul_sum] }
    have hdim : Module.finrank D.host.E (Module.Dual D.host.E W) < Module.finrank D.host.E (Fin S.rank → D.host.E) := by
      rw [Subspace.dual_finrank_eq]
      exact Submodule.finrank_lt hW
    obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot (LinearMap.ker_ne_bot_of_finrank_lt (f := g) hdim)
    let v : Fin S.rank → D.host.E := fun i => star (x i)
    have hv0 : v ≠ 0 := by
      intro hv
      apply hx0
      funext i
      have hi := congrFun hv i
      simpa [v] using congrArg star hi
    have hline (r : D.host.E) : r • v ∈ B.F.ΛS := by
      apply (hF.sdS.2 _).2
      intro y hy
      have hz : (∑ i, ∑ j, x i * S.gram i j * y j) = 0 :=
        congrArg (fun f : Module.Dual D.host.E W => f ⟨y, Submodule.subset_span hy⟩) (LinearMap.mem_ker.mp hx)
      have hzy : (∑ i, ∑ j, star (y i) * S.gram i j * v j) = 0 := by
        have hg (i j : Fin S.rank) : star (S.gram i j) = S.gram j i := by
          exact S.herm.eq _ _
        have hs : (starRingEnd D.host.E) (∑ i, ∑ j, x i * S.gram i j * y j) = 0 := by rw [hz, map_zero]
        simp only [map_sum, map_mul] at hs
        change (∑ i, ∑ j, star (x i) * star (S.gram i j) * star (y j)) = 0 at hs
        simp only [hg] at hs
        rw [Finset.sum_comm] at hs
        simpa [mul_comm, mul_left_comm, mul_assoc] using hs
      refine ⟨0, ?_⟩
      simp only [map_zero, Pi.smul_apply, smul_eq_mul]
      calc
        0 = r * (∑ i, ∑ j, star (y i) * S.gram i j * v j) := by rw [hzy, mul_zero]
        _ = ∑ i, ∑ j, star (y i) * S.gram i j * (r * v j) := by simp [Finset.mul_sum, mul_comm, mul_assoc]
    obtain ⟨i, hi⟩ : ∃ i, v i ≠ 0 := by
      by_contra hn
      apply hv0
      funext i
      simpa using not_exists.mp hn i
    let coord := (LinearMap.proj i : (Fin S.rank → D.host.E) →ₗ[D.host.E] D.host.E).restrictScalars (𝓞 D.host.E)
    have htop : B.F.ΛS.map coord = ⊤ := by
      rw [eq_top_iff]
      intro a _
      exact ⟨(a / v i) • v, hline _, div_mul_cancel₀ _ hi⟩
    have : Module.Finite (𝓞 D.host.E) D.host.E := Module.finite_def.mpr (htop ▸ hF.sdS.1.fg.map coord)
    exact RingOfIntegers.not_isField D.host.E
      (isField_of_isIntegral_of_isField (IsFractionRing.injective (𝓞 D.host.E) D.host.E) (Field.toIsField D.host.E))
  exact Formalism.UG.P.csGlob_lattice _ (Module.Finite.iff_fg.2 hF.sdS.1.fg) hspan _

end GlobalTheory.SmallSpan

end

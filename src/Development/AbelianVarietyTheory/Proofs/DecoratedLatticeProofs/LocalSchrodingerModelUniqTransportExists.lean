module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsUnitarySupportedAtPlaceOfMulEqIdem
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.EventuallyFinEqOne
public import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSchrodingerIntertwinerIntegralMatrices
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergFrameHalfInverse
public import Mathlib.Analysis.Complex.Circle
public import Mathlib.NumberTheory.LocalField.Basic
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MatrixIntegralOfAddCharTraceDual
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchwartzBruhatMatrixTranslationModulationIrreduc
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeilCharacterSplitPlaceExistsContinuousNontrivia
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSelfDualCLatFrame
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
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

@[expose] public section

noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.LocMod
namespace GlobalTheory.LocModU

theorem upZero {D : D7} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (p : Place D k) {Y Y' : Type} [Fintype Y] [DecidableEq Y] [Fintype Y'] [DecidableEq Y'] {S T : HSp D}
    (FS : Frame k S.rank Y') (FT : Frame k T.rank Y) : p.up FS FT 0 = 0 := by
  unfold Place.up
  ext i j
  simp [Matrix.map_apply]

theorem charZero_of_place {D : D7} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k] (p : Place D k) : CharZero k :=
  (RingHom.charZero_iff (ϕ := p.π.comp (incA D)) (RingHom.injective _)).1 inferInstance

theorem localModel_uniq_transport_exist : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : Place D k) (Y Y' : Type) [Fintype Y] [DecidableEq Y] [Fintype Y'] [DecidableEq Y'] (S T : HSp D) (FS : Frame k S.rank Y') (FT : Frame k T.rank Y) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → (∀ T₁ T₂, p.IsModel ψ FS FT T₁ → p.IsModel ψ FS FT T₂ → ∀ Φ₀, Φ₀ ≠ 0 → T₁ Φ₀ = T₂ Φ₀ → T₁ = T₂) ∧ (∀ T₁, p.IsModel ψ FS FT T₁ → ∀ A : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ), (∀ f, IsThetaFunO ψ S T f → IsThetaFunO ψ S T (A f)) → (∀ f, IsThetaFunO ψ S T f → ∀ y : WO S T, IsHalf (p.e + cA D p.e) y → A (heisO ψ S T y f) = heisO ψ S T y (A f)) → p.IsModel ψ FS FT (A ∘ₗ T₁)) ∧ ∀ f₀, IsThetaFunO ψ S T f₀ → (∀ x : Matrix Y Y' k, (∀ r q, x r q ∈ 𝒪[k]) → heisO ψ S T (p.up FS FT x) f₀ = f₀) → (∀ y : WO S T, IsHalf (cA D p.e) y → (∀ x : Matrix Y Y' k, (∀ r q, x r q ∈ 𝒪[k]) → ψ (symplO S T (p.up FS FT x) y) = 1) → heisO ψ S T y f₀ = f₀) → ∃ T₁, p.IsModel ψ FS FT T₁ ∧ ∀ Φ : SB (Matrix Y Y' k), Φ.1 = Set.indicator {x | ∀ r q, x r q ∈ 𝒪[k]} (fun _ => 1) → T₁ Φ = f₀ := by
  intro D k _ _ _ _ p Y Y' _ _ _ _ S T FS FT ψ hψ
  haveI : CharZero k := charZero_of_place p
  obtain ⟨⟨ψk, hψk⟩, hcn, -, -, -⟩ := _root_.GlobalTheory.LocChar.weil_char_split D k p ψ hψ
  obtain ⟨hcont, hne⟩ := hcn ψk hψk
  obtain ⟨hup, -, -, hsymk, hsurj⟩ := _root_.GlobalTheory.LocSympl.halves_at_split D k p Y Y' S T FS FT ψ ψk hψk
  obtain ⟨-, hec, -⟩ := p.split
  have hce : cA D p.e * p.e = 0 := by rw [mul_comm, hec]
  have hcce : cA D (cA D p.e) * cA D p.e = 0 := by rw [GlobalTheory.DualPairCheck.cA_cA, hec]
  have halfSum1 : ∀ u : WO S T, IsHalf p.e u → IsHalf (p.e + cA D p.e) u := fun u hu i j => by
    rw [add_mul, hu i j, ← hu i j, ← mul_assoc, hce, zero_mul, add_zero, hu i j]
  have halfSum2 : ∀ u : WO S T, IsHalf (cA D p.e) u → IsHalf (p.e + cA D p.e) u := fun u hu i j => by
    rw [add_mul, hu i j, ← hu i j, ← mul_assoc, hec, zero_mul, zero_add, hu i j]
  refine ⟨?_, ?_, ?_⟩
  ·
    intro T₁ T₂ h₁ h₂ Φ₀ hΦ₀ h12
    let W : Submodule ℂ (Matrix Y Y' k → ℂ) := (LinearMap.ker (T₁ - T₂)).map (SB (Matrix Y Y' k)).subtype
    have memW : ∀ Φ : SB (Matrix Y Y' k), Φ.1 ∈ W ↔ T₁ Φ = T₂ Φ := by
      intro Φ
      constructor
      · rintro ⟨Ψ, hΨ, hΨe⟩
        have : Ψ = Φ := Subtype.ext hΨe
        subst this
        simpa [sub_eq_zero] using hΨ
      · intro h
        exact ⟨Φ, by simpa [sub_eq_zero] using h, rfl⟩
    have hWle : W ≤ SB (Matrix Y Y' k) := by
      rintro _ ⟨Ψ, -, rfl⟩
      exact Ψ.2
    have hWeq := _root_.GlobalTheory.IrredSB.sb_irreducible k Y Y' ψk hcont hne W hWle
      (by
        rintro _ ⟨Φ, hΦ, rfl⟩ x hx
        have hΦ' : T₁ Φ = T₂ Φ := (memW Φ).1 ⟨Φ, hΦ, rfl⟩
        refine (memW ⟨_, hx⟩).2 ?_
        rw [h₁.trans x Φ ⟨_, hx⟩ (fun t => rfl), h₂.trans x Φ ⟨_, hx⟩ (fun t => rfl), hΦ'])
      (by
        rintro _ ⟨Φ, hΦ, rfl⟩ b hb
        have hΦ' : T₁ Φ = T₂ Φ := (memW Φ).1 ⟨Φ, hΦ, rfl⟩
        obtain ⟨y, hy, hyb⟩ := hsurj b
        have hmod : ∀ t, (⟨_, hb⟩ : SB (Matrix Y Y' k)).1 t = ψ (symplO S T (p.up FS FT t) y) * Φ.1 t := by
          intro t
          show _ = _
          rw [hsymk t y hy, hyb t]
          rfl
        refine (memW ⟨_, hb⟩).2 ?_
        rw [h₁.modul y hy Φ _ hmod, h₂.modul y hy Φ _ hmod, hΦ'])
      Φ₀.1 ((memW Φ₀).2 h12) (fun h => hΦ₀ (Subtype.ext h))
    ext1 Φ
    have hm : Φ.1 ∈ W := by rw [hWeq]; exact Φ.2
    exact (memW Φ).1 hm
  ·
    intro T₁ h₁ A hA1 hA2
    refine ⟨fun Φ => hA1 _ (h₁.theta Φ), fun x Φ Φ' h => ?_, fun y hy Φ Φ' h => ?_⟩
    · show A (T₁ Φ') = heisO ψ S T (p.up FS FT x) (A (T₁ Φ))
      rw [h₁.trans x Φ Φ' h, hA2 _ (h₁.theta Φ) _ (halfSum1 _ (hup x).1)]
    · show A (T₁ Φ') = heisO ψ S T y (A (T₁ Φ))
      rw [h₁.modul y hy Φ Φ' h, hA2 _ (h₁.theta Φ) _ (halfSum2 _ hy)]
  ·
    intro f₀ hf₀ hfx hfy
    let Z := GlobalTheory.PlaceModel.half S T (cA D p.e)
    let χ : Matrix Y Y' k → Z → ℂ := fun t z => ψ (symplO S T (p.up FS FT t) z.1)
    have hZ : ∀ z : Z, IsHalf (cA D p.e) z.1 := fun z => (GlobalTheory.PlaceModel.isHalf_iff S T).2 z.2
    obtain ⟨Tm, htr, hmo, hvac, hspan⟩ := _root_.GlobalTheory.SchrodExist.exists_intertwiner_matrix k Y Y' Z χ
      (fun a b z => by simp only [χ, GlobalTheory.LocMod.Witness.up_add, GlobalTheory.PlaceModel.symplO_add_left, AddChar.map_add_eq_mul])
      (fun a z z' => by simp only [χ, AddSubgroup.coe_add, GlobalTheory.PlaceModel.symplO_add_right, AddChar.map_add_eq_mul])
      (fun z => by simp only [χ, upZero, GlobalTheory.PlaceModel.symplO_zero_left, AddChar.map_zero_eq_one])
      (fun a => by simp only [χ, ZeroMemClass.coe_zero, GlobalTheory.PlaceModel.symplO_zero_right, AddChar.map_zero_eq_one])
      (fun n hn z => by
        obtain ⟨z', hz', e⟩ := GlobalTheory.PlaceModel.half_div S T (cA D p.e) n hn z.1 z.2
        exact ⟨⟨z', hz'⟩, Subtype.ext (by rw [AddSubgroup.coe_nsmul]; exact e)⟩)
      (fun n hn z z' h => by
        apply Subtype.ext
        have h' : n • z.1 = n • z'.1 := by
          have := congrArg Subtype.val h
          simpa only [AddSubgroup.coe_nsmul] using this
        rw [← GlobalTheory.PlaceModel.inv_smul_nsmul S T hn z.1, h', GlobalTheory.PlaceModel.inv_smul_nsmul S T hn])
      (fun x hx => _root_.GlobalTheory.CharDualMat.integral_of_dual k Y Y' ψk hcont hne x fun b hb => by
        obtain ⟨y, hy, hyb⟩ := hsurj b
        have key : ∀ t, χ t ⟨y, (GlobalTheory.PlaceModel.isHalf_iff S T).1 hy⟩ = ((ψk (∑ r, ∑ q, b r q * t r q) : Circle) : ℂ) := by
          intro t
          show ψ _ = _
          rw [hsymk t y hy, hyb t]
        have := hx ⟨y, (GlobalTheory.PlaceModel.isHalf_iff S T).1 hy⟩ (fun u hu => by
          rw [key, hb u hu, Circle.coe_one])
        rw [key] at this
        exact Circle.ext (by simpa using this))
      (WO S T → ℂ) (fun x => GlobalTheory.PlaceModel.heisL S T ψ (p.up FS FT x)) (fun z => GlobalTheory.PlaceModel.heisL S T ψ z.1)
      (fun x x' f => by
        rw [GlobalTheory.PlaceModel.heisL_half S T ψ hce _ ((GlobalTheory.PlaceModel.isHalf_iff S T).1 (hup x).1) _
          ((GlobalTheory.PlaceModel.isHalf_iff S T).1 (hup x').1), _root_.GlobalTheory.LocMod.Witness.up_add])
      (fun z z' f => by
        rw [GlobalTheory.PlaceModel.heisL_half S T ψ hcce _ z.2 _ z'.2]
        rfl)
      (fun x z f => GlobalTheory.PlaceModel.heisL_comm S T ψ _ _ f)
      (fun f => by
        rw [upZero]
        funext w
        show ψ (symplOH S T w 0) * f (w + 0) = f w
        rw [symplOH, GlobalTheory.PlaceModel.symplO_zero_right, mul_zero, AddChar.map_zero_eq_one, one_mul, add_zero])
      (fun f => by
        funext w
        show ψ (symplOH S T w 0) * f (w + 0) = f w
        rw [symplOH, GlobalTheory.PlaceModel.symplO_zero_right, mul_zero, AddChar.map_zero_eq_one, one_mul, add_zero])
      f₀ (fun u hu => hfx u hu)
      (fun z hz => hfy z.1 (hZ z) hz)
    have hsplit := p.split
    have hstd : IsCharAF D.host.F ψ := hψ.1
    refine ⟨Tm, ⟨fun Φ => ?_, fun x Φ Φ' h => htr x Φ Φ' h, fun y hy Φ Φ' h =>
      hmo ⟨y, (GlobalTheory.PlaceModel.isHalf_iff S T).1 hy⟩ Φ Φ' h⟩, hvac⟩
    have hfin {a : WO S T} (ha : a.map (infPart D) = 0) {f : WO S T → ℂ}
        (hf : IsThetaFunO ψ S T f) : IsThetaFunO ψ S T (heisO ψ S T a f) := by
      simpa using GlobalTheory.FinTranslate.isTheta_sum_heisO_fin D ψ S T hstd f hf
        Unit Finset.univ (fun _ => a) (fun _ => 1) (fun _ _ => ha)
    have hzero : IsThetaFunO ψ S T 0 := by
      refine ⟨?_, ?_, continuous_const, ?_⟩
      · intro γ w; simp only [Pi.zero_apply, mul_zero]
      · exact ⟨⊤, isOpen_univ, fun u _ _ => by funext w; simp only [heisO, Pi.zero_apply, mul_zero]⟩
      · intro k L _ _ w; exact contDiff_const
    have hadd {f g : WO S T → ℂ} (hf : IsThetaFunO ψ S T f) (hg : IsThetaFunO ψ S T g) :
        IsThetaFunO ψ S T (f + g) := by
      refine ⟨?_, ?_, hf.cont.add hg.cont, ?_⟩
      · intro γ w; simp only [Pi.add_apply, hf.quasi, hg.quasi, mul_add]
      · obtain ⟨U, hU, h1⟩ := hf.level
        obtain ⟨U', hU', h2⟩ := hg.level
        refine ⟨U ⊓ U', hU.inter hU', fun u hu h0 => ?_⟩
        funext w
        have e1 := congrFun (h1 u hu.1 h0) w
        have e2 := congrFun (h2 u hu.2 h0) w
        unfold heisO at e1 e2 ⊢
        rw [Pi.add_apply, Pi.add_apply, mul_add, e1, e2]
      · intro k L h1 h2 w; exact (hf.smooth k L h1 h2 w).add (hg.smooth k L h1 h2 w)
    have hsmul (c : ℂ) {f : WO S T → ℂ} (hf : IsThetaFunO ψ S T f) :
        IsThetaFunO ψ S T (c • f) := by
      refine ⟨?_, ?_, hf.cont.const_smul c, ?_⟩
      · intro γ w; rw [Pi.smul_apply, Pi.smul_apply, hf.quasi, smul_eq_mul, smul_eq_mul, mul_left_comm]
      · obtain ⟨U, hU, h1⟩ := hf.level
        refine ⟨U, hU, fun u hu h0 => ?_⟩
        funext w
        have e1 := congrFun (h1 u hu h0) w
        unfold heisO at e1 ⊢
        rw [Pi.smul_apply, Pi.smul_apply, smul_eq_mul, smul_eq_mul, mul_left_comm, e1]
      · intro k L h1 h2 w; exact contDiff_const.mul (hf.smooth k L h1 h2 w)
    have hs := hspan Φ
    generalize Tm Φ = g at hs
    induction hs using Submodule.span_induction with
    | mem _ hw =>
      obtain ⟨w, rfl⟩ := hw
      exact hfin (GlobalTheory.SplitScalar.half_fin hsplit (hup w.1).1)
        (hfin
          (GlobalTheory.SplitScalar.half_fin (GlobalTheory.SplitScalar.isSplitIdem_conj hsplit) (hZ w.2)) hf₀)
    | zero => exact hzero
    | add _ _ _ _ h1 h2 => exact hadd h1 h2
    | smul c _ _ h1 => exact hsmul c h1

end GlobalTheory.LocModU

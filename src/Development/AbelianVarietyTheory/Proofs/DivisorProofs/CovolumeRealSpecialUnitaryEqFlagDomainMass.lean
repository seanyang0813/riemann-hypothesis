module

public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EmbGLMemRealSU
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.IsOrth
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FundamentalDomainPointBound
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarIntegralEqUnitriangularChart
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RiemannianHaarSpecialUnitaryEqSmulHaar
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.ContinuousOnRmul
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.ExistsContinuousGramSchmidt
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.MeasureStatements
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.MuFLtTopOfIsCompact
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.UpperTriangularPreservesDiagonalIff
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
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
import Mathlib.Topology.Algebra.Group.Units
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpCStatementPfA
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.KaUnfoldPfB
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarSpecialUnitaryLyingOverFlagDomain, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CovolumeRealSpecialUnitaryEqFlagDomainMass

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarSpecialUnitaryLyingOverFlagDomain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarSpecialUnitaryLyingOverFlagDomain", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EmbGLMemRealSU\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.IsOrth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FundamentalDomainPointBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarIntegralEqUnitriangularChart\nimport Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.ContinuousOnRmul\nimport Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.ExistsContinuousGramSchmidt\nimport Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.MeasureStatements\nimport Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.MuFLtTopOfIsCompact\nimport Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.UpperTriangularPreservesDiagonalIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpCStatementPfA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory Matrix GlobalTheory.SUVol ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.AR.Up ReciprocityTheory.L2DbarEstimates Topology
open scoped ENNReal

namespace GlobalTheory.SUHaarOver

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

theorem norm_det_eq_one (X : Data E r) {x : Frame X.Ψ r} (hx : IsOrth X x)
    {n : X.Ψ → Matrix (Fin r) (Fin r) ℂ} (hn : X.IsUnitaryC n) (τ : X.Ψ) : ‖(n τ).det‖ = 1 := by
  have h := UnitaryInvMeasure.gram_lmulC X hn x τ
  have hm : mat (X.lmulC n x) τ = n τ * mat x τ := rfl
  rw [hm, UnitaryFrames.gram_eq_mul, UnitaryFrames.gram_eq_mul] at h
  have hd := congrArg Matrix.det h
  have hK : (mat x τ).det * ((X.Gm.map τ.1).det * ((mat x τ).map (starRingEnd ℂ)).det) ≠ 0 := by
    have h2 := congrArg Matrix.det (hx τ)
    rw [UnitaryFrames.gram_eq_mul, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose] at h2
    rw [h2, Matrix.det_diagonal]
    refine Finset.prod_ne_zero_iff.2 fun a _ => ?_
    unfold sgn
    split_ifs <;> simp
  simp only [Matrix.det_mul, Matrix.det_transpose, Matrix.map_mul] at hd
  have hc : ((n τ).map (starRingEnd ℂ)).det = starRingEnd ℂ (n τ).det := (RingHom.map_det _ _).symm
  rw [hc] at hd
  have h3 : (n τ).det * (starRingEnd ℂ) (n τ).det = 1 := by
    apply mul_right_cancel₀ hK
    linear_combination hd
  have h4 : ((Complex.normSq (n τ).det : ℝ) : ℂ) = 1 := by rw [← Complex.mul_conj]; exact h3
  have h5 : Complex.normSq (n τ).det = 1 := by exact_mod_cast h4
  rw [Complex.normSq_eq_norm_sq] at h5
  have h6 : 0 ≤ ‖(n τ).det‖ := norm_nonneg _
  nlinarith [h5, h6]


open UnitaryInvMeasure in
theorem exists_haar_lying_over : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (r : ℕ) (X : Data E r)
    (x : Frame X.Ψ r) [MeasurableSpace (realSU X.Ψ X.Gm)] [BorelSpace (realSU X.Ψ X.Gm)], 1 ≤ r → IsOrth X x →
    ∃ ν : Measure (realSU X.Ψ X.Gm), ν.IsHaarMeasure ∧ ∀ φ : Frame X.Ψ r → ℝ≥0∞, Measurable φ →
      (∀ y ∈ X.dom, ∀ b ∈ Bor X.Ψ r, φ (rmul y b) = φ y) →
      ∫⁻ g, φ (X.lmulC (fun τ => (((g : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : Matrix (Fin r) (Fin r) ℂ)) x) ∂ν =
        ∫⁻ z, φ (cpt X x z) ∂muF X x := by
  intro E _ _ _ r X x _ _ hr hx
  classical
  set H := UnitaryFrames.unitarySubgroup X with hHdef
  letI : MeasurableSpace H := borel H
  haveI : BorelSpace H := ⟨rfl⟩
  have hHm : ∀ g, g ∈ H ↔ X.IsUnitaryC fun τ => (g τ : Matrix (Fin r) (Fin r) ℂ) := fun _ => Iff.rfl
  obtain ⟨hLC, hSC, hfr⟩ := UnitaryFrames.unitary_group_frames.2 r X H hHm
  haveI := hLC
  haveI := hSC
  obtain ⟨-, ι, hιc, hι1, -⟩ := hfr x hx
  obtain ⟨νU, hνl, hνf, hν⟩ := invMeas FrameMeasureClosed.measure_statements.2.1
    GramSchmidtCont.exists_continuous_gramSchmidt isOrth_rmul_iff_unitary_diagonal
    (SatFin.muF_sat_lt_top FrameMeasureClosed.measure_statements.2.1)
    UnitaryFrames.unitary_group_frames.2 r X H hHm x hx
  haveI := hνl
  haveI := hνf
  let M : (X.Ψ → GL (Fin r) ℂ) → X.Ψ → Matrix (Fin r) (Fin r) ℂ := fun g τ => (g τ : Matrix (Fin r) (Fin r) ℂ)
  have hU : ∀ g : H, X.IsUnitaryC (M g.1) := fun g => g.2
  have hMmul : ∀ g h : X.Ψ → GL (Fin r) ℂ, ∀ τ, M (g * h) τ = M g τ * M h τ := fun g h τ => by
    simp only [M, Pi.mul_apply, Units.val_mul]
  have hMc : ∀ τ, Continuous fun g : X.Ψ → GL (Fin r) ℂ => M g τ := fun τ =>
    Units.continuous_val.comp (continuous_apply τ)

  let dC : H → X.Ψ → Circle := fun g τ =>
    ⟨(M g.1 τ).det, by simpa [Submonoid.unitSphere] using norm_det_eq_one X hx (hU g) τ⟩
  have hdC : ∀ g τ, ((dC g τ : Circle) : ℂ) = (M g.1 τ).det := fun _ _ => rfl
  let tU : H → Torus X := fun g τ a => if (a : ℕ) = 0 then (dC g τ)⁻¹ else 1
  let cT : Torus X → H := fun t => ι (rmul x (diagF X t))
  let cU : H → H := fun g => cT (tU g)
  have horthT : ∀ t, IsOrth X (rmul x (diagF X t)) := fun t =>
    (isOrth_rmul_iff_unitary_diagonal r X x _ hx (diagF_mem X t)).2 (diagF_unit X t)
  have hcx : ∀ t, X.lmulC (M (cT t).1) x = rmul x (diagF X t) := fun t => hι1 _ (horthT t)

  have hdCc : Continuous dC := continuous_pi fun τ =>
    Continuous.subtype_mk ((hMc τ).comp continuous_subtype_val).matrix_det _
  have htUc : Continuous tU := by
    refine continuous_pi fun τ => continuous_pi fun a => ?_
    by_cases ha : (a : ℕ) = 0
    · simp only [tU, ha, if_true]
      exact ((continuous_apply τ).comp hdCc).inv
    · simp only [tU, ha, if_false]
      exact continuous_const
  have hcTc : Continuous cT := by
    refine hιc.comp_continuous ?_ fun t => horthT t
    exact (continuous_rmul X).comp (continuous_const.prodMk (continuous_diagF X))
  have hcUc : Continuous cU := hcTc.comp htUc

  have hdetc : ∀ (g : H) τ, (M (cU g).1 τ).det * (M g.1 τ).det = 1 := by
    intro g τ
    have h1 := congrArg Matrix.det (congrFun (hcx (tU g)) τ)
    have e1 : X.lmulC (M (cU g).1) x τ = M (cU g).1 τ * mat x τ := rfl
    have e2 : rmul x (diagF X (tU g)) τ = mat x τ * mat (diagF X (tU g)) τ := rfl
    have e3 : (mat (diagF X (tU g)) τ).det = ((M g.1 τ).det)⁻¹ := by
      show (Matrix.diagonal fun a => ((tU g τ a : Circle) : ℂ)).det = _
      rw [Matrix.det_diagonal, Finset.prod_eq_single (⟨0, hr⟩ : Fin r)]
      · simp only [tU, if_true, Circle.coe_inv, hdC]
      · intro b _ hb
        have : (b : ℕ) ≠ 0 := fun h => hb (Fin.ext h)
        simp only [tU, this, if_false, Circle.coe_one]
      · simp
    have hx0 := UnitaryFrames.det_ne_zero_of_isOrth X hx τ
    have hg0 : (M g.1 τ).det ≠ 0 := by
      intro h0
      have := norm_det_eq_one X hx (hU g) τ
      rw [h0, norm_zero] at this
      exact zero_ne_one this

    have h2 : (M (cU g).1 τ).det * (mat x τ).det = (mat x τ).det * ((M g.1 τ).det)⁻¹ := by
      have h1' : (M (cU g).1 τ * mat x τ).det = (mat x τ * mat (diagF X (tU g)) τ).det := by
        rw [← e1, ← e2]; exact h1
      rw [Matrix.det_mul, Matrix.det_mul, e3] at h1'
      exact h1'
    have hi : (M g.1 τ).det * ((M g.1 τ).det)⁻¹ = 1 := mul_inv_cancel₀ hg0
    have h3 : (M (cU g).1 τ).det * (M g.1 τ).det = 1 := by
      apply mul_right_cancel₀ hx0
      linear_combination (M g.1 τ).det * h2 + (mat x τ).det * hi
    exact h3

  have hpmem : ∀ g : H, (g * cU g).1 ∈ realSU X.Ψ X.Gm := by
    intro g τ
    refine ⟨?_, (g * cU g).2 τ⟩
    show (M (g.1 * (cU g).1) τ).det = 1
    rw [hMmul, Matrix.det_mul, mul_comm]
    exact hdetc g τ
  let p : H → realSU X.Ψ X.Gm := fun g => ⟨(g * cU g).1, hpmem g⟩
  have hpc : Continuous p :=
    Continuous.subtype_mk (continuous_subtype_val.comp (continuous_id.mul hcUc)) _
  have hpm : Measurable p := hpc.measurable

  let incl : realSU X.Ψ X.Gm → H := fun s => ⟨s.1, fun τ => (s.2 τ).2⟩
  have hinclc : Continuous incl := Continuous.subtype_mk continuous_subtype_val _
  have hpinv : ∀ (s : (realSU X.Ψ X.Gm)) (g : H), p (incl s * g) = s * p g := by
    intro s g
    have htU : tU (incl s * g) = tU g := by
      have hd : dC (incl s * g) = dC g := by
        funext τ
        apply Subtype.ext
        show (M (s.1 * g.1) τ).det = (M g.1 τ).det
        rw [hMmul, Matrix.det_mul, (s.2 τ).1, one_mul]
      funext τ a
      show (if (a : ℕ) = 0 then (dC (incl s * g) τ)⁻¹ else 1) = (if (a : ℕ) = 0 then (dC g τ)⁻¹ else 1)
      rw [hd]
    apply Subtype.ext
    show (incl s * g).1 * (cT (tU (incl s * g))).1 = s.1 * (g.1 * (cT (tU g)).1)
    rw [htU, Subgroup.coe_mul, mul_assoc]

  have hkey : ∀ g : H, X.lmulC (M (g * cU g).1) x = rmul (X.lmulC (M g.1) x) (diagF X (tU g)) := by
    intro g
    funext τ
    have hc := congrFun (hcx (tU g)) τ
    show M ((g : X.Ψ → GL (Fin r) ℂ) * (cU g).1) τ * mat x τ = (M g.1 τ * mat x τ) * mat (diagF X (tU g)) τ
    have hc' : M (cU g).1 τ * mat x τ = mat x τ * mat (diagF X (tU g)) τ := hc
    rw [hMmul, Matrix.mul_assoc, hc', Matrix.mul_assoc]

  set ν : Measure (realSU X.Ψ X.Gm) := νU.map p with hνdef
  have hνinv : ν.IsMulLeftInvariant := ⟨fun s => by
    have hm1 : Measurable fun h : realSU X.Ψ X.Gm => s * h := (continuous_const.mul continuous_id).measurable
    have hm2 : Measurable fun h : H => incl s * h := (continuous_const.mul continuous_id).measurable
    rw [hνdef, Measure.map_map hm1 hpm,
      show (fun h => s * h) ∘ p = p ∘ (fun h => incl s * h) from funext fun g => (hpinv s g).symm,
      ← Measure.map_map hpm hm2, map_mul_left_eq_self]⟩
  have hνfin : IsFiniteMeasureOnCompacts ν := ⟨fun K hK => by
    rw [hνdef, Measure.map_apply hpm hK.measurableSet]
    have hC : IsCompact (Set.range cT) := isCompact_range hcTc
    have hK' : IsCompact (incl '' K) := hK.image hinclc
    refine lt_of_le_of_lt (measure_mono ?_) (hK'.mul hC.inv).measure_lt_top
    intro g hg
    refine Set.mem_mul.2 ⟨incl (p g), ⟨p g, hg, rfl⟩, (cU g)⁻¹, Set.inv_mem_inv.2 ⟨tU g, rfl⟩, ?_⟩
    have : incl (p g) = g * cU g := rfl
    rw [this, mul_inv_cancel_right]⟩
  have huniv : ν Set.univ = muF X x Set.univ := by
    have h1 := hν (fun _ => 1) measurable_const (fun _ _ _ _ => rfl)
    simp only [lintegral_const, one_mul] at h1
    rw [hνdef, Measure.map_apply hpm MeasurableSet.univ, Set.preimage_univ, h1]
  haveI := hνinv
  haveI := hνfin
  have hs := Measure.isMulLeftInvariant_eq_smul ν (Measure.haar : Measure (realSU X.Ψ X.Gm))
  have hc0 : ν.haarScalarFactor (Measure.haar : Measure (realSU X.Ψ X.Gm)) ≠ 0 := by
    intro h0
    apply FlagQuotHaar.muF_univ_ne_zero X hx
    rw [← huniv, hs, h0, zero_smul, Measure.coe_zero, Pi.zero_apply]
  refine ⟨ν, ?_, fun φ hφ hφb => ?_⟩
  · rw [hs, ENNReal.smul_def]
    exact Measure.IsHaarMeasure.smul _ (ENNReal.coe_ne_zero.2 hc0) ENNReal.coe_ne_top
  · have hLc : Continuous fun g : realSU X.Ψ X.Gm =>
        X.lmulC (fun τ => (((g : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : Matrix (Fin r) (Fin r) ℂ)) x := by
      refine continuous_pi fun τ => ?_
      exact ((hMc τ).comp continuous_subtype_val).matrix_mul continuous_const
    have hm : Measurable fun g : realSU X.Ψ X.Gm =>
        φ (X.lmulC (fun τ => (((g : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : Matrix (Fin r) (Fin r) ℂ)) x) :=
      hφ.comp hLc.measurable
    rw [hνdef, lintegral_map hm hpm, ← hν φ hφ hφb]
    refine lintegral_congr fun g => ?_
    show φ (X.lmulC (M (g * cU g).1) x) = φ (X.lmulC (M g.1) x)
    rw [hkey g]
    exact hφb _ (IC.orth_mem_dom X (orth_lmulC X (hU g) hx)) _ (diagF_mem X _)

end

end GlobalTheory.SUHaarOver
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarSpecialUnitaryLyingOverFlagDomain =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CovolumeRealSpecialUnitaryEqFlagDomainMass =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CovolumeRealSpecialUnitaryEqFlagDomainMass", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EmbGLMemRealSU\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FundamentalDomainPointBound\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.IsOrth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarSpecialUnitaryLyingOverFlagDomain\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RiemannianHaarSpecialUnitaryEqSmulHaar\nimport Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.ContinuousOnRmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.KaUnfoldPfB\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.AdLat GlobalTheory.UCls GlobalTheory.SUVol ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.AR.Up
open scoped ENNReal Pointwise

noncomputable section

namespace GlobalTheory.SUCovol

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

def idF (Ψ : Finset (E →+* ℂ)) (r : ℕ) : Frame Ψ r := fun _ => (1 : Matrix (Fin r) (Fin r) ℂ)

def invB {Ψ : Finset (E →+* ℂ)} (b : Frame Ψ r) : Frame Ψ r :=
  fun τ => ((mat b τ)⁻¹ : Matrix (Fin r) (Fin r) ℂ)

theorem rmul_assoc {Ψ : Finset (E →+* ℂ)} (y b b' : Frame Ψ r) :
    rmul (rmul y b) b' = rmul y (rmul b b') := by
  funext τ; exact Matrix.mul_assoc (mat y τ) (mat b τ) (mat b' τ)

theorem rmul_idF {Ψ : Finset (E →+* ℂ)} (y : Frame Ψ r) : rmul y (idF Ψ r) = y := by
  funext τ; exact Matrix.mul_one (mat y τ)

theorem idF_mem (Ψ : Finset (E →+* ℂ)) (r : ℕ) : idF Ψ r ∈ Bor Ψ r := fun τ =>
  ⟨by show (1 : Matrix (Fin r) (Fin r) ℂ).det ≠ 0; simp,
    fun a c h => by show (1 : Matrix (Fin r) (Fin r) ℂ) a c = 0; exact Matrix.one_apply_ne h.ne'⟩

theorem tri_of_mem {Ψ : Finset (E →+* ℂ)} {b : Frame Ψ r} (hb : b ∈ Bor Ψ r) (τ : Ψ) :
    (mat b τ).BlockTriangular id := fun a c h => (hb τ).2 a c h

theorem rmul_mem {Ψ : Finset (E →+* ℂ)} {b b' : Frame Ψ r} (hb : b ∈ Bor Ψ r) (hb' : b' ∈ Bor Ψ r) :
    rmul b b' ∈ Bor Ψ r := by
  intro τ
  have hm : mat (rmul b b') τ = mat b τ * mat b' τ := rfl
  refine ⟨by rw [hm, Matrix.det_mul]; exact mul_ne_zero (hb τ).1 (hb' τ).1, fun a c h => ?_⟩
  exact ((tri_of_mem hb τ).mul (tri_of_mem hb' τ)) h

theorem invB_mem {Ψ : Finset (E →+* ℂ)} {b : Frame Ψ r} (hb : b ∈ Bor Ψ r) : invB b ∈ Bor Ψ r := by
  intro τ
  have hm : mat (invB b) τ = (mat b τ)⁻¹ := rfl
  have hu : IsUnit (mat b τ).det := isUnit_iff_ne_zero.mpr (hb τ).1
  letI := Matrix.invertibleOfIsUnitDet _ hu
  refine ⟨by rw [hm]; exact (Matrix.isUnit_nonsing_inv_det _ hu).ne_zero, fun a c h => ?_⟩
  exact (Matrix.blockTriangular_inv_of_blockTriangular (tri_of_mem hb τ)) h

theorem rmul_invB {Ψ : Finset (E →+* ℂ)} {b : Frame Ψ r} (hb : b ∈ Bor Ψ r) : rmul b (invB b) = idF Ψ r := by
  funext τ
  exact Matrix.mul_nonsing_inv (mat b τ) (isUnit_iff_ne_zero.mpr (hb τ).1)

theorem continuous_lact {Ψ : Finset (E →+* ℂ)} (γ : GL (Fin r) E) : Continuous (lact (Ψ := Ψ) γ) := by
  refine continuous_pi fun τ => ?_
  exact continuous_const.matrix_mul (continuous_apply τ : Continuous fun y : Frame Ψ r => mat y τ)

theorem measurableSet_Bor (Ψ : Finset (E →+* ℂ)) (r : ℕ) : MeasurableSet (Bor Ψ r) := by
  have hc : ∀ τ : Ψ, Continuous fun b : Frame Ψ r => mat b τ := fun τ => continuous_apply τ
  have e : Bor Ψ r = ⋂ τ : Ψ, ({b | (mat b τ).det ≠ 0} ∩
      ⋂ a : Fin r, ⋂ c : Fin r, {b : Frame Ψ r | c < a → b τ a c = 0}) := by
    ext b; simp [Bor]
  rw [e]
  refine MeasurableSet.iInter fun τ => (IsOpen.measurableSet ?_).inter
    (MeasurableSet.iInter fun a => MeasurableSet.iInter fun c => ?_)
  · exact isOpen_ne_fun (hc τ).matrix_det continuous_const
  · by_cases h : c < a
    · simp only [h, true_implies]
      exact (isClosed_eq ((continuous_apply c).comp ((continuous_apply a).comp (continuous_apply τ)))
        continuous_const).measurableSet
    · simp [h]

def frOf (X : Data E r) (x : Frame X.Ψ r) (g : realSU X.Ψ X.Gm) : Frame X.Ψ r :=
  X.lmulC (fun τ => (((g : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : Matrix (Fin r) (Fin r) ℂ)) x

theorem frOf_mul (X : Data E r) (x : Frame X.Ψ r) (h g : realSU X.Ψ X.Gm) :
    frOf X x (h * g) = X.lmulC (fun τ => (((h : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ :
      Matrix (Fin r) (Fin r) ℂ)) (frOf X x g) := by
  funext τ
  show ((((h * g : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : GL (Fin r) ℂ) : Matrix (Fin r) (Fin r) ℂ) *
      mat x τ = ((((h : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : GL (Fin r) ℂ) : Matrix (Fin r) (Fin r) ℂ) *
      (((((g : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : GL (Fin r) ℂ) : Matrix (Fin r) (Fin r) ℂ) * mat x τ)
  rw [Subgroup.coe_mul, Pi.mul_apply, Units.val_mul, Matrix.mul_assoc]

theorem frOf_smul (X : Data E r) (x : Frame X.Ψ r) (h g : realSU X.Ψ X.Gm) (c : GL (Fin r) E)
    (e : embGL X.Ψ r c = (h : X.Ψ → GL (Fin r) ℂ)) : frOf X x (h * g) = lact c (frOf X x g) := by
  rw [frOf_mul, ← e]; rfl

theorem continuous_frOf (X : Data E r) (x : Frame X.Ψ r) : Continuous (frOf X x) := by
  refine continuous_pi fun τ => ?_
  show Continuous fun g : realSU X.Ψ X.Gm =>
    ((((g : realSU X.Ψ X.Gm) : X.Ψ → GL (Fin r) ℂ) τ : GL (Fin r) ℂ) : Matrix (Fin r) (Fin r) ℂ) * mat x τ
  exact (Units.continuous_val.comp ((continuous_apply τ).comp continuous_subtype_val)).matrix_mul
    continuous_const

end GlobalTheory.SUCovol

namespace GlobalTheory.SUCovol

theorem covolume_realSU : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (r : ℕ) (X : Data E r) (x : Frame X.Ψ r) (FF : Set (ReciprocityTheory.L2DbarEstimates.V (nd X))) [MeasurableSpace (realSU X.Ψ X.Gm)] [BorelSpace (realSU X.Ψ X.Gm)], 1 ≤ r → (∀ γ ∈ X.Γ, (γ : Matrix (Fin r) (Fin r) E).det = 1) → IsOrth X x → IsFundSet X x FF → ENNReal.ofReal (((2 : ℝ) ^ (r * (r - 1) / 2) * (2 * Real.pi) ^ (r - 1) * Real.sqrt r) ^ fdeg E) * muF X x FF = covolume (inReal X.Ψ X.Gm X.Γ) (realSU X.Ψ X.Gm) (riemHaar X.Ψ X.Gm x) := by
  intro E _ _ _ r X x FF _ _ hr hdet hx hFF
  obtain ⟨C, hC⟩ : ∃ C : ℝ≥0∞, C = ENNReal.ofReal (((2 : ℝ) ^ (r * (r - 1) / 2) * (2 * Real.pi) ^ (r - 1) *
      Real.sqrt r) ^ fdeg E) := ⟨_, rfl⟩
  rw [← hC]
  obtain ⟨ν, hν, hνφ⟩ := _root_.GlobalTheory.SUHaarOver.exists_haar_lying_over E r X x hr hx
  have hμ : riemHaar X.Ψ X.Gm x = C • ν := by rw [hC]; exact _root_.GlobalTheory.RiemConst.riemHaar_eq_smul E r X x ν hr hx hν hνφ
  have KF : ∀ φ : Frame X.Ψ r → ℝ≥0∞, Measurable φ → (∀ y ∈ X.dom, ∀ b ∈ Bor X.Ψ r, φ (rmul y b) = φ y) →
      ∫⁻ g, φ (frOf X x g) ∂riemHaar X.Ψ X.Gm x = C * ∫⁻ z, φ (cpt X x z) ∂muF X x := by
    intro φ hφ hB
    rw [hμ, lintegral_smul_measure, smul_eq_mul]
    exact congrArg (C * ·) (hνφ φ hφ hB)
  obtain ⟨hFFm, hFFO, hFFinj, hFFae⟩ := hFF
  haveI := _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.countable_GL (E := E) (r := r)

  obtain ⟨T, hTdef⟩ : ∃ T : Set (Frame X.Ψ r), T = (fun p : ReciprocityTheory.L2DbarEstimates.V (nd X) × Frame X.Ψ r =>
      rmul (cpt X x p.1) p.2) '' (FF ×ˢ Bor X.Ψ r) := ⟨_, rfl⟩
  have memT : ∀ y, y ∈ T ↔ ∃ z ∈ FF, ∃ b ∈ Bor X.Ψ r, y = rmul (cpt X x z) b := by
    intro y; rw [hTdef]; constructor
    · rintro ⟨⟨z, b⟩, ⟨hz, hb⟩, rfl⟩; exact ⟨z, hz, b, hb, rfl⟩
    · rintro ⟨z, hz, b, hb, rfl⟩; exact ⟨(z, b), ⟨hz, hb⟩, rfl⟩
  have hTm : MeasurableSet T := by
    rw [hTdef]
    haveI : PolishSpace (Frame X.Ψ r) := {}
    haveI : PolishSpace (ReciprocityTheory.L2DbarEstimates.V (nd X) × Frame X.Ψ r) := {}
    refine (hFFm.prod (measurableSet_Bor X.Ψ r)).image_of_continuousOn_injOn ?_ ?_
    · exact ((GlobalTheory.UnitaryInvMeasure.continuous_rmul X).comp
        (((KU.cont_cpt X x).comp continuous_fst).prodMk continuous_snd)).continuousOn
    · intro p hp q hq h
      obtain ⟨h1, h2⟩ := KU.cpt_inj X hx hp.2 hq.2 h
      exact Prod.ext h1 h2
  have hTB : ∀ y, ∀ b ∈ Bor X.Ψ r, rmul y b ∈ T ↔ y ∈ T := by
    intro y b hb
    constructor
    · intro h
      obtain ⟨z, hz, b', hb', e⟩ := (memT _).1 h
      refine (memT _).2 ⟨z, hz, rmul b' (invB b), rmul_mem hb' (invB_mem hb), ?_⟩
      rw [← rmul_assoc, ← e, rmul_assoc, rmul_invB hb, rmul_idF]
    · intro h
      obtain ⟨z, hz, b', hb', e⟩ := (memT _).1 h
      exact (memT _).2 ⟨z, hz, rmul b' b, rmul_mem hb' hb, by rw [e, rmul_assoc]⟩
  have hcptT : ∀ z, cpt X x z ∈ T ↔ z ∈ FF := by
    intro z; constructor
    · intro h
      obtain ⟨z', hz', b, hb, e⟩ := (memT _).1 h
      have e' : rmul (cpt X x z) (idF X.Ψ r) = rmul (cpt X x z') b := by rw [rmul_idF]; exact e
      rw [(KU.cpt_inj X hx (idF_mem X.Ψ r) hb e').1]; exact hz'
    · intro hz; exact (memT _).2 ⟨z, hz, idF X.Ψ r, idF_mem X.Ψ r, (rmul_idF _).symm⟩

  obtain ⟨S, hSdef⟩ : ∃ S : Set (Frame X.Ψ r), S = ⋃ γ : X.Γ, (lact ((γ : GL (Fin r) E)⁻¹)) ⁻¹' T :=
    ⟨_, rfl⟩
  have memS : ∀ y, y ∈ S ↔ ∃ γ ∈ X.Γ, lact γ⁻¹ y ∈ T := by
    intro y; rw [hSdef, Set.mem_iUnion]
    exact ⟨fun ⟨γ, h⟩ => ⟨γ, γ.2, h⟩, fun ⟨γ, hγ, h⟩ => ⟨⟨γ, hγ⟩, h⟩⟩
  have hSm : MeasurableSet S := by
    rw [hSdef]; exact MeasurableSet.iUnion fun γ => (continuous_lact _).measurable hTm
  have hSB : ∀ y ∈ X.dom, ∀ b ∈ Bor X.Ψ r, rmul y b ∈ S ↔ y ∈ S := by
    intro y _ b hb
    rw [memS, memS]
    simp only [_root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_rmul]
    exact exists_congr fun γ => and_congr_right fun _ => hTB _ b hb
  have hfm : Measurable (frOf X x) := (continuous_frOf X x).measurable
  have hind : ∀ (A : Set (Frame X.Ψ r)) (y y' : Frame X.Ψ r), (y ∈ A ↔ y' ∈ A) →
      A.indicator (1 : Frame X.Ψ r → ℝ≥0∞) y = A.indicator 1 y' := by
    intro A y y' h
    by_cases hy : y ∈ A
    · rw [Set.indicator_of_mem hy, Set.indicator_of_mem (h.1 hy)]; rfl
    · rw [Set.indicator_of_notMem hy, Set.indicator_of_notMem (mt h.2 hy)]
  have hpre : ∀ A : Set (Frame X.Ψ r), (fun g => A.indicator (1 : Frame X.Ψ r → ℝ≥0∞) (frOf X x g)) =
      (frOf X x ⁻¹' A).indicator 1 := by
    intro A; funext g
    by_cases hg : frOf X x g ∈ A
    · rw [Set.indicator_of_mem hg, Set.indicator_of_mem (show g ∈ frOf X x ⁻¹' A from hg)]; rfl
    · rw [Set.indicator_of_notMem hg, Set.indicator_of_notMem (show g ∉ frOf X x ⁻¹' A from hg)]

  have hnull : riemHaar X.Ψ X.Gm x (frOf X x ⁻¹' Sᶜ) = 0 := by
    have hφm : Measurable (Sᶜ.indicator (1 : Frame X.Ψ r → ℝ≥0∞)) := measurable_one.indicator hSm.compl
    have hφB : ∀ y ∈ X.dom, ∀ b ∈ Bor X.Ψ r,
        Sᶜ.indicator (1 : Frame X.Ψ r → ℝ≥0∞) (rmul y b) = Sᶜ.indicator 1 y := by
      intro y hy b hb; exact hind _ _ _ (by rw [Set.mem_compl_iff, Set.mem_compl_iff, hSB y hy b hb])
    have h := KF _ hφm hφB
    have hzero : ∫⁻ z, Sᶜ.indicator (1 : Frame X.Ψ r → ℝ≥0∞) (cpt X x z) ∂muF X x = 0 := by
      rw [← lintegral_zero (μ := muF X x)]
      refine lintegral_congr_ae ?_
      filter_upwards [hFFae] with z hz
      obtain ⟨z', hz', γ, hγ, b, hb, e⟩ := hz
      have hS : cpt X x z ∈ S := (memS _).2 ⟨γ, hγ, by
        rw [e, ← _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_mul, inv_mul_cancel, _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_one]; exact (memT _).2 ⟨z', hz', b, hb, rfl⟩⟩
      exact Set.indicator_of_notMem (Set.notMem_compl_iff.2 hS) _
    rw [hzero, mul_zero] at h
    rw [hpre, lintegral_indicator_one (hfm hSm.compl)] at h
    exact h

  have hcov : ∀ᵐ g ∂riemHaar X.Ψ X.Gm x, ∃ γ' : inReal X.Ψ X.Gm X.Γ, γ' • g ∈ frOf X x ⁻¹' T := by
    have hae : ∀ᵐ g ∂riemHaar X.Ψ X.Gm x, frOf X x g ∈ S := by
      rw [ae_iff]; exact hnull
    filter_upwards [hae] with g hg
    obtain ⟨γ, hγ, hγT⟩ := (memS _).1 hg
    have hδ : γ⁻¹ ∈ X.Γ := X.Γ.inv_mem hγ
    have hmem : embGL X.Ψ r γ⁻¹ ∈ realSU X.Ψ X.Gm :=
      embGL_mem_realSU X.Ψ X.Gm γ⁻¹ (hdet _ hδ) (X.Γ_stab _ hδ).1
    refine ⟨⟨⟨embGL X.Ψ r γ⁻¹, hmem⟩, Subgroup.mem_subgroupOf.2 (Subgroup.mem_map.2 ⟨γ⁻¹, hδ, rfl⟩)⟩, ?_⟩
    rw [Set.mem_preimage, Subgroup.smul_def, smul_eq_mul, frOf_smul X x _ g γ⁻¹ rfl]
    exact hγT
  have hdisj : Pairwise (Function.onFun (AEDisjoint (riemHaar X.Ψ X.Gm x))
      fun γ' : inReal X.Ψ X.Gm X.Γ => γ' • (frOf X x ⁻¹' T)) := by
    intro γ1 γ2 hne
    refine Disjoint.aedisjoint ?_
    rw [Set.disjoint_left]
    intro g hg1 hg2
    obtain ⟨h1, hh1, rfl⟩ := Set.mem_smul_set.1 hg1
    obtain ⟨h2, hh2, he⟩ := Set.mem_smul_set.1 hg2
    apply hne
    obtain ⟨c1, hc1, e1⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 γ1.2)
    obtain ⟨c2, hc2, e2⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 γ2.2)
    obtain ⟨z1, hz1, b1, hb1, hf1⟩ := (memT _).1 hh1
    obtain ⟨z2, hz2, b2, hb2, hf2⟩ := (memT _).1 hh2
    have hfr : lact c2 (frOf X x h2) = lact c1 (frOf X x h1) := by
      have := congrArg (frOf X x) he
      rwa [Subgroup.smul_def, Subgroup.smul_def, smul_eq_mul, smul_eq_mul,
        frOf_smul X x _ h2 c2 e2, frOf_smul X x _ h1 c1 e1] at this
    have hc : c2⁻¹ * c1 ∈ X.Γ := X.Γ.mul_mem (X.Γ.inv_mem hc2) hc1
    have h21 : rmul (cpt X x z2) b2 = lact (c2⁻¹ * c1) (rmul (cpt X x z1) b1) := by
      rw [← hf2, ← hf1, _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_mul, ← hfr, ← _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_mul, inv_mul_cancel, _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_one]
    have hz : z1 = z2 := by
      refine hFFinj z1 hz1 z2 hz2 _ hc (rmul b1 (invB b2)) (rmul_mem hb1 (invB_mem hb2)) ?_
      rw [← rmul_assoc, _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_rmul, ← h21, rmul_assoc, rmul_invB hb2, rmul_idF]
    subst hz
    have hfree : lact (c2⁻¹ * c1) (cpt X x z1) = rmul (cpt X x z1) (rmul b2 (invB b1)) := by
      rw [← rmul_assoc, h21, _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.FundSetPf.lact_rmul, rmul_assoc, rmul_invB hb1, rmul_idF]
    have h1' := X.Γ_free _ hc (cpt X x z1) (hFFO hz1) _ (rmul_mem hb2 (invB_mem hb1)) hfree
    have hcc : c1 = c2 := (inv_mul_eq_one.1 h1').symm
    subst hcc
    exact Subtype.ext (Subtype.ext (e1.symm.trans e2))

  have hDμ : riemHaar X.Ψ X.Gm x (frOf X x ⁻¹' T) = C * muF X x FF := by
    have hφm : Measurable (T.indicator (1 : Frame X.Ψ r → ℝ≥0∞)) := measurable_one.indicator hTm
    have hφB : ∀ y ∈ X.dom, ∀ b ∈ Bor X.Ψ r,
        T.indicator (1 : Frame X.Ψ r → ℝ≥0∞) (rmul y b) = T.indicator 1 y := by
      intro y _ b hb; exact hind _ _ _ (hTB y b hb)
    have h := KF _ hφm hφB
    have e2 : (fun z => T.indicator (1 : Frame X.Ψ r → ℝ≥0∞) (cpt X x z)) = FF.indicator 1 := by
      funext z
      by_cases hz : z ∈ FF
      · rw [Set.indicator_of_mem ((hcptT z).2 hz), Set.indicator_of_mem hz]; rfl
      · rw [Set.indicator_of_notMem (mt (hcptT z).1 hz), Set.indicator_of_notMem hz]
    rw [hpre, e2, lintegral_indicator_one (hfm hTm), lintegral_indicator_one hFFm] at h
    exact h
  have hfd : IsFundamentalDomain (inReal X.Ψ X.Gm X.Γ) (frOf X x ⁻¹' T) (riemHaar X.Ψ X.Gm x) :=
    ⟨(hfm hTm).nullMeasurableSet, hcov, hdisj⟩
  haveI : Countable (inReal X.Ψ X.Gm X.Γ) := by
    let f : {γ : X.Γ // embGL X.Ψ r (γ : GL (Fin r) E) ∈ realSU X.Ψ X.Gm} → inReal X.Ψ X.Gm X.Γ :=
      fun p => ⟨⟨embGL X.Ψ r p.1, p.2⟩, Subgroup.mem_subgroupOf.2 (Subgroup.mem_map.2 ⟨p.1, p.1.2, rfl⟩)⟩
    refine Function.Surjective.countable (f := f) ?_
    rintro ⟨⟨g, hg⟩, hgm⟩
    obtain ⟨c, hc, e⟩ := Subgroup.mem_map.1 (Subgroup.mem_subgroupOf.1 hgm)
    exact ⟨⟨⟨c, hc⟩, e ▸ hg⟩, Subtype.ext (Subtype.ext e)⟩
  haveI : MeasurableConstSMul (inReal X.Ψ X.Gm X.Γ) (realSU X.Ψ X.Gm) :=
    ⟨fun c => by
      show Measurable fun a : realSU X.Ψ X.Gm => (c : realSU X.Ψ X.Gm) * a
      exact (continuous_const_mul _).measurable⟩
  haveI : (riemHaar X.Ψ X.Gm x).IsMulLeftInvariant := by rw [hμ]; infer_instance
  haveI : SMulInvariantMeasure (inReal X.Ψ X.Gm X.Γ) (realSU X.Ψ X.Gm) (riemHaar X.Ψ X.Gm x) :=
    ⟨fun c s _ => measure_preimage_mul (riemHaar X.Ψ X.Gm x) (c : realSU X.Ψ X.Gm) s⟩
  rw [hfd.covolume_eq_volume, hDμ]

end GlobalTheory.SUCovol
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CovolumeRealSpecialUnitaryEqFlagDomainMass =====

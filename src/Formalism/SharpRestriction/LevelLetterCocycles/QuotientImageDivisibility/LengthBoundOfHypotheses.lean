module

public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit
public import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSAddLeft
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.QpEqUnit
public import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LevNOsmul
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemZeroSubCoe
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfFrame
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDNAlt
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusSqComparisonLetter
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.H2Bound
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ContentBoundLevel
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LemmaDN0
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkFilLevEq
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg
import Formalism.SharpRestriction.LevelLetterCocycles.SaturationUnramifiedOfRingCondition
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemOfExp, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.InIZero, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.NDlCoords, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDN, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemPreG, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LengthBoundOfHypotheses

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemOfExp =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemOfExp", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSAddLeft\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.QpEqUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc PowerSeries Formalism.MainNotions.N.Pv.LocalLengthBound.Ser TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

section E1

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem mem_of_exp [NeZero n] [IsDomain O] (hs : W.s = 1) (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W)
    (hMC : MemCrit W) (hT : IsCrys PD T.ρ) (c : ZMod n) (ζ₀ : LL)
    (hTr : ∀ ζ : LL, IsPrimitiveRoot ζ PD.p → ∃ δ ∈ W.DelF, ∃ χ : LL, χ ≠ 0 ∧
      (∀ (x : ↥(W.N T)) (hx : W.γD T δ x ∈ W.N T) (k : ℤ),
        W.levN T c ζ ⟨W.γD T δ x, hx⟩ k = χ ^ k • W.levN T c ζ₀ x k) ∧
      (∀ f : LetA O n, W.lev c ζ (W.γA δ f) = PowerSeries.rescale χ (W.lev c ζ₀ f)))
    (u₀ : PowerSeries LL) (hu₀ : W.lev c ζ₀ W.q = X * u₀)
    {w : W.DD T} (hwl : (letE c : LetA O n) • w = w) (hwΔ : ∀ δ ∈ W.DelF, W.γD T δ w = w)
    {K : ℕ} (hK : W.Q ^ K • w ∈ W.N T) {dd : ℤ → T.V ⊗[Qp] BdR} (hdd : ∃ m, LB m dd)
    (he : W.levN T c ζ₀ ⟨W.Q ^ K • w, hK⟩ = smulS ((X * u₀) ^ K) dd)
    (hF : ∀ i : ℤ, dd i ∈ Formalism.MainNotions.WachCoordinates.FilLev W T c 0 (-i)) : w ∈ W.N T := by
  apply hMC T hT c w K hK hwl
  intro ζ hζ j
  obtain ⟨u, hu, hu0⟩ := lev_q_simple W c ζ hζ
  obtain ⟨m, hm⟩ := W.levN_supp T c ζ ⟨W.Q ^ K • w, hK⟩
  obtain ⟨dz, hdzLB, hdz⟩ := div_exists hm u hu0 K
  obtain ⟨δ, hδ, χ, hχ0, hN', hA'⟩ := hTr ζ hζ
  have htr := trans_d W T hs hR c δ hδ ζ ζ₀ χ hχ0 hN' hA' (hwΔ δ hδ) hK u u₀ hu hu₀ hu0
    ⟨_, hdzLB⟩ hdd hdz.symm he
  have hanti := Formalism.MainNotions.UnusedSlot80.LevR.filLev_anti W T c 0
  have hDg : Dg (fun a => Formalism.MainNotions.WachCoordinates.FilLev W T c 0 a) 0 dz := by
    intro i
    rw [htr, zero_sub]
    exact (Formalism.MainNotions.WachCoordinates.FilLev W T c 0 (-i)).smul_mem _ (hF i)
  rw [← hdz, mul_pow, smulS_mul hdzLB, smulS_X_pow (LB_smulS hdzLB _)]
  have h := Dg_smulS hanti hdzLB hDg (u ^ K) (j - K)
  rw [show (0 : ℤ) - (j - K) = (K : ℤ) - j by ring] at h
  exact h

end E1

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemOfExp =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.InIZero =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.InIZero", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSAddLeft\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LevNOsmul\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemOfExp\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemZeroSubCoe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfFrame\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedVariables false

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc PowerSeries Formalism.MainNotions.N.Pv.LocalLengthBound.Ser TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

section P4

variable (W : LocWach PD LL O v n)

theorem inI_zero (T : LocLat G Qp LL O) (i : ZMod n) : Formalism.MainNotions.CrystallineLiftingInputs.InI W T i 0 := by
  refine ⟨⟨by simp, fun δ _ => map_zero _⟩, ⟨0, 0, by simp⟩, ⟨0, (W.N T).zero_mem,
    fun δ _ => map_zero _, by simp⟩⟩

theorem inI_sum (T : LocLat G Qp LL O) (i : ZMod n) {ι : Type} (s : Finset ι) (a : ι → O)
    (x : ι → W.DD T) (hx : ∀ k ∈ s, Formalism.MainNotions.CrystallineLiftingInputs.InI W T i (x k)) :
    Formalism.MainNotions.CrystallineLiftingInputs.InI W T i (∑ k ∈ s, a k • x k) := by
  induction s using Finset.induction_on with
  | empty => simpa using inI_zero W T i
  | insert k s hk ih =>
    rw [Finset.sum_insert hk]
    exact Formalism.MainNotions.RamifiedCoefficientChains.S9.inI_add W T (Formalism.MainNotions.RamifiedCoefficientChains.S9.inI_smul W T _ (hx k (Finset.mem_insert_self _ _)))
      (ih fun j hj => hx j (Finset.mem_insert_of_mem hj))

end P4

section Pass4

variable (W : LocWach PD LL O v n)

theorem pass4 [NeZero n] [IsDomain O] [IsPrincipalIdealRing O] [IsFractionRing O LL]
    (hs : W.s = 1) (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W) {T₁ T₂ : LocLat G Qp LL O}
    (F : LatHom T₁.L T₂.L) (hT₁ : IsCrys PD T₁.ρ) (hT₂ : IsCrys PD T₂.ρ) (hMC : MemCrit W)
    (c : ZMod n) (ζ₀ : LL)
    (hTr : ∀ ζ : LL, IsPrimitiveRoot ζ PD.p → ∃ δ ∈ W.DelF, ∃ χ : LL, χ ≠ 0 ∧
      (∀ (x : ↥(W.N T₂)) (hx : W.γD T₂ δ x ∈ W.N T₂) (k : ℤ),
        W.levN T₂ c ζ ⟨W.γD T₂ δ x, hx⟩ k = χ ^ k • W.levN T₂ c ζ₀ x k) ∧
      (∀ f : LetA O n, W.lev c ζ (W.γA δ f) = PowerSeries.rescale χ (W.lev c ζ₀ f)))
    (u₀ : PowerSeries LL) (hu₀ : W.lev c ζ₀ W.q = X * u₀) (hu0 : constantCoeff u₀ ≠ 0)
    {Bn η e₂ m : ℕ} {κ : ℤ} {cc : ℝ} (hB1 : 1 ≤ Bn)
    (hlow : ∀ i : ℤ, (Bn : ℤ) ≤ i → Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ c ≤ Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-i))
    [FiniteDimensional LL ↥(Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-(η : ℤ)))]
    (hrk : Module.finrank LL ↥((Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-(η : ℤ))).map
      (Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 0).mkQ) ≤ m)
    (C : Submodule LL (T₂.V ⊗[Qp] B))
    {FF : Type} [AddCommGroup FF] [Module O FF] [Module.Free O FF] [Module.Finite O FF]
    (F3 : Submodule O FF) (w : ↥F3 →ₗ[O] W.DD T₂)
    (hwD : ∀ f, Formalism.MainNotions.CrystallineLiftingInputs.DL W T₂ c (w f)) (hwK : ∀ f, W.Q ^ (η + Bn) • w f ∈ W.N T₂)
    (d : ↥F3 → ℤ → T₂.V ⊗[Qp] BdR) (hdLB : ∀ f, ∃ m₀, LB m₀ (d f))
    (hde : ∀ f, W.levN T₂ c ζ₀ ⟨W.Q ^ (η + Bn) • w f, hwK f⟩ = smulS ((X * u₀) ^ (η + Bn)) (d f))
    (hdF : ∀ f (i : ℤ), i ≠ 0 → d f i ∈ Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-i))
    (hda : ∀ f g, d (f + g) = d f + d g) (hds : ∀ (o : O) f, d (o • f) = algebraMap O LL o • d f)
    (hell : ∀ f, ∃ ell ∈ (fun z => φVB PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) z)) ''
        Formalism.MainNotions.CrystallineLiftingInputs.Dlat W T₂ (c - 1 - 1 - 1), ell ∈ C ∧
      (PD.p : LL) ^ e₂ • d f 0 - (PD.p : LL) ^ κ •
          ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) ell) ∈
        Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-(η : ℤ)))
    (hL41 : ∀ ell ∈ (fun z => φVB PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) z)) ''
        Formalism.MainNotions.CrystallineLiftingInputs.Dlat W T₂ (c - 1 - 1 - 1), ell ∈ C →
      ∃ y : W.DD T₁, Formalism.MainNotions.CrystallineLiftingInputs.InI W T₁ c y ∧
        ∃ hB : W.Q ^ Bn • W.map F y ∈ W.N T₂,
        ∀ (ζ : LL), IsPrimitiveRoot ζ PD.p → ∀ (u : PowerSeries LL),
          W.lev c ζ W.q = X * u → constantCoeff u ≠ 0 →
        ∀ (dd : ℤ → T₂.V ⊗[Qp] BdR), (∃ m₀, LB m₀ dd) →
          W.levN T₂ c ζ ⟨W.Q ^ Bn • W.map F y, hB⟩ = smulS ((X * u) ^ Bn) dd →
          (∀ i : ℤ, i < (Bn : ℤ) → i ≠ 0 → dd i = 0) ∧
          dd 0 = ((PD.p : LL) ^ κ) • ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) ell) ∧
          ∀ i : ℤ, dd i ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ c)
    (hζ₀ : IsPrimitiveRoot ζ₀ PD.p) :
    ∃ (F4 : Submodule O FF) (hF4 : F4 ≤ F3) (y : ↥F4 →ₗ[O] W.DD T₁),
      Formalism.MainNotions.RamifiedCoefficientChains.S9.PChain (lenOl PD (O := O)) m cc F3 F4 1 0 ∧
      ∀ f : ↥F4, Formalism.MainNotions.CrystallineLiftingInputs.InI W T₁ c (y f) ∧
        Formalism.MainNotions.RamifiedCoefficientChains.S9.Hyp6 W T₂ c (((PD.p : O) ^ e₂) • w (Submodule.inclusion hF4 f) - W.map F (y f)) := by
  classical
  have hp : (PD.p : LL) ≠ 0 := Formalism.MainNotions.UnusedSlot80.ArcF.p_ne_zero W
  have hQ : W.Q = W.q := Q_eq_q W hs
  set Fη := Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-(η : ℤ)) with hFη
  set F0 := Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 0 with hF0

  let dH : ↥F3 →+ (ℤ → T₂.V ⊗[Qp] BdR) :=
    { toFun := d, map_zero' := by
        have h := hda 0 0
        rw [add_zero] at h
        have := congrArg (fun z => z - d 0) h
        simpa using this.symm
      map_add' := hda }

  obtain ⟨r, bF⟩ := Submodule.basisOfPid (Module.Free.chooseBasis O FF) F3
  have hk : ∀ k : Fin r, ∃ ell, ell ∈ (fun z => φVB PD (LL := LL) (V := T₂.V)
      (φVB PD (LL := LL) (V := T₂.V) z)) '' Formalism.MainNotions.CrystallineLiftingInputs.Dlat W T₂ (c - 1 - 1 - 1) ∧ ell ∈ C ∧
      (PD.p : LL) ^ e₂ • d (bF k) 0 - (PD.p : LL) ^ κ •
        ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) ell) ∈ Fη := fun k => by
    obtain ⟨ell, h1, h2, h3⟩ := hell (bF k)
    exact ⟨ell, h1, h2, h3⟩
  choose ell hellD hellC hellF using hk
  have hky : ∀ k : Fin r, ∃ y : W.DD T₁, Formalism.MainNotions.CrystallineLiftingInputs.InI W T₁ c y ∧
      ∃ hB : W.Q ^ Bn • W.map F y ∈ W.N T₂,
      ∀ (ζ : LL), IsPrimitiveRoot ζ PD.p → ∀ (u : PowerSeries LL),
        W.lev c ζ W.q = X * u → constantCoeff u ≠ 0 →
      ∀ (dd : ℤ → T₂.V ⊗[Qp] BdR), (∃ m₀, LB m₀ dd) →
        W.levN T₂ c ζ ⟨W.Q ^ Bn • W.map F y, hB⟩ = smulS ((X * u) ^ Bn) dd →
        (∀ i : ℤ, i < (Bn : ℤ) → i ≠ 0 → dd i = 0) ∧
        dd 0 = ((PD.p : LL) ^ κ) • ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ell k)) ∧
        ∀ i : ℤ, dd i ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ c := fun k => hL41 (ell k) (hellD k) (hellC k)
  choose yk hykI hykB hykE using hky
  set yL : ↥F3 →ₗ[O] W.DD T₁ := bF.constr O yk with hyL
  set ellF : ↥F3 → T₂.V ⊗[Qp] B := fun f => ∑ k, algebraMap O LL (bF.repr f k) • ell k with hellFdef
  have hyLf : ∀ f, yL f = ∑ k, bF.repr f k • yk k := fun f =>
    (bF.constr_apply O yk f).trans (Finsupp.sum_fintype _ _ (by simp))
  have hdsum : ∀ f, d f = ∑ k, algebraMap O LL (bF.repr f k) • d (bF k) := by
    intro f
    conv_lhs => rw [← bF.sum_repr f]
    show dH (∑ k, bF.repr f k • bF k) = _

    rw [map_sum]
    exact Finset.sum_congr rfl fun k _ => hds _ _

  have hA : ∀ f, (PD.p : LL) ^ e₂ • d f 0 - (PD.p : LL) ^ κ •
      ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ellF f)) ∈ Fη := by
    intro f
    have e1 : d f 0 = ∑ k, algebraMap O LL (bF.repr f k) • d (bF k) 0 := by
      rw [hdsum f, Finset.sum_apply]; rfl
    have e2 : ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ellF f)) =
        ∑ k, algebraMap O LL (bF.repr f k) •
          ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ell k)) := by

      simp only [hellFdef, map_sum, map_smul]
    rw [e1, e2, Finset.smul_sum, Finset.smul_sum, ← Finset.sum_sub_distrib]
    refine Submodule.sum_mem _ fun k _ => ?_
    have := Fη.smul_mem (algebraMap O LL (bF.repr f k)) (hellF k)
    convert this using 1
    rw [smul_sub, smul_comm _ (algebraMap O LL (bF.repr f k)),
      smul_comm _ (algebraMap O LL (bF.repr f k))]
  have hellF0 : ellF 0 = 0 := by simp [hellFdef]
  have hellFa : ∀ f g, ellF (f + g) = ellF f + ellF g := by
    intro f g
    simp only [hellFdef, map_add (f := _), Finsupp.add_apply, add_smul, Finset.sum_add_distrib]
  have hellFs : ∀ (o : O) f, ellF (o • f) = algebraMap O LL o • ellF f := by
    intro o f
    simp only [hellFdef, map_smul, Finsupp.smul_apply, smul_eq_mul, map_mul, mul_smul, Finset.smul_sum]
  let ψ4 : ↥F3 →+ (T₂.V ⊗[Qp] BdR) ⧸ F0 :=
    { toFun := fun f => F0.mkQ ((PD.p : LL) ^ e₂ • d f 0 - (PD.p : LL) ^ κ •
        ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ellF f)))
      map_zero' := by
        have h0 : d 0 = 0 := dH.map_zero
        simp [h0, hellF0]
      map_add' := fun f g => by
        rw [← map_add (f := _)]
        congr 1
        rw [hda, hellFa]
        simp only [Pi.add_apply, map_add (f := _), smul_add]
        abel }
  have hψ4 : ∀ (o : O) (x : ↥F3), ψ4 (o • x) = algebraMap O LL o • ψ4 x := by
    intro o x
    show F0.mkQ _ = algebraMap O LL o • F0.mkQ _
    have hX : (PD.p : LL) ^ e₂ • d (o • x) 0 - (PD.p : LL) ^ κ •
        ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ellF (o • x))) =
        algebraMap O LL o • ((PD.p : LL) ^ e₂ • d x 0 - (PD.p : LL) ^ κ •
        ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ellF x))) := by
      rw [hds, hellFs]
      simp only [Pi.smul_apply, map_smul, smul_sub]
      rw [smul_comm _ (algebraMap O LL o), smul_comm _ (algebraMap O LL o)]
    rw [hX, map_smul]
  have hrank4 : Module.finrank LL ↥(Submodule.span LL (Set.range ψ4)) ≤ m := by
    have hsub : Submodule.span LL (Set.range ψ4) ≤ Fη.map F0.mkQ := by
      rw [Submodule.span_le]
      rintro _ ⟨f, rfl⟩
      exact ⟨_, hA f, rfl⟩
    exact (Submodule.finrank_mono hsub).trans hrk
  have ch4 := pchain_of_gen (pstep_rank (lenO := lenOl PD (O := O)) (m := m) (c := cc) F3 ψ4 hψ4 hrank4)
  set F4 := zeroSub F3 ψ4 hψ4 with hF4def
  have hF4 : F4 ≤ F3 := zeroSub_le F3 ψ4 hψ4
  refine ⟨F4, hF4, yL.comp (Submodule.inclusion hF4), ch4, fun f => ⟨?_, ?_⟩⟩
  · show Formalism.MainNotions.CrystallineLiftingInputs.InI W T₁ c (yL (Submodule.inclusion hF4 f))
    rw [hyLf]
    exact inI_sum W T₁ c _ _ _ (fun k _ => hykI k)
  · set f3 := Submodule.inclusion hF4 f with hf3
    show Formalism.MainNotions.RamifiedCoefficientChains.S9.Hyp6 W T₂ c (((PD.p : O) ^ e₂) • w f3 - W.map F (yL f3))
    have hyI : Formalism.MainNotions.CrystallineLiftingInputs.InI W T₁ c (yL f3) := by
      rw [hyLf]; exact inI_sum W T₁ c _ _ _ (fun k _ => hykI k)
    have hmapy : W.map F (yL f3) = ∑ k, bF.repr f3 k • W.map F (yk k) := by

      rw [hyLf, map_sum]
      exact Finset.sum_congr rfl fun k _ => Formalism.MainNotions.UnusedSlot80.ArcC.map_smulO W F _ _
    have hFyD : Formalism.MainNotions.CrystallineLiftingInputs.DL W T₂ c (W.map F (yL f3)) :=
      ⟨by rw [← Formalism.MainNotions.UnusedSlot80.ArcC.map_smulA, hyI.1.1], fun δ hδ => by rw [← W.map_γ, hyI.1.2 δ hδ]⟩
    have hwD' := hwD f3
    have hw'D : Formalism.MainNotions.CrystallineLiftingInputs.DL W T₂ c (((PD.p : O) ^ e₂) • w f3 - W.map F (yL f3)) := by
      refine ⟨?_, fun δ hδ => ?_⟩
      · rw [smul_sub, osmul_comm W T₂, hwD'.1, hFyD.1]
      · rw [map_sub, map_smul, hwD'.2 δ hδ, hFyD.2 δ hδ]
    have hB : W.Q ^ Bn • W.map F (yL f3) ∈ W.N T₂ := by
      rw [hmapy, Finset.smul_sum]
      refine Submodule.sum_mem _ fun k _ => ?_
      rw [osmul_comm W T₂, ← algebraMap_smul (LetA O n)]
      exact (W.N T₂).smul_mem _ (hykB k)
    have hKy : W.Q ^ (η + Bn) • W.map F (yL f3) ∈ W.N T₂ := by
      rw [pow_add, mul_smul]; exact (W.N T₂).smul_mem _ hB
    have hK' : W.Q ^ (η + Bn) • (((PD.p : O) ^ e₂) • w f3 - W.map F (yL f3)) ∈ W.N T₂ := by
      rw [smul_sub, osmul_comm W T₂]
      refine (W.N T₂).sub_mem ?_ hKy
      rw [← algebraMap_smul (LetA O n)]
      exact (W.N T₂).smul_mem _ (hwK f3)

    have hexk : ∀ k, ∃ dk : ℤ → T₂.V ⊗[Qp] BdR, (∃ m₀, LB m₀ dk) ∧
        W.levN T₂ c ζ₀ ⟨W.Q ^ Bn • W.map F (yk k), hykB k⟩ = smulS ((X * u₀) ^ Bn) dk := by
      intro k
      obtain ⟨m₁, hm₁⟩ := W.levN_supp T₂ c ζ₀ ⟨W.Q ^ Bn • W.map F (yk k), hykB k⟩
      obtain ⟨dk, h1, h2⟩ := div_exists hm₁ u₀ hu0 Bn
      exact ⟨dk, ⟨_, h1⟩, h2.symm⟩
    choose dk hdkLB hdke using hexk
    have hdkP := fun k => hykE k ζ₀ hζ₀ u₀ hu₀ hu0 (dk k) (hdkLB k) (hdke k)
    choose mk hmk using hdkLB
    obtain ⟨md, hmd⟩ := hdLB f3
    set M : ℤ := -(|md| + ∑ k, |mk k|) with hM
    have hMk : ∀ k, M ≤ mk k := fun k => by
      have h1 : |mk k| ≤ ∑ j, |mk j| :=
        Finset.single_le_sum (f := fun j => |mk j|) (fun j _ => abs_nonneg _) (Finset.mem_univ k)
      have h2 := neg_abs_le (mk k)
      have h3 := abs_nonneg md
      omega
    have hMd : M ≤ md := by
      have h1 : 0 ≤ ∑ j, |mk j| := Finset.sum_nonneg fun j _ => abs_nonneg _
      have h2 := neg_abs_le md
      omega
    have hLBk : ∀ k, LB M (dk k) := fun k => LB_mono (hmk k) (hMk k)
    set ddy : ℤ → T₂.V ⊗[Qp] BdR := ∑ k, algebraMap O LL (bF.repr f3 k) • dk k with hddy
    have hLBy : LB M ddy := by
      intro j hj
      simp only [hddy, Finset.sum_apply, Pi.smul_apply, hLBk _ j hj, smul_zero, Finset.sum_const_zero]
    have hsumS : ∀ (g : PowerSeries LL) (s : Finset (Fin r)),
        smulS g (∑ k ∈ s, algebraMap O LL (bF.repr f3 k) • dk k) =
          ∑ k ∈ s, algebraMap O LL (bF.repr f3 k) • smulS g (dk k) := by
      intro g s
      induction s using Finset.induction_on with
      | empty => funext j; simp [smulS]
      | insert k s hk ih =>
        have hLBs : LB M (∑ k ∈ s, algebraMap O LL (bF.repr f3 k) • dk k) := by
          intro j hj
          simp only [Finset.sum_apply, Pi.smul_apply, hLBk _ j hj, smul_zero, Finset.sum_const_zero]
        rw [Finset.sum_insert hk, Finset.sum_insert hk, smulS_add (LB_smul (hLBk k) _) hLBs,
          smulS_smul (hLBk k), ih]
    have hlevB : W.levN T₂ c ζ₀ ⟨W.Q ^ Bn • W.map F (yL f3), hB⟩ = smulS ((X * u₀) ^ Bn) ddy := by
      have e1 : (⟨W.Q ^ Bn • W.map F (yL f3), hB⟩ : ↥(W.N T₂)) =
          ∑ k, bF.repr f3 k • (⟨W.Q ^ Bn • W.map F (yk k), hykB k⟩ : ↥(W.N T₂)) := by
        apply Subtype.ext
        show W.Q ^ Bn • W.map F (yL f3) = ((∑ k, bF.repr f3 k •
          (⟨W.Q ^ Bn • W.map F (yk k), hykB k⟩ : ↥(W.N T₂)) : ↥(W.N T₂)) : W.DD T₂)
        rw [hmapy, Finset.smul_sum, Submodule.coe_sum]
        exact Finset.sum_congr rfl fun k _ => by
          show W.Q ^ Bn • (bF.repr f3 k • W.map F (yk k)) =
            bF.repr f3 k • (W.Q ^ Bn • W.map F (yk k))
          exact osmul_comm W T₂ _ _ _

      rw [e1, map_sum, hddy, hsumS]
      exact Finset.sum_congr rfl fun k _ => by rw [levN_osmul W T₂ c ζ₀, hdke k]
    have hlevy : W.levN T₂ c ζ₀ ⟨W.Q ^ (η + Bn) • W.map F (yL f3), hKy⟩ =
        smulS ((X * u₀) ^ (η + Bn)) ddy := by
      have e1 : (⟨W.Q ^ (η + Bn) • W.map F (yL f3), hKy⟩ : ↥(W.N T₂)) =
          W.Q ^ η • (⟨W.Q ^ Bn • W.map F (yL f3), hB⟩ : ↥(W.N T₂)) :=
        Subtype.ext (by
          show W.Q ^ (η + Bn) • W.map F (yL f3) = W.Q ^ η • (W.Q ^ Bn • W.map F (yL f3))
          rw [pow_add, mul_smul])
      have e2 : W.levN T₂ c ζ₀ (W.Q ^ η • (⟨W.Q ^ Bn • W.map F (yL f3), hB⟩ : ↥(W.N T₂))) =
          smulS (W.lev c ζ₀ (W.Q ^ η)) (W.levN T₂ c ζ₀ ⟨W.Q ^ Bn • W.map F (yL f3), hB⟩) :=
        funext fun j => W.levN_smul T₂ c ζ₀ _ _ j
      rw [e1, e2, hlevB, map_pow, hQ, hu₀, ← smulS_mul hLBy, ← pow_add]
    have hlev' : W.levN T₂ c ζ₀ ⟨W.Q ^ (η + Bn) • (((PD.p : O) ^ e₂) • w f3 - W.map F (yL f3)), hK'⟩ =
        smulS ((X * u₀) ^ (η + Bn)) (((PD.p : LL) ^ e₂) • d f3 - ddy) := by
      have e1 : (⟨W.Q ^ (η + Bn) • (((PD.p : O) ^ e₂) • w f3 - W.map F (yL f3)), hK'⟩ : ↥(W.N T₂)) =
          ((PD.p : O) ^ e₂) • (⟨W.Q ^ (η + Bn) • w f3, hwK f3⟩ : ↥(W.N T₂)) -
            ⟨W.Q ^ (η + Bn) • W.map F (yL f3), hKy⟩ :=
        Subtype.ext (by
          show W.Q ^ (η + Bn) • (((PD.p : O) ^ e₂) • w f3 - W.map F (yL f3)) =
            ((PD.p : O) ^ e₂) • (W.Q ^ (η + Bn) • w f3) - W.Q ^ (η + Bn) • W.map F (yL f3)
          rw [smul_sub, osmul_comm W T₂])
      rw [e1, map_sub, levN_osmul W T₂ c ζ₀, hde f3, hlevy, smulS_sub (LB_smul (LB_mono hmd hMd) _) hLBy,
        smulS_smul (LB_mono hmd hMd), map_pow, map_natCast]
    have hFil : ∀ i : ℤ, ((((PD.p : LL) ^ e₂) • d f3 - ddy) i) ∈ Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-i) := by
      intro i
      have hddyi : ddy i = ∑ k, algebraMap O LL (bF.repr f3 k) • dk k i := by
        simp only [hddy, Finset.sum_apply, Pi.smul_apply]
      simp only [Pi.sub_apply, Pi.smul_apply]
      by_cases hi0 : i = 0
      · subst hi0
        have hz : ψ4 f3 = 0 := (mem_zeroSub_coe F3 ψ4 hψ4 f3).1 f.2
        have hz' : (PD.p : LL) ^ e₂ • d f3 0 - (PD.p : LL) ^ κ •
            ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ellF f3)) ∈ F0 :=
          (Submodule.Quotient.mk_eq_zero F0).1 hz
        have hd0 : ddy 0 = (PD.p : LL) ^ κ •
            ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (ellF f3)) := by
          rw [hddyi]

          simp only [hellFdef, map_sum, map_smul, Finset.smul_sum]
          exact Finset.sum_congr rfl fun k _ => by rw [(hdkP k).2.1, smul_comm]
        rw [hd0, neg_zero]
        exact hz'
      · by_cases hiB : i < (Bn : ℤ)
        · have h0 : ddy i = 0 := by
            rw [hddyi]
            exact Finset.sum_eq_zero fun k _ => by rw [(hdkP k).1 i hiB hi0, smul_zero]
          rw [h0, sub_zero]
          exact Submodule.smul_mem _ _ (hdF f3 i hi0)
        · have hD : ddy i ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ c := by
            rw [hddyi]
            exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ ((hdkP k).2.2 i)
          exact Submodule.sub_mem _ (Submodule.smul_mem _ _ (hdF f3 i hi0))
            (hlow i (by omega) hD)
    exact ⟨mem_of_exp W T₂ hs hR hMC hT₂ c ζ₀ hTr u₀ hu₀ hw'D.1 hw'D.2 hK'
      ⟨M, LB_sub (LB_smul (LB_mono hmd hMd) _) hLBy⟩ hlev' hFil, hw'D⟩

end Pass4

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.InIZero =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.NDlCoords =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.NDlCoords", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemZeroSubCoe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

section GenM

variable {O : Type} [CommRing O] [IsDomain O] [IsPrincipalIdealRing O] {LL : Type} [Field LL]
  [Algebra O LL] [IsFractionRing O LL] {M : Type} [AddCommGroup M] [Module O M] [Module.Finite O M]
  {U : Type} [AddCommGroup U] [Module LL U]

theorem genM (φ : M →+ U) (hφ : ∀ (c : O) (x : M), φ (c • x) = algebraMap O LL c • φ x) {m : ℕ}
    (hm : Module.finrank LL ↥(Submodule.span LL (Set.range φ)) ≤ m) :
    ∃ s : Finset M, s.card ≤ m ∧ ∀ x : M, ∃ y ∈ Submodule.span O (↑s : Set M), φ (x - y) = 0 := by
  let A : Submodule O M := ⊤
  let φ' : ↥A →+ U := φ.comp A.subtype.toAddMonoidHom
  have hφ' : ∀ (c : O) (x : ↥A), φ' (c • x) = algebraMap O LL c • φ' x := fun c x => hφ c x
  have hr : Set.range φ' = Set.range φ := by
    ext y
    constructor
    · rintro ⟨x, rfl⟩; exact ⟨x, rfl⟩
    · rintro ⟨x, rfl⟩; exact ⟨⟨x, trivial⟩, rfl⟩
  have hm' : Module.finrank LL ↥(Submodule.span LL (Set.range φ')) ≤ m := by rwa [hr]
  obtain ⟨-, Q, i1, i2, ob, hker, hgen, -⟩ :=
    pstep_rank (lenO := 0) (m := m) (c := 0) A φ' hφ' hm'
  obtain ⟨sQ, hsQ, hspan⟩ := hgen trivial
  obtain ⟨t, ht, htN, hNt⟩ := Formalism.MainNotions.RamifiedCoefficientChains.exists_gen_of_le_span sQ (LinearMap.range ob)
    (by rw [hspan]; exact le_top)
  have hpre : ∀ q : ↥t, ∃ x : ↥A, ob x = q := fun q => htN q.2
  choose f hf using hpre
  refine ⟨Finset.univ.image (fun q : ↥t => ((f q : ↥A) : M)), ?_, fun x => ?_⟩
  · refine Finset.card_image_le.trans ?_
    simp only [Finset.card_univ, Fintype.card_coe]
    exact ht.trans hsQ
  · have hx : ob ⟨x, trivial⟩ ∈ Submodule.span O (↑t : Set Q) := hNt ⟨_, rfl⟩
    rw [Submodule.mem_span_finset] at hx
    obtain ⟨a, -, hax⟩ := hx
    set y : M := ∑ q : ↥t, a q • ((f q : ↥A) : M) with hy
    refine ⟨y, Submodule.sum_mem _ fun q _ => Submodule.smul_mem _ _
      (Submodule.subset_span (Finset.mem_coe.2 (Finset.mem_image_of_mem _ (Finset.mem_univ q)))), ?_⟩
    have hoby : ob ⟨y, trivial⟩ = ob ⟨x, trivial⟩ := by
      have e : (⟨y, trivial⟩ : ↥A) = ∑ q : ↥t, a q • f q := Subtype.ext (by simp [hy])

      rw [e, map_sum, ← hax]
      rw [← Finset.sum_coe_sort t]
      exact Finset.sum_congr rfl fun q _ => by rw [map_smul, hf q]
    have h0 : ob (⟨x, trivial⟩ - ⟨y, trivial⟩) = 0 := by rw [map_sub, hoby, sub_self]
    have hz := (hker _).1 h0
    have := (mem_zeroSub_coe A φ' hφ' (⟨x, trivial⟩ - ⟨y, trivial⟩)).1 hz
    simpa [φ'] using this

end GenM

section Frame

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem NDl_coords (i : ZMod n) (hmod : Formalism.MainNotions.DeltaInvariantLattices.wachModuleOverLetters W T W.π₀) :
    ∃ (d : ℕ) (b : Fin d → W.DD T), (∀ k, b k ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) ∧
      ∀ y ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i, ∃ α : Fin d → O,
        Formalism.MainNotions.ArcLiftingSetup.cmpD W T y = ∑ k, algebraMap O LL (α k) • Formalism.MainNotions.ArcLiftingSetup.cmpD W T (b k) := by
  obtain ⟨d, b, hb⟩ := Formalism.MainNotions.UnusedSlot80.Relay2.frame_exists W T i hmod
  have hbN : ∀ k, b k ∈ W.N T := fun k => (hb.1 k).1.1
  have hbl : ∀ k, (letE i : LetA O n) • b k = b k := fun k =>
    _root_.Formalism.MainNotions.LiftingTheory.frame_letE_fix W T i (hb.1 k).2
  refine ⟨d, b, fun k => ⟨hbN k, hbl k, (hb.1 k).1.2⟩, fun y hy => ?_⟩
  have hy' : y ∈ W.N T ∧ Formalism.MainNotions.CrystallineLiftingInputs.DL W T i y := hy
  have hyi : Formalism.MainNotions.LiftingTheory.InNΔi W T i y :=
    Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_of W T i ⟨hy'.1, hy'.2.2⟩ hy'.2.1
  obtain ⟨a, ⟨-, hya⟩, -⟩ := hb.2 y hyi
  refine ⟨fun k => PowerSeries.constantCoeff ((a k) i), ?_⟩
  rw [hya, cmpD_sum W T _ _ (fun k _ => (W.N T).smul_mem _ (hbN k))]
  exact Finset.sum_congr rfl fun k _ => cmpD_smul_letter W T i (a k) (hbN k) (hbl k)

end Frame

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.NDlCoords =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDN =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDN", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDNAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

section Lin

variable {O : Type} [CommRing O] {A M : Type} [AddCommGroup A] [Module O A] [AddCommGroup M]
  [Module O M]

theorem linLift (K : Submodule O M) (R : A → M → Prop) (hex : ∀ a, ∃ x, R a x)
    (hadd : ∀ a a' x x', R a x → R a' x' → R (a + a') (x + x'))
    (hsmul : ∀ (o : O) a x, R a x → R (o • a) (o • x))
    (huniq : ∀ a x x', R a x → R a x' → x - x' ∈ K) :
    ∃ ψ : A →ₗ[O] M ⧸ K, ∀ a, ∃ x, R a x ∧ ψ a = K.mkQ x := by
  choose g hg using hex
  refine ⟨{ toFun := fun a => K.mkQ (g a), map_add' := ?_, map_smul' := ?_ }, fun a => ⟨g a, hg a, rfl⟩⟩
  · intro a a'
    rw [← map_add (f := _)]
    exact (Submodule.Quotient.eq K).2 (huniq _ _ _ (hg (a + a')) (hadd _ _ _ _ (hg a) (hg a')))
  · intro o a
    rw [RingHom.id_apply, ← map_smul]
    exact (Submodule.Quotient.eq K).2 (huniq _ _ _ (hg (o • a)) (hsmul o _ _ (hg a)))

end Lin

section bigCellDetWeightedEnergyIntegral

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem pchain_DN' (i : ZMod n) (k : ℕ) {m : ℕ} {cc : ℝ} {FF : Type} [AddCommGroup FF]
    [Module O FF] (K : Submodule O ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i)) (s : Finset (W.DD T))
    (hs : s.card ≤ m) (hsN : (↑s : Set (W.DD T)) ⊆ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) (L kO : ℕ)
    (hL : Module.length O (↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) ⧸
      (Xd W T i k ⊔ Submodule.span O (↑s : Set (W.DD T))).comap
        (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i).subtype) ≤ (L : ℕ∞))
    (hkO : lenOl PD (O := O) = kO) (hLc : (L : ℝ) ≤ cc * kO) (A : Submodule O FF)
    (ψ : ↥A →ₗ[O] ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) ⧸ K) :
    Formalism.MainNotions.RamifiedCoefficientChains.S9.PChain (lenOl PD (O := O)) m cc A
      (kerSub A ψ (((Xd W T i k).comap (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i).subtype).map K.mkQ)) 1 1 := by
  set X := (Xd W T i k).comap (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i).subtype with hXdef
  set Y := (Xd W T i k ⊔ Submodule.span O (↑s : Set (W.DD T))).comap
    (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i).subtype with hYdef
  have hXY : X ≤ Y := Submodule.comap_mono le_sup_left
  have hlen : Module.length O ((↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) ⧸ K) ⧸ Y.map K.mkQ) ≤ (L : ℕ∞) := by
    rw [(Submodule.quotientQuotientEquivQuotientSup K Y).length_eq]
    refine le_trans ?_ hL
    exact Module.length_le_of_surjective (Submodule.mapQ Y (K ⊔ Y) LinearMap.id
      (fun y hy => Submodule.mem_sup_right (by simpa using hy)))
      (fun z => by
        obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ z
        exact ⟨Submodule.Quotient.mk x, rfl⟩)
  have h1 := pstep_len (m := m) (c := cc) A ψ (Y.map K.mkQ) L kO hlen hkO hLc
  set A₁ := kerSub A ψ (Y.map K.mkQ) with hA₁def
  have hA₁ : A₁ ≤ A := kerSub_le A ψ _
  set ψ₁ : ↥A₁ →ₗ[O] ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) ⧸ K := ψ.comp (Submodule.inclusion hA₁)
  set sN : Finset ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) := s.subtype (· ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i)
  set s' := sN.image K.mkQ
  have hcard : s'.card ≤ m := by
    refine Finset.card_image_le.trans (le_trans ?_ hs)
    rw [Finset.card_subtype]
    exact Finset.card_filter_le _ _
  have hspan : Submodule.span O (↑s : Set (W.DD T)) =
      (Submodule.span O (↑sN : Set ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i))).map
        (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i).subtype := by
    rw [Submodule.map_span]
    congr 1
    ext y
    constructor
    · intro hy
      exact ⟨⟨y, hsN hy⟩, Finset.mem_subtype.2 hy, rfl⟩
    · rintro ⟨z, hz, rfl⟩
      exact Finset.mem_subtype.1 hz
  have hY : Y ≤ X ⊔ Submodule.span O (↑sN : Set ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i)) := by
    intro z hz
    have hz' : (z : W.DD T) ∈ Xd W T i k ⊔ Submodule.span O (↑s : Set (W.DD T)) := hz
    obtain ⟨x, hx, t, ht, hxt⟩ := Submodule.mem_sup.1 hz'
    rw [hspan] at ht
    obtain ⟨t', ht', rfl⟩ := Submodule.mem_map.1 ht
    have hxN : x ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i := by
      have e : x = (z : W.DD T) - (t' : W.DD T) := by rw [← hxt]; simp
      rw [e]; exact (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i).sub_mem z.2 t'.2
    refine Submodule.mem_sup.2 ⟨⟨x, hxN⟩, hx, t', ht', Subtype.ext ?_⟩
    simpa using hxt
  have hgen : ∀ a, ψ₁ a ∈ X.map K.mkQ ⊔ Submodule.span O (↑s' : Set _) := by
    intro a
    have ha : ψ ⟨(a : FF), hA₁ a.2⟩ ∈ Y.map K.mkQ := (mem_kerSub_coe A ψ _ ⟨a, hA₁ a.2⟩).1 a.2
    have hle : Y.map K.mkQ ≤ X.map K.mkQ ⊔ Submodule.span O (↑s' : Set _) := by
      calc Y.map K.mkQ ≤ (X ⊔ Submodule.span O (↑sN : Set _)).map K.mkQ := Submodule.map_mono hY
        _ = X.map K.mkQ ⊔ (Submodule.span O (↑sN : Set _)).map K.mkQ := Submodule.map_sup _ _ _
        _ = X.map K.mkQ ⊔ Submodule.span O (↑s' : Set _) := by
          rw [Submodule.map_span, Finset.coe_image]
    exact hle ha
  have h2 := pstep_gen (lenO := lenOl PD (O := O)) (m := m) (c := cc) A₁ ψ₁ (X.map K.mkQ) s' hcard hgen
  have heq : kerSub A₁ ψ₁ (X.map K.mkQ) = kerSub A ψ (X.map K.mkQ) := by
    ext x
    constructor
    · intro hx
      obtain ⟨hx1, hx2⟩ := (mem_kerSub A₁ ψ₁ _ x).1 hx
      exact (mem_kerSub A ψ _ x).2 ⟨hA₁ hx1, hx2⟩
    · intro hx
      obtain ⟨hx1, hx2⟩ := (mem_kerSub A ψ _ x).1 hx
      have hx1' : x ∈ A₁ := (mem_kerSub A ψ _ x).2 ⟨hx1, Submodule.map_mono hXY hx2⟩
      exact (mem_kerSub A₁ ψ₁ _ x).2 ⟨hx1', hx2⟩
  rw [heq] at h2
  exact (pchain_of_len h1).trans (pchain_of_gen h2)

end bigCellDetWeightedEnergyIntegral

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDN =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemPreG =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemPreG", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDNAlt\nimport Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusSqComparisonLetter\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.NDlCoords\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PchainDN\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSAddLeft\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc PowerSeries Formalism.MainNotions.N.Pv.LocalLengthBound.Ser TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

section Pre

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

def preG (i : ZMod n) {U : Type} [AddCommGroup U] [Module LL U]
    (G : (T.V ⊗[Qp] B) →ₗ[LL] U) (Z : Submodule LL U) :
    Submodule O ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) where
  carrier := {x | G (Formalism.MainNotions.ArcLiftingSetup.cmpD W T (x : W.DD T)) ∈ Z}
  add_mem' := fun {a b} ha hb => by
    show G (Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((a : W.DD T) + b)) ∈ Z
    rw [cmpD_add W T (NDl_N W T a.2) (NDl_N W T b.2), map_add (f := _)]
    exact Z.add_mem ha hb
  zero_mem' := by
    show G (Formalism.MainNotions.ArcLiftingSetup.cmpD W T 0) ∈ Z
    rw [cmpD_zero W T, map_zero]; exact Z.zero_mem
  smul_mem' := fun o x hx => by
    show G (Formalism.MainNotions.ArcLiftingSetup.cmpD W T (o • (x : W.DD T))) ∈ Z
    rw [cmpD_osmul W T o (NDl_N W T x.2), map_smul]
    exact Z.smul_mem _ hx

end Pre

section Pass3

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem pass3 [IsDomain O] [IsPrincipalIdealRing O] [IsFractionRing O LL]
    (hs : W.s = 1) (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W) (h3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T)
    (hmod : Formalism.MainNotions.DeltaInvariantLattices.wachModuleOverLetters W T W.π₀) (c : ZMod n) {hh e₂ m : ℕ} {κ : ℤ} {cc : ℝ} (η : ℕ)
    (hM' : ∀ z ∈ W.Nl T (c - 1 - 1 - 1), W.Q ^ hh • W.φD T z ∈ W.N T)
    (hDN : ∃ s : Finset (W.DD T), s.card ≤ m ∧
      (↑s : Set (W.DD T)) ⊆ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1) ∧
      ∃ L kO : ℕ, Module.length O (↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1)) ⧸
          (Xd W T (c - 1 - 1) hh ⊔ Submodule.span O (↑s : Set (W.DD T))).comap
            (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1)).subtype) ≤ (L : ℕ∞) ∧
        lenOl PD (O := O) = kO ∧ (L : ℝ) ≤ cc * kO)
    (C : Submodule LL (T.V ⊗[Qp] B)) [FiniteDimensional LL ↥(DcrisL PD T.ρ (W.emb (c - 1)))]
    (hRk : Module.finrank LL ↥((DcrisL PD T.ρ (W.emb (c - 1))).map C.mkQ) ≤ m)
    {FF : Type} [AddCommGroup FF] [Module O FF] (A : Submodule O FF)
    (d0 : ↥A → T.V ⊗[Qp] BdR) (hd0a : ∀ f g, d0 (f + g) = d0 f + d0 g)
    (hd0s : ∀ (o : O) f, d0 (o • f) = algebraMap O LL o • d0 f)
    (hex : ∀ f, ∃ x ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1),
      (PD.p : LL) ^ e₂ • d0 f - (PD.p : LL) ^ (κ - hh) • ιV PD (LL := LL) (V := T.V)
        (φVB PD (LL := LL) (V := T.V) (φVB PD (LL := LL) (V := T.V) (Formalism.MainNotions.ArcLiftingSetup.cmpD W T x))) ∈
        Formalism.MainNotions.WachCoordinates.FilLev W T c 0 (-(η : ℤ))) :
    ∃ (F3 : Submodule O FF) (hF3 : F3 ≤ A),
      Formalism.MainNotions.RamifiedCoefficientChains.S9.PChain (lenOl PD (O := O)) m cc A F3 2 1 ∧
      ∀ f : ↥F3, ∃ ell ∈ (fun z => φVB PD (LL := LL) (V := T.V) (φVB PD (LL := LL) (V := T.V) z)) ''
          Formalism.MainNotions.CrystallineLiftingInputs.Dlat W T (c - 1 - 1 - 1), ell ∈ C ∧
        (PD.p : LL) ^ e₂ • d0 (Submodule.inclusion hF3 f) - (PD.p : LL) ^ κ •
          ιV PD (LL := LL) (V := T.V) (φVB PD (LL := LL) (V := T.V) ell) ∈
          Formalism.MainNotions.WachCoordinates.FilLev W T c 0 (-(η : ℤ)) := by
  have hp : (PD.p : LL) ≠ 0 := Formalism.MainNotions.UnusedSlot80.ArcF.p_ne_zero W
  set Fη := Formalism.MainNotions.WachCoordinates.FilLev W T c 0 (-(η : ℤ)) with hFη
  set φ1 : (T.V ⊗[Qp] B) →ₗ[LL] (T.V ⊗[Qp] B) := φVB PD (LL := LL) (V := T.V) with hφ1
  set φ2 : (T.V ⊗[Qp] B) →ₗ[LL] (T.V ⊗[Qp] B) := φ1.comp φ1 with hφ2
  set ιv : (T.V ⊗[Qp] B) →ₗ[LL] (T.V ⊗[Qp] BdR) := ιV PD (LL := LL) (V := T.V) with hιv
  set Gx := ιv.comp φ2 with hGx
  set G3 := ιv.comp (φ1.comp φ2) with hG3
  set K3 := preG W T (c - 1 - 1) Gx Fη with hK3

  let R : ↥A → ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1)) → Prop := fun f x =>
    (PD.p : LL) ^ e₂ • d0 f - (PD.p : LL) ^ (κ - hh) • Gx (Formalism.MainNotions.ArcLiftingSetup.cmpD W T (x : W.DD T)) ∈ Fη
  have hex' : ∀ f, ∃ x, R f x := fun f => by
    obtain ⟨x, hx, hx'⟩ := hex f
    exact ⟨⟨x, hx⟩, hx'⟩
  have hadd : ∀ f g x x', R f x → R g x' → R (f + g) (x + x') := by
    intro f g x x' h1 h2
    show _ ∈ Fη
    have e : Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((x + x' : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1))) : W.DD T) =
        Formalism.MainNotions.ArcLiftingSetup.cmpD W T (x : W.DD T) + Formalism.MainNotions.ArcLiftingSetup.cmpD W T (x' : W.DD T) :=
      cmpD_add W T (NDl_N W T x.2) (NDl_N W T x'.2)
    rw [e, hd0a, map_add (f := _), smul_add, smul_add]
    have := Fη.add_mem h1 h2
    convert this using 1
    abel
  have hsm : ∀ (o : O) f x, R f x → R (o • f) (o • x) := by
    intro o f x h
    show _ ∈ Fη
    have e : Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((o • x : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1))) : W.DD T) =
        algebraMap O LL o • Formalism.MainNotions.ArcLiftingSetup.cmpD W T (x : W.DD T) :=
      cmpD_osmul W T o (NDl_N W T x.2)
    rw [e, hd0s, map_smul, smul_comm _ (algebraMap O LL o), smul_comm _ (algebraMap O LL o),
      ← smul_sub]
    exact Fη.smul_mem _ h
  have huniq : ∀ f x x', R f x → R f x' → x - x' ∈ K3 := by
    intro f x x' h1 h2
    show Gx (Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((x - x' : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1))) : W.DD T)) ∈ Fη
    rw [Submodule.coe_sub, cmpD_sub W T (NDl_N W T x.2) (NDl_N W T x'.2), map_sub]
    have h := Fη.sub_mem h2 h1
    rw [sub_sub_sub_cancel_left, ← smul_sub] at h
    have h' := Fη.smul_mem ((PD.p : LL) ^ (κ - hh))⁻¹ h
    rwa [smul_smul, inv_mul_cancel₀ (zpow_ne_zero _ hp), one_smul] at h'
  obtain ⟨ψ3, hψ3⟩ := linLift K3 R hex' hadd hsm huniq
  obtain ⟨s₂, hs₂, hs₂N, L, kO, hL, hkO, hLc⟩ := hDN
  have ch1 := pchain_DN' W T (c - 1 - 1) hh K3 s₂ hs₂ hs₂N L kO hL hkO hLc A ψ3
  set F3b := kerSub A ψ3 (((Xd W T (c - 1 - 1) hh).comap
    (Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1)).subtype).map K3.mkQ) with hF3bdef
  have hF3b : F3b ≤ A := kerSub_le _ _ _

  set Amb := preG W T (c - 1 - 1 - 1) G3 Fη with hAmb
  let R3 : ↥F3b → ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1)) → Prop := fun f y =>
    (PD.p : LL) ^ e₂ • d0 (Submodule.inclusion hF3b f) -
      (PD.p : LL) ^ κ • G3 (Formalism.MainNotions.ArcLiftingSetup.cmpD W T (y : W.DD T)) ∈ Fη
  have hex3 : ∀ f, ∃ y, R3 f y := by
    intro f
    have hf := (mem_kerSub_coe A ψ3 _ (Submodule.inclusion hF3b f)).1 f.2
    obtain ⟨x, hxX, hxe⟩ := Submodule.mem_map.1 hf
    obtain ⟨xf, hRf, hψf⟩ := hψ3 (Submodule.inclusion hF3b f)
    rw [hψf] at hxe
    have hdiff : xf - x ∈ K3 := (Submodule.Quotient.eq K3).1 hxe.symm
    obtain ⟨y, hy, hyx⟩ := cmp_of_mem_X W T hs hR h3 hM' hxX
    refine ⟨⟨y, hy⟩, ?_⟩
    show _ ∈ Fη
    have hk : Gx (Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((xf - x : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1))) :
        W.DD T)) ∈ Fη := hdiff
    rw [Submodule.coe_sub, cmpD_sub W T (NDl_N W T xf.2) (NDl_N W T x.2), map_sub] at hk
    have hGxx : Gx (Formalism.MainNotions.ArcLiftingSetup.cmpD W T (x : W.DD T)) =
        (PD.p : LL) ^ hh • G3 (Formalism.MainNotions.ArcLiftingSetup.cmpD W T y) := by
      have hyx' : Formalism.MainNotions.ArcLiftingSetup.cmpD W T (x : W.DD T) =
          (PD.p : LL) ^ hh • φVB PD (LL := LL) (V := T.V) (Formalism.MainNotions.ArcLiftingSetup.cmpD W T y) := hyx
      rw [hyx']
      simp only [hGx, hG3, LinearMap.comp_apply, map_smul]
      rfl
    have := Fη.add_mem hRf (Fη.smul_mem ((PD.p : LL) ^ (κ - hh)) hk)
    rw [hGxx] at this
    have hsc : (PD.p : LL) ^ (κ - hh) * (PD.p : LL) ^ hh = (PD.p : LL) ^ κ := by
      rw [← zpow_natCast, ← zpow_add₀ hp, sub_add_cancel]
    convert this using 1
    rw [smul_sub, smul_smul, hsc]
    abel
  have hadd3 : ∀ f g y y', R3 f y → R3 g y' → R3 (f + g) (y + y') := by
    intro f g y y' h1 h2
    show _ ∈ Fη
    have e : Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((y + y' : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1))) :
        W.DD T) = Formalism.MainNotions.ArcLiftingSetup.cmpD W T (y : W.DD T) + Formalism.MainNotions.ArcLiftingSetup.cmpD W T (y' : W.DD T) :=
      cmpD_add W T (NDl_N W T y.2) (NDl_N W T y'.2)
    rw [e, map_add (f := _), map_add (f := _), hd0a, smul_add, smul_add]
    have := Fη.add_mem h1 h2
    convert this using 1
    abel
  have hsm3 : ∀ (o : O) f y, R3 f y → R3 (o • f) (o • y) := by
    intro o f y h
    show _ ∈ Fη
    have e : Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((o • y : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1))) :
        W.DD T) = algebraMap O LL o • Formalism.MainNotions.ArcLiftingSetup.cmpD W T (y : W.DD T) :=
      cmpD_osmul W T o (NDl_N W T y.2)
    rw [e, map_smul, map_smul, hd0s, smul_comm _ (algebraMap O LL o),
      smul_comm _ (algebraMap O LL o), ← smul_sub]
    exact Fη.smul_mem _ h
  have huniq3 : ∀ f y y', R3 f y → R3 f y' → y - y' ∈ Amb := by
    intro f y y' h1 h2
    show G3 (Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((y - y' : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1))) :
      W.DD T)) ∈ Fη
    rw [Submodule.coe_sub, cmpD_sub W T (NDl_N W T y.2) (NDl_N W T y'.2), map_sub]
    have h := Fη.sub_mem h2 h1
    rw [sub_sub_sub_cancel_left, ← smul_sub] at h
    have h' := Fη.smul_mem ((PD.p : LL) ^ κ)⁻¹ h
    rwa [smul_smul, inv_mul_cancel₀ (zpow_ne_zero _ hp), one_smul] at h'
  obtain ⟨ψ3c, hψ3c⟩ := linLift Amb R3 hex3 hadd3 hsm3 huniq3

  set preC := preG W T (c - 1 - 1 - 1) φ2 C with hpreC
  obtain ⟨d, bF, hbN, hcoord⟩ := NDl_coords W T (c - 1 - 1 - 1) hmod
  have hbN' : ∀ k, bF k ∈ W.N T := fun k => NDl_N W T (hbN k)
  let phA : (Fin d → O) →+ (T.V ⊗[Qp] B) ⧸ C :=
    { toFun := fun α => C.mkQ (φ2 (∑ k, algebraMap O LL (α k) • Formalism.MainNotions.ArcLiftingSetup.cmpD W T (bF k)))
      map_zero' := by simp
      map_add' := fun α β => by
        simp only [Pi.add_apply, map_add (f := _), add_smul, Finset.sum_add_distrib] }
  have hphA : ∀ (o : O) (α : Fin d → O), phA (o • α) = algebraMap O LL o • phA α := by
    intro o α
    simp only [phA, AddMonoidHom.coe_mk, ZeroHom.coe_mk, Pi.smul_apply, smul_eq_mul, map_mul,
      mul_smul, ← Finset.smul_sum, map_smul]
  have hletter : ∀ k, φ2 (Formalism.MainNotions.ArcLiftingSetup.cmpD W T (bF k)) ∈ DcrisL PD T.ρ (W.emb (c - 1)) := by
    intro k
    have h0 : Formalism.MainNotions.ArcLiftingSetup.cmpD W T (bF k) ∈ DcrisL PD T.ρ (W.emb (c - 1 - 1 - 1)) := by
      rw [Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W T (hbN' k)]
      exact Formalism.MainNotions.UnusedSlot80.ArcF.cmp_mem_letter W T _ (hbN' k) (NDl_DL W T (hbN k)).1
    have h2 := Formalism.MainNotions.UnusedSlot80.ArcF.φVB_letter W T _ (Formalism.MainNotions.UnusedSlot80.ArcF.φVB_letter W T _ h0)
    rw [show c - 1 - 1 - 1 + 1 + 1 = c - 1 by ring] at h2
    exact h2
  have hrank : Module.finrank LL ↥(Submodule.span LL (Set.range phA)) ≤ m := by
    have hsub : Submodule.span LL (Set.range phA) ≤ (DcrisL PD T.ρ (W.emb (c - 1))).map C.mkQ := by
      rw [Submodule.span_le]
      rintro _ ⟨α, rfl⟩
      refine ⟨_, ?_, rfl⟩

      rw [map_sum]
      exact Submodule.sum_mem _ fun k _ => by
        rw [map_smul]; exact Submodule.smul_mem _ _ (hletter k)
    exact (Submodule.finrank_mono hsub).trans hRk
  obtain ⟨s₀, hs₀, hs₀g⟩ := genM phA hphA hrank
  let lin : (Fin d → O) →ₗ[O] ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1)) :=
    Fintype.linearCombination O (fun k => (⟨bF k, hbN k⟩ : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1))))
  have hlin : ∀ α, Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((lin α : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1))) :
      W.DD T) = ∑ k, algebraMap O LL (α k) • Formalism.MainNotions.ArcLiftingSetup.cmpD W T (bF k) := by
    intro α
    simp only [lin, Fintype.linearCombination_apply, Submodule.coe_sum, Submodule.coe_smul]
    rw [cmpD_sum W T _ _ (fun k _ => by
      rw [← algebraMap_smul (LetA O n)]; exact (W.N T).smul_mem _ (hbN' k))]
    exact Finset.sum_congr rfl fun k _ => cmpD_osmul W T _ (hbN' k)
  set sG : Finset (↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1)) ⧸ Amb) :=
    s₀.image (fun α => Amb.mkQ (lin α)) with hsG
  have hsGc : sG.card ≤ m := Finset.card_image_le.trans hs₀
  have hgenz : ∀ z : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1)) ⧸ Amb,
      z ∈ preC.map Amb.mkQ ⊔ Submodule.span O (↑sG : Set _) := by
    intro z
    obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective Amb z
    obtain ⟨α, hα⟩ := hcoord y y.2
    obtain ⟨σ, hσ, hφ0⟩ := hs₀g α
    have hy' : y - lin σ ∈ preC := by
      show φ2 (Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((y - lin σ : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1))) :
        W.DD T)) ∈ C
      rw [Submodule.coe_sub, cmpD_sub W T (NDl_N W T y.2) (NDl_N W T (lin σ).2), hα, hlin]
      have h0 : C.mkQ (φ2 (∑ k, algebraMap O LL ((α - σ) k) • Formalism.MainNotions.ArcLiftingSetup.cmpD W T (bF k))) = 0 :=
        hφ0
      rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at h0
      convert h0 using 2
      simp only [Pi.sub_apply, map_sub, sub_smul, Finset.sum_sub_distrib]
    have hm1 : Amb.mkQ (y - lin σ) ∈ preC.map Amb.mkQ := Submodule.mem_map_of_mem hy'
    have hm2 : Amb.mkQ (lin σ) ∈ Submodule.span O (↑sG : Set _) := by
      have h := Submodule.mem_map_of_mem (f := Amb.mkQ ∘ₗ lin) hσ
      rw [Submodule.map_span] at h
      rw [hsG, Finset.coe_image]
      exact h
    have e : Submodule.Quotient.mk y = Amb.mkQ (y - lin σ) + Amb.mkQ (lin σ) := by
      rw [← map_add (f := _), sub_add_cancel]; rfl
    rw [e]
    exact Submodule.add_mem _ (Submodule.mem_sup_left hm1) (Submodule.mem_sup_right hm2)
  have ch2 := pchain_of_gen (pstep_gen (lenO := lenOl PD (O := O)) (m := m) (c := cc) F3b ψ3c
    (preC.map Amb.mkQ) sG hsGc (fun a => hgenz _))
  set F3 := kerSub F3b ψ3c (preC.map Amb.mkQ) with hF3def
  have hF3' : F3 ≤ F3b := kerSub_le _ _ _
  refine ⟨F3, hF3'.trans hF3b, (ch1.trans ch2).mono (by norm_num) (by norm_num), fun f => ?_⟩
  set f3b : ↥F3b := Submodule.inclusion hF3' f
  have hker := (mem_kerSub_coe F3b ψ3c _ f3b).1 f.2
  obtain ⟨y', hy'C, hy'e⟩ := Submodule.mem_map.1 hker
  obtain ⟨yf, hR3f, hψf⟩ := hψ3c f3b
  rw [hψf] at hy'e
  have hdiff : yf - y' ∈ Amb := (Submodule.Quotient.eq Amb).1 hy'e.symm
  have hdiff' : G3 (Formalism.MainNotions.ArcLiftingSetup.cmpD W T ((yf - y' : ↥(Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T (c - 1 - 1 - 1))) :
      W.DD T)) ∈ Fη := hdiff
  rw [Submodule.coe_sub, cmpD_sub W T (NDl_N W T yf.2) (NDl_N W T y'.2), map_sub] at hdiff'
  refine ⟨φ2 (Formalism.MainNotions.ArcLiftingSetup.cmpD W T (y' : W.DD T)),
    ⟨Formalism.MainNotions.ArcLiftingSetup.cmpD W T (y' : W.DD T), ⟨(y' : W.DD T), NDl_N W T y'.2, NDl_DL W T y'.2,
      Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W T _⟩, rfl⟩, hy'C, ?_⟩
  have e2 : Submodule.inclusion (hF3'.trans hF3b) f = Submodule.inclusion hF3b f3b := rfl
  rw [e2]
  have := Fη.add_mem hR3f (Fη.smul_mem ((PD.p : LL) ^ κ) hdiff')
  convert this using 1
  simp only [hG3, LinearMap.comp_apply, smul_sub]
  abel

end Pass3

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemPreG =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LengthBoundOfHypotheses =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LengthBoundOfHypotheses", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.H2Bound\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ContentBoundLevel\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LemmaDN0\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusSqComparisonLetter\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.InIZero\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LevNOsmul\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemPreG\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.QpEqUnit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkFilLevEq\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg\nimport Formalism.SharpRestriction.LevelLetterCocycles.SaturationUnramifiedOfRingCondition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc PowerSeries Formalism.MainNotions.N.Pv.LocalLengthBound.Ser TensorProduct

theorem passage_chain_zero {O FF : Type} [CommRing O] [AddCommGroup FF] [Module O FF] {lenO : ℕ∞} {c : ℝ}
    {A Bs : Submodule O FF} {ng : ℕ} (h : Formalism.MainNotions.RamifiedCoefficientChains.S9.PChain lenO 0 c A Bs ng 0) : Bs = A := by
  obtain ⟨k, Fl, gen, h0, hk, hsub, hg, hl, hs⟩ := h
  have hall : ∀ i < k, i ∈ gen := by
    intro i hi
    by_contra hig
    have hsub' : gen ⊆ (Finset.range k).erase i := fun x hx =>
      Finset.mem_erase.2 ⟨fun h => hig (h ▸ hx), hsub hx⟩
    have := Finset.card_le_card hsub'
    rw [Finset.card_erase_of_mem (Finset.mem_range.2 hi), Finset.card_range] at this
    omega
  have step : ∀ i < k, Fl (i + 1) = Fl i := by
    intro i hi
    obtain ⟨hle, Q, _, _, ob, hker, hgen, -⟩ := hs i hi
    obtain ⟨s, hs0, hspan⟩ := hgen (hall i hi)
    have hsE : s = ∅ := Finset.card_eq_zero.1 (by omega)
    refine le_antisymm hle fun x hx => ?_
    have h1 : ob ⟨x, hx⟩ = 0 := by
      have hm : ob ⟨x, hx⟩ ∈ Submodule.span O (↑s : Set Q) := by rw [hspan]; trivial
      rw [hsE, Finset.coe_empty, Submodule.span_empty, Submodule.mem_bot] at hm
      exact hm
    exact (hker ⟨x, hx⟩).1 h1
  have hall' : ∀ i ≤ k, Fl i = Fl 0 := by
    intro i
    induction i with
    | zero => intro _; rfl
    | succ j ih => intro hj; rw [step j (by omega), ih (by omega)]
  rw [← hk, ← h0]
  exact hall' k le_rfl

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

section SlopeTestRemainingChoices

variable (W : LocWach PD LL O v n)

theorem qK_mem [IsDomain O] (hs : W.s = 1) (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W)
    (T : LocLat G Qp LL O) {c : ZMod n} {Bn η : ℕ}
    (hM : ∀ z ∈ W.Nl T (c - 1), W.Q ^ Bn • W.φD T z ∈ W.N T) {x : W.DD T}
    (hx : Formalism.MainNotions.RamifiedCoefficientChains.S9.QPowSmulMemPullback W T c η x) : W.Q ^ (η + Bn) • x ∈ W.N T := by
  have key : ∀ z ∈ Formalism.MainNotions.CrystallineLiftingInputs.pullJ W T (c - 1) 1, W.Q ^ Bn • z ∈ W.N T := by
    intro z hz
    induction hz using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨y, ⟨hyN, hyD⟩, rfl⟩ := hz
      rw [pow_one]
      exact hM y (mem_Nl W T hyN hyD.1)
    | zero => rw [smul_zero]; exact (W.N T).zero_mem
    | add z₁ z₂ _ _ h₁ h₂ => rw [smul_add]; exact (W.N T).add_mem h₁ h₂
    | smul a z _ h => rw [aself_comm W T]; exact (W.N T).smul_mem a h
  obtain ⟨U, hU⟩ := qp_eq_unit W hs hR
  have h1 := key _ hx.1
  have e : W.Q ^ (η + Bn) • x = ((U⁻¹ : (LetA O n)ˣ) : LetA O n) ^ η •
      (W.Q ^ Bn • (Formalism.MainNotions.LiftingTheory.qp W ^ η • x)) := by
    rw [hU, mul_pow, smul_smul, smul_smul]
    congr 1
    have hUU : ((U⁻¹ : (LetA O n)ˣ) : LetA O n) * (U : LetA O n) = 1 := Units.inv_mul U
    calc W.Q ^ (η + Bn) = (((U⁻¹ : (LetA O n)ˣ) : LetA O n) * (U : LetA O n)) ^ η *
          (W.Q ^ η * W.Q ^ Bn) := by rw [hUU, one_pow, one_mul, pow_add]
      _ = _ := by ring
  rw [e]
  exact (W.N T).smul_mem _ h1

end SlopeTestRemainingChoices

section Main

theorem ndl_osmul (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) {i : ZMod n} (o : O) {x : W.DD T}
    (hx : x ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i) : o • x ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T i := by
  refine ⟨?_, ?_, fun δ hδ => ?_⟩
  · rw [← algebraMap_smul (LetA O n)]; exact (W.N T).smul_mem _ (NDl_N W T hx)
  · rw [osmul_comm W T, (NDl_DL W T hx).1]
  · rw [map_smul, (NDl_DL W T hx).2 δ hδ]

variable (W : LocWach PD LL O v n)

theorem length_bound_of_hypotheses [NeZero n] (h3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W)
    (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hLev : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W)
    (hE : Formalism.MainNotions.RamifiedCoefficientChains.DcrisExactStrict PD LL) (hC : Formalism.MainNotions.RamifiedCoefficientChains.CrysSubQuot PD LL)
    (hQ : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL) (hMC : MemCrit W) (hH2 : H2Bound W) (hL41 : ContentBoundLevel W)
    (hD : Formalism.MainNotions.RamifiedCoefficientChains.S9.LemmaDN W) (hD0 : LemmaDN0 W)
    (hχ0 : algebraMap O LL (W.χΓ W.gam : O) ≠ 0)
    (hχ : ∀ i : ℤ, i ≠ 0 → (algebraMap O LL (W.χΓ W.gam : O)) ^ i ≠ 1)
    (hγN : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (c : ZMod n) (ζ : LL), IsPrimitiveRoot ζ PD.p →
      ∀ (x : W.DD T) (hx : x ∈ W.N T) (hγx : W.γ T x ∈ W.N T) (k : ℤ),
        W.levN T c ζ ⟨W.γ T x, hγx⟩ k = (algebraMap O LL (W.χΓ W.gam : O)) ^ k • W.levN T c ζ ⟨x, hx⟩ k)
    (hγA : ∀ (c : ZMod n) (ζ : LL), IsPrimitiveRoot ζ PD.p → ∀ f : LetA O n,
      W.lev c ζ (W.γA W.gam f) = PowerSeries.rescale (algebraMap O LL (W.χΓ W.gam : O)) (W.lev c ζ f))
    (hTr : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (c : ZMod n) (ζ ζ₀ : LL),
      IsPrimitiveRoot ζ PD.p → IsPrimitiveRoot ζ₀ PD.p → ∃ δ ∈ W.DelF, ∃ χ : LL, χ ≠ 0 ∧
      (∀ (x : ↥(W.N T)) (hx : W.γD T δ x ∈ W.N T) (k : ℤ),
        W.levN T c ζ ⟨W.γD T δ x, hx⟩ k = χ ^ k • W.levN T c ζ₀ x k) ∧
      (∀ f : LetA O n, W.lev c ζ (W.γA δ f) = PowerSeries.rescale χ (W.lev c ζ₀ f))) :
    Formalism.MainNotions.RamifiedCoefficientChains.S9.WachVectorLiftingBound W := by
  intro d T₁ T₂ F b S η m hset
  have hset' := hset
  obtain ⟨hCA, hl, hn, ⟨hDom, hDVR, hFrac⟩, ⟨ζ₀, hζ₀⟩, hSur, -, -, -, -⟩ := hset'
  haveI := hDom
  haveI := hDVR
  haveI := hFrac
  obtain ⟨hbij, hs, hp2⟩ := hCA
  have hK1 : Module.finrank K₀ K = 1 := Formalism.MainNotions.UnusedSlot80.SatW.finrank_one_of_bij' hbij
  obtain ⟨-, -, h9₁⟩ := h9 T₁ hSur.1 hs hp2
  obtain ⟨hR, hmod₁⟩ := h9₁ hK1
  obtain ⟨-, -, h9₂⟩ := h9 T₂ hSur.2.1 hs hp2
  obtain ⟨-, hmod₂⟩ := h9₂ hK1
  have h3₁ := h3 T₁ hSur.1
  have h3₂ := h3 T₂ hSur.2.1
  have h5₂ := h5 T₂ (boxM d b S η) (boxH d b S η) hSur.2.1 (rk_jumpsLet₂ W hE hC hQ hset)
  have hT₁ := hSur.1
  have hT₂ := hSur.2.1
  have hl2 : 2 ≤ PD.p := by omega
  have hlam := Formalism.MainNotions.RamifiedCoefficientChains.one_le_lam PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η) hl2
  have haR := Formalism.MainNotions.RamifiedCoefficientChains.aR_nonneg PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η) hl2
  have hl1 : (0 : ℝ) < (PD.p : ℝ) - 1 := by
    have : (11 : ℝ) ≤ PD.p := by exact_mod_cast hl
    linarith
  have hl0 : (0 : ℝ) < (PD.p : ℝ) := by linarith
  set σ : ℝ := Formalism.TruncatedSeriesCounting.RamifiedCoefficientChains.sig₂ PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η) with hσ
  set EGv : ℝ := Formalism.MainNotions.RamifiedCoefficientChains.S9.EG PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S) η S with hEGv
  have hσ0 : 0 ≤ σ := by rw [hσ, Formalism.TruncatedSeriesCounting.RamifiedCoefficientChains.sig₂]; positivity
  have hEG0 : 0 ≤ EGv := by
    rw [hEGv, Formalism.MainNotions.RamifiedCoefficientChains.S9.EG]
    have : 0 ≤ (3 * (Formalism.MainNotions.RamifiedCoefficientChains.S9.aN PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η) : ℝ) + (S : ℝ) + 2 * (η : ℝ)) /
        ((PD.p : ℝ) - 1) := div_nonneg (by positivity) hl1.le
    linarith
  set Bd : ℝ := Formalism.MainNotions.RamifiedCoefficientChains.S9.wachVectorLiftingExponent PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S) η S with hBd
  have hBd0 : 0 ≤ Bd := by
    rw [hBd, Formalism.MainNotions.RamifiedCoefficientChains.S9.wachVectorLiftingExponent]
    have h1 : 0 ≤ ((Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S : ℕ) : ℝ) / ((PD.p : ℝ) * ((PD.p : ℝ) - 1)) :=
      div_nonneg (by positivity) (by positivity)
    have h2 : 0 ≤ ((S : ℝ) + 1) / ((PD.p : ℝ) - 1) := div_nonneg (by positivity) hl1.le
    have h3' : (0 : ℝ) ≤ S := by positivity
    linarith
  set E : ℕ := ⌊Bd⌋₊ with hEdef
  refine ⟨E, Nat.floor_le hBd0, fun c hc FF _ _ _ _ Fs w hw => ?_⟩
  have hcD : (c.val + d) % 2 = 0 := (Finset.mem_filter.1 hc).2
  have hc1 : ((c - 1).val + d) % 2 = 1 := by
    have := Formalism.MainNotions.RamifiedCoefficientChains.S9.parity_succ hn d (c - 1)
    rw [sub_add_cancel] at this
    omega
  have hc2 : ((c - 1 - 1).val + d) % 2 = 0 := by
    have := Formalism.MainNotions.RamifiedCoefficientChains.S9.parity_succ hn d (c - 1 - 1)
    rw [sub_add_cancel] at this
    omega
  have hc2m : c - 1 - 1 ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d := Finset.mem_filter.2 ⟨Finset.mem_univ _, hc2⟩
  have hMc : boxM d b S η c = b c + S := if_pos hcD
  have hMc2 : boxM d b S η (c - 1 - 1) = b (c - 1 - 1) + S := if_pos hc2
  have hM₂ : ∀ z ∈ W.Nl T₂ (c - 1), W.Q ^ (b c + S) • W.φD T₂ z ∈ W.N T₂ := by
    rw [← hMc]; exact h5₂.1 c
  have hM₂' : ∀ z ∈ W.Nl T₂ (c - 1 - 1 - 1), W.Q ^ (b (c - 1 - 1) + S) • W.φD T₂ z ∈ W.N T₂ := by
    rw [← hMc2]; exact h5₂.1 (c - 1 - 1)
  have hηb := rk_eta_lt W hset c
  have hB1 : 1 ≤ b c + S := by omega
  have hQK : ∀ f, W.Q ^ (η + (b c + S)) • w f ∈ W.N T₂ := fun f => qK_mem W hs hR T₂ hM₂ (hw f)
  have hγw : ∀ f, W.γ T₂ (w f) - w f ∈ W.N T₂ := by
    intro f
    obtain ⟨y, hyN, -, hye⟩ := (hw f).2.2.2
    rw [hye, pow_one]
    exact (W.N T₂).smul_mem _ hyN
  obtain ⟨u₀, hu₀, hu0⟩ := lev_q_simple W c ζ₀ hζ₀
  have hζ₀' : IsPrimitiveRoot ζ₀ (PD.p ^ (0 + 1)) := by rwa [zero_add, pow_one]
  have hLv := (hLev T₂ hT₂ c 0 ζ₀ hζ₀').1
  obtain ⟨dd, hddLB, hdde, hddF, hdda, hdds⟩ := fam_exp W T₂ (A := ↥Fs) hs c ζ₀ hLv _ hχ0 hχ
    (hγN T₂ hT₂ c ζ₀ hζ₀) (hγA c ζ₀ hζ₀) u₀ hu₀ hu0 (η + (b c + S)) w hQK hγw
  obtain ⟨ec, hec, hH⟩ := hH2 d T₁ T₂ F b S η m hset c hc
  obtain ⟨κ, hκ, hLk⟩ := hL41 d T₁ T₂ F b S η m hset c hc
  set hh : ℕ := b (c - 1 - 1) + S with hhh

  have hbh : (b c : ℝ) ≤ (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S : ℝ) := by
    have : b c ≤ Finset.univ.sup b := Finset.le_sup (Finset.mem_univ c)
    rw [Formalism.MainNotions.RamifiedCoefficientChains.hpar]; push_cast; exact_mod_cast (by omega : b c ≤ Finset.univ.sup b + S)
  have hEge : (ec : ℤ) + κ - hh ≤ (E : ℤ) := by
    have hreal : ((ec : ℤ) + κ - hh : ℝ) ≤ Bd := by
      rw [hBd, Formalism.MainNotions.RamifiedCoefficientChains.S9.wachVectorLiftingExponent]
      have key : (((b c + S : ℕ) : ℝ) + 1) / ((PD.p : ℝ) - 1) - (b c : ℝ) / (PD.p : ℝ) =
          (b c : ℝ) / ((PD.p : ℝ) * ((PD.p : ℝ) - 1)) + ((S : ℝ) + 1) / ((PD.p : ℝ) - 1) := by
        field_simp
        push_cast
        ring
      have hdiv : (b c : ℝ) / ((PD.p : ℝ) * ((PD.p : ℝ) - 1)) ≤
          ((Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S : ℕ) : ℝ) / ((PD.p : ℝ) * ((PD.p : ℝ) - 1)) :=
        div_le_div_of_nonneg_right hbh (by positivity)
      simp only [hhh] at hκ ⊢
      push_cast at hec hκ key ⊢
      linarith
    have h1 : (ec : ℤ) + κ - hh ≤ ⌊Bd⌋ := Int.le_floor.2 (by exact_mod_cast hreal)
    have h2 : (⌊Bd⌋₊ : ℤ) = ⌊Bd⌋ := by
      rw [← Int.floor_toNat, Int.toNat_of_nonneg (Int.floor_nonneg.2 hBd0)]
    rw [hEdef, h2]
    exact h1
  set N₀ : ℕ := ((E : ℤ) - ec - (κ - hh)).toNat with hN₀
  have hN₀' : (N₀ : ℤ) = (E : ℤ) - ec - (κ - hh) := Int.toNat_of_nonneg (by omega)
  have hp : (PD.p : LL) ≠ 0 := Formalism.MainNotions.UnusedSlot80.ArcF.p_ne_zero W
  set Fη := Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-(η : ℤ)) with hFη
  have hex : ∀ f : ↥Fs, ∃ x ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.NDl W T₂ (c - 1 - 1),
      (PD.p : LL) ^ E • dd f 0 - (PD.p : LL) ^ (κ - hh) • ιV PD (LL := LL) (V := T₂.V)
        (φVB PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ x))) ∈ Fη := by
    intro f
    obtain ⟨x, hx, hxF⟩ := hH ζ₀ hζ₀ u₀ hu₀ hu0 (w f) (hw f) (η + (b c + S)) (hQK f) (dd f)
      (hddLB f) (hdde f)
    refine ⟨((PD.p : ℕ) : O) ^ N₀ • x, ndl_osmul W T₂ _ hx, ?_⟩
    have hcm : Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ (((PD.p : ℕ) : O) ^ N₀ • x) =
        (PD.p : LL) ^ N₀ • Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ x := by
      rw [cmpD_osmul W T₂ _ (NDl_N W T₂ hx), map_pow, map_natCast]
    rw [hcm, map_smul, map_smul, map_smul, smul_smul]
    have hsc : (PD.p : LL) ^ (κ - hh) * (PD.p : LL) ^ N₀ = (PD.p : LL) ^ ((E : ℤ) - ec) := by
      rw [← zpow_natCast, ← zpow_add₀ hp, hN₀']; ring_nf
    have hsc2 : (PD.p : LL) ^ E = (PD.p : LL) ^ ((E : ℤ) - ec) * (PD.p : LL) ^ ec := by
      rw [← zpow_natCast, ← zpow_natCast (PD.p : LL) ec, ← zpow_add₀ hp]; ring_nf
    rw [hsc, hsc2, ← smul_smul, ← smul_sub]
    exact Fη.smul_mem _ hxF

  haveI := rk_fd_letter₂ W hset (c - 1)
  have hRk := rk_corankQ₂ W hE hC hQ hset (c - 1) hc1
  have hDN := hD d T₁ T₂ F b S η m hset (c - 1 - 1) hc2m
  obtain ⟨F3, hF3, ch3, hell⟩ := pass3 W T₂ hs hR h3₂ hmod₂ c η hM₂' hDN
    (FilCris PD T₂.ρ (b (c - 1) : ℤ)) hRk Fs (fun f => dd f 0)
    (fun f g => by rw [hdda]; rfl) (fun o f => by rw [hdds]; rfl) hex

  haveI : FiniteDimensional LL ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ c) := by
    haveI := rk_fd_letter₂ W hset c
    exact Module.Finite.map _ _
  haveI : FiniteDimensional LL ↥Fη := by
    have hle : Fη ≤ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ c := by
      rw [hFη, Formalism.MainNotions.UnusedSlot80.LevR.filLev_zero]; exact inf_le_left
    exact Submodule.finiteDimensional_of_le hle
  have hrk := rk_evenQ₂ W hE hC hQ hset c hcD
  have hlow : ∀ i : ℤ, ((b c + S : ℕ) : ℤ) ≤ i →
      Formalism.MainNotions.DeltaInvariantLattices.ιDi W T₂ c ≤ Formalism.MainNotions.WachCoordinates.FilLev W T₂ c 0 (-i) :=
    fun i hi => rk_low₂ W hE hC hQ hset c hcD (-i) (by omega)
  have hTr₂ := fun ζ hζ => hTr T₂ hT₂ c ζ ζ₀ hζ hζ₀
  obtain ⟨F4, hF4, y, ch4, hres⟩ := pass4 W hs hR F hT₁ hT₂ hMC c ζ₀ hTr₂ u₀ hu₀ hu0
    (m := m) (cc := Formalism.MainNotions.RamifiedCoefficientChains.S9.lenC (Module.finrank LL T₂.V) m PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η) S)
    hB1 hlow hrk (FilCris PD T₂.ρ (b (c - 1) : ℤ)) F3 (w.comp (Submodule.inclusion hF3))
    (fun f => (hw _).2.1) (fun f => hQK _) (fun f => dd (Submodule.inclusion hF3 f))
    (fun f => hddLB _) (fun f => hdde _) (fun f i hi => hddF _ i hi)
    (fun f g => by rw [map_add (f := _), hdda]) (fun o f => by rw [map_smul, hdds])
    hell (fun ell hell1 hell2 => hLk ell hell1 hell2) hζ₀
  refine ⟨⟨F4, hF4.trans hF3, y, (ch3.trans ch4).mono (by norm_num) (by norm_num), fun f => hres f⟩, ?_⟩

  intro hm0
  subst hm0
  have hCD := rk_corank_zero₂ W hE hC hQ hset rfl (c - 1) hc1
  have hell0 : ∀ f : ↥Fs, ∃ ell ∈ (fun z => φVB PD (LL := LL) (V := T₂.V)
      (φVB PD (LL := LL) (V := T₂.V) z)) '' Formalism.MainNotions.CrystallineLiftingInputs.Dlat W T₂ (c - 1 - 1 - 1),
      ell ∈ FilCris PD T₂.ρ (b (c - 1) : ℤ) ∧
      (PD.p : LL) ^ (E + S) • dd f 0 - (PD.p : LL) ^ κ •
        ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) ell) ∈ Fη := by
    intro f
    obtain ⟨x, hx, hxF⟩ := hex f
    have hx0 := hD0 d T₁ T₂ F b S η 0 hset rfl (c - 1 - 1) hc2m x hx
    obtain ⟨y0, hy0, hy0e⟩ := cmp_of_mem_X W T₂ hs hR h3₂ hM₂' hx0
    have hy0N := NDl_N W T₂ hy0
    refine ⟨φVB PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ y0)),
      ⟨Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ y0, ⟨y0, hy0N, NDl_DL W T₂ hy0,
        Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W T₂ hy0N⟩, rfl⟩, hCD (_root_.Formalism.MainNotions.N.Pv.LocalLengthBound.frobenius_sq_comparison_letter W T₂ c hy0), ?_⟩
    have hcm : Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ (((PD.p : ℕ) : O) ^ S • x) =
        (PD.p : LL) ^ S • Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ x := by
      rw [cmpD_osmul W T₂ _ (NDl_N W T₂ hx), map_pow, map_natCast]
    rw [hcm] at hy0e
    have h1 := Fη.smul_mem ((PD.p : LL) ^ S) hxF
    have hsc : (PD.p : LL) ^ (κ - hh) * (PD.p : LL) ^ hh = (PD.p : LL) ^ κ := by
      rw [← zpow_natCast, ← zpow_add₀ hp, sub_add_cancel]
    have hXS : (PD.p : LL) ^ S • ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V)
        (φVB PD (LL := LL) (V := T₂.V) (Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ x))) =
        (PD.p : LL) ^ hh • ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V)
          (φVB PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ y0)))) := by
      have := congrArg (fun z => ιV PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V)
        (φVB PD (LL := LL) (V := T₂.V) z))) hy0e
      simpa only [map_smul] using this
    have e : (PD.p : LL) ^ (E + S) • dd f 0 - (PD.p : LL) ^ κ • ιV PD (LL := LL) (V := T₂.V)
        (φVB PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V)
          (φVB PD (LL := LL) (V := T₂.V) (Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ y0)))) =
        (PD.p : LL) ^ S • ((PD.p : LL) ^ E • dd f 0 - (PD.p : LL) ^ (κ - hh) • ιV PD (LL := LL)
          (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V) (φVB PD (LL := LL) (V := T₂.V)
            (Formalism.MainNotions.ArcLiftingSetup.cmpD W T₂ x)))) := by
      rw [smul_sub, smul_smul, smul_comm ((PD.p : LL) ^ S) ((PD.p : LL) ^ (κ - hh)), hXS, smul_smul,
        hsc, ← pow_add, add_comm S E]
    rw [e]
    exact h1
  have hrk0 := rk_evenQ₂ W hE hC hQ hset c hcD
  obtain ⟨F4', hF4', y', ch4', hres'⟩ := pass4 W hs hR F hT₁ hT₂ hMC c ζ₀ hTr₂ u₀ hu₀ hu0
    (m := 0) (cc := 0) (e₂ := E + S) hB1 hlow hrk0 (FilCris PD T₂.ρ (b (c - 1) : ℤ)) Fs w
    (fun f => (hw _).2.1) hQK dd hddLB hdde hddF hdda hdds hell0
    (fun ell hell1 hell2 => hLk ell hell1 hell2) hζ₀
  have hFeq : F4' = Fs := passage_chain_zero ch4'
  refine ⟨y'.comp (Submodule.inclusion (le_of_eq hFeq.symm)), fun f => ?_⟩
  exact hres' (Submodule.inclusion (le_of_eq hFeq.symm) f)

end Main

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LengthBoundOfHypotheses =====

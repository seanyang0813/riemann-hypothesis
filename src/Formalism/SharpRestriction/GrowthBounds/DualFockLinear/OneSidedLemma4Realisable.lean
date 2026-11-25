module

public import Formalism.SharpRestriction.GrowthBounds.TableLineDegreeFive
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.GeneratorImageIsSymbol
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.CoeUntopDLeAlt
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.DvDegOtherMono
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.FixedSymbolFactorIntegral
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.GeOldest
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.LeadingDepthOneMemClosure
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.Lemma4OfRemainingStatements
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.LetterWeightPos
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.MdWeightMapDomain
public import Formalism.SharpRestriction.GrowthBounds.PathWeight.SymbolGeneratorData
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TestSideExplicitIdentification
public import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SymbolRealisableIffGeneralRank
import Formalism.PolynomialDimension.DetMulEqSumAdjugate
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4OfAdmittedTheoremII, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4Realisable

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4OfAdmittedTheoremII =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4OfAdmittedTheoremII", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.TableLineDegreeFive\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.GeneratorImageIsSymbol\nimport Formalism.PolynomialDimension.DetMulEqSumAdjugate\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.CoeUntopDLeAlt\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.DvDegOtherMono\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.FixedSymbolFactorIntegral\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.GeOldest\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.LeadingDepthOneMemClosure\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.Lemma4OfRemainingStatements\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.LetterWeightPos\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.MdWeightMapDomain\npublic import Formalism.SharpRestriction.GrowthBounds.PathWeight.SymbolGeneratorData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.MainNotions.SourceCleaning Formalism.MainNotions.G.WittFrameLocaliserOrders Formalism.MainNotions.G.symbolGeneratorData

def OneSidedLemma4 (_D : Formalism.BasicNotions.D7) (CLa CD Csz : ℝ) : Prop :=
  ∀ (p n' r K : ℕ) [Fact p.Prime] [NeZero n'] [NeZero r] [NeZero K] (O : Type) [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] [Algebra (WF p n') O] (S : UniformizedDVR p O), OHyp p n' O S →
    CommonHypotheses p n' r (r + K) →
  ∀ (Fr : Frames n' r) (L₁ N₁ G' : ℕ), Fr.Valid L₁ N₁ → TwistBound p Fr (p ^ G') →
  ∀ (deg : Fin n' → ℕ) (a : ℕ) (Y : ℝ) (c0 c'' cStar : ℕ) (Dd : ℝ),
    HypII CLa CD Csz p Fr (r + K) L₁ N₁ G' deg a Y c0 c'' cStar Dd →
  let c' := cPrime n' r Fr.TT.card c0 c'' cStar
  ∀ g : Matrix (Fin (r + K)) (Fin (r + K)) (WF p n'), IsGLW g →
  ∀ (n : ℕ) (obd : ℤ → ℤ → ℝ) (xi : Fin n → ℤ → SegRing O r K) (dd : ℤ → ℤ → ℕ),
    (∀ (i : Fin n) (j : ℕ), j < Fr.J →
      xi i j ∈ XX' O r K Fr j (fun _ => (mStar p Fr (r + K) N₁ (p ^ G') c' : ℤ))
        (fun x => Bo p Fr deg j x / 2 - sl p Fr deg Y (r + K) j x) (obd j) ∧
      xi i j ∈ restrictSupport O {mm | ∀ x ∈ Fr.letters j, ∑ c : Fin (r + K), mm (x, c) = dd j x}) →
    (∀ j : ℕ, j < Fr.J → ∀ x ∈ Fr.letters j, (Fr.IsW j x ∨ x ∈ Fr.LLset j) →
        (dd j x : ℝ) ≤ levDeg p Fr deg j x + levDeg p Fr deg j x / 100) →
  ∀ (mon : Fin n' × Fin (r + K) →₀ ℕ), IsLabel p Fr mon → (∀ v ∈ mon.support, v.1 ∈ Fr.TT) →
  ∀ o : ℕ, (∀ m ∈ (monPh O K p Fr mon xi).support, normDeg r m = o) →
    Realisable p n' S.w n' r g c' o (MvPolynomial.map (algebraMap O (KK O)) (monPh O K p Fr mon xi))

def RestGeomU : Prop :=
  ∀ (p n' r : ℕ) [NeZero n'] (F : Frames n' r) (L₁ N₁ : ℕ), 13 ≤ p → 2 ≤ r → Even n' → F.Valid L₁ N₁ →
  ∀ (deg : Fin n' → ℕ) (a : ℕ), (∀ s ∈ F.TT, (a : ℝ) ≤ deg s ∧ (deg s : ℝ) ≤ 2 * a) →
  ∀ (j : ℤ) (dd : ℤ → ℕ),
    (∀ x ∈ F.letters j, (F.IsW j x ∨ x ∈ F.LLset j) →
      (dd x : ℝ) ≤ levDeg p F deg j x + levDeg p F deg j x / 100) →
  ∀ x ∈ nonW F j,
    ((∑ y ∈ (F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l), dd y : ℕ) : ℝ) ≤
      Bo p F deg j x / 80

def RestDivMU (CLa CD Csz : ℝ) : Prop :=
  ∀ (p n' r K : ℕ) [Fact p.Prime] [NeZero n'] [NeZero r] [NeZero K] (O : Type) [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] [Algebra (WF p n') O] (X : Ctx p n' r K O)
    (deg : Fin n' → ℕ) (a : ℕ) (Y : ℝ) (c0 c'' cStar : ℕ) (Dd : ℝ),
    HypII CLa CD Csz p X.Fr (r + K) X.L₁ X.N₁ X.G' deg a Y c0 c'' cStar Dd →
  ∀ (j : ℤ) (dd : ℤ → ℕ),
    (∀ x ∈ X.Fr.letters j, (X.Fr.IsW j x ∨ x ∈ X.Fr.LLset j) →
      (dd x : ℝ) ≤ levDeg p X.Fr deg j x + levDeg p X.Fr deg j x / 100) →
  ∀ P ∈ MGen X.Fr j O K (mStar p X.Fr (r + K) X.N₁ (p ^ X.G') (cPrime n' r X.Fr.TT.card c0 c'' cStar) : ℤ)
      (fun x => Bo p X.Fr deg j x / 2 - sl p X.Fr deg Y (r + K) j x) dd,
    ∃ P' ∈ MGen0 X.Fr j O K,
      P = Dv X.Fr j O K (X.m1 (cPrime n' r X.Fr.TT.card c0 c'' cStar))
        (X.m2 (cPrime n' r X.Fr.TT.card c0 c'' cStar)) * P'

theorem restGeomU : RestGeomU := by
  intro p n' r _ F L₁ N₁ hp hr hn hV deg a hdeg j dd hdd x hx
  have hx1 : x ∈ F.letters j := (Finset.mem_filter.1 hx).1
  have hW : ¬ F.IsW j x := (Finset.mem_filter.1 hx).2
  obtain ⟨⟨ho1, ho2, ho3⟩, _⟩ := ge_oldest F L₁ N₁ hV (by omega) j x hx1 hW
  have ho1' := ho1
  unfold Frames.letters at ho1'
  rw [Finset.mem_filter, Finset.mem_Icc] at ho1'
  have hp0 : (0 : ℝ) < p := by
    have : (13 : ℝ) ≤ p := by exact_mod_cast hp
    linarith
  have hY : ∀ y ∈ (F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l),
      y < F.oldest j x ∧ Even y ∧ y ∈ F.letters j ∧ (F.IsW j y ∨ y ∈ F.LLset j) := by
    intro y hy
    rw [Finset.mem_filter] at hy
    obtain ⟨h1, h2, h3, h4⟩ := hy
    obtain ⟨h5, h6⟩ := ge_older F L₁ N₁ hV hn (by omega) j x hx1 hW y h1 h2 h3 h4
    exact ⟨h5, h2, h1, h6⟩
  have hlev : ∀ y ∈ F.letters j, levDeg p F deg j y ≤ 2 * ((a : ℝ) / (p : ℝ) ^ (F.dist j y)) := by
    intro y hy
    unfold Frames.letters at hy
    rw [Finset.mem_filter] at hy
    unfold levDeg
    rw [← mul_div_assoc]
    exact div_le_div_of_nonneg_right (hdeg _ hy.2).2 (pow_pos hp0 _).le
  have hdd' : ∀ y ∈ (F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l),
      (dd y : ℝ) ≤ 2.02 * ((a : ℝ) / (p : ℝ) ^ (F.dist j y)) := by
    intro y hy
    obtain ⟨_, _, h3, h4⟩ := hY y hy
    have h5 := hdd y h3 h4
    have h6 := hlev y h3
    linarith
  rw [Nat.cast_sum]
  by_cases ha : a = 0
  · have hz : ∀ y ∈ (F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l),
        (dd y : ℝ) = 0 := by
      intro y hy
      have h1 := hdd' y hy
      rw [ha] at h1
      simp only [Nat.cast_zero, zero_div, mul_zero] at h1
      exact le_antisymm h1 (Nat.cast_nonneg _)
    rw [Finset.sum_eq_zero hz]
    have := level_degree_nonneg p F deg j x
    linarith
  · have hf : ∀ y ∈ (F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l),
        ((((F.oldest j x - y) / 2).toNat : ℕ) : ℤ) * 2 = F.oldest j x - y ∧ 1 ≤ ((F.oldest j x - y) / 2).toNat := by
      intro y hy
      obtain ⟨h1, h2, _, _⟩ := hY y hy
      obtain ⟨k, hk⟩ := ho2.sub h2
      constructor <;> omega
    have hsum : ∑ y ∈ (F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l), (dd y : ℝ) =
        ∑ m ∈ ((F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l)).image
          (fun y => ((F.oldest j x - y) / 2).toNat), (dd (F.oldest j x - 2 * (m : ℤ)) : ℝ) := by
      rw [Finset.sum_image]
      · refine Finset.sum_congr rfl fun y hy => ?_
        have h1 := (hf y hy).1
        have h2 : F.oldest j x - 2 * ((((F.oldest j x - y) / 2).toNat : ℕ) : ℤ) = y := by omega
        rw [h2]
      · intro y1 hy1 y2 hy2 h
        have h1 := (hf y1 hy1).1
        have h2 := (hf y2 hy2).1
        have h' : ((F.oldest j x - y1) / 2).toNat = ((F.oldest j x - y2) / 2).toNat := h
        rw [h'] at h1
        omega
    rw [hsum]
    have hB : (a : ℝ) / (p : ℝ) ^ (F.dist j (F.oldest j x)) ≤ Bo p F deg j x := by
      unfold Bo levDeg
      exact div_le_div_of_nonneg_right (hdeg _ ho1'.2).1 (pow_pos hp0 _).le
    obtain ⟨g1, g2⟩ := Formalism.CountingSumsFrames.Top.lemma4Geom (p : ℝ) (a : ℝ) (Bo p F deg j x) (F.dist j (F.oldest j x))
      (((F.letters j).filter (fun y => Even y ∧ y < x ∧ ∀ l < r, y ≠ Arow F x l)).image
          (fun y => ((F.oldest j x - y) / 2).toNat)) (fun m => (dd (F.oldest j x - 2 * (m : ℤ)) : ℝ))
      (by exact_mod_cast hp) (by exact_mod_cast Nat.pos_of_ne_zero ha) hB (by
        intro m hm
        obtain ⟨y, hy, rfl⟩ := Finset.mem_image.1 hm
        obtain ⟨h1, h2⟩ := hf y hy
        refine ⟨h2, Nat.cast_nonneg _, ?_⟩
        have h3 : F.oldest j x - 2 * ((((F.oldest j x - y) / 2).toNat : ℕ) : ℤ) = y := by omega
        have h4 : F.dist j y = F.dist j (F.oldest j x) + 2 * ((F.oldest j x - y) / 2).toNat := by
          have := (hY y hy).1
          unfold Frames.dist
          omega
        show (dd (F.oldest j x - 2 * ((((F.oldest j x - y) / 2).toNat : ℕ) : ℤ)) : ℝ) ≤ _
        rw [h3, ← h4, mul_div_assoc]
        exact hdd' y hy)
    exact le_trans g1 g2

theorem restDivMU (hE : FieldMultidegreeDivisibility) : ∃ C : ℝ, 1 ≤ C ∧ (RestGeomU → RestDivMU C (C + 1) C) := by
  obtain ⟨C, hC, H⟩ := numeric_symbol_bound_real
  refine ⟨C, hC, fun hGeom => ?_⟩
  intro p n' r K _ _ _ _ O _ _ _ _ X deg a Y c0 c'' cStar Dd hII j dd hdd P hP
  obtain ⟨d', d'', A, G, Mx, hA, hG, hsum, hW, hCM, hth, rfl⟩ := hP
  have hp := X.hH.1
  have hr := X.hH.2.1
  have hn := X.hH.2.2.2.2
  have hdeg : ∀ s ∈ X.Fr.TT, (a : ℝ) ≤ deg s ∧ (deg s : ℝ) ≤ 2 * a := by
    have hII' := hII
    unfold Formalism.MainNotions.SourceCleaning.HypII at hII'
    obtain ⟨_, _, g3, _⟩ := hII'
    intro s hs
    obtain ⟨h1, h2⟩ := g3 s hs
    have h0 : (0 : ℝ) ≤ (c'' : ℝ) := Nat.cast_nonneg _
    exact ⟨by linarith, by linarith⟩
  have hms : (X.Fr.letters j).card * X.m1 (cPrime n' r X.Fr.TT.card c0 c'' cStar) +
      X.m2 (cPrime n' r X.Fr.TT.card c0 c'' cStar) ≤
      mStar p X.Fr (r + K) X.N₁ (p ^ X.G') (cPrime n' r X.Fr.TT.card c0 c'' cStar) := by
    unfold Ctx.m1 Ctx.m2 Ctx.Q
    exact segment_divisions_le_bound p X.Fr (r + K) X.L₁ X.N₁ (p ^ X.G') _ X.hV j
  refine dv_segment hE X.hV hn (by omega) j _ _ _ hms dd d' d'' A G Mx hA hG hW hCM
    (fun b => by have := hsum b; omega) ?_
  intro i hiW
  cases hv : valS (LLs X.Fr j).toLetters {y | y < i} A with
  | top => exact le_top
  | coe z =>
    have h1 := hth i hiW z hv
    have hB := hGeom p n' r X.Fr X.L₁ X.N₁ hp hr hn X.hV deg a hdeg j dd hdd _ (dv_nonW_of j i hiW)
    obtain ⟨_, h2⟩ := H n' r p X.Fr (r + K) X.L₁ X.N₁ X.G' deg a Y c0 c'' cStar Dd hp hr X.hV hII X.hT j _
      (dv_eL_mem X.Fr j i) hiW
    obtain ⟨h3, _⟩ := h2 _ (z : ℝ) hB h1
    have h0 := level_degree_nonneg p X.Fr deg j (eL X.Fr j i)
    have h4 : ((∑ y ∈ (X.Fr.letters j).filter
        (fun y => Even y ∧ y < eL X.Fr j i ∧ ∀ l < r, y ≠ Arow X.Fr (eL X.Fr j i) l), dd y : ℕ) : ℝ) +
        (mStar p X.Fr (r + K) X.N₁ (p ^ X.G') (cPrime n' r X.Fr.TT.card c0 c'' cStar) : ℝ) ≤ (z : ℝ) := by
      linarith
    exact WithTop.coe_le_coe.2 (by exact_mod_cast h4)

theorem one_sided_lemma4_of_interfaces (D : Formalism.BasicNotions.D7) (CLa CD Csz : ℝ) (hModel : RestModel) (hDiv : RestDivMU CLa CD Csz)
    (hW1 : GeneratorSpanInclusion) (hW2 : GeneratorImageIsSymbol) (hMon : RestMon) (hPh : RestPh) : OneSidedLemma4 D CLa CD Csz := by
  intro p n' r K _ _ _ _ O _ _ _ _ S hO hH Fr L₁ N₁ G' hV hT deg a Y c0 c'' cStar Dd hII c' g hg n obd xi dd hxi hdd
    mon hmon hmonT o ho
  have hII' := hII
  unfold Formalism.MainNotions.SourceCleaning.HypII at hII'
  obtain ⟨g1, _, _, _, _, g6, _⟩ := hII'
  let X : Ctx p n' r K O := ⟨S, hO, hH, Fr, L₁, N₁, G', hV, hT, g1, by omega, g, hg⟩

  have hA : ∀ (i : Fin n) (j : ℕ), ∃ ξ' : SegRing O r K, j < Fr.J →
      (xi i j = Dv Fr (j : ℤ) O K (X.m1 c') (X.m2 c') * ξ' ∧
        MvPolynomial.map (algebraMap O (KK O)) (phSeg O K p Fr (j : ℤ) ξ') ∈ X.SyS) := by
    intro i j
    by_cases hj : j < Fr.J
    · obtain ⟨ξ', h1, h2⟩ := good_of_span X hW1 hW2 (j : ℤ) (Dv Fr (j : ℤ) O K (X.m1 c') (X.m2 c')) _
        (hDiv p n' r K O X deg a Y c0 c'' cStar Dd hII (j : ℤ) (dd j) (hdd j hj))
        (hModel O n' r K Fr (j : ℤ) _ _ _ (dd j) (xi i j) (hxi i j hj).1 (hxi i j hj).2)
      exact ⟨ξ', fun _ => ⟨h1, h2⟩⟩
    · exact ⟨0, fun h => absurd h hj⟩
  choose ξ' hξ' using hA
  obtain ⟨H, Y0, hH1, hY0, hPhe⟩ := hPh p n' r K O X c'
  obtain ⟨om, hom⟩ := hMon p n' r K O X mon hmon hmonT

  set Sg : MvPolynomial (TV n' (r + K)) (KK O) :=
    ∑ i, ∏ j ∈ Finset.range Fr.J, MvPolynomial.map (algebraMap O (KK O)) (phSeg O K p Fr (j : ℤ) (ξ' i j)) with hSg
  have hSgS : Sg ∈ X.SyS := sum_mem fun i _ => SyS_prod _ _ fun j hj => (hξ' i j (Finset.mem_range.1 hj)).2
  have hSg0 : InWj S.w Sg 0 := by
    refine inWj_sum _ _ fun i _ => inWj_prod0 _ _ fun j _ => inWj_map _
  have hT : MvPolynomial.map (algebraMap O (KK O)) (monPh O K p Fr mon xi) =
      (monomial mon 1 * X.DkQ * Sg * H) * X.fixedSymbolFactor c' +
        C (algebraMap O (KK O) ((p : O) ^ c')) * (monomial mon 1 * Sg * Y0) := by
    have e1 : monPh O K p Fr mon xi = monomial mon 1 *
        ((∑ i, ∏ j ∈ Finset.range Fr.J, phSeg O K p Fr (j : ℤ) (ξ' i j)) *
          ∏ j ∈ Finset.range Fr.J, phSeg O K p Fr (j : ℤ) (Dv Fr (j : ℤ) O K (X.m1 c') (X.m2 c'))) := by
      unfold monPh
      congr 1
      rw [Finset.sum_mul]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun j hj => ?_
      rw [(hξ' i j (Finset.mem_range.1 hj)).1, map_mul, mul_comm]

    rw [e1, map_mul, map_mul, hPhe, map_monomial, map_one, map_sum]
    simp only [map_prod]
    rw [← hSg]
    ring
  refine core X D c' o _ (monomial mon 1 * X.DkQ * Sg * H) (monomial mon 1 * Sg * Y0) ?_ ?_ hT ?_
  · exact SyS_mul (SyS_mul (SyS_of_Sy hom) hSgS) (SyS_of_Sy (Sy_IT hH1))
  · exact inWPow_zero_mul (inWPow_zero_mul (bc_inWj_monomial S.w mon) hSg0) hY0
  · intro m hm
    exact ho m (support_map_subset _ _ hm)

theorem one_sided_lemma4_of_admitted_lemmas : ∃ C : ℝ, 1 ≤ C ∧ ∀ D : Formalism.BasicNotions.D7, StandardMonomialSpanBis D → PathPairCorrespondence D → admB2 D → admB3 D → CoefficientValuationLemma D → LargePrimeLengthVanishing D →
    OneSidedLemma4 D C (C + 1) C := by
  by_cases hE : FieldMultidegreeDivisibility
  · obtain ⟨C, hC, hD⟩ := restDivMU hE
    exact ⟨C, hC, fun D hA3 hB1 hB2 hB3 hC1 _ => one_sided_lemma4_of_interfaces D C (C + 1) C restModel (hD restGeomU)
      (generator_pair_conditions_of_admitted D hA3 hB1) (generator_path_homogeneous_holds D hB2 hB3 hC1) (restMon D) restPh⟩
  · exact ⟨1, le_rfl, fun D _ _ _ _ _ h => absurd h hE⟩

theorem one_sided_lemma4_of_admitted_theorem_II : ∃ C : ℝ, 1 ≤ C ∧ ∀ (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ), tableLineDegreeFive.admitted D CLa Ck Crk Cdeg →
    OneSidedLemma4 D C (C + 1) C := by
  obtain ⟨C, hC, H⟩ := one_sided_lemma4_of_admitted_lemmas
  refine ⟨C, hC, fun D CLa Ck Crk Cdeg hA => ?_⟩
  obtain ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, h15, h16, h17, h18, _, h20, h21, _⟩ := hA
  exact H D h15 h16 h17 h18 h20 h21

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4OfAdmittedTheoremII =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4Realisable =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4Realisable", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.TestSideExplicitIdentification\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4OfAdmittedTheoremII\npublic import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.SymbolRealisableIffGeneralRank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14
open Formalism.L2.G.Model (kapR)

def kapFl (p k : ℕ) {n' : ℕ} (d : Fin n' → ℕ) : ℕ := ∑ s, k * Nat.log p (d s)

def MultDiv (O : Type) [CommRing O] (p κ : ℕ) {n' k : ℕ} (d : Fin n' → ℕ) : Prop :=
  ∀ α : Fin n' × Fin k →₀ ℕ, (∀ s, multideg α s = d s) →
    (((∏ s, (d s).factorial : ℕ) : ℕ) : O) ∣ (p : O) ^ κ * ((expFact α : ℕ) : O)

def OneSidedLemma4Element (p : ℕ) {n' r : ℕ} [NeZero n'] (K : ℕ) [NeZero r] [NeZero K] (O : Type) [CommRing O] [IsDomain O]
    (Fr : Frames n' r) (N₁ G' cP : ℕ) (deg : Fin n' → ℕ) (Y : ℝ) {k : ℕ} (hk : k = r + K) (o : ℕ)
    (sig : MvPolynomial (TV n' k) (KK O)) : Prop :=
  ∃ (n : ℕ) (obd : ℤ → ℤ → ℝ) (xi : Fin n → ℤ → SegRing O r K) (dd : ℤ → ℤ → ℕ) (mon : Fin n' × Fin (r + K) →₀ ℕ),
    (∀ (i : Fin n) (j : ℕ), j < Fr.J →
      xi i j ∈ XX' O r K Fr j (fun _ => (mStar p Fr (r + K) N₁ (p ^ G') cP : ℤ))
        (fun x => Bo p Fr deg j x / 2 - sl p Fr deg Y (r + K) j x) (obd j) ∧
      xi i j ∈ restrictSupport O {mm | ∀ x ∈ Fr.letters j, ∑ c : Fin (r + K), mm (x, c) = dd j x}) ∧
    (∀ j : ℕ, j < Fr.J → ∀ x ∈ Fr.letters j, (Fr.IsW j x ∨ x ∈ Fr.LLset j) →
        (dd j x : ℝ) ≤ levDeg p Fr deg j x + levDeg p Fr deg j x / 100) ∧
    IsLabel p Fr mon ∧ (∀ v ∈ mon.support, v.1 ∈ Fr.TT) ∧
    (∀ mm ∈ (monPh O K p Fr mon xi).support, normDeg r mm = o) ∧
    sig = MvPolynomial.map (algebraMap O (KK O)) (rename (castVK hk) (monPh O K p Fr mon xi))

theorem one_sided_lemma4_realisable (D : Formalism.BasicNotions.D7) (CLa CD Csz : ℝ) (h6 : OneSidedLemma4 D CLa CD Csz) {p n' r K : ℕ} [Fact p.Prime] [NeZero n']
    [NeZero r] [NeZero K] (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra (WF p n') O]
    (S : UniformizedDVR p O) (hO : OHyp p n' O S) {k : ℕ} (hk : k = r + K) (hH : CommonHypotheses p n' r k) (Fr : Frames n' r)
    (L₁ N₁ G' : ℕ) (hV : Fr.Valid L₁ N₁) (hT : TwistBound p Fr (p ^ G')) (deg : Fin n' → ℕ) (a : ℕ) (Y : ℝ)
    (c0 c'' cStar : ℕ) (Dd : ℝ) (hII : HypII CLa CD Csz p Fr k L₁ N₁ G' deg a Y c0 c'' cStar Dd)
    (g : Matrix (Fin k) (Fin k) (WF p n')) (hg : IsGLW g) (o : ℕ) (sig : MvPolynomial (TV n' k) (KK O))
    (hs : OneSidedLemma4Element p K O Fr N₁ G' (cPrime n' r Fr.TT.card c0 c'' cStar) deg Y hk o sig) :
    Realisable p n' S.w n' r g (cPrime n' r Fr.TT.card c0 c'' cStar) o sig := by
  subst hk
  obtain ⟨n, obd, xi, dd, mon, h1, h2, h3, h4, h5, rfl⟩ := hs
  have hren : rename (castVK (n' := n') (rfl : r + K = r + K)) (monPh O K p Fr mon xi) = monPh O K p Fr mon xi := by
    have : (castVK (n' := n') (rfl : r + K = r + K)) = id := by
      funext v
      rfl
    rw [this, rename_id_apply]
  rw [hren]
  exact h6 p n' r K O S hO hH Fr L₁ N₁ G' hV hT deg a Y c0 c'' cStar Dd hII g hg n obd xi dd h1 h2 mon h3 h4 o h5

section At

variable (p n' : ℕ) [Fact p.Prime] [NeZero n'] {W Qq O Kf : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W]
  [Field Qq] [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf]
  [Algebra O Kf] [Algebra (WF p n') O] (ι : Qq →+* Kf) (σ : Qq ≃+* Qq) {j : W →+* O} (w : O) {m : ℕ} (r : ℕ)
  (TT : Finset (Fin n')) (lam0 : Fin n' → Fin (m + 1) → ℤ)

def XiAt (K : ℕ) [NeZero r] [NeZero K] (hk : m + 1 = r + K) (Fr : Frames n' r) (N₁ G' : ℕ) (Y : ℝ)
    (c0 cP κ : ℕ) (bT bD : ℝ) (e : Edge W Qq (m + 1)) (g : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n')) {nb : ℕ}
    (FsB : Fin nb → ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O))
    (Θ : ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O) ≃ₗ[O]
      ↥(Vsp Kf (flW (m := m) (dT TT lam0)))) : Prop :=
  ∃ tF DX : ℕ, (tF : ℝ) ≤ bT ∧ (DX : ℝ) ≤ bD ∧
    ∀ F1 : ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O),
      (F1 : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) ∈ SgOp n' TT lam0 c0 FsB →
      Θ F1 ∈ Re p ι σ w r (flW (dT TT lam0)) e →
      Θ F1 ∉ scale (algebraMap O Kf w ^ (1 : ℤ)) (Re p ι σ w r (flW (dT TT lam0)) e) →
      ∃ (nq : ℕ) (o : Fin nq → ℕ) (sig : Fin nq → MvPolynomial (TV n' (m + 1)) (KK O)),
        (∀ q, o q ≤ tF ∧ HasMultideg (sig q) (dT TT lam0) ∧
          OneSidedLemma4Element p K O Fr N₁ G' cP (flatDeg lam0) Y hk (o q) (sig q)) ∧
        ValLe (Kf := KK O) (p : O) DX
          ((p : KK O) ^ κ * fock (subst p n' O w n' r g (F1 : MvPolynomial (TV n' (m + 1)) (KK O))) (∑ q, sig q) /
            (((∏ s, (dT TT lam0 s).factorial : ℕ) : ℕ) : KK O))

def RealAt (hS : HidaSetting p n' W Qq O Kf ι σ j w) (cP κ : ℕ) (e : Edge W Qq (m + 1))
    (g : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n'))
    (Θ : ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O) ≃ₗ[O]
      ↥(Vsp Kf (flW (m := m) (dT TT lam0)))) : Prop :=
  ∃ gv : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n'), IsGLW gv ∧
    ∀ (o : ℕ) (sig : MvPolynomial (TV n' (m + 1)) (KK O)), HasMultideg sig (dT TT lam0) → InWj w sig 0 →
      Realisable p n' w n' r gv cP o sig →
      ∃ T : Module.Dual Kf (Vsp Kf (flW (m := m) (dT TT lam0))),
        T ∈ scale (algebraMap O Kf w ^ (-(o : ℤ))) (dualLat O Kf (HL (O := O) ι σ (flW (dT TT lam0)) e.tgt)) ∧
        T ∈ Re' p ι σ w r (flW (dT TT lam0)) e ∧
        (∀ e' : Edge W Qq (m + 1), IsEdge p n' r e' → e'.tgt = e.tgt → e' ≠ e →
          T ∈ scale (algebraMap O Kf w ^ (cP : ℤ)) (Re' p ι σ w r (flW (dT TT lam0)) e')) ∧
        ∀ F : ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O),
          Θ F ∈ Re p ι σ w r (flW (dT TT lam0)) e →
          ∃ z : O, be p r (flW (dT TT lam0)) (Θ F) T =
            kapR hS ((p : KK O) ^ κ * fock (subst p n' O w n' r g (F : MvPolynomial (TV n' (m + 1)) (KK O))) sig /
              (((∏ s, (dT TT lam0 s).factorial : ℕ) : ℕ) : KK O)) + algebraMap O Kf (w ^ cP * z)

end At

def XiStep (C Ct0 CD CLa : ℝ) : Prop :=
  ∀ (p : ℕ) (W Qq O Kf : Type) [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [Field Qq] [Algebra W Qq]
    [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
    (ι : Qq →+* Kf) (σ : Qq ≃+* Qq) (j : W →+* O) (w : O)
    (n' m r : ℕ) [Fact p.Prime] [NeZero n'] (TT : Finset (Fin n')) (L₁ L₂ : ℕ) (de h x : ℝ)
    (lam0 : Fin n' → Fin (m + 1) → ℤ) (aT bT : Fin n' → ℤ) (a Y : ℝ) (cpp c0 Dp cStar : ℕ),
    ∀ hSet : UnramifiedQuadraticSetting p n' W Qq O Kf ι σ j w,
    Hyps C p n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar →
    ∀ φ : WF p n' ≃+* W, IsWittIdent σ φ →
    ∀ (K : ℕ) [NeZero r] [NeZero K] (hk : m + 1 = r + K) (hrk : r ≤ m + 1),
    ∀ F : Frames n' r, FramesOK TT L₁ L₂ (orbitWindowCount r de h x) (goodG' r de h x) F →
    ∀ E' : Fin n' → ℕ,
      (∀ t ∈ F.TT, E' t ≤ E0 p r (r + K) (orbitWindowCount r de h x) (goodG' r de h x) (cPrime n' r TT.card c0 cpp cStar) ∧
        E' t ≤ flatDeg lam0 t) →
    ∀ (nb : ℕ) (B : Fin nb → RRing O n' (r + K)),
      (∀ i, B i ∈ Gen O p K F
        (symbolSpaces CLa p n' O r K F (flatDeg lam0) L₁ (min (orbitWindowCount r de h x) (2 * TT.card))
          (mStar p F (r + K) (orbitWindowCount r de h x) (p ^ goodG' r de h x) (cPrime n' r TT.card c0 cpp cStar)) a Y)
        (G2d F (flatDeg lam0) E')) →
      LinearIndependent O B → (∃ T : Submodule O (RRing O n' (r + K)), IsCompl (Submodule.span O (Set.range B)) T) →
    ∀ e : Edge W Qq (m + 1), IsEdge p n' r e → e.tgt = colSpan W (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) →
    ∀ (hm : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) (g : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n')),
      IsUnit hm.det → IsGLW g → IsEdgeBasis p r e (hm * ((matQ φ g)⁻¹).transpose) →
    letI : Algebra (WF p n') O := algOfIdent j φ
    ∀ FsB : Fin nb → ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O),
      (∀ b, subst p n' O w n' r g (FsB b : MvPolynomial (TV n' (m + 1)) (KK O)) =
        symB p n' O w hk hrk F g (cPrime n' r TT.card c0 cpp cStar) (p ^ goodG' r de h x) (B b)) →
      ∀ Θ : ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O) ≃ₗ[O]
      ↥(Vsp Kf (flW (m := m) (dT TT lam0))),
        IsTrueTheta hSet.1 (dT TT lam0) (flW (dT TT lam0)) (vecE n') hm Θ →
        XiAt p n' ι σ w r TT lam0 K hk F (orbitWindowCount r de h x) (goodG' r de h x) Y c0 (cPrime n' r TT.card c0 cpp cStar)
          (kapFl p (m + 1) (dT TT lam0))
          (t0 C Ct0 p TT.card (orbitWindowCount r de h x) L₁ (goodG' r de h x) (m + 1) a + (TT.card : ℝ) * c0)
          (CD * (TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a) e g FsB Θ

def RealStep (C CLa : ℝ) : Prop :=
  ∀ (p : ℕ) (W Qq O Kf : Type) [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [Field Qq] [Algebra W Qq]
    [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
    (ι : Qq →+* Kf) (σ : Qq ≃+* Qq) (j : W →+* O) (w : O)
    (n' m r : ℕ) [Fact p.Prime] [NeZero n'] (TT : Finset (Fin n')) (L₁ L₂ : ℕ) (de h x : ℝ)
    (lam0 : Fin n' → Fin (m + 1) → ℤ) (aT bT : Fin n' → ℤ) (a Y : ℝ) (cpp c0 Dp cStar : ℕ),
    ∀ hSet : UnramifiedQuadraticSetting p n' W Qq O Kf ι σ j w,
    Hyps C p n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar →
    ∀ φ : WF p n' ≃+* W, IsWittIdent σ φ →
    ∀ (K : ℕ) [NeZero r] [NeZero K] (hk : m + 1 = r + K) (hrk : r ≤ m + 1),
    ∀ F : Frames n' r, FramesOK TT L₁ L₂ (orbitWindowCount r de h x) (goodG' r de h x) F →
    ∀ E' : Fin n' → ℕ,
      (∀ t ∈ F.TT, E' t ≤ E0 p r (r + K) (orbitWindowCount r de h x) (goodG' r de h x) (cPrime n' r TT.card c0 cpp cStar) ∧
        E' t ≤ flatDeg lam0 t) →
    ∀ (nb : ℕ) (B : Fin nb → RRing O n' (r + K)),
      (∀ i, B i ∈ Gen O p K F
        (symbolSpaces CLa p n' O r K F (flatDeg lam0) L₁ (min (orbitWindowCount r de h x) (2 * TT.card))
          (mStar p F (r + K) (orbitWindowCount r de h x) (p ^ goodG' r de h x) (cPrime n' r TT.card c0 cpp cStar)) a Y)
        (G2d F (flatDeg lam0) E')) →
      LinearIndependent O B → (∃ T : Submodule O (RRing O n' (r + K)), IsCompl (Submodule.span O (Set.range B)) T) →
    ∀ e : Edge W Qq (m + 1), IsEdge p n' r e → e.tgt = colSpan W (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) →
    ∀ (hm : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) (g : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n')),
      IsUnit hm.det → IsGLW g → IsEdgeBasis p r e (hm * ((matQ φ g)⁻¹).transpose) →
    letI : Algebra (WF p n') O := algOfIdent j φ
    ∀ FsB : Fin nb → ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O),
      (∀ b, subst p n' O w n' r g (FsB b : MvPolynomial (TV n' (m + 1)) (KK O)) =
        symB p n' O w hk hrk F g (cPrime n' r TT.card c0 cpp cStar) (p ^ goodG' r de h x) (B b)) →
      ∀ Θ : ↥((Pol (KK O) (ι := Fin n') (m + 1) (dT TT lam0)).restrictScalars O) ≃ₗ[O]
      ↥(Vsp Kf (flW (m := m) (dT TT lam0))),
        IsTrueTheta hSet.1 (dT TT lam0) (flW (dT TT lam0)) (vecE n') hm Θ →
        RealAt p n' ι σ w r TT lam0 hSet.1 (cPrime n' r TT.card c0 cpp cStar) (kapFl p (m + 1) (dT TT lam0)) e g Θ

def RestXi (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CH CE C6 C18 : ℝ) : Prop :=
  tableLineDegreeFive.admitted D CLa Ck Crk Cdeg → PlaneGramData.aux₃ D CH CE C6 C18 →
    ∃ Ct0 CDf C₁ : ℝ, 0 < Ct0 ∧ 0 < CDf ∧ 0 < C₁ ∧ ∀ C : ℝ, C₁ ≤ C → XiStep C Ct0 CDf CLa

def RestReal (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : Prop :=
  tableLineDegreeFive.admitted D CLa Ck Crk Cdeg → ∃ C₁ : ℝ, 0 < C₁ ∧ ∀ C : ℝ, C₁ ≤ C → RealStep C CLa

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4Realisable =====

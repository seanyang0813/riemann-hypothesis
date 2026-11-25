module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PredMemGamRanks
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvTrKEmbGLApply
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IsClassSumPairingOfIsFormsOf
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RightTranslationActionApply
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SumFibreEqSumOrbits
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExtUHInjective
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TilLatticesOfLevel
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EmbFColZeroMemMram
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC
public import Formalism.LocalToGlobal.KernelLattices.ColInst
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtLattice
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.JetsInIffStepField
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.JetStepEqZeroExample
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ChThOkOfColIn
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FirstCoupledKernelEquivariantCosets
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IntAtOfLocTop
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.KAtTopEquiv
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.KmapOfOkOfVecP
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.XiEntryInvariant
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevQFiniteIndexAndRoot
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.YsAtFiniteNonempty
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.StepBoxIffStepSuppDeg
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFieldsPrimesOk
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsSmulOfDecoEq
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IntAtNatCast
import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Basify

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLowerEmbF, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelAtPointPenultimateStepFirstCoupledKernel, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelsOverOfFamily

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLowerEmbF =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLowerEmbF", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PredMemGamRanks\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvTrKEmbGLApply\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IsClassSumPairingOfIsFormsOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.Col2.KerRat

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Forms GlobalTheory.Mem.Col2 Matrix

theorem sum_cover {K M G D G' D' : Type} [Field K] [AddCommGroup M] [Module K M] [Group G] [MulAction G D] [Group G']
    [MulAction G' D'] [Fintype (MulAction.orbitRel.Quotient G D)] [Fintype (MulAction.orbitRel.Quotient G' D')]
    (π : D → D') (hs : Function.Surjective π) (h1 : ∀ (g : G) d, ∃ g' : G', π (g • d) = g' • π d)
    (h2 : ∀ (g' : G') d e, g' • π d = π e → ∃ g : G, g • d = e)
    (h3 : ∀ d, Nat.card (MulAction.stabilizer G d) = Nat.card (MulAction.stabilizer G' (π d)))
    (r : MulAction.orbitRel.Quotient G D → D) (hr : ∀ q, Quotient.mk (MulAction.orbitRel G D) (r q) = q)
    (r' : MulAction.orbitRel.Quotient G' D' → D') (hr' : ∀ q, Quotient.mk (MulAction.orbitRel G' D') (r' q) = q)
    (f : D' → M) (hf : ∀ (g' : G') d, f (g' • d) = f d) :
    ∑ q, ((Nat.card (MulAction.stabilizer G (r q)) : ℕ) : K)⁻¹ • f (π (r q)) =
      ∑ q, ((Nat.card (MulAction.stabilizer G' (r' q)) : ℕ) : K)⁻¹ • f (r' q) := by
  refine Fintype.sum_bijective (fun q => Quotient.mk (MulAction.orbitRel G' D') (π (r q))) ⟨fun q q' h => ?_, fun q' => ?_⟩ _ _
    fun q => ?_
  · obtain ⟨g', hg⟩ : ∃ g' : G', g' • π (r q') = π (r q) := Quotient.exact h
    obtain ⟨g, hg⟩ := h2 g' _ _ hg
    rw [← hr q, ← hr q']
    exact Quotient.sound ⟨g, hg⟩
  · obtain ⟨d, hd⟩ := hs (r' q')
    refine ⟨Quotient.mk _ d, ?_⟩
    obtain ⟨g, hg⟩ : ∃ g : G, g • d = r (Quotient.mk _ d) := Quotient.exact (hr (Quotient.mk _ d))
    obtain ⟨g', hg'⟩ := h1 g d
    rw [← hr' q', ← hd]
    exact Quotient.sound ⟨g', by rw [← hg, hg']⟩
  · obtain ⟨g', hg⟩ : ∃ g' : G', g' • π (r q) = r' (Quotient.mk _ (π (r q))) := Quotient.exact (hr' (Quotient.mk _ (π (r q))))
    rw [← hg, hf, h3, Nat.card_congr (MulAction.stabilizerEquivStabilizer (G := G') (a := π (r q)) (b := g' • π (r q)) (g := g') rfl).toEquiv]

variable {E K ι : Type} [Field E] [NumberField E] [StarRing E] [Field K] [NumberField K] [StarRing K] [Fintype ι] {R : Ranks}
  (I : ChainIn E K ι R) (emb : ι → E →+* K) (σ : K →+* ℂ) (hc : ι → HCParam R) (hI : I.Ok)

abbrev PtKer : Type := ∀ i b b', (I.S i).D b → (I.S (i + 1)).D b' → (VV K (lamT hc i) →ₗ[K] VV K (lamT hc (i + 1)))

abbrev ev (i : ℕ) : VV K (lamT hc i) →ₛₗ[σ] (Fr emb σ (R.N i) → ℂ) :=
  evV emb (1 : Matrix (Fin (R.N i)) (Fin (R.N i)) E) (lamT hc i) σ

variable {I hc} (k : PtKer I hc)

def EqTarget (i : ℕ) : Prop := ∀ b b' (g' : (I.S (i + 1)).G b') d d',
  k i b b' d (g' • d') = (I.S (i + 1)).rho emb (lamT hc (i + 1)) b' g' ∘ₗ k i b b' d d'

def ReadsAt (i : ℕ) : Prop := ∀ c c' F, (I.chain emb σ hI hc).Kmap i c c' (ev emb σ hc i F) =
  ev emb σ hc (i + 1) (k i c.1 c'.1 ((I.S i).rep c) ((I.S (i + 1)).rep c') F)

def stepPt (i : ℕ) (x : (I.S i).Cl → VV K (lamT hc i)) (b' : (I.S (i + 1)).β) (d' : (I.S (i + 1)).D b') : VV K (lamT hc (i + 1)) :=
  letI := I.clFin hI i
  ∑ c : (I.S i).Cl, ((Nat.card ((I.S i).Stab c) : ℕ) : K)⁻¹ • k i c.1 b' ((I.S i).rep c) d' (x c)

def colPt (φ : ∀ b, (I.S 0).D b → VV K (lamT hc 0)) (j : ℕ) : ∀ b, (I.S j).D b → VV K (lamT hc j) :=
  Nat.rec (motive := fun j => ∀ b, (I.S j).D b → VV K (lamT hc j)) φ
    (fun j ψ => stepPt hI k j fun c => ψ c.1 ((I.S j).rep c)) j

variable {emb k}

theorem stepPt_smul {i : ℕ} (h : EqTarget emb k i) (x : (I.S i).Cl → VV K (lamT hc i)) (b' : (I.S (i + 1)).β)
    (g' : (I.S (i + 1)).G b') (d' : (I.S (i + 1)).D b') :
    stepPt hI k i x b' (g' • d') = (I.S (i + 1)).rho emb (lamT hc (i + 1)) b' g' (stepPt hI k i x b' d') := by
  unfold stepPt

  rw [map_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [h, map_smul]
  rfl

theorem colPt_smul (h : ∀ i, i < R.m → EqTarget emb k i) (φ : ∀ b, (I.S 0).D b → VV K (lamT hc 0)) {j : ℕ} (h0 : 0 < j) (hj : j ≤ R.m)
    (b : (I.S j).β) (g : (I.S j).G b) (d : (I.S j).D b) :
    colPt hI k φ j b (g • d) = (I.S j).rho emb (lamT hc j) b g (colPt hI k φ j b d) := by
  obtain ⟨i, rfl⟩ : ∃ i, j = i + 1 := ⟨j - 1, by omega⟩
  exact stepPt_smul hI (h i (by omega)) _ b g d

variable {σ hI}

theorem K_ev {i : ℕ} (h : ReadsAt emb σ hI k i) (x : (I.S i).Cl → VV K (lamT hc i)) :
    (I.chain emb σ hI hc).K i (fun c => ev emb σ hc i (x c)) =
      fun c' => ev emb σ hc (i + 1) (stepPt hI k i x c'.1 ((I.S (i + 1)).rep c')) := by
  funext c'
  unfold stepPt

  rw [map_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [LinearMap.map_smulₛₗ, map_inv₀, map_natCast, ← h]
  rfl

theorem chain_ev (h : ∀ i, i < R.m → ReadsAt emb σ hI k i) (φ : ∀ b, (I.S 0).D b → VV K (lamT hc 0)) {j : ℕ} (hj : j ≤ R.m) :
    letI := (I.chain emb σ hI hc).clsFin
    Formalism.ThetaLiftIndependence.chainOpM (I.chain emb σ hI hc).wt (I.chain emb σ hI hc).Kmap j (fun c => ev emb σ hc 0 (φ c.1 ((I.S 0).rep c))) =
      fun c => ev emb σ hc j (colPt hI k φ j c.1 ((I.S j).rep c)) := by
  induction j with
  | zero => rfl
  | succ j ih =>
    refine Eq.trans ?_ (K_ev (h j (by omega)) fun c => colPt hI k φ j c.1 ((I.S j).rep c))
    rw [← ih (by omega)]
    rfl

theorem exists_K_embF {i : ℕ} (h : ReadsAt emb σ hI k i) (h' : EqTarget emb k i) (hF : ((I.S i).fam emb (lamT hc i)).Ok)
    (hF' : ((I.S (i + 1)).fam emb (lamT hc (i + 1))).Ok) (x : (I.S i).FormsK emb (lamT hc i) hF) :
    ∃ y, (I.S (i + 1)).embF emb σ (lamT hc (i + 1)) hF' y = (I.chain emb σ hI hc).K i ((I.S i).embF emb σ (lamT hc i) hF x) :=
  ⟨⟨fun c' => stepPt hI k i x.1 c'.1 ((I.S (i + 1)).rep c'), fun c' g =>
    (stepPt_smul hI h' x.1 c'.1 g.1 _).symm.trans (congrArg (stepPt hI k i x.1 c'.1) g.2)⟩, (K_ev h x.1).symm⟩

variable (Q : PerIn I) (hQ : Q.Ok)

theorem lower_ev (x : (I.S R.m).Cl → VV K (lamT hc R.m)) (c : Q.S'.Cl) :
    (Q.per emb σ hI hQ hc).lowerMap ((Q.per emb σ hI hQ hc).evz fun c => ev emb σ hc R.m (x c)) c =
      evV emb (1 : Matrix (Fin (R.N R.m - 1)) (Fin (R.N R.m - 1)) E) Q.sgT σ
        (Br.brAt (N_m_succ R) (lamT hc R.m) Q.sgT (fun τ => emb τ Q.tz)
          ((I.S R.m).rho emb (lamT hc R.m) Q.b0 ((I.S R.m).mv Q.b0 (Q.tilPt c)) (x (Q.tilC c)))) := by
  show fnOf (Gr emb σ (R.N R.m - 1)) (shiftOf Q.sgT) 1 (Q.br emb σ hc
      (polOf (Gr emb σ (R.N R.m)) (shiftOf (lamT hc R.m)) (fr0 emb σ (R.N R.m))
        ((I.S R.m).tr emb σ Q.b0 ((I.S R.m).mv Q.b0 (Q.tilPt c))
          (evV emb (1 : Matrix (Fin (R.N R.m)) (Fin (R.N R.m)) E) (lamT hc R.m) σ (x (Q.tilC c)))))) = _
  rw [← LvT.BuiltChain.evV_rho, LvT.BuiltChain.polOf_evV, LvT.BuiltChain.br_map]
  rfl

theorem exists_lower_embF (hW : ∀ τ, Br.Interlace (N_m_succ R) (lamT hc R.m τ) (Q.sgT τ))
    (hS : ∀ τ, Br.SameShift (lamT hc R.m τ) (Q.sgT τ)) (hF : ((I.S R.m).fam emb (lamT hc R.m)).Ok) (hP : (Q.S'.fam emb Q.sgT).Ok)
    (x : (I.S R.m).FormsK emb (lamT hc R.m) hF) :
    ∃ y, Q.S'.embF emb σ Q.sgT hP y =
      (Q.per emb σ hI hQ hc).lowerMap ((Q.per emb σ hI hQ hc).evz ((I.S R.m).embF emb σ (lamT hc R.m) hF x)) := by
  let v : Q.S'.Cl → VV K (lamT hc R.m) := fun c =>
    (I.S R.m).rho emb (lamT hc R.m) Q.b0 ((I.S R.m).mv Q.b0 (Q.tilPt c)) (x.1 (Q.tilC c))
  let B := Br.brAt (N_m_succ R) (lamT hc R.m) Q.sgT (fun τ => emb τ Q.tz)
  refine ⟨⟨fun c => B (v c), fun c g => ?_⟩, funext fun c => (lower_ev Q hQ x.1 c).symm⟩
  have h1 : (I.S R.m).rho emb (lamT hc R.m) Q.b0 (((I.S R.m).mv Q.b0 (Q.tilPt c))⁻¹ * Q.ext c.1 g.1 *
      (I.S R.m).mv Q.b0 (Q.tilPt c)) (x.1 (Q.tilC c)) = x.1 (Q.tilC c) := x.2 (Q.tilC c) (Q.stabMap hQ c g)
  have h2 : (I.S R.m).rho emb (lamT hc R.m) Q.b0 (Q.ext c.1 g.1) (v c) = v c := by
    have h3 := congrArg ((I.S R.m).rho emb (lamT hc R.m) Q.b0 ((I.S R.m).mv Q.b0 (Q.tilPt c))) h1
    rw [← Module.End.mul_apply, ← map_mul, ← mul_assoc, mul_inv_cancel_left, map_mul, Module.End.mul_apply] at h3
    exact h3
  show ((Q.S'.chr c.1 g.1 : Kˣ) : K) • rhoVr emb Q.sgT (Q.S'.gam c.1 g.1) (B (v c)) = B (v c)
  rw [← LvT.BuiltChain.brAt_rhoVr emb (N_m_succ R) hW hS _ (Q.S'.gam c.1 g.1) ((I.S R.m).gam Q.b0 (Q.ext c.1 g.1))
    (fun z => by rw [← map_inv, ← map_inv, ← map_inv]; exact hQ.gam_ini _ _ z)
    (fun z => by rw [← map_inv, ← map_inv]; exact hQ.gam_last _ _ z), ← map_smul, ← hQ.chr_ext]
  exact congrArg B h2

theorem ptilCol_ev (h : ∀ i, i < R.m → ReadsAt emb σ hI k i) (h' : ∀ i, i < R.m → EqTarget emb k i)
    (φ : ∀ b, (I.S 0).D b → VV K (lamT hc 0)) (F : Q.Mt emb σ) (y : Q.S'.Cl → VV K Q.sgT)
    (hy : ∀ c, Q.rd emb σ F c = MvPolynomial.map σ (y c).1) :
    (Q.per emb σ hI hQ hc).PtilCol (fun c => ev emb σ hc 0 (φ c.1 ((I.S 0).rep c))) F = letI := Q.clFin hQ
      σ (∑ c : Q.S'.Cl, ((Nat.card (Q.S'.Stab c) : ℕ) : K)⁻¹ • pairBK Q.sgT
        (Br.brAt (N_m_succ R) (lamT hc R.m) Q.sgT (fun τ => emb τ Q.tz) (colPt hI k φ R.m Q.b0 (Q.tilPt c))) (y c)) := by
  unfold PeriodMap.PtilCol PeriodMap.Ptil ColumnChain.col
  rw [chain_ev h φ le_rfl]
  have e := funext (lower_ev (σ := σ) (emb := emb) (hI := hI) Q hQ fun c => colPt hI k φ R.m c.1 ((I.S R.m).rep c))
  refine (congrArg (fun z => (Q.per emb σ hI hQ hc).period z F) e).trans ?_

  simp only [LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, map_sum, map_mul, map_inv₀, map_natCast]
  refine Finset.sum_congr rfl fun c _ => congrArg _ ?_
  have e2 := colPt_smul hI h' φ (lt_of_lt_of_le (by norm_num) R.two_le_m) le_rfl Q.b0 ((I.S R.m).mv Q.b0 (Q.tilPt c))
    ((I.S R.m).rep ((I.S R.m).cl Q.b0 (Q.tilPt c)))
  rw [GStep.mv_smul] at e2
  rw [pairBK_apply, PeriodOnStep.map_pairB, ← hy, ← PeriodOnStep.polOf_evV σ emb, e2]
  rfl

end GlobalTheory.Mem.Col2.KerRat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLowerEmbF =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelAtPointPenultimateStepFirstCoupledKernel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelAtPointPenultimateStepFirstCoupledKernel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLowerEmbF\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RightTranslationActionApply\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SumFibreEqSumOrbits\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExtUHInjective\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IsClassSumPairingOfIsFormsOf\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TilLatticesOfLevel\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EmbFColZeroMemMram\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.Col2.KerRat

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Forms Formalism.L2.Ker GlobalTheory.Mem.Col2 GlobalTheory.TopStep GlobalTheory.GO
open GlobalTheory.LvT.Built (kAt)

theorem sum_cl {E K M : Type} [Field E] [NumberField E] [Field K] [AddCommMonoid M] {n : ℕ} (S : GStep E K n) {i : Fintype S.Cl}
    [∀ b, Fintype (MulAction.orbitRel.Quotient (S.G b) (S.D b))] (g : S.Cl → M) : ∑ c, g c = ∑ b, ∑ q, g ⟨b, q⟩ := by
  rw [← Fintype.sum_sigma]
  congr 1
  congr 1
  exact Subsingleton.elim _ _

theorem csOf_eq {K M : Type} [Field K] [NumberField K] [StarRing K] [AddCommGroup M] [Module K M] (S : GSD K) (h : S.Ok) (s : S.Sec)
    (f : S.D → M) : S.csOf h s f = letI := h.fintypeCl
      ∑ q, ((Nat.card (MulAction.stabilizer S.G (s.rep q)) : ℕ) : K)⁻¹ • f (s.rep q) := by
  unfold GSD.csOf
  simp only [GSD.wt_eq]

theorem sum_step {E K M β : Type} [Field E] [NumberField E] [Field K] [NumberField K] [StarRing K] [AddCommGroup M] [Module K M]
    {n : ℕ} (S : GStep E K n) {i : Fintype S.Cl} [Fintype β] (e : β ≃ S.β) (T : β → GSD K) (hT : ∀ a, (T a).Ok)
    (π : ∀ a, S.D (e a) → (T a).D) (hs : ∀ a, Function.Surjective (π a))
    (h1 : ∀ a (g : S.G (e a)) d, ∃ g' : (T a).G, π a (g • d) = g' • π a d)
    (h2 : ∀ a (g' : (T a).G) d d', g' • π a d = π a d' → ∃ g : S.G (e a), g • d = d')
    (h3 : ∀ a d, Nat.card (MulAction.stabilizer (S.G (e a)) d) = Nat.card (MulAction.stabilizer (T a).G (π a d)))
    (F : S.Cl → M) (f : ∀ a, (T a).D → M) (hF : ∀ a q, F ⟨e a, q⟩ = f a (π a (S.rp _ q)))
    (hf : ∀ a (g : (T a).G) d, f a (g • d) = f a d) :
    ∑ c, ((Nat.card (S.Stab c) : ℕ) : K)⁻¹ • F c = ∑ a, (T a).csOf (hT a) (T a).outSec (f a) := by
  letI : ∀ b, Fintype (MulAction.orbitRel.Quotient (S.G b) (S.D b)) :=
    fun b => @Fintype.ofFinite _ (Finite.of_injective (@Sigma.mk _ (fun b => MulAction.orbitRel.Quotient (S.G b) (S.D b)) b)
      sigma_mk_injective)
  rw [sum_cl]
  refine (Fintype.sum_equiv e _ _ fun a => ?_).symm
  rw [csOf_eq]
  letI := (hT a).fintypeCl
  refine (sum_cover (π a) (hs a) (h1 a) (h2 a) (h3 a) (S.rp _) (S.rp_spec _) _ (T a).outSec.spec (f a) (hf a)).symm.trans ?_
  exact Finset.sum_congr rfl fun q _ => congrArg _ (hF a q).symm

theorem eqFun_sum {K β : Type} [Field K] [NumberField K] [StarRing K] (S : GSD K) [Fintype β] (f : β → S.EqFun) (d : S.D) :
    (∑ a, f a).1 d = ∑ a, (f a).1 d := by
  rw [Submodule.coe_sum, Finset.sum_apply]

theorem csOf_apply₂ {K M M' : Type} [Field K] [NumberField K] [StarRing K] (S : GSD K) (h : S.Ok) (s : S.Sec) [AddCommGroup M]
    [Module K M] [AddCommGroup M'] [Module K M'] (B : S.D → (M →ₗ[K] M' →ₗ[K] K)) (x : M) (y : M') :
    S.csOf h s B x y = S.csOf h s fun d => B d x y := by
  simp only [GSD.csOf, LinearMap.sum_apply, LinearMap.smul_apply]

theorem comp_appOf {K : Type} [Field K] [NumberField K] [StarRing K] {S₀ S S₁ : GSD K} {Y : Cpl S}
    (A : CplKer S₀ S S₁ Y) (h₀ : S₀.Ok) (h : S.Ok) (φ : S₀.D → S₀.V) (d₁ : S₁.D) :
    (A.comp h S.outSec).appOf h₀ S₀.outSec φ d₁ =
      (cplKer2 A).appOf (cplGSD_ok Y h) (cplGSD S Y).outSec ((cplKer1 A).appOf h₀ S₀.outSec φ) d₁ := by
  unfold ClsKer.appOf

  simp only [cpl_comp_k, LinearMap.sum_apply, LinearMap.smul_apply, LinearMap.comp_apply, map_sum, map_smul,
  Finset.smul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun q _ => Finset.sum_congr rfl fun c _ => ?_
  rw [smul_comm]

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m)
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K))}
  (A : Amb X) {G : ChGlob X R.m} {m2 : ℕ} (u : Pr.Word)

def idxEquiv {j : ℕ} (h : j < R.m) : L.β j ≃ Idx sel mu L j where
  toFun al := Idx.of al h
  invFun b := b.get h
  left_inv _ := rfl
  right_inv b := Idx.of_get b h h

theorem kAt_mat (hL : L.Ok Ch sel mu cst G m2) {i : ℕ} (hi : i + 2 < R.m) (al : L.β i) (be : L.β (i + 1))
    (p : PtAt R sel mu cst u i) (p' : PtAt R sel mu cst u (i + 1)) :
    kAt W Ch sel mu cst L A u i (Idx.of al (by omega)) (Idx.of be (by omega)) p p' =
      matK W Ch sel mu cst L (chTh W Ch sel mu cst A u m2) i al be p.1.1 p'.1.1 := by
  rw [matK_eq_xiAt W Ch sel mu cst L _ hi]
  unfold kAt KerT.ker
  rw [← stepC_eq_stepT W Ch sel mu cst (muqTie_of_ok Ch sel mu cst L hL) A u i (by omega)]
  rfl

theorem kernelAtPoint_penultimateStep_firstCoupledKernel (hL : L.Ok Ch sel mu cst G m2) (al : L.β m2) (b' : Idx sel mu L (m2 + 1))
    (p : PtAt R sel mu cst u m2) (p' : PtAt R sel mu cst u (m2 + 1)) :
    kAt W Ch sel mu cst L A u m2 (Idx.of al (by have := hL.hm; omega)) b' p p' =
      cp1K W Ch sel mu cst L (chTh W Ch sel mu cst A u m2) al p.1.1 p'.1.1 p'.1.2 := by
  have hm := hL.hm
  rw [firstCoupledKernel_eq_columnChainDatum W Ch sel mu cst L _ hm.symm al b']
  unfold kAt KerT.ker
  rw [← stepC_eq_stepT W Ch sel mu cst (muqTie_of_ok Ch sel mu cst L hL) A u m2 (by omega)]
  rfl

theorem ker_top (hL : L.Ok Ch sel mu cst G m2) (p : PtAt R sel mu cst u (m2 + 1)) (q : ChPt (R := R) sel mu u R.m) :
    KerT.ker W Ch sel mu cst A u (m2 + 1) R.m p.1.1.deco.1.N (frsF sel mu p.1.1) q.deco.1.N (frsF sel mu q)
      (xiOver Ch sel mu cst m2 rfl p.1.1 p.1.2 q) = topDegreeKTwo W Ch sel mu cst (chTh W Ch sel mu cst A u m2) p.1.1 p.1.2 q := by
  have hm := hL.hm
  rw [k2top_eq_xiOver W Ch sel mu cst _ hm.symm]
  unfold KerT.ker
  rw [← stepC_eq_stepT W Ch sel mu cst (muqTie_of_ok Ch sel mu cst L hL) A u (m2 + 1) (by omega)]
  rfl


variable {W Ch u} in
theorem k2top_tilF (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) (hm : R.m = m2 + 2) (hc : cst.Ok) (H : TilOk Pr sel mu u)
    {T : ChTh W sel mu u m2} (hT : TameFr T.top) (p : ChPt (R := R) sel mu u (m2 + 1)) (Y : Set (Sp X.E (R.N (m2 + 1))))
    (d : XPt Pr R sel mu) :
    topDegreeKTwo W Ch sel mu cst T p Y (tilF sel mu u d) = cp2K W Ch sel mu cst T p Y (toRow sel mu d) := by
  have hQ : ∀ P : QE sel (mu : Chr X.F X.E X.K), Pr.piT u ∉ P.1.asIdeal := fun P => H.2.1 (TopStep.inQ Pr sel mu P)
  have e0 := forgetFr_tilF sel mu hPr u hQ d
  unfold topDegreeKTwo cp2K
  split_ifs with hY
  · have hκ : ∀ P : rowSG Pr sel mu, ∃ κ : GLint X.E (R.N R.m) P.1, redGL _ P.1 κ = 1 ∧
        frsF sel mu (tilF sel mu u d) P = frsT sel mu u (toRow sel mu d) P * κ.1 := fun P => by
      refine exists_of_isLiftFr ?_ (liftFr_spec (tilQ sel mu u (toRow sel mu d)).2 P)
      rw [← e0]
      unfold frsF
      split_ifs with hP
      · have h := liftFr_spec (tilF sel mu u d).deco.2 ⟨P.1, hP⟩
        refine ⟨h.1, fun x hx => ?_⟩
        exact (congrFun (forgetDeco_be_of_mem _ P hP) _).trans (h.2 x hx)
      · exact isLiftFr_forgetFr _ P hP
    choose κ hκ e using hκ
    rw [XiTop_tilF Ch sel mu cst hX hPr hsel hc H hm p hY, funext e, tilF_N sel mu hPr u hQ]
    unfold kerOf
    refine congrArg (latSum _ _) (funext fun x => congrArg _ ?_)
    exact hT _ _ _ _ _ _ κ ⟨p.deco.2.lat, p.deco.2.uni⟩ ⟨(tilQ sel mu u _).2.lat, (tilQ sel mu u _).2.uni⟩ hκ
  · rfl

variable (Tp : TopLev X Pr R (QE sel (mu : Chr X.F X.E X.K)))


variable (sel mu cst L) in
structure Reps where
  rp : ∀ j b, MulAction.orbitRel.Quotient ((stepAt sel mu cst L Tp u j).G b) (GStep.D (stepAt sel mu cst L Tp u j) b) →
    (stepAt sel mu cst L Tp u j).D b
  spec : ∀ j b q, Quotient.mk (@MulAction.orbitRel _ _ _ ((stepAt sel mu cst L Tp u j).actD b)) (rp j b q) = q

variable {u Tp} (r : Reps sel mu cst L u Tp)

@[reducible] def Reps.step (j : ℕ) : GStep X.E X.K (R.N j) :=
  { stepAt sel mu cst L Tp u j with rp := r.rp j, rp_spec := r.spec j }

theorem sum_low {M : Type} [AddCommGroup M] [Module X.K M] {j : ℕ} (hj : j + 1 < R.m) (hF : (chF W sel mu L u j).Ok)
    {i : Fintype (GStep.Cl (r.step j))} (F : GStep.Cl (r.step j) → M)
    (f : ∀ al : L.β j, ChPt (R := R) sel mu u j → M)
    (e : ∀ al q, F ⟨Idx.of al (Nat.lt_of_succ_lt hj), q⟩ =
      f al (GStep.rep (r.step j) ⟨Idx.of al (Nat.lt_of_succ_lt hj), q⟩).1.1)
    (hf : ∀ al (g : FrmG (L.levG j al) (L.levQ j al)) (d : ChPt (R := R) sel mu u j), f al (g • d) = f al d) :
    ∑ c, ((Nat.card (GStep.Stab (r.step j) c) : ℕ) : X.K)⁻¹ • F c =
      ∑ al, ((chF W sel mu L u j).mem al).csOf (hF al) ((chF W sel mu L u j).mem al).outSec (f al) := by
  have hy := ysAt_ys_of_ne (R := R) sel mu cst hj.ne
  exact sum_step (r.step j) (idxEquiv (Nat.lt_of_succ_lt hj)) (chF W sel mu L u j).mem hF (fun _ p => p.1.1)
    (fun _ q => exists_ptAt sel mu cst q) (fun _ g _ => ⟨g, rfl⟩) (fun _ g d e h => ⟨g, StepZero.pt_ext hy h⟩)
    (fun al d => congrArg (fun H : Subgroup (FrmG (L.levG j al) (L.levQ j al)) => Nat.card H)
      (Subgroup.ext fun g => ⟨fun h => congrArg (fun p : PtAt R sel mu cst u j => p.1.1) h, fun h => StepZero.pt_ext hy h⟩)) F f e hf

theorem sum_mid {M : Type} [AddCommGroup M] [Module X.K M] (hL : L.Ok Ch sel mu cst G m2) (b : L.β (m2 + 1))
    (hY : YbHyp (R := R) sel mu cst L u m2 b) (hC : (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)).Ok)
    {i : Fintype (GStep.Cl (r.step (m2 + 1)))} (F : GStep.Cl (r.step (m2 + 1)) → M)
    (f : (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)).D → M)
    (e : ∀ c h, F c = f ⟨(GStep.rep (r.step (m2 + 1)) c).1, h⟩)
    (hf : ∀ (g : (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)).G) d,
      f (letI := (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)).actD; g • d) = f d) :
    ∑ c, ((Nat.card (GStep.Stab (r.step (m2 + 1)) c) : ℕ) : X.K)⁻¹ • F c =
      (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)).csOf hC (GSD.outSec _) f := by
  have hm := hL.hm
  have hj : m2 + 1 < R.m := by omega
  let ε : Unit ≃ Idx sel mu L (m2 + 1) := ⟨fun _ => Idx.of b hj, fun _ => (), fun _ => rfl, fun b' => by
    obtain ⟨b₀, h₀⟩ := hL.last_uniq
    show Idx.of b hj = b'
    rw [← Idx.of_get b' hj hj, h₀ (b'.get hj), h₀ b]⟩
  refine (sum_step (r.step (m2 + 1)) ε
    (fun _ => cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)) (fun _ => hC)
    (fun _ p => ⟨p.1, PtAt.mem_ybSet p hm.symm⟩)
    (fun _ q => ⟨⟨q.1, by rw [ysAt_ys_of_eq sel mu cst hm.symm]; exact q.2⟩, rfl⟩)
    (fun _ g _ => ⟨g, rfl⟩) (fun _ g d e h => ⟨g, Subtype.ext (congrArg (fun p : (ybCpl W sel mu cst L u m2 b hY).Pts => p.1) h)⟩)
    (fun _ d => congrArg (fun H : Subgroup (FrmG (L.levG (m2 + 1) b) (L.levQ (m2 + 1) b)) => Nat.card H)
      (Subgroup.ext fun g => ⟨fun h => Subtype.ext (congrArg (fun p : PtAt R sel mu cst u (m2 + 1) => p.1) h),
        fun h => Subtype.ext (congrArg (fun p : (ybCpl W sel mu cst L u m2 b hY).Pts => p.1) h)⟩))
    F (fun _ => f) (fun _ q => e _ _) fun _ => hf).trans (Fintype.sum_unique _)

theorem sum_row {M : Type} [AddCommGroup M] [Module X.K M] (P : LevFam X.E X.K R.r Pr.vGs)
    (hd : Disjoint Pr.vGs (QE sel (mu : Chr X.F X.E X.K))) (hM : (mtildeGSD W Ch sel mu P).Ok)
    {i : Fintype (GStep.Cl (stepX Ch sel mu P))} (f : RowPt Pr R sel mu → M)
    (hf : ∀ (g : (mtildeGSD W Ch sel mu P).G) (d : (mtildeGSD W Ch sel mu P).D), f (g • d) = f d) :
    ∑ c, ((Nat.card (GStep.Stab (stepX Ch sel mu P) c) : ℕ) : X.K)⁻¹ • f (toRow sel mu (GStep.rep (stepX Ch sel mu P) c).1.1) =
      (mtildeGSD W Ch sel mu P).csOf hM (GSD.outSec _) f := by
  have hy : ∀ N, (Ys.triv X (R.N R.m - 1)).ys N = {∅} := fun _ => rfl
  refine (sum_step (stepX Ch sel mu P) (Equiv.refl Unit) (fun _ => mtildeGSD W Ch sel mu P) (fun _ => hM)
    (fun _ p => toRow sel mu p.1.1) (fun _ q => ?_) (fun _ g d => ⟨toRowG Ch sel mu P g, toRow_smul Ch sel mu P g d.1.1⟩)
    (fun _ g d e h => ?_) (fun _ d => ?_) _ (fun _ => f) (fun _ _ => rfl) fun _ => hf).trans (Fintype.sum_unique _)
  · obtain ⟨p, rfl⟩ := toRow_surjective sel mu q
    exact ⟨trivPt X _ _ _ _ p, rfl⟩
  · obtain ⟨g, -, h⟩ := exists_toRowG_smul Ch sel mu P hd g d.1.1 e.1.1 h
    exact ⟨g, StepZero.pt_ext hy h⟩
  · refine Eq.trans ?_ (card_stabilizer_toRow Ch sel mu P hd d.1.1)
    exact congrArg (fun H : Subgroup (FrmG (rowTyG Ch P) (levQX R sel mu)) => Nat.card H)
      (Subgroup.ext fun g => ⟨fun h => congrArg (fun p : (stepX Ch sel mu P).D () => p.1.1) h, fun h => StepZero.pt_ext hy h⟩)

section Col

variable (rho : ∀ i, (r.step i).Cl → ℂ) (rho' : ∀ i, (r.step (i + 1)).Cl → ℂ)
  (jet : ∀ i, (r.step i).Cl → (r.step (i + 1)).Cl → (Pol ℂ X.Tau (R.N i) →ₗ[ℂ] Pol ℂ X.Tau (R.N (i + 1)))) (DG : ℕ)

@[reducible] def Reps.chain : ChainIn X.E X.K X.Tau R := ⟨r.step, rho, rho', jet, DG⟩

variable (hI : (r.chain rho rho' jet DG).Ok)

def kPt : PtKer (r.chain rho rho' jet DG) (W.hc u) := fun i b b' p p' => kAt W Ch sel mu cst L A u i b b' p p'

def colAt (φ : MfV W Ch u) (j : ℕ) (b : Idx sel mu L j) (p : PtAt R sel mu cst u j) : VV X.K (W.lamTrue u j) :=
  colPt hI (kPt W Ch A r rho rho' jet DG) (fun _ p => φ.1 p.1.1.deco) j b p

theorem colAt_succ (φ : MfV W Ch u) (j : ℕ) (b' : Idx sel mu L (j + 1)) (p' : PtAt R sel mu cst u (j + 1)) :
    colAt W Ch A r rho rho' jet DG hI φ (j + 1) b' p' =
      ∑ c ∈ @Finset.univ (GStep.Cl (r.step j)) ((r.chain rho rho' jet DG).clFin hI j),
        ((Nat.card (GStep.Stab (r.step j) c) : ℕ) : X.K)⁻¹ •
          kAt W Ch sel mu cst L A u j c.1 b' (GStep.rep _ c) p' (colAt W Ch A r rho rho' jet DG hI φ j c.1 (GStep.rep _ c)) := rfl

variable {b : L.β (m2 + 1)} {hY : YbHyp (R := R) sel mu cst L u m2 b} {P : LevFam X.E X.K R.r Pr.vGs}
  (hK : KerEquivC W Ch sel mu cst L A u m2 b hY P) (hF : ∀ j, (chF W sel mu L u j).Ok) (hL : L.Ok Ch sel mu cst G m2)
  (φ : MfV W Ch u)

theorem colAt_low {j : ℕ} (hj : j ≤ m2) (al : L.β j) (p : PtAt R sel mu cst u j) :
    colAt W Ch A r rho rho' jet DG hI φ j (Idx.of al (by have := hL.hm; omega)) p =
      ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF j (startC hL u φ) al).1 p.1.1 := by
  have hm := hL.hm
  induction j with
  | zero => rfl
  | succ j ih =>
    have hj' : j < m2 := hj
    rw [colAt_succ]
    refine (sum_low (M := VV X.K (W.lamTrue u (j + 1))) W r (by omega) (hF j)
      (fun c => kAt W Ch sel mu cst L A u j c.1 _ (GStep.rep _ c) p (colAt W Ch A r rho rho' jet DG hI φ j c.1 (GStep.rep _ c)))
      (fun a d => ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk j a al).k d p.1.1
      (((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF j (startC hL u φ) a).1 d)) (fun a q => ?_)
      fun a g d => ClsKer.term_smul ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk j a al)
        ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF j (startC hL u φ) a) g d p.1.1).trans ?_
    · rw [← ih hj'.le]
      refine LinearMap.congr_fun ((kAt_mat W Ch A u hL (by omega) a al _ p).trans ?_) _
      have e : (chKerC W Ch sel mu cst L A u m2 b hY P hK).kk j a al = ⟨_, hK.1 j hj' a al⟩ := dif_pos hj'
      rw [e]
    · show _ = ((∑ a, (((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk j a al).opOf (hF j a) _) ∘ₗ (LinearMap.proj a))
        ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF j (startC hL u φ))).1 p.1.1
      rw [LinearMap.sum_apply, Submodule.coe_sum, Finset.sum_apply]
      rfl

def midForm : (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)).EqFun :=
  ∑ al, (cplKer1 ((chKerC W Ch sel mu cst L A u m2 b hY P hK).cp al)).op (hF m2 al)
    ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF m2 (startC hL u φ) al)

theorem colAt_mid (b' : Idx sel mu L (m2 + 1)) (p : PtAt R sel mu cst u (m2 + 1)) (h) :
    colAt W Ch A r rho rho' jet DG hI φ (m2 + 1) b' p = (midForm W Ch A hK hF hL φ).1 ⟨p.1, h⟩ := by
  have hm := hL.hm
  rw [colAt_succ]
  refine (sum_low (M := VV X.K (W.lamTrue u (m2 + 1))) W r (by omega) (hF m2)
    (fun c => kAt W Ch sel mu cst L A u m2 c.1 b' (GStep.rep _ c) p (colAt W Ch A r rho rho' jet DG hI φ m2 c.1 (GStep.rep _ c)))
    (fun a d => (cplKer1 ((chKerC W Ch sel mu cst L A u m2 b hY P hK).cp a)).k d ⟨p.1, h⟩
      (((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF m2 (startC hL u φ) a).1 d)) (fun a q => ?_)
      fun a g d => ClsKer.term_smul (cplKer1 ((chKerC W Ch sel mu cst L A u m2 b hY P hK).cp a))
        ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF m2 (startC hL u φ) a) g d ⟨p.1, h⟩).trans ?_
  · rw [← colAt_low W Ch A r rho rho' jet DG hI hK hF hL φ le_rfl]
    exact LinearMap.congr_fun (kernelAtPoint_penultimateStep_firstCoupledKernel W Ch A u hL a b' _ p) _
  · refine Eq.trans ?_ (eqFun_sum (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)) _ _).symm
    rfl

theorem colAt_last {j : ℕ} (e : j = m2 + 1 + 1) (h : j = R.m) (b' : Idx sel mu L j) (p' : PtAt R sel mu cst u j) :
    colAt W Ch A r rho rho' jet DG hI φ j b' p' =
      ∑ c ∈ @Finset.univ (GStep.Cl (r.step (m2 + 1))) ((r.chain rho rho' jet DG).clFin hI (m2 + 1)),
        ((Nat.card (GStep.Stab (r.step (m2 + 1)) c) : ℕ) : X.K)⁻¹ •
          KerT.ker W Ch sel mu cst A u (m2 + 1) j (GStep.rep _ c).1.1.deco.1.N (frsF sel mu (GStep.rep _ c).1.1)
            p'.1.1.deco.1.N (frsF sel mu p'.1.1) (xiOver Ch sel mu cst m2 h (GStep.rep _ c).1.1 (GStep.rep _ c).1.2 p'.1.1)
            (colAt W Ch A r rho rho' jet DG hI φ (m2 + 1) c.1 (GStep.rep _ c)) := by
  subst e
  rw [colAt_succ]
  refine Finset.sum_congr rfl fun c _ => congrArg _ ?_
  rw [← xiAt_last Ch sel mu cst L (b := c.1) (b' := b') h]
  rfl

theorem colAt_top (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) (H : TilOk Pr sel mu u) (b' : Idx sel mu L R.m)
    (d : XPt Pr R sel mu) :
    colAt W Ch A r rho rho' jet DG hI φ R.m b' (topPt sel mu cst u (tilF sel mu u d)) =
      (colMu W Ch sel mu cst L A u m2 b hY P hK hF hL φ).1 (toRow sel mu d) := by
  have hm := hL.hm
  have hC := cplGSD_ok (ybCpl W sel mu cst L u m2 b hY) (hF (m2 + 1) b)
  let k2 : ClsKer (cplGSD (midGSD W sel mu L u m2 b) (ybCpl W sel mu cst L u m2 b hY)) (evGSD W Ch sel mu P u) :=
    ⟨fun q d => cp2K W Ch sel mu cst (chTh W Ch sel mu cst A u m2) q.1.1 q.1.2 d, fun g g₁ q d => hK.2.2 g g₁ q.1.1 q.1.2 d⟩
  rw [colAt_last W Ch A r rho rho' jet DG hI φ hm rfl]
  refine (sum_mid (M := VV X.K (W.lamTrue u R.m)) W Ch r hL b hY hC _ (fun q => k2.k q (toRow sel mu d) ((midForm W Ch A hK hF hL φ).1 q)) (fun c h => ?_)
    fun g q => ClsKer.term_smul _ _ g q _).trans ?_
  · rw [colAt_mid W Ch A r rho rho' jet DG hI hK hF hL φ _ _ h]
    exact LinearMap.congr_fun ((ker_top W Ch A u hL _ _).trans
      (k2top_tilF hX hPr hsel hm hL.cst_ok H (tameFr_chTh W Ch sel mu cst A u m2) _ _ d)) _
  · show (k2.op hC (midForm W Ch A hK hF hL φ)).1 (toRow sel mu d) =
      ((∑ a, ((((chKerC W Ch sel mu cst L A u m2 b hY P hK).cp a).comp (hF (m2 + 1) b) _).opOf (hF m2 a) _) ∘ₗ (LinearMap.proj a))
        ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF m2 (startC hL u φ))).1 (toRow sel mu d)

    rw [midForm, map_sum, LinearMap.sum_apply, Submodule.coe_sum, Submodule.coe_sum, Finset.sum_apply, Finset.sum_apply]
    exact Finset.sum_congr rfl fun a _ => (comp_appOf ((chKerC W Ch sel mu cst L A u m2 b hY P hK).cp a) (hF m2 a) (hF (m2 + 1) b)
      ((chKerC W Ch sel mu cst L A u m2 b hY P hK).kk.colTo hF m2 (startC hL u φ) a).1 (toRow sel mu d)).symm


omit hF hL in
theorem pair_smul (hW : W.Ok) (ψ : (evGSD W Ch sel mu P u).EqFun) (z : (mtildeGSD W Ch sel mu P).EqFun)
    (g : (mtildeGSD W Ch sel mu P).G) (d : (mtildeGSD W Ch sel mu P).D) :
    pairBK W.sgTrue (brC W u (ψ.1 (g • d))) (z.1 (g • d)) = pairBK W.sgTrue (brC W u (ψ.1 d)) (z.1 d) := by
  have h1 : brC W u (ψ.1 (g • d)) = ((((rowTy Ch sel mu P).inv.chr g.2)⁻¹ : X.Kˣ) : X.K) •
      rhoVr X.emb W.sgTrue (ufGL X.E _ g.1) (brC W u (ψ.1 d)) :=
    (congrArg (brC W u) (ψ.2 g d)).trans (((brC W u).map_smul _ _).trans (congrArg _ (TilClass.brC_rho W hW g.1 _)))
  have h2 : z.1 (g • d) = (((rowTy Ch sel mu P).inv.chr g.2 : X.Kˣ) : X.K) • rhoV X.emb W.sgTrue (ufGL X.E _ g.1) (z.1 d) := z.2 g d
  rw [h1, h2, map_smul, map_smul, LinearMap.smul_apply, smul_smul, Units.mul_inv, one_smul]
  exact pairingBInvariant_holds X.E X.K X.Tau _ X.emb W.sgTrue (ufGL _ _ g.1) _ _

theorem ptilCol_eq (hX : X.Ok) (hPr : Pr.Ok) (hW : W.Ok) (hsel : IsSel X sel) (H : TilOk Pr sel mu u) (σ : X.K →+* ℂ)
    (h : ∀ i, i < R.m → ReadsAt X.emb σ hI (kPt W Ch A r rho rho' jet DG) i)
    (h' : ∀ i, i < R.m → EqTarget X.emb (kPt W Ch A r rho rho' jet DG) i) (b0 : ((r.chain rho rho' jet DG).S R.m).β)
    (ext : ∀ b, (stepX Ch sel mu P).G b →* ((r.chain rho rho' jet DG).S R.m).G b0)
    (Hr : ∀ b, Subgroup ((stepX Ch sel mu P).G b))
    (hQ : (PeriodOnStep.perOn (I := r.chain rho rho' jet DG) W Ch sel mu P b0
      (fun _ p => topPt sel mu cst u (tilF sel mu u p.1.1)) ext (star ((Pr.piT u : 𝓞 X.E) : X.E)) Hr).Ok)
    (hM : (mtildeGSD W Ch sel mu P).Ok) (z : (mtildeGSD W Ch sel mu P).EqFun) :
    ((PeriodOnStep.perOn (I := r.chain rho rho' jet DG) W Ch sel mu P b0
      (fun _ p => topPt sel mu cst u (tilF sel mu u p.1.1)) ext (star ((Pr.piT u : 𝓞 X.E) : X.E)) Hr).per X.emb σ hI hQ (W.hc u)).PtilCol
        (fun c => ev X.emb σ (W.hc u) 0 (φ.1 (GStep.rep (r.step 0) c).1.1.deco))
        (PeriodOnStep.rowEmb (I := r.chain rho rho' jet DG) W Ch sel mu P b0 _ ext _ Hr H.2.2 σ z) =
      σ (PtilFF W Ch sel mu P hM u (colMu W Ch sel mu cst L A u m2 b hY P hK hF hL φ).1 z.1) := by
  refine (ptilCol_ev _ hQ h h' (fun _ p => φ.1 p.1.1.deco) _
    (fun c => z.1 (toRow sel mu (GStep.rep (stepX Ch sel mu P) c).1.1)) fun _ => rfl).trans (congrArg σ ?_)
  refine Eq.trans ?_ ((sum_row W Ch P H.2.2 hM (i := PerIn.clFin _ hQ)
    (fun d => pairBK W.sgTrue (brC W u ((colMu W Ch sel mu cst L A u m2 b hY P hK hF hL φ).1 d)) (z.1 d))
    (pair_smul W Ch hW _ z)).trans ?_)
  · refine Finset.sum_congr rfl fun c _ => congrArg _ ?_
    rw [← colAt_top W Ch A r rho rho' jet DG hI hK hF hL φ hX hPr hsel H b0]
    rfl
  · refine Eq.trans ?_ (csOf_apply₂ (mtildeGSD W Ch sel mu P) hM _ _ _ _).symm
    rfl

end Col

end GlobalTheory.Mem.Col2.KerRat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelAtPointPenultimateStepFirstCoupledKernel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelsOverOfFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelsOverOfFamily", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColInst\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtLattice\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.JetsInIffStepField\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelAtPointPenultimateStepFirstCoupledKernel\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EmbFColZeroMemMram\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.JetStepEqZeroExample\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ChThOkOfColIn\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FirstCoupledKernelEquivariantCosets\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IntAtOfLocTop\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvTrKEmbGLApply\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.KAtTopEquiv\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.KmapOfOkOfVecP\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.StepBoxIffStepSuppDeg\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.XiEntryInvariant\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFieldsPrimesOk\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevQFiniteIndexAndRoot\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.YsAtFiniteNonempty\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsSmulOfDecoEq\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.IntAtNatCast\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.Basify\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Forms Formalism.L2.Ker GlobalTheory.Mem.Col2 GlobalTheory.TopStep GlobalTheory.GO
open GlobalTheory.LvT.Built (kAt)

namespace GlobalTheory.Mem.Col2.KerRat

section General

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K))}
  (A : Amb X) {G : ChGlob X R.m} {m2 : ℕ} (u : Pr.Word)

theorem lam_root (hL : L.Ok Ch sel mu cst G m2) {j : ℕ} (b : L.β j) (P : {P // P ∈ QE sel (mu : Chr X.F X.E X.K)})
    (g : (L.levQ j b P).H) : ∃ k : ℕ, 0 < k ∧ (L.levQ j b P).lam g ^ k = 1 := by
  classical
  by_cases hP : P.1 ∈ Pr.vGs
  · exact LevFin.lam_root_G hL b P hP g
  by_cases hj : j ≤ m2 + 1
  · exact ChRoot.lam_root hL hj b P hP g
  obtain ⟨r, hr, hrg⟩ := Subgroup.mem_subgroupOf.1 ((hL.grpQ j b P).le g.2)
  have hχ := hL.chrQ j b P g r hr hrg
  have h0 : Loc.n1Arg r = 0 := by
    unfold Loc.n1Arg
    rw [show cOf R j - 1 = 0 by have := hL.hm; unfold cOf; omega, Finset.sum_range_zero]
  simp only [chiInv, lamRow, hP, ite_false, LocE.lamQB, h0, hL.cst_ok.psi_int _ 0 ChRoot.intAt_zero', inv_one, one_mul] at hχ
  have hne := ((L.levQ j b P).lam g).ne_zero
  rw [hχ] at hne
  have unitV_root (χ : (𝓞 X.E ⧸ P.1.asIdeal)ˣ →* X.Kˣ) (a : X.E) (ha : LocE.unitV χ a ≠ 0) :
      ∃ k : ℕ, 0 < k ∧ LocE.unitV χ a ^ k = 1 := by
    unfold LocE.unitV at ha ⊢
    split_ifs at ha ⊢
    · have : Finite (𝓞 X.E ⧸ P.1.asIdeal) := Ideal.finiteQuotientOfFreeOfNeBot _ P.1.ne_bot
      refine ⟨Nat.card (𝓞 X.E ⧸ P.1.asIdeal)ˣ, Nat.card_pos, ?_⟩
      rw [← Units.val_pow_eq_pow_val, ← map_pow, pow_card_eq_one', map_one, Units.val_one]
    · exact (ha rfl).elim
  obtain ⟨k, hk, h2⟩ := unitV_root _ _ (fun h0 => hne (inv_eq_zero.2 h0))
  refine ⟨k, hk, Units.ext ?_⟩
  rw [Units.val_pow_eq_pow_val, hχ, inv_pow, h2, inv_one, Units.val_one]

theorem chF_ok (hX : X.Ok) (hL : L.Ok Ch sel mu cst G m2) (j : ℕ) : (chF W sel mu L u j).Ok := fun b =>
  FramedForms.main hX (W.lamTrue u j) (L.levG j b) (L.levQ j b) (LevFin.lev_finiteIndex hL j b) fun g => by
    rw [← isOfFinOrder_iff_pow_eq_one, levQ_chr_apply]
    exact Finset.prod_induction _ IsOfFinOrder (fun _ _ ha hb => ha.mul hb) IsOfFinOrder.one fun P _ =>
      isOfFinOrder_iff_pow_eq_one.2 (lam_root hL b P _)

theorem ybHyp (hm : R.m = m2 + 2) (b : L.β (m2 + 1)) : YbHyp (R := R) sel mu cst L u m2 b :=
  ⟨fun p => ysAt_ys_of_eq sel mu cst hm.symm _ ▸ (CosetFin.ysAt_finite_nonempty R sel mu cst (m2 + 1) _ p.deco.2.lat).1⟩

theorem kerEquivC (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) (hS : Pr.T u ∈ S ∧ ∀ i, Pr.g i ∈ S) (hL : L.Ok Ch sel mu cst G m2)
    (hs : cst.sharp = true) (hT : ChTh.Ok (Ch := Ch) cst (chTh W Ch sel mu cst A u m2)) (b : L.β (m2 + 1))
    (hY : YbHyp (R := R) sel mu cst L u m2 b) : KerEquivC W Ch sel mu cst L A u m2 b hY (rPsymF Ch) :=
  ⟨MatLaw.matEquiv hX hPr hsel hS hL hT, cp1Equiv_of_on W Ch sel mu cst L _ b hY (CoupledLaw.cp1EquivOn b hY hX hPr hsel hS hL hT),
    (TopLaw.topEquiv b hY default hX hPr hsel hS hL (Or.inr ⟨hs, rfl⟩) hT).cp2Equiv hX hPr hL.hm hL.cst_ok
      (tilOk_of_avoid hPr hsel u hS) (tameFr_chTh W Ch sel mu cst A u m2)⟩

theorem chTh_ok_of_thHyp (hPr : Pr.Ok) (hL : L.Ok Ch sel mu cst G m2) (h : ThHyp W Ch sel mu cst A u m2) :
    ChTh.Ok (Ch := Ch) cst (chTh W Ch sel mu cst A u m2) := by
  have hm := hL.hm
  have hq := muqTie_of_ok Ch sel mu cst L hL
  exact ⟨fun i hi => ChainTheta.stepC_ok_deg W Ch sel mu cst A u i (by omega) (i + 1) (hPr.T_prime u).pos hq (h.1 i hi).1 (h.1 i hi).2.1
      (fun N N' c x hx m _ => (h.1 i hi).2.2 N N' c x hx m) (h.2.2.1 i hi),
    ChainTheta.stepC_ok_deg W Ch sel mu cst A u (m2 + 1) (by omega) R.m (hPr.T_prime u).pos hq h.2.1.1 h.2.1.2.1
      (fun N N' c x hx m _ => h.2.1.2.2 N N' c x hx m) h.2.2.2⟩

theorem anaStep_of_thHyp (hm : R.m = m2 + 2) (h : ThHyp W Ch sel mu cst A u m2) {i : ℕ} (hi : i < R.m) :
    A.AnaStep (R.N i) (R.N (i + 1)) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u) := by
  by_cases h1 : i ≤ m2
  · exact h.1 i h1
  · obtain rfl : i = m2 + 1 := by omega
    rw [show m2 + 1 + 1 = R.m from hm.symm]
    exact h.2.1

variable {u} {r : Reps sel mu cst L u (topLev Ch sel mu cst (rPsymF Ch))} {rho : ∀ i, (r.step i).Cl → ℂ}
  {rho' : ∀ i, (r.step (i + 1)).Cl → ℂ}
  {jet : ∀ i, (r.step i).Cl → (r.step (i + 1)).Cl → (Pol ℂ X.Tau (R.N i) →ₗ[ℂ] Pol ℂ X.Tau (R.N (i + 1)))} {DG : ℕ}

theorem eqTarget (hX : X.Ok) (hPr : Pr.Ok) (hCh : Ch.Ok) (hsel : IsSel X sel) (hS : Pr.T u ∈ S ∧ ∀ i, Pr.g i ∈ S)
    (hL : L.Ok Ch sel mu cst G m2) (hs : cst.sharp = true) (hT : ChTh.Ok (Ch := Ch) cst (chTh W Ch sel mu cst A u m2))
    (i : ℕ) (hi : i < R.m) : EqTarget X.emb (kPt W Ch A r rho rho' jet DG) i := by
  intro b b' g' d d'
  have key : kAt W Ch sel mu cst L A u i b b' ((1 : (r.step i).G b) • (d : (r.step i).D b)) (g' • d') =
      (r.step (i + 1)).rho X.emb (W.lamTrue u (i + 1)) b' g' ∘ₗ kAt W Ch sel mu cst L A u i b b' d d' ∘ₗ
        (r.step i).rho X.emb (W.lamTrue u i) b 1⁻¹ := by
    rcases lt_trichotomy (i + 2) R.m with h | h | h
    · exact MatLaw.kAt_equiv X Pr R W Ch sel S mu cst L G m2 u i A hX hPr hCh hsel hS.1 hS.2 hL hs hT h b b' 1 g' d d'
    · exact CoupledLaw.kAt_equiv X Pr R W Ch sel S mu cst L G m2 u i A hX hPr hCh hsel hS.1 hS.2 hL hs hT h b b' 1 g' d d'
    · exact LvT.Built.TopEq.kAt_top_equiv X Pr R W Ch sel S mu cst L G m2 u i A hX hPr hCh hsel hS.1 hS.2 hL hs hT (by omega)
        b b' 1 g' d d'
  rw [one_smul, inv_one, map_one] at key
  exact key

end General

section True

open GlobalTheory.Mem GlobalTheory.Mem.Chr Formalism.MainNotions

attribute [local instance] GlobalTheory.Mem.Col2.starE

variable {B : GlobalTheory.Mem.Base} {X : PreX B.toPre} (I : TC B X)

def reps (u : B.Word) (a : I.ι) : Reps (Pr := B.primes X) I.sel (I.tup a) (I.cst a) (I.idx a) u (I.Tp a) :=
  ⟨fun j => (I.stp u a j).rp, fun j => (I.stp u a j).rp_spec⟩

abbrev kTrue (u : B.Word) (a : I.ι) : PtKer (I.chIn u a) (B.hcW u) :=
  fun i => kAt (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) (I.idx a) I.A u i

abbrev thTrue (u : B.Word) (a : I.ι) (m2 : ℕ) : ChTh (Pr := B.primes X) B.wts I.sel (I.tup a) u m2 :=
  chTh (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) I.A u m2

abbrev evT (B : GlobalTheory.Mem.Base) (u : B.Word) (i : ℕ) :
    VV B.fields.K (lamT (B.hcW u) i) →ₛₗ[B.embLL] (Fr B.fields.emb B.embLL (B.R.N i) → ℂ) :=
  evV B.fields.emb 1 (lamT (B.hcW u) i) B.embLL

variable {I}

theorem readsAt (h : I.Ok) (hJ : I.JetsIn) (u : B.Word) (a : I.ι) (hI : (I.chIn u a).Ok) {i : ℕ} (hi : i < B.R.m)
    (hLa : I.A.LaHyp (B.R.N i) (B.R.N (i + 1)) (I.Sb a u)) (hE : I.A.ESmooth (B.R.N i) (B.R.N (i + 1))) :
    ReadsAt B.fields.emb B.embLL hI (kTrue I u a) i := by
  intro c c' F
  obtain ⟨hX, hPr, -⟩ := base_fields_primes_ok B X
  have h0 : I.A.AA ≠ ⊥ := by
    rw [I.A_AA, Ne, FractionalIdeal.coeToSubmodule_eq_bot]
    refine inv_ne_zero (FractionalIdeal.coeIdeal_ne_zero.2 fun h0 => ?_)
    have h1 := B.host.𝔟_spec.1
    rw [h0, Ideal.bot_mul] at h1
    exact (differentIdeal_ne_bot : differentIdeal (𝓞 B.host.K) (𝓞 B.host.E) ≠ ⊥) h1
  refine LvT.Built.KMap.kmap_of_jet (X := B.fields) _ B.embLL hI (B.hcW u) hi c c' F _ ?_
  have hV := ChSrc.jetInVV_trueWt (X := B.fields) (B.hcW u) hi
  have e := ChSrc.nuEnd_eq (Pr := B.primes X) B.wts u hi
  have key := fun (p : PtAt B.R I.sel (I.tup a) (I.cst a) u i) (p' : PtAt B.R I.sel (I.tup a) (I.cst a) u (i + 1)) =>
    LvT.Built.KMap.map_kerOf I.A (I.Sb a u) (rowSG (B.primes X) I.sel (I.tup a))
      (pow_pos (Finset.prod_pos fun P _ => ChRoot.qOf_pos P.1) _ : 0 < cAof I.sel (I.tup a) (I.cst a))
      (MoveCompare.cBof_pos hPr I.sel (I.tup a) (I.cst a) u) I.sel (mUof (R := B.R) I.Ch (I.tup a) i)
      (muAtT (R := B.R) I.Ch I.sel (I.tup a) (I.cst a) i) (B.wts.lamTrue u i) (B.wts.lamTrue u (i + 1))
      (nuLast (Pr := B.primes X) B.wts u i) (e ▸ hV) hLa h0 hE (frsF I.sel (I.tup a) p.1.1) (frsF I.sel (I.tup a) p'.1.1)
      ⟨p.1.1.deco.2.lat, p.1.1.deco.2.uni⟩ ⟨p'.1.1.deco.2.lat, p'.1.1.deco.2.uni⟩
      ((MoveCompare.jetsIn_iff _ _ _ _ _ _ _ (MoveCompare.degNu_eq (Pr := B.primes X) B.wts u hi) _ _).2
        (MoveCompare.jetsAll_of_deg _ _ _ _ _ (hJ a u i hi) (MoveCompare.cBof_pos hPr _ _ _ u)
          ⟨p.1.1.deco.2.lat, p.1.1.deco.2.uni⟩ ⟨p'.1.1.deco.2.lat, p'.1.1.deco.2.uni⟩))
      (LvT.Built.Box.inBox_xiAt _ _ _ I.Ch I.sel _ _ _ _ _ _ u i hX hPr h.sel_ok (h.T_mem u) h.g_mem (h.idx_ok a) hi
        ⟨_, _, _, _, h.ch_tied⟩ c.1 c'.1 p p') F
  refine (key (GStep.rep _ c) (GStep.rep _ c')).trans ?_
  rw [← LvT.Built.KMap.rhoIs I h a u hi c.1 (GStep.rep _ c) c'.1 (GStep.rep _ c'), ← e]
  rfl

variable (I) (l : I.Laws)

def colForm (h : I.Ok) (u : B.Word) (a : I.ι) (φ : MfV (Pr := B.primes X) B.wts I.Ch u) : ((I.fm l u a).lat 0).V :=
  ⟨fun c => φ.1 ((I.stp u a 0).rep c).1.1.deco, fun c g =>
    (StepZero.form_smul ((I.Tp a).pref u 0) (lamT (B.hcW u) 0) (StepZero.levGAt_zero (I.Tp a) (h.idx_ok a))
      (StepZero.levQAt_zero (I.Tp a) (h.idx_ok a)) φ c.1 g.1 _).symm.trans (congrArg (fun q => φ.1 q.1.1.deco) g.2)⟩

theorem tilOk (h : I.Ok) (u : B.Word) (a : I.ι) : TilOk (B.primes X) I.sel (I.tup a) u :=
  tilOk_of_avoid (base_fields_primes_ok B X).2.1 h.sel_ok u ⟨h.T_mem u, h.g_mem⟩

def rowForm (h : I.Ok) (u : B.Word) (a : I.ι) (z : MtildeV (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) I.Ps) : (I.per l u a).Mt :=
  PeriodOnStep.rowEmb (Pr := B.primes X) (I := I.chIn u a) B.wts I.Ch I.sel (I.tup a) I.Ps (I.perIn u a).b0 (I.perIn u a).til
    (I.perIn u a).ext (I.perIn u a).tz (I.perIn u a).H (tilOk I h u a).2.2 B.embLL z

structure KernelsOver (h : I.Ok) (u : B.Word) (a : I.ι) : Prop where

  krat : ∀ i, i < B.R.m → (I.fm l u a).KRat i

  prat : (I.fm l u a).PRat

  period : Nonempty ((I.idx a).β (B.R.m - 2 + 1)) ∧ ∀ b : (I.idx a).β (B.R.m - 2 + 1),
    ∃ (hY : YbHyp (Pr := B.primes X) (R := B.R) I.sel (I.tup a) (I.cst a) (I.idx a) u (B.R.m - 2) b)
      (hK : KerEquivC (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) (I.idx a) I.A u (B.R.m - 2) b hY I.Ps)
      (hF : ∀ j, (chF (Pr := B.primes X) B.wts I.sel (I.tup a) (I.idx a) u j).Ok)
      (hM : (mtildeGSD (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) I.Ps).Ok), ∀ φ z,
        (I.per l u a).PtilCol ((I.fm l u a).emb 0 (colForm I l h u a φ)) (rowForm I l h u a z) =
          B.embLL (PtilFF (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) I.Ps hM u
            (colMu (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) (I.idx a) I.A u (B.R.m - 2) b hY I.Ps hK hF
              (h.idx_ok a) φ).1 z.1)

section Parts

variable {I} {u : B.Word} {a : I.ι}

theorem eqTarget_true (h : I.Ok) (hT : ChTh.Ok (Ch := I.Ch) (I.cst a) (thTrue I u a (B.R.m - 2))) (i : ℕ) (hi : i < B.R.m) :
    EqTarget B.fields.emb (kTrue I u a) i :=
  eqTarget (Pr := B.primes X) (r := reps I u a) (rho := (I.chIn u a).rho) (rho' := (I.chIn u a).rho') (jet := (I.chIn u a).jet)
    (DG := (I.chIn u a).DG) B.wts I.A (base_fields_primes_ok B X).1 (base_fields_primes_ok B X).2.1 h.ch_ok h.sel_ok
    ⟨h.T_mem u, h.g_mem⟩ (h.idx_ok a) (h.sharp a) hT i hi

theorem kRat_true {i : ℕ} (hR : ReadsAt B.fields.emb B.embLL (l.ch u a) (kTrue I u a) i) (hE : EqTarget B.fields.emb (kTrue I u a) i) :
    (I.fm l u a).KRat i :=
  fun x => exists_K_embF hR hE ((l.fmL u a).fam i) ((l.fmL u a).fam (i + 1)) x


variable (u a) in
theorem pRat_true : (I.fm l u a).PRat := by
  have hw := LvT.BuiltChain.weights_ok (I.perIn u a) (B.hcW u) B.fields.emb
    fun τ => congrArg RowPar.sg (B.wts_isOk.hc_row u τ).symm
  exact fun x => exists_lower_embF (I.perIn u a) (l.per u a) (fun τ => (hw τ).1) (fun τ => (hw τ).2) ((l.fmL u a).fam _)
    (l.fmL u a).famP x

theorem period_true (h : I.Ok) (hR : ∀ i, i < B.R.m → ReadsAt B.fields.emb B.embLL (l.ch u a) (kTrue I u a) i)
    (hE : ∀ i, i < B.R.m → EqTarget B.fields.emb (kTrue I u a) i) {b : (I.idx a).β (B.R.m - 2 + 1)}
    (hY : YbHyp (Pr := B.primes X) (R := B.R) I.sel (I.tup a) (I.cst a) (I.idx a) u (B.R.m - 2) b)
    (hK : KerEquivC (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) (I.idx a) I.A u (B.R.m - 2) b hY I.Ps)
    (hF : ∀ j, (chF (Pr := B.primes X) B.wts I.sel (I.tup a) (I.idx a) u j).Ok)
    (hM : (mtildeGSD (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) I.Ps).Ok) (φ : MfV (Pr := B.primes X) B.wts I.Ch u)
    (z : MtildeV (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) I.Ps) :
    (I.per l u a).PtilCol ((I.fm l u a).emb 0 (colForm I l h u a φ)) (rowForm I l h u a z) =
      B.embLL (PtilFF (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) I.Ps hM u
        (colMu (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) (I.idx a) I.A u (B.R.m - 2) b hY I.Ps hK hF
          (h.idx_ok a) φ).1 z.1) :=
  ptilCol_eq (Pr := B.primes X) B.wts I.Ch I.A (reps I u a) (I.chIn u a).rho (I.chIn u a).rho' (I.chIn u a).jet (I.chIn u a).DG
    (l.ch u a) hK hF (h.idx_ok a) φ (base_fields_primes_ok B X).1 l.pr B.wts_isOk h.sel_ok (tilOk I h u a) B.embLL hR hE
    (I.perIn u a).b0 (I.perIn u a).ext (I.perIn u a).H (l.per u a) hM z

end Parts

theorem kernelsOver_of_ok (h : I.Ok) (hJ : I.JetsIn) (u : B.Word) (a : I.ι)
    (hT : ChTh.Ok (Ch := I.Ch) (I.cst a) (thTrue I u a (B.R.m - 2)))
    (hA : ∀ i, i < B.R.m → I.A.LaHyp (B.R.N i) (B.R.N (i + 1)) (I.Sb a u) ∧ I.A.ESmooth (B.R.N i) (B.R.N (i + 1))) :
    KernelsOver I l h u a := by
  have hX := (base_fields_primes_ok B X).1
  have hm := h.hm
  have hL := h.idx_ok a
  have hR : ∀ i, i < B.R.m → ReadsAt B.fields.emb B.embLL (l.ch u a) (kTrue I u a) i := fun i hi =>
    readsAt h hJ u a (l.ch u a) hi (hA i hi).1 (hA i hi).2
  have hE := eqTarget_true h hT
  refine ⟨fun i hi => kRat_true l (hR i hi) (hE i hi), pRat_true l u a, ⟨hL.last_uniq.choose⟩, fun b => ?_⟩
  have hY := ybHyp (Pr := B.primes X) (cst := I.cst a) u hm b
  have hK := kerEquivC (Pr := B.primes X) B.wts I.A u hX l.pr h.sel_ok ⟨h.T_mem u, h.g_mem⟩ hL (h.sharp a) hT b hY
  have hF := chF_ok (Pr := B.primes X) B.wts u hX hL
  have hM := mtildeOk (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) hX I.Ps
  exact ⟨hY, hK, hF, hM, period_true l h hR hE hY hK hF hM⟩

variable (Z : TC.Later B (I.cols l))

abbrev ThHypAt (u : B.Word) (a : I.ι) : Prop :=
  ThHypN (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) I.glob (seamOf B (I.cols l) Z.W Z.V Z.S Z.N Z.G)
    (I.J.toRec B (I.cols l) Z.W Z.V Z.S Z.N Z.G) I.chi I.J.cD u (B.R.m - 2)

abbrev FamilyLaws : Prop :=
  (I.J.toRec B (I.cols l) Z.W Z.V Z.S Z.N Z.G).EqP I.chi ∧ (I.J.toRec B (I.cols l) Z.W Z.V Z.S Z.N Z.G).VecP I.chi

theorem kernelsOver_of_thHyp (h : I.Ok) (hJ : I.JetsIn) (u : B.Word) (a : I.ι) (hT : ThHypAt I l Z u a) : KernelsOver I l h u a := by
  have h1 : ThHyp (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) I.A u (B.R.m - 2) := by
    rw [ColIn.A, AmbIn.amb_eq_ambOf B (I.cols l) Z.W Z.V Z.S Z.N Z.G]
    exact hT.2.2
  exact kernelsOver_of_ok I l h hJ u a (chTh_ok_of_thHyp (Pr := B.primes X) B.wts I.A u l.pr (h.idx_ok a) h1) fun i hi =>
    ⟨(anaStep_of_thHyp (Pr := B.primes X) B.wts I.A u h.hm h1 hi).1, (anaStep_of_thHyp (Pr := B.primes X) B.wts I.A u h.hm h1 hi).2.1⟩

theorem kernelsOver_of_family (h : I.Ok) (hJ : I.JetsIn) (hT : FamilyLaws I l Z) (u : B.Word) (a : I.ι) : KernelsOver I l h u a :=
  kernelsOver_of_ok I l h hJ u a (ChainTheta.chTh_ok_of_colIn' B _ Z.W Z.V Z.S Z.N Z.G I h hJ hT.1 hT.2 a u) fun i _ =>
    LvT.Built.KMap.laHyp_of_vecP I _ Z.W Z.V Z.S Z.N Z.G h hT.2 a u i (i + 1)

theorem kernels_rational (h : I.Ok) (hJ : I.JetsIn) (hT : (∀ u a, ThHypAt I l Z u a) ∨ FamilyLaws I l Z) :
    (∀ u a, KernelsOver I l h u a) ∧
      (∀ u, (∀ i, i < (I.rec7 l Z).R.m → ((I.rec7 l Z).fm u).KRat i) ∧ ((I.rec7 l Z).fm u).PRat) ∧
      ∀ (l0 : I.Law0 l) u μ, (∀ i, i < (I.rec7 l Z).R.m → ((I.tw l l0 Z).fm u μ).KRat i) ∧ ((I.tw l l0 Z).fm u μ).PRat := by
  have key : ∀ u a, KernelsOver I l h u a := fun u a =>
    hT.elim (fun hT => kernelsOver_of_thHyp I l Z h hJ u a (hT u a)) fun hT => kernelsOver_of_family I l Z h hJ hT u a
  exact ⟨key, fun u => ⟨(key u I.mu0).krat, (key u I.mu0).prat⟩, fun _ u μ => ⟨(key u μ).krat, (key u μ).prat⟩⟩

end True

end GlobalTheory.Mem.Col2.KerRat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KernelsOverOfFamily =====

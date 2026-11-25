module

public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.RedPEqZeroOfDiv
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ValuationLeOneOfMemZmu
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.XiAtPenultimateEqXiCpl1
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwChainWtSharpDivDe
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LastColumnStepDatumEqTwistTopDatum
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeFinal
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeInterior

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimes, Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimesStatement, Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimes, Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimesStatement, Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFrames, Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFramesStatement, Development.AbelianVarietyTheory.Proofs.SatakeParameters.AdelicDatumInvarianceSupportKernelChain

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimes =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimes", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.RedPEqZeroOfDiv\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ValuationLeOneOfMemZmu\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.TwU

theorem repY_yb_coset_bdd {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
    {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {t : KerEntTied ex} {u : D.what₂.Word} {μ : D.what₂.Tup} {St : ChainCharts D u μ}
    {A : AdData t u μ St} {dtU : Formalism.L2.Herm.unitaryOneFiniteAdeles D.sp.cm →* D.Dt} {a : 𝓞 D.host.E} (H : AdTie A dtU a)
    (c : (D.chTw u μ).cls (t.m2 + 1)) (P : SB t μ) :
    SameCoset t.sel (t.tup μ) (t.cst μ) P ((frsF t.sel (t.tup μ) (A.pt (t.m2 + 1) (cpl_lt t μ).le c) P).symm (repY (A.yb c)))
        (A.y0 ((St (t.m2 + 1) (cpl_lt t μ).le).chOf c) P) ∧
      ∀ l, IntAt P.1 ((((qOf P.1 : ℕ) : t.X.E) ^ (if P.1 ∈ t.Pr.vGs then 1 else (t.cst μ).M)) *
        (frsF t.sel (t.tup μ) (A.pt (t.m2 + 1) (cpl_lt t μ).le c) P).symm (repY (A.yb c)) l) := by
  obtain ⟨w, hw1, hw⟩ := H.chain.2.1 c
  have hwm : w ∈ A.yb c := by
    rw [hw, Set.mem_setOf_eq, sub_self]
    exact zero_mem _
  have hmem : repY (A.yb c) ∈ A.yb c := Classical.epsilon_spec (p := fun y => y ∈ A.yb c) ⟨w, hwm⟩
  refine ⟨H.coset c _ hmem P, ?_⟩
  have hd := (Set.ext_iff.1 hw (repY (A.yb c))).1 hmem
  rw [Set.mem_setOf_eq] at hd
  have h0 := (Submodule.mem_iInf _).1 hd P
  have h1 := (Submodule.mem_iInf _).1 hw1 P
  rw [Submodule.mem_comap] at h0 h1
  have hf := GlobalTheory.ColPeriod.isFrames_frsF (A.pt _ (cpl_lt t μ).le c)
  set fr := frsF t.sel (t.tup μ) (A.pt (t.m2 + 1) (cpl_lt t μ).le c) with hfr
  have toStd : ∀ v, v ∈ Formalism.HermitianLatticesTheory.localization₂ P.1.asIdeal (A.pt (t.m2 + 1) (cpl_lt t μ).le c).deco.1.N → ∀ l, IntAt P.1 ((fr P).symm v l) := by
    intro v hv
    refine GlobalTheory.TopStep.mem_stdAt.1 ((hf P _).1 ?_)
    rwa [LinearEquiv.apply_symm_apply]
  have k0 := toStd _ h0
  have k1 := toStd _ h1
  simp only [LinearMap.restrictScalars_apply, LinearMap.smul_apply, LinearMap.id_apply, map_smul, map_sub, Pi.smul_apply, Pi.sub_apply, smul_eq_mul] at k0 k1
  intro l
  have hq : (qOf P.1 : t.X.E) ≠ 0 := Nat.cast_ne_zero.2 fun h => P.1.ne_bot (Ideal.absNorm_eq_zero_iff.1 h)
  have ipow : ∀ n : ℕ, IntAt P.1 ((qOf P.1 : t.X.E) ^ n) := fun n => by
    simpa using IntAt.coe P.1 ((qOf P.1 : 𝓞 t.X.E) ^ n)
  have a0 := k0 l
  have a1 := k1 l
  by_cases hP : P.1 ∈ t.Pr.vGs
  · simp only [hP, if_true] at a0 a1 ⊢
    have e : (qOf P.1 : t.X.E) ^ 1 * (fr P).symm (repY (A.yb c)) l =
        (qOf P.1 : t.X.E) ^ 1 * (((qOf P.1 : t.X.E) ^ (0 : ℤ))⁻¹ * (fr P).symm (repY (A.yb c)) l - ((qOf P.1 : t.X.E) ^ (0 : ℤ))⁻¹ * (fr P).symm w l) +
          ((qOf P.1 : t.X.E) ^ (-1 : ℤ))⁻¹ * (fr P).symm w l := by
      simp only [zpow_zero, inv_one, one_mul, _root_.zpow_neg, zpow_one, inv_inv, pow_one]
      ring
    rw [e]
    exact IntAt.add (IntAt.mul (ipow 1) a0) a1
  · simp only [hP, if_false] at a0 a1 ⊢
    have e : (qOf P.1 : t.X.E) ^ (t.cst μ).M * (fr P).symm (repY (A.yb c)) l =
        (qOf P.1 : t.X.E) ^ (2 * (t.cst μ).M) * (((qOf P.1 : t.X.E) ^ ((t.cst μ).M : ℤ))⁻¹ * (fr P).symm (repY (A.yb c)) l -
          ((qOf P.1 : t.X.E) ^ ((t.cst μ).M : ℤ))⁻¹ * (fr P).symm w l) +
          ((qOf P.1 : t.X.E) ^ (-((t.cst μ).M : ℤ)))⁻¹ * (fr P).symm w l := by
      simp only [_root_.zpow_neg, inv_inv, zpow_natCast]
      field_simp
      ring
    rw [e]
    exact IntAt.add (IntAt.mul (ipow _) a0) a1

theorem baseCosetRepresentative_bounded_at_bad_primes : ∀ {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts} {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {t : KerEntTied ex} {u : D.what₂.Word} {μ : D.what₂.Tup} {St : ChainCharts D u μ} (A : AdData t u μ St) (dtU : Formalism.L2.Herm.unitaryOneFiniteAdeles D.sp.cm →* D.Dt) (a : 𝓞 D.host.E), AdTie A dtU a → ∀ (β : (St (t.m2 + 1) (cpl_lt t μ).le).Ch) (x : UA D (t.m2 + 1) (cpl_lt t μ).le) (Q : SB t μ) (l : Fin (D.R.N (t.m2 + 1))), IntAt Q.1 ((qOf Q.1 : t.X.E) ^ (if Q.1 ∈ t.Pr.vGs then 1 else (t.cst μ).M) * A.y0 β Q l) := by
  intro D L hT Gi Gl Kc Y cX ex t u μ St A dtU a H β x Q l
  obtain ⟨⟨c, hc⟩, -⟩ := ((St _ (cpl_lt t μ).le).K β).y_bij.2 (Quotient.mk'' x)
  subst hc
  obtain ⟨hs, hb⟩ := repY_yb_coset_bdd H c Q
  set w := (frsF t.sel (t.tup μ) (A.pt (t.m2 + 1) (cpl_lt t μ).le c) Q).symm (repY (A.yb c)) with hw
  have hsl := hs l
  have hbl := hb l
  simp only [Pi.sub_apply] at hsl
  have hq : (qOf Q.1 : t.X.E) ≠ 0 := Nat.cast_ne_zero.2 fun h => Q.1.ne_bot (Ideal.absNorm_eq_zero_iff.1 h)
  have ineg : ∀ n : ℕ, IntAt Q.1 (-((qOf Q.1 : t.X.E) ^ n)) := fun n => by
    simpa using IntAt.coe Q.1 (-((qOf Q.1 : 𝓞 t.X.E) ^ n))
  by_cases hP : Q.1 ∈ t.Pr.vGs
  · simp only [hP, if_true] at hsl hbl ⊢
    have e : (qOf Q.1 : t.X.E) ^ 1 * A.y0 ((St (t.m2 + 1) (cpl_lt t μ).le).chOf c) Q l =
        (qOf Q.1 : t.X.E) ^ 1 * w l + (-((qOf Q.1 : t.X.E) ^ 1)) *
          (((qOf Q.1 : t.X.E) ^ 0)⁻¹ * (w l - A.y0 ((St (t.m2 + 1) (cpl_lt t μ).le).chOf c) Q l)) := by
      simp only [pow_zero, inv_one, one_mul]
      ring
    rw [e]
    exact IntAt.add hbl (IntAt.mul (ineg 1) hsl)
  · simp only [hP, if_false] at hsl hbl ⊢
    have e : (qOf Q.1 : t.X.E) ^ (t.cst μ).M * A.y0 ((St (t.m2 + 1) (cpl_lt t μ).le).chOf c) Q l =
        (qOf Q.1 : t.X.E) ^ (t.cst μ).M * w l + (-((qOf Q.1 : t.X.E) ^ (2 * (t.cst μ).M))) *
          (((qOf Q.1 : t.X.E) ^ (t.cst μ).M)⁻¹ * (w l - A.y0 ((St (t.m2 + 1) (cpl_lt t μ).le).chOf c) Q l)) := by
      field_simp
      ring
    rw [e]
    exact IntAt.add hbl (IntAt.mul (ineg _) hsl)

end GlobalTheory.TwU
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimes =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimes =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimes", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.FrameCongApprox

variable {E : Type} [Field E] [NumberField E]

theorem intAt_of_val_le {P : HeightOneSpectrum (𝓞 E)} {a : E} (h : P.valuation E a ≤ 1) : IntAt P a := by
  obtain ⟨r, s, hs⟩ := P.exists_primeCompl_mul_eq_of_integer a h
  exact ⟨r, s, s.2, by rw [mul_comm]; exact hs⟩

theorem exists_depth (P : HeightOneSpectrum (𝓞 E)) {w : 𝓞 E} (hw : w ≠ 0) :
    ∃ k : ℕ, ∀ z : 𝓞 E, z ∈ P.asIdeal ^ k →
      IntAt P (algebraMap (𝓞 E) E z / algebraMap (𝓞 E) E w) := by
  have h0 : P.intValuation w ≠ 0 := P.intValuation_ne_zero w hw
  refine ⟨(P.intValuation w).log.natAbs, fun z hz => intAt_of_val_le ?_⟩
  rw [map_div₀, HeightOneSpectrum.valuation_of_algebraMap, HeightOneSpectrum.valuation_of_algebraMap,
    div_le_one₀ (zero_lt_iff.2 h0)]
  refine ((P.intValuation_le_pow_iff_mem z _).2 hz).trans ?_
  conv_rhs => rw [← WithZero.exp_log h0]
  rw [WithZero.exp_le_exp]
  omega

theorem exists_approx (T : Finset (HeightOneSpectrum (𝓞 E))) (t : T → E) (u : T → 𝓞 E) (hu : ∀ P, u P ≠ 0) :
    ∃ y : E, ∀ P : T, IntAt P.1 ((y - t P) / algebraMap (𝓞 E) E (u P)) := by
  have inj := IsFractionRing.injective (𝓞 E) E
  choose a b hb hab using fun P => IsFractionRing.div_surjective (𝓞 E) (t P)
  have hb0 : ∀ P, b P ≠ 0 := fun P => nonZeroDivisors.ne_zero (hb P)
  set D : 𝓞 E := ∏ Q, b Q with hD
  have hD0 : D ≠ 0 := Finset.prod_ne_zero_iff.2 fun Q _ => hb0 Q
  have hw : ∀ P, D * u P ≠ 0 := fun P => mul_ne_zero hD0 (hu P)
  choose k hk using fun P : T => exists_depth P.1 (hw P)
  obtain ⟨x, hx⟩ := exists_forall_sub_mem_ideal (s := T) (fun P => P.asIdeal)
    (fun P => if h : P ∈ T then k ⟨P, h⟩ else 0) (fun P _ => P.prime)
    (fun P _ Q _ h h' => h (HeightOneSpectrum.ext h')) (fun P => a P * ∏ Q ∈ Finset.univ.erase P, b Q)
  refine ⟨algebraMap (𝓞 E) E x / algebraMap (𝓞 E) E D, fun P => ?_⟩
  have hxP := hx P.1 P.2
  simp only [dif_pos P.2] at hxP
  have h1 := hk P _ hxP
  convert h1 using 1
  have hsplit : D = b P * ∏ Q ∈ Finset.univ.erase P, b Q := (Finset.mul_prod_erase _ _ (Finset.mem_univ P)).symm
  have hbE : algebraMap (𝓞 E) E (b P) ≠ 0 := (map_ne_zero_iff _ inj).2 (hb0 P)
  have hBE : algebraMap (𝓞 E) E (∏ Q ∈ Finset.univ.erase P, b Q) ≠ 0 :=
    (map_ne_zero_iff _ inj).2 (Finset.prod_ne_zero_iff.2 fun Q _ => hb0 Q)
  have huE : algebraMap (𝓞 E) E (u P) ≠ 0 := (map_ne_zero_iff _ inj).2 (hu P)
  rw [← hab P, map_mul, map_sub, map_mul, hsplit, map_mul]
  field_simp

theorem exists_den {n : ℕ} (g : (Fin n → E) →ₗ[E] (Fin n → E)) :
    ∃ d : 𝓞 E, d ≠ 0 ∧ ∀ (P : HeightOneSpectrum (𝓞 E)) (z : Fin n → E), (∀ l, IntAt P (z l)) →
      ∀ l, IntAt P (algebraMap (𝓞 E) E d * g z l) := by
  obtain ⟨⟨d, hd⟩, hdi⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors (𝓞 E))
    (Finset.univ : Finset (Fin n × Fin n)) (fun p => g (fun k => if p.1 = k then 1 else 0) p.2)
  refine ⟨d, nonZeroDivisors.ne_zero hd, fun P z hz l => ?_⟩
  rw [LinearMap.pi_apply_eq_sum_univ g z, Finset.sum_apply, Finset.mul_sum]
  refine Finset.sum_induction _ (IntAt P) (fun _ _ => IntAt.add) (by simpa using IntAt.coe P 0) fun j _ => ?_
  obtain ⟨r, hr⟩ := hdi (j, l) (Finset.mem_univ _)
  rw [Algebra.smul_def] at hr
  rw [Pi.smul_apply, smul_eq_mul, mul_left_comm]
  exact (hz j).mul (by rw [← hr]; exact IntAt.coe P r)

end GlobalTheory.FrameCongApprox

namespace GlobalTheory.FrameCongApprox

theorem exists_sameCoset {X : Fields} {Pr : Primes X} (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ}
    (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) {n : ℕ}
    (fr : rowSG Pr sel mu → (Sp X.E n ≃ₗ[X.E] Sp X.E n)) (y0 : rowSG Pr sel mu → Sp X.E n) :
    ∃ y : Sp X.E n, ∀ P, SameCoset sel mu cst P ((fr P).symm y) (y0 P) := by
  have inj := IsFractionRing.injective (𝓞 X.E) X.E
  choose d hd0 hd using fun P : rowSG Pr sel mu => exists_den (fr P).symm.toLinearMap
  let e : rowSG Pr sel mu → ℕ := fun P => if P.1 ∈ Pr.vGs then 0 else cst.M
  let m : rowSG Pr sel mu → 𝓞 X.E := fun P => d P * ((qOf P.1 : ℕ) : 𝓞 X.E) ^ e P
  have hq : ∀ P : rowSG Pr sel mu, ((qOf P.1 : ℕ) : X.E) ≠ 0 := fun P => by
    rw [Nat.cast_ne_zero]
    unfold qOf
    rw [Ne, Ideal.absNorm_eq_zero_iff]
    exact P.1.ne_bot
  have hmE : ∀ P, algebraMap (𝓞 X.E) X.E (m P) = algebraMap (𝓞 X.E) X.E (d P) * ((qOf P.1 : ℕ) : X.E) ^ e P := fun P => by
    simp [m, map_mul, map_pow, map_natCast]
  have hm : ∀ P, m P ≠ 0 := fun P h => by
    have h2 := hmE P
    rw [h, map_zero] at h2
    exact mul_ne_zero ((map_ne_zero_iff _ inj).2 (hd0 P)) (pow_ne_zero _ (hq P)) h2.symm
  choose yl hyl using fun l : Fin n => exists_approx (rowSG Pr sel mu) (fun P => fr P (y0 P) l) m hm
  refine ⟨yl, fun P l => ?_⟩
  have hmP : algebraMap (𝓞 X.E) X.E (m P) ≠ 0 := (map_ne_zero_iff _ inj).2 (hm P)
  set z : Sp X.E n := fun l => (yl l - fr P (y0 P) l) / algebraMap (𝓞 X.E) X.E (m P) with hz
  have hy : yl = fr P (y0 P) + algebraMap (𝓞 X.E) X.E (m P) • z := by
    funext l
    simp only [hz, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
    field_simp
    ring
  have hdiff : (fr P).symm yl - y0 P = algebraMap (𝓞 X.E) X.E (m P) • (fr P).symm z := by
    rw [hy, map_add (f := _), map_smul, LinearEquiv.symm_apply_apply, add_sub_cancel_left]
  have key := hd P P.1 z (fun l => hyl l P) l
  show IntAt P.1 (((qOf P.1 : X.E) ^ e P)⁻¹ * ((fr P).symm yl - y0 P) l)
  rw [hdiff, Pi.smul_apply, smul_eq_mul, hmE]
  have : (((qOf P.1 : ℕ) : X.E) ^ e P)⁻¹ * (algebraMap (𝓞 X.E) X.E (d P) * ((qOf P.1 : ℕ) : X.E) ^ e P * (fr P).symm z l) =
      algebraMap (𝓞 X.E) X.E (d P) * (fr P).symm.toLinearMap z l := by
    have hqe := pow_ne_zero (e P) (hq P)
    simp only [LinearEquiv.coe_coe]
    field_simp
  rw [this]
  exact key

end GlobalTheory.FrameCongApprox
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimes =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFrames =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFrames", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.DatTransport

section Gen

variable {E : Type} [Field E] [NumberField E]

theorem mem_localization_of_smul_mem₂ {W : Type} [AddCommGroup W] [Module (𝓞 E) W] (q : Ideal (𝓞 E)) [q.IsPrime] (L : Submodule (𝓞 E) W)
    {t : 𝓞 E} (ht : t ∈ q.primeCompl) {v : W} (h : t • v ∈ Formalism.HermitianLatticesTheory.localization₂ q L) : v ∈ Formalism.HermitianLatticesTheory.localization₂ q L := by
  obtain ⟨u, hu, huv⟩ := h
  exact ⟨u * t, q.primeCompl.mul_mem hu ht, by rw [mul_smul]; exact huv⟩

theorem mem_localization_map_iff {n : ℕ} (f : (Fin n → E) ≃ₗ[E] (Fin n → E)) (q : Ideal (𝓞 E)) [q.IsPrime]
    (L : Submodule (𝓞 E) (Fin n → E)) (y : Fin n → E) :
    y ∈ Formalism.HermitianLatticesTheory.localization₂ q (L.map (f.toLinearMap.restrictScalars (𝓞 E))) ↔ f.symm y ∈ Formalism.HermitianLatticesTheory.localization₂ q L := by
  have hf : ∀ (r : 𝓞 E) (v : Fin n → E), f (r • v) = r • f v := fun r v => (f.toLinearMap.restrictScalars (𝓞 E)).map_smul r v
  constructor
  · rintro ⟨r, hr, z, hz, hzy⟩
    refine ⟨r, hr, ?_⟩
    have e1 : r • f.symm y = z := by
      apply f.injective
      rw [hf, f.apply_symm_apply]
      exact hzy.symm
    rw [e1]
    exact hz
  · rintro ⟨r, hr, hy⟩
    refine ⟨r, hr, r • f.symm y, hy, ?_⟩
    show f (r • f.symm y) = r • y
    rw [hf, f.apply_symm_apply]

end Gen

end GlobalTheory.DatTransport

namespace GlobalTheory.DatTransport

section PerO

variable {E : Type} [Field E] [NumberField E] [StarRing E] {a b : ℕ}

theorem perO_apply_mem (AA : Submodule (𝓞 E) E) (q : Ideal (𝓞 E)) [q.IsPrime]
    (hAA : AA ≤ Formalism.HermitianLatticesTheory.localization₂ q (1 : Submodule (𝓞 E) E)) (M : Submodule (𝓞 E) (Sp E a)) (M' : Submodule (𝓞 E) (Sp E b))
    (w : HomE E a b) (hw : w ∈ Formalism.HermitianLatticesTheory.localization₂ q (perO AA M M')) :
    ∀ y ∈ Formalism.HermitianLatticesTheory.localization₂ q M, w y ∈ Formalism.HermitianLatticesTheory.localization₂ q M' := by
  intro y hy
  obtain ⟨t, ht, htw⟩ := hw
  have key : ∀ z ∈ perO AA M M', z y ∈ Formalism.HermitianLatticesTheory.localization₂ q M' := by
    intro z hz
    induction hz using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨r, hr, x, hx, rfl⟩ := hz
      obtain ⟨t1, ht1, hy1⟩ := hy
      have hxy : t1 • x y ∈ M' := by
        have e0 : x (t1 • y) = t1 • x y := (x.restrictScalars (𝓞 E)).map_smul t1 y
        rw [← e0]
        exact hx _ hy1
      obtain ⟨t2, ht2, hr2⟩ := hAA hr
      obtain ⟨o, ho⟩ := Submodule.mem_one.1 hr2
      refine ⟨t2 * t1, q.primeCompl.mul_mem ht2 ht1, ?_⟩
      have e1 : (t2 * t1) • ((r • x) y) = o • (t1 • x y) := by
        funext l
        rw [Algebra.smul_def] at ho
        simp only [LinearMap.smul_apply, Pi.smul_apply, Algebra.smul_def, map_mul, ho, Pi.mul_apply,
          Pi.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
        ring
      rw [e1]
      exact M'.smul_mem o hxy
    | zero => exact zero_mem _
    | add z z' _ _ h1 h2 =>
      rw [LinearMap.add_apply]
      exact add_mem h1 h2
    | smul c z _ h =>
      rw [LinearMap.smul_apply]
      exact Submodule.smul_mem _ c h
  have h1 := key _ htw
  rw [LinearMap.smul_apply] at h1
  exact mem_localization_of_smul_mem₂ q M' ht h1

end PerO

end GlobalTheory.DatTransport

namespace GlobalTheory.DatTransport

section Seam

variable {D : D7} {X : Fields} (s : Seam D X)

theorem tr_smul {n : ℕ} (c : 𝓞 X.E) (x : Sp X.E n) :
    (fun i => s.iE ((c • x) i)) = RingOfIntegers.mapRingEquiv s.iE c • (fun i => s.iE (x i)) := by
  funext i
  simp only [Pi.smul_apply, Algebra.smul_def, map_mul]
  rfl

theorem mem_seamLat_iff {n : ℕ} (N : Submodule (𝓞 X.E) (Sp X.E n)) (y : Fin n → D.host.E) :
    y ∈ s.lat N ↔ ∃ x ∈ N, (fun i => s.iE (x i)) = y := by
  constructor
  · intro hy
    induction hy using Submodule.span_induction with
    | mem y hy => exact hy
    | zero => exact ⟨0, N.zero_mem, by funext i; simp⟩
    | add y z _ _ hy hz =>
      obtain ⟨a, ha, rfl⟩ := hy
      obtain ⟨b, hb, rfl⟩ := hz
      exact ⟨a + b, N.add_mem ha hb, by funext i; simp⟩
    | smul r y _ hy =>
      obtain ⟨a, ha, rfl⟩ := hy
      refine ⟨(RingOfIntegers.mapRingEquiv s.iE).symm r • a, N.smul_mem _ ha, ?_⟩
      rw [tr_smul, RingEquiv.apply_symm_apply]
  · rintro ⟨x, hx, rfl⟩
    exact Submodule.subset_span ⟨x, hx, rfl⟩

theorem tr_injective {n : ℕ} : Function.Injective (fun (x : Sp X.E n) (i : Fin n) => s.iE (x i)) := by
  intro x y h
  funext i
  exact s.iE.injective (congrFun h i)

theorem mem_localization_seamLat_iff (P : HeightOneSpectrum (𝓞 X.E)) {n : ℕ} (N : Submodule (𝓞 X.E) (Sp X.E n)) (x : Sp X.E n) :
    x ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal N ↔ (fun i => s.iE (x i)) ∈ Formalism.HermitianLatticesTheory.localization₂ (seamP s P).asIdeal (s.lat N) := by
  constructor
  · rintro ⟨c, hc, hcx⟩
    refine ⟨RingOfIntegers.mapRingEquiv s.iE c, fun h => hc ((mem_seamP s P c).1 h), ?_⟩
    rw [← tr_smul]
    exact (mem_seamLat_iff s N _).2 ⟨_, hcx, rfl⟩
  · rintro ⟨d, hd, hdx⟩
    obtain ⟨c, rfl⟩ := (RingOfIntegers.mapRingEquiv s.iE).surjective d
    refine ⟨c, fun h => hd ((mem_seamP s P c).2 h), ?_⟩
    rw [← tr_smul] at hdx
    obtain ⟨x', hx', e⟩ := (mem_seamLat_iff s N _).1 hdx
    rw [tr_injective s e] at hx'
    exact hx'

theorem aaOf_le_locP_seamP (cc : Ideal (𝓞 D.host.K)) (Q : HeightOneSpectrum (𝓞 X.E))
    (h : Formalism.HermitianLatticesTheory.localization₂ Q.asIdeal (Submodule.span (𝓞 X.E) {r | ∃ c ∈ cc, ∃ t ∈ D.host.AA0,
      r = s.iE.symm ((((c : 𝓞 D.host.K) : D.host.K) : D.host.E) * t)}) = Formalism.HermitianLatticesTheory.localization₂ Q.asIdeal (1 : Submodule (𝓞 X.E) X.E)) :
    Formalism.L2.PairingIndexBounds.F.aaOf D cc ≤ Formalism.HermitianLatticesTheory.localization₂ (seamP s Q).asIdeal (1 : Submodule (𝓞 D.host.E) D.host.E) := by
  unfold Formalism.L2.PairingIndexBounds.F.aaOf
  rw [Submodule.span_le]
  rintro _ ⟨c, hc, t, ht, rfl⟩
  have h1 : s.iE.symm ((((c : 𝓞 D.host.K) : D.host.K) : D.host.E) * t) ∈ Formalism.HermitianLatticesTheory.localization₂ Q.asIdeal (1 : Submodule (𝓞 X.E) X.E) := by
    rw [← h]
    exact ⟨1, Q.asIdeal.primeCompl.one_mem, by rw [one_smul]; exact Submodule.subset_span ⟨c, hc, t, ht, rfl⟩⟩
  obtain ⟨u, hu, hu1⟩ := h1
  obtain ⟨o, ho⟩ := Submodule.mem_one.1 hu1
  refine ⟨RingOfIntegers.mapRingEquiv s.iE u, fun hh => hu ((mem_seamP s Q u).1 hh), ?_⟩
  refine Submodule.mem_one.2 ⟨RingOfIntegers.mapRingEquiv s.iE o, ?_⟩
  rw [Algebra.smul_def] at ho ⊢
  have e1 := congrArg s.iE ho
  rw [map_mul, RingEquiv.apply_symm_apply] at e1
  exact e1

end Seam

end GlobalTheory.DatTransport

namespace GlobalTheory.DatTransport

section Hom

variable {D : D7} {X : Fields} (s : Seam D X) {a b : ℕ}

theorem seam_inFr_apply (f : (Fin a → D.host.E) ≃ₗ[D.host.E] (Fin a → D.host.E))
    (f' : (Fin b → D.host.E) ≃ₗ[D.host.E] (Fin b → D.host.E)) (w : HomE D.host.E a b) (u : Sp X.E a) :
    (fun l => s.iE (seamHom s (inFr f f' w) u l)) = f'.symm (w (f (fun k => s.iE (u k)))) := by
  funext l
  rw [seamHom_apply]
  rfl

theorem homAtP_iff (Q : HeightOneSpectrum (𝓞 X.E)) (N : Submodule (𝓞 X.E) (Sp X.E a)) (N' : Submodule (𝓞 X.E) (Sp X.E b))
    (f : (Fin a → D.host.E) ≃ₗ[D.host.E] (Fin a → D.host.E)) (f' : (Fin b → D.host.E) ≃ₗ[D.host.E] (Fin b → D.host.E))
    (w : HomE D.host.E a b) :
    (∀ y ∈ Formalism.HermitianLatticesTheory.localization₂ (seamP s Q).asIdeal ((s.lat N).map (f.toLinearMap.restrictScalars (𝓞 D.host.E))),
        w y ∈ Formalism.HermitianLatticesTheory.localization₂ (seamP s Q).asIdeal ((s.lat N').map (f'.toLinearMap.restrictScalars (𝓞 D.host.E)))) ↔
      ∀ u ∈ Formalism.HermitianLatticesTheory.localization₂ Q.asIdeal N, seamHom s (inFr f f' w) u ∈ Formalism.HermitianLatticesTheory.localization₂ Q.asIdeal N' := by
  have hi : ∀ u : Sp X.E a, f (fun k => s.iE (u k)) ∈
      Formalism.HermitianLatticesTheory.localization₂ (seamP s Q).asIdeal ((s.lat N).map (f.toLinearMap.restrictScalars (𝓞 D.host.E))) ↔
        u ∈ Formalism.HermitianLatticesTheory.localization₂ Q.asIdeal N := by
    intro u
    rw [mem_localization_map_iff, f.symm_apply_apply, ← mem_localization_seamLat_iff]
  constructor
  · intro h u hu
    rw [mem_localization_seamLat_iff s Q N', seam_inFr_apply]
    exact (mem_localization_map_iff f' _ _ _).1 (h _ ((hi u).2 hu))
  · intro h y hy
    have hyu : y = f (fun k => s.iE ((fun k => s.iE.symm ((f.symm y) k)) k)) := by
      simp
    rw [hyu] at hy ⊢
    have h1 := (mem_localization_seamLat_iff s Q N' _).1 (h _ ((hi _).1 hy))
    rw [seam_inFr_apply] at h1
    exact (mem_localization_map_iff f' _ _ _).2 h1

theorem mem_homAt_iff (S : Finset (HeightOneSpectrum (𝓞 X.E))) (N : Submodule (𝓞 X.E) (Sp X.E a)) (N' : Submodule (𝓞 X.E) (Sp X.E b))
    (f : (Fin a → D.host.E) ≃ₗ[D.host.E] (Fin a → D.host.E)) (f' : (Fin b → D.host.E) ≃ₗ[D.host.E] (Fin b → D.host.E))
    (w : HomE D.host.E a b) :
    w ∈ homAt (S.map (HeightOneSpectrum.equivOfRingEquiv (RingOfIntegers.mapRingEquiv s.iE)).toEmbedding)
        ((s.lat N).map (f.toLinearMap.restrictScalars (𝓞 D.host.E))) ((s.lat N').map (f'.toLinearMap.restrictScalars (𝓞 D.host.E))) ↔
      seamHom s (inFr f f' w) ∈ homAt S N N' := by
  constructor
  · intro h Q hQ
    exact (homAtP_iff s Q N N' f f' w).1 (h (seamP s Q) (Finset.mem_map_of_mem _ hQ))
  · intro h P hP
    obtain ⟨Q, hQ, rfl⟩ := Finset.mem_map.1 hP
    exact (homAtP_iff s Q N N' f f' w).2 (h Q hQ)

theorem seamHom_inFr_sub (f : (Fin a → D.host.E) ≃ₗ[D.host.E] (Fin a → D.host.E))
    (f' : (Fin b → D.host.E) ≃ₗ[D.host.E] (Fin b → D.host.E)) (w w' : HomE D.host.E a b) :
    seamHom s (inFr f f' (w - w')) = seamHom s (inFr f f' w) - seamHom s (inFr f f' w') := by
  refine LinearMap.ext fun u => funext fun l => s.iE.injective ?_
  have e1 := congrFun (seam_inFr_apply s f f' (w - w') u) l
  have e2 := congrFun (seam_inFr_apply s f f' w u) l
  have e3 := congrFun (seam_inFr_apply s f f' w' u) l
  rw [e1]
  simp only [LinearMap.sub_apply, map_sub, Pi.sub_apply]
  rw [e2, e3]

theorem seamHom_inFr_natCast_smul (f : (Fin a → D.host.E) ≃ₗ[D.host.E] (Fin a → D.host.E))
    (f' : (Fin b → D.host.E) ≃ₗ[D.host.E] (Fin b → D.host.E)) (c : ℕ) (w : HomE D.host.E a b) :
    seamHom s (inFr f f' ((c : 𝓞 D.host.E) • w)) = (c : 𝓞 X.E) • seamHom s (inFr f f' w) := by
  refine LinearMap.ext fun u => funext fun l => s.iE.injective ?_
  have e1 := congrFun (seam_inFr_apply s f f' ((c : 𝓞 D.host.E) • w) u) l
  have e2 := congrFun (seam_inFr_apply s f f' w u) l
  rw [e1]
  simp only [LinearMap.smul_apply, Nat.cast_smul_eq_nsmul, map_nsmul, Pi.smul_apply]
  rw [e2]

end Hom

end GlobalTheory.DatTransport

namespace GlobalTheory.DatTransport

theorem datLoc_seam_inFr : ∀ {D : D7} {X : Fields} (s : Seam D X) (cc : Ideal (𝓞 D.host.K)) (S : Finset (HeightOneSpectrum (𝓞 X.E))) {a b : ℕ} (N : Submodule (𝓞 X.E) (Sp X.E a)) (N' : Submodule (𝓞 X.E) (Sp X.E b)) (f : (Fin a → D.host.E) ≃ₗ[D.host.E] (Fin a → D.host.E)) (f' : (Fin b → D.host.E) ≃ₗ[D.host.E] (Fin b → D.host.E)) (cA cB : ℕ), 0 < cA → 0 < cB → ∀ (Ξ : HomE X.E a b → X.K), (∀ P ∈ S, Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Submodule.span (𝓞 X.E) {r | ∃ c ∈ cc, ∃ t ∈ D.host.AA0, r = s.iE.symm ((((c : 𝓞 D.host.K) : D.host.K) : D.host.E) * t)}) = Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (1 : Submodule (𝓞 X.E) X.E)) → (∀ x, Ξ x ≠ 0 → x ∈ divLat cA (homAt S N N')) → (∀ x, ∀ y ∈ mulLat cB (homAt S N N'), Ξ (x + y) = Ξ x) → DatLoc D cc (S.map (HeightOneSpectrum.equivOfRingEquiv (RingOfIntegers.mapRingEquiv s.iE)).toEmbedding) (cA * cB) ((s.lat N).map (f.toLinearMap.restrictScalars (𝓞 D.host.E))) ((s.lat N').map (f'.toLinearMap.restrictScalars (𝓞 D.host.E))) (fun z => s.σ₀ (Ξ (seamHom s (inFr f f' z)))) ∧ ∀ z, s.σ₀ (Ξ (seamHom s (inFr f f' z))) ≠ 0 → z ∈ divLat (cA * cB) (homAt (S.map (HeightOneSpectrum.equivOfRingEquiv (RingOfIntegers.mapRingEquiv s.iE)).toEmbedding) ((s.lat N).map (f.toLinearMap.restrictScalars (𝓞 D.host.E))) ((s.lat N').map (f'.toLinearMap.restrictScalars (𝓞 D.host.E)))) := by
  intro D X s cc S a b N N' f f' cA cB hA hB Ξ hAA hsupp hinv
  have hH := mem_homAt_iff s S N N' f f'
  constructor
  · intro x x' hx
    have hAA' : ∀ P ∈ S.map (HeightOneSpectrum.equivOfRingEquiv (RingOfIntegers.mapRingEquiv s.iE)).toEmbedding,
        Formalism.L2.PairingIndexBounds.F.aaOf D cc ≤ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (1 : Submodule (𝓞 D.host.E) D.host.E) := by
      intro P hP
      obtain ⟨Q, hQ, rfl⟩ := Finset.mem_map.1 hP
      exact aaOf_le_locP_seamP s cc Q (hAA Q hQ)
    set d := (((cA * cB : ℕ) : D.host.E))⁻¹ • (x - x') with hd
    have hdH : d ∈ homAt (S.map (HeightOneSpectrum.equivOfRingEquiv (RingOfIntegers.mapRingEquiv s.iE)).toEmbedding)
        ((s.lat N).map (f.toLinearMap.restrictScalars (𝓞 D.host.E))) ((s.lat N').map (f'.toLinearMap.restrictScalars (𝓞 D.host.E))) :=
      fun P hP y hy => perO_apply_mem _ P.asIdeal (hAA' P hP) _ _ d (hx P hP) y hy
    have hne : ((cA * cB : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 (Nat.mul_ne_zero hA.ne' hB.ne')
    have hxx : x - x' = ((cA * cB : ℕ) : 𝓞 D.host.E) • d := by
      rw [hd, Nat.cast_smul_eq_nsmul, ← Nat.cast_smul_eq_nsmul D.host.E, smul_smul, mul_inv_cancel₀ hne, one_smul]
    have hu : (cA : 𝓞 X.E) • seamHom s (inFr f f' d) ∈ homAt S N N' :=
      Submodule.smul_mem _ _ ((hH d).1 hdH)
    have hm : seamHom s (inFr f f' x) - seamHom s (inFr f f' x') ∈ mulLat cB (homAt S N N') := by
      rw [← seamHom_inFr_sub, hxx, seamHom_inFr_natCast_smul, Nat.cast_mul, mul_comm, mul_smul]
      exact ⟨_, hu, rfl⟩
    show s.σ₀ (Ξ (seamHom s (inFr f f' x))) = s.σ₀ (Ξ (seamHom s (inFr f f' x')))
    rw [← hinv (seamHom s (inFr f f' x')) _ hm, add_sub_cancel]
  · intro z hz
    have h1 : Ξ (seamHom s (inFr f f' z)) ≠ 0 := fun h => hz (by rw [h, map_zero])
    have h2 : (cA : 𝓞 X.E) • seamHom s (inFr f f' z) ∈ homAt S N N' := hsupp _ h1
    have h3 := (hH ((cA : 𝓞 D.host.E) • z)).2 (by rw [seamHom_inFr_natCast_smul]; exact h2)
    rw [Formalism.L2.Col.divLat, Submodule.mem_comap, LinearMap.smul_apply, LinearMap.id_apply, Nat.cast_mul, mul_comm, mul_smul]
    exact Submodule.smul_mem _ _ h3

end GlobalTheory.DatTransport
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFrames =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFramesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFramesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFrames\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV
open Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFramesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.AdelicDatumInvarianceSupportKernelChain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.AdelicDatumInvarianceSupportKernelChain", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.XiAtPenultimateEqXiCpl1\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwChainWtSharpDivDe\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseCosetRepresentativeBoundedAtBadPrimesStatement\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeFinal\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeInterior\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsVectorSameCouplingCosetAllBadPrimesStatement\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteDatumInvarianceSupportTransportFramesStatement\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LastColumnStepDatumEqTwistTopDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV

namespace GlobalTheory.TwV.EntrySupportBounds

open GlobalTheory.Mem.Col2 GlobalTheory.TopStep
variable {X : Fields} {Pr : Primes X} {R : Ranks} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K))}
  {G : ChGlob X R.m} {m2 : ℕ} {u : Pr.Word}

theorem top_supp (hL : L.Ok Ch sel mu cst G m2) (p : ChPt (R := R) sel mu u (m2 + 1)) (Y : Set (Sp X.E (R.N (m2 + 1))))
    (p' : ChPt (R := R) sel mu u (m2 + 1 + 1)) (x : HomE X.E (R.N (m2 + 1)) (R.N (m2 + 1 + 1)))
    (hx : XiTop Ch sel mu cst (m2 + 1) p Y p' x ≠ 0) :
    x ∈ divLat (cAof sel mu cst) (homAt (Sall sel mu u) p.deco.1.N p'.deco.1.N) := by
  have hm : m2 + 1 + 1 = R.m := hL.hm.symm
  rw [← xiOver_eq_XiTop _ _ _ _ _ _ _ _ _ _ hm] at hx
  unfold xiOver at hx
  refine GlobalTheory.GO.mem_divLat_of_loc _ _ (left_ne_zero_of_mul hx) fun Q s l => ?_
  have h := GlobalTheory.GO.locTop_den hL.hm hL.cst_ok (Finset.prod_ne_zero_iff.1 (right_ne_zero_of_mul hx) Q (Finset.mem_univ _)) s
    (Fin.cast (congrArg R.N hm) l)
  simpa [castSp, LinearMap.funLeft_apply] using h

open Classical in
theorem top_add (hPr : Pr.Ok) (hL : L.Ok Ch sel mu cst G m2) (p : ChPt (R := R) sel mu u (m2 + 1)) (Y : Set (Sp X.E (R.N (m2 + 1))))
    (p' : ChPt (R := R) sel mu u (m2 + 1 + 1))
    (hY : ∀ (Q : rowSG Pr sel mu) l, IntAt Q.1 ((qOf Q.1 : X.E) ^ (if Q.1 ∈ Pr.vGs then 1 else cst.M) * (frsF sel mu p Q).symm (repY Y) l))
    (x y : HomE X.E (R.N (m2 + 1)) (R.N (m2 + 1 + 1)))
    (hy : y ∈ mulLat (cBof sel mu cst u) (homAt (Sall sel mu u) p.deco.1.N p'.deco.1.N)) :
    XiTop Ch sel mu cst (m2 + 1) p Y p' (x + y) = XiTop Ch sel mu cst (m2 + 1) p Y p' x := by
  have hm : m2 + 1 + 1 = R.m := hL.hm.symm
  obtain ⟨h1, h2⟩ := GlobalTheory.GO.loc_of_mem_mulLat hPr _ _ x hy
  rw [← xiOver_eq_XiTop _ _ _ _ _ _ _ _ _ _ hm]
  unfold xiOver
  refine congrArg₂ (· * ·) h1 (Finset.prod_congr rfl fun Q _ => ?_)
  rw [GlobalTheory.inFr_add, LinearMap.comp_add]
  refine GlobalTheory.GO.locTop_add hL.hm hL.cst_ok (hL.depthQ Q) _ (fun s l => ?_) (hY Q)
  simpa [castSp, LinearMap.funLeft_apply] using h2 Q s (Fin.cast (congrArg R.N hm).symm l)

theorem entry_supp (hL : L.Ok Ch sel mu cst G m2) {i : ℕ} (hi : i < m2) (al : L.β i) (be : L.β (i + 1))
    (p : ChPt (R := R) sel mu u i) (p' : ChPt (R := R) sel mu u (i + 1)) (x : HomE X.E (R.N i) (R.N (i + 1)))
    (hx : XiEntry Ch sel mu cst L i al be p p' x ≠ 0) :
    x ∈ divLat (cAof sel mu cst) (homAt (Sall sel mu u) p.deco.1.N p'.deco.1.N) :=
  GlobalTheory.GO.mem_divLat_of_loc _ _ (left_ne_zero_of_mul hx) fun Q =>
    hL.xiSupp i hi al be Q _ (Finset.prod_ne_zero_iff.1 (right_ne_zero_of_mul hx) Q (Finset.mem_univ _))

theorem entry_add (hPr : Pr.Ok) (hL : L.Ok Ch sel mu cst G m2) {i : ℕ} (hi : i < m2) (al : L.β i) (be : L.β (i + 1))
    (p : ChPt (R := R) sel mu u i) (p' : ChPt (R := R) sel mu u (i + 1)) (x y : HomE X.E (R.N i) (R.N (i + 1)))
    (hy : y ∈ mulLat (cBof sel mu cst u) (homAt (Sall sel mu u) p.deco.1.N p'.deco.1.N)) :
    XiEntry Ch sel mu cst L i al be p p' (x + y) = XiEntry Ch sel mu cst L i al be p p' x := by
  obtain ⟨h1, h2⟩ := GlobalTheory.GO.loc_of_mem_mulLat hPr _ _ x hy
  exact congrArg₂ (· * ·) h1 (Finset.prod_congr rfl fun Q _ =>
    (congrArg _ (GlobalTheory.inFr_add _ _ x y)).trans (hL.xiInv i hi al be Q _ _ (h2 Q)))

theorem cpl_supp (hL : L.Ok Ch sel mu cst G m2) (al : L.β m2) (p₀ : ChPt (R := R) sel mu u m2)
    (p : ChPt (R := R) sel mu u (m2 + 1)) (Y : Set (Sp X.E (R.N (m2 + 1)))) (x : HomE X.E (R.N m2) (R.N (m2 + 1)))
    (hx : XiCpl1 Ch sel mu cst L m2 al p₀ p Y x ≠ 0) :
    x ∈ divLat (cAof sel mu cst) (homAt (Sall sel mu u) p₀.deco.1.N p.deco.1.N) :=
  GlobalTheory.GO.mem_divLat_of_loc _ _ (left_ne_zero_of_mul hx) fun Q =>
    hL.psiSuppX al Q _ _ (Finset.prod_ne_zero_iff.1 (right_ne_zero_of_mul hx) Q (Finset.mem_univ _))

theorem cpl_add (hPr : Pr.Ok) (hL : L.Ok Ch sel mu cst G m2) (al : L.β m2) (p₀ : ChPt (R := R) sel mu u m2)
    (p : ChPt (R := R) sel mu u (m2 + 1)) (Y : Set (Sp X.E (R.N (m2 + 1)))) (x y : HomE X.E (R.N m2) (R.N (m2 + 1)))
    (hy : y ∈ mulLat (cBof sel mu cst u) (homAt (Sall sel mu u) p₀.deco.1.N p.deco.1.N)) :
    XiCpl1 Ch sel mu cst L m2 al p₀ p Y (x + y) = XiCpl1 Ch sel mu cst L m2 al p₀ p Y x := by
  obtain ⟨h1, h2⟩ := GlobalTheory.GO.loc_of_mem_mulLat hPr _ _ x hy
  exact congrArg₂ (· * ·) h1 (Finset.prod_congr rfl fun Q _ =>
    (congrArg (fun t => PsiAt Ch sel mu cst m2 Q _ t _) (GlobalTheory.inFr_add _ _ x y)).trans (hL.psiInvX al Q _ _ _ (h2 Q)))

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open Classical in
theorem cosetBound {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts} {Y : DivX D} {cX : ExtraC}
    {ex : Extra D L hT Gi Gl Kc Y cX} {t : KerEntTied ex} {u : D.what₂.Word} {μ : D.what₂.Tup} {St : ChainCharts D u μ}
    (A : AdData t u μ St) (dtU : Formalism.L2.Herm.unitaryOneFiniteAdeles D.sp.cm →* D.Dt) (a : 𝓞 D.host.E) (H : AdTie A dtU a)
    (hi : t.m2 + 1 ≤ D.R.m) (β : (St (t.m2 + 1) hi).Ch) (x : UA D (t.m2 + 1) hi)
    (p : ChPt (R := D.R) t.sel (t.tup μ) (t.word u) (t.m2 + 1)) (Q : SB t μ) (l : Fin (D.R.N (t.m2 + 1))) :
    IntAt Q.1 ((qOf Q.1 : t.X.E) ^ (if Q.1 ∈ t.Pr.vGs then 1 else (t.cst μ).M) *
      (frsF t.sel (t.tup μ) p Q).symm (repY (cosetOf A (t.m2 + 1) hi β p)) l) := by
  have hy0 : ∀ P, y0At A (t.m2 + 1) hi β P = A.y0 β P := fun P => by simp [y0At]
  obtain ⟨y, hy⟩ := _root_.GlobalTheory.FrameCongApprox.exists_sameCoset t.sel (t.tup μ) (t.cst μ) (fun P => frsF t.sel (t.tup μ) p P) (fun P => A.y0 β P)
  have hne : repY (cosetOf A (t.m2 + 1) hi β p) ∈ cosetOf A (t.m2 + 1) hi β p := by
    unfold repY
    exact Classical.epsilon_spec (p := fun y => y ∈ cosetOf A (t.m2 + 1) hi β p) ⟨y, fun P => by rw [hy0]; exact hy P⟩
  have h1 := hne Q l
  rw [hy0] at h1
  have h2 := _root_.GlobalTheory.TwU.baseCosetRepresentative_bounded_at_bad_primes A dtU a H β x Q l
  generalize (frsF t.sel (t.tup μ) p Q).symm (repY (cosetOf A (t.m2 + 1) hi β p)) = v at h1 ⊢
  rw [Pi.sub_apply] at h1
  have hq := GlobalTheory.TopInv.qOf_ne (E := t.X.E) Q.1
  split_ifs at h1 h2 ⊢ with hQ
  · have e : (qOf Q.1 : t.X.E) ^ 1 * v l = (qOf Q.1 : t.X.E) * (((qOf Q.1 : t.X.E) ^ 0)⁻¹ * (v l - A.y0 β Q l)) +
        (qOf Q.1 : t.X.E) ^ 1 * A.y0 β Q l := by ring
    rw [e]
    exact ((GlobalTheory.TopStep.intAt_nat _).mul h1).add h2
  · have e : (qOf Q.1 : t.X.E) ^ (t.cst μ).M * v l = (qOf Q.1 : t.X.E) ^ (t.cst μ).M * (qOf Q.1 : t.X.E) ^ (t.cst μ).M *
        (((qOf Q.1 : t.X.E) ^ (t.cst μ).M)⁻¹ * (v l - A.y0 β Q l)) + (qOf Q.1 : t.X.E) ^ (t.cst μ).M * A.y0 β Q l := by
      field_simp
      ring
    rw [e]
    exact (((GlobalTheory.TopStep.intAt_pow (GlobalTheory.TopStep.intAt_nat _) _).mul (GlobalTheory.TopStep.intAt_pow (GlobalTheory.TopStep.intAt_nat _) _)).mul h1).add h2


theorem sizeLaw_of_tie' : UnderTie (fun {D L hT Gi Gl Kc Y cX ex t u μ St} A dtU a => PtEx A a → SizeLaw A a) := by
  intro D L hT Gi Gl Kc Y cX ex t u μ St A dtU a hP hT hPt i hi β β' x x'
  obtain ⟨hSS, hlev, -⟩ := t.rd_chain u μ
  have hL := t.idx_ok μ
  have hPr := t.pr_ok
  have hp := (hPt i (Nat.le_of_succ_le hi) β x).choose_spec
  have hp' := (hPt (i + 1) hi β' x').choose_spec
  have hxi : xiAd A a i hi β β' x x' = fun z => t.seam.σ₀ (xiPt A i hi β β' (hPt i (Nat.le_of_succ_le hi) β x).choose
      (hPt (i + 1) hi β' x').choose (seamHom t.seam (inFr
      (toStdCo (D.sp.cm.sig : D.host.E →+* D.host.E) (Formalism.L2.Forms.gramN D i (Nat.le_of_succ_le hi)) (A.crd i (Nat.le_of_succ_le hi)))
      (toStdCo (D.sp.cm.sig : D.host.E →+* D.host.E) (Formalism.L2.Forms.gramN D (i + 1) hi) (A.crd (i + 1) hi)) z))) :=
    funext fun z => dif_pos ⟨⟨_, hp⟩, ⟨_, hp'⟩⟩
  generalize (hPt i (Nat.le_of_succ_le hi) β x).choose = p at hp hxi
  generalize (hPt (i + 1) hi β' x').choose = p' at hp' hxi
  have hS : ssRec t u μ = (Sall t.sel (t.tup μ) (t.word u)).map
      (HeightOneSpectrum.equivOfRingEquiv (RingOfIntegers.mapRingEquiv t.seam.iE)).toEmbedding := by
    unfold ssRec
    rw [hSS]
  rw [hxi, hS, hlev, latK_eq_map _ (A.crd i (Nat.le_of_succ_le hi)), latK_eq_map _ (A.crd (i + 1) hi), ← hp.lat, ← hp'.lat]
  unfold levC
  refine _root_.GlobalTheory.DatTransport.datLoc_seam_inFr t.seam t.cc _ _ _ _ _ _ _ GlobalTheory.GO.twDen_pos (GlobalTheory.GO.twMod_pos (hPr.T_prime _).pos) _
    (fun P hP => hT.aa P hP) ?_ ?_
  · intro z hz
    unfold xiPt at hz
    split_ifs at hz with h1 h2
    · exact entry_supp hL h1 _ _ _ _ z hz
    · subst h2
      exact cpl_supp hL _ _ _ _ z hz
    · obtain rfl : i = t.m2 + 1 := by have := m_eq t μ; omega
      exact top_supp hL _ _ _ z hz
  · intro z y hy
    unfold xiPt
    split_ifs with h1 h2
    · exact entry_add hPr hL h1 _ _ _ _ z y hy
    · subst h2
      exact cpl_add hPr hL _ _ _ _ z y hy
    · obtain rfl : i = t.m2 + 1 := by have := m_eq t μ; omega
      exact top_add hPr hL _ _ _ (fun Q l => cosetBound A dtU a hT _ β x _ Q l) z y hy

end GlobalTheory.TwV.EntrySupportBounds

theorem GlobalTheory.TwV.sizeLaw_of_tie : GlobalTheory.TwV.UnderTie (fun {D L hT Gi Gl Kc Y cX ex t u μ St} A dtU a => GlobalTheory.TwV.PtEx A a → GlobalTheory.TwV.SizeLaw A a) :=
  GlobalTheory.TwV.EntrySupportBounds.sizeLaw_of_tie'
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.AdelicDatumInvarianceSupportKernelChain =====

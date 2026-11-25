module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsRationalUnitaryDeterminantMapRationalUnitaryTo
public import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletelySplitPrimeHostPlaceProperties
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnderEqIffConjPl
public import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
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
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf

@[expose] public section

noncomputable section

namespace GlobalTheory.BigOn.Inhab

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.Host Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links GlobalTheory.Mem.Chr
open scoped Pointwise

variable {D : D7}

theorem isConjPl_iff_conjPl {w w' : HeightOneSpectrum (𝓞 D.host.E)} :
    Lev.IsConjPl w w' ↔ ConjPl D.host.conj.toRingEquiv w w' := by
  rw [conjPl_iff_smul]
  constructor
  · intro hc
    have hle : D.host.conj • w.asIdeal ≤ w'.asIdeal := by
      intro y hy
      rw [Ideal.mem_pointwise_smul_iff_inv_smul_mem] at hy
      obtain ⟨z, hz, hzv⟩ := hc _ hy
      have e : z = y := RingOfIntegers.ext
        ((hzv.trans (bridge_star_holds D.R D.host _)).trans (D.host.conj.apply_symm_apply (y : D.host.E)))
      exact e ▸ hz
    obtain ⟨v, hv, -⟩ := existsUnique_conjPl D.host.conj.toRingEquiv w
    have hv' := (conjPl_iff_smul D.host.conj w v).1 hv
    have hvw : v = w' := HeightOneSpectrum.ext (v.isMaximal.eq_of_le w'.isPrime.ne_top (hv' ▸ hle))
    exact hvw ▸ hv'
  · intro h c hc
    exact ⟨D.host.conj • c, h ▸ Ideal.smul_mem_pointwise_smul _ _ _ hc, (bridge_star_holds D.R D.host _).symm⟩

theorem mem_aboveK {P : HeightOneSpectrum (𝓞 D.host.K)} {w : HeightOneSpectrum (𝓞 D.host.E)} :
    w ∈ aboveF (L := D.host.E) D.host.K P ↔ w.under (𝓞 D.host.K) = P := by
  simp [aboveF]

theorem overP_of_under {p : ℕ} {P : HeightOneSpectrum (𝓞 D.host.K)} (hP : ((p : ℕ) : 𝓞 D.host.K) ∈ P.asIdeal)
    {w : HeightOneSpectrum (𝓞 D.host.E)} (h : w.under (𝓞 D.host.K) = P) : OverP D.host p w := by
  subst h
  have h2 : algebraMap (𝓞 D.host.K) (𝓞 D.host.E) ((p : ℕ) : 𝓞 D.host.K) ∈ w.asIdeal := hP
  rwa [map_natCast] at h2

section One

variable {p : ℕ} (hp : p.Prime) (hs : SplitsC D.host.E p) {P : HeightOneSpectrum (𝓞 D.host.K)}
  (hP : ((p : ℕ) : 𝓞 D.host.K) ∈ P.asIdeal)
include hp hs hP

theorem overP_iff (w : HeightOneSpectrum (𝓞 D.host.E)) : OverP D.host p w ↔
    w ∈ aboveF (L := D.host.E) D.host.K P ∨ ∃ w' ∈ aboveF (L := D.host.E) D.host.K P, Lev.IsConjPl w' w := by
  constructor
  · intro hw
    by_cases h : w.under (𝓞 D.host.K) = P
    · exact Or.inl (mem_aboveK.2 h)
    · obtain ⟨w', hw', -⟩ := existsUnique_conjPl D.host.conj.toRingEquiv.symm w
      have hc : ConjPl D.host.conj.toRingEquiv w' w := fun x => by
        have := hw' (D.host.conj.toRingEquiv x)
        rw [RingEquiv.symm_apply_apply] at this
        exact this.symm
      have ho : OverP D.host p w' := ((conjPl_iff_mem _ w' w).1 hc _ _ (by simp)).2 hw
      exact Or.inr ⟨w', mem_aboveK.2 (((splitsC_main D.R D.host p hp hs w' ho).2.2.2 P hP w hc).2.2 h),
        isConjPl_iff_conjPl.2 hc⟩
  · rintro (h | ⟨w', h, hc⟩)
    · exact overP_of_under hP (mem_aboveK.1 h)
    · exact ((splitsC_main D.R D.host p hp hs w' (overP_of_under hP (mem_aboveK.1 h))).2.2.2 P hP w
        (isConjPl_iff_conjPl.1 hc)).1

end One

end GlobalTheory.BigOn.Inhab

end

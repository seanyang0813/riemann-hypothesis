module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Data.Matrix.Mul
public import Mathlib.Algebra.Module.Submodule.Ker
public import Mathlib.Data.Matrix.Basic
public import Mathlib.LinearAlgebra.Basis.VectorSpace
public import Mathlib.LinearAlgebra.Matrix.ToLin
public import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex
public import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic
public import Mathlib.Algebra.Module.ZLattice.Basic
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApprox
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPf
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfStmt, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfKer, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLat, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLatPf, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfSolApprox, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfStmt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfStmt", "h": "module\n\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Data.Matrix.Mul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RCoc

def KerBaseChange : Prop :=
  ∀ (K L : Type) [Field K] [Field L] (f : K →+* L) (m p : Type) [Fintype m] [Fintype p] [DecidableEq p]
    (A : Matrix m p K), ∃ P : Matrix p p K, A * P = 0 ∧
      ∀ z : p → L, (A.map f).mulVec z = 0 → (P.map f).mulVec z = z

end Formalism.L2.SG.Pf.RCoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfStmt =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfKer =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfKer", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfStmt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Module.Submodule.Ker\npublic import Mathlib.Data.Matrix.Basic\npublic import Mathlib.LinearAlgebra.Basis.VectorSpace\npublic import Mathlib.LinearAlgebra.Matrix.ToLin\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.RCoc

theorem kerBaseChange_holds : KerBaseChange := by
  intro K L _ _ f m p _ _ _ A
  classical
  set T : (p → K) →ₗ[K] (m → K) := Matrix.toLin' A with hT
  obtain ⟨C, hC⟩ := Submodule.exists_isCompl (LinearMap.ker T)
  have hinj : LinearMap.ker (T ∘ₗ C.subtype) = ⊥ := by
    rw [LinearMap.ker_eq_bot']
    intro c hc
    have hk : (c : p → K) ∈ LinearMap.ker T := hc
    have hm : (c : p → K) ∈ LinearMap.ker T ⊓ C := ⟨hk, c.2⟩
    rw [hC.inf_eq_bot, Submodule.mem_bot] at hm
    exact Subtype.ext hm
  obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective (T ∘ₗ C.subtype) hinj
  have hTQT : ∀ v : p → K, T (C.subtype (g (T v))) = T v := by
    intro v
    have hv : v ∈ LinearMap.ker T ⊔ C := by rw [hC.sup_eq_top]; trivial
    obtain ⟨k, hk, c, hc, rfl⟩ := Submodule.mem_sup.1 hv
    have hk0 : T k = 0 := hk
    have e : g (T (k + c)) = ⟨c, hc⟩ := by
      rw [map_add (f := _), hk0, zero_add]
      exact LinearMap.congr_fun hg ⟨c, hc⟩
    rw [e, map_add (f := _), hk0, zero_add]
    rfl
  set Q : Matrix p m K := LinearMap.toMatrix' (C.subtype ∘ₗ g) with hQ
  have hAQA : A * Q * A = A := by
    have hcomp : T ∘ₗ (C.subtype ∘ₗ g) ∘ₗ T = T := LinearMap.ext hTQT
    have h := congrArg LinearMap.toMatrix' hcomp
    rwa [LinearMap.toMatrix'_comp, LinearMap.toMatrix'_comp, hT, LinearMap.toMatrix'_toLin', ← hQ,
      ← Matrix.mul_assoc] at h
  refine ⟨1 - Q * A, ?_, ?_⟩
  · rw [Matrix.mul_sub, Matrix.mul_one, ← Matrix.mul_assoc, hAQA, sub_self]
  · intro z hz
    have e : (1 - Q * A).map f = 1 - Q.map f * A.map f := by
      have h := (f.mapMatrix (m := p)).map_sub 1 (Q * A)
      rw [map_one] at h
      simp only [RingHom.mapMatrix_apply] at h
      rw [h, Matrix.map_mul]
    rw [e, Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec, hz, Matrix.mulVec_zero, sub_zero]

end Formalism.L2.SG.Pf.RCoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfKer =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLat =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLat", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

namespace Formalism.L2.SG.Pf.UnipLat

def OEApprox : Prop :=
  ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E],
    IsTotallyReal F → IsTotallyComplex E → Module.finrank F E = 2 →
    ∀ φ : InfinitePlace F → (E →+* ℂ), (∀ v (a : F), φ v (algebraMap F E a) = v.embedding a) →
    ∃ R : ℝ, ∀ t : InfinitePlace F → ℂ, ∃ y : 𝓞 E, ∀ v, ‖t v - φ v (y : E)‖ ≤ R

end Formalism.L2.SG.Pf.UnipLat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLat =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLatPf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLatPf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Module.ZLattice.Basic\n\n"}
section -- clump:auto
@[expose] public section

open NumberField NumberField.InfinitePlace

namespace Formalism.L2.SG.Pf

theorem oeApprox_holds : Formalism.L2.SG.Pf.UnipLat.OEApprox := by
  intro F E _ _ _ _ _ _ hE _ φ hφ
  classical

  obtain ⟨R, hR⟩ := isBounded_iff_forall_norm_le.mp
    (ZSpan.fundamentalDomain_isBounded (mixedEmbedding.latticeBasis E))
  refine ⟨R, fun t => ?_⟩

  let w : InfinitePlace F → InfinitePlace E := fun v => InfinitePlace.mk (φ v)
  have hw : ∀ v, (w v).comap (algebraMap F E) = v := by
    intro v
    have hcomp : (φ v).comp (algebraMap F E) = v.embedding := RingHom.ext (hφ v)
    simp only [w, InfinitePlace.comap_mk, hcomp, InfinitePlace.mk_embedding]
  have hinj : ∀ v v', w v = w v' → v = v' := by
    intro v v' h
    rw [← hw v, ← hw v', h]
  let c : InfinitePlace F → ℂ := fun v =>
    if (w v).embedding = φ v then t v else (starRingEnd ℂ) (t v)
  let x : mixedEmbedding.mixedSpace E :=
    (0, fun u => if h : ∃ v, u.1 = w v then c h.choose else 0)
  have hmem : x - ZSpan.fract (mixedEmbedding.latticeBasis E) x ∈
      mixedEmbedding.integerLattice E := by
    rw [← mixedEmbedding.mem_span_latticeBasis, ZSpan.fract_apply, sub_sub_cancel]
    exact (ZSpan.floor _ x).2
  obtain ⟨m, hm⟩ := hmem
  have hm' : mixedEmbedding E (m : E) = x - ZSpan.fract (mixedEmbedding.latticeBasis E) x := hm
  refine ⟨m, fun v => ?_⟩
  have hc : (w v).IsComplex := hE.isComplex (w v)
  let u : {u : InfinitePlace E // u.IsComplex} := ⟨w v, hc⟩
  have hxu : x.2 u = c v := by
    have hex : ∃ v', u.1 = w v' := ⟨v, rfl⟩
    show (if h : ∃ v', u.1 = w v' then c h.choose else 0) = c v
    rw [dite_eq_left hex, hinj _ _ hex.choose_spec.symm]
  have hfr : x - mixedEmbedding E (m : E) = ZSpan.fract (mixedEmbedding.latticeBasis E) x := by
    rw [hm', sub_sub_cancel]
  have hval : (ZSpan.fract (mixedEmbedding.latticeBasis E) x).2 u
      = c v - (w v).embedding (m : E) := by
    rw [← hfr, Prod.snd_sub, Pi.sub_apply, hxu, mixedEmbedding.mixedEmbedding_apply_isComplex]
  have hb : ‖c v - (w v).embedding (m : E)‖ ≤ R := by
    rw [← hval]
    exact ((norm_le_pi_norm _ u).trans (norm_snd_le _)).trans
      (hR _ (ZSpan.fract_mem_fundamentalDomain _ x))
  by_cases h : (w v).embedding = φ v
  · have hcv : c v = t v := if_pos h
    rw [hcv, h] at hb
    exact hb
  · have h2 : (w v).embedding = ComplexEmbedding.conjugate (φ v) :=
      (InfinitePlace.embedding_mk_eq (φ v)).resolve_left h
    have hcv : c v = (starRingEnd ℂ) (t v) := if_neg h
    rw [hcv, h2, ComplexEmbedding.conjugate_coe_eq, ← map_sub, Complex.norm_conj] at hb
    exact hb

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLatPf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfSolApprox =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfSolApprox", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApprox\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfKer\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipLatPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.Pf.UnipB Formalism.L2.SG.Pf.Unip

namespace Formalism.L2.SG.Pf.RationalApproximateSolutions

variable {ι K L : Type*} [Fintype ι] [DecidableEq ι] [Field K] [Field L]

def condMat (lv : ι → ℕ) (k : ℕ) (G G' : Matrix ι ι K) : Matrix ((ι × ι) ⊕ (ι × ι)) (ι × ι) K :=
  Matrix.of fun r q => Sum.elim (fun p : ι × ι => if lv p.2 < lv p.1 + k ∧ q = p then (1 : K) else 0)
    (fun p => if lv p.2 < lv p.1 + 1 then G' p.1 q.1 * G q.2 p.2 else 0) r

def matOf (z : ι × ι → L) : Matrix ι ι L := Matrix.of fun a b => z (a, b)

theorem condMat_inl (lv : ι → ℕ) (k : ℕ) (G G' : Matrix ι ι K) (f : K →+* L) (z : ι × ι → L) (i j : ι) :
    ((condMat lv k G G').map f *ᵥ z) (Sum.inl (i, j)) = if lv j < lv i + k then z (i, j) else 0 := by
  first
    | simp only [Matrix.mulVec, dotProduct, Matrix.map_apply, condMat, Matrix.of_apply, Sum.elim_inl]
  by_cases h : lv j < lv i + k
  · rw [if_pos h, Finset.sum_eq_single (i, j)]
    · simp [h]
    · intro q _ hq
      simp [hq]
    · intro hn
      exact absurd (Finset.mem_univ _) hn
  · rw [if_neg h]
    simp [h]

theorem condMat_inr (lv : ι → ℕ) (k : ℕ) (G G' : Matrix ι ι K) (f : K →+* L) (z : ι × ι → L) (i j : ι) :
    ((condMat lv k G G').map f *ᵥ z) (Sum.inr (i, j)) =
      if lv j < lv i + 1 then (G'.map f * matOf z * G.map f) i j else 0 := by
  first
    | simp only [Matrix.mulVec, dotProduct, Matrix.map_apply, condMat, Matrix.of_apply, Sum.elim_inr]
  by_cases h : lv j < lv i + 1
  · simp only [h, ↓reduceIte, map_mul]
    rw [Fintype.sum_prod_type]
    simp only [Matrix.mul_apply, Matrix.map_apply, matOf, Matrix.of_apply, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun a _ => ?_
    ring
  · simp [h]

theorem cond_iff (lv : ι → ℕ) (k : ℕ) (G G' : Matrix ι ι K) (f : K →+* L) (z : ι × ι → L) :
    (condMat lv k G G').map f *ᵥ z = 0 ↔
      InPat lv k (matOf z) ∧ InPat lv 1 (G'.map f * matOf z * G.map f) := by
  constructor
  · intro hz
    refine ⟨?_, ?_⟩
    · intro i j hij
      have := congrFun hz (Sum.inl (i, j))
      rw [condMat_inl, if_pos hij] at this
      simpa [matOf] using this
    · intro i j hij
      have := congrFun hz (Sum.inr (i, j))
      rw [condMat_inr, if_pos hij] at this
      simpa using this
  · rintro ⟨h1, h2⟩
    funext r
    rcases r with ⟨i, j⟩ | ⟨i, j⟩
    · rw [condMat_inl]
      split_ifs with hij
      · simpa [matOf] using h1 i j hij
      · rfl
    · rw [condMat_inr]
      split_ifs with hij
      · simpa using h2 i j hij
      · rfl

end Formalism.L2.SG.Pf.RationalApproximateSolutions

namespace Formalism.L2.SG.TermOp.Vanish

open Formalism.L2.SG.Pf.RationalApproximateSolutions

theorem ratSolApprox_holds : RatSolApprox := by
  intro D X G G' k N hN
  obtain ⟨P0, hMP0, hfix0⟩ :=
    Formalism.L2.SG.Pf.RCoc.kerBaseChange_holds X.B.I.E X.B.I.E (RingHom.id _) _ _ (condMat (lvk X) k G G')
  have hfixE : ∀ w : Kap X × Kap X → X.B.I.E, condMat (lvk X) k G G' *ᵥ w = 0 → P0 *ᵥ w = w := by
    intro w hw
    have e := hfix0 w (by simpa using hw)
    simpa using e
  have hfixV : ∀ v (z : Kap X × Kap X → ℂ), (condMat (lvk X) k G G').map (X.B.I.φ v) *ᵥ z = 0 →
      P0.map (X.B.I.φ v) *ᵥ z = z := by
    intro v z hz
    obtain ⟨Pv, hMPv, hfixv⟩ :=
      Formalism.L2.SG.Pf.RCoc.kerBaseChange_holds X.B.I.E ℂ (X.B.I.φ v) _ _ (condMat (lvk X) k G G')
    have hPP : P0 * Pv = Pv := by
      refine Matrix.ext_of_mulVec_single fun q => ?_
      rw [← Matrix.mulVec_mulVec]
      apply hfixE
      rw [Matrix.mulVec_mulVec, hMPv, Matrix.zero_mulVec]
    have e := hfixv z hz
    calc P0.map (X.B.I.φ v) *ᵥ z = P0.map (X.B.I.φ v) *ᵥ (Pv.map (X.B.I.φ v) *ᵥ z) := by rw [e]
      _ = (P0 * Pv).map (X.B.I.φ v) *ᵥ z := by rw [Matrix.mulVec_mulVec, Matrix.map_mul]
      _ = z := by rw [hPP, e]
  obtain ⟨c, hc, hcI⟩ := exists_common_den (E := X.B.I.E)
    (fun q : (Kap X × Kap X) × (Kap X × Kap X) => P0 q.1 q.2)
  let Q : Matrix (Kap X × Kap X) (Kap X × Kap X) (𝓞 X.B.I.E) :=
    Matrix.of fun a b => ⟨(c : X.B.I.E) * P0 a b, hcI (a, b)⟩
  have hQ : ∀ a b, algebraMap (𝓞 X.B.I.E) X.B.I.E (Q a b) = (c : X.B.I.E) * P0 a b := fun a b => rfl
  obtain ⟨R0, hR0⟩ := Formalism.L2.SG.Pf.oeApprox_holds X.B.I.F X.B.I.E X.B.I.cm.totReal X.B.I.cm.cmUnram.1
    X.B.I.cm.deg2 X.B.I.φ X.B.I.φ_over
  obtain ⟨Nc, hNcd⟩ : ∃ Nc : ℕ, Nc = N * c := ⟨_, rfl⟩
  have hNc0 : (Nc : ℂ) ≠ 0 := by
    rw [hNcd]
    exact Nat.cast_ne_zero.2 (Nat.mul_ne_zero (by omega) (by omega))
  refine ⟨((Nc : ℝ) * max R0 0) * ∑ v, ∑ q, ∑ r, ‖X.B.I.φ v (P0 q r)‖, fun P hP => ?_⟩
  choose y hy using fun q : Kap X × Kap X => hR0 (fun v => P v q.1 q.2 / (Nc : ℂ))
  set Yv : Kap X × Kap X → X.B.I.E := (Nc : X.B.I.E) • (P0 *ᵥ fun q => (y q : X.B.I.E)) with hYvd
  have hYv : condMat (lvk X) k G G' *ᵥ Yv = 0 := by
    rw [hYvd, Matrix.mulVec_smul, Matrix.mulVec_mulVec, hMP0, Matrix.zero_mulVec, smul_zero]
  have hcond := (cond_iff (lvk X) k G G' (RingHom.id X.B.I.E) Yv).1 (by simpa using hYv)
  refine ⟨matOf Yv, hcond.1, by simpa using hcond.2, ?_, ?_⟩
  · refine ⟨Matrix.of fun a b => (Q *ᵥ y) (a, b), ?_⟩
    ext a b
    have e := RingHom.map_mulVec (algebraMap (𝓞 X.B.I.E) X.B.I.E) Q y (a, b)
    simp only [matOf, hYvd, Matrix.of_apply, Matrix.smul_apply, Matrix.map_apply, Pi.smul_apply, smul_eq_mul]
    change _ = (N : X.B.I.E) * algebraMap (𝓞 X.B.I.E) X.B.I.E ((Q *ᵥ y) (a, b))
    rw [e]
    simp only [mulVec, dotProduct, Matrix.map_apply, Function.comp_apply, hQ, Finset.mul_sum]
    refine Finset.sum_congr rfl fun r _ => ?_
    rw [hNcd]
    rw [show algebraMap (𝓞 X.B.I.E) X.B.I.E (y r) = (y r : X.B.I.E) from rfl]
    push_cast
    ring
  · intro v i j
    have hm : matOf (fun q : Kap X × Kap X => P v q.1 q.2) = P v := by
      ext a b
      rfl
    have hz : (condMat (lvk X) k G G').map (X.B.I.φ v) *ᵥ (fun q : Kap X × Kap X => P v q.1 q.2) = 0 :=
      (cond_iff (lvk X) k G G' (X.B.I.φ v) _).2 (by rw [hm]; exact ⟨(hP v).1, (hP v).2⟩)
    have hfz := congrFun (hfixV v _ hz) (i, j)
    simp only [mulVec, dotProduct, Matrix.map_apply] at hfz
    have key : ((matOf Yv).map (X.B.I.φ v) - P v) i j =
        ∑ r, X.B.I.φ v (P0 (i, j) r) * ((Nc : ℂ) * X.B.I.φ v (y r : X.B.I.E) - P v r.1 r.2) := by

      simp only [Matrix.sub_apply, Matrix.map_apply, matOf, Matrix.of_apply, hYvd, Pi.smul_apply, smul_eq_mul,
      mulVec, dotProduct, map_mul, map_sum, map_natCast]
      conv_lhs => rw [← hfz]
      rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun r _ => ?_
      ring
    have hM0 : 0 ≤ (Nc : ℝ) * max R0 0 := mul_nonneg (Nat.cast_nonneg _) (le_max_right _ _)
    rw [key]
    calc ‖∑ r, X.B.I.φ v (P0 (i, j) r) * ((Nc : ℂ) * X.B.I.φ v (y r : X.B.I.E) - P v r.1 r.2)‖
        ≤ ∑ r, ‖X.B.I.φ v (P0 (i, j) r)‖ * ((Nc : ℝ) * max R0 0) := by
          refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun r _ => ?_)
          rw [norm_mul]
          refine mul_le_mul_of_nonneg_left ?_ (norm_nonneg _)
          have h1 : ‖P v r.1 r.2 / (Nc : ℂ) - X.B.I.φ v (y r : X.B.I.E)‖ ≤ R0 := hy r v
          have h2 : (Nc : ℂ) * (P v r.1 r.2 / (Nc : ℂ)) = P v r.1 r.2 := by field_simp
          have e2 : (Nc : ℂ) * X.B.I.φ v (y r : X.B.I.E) - P v r.1 r.2 =
              -((Nc : ℂ) * (P v r.1 r.2 / (Nc : ℂ) - X.B.I.φ v (y r : X.B.I.E))) := by
            rw [mul_sub, h2]
            ring
          rw [e2, norm_neg, norm_mul, Complex.norm_natCast]
          exact mul_le_mul_of_nonneg_left (h1.trans (le_max_left _ _)) (Nat.cast_nonneg _)
      _ = ((Nc : ℝ) * max R0 0) * ∑ r, ‖X.B.I.φ v (P0 (i, j) r)‖ := by
          rw [← Finset.sum_mul, mul_comm]
      _ ≤ ((Nc : ℝ) * max R0 0) * ∑ v, ∑ q, ∑ r, ‖X.B.I.φ v (P0 q r)‖ := by
          refine mul_le_mul_of_nonneg_left ?_ hM0
          calc ∑ r, ‖X.B.I.φ v (P0 (i, j) r)‖ ≤ ∑ q, ∑ r, ‖X.B.I.φ v (P0 q r)‖ :=
                Finset.single_le_sum (f := fun q => ∑ r, ‖X.B.I.φ v (P0 q r)‖)
                  (fun _ _ => Finset.sum_nonneg fun _ _ => norm_nonneg _) (Finset.mem_univ (i, j))
            _ ≤ ∑ v', ∑ q, ∑ r, ‖X.B.I.φ v' (P0 q r)‖ :=
                Finset.single_le_sum (f := fun v' => ∑ q, ∑ r, ‖X.B.I.φ v' (P0 q r)‖)
                  (fun _ _ => Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => norm_nonneg _)
                  (Finset.mem_univ v)

end Formalism.L2.SG.TermOp.Vanish
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfSolApprox =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfSolApprox\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApprox\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.TermOp.Vanish

theorem ratApprox_holds : RatApprox := ratApprox_of_sol ratSolApprox_holds

end Formalism.L2.SG.TermOp.Vanish
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal =====

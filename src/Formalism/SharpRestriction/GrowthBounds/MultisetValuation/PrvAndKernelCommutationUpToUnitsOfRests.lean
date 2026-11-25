module

public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EaGeCOfNorm
public import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SmulUpdate
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralSpanCoordinates
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LatAtZeroUpd
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeValueEstimateOfRecordValue
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CoupledSumOfEntries
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PrimeCastNeZero
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AofUpdate
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.KernelProductForm
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ExpansionAllPlacesOfPlace
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.DworkExponentialRestrictions
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RamifiedLatticeOfChainEstimates
public import Formalism.SharpRestriction.GrowthBounds.LatticeSystems
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.GShiftRowGenMonomial
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.KernelSumOfClassData
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CommonEigenvectorThird
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FirstTheoremPlaceBound
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SmulPsiGUp
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AuxUOfFirstTheoremPlaceBound
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.GaussElementarySymmetric
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TheoremOfAlternateForm
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NatCastInvMemRp
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RelativePresentationOfD7

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbWMapDomain, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbBrJet, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FormValuationGeNegDegree, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HkEsymmSmul, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeConditionOfAdm, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.YEPEComm, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LiftBoundOfIntegrality, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestEntOf, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestrictedHeckeIntegralOfEdges, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TsumRatTail, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PrvAndKernelCommutationUpToUnitsOfRests

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbWMapDomain =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbWMapDomain", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EaGeCOfNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

section Gen

variable {σ κ τ τ' K : Type} [Field K]

def eb_w (F : MvPowerSeries σ K) (n : σ →₀ ℕ) : K :=
  (∏ x ∈ n.support, ((n x).factorial : K)) * MvPowerSeries.coeff n F

def eb_J (F : MvPowerSeries σ K) (Q : MvPolynomial σ (MvPolynomial τ K)) : MvPolynomial τ K :=
  ∑ n ∈ Q.support, eb_w F n • AddMonoidAlgebra.coeff Q n

theorem eb_J_subset (F : MvPowerSeries σ K) (Q : MvPolynomial σ (MvPolynomial τ K)) (S : Finset (σ →₀ ℕ))
    (h : Q.support ⊆ S) : eb_J F Q = ∑ n ∈ S, eb_w F n • AddMonoidAlgebra.coeff Q n := by
  unfold eb_J
  apply Finset.sum_subset h
  intro n _ hn
  rw [MvPolynomial.notMem_support_iff.1 hn, smul_zero]

theorem eb_applyD (P : MvPolynomial σ (MvPolynomial τ ℤ)) (F : MvPowerSeries σ K) :
    applyD P F = eb_J F (MvPolynomial.map (MvPolynomial.map (Int.castRingHom K)) P) := by
  rw [eb_J_subset F _ P.support (MvPolynomial.support_map_subset _ _)]
  unfold applyD eb_w
  apply Finset.sum_congr rfl
  intro n _
  rw [MvPolynomial.coeff_map]

theorem eb_w_mapDomain (ε : κ → σ) (hε : Function.Injective ε) (F : MvPowerSeries σ K) (n : κ →₀ ℕ) :
    eb_w F (n.mapDomain ε) = eb_w (resV ε F) n := by
  classical
  unfold eb_w
  rw [Finsupp.mapDomain_support_of_injective hε, Finset.prod_image (fun a _ b _ h => hε h)]
  congr 1
  apply Finset.prod_congr rfl
  intro y _
  rw [Finsupp.mapDomain_apply_of_injective hε]

theorem eb_J_rename (ε : κ → σ) (hε : Function.Injective ε) (F : MvPowerSeries σ K)
    (Q : MvPolynomial κ (MvPolynomial τ K)) : eb_J F (MvPolynomial.rename ε Q) = eb_J (resV ε F) Q := by
  classical
  unfold eb_J
  rw [MvPolynomial.support_rename_of_injective hε,
    Finset.sum_image (fun a _ b _ h => Finsupp.mapDomain_injective hε h)]
  apply Finset.sum_congr rfl
  intro n _
  rw [MvPolynomial.coeff_rename_mapDomain ε hε, eb_w_mapDomain ε hε]

theorem eb_J_map (φ : τ' → τ) (G : MvPowerSeries κ K) (Pc : MvPolynomial κ (MvPolynomial τ' K)) :
    eb_J G (MvPolynomial.map (MvPolynomial.rename φ : MvPolynomial τ' K →ₐ[K] MvPolynomial τ K).toRingHom Pc) =
      MvPolynomial.rename φ (Formalism.DworkPowerSeriesWeights.jetPairPoly Pc G) := by
  rw [eb_J_subset G _ Pc.support (MvPolynomial.support_map_subset _ _)]
  unfold Formalism.DworkPowerSeriesWeights.jetPairPoly

  rw [map_sum]
  apply Finset.sum_congr rfl
  intro n _
  rw [MvPolynomial.coeff_map, map_mul, MvPolynomial.rename_C, MvPolynomial.smul_eq_C_mul, mul_comm]
  congr 2
  unfold eb_w Formalism.DworkPowerSeriesWeights.mfact Finsupp.prod
  rw [Nat.cast_prod]

end Gen

variable {p : ℕ} [hp : Fact p.Prime] (X : Sys p)

def eb_phi (v : X.Pl) (j : ℕ) : ea_S X v × Fin (NN X.G.P.m X.t j) × Fin (NN X.G.P.m X.t j) → X.FrI j :=
  fun y => ⟨v, ((ea_e X v).symm y.1, y.2.1.val, y.2.2)⟩

theorem eb_phi_inj (v : X.Pl) (j : ℕ) : Function.Injective (eb_phi X v j) := by
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ h
  simp only [eb_phi, Sigma.mk.injEq, heq_eq_eq, true_and, Prod.mk.injEq, EmbeddingLike.apply_eq_iff_eq] at h
  obtain ⟨h1, h2, h3⟩ := h
  rw [h1, Fin.ext h2, h3]

theorem eb_eps_inj (v : X.Pl) (j : ℕ) : Function.Injective (ea_eps X v j) := by
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ h
  simp only [ea_eps, Sigma.mk.injEq, heq_eq_eq, true_and, Prod.mk.injEq, EmbeddingLike.apply_eq_iff_eq] at h
  obtain ⟨h1, h2, h3⟩ := h
  rw [h1, h2, h3]

theorem eb_fac (v : X.Pl) (j : ℕ) (K' : Type) [Field K'] (I : X.ColCh j) (s : ea_S X v) (c : Fin (ea_colN X v j s)) :
    MvPolynomial.rename (ea_eps X v j) (MvPolynomial.map
      (MvPolynomial.rename (eb_phi X v j) : MvPolynomial _ K' →ₐ[K'] MvPolynomial _ K').toRingHom
      (Matrix.of fun (r r' : Fin (ea_hts X v j s c)) =>
        (∑ a : Fin (NN X.G.P.m X.t j), MvPolynomial.C (MvPolynomial.X
            (s, (⟨r.val, lt_of_lt_of_le r.isLt (ea_hp X v j s c)⟩ : Fin (NN X.G.P.m X.t j)), a)) *
          MvPolynomial.X (s, a, ea_Ic X v j I s c r') :
        MvPolynomial (Formalism.DworkPowerSeriesWeights.ZV (2 * (X.G.P.n' v / 2)) (NN X.G.P.m X.t j) (NN X.G.P.m X.t (j + 1)))
          (MvPolynomial (ea_S X v × Fin (NN X.G.P.m X.t j) × Fin (NN X.G.P.m X.t j)) K'))).det) =
    MvPolynomial.map (MvPolynomial.map (Int.castRingHom K')) (X.colFac j I v ((ea_e X v).symm s) c.val) := by
  unfold Sys.colFac
  rw [RingHom.map_det, AlgHom.map_det, RingHom.map_det]
  refine congrArg Matrix.det (Matrix.ext fun r r' => ?_)
  change _ = MvPolynomial.map (MvPolynomial.map (Int.castRingHom K')) (∑ a : Fin (NN X.G.P.m X.t j),
    MvPolynomial.C (MvPolynomial.X (⟨v, ((ea_e X v).symm s, r.val, a)⟩ : X.FrI j)) *
      MvPolynomial.X (⟨v, ((ea_e X v).symm s, a, I v ((ea_e X v).symm s) c.val r'.val)⟩ : X.ZA j))

  simp only [RingHom.mapMatrix_apply, AlgHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, map_sum, map_mul,
  MvPolynomial.map_C, MvPolynomial.map_X, MvPolynomial.rename_C, MvPolynomial.rename_X, AlgHom.toRingHom_eq_coe,
  RingHom.coe_coe]
  rfl

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbWMapDomain =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbBrJet =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbBrJet", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbWMapDomain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [hp : Fact p.Prime] (X : Sys p)

def eb_Pc (v : X.Pl) (j : ℕ) (K' : Type) [Field K'] (I : X.ColCh j) :
    MvPolynomial (Formalism.DworkPowerSeriesWeights.ZV (2 * (X.G.P.n' v / 2)) (NN X.G.P.m X.t j) (NN X.G.P.m X.t (j + 1)))
      (MvPolynomial (ea_S X v × Fin (NN X.G.P.m X.t j) × Fin (NN X.G.P.m X.t j)) K') :=
  ∏ s : ea_S X v, Formalism.DworkPowerSeriesWeights.minorProd
    (fun (i : Fin (NN X.G.P.m X.t j)) (b : Fin (NN X.G.P.m X.t (j + 1))) =>
      (∑ a : Fin (NN X.G.P.m X.t j), MvPolynomial.C (MvPolynomial.X (s, i, a)) * MvPolynomial.X (s, a, b) :
        MvPolynomial (Formalism.DworkPowerSeriesWeights.ZV (2 * (X.G.P.n' v / 2)) (NN X.G.P.m X.t j) (NN X.G.P.m X.t (j + 1)))
          (MvPolynomial (ea_S X v × Fin (NN X.G.P.m X.t j) × Fin (NN X.G.P.m X.t j)) K')))
    (ea_hts X v j s) (ea_hp X v j s) (ea_Ic X v j I s)

theorem eb_poly (v : X.Pl) (j : ℕ) (K' : Type) [Field K'] (I : X.ColCh j) :
    MvPolynomial.map (MvPolynomial.map (Int.castRingHom K')) (X.PIv j I v) =
      MvPolynomial.rename (ea_eps X v j) (MvPolynomial.map
        (MvPolynomial.rename (eb_phi X v j) : MvPolynomial _ K' →ₐ[K'] MvPolynomial _ K').toRingHom
        (eb_Pc X v j K' I)) := by
  unfold Sys.PIv eb_Pc Formalism.DworkPowerSeriesWeights.minorProd
  simp only [map_prod]
  refine (Fintype.prod_equiv (ea_e X v).symm _ _ fun s => ?_).symm
  rw [Finset.prod_range]
  exact Finset.prod_congr rfl fun c _ => eb_fac X v j K' I s c

theorem eb_jet (v : X.Pl) (j : ℕ) (K' : Type) [Field K'] (F : MvPowerSeries (X.ZA j) K') (I : X.ColCh j) :
    applyD (X.PIv j I v) F = MvPolynomial.rename (eb_phi X v j)
      (Formalism.DworkPowerSeriesWeights.frameJet (ea_colN X v j) (ea_hts X v j) (ea_hp X v j) (ea_Ic X v j I) (resV (ea_eps X v j) F)) := by
  rw [eb_applyD, eb_poly, eb_J_rename _ (eb_eps_inj X v j), eb_J_map]
  rfl

theorem eb_brJet : ea_BrJet X := by
  intro v j K' _ F I n
  rw [eb_jet]
  by_cases h : ∃ n', Finsupp.mapDomain (eb_phi X v j) n' = n
  · obtain ⟨n', rfl⟩ := h
    exact Or.inr ⟨n', MvPolynomial.coeff_rename_mapDomain _ (eb_phi_inj X v j) _ n'⟩
  · exact Or.inl (MvPolynomial.coeff_rename_eq_zero _ _ _ fun u hu => absurd ⟨u, hu⟩ h)

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbBrJet =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FormValuationGeNegDegree =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FormValuationGeNegDegree", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SmulUpdate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime]

theorem Tm_add (X : Sys p) (v : X.Pl) (i J : ℕ) (F F' : X.Fm J) :
    X.Tm v i J (F + F') = X.Tm v i J F + X.Tm v i J F' := by
  funext c L
  show (X.Pj J).Tminus (X.vJ J v) i (F c + F' c) L =
    (X.Pj J).Tminus (X.vJ J v) i (F c) L + (X.Pj J).Tminus (X.vJ J v) i (F' c) L
  rw [tm_eq, tm_eq, tm_eq, ← Finset.sum_add_distrib]
  rfl

theorem Tm_smul (X : Sys p) (v : X.Pl) (i J : ℕ) (a : X.G.Kf) (F : X.Fm J) :
    X.Tm v i J (a • F) = a • X.Tm v i J F := by
  funext c L
  show (X.Pj J).Tminus (X.vJ J v) i (a • F c) L = a • (X.Pj J).Tminus (X.vJ J v) i (F c) L
  rw [tm_eq, tm_eq, Finset.smul_sum]
  rfl

theorem Tt_add (X : Sys p) (v : X.Pl) (i J : ℕ) (F F' : X.Fm J) :
    X.Tt v i J (F + F') = X.Tt v i J F + X.Tt v i J F' := by
  unfold Sys.Tt
  split_ifs
  · rfl
  · rw [Tm_add, smul_add]

theorem Tt_smul (X : Sys p) (v : X.Pl) (i J : ℕ) (a : X.G.Kf) (F : X.Fm J) :
    X.Tt v i J (a • F) = a • X.Tt v i J F := by
  unfold Sys.Tt
  split_ifs
  · rfl
  · rw [Tm_smul, smul_comm]

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FormValuationGeNegDegree =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HkEsymmSmul =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HkEsymmSmul", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralSpanCoordinates\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LatAtZeroUpd\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeValueEstimateOfRecordValue\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.GaussElementarySymmetric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

theorem hk_scal {K : Type} [Field K] (P a a' e : K) (hP : P ≠ 0) (ha : a ≠ 0) (h vm N g i l : ℤ) :
    P ^ (-(h * i * ((N + g) - i))) * (P ^ (vm * i) * (a' ^ (-i) * P ^ (h * N * i))) *
        (P ^ (2 * h * ((i - l) * (g - l))) * (P ^ (h * (l * (g - l))) * e)) *
        (P ^ (vm * (i - l)) * (a ^ (i - l) * P ^ (h * (N + g) * (i - l))))⁻¹ =
      ((a * a')⁻¹) ^ i * ((a * P ^ vm) ^ l * e) * P ^ (-(h * (i - l) * (N - (i - l)))) := by
  have e1 : P ^ (-(h * i * ((N + g) - i))) * P ^ (vm * i) * P ^ (h * N * i) * P ^ (2 * h * ((i - l) * (g - l))) *
      P ^ (h * (l * (g - l))) * (P ^ (vm * (i - l)))⁻¹ * (P ^ (h * (N + g) * (i - l)))⁻¹ =
      P ^ (vm * l) * P ^ (-(h * (i - l) * (N - (i - l)))) := by
    rw [← zpow_neg, ← zpow_neg]
    simp only [← zpow_add₀ hP]
    congr 1
    ring
  have e2 : (a ^ (i - l))⁻¹ = (a ^ i)⁻¹ * a ^ l := by
    rw [zpow_sub₀ ha, inv_div, div_eq_mul_inv, mul_comm]
  calc _ = (P ^ (-(h * i * ((N + g) - i))) * P ^ (vm * i) * P ^ (h * N * i) * P ^ (2 * h * ((i - l) * (g - l))) *
      P ^ (h * (l * (g - l))) * (P ^ (vm * (i - l)))⁻¹ * (P ^ (h * (N + g) * (i - l)))⁻¹) *
        (a ^ (i - l))⁻¹ * a' ^ (-i) * e := by ring
    _ = (P ^ (vm * l) * P ^ (-(h * (i - l) * (N - (i - l))))) * ((a ^ i)⁻¹ * a ^ l) * a' ^ (-i) * e := by
      rw [e1, e2]
    _ = _ := by
      rw [inv_zpow, mul_zpow, mul_zpow, ← zpow_mul, mul_inv, zpow_neg a' i]
      ring

theorem hk_esymm_smul {K σ : Type} [Field K] [Fintype σ] (c : K) (f : σ → K) (l : ℕ) :
    MvPolynomial.eval (fun x => c * f x) (MvPolynomial.esymm σ K l) =
      c ^ l * MvPolynomial.eval f (MvPolynomial.esymm σ K l) := by

  simp only [MvPolynomial.esymm, map_sum, map_prod, MvPolynomial.eval_X, Finset.mul_sum]
  refine Finset.sum_congr rfl (fun t ht => ?_)
  rw [Finset.prod_mul_distrib, Finset.prod_const, (Finset.mem_powersetCard.1 ht).2]

theorem hk_esymm_zero {K σ : Type} [Field K] [Fintype σ] (l : ℕ) (h : Fintype.card σ < l) :
    MvPolynomial.esymm σ K l = 0 := by
  rw [MvPolynomial.esymm, Finset.powersetCard_eq_empty.2 (by rwa [Finset.card_univ]), Finset.sum_empty]

variable {p : ℕ} [Fact p.Prime] (X : Sys p)

def eBe (v : X.Pl) (l : ℕ) : X.G.Kf :=
  MvPolynomial.eval (fun x : Fin (X.t + 1) => X.qh v x.val) (MvPolynomial.esymm (Fin (X.t + 1)) X.G.Kf l)

theorem nC_cast (hp : (p : X.G.Kf) ≠ 0) (v : X.Pl) (i l : ℕ) :
    (nC X v i l : X.G.Kf) = (p : X.G.Kf) ^ (2 * hv X v * (((i - l : ℕ) : ℤ) * ((X.t + 1 - l : ℕ) : ℤ))) *
      ((p : X.G.Kf) ^ (hv X v * ((l : ℤ) * ((X.t + 1 - l : ℕ) : ℤ))) * eBe X v l) := by
  obtain ⟨k, hk⟩ := (X.std v).even
  have h1 : X.G.P.n' v / 2 = k := by omega
  have h2 : p ^ X.G.P.n' v = (p ^ k) ^ 2 := by rw [← pow_mul]; congr 1; omega
  have hQ : (((p ^ k : ℕ) : ℕ) : X.G.Kf) ≠ 0 := by push_cast; exact pow_ne_zero _ hp
  have hG := Formalism.InvariantFactorPaths.G7.gauss_elementary_symmetric X.G.Kf (p ^ k) (X.t + 1) l hQ
  have hf : Formalism.InvariantFactorPaths.G7.beFam ((p : X.G.Kf) ^ k) (X.t + 1) = fun x => X.qh v x.val := funext fun x => by
    have := beFam_eq X v x
    rwa [h1] at this
  have hb : Formalism.InvariantFactorPaths.G7.eF (Formalism.InvariantFactorPaths.G7.beFam ((p : X.G.Kf) ^ k) (X.t + 1)) l = eBe X v l := by
    unfold Formalism.InvariantFactorPaths.G7.eF eBe
    rw [hf]
  unfold nC
  rw [h2]
  push_cast at hG ⊢
  rw [hG, hb]
  unfold hv
  rw [h1]
  congr 1
  · rw [← pow_mul, ← pow_mul, ← zpow_natCast]
    congr 1
    push_cast
    ring
  · congr 1
    rw [← pow_mul, ← zpow_natCast]
    congr 1

theorem NN_succ (k1 t j : ℕ) : (NN k1 t (j + 1) : ℤ) = (NN k1 t j : ℤ) + ((t + 1 : ℕ) : ℤ) := by
  unfold NN
  push_cast
  ring

theorem hk_coef (hp : (p : X.G.Kf) ≠ 0) (a a' : X.G.Kf) (ha : a ≠ 0) (v : X.Pl) (j i l : ℕ) (hl : l ≤ i) :
    (p : X.G.Kf) ^ (-(hv X v * i * ((NN X.G.P.m X.t (j + 1) : ℤ) - i))) * cA X a' v j i * (nC X v i l : X.G.Kf) *
        (cC X a v j (i - l))⁻¹ =
      ((a * a')⁻¹) ^ i * (MvPolynomial.eval (fun x : Fin (X.t + 1) => (a * (p : X.G.Kf) ^ (X.vm v (j + 1))) * X.qh v x.val)
          (MvPolynomial.esymm (Fin (X.t + 1)) X.G.Kf l)) *
        (p : X.G.Kf) ^ (-(hv X v * ((i - l : ℕ) : ℤ) * ((NN X.G.P.m X.t j : ℤ) - ((i - l : ℕ) : ℤ)))) := by
  rw [hk_esymm_smul, nC_cast X hp]
  show _ = ((a * a')⁻¹) ^ i * ((a * (p : X.G.Kf) ^ (X.vm v (j + 1))) ^ l * eBe X v l) * _
  by_cases hg : l ≤ X.t + 1
  · have := hk_scal (p : X.G.Kf) a a' (eBe X v l) hp ha (hv X v) (X.vm v (j + 1)) (NN X.G.P.m X.t j : ℤ)
      ((X.t + 1 : ℕ) : ℤ) i l
    unfold cA cC
    rw [NN_succ, Nat.cast_sub hl, Nat.cast_sub hg, ← zpow_natCast ((a * a')⁻¹) i,
      ← zpow_natCast (a * (p : X.G.Kf) ^ (X.vm v (j + 1))) l]
    exact this
  · have h0 : eBe X v l = 0 := by
      unfold eBe
      rw [hk_esymm_zero l (by simpa using not_le.1 hg), map_zero]
    rw [h0]
    simp

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HkEsymmSmul =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeConditionOfAdm =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeConditionOfAdm", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CoupledSumOfEntries\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeValueEstimateOfRecordValue\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HkEsymmSmul\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PrimeCastNeZero\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SmulUpdate\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TheoremOfAlternateForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] {X : Sys p}

theorem hk_point (Y : Pend X) (hC : CountLoc) (hT : RestTmFQ X)
    (hp : (p : X.G.Kf) ≠ 0) {a a' : X.G.Kf} {cK : Y.Kc} (ha : a ≠ 0) (ha' : a' ≠ 0) (v : X.Pl) (j : ℕ)
    (hTh : ThEq Y a a' v j) {Cl Yb : Type} [Fintype Cl] [Fintype Yb] {wt : Cl → ℕ} {La : Cl → Yb → X.Lt j}
    (hS : KSum Y j cK Cl Yb wt La) (hAd : KAdj Y j Cl Yb wt La)
    (i : ℕ) (F : X.Fm j) (hF : F ∈ X.FQ j) (c' : X.Lv.comp (j + 1)) (L' : (X.Pj (j + 1)).Tup)
    (hL' : (X.Pj (j + 1)).IsLatTup L') :
    X.Tm v i (j + 1) (X.Kz j F) c' L' =
      ∑ l ∈ range (i + 1), (cA X a' v j i * (nC X v i l : X.G.Kf) * (cC X a v j (i - l))⁻¹) •
        X.Kz j (X.Tm v (i - l) j F) c' L' := by
  obtain ⟨hlat, _, h4⟩ := hS
  apply MvPolynomial.map_injective (algebraMap X.G.Kf Y.Kc) (algebraMap X.G.Kf Y.Kc).injective
  have eT : X.Tm v i (j + 1) (X.Kz j F) c' L' =
      ∑ L1 ∈ EE (X.Pj (j + 1)) (X.vJ (j + 1) v) i (L' (X.vJ (j + 1) v)),
        X.Kz j F c' (Function.update L' (X.vJ (j + 1) v) L1) :=
    Tminus_eq (X.Pj (j + 1)) (X.vJ (j + 1) v) i (X.Kz j F c') L'

  rw [eT, map_sum, map_sum]
  have eL : ∀ L1 ∈ EE (X.Pj (j + 1)) (X.vJ (j + 1) v) i (L' (X.vJ (j + 1) v)),
      MvPolynomial.map (algebraMap X.G.Kf Y.Kc) (X.Kz j F c' (Function.update L' (X.vJ (j + 1) v) L1)) =
        ∑ x : Cl, (((wt x : Y.Kc))⁻¹ * cK) • ∑ y : Yb,
          Y.ker j (La x y) (c', Function.update L' (X.vJ (j + 1) v) L1) (F (La x y).1 (La x y).2) := by
    intro L1 hL1
    exact h4 F hF c' _ (hk_latTup_update _ hL' _ L1 ((mem_EE _).1 hL1).1)
  rw [Finset.sum_congr rfl eL, Finset.sum_comm]
  have eL2 : ∀ x ∈ (Finset.univ : Finset Cl), ∑ L1 ∈ EE (X.Pj (j + 1)) (X.vJ (j + 1) v) i (L' (X.vJ (j + 1) v)),
      (((wt x : Y.Kc))⁻¹ * cK) • ∑ y : Yb,
        Y.ker j (La x y) (c', Function.update L' (X.vJ (j + 1) v) L1) (F (La x y).1 (La x y).2) =
      (((wt x : Y.Kc))⁻¹ * cK) • ∑ y : Yb, (cA X a' v j i • ∑ l ∈ range (i + 1), (nC X v i l : X.G.Kf) •
        ∑ A1 ∈ UP (X.Pj j) (X.vJ j v) (i - l) ((La x y).2 (X.vJ j v)),
          (cC X a v j (i - l))⁻¹ •
            Y.ker j ((La x y).1, Function.update (La x y).2 (X.vJ j v) A1) (c', L') (F (La x y).1 (La x y).2)) := by
    intro x _
    rw [← Finset.smul_sum, Finset.sum_comm]
    congr 1
    refine Finset.sum_congr rfl fun y _ => ?_
    exact ker_dn_sum hC hp ha ha' hTh (La x y) (hlat x y) c' L' hL' i _
  rw [Finset.sum_congr rfl eL2]
  have eR : ∀ l ∈ range (i + 1), MvPolynomial.map (algebraMap X.G.Kf Y.Kc)
      ((cA X a' v j i * (nC X v i l : X.G.Kf) * (cC X a v j (i - l))⁻¹) • X.Kz j (X.Tm v (i - l) j F) c' L') =
      (cA X a' v j i * (nC X v i l : X.G.Kf) * (cC X a v j (i - l))⁻¹) • (cK • ∑ x : Cl,
        ((wt x : Y.Kc))⁻¹ • ∑ y : Yb, ∑ A1 ∈ UP (X.Pj j) (X.vJ j v) (i - l) ((La x y).2 (X.vJ j v)),
          Y.ker j ((La x y).1, Function.update (La x y).2 (X.vJ j v) A1) (c', L') (F (La x y).1 (La x y).2)) := by
    intro l _
    rw [map_smulK Y, h4 _ (hT v (i - l) j F hF) c' L' hL', hAd v (i - l) F hF (c', L') hL',
      Finset.smul_sum (r := cK)]
    congr 1
    refine Finset.sum_congr rfl fun x _ => ?_
    rw [smul_smul, mul_comm]
  rw [Finset.sum_congr rfl eR]
  have hs : ∀ (r : X.G.Kf) (z : XspC (X.Pj (j + 1)) Y.Kc), r • z = algebraMap X.G.Kf Y.Kc r • z :=
    fun r z => (algebraMap_smul Y.Kc r z).symm
  simp only [hs, Finset.smul_sum, smul_smul]
  symm
  refine Finset.sum_comm.trans ?_
  refine Finset.sum_congr rfl fun x _ => ?_
  refine Finset.sum_comm.trans ?_
  refine Finset.sum_congr rfl fun y _ => Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun A1 _ => ?_
  congr 1
  simp only [map_mul, map_inv₀, map_natCast]
  ring

theorem heckeCondition_of_adm (D : Formalism.BasicNotions.D7) (X : Sys p) (Y : Pend X) (hA : admitted D X Y) (hC : CountLoc) (hT : RestTmFQ X) :
    RestHecke X := by
  obtain ⟨_, _, _, _, _, h3b, h4, h5, h5b, h6, _, _, _⟩ := hA
  intro v
  have hfr := frac_of_place X v
  have he := eO_pos X v
  have hp : (p : X.G.Kf) ≠ 0 := pKf_ne Y
  have h5' : ∀ j, ∃ a a' : X.G.Kf, j < X.mm → (X.vEqK a 0 ∧ X.vEqK a' 0 ∧ ThEq Y a a' v j) := by
    intro j
    by_cases hj : j < X.mm
    · obtain ⟨u, u', h1, h2, h3⟩ := h5 v j hj
      exact ⟨u, u', fun _ => ⟨h1, h2, h3⟩⟩
    · exact ⟨1, 1, fun h => absurd h hj⟩
  choose a a' H using h5'
  refine ⟨fun l => (a (l - 1) * a' (l - 1))⁻¹, fun l => a (l - 1) * (p : X.G.Kf) ^ (X.vm v l), ?_, ?_, ?_⟩
  · intro l hl
    rw [Finset.mem_Icc] at hl
    obtain ⟨h1, h2, _⟩ := H (l - 1) (by omega)
    have := vEqK_inv X hfr (vEqK_mul X hfr h1 h2)
    simpa using this
  · intro l hl
    rw [Finset.mem_Icc] at hl
    obtain ⟨h1, _, _⟩ := H (l - 1) (by omega)
    have := vEqK_mul X hfr h1 (vEqK_ppow X hfr he (X.vm v l))
    simpa using this
  · intro j hj i F hF
    obtain ⟨h1, h2, hTh⟩ := H j hj
    obtain ⟨cK, Cl, Yb, iC, iY, wt, La, hS, hAd⟩ := ksa_of_adm D h4 h5b h6 hj
    have ha := vEqK.ne_zero X h1
    have ha' := vEqK.ne_zero X h2
    show X.ecal v i (j + 1) (X.Kz j F) = ((a j * a' j)⁻¹ ^ i) • X.Kz j (∑ l ∈ range (i + 1),
      (MvPolynomial.eval (fun x : Fin (X.t + 1) => (a j * (p : X.G.Kf) ^ (X.vm v (j + 1))) * X.qh v x.val)
        (MvPolynomial.esymm (Fin (X.t + 1)) X.G.Kf l)) • X.ecal v (i - l) j F)
    funext c' L'
    by_cases hL' : (X.Pj (j + 1)).IsLatTup L'
    · have eR : X.Kz j (∑ l ∈ range (i + 1),
          (MvPolynomial.eval (fun x : Fin (X.t + 1) => (a j * (p : X.G.Kf) ^ (X.vm v (j + 1))) * X.qh v x.val)
            (MvPolynomial.esymm (Fin (X.t + 1)) X.G.Kf l)) • X.ecal v (i - l) j F) =
          ∑ l ∈ range (i + 1),
            ((MvPolynomial.eval (fun x : Fin (X.t + 1) => (a j * (p : X.G.Kf) ^ (X.vm v (j + 1))) * X.qh v x.val)
              (MvPolynomial.esymm (Fin (X.t + 1)) X.G.Kf l)) *
              (p : X.G.Kf) ^ (-(hv X v * ((i - l : ℕ) : ℤ) * ((NN X.G.P.m X.t j : ℤ) - ((i - l : ℕ) : ℤ))))) •
              X.Kz j (X.Tm v (i - l) j F) := by

        rw [map_sum]
        refine Finset.sum_congr rfl fun l _ => ?_
        unfold Sys.ecal
        rw [map_smul, map_smul, smul_smul]
        rfl
      rw [eR]
      show ((p : X.G.Kf) ^ (-(hv X v * i * ((NN X.G.P.m X.t (j + 1) : ℤ) - i)))) •
        X.Tm v i (j + 1) (X.Kz j F) c' L' = _
      rw [hk_point Y hC hT hp ha ha' v j hTh hS hAd i F hF c' L' hL']
      simp only [Pi.smul_apply, Finset.sum_apply, Finset.smul_sum, smul_smul]
      refine Finset.sum_congr rfl fun l hl => ?_
      congr 1
      have := hk_coef X hp (a j) (a' j) ha v j i l (Nat.lt_succ_iff.1 (Finset.mem_range.1 hl))
      rw [mul_assoc ((a j * a' j)⁻¹ ^ i)] at this
      rw [← this]
      ring
    · have e1 : X.Tm v i (j + 1) (X.Kz j F) c' L' = 0 :=
        (restTmEquiv X (j + 1) v i _ (Eqv_of_FQ X (h3b j hj F hF))).1 c' L' hL'
      have e2 : X.ecal v i (j + 1) (X.Kz j F) c' L' = 0 := by
        show ((p : X.G.Kf) ^ (-(hv X v * i * ((NN X.G.P.m X.t (j + 1) : ℤ) - i)))) •
          X.Tm v i (j + 1) (X.Kz j F) c' L' = 0
        rw [e1, smul_zero]
      rw [e2]
      have hmem : X.Kz j (∑ l ∈ range (i + 1),
          (MvPolynomial.eval (fun x : Fin (X.t + 1) => (a j * (p : X.G.Kf) ^ (X.vm v (j + 1))) * X.qh v x.val)
            (MvPolynomial.esymm (Fin (X.t + 1)) X.G.Kf l)) • X.ecal v (i - l) j F) ∈ X.FQ (j + 1) :=
        h3b j hj _ (Submodule.sum_mem _ fun l _ => Submodule.smul_mem _ _
          (Submodule.smul_mem _ _ (hT v (i - l) j F hF)))
      rw [Pi.smul_apply, Pi.smul_apply, FQ_zero_off X hmem c' L' hL', smul_zero]

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeConditionOfAdm =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.YEPEComm =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.YEPEComm", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AofUpdate\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TheoremOfAlternateForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] {X : Sys p}

def yE (hL : LinD X) (v : X.Pl) : Module.End X.G.Kf (X.Fm 0) :=
  { toFun := X.yv v, map_add' := hL.yv_add v, map_smul' := fun a F => hL.yv_smul v a F }

def PE (hL : LinD X) (vs : List X.Pl) : Module.End X.G.Kf (X.Fm 0) := (vs.map (yE hL)).prod

theorem yE_comm (hL : LinD X) (v v' : X.Pl) : Commute (yE hL v) (yE hL v') :=
  LinearMap.ext fun F => hL.yv_comm v v' F

theorem yE_PE_comm (hL : LinD X) (v : X.Pl) (ws : List X.Pl) : Commute (yE hL v) (PE hL ws) := by
  apply Commute.list_prod_right
  intro y hy
  obtain ⟨w, _, rfl⟩ := List.mem_map.1 hy
  exact yE_comm hL v w

theorem PE_comm (hL : LinD X) (vs ws : List X.Pl) : Commute (PE hL vs) (PE hL ws) := by
  apply Commute.list_prod_left
  intro x hx
  obtain ⟨v, _, rfl⟩ := List.mem_map.1 hx
  exact yE_PE_comm hL v ws

theorem PE_cons (hL : LinD X) (v : X.Pl) (vs : List X.Pl) : PE hL (v :: vs) = yE hL v * PE hL vs := by
  simp [PE]

theorem PE_append (hL : LinD X) (vs ws : List X.Pl) : PE hL (vs ++ ws) = PE hL vs * PE hL ws := by
  simp [PE]

theorem PE_perm (hL : LinD X) {vs ws : List X.Pl} (h : vs.Perm ws) : PE hL vs = PE hL ws := by
  apply List.Perm.prod_eq' (h.map _)
  apply List.pairwise_of_forall_mem_list
  intro a ha b hb
  obtain ⟨v, _, rfl⟩ := List.mem_map.1 ha
  obtain ⟨w, _, rfl⟩ := List.mem_map.1 hb
  exact yE_comm hL v w

theorem PE_mem (hL : LinD X) {S : Set (X.Fm 0)} (hy : ∀ v, ∀ F ∈ S, X.yv v F ∈ S) (vs : List X.Pl) :
    ∀ F ∈ S, PE hL vs F ∈ S := by
  induction vs with
  | nil => intro F hF; simpa [PE] using hF
  | cons v vs ih =>
    intro F hF
    rw [PE_cons]
    exact hy v _ (ih F hF)

theorem PE_pow_mem (hL : LinD X) {S : Set (X.Fm 0)} (hy : ∀ v, ∀ F ∈ S, X.yv v F ∈ S) (vs : List X.Pl) (n : ℕ) :
    ∀ F ∈ S, (PE hL vs ^ n) F ∈ S := by
  induction n with
  | zero => intro F hF; simpa using hF
  | succ n ih =>
    intro F hF
    rw [pow_succ']
    exact PE_mem hL hy vs _ (ih F hF)

theorem fold_eq (hL : LinD X) (n : ℕ) (vs : List X.Pl) (z : X.Fm 0) :
    vs.foldr (fun v F' => (X.yv v)^[n] F') z = (PE hL vs ^ n) z := by
  induction vs with
  | nil => simp [PE]
  | cons v vs ih =>
    rw [PE_cons, (yE_PE_comm hL v vs).mul_pow, List.foldr_cons, ih, Module.End.mul_apply,
      Module.End.pow_apply (yE hL v)]
    rfl

theorem yv_FQ (hL : LinD X) (hy : ∀ v, ∀ F ∈ X.Int 0, X.yv v F ∈ X.Int 0) (v : X.Pl) :
    ∀ F ∈ X.FQ 0, X.yv v F ∈ X.FQ 0 := by
  intro F hF
  unfold Sys.FQ at hF ⊢
  induction hF using Submodule.span_induction with
  | zero =>
    have := hL.yv_smul v 0 0
    simp only [zero_smul] at this
    rw [this]; exact Submodule.zero_mem _
  | add x y _ _ hx hy' => rw [hL.yv_add]; exact Submodule.add_mem _ hx hy'
  | smul c x _ hx => rw [hL.yv_smul]; exact Submodule.smul_mem _ _ hx
  | mem x hx => exact Submodule.subset_span (hy v x hx)

variable (X)

def PrS (j : ℕ) (vs : List X.Pl) : ℤ :=
  ∑ v, if v ∈ vs then PrZ X.t X.G.P.r (X.G.P.lam0 v) (X.w v) j else 0

variable {X}

theorem PrS_cons (j : ℕ) (v : X.Pl) (vs : List X.Pl) (hv : v ∉ vs) :
    PrS X j (v :: vs) = PrS X j vs + PrZ X.t X.G.P.r (X.G.P.lam0 v) (X.w v) j := by
  unfold PrS
  have : PrZ X.t X.G.P.r (X.G.P.lam0 v) (X.w v) j =
      ∑ v', if v' = v then PrZ X.t X.G.P.r (X.G.P.lam0 v') (X.w v') j else 0 := by
    rw [Finset.sum_ite_eq' univ v]
    simp
  rw [this, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro v' _
  by_cases h : v' = v
  · subst h
    simp [hv]
  · simp [h]

theorem ZL_chain (hp : (p : X.G.Kf) ≠ 0) (hL : LinD X) (u m : X.Pl → ℕ → X.G.Kf) (j : ℕ)
    (hCi : ∀ v, ∀ F ∈ X.FQ 0, X.Zop v (u v) (m v) (j + 1) (X.chainK (j + 1) F) =
      ((p : X.G.Kf) ^ (PrZ X.t X.G.P.r (X.G.P.lam0 v) (X.w v) (j + 1))) • X.chainK (j + 1) (X.yv v F))
    (hyQ : ∀ v, ∀ F ∈ X.FQ 0, X.yv v F ∈ X.FQ 0) (vs : List X.Pl) (hnd : vs.Nodup) (F : X.Fm 0) (hF : F ∈ X.FQ 0) :
    ZL X u m (j + 1) vs (X.chainK (j + 1) F) =
      ((p : X.G.Kf) ^ (PrS X (j + 1) vs)) • X.chainK (j + 1) (PE hL vs F) := by
  induction vs with
  | nil => simp [ZL, PrS, PE]
  | cons v vs ih =>
    rw [List.nodup_cons] at hnd
    show X.Zop v (u v) (m v) (j + 1) (ZL X u m (j + 1) vs (X.chainK (j + 1) F)) = _
    rw [ih hnd.2, Zop_smul hL, hCi v _ (PE_mem hL (S := (X.FQ 0 : Set (X.Fm 0))) hyQ vs F hF), smul_smul,
      ← zpow_add₀ hp, PrS_cons _ _ _ hnd.1, PE_cons]
    rfl

theorem vGeK_vsc (g : ℝ) : X.vGeK (X.vsc g) g := (vGeK_iff X).2 ⟨1, by simp⟩

def bbJ (X : Sys p) (Lv : List X.Pl) (Gn G0n : X.Pl → ℕ → ℝ) (Q : ℕ → X.Pl → Bool) (j : ℕ) : ℝ :=
  ∑ v, (if v ∈ Lv.filter (Q j) then Gn v (j + 1) else G0n v (j + 1)) - X.dG j -
        (PrS X (j + 1) (Lv.filter (Q j)) : ℝ)

theorem main_ind {Y : Pend X} (hfr : IsFractionRing X.G.O X.G.Kf) (hp : (p : X.G.Kf) ≠ 0) (hL : LinD X)
    (hF : FormB X Y) (hE : EntCondition X Y) (u m : X.Pl → ℕ → X.G.Kf)
    (hu : ∀ v, ∀ l ∈ Icc 1 X.mm, X.vEqK (u v l) 0)
    (hc0 : ∀ v, ∀ j < X.mm, ∀ l ≤ X.G.P.r, X.vGeK (X.cl v (m v) (j + 1) l) 0)
    (hcr : ∀ v, ∀ j < X.mm, X.vGeK (X.cl v (m v) (j + 1) X.G.P.r) (X.alEven v))
    (hCi : ∀ v, ∀ j < X.mm, ∀ F ∈ X.FQ 0, X.Zop v (u v) (m v) (j + 1) (X.chainK (j + 1) F) =
      ((p : X.G.Kf) ^ (PrZ X.t X.G.P.r (X.G.P.lam0 v) (X.w v) (j + 1))) • X.chainK (j + 1) (X.yv v F))
    (hy : ∀ v, ∀ F ∈ X.Int 0, X.yv v F ∈ X.Int 0)
    (Lv : List X.Pl) (hnd : Lv.Nodup) (Gn G0n : X.Pl → ℕ → ℝ) (Q : ℕ → X.Pl → Bool)
    (h1 : ∀ v ∈ Lv, ∀ j < X.mm, Gn v (j + 1) ≤ X.gv v (j + 1))
    (h2 : ∀ v, ∀ j < X.mm, Y.LowAt j v (G0n v (j + 1))) :
    ∀ m' ≤ X.mm, ∀ F1 ∈ X.Int 0, X.vGe m' (X.chainK m' ((PE hL Lv ^ m') F1))
      (∑ j ∈ range m', bbJ X Lv Gn G0n Q j) := by
  intro m'
  induction m' with
  | zero =>
    intro _ F1 hF1
    simp only [pow_zero, Finset.range_zero, Finset.sum_empty]
    exact (vGe_zero_iff X).2 hF1
  | succ m' ih =>
    intro hm F1 hF1
    have hj : m' < X.mm := hm
    set B := Lv.filter (Q m') with hB
    set C := Lv.filter (fun x => !Q m' x) with hC
    have e1 : PE hL Lv = PE hL B * PE hL C := by
      rw [← PE_append]
      exact (PE_perm hL (List.filter_append_perm (Q m') Lv)).symm
    have e2 : PE hL Lv ^ (m' + 1) = PE hL B * (PE hL Lv ^ m' * PE hL C) := by
      have e0 : PE hL Lv ^ (m' + 1) = (PE hL B * PE hL C) * PE hL Lv ^ m' := by rw [pow_succ', ← e1]
      rw [e0, mul_assoc, ((PE_comm hL C Lv).pow_right m').eq]
    have hF1' : PE hL C F1 ∈ X.Int 0 := PE_mem hL (S := (X.Int 0 : Set (X.Fm 0))) hy C F1 hF1
    set W := (PE hL Lv ^ m') (PE hL C F1) with hW
    have hWi : W ∈ X.Int 0 := PE_pow_mem hL (S := (X.Int 0 : Set (X.Fm 0))) hy Lv m' _ hF1'
    have hWQ : W ∈ X.FQ 0 := Submodule.subset_span hWi
    have hBnd : B.Nodup := hnd.filter _
    have e3 := ZL_chain hp hL u m m' (fun v => hCi v m' hj) (yv_FQ hL hy) B hBnd W hWQ
    have e4 : X.chainK (m' + 1) ((PE hL Lv ^ (m' + 1)) F1) =
        ((p : X.G.Kf) ^ (-(PrS X (m' + 1) B))) • ZL X u m (m' + 1) B (X.chainK (m' + 1) W) := by
      rw [e3, smul_smul, ← zpow_add₀ hp, neg_add_cancel, zpow_zero, one_smul, e2]
      rfl
    obtain ⟨G', hG', hG'e⟩ := (vGe_iff X).1 (ih (le_of_lt hj) _ hF1')
    have e5 : X.chainK (m' + 1) W = X.vsc (∑ j ∈ range m', bbJ X Lv Gn G0n Q j) • X.Kz m' G' := by
      show X.Kz m' (X.chainK m' W) = _
      rw [← hG'e, map_smul]
    rw [e4, e5, ZL_smul hL]
    have hb := ZL_bound hfr hL hF hE u m m' hj hu (fun v => hc0 v m' hj) (fun v => hcr v m' hj) B hBnd
      (fun v => if v ∈ B then Gn v (m' + 1) else G0n v (m' + 1))
      (fun v hv => by simp only [hv, if_true]; exact h1 v (List.mem_of_mem_filter hv) m' hj)
      (fun v hv => by simp only [hv, if_false]; exact h2 v m' hj) G' hG'
    have h3 := vGe_smul X hfr (vGeK_ppow X hfr (-(PrS X (m' + 1) B))) (vGe_smul X hfr (vGeK_vsc (∑ j ∈ range m', bbJ X Lv Gn G0n Q j)) hb)
    rw [Finset.sum_range_succ]
    refine vGe_mono X hfr (le_of_eq ?_) h3
    conv_lhs => rw [bbJ]
    push_cast
    ring

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.YEPEComm =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LiftBoundOfIntegrality =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LiftBoundOfIntegrality", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AofUpdate\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.YEPEComm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

theorem sum_Icc_shift (f : ℕ → ℝ) (m : ℕ) : ∑ j ∈ Icc 1 m, f j = ∑ j ∈ range m, f (j + 1) := by
  induction m with
  | zero => simp
  | succ m ih => rw [Finset.sum_Icc_succ_top (by omega), ih, Finset.sum_range_succ]

theorem sum_ind {ι : Type} [Fintype ι] [DecidableEq ι] (A : Finset ι) (f : ι → ℝ) :
    ∑ v ∈ A, f v = ∑ v, if v ∈ A then f v else 0 := by
  rw [← Finset.sum_filter]
  congr 1
  ext v
  simp

theorem basic₂ {ι : Type} [Fintype ι] [DecidableEq ι] (mm : ℕ) (VV BB : Finset ι) (hBB : BB ⊆ VV)
    (Gn G0n PRn Prr : ι → ℕ → ℝ) (S : ι → ℝ) (dG : ℕ → ℝ) (inB : ℕ → ι → Prop) [∀ j v, Decidable (inB j v)]
    (hin : ∀ j v, inB j v ↔ v ∈ BB ∧ G0n v (j + 1) ≤ Gn v (j + 1) - PRn v (j + 1))
    (hPR : ∀ v ∈ VV, ∀ j < mm, Prr v (j + 1) ≤ PRn v (j + 1))
    (hS : ∀ v ∈ VV, ∑ j ∈ range mm, max (Gn v (j + 1) - PRn v (j + 1) - G0n v (j + 1)) 0 ≤ S v) :
    ∑ j ∈ range mm, (∑ v ∈ VV, max (Gn v (j + 1) - PRn v (j + 1)) (G0n v (j + 1)) +
        ∑ v ∈ univ \ VV, G0n v (j + 1)) - ∑ j ∈ range mm, dG j ≤
      ∑ v ∈ VV \ BB, S v + ∑ j ∈ range mm, (∑ v, (if inB j v then Gn v (j + 1) else G0n v (j + 1)) - dG j -
        ∑ v, (if inB j v then Prr v (j + 1) else 0)) := by
  have hS' : ∑ j ∈ range mm, ∑ v, (if v ∈ VV \ BB then max (Gn v (j + 1) - PRn v (j + 1) - G0n v (j + 1)) 0 else 0)
      ≤ ∑ v ∈ VV \ BB, S v := by
    rw [Finset.sum_comm, sum_ind (VV \ BB) S]
    refine Finset.sum_le_sum fun v _ => ?_
    by_cases hv : v ∈ VV \ BB
    · simp only [hv, ↓reduceIte]
      exact hS v (Finset.mem_sdiff.1 hv).1
    · simp [hv]
  have key : ∀ j ∈ range mm,
      (∑ v ∈ VV, max (Gn v (j + 1) - PRn v (j + 1)) (G0n v (j + 1)) + ∑ v ∈ univ \ VV, G0n v (j + 1)) - dG j ≤
      ∑ v, (if v ∈ VV \ BB then max (Gn v (j + 1) - PRn v (j + 1) - G0n v (j + 1)) 0 else 0) +
      ((∑ v, (if inB j v then Gn v (j + 1) else G0n v (j + 1))) - dG j -
        ∑ v, (if inB j v then Prr v (j + 1) else 0)) := by
    intro j hj
    have hj' : j < mm := Finset.mem_range.1 hj
    suffices h : ∑ v, ((if v ∈ VV then max (Gn v (j + 1) - PRn v (j + 1)) (G0n v (j + 1)) else 0) +
        (if v ∈ univ \ VV then G0n v (j + 1) else 0) + (if inB j v then Prr v (j + 1) else 0)) ≤
        ∑ v, ((if v ∈ VV \ BB then max (Gn v (j + 1) - PRn v (j + 1) - G0n v (j + 1)) 0 else 0) +
        (if inB j v then Gn v (j + 1) else G0n v (j + 1))) by
      rw [sum_ind VV, sum_ind (univ \ VV)]
      simp only [Finset.sum_add_distrib] at h
      linarith
    refine Finset.sum_le_sum fun v _ => ?_
    by_cases hv : v ∈ VV
    · have hv2 : v ∉ univ \ VV := by simp [hv]
      by_cases hb : v ∈ BB
      · have hv3 : v ∉ VV \ BB := by simp [hb]
        by_cases hi : inB j v
        · have h1 := ((hin j v).1 hi).2
          have h2 := hPR v hv j hj'
          simp only [hv, hv2, hv3, hi, ↓reduceIte]
          rw [max_eq_left h1]
          linarith
        · have h1 : ¬ (G0n v (j + 1) ≤ Gn v (j + 1) - PRn v (j + 1)) := fun h => hi ((hin j v).2 ⟨hb, h⟩)
          simp only [hv, hv2, hv3, hi, ↓reduceIte]
          rw [max_eq_right (le_of_lt (not_le.1 h1))]
          linarith
      · have hv3 : v ∈ VV \ BB := Finset.mem_sdiff.2 ⟨hv, hb⟩
        have hi : ¬ inB j v := fun h => hb ((hin j v).1 h).1
        simp only [hv, hv2, hv3, hi, ↓reduceIte]
        have hm : max (Gn v (j + 1) - PRn v (j + 1)) (G0n v (j + 1)) ≤
            max (Gn v (j + 1) - PRn v (j + 1) - G0n v (j + 1)) 0 + G0n v (j + 1) := by
          have := le_max_left (Gn v (j + 1) - PRn v (j + 1) - G0n v (j + 1)) 0
          have := le_max_right (Gn v (j + 1) - PRn v (j + 1) - G0n v (j + 1)) 0
          exact max_le (by linarith) (by linarith)
        linarith
    · have hv2 : v ∈ univ \ VV := by simp [hv]
      have hb : v ∉ BB := fun h => hv (hBB h)
      have hv3 : v ∉ VV \ BB := by simp [hv]
      have hi : ¬ inB j v := fun h => hb ((hin j v).1 h).1
      simp only [hv, hv2, hv3, hi, ↓reduceIte]
      linarith
  have hsum := Finset.sum_le_sum key
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib] at hsum ⊢
  linarith

variable {p : ℕ} [Fact p.Prime] {X : Sys p}

theorem PrZ_cast (v : X.Pl) (j : ℕ) :
    ((PrZ X.t X.G.P.r (X.G.P.lam0 v) (X.w v) j : ℤ) : ℝ) = X.Conclusion₂ v j := by
  simp only [Sys.Conclusion₂, PrZ, Pr]
  push_cast
  congr 1
  obtain ⟨k, hk⟩ := (X.G.P.setting v).even
  rw [hk]
  have h2 : ((k + k : ℕ) : ℤ) / 2 = (k : ℤ) := by omega
  rw [h2]
  push_cast
  ring

theorem lift_bound_of_integrality (D : Formalism.BasicNotions.D7) {Y : Pend X} (hfr : IsFractionRing X.G.O X.G.Kf) (hp : (p : X.G.Kf) ≠ 0)
    (hL : LinD X) (hF : FormB X Y) (hE : EntCondition X Y) (h4 : Conclusion4 D X)
    (hy : ∀ v, ∀ F ∈ X.Int 0, X.yv v F ∈ X.Int 0) : LowTermBound D X Y := by
  intro Gn G0n PRn S VV hG hLow hPr hS F hF
  choose u m hu hm hrest using h4
  have hπ : (algebraMap X.G.O X.G.Kf X.vp) ≠ 0 := by
    intro h0
    exact X.unif.ne_zero ((IsFractionRing.injective X.G.O X.G.Kf) (h0.trans (map_zero _).symm))
  induction hF using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨BB, hBB, Lv, hnd, hLv, F0, hF0, rfl⟩ := hx
    obtain ⟨F1, hF1, rfl⟩ := hF0
    let Q : ℕ → X.Pl → Bool := fun j v => decide (G0n v (j + 1) ≤ Gn v (j + 1) - PRn v (j + 1))
    have hmemL : ∀ v, v ∈ Lv ↔ v ∈ BB := fun v => by rw [← hLv, List.mem_toFinset]
    have h1 : ∀ v ∈ Lv, ∀ j < X.mm, Gn v (j + 1) ≤ X.gv v (j + 1) := fun v hv j hj =>
      hG v (hBB ((hmemL v).1 hv)) (j + 1) (Finset.mem_Icc.2 ⟨by omega, by omega⟩)
    have hmi := main_ind hfr hp hL hF hE u m hu (fun v j hj => (hrest v j hj).2.1)
      (fun v j hj => (hrest v j hj).2.2.1) (fun v j hj => (hrest v j hj).1) hy Lv hnd Gn G0n Q h1 hLow
      X.mm le_rfl F1 hF1
    have hnum : (∑ j ∈ Icc 1 X.mm, (∑ v ∈ VV, max (Gn v j - PRn v j) (G0n v j) + ∑ v ∈ univ \ VV, G0n v j) -
        ∑ j ∈ range X.mm, (X.dG j : ℝ)) ≤ ∑ v ∈ VV \ BB, S v + ∑ j ∈ range X.mm, bbJ X Lv Gn G0n Q j := by
      rw [sum_Icc_shift]
      have hb := basic₂ X.mm VV BB hBB Gn G0n PRn (fun v j => X.Conclusion₂ v j) S (fun j => (X.dG j : ℝ))
        (fun j v => v ∈ Lv.filter (Q j))
        (fun j v => by simp only [List.mem_filter, hmemL, Q, decide_eq_true_eq])
        (fun v hv j hj => hPr v hv (j + 1) (Finset.mem_Icc.2 ⟨by omega, by omega⟩))
        (fun v hv => by rw [← sum_Icc_shift (fun j => max (Gn v j - PRn v j - G0n v j) 0)]; exact hS v hv)
      refine hb.trans (le_of_eq ?_)
      congr 1
      refine Finset.sum_congr rfl fun j _ => ?_
      simp only [bbJ, PrS]
      push_cast [PrZ_cast]
      rfl
    unfold Sys.vGe scale at hmi ⊢
    obtain ⟨I, hI, hIeq⟩ := hmi
    simp only [LinearMap.restrictScalars_apply, LinearMap.lsmul_apply] at hIeq ⊢
    rw [fold_eq hL]
    set g := ∑ j ∈ range X.mm, bbJ X Lv Gn G0n Q j with hg
    set T : ℝ := (∑ j ∈ Icc 1 X.mm, (∑ v ∈ VV, max (Gn v j - PRn v j) (G0n v j) + ∑ v ∈ univ \ VV, G0n v j) -
        ∑ j ∈ range X.mm, (X.dG j : ℝ)) with hT
    have hceil : ⌈T * (X.eO : ℝ)⌉ ≤ ⌈g * (X.eO : ℝ)⌉ + ∑ v ∈ VV \ BB, ⌈S v * (X.eO : ℝ)⌉ := by
      rw [Int.ceil_le]
      push_cast
      have h8 : (0 : ℝ) ≤ (X.eO : ℝ) := Nat.cast_nonneg _
      have h6 : (∑ v ∈ VV \ BB, S v) * (X.eO : ℝ) ≤ ∑ v ∈ VV \ BB, (⌈S v * (X.eO : ℝ)⌉ : ℝ) := by
        rw [Finset.sum_mul]
        exact Finset.sum_le_sum fun v _ => Int.le_ceil _
      have h7 := Int.le_ceil (g * (X.eO : ℝ))
      have h9 := mul_le_mul_of_nonneg_right hnum h8
      nlinarith
    obtain ⟨n, hn⟩ : ∃ n : ℕ, (n : ℤ) = ⌈g * (X.eO : ℝ)⌉ + ∑ v ∈ VV \ BB, ⌈S v * (X.eO : ℝ)⌉ - ⌈T * (X.eO : ℝ)⌉ :=
      ⟨_, Int.toNat_of_nonneg (by omega)⟩
    refine ⟨X.vp ^ n • I, Submodule.smul_mem _ _ hI, ?_⟩
    simp only [LinearMap.restrictScalars_apply, LinearMap.lsmul_apply]
    rw [map_smul, map_smul, ← hIeq, ← algebraMap_smul X.G.Kf (X.vp ^ n) I, smul_smul, smul_smul]
    congr 1
    unfold Sys.vsc
    rw [map_pow, ← zpow_natCast, ← zpow_add₀ hπ, ← zpow_add₀ hπ, hn]
    congr 1
    ring
  | zero =>
    unfold Sys.vGe
    rw [map_zero]
    exact Submodule.zero_mem _
  | add x y _ _ hx hy =>
    unfold Sys.vGe at *
    rw [map_add (f := _)]
    exact Submodule.add_mem _ hx hy
  | smul a x _ hx =>
    unfold Sys.vGe at *
    rw [← algebraMap_smul X.G.Kf a x, map_smul, algebraMap_smul]
    exact Submodule.smul_mem _ a hx

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LiftBoundOfIntegrality =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestEntOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestEntOf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.KernelProductForm\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.ExpansionAllPlacesOfPlace\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NatCastInvMemRp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.DworkExponentialRestrictions\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] (X : Sys p) (Y : Pend X)

theorem en_PhAt_const (hbe : BeProp p Y.be) (j : ℕ) (v : X.Pl) : MvPowerSeries.constantCoeff (Y.PhAt j v) = 0 := by
  unfold Pend.PhAt

  rw [map_sum]
  exact Finset.sum_eq_zero fun e _ => by rw [substitution_of_variables]; exact th_ren_const _ (th_be_const hbe)

theorem kernel_product_form (D : Formalism.BasicNotions.D7) : KernelProductForm X Y D := by
  intro hA j hj La La' h1 h2 φ
  obtain ⟨Ph, U0, hTh, hU0, _, hbe, hPh⟩ := hA.2.2.1 j hj La La' h1 h2 φ
  have hcz := charZero_K' p (K0 p)
  have hΨ : (∑ e : X.EA j, sub2 p Y.be (MvPowerSeries.X (Sum.inl e)) (MvPowerSeries.X (Sum.inr e)) :
      MvPowerSeries (X.EA j ⊕ X.EA j) (K0 p)) = ∑ v, Y.PhAt j v := by
    unfold Pend.PhAt
    exact Fintype.sum_sigma _
  rw [hΨ] at hPh
  obtain ⟨hc0, h, hh0, hE⟩ := hPh
  have hE0 : E0 p (inParam p (Ph - ∑ v, Y.PhAt j v)) := ⟨th_inParam_const p hc0, h, hh0, hE⟩
  obtain ⟨w, hw⟩ := exp_neg_integral p hE0
  refine ⟨MvPowerSeries.map (algebraMap (K0 p) Y.Kc) (expS p (-(Ph - ∑ v, Y.PhAt j v))) * U0, ?_, ?_⟩
  · rw [en_inParamK_mul]
    refine en_IntR_mul ?_ hU0
    have e1 : inParam p (expS p (-(Ph - ∑ v, Y.PhAt j v))) = expK (inParam p (-(Ph - ∑ v, Y.PhAt j v))) := by
      unfold inParam
      exact th_subst_expK _ (fun i => by
        have := th_lX_const p (K0 p) i
        rwa [Algebra.algebraMap_self, PowerSeries.map_id] at this) (by rw [map_neg, hc0, neg_zero])
    rw [th_inParamK_map p (K0 p) Y.Kc, ← th_inParam_eq, e1, th_inParam_neg, hw]
    intro n
    rw [MvPowerSeries.coeff_map, MvPowerSeries.coeff_map]
    exact Y.witt_mem_integers_Cp _
  · have e2 : -Ph = ∑ v, (-Y.PhAt j v) + -(Ph - ∑ v, Y.PhAt j v) := by
      rw [Finset.sum_neg_distrib]; ring
    have e3 : expS p (-Ph) = (∏ v, expS p (-Y.PhAt j v)) * expS p (-(Ph - ∑ v, Y.PhAt j v)) := by
      have a1 : expK (∑ v, (-Y.PhAt j v) + -(Ph - ∑ v, Y.PhAt j v)) =
          expK (∑ v, (-Y.PhAt j v)) * expK (-(Ph - ∑ v, Y.PhAt j v)) :=
        expK_add (by

          rw [map_sum]
          exact Finset.sum_eq_zero fun v _ => by rw [map_neg, en_PhAt_const X Y hbe, neg_zero])
          (by rw [map_neg, hc0, neg_zero])
      have a2 : expK (∑ v, (-Y.PhAt j v)) = ∏ v, expK (-Y.PhAt j v) :=
        th_expK_sum _ _ fun v _ => by rw [map_neg, en_PhAt_const X Y hbe, neg_zero]
      rw [e2]
      exact a1.trans (by rw [a2]; rfl)
    rw [hTh, e3, map_mul, map_prod, mul_assoc]
    rfl

theorem restPlaces (D : Formalism.BasicNotions.D7) : RestPlaces X Y D := restPlaces_of D (kernel_product_form X Y D)

theorem restEnt_of (D : Formalism.BasicNotions.D7) (h2 : PlacewiseLowerBoundEvenShift X Y D) (hB : RestBU X Y D) (hA : admitted D X Y) : EntCondition X Y :=
  restEnt_of_rest D (restPlaces X Y D) h2 hB hA

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestEntOf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestrictedHeckeIntegralOfEdges =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestrictedHeckeIntegralOfEdges", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeValueEstimateOfRecordValue\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RamifiedLatticeOfChainEstimates\npublic import Formalism.SharpRestriction.GrowthBounds.LatticeSystems\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.GShiftRowGenMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SmulUpdate\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TheoremOfAlternateForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.KernelSumOfClassData\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

section PlacesLevel

variable {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  (P : Places p O Kf)

def RestWeylEdge : Prop :=
  ∀ (v : Fin P.nV) (i : ℕ) (L : P.Tup) (L'' : Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)),
    P.IsLatTup L → IsEdge p (P.n' v) i ⟨L'', L v⟩ →
    ∀ x ∈ P.HtupW (Function.update L v L''), ((p : Kf) ^ (Ar i (P.lam0 v))) • x ∈ P.HtupW L

theorem latTup_update {L : P.Tup} (hL : P.IsLatTup L) {v : Fin P.nV}
    {A : Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)} (hA : IsLattice (P.W v) A) :
    P.IsLatTup (Function.update L v A) := by
  intro u
  by_cases h : u = v
  · subst h
    have e : Function.update (β := fun v => Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)) L u A u = A :=
      Function.update_self u A L
    exact e.symm ▸ hA
  · have e : Function.update (β := fun v => Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)) L v A u = L u :=
      Function.update_of_ne h A L
    exact e.symm ▸ hL u

theorem Tminus_mem (h : RestWeylEdge P) (v : Fin P.nV) (i : ℕ) (F : P.Tup → P.Xsp)
    (hF : ∀ L, P.IsLatTup L → F L ∈ P.HtupW L) (L : P.Tup) (hL : P.IsLatTup L) :
    ((p : Kf) ^ (Ar i (P.lam0 v))) • P.Tminus v i F L ∈ P.HtupW L := by
  rw [Tminus_eq, Finset.smul_sum]
  refine Submodule.sum_mem _ fun L'' hL'' => ?_
  have hE := (mem_EE P).1 hL''
  exact h v i L L'' hL hE _ (hF _ (latTup_update P hL hE.1))

end PlacesLevel

section Num

variable {n' k1 : ℕ} {p t m c r : ℕ} {TT : Finset (Fin n')} {a b : Fin n' → ℤ}
  {lam0 : Fin n' → Fin (k1 + 1) → ℤ} {w : ℕ → Fin n' → ℤ}

theorem neg_liftWt_le (h : Std p n' k1 t m c r TT a b lam0 w) (s : Fin n') (j : ℕ) (hj : j + 1 ≤ m)
    (x : Fin (k1 + (j + 1) * (t + 1) + 1)) :
    -liftWt t k1 (lam0 s) (fun l => w l s) (j + 1) x ≤ w (j + 1) s := by
  unfold liftWt
  split_ifs with hx
  · have e1 := h.dom s (Fin.le_last (⟨x.val, hx⟩ : Fin (k1 + 1)))
    have e2 := (h.w_low s).2
    have e3 := w_le h s (l := 1) (l' := j + 1) le_rfl (by omega) hj
    linarith
  · rw [neg_neg]
    refine w_le h s (Nat.le_add_left 1 _) ?_ hj
    have hx2 := x.isLt
    have : (x.val - (k1 + 1)) / (t + 1) < j + 1 := by
      rw [Nat.div_lt_iff_lt_mul (by omega)]
      omega
    omega

theorem card_filter_lt_le (N i : ℕ) : (univ.filter fun x : Fin N => x.val < i).card ≤ i := by
  have := Finset.card_le_card_of_injOn (s := univ.filter fun x : Fin N => x.val < i) (t := range i)
    (fun x => x.val) (fun x hx => by
      have hx' := (mem_filter.1 (Finset.mem_coe.1 hx)).2
      exact Finset.mem_coe.2 (mem_range.2 hx')) (fun x _ y _ hxy => Fin.ext hxy)
  rwa [card_range] at this

theorem Ar_lift_le (h : Std p n' k1 t m c r TT a b lam0 w) (j i : ℕ) (hj : j + 1 ≤ m) (hi : i ≤ k1 + 1) :
    Ar i (fun s => liftWt t k1 (lam0 s) (fun l => w l s) (j + 1)) ≤ Nprime lam0 w (j + 1) i := by
  unfold Ar Nprime
  rw [← Finset.sum_filter_not_add_sum_filter univ (fun s : Fin n' => IsOddPos s), Finset.mul_sum]
  refine add_le_add (le_of_eq ?_) ?_
  · refine Finset.sum_congr rfl fun s hs => ?_
    rw [mem_filter] at hs
    have he : Even s.val := by
      rw [Nat.even_iff]
      have := hs.2
      unfold IsOddPos at this
      omega
    refine Finset.sum_bij (fun x _ => x.val + 1) ?_ ?_ ?_ ?_
    · intro x hx
      rw [mem_filter] at hx
      rw [mem_Icc]
      omega
    · intro x _ x' _ hxx
      exact Fin.ext (by omega)
    · intro y hy
      rw [mem_Icc] at hy
      exact ⟨⟨y - 1, by omega⟩, by rw [mem_filter]; exact ⟨mem_univ _, by show y - 1 < i; omega⟩,
        by show y - 1 + 1 = y; omega⟩
    · intro x hx
      rw [mem_filter] at hx
      unfold lamAt
      rw [if_pos he]
      show liftWt t k1 (lam0 s) (fun l => w l s) (j + 1) x = _
      unfold liftWt
      rw [dite_eq_left (by omega : x.val < k1 + 1)]
      exact (lamI_fin lam0 s ⟨x.val, by omega⟩).symm
  · refine Finset.sum_le_sum fun s hs => ?_
    rw [mem_filter] at hs
    have he : ¬ Even s.val := by
      rw [Nat.even_iff]
      have := hs.2
      unfold IsOddPos at this
      omega
    have hw0 : 0 ≤ w (j + 1) s := by
      have e2 := (h.w_low s).1
      have e3 := w_le h s (l := 1) (l' := j + 1) le_rfl (by omega) hj
      have : (0 : ℤ) ≤ c := Int.natCast_nonneg c
      linarith
    have h1 : ∑ x : Fin (k1 + (j + 1) * (t + 1) + 1) with x.val < i,
        lamAt (fun s => liftWt t k1 (lam0 s) (fun l => w l s) (j + 1)) s x ≤
        (univ.filter fun x : Fin (k1 + (j + 1) * (t + 1) + 1) => x.val < i).card • w (j + 1) s := by
      refine Finset.sum_le_card_nsmul _ _ _ fun x _ => ?_
      unfold lamAt
      rw [if_neg he]
      exact neg_liftWt_le h s j hj x.rev
    refine le_trans h1 ?_
    rw [nsmul_eq_mul]
    have h2 : ((univ.filter fun x : Fin (k1 + (j + 1) * (t + 1) + 1) => x.val < i).card : ℤ) ≤ i := by
      exact_mod_cast card_filter_lt_le _ i
    exact mul_le_mul_of_nonneg_right h2 hw0

end Num

section SysLevel

variable {p : ℕ} [Fact p.Prime] (X : Sys p)

theorem TmInt {j : ℕ} (h : RestWeylEdge (X.Pj j)) (v : X.Pl) (i : ℕ) {F : X.Fm j} (hF : F ∈ X.Int j) :
    ((p : X.G.Kf) ^ (Ar i ((X.Pj j).lam0 (X.vJ j v)))) • X.Tm v i j F ∈ X.Int j := by
  rw [mem_Int_iff] at hF ⊢
  exact ⟨fun c L hL => Tminus_mem (X.Pj j) h (X.vJ j v) i (F c) (hF.1 c) L hL,
    Eqv_smul X _ (restTmEquiv X j v i F hF.2)⟩

theorem p_ne_zero (v : X.Pl) : (p : X.G.Kf) ≠ 0 := Rep.ne_zero X (frac_of_place X v) (Rep.ofP X)

theorem restTmFQ_of (h : ∀ j, RestWeylEdge (X.Pj j)) : RestTmFQ X := by
  intro v i j F hF
  have hp := p_ne_zero X v
  have hle : X.FQ j ≤ (X.FQ j).comap (TmLin X v i j) := by
    refine Submodule.span_le.2 fun G hG => ?_
    show X.Tm v i j G ∈ X.FQ j
    have h1 := TmInt X (h j) v i hG
    have h2 : ((p : X.G.Kf) ^ (Ar i ((X.Pj j).lam0 (X.vJ j v))))⁻¹ •
        (((p : X.G.Kf) ^ (Ar i ((X.Pj j).lam0 (X.vJ j v)))) • X.Tm v i j G) ∈ X.FQ j :=
      Submodule.smul_mem _ _ (Submodule.subset_span h1)
    rwa [smul_smul, inv_mul_cancel₀ (zpow_ne_zero _ hp), one_smul] at h2
  exact hle hF

theorem restricted_hecke_integral_of_edges (h : ∀ j, RestWeylEdge (X.Pj j)) : HeckeIntegralLevel X := by
  intro v j hj i hi F hF
  rw [mem_Icc] at hi
  have hp := p_ne_zero X v
  unfold Sys.Tt
  rw [if_neg (by omega)]
  have h1 := TmInt X (h (j + 1)) v i hF
  have hle : Ar i ((X.Pj (j + 1)).lam0 (X.vJ (j + 1) v)) ≤ Nprime (X.G.P.lam0 v) (X.w v) (j + 1) i :=
    Ar_lift_le (X.std v) j i hj (by have := (X.std v).two_r; omega)
  obtain ⟨d, hd⟩ := Int.le.dest hle
  rw [← hd, zpow_add₀ hp, zpow_natCast, mul_comm, mul_smul]
  have e : ∀ y : X.Fm (j + 1), ((p : X.G.Kf) ^ d) • y = ((p : X.G.O) ^ d) • y := by
    intro y
    rw [← algebraMap_smul X.G.Kf ((p : X.G.O) ^ d) y, map_pow, map_natCast]
  rw [e]
  exact Submodule.smul_mem _ _ h1

end SysLevel

section EdgeProof

open Formalism.MainNotions.G.LatticeSystems MvPolynomial

variable {p : ℕ} {O Kf : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  (P : Places p O Kf)

theorem tenV_scale (v : Fin P.nV)
    (M M' : ∀ u, Submodule O (MvPolynomial (Fin (P.n' u) × (Fin (P.m + 1) × Fin (P.m + 1))) Kf)) (c : Kf)
    (hv : ∀ F ∈ M v, c • F ∈ M' v) (hu : ∀ u, u ≠ v → M u ≤ M' u) :
    ∀ x ∈ P.tenV M, c • x ∈ P.tenV M' := by
  classical
  have key : P.tenV M ≤ (P.tenV M').comap ((LinearMap.lsmul Kf P.Xsp c).restrictScalars O) := by
    unfold Places.tenV
    rw [Submodule.span_le]
    rintro _ ⟨F, hF, rfl⟩
    apply Submodule.subset_span
    refine ⟨Function.update F v (c • F v), ?_, ?_⟩
    · intro u
      by_cases h : u = v
      · subst h
        rw [Function.update_self]
        exact hv _ (hF u)
      · rw [Function.update_of_ne h]
        exact hu u h (hF u)
    · show c • ∏ u, P.vEmb u (F u) = ∏ u, P.vEmb u (Function.update F v (c • F v) u)
      rw [← Finset.mul_prod_erase Finset.univ (fun u => P.vEmb u (F u)) (Finset.mem_univ v),
        ← Finset.mul_prod_erase Finset.univ (fun u => P.vEmb u (Function.update F v (c • F v) u))
          (Finset.mem_univ v), Function.update_self, map_smul, smul_mul_assoc]
      congr 2
      refine Finset.prod_congr rfl fun u hu' => ?_
      rw [Function.update_of_ne (Finset.ne_of_mem_erase hu')]
  exact fun x hx => key hx

theorem pKf_ne_of_place (v : Fin P.nV) : (p : Kf) ≠ 0 := by
  have hS := P.setting v
  have := hS.frac_alt
  have h1 : (p : P.Qq v) ≠ 0 := by
    have h2 : algebraMap (P.W v) (P.Qq v) (p : P.W v) ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective (P.W v) (P.Qq v))).2 hS.p_unif.ne_zero
    rwa [map_natCast] at h2
  have h3 : P.ι v (p : P.Qq v) ≠ 0 := (map_ne_zero (P.ι v)).2 h1
  rwa [map_natCast] at h3

theorem la_tw_diag (v : Fin P.nV) (s i : ℕ) (g : Matrix (Fin (P.m + 1)) (Fin (P.m + 1)) (P.Qq v)) :
    la_tw (P.ι v) (P.σ v) s (g * Matrix.diagonal fun c => if c.val < i then ((p : P.Qq v))⁻¹ else 1) =
      la_tw (P.ι v) (P.σ v) s g * lb_D (P.m + 1) i (algebraMap O Kf (p : O)) := by
  unfold la_tw lb_D
  rw [map_mul]
  congr 1
  rw [RingHom.mapMatrix_apply, Matrix.diagonal_map (map_zero _)]
  congr 1
  funext c
  show (P.ι v).comp ((P.σ v ^ s : P.Qq v ≃+* P.Qq v) : P.Qq v →+* P.Qq v) (if c.val < i then ((p : P.Qq v))⁻¹ else 1) = _
  split_ifs
  · rw [map_inv₀, map_natCast, map_natCast]
  · rw [map_one]

theorem restWeylEdge : RestWeylEdge P := by
  intro v i L L'' hL hE x hx
  have hS := P.setting v
  have := hS.frac_alt
  have hinj : Function.Injective (algebraMap O Kf) := by
    have := hS.frac_O
    exact IsFractionRing.injective O Kf
  have hp := pKf_ne_of_place P v
  have hw : algebraMap O Kf (p : O) ≠ 0 := by rwa [map_natCast]
  obtain ⟨g, hg, hsrc, htgt⟩ := lc_main p (P.n' v) i (P.m + 1) hS.p_unif hS.res_card
    (by have := hS.five_le; omega) (by have := hS.two_le; omega) ⟨L'', L v⟩ hE
  have hsrc' : L'' = colSpan (P.W v) g := hsrc
  have htgt' : L v = colSpan (P.W v) (g * Matrix.diagonal fun c => if c.val < i then ((p : P.Qq v))⁻¹ else 1) := htgt
  have hfrob : ∀ x : P.W v, ∃ y : P.W v, P.σ v (algebraMap (P.W v) (P.Qq v) x) = algebraMap (P.W v) (P.Qq v) y := by
    intro x
    obtain ⟨y, hy⟩ := hS.frob x
    exact ⟨_, hy⟩
  have hloc : ∀ y ∈ HtenW O (P.lam0 v) (fun s => extO O (P.ι v) (P.σ v) s.val L''),
      ((p : Kf) ^ (Ar i (P.lam0 v))) • y ∈ HtenW O (P.lam0 v) (fun s => extO O (P.ι v) (P.σ v) s.val (L v)) := by
    intro y hy
    have h1 := lb_tensor O Kf (fun s => Dl0 O P.m (lamAt (P.lam0 v) s) (extO O (P.ι v) (P.σ v) s.val L''))
      (fun s => Dl0 O P.m (lamAt (P.lam0 v) s) (extO O (P.ι v) (P.σ v) s.val (L v)))
      (fun s => (p : Kf) ^ (∑ t : Fin (P.m + 1) with t.val < i, lamAt (P.lam0 v) s t)) (by
        intro s F hF
        rw [hsrc', la_extO (P.ι v) (P.σ v) (P.j v) hfrob hS.ι_comp] at hF
        rw [htgt', la_extO (P.ι v) (P.σ v) (P.j v) hfrob hS.ι_comp, la_tw_diag]
        have h2 := dl_pos O Kf hinj P.m i (lamAt (P.lam0 v) s) (p : O) hw _ (la_tw_det _ _ s.val g hg) F hF
        rwa [map_natCast] at h2 ⊢) y hy
    rw [lb_zpow_sum _ hp] at h1
    exact h1
  unfold Places.HtupW at hx ⊢
  refine tenV_scale P v _ _ _ ?_ ?_ x hx
  · intro F hF
    have e : Function.update (β := fun v => Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)) L v L'' v = L'' :=
      Function.update_self v L'' L
    have hF' : F ∈ HtenW O (P.lam0 v) (fun s => extO O (P.ι v) (P.σ v) s.val L'') := by
      have h0 : F ∈ HtenW O (P.lam0 v) (fun s => extO O (P.ι v) (P.σ v) s.val
        (Function.update (β := fun v => Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)) L v L'' v)) := hF
      rwa [e] at h0
    exact hloc F hF'
  · intro u hu F hF
    have e : Function.update (β := fun v => Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)) L v L'' u = L u :=
      Function.update_of_ne hu L'' L
    have h0 : F ∈ HtenW O (P.lam0 u) (fun s => extO O (P.ι u) (P.σ u) s.val
      (Function.update (β := fun v => Submodule (P.W v) (Fin (P.m + 1) → P.Qq v)) L v L'' u)) := hF
    rwa [e] at h0

end EdgeProof

section Final

variable {p : ℕ} [Fact p.Prime] (X : Sys p)

theorem restTmFQ : RestTmFQ X := restTmFQ_of X fun j => restWeylEdge (X.Pj j)

theorem restricted_hecke_integral : HeckeIntegralLevel X := restricted_hecke_integral_of_edges X fun j => restWeylEdge (X.Pj j)

end Final

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestrictedHeckeIntegralOfEdges =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TsumRatTail =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TsumRatTail", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RamifiedLatticeOfChainEstimates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TsumRatTail =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PrvAndKernelCommutationUpToUnitsOfRests =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PrvAndKernelCommutationUpToUnitsOfRests", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AofUpdate\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.CommonEigenvectorThird\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.EbBrJet\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FirstTheoremPlaceBound\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FormValuationGeNegDegree\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.HeckeConditionOfAdm\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.LiftBoundOfIntegrality\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PrimeCastNeZero\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RelativePresentationOfD7\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestEntOf\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RestrictedHeckeIntegralOfEdges\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SmulPsiGUp\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SmulUpdate\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TheoremOfAlternateForm\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TsumRatTail\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.LatticeSystems\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AuxUOfFirstTheoremPlaceBound\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime]

theorem linD (X : Sys p) : LinD X :=
  { Tt_add := Tt_add X
    Tt_smul := Tt_smul X
    yv_add := fun v F F' => (yvLin X v).map_add F F'
    yv_smul := fun v a F => (yvLin X v).map_smul a F
    yv_comm := fun v v' F =>
      funext fun i => Formalism.MainNotions.G.LatticeSystems.ef_yv_comm X.G.P v v' (F i) }

variable {X : Sys p}

theorem vGe_of_eO_zero (he : X.eO = 0) {j : ℕ} {F : X.Fm j} {g g' : ℝ} (h : X.vGe j F g) : X.vGe j F g' := by
  simpa [Sys.vGe, Sys.vsc, he] using h

theorem low_term_bound_of_eO_eq_zero_of_aux0 (D : Formalism.BasicNotions.D7) (Y : Pend X) (he : X.eO = 0) (h0 : Conclusion0 D X) : LowTermBound D X Y := by
  intro Gn G0n PRn S VV _ _ _ _ F hFm
  have hPl : ∀ _ : X.Pl, False := fun v => by have := eO_pos X v; omega
  have hFint : F ∈ X.Int 0 := by
    unfold Sys.Iprod at hFm
    refine (Submodule.span_le.2 ?_) hFm
    rintro F' ⟨BB, _, Lv, _, _, F0, hF0, rfl⟩
    have hLv : Lv = [] := by
      cases Lv with
      | nil => rfl
      | cons v _ => exact (hPl v).elim
    subst hLv
    simpa [he, scale_one] using hF0
  have key : ∀ m' ≤ X.mm, X.chainK m' F ∈ X.Int m' := by
    intro m'
    induction m' with
    | zero => intro _; exact hFint
    | succ n ih =>
      intro h
      have := h0 n (by omega) _ (ih (by omega))
      exact (vGe_zero_iff X).1 (vGe_of_eO_zero he this)
  exact vGe_of_eO_zero he ((vGe_zero_iff X).2 (key X.mm le_rfl))

structure Rests (D : Formalism.BasicNotions.D7) (X : Sys p) (Y : Pend X) : Prop where

  U2 : VolumeRatio₂ D X Y

  Ent : EntCondition X Y

theorem prv_and_kernel_commutation_up_to_units_of_rests (D : Formalism.BasicNotions.D7) (Y : Pend X) (hA : admitted D X Y) (R : Rests D X Y) :
    Conclusion₂ D X Y ∧ KernelCommutationUpToUnits D X := by
  have hF : FormB X Y := formB D X Y hA
  have hH : RestHecke X := heckeCondition_of_adm D X Y hA countLoc (restTmFQ X)
  obtain ⟨_, _, _, _, h3, h3b, _, _, _, _, _, h8, _⟩ := hA
  have p2b := hecke_integral_of_forms D hF R.Ent R.U2
  have p3 := latticeChain_succ_of_partial D hF R.Ent R.U2 (restricted_hecke_integral X)
  have pAlt := alternate_expansion_of_relations X D hH (restTmFQ X) h3b p3 p2b
  have p4 := theorem_of_alternate_form X D pAlt
  have p5D : LowTermBound D X Y := by
    rcases Nat.eq_zero_or_pos X.eO with he | he
    · exact low_term_bound_of_eO_eq_zero_of_aux0 D Y he (form_valuation_of_bound D hF h3)
    · exact lift_bound_of_integrality D (isFractionRing_of_pos_eO Y he) (pKf_ne Y) (linD X) hF R.Ent p4
        (fun v F hFm => h8.2 v F hFm)
  exact ⟨⟨form_valuation_of_bound D hF h3, R.U2, p2b, p3, p4, p5D⟩, pAlt⟩

theorem rests (D : Formalism.BasicNotions.D7) (Y : Pend X) (hA : admitted D X Y) : Rests D X Y :=
  { U2 := auxU_of_firstTheoremPlaceBound D (first_theorem_place_bound X Y D (restGc p) (eb_brJet X)) hA
    Ent := restEnt_of X Y D (second_lemma_place_bound X Y D (restGc p) (eb_brJet X))
      (hecke_place_bound X Y D (restGc p) (eb_brJet X)) hA }

theorem packet_statements_hold (D : Formalism.BasicNotions.D7) (Y : Pend X) (hA : admitted D X Y) : Conclusion₂ D X Y :=
  (prv_and_kernel_commutation_up_to_units_of_rests D Y hA (rests D Y hA)).1

theorem stmt_proved (D : Formalism.BasicNotions.D7) : Stmt D :=
  ⟨fun _ _ _ Y hA => packet_statements_hold D Y hA, relative_presentation_of_d7 D⟩

theorem stmtAt_proved (D : Formalism.BasicNotions.D7) : ErrorExponentStatement D :=
  fun _ _ _ _ _ Y _ hA => packet_statements_hold D Y hA

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PrvAndKernelCommutationUpToUnitsOfRests =====

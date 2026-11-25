module

public import Formalism.LocalToGlobal.Columns.StdLatUnimodular
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CosetRefinement
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsFinsetSelfDualClassesRootDiscr
public import Development.AbelianVarietyTheory.BlockTheory.ThetaLiftGeometry.BadPrimesPeriodBound
public import Mathlib.RingTheory.Spectrum.Prime.FreeLocus
public import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ColHeightSharpWith
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopPlaceLogTheta
import Formalism.LocalToGlobal.KernelLattices.XiIndCClass
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.TotallySplit
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClassFam
import Mathlib.RingTheory.PicardGroup
import Formalism.LocalToGlobal.Columns.DecoFin
import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
import Mathlib.RingTheory.Henselian
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic.ENatToNat
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterSumLocalConstantTenth, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetDecoSetLatticeReps, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDeterminingLattice, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogClassNumberAtLe, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CardOrbitsLeExp

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterSumLocalConstantTenth =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterSumLocalConstantTenth", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.StdLatUnimodular\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopPlaceLogTheta\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CosetRefinement\nimport Formalism.LocalToGlobal.KernelLattices.XiIndCClass\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker GlobalTheory.IndefiniteRowSideFullHecke.PlaceLogThetaBounds GlobalTheory.ColNorms
open scoped ComplexOrder

namespace GlobalTheory.ChainClassNumbers

theorem card_orbits_le_principal {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}
    {ST SG : Finset (HeightOneSpectrum (𝓞 E))} {G' D' : Type} [Group G'] [MulAction G' D']
    (p : D' → DecoSet (E := E) (n := n) (ST := ST) (SG := SG)) (hp : Function.Injective p)
    (h : ∀ (g : UF E n) (x : D'), ∃ g' : G', p (g' • x) = (g, (1 : GLG (E := E) (n := n) (SG := SG))) • p x)
    [Finite (MulAction.orbitRel.Quotient ((⊤ : Subgroup (UF E n)).prod (⊥ : Subgroup (GLG (E := E) (n := n) (SG := SG)))) (DecoSet (E := E) (n := n) (ST := ST) (SG := SG)))] :
    Nat.card (MulAction.orbitRel.Quotient G' D') ≤
      Nat.card (MulAction.orbitRel.Quotient ((⊤ : Subgroup (UF E n)).prod (⊥ : Subgroup (GLG (E := E) (n := n) (SG := SG)))) (DecoSet (E := E) (n := n) (ST := ST) (SG := SG))) := by
  refine Nat.card_le_card_of_injective
    (fun c : MulAction.orbitRel.Quotient G' D' =>
      (Quotient.mk (MulAction.orbitRel _ _) (p (Quotient.out c)) :
        MulAction.orbitRel.Quotient ((⊤ : Subgroup (UF E n)).prod (⊥ : Subgroup (GLG (E := E) (n := n) (SG := SG)))) (DecoSet (E := E) (n := n) (ST := ST) (SG := SG)))) ?_
  intro c c' hcc
  obtain ⟨⟨⟨g, k⟩, hgk⟩, hg⟩ := Quotient.exact hcc
  have hk : k = 1 := (Subgroup.mem_prod.1 hgk).2
  subst hk
  obtain ⟨g', hg'⟩ := h g (Quotient.out c')
  have he : g' • Quotient.out c' = Quotient.out c := hp (hg'.trans hg)
  rw [← Quotient.out_eq c, ← Quotient.out_eq c']
  exact Quotient.sound ⟨g', he⟩

end GlobalTheory.ChainClassNumbers
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterSumLocalConstantTenth =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetDecoSetLatticeReps =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetDecoSetLatticeReps", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.StdLatUnimodular\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsFinsetSelfDualClassesRootDiscr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.ThetaLiftGeometry.BadPrimesPeriodBound\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClassFam\nimport Formalism.LocalToGlobal.KernelLattices.XiIndCClass\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport Mathlib.RingTheory.PicardGroup\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker
open GlobalTheory.IndefiniteRowSideFullHecke GlobalTheory.ColumnNormCompare
open GlobalTheory.IndefiniteRowSideFullHecke.BadPrimesPeriodBound (recFields recPrimes recWts recSeam recGlob Twist)

namespace GlobalTheory

namespace DecoLatticeClasses

variable {E : Type} [Field E] [StarRing E] {n : ℕ}

noncomputable def unitEquiv (γ : Matrix (Fin n) (Fin n) E) (h : γ * γ.conjTranspose = 1) :
    Sp E n ≃ₗ[E] Sp E n :=
  LinearEquiv.ofLinearMap (Matrix.mulVecLin γ.conjTranspose) (Matrix.mulVecLin γ)
    (by rw [← Matrix.mulVecLin_mul, mul_eq_one_comm.1 h, Matrix.mulVecLin_one])
    (by rw [← Matrix.mulVecLin_mul, h, Matrix.mulVecLin_one])

theorem unitEquiv_mem (γ : Matrix (Fin n) (Fin n) E) (h : γ * γ.conjTranspose = 1) :
    unitEquiv γ h ∈ UF E n := by
  intro x y
  change star (γ.conjTranspose.mulVec x) ⬝ᵥ (γ.conjTranspose.mulVec y) = star x ⬝ᵥ y
  rw [Matrix.star_mulVec, Matrix.conjTranspose_conjTranspose, ← Matrix.dotProduct_mulVec,
    Matrix.mulVec_mulVec, h, Matrix.one_mulVec]

theorem mem_one_iff [NumberField E] (a : E) :
    a ∈ (1 : Submodule (𝓞 E) E) ↔ IsIntegral ℤ a := by
  rw [Submodule.mem_one]
  constructor
  · rintro ⟨r, rfl⟩
    exact r.isIntegral_coe
  · intro h
    exact ⟨⟨a, h⟩, rfl⟩

end DecoLatticeClasses


open DecoLatticeClasses in
theorem exists_finset_decoSet_lattice_reps :
    ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] [StarRing E],
    (∀ x : E, star x = IsCMField.complexConj E x) → ∀ n : ℕ,
    ∃ Rs : Finset (Submodule (𝓞 E) (Sp E n)),
      (Rs.card : ℝ) ≤ (3 * ((Module.finrank ℚ E : ℝ) ^ 2 * (n : ℝ) ^ 4 *
        (|(discr E : ℝ)| ^ ((1 : ℝ) / (Module.finrank ℚ E : ℝ))) ^ 2)) ^
          (3 * Module.finrank ℚ E * n ^ 2) ∧
      ∀ (ST SG : Finset (HeightOneSpectrum (𝓞 E))) (d : DecoSet (E := E) (n := n) (ST := ST) (SG := SG)),
        ∃ g : UF E n,
          (((g, (1 : GLG (E := E) (n := n) (SG := SG))) • d :
            DecoSet (E := E) (n := n) (ST := ST) (SG := SG))).1.N ∈ Rs := by
  intro E _ _ _ _ hs n
  obtain ⟨R, hR, H⟩ := GlobalTheory.exists_finset_selfDual_classes_rootDiscr E n
  refine ⟨R, hR, fun ST SG d => ?_⟩
  have hu : Formalism.HermitianLatticesTheory.dual (hStd E n) d.1.N = d.1.N := d.2.uni
  have hspan : Submodule.span E (d.1.N : Set (Sp E n)) = ⊤ := by
    let W := Submodule.span E (d.1.N : Set (Sp E n))
    change W = ⊤
    by_contra hW
    let e : Sp E n ≃ₗ⋆[E] Sp E n := starLinearEquiv E
    let g : Sp E n →ₗ[E] Module.Dual E W :=
      (LinearMap.domRestrict' W).comp ((hStd E n).comp e.toLinearMap)
    have hdim : Module.finrank E (Module.Dual E W) < Module.finrank E (Sp E n) := by
      rw [Subspace.dual_finrank_eq]
      exact Submodule.finrank_lt hW
    obtain ⟨x, hx, hx₀⟩ :=
      Submodule.exists_mem_ne_zero_of_ne_bot (LinearMap.ker_ne_bot_of_finrank_lt (f := g) hdim)
    -- Self-duality puts the whole line through the orthogonal vector in the lattice.
    have hsmul (a : E) : a • e x ∈ d.1.N := by
      rw [← hu, mem_dual]
      intro y hy
      have hxy : hStd E n (e x) y = 0 :=
        congrArg (fun f : Module.Dual E W => f ⟨y, Submodule.subset_span hy⟩)
          (LinearMap.mem_ker.mp hx)
      rw [map_smul, hStd_isSymm.isRefl (e x) y hxy, smul_zero]
      exact Submodule.zero_mem _
    let i : E →ₗ[𝓞 E] d.1.N :=
      ((LinearMap.toSpanSingleton E _ (e x)).restrictScalars (𝓞 E)).codRestrict d.1.N hsmul
    let : Module.Finite (𝓞 E) d.1.N := Module.Finite.iff_fg.mpr d.2.lat.fg
    let : Module.Finite (𝓞 E) E := Module.Finite.of_injective i fun a b hab =>
      smul_left_injective E (fun hzero => hx₀ (e.map_eq_zero_iff.mp hzero)) (congrArg Subtype.val hab)
    exact RingOfIntegers.not_isField E
      (isField_of_isIntegral_of_isField (IsFractionRing.injective (𝓞 E) E) (Field.toIsField E))
  obtain ⟨L₀, hL₀, γ, hγ, hm⟩ := H d.1.N d.2.lat.fg hspan (fun y => by
    conv_lhs => rw [← hu, mem_dual]
    simp only [mem_one_iff, hStd_apply, hs])
  have hγ' : γ * γ.conjTranspose = 1 := by
    rw [← hγ]
    congr 1
    ext i j
    simp [Matrix.conjTranspose_apply, hs]
  refine ⟨⟨unitEquiv γ hγ', unitEquiv_mem γ hγ'⟩, ?_⟩
  have e : Formalism.HermitianLatticesTheory.gmap (unitEquiv γ hγ') d.1.N = L₀ := by
    ext x
    rw [mem_gmap, hm]
    rfl
  rw [← e] at hL₀
  exact hL₀

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetDecoSetLatticeReps =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDeterminingLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDeterminingLattice", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.StdLatUnimodular\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetDecoSetLatticeReps\nimport Formalism.LocalToGlobal.Columns.DecoFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.Spectrum.Prime.FreeLocus\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopPlaceLogTheta\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CosetRefinement\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker GlobalTheory.IndefiniteRowSideFullHecke.PlaceLogThetaBounds GlobalTheory.ColNorms
open scoped ComplexOrder

namespace GlobalTheory.DecoClassCount


open scoped TensorProduct in
theorem exists_span_quot {R N : Type} [CommRing R] [IsDomain R] [AddCommGroup N] [Module R N]
    [Module.Finite R N] [Module.Projective R N] (I : Ideal R) [Finite (R ⧸ I)] :
    ∃ v : Fin (Module.finrank R N) → N ⧸ (I • ⊤ : Submodule R N),
      Submodule.span R (Set.range v) = ⊤ := by
  have : IsArtinianRing (R ⧸ I) := isArtinian_of_finite
  obtain ⟨b⟩ := Module.nonempty_basis_of_flat_of_finrank_eq (R ⧸ I) ((R ⧸ I) ⊗[R] N) (Module.finrank R N)
    (fun P => by
      have := P.isMaximal
      let : Field ((R ⧸ I) ⧸ P.asIdeal) := Ideal.Quotient.field _
      rw [(TensorProduct.AlgebraTensorModule.cancelBaseChange R (R ⧸ I) ((R ⧸ I) ⧸ P.asIdeal)
        ((R ⧸ I) ⧸ P.asIdeal) N).finrank_eq]
      have h1 := Module.rankAtStalk_baseChange (R := R) (M := N) (S := (R ⧸ I) ⧸ P.asIdeal) ⊥
      rw [Module.rankAtStalk_eq_finrank_of_free, Module.rankAtStalk_eq, Ideal.finrank_fiber_eq_finrank] at h1
      exact h1)
  refine ⟨(TensorProduct.quotTensorEquivQuotSMul N I) ∘ b, ?_⟩
  have h1 : Submodule.span R (Set.range b) = ⊤ := by
    rw [← Submodule.restrictScalars_span R (R ⧸ I) Ideal.Quotient.mk_surjective, b.span_eq,
      Submodule.restrictScalars_top]
  have h2 := congrArg (Submodule.map (TensorProduct.quotTensorEquivQuotSMul N I).toLinearMap) h1
  rw [Submodule.map_span, Submodule.map_top, LinearEquiv.range] at h2
  rw [Set.range_comp]
  exact h2

theorem exists_determining {R N : Type} [CommRing R] [IsDomain R] [AddCommGroup N] [Module R N]
    [Module.Finite R N] [Module.Projective R N] (I : Ideal R) [Finite (R ⧸ I)] :
    ∃ v : Fin (Module.finrank R N) → N, ∀ f g : N →ₗ[R] R ⧸ I, (∀ i, f (v i) = g (v i)) → f = g := by
  obtain ⟨v, hv⟩ := exists_span_quot (R := R) (N := N) I
  choose u hu using fun i => Submodule.Quotient.mk_surjective _ (v i)
  have hk : ∀ f : N →ₗ[R] R ⧸ I, (I • ⊤ : Submodule R N) ≤ LinearMap.ker f := by
    intro f
    refine Submodule.smul_le.2 fun a ha x _ => ?_
    rw [LinearMap.mem_ker, map_smul, Algebra.smul_def, Ideal.Quotient.algebraMap_eq,
      Ideal.Quotient.eq_zero_iff_mem.2 ha, zero_mul]
  refine ⟨u, fun f g hfg => ?_⟩
  have : Submodule.liftQ _ f (hk f) = Submodule.liftQ _ g (hk g) :=
    LinearMap.ext_on_range hv fun i => by
      rw [← hu i]
      exact hfg i
  ext x
  simpa using LinearMap.congr_fun this (Submodule.Quotient.mk x)

variable {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}

def IsLocForm (P : HeightOneSpectrum (𝓞 E)) (N : Submodule (𝓞 E) (Sp E n))
    (φ : Sp E n → 𝓞 E ⧸ P.asIdeal) : Prop :=
  (∀ x ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal N, ∀ y ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal N, φ (x + y) = φ x + φ y) ∧
  ∀ (a : 𝓞 E), ∀ x ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal N, φ (a • x) = Ideal.Quotient.mk P.asIdeal a * φ x


omit [StarRing E] in
theorem exists_determining_lattice (P : HeightOneSpectrum (𝓞 E)) (N : Submodule (𝓞 E) (Sp E n))
    (hN : Submodule.IsLattice E N) :
    ∃ v : Fin n → Sp E n, ∀ φ ψ, IsLocForm P N φ → IsLocForm P N ψ → (∀ i, φ (v i) = ψ (v i)) →
      ∀ x ∈ N, φ x = ψ x := by
  have : Module.Finite (𝓞 E) N := Module.Finite.iff_fg.2 (Submodule.IsLattice.fg (self := hN))
  have : Module.FinitePresentation (𝓞 E) N := Module.finitePresentation_of_finite _ _
  have : Module.Flat (𝓞 E) N := inferInstance
  have : Module.Projective (𝓞 E) N := Module.Flat.projective_of_finitePresentation
  have : Finite (𝓞 E ⧸ P.asIdeal) := Ideal.finiteQuotientOfFreeOfNeBot _ P.ne_bot
  have hr : Module.finrank (𝓞 E) N ≤ n := by
    letI : Submodule.IsLattice E N := hN
    rw [← Submodule.IsLattice.finrank_span_eq_finrank E N]
    simpa using Submodule.finrank_le (Submodule.span E (N : Set (Sp E n)))
  obtain ⟨v, hv⟩ := exists_determining (R := 𝓞 E) (N := N) P.asIdeal
  have hle : N ≤ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal N := fun x hx =>
    ⟨1, P.asIdeal.primeCompl.one_mem, by simpa using hx⟩
  let lin : ∀ φ, IsLocForm P N φ → (N →ₗ[𝓞 E] 𝓞 E ⧸ P.asIdeal) := fun φ hφ =>
    { toFun := fun x => φ x
      map_add' := fun x y => hφ.1 x (hle x.2) y (hle y.2)
      map_smul' := fun a x => hφ.2 a x (hle x.2) }
  classical
  refine ⟨fun i => if hi : i.val < Module.finrank (𝓞 E) N then v ⟨i.val, hi⟩ else 0,
    fun φ ψ hφ hψ h x hx => ?_⟩
  have := hv (lin φ hφ) (lin ψ hψ) fun i => by
    change φ (v i) = ψ (v i)
    simpa using h ⟨i.val, lt_of_lt_of_le i.isLt hr⟩
  exact LinearMap.congr_fun this ⟨x, hx⟩

theorem card_fibre_le (ST SG : Finset (HeightOneSpectrum (𝓞 E))) (N : Submodule (𝓞 E) (Sp E n)) :
    {d : DecoSet (E := E) (n := n) (ST := ST) (SG := SG) | d.1.N = N}.Finite ∧ {d : DecoSet (E := E) (n := n) (ST := ST) (SG := SG) | d.1.N = N}.ncard ≤
      (∏ P ∈ ST, Ideal.absNorm P.asIdeal ^ n) * ∏ w ∈ SG, Ideal.absNorm w.asIdeal ^ (n ^ 2) := by
  classical
  rcases Set.eq_empty_or_nonempty {d : DecoSet (E := E) (n := n) (ST := ST) (SG := SG) | d.1.N = N} with he | ⟨d0, hd0⟩
  · rw [he]; simp
  have hlat : Submodule.IsLattice E N := by
    have := d0.2.lat
    rwa [show d0.1.N = N from hd0] at this
  choose v hv using fun P => exists_determining_lattice P N hlat
  haveI hfin : ∀ P : HeightOneSpectrum (𝓞 E), Finite (𝓞 E ⧸ P.asIdeal) := fun P =>
    Ideal.finiteQuotientOfFreeOfNeBot _ P.ne_bot
  let Φ : DecoSet (E := E) (n := n) (ST := ST) (SG := SG) →
      (∀ P : ST, Fin n → 𝓞 E ⧸ P.1.asIdeal) × (∀ w : SG, Fin n → Fin n → 𝓞 E ⧸ w.1.asIdeal) :=
    fun d => (fun P i => d.1.f P (v P.1 i), fun w i => d.1.be w (v w.1 i))
  have hinj : Set.InjOn Φ {d : DecoSet (E := E) (n := n) (ST := ST) (SG := SG) | d.1.N = N} := by
    intro d hd d' hd' hdd
    replace hd : d.1.N = N := hd
    replace hd' : d'.1.N = N := hd'
    have hf : ∀ e : DecoSet (E := E) (n := n) (ST := ST) (SG := SG), e.1.N = N → ∀ P : ST, IsLocForm P.1 N (e.1.f P) := by
      rintro e rfl P
      exact ⟨e.2.f_add P, e.2.f_smul P⟩
    have hb : ∀ e : DecoSet (E := E) (n := n) (ST := ST) (SG := SG), e.1.N = N → ∀ (w : SG) (j : Fin n),
        IsLocForm w.1 N fun x => e.1.be w x j := by
      rintro e rfl w j
      exact ⟨fun x hx y hy => congrFun (e.2.be_add w x hx y hy) j,
        fun a x hx => congrFun (e.2.be_smul w a x hx) j⟩
    apply Subtype.ext
    refine d.2.ext_on d'.2 (hd.trans hd'.symm) (fun P x hx => ?_) (fun w x hx => ?_)
    · exact hv P.1 _ _ (hf d hd P) (hf d' hd' P)
        (fun i => congrFun (congrFun (congrArg Prod.fst hdd) P) i) x (hd ▸ hx)
    · funext j
      exact hv w.1 _ _ (hb d hd w j) (hb d' hd' w j)
        (fun i => congrFun (congrFun (congrFun (congrArg Prod.snd hdd) w) i) j) x (hd ▸ hx)
  refine ⟨Set.Finite.of_finite_image (Set.toFinite _) hinj, ?_⟩
  have hle := Set.ncard_le_ncard_of_injOn Φ (t := Set.univ) (fun _ _ => Set.mem_univ _) hinj
    (Set.toFinite _)
  refine hle.trans (le_of_eq ?_)
  have hc : ∀ P : HeightOneSpectrum (𝓞 E), Nat.card (𝓞 E ⧸ P.asIdeal) = Ideal.absNorm P.asIdeal :=
    fun P => by rw [Ideal.absNorm_apply, Submodule.cardQuot_apply]
  rw [Set.ncard_univ, Nat.card_prod, Nat.card_pi, Nat.card_pi]
  simp only [Nat.card_fun, hc, Nat.card_eq_fintype_card, Fintype.card_fin, ← pow_mul, ← sq]
  rw [Finset.prod_coe_sort ST (fun P => Ideal.absNorm P.asIdeal ^ n),
    Finset.prod_coe_sort SG (fun P => Ideal.absNorm P.asIdeal ^ (n ^ 2))]

set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in
theorem card_classes_le : ∀ (X : Fields), X.Ok → ∀ (n : ℕ) (ST SG : Finset (HeightOneSpectrum (𝓞 X.E))), Finite (MulAction.orbitRel.Quotient ((⊤ : Subgroup (UF X.E n)).prod (⊥ : Subgroup (GLG (E := X.E) (n := n) (SG := SG)))) (DecoSet (E := X.E) (n := n) (ST := ST) (SG := SG))) ∧ (Nat.card (MulAction.orbitRel.Quotient ((⊤ : Subgroup (UF X.E n)).prod (⊥ : Subgroup (GLG (E := X.E) (n := n) (SG := SG)))) (DecoSet (E := X.E) (n := n) (ST := ST) (SG := SG))) : ℝ) ≤ (3 * ((Module.finrank ℚ X.E : ℝ) ^ 2 * (n : ℝ) ^ 4 * (|(discr X.E : ℝ)| ^ ((1 : ℝ) / (Module.finrank ℚ X.E : ℝ))) ^ 2)) ^ (3 * Module.finrank ℚ X.E * n ^ 2) * (∏ P ∈ ST, (Ideal.absNorm P.asIdeal : ℝ) ^ n) * ∏ w ∈ SG, (Ideal.absNorm w.asIdeal : ℝ) ^ (n ^ 2) := by
  intro X hX n ST SG
  classical
  have hΓ : ∀ g : UF X.E n, (g, (1 : GLG (E := X.E) (n := n) (SG := SG))) ∈
      (⊤ : Subgroup (UF X.E n)).prod (⊥ : Subgroup (GLG (E := X.E) (n := n) (SG := SG))) := fun g =>
    ⟨Subgroup.mem_top _, Subgroup.one_mem _⟩
  refine ⟨DecoSet.finite_orbits (posStar_of_conj hX.conjE) _ hΓ, ?_⟩
  have := hX.realF
  have := hX.cplxE
  have : Algebra.IsQuadraticExtension X.F X.E := ⟨hX.rankE⟩
  have : IsCMField X.E := IsCMField.ofCMExtension X.F X.E
  have hs : ∀ x : X.E, star x = IsCMField.complexConj X.E x := by
    intro x
    let φ : X.E →+* ℂ := (IsAlgClosed.lift : X.E →ₐ[ℚ] ℂ).toRingHom
    apply φ.injective
    rw [hX.conjE, IsCMField.complexEmbedding_complexConj]
  obtain ⟨Rs, hR, H⟩ := GlobalTheory.exists_finset_decoSet_lattice_reps X.E hs n
  let fib : Submodule (𝓞 X.E) (Sp X.E n) → Finset (DecoSet (E := X.E) (n := n) (ST := ST) (SG := SG)) := fun N =>
    (card_fibre_le ST SG N).1.toFinset
  let B : ℕ := (∏ P ∈ ST, Ideal.absNorm P.asIdeal ^ n) * ∏ w ∈ SG, Ideal.absNorm w.asIdeal ^ (n ^ 2)
  have hfib : ∀ N, (fib N).card ≤ B := fun N => by
    rw [← Set.ncard_eq_toFinset_card _ (card_fibre_le ST SG N).1]
    exact (card_fibre_le ST SG N).2
  have hS : (Rs.biUnion fib).card ≤ Rs.card * B := Finset.card_biUnion_le_card_mul _ _ _ fun N _ => hfib N
  have hsurj : Function.Surjective (fun d : ↥(Rs.biUnion fib) => (Quotient.mk'' d.1 :
      MulAction.orbitRel.Quotient ((⊤ : Subgroup (UF X.E n)).prod (⊥ : Subgroup (GLG (E := X.E) (n := n) (SG := SG))))
        (DecoSet (E := X.E) (n := n) (ST := ST) (SG := SG)))) := by
    intro c
    induction c using Quotient.inductionOn' with
    | h d =>
      obtain ⟨g, hg⟩ := H ST SG d
      refine ⟨⟨(g, (1 : GLG (E := X.E) (n := n) (SG := SG))) • d, Finset.mem_biUnion.2 ⟨_, hg, ?_⟩⟩, ?_⟩
      · exact (Set.Finite.mem_toFinset _).2 rfl
      · apply Quotient.sound'
        rw [MulAction.orbitRel_apply]
        exact ⟨⟨(g, 1), hΓ g⟩, rfl⟩
  have h1 := Nat.card_le_card_of_surjective _ hsurj
  rw [Nat.card_eq_fintype_card (α := ↥(Rs.biUnion fib)), Fintype.card_coe] at h1
  have h2 : ((Rs.card * B : ℕ) : ℝ) = Rs.card * (∏ P ∈ ST, (Ideal.absNorm P.asIdeal : ℝ) ^ n) *
      ∏ w ∈ SG, (Ideal.absNorm w.asIdeal : ℝ) ^ (n ^ 2) := by
    simp only [B]
    push_cast
    ring
  refine (Nat.cast_le.2 (h1.trans hS)).trans (h2.le.trans ?_)
  gcongr

end GlobalTheory.DecoClassCount
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDeterminingLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogClassNumberAtLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogClassNumberAtLe", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.ThetaLiftGeometry.BadPrimesPeriodBound\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClassFam\nimport Formalism.LocalToGlobal.KernelLattices.XiIndCClass\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker
open GlobalTheory.IndefiniteRowSideFullHecke GlobalTheory.ColumnNormCompare
open GlobalTheory.IndefiniteRowSideFullHecke.BadPrimesPeriodBound (recFields recPrimes recWts recSeam recGlob Twist)

namespace GlobalTheory.ColumnClassLog

theorem log_le_of_count (h f n N g₀ g₁ T : ℕ) (rd L : ℝ) (hf : 1 ≤ f) (hn : 1 ≤ n) (hnN : n ≤ N) (hT : 1 ≤ T) (hrd : 0 < rd)
    (hL : 1 ≤ L) (hrdL : Real.log rd ≤ L) (hfN : (f : ℝ) * N ≤ Real.exp L) (hg₀ : Real.exp L ≤ g₀) (hg₁ : 1 ≤ g₁)
    (hh : (h : ℝ) ≤ (3 * (((2 * f : ℕ) : ℝ) ^ 2 * (n : ℝ) ^ 4 * rd ^ 2)) ^ (3 * (2 * f) * n ^ 2) *
      ((g₀ : ℝ) * g₁ * T) ^ (f * (n * n))) :
    Real.log h ≤ 55 * (f : ℝ) * (N : ℝ) ^ 2 * Real.log ((g₀ : ℝ) * g₁ * T) := by
  have hf' : (1 : ℝ) ≤ f := by exact_mod_cast hf
  have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnN' : (n : ℝ) ≤ N := by exact_mod_cast hnN
  have hT' : (1 : ℝ) ≤ T := by exact_mod_cast hT
  have hg₁' : (1 : ℝ) ≤ g₁ := by exact_mod_cast hg₁
  have he : 0 < Real.exp L := Real.exp_pos L
  have hg0 : (0 : ℝ) < g₀ := lt_of_lt_of_le he hg₀
  have hG : Real.exp L ≤ (g₀ : ℝ) * g₁ * T := by
    calc Real.exp L ≤ g₀ := hg₀
      _ = (g₀ : ℝ) * 1 * 1 := by ring
      _ ≤ _ := by gcongr
  set G : ℝ := (g₀ : ℝ) * g₁ * T with hGd
  have hGp : 0 < G := lt_of_lt_of_le he hG
  have hLG : L ≤ Real.log G := (Real.le_log_iff_exp_le hGp).2 hG
  have hlG : 0 ≤ Real.log G := by linarith
  rcases Nat.eq_zero_or_pos h with rfl | hpos
  · simp only [Nat.cast_zero, Real.log_zero]
    positivity
  have hrd' : rd ≤ Real.exp L := (Real.log_le_iff_le_exp hrd).1 hrdL
  have hfn : (f : ℝ) * n ≤ Real.exp L := le_trans (by gcongr) hfN
  have hn2 : (n : ℝ) ≤ Real.exp L := le_trans (by nlinarith) hfn
  have h12 : (12 : ℝ) ≤ Real.exp L ^ 3 := by
    have h1 : Real.exp 1 ≤ Real.exp L := Real.exp_le_exp.2 hL
    have h2 : (2.7 : ℝ) ≤ Real.exp L := by linarith [Real.exp_one_gt_d9]
    calc (12 : ℝ) ≤ 2.7 ^ 3 := by norm_num
      _ ≤ _ := by gcongr
  set A : ℝ := 3 * (((2 * f : ℕ) : ℝ) ^ 2 * (n : ℝ) ^ 4 * rd ^ 2) with hA
  have hAp : 0 < A := by rw [hA]; push_cast; positivity
  have hA9 : A ≤ G ^ 9 := by
    calc A = 12 * ((f : ℝ) * n) ^ 2 * (n : ℝ) ^ 2 * rd ^ 2 := by rw [hA]; push_cast; ring
      _ ≤ Real.exp L ^ 3 * Real.exp L ^ 2 * Real.exp L ^ 2 * Real.exp L ^ 2 := by gcongr
      _ = Real.exp L ^ 9 := by ring
      _ ≤ G ^ 9 := by gcongr
  have hfin : (h : ℝ) ≤ G ^ (55 * f * n ^ 2) := by
    calc (h : ℝ) ≤ A ^ (3 * (2 * f) * n ^ 2) * G ^ (f * (n * n)) := hh
      _ ≤ (G ^ 9) ^ (3 * (2 * f) * n ^ 2) * G ^ (f * (n * n)) := by gcongr
      _ = G ^ (55 * f * n ^ 2) := by rw [← pow_mul, ← pow_add]; congr 1; ring
  calc Real.log h ≤ Real.log (G ^ (55 * f * n ^ 2)) := Real.log_le_log (by exact_mod_cast hpos) hfin
    _ = 55 * (f : ℝ) * (n : ℝ) ^ 2 * Real.log G := by rw [Real.log_pow]; push_cast; ring
    _ ≤ _ := by gcongr

theorem fibre_bound_le {X : Fields} {Pr : Primes X} (hP : Pr.Ok) (u : Pr.Word) (n : ℕ) (hn : 1 ≤ n)
    (SG : Finset (HeightOneSpectrum (𝓞 X.E))) (hSG : SG = Pr.vGs) :
    (∏ P ∈ Pr.vT u, Ideal.absNorm P.asIdeal ^ n) * ∏ w ∈ SG, Ideal.absNorm w.asIdeal ^ (n * n) ≤
      (Pr.g 0 * Pr.g 1 * Pr.T u) ^ (X.f * (n * n)) := by
  classical
  subst hSG
  have hT : ∏ P ∈ Pr.vT u, Ideal.absNorm P.asIdeal ^ n ≤ Pr.T u ^ (X.f * (n * n)) := by
    rw [Finset.prod_congr rfl (fun P hP' => by rw [hP.vT_norm u P hP']), Finset.prod_const, hP.vT_card, ← pow_mul]
    exact Nat.pow_le_pow_right (hP.T_prime u).pos (by rw [mul_comm]; exact Nat.mul_le_mul_left _ (Nat.le_mul_self n))
  have hg : ∀ i, ∏ w ∈ Pr.vG i, Ideal.absNorm w.asIdeal ^ (n * n) = Pr.g i ^ (X.f * (n * n)) := by
    intro i
    rw [Finset.prod_congr rfl (fun P hP' => by rw [hP.vG_norm i P hP']), Finset.prod_const, hP.vG_card, ← pow_mul, mul_comm]
  have hd : Disjoint (Pr.vG 0) (Pr.vG 1) := by
    rw [Finset.disjoint_left]
    intro w h0 h1
    exact hP.g_ne ((hP.vG_norm 0 w h0).symm.trans (hP.vG_norm 1 w h1))
  have hU : ∏ w ∈ Pr.vGs, Ideal.absNorm w.asIdeal ^ (n * n) = Pr.g 0 ^ (X.f * (n * n)) * Pr.g 1 ^ (X.f * (n * n)) := by
    rw [← hg 0, ← hg 1, ← Finset.prod_union hd]
    unfold Primes.vGs
    congr
  rw [hU, mul_pow, mul_pow, mul_comm]
  exact Nat.mul_le_mul_left _ hT

end GlobalTheory.ColumnClassLog
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogClassNumberAtLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CardOrbitsLeExp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CardOrbitsLeExp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ColHeightSharpWith\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CosetRefinement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterSumLocalConstantTenth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDeterminingLattice\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogClassNumberAtLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker GlobalTheory.IndefiniteRowSideFullHecke.PlaceLogThetaBounds GlobalTheory.ColNorms
open GlobalTheory.Core.Ht2
open scoped ComplexOrder

namespace GlobalTheory.ChainClassNumbersS

theorem card_orbits_le_exp {D : D7} {N : NumDatum} {X : Fields} {s : Seam D X} {Pr : Primes X} (hH : HostTie N s Pr)
    (pl : RPl N.R ≃ X.Tau) (u : Pr.Word) {δ : Code N} {CY : ℝ} (hS : SizeRowsS CY N δ) {n : ℕ} (hn : 1 ≤ n) (hnN : n ≤ N.Nm)
    {ST SG : Finset (HeightOneSpectrum (𝓞 X.E))} (hST : ST ⊆ Pr.vT u) (hSG : SG = Pr.vGs)
    {G' D' : Type} [Group G'] [MulAction G' D'] (p : D' → DecoSet (E := X.E) (n := n) (ST := ST) (SG := SG)) (hp : Function.Injective p)
    (h : ∀ (g : UF X.E n) (x : D'), ∃ g' : G', p (g' • x) = (g, (1 : GLG (E := X.E) (n := n) (SG := SG))) • p x) :
    (Nat.card (MulAction.orbitRel.Quotient G' D') : ℝ) ≤ Real.exp (55 * errUnit N (Pr.T u)) := by
  have hrdeq := hH.rd_eq
  obtain ⟨-, -, -, -, -, -, hX, -, -, hP, -, -, hg, -⟩ := hH
  obtain ⟨⟨s1, -⟩, s2, -, s4, -⟩ := hS
  obtain ⟨hfin, hcount⟩ := GlobalTheory.DecoClassCount.card_classes_le X hX.ok n ST SG
  have hle := GlobalTheory.ChainClassNumbers.card_orbits_le_principal p hp h
  have hk : 5 ≤ N.R.k := by have := N.R.m_add_three_le_k; have := N.R.two_le_m; omega
  have hf : X.f = N.R.f := by
    have h1 : X.f = Nat.card X.Tau := Nat.card_eq_fintype_card.symm
    rw [h1, ← Nat.card_congr pl, Nat.card_prod, Nat.card_eq_fintype_card (α := N.R.A), N.R.card_A]
    simp [Ranks.f, Ranks.n]
  have hE : Module.finrank ℚ X.E = 2 * N.R.f := by
    have h1 := Module.finrank_mul_finrank ℚ X.F X.E
    rw [hX.ok.rankE, ← hX.ok.card_Tau] at h1
    rw [← hf, mul_comm]
    exact h1.symm
  have hf1 : 1 ≤ N.R.f := hf ▸ hX.ok.f_pos
  have hfib := GlobalTheory.ColumnClassLog.fibre_bound_le hP u n hn SG hSG
  rw [hf, hg 0, hg 1] at hfib
  have hsub : ∏ P ∈ ST, Ideal.absNorm P.asIdeal ^ n ≤ ∏ P ∈ Pr.vT u, Ideal.absNorm P.asIdeal ^ n := by
    refine Finset.prod_le_prod_of_subset_of_one_le' hST fun P hP' _ => ?_
    rw [hP.vT_norm u P hP']
    exact Nat.one_le_pow _ _ (hP.T_prime u).pos
  have hfib' := (Nat.mul_le_mul_right _ hsub).trans hfib
  have hrd : |(discr X.E : ℝ)| ^ ((1 : ℝ) / (Module.finrank ℚ X.E : ℝ)) = N.rd := by
    have e : X.E ≃ₐ[ℚ] D.host.E := s.iE.toRatAlgEquiv
    have h1 : D.host.rdE = N.rd := hrdeq.symm
    rw [discr_eq_discr_of_algEquiv X.E e, e.toLinearEquiv.finrank_eq]
    exact h1
  have hrd0 : 0 < N.rd := by
    rw [← hrd]
    exact Real.rpow_pos_of_pos (abs_pos.2 (by exact_mod_cast discr_ne_zero _)) _
  have hL : 1 ≤ N.sc.L := Real.one_le_rpow N.sc.one_lt_alt.le N.sc.eps_pos.le
  have hb : 1 ≤ Real.exp N.sc.L := Real.one_le_exp (by linarith)
  have hg0 : Real.exp N.sc.L ≤ N.g 0 := by
    refine le_trans ?_ (s2 0).1
    have hk' : (1 : ℝ) ≤ N.R.k := by exact_mod_cast (by omega : 1 ≤ N.R.k)
    have h1 : Real.exp N.sc.L ≤ (N.R.k : ℝ) * Real.exp N.sc.L := by nlinarith
    exact h1.trans (le_self_pow₀ (hb.trans h1) (by norm_num))
  have hlog := GlobalTheory.ColumnClassLog.log_le_of_count (Nat.card (MulAction.orbitRel.Quotient G' D')) N.R.f n N.Nm (N.g 0) (N.g 1)
    (Pr.T u) N.rd N.sc.L hf1 hn hnN (hP.T_prime u).pos hrd0 hL s1 s4 hg0 (N.g_prime 1).pos (by
      refine ((Nat.cast_le.2 hle).trans hcount).trans ?_
      rw [hrd, hE, mul_assoc]
      refine mul_le_mul_of_nonneg_left ?_ (by positivity)
      rw [pow_two n]
      exact_mod_cast hfib')
  refine (Real.le_exp_log _).trans (Real.exp_le_exp.2 (hlog.trans ?_))
  have hG : 0 ≤ Real.log ((N.g 0 : ℝ) * N.g 1 * Pr.T u) := by
    have : 1 ≤ N.g 0 * N.g 1 * Pr.T u :=
      Nat.mul_pos (Nat.mul_pos (N.g_prime 0).pos (N.g_prime 1).pos) (hP.T_prime u).pos
    exact Real.log_nonneg (by exact_mod_cast this)
  have hm : (1 : ℝ) ≤ (N.R.m : ℝ) ^ 2 := by
    have : (1 : ℝ) ≤ N.R.m := by exact_mod_cast (by have := N.R.two_le_m; omega : 1 ≤ N.R.m)
    exact one_le_pow₀ this
  unfold errUnit
  calc 55 * (N.R.f : ℝ) * (N.Nm : ℝ) ^ 2 * Real.log ((N.g 0 : ℝ) * N.g 1 * Pr.T u)
      = 55 * (N.R.f * 1 * (N.Nm : ℝ) ^ 2 * Real.log ((N.g 0 : ℝ) * N.g 1 * Pr.T u)) := by ring
    _ ≤ _ := by gcongr

theorem classNumbers_leS : ∃ C : ℝ, 0 ≤ C ∧ ∀ (CY : ℝ) (D : D7) (N : NumDatum) (X : Fields) (s : Seam D X) (Pr : Primes X) (W : Wts X Pr.Word N.R) (Ch : Chars X Pr N.R.m) (G : ChGlob X N.R.m) (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) (Sg : Set ℕ) (mu : Tup X.F X.E X.K Sg) (cst : LocCst X (rowSG Pr sel mu)) (I : ChIdx X Pr N.R (QE sel (mu : Chr X.F X.E X.K))) (dl : ℂ) (χ : TaylorLogMetric.IdE D → ℂ) (cD : D.what₂.Tau → ℂ) (pl : RPl N.R ≃ X.Tau) (u : Pr.Word) (δ : Code N), HypS CY N s W Ch G sel mu cst I dl χ cD pl u δ → (∀ j ≤ N.R.m, ∀ b : I.β j, (Nat.card ((chF W sel mu I u j).mem b).Cl : ℝ) ≤ Real.exp (C * errUnit N (Pr.T u))) ∧ (Nat.card (evGSD W Ch sel mu (rPsymF Ch) u).Cl : ℝ) ≤ Real.exp (C * errUnit N (Pr.T u)) ∧ (topClassNumber Ch sel mu u : ℝ) ≤ Real.exp (C * errUnit N (Pr.T u)) := by
  refine ⟨55, by norm_num, ?_⟩
  intro CY D N X s Pr W Ch G sel Sg mu cst I dl χ cD pl u δ hyp
  obtain ⟨hH, -, -, -, hmu, -, -, -, hS⟩ := hyp
  have hQ : QE sel (mu : Chr X.F X.E X.K) = ∅ := by
    rw [hmu]
    exact twistPrimes_trivialTuple_empty sel Sg
  have hSG : rowSG Pr sel mu = Pr.vGs := by
    unfold rowSG uSG
    ext w
    classical
    rw [Finset.mem_union, hQ]
    simp
  have hk : 5 ≤ N.R.k := by have := N.R.m_add_three_le_k; have := N.R.two_le_m; omega
  have hm : 2 ≤ N.R.N N.R.m := by unfold Ranks.N; omega
  refine ⟨fun j hj b => ?_, ?_, ?_⟩
  · have hn : 1 ≤ N.R.N j := by unfold Ranks.N; omega
    have hnN : N.R.N j ≤ N.Nm := by unfold NumDatum.Nm Ranks.N; gcongr
    refine @card_orbits_le_exp D N X s Pr hH pl u δ CY hS _ hn hnN _ _ subset_rfl rfl (FrmG (I.levG j b) (I.levQ j b))
      (ChPt (R := N.R) (Pr := Pr) sel mu u j) _ (frmAct (I.levG j b) (I.levQ j b)) DecoF.deco ?_
      fun g x => ⟨(g, 1, 1), rfl⟩
    intro x y hxy
    refine Subtype.ext (Prod.ext hxy (funext fun P => ?_))
    exact absurd P.2 (Finset.eq_empty_iff_forall_notMem.1 hQ P.1)
  · exact @card_orbits_le_exp D N X s Pr hH pl u δ CY hS (N.R.N N.R.m - 1) (by omega) (Nat.sub_le _ _) ∅ _ (Finset.empty_subset _) hSG
      (FormG (rowTy Ch sel mu (rPsymF Ch)).inv) (RowPt Pr N.R sel mu) _ (formAct (rowTy Ch sel mu (rPsymF Ch)).inv) id
      Function.injective_id fun g x => ⟨(g, 1), rfl⟩
  · unfold topClassNumber
    exact card_orbits_le_exp (n := N.R.N N.R.m) hH pl u hS (le_trans (by norm_num) hm) le_rfl subset_rfl hSG id Function.injective_id
      fun g x => ⟨⟨(g, 1), Subgroup.mem_prod.2 ⟨Subgroup.mem_top _, one_mem _⟩⟩, rfl⟩

end GlobalTheory.ChainClassNumbersS

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CardOrbitsLeExp =====

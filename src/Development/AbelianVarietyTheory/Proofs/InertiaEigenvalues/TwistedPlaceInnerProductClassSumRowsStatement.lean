module

public import Development.AbelianVarietyTheory.Definitions.Divisors.MemStdLatticeIffIntegralCoords
public import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsUniqueVec
public import Formalism.LocalToGlobal.ClassRec
public import Formalism.LocalToGlobal.Divisibility.HeckeRI
public import Formalism.LocalToGlobal.HilbertRowConditions.ColumnsFunctionAtSubspaces
public import Formalism.LocalToGlobal.IndefiniteReal.TrISepWith
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexCj
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameEquivApply
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexNeZeroOfCover
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DoubleCosetMassEqRelIndexMulMass
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinsetDoubleCosetsConjMaxCompact
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsInvariantHermitianWeightForm
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SubsetTwistExceptionalPlaces
public import Development.AbelianVarietyTheory.Counterexamples.DegenerateExamples.NotVstdOfGramOne
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSplitOfGPl
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EventuallyDefiniteSpacesStandardAndLarge
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Formalism.LocalToGlobal.HilbertRowConditions.IsHilbertCF
import Formalism.LocalToGlobal.IndefiniteReal.RecTie
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteIndexConj
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteRationalConjMemBoundedCompact
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexNeZeroOfReps
import Formalism.LocalToGlobal.IndefiniteReal.TopMult
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.AddCharThetaLawRearrangementIdentity, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabMono, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabFrame, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRows, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRowsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.AddCharThetaLawRearrangementIdentity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.AddCharThetaLawRearrangementIdentity", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MemStdLatticeIffIntegralCoords\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsUniqueVec\npublic import Formalism.LocalToGlobal.ClassRec\npublic import Formalism.LocalToGlobal.Divisibility.HeckeRI\npublic import Formalism.LocalToGlobal.HilbertRowConditions.ColumnsFunctionAtSubspaces\nimport Formalism.LocalToGlobal.HilbertRowConditions.IsHilbertCF\nimport Formalism.LocalToGlobal.IndefiniteReal.RecTie\npublic import Formalism.LocalToGlobal.IndefiniteReal.TrISepWith\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S Formalism.MainNotions.N IsDedekindDomain NumberField
open Formalism.L2 Formalism.L2.Host Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Lev Formalism.IndefR.Links Formalism.IndefR.RecTie Formalism.IndefR.principalLevelFrame
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.NJoin.Inh

section Frame

variable {D : D7} {V : HSp D} {n : ℕ} (P : RowPsi V n)

variable (c : CoefA V)

variable (β : GL (Fin V.rank) (EAf D)) (L : LevDat D.host.E ℂ V.rank)

variable {W : Type} [AddCommGroup W] [Module ℂ W] (e : c.W ≃ₗ[ℂ] W)

variable (hc : ∀ h ∈ GfC V, c.ρ h = 1) (ρ : Representation ℂ (ReciprocityTheory.Aut.GQ D.host.E n) W)
  (rat : ∀ h, h ∈ ReciprocityTheory.Aut.GQ D.host.E n ↔ ∃ γ ∈ Formalism.L2.Theta.GQ V, finHom V γ = finHom V (P.ψ h))
  (wt : ∀ (h : ReciprocityTheory.Aut.GQ D.host.E n), ∀ γ ∈ Formalism.L2.Theta.GQ V, finHom V γ = finHom V (P.ψ h) →
    ∀ v, e (c.ρ γ v) = ρ h (e v))
include hc rat wt


end Frame

section Algebraic

open MvPolynomial ReciprocityTheory.Aut
open scoped Matrix

variable {ι : Type} [Fintype ι] {n : ℕ}

variable {L : Type} [Field L] [NumberField L] [IsCMField L]

end Algebraic

section Weight

variable {D : D7}

theorem rat_unit {V : HSp D} (hg : V.gram = 1) (h : Formalism.AUTREP.GAf D.host.E V.rank) :
    h ∈ ReciprocityTheory.Aut.GQ D.host.E V.rank ↔
      ∃ γ ∈ Formalism.L2.Theta.GQ V, finHom V γ = finHom V ((GlobalTheory.StdFrameModel.unitPsi hg).ψ h) := by
  have hfin : finHom V ((GlobalTheory.StdFrameModel.unitPsi hg).ψ h) = Formalism.UG.bc (GlobalTheory.StdFrameModel.sw D).symm.toRingHom h.1 :=
    (GlobalTheory.StdFrameModel.exists_lift hg h).choose_spec.2
  have hU : ∀ x : GL (Fin V.rank) D.host.E, x ∈ ReciprocityTheory.Aut.GQ0 D.host.E V.rank ↔
      x ∈ Formalism.UG.UJ (D.sp.cm.sig : D.host.E →+* D.host.E) V.gram := by
    intro x
    change x.1 * ReciprocityTheory.Aut.conjT _ x.1 = 1 ↔ Formalism.UG.cT _ x.1 * V.gram * x.1 = V.gram
    rw [hg, Matrix.mul_one, mul_eq_one_comm]
    rfl
  rw [hfin]
  constructor
  · rintro ⟨x, hx, e⟩
    have hx' := (hU x).1 hx
    have hm : Formalism.UG.bc (incA D) x ∈ HR (AF D.host.F) D.sp.cm.sig V.gram := by
      have h0 : Formalism.UG.cT (D.sp.cm.sig : D.host.E →+* D.host.E) x.1 * V.gram * x.1 = V.gram := hx'
      have h2 := congrArg (fun M => Matrix.map M (incA D)) h0
      simp only [Matrix.map_mul] at h2
      exact h2
    refine ⟨⟨_, hm⟩, ⟨x, hx', rfl⟩, ?_⟩
    have e' : h.1 = _ := e.symm
    rw [e']
    ext i j
    change (sndA D.host.F 1) ⊗ₜ[D.host.F] (x.1 i j) = (1 : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F) ⊗ₜ[D.host.F] (x.1 i j)
    rw [map_one]
  · rintro ⟨γ, ⟨x, hx, e⟩, e2⟩
    refine ⟨x, (hU x).2 hx, ?_⟩
    ext i j
    have e3 := congrArg (fun g : GL (Fin V.rank) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F ⊗[D.host.F] D.host.E) => g.1 i j) e2
    have e4 : (finHom V γ).1 i j = (1 : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Af D.host.F) ⊗ₜ[D.host.F] (x.1 i j) := by
      have e' : γ.1 = _ := e.symm
      change Algebra.TensorProduct.map (sndA D.host.F) (AlgHom.id D.host.F D.host.E) (γ.1.1 i j) = _
      rw [e']
      change (sndA D.host.F 1) ⊗ₜ[D.host.F] (x.1 i j) = _
      rw [map_one]
    simp only [e4] at e3
    apply (GlobalTheory.StdFrameModel.sw D).symm.injective
    exact e3

variable {V : HSp D} (c : CoefA V)

end Weight

section Agreement

variable {D : D7} {cf : CharFrame D} {nch : NChoice D} {tp : TupTied D cf nch} (X : RealAt D cf nch tp)

end Agreement

section Reading

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {cf : CharFrame D} {nch : NChoice D}


end Reading

section Record

open Formalism.MainNotions Formalism.L2.Rows

variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {K : Formalism.MainNotions.G.Consts} {Y : DivX D}
  {cX : ExtraC} {ex : Extra D L hT Gi Gl K Y cX} {Rc : Formalism.L2.RecT ex} {P : RowSideFamily ex}
  {Dcf : ∀ Zs : Indef.DefSub P.A3.fam3.amb3, Indef.DefCols (P.A3.side3 P.Ps P.ψs Zs)}
  {Spf : ∀ Zs : Indef.DefSub P.A3.fam3.amb3, Indef.SPer (Dcf Zs)} {Zscf : Indef.DefSub P.A3.fam3.amb3 → Indef.IndefScale P.A3.fam3.base3}
  {S : Formalism.L2.SG.SpectralTiesReal.STiesR Rc} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
  {Q : RealT Rc P Dcf Spf Zscf S Ks}

end Record

end GlobalTheory.NJoin.Inh

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.AddCharThetaLawRearrangementIdentity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabMono =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabMono", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexCj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.ClassRefine GlobalTheory.ClassPet

noncomputable section

namespace GlobalTheory.TwoLattices

open scoped Classical

variable {G : Type} [Group G]

theorem finite_stab_mono {Γ Γ' K K' : Subgroup G} (h : Γ' ≤ Γ) (hK : K' ≤ K) (t : G) (hf : Finite (stabQ Γ K t)) :
    Finite (stabQ Γ' K' t) :=
  Finite.of_injective (fun γ : stabQ Γ' K' t => (⟨⟨γ.1, h γ.1.2⟩, mem_stabQ.2 (hK (mem_stabQ.1 γ.2))⟩ : stabQ Γ K t))
    fun _ _ e => Subtype.ext (Subtype.ext (congrArg (fun z : stabQ Γ K t => (z.1 : G)) e))

theorem Cover.of_finite {Γ Γ' K : Subgroup G} (hc : Cover Γ K) {α : Type} [Finite α] (r : Γ → α)
    (hr : ∀ a b, r a = r b → (a : G) * (b : G)⁻¹ ∈ Γ') : Cover Γ' K := by
  obtain ⟨S, hS⟩ := hc
  haveI := Fintype.ofFinite α
  refine ⟨(Finset.univ ×ˢ S).image fun p : α × G => ((Function.invFun r p.1 : Γ) : G) * p.2, fun g => ?_⟩
  obtain ⟨s, hs, γ, κ, hκ, e⟩ := hS g
  exact ⟨_, Finset.mem_image.2 ⟨(r γ, s), Finset.mem_product.2 ⟨Finset.mem_univ _, hs⟩, rfl⟩,
    ⟨_, hr γ _ (Function.invFun_eq ⟨γ, rfl⟩).symm⟩, κ, hκ, by rw [e]; simp [mul_assoc]⟩

def Kn (G X : Type) : Type := G × G → X → X → ℂ

variable {W X : Type} [AddCommGroup W] [Module ℂ W]

instance : MulAction G (Kn G X) where
  smul δ k := fun p => k (δ⁻¹ * p.1, δ⁻¹ * p.2)
  one_smul k := funext fun p => by
    show k (1⁻¹ * p.1, 1⁻¹ * p.2) = k p
    simp
  mul_smul a b k := funext fun p => by
    show k ((a * b)⁻¹ * p.1, (a * b)⁻¹ * p.2) = k (b⁻¹ * (a⁻¹ * p.1), b⁻¹ * (a⁻¹ * p.2))
    simp [mul_assoc]

theorem smul_kn (δ : G) (k : Kn G X) (p : G × G) : (δ • k) p = k (δ⁻¹ * p.1, δ⁻¹ * p.2) := rfl

def kn (f : X → G → W) (b : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ) : Kn G X := fun p x x' => b (f x p.1) (f x' p.2)

def acts (f : X → G → W) : Subgroup G where
  carrier := {δ | (∃ A : W →ₗ[ℂ] W, ∀ x g, f x (δ * g) = A (f x g)) ∧ ∃ A : W →ₗ[ℂ] W, ∀ x g, f x (δ⁻¹ * g) = A (f x g)}
  one_mem' := ⟨⟨LinearMap.id, by simp⟩, ⟨LinearMap.id, by simp⟩⟩
  mul_mem' := by
    rintro a b ⟨⟨A, hA⟩, A', hA'⟩ ⟨⟨B, hB⟩, B', hB'⟩
    exact ⟨⟨A.comp B, fun x g => by rw [mul_assoc, hA, hB]; rfl⟩,
      ⟨B'.comp A', fun x g => by rw [mul_inv_rev, mul_assoc, hB', hA']; rfl⟩⟩
  inv_mem' := by
    rintro a ⟨h, h'⟩
    exact ⟨h', by simpa using h⟩

theorem le_acts {f : X → G → W} {Γ : Subgroup G} (h : ∀ γ ∈ Γ, ∃ A : W →ₗ[ℂ] W, ∀ x g, f x (γ * g) = A (f x g)) : Γ ≤ acts f :=
  fun γ hγ => ⟨h γ hγ, h _ (Γ.inv_mem hγ)⟩

def IsPos (b : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ) : Prop := (∀ x y, b x y = starRingEnd ℂ (b y x)) ∧ ∀ x, x ≠ 0 → 0 < (b x x).re

section Span

variable {f : X → G → W} {ι : Type} {p : ι → X × G} (hs : Submodule.span ℂ (Set.range fun i => f (p i).1 (p i).2) = ⊤)
include hs

theorem smul_kn_pos {δ : G} (hδ : δ ∈ acts f) {b : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ} (hb : IsPos b) : ∃ b', IsPos b' ∧ kn f b' = δ • kn f b := by
  obtain ⟨⟨A, hA⟩, A', hA'⟩ := hδ
  have h : A.comp A' = LinearMap.id := LinearMap.ext_on_range hs fun i => by
    rw [LinearMap.comp_apply, ← hA', ← hA]
    simp
  refine ⟨(b.comp A').compl₂ A', ⟨fun x y => hb.1 _ _, fun x hx => hb.2 _ fun h0 => hx ?_⟩, funext fun q => ?_⟩
  · have := LinearMap.congr_fun h x
    rw [LinearMap.comp_apply, h0, map_zero] at this
    exact this.symm
  · funext x x'
    show b (A' _) (A' _) = b _ _
    rw [hA', hA']

theorem fix_of_mem {K : Subgroup G} (hr : ∀ κ ∈ K, ∀ x g, f x (g * κ) = f x g) {δ : G} (hδ : δ ∈ acts f)
    (h : ∀ i, δ ∈ cj K (p i).2) (b : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ) : δ • kn f b = kn f b := by
  obtain ⟨-, A, hA⟩ := hδ
  have e : A = LinearMap.id := LinearMap.ext_on_range hs fun i => by
    rw [← hA, LinearMap.id_apply, ← hr _ (mem_cj.1 (h i))]
    simp [mul_assoc]
  funext q x x'
  show b _ _ = b _ _
  rw [hA, hA, e]
  rfl

theorem finite_orbit [Finite ι] {K Γ : Subgroup G} (hK : ∀ x, (cj K x).relIndex K ≠ 0) (hr : ∀ κ ∈ K, ∀ x g, f x (g * κ) = f x g)
    (hΓ : Γ ≤ acts f) (hc : Cover Γ K) {b : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ} (hb : IsPos b) (hinv : ∀ γ ∈ Γ, γ • kn f b = kn f b) :
    Finite (MulAction.orbit (acts f) (kn f b)) := by
  obtain ⟨S, hS⟩ := hc.of_relIndex (Subgroup.relIndex_iInf_ne_zero fun i => hK (p i).2)
  choose s hs' γ κ hκ e using hS
  choose δ hδ using fun k : MulAction.orbit (acts f) (kn f b) => k.2
  refine Finite.of_injective (fun k => (⟨s (δ k : G)⁻¹, hs' _⟩ : S)) fun k k' h => Subtype.ext ?_
  have h1 : s (δ k : G)⁻¹ = s (δ k' : G)⁻¹ := congrArg Subtype.val h
  have h2 := e (δ k : G)⁻¹
  have h3 := e (δ k' : G)⁻¹
  rw [h1] at h2
  rw [← hδ k, ← hδ k']
  generalize γ (δ k : G)⁻¹ = a at h2
  generalize γ (δ k' : G)⁻¹ = a' at h3
  have h4 := hκ (δ k : G)⁻¹
  have h5 := hκ (δ k' : G)⁻¹
  generalize κ (δ k : G)⁻¹ = c at h2 h4
  generalize κ (δ k' : G)⁻¹ = c' at h3 h5
  generalize s (δ k' : G)⁻¹ = t at h2 h3
  have h6 : c⁻¹ * c' = δ k * (a * (a' : G)⁻¹) * (δ k' : G)⁻¹ := by
    rw [h3, inv_eq_iff_eq_inv.1 h2]; group
  have h7 : (δ k : G) = c⁻¹ * c' * δ k' * (a' * (a : G)⁻¹) := by rw [h6]; group
  obtain ⟨b', -, hb'⟩ := smul_kn_pos hs (δ k').2 hb
  show (δ k : G) • kn f b = (δ k' : G) • kn f b
  rw [h7, mul_smul, mul_smul, hinv _ (Γ.mul_mem a'.2 (Γ.inv_mem a.2)), ← hb']
  refine fix_of_mem hs hr ?_ (fun i => Subgroup.mem_iInf.1 (Subgroup.mul_mem _ (Subgroup.inv_mem _ h4) h5) i) b'
  rw [h6]
  exact Subgroup.mul_mem _ (Subgroup.mul_mem _ (δ k).2 (hΓ (Γ.mul_mem a.2 (Γ.inv_mem a'.2)))) (Subgroup.inv_mem _ (δ k').2)

theorem exists_form [Finite ι] {K Γ₁ Γ₂ : Subgroup G} (hK : ∀ x, (cj K x).relIndex K ≠ 0)
    (hr : ∀ κ ∈ K, ∀ x g, f x (g * κ) = f x g) (h₁ : Γ₁ ≤ acts f) (h₂ : Γ₂ ≤ acts f) (hc₁ : Cover Γ₁ K) (hc₂ : Cover Γ₂ K)
    (hf₁ : ∀ t, Finite (stabQ Γ₁ K t)) (hf₂ : ∀ t, Finite (stabQ Γ₂ K t)) {b : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ} (hb : IsPos b)
    (hinv : ∀ γ ∈ Γ₂, ∀ x x' g g', b (f x (γ * g)) (f x' (γ * g')) = b (f x g) (f x' g')) :
    ∃ (β : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ) (c : ℝ), IsPos β ∧ 0 < c ∧
      (∀ γ ∈ Γ₁, ∀ x x' g g', β (f x (γ * g)) (f x' (γ * g')) = β (f x g) (f x' g')) ∧
      ∀ x x', dsum Γ₂ K (fun g => b (f x g) (f x' g)) = c * dsum Γ₁ K fun g => β (f x g) (f x' g) := by
  have hinv' : ∀ γ ∈ Γ₂, γ • kn f b = kn f b := fun γ hγ => funext fun q => funext fun x => funext fun x' =>
    hinv _ (Γ₂.inv_mem hγ) x x' q.1 q.2
  haveI := finite_orbit hs hK hr h₂ hc₂ hb hinv'
  set O := MulAction.orbit (acts f) (kn f b) with hO
  haveI := Fintype.ofFinite O
  have hk₀ : kn f b ∈ O := MulAction.mem_orbit_self _
  choose δ hδ using fun k : O => k.2
  choose B hB eB using fun k : O => smul_kn_pos hs (δ k).2 hb
  have eB' : ∀ k, kn f (B k) = k := fun k => (eB k).trans (hδ k)
  have hβ : ∀ x x' g g', (∑ k, B k) (f x g) (f x' g') = ∑ k : O, (k : Kn G X) (g, g') x x' := fun x x' g g' => by
    rw [LinearMap.sum_apply, LinearMap.sum_apply]
    exact Finset.sum_congr rfl fun k _ => by rw [← eB' k]; rfl
  have hβinv : ∀ γ ∈ acts f, ∀ x x' g g', (∑ k, B k) (f x (γ * g)) (f x' (γ * g')) = (∑ k, B k) (f x g) (f x' g') := by
    intro γ hγ x x' g g'
    rw [hβ, hβ, ← Equiv.sum_comp (MulAction.toPerm (⟨γ, hγ⟩ : acts f))]
    refine Finset.sum_congr rfl fun k _ => ?_
    show (γ • (k : Kn G X)) (γ * g, γ * g') x x' = _
    simp [smul_kn]
  let Δ : Subgroup G := fixingSubgroup G O
  have hΔ : ∀ a, a ∈ Δ ↔ ∀ k ∈ O, a • k = k := fun a => mem_fixingSubgroup_iff G
  have hst : ∀ a ∈ acts f, ∀ k ∈ O, a • k ∈ O := fun a ha k hk => (((⟨a, ha⟩ : acts f) • (⟨k, hk⟩ : O) : O)).2
  have hc₃ : Cover (Γ₂ ⊓ Δ) K := hc₂.of_finite (fun γ (k : O) => (⟨(γ : G)⁻¹ • (k : Kn G X), hst _ (h₂ (Γ₂.inv_mem γ.2)) _ k.2⟩ : O))
    fun a a' e => ⟨Γ₂.mul_mem a.2 (Γ₂.inv_mem a'.2), (hΔ _).2 fun k hk => by
      have : (a : G)⁻¹ • k = (a' : G)⁻¹ • k := congrArg Subtype.val (congrFun e ⟨k, hk⟩)
      rw [mul_smul, ← this, smul_inv_smul]⟩
  have hf₃ : ∀ t, Finite (stabQ (Γ₂ ⊓ Δ) K t) := fun t => finite_stab_mono inf_le_left le_rfl t (hf₂ t)
  have hl₀ : ∀ x x', ∀ γ ∈ Γ₂, ∀ g, b (f x (γ * g)) (f x' (γ * g)) = b (f x g) (f x' g) := fun x x' γ hγ g => hinv γ hγ x x' g g
  have hr₀ : ∀ (b : W →ₗ⋆[ℂ] W →ₗ[ℂ] ℂ) x x', ∀ κ ∈ K, ∀ g, b (f x (g * κ)) (f x' (g * κ)) = b (f x g) (f x' g) :=
    fun b x x' κ hκ g => by rw [hr κ hκ, hr κ hκ]
  have hk : ∀ k : O, ∃ c : ℝ, 0 < c ∧ ∀ x x', dsum (Γ₂ ⊓ Δ) K (fun g => (k : Kn G X) (g, g) x x') =
      c * dsum (Γ₂ ⊓ Δ) K fun g => b (f x g) (f x' g) := by
    intro k
    obtain ⟨T, hT⟩ := hc₃.reps
    have hc₄ := (reps_conj hT (δ k) 1).cover
    rw [cj_one] at hc₄
    obtain ⟨c, hc, e⟩ := dsum_prop (Δ := Δ) hK inf_le_right (fun a ha => (hΔ _).2 fun k' hk' => by
        have := (hΔ _).1 (mem_cj.1 ha).2 _ (hst _ (Subgroup.inv_mem _ (δ k).2) _ hk')
        rw [mul_smul, smul_inv_smul, mul_smul] at this
        exact smul_left_cancel _ this) hc₃ hc₄ hf₃ (fun t => by
        have := (stabConj (Γ₂ ⊓ Δ) K (δ k) 1 ((δ k : G)⁻¹ * t)).finite_iff.2 (hf₃ _)
        rwa [cj_one, inv_one, mul_one, mul_inv_cancel_left] at this)
    refine ⟨c, hc, fun x x' => ?_⟩
    rw [e _ (fun a ha g => ?_) (fun κ hκ g => ?_), ← dsum_conj hc₃ (fun γ => hl₀ x x' γ γ.2.1) (hr₀ b x x') (δ k) 1, cj_one]
    · congr 2
      funext g
      rw [← hδ k, mul_one]
      rfl
    · conv_rhs => rw [← (hΔ _).1 (Δ.inv_mem ha) k k.2]
      simp [smul_kn]
    · rw [← eB' k]
      exact hr₀ _ x x' κ hκ g
  choose c hc ec using hk
  obtain ⟨c₁, hc₁', e₁⟩ := dsum_prop hK (inf_le_left.trans h₂) h₁ hc₃ hc₁ hf₃ hf₁
  obtain ⟨c₂, hc₂', e₂⟩ := dsum_prop hK le_rfl inf_le_left hc₂ hc₃ hf₂ hf₃
  have hpos : 0 < ∑ k, c k := Finset.sum_pos (fun k _ => hc k) ⟨⟨_, hk₀⟩, Finset.mem_univ _⟩
  refine ⟨∑ k, B k, c₂ * c₁ / ∑ k, c k, ⟨fun x y => ?_, fun x hx => ?_⟩, by positivity, fun γ hγ => hβinv γ (h₁ hγ), fun x x' => ?_⟩

  · simp only [LinearMap.sum_apply, map_sum]
    exact Finset.sum_congr rfl fun k _ => (hB k).1 x y
  · simp only [LinearMap.sum_apply, Complex.re_sum]
    exact Finset.sum_pos (fun k _ => (hB k).2 x hx) ⟨⟨_, hk₀⟩, Finset.mem_univ _⟩
  · have e₃ := e₁ (fun g => (∑ k, B k) (f x g) (f x' g)) (fun a ha g => hβinv a ha x x' g g) (hr₀ _ x x')
    have e₄ : dsum (Γ₂ ⊓ Δ) K (fun g => (∑ k, B k) (f x g) (f x' g)) =
        ((∑ k, c k : ℝ) : ℂ) * dsum (Γ₂ ⊓ Δ) K fun g => b (f x g) (f x' g) := by
      simp_rw [hβ]
      rw [dsum_sum, Complex.ofReal_sum, Finset.sum_mul]
      exact Finset.sum_congr rfl fun k _ => ec k x x'
    have hne : ((∑ k, c k : ℝ) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.2 hpos.ne'
    rw [e₂ _ (hl₀ x x') (hr₀ b x x'), Complex.ofReal_div, Complex.ofReal_mul, div_mul_eq_mul_div, mul_assoc, ← e₃, e₄]
    field_simp

end Span

end GlobalTheory.TwoLattices

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabMono =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabFrame =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabFrame", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameEquivApply\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexCj\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexNeZeroOfCover\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.AddCharThetaLawRearrangementIdentity\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DoubleCosetMassEqRelIndexMulMass\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinsetDoubleCosetsConjMaxCompact\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsInvariantHermitianWeightForm\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteIndexConj\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteRationalConjMemBoundedCompact\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabMono\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelIndexNeZeroOfReps\nimport Formalism.LocalToGlobal.IndefiniteReal.TopMult\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MemStdLatticeIffIntegralCoords\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev
  Formalism.AUTREP NumberField IsDedekindDomain GlobalTheory.CoefDuty GlobalTheory.TwoLattices GlobalTheory.ClassRefine GlobalTheory.ClassPet
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.FormInner

theorem wsum_transport {A G Γ W I : Type} [Group A] [Group G] [Group Γ] [NormedAddCommGroup W] [InnerProductSpace ℂ W] [Fintype I]
    (ι : Γ →* G) (hι : Function.Injective ι) (φ : A ≃* G) (J : Subgroup G) (y : I → G) (hy : Formalism.IndefR.Bridge.IsReps ι J y) :
    ∃ T, Reps (ι.range.comap φ.toMonoidHom) (J.comap φ.toMonoidHom) T ∧ ∀ F F' : G → W,
      wsum (ι.range.comap φ.toMonoidHom) (J.comap φ.toMonoidHom) T (fun g => inner ℂ (F (φ g)) (F' (φ g))) =
        Formalism.IndefR.Bridge.adInner ι J y F F' := by
  classical
  have hinj : Function.Injective fun i => φ.symm (y i) := fun i j e => by
    have e' : y i = y j := φ.symm.injective e
    exact (hy (y i)).unique ⟨1, 1, by simp⟩ ⟨1, 1, by simp [e']⟩
  have key : ∀ g i, (∃ (γ : ι.range.comap φ.toMonoidHom) (κ : A), κ ∈ J.comap φ.toMonoidHom ∧ g = (γ : A) * φ.symm (y i) * κ) ↔
      ∃ (γ : Γ) (k : J), φ g = ι γ * y i * k := fun g i => by
    constructor
    · rintro ⟨γ, κ, hκ, rfl⟩
      obtain ⟨δ, hδ⟩ := γ.2
      exact ⟨δ, ⟨φ κ, hκ⟩, by simp [hδ]⟩
    · rintro ⟨γ, k, e⟩
      refine ⟨⟨φ.symm (ι γ), ⟨γ, by simp⟩⟩, φ.symm k, by simp, φ.injective (by simp [e])⟩
  refine ⟨Finset.univ.image fun i => φ.symm (y i), fun g => ?_, fun F F' => ?_⟩
  · obtain ⟨i, hi, hu⟩ := hy (φ g)
    refine ⟨φ.symm (y i), ⟨Finset.mem_image_of_mem _ (Finset.mem_univ _), (key g i).2 hi⟩, ?_⟩
    rintro t ⟨ht, h⟩
    obtain ⟨j, -, rfl⟩ := Finset.mem_image.1 ht
    rw [hu j ((key g j).1 h)]
  · rw [wsum, Finset.sum_image fun i _ j _ e => hinj e, Formalism.IndefR.Bridge.adInner]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [MulEquiv.apply_symm_apply]
    congr 3
    symm
    refine Nat.card_congr (Equiv.ofBijective (fun δ : Formalism.IndefR.Bridge.stab ι J (y i) =>
      (⟨⟨φ.symm (ι δ), ⟨δ, by simp⟩⟩, mem_stabQ.2 (by simpa using (Formalism.IndefR.Bridge.mem_stab ι).1 δ.2)⟩ :
        stabQ (ι.range.comap φ.toMonoidHom) (J.comap φ.toMonoidHom) (φ.symm (y i)))) ⟨fun δ δ' e => ?_, fun γ => ?_⟩)
    · exact Subtype.ext (hι (φ.symm.injective (congrArg (fun z => (z.1 : A)) e)))
    · obtain ⟨δ, hδ⟩ := γ.1.2
      refine ⟨⟨δ, (Formalism.IndefR.Bridge.mem_stab ι).2 ?_⟩, Subtype.ext (Subtype.ext (by simp [hδ]))⟩
      simpa [hδ] using mem_stabQ.1 γ.2

section Std

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

theorem relIndex_ne_zero_of_cover' {G : Type} [Group G] {H K : Subgroup G} (F : Finset G) (hF : ∀ κ ∈ K, ∃ f ∈ F, f⁻¹ * κ ∈ H) :
    H.relIndex K ≠ 0 := by
  classical
  have : ∀ f₀ ∈ F, ∃ u, (∃ κ ∈ K, f₀⁻¹ * κ ∈ H) → u ∈ K ∧ f₀⁻¹ * u ∈ H := fun f₀ _ => by
    by_cases h : ∃ κ ∈ K, f₀⁻¹ * κ ∈ H
    · obtain ⟨u, hu⟩ := h
      exact ⟨u, fun _ => hu⟩
    · exact ⟨1, fun h' => absurd h' h⟩
  choose! u hu using this
  rw [← Subgroup.inf_relIndex_right]
  refine relIndex_ne_zero_of_cover (F.image u) (fun κ hκ => ?_) inf_le_right
  obtain ⟨f₀, h₀, h₁⟩ := hF κ hκ
  obtain ⟨h2, h3⟩ := hu f₀ h₀ ⟨κ, hκ, h₁⟩
  refine ⟨u f₀, Finset.mem_image_of_mem _ h₀, ?_, K.mul_mem (K.inv_mem h2) hκ⟩
  have := H.mul_mem (H.inv_mem h3) h₁
  simpa [mul_assoc] using this

theorem bounded_of_le {J : Subgroup (GAf L n)} (h : J ≤ ReciprocityTheory.Aut.Umax L n) : IsBounded J :=
  ⟨{1}, fun κ hκ => ⟨1, by simp, by simpa using h hκ⟩⟩

theorem congSub_relIndex {J : Subgroup (GAf L n)} (hJ : IsBounded J) {N : ℕ} (hN : 0 < N) : (congSub L n N).relIndex J ≠ 0 := by
  obtain ⟨F, hF⟩ := (GlobalTheory.CongIndex.finite_index_conj L n J hJ 1 N hN).2.1
  exact relIndex_ne_zero_of_cover' F hF

theorem relIndex_of_le {G : Type} [Group G] {H H' K : Subgroup G} (h : H ≤ H') (hne : H.relIndex K ≠ 0) : H'.relIndex K ≠ 0 :=
  fun h0 => hne (Subgroup.relIndex_eq_zero_of_le_left h h0)

theorem relIndex_of_le' {G : Type} [Group G] {H K K' : Subgroup G} (h : K' ≤ K) (hne : H.relIndex K ≠ 0) : H.relIndex K' ≠ 0 :=
  fun h0 => hne (Subgroup.relIndex_eq_zero_of_le_right h h0)

theorem cj_relIndex {K : Subgroup (GAf L n)} (hle : K ≤ ReciprocityTheory.Aut.Umax L n) (hne : K.relIndex (ReciprocityTheory.Aut.Umax L n) ≠ 0) (x) :
    (TwoLattices.cj K x).relIndex K ≠ 0 := by
  obtain ⟨N, hN, h⟩ := (GlobalTheory.CongIndex.finite_index_conj L n _ (bounded_of_le le_rfl) x 1 one_pos).1
  have h1 : (TwoLattices.cj (ReciprocityTheory.Aut.Umax L n) x).relIndex (ReciprocityTheory.Aut.Umax L n) ≠ 0 :=
    relIndex_of_le (fun κ hκ => mem_cj.2 (h κ hκ).1) (congSub_relIndex (bounded_of_le le_rfl) hN)
  have h2 : (TwoLattices.cj K x).relIndex (TwoLattices.cj (ReciprocityTheory.Aut.Umax L n) x) ≠ 0 := by
    rw [TwoLattices.cj, TwoLattices.cj, Subgroup.relIndex_comap, Subgroup.map_comap_eq_self_of_surjective (MulAut.conj x⁻¹).surjective]
    exact hne
  exact relIndex_of_le' hle (Subgroup.relIndex_ne_zero_trans h2 h1)

theorem cover_umax : Cover (ReciprocityTheory.Aut.GQ L n) (ReciprocityTheory.Aut.Umax L n) := by
  obtain ⟨T, hT⟩ := GlobalTheory.ClassFinConj.exists_finset_double_cosets_conj L n 1
  exact ⟨T, fun g => by obtain ⟨γ, hγ, t, ht, κ, hκ, e⟩ := hT g; exact ⟨t, ht, ⟨γ, hγ⟩, κ, hκ.1, e⟩⟩

theorem finite_stabQ {J : Subgroup (GAf L n)} (hJ : IsBounded J) (t) : Finite (stabQ (ReciprocityTheory.Aut.GQ L n) J t) :=
  (Equiv.subtypeEquivRight fun _ => mem_stabQ).finite_iff.2 (GlobalTheory.StabFin.finite_conj_mem L n J hJ t)

theorem relIndex_of_cover {G : Type} [Group G] {Γ K U : Subgroup G} (hle : K ≤ U) (hc : Cover Γ K)
    (hf : ∀ t, Finite (stabQ Γ U t)) : K.relIndex U ≠ 0 := by
  obtain ⟨S, hS⟩ := hc
  refine (GlobalTheory.UnimodMass.mass_eq_relIndex_mul Γ K U hle (GlobalTheory.UnimodMass.finite_dc_of_cover ⟨S, fun g => ?_⟩)
    fun t => (Equiv.subtypeEquivRight fun _ => mem_stabQ).finite_iff.1 (hf t)).1
  obtain ⟨s, hs, γ, κ, hκ, e⟩ := hS g
  exact ⟨γ, γ.2, s, hs, κ, hκ, e⟩

theorem classSum_eq_wsum (a : NG.AlgWt L n) (β : a.W →ₗ⋆[ℂ] a.W →ₗ[ℂ] ℂ) (J : Subgroup (GAf L n)) (T : Finset (GAf L n))
    (f f' : GAf L n → a.W) : classSum a β J T f f' = wsum (ReciprocityTheory.Aut.GQ L n) J T fun g => β (f g) (f' g) := by
  simp only [classSum, wsum, card_stabQ_eq]

theorem span_values (a : NG.AlgWt L n) {f : GAf L n → a.W} (hf : f ∈ NG.AFall L n a.ρ) (h₀ : f ≠ 0) :
    Submodule.span ℂ (Set.range f) = ⊤ := by
  let U : Subrepresentation a.ρ := ⟨Submodule.span ℂ (Set.range f), fun g w hw => by
    refine Submodule.span_induction (p := fun w _ => a.ρ g w ∈ Submodule.span ℂ (Set.range f)) ?_ ?_ ?_ ?_ hw
    · rintro _ ⟨h, rfl⟩
      exact Submodule.subset_span ⟨g * h, hf.1 g h⟩
    · simp
    · intro a b _ _ ha hb
      rw [map_add]; exact add_mem ha hb
    · intro c a _ ha
      rw [map_smul]; exact Submodule.smul_mem _ c ha⟩
  have hU : U = ⊤ := by
    haveI := a.irr
    refine (eq_bot_or_eq_top U).resolve_left fun hb => h₀ ?_
    funext g
    have : f g ∈ U.toSubmodule := Submodule.subset_span ⟨g, rfl⟩
    rw [hb] at this
    exact this
  exact congrArg Subrepresentation.toSubmodule hU

theorem span_finite_values (a : NG.AlgWt L n) {f : GAf L n → a.W} (hf : f ∈ NG.AFall L n a.ρ) (h₀ : f ≠ 0) :
    ∃ (m : ℕ) (g : Fin m → GAf L n), Submodule.span ℂ (Set.range fun i => f (g i)) = ⊤ := by
  obtain ⟨_, ι, _, _, b, -⟩ := a.alg
  haveI : Module.Finite ℂ a.W := Module.Finite.of_basis b
  have h := span_values a hf h₀
  obtain ⟨s, hs, hsp, hli⟩ := exists_linearIndependent ℂ (Set.range f)
  haveI : Finite s := hli.finite
  obtain ⟨m, ⟨e⟩⟩ := Finite.exists_equiv_fin s
  choose g hg using fun v : s => hs v.2
  refine ⟨m, fun i => g (e.symm i), ?_⟩
  rw [← h, ← hsp]
  congr 1
  ext v
  exact ⟨by rintro ⟨i, rfl⟩; simp only [hg]; exact (e.symm i).2, fun hv => ⟨e ⟨v, hv⟩, by simp [hg]⟩⟩

end Std

variable {D : D7} {μ : D.what₂.Tup} {j : ℕ} (X : MtReal D μ j) {G Γ W : Type} [Group G] [Group Γ] [NormedAddCommGroup W]
  [InnerProductSpace ℂ W] (ι : Γ →* G) (φ : GAf D.host.E D.R.nV ≃* G) (ρ : Γ →* Module.End ℂ W) (J : Subgroup G) (χ : J →* ℂˣ)
  (e : X.wt.W ≃ₗ[ℂ] W) (Fm : D.what₂.Mt μ j → G → W)

theorem classSum_of_frame {I : Type} [Fintype I] (y : I → G) (hy : Bridge.IsReps ι J y) (hι : Function.Injective ι)
    (hfin : ∀ t, Finite (stabQ (ι.range.comap φ.toMonoidHom) (ReciprocityTheory.Aut.Umax D.host.E D.R.nV) t))
    (hρ : ∀ δ (a b : W), inner ℂ (ρ δ a) (ρ δ b) = inner ℂ a b)
    (hJ : J.comap φ.toMonoidHom ≤ ReciprocityTheory.Aut.Umax D.host.E D.R.nV) (hX : IsBounded X.J)
    (hFm : ∀ x, Fm x ∈ Bridge.AdForms ι ρ J χ) (hread : ∀ x g, e (X.real x g) = Fm x (φ g))
    (c : ℝ) (hc : 0 < c) (hip : ∀ x x' : D.what₂.Mt μ j, inner ℂ x x' = (c : ℂ) * Bridge.adInner ι J y (Fm x) (Fm x')) :
    ClassSum X := by
  have hA : ∀ x, X.real x ∈ NG.TypeSp X.wt.ρ X.J X.χ := fun x => X.real_range ▸ LinearMap.mem_range_self _ x
  obtain ⟨N, hN, hNJ⟩ := X.J_open
  obtain ⟨T', hT', htr⟩ := wsum_transport (W := W) ι hι φ J y hy
  set Γ₂ := ι.range.comap φ.toMonoidHom with hΓ₂
  set J₂ := J.comap φ.toMonoidHom with hJ₂
  have hNU := congSub_relIndex (bounded_of_le (le_refl (ReciprocityTheory.Aut.Umax D.host.E D.R.nV))) hN
  have hJU : J₂.relIndex (ReciprocityTheory.Aut.Umax D.host.E D.R.nV) ≠ 0 := relIndex_of_cover hJ hT'.cover hfin
  set K := congSub D.host.E D.R.nV N ⊓ J₂ with hK
  have hKU : K.relIndex (ReciprocityTheory.Aut.Umax D.host.E D.R.nV) ≠ 0 := Subgroup.relIndex_inf_ne_zero hNU hJU
  have hKle : K ≤ ReciprocityTheory.Aut.Umax D.host.E D.R.nV := inf_le_right.trans hJ
  have hKJ : K ≤ X.J := fun κ hκ => (hNJ κ hκ.1).1
  have hc₁ : Cover (ReciprocityTheory.Aut.GQ D.host.E D.R.nV) K := cover_umax.of_relIndex hKU
  have hK₁ : K.relIndex X.J ≠ 0 := relIndex_of_cover hKJ hc₁ (finite_stabQ hX)
  have hK₂ : K.relIndex J₂ ≠ 0 := relIndex_of_le' hJ hKU
  have hc₂ : Cover Γ₂ K := hT'.cover.of_relIndex hK₂
  obtain ⟨T, hT⟩ := (hc₁.mono hKJ).reps
  refine ⟨hX, ?_⟩
  by_cases hz : ∀ x : D.what₂.Mt μ j, x = 0
  · obtain ⟨β, hβ⟩ := GlobalTheory.InvFormBdd.exists_isInvForm _ _ X.wt
    refine ⟨β, T, 1, hβ, hT, one_pos, fun x x' => ?_⟩
    rw [hz x]
    simp [classSum]
  obtain ⟨x₀, h₀⟩ := not_forall.1 hz
  obtain ⟨m, g, hg⟩ := span_finite_values X.wt (hA x₀).1 fun h => h₀ (X.real_inj (by rw [h, map_zero]))
  have hl₂ : ∀ δ γ, ι δ = φ γ → ∀ x g, e (X.real x (γ * g)) = ρ δ (e (X.real x g)) := fun δ γ h x g => by
    have := hFm x δ (φ g) 1
    rw [hread, hread, map_mul, ← h]
    simpa using this
  have hinv : ∀ γ ∈ Γ₂, ∀ x x' g g', pullForm X e (X.real x (γ * g)) (X.real x' (γ * g')) =
      pullForm X e (X.real x g) (X.real x' g') := by
    rintro γ ⟨δ, hδ⟩ x x' g g'
    rw [pullForm_apply, pullForm_apply, hl₂ δ γ hδ, hl₂ δ γ hδ, hρ]
  obtain ⟨β, c', hβ, hc', hβ₁, hsum⟩ := exists_form (f := fun x => X.real x) (p := fun i => (x₀, g i)) hg
    (cj_relIndex hKle hKU) (fun κ hκ x g => by
      obtain ⟨h1, h2⟩ := hNJ κ hκ.1
      have := congrFun ((hA x).2 ⟨κ, h1⟩) g
      rw [h2, Units.val_one, one_smul] at this
      exact this)
    (le_acts fun γ hγ => ⟨X.wt.ρ ⟨γ, hγ⟩, fun x g => (hA x).1.1 ⟨γ, hγ⟩ g⟩)
    (le_acts (Γ := Γ₂) fun γ ⟨δ, hδ⟩ => ⟨e.symm.toLinearMap ∘ₗ ρ δ ∘ₗ e.toLinearMap, fun x g => e.injective (by
      rw [hl₂ δ γ hδ]; simp)⟩)
    hc₁ hc₂ (finite_stabQ (bounded_of_le hKle)) (fun t => finite_stab_mono le_rfl hKle t (hfin t)) (b := pullForm X e)
    ⟨fun a b => by rw [pullForm_apply, pullForm_apply, inner_conj_symm], fun a ha => by
      rw [pullForm_apply]
      exact (re_inner_self_pos (𝕜 := ℂ) (x := e a)).2 (fun h => ha (e.map_eq_zero_iff.1 h))⟩ hinv
  have hβ' : IsInvForm X.wt β := by
    refine ⟨hβ.1, hβ.2, fun γ a b => ?_⟩
    have : (β.comp (X.wt.ρ γ)).compl₂ (X.wt.ρ γ) = β := LinearMap.ext_on_range hg fun i => LinearMap.ext_on_range hg fun k => by
      show β (X.wt.ρ γ _) (X.wt.ρ γ _) = _
      rw [← (hA x₀).1.1, ← (hA x₀).1.1]
      exact hβ₁ γ γ.2 x₀ x₀ _ _
    exact LinearMap.congr_fun₂ this a b
  have hB : ∀ x, X.real x ∈ NG.TypeSp X.wt.ρ J₂ (χ.comp (φ.toMonoidHom.subgroupComap J)) := fun x =>
    ⟨(hA x).1, fun κ => funext fun g => e.injective (by
      have := hFm x 1 (φ g) ⟨φ κ, κ.2⟩
      show e (X.real x (g * κ)) = e (((χ ⟨φ κ, κ.2⟩ : ℂˣ) : ℂ) • X.real x g)
      rw [map_smul, hread, hread, map_mul]
      simpa using this)⟩
  have p₁ : (0 : ℝ) < K.relIndex X.J := Nat.cast_pos.2 (Nat.pos_of_ne_zero hK₁)
  have p₂ : (0 : ℝ) < K.relIndex J₂ := Nat.cast_pos.2 (Nat.pos_of_ne_zero hK₂)
  refine ⟨β, T, c * (c' * K.relIndex X.J / K.relIndex J₂), hβ', hT, by positivity, fun x x' => ?_⟩
  have r₁ := form_inv β hX (hA x) (hA x')
  have r₂ := form_inv (pullForm X e) (bounded_of_le hJ) (hB x) (hB x')
  have l₁ : ∀ (γ : ReciprocityTheory.Aut.GQ D.host.E D.R.nV) g, β (X.real x (γ * g)) (X.real x' (γ * g)) = β (X.real x g) (X.real x' g) :=
    fun γ g => hβ₁ γ γ.2 x x' g g
  have l₂ : ∀ (γ : Γ₂) g, pullForm X e (X.real x (γ * g)) (X.real x' (γ * g)) = pullForm X e (X.real x g) (X.real x' g) :=
    fun γ g => hinv γ γ.2 x x' g g
  have e₀ := hsum x x'
  rw [dsum_index inf_le_right hK₂ hc₂ l₂ r₂, dsum_index hKJ hK₁ hc₁ l₁ r₁, dsum_eq hT' l₂ r₂, dsum_eq hT l₁ r₁] at e₀
  simp only [pullForm_apply, hread] at e₀
  have n₂ : ((K.relIndex J₂ : ℕ) : ℂ) ≠ 0 := Nat.cast_ne_zero.2 hK₂
  rw [hip, ← htr, classSum_eq_wsum, eq_div_of_mul_eq n₂ ((mul_comm _ _).trans e₀)]
  push_cast
  ring

theorem finite_stab_frame {V : HSp D} {n : ℕ} (hV : GlobalTheory.StdFrame.OrthFrame V) {hF : D.host.F = maximalRealSubfield D.host.E}
    {P : principalLevelFrame.RowPsi V n} (hP : GlobalTheory.Mem.R3.StdFrame hF P) (t) :
    Finite (stabQ ((Bridge.ratF V).range.comap (frameEquiv P).toMonoidHom) (ReciprocityTheory.Aut.Umax D.host.E n) t) := by
  let P₀ := GlobalTheory.StdFrameModel.unitPsi hV.gram_eq
  have h₀ := (GlobalTheory.StdFrameModel.stdPsi_unitPsi hV).2
  have hrat : RatFrame P₀ := fun g => by simpa using GlobalTheory.NJoin.Inh.rat_unit hV.gram_eq g
  let θ := (frameEquiv P).trans (frameEquiv P₀).symm
  have hθ : ∀ κ, frameEquiv P₀ (θ κ) = frameEquiv P κ := fun κ => (frameEquiv P₀).apply_symm_apply _
  have hU : ∀ κ ∈ ReciprocityTheory.Aut.Umax D.host.E n, θ κ ∈ ReciprocityTheory.Aut.Umax D.host.E V.rank := fun κ hκ => by
    rw [h₀, TopMult.lift_unique (P₀.into (θ κ)) (P.into κ) (hθ κ)]
    exact (hP.2 κ).1 hκ
  haveI := finite_stabQ (bounded_of_le (le_refl (ReciprocityTheory.Aut.Umax D.host.E V.rank))) (θ t)
  refine Finite.of_injective (β := stabQ (ReciprocityTheory.Aut.GQ D.host.E V.rank) (ReciprocityTheory.Aut.Umax D.host.E V.rank) (θ t))
    (fun γ => ⟨⟨θ γ.1, (hrat.iff _).2 (by rw [hθ]; exact γ.1.2)⟩, mem_stabQ.2 (by simpa using hU _ (mem_stabQ.1 γ.2))⟩)
    fun a b h => Subtype.ext (Subtype.ext (θ.injective (congrArg (fun z => (z.1 : GAf D.host.E V.rank)) h)))

end GlobalTheory.FormInner

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabFrame =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRows =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRows", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrameEquivApply\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SubsetTwistExceptionalPlaces\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef\npublic import Development.AbelianVarietyTheory.Counterexamples.DegenerateExamples.NotVstdOfGramOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsInvariantHermitianWeightForm\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSplitOfGPl\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteStabFrame\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EventuallyDefiniteSpacesStandardAndLarge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev
  Formalism.IndefR.RecTie Formalism.AUTREP NumberField IsDedekindDomain GlobalTheory.CoefDuty GlobalTheory.Mem GlobalTheory.Mem.R3 GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section


namespace GlobalTheory.FormInner

theorem ipVia_apply {H N : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [AddCommGroup N] [Module ℂ N]
    (e : H →ₗ[ℂ] N) (he : Function.Injective e) (u v : H) : ipVia e (e u) (e v) = ⟪u, v⟫_ℂ := by
  unfold ipVia
  split_ifs with h
  · rw [he h.1.choose_spec, he h.2.choose_spec]
  · exact absurd ⟨⟨u, rfl⟩, ⟨v, rfl⟩⟩ h

section Gen

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat3 D A3 Ks} {F : Face3 D A3} {X0 : BaseLevelRowSide D}

theorem classSum_of_ad (Y : R3.Read (A3 := A3) R.toRealDat F.lv2 X0) (hM : R.toRealDat.IsModels)
    (hB : ∀ i, IsBaseFrame (Vc D i) (R.βV i) (R.ΛV i) 1) {M : MtFam D} (ad : MtAd Y M) (hrat : ∀ i, RatFrame (ad.PV i))
    (μ : D.what₂.Tup) (hμ : Used0 D μ) (i : Fin D.R.m) (hX : IsBounded (M μ (i.1 + 1) (by omega) (by omega)).J) :
    ClassSum (M μ (i.1 + 1) (by omega) (by omega)) := by
  classical
  set t := Y.tupT μ
  have hHV := hM.HV i t
  have hcV := hM.cV i
  have hrange : ∀ x : D.what₂.Mt μ (i.1 + 1), ∃ h, R.toRealDat.extV i t h = (Y.IL.jMt μ hμ i x).1 := fun x =>
    ((Y.IL.jMt μ hμ i x).2.1 : _)
  choose hv hhv using hrange
  let Fm : D.what₂.Mt μ (i.1 + 1) → Bridge.Gf (Vc D i) → (R.cV i).W := fun x => (R.HV i t).e (hv x)
  have hFm : ∀ x, Fm x ∈ Bridge.AdForms (Bridge.ratF (Vc D i)) (R.cV i).coef.ρ (levEnv _ (R.βV i) (R.datVt i t)).J
      (levEnv _ (R.βV i) (R.datVt i t)).χ := fun x => hHV.2.1 ▸ LinearMap.mem_range_self _ _
  have hread : ∀ x g, ad.eW μ hμ i ((M μ (i.1 + 1) (by omega) (by omega)).real x g) = Fm x (frameEquiv (ad.PV i) g) := by
    intro x g
    rw [ad.read, ← hhv]
    show (R.cV i).ρ ((ad.PV i).ψ g)⁻¹ (Fm x ((finHom (Vc D i)).rangeRestrict ((ad.PV i).ψ g))) = _
    rw [hcV.1 _ ((GfC (Vc D i)).inv_mem ((ad.PV i).into g))]
    rfl
  have hip : ∀ x x' : D.what₂.Mt μ (i.1 + 1), inner ℂ x x' = (((RealDat.nP F.lv2 false)⁻¹ : ℝ) : ℂ) *
      Bridge.adInner (Bridge.ratF (Vc D i)) (levEnv _ (R.βV i) (R.datVt i t)).J (R.B.L i t).pres.y (Fm x) (Fm x') := by
    intro x x'
    rw [Y.tied.lift.mt μ hμ i x x']
    show (((RealDat.nP F.lv2 false)⁻¹ : ℝ) : ℂ) * ipVia (R.toRealDat.extV i t) (Y.IL.jMt μ hμ i x).1 (Y.IL.jMt μ hμ i x').1 = _
    rw [← hhv, ← hhv, ipVia_apply _ (Y.hinj i t), hHV.2.2]
  have hnP : 0 < (RealDat.nP F.lv2 false)⁻¹ := by
    unfold RealDat.nP
    exact inv_pos.2 (Nat.cast_pos.2 Nat.card_pos)
  exact classSum_of_read (M μ (i.1 + 1) (by omega) (by omega)) (Bridge.ratF (Vc D i)) (frameEquiv (ad.PV i))
    (R.cV i).coef.ρ _ (levEnv _ (R.βV i) (R.datVt i t)).χ (ad.eW μ hμ i) Fm (R.B.L i t).pres.y (R.B.L i t).pres.reps
    (ratF_injective _) (RatFrame.iff (hrat i)) (fun δ a b => hcV.2.1 _ a b)
    ⟨{1}, fun κ hκ => ⟨1, by simp, by simpa using comap_le_Umax (ad.std i) (hB i) (R.datVt i t) hκ⟩⟩ hX hFm
    hread _ hnP hip (fun _ => GlobalTheory.InvFormBdd.exists_isInvForm _ _ _)

theorem classSum_of_std (Y : R3.Read (A3 := A3) R.toRealDat F.lv2 X0) (hM : R.toRealDat.IsModels)
    (hB : ∀ i, IsBaseFrame (Vc D i) (R.βV i) (R.ΛV i) 1) {M : MtFam D} (ad : MtAd Y M) (hV : ∀ i, GlobalTheory.StdFrame.OrthFrame (Vc D i))
    (μ : D.what₂.Tup) (hμ : Used0 D μ) (i : Fin D.R.m) (hX : IsBounded (M μ (i.1 + 1) (by omega) (by omega)).J) :
    ClassSum (M μ (i.1 + 1) (by omega) (by omega)) := by
  classical
  set t := Y.tupT μ
  have hHV := hM.HV i t
  have hcV := hM.cV i
  have hrange : ∀ x : D.what₂.Mt μ (i.1 + 1), ∃ h, R.toRealDat.extV i t h = (Y.IL.jMt μ hμ i x).1 := fun x =>
    ((Y.IL.jMt μ hμ i x).2.1 : _)
  choose hv hhv using hrange
  let Fm : D.what₂.Mt μ (i.1 + 1) → Bridge.Gf (Vc D i) → (R.cV i).W := fun x => (R.HV i t).e (hv x)
  have hFm : ∀ x, Fm x ∈ Bridge.AdForms (Bridge.ratF (Vc D i)) (R.cV i).coef.ρ (levEnv _ (R.βV i) (R.datVt i t)).J
      (levEnv _ (R.βV i) (R.datVt i t)).χ := fun x => hHV.2.1 ▸ LinearMap.mem_range_self _ _
  have hread : ∀ x g, ad.eW μ hμ i ((M μ (i.1 + 1) (by omega) (by omega)).real x g) = Fm x (frameEquiv (ad.PV i) g) := by
    intro x g
    rw [ad.read, ← hhv]
    show (R.cV i).ρ ((ad.PV i).ψ g)⁻¹ (Fm x ((finHom (Vc D i)).rangeRestrict ((ad.PV i).ψ g))) = _
    rw [hcV.1 _ ((GfC (Vc D i)).inv_mem ((ad.PV i).into g))]
    rfl
  have hip : ∀ x x' : D.what₂.Mt μ (i.1 + 1), inner ℂ x x' = (((RealDat.nP F.lv2 false)⁻¹ : ℝ) : ℂ) *
      Bridge.adInner (Bridge.ratF (Vc D i)) (levEnv _ (R.βV i) (R.datVt i t)).J (R.B.L i t).pres.y (Fm x) (Fm x') := by
    intro x x'
    rw [Y.tied.lift.mt μ hμ i x x']
    show (((RealDat.nP F.lv2 false)⁻¹ : ℝ) : ℂ) * ipVia (R.toRealDat.extV i t) (Y.IL.jMt μ hμ i x).1 (Y.IL.jMt μ hμ i x').1 = _
    rw [← hhv, ← hhv, ipVia_apply _ (Y.hinj i t), hHV.2.2]
  have hnP : 0 < (RealDat.nP F.lv2 false)⁻¹ := by
    unfold RealDat.nP
    exact inv_pos.2 (Nat.cast_pos.2 Nat.card_pos)
  exact classSum_of_frame (M μ (i.1 + 1) (by omega) (by omega)) (Bridge.ratF (Vc D i)) (frameEquiv (ad.PV i))
    (R.cV i).coef.ρ _ (levEnv _ (R.βV i) (R.datVt i t)).χ (ad.eW μ hμ i) Fm (R.B.L i t).pres.y (R.B.L i t).pres.reps
    (ratF_injective _) (finite_stab_frame (hV i) (ad.std i)) (fun δ a b => hcV.2.1 _ a b)
    (comap_le_Umax (ad.std i) (hB i) (R.datVt i t)) hX hFm
    hread _ hnP hip

theorem classSum_twisted_std (Y : R3.Read (A3 := A3) R.toRealDat F.lv2 X0) (hM : R.toRealDat.IsModels)
    (hB : ∀ i, IsBaseFrame (Vc D i) (R.βV i) (R.ΛV i) 1) {M : MtFam D} (ad : MtAd Y M) (hV : ∀ i, GlobalTheory.StdFrame.OrthFrame (Vc D i))
    {tup : D.what₂.Tup → Fin D.R.m → Formalism.L2.Host.HChar D.host.E} {Q : D.what₂.places.Pl → Finset (PlE D.host)}
    (hin : MtInput D M tup Q) (v : D.what₂.places.Pl) (j : ℕ) (h1 : 1 ≤ j) (h2 : j ≤ D.R.m) (hv : TwistedAt D v) :
    ClassSum (M (D.what₂.muTw v) j h1 h2) := by
  obtain ⟨k, rfl⟩ : ∃ k, j = k + 1 := ⟨j - 1, by omega⟩
  have hμ : Used0 D (D.what₂.muTw v) := Or.inr ⟨v, ((D.what₂.muAt_or v).resolve_left hv).symm⟩
  exact classSum_of_std Y hM hB ad hV _ hμ ⟨k, by omega⟩
    ⟨{1}, fun κ hκ => ⟨1, by simp, by simpa using level_le_Umax hin v ⟨k, by omega⟩ hκ⟩⟩

end Gen

theorem orthFrame_of_vStd {D : D7} (i : Fin D.R.m) (h : Formalism.IndefR.FWT.VStd D i) : GlobalTheory.StdFrame.OrthFrame (Vc D i) := by
  obtain ⟨h1, h2⟩ := (GlobalTheory.StdFrameCounterexample.vstd_iff i).1 h
  refine ⟨fun a b => (congrFun (congrFun h1 a) b).trans Matrix.one_apply, fun a => ?_⟩
  have := (h2 (Pi.single a 1)).2 fun b => by
    rw [Pi.single_apply]
    split_ifs
    · exact isIntegral_one
    · exact isIntegral_zero
  simpa [Pi.single_apply] using this

theorem sumTw_rows : OverRows fun _ _ _ _ w Z _ _ z _ Y => ∀ (M : MtFam (w.st Z).toD7) tup Q, MtAd Y M → MtInput (w.st Z).toD7 M tup Q → SumTw (w.st Z).toD7 M := by
  refine (GlobalTheory.Mem.Top.evG_of_ev GlobalTheory.Mem.StdSize.vstd_size_ev).imp fun K _ _ _ _ hK =>
    GlobalTheory.Mem.Top.GroupRetwisting.lg_all K fun B f T hO _ w _ Z Wt hX z p0 Y _ _ _ _ _ M tup Q a hin v hv j h1 h2 => ?_
  obtain ⟨hV, -⟩ := hK (w.st Z) hO
  obtain ⟨hB, hM⟩ : (∀ i, Formalism.IndefR.Lev.IsBaseFrame (Formalism.IndefR.Links.Vc (w.st Z).toD7 i) (z.R.βV i) (z.R.ΛV i) 1) ∧
      z.R.toRealDat.IsModels := by
    refine ⟨fun i => ?_, z.pins.char.base.models⟩
    obtain ⟨c, hc⟩ := z.pins.char.base.lev.βV i
    rwa [one_pow] at hc
  exact classSum_twisted_std Y hM hB a (fun i => orthFrame_of_vStd i (hV i)) hin v j h1 h2 hv

end GlobalTheory.FormInner

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRows =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRowsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRowsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SubsetTwistExceptionalPlaces\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRows\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.TypeRec.factG

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceInnerProductClassSumRowsStatement =====

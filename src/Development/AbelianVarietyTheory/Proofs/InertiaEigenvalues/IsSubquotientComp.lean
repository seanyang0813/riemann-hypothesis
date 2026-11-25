module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSupercuspidalCompGeneralLinearGroupMapOfFieldE
public import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormalizedAbsValueLocalFieldUnitMapHomeomorph
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParabolicInductionCompGeneralLinearGroupMapOfFie
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.RingTheory.PicardGroup

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.TypeRec GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.SerSys

namespace GlobalTheory.SuppIne

open GlobalTheory.LocGL GlobalTheory.SmGL

section Transport

variable {k k' : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k']

theorem continuous_glMap {n : Type} [Fintype n] [DecidableEq n] (j : k' →+* k) (hj : Continuous j) :
    Continuous (Matrix.GeneralLinearGroup.map (n := n) j) :=
  Units.continuous_iff.2 ⟨continuous_matrix fun a b => hj.comp (Units.continuous_val.matrix_elem a b),
    continuous_matrix fun a b => hj.comp (Units.continuous_coe_inv.matrix_elem a b)⟩

theorem glMap_surjective {n : Type} [Fintype n] [DecidableEq n] (i : k ≃+* k') :
    Function.Surjective (Matrix.GeneralLinearGroup.map (n := n) i.symm.toRingHom) := fun g =>
  ⟨Matrix.GeneralLinearGroup.map i.toRingHom g, Units.ext (Matrix.ext fun _ _ => i.symm_apply_apply _)⟩


def trGL (i : k ≃+* k') (hi' : Continuous i.symm) (x : IrrGL (k := k)) : IrrGL (k := k') :=
  IrrGL.of (x.rep.comp (Matrix.GeneralLinearGroup.map (n := Fin x.1) i.symm.toRingHom))
    (fun v => (x.2.rep.smooth v).preimage (continuous_glMap _ hi'))
    (GlobalTheory.CuspRep.ParLaws.isIrreducible_comp x.2.rep.irr _ (glMap_surjective i))

theorem hasSupport_comp (i : k ≃+* k') (hi : Continuous i) (hi' : Continuous i.symm) {N : ℕ} {V : Type}
    [AddCommGroup V] [Module ℂ V] {π : Representation ℂ (GL (Fin N) k) V} {s : Multiset (IrrGL (k := k))}
    (h : HasSupport π s) :
    HasSupport (π.comp (Matrix.GeneralLinearGroup.map (n := Fin N) i.symm.toRingHom)) (s.map (trGL i hi')) := by
  obtain ⟨c, x, rfl, hir, hc, e, hsub⟩ := h
  have H : IsCuspSupport (π.comp (Matrix.GeneralLinearGroup.map (n := Fin N) i.symm.toRingHom)) (fun a => (x a).1)
      (fun a => (x a).rep.comp (Matrix.GeneralLinearGroup.map (n := Fin (x a).1) i.symm.toRingHom)) := by
    refine ⟨GlobalTheory.CuspRep.ParLaws.isIrreducible_comp hir _ (glMap_surjective i), fun a =>
      ⟨(hc a).1, GlobalTheory.CuspRep.ParLaws.isIrreducible_comp (hc a).2.1 _ (glMap_surjective i),
        _root_.GlobalTheory.LocGL.isCuspidal_comp_generalLinearGroupMap i hi' _ (hc a).2.2⟩, e, ?_⟩
    obtain ⟨φ⟩ := _root_.GlobalTheory.IndField.multiProd_comp_glMap i hi hi' (_root_.GlobalTheory.SplitWeil.nabs_map_of_homeomorph i hi hi') e (fun a => (x a).rep)
    exact (GlobalTheory.CuspRep.ParLaws.isSubquotient_comp hsub _).trans (.of_injective φ.toIntertwiningMap φ.toLinearEquiv.injective)
  have := hasSupport_of_isCuspSupport H
  rw [Multiset.map_map]
  exact this

end Transport

end GlobalTheory.SuppIne

namespace GlobalTheory.SuppIne

open GlobalTheory.LocGL GlobalTheory.SmGL

theorem continuous_symm {D : D7} (I : Ident D) (k : Fin 2) (v : D.nd.PlG k) : Continuous (I.i k v).symm := by
  letI := (I.i k v).toRingHom.toAlgebra
  have : ContinuousSMul ℚ_[D.host.g k] ((D.naut.plGw k v).adicCompletion D.host.E) :=
    continuousSMul_of_algebraMap _ _ (I.cont k v)
  let el : ℚ_[D.host.g k] ≃ₗ[ℚ_[D.host.g k]] (D.naut.plGw k v).adicCompletion D.host.E :=
    LinearEquiv.ofBijective (Algebra.linearMap _ _) (I.i k v).bijective
  refine el.toContinuousLinearEquiv.symm.continuous.congr fun y => (I.i k v).injective ?_
  exact (el.toContinuousLinearEquiv.apply_symm_apply y).trans ((I.i k v).apply_symm_apply y).symm

def tr {D : D7} (I : Ident D) (k : Fin 2) (v : D.nd.PlG k) {n : ℕ} (ρ : Rep.{0} ℂ (GL (Fin n) ℚ_[D.host.g k]))
    (hs : GlobalTheory.PRep.IsSmooth ρ.ρ) (hi : ρ.ρ.IsIrreducible) : IrrRep (GL (Fin n) ((D.naut.plGw k v).adicCompletion D.host.E)) :=
  ⟨ρ, ρ.ρ.comp (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom),
    fun x => (hs x).preimage (continuous_glMap _ (continuous_symm I k v)),
    GlobalTheory.CuspRep.ParLaws.isIrreducible_comp hi _ (glMap_surjective _)⟩

theorem iso_pull {D : D7} (I : Ident D) (k : Fin 2) (v : D.nd.PlG k) {n : ℕ} (ρ : Rep.{0} ℂ (GL (Fin n) ℚ_[D.host.g k]))
    (hs : GlobalTheory.PRep.IsSmooth ρ.ρ) (hi : ρ.ρ.IsIrreducible) : Nonempty (ρ ≅ pull I k v (tr I k v ρ hs hi)) := by
  have hg : ∀ g : GL (Fin n) ℚ_[D.host.g k], Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom
      (Matrix.GeneralLinearGroup.map (I.i k v).toRingHom g) = g := fun g =>
    Units.ext (Matrix.ext fun a b => (I.i k v).symm_apply_apply _)
  refine ⟨Rep.mkIso (Representation.Equiv.mk (LinearEquiv.refl ℂ ρ) fun g => LinearMap.ext fun x => ?_)⟩
  change ρ.ρ g x = ρ.ρ (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom
      (Matrix.GeneralLinearGroup.map (I.i k v).toRingHom g)) x
  rw [hg]

end GlobalTheory.SuppIne

end

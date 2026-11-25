module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.Order.CompletePartialOrder
public import Mathlib.RepresentationTheory.Irreducible
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.NontrivialOfIrreducible
public import Formalism.LocalToGlobal.GaloisLevelStructure.DefsFinTyp
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryFiniteAdelesSplitPlaceDecomposition
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IrreducibleRepIsotypicOfCentraliserFactor
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLiftAt
import Formalism.LocalToGlobal.HilbertRowConditions.CenterIdempotentAction
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntertwiningMapNeZeroOfIsotypicIrreducible, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarian, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarianStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntertwiningMapNeZeroOfIsotypicIrreducible =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntertwiningMapNeZeroOfIsotypicIrreducible", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.Order.CompletePartialOrder\npublic import Mathlib.RepresentationTheory.Irreducible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.IsoSep

open Representation

theorem main : ∀ (H V W : Type) [Group H] [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W] (ρ : Representation ℂ H V) (σ : Representation ℂ H W), σ.IsIrreducible → (⨆ f : σ.IntertwiningMap ρ, LinearMap.range f.toLinearMap) = ⊤ → (∀ (W' : Type) [AddCommGroup W'] [Module ℂ W'] (σ' : Representation ℂ H W'), σ'.IsIrreducible → ∀ f' : σ'.IntertwiningMap ρ, f' ≠ 0 → Nonempty (σ.Equiv σ')) → ∀ v : V, v ≠ 0 → ∃ p : ρ.IntertwiningMap σ, p v ≠ 0 := by
  intro H V W _ _ _ _ _ ρ σ hσ hsum hiso v hv
  haveI := hσ
  let e := Subrepresentation.subrepresentationSubmoduleOrderIso (ρ := ρ)

  have hatom : ∀ f : σ.IntertwiningMap ρ, f ≠ 0 → IsAtom f.range := by
    intro f hf
    refine ⟨?_, ?_⟩
    · intro h
      apply hf
      ext w
      have hw : f w ∈ f.range := ⟨w, rfl⟩
      rw [h] at hw
      exact hw
    · intro U hU
      let U' : Subrepresentation σ := ⟨U.toSubmodule.comap f.toLinearMap, fun g w hw => by
        show f (σ g w) ∈ U.toSubmodule
        rw [f.isIntertwining]
        exact U.apply_mem_toSubmodule g hw⟩
      rcases eq_bot_or_eq_top U' with h | h
      · refine le_antisymm (fun x hx => ?_) bot_le
        obtain ⟨w, rfl⟩ := hU.le hx
        have hw : w ∈ U'.toSubmodule := hx
        rw [h] at hw
        have hw0 : w = 0 := (Submodule.mem_bot ℂ).1 hw
        show f w ∈ (⊥ : Submodule ℂ V)
        rw [hw0, map_zero]
        exact zero_mem _
      · exfalso
        refine hU.ne (le_antisymm hU.le ?_)
        rintro _ ⟨w, rfl⟩
        have hw : w ∈ U'.toSubmodule := by rw [h]; trivial
        exact hw

  have hss : IsSemisimpleModule (MonoidAlgebra ℂ H) ρ.asModule := by
    apply IsSemisimpleModule.of_sSup_simples_eq_top
    refine eq_top_iff.2 fun x _ => ?_
    have hx : ρ.asModuleEquiv x ∈ (⨆ f : σ.IntertwiningMap ρ, LinearMap.range f.toLinearMap) := by
      rw [hsum]; trivial
    have key := Submodule.iSup_induction _ (motive := fun y : V => ρ.asModuleEquiv.symm y ∈
      sSup {m : Submodule (MonoidAlgebra ℂ H) ρ.asModule | IsSimpleModule (MonoidAlgebra ℂ H) m}) hx
      (fun f y hy => by
        by_cases hf : f = 0
        · subst hf
          obtain ⟨w, rfl⟩ := hy
          simp
        · refine le_sSup (a := e f.range) ?_ ?_
          · exact isSimpleModule_iff_isAtom.2 ((e.isAtom_iff _).2 (hatom f hf))
          · exact hy)
      (by simp) (fun a b ha hb => by simpa only [map_add] using add_mem ha hb)
    simpa using key

  let K : Submodule (MonoidAlgebra ℂ H) ρ.asModule := Submodule.span _ {ρ.asModuleEquiv.symm v}
  have hK : K ≠ ⊥ := by
    intro h
    apply hv
    have hm : ρ.asModuleEquiv.symm v ∈ K := Submodule.subset_span rfl
    rw [h, Submodule.mem_bot] at hm
    simpa using hm
  obtain ⟨N, hN, hNK⟩ := (eq_bot_or_exists_atom_le K).resolve_left hK
  obtain ⟨C, hC⟩ := exists_isCompl N
  let N' := e.symm N
  let C' := e.symm C
  have hC' : IsCompl N' C' := (e.isCompl_iff).2 (by
    simp only [N', C', OrderIso.apply_symm_apply]; exact hC)
  have hN' : IsAtom N' := (e.isAtom_iff N').1 (by simp only [N', OrderIso.apply_symm_apply]; exact hN)
  have hc : IsCompl N'.toSubmodule C'.toSubmodule := by
    constructor
    · rw [disjoint_iff]; exact congrArg Subrepresentation.toSubmodule hC'.inf_eq_bot
    · rw [codisjoint_iff]; exact congrArg Subrepresentation.toSubmodule hC'.sup_eq_top
  let P := Submodule.projectionOnto N'.toSubmodule C'.toSubmodule hc
  let τ := N'.toRepresentation
  let p : ρ.IntertwiningMap τ := ⟨P, fun g => LinearMap.ext fun x => by
    have hx : x ∈ N'.toSubmodule ⊔ C'.toSubmodule := by rw [hc.sup_eq_top]; trivial
    obtain ⟨y, hy, z, hz, rfl⟩ := Submodule.mem_sup.1 hx
    have h1 : P (ρ g y) = ⟨ρ g y, N'.apply_mem_toSubmodule g hy⟩ :=
      Submodule.projectionOnto_apply_left hc ⟨ρ g y, N'.apply_mem_toSubmodule g hy⟩
    have h2 : P (ρ g z) = 0 :=
      Submodule.projectionOnto_apply_right hc ⟨ρ g z, C'.apply_mem_toSubmodule g hz⟩
    have h3 : P y = ⟨y, hy⟩ := Submodule.projectionOnto_apply_left hc ⟨y, hy⟩
    have h4 : P z = 0 := Submodule.projectionOnto_apply_right hc ⟨z, hz⟩
    simp only [LinearMap.coe_comp, Function.comp_apply, map_add (f := _), h1, h2, h3, h4, add_zero, map_zero]
    rfl⟩
  have hpv : p v ≠ 0 := by
    intro h0
    have hvC : v ∈ C'.toSubmodule := (Submodule.projectionOnto_apply_eq_zero_iff hc).1 h0
    have hKC : K ≤ C := by
      refine Submodule.span_le.2 ?_
      rintro _ rfl
      exact hvC
    have hNC : N ≤ N ⊓ C := le_inf le_rfl (hNK.trans hKC)
    rw [hC.inf_eq_bot] at hNC
    exact hN.1 (le_bot_iff.1 hNC)

  have hN'0 : N'.toSubmodule ≠ ⊥ := fun h => hN'.1 (Subrepresentation.toSubmodule_injective h)
  obtain ⟨x0, hx0, hx00⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hN'0
  have hτ : τ.IsIrreducible := by
    refine { exists_pair_ne := ⟨⊥, ⊤, fun h => ?_⟩, eq_bot_or_eq_top := fun U => ?_ }
    · have hm : (⟨x0, hx0⟩ : N'.toSubmodule) ∈ (⊤ : Subrepresentation τ).toSubmodule := trivial
      rw [← h] at hm
      have : (⟨x0, hx0⟩ : N'.toSubmodule) = 0 := (Submodule.mem_bot ℂ).1 hm
      exact hx00 (congrArg Subtype.val this)
    · let U'' : Subrepresentation ρ := ⟨U.toSubmodule.map N'.toSubmodule.subtype, fun g x hx => by
        obtain ⟨y, hy, rfl⟩ := hx
        exact ⟨τ g y, U.apply_mem_toSubmodule g hy, rfl⟩⟩
      have hle : U'' ≤ N' := by
        rintro _ ⟨y, -, rfl⟩
        exact y.2
      rcases hN'.le_iff.1 hle with h | h
      · left
        refine Subrepresentation.toSubmodule_injective (eq_bot_iff.2 fun y hy => ?_)
        have hm : (y : V) ∈ U''.toSubmodule := ⟨y, hy, rfl⟩
        rw [h] at hm
        have h0 : (y : V) = 0 := (Submodule.mem_bot ℂ).1 hm
        exact (Submodule.mem_bot ℂ).2 (Subtype.ext h0)
      · right
        refine Subrepresentation.toSubmodule_injective (eq_top_iff.2 fun y _ => ?_)
        have hm : (y : V) ∈ U''.toSubmodule := by rw [h]; exact y.2
        obtain ⟨z, hz, hzy⟩ := hm
        have : z = y := Subtype.ext hzy
        rw [← this]
        exact hz
  let f' : τ.IntertwiningMap ρ := ⟨N'.toSubmodule.subtype, fun g => LinearMap.ext fun x => rfl⟩
  have hf' : f' ≠ 0 := by
    intro h
    have := congrArg (fun q : τ.IntertwiningMap ρ => q ⟨x0, hx0⟩) h
    exact hx00 this
  obtain ⟨eqv⟩ := hiso _ τ hτ f' hf'
  refine ⟨eqv.symm.toIntertwiningMap.comp p, fun h => hpv ?_⟩
  have := congrArg eqv h
  simpa using this

end GlobalTheory.IsoSep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntertwiningMapNeZeroOfIsotypicIrreducible =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarian =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarian", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.NontrivialOfIrreducible\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.DefsFinTyp\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.Order.CompletePartialOrder\npublic import Mathlib.RepresentationTheory.Irreducible\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntertwiningMapNeZeroOfIsotypicIrreducible\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryFiniteAdelesSplitPlaceDecomposition\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IrreducibleRepIsotypicOfCentraliserFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLiftAt\nimport Formalism.LocalToGlobal.HilbertRowConditions.CenterIdempotentAction\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ReciprocityTheory.Aut Formalism.AUTREP Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev GlobalTheory.TypeRec GlobalTheory.TypeVec
attribute [local instance] GlobalTheory.TypeRec.factG Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.LocProj

theorem main : ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (n : ℕ) (π : NG.FinTyp L n) (s : SplitPlace L) (τ : GlobalTheory.SmGL.IrrRep (GL (Fin n) (s.w.adicCompletion L))) (i : s.v.adicCompletion (maximalRealSubfield L) ≃+* s.w.adicCompletion L) (T : τ.V →ₗ[ℂ] (GAf L n → ℂ)), Continuous i → (∀ x : L, i (s.i x) = algebraMap L (s.w.adicCompletion L) x) → Function.Injective T → (∀ a, T a ∈ π.S) → (∀ x : GAf L n, TrivOutside {s.v} (x : GA L n) → ∀ a, T (τ.ρ (Matrix.GeneralLinearGroup.map i.toRingHom (s.loc n x)) a) = NG.rt L n x (T a)) → ∀ f ∈ π.S, f ≠ 0 → ∃ p : (GAf L n → ℂ) →ₗ[ℂ] τ.V, p f ≠ 0 ∧ ∀ x : GAf L n, TrivOutside {s.v} (x : GA L n) → ∀ f' ∈ π.S, p (NG.rt L n x f') = τ.ρ (Matrix.GeneralLinearGroup.map i.toRingHom (s.loc n x)) (p f') := by
  intro L _ _ _ n π s τ i T hi hic hT hTS hTeq f hf hf0
  classical
  obtain ⟨hdec, hcomm, huniq⟩ := GlobalTheory.SplitAdelic.main L n s
  choose lift hlift using fun A => (huniq A).exists
  have hlu : ∀ A x, TrivOutside {s.v} x → s.loc n x = A → x = lift A := fun A x hx e =>
    (huniq A).unique ⟨hx, e⟩ (hlift A)
  have tmul : ∀ {x y : GAf L n}, TrivOutside {s.v} x → TrivOutside {s.v} y → TrivOutside {s.v} (x * y) := by
    intro x y hx hy v hv
    show ((x.1 * y.1 : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)).map (compAt L v) = 1
    rw [Units.val_mul, Matrix.map_mul, hx v hv, hy v hv, mul_one]
  have tone : TrivOutside {s.v} (1 : GAf L n) := by
    intro v _
    show ((1 : GL (Fin n) (AL L)) : Matrix (Fin n) (Fin n) (AL L)).map (compAt L v) = 1
    rw [Units.val_one]
    exact Matrix.map_one _ (map_zero _) (map_one _)
  let lh : GL (Fin n) (s.v.adicCompletion (maximalRealSubfield L)) →* GAf L n :=
    { toFun := lift
      map_one' := (hlu _ _ tone (map_one _)).symm
      map_mul' := fun A B => (hlu _ _ (tmul (hlift A).1 (hlift B).1)
        (by rw [map_mul, (hlift A).2, (hlift B).2])).symm }
  have hlh : ∀ x, TrivOutside {s.v} x → lh (s.loc n x) = x := fun x hx => (hlu _ x hx rfl).symm
  let ρ : Representation ℂ (GAf L n) π.S :=
    { toFun := fun g => (NG.rt L n g).restrict (fun f hf => π.stable g f hf)
      map_one' := by
        apply LinearMap.ext; intro f; apply Subtype.ext; funext x
        simp [NG.rt]
      map_mul' := fun a b => by
        apply LinearMap.ext; intro f; apply Subtype.ext; funext x
        simp [NG.rt, mul_assoc] }
  have hρ : ∀ g (f : π.S), ((ρ g f : π.S) : GAf L n → ℂ) = NG.rt L n g f := fun _ _ => rfl
  have hρirr : ρ.IsIrreducible := by
    refine { exists_pair_ne := ⟨⊥, ⊤, fun h => ?_⟩, eq_bot_or_eq_top := fun P => ?_ }
    · obtain ⟨g, hg, hg0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot π.ne
      have h1 : (⟨g, hg⟩ : π.S) ∈ (⊤ : Subrepresentation ρ).toSubmodule := Submodule.mem_top
      rw [← h] at h1
      exact hg0 (congrArg Subtype.val ((Submodule.mem_bot ℂ).1 h1))
    · have hle : P.toSubmodule.map π.S.subtype ≤ π.S := by
        rintro _ ⟨p, -, rfl⟩
        exact p.2
      have hst : ∀ h, ∀ g ∈ P.toSubmodule.map π.S.subtype, NG.rt L n h g ∈ P.toSubmodule.map π.S.subtype := by
        rintro h _ ⟨p, hp, rfl⟩
        exact ⟨ρ h p, P.apply_mem_toSubmodule h hp, rfl⟩
      rcases π.irr _ hle hst with h | h
      · left
        apply Subrepresentation.ext
        show P.toSubmodule = ⊥
        rw [eq_bot_iff]
        intro p hp
        have : (p : GAf L n → ℂ) ∈ P.toSubmodule.map π.S.subtype := ⟨p, hp, rfl⟩
        rw [h, Submodule.mem_bot] at this
        exact (Submodule.mem_bot ℂ).2 (Subtype.ext this)
      · right
        apply Subrepresentation.ext
        show P.toSubmodule = ⊤
        rw [eq_top_iff]
        intro p _
        have : (p : GAf L n → ℂ) ∈ P.toSubmodule.map π.S.subtype := by rw [h]; exact p.2
        obtain ⟨q, hq, e'⟩ := this
        rwa [show q = p from Subtype.ext e'] at hq
  let mi : GL (Fin n) (s.v.adicCompletion (maximalRealSubfield L)) →* GL (Fin n) (s.w.adicCompletion L) :=
    Matrix.GeneralLinearGroup.map i.toRingHom
  have hmi : ∀ B, mi (Matrix.GeneralLinearGroup.map i.symm.toRingHom B) = B := fun B =>
    Units.ext (Matrix.ext fun a b => i.apply_symm_apply _)
  let σ : Representation ℂ (GL (Fin n) (s.v.adicCompletion (maximalRealSubfield L))) τ.V := τ.ρ.comp mi
  have hσirr : σ.IsIrreducible := by
    have hτ := τ.irr
    refine { exists_pair_ne := ⟨⊥, ⊤, fun h => ?_⟩, eq_bot_or_eq_top := fun P => ?_ }
    · obtain ⟨P1, P2, hne⟩ := hτ.exists_pair_ne
      apply hne
      have e1 : P1 = ⊥ ∨ P1 = ⊤ := hτ.eq_bot_or_eq_top P1
      have e2 : P2 = ⊥ ∨ P2 = ⊤ := hτ.eq_bot_or_eq_top P2
      have htop : (⊥ : Subrepresentation τ.ρ) = ⊤ := by
        apply Subrepresentation.ext
        have h' := congrArg Subrepresentation.toSubmodule h
        exact h'
      rcases e1 with rfl | rfl <;> rcases e2 with rfl | rfl <;> simp [htop]
    · let P' : Subrepresentation τ.ρ := ⟨P.toSubmodule, fun g v hv => by
        have := P.apply_mem_toSubmodule (Matrix.GeneralLinearGroup.map i.symm.toRingHom g) hv
        change τ.ρ (mi _) v ∈ P.toSubmodule at this
        rwa [hmi] at this⟩
      rcases hτ.eq_bot_or_eq_top P' with h | h
      · left; apply Subrepresentation.ext; have h' := congrArg Subrepresentation.toSubmodule h; exact h'
      · right; apply Subrepresentation.ext; have h' := congrArg Subrepresentation.toSubmodule h; exact h'
  have hV : ∃ a : τ.V, a ≠ 0 := by
    by_contra hcon
    push_neg at hcon
    obtain ⟨P1, P2, hne⟩ := τ.irr.exists_pair_ne
    apply hne
    apply Subrepresentation.ext
    ext a
    simp [hcon a, P1.toSubmodule.zero_mem, P2.toSubmodule.zero_mem]
  let f0 : σ.IntertwiningMap (ρ.comp lh) :=
    { toLinearMap := LinearMap.codRestrict π.S T hTS
      isIntertwining' := fun A => by
        apply LinearMap.ext; intro a; apply Subtype.ext
        show T (τ.ρ (mi A) a) = NG.rt L n (lh A) (T a)
        have := hTeq (lh A) (hlift A).1 a
        rwa [show s.loc n (lh A) = A from (hlift A).2] at this }
  have hf0' : f0 ≠ 0 := by
    obtain ⟨a, ha⟩ := hV
    intro h
    apply ha
    apply hT
    have : (f0 a : GAf L n → ℂ) = 0 := by rw [h]; rfl
    simpa [f0] using this
  have hc : ∀ g, ∃ u, ∀ y, Commute ((lh u)⁻¹ * g) (lh y) := by
    intro g
    obtain ⟨x, y', hx, hy', rfl⟩ := hdec g
    refine ⟨s.loc n x, fun y => ?_⟩
    rw [hlh x hx, inv_mul_cancel_left]
    exact (hcomm _ _ (hlift y).1 hy').symm
  have hU : ∀ (W' : Type) [AddCommGroup W'] [Module ℂ W'] (σ' : Representation ℂ _ W'), σ'.IsIrreducible →
      ∀ f' : σ'.IntertwiningMap (ρ.comp lh), f' ≠ 0 → Nonempty (σ.Equiv σ') := by
    intro W' _ _ σ' hσ' f' hf'
    exact (GlobalTheory.CuspRep.CompUniq.isotypic _ _ _ _ W' ρ lh σ σ' hρirr hσirr hσ' hc f0 hf0').2 f' hf'
  have hsum := (GlobalTheory.CuspRep.CompUniq.isotypic _ _ _ _ τ.V ρ lh σ σ hρirr hσirr hσirr hc f0 hf0').1
  have hfne : (⟨f, hf⟩ : π.S) ≠ 0 := fun h => hf0 (congrArg Subtype.val h)
  obtain ⟨p0, hp0⟩ := _root_.GlobalTheory.IsoSep.main _ _ _ (ρ.comp lh) σ hσirr hsum hU ⟨f, hf⟩ hfne
  obtain ⟨p, hp⟩ := LinearMap.exists_extend p0.toLinearMap
  have hpS : ∀ g (hg : g ∈ π.S), p g = p0 ⟨g, hg⟩ := fun g hg => by
    have := LinearMap.congr_fun hp ⟨g, hg⟩
    exact this
  refine ⟨p, by rw [hpS f hf]; exact hp0, fun x hx f' hf' => ?_⟩
  rw [hpS _ (π.stable x f' hf'), hpS f' hf']
  have e1 : (⟨NG.rt L n x f', π.stable x f' hf'⟩ : π.S) = (ρ.comp lh) (s.loc n x) ⟨f', hf'⟩ := by
    apply Subtype.ext
    show NG.rt L n x f' = NG.rt L n (lh (s.loc n x)) f'
    rw [hlh x hx]
  rw [e1]
  exact LinearMap.congr_fun (p0.isIntertwining' (s.loc n x)) ⟨f', hf'⟩

end GlobalTheory.LocProj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarian =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarianStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarianStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.NontrivialOfIrreducible\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.DefsFinTyp\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLiftAt\nimport Formalism.LocalToGlobal.HilbertRowConditions.CenterIdempotentAction\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ReciprocityTheory.Aut Formalism.AUTREP Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev GlobalTheory.TypeRec GlobalTheory.TypeVec
attribute [local instance] GlobalTheory.TypeRec.factG Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteTypeVectorDetectedLocalComponentEquivarianStatement =====

module

public import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechSeparated
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsSmoothCoordinateCover
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt
public import Mathlib.AlgebraicGeometry.AffineScheme
public import Mathlib.Order.CompletePartialOrder
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordinatesRestrictAffineOpen
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormAction
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormAdd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormCocycle
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormExistsOfCocycle
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormFrame
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormLocalOfFrame
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormRestrict
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormVanishOfFrame
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormVectorBundle
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreStH
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.SubsingletonOfSheafPullback
import Mathlib.Tactic.Linter.HaveILetI
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenFiniteInfIff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineCoverHigherCohomologyVanishes, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormCover, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormSmul, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineGradedCohomologyVanishing, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineCoverHigherCohomologyVanishes =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineCoverHigherCohomologyVanishes", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechSeparated\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\nimport Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.SubsingletonOfSheafPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite
open CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.VBAff

section Rs

variable {X : Scheme.{0}}

theorem rs_rs {A B C : X.Opens} (h₁ : B ≤ A) (h₂ : C ≤ B) (x : Γ(X, A)) :
    rs h₂ (rs h₁ x) = rs (h₂.trans h₁) x := by
  simp only [rs, ← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl

theorem rs_self {A : X.Opens} (h : A ≤ A) (x : Γ(X, A)) : rs h x = x := by
  have : (homOfLE h).op = 𝟙 (op A) := rfl
  simp only [rs, this, CategoryTheory.Functor.map_id]
  rfl

theorem eq_of_cover {J : Type} {T : X.Opens} (C : J → X.Opens) (hC : ∀ j, C j ≤ T)
    (hc : T ≤ iSup C) {a b : Γ(X, T)} (h : ∀ j, rs (hC j) a = rs (hC j) b) : a = b :=
  TopCat.Sheaf.eq_of_locally_eq' X.sheaf C T (fun j => homOfLE (hC j)) hc a b h

theorem exists_glue {J : Type} {T : X.Opens} (C : J → X.Opens) (hC : ∀ j, C j ≤ T)
    (hc : T ≤ iSup C) (t : ∀ j, Γ(X, C j))
    (h : ∀ j l (D : X.Opens) (hj : D ≤ C j) (hl : D ≤ C l), rs hj (t j) = rs hl (t l)) :
    ∃ a : Γ(X, T), ∀ j, rs (hC j) a = t j := by
  obtain ⟨a, ha, -⟩ := TopCat.Sheaf.existsUnique_gluing' X.sheaf C T (fun j => homOfLE (hC j)) hc t
    (fun j l => h j l _ inf_le_left inf_le_right)
  exact ⟨a, ha⟩

end Rs

section Sections

variable {X : Scheme.{0}} {ι : Type} (U : ι → X.Opens) (κ : ι → Type) [∀ α, Fintype (κ α)]
  (g : ∀ α β, κ α → κ β → Γ(X, U α ⊓ U β))

def Compat (V : X.Opens) (s : ∀ α, κ α → Γ(X, V ⊓ U α)) : Prop :=
  ∀ α β (k : κ α), rs (show V ⊓ U α ⊓ U β ≤ V ⊓ U α from inf_le_left) (s α k) =
    ∑ k' : κ β, rs (show V ⊓ U α ⊓ U β ≤ U α ⊓ U β from inf_le_inf_right _ inf_le_right) (g α β k k') *
      rs (show V ⊓ U α ⊓ U β ≤ V ⊓ U β from inf_le_inf_right _ inf_le_left) (s β k')


variable {U κ g} in
theorem Compat.on {V : X.Opens} {s : ∀ α, κ α → Γ(X, V ⊓ U α)} (hs : Compat U κ g V s) (α β : ι)
    (k : κ α) {T : X.Opens} (h₁ : T ≤ V ⊓ U α) (h₂ : T ≤ U α ⊓ U β) (h₃ : T ≤ V ⊓ U β) :
    rs h₁ (s α k) = ∑ k' : κ β, rs h₂ (g α β k k') * rs h₃ (s β k') := by
  have hT : T ≤ V ⊓ U α ⊓ U β := le_inf h₁ (h₂.trans inf_le_right)
  have := congrArg (rs hT) (hs α β k)

  simp only [map_sum, map_mul, rs_rs] at this
  exact this

def secGroup (V : X.Opens) : AddSubgroup (∀ α, κ α → Γ(X, V ⊓ U α)) where
  carrier := {s | Compat U κ g V s}
  add_mem' := fun {s t} hs ht α β k => by
    simp only [Pi.add_apply, map_add (f := _), hs α β k, ht α β k, mul_add, Finset.sum_add_distrib]
  zero_mem' := fun α β k => by
    simp only [Pi.zero_apply, map_zero, mul_zero, Finset.sum_const_zero]
  neg_mem' := fun {s} hs α β k => by
    simp only [Pi.neg_apply, map_neg, hs α β k, mul_neg, Finset.sum_neg_distrib]

instance secGroupModule (V : X.Opens) : Module Γ(X, V) (secGroup U κ g V) where
  smul a s := ⟨fun α k => rs inf_le_left a * s.1 α k, fun α β k => by
    have := s.2 α β k
    simp only [map_mul, rs_rs, this, Finset.mul_sum]
    refine Finset.sum_congr rfl fun k' _ => ?_
    ring⟩
  one_smul s := Subtype.ext <| funext fun α => funext fun k => by
    change rs _ 1 * s.1 α k = _
    rw [map_one, one_mul]
  mul_smul a b s := Subtype.ext <| funext fun α => funext fun k => by
    change rs _ (a * b) * s.1 α k = rs _ a * (rs _ b * s.1 α k)
    rw [map_mul, mul_assoc]
  smul_zero a := Subtype.ext <| funext fun α => funext fun k => mul_zero _
  smul_add a s t := Subtype.ext <| funext fun α => funext fun k => mul_add _ _ _
  add_smul a b s := Subtype.ext <| funext fun α => funext fun k => by
    change rs _ (a + b) * s.1 α k = rs _ a * s.1 α k + rs _ b * s.1 α k
    rw [map_add (f := _), add_mul]
  zero_smul s := Subtype.ext <| funext fun α => funext fun k => by
    change rs _ 0 * s.1 α k = 0
    rw [map_zero, zero_mul]


variable {U κ g} in
theorem smul_val {V : X.Opens} (a : Γ(X, V)) (s : secGroup U κ g V) (α : ι) (k : κ α) :
    (a • s).1 α k = rs inf_le_left a * s.1 α k := rfl

def secRes {V V' : X.Opens} (h : V' ≤ V) : secGroup U κ g V →+ secGroup U κ g V' where
  toFun s := ⟨fun α k => rs (inf_le_inf_right _ h) (s.1 α k), fun α β k => by
    have := s.2.on α β k (T := V' ⊓ U α ⊓ U β) (inf_le_left.trans (inf_le_inf_right _ h))
      (inf_le_inf_right _ inf_le_right)
      ((inf_le_inf_right _ inf_le_left).trans (inf_le_inf_right _ h))
    simp only [rs_rs, this]⟩
  map_zero' := Subtype.ext <| funext fun α => funext fun k => map_zero _
  map_add' s t := Subtype.ext <| funext fun α => funext fun k => map_add _ _ _

variable {U κ g} in
@[simp] theorem secRes_val {V V' : X.Opens} (h : V' ≤ V) (s : secGroup U κ g V) (α : ι) (k : κ α) :
    (secRes U κ g h s).1 α k = rs (inf_le_inf_right _ h) (s.1 α k) := rfl

theorem secRes_smul {V V' : X.Opens} (h : V' ≤ V) (r : Γ(X, V)) (m : secGroup U κ g V) :
    secRes U κ g h (r • m) = rs h r • secRes U κ g h m :=
  Subtype.ext <| funext fun α => funext fun k => by
    simp only [secRes_val, smul_val, map_mul, rs_rs]

def secPresheaf : TopCat.Presheaf Ab.{0} X where
  obj V := AddCommGrpCat.of (secGroup U κ g V.unop)
  map f := AddCommGrpCat.ofHom (secRes U κ g (leOfHom f.unop))
  map_id V := by
    ext s α k
    exact rs_self _ _
  map_comp f g' := by
    ext s α k
    exact (rs_rs _ _ _).symm

theorem isSheaf_secPresheaf : (secPresheaf U κ g).IsSheaf := by
  rw [TopCat.Presheaf.isSheaf_iff_isSheafUniqueGluing]
  intro J C sf hsf
  let sf' (j : J) : secGroup U κ g (C j) := sf j
  have hsf' (j l : J) (α : ι) (k : κ α) (D : X.Opens) (hj : D ≤ C j ⊓ U α) (hl : D ≤ C l ⊓ U α) :
      rs hj ((sf' j).1 α k) = rs hl ((sf' l).1 α k) := by
    have e : secRes U κ g (inf_le_left : C j ⊓ C l ≤ C j) (sf' j) =
      secRes U κ g (inf_le_right : C j ⊓ C l ≤ C l) (sf' l) := hsf j l
    have e' := congrArg (fun s => s.1 α k) e
    simp only [secRes_val] at e'
    have hD : D ≤ (C j ⊓ C l) ⊓ U α :=
      le_inf (le_inf (hj.trans inf_le_left) (hl.trans inf_le_left)) (hj.trans inf_le_right)
    have e'' := congrArg (rs hD) e'
    simpa only [rs_rs] using e''
  have hcov (α : ι) : iSup C ⊓ U α ≤ ⨆ j, C j ⊓ U α := by
    rw [iSup_inf_eq]
  have hC (α : ι) (j : J) : C j ⊓ U α ≤ iSup C ⊓ U α := inf_le_inf_right _ (le_iSup C j)
  choose b hb using fun (α : ι) (k : κ α) => exists_glue (fun j => C j ⊓ U α) (hC α) (hcov α)
    (fun j => (sf' j).1 α k) fun j l D hj hl => hsf' j l α k D hj hl
  have hbc : Compat U κ g (iSup C) b := fun α β k => by
    have hle : iSup C ⊓ U α ⊓ U β ≤ ⨆ j, C j ⊓ U α ⊓ U β := by
      rw [iSup_inf_eq, iSup_inf_eq]
    refine eq_of_cover (fun j => C j ⊓ U α ⊓ U β) (fun j => inf_le_inf_right _ (hC α j)) hle
      fun j => ?_

    simp only [map_sum, map_mul, rs_rs]
    have h1 := (sf' j).2.on α β k (T := C j ⊓ U α ⊓ U β) inf_le_left
      (inf_le_inf_right _ inf_le_right) (inf_le_inf_right _ inf_le_left)
    rw [← hb α k j, rs_rs] at h1
    rw [h1]
    refine Finset.sum_congr rfl fun k' _ => ?_
    rw [← hb β k' j, rs_rs]
  refine ⟨(⟨b, hbc⟩ : secGroup U κ g (iSup C)), fun j => ?_, fun t ht => ?_⟩
  · refine Subtype.ext <| funext fun α => funext fun k => ?_
    exact hb α k j
  · let t' : secGroup U κ g (iSup C) := t
    refine Subtype.ext <| funext fun α => funext fun k => ?_
    refine eq_of_cover (fun j => C j ⊓ U α) (hC α) (hcov α) fun j => ?_
    have e : secRes U κ g (le_iSup C j) t' = sf' j := ht j
    rw [hb α k j]
    exact congrArg (fun s => s.1 α k) e

def toMod : X.Modules :=
  letI : ∀ V, Module (X.ringCatSheaf.obj.obj V) ((secPresheaf U κ g).obj V) :=
    fun V => secGroupModule U κ g V.unop
  { val := PresheafOfModules.ofPresheaf (secPresheaf U κ g) fun _ _ f r m =>
      secRes_smul U κ g (leOfHom f.unop) r m
    isSheaf := isSheaf_secPresheaf U κ g }

end Sections

section Coords

variable {X : Scheme.{0}} {ι : Type} (U : ι → X.Opens) (κ : ι → Type) [∀ α, Fintype (κ α)]
  (g : ∀ α β, κ α → κ β → Γ(X, U α ⊓ U β))

def IsCoc : Prop :=
  (∀ (α : ι) (T : X.Opens) (h : T ≤ U α ⊓ U α) (k : κ α) (f : κ α → Γ(X, T)),
    ∑ k', rs h (g α α k k') * f k' = f k) ∧
  (∀ (α β γ : ι) (T : X.Opens) (h₁ : T ≤ U α ⊓ U β) (h₂ : T ≤ U β ⊓ U γ) (h₃ : T ≤ U α ⊓ U γ)
    (k : κ α) (f : κ γ → Γ(X, T)),
    ∑ k', rs h₁ (g α β k k') * ∑ k'', rs h₂ (g β γ k' k'') * f k'' =
      ∑ k'', rs h₃ (g α γ k k'') * f k'')

variable {U κ g}

def coord {V : X.Opens} {β : ι} (h : V ≤ U β) : secGroup U κ g V →ₗ[Γ(X, V)] (κ β → Γ(X, V)) where
  toFun s k := rs (le_inf le_rfl h) (s.1 β k)
  map_add' s t := funext fun k => map_add _ _ _
  map_smul' a s := funext fun k => by
    change rs _ (rs _ a * s.1 β k) = a * rs _ (s.1 β k)
    rw [map_mul, rs_rs, rs_self]

theorem coord_apply {V : X.Opens} {β : ι} (h : V ≤ U β) (s : secGroup U κ g V) (k : κ β) :
    coord h s k = rs (le_inf le_rfl h) (s.1 β k) := rfl

def ofCoord (hg : IsCoc U κ g) {V : X.Opens} {β : ι} (h : V ≤ U β) (t : κ β → Γ(X, V)) :
    secGroup U κ g V :=
  ⟨fun α k => ∑ k', rs (le_inf inf_le_right (inf_le_left.trans h)) (g α β k k') * rs inf_le_left (t k'),
    fun α γ k => by

    simp only [map_sum, map_mul, rs_rs, Finset.mul_sum]
    have hT1 : V ⊓ U α ⊓ U γ ≤ U α ⊓ U γ := inf_le_inf_right _ inf_le_right
    have hT2 : V ⊓ U α ⊓ U γ ≤ U γ ⊓ U β := le_inf inf_le_right (inf_le_left.trans (inf_le_left.trans h))
    have hT3 : V ⊓ U α ⊓ U γ ≤ U α ⊓ U β :=
      le_inf (inf_le_left.trans inf_le_right) (inf_le_left.trans (inf_le_left.trans h))
    have := hg.2 α γ β _ hT1 hT2 hT3 k
      (fun k' => rs (inf_le_left.trans inf_le_left) (t k'))
    rw [← this]
    simp only [Finset.mul_sum]⟩

theorem ofCoord_val (hg : IsCoc U κ g) {V : X.Opens} {β : ι} (h : V ≤ U β) (t : κ β → Γ(X, V))
    (α : ι) (k : κ α) : (ofCoord hg h t).1 α k =
      ∑ k', rs (le_inf inf_le_right (inf_le_left.trans h)) (g α β k k') * rs inf_le_left (t k') := rfl

theorem coord_ofCoord' (hg : IsCoc U κ g) {V : X.Opens} {α β : ι} (hα : V ≤ U α) (hβ : V ≤ U β)
    (t : κ β → Γ(X, V)) (k : κ α) :
    coord hα (ofCoord hg hβ t) k = ∑ k', rs (le_inf hα hβ) (g α β k k') * t k' := by

  simp only [coord_apply, ofCoord_val, map_sum, map_mul, rs_rs, rs_self]

theorem coord_ofCoord (hg : IsCoc U κ g) {V : X.Opens} {β : ι} (h : V ≤ U β) (t : κ β → Γ(X, V)) :
    coord h (ofCoord hg h t) = t := funext fun k => by
  rw [coord_ofCoord']
  exact hg.1 β V (le_inf h h) k t

theorem ofCoord_coord (hg : IsCoc U κ g) {V : X.Opens} {β : ι} (h : V ≤ U β)
    (s : secGroup U κ g V) : ofCoord hg h (coord h s) = s :=
  Subtype.ext <| funext fun α => funext fun k => by
    rw [ofCoord_val]
    have hT : V ⊓ U α ≤ V ⊓ U α ⊓ U β := le_inf le_rfl (inf_le_left.trans h)
    have := s.2.on α β k (T := V ⊓ U α) le_rfl (le_inf inf_le_right (inf_le_left.trans h))
      (le_inf inf_le_left (inf_le_left.trans h))
    rw [rs_self] at this
    rw [this]
    refine Finset.sum_congr rfl fun k' _ => ?_
    rw [coord_apply, rs_rs]

def secEquiv (hg : IsCoc U κ g) {V : X.Opens} {β : ι} (h : V ≤ U β) :
    secGroup U κ g V ≃ₗ[Γ(X, V)] (κ β → Γ(X, V)) :=
  { coord h with
    invFun := ofCoord hg h
    left_inv := ofCoord_coord hg h
    right_inv := coord_ofCoord hg h }

theorem coord_secRes {V V' : X.Opens} {β : ι} (h : V ≤ U β) (h' : V' ≤ V) (s : secGroup U κ g V)
    (k : κ β) : coord (h'.trans h) (secRes U κ g h' s) k = rs h' (coord h s k) := by
  simp only [coord_apply, secRes_val, rs_rs]

theorem sec_ext_coord {V : X.Opens} {β : ι} (hg : IsCoc U κ g) (h : V ≤ U β) {s t : secGroup U κ g V}
    (e : ∀ k, coord h s k = coord h t k) : s = t := by
  rw [← ofCoord_coord hg h s, ← ofCoord_coord hg h t, funext e]

end Coords

section Frames

variable {X : Scheme.{0}} {ι : Type} {U : ι → X.Opens} {κ : ι → Type} [∀ α, Fintype (κ α)]
  {g : ∀ α β, κ α → κ β → Γ(X, U α ⊓ U β)}


open Classical in
def frame (hg : IsCoc U κ g) (β : ι) (k : κ β) : Γ(toMod U κ g, U β) :=
  show secGroup U κ g (U β) from ofCoord hg le_rfl (Pi.single k 1)

open Classical in
theorem isFrame_frame (hg : IsCoc U κ g) (β : ι) : GlobalTheory.VB.IsFrame (frame (U := U) hg β) := by
  refine GlobalTheory.VB.isFrame_of_basis
    (fun V h => (Module.Basis.ofEquivFun (secEquiv hg h) : Module.Basis (κ β) Γ(X, V) (secGroup U κ g V)))
    fun V h k => ?_
  refine (congrFun (Module.Basis.coe_ofEquivFun (secEquiv hg h)) k).trans ?_
  change ofCoord hg h (Pi.single k 1) = secRes U κ g h (ofCoord hg le_rfl (Pi.single k 1))
  refine sec_ext_coord hg h fun k' => ?_
  rw [coord_ofCoord, coord_secRes (le_refl (U β)) h, coord_ofCoord, Pi.single_apply, Pi.single_apply]
  split_ifs <;> simp

theorem isQuasicoherent_toMod (hg : IsCoc U κ g) (hU : iSup U = ⊤) :
    (toMod U κ g).IsQuasicoherent :=
  GlobalTheory.OmegaGlobal.isQuasicoherent_of_frames fun x => by
    obtain ⟨β, hβ⟩ := Opens.mem_iSup.1 (hU ▸ trivial : x ∈ iSup U)
    exact ⟨U β, Fintype.card (κ β), _, hβ,
      (isFrame_frame hg β).comp_equiv (Fintype.equivFin _).symm⟩

end Frames

section FromVB

attribute [local instance] VB.fin

variable {O : Type} [CommRing O] {X : Scheme.{0}} {str : ∀ W : X.Opens, O →+* Γ(X, W)}
  {ι : Type} {U : ι → X.Opens} {K : Cos.{1} O} (V : VB str U K)

theorem mul_g_tuple {n : ℕ} (a b c : Fin (n + 1)) (i : Fin (n + 1) → ι) (k : V.κ (i a)) (m : V.κ (i c)) :
    ∑ k', rs (le_inf (capO_le U i a) (capO_le U i b)) (V.g (i a) (i b) k k') *
      rs (le_inf (capO_le U i b) (capO_le U i c)) (V.g (i b) (i c) k' m) =
    rs (le_inf (capO_le U i a) (capO_le U i c)) (V.g (i a) (i c) k m) := by
  classical
  obtain ⟨x, hx⟩ := (V.e n c).surjective (fun i' => if h : i' = i then h ▸ Pi.single m 1 else 0)
  have hxi : V.e n c x i = Pi.single m 1 := by
    rw [hx]
    simp
  have h1 := V.e_chg n a c x i k
  have h2 := V.e_chg n a b x i k
  rw [h2] at h1
  simp only [fun k' => V.e_chg n b c x i k', hxi, Pi.single_apply, mul_ite, mul_one, mul_zero,
    Finset.sum_ite_eq', Finset.mem_univ, if_true] at h1
  exact h1


open Classical in
theorem g_self_tuple {n : ℕ} (a : Fin (n + 1)) (i : Fin (n + 1) → ι) (k m : V.κ (i a)) :
    rs (le_inf (capO_le U i a) (capO_le U i a)) (V.g (i a) (i a) k m) = if k = m then 1 else 0 := by
  classical
  obtain ⟨x, hx⟩ := (V.e n a).surjective (fun i' => if h : i' = i then h ▸ Pi.single m 1 else 0)
  have hxi : V.e n a x i = Pi.single m 1 := by
    rw [hx]
    simp
  have h1 := V.e_chg n a a x i k
  simp only [hxi, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ,
    if_true] at h1
  exact h1.symm

theorem isCoc : IsCoc U V.κ V.g := by
  classical
  constructor
  · intro α T h k f
    let i : Fin 1 → ι := fun _ => α
    have hT : T ≤ capO U i := le_iInf fun _ => h.trans inf_le_left
    have e (k' : V.κ α) : rs h (V.g α α k k') = if k = k' then 1 else 0 := by
      have := congrArg (rs hT) (g_self_tuple V (0 : Fin 1) i k k')
      simp only [rs_rs] at this
      rw [this]
      split_ifs <;> simp
    simp only [e, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  · intro α β γ T h₁ h₂ h₃ k f
    let i : Fin 3 → ι := ![α, β, γ]
    have hT : T ≤ capO U i := le_iInf fun a => by
      fin_cases a
      · exact h₁.trans inf_le_left
      · exact h₁.trans inf_le_right
      · exact h₂.trans inf_le_right
    have e (m : V.κ γ) : ∑ k', rs h₁ (V.g α β k k') * rs h₂ (V.g β γ k' m) = rs h₃ (V.g α γ k m) := by
      have := congrArg (rs hT) (mul_g_tuple V (0 : Fin 3) 1 2 i k m)

      simp only [map_sum, map_mul, rs_rs] at this
      exact this
    simp only [← e, Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun k' _ => Finset.sum_congr rfl fun m _ => ?_
    ring

end FromVB

section Cochains

open GroundTheory.Arith.SchemeCoh

attribute [local instance] VB.fin

variable {O : Type} [CommRing O] {X : Scheme.{0}} {str : ∀ W : X.Opens, O →+* Γ(X, W)}
  {ι : Type} {U : ι → X.Opens} {K : Cos.{1} O} (V : VB str U K)

theorem inter_le_capO {n : ℕ} (i : Fin n → ι) : inter (X := X.toTopCat) U i ≤ capO U i :=
  (inter_eq_iInf U i).le

theorem capO_le_inter {n : ℕ} (i : Fin n → ι) : capO U i ≤ inter (X := X.toTopCat) U i :=
  (inter_eq_iInf U i).ge

theorem inter_le' {n : ℕ} (i : Fin n → ι) (a : Fin n) : inter (X := X.toTopCat) U i ≤ U (i a) :=
  (inter_le_capO i).trans (capO_le U i a)

def secOf (n : ℕ) (x : K.X n) (i : Fin (n + 1) → ι) :
    secGroup U V.κ V.g (inter (X := X.toTopCat) U i) :=
  ofCoord (isCoc V) (inter_le' i 0) fun k => rs (inter_le_capO i) (V.e n 0 x i k)

theorem coord_secOf (n : ℕ) (x : K.X n) (i : Fin (n + 1) → ι) (a : Fin (n + 1)) (k : V.κ (i a)) :
    coord (inter_le' i a) (secOf V n x i) k = rs (inter_le_capO i) (V.e n a x i k) := by
  rw [secOf, coord_ofCoord', V.e_chg n a 0 x i k]

  simp only [map_sum, map_mul, rs_rs]

def cochainEquiv (n : ℕ) : K.X n ≃+ Cochain (modulesAb (toMod U V.κ V.g)).obj U n where
  toFun x i := secOf V n x i
  invFun σ := (V.e n 0).symm fun i k => rs (capO_le_inter i)
    (coord (inter_le' i 0) (show secGroup U V.κ V.g _ from σ i) k)
  left_inv x := by
    apply (V.e n 0).injective
    rw [AddEquiv.apply_symm_apply]
    funext i k
    change rs _ (coord (inter_le' i 0) (secOf V n x i) k) = _
    rw [coord_secOf, rs_rs, rs_self]
  right_inv σ := by
    funext i
    refine sec_ext_coord (isCoc V) (inter_le' i 0) fun k => ?_
    rw [coord_secOf, AddEquiv.apply_symm_apply, rs_rs, rs_self]
  map_add' x y := by
    funext i
    refine sec_ext_coord (isCoc V) (inter_le' i 0) fun k => ?_
    change _ = coord (inter_le' i 0) (secOf V n x i + secOf V n y i) k
    rw [map_add (f := _), Pi.add_apply, coord_secOf, coord_secOf, coord_secOf, map_add (f := _), Pi.add_apply,
      Pi.add_apply, map_add]

theorem cochainEquiv_δ (n : ℕ) (j : Fin (n + 2)) (x : K.X n) (i : Fin (n + 2) → ι) :
    cochainEquiv V (n + 1) (K.δ n j x) i =
      res (modulesAb (toMod U V.κ V.g)).obj (inter_le_comp U i j.succAbove)
        (cochainEquiv V n x (i ∘ j.succAbove)) := by
  refine sec_ext_coord (isCoc V) (inter_le' i (j.succAbove 0)) fun k => ?_
  change coord _ (secOf V (n + 1) (K.δ n j x) i) k =
    coord _ (secRes U V.κ V.g (inter_le_comp U i j.succAbove) (secOf V n x (i ∘ j.succAbove))) k
  rw [coord_secOf, V.e_δ n 0 j x i k, rs_rs]
  have := coord_secRes (inter_le' (i ∘ j.succAbove) 0) (inter_le_comp U i j.succAbove)
    (secOf V n x (i ∘ j.succAbove)) k
  refine Eq.trans ?_ this.symm
  rw [coord_secOf, rs_rs]

theorem cochainEquiv_d (n : ℕ) (x : K.X n) :
    cochainEquiv V (n + 1) (K.d n x) = d (modulesAb (toMod U V.κ V.g)).obj U n (cochainEquiv V n x) := by
  funext i

  rw [d_apply, Cos.d_apply, map_sum, Finset.sum_apply]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_zsmul, Pi.smul_apply, cochainEquiv_δ]

end Cochains

section Top

open GroundTheory.Arith.SchemeCoh

attribute [local instance] VB.fin

variable {O : Type} [CommRing O] {X : Scheme.{0}} {str : ∀ W : X.Opens, O →+* Γ(X, W)}
  {ι : Type} {U : ι → X.Opens} {K : Cos.{1} O}

theorem subsingleton_H_of_isAffine [IsAffine X] (hU : iSup U = ⊤)
    (ha : ∀ n (i : Fin (n + 1) → ι), IsAffineOpen (capO U i)) (V : VB str U K) (p : ℕ) :
    Subsingleton (K.cx.H (p + 1)) := by
  have hq : (toMod U V.κ V.g).IsQuasicoherent := isQuasicoherent_toMod (isCoc V) hU
  obtain ⟨e⟩ := nonempty_cechH_equiv_H.{0, 0} (toMod U V.κ V.g) U hU ha (p + 1)
  have h1 : Subsingleton (Sheaf.H.{0} (modulesAb (toMod U V.κ V.g)) (p + 1)) :=
    (GlobalTheory.coh.toH (toMod U V.κ V.g) (p + 1)).symm.toEquiv.subsingleton
  have h2 := e.toEquiv.subsingleton
  have key : ∀ c : K.cx.H (p + 1), c = 0 := fun c => by
    obtain ⟨⟨x, hx⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ c
    have hx' : K.d (p + 1) x = 0 := hx
    have hσ : d (modulesAb (toMod U V.κ V.g)).obj U (p + 1) (cochainEquiv V (p + 1) x) = 0 := by
      rw [← cochainEquiv_d, hx', map_zero]
    have h3 := Subsingleton.elim (cls _ hσ) 0
    rw [cls_eq_zero_iff] at h3
    obtain ⟨τ, hτ⟩ := h3
    obtain ⟨y, rfl⟩ := (cochainEquiv V p).surjective τ
    rw [← cochainEquiv_d] at hτ
    have h4 := (cochainEquiv V (p + 1)).injective hτ
    rw [Submodule.Quotient.mk_eq_zero]
    exact ⟨y, h4⟩
  exact ⟨fun a b => (key a).trans (key b).symm⟩

end Top

section Restrict

attribute [local instance] VB.fin

variable {X : Scheme.{0}} (W : X.Opens)

def toY {A : X.Opens} {T : W.toScheme.Opens} (h : W.ι ''ᵁ T ≤ A) : Γ(X, A) →+* Γ(W.toScheme, T) :=
  rs h

def ofY {A : X.Opens} {T : W.toScheme.Opens} (h : A ≤ W.ι ''ᵁ T) : Γ(W.toScheme, T) →+* Γ(X, A) :=
  rs h

theorem toY_ofY {A : X.Opens} {T : W.toScheme.Opens} (h : W.ι ''ᵁ T ≤ A) (h' : A ≤ W.ι ''ᵁ T)
    (x : Γ(W.toScheme, T)) : toY W h (ofY W h' x) = x :=
  (rs_rs h' h x).trans (rs_self (le_refl (W.ι ''ᵁ T)) x)

theorem ofY_toY {A : X.Opens} {T : W.toScheme.Opens} (h : W.ι ''ᵁ T ≤ A) (h' : A ≤ W.ι ''ᵁ T)
    (x : Γ(X, A)) : ofY W h' (toY W h x) = x :=
  (rs_rs h h' x).trans (rs_self _ x)

theorem rs_toY {A B : X.Opens} {T T' : W.toScheme.Opens} (h : W.ι ''ᵁ T ≤ A) (hT : T' ≤ T)
    (hAB : B ≤ A) (h' : W.ι ''ᵁ T' ≤ B) (x : Γ(X, A)) :
    rs hT (toY W h x) = toY W h' (rs hAB x) :=
  (rs_rs h (W.ι.image_mono hT) x).trans (rs_rs hAB h' x).symm

theorem image_preimage_of_le {A : X.Opens} (h : A ≤ W) : W.ι ''ᵁ (W.ι ⁻¹ᵁ A) = A := by
  rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι, inf_eq_right.2 h]

variable {ι : Type} {U : ι → X.Opens}

theorem capO_preimage {n : ℕ} (i : Fin n → ι) :
    capO (fun α => W.ι ⁻¹ᵁ U α) i = W.ι ⁻¹ᵁ capO U i := by
  refine SetLike.ext fun x => ?_
  rw [← SetLike.mem_coe, capO, Opens.coe_iInf, Set.mem_iInter]
  change _ ↔ W.ι x ∈ capO U i
  rw [← SetLike.mem_coe, capO, Opens.coe_iInf, Set.mem_iInter]
  rfl

theorem image_capO (hUW : ∀ α, U α ≤ W) {n : ℕ} (i : Fin (n + 1) → ι) :
    W.ι ''ᵁ capO (fun α => W.ι ⁻¹ᵁ U α) i = capO U i := by
  rw [capO_preimage, image_preimage_of_le W ((capO_le U i 0).trans (hUW _))]

theorem image_inf (hUW : ∀ α, U α ≤ W) (α β : ι) :
    W.ι ''ᵁ (W.ι ⁻¹ᵁ U α ⊓ W.ι ⁻¹ᵁ U β) = U α ⊓ U β :=
  image_preimage_of_le W (inf_le_left.trans (hUW α))

variable {O : Type} [CommRing O] {str : ∀ W : X.Opens, O →+* Γ(X, W)} {K : Cos.{1} O}

def strY (str : ∀ W : X.Opens, O →+* Γ(X, W)) (T : W.toScheme.Opens) : O →+* Γ(W.toScheme, T) :=
  str (W.ι ''ᵁ T)

theorem toY_str {A : X.Opens} {T : W.toScheme.Opens} (e : W.ι ''ᵁ T = A) (c : O) :
    toY W e.le (str A c) = strY W str T c := by
  subst e
  exact rs_self _ _

def restrictVB (hUW : ∀ α, U α ≤ W) (V : VB str U K) :
    VB (strY W str) (fun α => W.ι ⁻¹ᵁ U α) K where
  κ := V.κ
  fin := V.fin
  g α β k k' := toY W (image_inf W hUW α β).le (V.g α β k k')
  e n a :=
    { toFun := fun x i k => toY W (image_capO W hUW i).le (V.e n a x i k)
      invFun := fun t => (V.e n a).symm fun i k => ofY W (image_capO W hUW i).ge (t i k)
      left_inv := fun x => by
        apply (V.e n a).injective
        rw [AddEquiv.apply_symm_apply]
        funext i k
        exact ofY_toY W _ _ _
      right_inv := fun t => by
        funext i k
        simp only [AddEquiv.apply_symm_apply]
        exact toY_ofY W _ _ _
      map_add' := fun x y => by
        funext i k
        simp only [map_add (f := _), Pi.add_apply] }
  e_smul n a c x i k := by
    change toY W _ (V.e n a (c • x) i k) = _ * toY W _ (V.e n a x i k)
    rw [V.e_smul, map_mul, toY_str W (image_capO W hUW i)]
  e_δ n a b x i k := by
    change toY W _ (V.e (n + 1) (b.succAbove a) (K.δ n b x) i k) =
      rs _ (toY W _ (V.e n a x (i ∘ b.succAbove) k))
    rw [V.e_δ, rs_toY W _ _ (capO_comp U i b.succAbove) (image_capO W hUW i).le]
  e_chg n a b x i k := by
    change toY W _ (V.e n a x i k) = ∑ k', rs _ (toY W _ (V.g (i a) (i b) k k')) * toY W _ (V.e n b x i k')

    rw [V.e_chg n a b x i k, map_sum]
    refine Finset.sum_congr rfl fun k' _ => ?_
    rw [map_mul, rs_toY W _ _ (le_inf (capO_le U i a) (capO_le U i b)) (image_capO W hUW i).le]

end Restrict

theorem subsingleton_H : ∀ {O : Type} [CommRing O] {X : Scheme.{0}} (str : ∀ W : X.Opens, O →+* Γ(X, W)) (W : X.Opens) (hW : IsAffineOpen W)
    {ι : Type} [Fintype ι] (U : ι → X.Opens) (hU : (⨆ α, U α) = W) (ha : ∀ n (i : Fin (n + 1) → ι), IsAffineOpen (capO U i))
    (K : Cos.{1} O) (V : VB str U K) (p : ℕ), Subsingleton (K.cx.H (p + 1)) := by
  intro O _ X str W hW ι _ U hU ha K V p
  haveI : IsAffine W.toScheme := hW
  have hUW (α : ι) : U α ≤ W := hU ▸ le_iSup U α
  refine subsingleton_H_of_isAffine (X := W.toScheme) (U := fun α => W.ι ⁻¹ᵁ U α) ?_ ?_
    (restrictVB W hUW V) p
  · rw [← Scheme.Hom.preimage_iSup, hU]
    exact Scheme.Opens.ι_preimage_self W
  · intro n i
    rw [← W.ι.isAffineOpen_iff_of_isOpenImmersion]
    exact (image_capO W hUW i).symm ▸ ha n i

end GlobalTheory.CompanionTheory.VBAff
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineCoverHigherCohomologyVanishes =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormCover =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormCover", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsSmoothCoordinateCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.GrForm.AffCover

theorem iInf_basicOpen {X : Scheme.{0}} {V : X.Opens} : ∀ (n : ℕ) (g : Fin (n + 1) → Γ(X, V)),
    (⨅ a, X.basicOpen (g a)) = X.basicOpen (∏ k, g k) := by
  intro n
  induction n with
  | zero =>
    intro g
    simp
  | succ n ih =>
    intro g
    rw [Fin.prod_univ_succ, Scheme.basicOpen_mul, ← ih (fun k => g k.succ)]
    exact le_antisymm (le_inf (iInf_le _ 0) (le_iInf fun a => iInf_le _ a.succ))
      (le_iInf fun a => Fin.cases inf_le_left (fun b => inf_le_right.trans (iInf_le _ b)) a)

theorem stCover : GlobalTheory.CompanionTheory.GrForm.StCover := by
  intro O _ X q _ V hV
  classical
  have loc : ∀ x : V, ∃ (f : Γ(X, V)) (d : ℕ), x.1 ∈ X.basicOpen f ∧ Nonempty (Coord q (X.basicOpen f) d) := by
    intro x
    have h : RingHom.Locally RingHom.IsStandardSmooth (q.appLE ⊤ V le_top).hom :=
      RingHom.smooth_iff_locally_isStandardSmooth.1 (q.smooth_appLE (isAffineOpen_top _) hV le_top)
    obtain ⟨f, hf, hst⟩ := GlobalTheory.CompanionTheory.CovEx.exists_basicOpen RingHom.IsStandardSmooth
      RingHom.isStandardSmooth_respectsIso q hV h x.2
    obtain ⟨n, g, hg, he⟩ := hst.exists_etale_mvPolynomial
    exact ⟨f, n, hf, GlobalTheory.CompanionTheory.CovEx.coord_basicOpen q hV f g hg he⟩
  choose f d hx hc using loc
  obtain ⟨t, ht⟩ := hV.isCompact.elim_finite_subcover (fun x : V => (X.basicOpen (f x) : Set X))
    (fun x => (X.basicOpen (f x)).2) (fun x hxV => Set.mem_iUnion.2 ⟨⟨x, hxV⟩, hx _⟩)
  refine ⟨t, inferInstance, fun a => X.basicOpen (f a.1), fun a => d a.1, fun a => (hc a.1).some, ?_, ?_⟩
  · refine le_antisymm (iSup_le fun a => X.basicOpen_le _) fun x hxV => ?_
    obtain ⟨y, hy⟩ := Set.mem_iUnion.1 (ht hxV)
    obtain ⟨hy, hxy⟩ := Set.mem_iUnion.1 hy
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨y, hy⟩, hxy⟩
  · intro n i
    have e : capO (fun a : t => X.basicOpen (f a.1)) i = X.basicOpen (∏ k, f (i k).1) :=
      iInf_basicOpen n (fun k => f (i k).1)
    rw [e]
    exact hV.basicOpen _

end GlobalTheory.CompanionTheory.GrForm.AffCover
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormCover =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormSmul =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormSmul", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.GrFormSmul
open GlobalTheory.CompanionTheory.GrForm

theorem rep_smul {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R} (a b : IdF A) {j : ℕ}
    {z z' : ∀ s : ComposableArrows C j, A.obj (s.obj (Fin.last j))} {c : CH.H (sq a b) j} (r : R)
    (h : Rep a b z c) (hz : ∀ s, z' s - r • z s ∈ b.S _) : Rep a b z' (r • c) := by
  obtain ⟨f, hf, rfl, hfz⟩ := h
  refine ⟨r • f, by rw [map_smul, hf, smul_zero], rfl, fun s => ?_⟩
  rw [Ideal.Quotient.eq.mpr (hz s), ← Ideal.Quotient.mkₐ_eq_mk R, map_smul, Ideal.Quotient.mkₐ_eq_mk, ← hfz s]
  rfl

variable {O : Type} [CommRing O] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)}

theorem lft_str_sub {W : X.Opens} (T : Thick (LL q)) (h : InU W T) (a : O) (f : Γ(X, W)) :
    lft W T (strV q W a * f) - T.i a * lft W T f ∈ T.J := by
  rw [← Ideal.Quotient.eq, lft_spec T h, map_mul, map_mul, lft_spec T h, ev_str T h]

theorem lift_nat {W : X.Opens} {d : ℕ} {t : Fin d → Γ(X, W)} {u : Fin d → ∀ T : Thick (LL q), T.B}
    (hu : IsLift W t u) (i : Fin d) {T T' : Thick (LL q)} (φ : T ⟶ T') (h : InU W T) (h' : InU W T') :
    u i T' - φ.φ (u i T) ∈ T'.J := by
  rw [← Ideal.Quotient.eq, hu i T' h', ev_nat φ h h', ← hu i T h, Ideal.quotientMap_mk]

private theorem mul_mem_sFil_succ_of_mem_sFil_of_mem_J {P : ObjectProperty (Thick (LL q))} {r : ℕ} (T : P.FullSubcategory)
    {y z : T.obj.B} (hy : y ∈ (sFil P (r : ℤ)).S T) (hz : z ∈ T.obj.J) :
    y * z ∈ (sFil P ((r : ℤ) + 1)).S T := by
  have h1 : z ∈ pdP T.obj.δ 1 := by
    have := GlobalTheory.CompanionTheory.DPFil.dpow_mem_pdP T.obj.δ 1 hz
    rwa [T.obj.δ.dpow_one hz] at this
  exact GlobalTheory.CompanionTheory.DPFil.dividedPowerFiltration_mul_le T.obj.δ r 1 (Ideal.mul_mem_mul (show y ∈ pdP T.obj.δ r from hy) h1)

theorem stSmul : StSmul := by
  intro O _ X q W d t u hu P hP r x c a hc
  unfold Rp at hc ⊢
  refine rep_smul _ _ a hc (fun s => ?_)
  have hw : ∀ I : Fin r → Fin d, wz (Φ := sP P) (fun i T => u i T.obj) I s ∈ (sFil P (r : ℤ)).S (s.obj (Fin.last r)) :=
    fun I => wz_mem (GlobalTheory.CompanionTheory.DPFil.isFil_sFil P) _
      (fun i T T' φ => lift_nat hu i (P.ι.map φ) (hP _ T.property) (hP _ T'.property)) I s
  simp only [Finset.smul_sum, ← Finset.sum_sub_distrib]
  refine Ideal.sum_mem _ (fun I _ => ?_)
  rw [← mul_smul_comm, ← mul_sub]
  exact mul_mem_sFil_succ_of_mem_sFil_of_mem_J _ (hw _) (lft_str_sub _ (hP _ (s.obj (Fin.last r)).property) a (x I))

end GlobalTheory.CompanionTheory.GrFormSmul
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormSmul =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineGradedCohomologyVanishing =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineGradedCohomologyVanishing", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCocycle\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Mathlib.AlgebraicGeometry.AffineScheme\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineCoverHigherCohomologyVanishes\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordinatesRestrictAffineOpen\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormAction\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormAdd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormCocycle\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormCover\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormExistsOfCocycle\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormFrame\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormLocalOfFrame\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormRestrict\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormSmul\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormVanishOfFrame\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedFormVectorBundle\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenFiniteInfIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section
namespace GlobalTheory.CompanionTheory.GrForm

theorem capT_eq {O : Type} [CommRing O] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {ι : Type}
    (Q : ObjectProperty (Thick (LL q))) (U : ι → X.Opens) {n : ℕ} (i : Fin (n + 1) → ι) :
    capT (fun α => St Q {U α}) i = St Q {capO U i} := by
  funext T
  have h := _root_.GlobalTheory.CompanionTheory.Thick.inU_iInf_finset (γ := dividedPowersBot O) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (U ∘ i) Finset.univ T
  have e : (⨅ α ∈ (Finset.univ : Finset (Fin (n + 1))), (U ∘ i) α) = capO U i := by simp [capO]
  rw [e] at h
  refine propext ⟨fun hT => ?_, fun hT a => ?_⟩
  · refine ⟨(hT 0).1, capO U i, rfl, h.2 fun a _ => ?_⟩
    obtain ⟨-, V, hV, hI⟩ := hT a
    rw [Set.mem_singleton_iff] at hV
    subst hV
    exact hI
  · obtain ⟨h1, V, hV, hI⟩ := hT
    rw [Set.mem_singleton_iff] at hV
    subst hV
    exact ⟨h1, _, rfl, h.1 hI a (Finset.mem_univ _)⟩

theorem dividedPowerFiltration_bot {K : Type} [CommRing K] {s : ℕ} (hs : 0 < s) : pdP (dividedPowersBot K) s = ⊥ := by
  refine le_bot_iff.1 (Ideal.span_le.2 ?_)
  rintro _ ⟨l, hl, hr, rfl⟩
  have : ∃ p ∈ l, p.1 ≠ 0 := by
    by_contra hc
    push_neg at hc
    have : (l.map Prod.fst).sum = 0 := List.sum_eq_zero (by
      intro x hx
      obtain ⟨p, hp, rfl⟩ := List.mem_map.1 hx
      exact hc p hp)
    omega
  obtain ⟨p, hp, hp0⟩ := this
  have h0 : (dividedPowersBot K).dpow p.1 p.2 = 0 := by
    have : p.2 = 0 := hl p hp
    rw [this]
    exact (dividedPowersBot K).dpow_eval_zero hp0
  simp only [SetLike.mem_coe]
  rw [List.prod_eq_zero (List.mem_map.2 ⟨p, hp, h0⟩)]
  exact Ideal.zero_mem _

theorem tfBase {K : Type} [Field K] [CharZero K] {s : ℕ} (hs : 0 < s) : TFBase (dividedPowersBot K) 1 s := by
  refine ⟨dividedPowerFiltration_bot hs, ?_, ?_⟩
  · intro r x h
    simpa using h
  · intro n hn
    exact ⟨0, (n : K)⁻¹, by simpa only [pow_zero] using mul_inv_cancel₀ (Nat.cast_ne_zero.2 hn)⟩

def zeroSerre (K : Type) [CommRing K] : Serre.{1} K where
  P M _ _ := Subsingleton M
  zero _ _ _ h := h
  mid M₁ M₂ M₃ _ _ _ _ _ _ f g hfg h₁ h₃ := ⟨fun a b => by
    have key : ∀ x : M₂, x = 0 := fun x => by
      obtain ⟨y, rfl⟩ := (hfg x).1 (Subsingleton.elim _ _)
      rw [Subsingleton.elim y 0, map_zero]
    rw [key a, key b]⟩

theorem subsingleton_H {K : Type} [CommRing K] (C : Cx.{1} K) (n : ℕ) (h : Subsingleton (C.X n)) : Subsingleton (C.H n) := by
  refine ⟨fun a b => ?_⟩
  obtain ⟨a, rfl⟩ := Submodule.Quotient.mk_surjective _ a
  obtain ⟨b, rfl⟩ := Submodule.Quotient.mk_surjective _ b
  rw [Subsingleton.elim a b]

theorem cech_van (hV : StVan) {O : Type} [CommRing O] (l s : ℕ) (hb : TFBase (dividedPowersBot O) l s) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) {ι : Type} (U : ι → X.Opens) (d : ι → ℕ)
    (c : ∀ α, Coord q (U α) (d α)) (ha : ∀ n (i : Fin (n + 1) → ι), IsAffineOpen (capO U i)) (r b a : ℕ) (hr : r < s)
    (hbr : b ≠ r) : Subsingleton ((CrystallineSemistableComparison.Pb.cechH (GF q r) (fun α => SS q l s (U α)) b).cx.H a) := by
  refine subsingleton_H _ a ?_
  refine ⟨fun x y => funext fun i => ?_⟩
  have e := capT_eq (q := q) (TF l s) U i
  obtain ⟨c', -⟩ := _root_.GlobalTheory.CompanionTheory.CoordRes.main (c (i 0)) (capO_le U i 0) (ha _ i)
  have : Subsingleton (HU (GF q r) (capT (fun α => SS q l s (U α)) i) b) := by
    rw [e]
    exact hV l s hb q c' r b hr hbr
  exact Subsingleton.elim _ _

theorem cech_pos (hB : StVB) {O : Type} [CommRing O] (l s : ℕ) (hb : TFBase (dividedPowersBot O) l s) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) {ι : Type} [Fintype ι] (U : ι → X.Opens) (d : ι → ℕ) (V : X.Opens) (hV : IsAffineOpen V)
    (hU : (⨆ α, U α) = V)
    (c : ∀ α, Coord q (U α) (d α)) (ha : ∀ n (i : Fin (n + 1) → ι), IsAffineOpen (capO U i)) (r p : ℕ) (hr : r < s) :
    Subsingleton ((CrystallineSemistableComparison.Pb.cechH (GF q r) (fun α => SS q l s (U α)) r).cx.H (p + 1)) := by
  obtain ⟨vb⟩ := hB l s hb q U d c ha r hr
  exact _root_.GlobalTheory.CompanionTheory.VBAff.subsingleton_H (strV q) V hV U hU ha (CrystallineSemistableComparison.Pb.cechH (GF q r) (fun α => SS q l s (U α)) r) vb p


theorem main (hV : StVan) (hB : StVB) (hC : StCover) : KH.GlobSerreSt → ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q]
    (V : X.Opens) (hV : IsAffineOpen V) (s r j : ℕ), r < s → j ≠ r → Subsingleton (HQ (KS q s {V}) r ((r : ℤ) + 1) j) := by
  intro hS K _ _ X q _ V hVa s r j hr hj
  have hs : 0 < s := by omega
  have hb : TFBase (dividedPowersBot K) 1 s := tfBase hs
  obtain ⟨ι, _, U, d, c, hU, ha⟩ := hC q V hVa
  have hle : ∀ α, U α ≤ V := fun α => hU ▸ le_iSup U α
  have hinc : St (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (TF 1 s) (Set.range U) ≤
      St (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (TF 1 s) {V} := by
    rintro T ⟨h1, W, ⟨α, rfl⟩, hI⟩
    exact ⟨h1, V, rfl, fun x hx => hle α (hI hx)⟩
  have hz := _root_.GlobalTheory.CompanionTheory.NlZar.zariski_descent (γ := dividedPowersBot K) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (TF 1 s) (Or.inl ⟨rfl, 1, s, rfl⟩) (Set.range U) {V} hinc
    (by
      rintro W rfl
      rw [← hU, sSup_range]) j
  have hcech : ∀ a b, a + b = j → (zeroSerre K).P ((CrystallineSemistableComparison.Pb.cechH (GF q r) (fun α => SS q 1 s (U α)) b).cx.H a) := by
    intro a b hab
    by_cases hbr : b = r
    · subst hbr
      cases a with
      | zero => exact absurd (by omega) hj
      | succ p => exact cech_pos hB 1 s hb q U d V hVa hU c ha b p hr
    · exact cech_van hV 1 s hb q U d c ha r b a hr hbr
  have hG := hS (O := K) (R := K) (I := ⊥) (γ := dividedPowersBot K) (p := 0) (X := X) (q := q) (κ := Ideal.Quotient.mk ⊥) (Λ := K)
    (GF q r) (TF 1 s) U (zeroSerre K) j hcech
  exact @Function.Injective.subsingleton _ _ _ (hz.1 r ((r : ℤ) + 1)).1 hG

end GlobalTheory.CompanionTheory.GrForm

namespace GlobalTheory.CompanionTheory.GrForm

theorem gr_aff : KH.LocGr → KH.LocVan → KH.PolyTf → KH.GlobSerreSt → KH.GlobVanSt → ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) [Smooth q]
    (V : X.Opens) (hV : IsAffineOpen V) (s r j : ℕ), r < s → j ≠ r → Subsingleton (HQ (KS q s {V}) r ((r : ℤ) + 1) j) := fun hL _ hP hS _ =>
  main (_root_.GlobalTheory.CompanionTheory.GrForm.van _root_.GlobalTheory.CompanionTheory.GrForm.stFrame hL hP)
    (_root_.GlobalTheory.CompanionTheory.GrVB.main (_root_.GlobalTheory.CompanionTheory.GrForm.exists_of_cocycle _root_.GlobalTheory.CompanionTheory.GrForm.stCocycle) _root_.GlobalTheory.CompanionTheory.GrForm.stAdd _root_.GlobalTheory.CompanionTheory.GrFormSmul.stSmul _root_.GlobalTheory.CompanionTheory.GrForm.stRes _root_.GlobalTheory.CompanionTheory.GrForm.stAct (_root_.GlobalTheory.CompanionTheory.GrForm.stLoc _root_.GlobalTheory.CompanionTheory.GrForm.stFrame hL hP))
    _root_.GlobalTheory.CompanionTheory.GrForm.AffCover.stCover hS
end GlobalTheory.CompanionTheory.GrForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineGradedCohomologyVanishing =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineGradedCohomologyVanishing\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreStH\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem gr_aff_pf : KH.GrAff :=
  _root_.GlobalTheory.CompanionTheory.GrForm.gr_aff locGr_h locVan_h polyTf_h globSerreSt_h globVanSt_h

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.gr_aff =====

module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsTwoPoints
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ProjCoordRepresentationGeometricFibreSpanning
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverMorphismRestrictOfRelAmple
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDiv, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDivStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDiv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDiv", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.ExistsTwoPoints\nimport Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverMorphismRestrictOfRelAmple\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ProjCoordRepresentationGeometricFibreSpanning\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.UMin.CrdMap

open GlobalTheory.ProjSpace GlobalTheory.Cartier GlobalTheory.QCoh.Qcqs

theorem pCrd_pt {o A : Type} [CommRing o] [CommRing A] {n : ℕ} (c : o →+* A) (v : Fin (n + 1) → A)
    (hv : Ideal.span (Set.range v) = ⊤) : PCrd (pt c v hv) v := by
  have hφ := toProj_coord o n
  have hstr : pt c v hv ≫ PSpace.str o n = spMap c := by
    rw [pt, PSpace.str, ProjPoint.ofHom_toSpecZero_assoc, ← Spec.map_comp]
    congr 1
    ext1
    exact RingHom.ext fun r => MvPolynomial.eval₂Hom_C c v r
  have h1 := (ProjCoord.secCoord_iff (Equiv.refl _) (toProj (PSpace.str o n) (coord o n) (iSup_nonzeroLocus_coord o n))
    c (pt c v hv) (by rw [hφ, Category.comp_id]; exact hstr) v).2 ⟨by simpa using hv, by rw [hφ, Category.comp_id]; rfl⟩
  exact (FibreEmbed.secCoord_iff_of_secMaps (LB.isLB_pull (O1_isLB o n) _) (O1_isLB o n)
    (fun j => secMaps_toProjIso _ _ _ j) (iSup_nonzeroLocus_secPull (iSup_nonzeroLocus_coord o n) _)
    (iSup_nonzeroLocus_coord o n)).1 h1

section Map

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (M : RatModel o Ω) {n : ℕ} (c : Fin (n + 1) → Ω)

def dOpen (i : Fin (n + 1)) : M.Z.Opens := ⟨{z | M.Div c i z}, M.isOpen_setOf_div c i⟩

theorem subsingleton_of_not_nonempty {X : Scheme.{0}} {V : X.Opens} (hV : ¬ (V : Set X).Nonempty) :
    Subsingleton Γ(X, V) := by
  have : V = ⊥ := SetLike.coe_injective (Set.not_nonempty_iff_eq_empty.1 hV)
  subst this
  infer_instance


variable {M} in
theorem eq_of_valF {V : M.Z.Opens} {f g : Γ(M.Z, V)}
    (h : ∀ hV : (V : Set M.Z).Nonempty, valF M.pt V f = valF M.pt V g) : f = g := by
  by_cases hV : (V : Set M.Z).Nonempty
  · exact M.valF_injective hV (h hV)
  · have := subsingleton_of_not_nonempty hV
    exact Subsingleton.elim _ _


open Classical in
def fnOf (V : M.Z.Opens) (x : Ω) : Γ(M.Z, V) :=
  if h : ∃ f : Γ(M.Z, V), valF M.pt V f = x then h.choose else 0


variable {M} in
theorem valF_fnOf {V : M.Z.Opens} {x : Ω} (h : ∃ f : Γ(M.Z, V), valF M.pt V f = x) :
    valF M.pt V (fnOf M V x) = x := by
  rw [fnOf, dite_eq_left h]
  exact h.choose_spec

def ratioFn (i j : Fin (n + 1)) : Γ(M.Z, dOpen M c i) := fnOf M (dOpen M c i) (c j / c i)

variable {M c}

theorem valF_ratioFn {i j : Fin (n + 1)} {V : M.Z.Opens} (hV : V ≤ dOpen M c i) (hne : (V : Set M.Z).Nonempty) :
    valF M.pt V (resG M.Z hV (ratioFn M c i j)) = c j / c i := by
  have hne' : ((dOpen M c i : M.Z.Opens) : Set M.Z).Nonempty := hne.mono hV
  rw [M.valF_resG hV hne, ratioFn, valF_fnOf]
  exact (RatModel.mem_ringOn_iff_exists hne').1 (RatModel.mem_ringOn.2 fun z hz => hz.2 j)

theorem valF_one' {V : M.Z.Opens} (hne : (V : Set M.Z).Nonempty) : valF M.pt V 1 = 1 := by
  rw [← M.res_apply V hne, map_one]

theorem valF_mul' {V : M.Z.Opens} (hne : (V : Set M.Z).Nonempty) (f g : Γ(M.Z, V)) :
    valF M.pt V (f * g) = valF M.pt V f * valF M.pt V g := by
  rw [← M.res_apply V hne, map_mul, M.res_apply, M.res_apply]

theorem isCoordFamily_ratioFn (hd : M.HasDiv c) : IsCoordFamily (dOpen M c) (ratioFn M c) := by
  refine { cover := top_le_iff.1 fun z _ => TopologicalSpace.Opens.mem_iSup.2 (hd z)
           self := ?_, mul := ?_, basicOpen_le := ?_ }
  · intro i
    refine eq_of_valF fun hne => ?_
    obtain ⟨z, hz⟩ := hne
    have := valF_ratioFn (j := i) (le_refl (dOpen M c i)) ⟨z, hz⟩
    rw [resG_self] at this
    rw [this, valF_one' ⟨z, hz⟩, div_self hz.1]
  · intro i j k
    refine eq_of_valF fun hne => ?_
    obtain ⟨z, hz⟩ := hne
    rw [valF_mul' ⟨z, hz⟩, valF_ratioFn _ ⟨z, hz⟩, valF_ratioFn _ ⟨z, hz⟩, valF_ratioFn _ ⟨z, hz⟩]
    have h1 := hz.1.1
    have h2 := hz.2.1
    field_simp
  · intro i j z hz
    have hzi : z ∈ dOpen M c i := M.Z.basicOpen_le _ hz
    have hu := (RatModel.isUnit_valF_iff hzi (ratioFn M c i j)).2 hz
    have e : valF M.pt (dOpen M c i) (ratioFn M c i j) = c j / c i := by
      have := valF_ratioFn (j := j) (le_refl (dOpen M c i)) ⟨z, hzi⟩
      rwa [resG_self] at this
    have e' : (⟨valF M.pt (dOpen M c i) (ratioFn M c i j), RatModel.valF_mem_O hzi _⟩ : M.O z) =
        ⟨c j / c i, (show M.Div c i z from hzi).2 j⟩ := Subtype.ext e
    rw [e'] at hu
    exact ((show M.Div c i z from hzi).div_iff_isUnit j).2 hu

end Map

section Main

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {M : RatModel o Ω} {n : ℕ} {c : Fin (n + 1) → Ω}

theorem appLE_eq_fnOn {X : Scheme.{0}} (x : Sp Ω ⟶ X) (U : X.Opens) (h : ⊤ ≤ x ⁻¹ᵁ U) (f : Γ(X, U)) :
    (x.appLE U ⊤ h).hom f = fnOn ⊤ (valF x U f) := by
  rw [valF, dite_eq_left h, fnOn, RingHom.comp_apply, resG_self]
  simp

theorem pt_comp_toHom (hd : M.HasDiv c) (hc : Ideal.span (Set.range c) = ⊤) :
    M.pt ≫ (isCoordFamily_ratioFn hd).toHom M.s = pt (algebraMap o Ω) c hc := by
  let _ := MvPolynomial.gradedAlgebra (σ := Fin (n + 1)) (R := o)
  set H := isCoordFamily_ratioFn hd
  obtain ⟨i, hi⟩ := hd (genericPoint M.Z)
  have hpt : ⊤ ≤ M.pt ⁻¹ᵁ dOpen M c i := M.top_le_preimage_pt ⟨_, RatModel.div_genericPoint hi.1⟩
  have h₁ : ⊤ ≤ (M.pt ≫ H.toHom M.s) ⁻¹ᵁ chart o n i :=
    GlobalTheory.Points.le_preimage_comp M.pt _ (H.le_toHom_preimage M.s i) hpt
  have hchart : pt (algebraMap o Ω) c hc ⁻¹ᵁ chart o n i = spOpen (c i) := by
    rw [pt, chart, ProjPoint.ofHom_preimage_basicOpen _ _ _ one_pos (X_mem o n i),
      MvPolynomial.eval₂Hom_X']
    rfl
  have h₂ : ⊤ ≤ pt (algebraMap o Ω) c hc ⁻¹ᵁ chart o n i := by
    rw [hchart]
    exact fun y _ => mem_spOpen.2 fun hm => y.isPrime.ne_top (Ideal.eq_top_of_isUnit_mem _ hm (Ne.isUnit hi.1))
  have hstr : pt (algebraMap o Ω) c hc ≫ PSpace.str o n = spMap (algebraMap o Ω) := by
    rw [pt, PSpace.str, ProjPoint.ofHom_toSpecZero_assoc, ← Spec.map_comp]
    congr 1
    ext1
    exact RingHom.ext fun r => MvPolynomial.eval₂Hom_C (algebraMap o Ω) c r
  refine hom_ext (by rw [Category.assoc, H.toHom_str, M.pt_s, hstr]) fun _ => ⟨⊤, trivial, i, h₁, h₂, fun j => ?_⟩
  have hratio : pullRatio (pt (algebraMap o Ω) c hc) ⊤ i h₂ j * fnOn ⊤ (c i) = fnOn ⊤ (c j) := by
    let β := algebraMap o Ω
    have hunit : IsUnit (MvPolynomial.eval₂Hom β c (MvPolynomial.X i)) := by
      rw [MvPolynomial.eval₂Hom_X']
      exact Ne.isUnit hi.1
    have haway : pt β c hc =
        spMap (ProjPoint.awayLift (grading o n) (MvPolynomial.eval₂Hom β c) (MvPolynomial.X i) hunit) ≫ _ :=
      ProjPoint.ofHom_eq_awayι _ _ _ one_pos (X_mem o n i) hunit
    have heval := ProjPoint.awayLift_mk_mul (grading o n) (MvPolynomial.eval₂Hom β c) hunit
      (X_mem o n i) 1 (MvPolynomial.X j) (X_mem o n j)
    rw [pullRatio_of_eq haway h₂ (haway ▸ h₂), pullRatio_spMap_awayι, ← map_mul]
    exact congrArg _ (by simpa only [ratioAway, MvPolynomial.eval₂Hom_X', pow_one] using heval)
  have hu : IsUnit (fnOn (⊤ : (Sp Ω).Opens) (c i)) := (Ne.isUnit hi.1).map _
  refine hu.mul_right_cancel ?_
  rw [hratio, ← appLE_pullRatio (φ := H.toHom M.s) (hi := H.le_toHom_preimage M.s i) M.pt hpt, H.pullRatio_toHom,
    appLE_eq_fnOn, ← map_mul]
  congr 1
  have := valF_ratioFn (M := M) (c := c) (j := j) (le_refl (dOpen M c i)) ⟨_, RatModel.div_genericPoint hi.1⟩
  rw [resG_self] at this
  rw [this, div_mul_cancel₀ _ hi.1]

theorem exists_map_of_hasDiv : ∀ (k Ω : Type) [CommRing k] [Field Ω] [Algebra k Ω] (M : RatModel k Ω) (n : ℕ)
    (c : Fin (n + 1) → Ω), M.HasDiv c → ∃ h : M.Z ⟶ PSpace k n, h ≫ PSpace.str k n = M.s ∧ PCrd (M.pt ≫ h) c := by
  intro k Ω _ _ _ M n c hd
  obtain ⟨i, hi⟩ := hd (genericPoint M.Z)
  have hc : Ideal.span (Set.range c) = ⊤ :=
    Ideal.eq_top_of_isUnit_mem _ (Ideal.subset_span ⟨i, rfl⟩) (Ne.isUnit hi.1)
  refine ⟨(isCoordFamily_ratioFn hd).toHom M.s, (isCoordFamily_ratioFn hd).toHom_str M.s, ?_⟩
  rw [pt_comp_toHom hd hc]
  exact pCrd_pt _ c hc

end Main

end GlobalTheory.UMin.CrdMap
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDiv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDivStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDivStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProjectiveSpaceMapOfModelHasDivStatement =====

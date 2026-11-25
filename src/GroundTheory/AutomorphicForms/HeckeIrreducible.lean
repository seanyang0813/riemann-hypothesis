module

public import GroundTheory.AutomorphicForms.HeckeAlgebraLevel
public import Mathlib.RepresentationTheory.Irreducible

@[expose] public section

noncomputable section

universe u

namespace GroundTheory.Automorphic

open Set Filter Topology MeasureTheory
open scoped Pointwise

variable {G : Type u} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [LocallyCompactSpace G] [T2Space G] [TotallyDisconnectedSpace G]
  [MeasurableSpace G] [BorelSpace G] {μ : Measure G} [μ.IsHaarMeasure]
  {K : Subgroup G} (hKc : IsCompact (K : Set G)) (hKo : IsOpen (K : Set G))

namespace HeckeAlgebra

section General

variable {V : Type*} [AddCommGroup V] [Module ℂ V] {ρ : Representation ℂ G V}


omit [μ.IsHaarMeasure] in
theorem heckeAct_mul [IsFiniteMeasureOnCompacts μ] [μ.IsMulLeftInvariant] (a b : HeckeAlgebra μ)
    {v : V} (hv : v ∈ smoothVectors ρ) :
    heckeAct μ ρ (a * b : HeckeAlgebra μ) v = heckeAct μ ρ a (heckeAct μ ρ b v) := by
  rw [coe_mul]
  exact heckeAct_groupConv a.mem b.mem hv

theorem heckeAct_corner {v : V} (hv : v ∈ fixedVectors ρ K) (f : HeckeAlgebra μ) :
    heckeAct μ ρ (HeckeAlgebraLevel.corner hKc hKo f : HeckeAlgebra μ) v =
      heckeAct μ ρ (idem μ hKc hKo * f : HeckeAlgebra μ) v := by
  rw [HeckeAlgebraLevel.val_corner, heckeAct_mul _ _ (smooth_of_mem_fixedVectors hKo hv),
    heckeAct_idem_of_mem (μ := μ) hKc hKo hv]

theorem heckeAct_idem_apply (g : G) {v : V} (hv : v ∈ fixedVectors ρ K) :
    heckeAct μ ρ (idem μ hKc hKo) (ρ g v) =
      heckeAct μ ρ (idem μ hKc hKo * leftReg μ g (idem μ hKc hKo) : HeckeAlgebra μ) v := by
  have hs := smooth_of_mem_fixedVectors hKo hv
  rw [heckeAct_mul _ _ hs]
  conv_lhs => rw [← heckeAct_idem_of_mem (μ := μ) hKc hKo hv]
  rw [heckeAct_ltrans g (idem μ hKc hKo).mem hs]
  rfl


omit [LocallyCompactSpace G] [T2Space G] [TotallyDisconnectedSpace G] [MeasurableSpace G]
  [BorelSpace G] [IsTopologicalGroup G] in
theorem mem_span_orbit [ρ.IsIrreducible] {v : V} (hv : v ≠ 0) (w : V) :
    w ∈ Submodule.span ℂ (range fun g => ρ g v) := by
  set S := Submodule.span ℂ (range fun g => ρ g v)
  have hS : ∀ g, ∀ ⦃x⦄, x ∈ S → ρ g x ∈ S := by
    intro g x hx
    have : S ≤ S.comap (ρ g) := Submodule.span_le.2 (by
      rintro _ ⟨h, rfl⟩
      exact Submodule.subset_span ⟨g * h, by simp⟩)
    exact this hx
  rcases IsSimpleOrder.eq_bot_or_eq_top (⟨S, hS⟩ : Subrepresentation ρ) with h | h
  · exfalso
    apply hv
    have : v ∈ (⟨S, hS⟩ : Subrepresentation ρ) := Submodule.subset_span ⟨1, by simp⟩
    rw [h] at this
    exact (Submodule.mem_bot ℂ).1 this
  · have : w ∈ (⊤ : Subrepresentation ρ) := Submodule.mem_top
    rw [← h] at this
    exact this

end General

section Simple

variable {V : Type*} [AddCommGroup V] [Module ℂ V] {ρ : Representation ℂ G V}

theorem isSimpleModule_fixedVectors (hρ : IsSmooth ρ) [ρ.IsIrreducible]
    (hK : fixedVectors ρ K ≠ ⊥) :
    IsSimpleModule (HeckeAlgebraLevel μ K hKc hKo) (fixedVectors ρ K) := by
  rw [isSimpleModule_iff_toSpanSingleton_surjective]
  refine ⟨?_, fun x hx y => ?_⟩
  · obtain ⟨v, hv, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hK
    exact ⟨⟨⟨v, hv⟩, 0, fun h => hv0 (congrArg Subtype.val h)⟩⟩
  · have hx0 : (x : V) ≠ 0 := fun h => hx (Subtype.ext h)
    let M : HeckeAlgebra μ →ₗ[ℂ] V :=
      { toFun := fun f => heckeAct μ ρ (idem μ hKc hKo * f : HeckeAlgebra μ) x
        map_add' := fun a b => by
          rw [mul_add, coe_add, heckeAct_add_left (mem _) (mem _) (hρ _)]
        map_smul' := fun c a => by
          simp only [RingHom.id_apply]
          rw [mul_smul_comm, coe_smul, heckeAct_smul_left c (mem _) (hρ _)] }
    let L : V →ₗ[ℂ] V := heckeRep (μ := μ) hρ (idem μ hKc hKo)
    have hspan : Submodule.span ℂ (range fun g => ρ g x) ≤ (LinearMap.range M).comap L := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨g, rfl⟩
      exact ⟨leftReg μ g (idem μ hKc hKo), (heckeAct_idem_apply hKc hKo g x.2).symm⟩
    obtain ⟨f, hf⟩ := hspan (mem_span_orbit hx0 (y : V))
    refine ⟨HeckeAlgebraLevel.corner hKc hKo f, Subtype.ext ?_⟩
    rw [LinearMap.toSpanSingleton_apply, HeckeAlgebraLevel.coe_smul_fixedVectors,
      heckeAct_corner hKc hKo x.2]
    refine hf.trans ?_
    exact heckeAct_idem_of_mem (μ := μ) hKc hKo y.2

end Simple

section Construction

namespace HeckeAlgebraLevel

theorem smul_mem_ideal (I : Submodule (HeckeAlgebraLevel μ K hKc hKo) (HeckeAlgebraLevel μ K hKc hKo))
    (c : ℂ) {h : HeckeAlgebraLevel μ K hKc hKo} (hh : h ∈ I) : c • h ∈ I := by
  have : c • h = (c • (1 : HeckeAlgebraLevel μ K hKc hKo)) * h := by
    apply ext hKc hKo
    rw [val_smul, val_mul, val_smul, val_one, smul_mul_assoc,
      ((mem_biInvariant_iff_idem hKc hKo).1 (val_mem hKc hKo h)).1]
  rw [this]
  exact I.smul_mem _ hh

def cornerₗ : HeckeAlgebra μ →ₗ[ℂ] HeckeAlgebraLevel μ K hKc hKo where
  toFun := corner hKc hKo
  map_add' a b := ext hKc hKo (by simp only [val_corner, val_add, mul_add, add_mul])
  map_smul' c a := ext hKc hKo (by
    simp only [val_corner, val_smul, RingHom.id_apply, mul_smul_comm, smul_mul_assoc])

end HeckeAlgebraLevel

open HeckeAlgebraLevel

variable (I : Submodule (HeckeAlgebraLevel μ K hKc hKo) (HeckeAlgebraLevel μ K hKc hKo))

def heckeKernel : Submodule ℂ (HeckeAlgebra μ) where
  carrier := {φ | ∀ g, cornerₗ hKc hKo (leftReg μ g φ) ∈ I}
  add_mem' {a b} ha hb g := by
    rw [map_add (f := _), map_add (f := _)]
    exact I.add_mem (ha g) (hb g)
  zero_mem' g := by
    rw [map_zero, map_zero]
    exact I.zero_mem
  smul_mem' c φ hφ g := by
    rw [map_smul, map_smul]
    exact smul_mem_ideal hKc hKo I c (hφ g)

theorem heckeKernel_le_comap (g : G) :
    heckeKernel hKc hKo I ≤ (heckeKernel hKc hKo I).comap (leftReg μ g) := by
  intro φ hφ g'
  rw [← Module.End.mul_apply, ← map_mul]
  exact hφ (g' * g)

def quotRep : Representation ℂ G (HeckeAlgebra μ ⧸ heckeKernel hKc hKo I) :=
  (leftReg μ).quotient _ (heckeKernel_le_comap hKc hKo I)

end Construction

section Classification

open HeckeAlgebraLevel

variable {V : Type*} [AddCommGroup V] [Module ℂ V] {ρ : Representation ℂ G V}

def orbitMap (v : V) (hv : v ∈ smoothVectors ρ) : HeckeAlgebra μ →ₗ[ℂ] V where
  toFun f := heckeAct μ ρ f v
  map_add' a b := by
    rw [coe_add]
    exact heckeAct_add_left a.mem b.mem hv
  map_smul' c a := by
    rw [coe_smul]
    exact heckeAct_smul_left c a.mem hv

theorem nonempty_equiv_quotRep (I : Submodule (HeckeAlgebraLevel μ K hKc hKo)
    (HeckeAlgebraLevel μ K hKc hKo)) (hρ : IsSmooth ρ) [ρ.IsIrreducible] {v₀ : V}
    (hv₀ : v₀ ∈ fixedVectors ρ K) (h0 : v₀ ≠ 0)
    (hI : ∀ h : HeckeAlgebraLevel μ K hKc hKo, h ∈ I ↔ heckeAct μ ρ (h : HeckeAlgebra μ) v₀ = 0) :
    Nonempty ((quotRep hKc hKo I).Equiv ρ) := by
  let Φ := orbitMap (μ := μ) v₀ (hρ v₀)
  have hΦ : ∀ f, Φ f = heckeAct μ ρ f v₀ := fun _ => rfl
  have crit : ∀ x : V, (∀ g, heckeAct μ ρ (idem μ hKc hKo) (ρ g x) = 0) → x = 0 := by
    intro x hx
    by_contra hx0
    have hle : Submodule.span ℂ (range fun g => ρ g x) ≤
        LinearMap.ker (heckeRep (μ := μ) hρ (idem μ hKc hKo)) :=
      Submodule.span_le.2 (by
        rintro _ ⟨g, rfl⟩
        exact hx g)
    have := hle (mem_span_orbit hx0 v₀)
    rw [LinearMap.mem_ker, heckeRep_apply, heckeAct_idem_of_mem (μ := μ) hKc hKo hv₀] at this
    exact h0 this
  have key : ∀ φ g, heckeAct μ ρ (idem μ hKc hKo) (ρ g (Φ φ)) =
      heckeAct μ ρ (cornerₗ hKc hKo (leftReg μ g φ) : HeckeAlgebra μ) v₀ := by
    intro φ g
    rw [hΦ, heckeAct_ltrans g φ.mem (hρ v₀)]
    change heckeAct μ ρ (idem μ hKc hKo) (heckeAct μ ρ (leftReg μ g φ : HeckeAlgebra μ) v₀) = _
    rw [← heckeAct_mul _ _ (hρ v₀)]
    exact (heckeAct_corner hKc hKo hv₀ _).symm
  have hker : ∀ φ, Φ φ = 0 ↔ φ ∈ heckeKernel hKc hKo I := by
    intro φ
    constructor
    · intro h g
      rw [hI, ← key, h, map_zero]
      exact heckeAct_zero_right (idem μ hKc hKo).mem
    · intro h
      refine crit _ fun g => ?_
      rw [key, ← hI]
      exact h g
  have hint : ∀ g φ, Φ (leftReg μ g φ) = ρ g (Φ φ) := fun g φ =>
    (heckeAct_ltrans g φ.mem (hρ v₀)).symm
  have hsurj : Function.Surjective Φ := by
    intro w
    have hle : Submodule.span ℂ (range fun g => ρ g v₀) ≤ LinearMap.range Φ :=
      Submodule.span_le.2 (by
        rintro _ ⟨g, rfl⟩
        exact ⟨leftReg μ g (idem μ hKc hKo), by
          rw [hint, hΦ, heckeAct_idem_of_mem (μ := μ) hKc hKo hv₀]⟩)
    exact hle (mem_span_orbit h0 w)
  let T : HeckeAlgebra μ ⧸ heckeKernel hKc hKo I →ₗ[ℂ] V :=
    (heckeKernel hKc hKo I).liftQ Φ (fun φ hφ => (hker φ).2 hφ)
  let Tint : Representation.IntertwiningMap (quotRep hKc hKo I) ρ :=
    { toLinearMap := T
      isIntertwining' := fun g => (heckeKernel hKc hKo I).linearMap_qext
        (LinearMap.ext fun φ => hint g φ) }
  refine ⟨Tint.ofBijective ⟨fun y z hyz => ?_, fun w => ?_⟩⟩
  · obtain ⟨φ, rfl⟩ := (heckeKernel hKc hKo I).mkQ_surjective y
    obtain ⟨ψ, rfl⟩ := (heckeKernel hKc hKo I).mkQ_surjective z
    rw [Submodule.mkQ_apply, Submodule.mkQ_apply, Submodule.Quotient.eq, ← hker, map_sub,
      sub_eq_zero]
    exact hyz
  · obtain ⟨φ, rfl⟩ := hsurj w
    exact ⟨(heckeKernel hKc hKo I).mkQ φ, rfl⟩

theorem nonempty_equiv_of_fixedVectors_equiv {W : Type*} [AddCommGroup W] [Module ℂ W]
    {σ : Representation ℂ G W} (hρ : IsSmooth ρ) (hσ : IsSmooth σ) [ρ.IsIrreducible]
    [σ.IsIrreducible] (hK : fixedVectors ρ K ≠ ⊥)
    (e : fixedVectors ρ K ≃ₗ[HeckeAlgebraLevel μ K hKc hKo] fixedVectors σ K) :
    Nonempty (ρ.Equiv σ) := by
  obtain ⟨v₀, hv₀, h0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hK
  set I := LinearMap.ker (LinearMap.toSpanSingleton (HeckeAlgebraLevel μ K hKc hKo)
    (fixedVectors ρ K) ⟨v₀, hv₀⟩)
  have hIρ : ∀ h : HeckeAlgebraLevel μ K hKc hKo, h ∈ I ↔
      heckeAct μ ρ (h : HeckeAlgebra μ) v₀ = 0 := by
    intro h
    rw [LinearMap.mem_ker, LinearMap.toSpanSingleton_apply, Subtype.ext_iff]
    rfl
  have hIσ : ∀ h : HeckeAlgebraLevel μ K hKc hKo, h ∈ I ↔
      heckeAct μ σ (h : HeckeAlgebra μ) (e ⟨v₀, hv₀⟩ : W) = 0 := by
    intro h
    rw [LinearMap.mem_ker, LinearMap.toSpanSingleton_apply, ← e.map_eq_zero_iff, e.map_smul,
      Subtype.ext_iff]
    rfl
  have hw0 : (e ⟨v₀, hv₀⟩ : W) ≠ 0 := fun h =>
    h0 (congrArg Subtype.val (e.map_eq_zero_iff.1 (Subtype.ext h)))
  obtain ⟨A⟩ := nonempty_equiv_quotRep hKc hKo I hρ hv₀ h0 hIρ
  obtain ⟨B⟩ := nonempty_equiv_quotRep hKc hKo I hσ (e ⟨v₀, hv₀⟩).2 hw0 hIσ
  exact ⟨A.symm.trans B⟩

end Classification

end HeckeAlgebra

end GroundTheory.Automorphic

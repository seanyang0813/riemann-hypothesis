module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsIntersectionFamily
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

set_option linter.unusedSectionVars false

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1

section FrameBundle

variable (o : Type*) [CommRing o] {Ω : Type*} [Field Ω] [Algebra o Ω] {σ : Type*}
variable {N : ℕ} {E : Type*} [AddCommGroup E] [Module Ω E]

variable {o}

variable (o)

end FrameBundle

section GradedFrame

variable (o : Type*) [CommRing o] {Ω : Type*} [Field Ω] [Algebra o Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
variable {N : ℕ} {E : Type*} [AddCommGroup E] [Module Ω E]

end GradedFrame

section Point

variable {R : Type*} [CommRing R] [IsDomain R] {Ω : Type*} [Field Ω] [Algebra R Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end Point

section ModelInhabitants

variable (O : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem isMultiHomog_C (c : O) : IsMultiHomog (C c : MRingOver O ι) 0 := by
  classical
  intro m hm k
  rw [MvPolynomial.mem_support_iff, MvPolynomial.coeff_C] at hm
  split_ifs at hm with h
  · subst h
    simp
  · exact absurd rfl hm

def unif : O :=
  Classical.choose (IsDiscreteValuationRing.exists_irreducible O)

end ModelInhabitants

section Flags

variable {Ω : Type*} [Field Ω]

variable (o : Type*) [CommRing o] [Algebra o Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end Flags

section FlagPairs

variable (O : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable {Ω : Type*} [Field Ω] [Algebra O Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end FlagPairs

section PointModel

abbrev ptIdx : Unit → Type := fun _ => Fin 1

variable {Ω : Type*} [Field Ω]

def ptCoord : (Σ k : Unit, ptIdx k) → Ω := fun _ => 1

end PointModel

section PointDVR

variable (O : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

variable {Ω : Type*} [Field Ω] [Algebra O Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end PointDVR

section FieldInhabitants

variable (F : Type*) [Field F]

variable {Ω : Type*} [Field Ω] [Algebra F Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end FieldInhabitants

section SubQuot

variable (O : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable {Ω : Type*} [Field Ω] [Algebra O Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end SubQuot

section PullBC

variable (O : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable {Ω : Type*} [Field Ω] [Algebra O Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end PullBC

section RankOne

variable (O : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable {Ω : Type*} [Field Ω] [Algebra O Ω]
variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

end RankOne

section Gaussian

end Gaussian

section FrobInhabitant

end FrobInhabitant

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles

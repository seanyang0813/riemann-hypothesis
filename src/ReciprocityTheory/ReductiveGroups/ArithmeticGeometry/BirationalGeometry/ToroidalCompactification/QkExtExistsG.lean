module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsGenVal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.QkExtExistsSt
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsZeroGt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull

@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.Geo.Tor

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj TopologicalSpace NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.DVR
open scoped Pointwise

theorem good_pt {F : Type} [Field F] {X : Scheme.{0}} {M : LB X} (hM : M.IsLB) (y : Sp F) : ∃ J, Good M y J := by
  choose I hI using fun χ : Sp F ⟶ X => exists_chart hM (χ y)
  exact ⟨I, hI⟩

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H} {c : Coeff l}
  {k : Type} [Field k] {bF : c.F →+* k} (a : ArcIn D l (RingHom.id c.F) k bF) {F : Type} [Field F] [IsAlgClosed F]
  [Algebra (FractionRing k) F]

end ReciprocityTheory.ChartRestriction.G.Geo.Tor

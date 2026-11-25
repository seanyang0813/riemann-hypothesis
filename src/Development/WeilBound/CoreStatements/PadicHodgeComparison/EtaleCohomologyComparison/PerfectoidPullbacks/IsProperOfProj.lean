module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtSide
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin
import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowProduct
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

theorem isProper_of_proj {R : Type} [CommRing R] {X : Scheme.{0}} {f : X ⟶ Sp R} (h : IsProjOver f) : IsProper f := by
  obtain ⟨N, i, hi, rfl⟩ := h
  have := _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.isProper_str R N
  infer_instance

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem sm_proper {M : Model l K} (h : M.Sm) : IsProper M.p := isProper_of_proj h.1.1

theorem sm_proper_q {M : Model l K} (h : M.Sm) : IsProper M.q :=
  have := sm_proper h
  inferInstance

theorem sm_smooth_q {M : Model l K} (h : M.Sm) : Smooth M.q :=
  have := h.2
  inferInstance

def cupR (M : Model l K) (i j : ℕ) : HdR M.q i →ₗ[K] HdR M.q j →ₗ[K] HdR M.q (i + j) := (_root_.GlobalTheory.CompanionTheory.CupdR.cup_bilinear_filtered M.q i j).1.choose

theorem cupR_eq (M : Model l K) (i j : ℕ) (x : HdR M.q i) (y : HdR M.q j) : cupR M i j x y = cupK M.q rfl x y :=
  (_root_.GlobalTheory.CompanionTheory.CupdR.cup_bilinear_filtered M.q i j).1.choose_spec x y

theorem cupR_fil (M : Model l K) (i j r s : ℕ) : ∀ x ∈ FilR M.q i r, ∀ y ∈ FilR M.q j s, cupR M i j x y ∈ FilR M.q (i + j) (r + s) :=
  fun x hx y hy => cupR_eq M i j x y ▸ (_root_.GlobalTheory.CompanionTheory.CupdR.cup_bilinear_filtered M.q i j).2 r s x hx y hy

theorem m_fin (M : Model l K) (h : M.Sm) (j : ℕ) : FiniteDimensional K (HdR M.q j) ∧ ∀ x ∈ FilR M.q j (j + 1), x = 0 :=
  have := sm_proper_q h
  have := sm_smooth_q h
  _root_.CrystallineSemistableComparison.Pb.k_fin_pf M.q j

theorem m_top (M : Model l K) (h : M.Sm) (d : ℕ) (hd : M.Conn d) (j : ℕ) : ∀ x ∈ FilR M.q j (d + 1), x = 0 :=
  have := sm_proper_q h
  have := hd.2
  _root_.CrystallineSemistableComparison.Pb.k_top_pf M.q d j

end CrystallineSemistableComparison.Pb

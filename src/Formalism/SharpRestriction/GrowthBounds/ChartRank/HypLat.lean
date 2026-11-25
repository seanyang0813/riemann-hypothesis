module

public import Formalism.LocalToGlobal.HermitianForms.TiedTwGen
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.FiniteAdeleRingNontrivial
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsGlob

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.ChF

open Formalism.BasicNotions Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix
open scoped TensorProduct

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}



theorem isLattice_of_hat (Lb Lc : Submodule (𝓞 E) (Fin n → E)) (hfin : Module.Finite (𝓞 E) Lb)
    (hspan : Submodule.span E (Lb : Set (Fin n → E)) = ⊤) (y : GL (Fin n) (E ⊗[F] FiniteAdeleRing (𝓞 F) F))
    (hy : ∀ x : Fin n → E ⊗[F] FiniteAdeleRing (𝓞 F) F,
      x ∈ latS (F := F) (FiniteAdeleRing (𝓞 F) F) (tensInt (F := F) (FiniteAdeleRing (𝓞 F) F) (intOE E) (intAd F)) Lc ↔
      (y⁻¹).1 *ᵥ x ∈ latS (F := F) (FiniteAdeleRing (𝓞 F) F) (tensInt (F := F) (FiniteAdeleRing (𝓞 F) F) (intOE E) (intAd F)) Lb) :
    Submodule.IsFullLattice E Lc := by
  have hN := Formalism.UG.P.csGlob_lattice Lb hfin hspan y
  have hle : Lc ≤ Formalism.UG.CS.globLat y Lb := fun z hz => (hy _).1 (Submodule.subset_span ⟨z, hz, rfl⟩)
  have hfg : Lc.FG := by
    have : IsNoetherian (𝓞 E) (Formalism.UG.CS.globLat y Lb) := isNoetherian_of_fg_of_noetherian _ hN.fg
    exact isNoetherian_submodule.1 this Lc hle
  have hrev : Formalism.UG.CS.globLat y Lb ≤ Lc := by
    intro z hz
    apply Formalism.L2.GlobalTheoryTheory.Br.latLocGlob_main (F := F) Lc (Module.Finite.iff_fg.mpr hfg) z
    exact (hy _).2 hz
  have heq : Lc = Formalism.UG.CS.globLat y Lb := le_antisymm hle hrev
  rw [heq]
  exact hN

end Gen

theorem isLattice_chart {D : D7} {T : ℕ} {bad : Set (HeightOneSpectrum (𝓞 D.host.F))} {i : ℕ} {hi : i ≤ D.R.m} {cl : Type}
    {stab : cl → Type} [∀ c, Group (stab c)] {lat : cl → Submodule (𝓞 D.host.E) (Fin (D.R.N i) → D.host.E)}
    (K : LevelChart D T bad i hi stab lat) (c : cl) : Submodule.IsFullLattice D.host.E (lat c) :=
  isLattice_of_hat K.lev.Lb (lat c) K.lev.Lb_fin K.lev.Lb_span (K.y c).1 (K.y_lat c)

end Formalism.MainNotions.G.ChF

end

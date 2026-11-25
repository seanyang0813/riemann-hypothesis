module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC

namespace LateralTheory.EtaleTrace.LDblPf

instance monoSch {X : Scheme.{0}} (U : X.Opens) : Mono (sch.map U.ι) := by
  have hy : Mono (yoneda.map U.ι) := NatTrans.mono_of_mono_app _
  have : ∀ n, Mono ((sch.map U.ι).app n) := fun _ => hy
  exact NatTrans.mono_of_mono_app _

end LateralTheory.EtaleTrace.LDblPf

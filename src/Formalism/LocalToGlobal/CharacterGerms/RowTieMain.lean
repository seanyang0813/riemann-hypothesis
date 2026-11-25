module

public import Formalism.LocalToGlobal.CharacterGerms.HostTraceIdentity
import Formalism.LocalToGlobal.CharacterGerms.ContentZeroAt
import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.NuLocCLeNuPlEBaseChange

@[expose] public section

namespace Formalism.L2.FormalSeriesBounds

open NumberField
open ReciprocityTheory.ChartRestriction.G.Geo.Tor

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable (Xo : Moduli Dw l) (c : Coeff l) [StarRing (𝓞 E)]

theorem descent_holds : DescentSt Xo c :=
  GlobalTheory.nuLocC_le_nuPlE_baseChange E H Dw l Xo c

end Formalism.L2.FormalSeriesBounds

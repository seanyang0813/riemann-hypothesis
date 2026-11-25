module

import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfUTieRec
public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation
import Formalism.SharpRestriction.LevelLetterCocycles.TableLineDegreeTwo

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.InvariantsGenerators.InvariantsFromGenerators

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.tableLineDegreeTwo Formalism.MainNotions.LocalSituation Topology Filter

variable {l : ℕ} [hl : Fact l.Prime]

theorem chiQ_norm (P : LocPrime l) (h : GQ l) : ‖(P.χQ h : ℚ_[l])‖ = 1 := by
  apply Formalism.MainNotions.N.Ln03.Pf.norm_chiQ

end Formalism.MainNotions.InvariantsGenerators.InvariantsFromGenerators

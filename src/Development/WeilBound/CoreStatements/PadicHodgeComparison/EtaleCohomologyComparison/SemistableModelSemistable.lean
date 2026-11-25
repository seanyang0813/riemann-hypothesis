module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement
public import Development.WeilBound.CoreStatements.HeckeCharacterDeRham.DeRhamHeckeResults.PotentiallySemistableDeRham.SemistableDeRhamStatement.Second

@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct
open Formalism.Per6 GroundTheory.PAdicHodge DeRhamPotentiallySemistable.DRPst GlobalTheory.LogCris

namespace CrystallineSemistableComparison

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}


variable (l) in
def Bcr : Subring (BdR l) := Subring.closure (Set.range (iC l) ∪ {((l : BdR l))⁻¹, (tQ l)⁻¹})

def oK : K →+* BdR l := (algebraMap (BdRp l) (BdR l)).comp ((algClToBdR l).toRingHom.comp K.val.toRingHom)


def SmoothModelCrystalline : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] K] (M : Model l K),
    M.Good → Smooth M.p → ∀ (n a : ℕ) (b : Module.Basis (Fin a) ℚ_[l] (M.V n)), IsAdm (Bcr l) K.fixingSubgroup (M.mat n b)

end CrystallineSemistableComparison

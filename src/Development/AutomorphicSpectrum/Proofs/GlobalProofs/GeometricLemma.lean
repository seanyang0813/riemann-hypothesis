module

public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsCellOfIsSubquotient
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.InducedCellSemisimplification
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetOfInducedFiltrationStatement

@[expose] public section

namespace GlobalTheory.CompanionTheory.GeoLink

theorem geometricLemma : GlobalTheory.Published.GeometricLemma := by
  intro k _ _ _ _
  have h := _root_.GlobalTheory.CompanionTheory.Glob.cellSemisimplification k
  have hloc := _root_.GlobalTheory.T.jacquet_of_induced_filtration k
  first
    | exact ⟨hloc, h⟩

end GlobalTheory.CompanionTheory.GeoLink

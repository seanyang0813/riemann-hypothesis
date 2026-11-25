module

public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.SegmentRepresentation
public import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.MirabolicDerivatives.SegmentCuspLines.ProdIrrFiniteLength
public import CompanionTheory.AutomorphicTheory.ProductFormulaTheory.CuspidalExhaustion.IrreducibleAdmissibleGL
public import CompanionTheory.RealGroups.GeneralUnitaryRepresentations.WhittakerModels.WhitCuspOfSegCuspGeneric
public import Development.WeilBound.RepresentationTheoryGL.GenericUnitaryGL.ComplementarySeries.CuspPairIrr
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IrreducibleAdmissibleGL
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProductIrreducibleFiniteLength
public import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.ZelevinskyJacquet.LSegJacquet
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SegmentJacquetAll
public import Development.WeilBound.RepresentationTheoryGL.GenericUnitaryGL.SegmentDerivatives.CuspPairSubGeneric
public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.GeometricLemmaFiltration
public import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.MirabolicDerivatives.SegmentCuspLines.CuspStdSubGeneric
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LUnlinkedIrr
public import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.MirabolicDerivatives.LeibnizDerivatives.GenericProdIff
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WhittakerHeredity
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WhittakerRankStandardOfHeredity

@[expose] public section

namespace CompanionTheory.Exh

theorem lUnlinkedIrr_of_seg (hZ : GlobalTheory.Published.SegmentRepresentation) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] : GlobalTheory.BZSeg.LUnlinkedIrr k :=
  _root_.GlobalTheory.CompanionTheory.BZSeg.NuPairIrr.lUnlinkedIrr k irreducibleAdmissibleGL (_root_.GlobalTheory.CompanionTheory.SegCoarse.lSegJacquet irreducibleAdmissibleGL hZ) (fun k _ _ _ _ => (geometricLemmaGL k).1)
    (PositivityTheory.RgGu.NR.nuPair k) (_root_.GlobalTheory.CompanionTheory.BZSeg.whitRankStd_of_heredity k (_root_.GlobalTheory.CompanionTheory.Rodier.whitHeredity k) (CompanionTheory.rg.gu.whit.whitRankIrr k))
    fun _ _ x hd => _root_.GlobalTheory.CompanionTheory.ProdFL.main irreducibleAdmissibleGL x hd

end CompanionTheory.Exh

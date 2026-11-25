module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsFieldSubalgebraSelf
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsKodairaGeneric
public import Development.WeilBound.CoreStatements.HodgeTatePoints.SiuKodaira

@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Kleiman2

theorem _root_.GlobalTheory.CompanionTheory.Relay.kodaira_generic_of_ample_section_count : VeryAmpleNefPlusAmple.Statement → SectionCount.Statement → GroundTheory.Heights₂.Heights.HilbertSamuel.KodairaGeneric.Statement := by
  first | exact @PositivityTheory.HtPt.Siua.siu_kodaira

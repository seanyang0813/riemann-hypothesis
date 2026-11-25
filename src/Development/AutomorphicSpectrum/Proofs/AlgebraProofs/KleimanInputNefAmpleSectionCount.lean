module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.GenericPointSectionHypotheses
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsFieldSubalgebraSelf
public import Development.WeilBound.CoreStatements.HodgeTatePoints.KTwins

@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Kleiman2

theorem _root_.GlobalTheory.CompanionTheory.Relay.kleiman_input_nef_ample_section_count : GroundTheory.Heights₂.Heights.Kleiman.GenericPointSectionInput.Statement.{0, 0} → NefProductNonneg.Statement ∧ VeryAmpleNefPlusAmple.Statement ∧ SectionCount.Statement := by
  first | exact @PositivityTheory.HtPt.Ktw.k_twins

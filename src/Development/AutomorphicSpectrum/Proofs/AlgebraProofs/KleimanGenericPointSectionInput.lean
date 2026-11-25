module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.GenericPointSectionHypotheses
public import Development.WeilBound.CoreStatements.HodgeTatePoints.KleimanInputUniverseZero
import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsFieldSubalgebraSelf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.AlgDefs

@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Kleiman2

theorem _root_.GlobalTheory.CompanionTheory.Relay.kleiman_genericPointSectionInput : GroundTheory.Heights₂.Heights.Kleiman.GenericPointSectionInput.Statement.{0, 0} := by
  first | exact @PositivityTheory.HtPt.Kra.kleiman_input_universe_zero

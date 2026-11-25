module

public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IrreducibleSmoothAdmissibleGLStatement
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.JacquetModuleFiniteLength
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ParabolicInductionContragredient
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ParabolicInductionFiniteLength

@[expose] public section

namespace GlobalTheory.CompanionTheory.Published

theorem bernsteinZelevinskyFiniteness : GlobalTheory.Published.BernsteinZelevinskyFiniteness :=
  fun k _ _ _ _ => ⟨GlobalTheory.T.irreducible_smooth_admissible_GL k, _root_.GlobalTheory.CompanionTheory.JacquetBridge.jacquetFiniteLength k, _root_.GlobalTheory.CompanionTheory.BZInd.inductionFiniteLength k, _root_.GlobalTheory.CompanionTheory.Glob.inductionContragredient k⟩

end GlobalTheory.CompanionTheory.Published

module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PrimeIndexConstruction.MixSeedPAlt
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.AfDesc
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.ThresholdArguments.DenseThresholdCases.TPropEGW

@[expose] public section

theorem UpperTheory.V.Z.Win.Birth.propEGP_of_printsH :
    UpperTheory.V.Af.HypothesesH' → UpperTheory.V.Z.Win.Birth.PropEGP := by
  intro P l _ Ω _ _ _ ι c hc N w φ θ hx hs hφ
  obtain ⟨k₀, hk₀⟩ :=
    UpperTheory.V.Z.Sym.W.prop_eg_complex_of_printed_hida P l Ω ι c hc N w φ θ hx hs hφ
  refine ⟨k₀, fun k hk hpar => ?_⟩
  obtain ⟨ρ, hEis, hPR, _, _⟩ := hk₀ k hk hpar
  exact ⟨ρ, hEis, hPR⟩

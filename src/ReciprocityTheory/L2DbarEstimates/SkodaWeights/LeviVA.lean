module

import ReciprocityTheory.L2DbarEstimates.LeviForms.OfRealNormSqSumMul
public import ReciprocityTheory.L2DbarEstimates.LeviForms.LogNormSq
public import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.ChartSymmEventuallyEq
public import ReciprocityTheory.L2DbarEstimates.SkodaWeights.Matrix
public import ReciprocityTheory.L2DbarEstimates.IsLocalHomeomorph
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import ReciprocityTheory.L2DbarEstimates.LeviForms.EventuallyDifferentiableAtOfContDiffAt
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.Deriv.Inv
public import Mathlib.Analysis.Calculus.FDeriv.Mul
public import Mathlib.Analysis.SpecialFunctions.Log.Deriv

@[expose] public section

open Complex ComplexConjugate Filter Topology Matrix

namespace ReciprocityTheory.L2DbarEstimates.H

-- Compatibility aliases: the canonical proofs now live in LeviForms.
export ReciprocityTheory.L2DbarEstimates
  (LeviChainStatement ofReal_normSq_sum_mul leviChain wd_ofReal_sum leviV_ofReal_sum
   wJac LeviLogNormSqStatement contDiffAt_normSq_comp wd_normSq_comp
   leviV_normSq_comp leviLogNormSq)

end ReciprocityTheory.L2DbarEstimates.H

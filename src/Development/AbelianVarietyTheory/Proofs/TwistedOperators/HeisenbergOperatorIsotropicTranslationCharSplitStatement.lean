module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsLocIsoRefl
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HeisenbergOperatorIsotropicTranslationCharSplit
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA IsDatumB mulG colV adjV₁)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple Acts SInf At piW psiLoc chrW)

open GlobalTheory.FlipMatch


theorem _root_.GlobalTheory.T.heisenbergOperator_isotropic_translation_char_split : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}, IsCMExt F E σ →
    ∀ {n d : ℕ} (X : Spc F E n) (Y : Spc F E d), (∀ r s, σ (X.J s r) = X.J r s) → (∀ r s, σ (Y.J s r) = -Y.J r s) → X.J.det ≠ 0 → Y.J.det ≠ 0 → ∀ (M : Model σ X Y) (ψ : AddChar (AF F) ℂ), GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsStd ψ →
    ∀ {v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)} (t : E →ₐ[F] Fv F v) (b : GL (Fin n) (Fv F v)) (c : GL (Fin d) (Fv F v))
      (u : Matrix (Fin n) (Fin d) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E))), At (evFin F v) u → pairM (coX t b c u) (coY σ X Y t b c u) = 0 →
    ∀ φ ∈ GlobalTheory.WeilM.SB (Fin n × Fin d → Fv F v), ∀ φ₁ ∈ GlobalTheory.WeilM.SB (Fin n × Fin d → Fv F v), Acts (evFin F v) (M.co.rho ψ u) φ φ₁ →
      (∀ ι, M.IsLinW ψ t b c ι → ∀ Z, ι φ₁ Z = psiLoc ψ v (pairM Z (coY σ X Y t b c u)) * ι φ (Z + coX t b c u)) ∧
      ∀ ι, M.IsLinBar ψ t b c ι → ∀ Z, ι φ₁ Z = psiLoc ψ v (-pairM Z (coX t b c u)) * ι φ (Z + coY σ X Y t b c u) := by
  first | exact @GlobalTheory.HeisFlip.heis_trans_char

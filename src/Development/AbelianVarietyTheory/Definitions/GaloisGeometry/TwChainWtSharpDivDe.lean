module

public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TrueWtAddSSNonneg
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsSmulOfDecoEq
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SumFibreEqSumOrbits
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.IntegralGLSuccEmbeddingMemParahoricTimesPrincipa
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PredMemGamRanks
public import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth
public import Formalism.LocalToGlobal.KernelLattices.ColInst
public import Development.AbelianVarietyTheory.BlockTheory.ThetaLiftGeometry.BadPrimesPeriodBound
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeFinal
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeInterior
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumSupportDivLatticeFinal
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Formalism.LocalToGlobal.KernelLattices.XiIndCClass
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SpKerColToEqColCpl, Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CardStabDvdAutU, Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwistedStartColumnReading, Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumSupportDivLatticeInterior, Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwChainWtSharpDivDe

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SpKerColToEqColCpl =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SpKerColToEqColCpl", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TrueWtAddSSNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.GO

open NumberField Formalism.L2.Col Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.Forms Formalism.L2.Ker

variable {K : Type} [Field K] [NumberField K] [StarRing K]

structure MemOn (F : GFam K) where

  G : Type
  [grpG : Group G]

  D : Type
  [actD : MulAction G D]

  ρ : G →* Module.End K F.V

  Nab : D → Submodule (𝓞 K) F.V

  Del : D → Submodule (𝓞 K) F.V

attribute [instance] MemOn.grpG MemOn.actD

@[reducible] def MemOn.gsd {F : GFam K} (M : MemOn F) : GSD K where
  G := M.G
  D := M.D
  V := F.V
  ιV := F.ιV
  bV := F.bV
  pair := F.pair
  ρ := M.ρ
  Nab := M.Nab
  Del := M.Del

@[reducible] def MemOn.self (F : GFam K) (b : F.β) : MemOn F where
  G := F.G b
  D := F.D b
  ρ := F.ρ b
  Nab := F.Nab b
  Del := F.Del b

@[reducible] def MemOn.pairs (F : GFam K) (b : F.β) (Y : Cpl (F.mem b)) : MemOn F where
  G := F.G b
  D := Y.Pts
  actD := (cplGSD (F.mem b) Y).actD
  ρ := F.ρ b
  Nab d := F.Nab b d.1.1
  Del d := F.Del b d.1.1

inductive SpIdx (β : ℕ → Type) (n m i : ℕ) : Type
  | mat (b : β i) (h : i ≤ n) : SpIdx β n m i
  | cpl (h : i = n + 1) : SpIdx β n m i
  | top (h : i = m) : SpIdx β n m i

namespace SpIdx

variable {β : ℕ → Type} {n m i : ℕ}

instance [Finite (β i)] : Finite (SpIdx β n m i) :=
  Finite.of_injective (fun b : SpIdx β n m i => match b with
    | .mat b _ => (Sum.inl b : β i ⊕ Bool)
    | .cpl _ => Sum.inr false
    | .top _ => Sum.inr true) (by
      rintro (⟨a, _⟩ | _ | _) (⟨b, _⟩ | _ | _) h <;> simp_all)

instance [Finite (β i)] : Fintype (SpIdx β n m i) := Fintype.ofFinite _

instance : DecidableEq (SpIdx β n m i) := Classical.decEq _

end SpIdx

section Splice

variable (F : ℕ → GFam K) (n m : ℕ) (C : MemOn (F (n + 1))) (T : MemOn (F m))

@[reducible] def spMem : ∀ (i : ℕ) (_ : SpIdx (fun j => (F j).β) n m i), MemOn (F i)
  | i, .mat b _ => MemOn.self (F i) b
  | _, .cpl rfl => C
  | _, .top rfl => T

@[reducible] def spFam (i : ℕ) : GFam K where
  β := SpIdx (fun j => (F j).β) n m i
  V := (F i).V
  ιV := (F i).ιV
  bV := (F i).bV
  pair := (F i).pair
  G b := (spMem F n m C T i b).G
  D b := (spMem F n m C T i b).D
  ρ b := (spMem F n m C T i b).ρ
  Nab b := (spMem F n m C T i b).Nab
  Del b := (spMem F n m C T i b).Del

variable {F n m C T}

def spEntry (kk : KerFam F) (k1 : ∀ al : (F n).β, ClsKer ((F n).mem al) C.gsd) (k2 : ClsKer C.gsd T.gsd)
    (i j : ℕ) (e : j = i + 1) : ∀ (b : (spFam F n m C T i).β) (b' : (spFam F n m C T j).β),
      ClsKer ((spFam F n m C T i).mem b) ((spFam F n m C T j).mem b')
  | .mat al _, .mat be _ => (match j, e, be with | _, rfl, be => kk i al be : ClsKer ((F i).mem al) ((F j).mem be))
  | .mat al _, .cpl h' =>
    (match i, j, (Nat.succ.inj (h'.symm.trans e) : n = i), h', al with | _, _, rfl, rfl, al => k1 al :
      ClsKer ((F i).mem al) ((spFam F n m C T j).mem (.cpl h')))
  | .cpl h, .top h' =>
    (match i, j, h, h' with | _, _, rfl, rfl => k2 :
      ClsKer ((spFam F n m C T i).mem (.cpl h)) ((spFam F n m C T j).mem (.top h')))
  | .mat _ _, .top _ => zeroKer _ _
  | .cpl _, .mat _ _ => zeroKer _ _
  | .cpl _, .cpl _ => zeroKer _ _
  | .top _, _ => zeroKer _ _

variable (kk : KerFam F) (k1 : ∀ al : (F n).β, ClsKer ((F n).mem al) C.gsd) (k2 : ClsKer C.gsd T.gsd)

def spKer : KerFam (spFam F n m C T) := fun i b b' => spEntry kk k1 k2 i (i + 1) rfl b b'


variable {hS : ∀ i, (spFam F n m C T i).Ok}

end Splice

end GlobalTheory.GO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SpKerColToEqColCpl =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CardStabDvdAutU =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CardStabDvdAutU", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SpKerColToEqColCpl\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsSmulOfDecoEq\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SumFibreEqSumOrbits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.GO

open NumberField IsDedekindDomain Formalism.L2.Col Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Forms Formalism.L2.Ker

section Aut

variable {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}

end Aut

section Stab

variable {X : Fields} {n : ℕ} {ST SG Q : Finset (HeightOneSpectrum (𝓞 X.E))}

end Stab

section Fam

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ}
  (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K)))
  (u : Pr.Word) (m2 : ℕ) (b : L.β (m2 + 1)) (hY : YbHyp (R := R) sel mu cst L u m2 b)
  (Λ : LevFam X.E X.K (R.N R.m) Pr.vGs) (Θ : LevQFam X.E X.K (R.N R.m) (QE sel (mu : Chr X.F X.E X.K)))

@[reducible] def frmMem : MemOn (chF W sel mu L u R.m) where
  G := FrmG Λ Θ
  D := ChPt (R := R) sel mu u R.m
  actD := frmAct Λ Θ
  ρ := frmRho (colValF W sel mu u R.m) Λ Θ
  Nab := (colValF W sel mu u R.m).Nab
  Del := (colValF W sel mu u R.m).Del

@[reducible] def cplMem : MemOn (chF W sel mu L u (m2 + 1)) :=
  MemOn.pairs (chF W sel mu L u (m2 + 1)) b (ybCpl W sel mu cst L u m2 b hY)

@[reducible] def levFam : ℕ → GFam X.K :=
  spFam (chF W sel mu L u) m2 R.m (cplMem W sel mu cst L u m2 b hY) (frmMem W sel mu L u Λ Θ)

variable {W sel mu cst L u m2 b hY Λ Θ}

def levPt : ∀ (i : ℕ) (β : (levFam W sel mu cst L u m2 b hY Λ Θ i).β),
    (levFam W sel mu cst L u m2 b hY Λ Θ i).D β → ChPt (R := R) sel mu u i
  | _, .mat _ _ => fun p => p
  | _, .cpl rfl => fun p => p.1.1
  | _, .top rfl => fun p => p

def levG : ∀ (i : ℕ) (_ : (levFam W sel mu cst L u m2 b hY Λ Θ i).β), LevFam X.E X.K (R.N i) Pr.vGs
  | i, .mat al _ => L.levG i al
  | _, .cpl rfl => L.levG (m2 + 1) b
  | _, .top rfl => Λ

def levQ : ∀ (i : ℕ) (_ : (levFam W sel mu cst L u m2 b hY Λ Θ i).β), LevQFam X.E X.K (R.N i) (QE sel (mu : Chr X.F X.E X.K))
  | i, .mat al _ => L.levQ i al
  | _, .cpl rfl => L.levQ (m2 + 1) b
  | _, .top rfl => Θ

end Fam

end GlobalTheory.GO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CardStabDvdAutU =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwistedStartColumnReading =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwistedStartColumnReading", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.CardStabDvdAutU\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.IntegralGLSuccEmbeddingMemParahoricTimesPrincipa\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PredMemGamRanks\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SumFibreEqSumOrbits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.GO

open NumberField IsDedekindDomain Formalism.L2.Col Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Forms Formalism.L2.Ker GlobalTheory.TopStep

section Aut

variable {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}

end Aut

section Rho

variable {X : Fields} {Pr : Primes X} {R : Ranks} (Ch : Chars X Pr R.m)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ}
  (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (σ : X.K →+* ℂ)
  (chi : ∀ n : ℕ, Submodule (𝓞 X.E) (Sp X.E n) → ℂ)

def RhoUnit : Prop :=
  (∀ i, i < R.m → ∀ (n : ℕ) (N : Submodule (𝓞 X.E) (Sp X.E n)) (fr : Frs X.E n (rowSG Pr sel mu)),
    ‖σ (muInvDet sel (rowSG Pr sel mu) (mUof Ch mu i) (muAt Ch sel mu cst i) N fr)‖ = 1) ∧
  ∀ (n : ℕ) (N : Submodule (𝓞 X.E) (Sp X.E n)), IsSdLat N → ‖chi n N‖ = 1

def ChiSplit (A : Amb X) : Prop :=
  ∀ (a b : ℕ) (N : Submodule (𝓞 X.E) (Sp X.E a)) (N' : Submodule (𝓞 X.E) (Sp X.E b)),
    A.chiF a b N N' = chi a N ^ (((b / 2 : ℕ) : ℤ)) * chi b N' ^ (-((a / 2 : ℕ) : ℤ))

variable {Ch sel mu cst σ chi}

end Rho

section Chain

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ}
  (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K)))
  (A : Amb X) (u : Pr.Word) (m2 : ℕ) (b : L.β (m2 + 1)) (hY : YbHyp (R := R) sel mu cst L u m2 b)
  (P : LevFam X.E X.K R.r Pr.vGs) (c : TopDepth R cst.M)

@[reducible] def twFam : ℕ → GFam X.K := levFam W sel mu cst L u m2 b hY (topLevG Ch P) (topLevQ R sel mu c.pos)

def TwEquiv : Prop :=
  MatEquiv W Ch sel mu cst L (chTh W Ch sel mu cst A u m2) ∧ Cp1Equiv W Ch sel mu cst L (chTh W Ch sel mu cst A u m2) b hY ∧
    TopEquiv W Ch sel mu cst L (chTh W Ch sel mu cst A u m2) b hY P c

variable {W Ch sel mu cst L A u m2 b hY P c}

def twistedKernelPointCoset (h : TwEquiv W Ch sel mu cst L A u m2 b hY P c) (al : L.β m2) :
    ClsKer ((chF W sel mu L u m2).mem al) (cplMem W sel mu cst L u m2 b hY).gsd :=
  cplKer1 (topCpl h.2.1 h.2.2 al)

def twistedKernelCosetPoint (h : TwEquiv W Ch sel mu cst L A u m2 b hY P c) :
    ClsKer (cplMem W sel mu cst L u m2 b hY).gsd (frmMem W sel mu L u (topLevG Ch P) (topLevQ R sel mu c.pos)).gsd where
  k d p' := topDegreeKTwo W Ch sel mu cst (chTh W Ch sel mu cst A u m2) d.1.1 d.1.2 p'
  equiv g g₁ d p' := h.2.2 g g₁ d.1.1 d.1.2 p'

def twKer (h : TwEquiv W Ch sel mu cst L A u m2 b hY P c) : KerFam (twFam W Ch sel mu cst L u m2 b hY P c) :=
  spKer (matFam h.1) (twistedKernelPointCoset h) (twistedKernelCosetPoint h)

section Laws

variable {chi : ∀ n : ℕ, Submodule (𝓞 X.E) (Sp X.E n) → ℂ} {hX : X.Ok} {hm : R.m = m2 + 2} {hF : ∀ j, (chF W sel mu L u j).Ok}
  {hK : TwEquiv W Ch sel mu cst L A u m2 b hY P c} {hρ : RhoUnit Ch sel mu cst A.σ₀ chi}

end Laws


section Col

variable {chi : ∀ n : ℕ, Submodule (𝓞 X.E) (Sp X.E n) → ℂ} {hX : X.Ok} {hm : R.m = m2 + 2} {hF : ∀ j, (chF W sel mu L u j).Ok}
  {hK : TwEquiv W Ch sel mu cst L A u m2 b hY P c} {hρ : RhoUnit Ch sel mu cst A.σ₀ chi} {G : ChGlob X R.m}

end Col

end Chain

end GlobalTheory.GO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwistedStartColumnReading =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumSupportDivLatticeInterior =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumSupportDivLatticeInterior", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.KernelLattices.XiIndCClass\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.L2.Ker Formalism.MainNotions

namespace GlobalTheory.Proof.datum_support_div_lattice_interior

section General

variable {E : Type} [Field E] [NumberField E] [StarRing E]

theorem intAt_sum {P : HeightOneSpectrum (𝓞 E)} {ι : Type} (s : Finset ι) (f : ι → E)
    (h : ∀ i ∈ s, IntAt P (f i)) : IntAt P (∑ i ∈ s, f i) := by
  refine Finset.sum_induction f (IntAt P) (fun _ _ ha hb => ha.add hb) ?_ h
  simpa using IntAt.coe P 0

theorem smul_mem_of_frames {a b : ℕ} (P : HeightOneSpectrum (𝓞 E)) (M : Submodule (𝓞 E) (Sp E a))
    (M' : Submodule (𝓞 E) (Sp E b)) (f : Sp E a ≃ₗ[E] Sp E a) (f' : Sp E b ≃ₗ[E] Sp E b)
    (hf : ∀ x, f x ∈ M ↔ x ∈ stdAt E a P) (hf' : ∀ x, f' x ∈ M' ↔ x ∈ stdAt E b P)
    (x : HomE E a b) (c : E) (h : ∀ s l, IntAt P (c * inFr f f' x (Pi.single s 1) l)) :
    ∀ y ∈ M, c • x y ∈ M' := by
  classical
  intro y hy
  obtain ⟨z, rfl⟩ := f.surjective y
  have hz : ∀ i, IntAt P (z i) := (mem_localization_standardLattice P z).1 ((hf z).1 hy)
  have e : c • x (f z) = f' (c • inFr f f' x z) := by simp [inFr]
  rw [e, hf']
  refine (mem_localization_standardLattice P _).2 fun l => ?_
  have hz' : z = ∑ s, z s • (Pi.single s (1 : E) : Sp E a) := by
    funext j
    simp [Finset.sum_apply, Pi.single_apply]
  have e2 : (c • inFr f f' x z) l = ∑ s, z s * (c * inFr f f' x (Pi.single s 1) l) := by
    conv_lhs => rw [hz']

    simp only [map_sum, map_smul, Pi.smul_apply, Finset.sum_apply, smul_eq_mul, Finset.mul_sum]
    exact Finset.sum_congr rfl fun s _ => by ring
  rw [e2]
  exact intAt_sum _ _ fun s _ => (hz s).mul (h s l)

end General

end GlobalTheory.Proof.datum_support_div_lattice_interior
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumSupportDivLatticeInterior =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwChainWtSharpDivDe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwChainWtSharpDivDe", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColInst\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwistedStartColumnReading\npublic import Development.AbelianVarietyTheory.BlockTheory.ThetaLiftGeometry.BadPrimesPeriodBound\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeFinal\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeInterior\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumSupportDivLatticeFinal\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumSupportDivLatticeInterior\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.GO

open NumberField IsDedekindDomain Formalism.L2.Col Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Forms Formalism.L2.Ker GlobalTheory.TopStep
open GlobalTheory.IndefiniteRowSideFullHecke.BadPrimesPeriodBound (JetsRatDeg)

section Dat

variable {X : Fields} (A : Amb X) {a b : ℕ} (S : Finset (HeightOneSpectrum (𝓞 X.E))) {cA cB : ℕ}
  {N : Submodule (𝓞 X.E) (Sp X.E a)} {N' : Submodule (𝓞 X.E) (Sp X.E b)}

end Dat

section Range

variable {X : Fields} {Pr : Primes X} {R : Ranks} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {u : Pr.Word}

theorem twDen_pos : 0 < cAof sel mu cst := pow_pos (Finset.prod_pos fun P _ => qOf_pos P.1) _

theorem twMod_pos (hT : 0 < Pr.T u) : 0 < cBof sel mu cst u := Nat.mul_pos hT (pow_pos (Finset.prod_pos fun P _ => qOf_pos P.1) _)

theorem mem_divLat_of_loc {i j : ℕ} (p : ChPt (R := R) sel mu u i) (p' : ChPt (R := R) sel mu u j) {x : HomE X.E (R.N i) (R.N j)}
    (h1 : phiT X.K p.deco.1 p'.deco.1 x ≠ 0)
    (h2 : ∀ (P : rowSG Pr sel mu) s l, IntAt P.1 ((qOf P.1 : X.E) ^ cst.A * inFr (frsF sel mu p P) (frsF sel mu p' P) x (Pi.single s 1) l)) :
    x ∈ divLat (cAof sel mu cst) (homAt (Sall sel mu u) p.deco.1.N p'.deco.1.N) := by
  classical
  intro P hP y hy
  change ((cAof sel mu cst : ℕ) : 𝓞 X.E) • x y ∈ _
  have hP' : P ∈ Pr.vT u ∨ P ∈ rowSG Pr sel mu := Finset.mem_union.1 hP
  rcases hP' with hT | hB
  · exact Submodule.smul_mem _ _ (cond_of_ite_ne_zero h1 ⟨P, hT⟩ y hy).1
  · obtain ⟨k, hk⟩ : qOf P ^ cst.A ∣ cAof sel mu cst :=
      pow_dvd_pow_of_dvd (Finset.dvd_prod_of_mem (fun Q : rowSG Pr sel mu => qOf Q.1) (a := ⟨P, hB⟩) (Finset.mem_univ _)) _
    have h3 := GlobalTheory.Proof.datum_support_div_lattice_interior.smul_mem_of_frames P (p.deco.1.at P) (p'.deco.1.at P) (frsF sel mu p ⟨P, hB⟩) (frsF sel mu p' ⟨P, hB⟩)
      (frsF_mem p ⟨P, hB⟩) (frsF_mem p' ⟨P, hB⟩) x _ (h2 ⟨P, hB⟩) y hy
    rw [hk, Nat.cast_smul_eq_nsmul, mul_comm, mul_smul, ← Nat.cast_smul_eq_nsmul X.E (qOf P ^ cst.A), Nat.cast_pow]
    exact nsmul_mem h3 k

theorem loc_of_mem_mulLat (hPr : Pr.Ok) {i j : ℕ} (p : ChPt (R := R) sel mu u i) (p' : ChPt (R := R) sel mu u j)
    (x : HomE X.E (R.N i) (R.N j)) {y : HomE X.E (R.N i) (R.N j)}
    (hy : y ∈ mulLat (cBof sel mu cst u) (homAt (Sall sel mu u) p.deco.1.N p'.deco.1.N)) :
    phiT X.K p.deco.1 p'.deco.1 (x + y) = phiT X.K p.deco.1 p'.deco.1 x ∧
      ∀ (P : rowSG Pr sel mu) s l, IntAt P.1 (((qOf P.1 : X.E) ^ cst.B)⁻¹ * inFr (frsF sel mu p P) (frsF sel mu p' P) y (Pi.single s 1) l) := by
  classical
  obtain ⟨y₀, hy₀, rfl⟩ := hy
  refine ⟨GlobalTheory.phiT_add_smul_homAt X.K _ _ p'.deco.2 Finset.subset_union_left _ (fun P => ?_) x y₀ hy₀, fun P => ?_⟩
  · rw [cBof, Nat.cast_mul, ← hPr.piT_norm u]
    refine Ideal.mul_mem_right _ _ (Ideal.mul_mem_right _ _ ?_)
    have h := P.2
    unfold Primes.vT divs at h
    split_ifs at h with hf
    · simpa using h
    · simp at h
  · obtain ⟨r, hr⟩ : qOf P.1 ^ cst.B ∣ cBof sel mu cst u :=
      Dvd.dvd.mul_left (pow_dvd_pow_of_dvd (Finset.dvd_prod_of_mem (fun Q : rowSG Pr sel mu => qOf Q.1) (Finset.mem_univ P)) _) _
    exact GlobalTheory.intAt_inFr_smul_homAt (Finset.mem_union_right _ P.2) _ _ (frsF_mem p P) (frsF_mem p' P) _ (r : 𝓞 X.E) _
      (pow_ne_zero _ (GlobalTheory.TopInv.qOf_ne P.1)) (by rw [hr]; simp) y₀ hy₀

variable {m2 : ℕ}

theorem locTop_den (hm : R.m = m2 + 2) (hc : cst.Ok) {P : rowSG Pr sel mu} {y : HomE X.E (R.N (m2 + 1)) (R.N R.m)}
    {y' : Sp X.E (R.N (m2 + 1))} (h : locTop Ch sel mu cst m2 P y y' ≠ 0) (s : Fin (R.N (m2 + 1))) (l : Fin (R.N R.m)) :
    IntAt P.1 ((qOf P.1 : X.E) ^ cst.A * y (Pi.single s 1) l) := by
  obtain ⟨h1, h2⟩ := mul_ne_zero_iff.1 h
  by_cases hl : l.1 < R.N R.m - 1
  · have h3 := GlobalTheory.SuppTop.intAt_of_phiTop Ch mu _ m2 hm P.1 _ h1 l.1 s.1 hl s.2
    have e : Loc.eN X.E (R.N (m2 + 1) + cOf R (m2 + 1)) s.1 = Pi.single (Fin.castAdd _ s) 1 := by
      funext t
      simp [Loc.eN, Pi.single_apply, Fin.ext_iff]
    rw [e, LinearMap.comp_apply, LinearMap.comp_apply, castAdd_single, Loc.atN, dite_eq_left (show l.1 < R.N R.m - 1 + 0 from hl)] at h3
    exact (intAt_pow (intAt_nat _) _).mul h3
  · have h3 := GlobalTheory.SuppTop.intAt_of_ftY sel mu cst P _ _ h2 s
    obtain rfl : l = Br.iL (N_m_succ R) := Fin.ext (by have := l.2; show l.1 = R.N R.m - 1; omega)
    obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_le hc.M_le_A
    rw [LinearMap.comp_apply, atNL_last] at h3
    rw [hk, add_comm, pow_add, mul_assoc]
    exact (intAt_pow (intAt_nat _) _).mul h3


open Classical in
theorem locTop_add (hm : R.m = m2 + 2) (hc : cst.Ok) {P : rowSG Pr sel mu} (hD : P.1 ∉ Pr.vGs → 2 * cst.M ≤ cst.D P)
    (y : HomE X.E (R.N (m2 + 1)) (R.N R.m)) {z : HomE X.E (R.N (m2 + 1)) (R.N R.m)} {y' : Sp X.E (R.N (m2 + 1))}
    (hz : ∀ s l, IntAt P.1 (((qOf P.1 : X.E) ^ cst.B)⁻¹ * z (Pi.single s 1) l))
    (hy' : ∀ i, IntAt P.1 ((qOf P.1 : X.E) ^ (if P.1 ∈ Pr.vGs then 1 else cst.M) * y' i)) :
    locTop Ch sel mu cst m2 P (y + z) y' = locTop Ch sel mu cst m2 P y y' := by
  simp only [← div_eq_inv_mul] at hz
  unfold locTop
  rw [LinearMap.add_comp, LinearMap.comp_add, LinearMap.comp_add]
  refine congrArg₂ (· * ·) (GlobalTheory.TopInv.PhiTop_add mu Ch _ m2 hm P.1 _ _ fun s l => ?_)
    (GlobalTheory.TopInv.ftY_add sel mu cst hc P hD _ _ _ (fun s => ?_) hy')
  · obtain ⟨s, rfl⟩ : ∃ t, s = Fin.castAdd _ t := ⟨⟨s.1, by have := s.2; unfold cOf at this; omega⟩, rfl⟩
    rw [LinearMap.comp_apply, LinearMap.comp_apply, castAdd_single, ← pow_one (qOf P.1 : X.E)]
    exact GlobalTheory.TopInv.intAt_div_pow_le (GlobalTheory.TopInv.qOf_ne P.1) hc.B_pos (hz s _)
  · rw [LinearMap.comp_apply, atNL_last]
    exact hz s _

end Range

section Chain

variable {X : Fields} {Pr : Primes X} {R : Ranks} {W : Wts X Pr.Word R} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K))}
  {A : Amb X} {u : Pr.Word} {m2 : ℕ} {b : L.β (m2 + 1)} {hY : YbHyp (R := R) sel mu cst L u m2 b}
  {P : LevFam X.E X.K R.r Pr.vGs} {c : TopDepth R cst.M} {G : ChGlob X R.m}


section Pt

variable (i j : ℕ) (e : j = i + 1) (β : (twFam W Ch sel mu cst L u m2 b hY P c i).β) (β' : (twFam W Ch sel mu cst L u m2 b hY P c j).β)
  (d : (twFam W Ch sel mu cst L u m2 b hY P c i).D β) (d' : (twFam W Ch sel mu cst L u m2 b hY P c j).D β')

end Pt

section Vec

variable (hPr : Pr.Ok) (hL : L.Ok Ch sel mu cst G m2) (h0 : A.AA ≠ ⊥)
include hPr hL h0

end Vec

section Def

variable (chi : ∀ n : ℕ, Submodule (𝓞 X.E) (Sp X.E n) → ℂ) (hX : X.Ok) (hm : R.m = m2 + 2) (hF : ∀ j, (chF W sel mu L u j).Ok)
  (hK : TwEquiv W Ch sel mu cst L A u m2 b hY P c) (hρ : RhoUnit Ch sel mu cst A.σ₀ chi)

end Def


variable (W sel mu cst A u) in
def TwJets : Prop :=
  ∀ i < R.m, JetsRatDeg A (R.N i) (R.N (i + 1)) (Sall sel mu u) (cAof sel mu cst * cBof sel mu cst u) fun τ => ∑ a, (W.nuW u (i + 1) τ).w a

section Laws

variable {chi : ∀ n : ℕ, Submodule (𝓞 X.E) (Sp X.E n) → ℂ} {hX : X.Ok} {hm : R.m = m2 + 2} {hF : ∀ j, (chF W sel mu L u j).Ok}
  {hK : TwEquiv W Ch sel mu cst L A u m2 b hY P c} {hρ : RhoUnit Ch sel mu cst A.σ₀ chi}

variable (hT : 0 < Pr.T u) (hχ : ChiSplit chi A) (hs : ∀ i < R.m, A.ESmooth (R.N i) (R.N (i + 1))) (hJ : TwJets W sel mu cst A u)
include hT hχ hs hJ

end Laws

section Same

variable {chi : ∀ n : ℕ, Submodule (𝓞 X.E) (Sp X.E n) → ℂ} {hX : X.Ok} {hm : R.m = m2 + 2} {hF : ∀ j, (chF W sel mu L u j).Ok}
  {hK : TwEquiv W Ch sel mu cst L A u m2 b hY P c} {hρ : RhoUnit Ch sel mu cst A.σ₀ chi}

end Same

section Of

variable {D : D7} {s : Seam D X} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} {B : Base D cc δ} {χ : TaylorLogMetric.IdE D → ℂ} {cD : D.what₂.Tau → ℂ}
  {e : Fin R.m → X.Tau → ℚ} {eta : Formalism.L2.Host.HChar X.E} {hX : X.Ok} {hPr : Pr.Ok} {hsel : IsSel X sel}
  {hS : ∀ i, Pr.g i ∈ S} {ht : Ch.Tied s.σ₀ e G.mu0 eta} {hL : L.Ok Ch sel mu cst G m2} {hG : G.σ₀ = s.σ₀} {hs : s.Ok}
  {hχ : TaylorLogMetric.IsChi D χ} {hF : ∀ j, (chF W sel mu L u j).Ok} {hK : TwEquiv W Ch sel mu cst L (ambOf s B χ cD) u m2 b hY P c}

end Of

end Chain

end GlobalTheory.GO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GaloisGeometry.TwChainWtSharpDivDe =====

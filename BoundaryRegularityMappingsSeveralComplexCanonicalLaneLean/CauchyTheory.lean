import BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.AdmissibleClass

/-!
# Cauchy Theory Package
-/

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure CauchyTheoryPackage where
  integralFormula : Prop
  holomorphyImpliesAnalytic : Prop
  powerSeriesExpansion : Prop
  maximumPrinciple : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  integralFormulaClosed : C.integralFormula
  holomorphyImpliesAnalyticClosed : C.holomorphyImpliesAnalytic
  powerSeriesExpansionClosed : C.powerSeriesExpansion
  maximumPrincipleClosed : C.maximumPrinciple

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.integralFormula ∧ C.holomorphyImpliesAnalytic ∧ C.powerSeriesExpansion ∧ C.maximumPrinciple

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) :
    CauchyTheoryClosed C := by
  exact And.intro E.integralFormulaClosed
    (And.intro E.holomorphyImpliesAnalyticClosed
      (And.intro E.powerSeriesExpansionClosed E.maximumPrincipleClosed))

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
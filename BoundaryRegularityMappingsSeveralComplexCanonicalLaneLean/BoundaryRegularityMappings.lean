import BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.CauchyTheory

/-!
# Boundary Regularity of Mappings in Several Complex Variables
-/

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure BoundaryRegularityPackage where
  domainSmoothBoundary : Prop
  mappingHolomorphicUpToBoundary : Prop
  boundaryExtension : Prop
  regularityClass : ℕ
  sobolevEstimate : Prop

structure BoundaryRegularityEvidence (B : BoundaryRegularityPackage) where
  domainSmoothBoundaryClosed : B.domainSmoothBoundary
  mappingHolomorphicUpToBoundaryClosed : B.mappingHolomorphicUpToBoundary
  boundaryExtensionClosed : B.boundaryExtension
  sobolevEstimateClosed : B.sobolevEstimate

def BoundaryRegularityClosed (B : BoundaryRegularityPackage) : Prop :=
  B.domainSmoothBoundary ∧ B.mappingHolomorphicUpToBoundary ∧ B.boundaryExtension ∧ B.sobolevEstimate

theorem boundary_regularity_closed_from_evidence (B : BoundaryRegularityPackage) (E : BoundaryRegularityEvidence B) :
    BoundaryRegularityClosed B := by
  exact And.intro E.domainSmoothBoundaryClosed
    (And.intro E.mappingHolomorphicUpToBoundaryClosed
      (And.intro E.boundaryExtensionClosed E.sobolevEstimateClosed))

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
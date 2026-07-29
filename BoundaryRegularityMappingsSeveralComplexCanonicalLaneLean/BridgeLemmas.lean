import HautevilleHouse.BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SeveralComplexWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.boundaryRegularityHolds

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse

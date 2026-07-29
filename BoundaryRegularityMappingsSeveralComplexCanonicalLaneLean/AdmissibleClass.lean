import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure SeveralComplexAdmittedObject where
  domain : Type u
  boundary : Type v
  holomorphicMapping : Type w
  boundaryRegularityHolds : Prop

structure AdmissibleClass where
  object : SeveralComplexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SeveralComplexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SeveralComplexWitnessClosed (O : SeveralComplexAdmittedObject) : Prop :=
  O.boundaryRegularityHolds

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse

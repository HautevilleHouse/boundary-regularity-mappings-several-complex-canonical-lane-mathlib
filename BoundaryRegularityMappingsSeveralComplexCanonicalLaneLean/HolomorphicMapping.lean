import .CRStructure

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure HolomorphicMappingPackage {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D} where
  mappingFunction : M.carrier → N.carrier
  holomorphicOnDomain : Prop
  extendsContinuouslyToBoundary : Prop
  crMappingOnBoundary : Prop
  mappingDegree : Int

def HolomorphicMappingClosed {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D}
    (H : HolomorphicMappingPackage CR_M CR_N) : Prop :=
  H.holomorphicOnDomain ∧ H.extendsContinuouslyToBoundary ∧ H.crMappingOnBoundary

structure HolomorphicMappingEvidence {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D}
    (H : HolomorphicMappingPackage CR_M CR_N) where
  holomorphicOnDomainClosed : H.holomorphicOnDomain
  extendsContinuouslyToBoundaryClosed : H.extendsContinuouslyToBoundary
  crMappingOnBoundaryClosed : H.crMappingOnBoundary

theorem holomorphic_mapping_closed_from_evidence {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    {N : ComplexManifoldPackage} {D : ComplexManifoldEvidence N}
    {CR_M : CRStructurePackage C} {CR_N : CRStructurePackage D}
    (H : HolomorphicMappingPackage CR_M CR_N) (E : HolomorphicMappingEvidence H) :
    HolomorphicMappingClosed H := by
  exact And.intro E.holomorphicOnDomainClosed
    (And.intro E.extendsContinuouslyToBoundaryClosed E.crMappingOnBoundaryClosed)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
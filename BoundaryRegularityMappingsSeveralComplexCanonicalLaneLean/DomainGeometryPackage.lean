import BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.CRStructurePackage

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure DomainGeometryPackage (B : BoundaryRegularityObject) {M : MappingExtensionPackage B} (C : CRStructurePackage B M) where
  boundaryGeometry : Type
  complexTangentBundle : Type
  positiveLeviCondition : Prop
  pseudoconvexity : Prop
  finiteTypeCondition : Prop

structure DomainGeometryEvidence {B : BoundaryRegularityObject} {M : MappingExtensionPackage B} {C : CRStructurePackage B M} (D : DomainGeometryPackage B C) where
  positiveLeviConditionClosed : D.positiveLeviCondition
  pseudoconvexityClosed : D.pseudoconvexity
  finiteTypeConditionClosed : D.finiteTypeCondition

def DomainGeometryClosed {B : BoundaryRegularityObject} {M : MappingExtensionPackage B} {C : CRStructurePackage B M} (D : DomainGeometryPackage B C) : Prop :=
  D.positiveLeviCondition ∧ D.pseudoconvexity ∧ D.finiteTypeCondition

theorem domain_geometry_closed_from_evidence {B : BoundaryRegularityObject} {M : MappingExtensionPackage B} {C : CRStructurePackage B M} (D : DomainGeometryPackage B C) (E : DomainGeometryEvidence D) :
    DomainGeometryClosed D := by
  exact And.intro E.positiveLeviConditionClosed (And.intro E.pseudoconvexityClosed E.finiteTypeConditionClosed)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
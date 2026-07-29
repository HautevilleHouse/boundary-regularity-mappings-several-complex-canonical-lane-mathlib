import BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean.MappingExtensionPackage

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure CRStructurePackage (B : BoundaryRegularityObject) (M : MappingExtensionPackage B) where
  inducedCRStructure : Type
  leviForm : Type
  nondegeneracyCondition : Prop
  abstractCRStructure : Prop
  embeddings : Prop

structure CRStructureEvidence {B : BoundaryRegularityObject} {M : MappingExtensionPackage B} (C : CRStructurePackage B M) where
  nondegeneracyConditionClosed : C.nondegeneracyCondition
  abstractCRStructureClosed : C.abstractCRStructure
  embeddingsClosed : C.embeddings

def CRStructureClosed {B : BoundaryRegularityObject} {M : MappingExtensionPackage B} (C : CRStructurePackage B M) : Prop :=
  C.nondegeneracyCondition ∧ C.abstractCRStructure ∧ C.embeddings

theorem cr_structure_closed_from_evidence {B : BoundaryRegularityObject} {M : MappingExtensionPackage B} (C : CRStructurePackage B M) (E : CRStructureEvidence C) :
    CRStructureClosed C := by
  exact And.intro E.nondegeneracyConditionClosed (And.intro E.abstractCRStructureClosed E.embeddingsClosed)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
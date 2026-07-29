import .ComplexStructure

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure CRStructurePackage {M : ComplexManifoldPackage}
    (C : ComplexManifoldEvidence M) where
  tangentBundleCR : Type u
  crVectorFields : Type v
  leviForm : Type w
  strictPseudoConvex : Prop
  leviFormNondegenerate : Prop
  crStructureCompatible : Prop

def CRStructureClosed {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    (CR : CRStructurePackage C) : Prop :=
  CR.strictPseudoConvex ∧ CR.leviFormNondegenerate ∧ CR.crStructureCompatible

structure CRStructureEvidence {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    (CR : CRStructurePackage C) where
  strictPseudoConvexClosed : CR.strictPseudoConvex
  leviFormNondegenerateClosed : CR.leviFormNondegenerate
  crStructureCompatibleClosed : CR.crStructureCompatible

theorem cr_structure_closed_from_evidence {M : ComplexManifoldPackage} {C : ComplexManifoldEvidence M}
    (CR : CRStructurePackage C) (E : CRStructureEvidence CR) : CRStructureClosed CR := by
  exact And.intro E.strictPseudoConvexClosed
    (And.intro E.leviFormNondegenerateClosed E.crStructureCompatibleClosed)

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean

structure CRStructure (M : Type u) where
  hyperplaneDistribution : Subbundle (TangentBundle M)
  integrability : Prop
  leviForm : LeviFormType
  leviNondegenerate : Prop

structure CRManifoldWithBoundary (D : ComplexDomainWithBoundary) where
  crStructure : CRStructure D.carrier
  compatibilityWithBoundary : Prop
  sufficientlyStrictPseudoconvex : Prop

structure CRObligatoryPackage (D : ComplexDomainWithBoundary) where
  crStructure : CRManifoldWithBoundary D
  leviFormNondegenerate : Prop
  positiveLeviForm : Prop

structure CRObligatoryEvidence (C : CRObligatoryPackage D) where
  leviFormNondegenerateClosed : C.leviFormNondegenerate
  positiveLeviFormClosed : C.positiveLeviForm

def CRObligatoryClosed (C : CRObligatoryPackage D) : Prop :=
  C.leviFormNondegenerate ∧ C.positiveLeviForm

theorem cr_obligatory_closed_from_evidence (C : CRObligatoryPackage D)
  (E : CRObligatoryEvidence C) : CRObligatoryClosed C := by
  exact And.intro E.leviFormNondegenerateClosed E.positiveLeviFormClosed

end BoundaryRegularityMappingsSeveralComplexCanonicalLaneLean
end HautevilleHouse
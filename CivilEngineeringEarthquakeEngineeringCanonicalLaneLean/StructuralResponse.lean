import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure StructuralResponsePackage where
  dynamicModel : Type u
  materialModel : Type v
  demandParameters : Type w
  modalAnalysis : Prop
  timeHistoryAnalysis : Prop
  pushoverAnalysis : Prop
  modalEvidence : modalAnalysis
  timeHistoryEvidence : timeHistoryAnalysis
  pushoverEvidence : pushoverAnalysis

structure StructuralResponseEvidence (S : StructuralResponsePackage) where
  modalAnalysisClosed : S.modalAnalysis
  timeHistoryAnalysisClosed : S.timeHistoryAnalysis
  pushoverAnalysisClosed : S.pushoverAnalysis

def StructuralResponseClosed (S : StructuralResponsePackage) : Prop :=
  S.modalAnalysis ∧ S.timeHistoryAnalysis ∧ S.pushoverAnalysis

theorem structural_response_closed_from_evidence (S : StructuralResponsePackage) (E : StructuralResponseEvidence S) :
    StructuralResponseClosed S := by
  exact And.intro E.modalAnalysisClosed (And.intro E.timeHistoryAnalysisClosed E.pushoverAnalysisClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
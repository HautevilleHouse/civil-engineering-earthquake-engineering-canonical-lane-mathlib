import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure StructuralSystem where
  naturalPeriod : Float
  dampingRatio : Float
  ductility : Float
  responseSpectrumOrdinate : Float
  inelasticResponseValid : Prop

structure StructuralResponseEvidence (S : StructuralSystem) where
  inelasticResponseValidClosed : S.inelasticResponseValid

def StructuralResponseClosed (S : StructuralSystem) : Prop :=
  S.inelasticResponseValid

theorem structural_response_closed_from_evidence (S : StructuralSystem)
    (E : StructuralResponseEvidence S) : StructuralResponseClosed S := by
  exact E.inelasticResponseValidClosed

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
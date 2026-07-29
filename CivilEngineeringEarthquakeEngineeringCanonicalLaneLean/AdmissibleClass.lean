import HautevilleHouse.CivilEngineeringEarthquakeEngineeringCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure AdmissibleClass where
  object : EarthquakeEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EarthquakeEngineeringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
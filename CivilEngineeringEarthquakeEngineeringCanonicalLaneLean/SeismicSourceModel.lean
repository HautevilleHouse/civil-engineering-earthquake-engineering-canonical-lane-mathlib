import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SeismicSourcePackage where
  faultGeometry : Type u
  slipRate : Type v
  magnitudeFrequencyRelation : Type w
  ruptureScenario : Type x
  sourceZoneDefined : Prop
  recurrenceModel : Prop
  maximumMagnitude : Prop
  geometryEvidence : sourceZoneDefined
  recurrenceEvidence : recurrenceModel
  magnitudeEvidence : maximumMagnitude

structure SeismicSourceEvidence (S : SeismicSourcePackage) where
  sourceZoneDefinedClosed : S.sourceZoneDefined
  recurrenceModelClosed : S.recurrenceModel
  maximumMagnitudeClosed : S.maximumMagnitude

def SeismicSourceClosed (S : SeismicSourcePackage) : Prop :=
  S.sourceZoneDefined ∧ S.recurrenceModel ∧ S.maximumMagnitude

theorem seismic_source_closed_from_evidence (S : SeismicSourcePackage) (E : SeismicSourceEvidence S) :
    SeismicSourceClosed S := by
  exact And.intro E.sourceZoneDefinedClosed (And.intro E.recurrenceModelClosed E.maximumMagnitudeClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
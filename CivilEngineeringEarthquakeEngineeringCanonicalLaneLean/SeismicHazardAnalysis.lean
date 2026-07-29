import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SeismicHazardCurve where
  exceedanceRates : List Float
  intensityMeasures : List Float
  hazardConsistent : Prop

structure SeismicHazardEvidence (S : SeismicHazardCurve) where
  hazardConsistentClosed : S.hazardConsistent

def SeismicHazardClosed (S : SeismicHazardCurve) : Prop :=
  S.hazardConsistent

theorem seismic_hazard_closed_from_evidence (S : SeismicHazardCurve)
    (E : SeismicHazardEvidence S) : SeismicHazardClosed S := by
  exact E.hazardConsistentClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedEarthquakeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_earthquake_endgame (A : AdmissibleClass) :
    ConstrainedEarthquakeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
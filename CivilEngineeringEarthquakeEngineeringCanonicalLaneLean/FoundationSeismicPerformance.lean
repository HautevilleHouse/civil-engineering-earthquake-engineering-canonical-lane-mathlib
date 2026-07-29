import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure FoundationSeismicPackage where
  bearingCapacity : Prop
  slidingResistance : Prop
  overturningMoment : Prop
  settlementUnderCyclic : Prop

structure FoundationEvidence (F : FoundationSeismicPackage) where
  bearingCapacityClosed : F.bearingCapacity
  slidingResistanceClosed : F.slidingResistance
  overturningMomentClosed : F.overturningMoment
  settlementUnderCyclicClosed : F.settlementUnderCyclic

def FoundationSeismicClosed (F : FoundationSeismicPackage) : Prop :=
  F.bearingCapacity ∧ F.slidingResistance ∧ F.overturningMoment ∧ F.settlementUnderCyclic

theorem foundation_seismic_closed_from_evidence
    (F : FoundationSeismicPackage) (E : FoundationEvidence F) :
    FoundationSeismicClosed F := by
  exact And.intro E.bearingCapacityClosed
    (And.intro E.slidingResistanceClosed
      (And.intro E.overturningMomentClosed E.settlementUnderCyclicClosed))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
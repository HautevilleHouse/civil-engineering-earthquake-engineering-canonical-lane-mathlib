import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure CapacityDesignPackage where
  designSpectrum : Type u
  ductilityClass : Type v
  overstrengthFactor : Prop
  capacityDesignCriteria : Prop
  detailingRequirements : Prop

structure CapacityDesignEvidence (C : CapacityDesignPackage) where
  overstrengthFactorClosed : C.overstrengthFactor
  capacityDesignCriteriaClosed : C.capacityDesignCriteria
  detailingRequirementsClosed : C.detailingRequirements

def CapacityDesignClosed (C : CapacityDesignPackage) : Prop :=
  C.overstrengthFactor ∧ C.capacityDesignCriteria ∧ C.detailingRequirements

theorem capacity_design_closed_from_evidence (C : CapacityDesignPackage)
    (E : CapacityDesignEvidence C) : CapacityDesignClosed C := by
  exact And.intro E.overstrengthFactorClosed
    (And.intro E.capacityDesignCriteriaClosed E.detailingRequirementsClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
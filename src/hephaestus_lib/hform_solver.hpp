#pragma once
#include "../common/pfem_extras.hpp"
#include "hcurl_solver.hpp"
#include "inputs.hpp"

namespace hephaestus {

class HFormSolver : public hephaestus::HCurlSolver {
  virtual void SetMaterialCoefficients(
      hephaestus::DomainProperties &domain_properties) override;
  virtual void RegisterVariables() override;

public:
  HFormSolver(mfem::ParMesh &pmesh, int order,
              mfem::NamedFieldsMap<mfem::ParFiniteElementSpace> &fespaces,
              mfem::NamedFieldsMap<mfem::ParGridFunction> &variables,
              hephaestus::BCMap &bc_map,
              hephaestus::DomainProperties &domain_properties,
              hephaestus::Sources &sources,
              hephaestus::InputParameters &solver_options);

  ~HFormSolver(){};
};
} // namespace hephaestus

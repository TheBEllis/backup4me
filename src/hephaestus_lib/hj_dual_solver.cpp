#include "hj_dual_solver.hpp"

namespace hephaestus {

HJDualSolver::HJDualSolver(
    mfem::ParMesh &pmesh, int order,
    mfem::NamedFieldsMap<mfem::ParFiniteElementSpace> &fespaces,
    mfem::NamedFieldsMap<mfem::ParGridFunction> &variables,
    hephaestus::BCMap &bc_map, hephaestus::DomainProperties &domain_properties,
    hephaestus::Sources &sources, hephaestus::InputParameters &solver_options)
    : DualSolver(pmesh, order, fespaces, variables, bc_map, domain_properties,
                 sources, solver_options) {}

void HJDualSolver::RegisterVariables() {
  u_name = "magnetic_field";
  u_display_name = "Magnetic Field (H)";

  v_name = "current_density";
  v_display_name = "Current Density (J)";

  _variables.Register(u_name, &u_, false);
  _variables.Register(v_name, &v_, false);
}

void HJDualSolver::SetMaterialCoefficients(
    hephaestus::DomainProperties &domain_properties) {
  if (domain_properties.scalar_property_map.count("magnetic_permeability") ==
      0) {
    domain_properties.scalar_property_map["magnetic_permeability"] =
        new mfem::PWCoefficient(domain_properties.getGlobalScalarProperty(
            std::string("magnetic_permeability")));
  }
  if (domain_properties.scalar_property_map.count("electrical_conductivity") ==
      0) {
    domain_properties.scalar_property_map["electrical_conductivity"] =
        new mfem::PWCoefficient(domain_properties.getGlobalScalarProperty(
            std::string("electrical_conductivity")));
  }
  alphaCoef = new mfem::TransformedCoefficient(
      &oneCoef,
      domain_properties.scalar_property_map["electrical_conductivity"],
      fracFunc);
  betaCoef = domain_properties.scalar_property_map["magnetic_permeability"];
}

} // namespace hephaestus

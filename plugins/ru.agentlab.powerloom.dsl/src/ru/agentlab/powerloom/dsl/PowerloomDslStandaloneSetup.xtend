/*
 * generated by Xtext 2.10.0
 */
package ru.agentlab.powerloom.dsl


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class PowerloomDslStandaloneSetup extends PowerloomDslStandaloneSetupGenerated {

	def static void doSetup() {
		new PowerloomDslStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
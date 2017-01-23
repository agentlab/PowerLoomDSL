/*
 * generated by Xtext 2.10.0
 */
package ru.agentlab.powerloom.dsl.tests

import com.google.inject.Inject
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import ru.agentlab.powerloom.dsl.powerloomDsl.PowerloomDsl

@RunWith(XtextRunner)
@InjectWith(PowerloomDslInjectorProvider)
class PowerloomDslParsingTest{

	@Inject
	ParseHelper<PowerloomDsl> parseHelper

	@Test 
	def void loadModel() {
		val result = parseHelper.parse('''
		(defmodule "ISO15926part2")
		(in-module "ISO15926part2")
		(defconcept Thing)
		(defconcept Class (?c Thing))
		(defconcept ClassOfClass (?c Class))
		(defrelation Classification ((?classifier Class)(?classified Thing))) 
		
		(defrelation Name ((?n Thing)(?b Class)))
		(defconcept ClassOfRelationship (?c Classification))
		''')
		Assert.assertNotNull(result)
	}

}

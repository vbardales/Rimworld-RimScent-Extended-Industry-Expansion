Feature: RimScent Industry Expansion loads without optional integrations

  Scenario: the minimal dependency set loads every owned unconditional scent definition
    Given the save "test-colony" is loaded
    Then mod "nelim.rimscent.extended.industry" is loaded
    And def "RimScentExtended_Scent_Mould" of type "ThoughtDef" exists
    And def "RimScentExtended_Scent_Slime" of type "ThoughtDef" exists
    And def "RimScentExtended_Scent_Crematorium" of type "ThoughtDef" exists
    And def "RimScentExtended_Scent_Smelter" of type "ThoughtDef" exists
    And def "RimScentExtended_Scent_SmellingSalts" of type "ThoughtDef" exists
    And def "RimScentExtended_Scent_Pharmacy" of type "ThoughtDef" exists
    And def "RimScentExtended_Scent_Torch" of type "ThoughtDef" exists
    And no errors were logged

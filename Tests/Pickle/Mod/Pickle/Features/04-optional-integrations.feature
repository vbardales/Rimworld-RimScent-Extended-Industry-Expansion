@requires:nelim.pickletools.colonistrace
@requires:det.epochstallow
@requires:det.epochsincense
@requires:mlie.medicalsupplements
@requires:ceteam.combatextended
Feature: RimScent Industry Expansion optional integrations

  Background:
    Given the save "test-colony" is loaded
    Then mod "nelim.rimscent.extended.industry" is loaded

  Scenario: O1 a tallow wall lamp beside a colonist gives the tallow thought
    Given Nelim's Pickle Tools: the building "DV_TallowWallLamp" is spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScentExtended_Scent_Tallow"

  Scenario: O2 an incense burner beside a colonist gives the upstream incense thought
    Given Nelim's Pickle Tools: the building "MA_IncenseBurner" is spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "IncenseThought"

  Scenario: O3 smelling salts beside a colonist give the smelling salts thought
    Given Nelim's Pickle Tools: 1 of the item "MSSmellSalts" are spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScentExtended_Scent_SmellingSalts"

  Scenario: O4 the Combat Extended blackpowder thought is defined and the load is clean
    Then def "RimScent_BlackpowderOdor" of type "ThoughtDef" exists
    And no errors were logged

@requires:nelim.pickletools.colonistrace
Feature: RimScent Industry Expansion French thought text (run with the game in French)

  Scenario: F1 the mould thought reads its French description
    Given the save "test-colony" is loaded
    And Nelim's Pickle Tools: "Larson" stands at (106, 204)
    And Nelim's Pickle Tools: the filth within 12 cells of the colonist "Larson" is removed
    And Nelim's Pickle Tools: 1 of the item "Filth_MoldyUniform" are spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" thought "RimScentExtended_Scent_Mould" description reads "Du tissu humide laissé trop longtemps dans le noir. Une odeur de renfermé, qui prend à la gorge."

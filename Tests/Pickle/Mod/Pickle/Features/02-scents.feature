@requires:nelim.pickletools.colonistrace
Feature: RimScent Industry Expansion scent thoughts reach a colonist

  Background:
    Given the save "test-colony" is loaded
    Then mod "nelim.rimscent.extended.industry" is loaded

  Scenario: S1 mould filth beside a colonist gives the mould thought
    Given Nelim's Pickle Tools: 1 of the item "Filth_MoldyUniform" are spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScentExtended_Scent_Mould"

  Scenario: S2 slime filth beside a colonist gives the slime thought
    Given Nelim's Pickle Tools: 1 of the item "Filth_Slime" are spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScentExtended_Scent_Slime"

  Scenario: S3 fire foam beside a colonist gives the upstream fire foam thought
    Given Nelim's Pickle Tools: 1 of the item "Filth_FireFoam" are spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScent_FirefoamScent"

  Scenario: S4 a blast mark beside a colonist gives the upstream explosion thought
    Given Nelim's Pickle Tools: 1 of the item "Filth_BlastMark" are spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScent_ExplosionScent"

  Scenario: S5 a wall torch beside a colonist gives the torch thought
    Given Nelim's Pickle Tools: the building "TorchWallLamp" is spawned at (109, 204)
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScentExtended_Scent_Torch"

  Scenario: S6 a switched off crematorium gives no crematorium thought
    Given Nelim's Pickle Tools: the building "ElectricCrematorium" is spawned at (109, 204)
    And Nelim's Pickle Tools: the building "ElectricCrematorium" at (109, 204) is switched off
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently does not feel the mood thought "RimScentExtended_Scent_Crematorium"

  Scenario: S7 a switched on but unpowered smelter gives no smelter thought
    Given Nelim's Pickle Tools: the building "ElectricSmelter" is spawned at (109, 204)
    And Nelim's Pickle Tools: the building "ElectricSmelter" at (109, 204) is switched on
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently does not feel the mood thought "RimScentExtended_Scent_Smelter"

  Scenario: S8 a powered and switched on crematorium gives the crematorium thought
    Given Nelim's Pickle Tools: the building "ElectricCrematorium" is spawned at (109, 204)
    And Nelim's Pickle Tools: the building "ElectricCrematorium" at (109, 204) is powered
    And Nelim's Pickle Tools: the building "ElectricCrematorium" at (109, 204) is switched on
    Then Nelim's Pickle Tools: the power of the building "ElectricCrematorium" at (109, 204) is powered
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScentExtended_Scent_Crematorium"

  Scenario: S9 a powered and switched on smelter gives the smelter thought
    Given Nelim's Pickle Tools: the building "ElectricSmelter" is spawned at (109, 204)
    And Nelim's Pickle Tools: the building "ElectricSmelter" at (109, 204) is powered
    And Nelim's Pickle Tools: the building "ElectricSmelter" at (109, 204) is switched on
    Then Nelim's Pickle Tools: the power of the building "ElectricSmelter" at (109, 204) is powered
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently feels the mood thought "RimScentExtended_Scent_Smelter"

  Scenario: S10 a powered but switched off crematorium gives no crematorium thought
    Given Nelim's Pickle Tools: the building "ElectricCrematorium" is spawned at (109, 204)
    And Nelim's Pickle Tools: the building "ElectricCrematorium" at (109, 204) is powered
    And Nelim's Pickle Tools: the building "ElectricCrematorium" at (109, 204) is switched off
    When I wait 600 ticks
    Then Nelim's Pickle Tools: "Larson" currently does not feel the mood thought "RimScentExtended_Scent_Crematorium"

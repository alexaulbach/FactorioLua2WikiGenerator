{
  output = "lua",
  paths = { "factorio/Contents/data/core", "factorio/Contents/data/base" },
  sort = 1
}
{
  accumulator = {
    ["basic-accumulator"] = {
      charge_animation = {
        animation_speed = 0.5,
        filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
        frame_count = 24,
        frame_height = 135,
        frame_width = 138,
        line_length = 8,
        shift = { 0.482, -0.638 }
      },
      charge_cooldown = 30,
      charge_light = {
        intensity = 0.3,
        size = 7
      },
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      corpse = "medium-remnants",
      discharge_animation = {
        animation_speed = 0.5,
        filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
        frame_count = 24,
        frame_height = 128,
        frame_width = 147,
        line_length = 8,
        shift = { 0.395, -0.525 }
      },
      discharge_cooldown = 60,
      discharge_light = {
        intensity = 0.7,
        size = 7
      },
      energy_source = {
        buffer_capacity = "5KJ",
        input_flow_limit = "300W",
        input_priority = "terciary",
        output_flow_limit = "300W",
        output_priority = "terciary",
        type = "electric"
      },
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/basic-accumulator.png",
      max_health = 150,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "basic-accumulator"
      },
      name = "basic-accumulator",
      picture = {
        filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
        height = 103,
        priority = "extra-high",
        shift = { 0.7, -0.2 },
        width = 124
      },
      selection_box = { { -1, -1 }, { 1, 1 } },
      type = "accumulator"
    }
  },
  ["active-defense-equipment"] = {
    ["basic-electric-discharge-defense-equipment"] = {
      ability_icon = {
        filename = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment-ability.png",
        height = 32,
        priority = "medium",
        width = 32
      },
      attack_parameters = {
        ammo_category = "electric",
        ammo_type = {
          action = { {
              action_delivery = { {
                  projectile = "blue-laser",
                  starting_speed = 0.28,
                  type = "projectile"
                } },
              force = "enemy",
              perimeter = 10,
              type = "area"
            } },
          category = "electric",
          energy_consumption = "2KJ",
          speed = 1,
          type = "projectile"
        },
        cooldown = 150,
        damage_modifier = 3,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 10,
        sound = { {
            filename = "__base__/sound/laser.wav",
            volume = 0.4
          } }
      },
      automatic = false,
      energy_source = {
        buffer_capacity = "4040J",
        input_priority = "secondary",
        type = "electric"
      },
      name = "basic-electric-discharge-defense-equipment",
      shape = {
        height = 3,
        type = "full",
        width = 3
      },
      sprite = {
        filename = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment.png",
        height = 96,
        priority = "medium",
        width = 96
      },
      type = "active-defense-equipment"
    },
    ["basic-laser-defense-equipment"] = {
      attack_parameters = {
        ammo_category = "electric",
        ammo_type = {
          action = { {
              action_delivery = { {
                  projectile = "laser",
                  starting_speed = 0.28,
                  type = "projectile"
                } },
              type = "direct"
            } },
          category = "electric",
          energy_consumption = "100J",
          projectile = "laser",
          speed = 1,
          type = "projectile"
        },
        cooldown = 20,
        damage_modifier = 1,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 15,
        sound = { {
            filename = "__base__/sound/laser.wav",
            volume = 0.4
          } }
      },
      automatic = true,
      energy_source = {
        buffer_capacity = "101J",
        input_priority = "secondary",
        type = "electric"
      },
      name = "basic-laser-defense-equipment",
      shape = {
        height = 3,
        type = "full",
        width = 2
      },
      sprite = {
        filename = "__base__/graphics/equipment/basic-laser-defense-equipment.png",
        height = 96,
        priority = "medium",
        width = 64
      },
      type = "active-defense-equipment"
    }
  },
  ammo = {
    ["basic-bullet-magazine"] = {
      ammo_type = {
        action = { {
            action_delivery = { {
                source_effects = { {
                    entity_name = "explosion-gunshot",
                    type = "create-entity"
                  } },
                target_effects = { {
                    entity_name = "explosion-gunshot",
                    type = "create-entity"
                  }, {
                    damage = {
                      amount = 2,
                      type = "physical"
                    },
                    type = "damage"
                  } },
                type = "instant"
              } },
            type = "direct"
          } },
        category = "bullet"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-bullet-magazine.png",
      magazine_size = 10,
      name = "basic-bullet-magazine",
      order = "f-a-a",
      stack_size = 100,
      type = "ammo"
    },
    ["explosive-rocket"] = {
      ammo_type = {
        action = {
          action_delivery = {
            projectile = "explosive-rocket",
            source_effects = {
              entity_name = "explosion-gunshot",
              type = "create-entity"
            },
            starting_speed = 0.1,
            type = "projectile"
          },
          type = "direct"
        },
        category = "rocket"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/explosive-rocket.png",
      name = "explosive-rocket",
      order = "f-b-b",
      stack_size = 100,
      type = "ammo"
    },
    ["flame-thrower-ammo"] = {
      ammo_type = {
        action = {
          action_delivery = { {
              damage = {
                amount = 15,
                type = "fire"
              },
              direction_deviation = 0.07,
              explosion = "flame-thrower-explosion",
              projectile_starting_speed = 0.2,
              speed_deviation = 0.1,
              starting_distance = 0.6,
              starting_frame_deviation = 0.07,
              type = "flame-thrower"
            } },
          type = "direct"
        },
        category = "flame-thrower",
        target_type = "direction"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/flame-thrower-ammo.png",
      magazine_size = 100,
      name = "flame-thrower-ammo",
      order = "f-c-a",
      stack_size = 50,
      type = "ammo"
    },
    ["piercing-bullet-magazine"] = {
      ammo_type = {
        action = {
          action_delivery = {
            source_effects = {
              entity_name = "explosion-gunshot",
              type = "create-entity"
            },
            target_effects = { {
                entity_name = "explosion-gunshot",
                type = "create-entity"
              }, {
                damage = {
                  amount = 5,
                  type = "physical"
                },
                type = "damage"
              } },
            type = "instant"
          },
          type = "direct"
        },
        category = "bullet"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/piercing-bullet-magazine.png",
      magazine_size = 10,
      name = "piercing-bullet-magazine",
      order = "f-a-c",
      stack_size = 100,
      type = "ammo"
    },
    ["piercing-shotgun-shell"] = {
      ammo_type = {
        action = { {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          } },
        category = "shotgun-shell",
        source_effects = {
          entity_name = "explosion-gunshot",
          type = "create-entity"
        },
        target_type = "direction"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
      magazine_size = 10,
      name = "piercing-shotgun-shell",
      order = "f-d-a",
      stack_size = 100,
      type = "ammo"
    },
    ["railgun-dart"] = {
      ammo_type = {
        action = {
          action_delivery = {
            target_effects = {
              damage = {
                amount = 100,
                type = "physical"
              },
              type = "damage"
            },
            type = "instant"
          },
          range = 25,
          source_effects = {
            entity_name = "railgun-beam",
            type = "create-entity"
          },
          type = "line",
          width = 0.5
        },
        category = "railgun",
        target_type = "direction"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/railgun-ammo.png",
      magazine_size = 4,
      name = "railgun-dart",
      order = "f-d-a",
      stack_size = 100,
      type = "ammo"
    },
    rocket = {
      ammo_type = {
        action = {
          action_delivery = {
            projectile = "rocket",
            source_effects = {
              entity_name = "explosion-gunshot",
              type = "create-entity"
            },
            starting_speed = 0.1,
            type = "projectile"
          },
          type = "direct"
        },
        category = "rocket"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/rocket.png",
      name = "rocket",
      order = "f-b-a",
      stack_size = 100,
      type = "ammo"
    },
    ["shotgun-shell"] = {
      ammo_type = {
        action = { {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          }, {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          } },
        category = "shotgun-shell",
        source_effects = {
          entity_name = "explosion-gunshot",
          type = "create-entity"
        },
        target_type = "direction"
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/shotgun-shell.png",
      magazine_size = 10,
      name = "shotgun-shell",
      order = "f-d-a",
      stack_size = 100,
      type = "ammo"
    }
  },
  ["ammo-category"] = {
    biological = {
      name = "biological",
      type = "ammo-category"
    },
    bullet = {
      name = "bullet",
      type = "ammo-category"
    },
    capsule = {
      name = "capsule",
      type = "ammo-category"
    },
    ["combat-robot-laser"] = {
      name = "combat-robot-laser",
      type = "ammo-category"
    },
    electric = {
      name = "electric",
      type = "ammo-category"
    },
    ["flame-thrower"] = {
      name = "flame-thrower",
      type = "ammo-category"
    },
    ["laser-turret"] = {
      name = "laser-turret",
      type = "ammo-category"
    },
    melee = {
      name = "melee",
      type = "ammo-category"
    },
    railgun = {
      name = "railgun",
      type = "ammo-category"
    },
    rocket = {
      name = "rocket",
      type = "ammo-category"
    },
    ["shotgun-shell"] = {
      name = "shotgun-shell",
      type = "ammo-category"
    }
  },
  ["ammo-turret"] = {
    ["gun-turret"] = {
      attack_parameters = {
        ammo_category = "bullet",
        cooldown = 6,
        projectile_center = { 0, 0.6 },
        projectile_creation_distance = 1.2,
        range = 17,
        shell_particle = {
          center = { 0, 0.6 },
          creation_distance = 0.6,
          direction_deviation = 0.1,
          name = "shell-particle",
          speed = 0.1,
          speed_deviation = 0.03,
          starting_frame_speed = 0.2,
          starting_frame_speed_deviation = 0.1
        },
        sound = { {
            filename = "__base__/sound/gunshot.wav",
            volume = 0.3
          } }
      },
      automated_ammo_count = 10,
      base_picture = {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
        height = 28,
        priority = "high",
        shift = { 0, 0.475 },
        width = 43
      },
      collision_box = { { -0.4, -0.9 }, { 0.4, 0.9 } },
      corpse = "small-remnants",
      dying_explosion = "huge-explosion",
      flags = { "placeable-player", "player-creation" },
      folded_animation = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
        frame_count = 1,
        frame_height = 102,
        frame_width = 171,
        line_length = 1,
        priority = "medium",
        shift = { 1.34375, 0.1 }
      },
      folding_animation = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
        frame_count = 5,
        frame_height = 102,
        frame_width = 171,
        priority = "medium",
        run_mode = "backward",
        shift = { 1.34375, 0.1 }
      },
      folding_speed = 0.08,
      icon = "__base__/graphics/icons/gun-turret.png",
      inventory_size = 1,
      max_health = 200,
      minable = {
        mining_time = 0.5,
        result = "gun-turret"
      },
      name = "gun-turret",
      prepared_animation = {
        axially_symmetrical = false,
        direction_count = 64,
        filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
        frame_count = 1,
        frame_height = 107,
        frame_width = 178,
        line_length = 8,
        priority = "medium",
        shift = { 1.34375, 0.13125 }
      },
      preparing_animation = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
        frame_count = 5,
        frame_height = 102,
        frame_width = 171,
        priority = "medium",
        shift = { 1.34375, 0.1 }
      },
      preparing_speed = 0.08,
      rotation_speed = 0.015,
      selection_box = { { -0.5, -1 }, { 0.5, 1 } },
      type = "ammo-turret"
    }
  },
  armor = {
    ["basic-armor"] = {
      durability = 1000,
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-armor.png",
      name = "basic-armor",
      order = "g-a",
      resistances = { {
          decrease = 3,
          percent = 20,
          type = "physical"
        }, {
          decrease = 3,
          percent = 30,
          type = "acid"
        }, {
          decrease = 2,
          percent = 20,
          type = "explosion"
        } },
      stack_size = 10,
      type = "armor"
    },
    ["basic-modular-armor"] = {
      durability = 10000,
      equipment_grid = {
        height = 5,
        width = 5
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-modular-armor.png",
      name = "basic-modular-armor",
      order = "g-c",
      resistances = { {
          decrease = 6,
          percent = 30,
          type = "physical"
        }, {
          decrease = 5,
          percent = 30,
          type = "acid"
        }, {
          decrease = 10,
          percent = 30,
          type = "explosion"
        } },
      stack_size = 1,
      type = "armor"
    },
    ["heavy-armor"] = {
      durability = 5000,
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/heavy-armor.png",
      name = "heavy-armor",
      order = "g-b",
      resistances = { {
          decrease = 6,
          percent = 30,
          type = "physical"
        }, {
          decrease = 10,
          percent = 30,
          type = "explosion"
        }, {
          decrease = 5,
          percent = 30,
          type = "acid"
        } },
      stack_size = 10,
      type = "armor"
    },
    ["power-armor"] = {
      durability = 15000,
      equipment_grid = {
        height = 7,
        width = 7
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/power-armor.png",
      name = "power-armor",
      order = "g-d",
      resistances = { {
          decrease = 8,
          percent = 30,
          type = "physical"
        }, {
          decrease = 7,
          percent = 30,
          type = "acid"
        }, {
          decrease = 15,
          percent = 30,
          type = "explosion"
        } },
      stack_size = 1,
      type = "armor"
    },
    ["power-armor-mk2"] = {
      durability = 20000,
      equipment_grid = {
        height = 10,
        width = 10
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/power-armor-mk2.png",
      name = "power-armor-mk2",
      order = "g-e",
      resistances = { {
          decrease = 10,
          percent = 40,
          type = "physical"
        }, {
          decrease = 10,
          percent = 40,
          type = "acid"
        }, {
          decrease = 20,
          percent = 50,
          type = "explosion"
        } },
      stack_size = 1,
      type = "armor"
    }
  },
  arrow = {
    ["red-arrow"] = {
      arrow_picture = {
        filename = "__core__/graphics/red-arrow/red-arrow-arrow.png",
        height = "230",
        priority = "low",
        width = "1030"
      },
      flags = { "placeable-off-grid" },
      name = "red-arrow",
      type = "arrow"
    },
    ["red-arrow-with-circle"] = {
      arrow_picture = {
        filename = "__core__/graphics/red-arrow/red-arrow-arrow.png",
        height = "230",
        priority = "low",
        width = "1030"
      },
      circle_picture = {
        filename = "__core__/graphics/red-arrow/red-arrow-circle.png",
        height = "200",
        priority = "low",
        width = "200"
      },
      flags = { "placeable-off-grid" },
      name = "red-arrow-with-circle",
      type = "arrow"
    }
  },
  ["assembling-machine"] = {
    ["assembling-machine-1"] = {
      animation = {
        filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
        frame_count = 32,
        frame_height = 120,
        frame_width = 141,
        line_length = 6,
        priority = "high",
        shift = { 0.7, 0.12 }
      },
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      corpse = "big-remnants",
      crafting_categories = { "crafting" },
      crafting_speed = 0.5,
      energy_source = {
        emissions = 0.033333333333333,
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage = "90W",
      fast_replaceable_group = "assembling-machine",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      ingredient_count = 2,
      max_health = 200,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "assembling-machine-1"
      },
      name = "assembling-machine-1",
      resistances = { {
          percent = 70,
          type = "fire"
        } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "assembling-machine"
    },
    ["assembling-machine-2"] = {
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      animation = {
        filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
        frame_count = 32,
        frame_height = 120,
        frame_width = 141,
        line_length = 6,
        priority = "high",
        shift = { 0.7, 0.12 }
      },
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      corpse = "big-remnants",
      crafting_categories = { "crafting" },
      crafting_speed = 0.75,
      energy_source = {
        emissions = 0.016,
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage = "150W",
      fast_replaceable_group = "assembling-machine",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      ingredient_count = 4,
      max_health = 250,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "assembling-machine-2"
      },
      module_slots = 2,
      name = "assembling-machine-2",
      resistances = { {
          percent = 70,
          type = "fire"
        } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "assembling-machine"
    },
    ["assembling-machine-3"] = {
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      animation = {
        filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
        frame_count = 32,
        frame_height = 120,
        frame_width = 141,
        line_length = 6,
        priority = "high",
        shift = { 0.7, 0.12 }
      },
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      corpse = "big-remnants",
      crafting_categories = { "crafting" },
      crafting_speed = 1.25,
      energy_source = {
        emissions = 0.0085714285714286,
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage = "210W",
      fast_replaceable_group = "assembling-machine",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      ingredient_count = 4,
      max_health = 300,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "assembling-machine-3"
      },
      module_slots = 4,
      name = "assembling-machine-3",
      resistances = { {
          percent = 70,
          type = "fire"
        } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "assembling-machine"
    }
  },
  ["autoplace-control"] = {
    coal = {
      name = "coal",
      order = "b-d",
      richness = true,
      type = "autoplace-control"
    },
    ["copper-ore"] = {
      name = "copper-ore",
      order = "b-b",
      richness = true,
      type = "autoplace-control"
    },
    dirt = {
      name = "dirt",
      order = "a-b",
      type = "autoplace-control"
    },
    ["enemy-base"] = {
      name = "enemy-base",
      order = "d-a",
      richness = true,
      type = "autoplace-control"
    },
    forest = {
      name = "forest",
      order = "c-a",
      type = "autoplace-control"
    },
    grass = {
      name = "grass",
      order = "a-a",
      type = "autoplace-control"
    },
    ["iron-ore"] = {
      name = "iron-ore",
      order = "b-a",
      richness = true,
      type = "autoplace-control"
    },
    sand = {
      name = "sand",
      order = "a-c",
      type = "autoplace-control"
    },
    stone = {
      name = "stone",
      order = "b-c",
      richness = true,
      type = "autoplace-control"
    }
  },
  ["battery-equipment"] = {
    ["battery-equipment"] = {
      energy_source = {
        buffer_capacity = "1KJ",
        input_flow_limit = "10KW",
        input_priority = "terciary",
        output_flow_limit = "10KW",
        output_priority = "terciary",
        type = "electric"
      },
      name = "battery-equipment",
      shape = {
        height = 2,
        type = "full",
        width = 1
      },
      sprite = {
        filename = "__base__/graphics/equipment/battery-equipment.png",
        height = 64,
        priority = "medium",
        width = 32
      },
      type = "battery-equipment"
    },
    ["battery-mk2-equipment"] = {
      energy_source = {
        buffer_capacity = "5KJ",
        input_flow_limit = "50KW",
        input_priority = "terciary",
        output_flow_limit = "50KW",
        output_priority = "terciary",
        type = "electric"
      },
      name = "battery-mk2-equipment",
      shape = {
        height = 2,
        type = "full",
        width = 1
      },
      sprite = {
        filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
        height = 64,
        priority = "medium",
        width = 32
      },
      type = "battery-equipment"
    }
  },
  beacon = {
    ["basic-beacon"] = {
      allowed_effects = { "consumption", "speed", "pollution" },
      animation = {
        animation_speed = 0.33333333333333,
        filename = "__base__/graphics/entity/basic-beacon/basic-beacon.png",
        frame_count = 32,
        frame_height = 186,
        frame_width = 176,
        line_length = 6,
        shift = { 1.2, 0.5 }
      },
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      corpse = "big-remnants",
      distribution_effectivity = 0.5,
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage = "480W",
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/basic-beacon.png",
      max_health = 200,
      minable = {
        mining_time = 1,
        result = "basic-beacon"
      },
      name = "basic-beacon",
      num_module_slots = 2,
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/basic-beacon/beacon-radius-visualization.png",
        height = 12,
        width = 12
      },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      supply_area_distance = 3,
      type = "beacon"
    }
  },
  boiler = {
    boiler = {
      burner = {
        effectivity = 0.5,
        emissions = 0.015384615384615,
        fuel_inventory_size = 1,
        smoke = { {
            deviation = { 0.1, 0.1 },
            frequency = 1,
            name = "smoke"
          } }
      },
      burning_cooldown = 20,
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      energy_consumption = "390W",
      fast_replaceable_group = "pipe",
      fire = {
        down = {
          filename = "__base__/graphics/entity/boiler/boiler-fire-left.png",
          frame_count = 12,
          frame_height = 13,
          frame_width = 12,
          priority = "extra-high",
          shift = { -0.42, 0.05 }
        },
        left = {
          filename = "__base__/graphics/entity/boiler/boiler-fire-down.png",
          frame_count = 12,
          frame_height = 14,
          frame_width = 16,
          priority = "extra-high",
          shift = { 0, 0.23 }
        },
        left_down = {
          filename = "__base__/graphics/entity/boiler/boiler-fire-right.png",
          frame_count = 12,
          frame_height = 14,
          frame_width = 10,
          priority = "extra-high",
          shift = { 0.25, -0.05 }
        },
        left_up = {
          filename = "__base__/graphics/entity/boiler/boiler-fire-down.png",
          frame_count = 12,
          frame_height = 14,
          frame_width = 16,
          priority = "extra-high",
          shift = { 0, 0.23 }
        },
        right_down = {
          filename = "__base__/graphics/entity/boiler/boiler-fire-left.png",
          frame_count = 12,
          frame_height = 13,
          frame_width = 12,
          priority = "extra-high",
          shift = { -0.4, 0.15 }
        },
        right_up = {
          filename = "__base__/graphics/entity/boiler/boiler-fire-down.png",
          frame_count = 12,
          frame_height = 14,
          frame_width = 16,
          priority = "extra-high",
          shift = { 0, 0.23 }
        },
        t_up = {
          filename = "__base__/graphics/entity/boiler/boiler-fire-down.png",
          frame_count = 12,
          frame_height = 14,
          frame_width = 16,
          priority = "extra-high",
          shift = { 0, 0.23 }
        }
      },
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/boiler.png",
      max_health = 100,
      max_liquid_amount = 10,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "boiler"
      },
      name = "boiler",
      pictures = {
        corner_down_left = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-down-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        corner_down_right = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-down-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        corner_up_left = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-up-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        corner_up_right = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-up-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        cross = {
          filename = "__base__/graphics/entity/pipe/pipe-cross.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_down = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-down.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_left = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_right = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_up = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_horizontal = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_horizontal_window = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal-window.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_vertical = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_vertical_window = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-window.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_down = {
          filename = "__base__/graphics/entity/pipe/pipe-t-down.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_left = {
          filename = "__base__/graphics/entity/pipe/pipe-t-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_right = {
          filename = "__base__/graphics/entity/pipe/pipe-t-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_up = {
          filename = "__base__/graphics/entity/pipe/pipe-t-up.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        water_flow = {
          filename = "__base__/graphics/entity/pipe/water-flow.png",
          height = 20,
          priority = "extra-high",
          width = 128
        },
        water_flow_background = {
          filename = "__base__/graphics/entity/pipe/water-flow-background.png",
          height = 20,
          priority = "extra-high",
          width = 32
        }
      },
      resistances = { {
          percent = 80,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      structure = {
        down = {
          filename = "__base__/graphics/entity/boiler/boiler-down.png",
          height = 51,
          priority = "extra-high",
          shift = { 0.05, 0 },
          width = 51
        },
        left = {
          filename = "__base__/graphics/entity/boiler/boiler-left.png",
          height = 51,
          priority = "extra-high",
          shift = { 0.15, 0 },
          width = 51
        },
        left_down = {
          filename = "__base__/graphics/entity/boiler/boiler-left-down.png",
          height = 51,
          priority = "extra-high",
          shift = { 0, -0.02 },
          width = 51
        },
        left_up = {
          filename = "__base__/graphics/entity/boiler/boiler-left-up.png",
          height = 51,
          priority = "extra-high",
          shift = { 0.05, 0 },
          width = 51
        },
        right_down = {
          filename = "__base__/graphics/entity/boiler/boiler-right-down.png",
          height = 51,
          priority = "extra-high",
          width = 51
        },
        right_up = {
          filename = "__base__/graphics/entity/boiler/boiler-right-up.png",
          height = 51,
          priority = "extra-high",
          shift = { 0.15, 0 },
          width = 51
        },
        t_down = {
          filename = "__base__/graphics/entity/boiler/boiler-t-down.png",
          height = 51,
          priority = "extra-high",
          shift = { 0, 0 },
          width = 51
        },
        t_up = {
          filename = "__base__/graphics/entity/boiler/boiler-t-up.png",
          height = 51,
          priority = "extra-high",
          shift = { 0, 0 },
          width = 51
        }
      },
      type = "boiler"
    }
  },
  capsule = {
    ["basic-electric-discharge-defense-remote"] = {
      capsule_action = {
        equipment = "basic-electric-discharge-defense-equipment",
        type = "equipment-remote"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment-ability.png",
      name = "basic-electric-discharge-defense-remote",
      order = "f-e-a",
      stack_size = 1,
      type = "capsule"
    },
    ["basic-grenade"] = {
      capsule_action = {
        attack_parameters = {
          ammo_category = "capsule",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "basic-grenade",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "capsule",
            target_type = "position"
          },
          cooldown = 30,
          projectile_creation_distance = 0.6,
          range = 15
        },
        type = "throw"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-grenade.png",
      name = "basic-grenade",
      order = "f-e-c",
      stack_size = 100,
      type = "capsule"
    },
    ["defender-capsule"] = {
      capsule_action = {
        attack_parameters = {
          ammo_category = "capsule",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "defender-capsule",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "capsule",
            target_type = "position"
          },
          cooldown = 15,
          projectile_creation_distance = 0.6,
          range = 20
        },
        type = "throw"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/defender-capsule.png",
      name = "defender-capsule",
      order = "f-e-c",
      stack_size = 100,
      type = "capsule"
    },
    ["destroyer-capsule"] = {
      capsule_action = {
        attack_parameters = {
          ammo_category = "capsule",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "destroyer-capsule",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "capsule",
            target_type = "position"
          },
          cooldown = 30,
          projectile_creation_distance = 0.6,
          range = 25
        },
        type = "throw"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/destroyer-capsule.png",
      name = "destroyer-capsule",
      order = "f-e-d",
      stack_size = 100,
      type = "capsule"
    },
    ["distractor-capsule"] = {
      capsule_action = {
        attack_parameters = {
          ammo_category = "capsule",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "distractor-capsule",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "capsule",
            target_type = "position"
          },
          cooldown = 30,
          projectile_creation_distance = 0.6,
          range = 25
        },
        type = "throw"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/distractor-capsule.png",
      name = "distractor-capsule",
      order = "f-e-d",
      stack_size = 100,
      type = "capsule"
    },
    ["poison-capsule"] = {
      capsule_action = {
        attack_parameters = {
          ammo_category = "capsule",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "poison-capsule",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "capsule",
            target_type = "position"
          },
          cooldown = 30,
          projectile_creation_distance = 0.6,
          range = 25
        },
        type = "throw"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/poison-capsule.png",
      name = "poison-capsule",
      order = "f-e-a",
      stack_size = 100,
      type = "capsule"
    },
    ["raw-fish"] = {
      capsule_action = {
        attack_parameters = {
          ammo_category = "capsule",
          ammo_type = {
            action = {
              action_delivery = {
                target_effects = {
                  damage = {
                    amount = -20,
                    type = "physical"
                  },
                  type = "damage"
                },
                type = "instant"
              },
              type = "direct"
            },
            category = "capsule",
            target_type = "position"
          },
          cooldown = 30,
          range = 0
        },
        type = "use-on-self"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/fish.png",
      name = "raw-fish",
      order = "f-e-a",
      stack_size = 100,
      type = "capsule"
    },
    ["slowdown-capsule"] = {
      capsule_action = {
        attack_parameters = {
          ammo_category = "capsule",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "slowdown-capsule",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "capsule",
            target_type = "position"
          },
          cooldown = 30,
          projectile_creation_distance = 0.6,
          range = 25
        },
        type = "throw"
      },
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/slowdown-capsule.png",
      name = "slowdown-capsule",
      order = "f-e-b",
      stack_size = 100,
      type = "capsule"
    }
  },
  car = {
    car = {
      acceleration_per_energy = 0.001,
      breaking_speed = 0.01,
      burner = {
        effectivity = 1,
        fuel_inventory_size = 1,
        smoke = { {
            deviation = { 0.25, 0.25 },
            frequency = 50,
            name = "smoke",
            position = { 0, 1.5 },
            slow_down_factor = 0.9,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5
          } }
      },
      collision_box = { { -0.7, -1 }, { 0.7, 1 } },
      consumption = "600W",
      corpse = "medium-remnants",
      flags = { "pushable", "placeable-neutral", "player-creation" },
      friction = 0.02,
      icon = "__base__/graphics/icons/car.png",
      inventory_size = 80,
      light = { {
          intensity = 0.6,
          minimum_darkness = 0.3,
          picture = {
            filename = "__core__/graphics/light-cone.png",
            height = 400,
            priority = "medium",
            width = 400
          },
          shift = { -0.6, -14 },
          size = 2,
          type = "oriented"
        }, {
          intensity = 0.6,
          minimum_darkness = 0.3,
          picture = {
            filename = "__core__/graphics/light-cone.png",
            height = 400,
            priority = "medium",
            width = 400
          },
          shift = { 0.6, -14 },
          size = 2,
          type = "oriented"
        } },
      max_health = 500,
      minable = {
        mining_time = 1,
        result = "car"
      },
      name = "car",
      pictures = {
        axially_symmetrical = false,
        direction_count = 64,
        filename = "__base__/graphics/entity/car/car-sheet.png",
        frame_height = 93,
        frame_width = 130,
        line_length = 8,
        shift = { 0.5, 0 }
      },
      resistances = { {
          percent = 50,
          type = "fire"
        } },
      rotation_speed = 0.015,
      selection_box = { { -0.7, -1 }, { 0.7, 1 } },
      type = "car",
      weight = 50
    }
  },
  ["cargo-wagon"] = {
    ["cargo-wagon"] = {
      air_resistance = 0.002,
      braking_force = 3,
      collision_box = { { -0.6, -2.4 }, { 0.9, 2.4 } },
      connection_distance = 3.3,
      corpse = "medium-remnants",
      energy_per_hit_point = 5,
      flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
      friction_force = 0.0015,
      icon = "__base__/graphics/icons/cargo-wagon.png",
      inventory_size = 15,
      joint_distance = 4,
      max_health = 600,
      max_speed = 1.5,
      minable = {
        mining_time = 1,
        result = "cargo-wagon"
      },
      name = "cargo-wagon",
      pictures = {
        axially_symmetrical = false,
        back_equals_front = true,
        direction_count = 128,
        filenames = { "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png", "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-2.png", "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-3.png", "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-4.png" },
        frame_height = 218,
        frame_width = 285,
        line_length = 4,
        lines_per_file = 8,
        priority = "very-low",
        shift = { 0.7, -0.45 }
      },
      rail_category = "regular",
      selection_box = { { -0.7, -2.5 }, { 1, 2.5 } },
      type = "cargo-wagon",
      weight = 1000
    }
  },
  ["combat-robot"] = {
    defender = {
      attack_parameters = {
        ammo_category = "bullet",
        ammo_type = {
          action = {
            action_delivery = {
              source_effects = {
                entity_name = "explosion-gunshot",
                type = "create-entity"
              },
              target_effects = { {
                  entity_name = "explosion-gunshot",
                  type = "create-entity"
                }, {
                  damage = {
                    amount = 5,
                    type = "physical"
                  },
                  type = "damage"
                } },
              type = "instant"
            },
            type = "direct"
          },
          category = "bullet"
        },
        cooldown = 20,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 15,
        sound = { {
            filename = "__base__/sound/gunshot.wav",
            volume = 0.3
          } }
      },
      collision_box = { { 0, 0 }, { 0, 0 } },
      destroy_action = {
        action_delivery = {
          source_effects = {
            entity_name = "explosion",
            type = "create-entity"
          },
          type = "instant"
        },
        type = "direct"
      },
      distance_per_frame = 0.13,
      flags = { "placeable-player", "player-creation", "placeable-off-grid" },
      follows_player = true,
      friction = 0.01,
      icon = "__base__/graphics/icons/logistic-robot.png",
      max_health = 60,
      name = "defender",
      order = "e-a-a",
      picture = {
        filename = "__base__/graphics/entity/combat-robot/defender.png",
        height = 34,
        priority = "high",
        width = 37
      },
      range_from_player = 6,
      selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
      shadow = {
        filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
        height = 37,
        priority = "high",
        width = 52
      },
      speed = 0.01,
      time_to_live = 2700,
      type = "combat-robot"
    },
    destroyer = {
      attack_parameters = {
        ammo_category = "combat-robot-laser",
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "blue-laser",
              starting_speed = 0.3,
              type = "projectile"
            },
            type = "direct"
          },
          category = "combat-robot-laser"
        },
        cooldown = 20,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 15,
        sound = { {
            filename = "__base__/sound/laser.wav",
            volume = 0.4
          } }
      },
      collision_box = { { 0, 0 }, { 0, 0 } },
      destroy_action = {
        action_delivery = {
          source_effects = {
            entity_name = "explosion",
            type = "create-entity"
          },
          type = "instant"
        },
        type = "direct"
      },
      distance_per_frame = 0.13,
      flags = { "placeable-player", "player-creation", "placeable-off-grid" },
      follows_player = true,
      friction = 0.01,
      icon = "__base__/graphics/icons/logistic-robot.png",
      max_health = 60,
      name = "destroyer",
      order = "e-a-c",
      picture = {
        filename = "__base__/graphics/entity/combat-robot/destroyer.png",
        height = 34,
        priority = "high",
        width = 37
      },
      range_from_player = 6,
      selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
      shadow = {
        filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
        height = 37,
        priority = "high",
        width = 52
      },
      speed = 0.01,
      time_to_live = 7200,
      type = "combat-robot"
    },
    distractor = {
      attack_parameters = {
        ammo_category = "combat-robot-laser",
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "laser",
              starting_speed = 0.3,
              type = "projectile"
            },
            type = "direct"
          },
          category = "combat-robot-laser"
        },
        cooldown = 20,
        damage_modifier = 0.5,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 15,
        sound = { {
            filename = "__base__/sound/laser.wav",
            volume = 0.4
          } }
      },
      collision_box = { { 0, 0 }, { 0, 0 } },
      destroy_action = {
        action_delivery = {
          source_effects = {
            entity_name = "explosion",
            type = "create-entity"
          },
          type = "instant"
        },
        type = "direct"
      },
      distance_per_frame = 0.13,
      flags = { "placeable-player", "player-creation", "placeable-off-grid" },
      icon = "__base__/graphics/icons/logistic-robot.png",
      max_health = 90,
      name = "distractor",
      order = "e-a-b",
      picture = {
        filename = "__base__/graphics/entity/combat-robot/distractor.png",
        height = 34,
        priority = "high",
        width = 37
      },
      selection_box = { { -0.9, -1.5 }, { 0.9, -0.5 } },
      shadow = {
        filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
        height = 37,
        priority = "high",
        width = 52
      },
      speed = 0.01,
      time_to_live = 1800,
      type = "combat-robot"
    }
  },
  ["construction-robot"] = {
    ["construction-robot"] = {
      collision_box = { { 0, 0 }, { 0, 0 } },
      energy_per_move = "1J",
      energy_per_tick = "0.01J",
      flags = { "placeable-player", "player-creation", "placeable-off-grid" },
      icon = "__base__/graphics/icons/construction-robot.png",
      max_energy = "300J",
      max_health = 100,
      max_payload_size = 1,
      max_to_charge = 0.95,
      min_to_charge = 0.2,
      minable = {
        hardness = 0.1,
        mining_time = 0.1,
        result = "construction-robot"
      },
      name = "construction-robot",
      picture = {
        filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
        height = 34,
        priority = "high",
        width = 37
      },
      repair_pack = "repair-pack",
      selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
      shadow = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
        height = 37,
        priority = "high",
        width = 52
      },
      speed = 0.06,
      transfer_distance = 0.5,
      type = "construction-robot"
    }
  },
  container = {
    ["iron-chest"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "container",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/iron-chest.png",
      inventory_size = 32,
      max_health = 100,
      minable = {
        mining_time = 1,
        result = "iron-chest"
      },
      name = "iron-chest",
      picture = {
        filename = "__base__/graphics/entity/iron-chest/iron-chest.png",
        height = 34,
        priority = "extra-high",
        shift = { 0.2, 0 },
        width = 48
      },
      resistances = { {
          percent = 80,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "container"
    },
    ["space-module-wreck"] = {
      collision_box = { { -2.2, -1 }, { 2.2, 1 } },
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/space-module-wreck.png",
      inventory_size = 4,
      max_health = 50,
      name = "space-module-wreck",
      order = "c-f",
      picture = {
        filename = "__base__/graphics/entity/space-module-wreck/wreck.png",
        height = 96,
        width = 168
      },
      selection_box = { { -2.7, -1.5 }, { 2.7, 1.5 } },
      type = "container"
    },
    ["steel-chest"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "container",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/steel-chest.png",
      inventory_size = 48,
      max_health = 200,
      minable = {
        mining_time = 1,
        result = "steel-chest"
      },
      name = "steel-chest",
      picture = {
        filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
        height = 34,
        priority = "extra-high",
        shift = { 0.2, 0 },
        width = 48
      },
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "container"
    },
    ["wooden-chest"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "container",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/wooden-chest.png",
      inventory_size = 16,
      max_health = 50,
      minable = {
        mining_time = 1,
        result = "wooden-chest"
      },
      name = "wooden-chest",
      picture = {
        filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
        height = 33,
        priority = "extra-high",
        shift = { 0.3, 0 },
        width = 46
      },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "container"
    }
  },
  corpse = {
    ["acid-splash-purple"] = {
      final_render_layer = "corpse",
      name = "acid-splash-purple",
      splash = { {
          filename = "__base__/graphics/entity/acid-splash-purple/splash-1.png",
          frame_count = 20,
          frame_height = 159,
          frame_width = 199,
          line_length = 5,
          shift = { 0.484375, -0.171875 }
        }, {
          filename = "__base__/graphics/entity/acid-splash-purple/splash-2.png",
          frame_count = 20,
          frame_height = 157,
          frame_width = 238,
          line_length = 5,
          shift = { 0.8125, -0.15625 }
        }, {
          filename = "__base__/graphics/entity/acid-splash-purple/splash-3.png",
          frame_count = 20,
          frame_height = 162,
          frame_width = 240,
          line_length = 5,
          shift = { 0.71875, -0.09375 }
        }, {
          filename = "__base__/graphics/entity/acid-splash-purple/splash-4.png",
          frame_count = 20,
          frame_height = 146,
          frame_width = 241,
          line_length = 5,
          shift = { 0.703125, -0.375 }
        } },
      splash_speed = 0.03,
      time_before_removed = 1800,
      type = "corpse"
    },
    ["big-biter-corpse"] = {
      animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 17,
        frame_height = 192,
        frame_width = 284,
        shift = { 0.65625, -0.164062 },
        stripes = { {
            filename = "__base__/graphics/entity/big-biter/big-biter-die-1.png",
            height_in_frames = 8,
            width_in_frames = 6
          }, {
            filename = "__base__/graphics/entity/big-biter/big-biter-die-2.png",
            height_in_frames = 8,
            width_in_frames = 6
          }, {
            filename = "__base__/graphics/entity/big-biter/big-biter-die-3.png",
            height_in_frames = 8,
            width_in_frames = 5
          }, {
            filename = "__base__/graphics/entity/big-biter/big-biter-die-4.png",
            height_in_frames = 8,
            width_in_frames = 6
          }, {
            filename = "__base__/graphics/entity/big-biter/big-biter-die-5.png",
            height_in_frames = 8,
            width_in_frames = 6
          }, {
            filename = "__base__/graphics/entity/big-biter/big-biter-die-6.png",
            height_in_frames = 8,
            width_in_frames = 5
          } }
      },
      dying_speed = 0.04,
      final_render_layer = "corpse",
      flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way" },
      icon = "__base__/graphics/icons/big-biter-corpse.png",
      name = "big-biter-corpse",
      order = "b-c-c",
      selectable_in_game = false,
      selection_box = { { -1, -1 }, { 1, 1 } },
      type = "corpse"
    },
    ["big-remnants"] = {
      animation = { {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/big-remnants.png",
          frame_count = 1,
          frame_height = 102,
          frame_width = 109
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/big-remnants.png",
          frame_count = 1,
          frame_height = 102,
          frame_width = 109,
          x = 109
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/big-remnants.png",
          frame_count = 1,
          frame_height = 102,
          frame_width = 109,
          x = 218
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/big-remnants.png",
          frame_count = 1,
          frame_height = 102,
          frame_width = 109,
          x = 327
        } },
      final_render_layer = "remnants",
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/remnants.png",
      name = "big-remnants",
      order = "c-c",
      selectable_in_game = false,
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      time_before_removed = 54000,
      type = "corpse"
    },
    ["big-worm-corpse"] = {
      animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/big-worm-turret/die.png",
        frame_count = 29,
        frame_height = 287,
        frame_width = 323,
        line_length = 6,
        shift = { -0.1375, 0.3875 }
      },
      dying_speed = 0.01,
      final_render_layer = "corpse",
      name = "big-worm-corpse",
      order = "b-c-f",
      type = "corpse"
    },
    ["biter-spawner-corpse"] = {
      animation = { {
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 20,
          frame_height = 320,
          frame_width = 320,
          shift = { 0, 0 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-1.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 0
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-2.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 0
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-3.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 0
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-4.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 0
            } }
        }, {
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 20,
          frame_height = 320,
          frame_width = 320,
          shift = { 0, 0 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-1.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 320
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-2.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 320
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-3.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 320
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-4.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 320
            } }
        }, {
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 20,
          frame_height = 320,
          frame_width = 320,
          shift = { 0, 0 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-1.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 640
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-2.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 640
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-3.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 640
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-4.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 640
            } }
        }, {
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 20,
          frame_height = 320,
          frame_width = 320,
          shift = { 0, 0 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-1.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 960
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-2.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 960
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-3.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 960
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-corpse-4.png",
              height_in_frames = 4,
              width_in_frames = 5,
              y = 960
            } }
        } },
      dying_speed = 0.04,
      final_render_layer = "corpse",
      name = "biter-spawner-corpse",
      order = "b-c-g",
      type = "corpse"
    },
    ["medium-biter-corpse"] = {
      animation = {
        axially_symetric = false,
        direction_count = 16,
        frame_count = 17,
        frame_height = 138,
        frame_width = 204,
        shift = { 0.4725, -0.118125 },
        stripes = { {
            filename = "__base__/graphics/entity/medium-biter/medium-biter-die-1.png",
            height_in_frames = 8,
            width_in_frames = 9
          }, {
            filename = "__base__/graphics/entity/medium-biter/medium-biter-die-2.png",
            height_in_frames = 8,
            width_in_frames = 8
          }, {
            filename = "__base__/graphics/entity/medium-biter/medium-biter-die-3.png",
            height_in_frames = 8,
            width_in_frames = 9
          }, {
            filename = "__base__/graphics/entity/medium-biter/medium-biter-die-4.png",
            height_in_frames = 8,
            width_in_frames = 8
          } }
      },
      dying_speed = 0.04,
      final_render_layer = "corpse",
      flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way" },
      icon = "__base__/graphics/icons/medium-biter-corpse.png",
      name = "medium-biter-corpse",
      order = "b-c-b",
      selectable_in_game = false,
      selection_box = { { -1, -1 }, { 1, 1 } },
      type = "corpse"
    },
    ["medium-remnants"] = {
      animation = { {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/medium-remnants.png",
          frame_count = 1,
          frame_height = 82,
          frame_width = 94
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/medium-remnants.png",
          frame_count = 1,
          frame_height = 82,
          frame_width = 94,
          x = 94
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/medium-remnants.png",
          frame_count = 1,
          frame_height = 82,
          frame_width = 94,
          x = 188
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/medium-remnants.png",
          frame_count = 1,
          frame_height = 82,
          frame_width = 94,
          x = 282
        } },
      final_render_layer = "remnants",
      flags = { "placeable-neutral", "building-direction-8-way" },
      icon = "__base__/graphics/icons/remnants.png",
      name = "medium-remnants",
      order = "c-b",
      selectable_in_game = false,
      selection_box = { { -1, -1 }, { 1, 1 } },
      tile_height = 2,
      tile_width = 2,
      time_before_removed = 54000,
      type = "corpse"
    },
    ["medium-worm-corpse"] = {
      animation = {
        axially_symetric = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/medium-worm-turret/die.png",
        frame_count = 29,
        frame_height = 243,
        frame_width = 274,
        line_length = 6,
        shift = { -0.096875, 0.309375 }
      },
      dying_speed = 0.01,
      final_render_layer = "corpse",
      name = "medium-worm-corpse",
      order = "b-c-e",
      type = "corpse"
    },
    ["small-biter-corpse"] = {
      animation = {
        axially_symetric = false,
        direction_count = 16,
        frame_count = 17,
        frame_height = 97,
        frame_width = 142,
        shift = { 0.328125, -0.09375 },
        stripes = { {
            filename = "__base__/graphics/entity/small-biter/small-biter-die-1.png",
            width_in_frames = 9
          }, {
            filename = "__base__/graphics/entity/small-biter/small-biter-die-2.png",
            width_in_frames = 8
          } }
      },
      dying_speed = 0.04,
      final_render_layer = "corpse",
      flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable" },
      icon = "__base__/graphics/icons/small-biter-corpse.png",
      name = "small-biter-corpse",
      order = "b-c-a",
      selectable_in_game = false,
      selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
      type = "corpse"
    },
    ["small-remnants"] = {
      animation = { {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/small-remnants.png",
          frame_count = 1,
          frame_height = 42,
          frame_width = 56
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/small-remnants.png",
          frame_count = 1,
          frame_height = 42,
          frame_width = 56,
          x = 56
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/small-remnants.png",
          frame_count = 1,
          frame_height = 42,
          frame_width = 56,
          x = 112
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/remnants/small-remnants.png",
          frame_count = 1,
          frame_height = 42,
          frame_width = 56,
          x = 168
        } },
      final_render_layer = "remnants",
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/remnants.png",
      name = "small-remnants",
      order = "c-a",
      selectable_in_game = false,
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      time_before_removed = 54000,
      type = "corpse"
    },
    ["small-worm-corpse"] = {
      animation = {
        axially_symetric = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/small-worm-turret/die.png",
        frame_count = 29,
        frame_height = 200,
        frame_width = 226,
        line_length = 6,
        shift = { -0.05625, 0.23125 }
      },
      dying_speed = 0.01,
      final_render_layer = "corpse",
      name = "small-worm-corpse",
      type = "corpse"
    },
    ["wall-remnants"] = {
      animation = { {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-01.png",
          frame_count = 1,
          frame_height = 36,
          frame_width = 36
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-02.png",
          frame_count = 1,
          frame_height = 35,
          frame_width = 38
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-03.png",
          frame_count = 1,
          frame_height = 36,
          frame_width = 35
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-04.png",
          frame_count = 1,
          frame_height = 36,
          frame_width = 41
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-05.png",
          frame_count = 1,
          frame_height = 35,
          frame_width = 35
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-06.png",
          frame_count = 1,
          frame_height = 37,
          frame_width = 50
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-07.png",
          frame_count = 1,
          frame_height = 40,
          frame_width = 54
        }, {
          direction_count = 1,
          filename = "__base__/graphics/entity/wall/remains/wall-remain-08.png",
          frame_count = 1,
          frame_height = 45,
          frame_width = 43
        } },
      final_render_layer = "remnants",
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/wall-remnants.png",
      name = "wall-remnants",
      order = "c-g",
      selectable_in_game = false,
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      time_before_removed = 54000,
      type = "corpse"
    }
  },
  ["damage-type"] = {
    acid = {
      name = "acid",
      type = "damage-type"
    },
    explosion = {
      name = "explosion",
      type = "damage-type"
    },
    fire = {
      name = "fire",
      type = "damage-type"
    },
    laser = {
      name = "laser",
      type = "damage-type"
    },
    physical = {
      name = "physical",
      type = "damage-type"
    },
    poison = {
      name = "poison",
      type = "damage-type"
    }
  },
  ["electric-pole"] = {
    ["big-electric-pole"] = {
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      connection_points = { {
          shadow = {
            copper = { 2.7, 0 },
            green = { 1.8, 0 },
            red = { 3.6, 0 }
          },
          wire = {
            copper = { 0, -3.1 },
            green = { -0.6, -3.1 },
            red = { 0.6, -3.1 }
          }
        }, {
          shadow = {
            copper = { 3.1, 0.2 },
            green = { 2.3, -0.3 },
            red = { 3.8, 0.6 }
          },
          wire = {
            copper = { -0.08, -3.15 },
            green = { -0.55, -3.5 },
            red = { 0.3, -2.87 }
          }
        }, {
          shadow = {
            copper = { 2.9, 0.06 },
            green = { 3, -0.6 },
            red = { 3, 0.8 }
          },
          wire = {
            copper = { -0.1, -3.1 },
            green = { -0.1, -3.55 },
            red = { -0.1, -2.8 }
          }
        }, {
          shadow = {
            copper = { 3.1, 0.2 },
            green = { 3.8, -0.3 },
            red = { 2.35, 0.6 }
          },
          wire = {
            copper = { 0, -3.25 },
            green = { 0.45, -3.55 },
            red = { -0.54, -3 }
          }
        } },
      copper_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      corpse = "medium-remnants",
      drawing_box = { { -2.8, -0.5 }, { 0.5, 0.5 } },
      flags = { "placeable-neutral", "player-creation" },
      green_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      icon = "__base__/graphics/icons/big-electric-pole.png",
      max_health = 150,
      maximum_wire_distance = 30,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "big-electric-pole"
      },
      name = "big-electric-pole",
      pictures = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/big-electric-pole/big-electric-pole.png",
        frame_height = 165,
        frame_width = 168,
        priority = "high",
        shift = { 1.6, -1.1 }
      },
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        height = 12,
        width = 12
      },
      red_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      resistances = { {
          percent = 100,
          type = "fire"
        } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      supply_area_distance = 2,
      type = "electric-pole",
      wire_shadow_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
        height = 46,
        priority = "high",
        width = 224
      }
    },
    ["medium-electric-pole"] = {
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      connection_points = { {
          shadow = {
            copper = { 2.55, 0.4 },
            green = { 2, 0.4 },
            red = { 3.05, 0.4 }
          },
          wire = {
            copper = { -0.03, -2.5 },
            green = { -0.35, -2.5 },
            red = { 0.25, -2.5 }
          }
        }, {
          shadow = {
            copper = { 2.9, 0.1 },
            green = { 2.6, -0.15 },
            red = { 3.25, 0.35 }
          },
          wire = {
            copper = { 0.05, -2.75 },
            green = { -0.15, -2.9 },
            red = { 0.25, -2.55 }
          }
        }, {
          shadow = {
            copper = { 1.5, -0.2 },
            green = { 1.5, -0.55 },
            red = { 1.5, 0.1 }
          },
          wire = {
            copper = { -0.43, -2.4 },
            green = { -0.43, -2.63 },
            red = { -0.43, -2.2 }
          }
        }, {
          shadow = {
            copper = { 2.88, 0.2 },
            green = { 3.2, -0.1 },
            red = { 2.45, 0.4 }
          },
          wire = {
            copper = { 0, -2.7 },
            green = { 0.22, -2.85 },
            red = { -0.24, -2.55 }
          }
        } },
      copper_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      corpse = "small-remnants",
      drawing_box = { { -2.8, -0.5 }, { 0.5, 0.5 } },
      flags = { "placeable-neutral", "player-creation" },
      green_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      icon = "__base__/graphics/icons/medium-electric-pole.png",
      max_health = 100,
      maximum_wire_distance = 9,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "medium-electric-pole"
      },
      name = "medium-electric-pole",
      pictures = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/medium-electric-pole/medium-electric-pole.png",
        frame_height = 122,
        frame_width = 136,
        priority = "high",
        shift = { 1.4, -1 }
      },
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        height = 12,
        width = 12
      },
      red_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      resistances = { {
          percent = 100,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      supply_area_distance = 3.5,
      type = "electric-pole",
      wire_shadow_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
        height = 46,
        priority = "high",
        width = 224
      }
    },
    ["small-electric-pole"] = {
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      connection_points = { {
          shadow = {
            copper = { 2.7, 0 },
            green = { 3.1, 0 },
            red = { 2.3, 0 }
          },
          wire = {
            copper = { 0, -2.7 },
            green = { 0.4, -2.7 },
            red = { -0.4, -2.7 }
          }
        }, {
          shadow = {
            copper = { 2.7, -0.05 },
            green = { 3, 0.3 },
            red = { 2.2, -0.35 }
          },
          wire = {
            copper = { 0, -2.7 },
            green = { 0.2, -2.6 },
            red = { -0.3, -2.9 }
          }
        }, {
          shadow = {
            copper = { 2.7, 0.06 },
            green = { 2.5, 0.55 },
            red = { 2.55, -0.3 }
          },
          wire = {
            copper = { 0, -2.7 },
            green = { 0, -2.5 },
            red = { 0, -2.95 }
          }
        }, {
          shadow = {
            copper = { 2.55, 0.2 },
            green = { 2, 0.45 },
            red = { 2.85, -0.15 }
          },
          wire = {
            copper = { 0, -2.7 },
            green = { -0.3, -2.5 },
            red = { 0.3, -2.9 }
          }
        } },
      copper_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      corpse = "small-remnants",
      drawing_box = { { -0.5, -2.3 }, { 0.5, 0.5 } },
      flags = { "placeable-neutral", "player-creation" },
      green_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      icon = "__base__/graphics/icons/small-electric-pole.png",
      max_health = 35,
      maximum_wire_distance = 7.5,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "small-electric-pole"
      },
      name = "small-electric-pole",
      pictures = {
        axially_symetric = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole.png",
        frame_height = 124,
        frame_width = 123,
        priority = "extra-high",
        shift = { 1.4, -1.1 }
      },
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        height = 12,
        width = 12
      },
      red_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      supply_area_distance = 2.5,
      type = "electric-pole",
      wire_shadow_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
        height = 46,
        priority = "high",
        width = 224
      }
    },
    substation = {
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      connection_points = { {
          shadow = {
            copper = { 1.9, -0.6 },
            green = { 1.3, -0.6 },
            red = { 2.65, -0.6 }
          },
          wire = {
            copper = { -0.23, -2.65 },
            green = { -0.85, -2.65 },
            red = { 0.35, -2.65 }
          }
        }, {
          shadow = {
            copper = { 1.9, -0.6 },
            green = { 1.2, -0.8 },
            red = { 2.5, -0.35 }
          },
          wire = {
            copper = { -0.26, -2.71 },
            green = { -0.67, -3 },
            red = { 0.17, -2.47 }
          }
        }, {
          shadow = {
            copper = { 1.9, -0.6 },
            green = { 1.9, -0.9 },
            red = { 1.9, -0.3 }
          },
          wire = {
            copper = { -0.23, -2.7 },
            green = { -0.23, -3.2 },
            red = { -0.23, -2.35 }
          }
        }, {
          shadow = {
            copper = { 1.8, -0.7 },
            green = { 1.3, -0.6 },
            red = { 2.4, -1.15 }
          },
          wire = {
            copper = { -0.2, -2.7 },
            green = { -0.62, -2.45 },
            red = { 0.25, -2.98 }
          }
        } },
      copper_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      corpse = "medium-remnants",
      drawing_box = { { -1, -1.5 }, { 1, 1 } },
      flags = { "placeable-neutral", "player-creation" },
      green_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      icon = "__base__/graphics/icons/substation.png",
      max_health = 200,
      maximum_wire_distance = 14,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "substation"
      },
      name = "substation",
      pictures = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/substation/substation.png",
        frame_height = 144,
        frame_width = 132,
        priority = "high",
        shift = { 0.9, -1 }
      },
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
        height = 12,
        width = 12
      },
      red_wire_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
        height = 46,
        priority = "high",
        width = 224
      },
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      supply_area_distance = 7,
      type = "electric-pole",
      wire_shadow_picture = {
        filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
        height = 46,
        priority = "high",
        width = 224
      }
    }
  },
  ["electric-turret"] = {
    ["laser-turret"] = {
      ammo_type = {
        action = { {
            action_delivery = { {
                projectile = "laser",
                starting_speed = 0.28,
                type = "projectile"
              } },
            type = "direct"
          } },
        category = "laser-turret",
        energy_consumption = "200J",
        type = "projectile"
      },
      attack_parameters = {
        ammo_category = "electric",
        cooldown = 20,
        damage = 2,
        projectile_center = { 0, 0 },
        projectile_creation_distance = 0.6,
        range = 25,
        sound = { {
            filename = "__base__/sound/laser.wav",
            volume = 0.4
          } }
      },
      base_picture = {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
        height = 28,
        priority = "high",
        shift = { 0.109375, 0.03125 },
        width = 43
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      dying_explosion = "huge-explosion",
      energy_source = {
        buffer_capacity = "201J",
        input_flow_limit = "1200W",
        input_priority = "secondary",
        resting_consumption_ratio = 0.01,
        type = "electric"
      },
      flags = { "placeable-player", "placeable-enemy", "player-creation" },
      folded_animation = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
        frame_count = 1,
        frame_height = 74,
        frame_width = 131,
        line_length = 1,
        priority = "medium",
        shift = { 1.171875, -0.34375 }
      },
      folding_animation = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
        frame_count = 5,
        frame_height = 74,
        frame_width = 131,
        priority = "medium",
        run_mode = "backward",
        shift = { 1.171875, -0.34375 }
      },
      folding_speed = 0.05,
      icon = "__base__/graphics/icons/laser-turret.png",
      max_health = 250,
      minable = {
        mining_time = 0.5,
        result = "laser-turret"
      },
      name = "laser-turret",
      prepared_animation = {
        axially_symmetrical = false,
        direction_count = 64,
        filename = "__base__/graphics/entity/laser-turret/laser-turret.png",
        frame_count = 1,
        frame_height = 72,
        frame_width = 131,
        line_length = 8,
        priority = "medium",
        shift = { 1.328125, -0.375 }
      },
      preparing_animation = {
        axially_symmetrical = false,
        direction_count = 4,
        filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
        frame_count = 5,
        frame_height = 74,
        frame_width = 131,
        priority = "medium",
        shift = { 1.171875, -0.34375 }
      },
      preparing_speed = 0.05,
      rotation_speed = 0.01,
      selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      type = "electric-turret"
    }
  },
  ["energy-shield-equipment"] = {
    ["energy-shield-equipment"] = {
      energy_per_shield = "20J",
      energy_source = {
        buffer_capacity = "120J",
        input_flow_limit = "120W",
        input_priority = "primary",
        type = "electric"
      },
      max_shield_value = 50,
      name = "energy-shield-equipment",
      shape = {
        height = 2,
        type = "full",
        width = 2
      },
      sprite = {
        filename = "__base__/graphics/equipment/energy-shield-equipment.png",
        height = 64,
        priority = "medium",
        width = 64
      },
      type = "energy-shield-equipment"
    },
    ["energy-shield-mk2-equipment"] = {
      energy_per_shield = "30J",
      energy_source = {
        buffer_capacity = "180J",
        input_flow_limit = "180W",
        input_priority = "primary",
        type = "electric"
      },
      max_shield_value = 150,
      name = "energy-shield-mk2-equipment",
      shape = {
        height = 2,
        type = "full",
        width = 2
      },
      sprite = {
        filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
        height = 64,
        priority = "medium",
        width = 64
      },
      type = "energy-shield-equipment"
    }
  },
  explosion = {
    explosion = {
      animation_speed = 3,
      animations = { {
          filename = "__base__/graphics/entity/explosion/explosion-1.png",
          frame_count = 16,
          frame_height = 59,
          frame_width = 64,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/explosion/explosion-2.png",
          frame_count = 16,
          frame_height = 57,
          frame_width = 64,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/explosion/explosion-3.png",
          frame_count = 16,
          frame_height = 49,
          frame_width = 64,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/explosion/explosion-4.png",
          frame_count = 16,
          frame_height = 51,
          frame_width = 64,
          priority = "extra-high"
        } },
      light = {
        intensity = 1,
        size = 20
      },
      name = "explosion",
      smoke = "smoke-fast",
      smoke_count = 2,
      smoke_slow_down_factor = 1,
      sound = { {
          filename = "__base__/sound/explosion1.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/explosion2.wav",
          volume = 0.8
        } },
      type = "explosion"
    },
    ["explosion-gunshot"] = {
      animation_speed = 3,
      animations = { {
          filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
          frame_count = 5,
          frame_height = 30,
          frame_width = 30,
          priority = "extra-high"
        } },
      light = {
        intensity = 1,
        size = 10
      },
      name = "explosion-gunshot",
      smoke = "smoke-fast",
      smoke_count = 2,
      smoke_slow_down_factor = 1,
      type = "explosion"
    },
    ["huge-explosion"] = {
      animation_speed = 5,
      animations = { {
          filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
          frame_count = 24,
          frame_height = 131,
          frame_width = 111,
          line_length = 5,
          priority = "extra-high"
        } },
      light = {
        intensity = 1,
        size = 50
      },
      name = "huge-explosion",
      smoke = "smoke",
      smoke_count = 20,
      smoke_slow_down_factor = 1,
      sound = { {
          filename = "__base__/sound/huge-explosion.wav",
          volume = 1.25
        } },
      type = "explosion"
    },
    ["laser-bubble"] = {
      animation_speed = 1,
      animations = { {
          filename = "__base__/graphics/entity/laser-bubble/laser-bubble.png",
          frame_count = 5,
          frame_height = 8,
          frame_width = 8,
          priority = "extra-high"
        } },
      light = {
        intensity = 1,
        size = 10
      },
      name = "laser-bubble",
      smoke = "smoke-fast",
      smoke_count = 2,
      smoke_slow_down_factor = 1,
      type = "explosion"
    },
    ["railgun-beam"] = {
      animation_speed = 3,
      animations = { {
          filename = "__base__/graphics/entity/blue-beam/blue-beam.png",
          frame_count = 6,
          frame_height = 1,
          frame_width = 187,
          priority = "extra-high"
        } },
      beam = true,
      light = {
        intensity = 1,
        size = 10
      },
      name = "railgun-beam",
      rotate = true,
      smoke = "smoke-fast",
      smoke_count = 2,
      smoke_slow_down_factor = 1,
      type = "explosion"
    }
  },
  fish = {
    fish = {
      autoplace = {
        influence = 0.01
      },
      collision_box = { { -0.4, -0.2 }, { 0.4, 0.2 } },
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/fish.png",
      max_health = 20,
      minable = {
        mining_time = 1,
        result = "raw-fish"
      },
      name = "fish",
      order = "b-a",
      pictures = { {
          filename = "__base__/graphics/entity/fish/fish-1.png",
          height = 36,
          priority = "extra-high",
          width = 22
        }, {
          filename = "__base__/graphics/entity/fish/fish-2.png",
          height = 32,
          priority = "extra-high",
          width = 32
        } },
      selection_box = { { -0.5, -0.3 }, { 0.5, 0.3 } },
      type = "fish"
    }
  },
  ["flame-thrower-explosion"] = {
    ["flame-thrower-explosion"] = {
      animation_speed = 1,
      animations = { {
          filename = "__base__/graphics/entity/flame-thrower-explosion/flame-thrower-explosion.png",
          frame_count = 64,
          frame_height = 64,
          frame_width = 64,
          line_length = 8,
          priority = "extra-high"
        } },
      damage = {
        amount = 0.25,
        type = "fire"
      },
      light = {
        intensity = 0.2,
        size = 20
      },
      name = "flame-thrower-explosion",
      slow_down_factor = 0.98,
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 0.95,
      type = "flame-thrower-explosion"
    }
  },
  ["flying-text"] = {
    ["flying-text"] = {
      flags = {},
      name = "flying-text",
      speed = 0.05,
      time_to_live = 150,
      type = "flying-text"
    }
  },
  font = {
    default = {
      from = "default",
      name = "default",
      size = 14,
      type = "font"
    },
    ["default-bold"] = {
      from = "default-bold",
      name = "default-bold",
      size = 14,
      type = "font"
    },
    ["default-button"] = {
      from = "default-bold",
      name = "default-button",
      size = 18,
      type = "font"
    },
    ["default-frame"] = {
      from = "default-bold",
      name = "default-frame",
      size = 18,
      type = "font"
    },
    ["default-game"] = {
      border = 1,
      border_color = {},
      from = "default",
      name = "default-game",
      size = 18,
      type = "font"
    },
    ["default-listbox"] = {
      from = "default-bold",
      name = "default-listbox",
      size = 16,
      type = "font"
    },
    ["default-semibold"] = {
      from = "default-semibold",
      name = "default-semibold",
      size = 14,
      type = "font"
    },
    ["scenario-message-dialog"] = {
      from = "default",
      name = "scenario-message-dialog",
      size = 18,
      type = "font"
    }
  },
  furnace = {
    ["electric-furnace"] = {
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      corpse = "big-remnants",
      energy_source = {
        emissions = 0.005,
        input_priority = "secondary",
        type = "electric"
      },
      fast_replaceable_group = "furnace",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/electric-furnace.png",
      max_health = 150,
      minable = {
        mining_time = 1,
        result = "electric-furnace"
      },
      module_slots = 2,
      name = "electric-furnace",
      off_animation = {
        animation_speed = 0.5,
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
        frame_count = 1,
        frame_height = 102,
        frame_width = 131,
        priority = "high",
        shift = { 0.5, 0.05 }
      },
      on_animation = {
        animation_speed = 0.5,
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace.png",
        frame_count = 12,
        frame_height = 102,
        frame_width = 131,
        priority = "high",
        shift = { 0.5, 0.05 },
        x = 131
      },
      resistances = { {
          percent = 80,
          type = "fire"
        } },
      result_inventory_size = 1,
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      smelting_categories = { "smelting" },
      smelting_energy_consumption = "180W",
      smelting_speed = 1,
      source_inventory_size = 1,
      type = "furnace"
    },
    ["steel-furnace"] = {
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      corpse = "medium-remnants",
      energy_source = {
        effectivity = 1,
        emissions = 0.02,
        fuel_inventory_size = 1,
        smoke = { {
            deviation = { 0.1, 0.1 },
            frequency = 0.5,
            name = "smoke",
            position = { 0, -2.3 }
          } },
        type = "burner"
      },
      fast_replaceable_group = "furnace",
      fire_animation = {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
        frame_count = 12,
        frame_height = 19,
        frame_width = 36,
        priority = "high",
        shift = { -0.05, 0.65 }
      },
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/steel-furnace.png",
      max_health = 200,
      minable = {
        mining_time = 1,
        result = "steel-furnace"
      },
      name = "steel-furnace",
      off_animation = {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
        frame_count = 1,
        frame_height = 69,
        frame_width = 91,
        priority = "high",
        shift = { 0.5, 0.05 }
      },
      on_animation = {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
        frame_count = 1,
        frame_height = 69,
        frame_width = 91,
        priority = "high",
        shift = { 0.5, 0.05 }
      },
      resistances = { {
          percent = 100,
          type = "fire"
        } },
      result_inventory_size = 1,
      selection_box = { { -0.8, -1 }, { 0.8, 1 } },
      smelting_categories = { "smelting" },
      smelting_energy_consumption = "180W",
      smelting_speed = 1,
      source_inventory_size = 1,
      type = "furnace"
    },
    ["stone-furnace"] = {
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      corpse = "medium-remnants",
      energy_source = {
        effectivity = 1,
        emissions = 0.01,
        fuel_inventory_size = 1,
        smoke = { {
            deviation = { 0.1, 0.1 },
            frequency = 0.5,
            name = "smoke",
            position = { 0, -2.3 }
          } },
        type = "burner"
      },
      fast_replaceable_group = "furnace",
      fire_animation = {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
        frame_count = 12,
        frame_height = 27,
        frame_width = 23,
        priority = "extra-high",
        shift = { 0.078125, 0.5234375 }
      },
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/stone-furnace.png",
      max_health = 150,
      minable = {
        mining_time = 1,
        result = "stone-furnace"
      },
      name = "stone-furnace",
      off_animation = {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
        frame_count = 1,
        frame_height = 64,
        frame_width = 81,
        priority = "extra-high",
        shift = { 0.5, 0.05 }
      },
      on_animation = {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
        frame_count = 1,
        frame_height = 64,
        frame_width = 81,
        priority = "extra-high",
        shift = { 0.5, 0.05 }
      },
      resistances = { {
          percent = 80,
          type = "fire"
        }, {
          percent = 30,
          type = "explosion"
        } },
      result_inventory_size = 1,
      selection_box = { { -0.8, -1 }, { 0.8, 1 } },
      smelting_categories = { "smelting" },
      smelting_energy_consumption = "180W",
      smelting_speed = 0.5,
      source_inventory_size = 1,
      type = "furnace"
    }
  },
  generator = {
    ["steam-engine"] = {
      collision_box = { { -1.4, -2.4 }, { 1.4, 2.4 } },
      corpse = "big-remnants",
      energy_source = {
        output_priority = "secondary",
        type = "electric"
      },
      flags = { "placeable-neutral", "player-creation" },
      horizontal_animation = {
        filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
        frame_count = 32,
        frame_height = 150,
        frame_width = 219,
        line_length = 8,
        shift = { 1.1, -0.3 }
      },
      icon = "__base__/graphics/icons/steam-engine.png",
      max_health = 300,
      minable = {
        mining_time = 1,
        result = "steam-engine"
      },
      name = "steam-engine",
      pipes_horizontal = {
        filename = "__base__/graphics/entity/steam-engine/pipes-horizontal.png",
        height = 32,
        priority = "high",
        shift = { 0, 0 },
        width = 160
      },
      pipes_vertical = {
        filename = "__base__/graphics/entity/steam-engine/pipes-vertical.png",
        height = 160,
        priority = "high",
        shift = { 0.1, 0 },
        width = 36
      },
      resistances = { {
          percent = 70,
          type = "fire"
        } },
      selection_box = { { -1.5, -2.5 }, { 1.5, 2.5 } },
      smoke = { {
          deviation = { 0.2, 0.2 },
          east_position = { -1.1, -2.6 },
          frequency = 1,
          name = "smoke",
          north_position = { 0, -2.2 },
          offset = 0.33
        }, {
          deviation = { 0.2, 0.2 },
          east_position = { 0, -2.6 },
          frequency = 1,
          name = "smoke",
          north_position = { 0, -1.1 },
          offset = 0.66
        }, {
          deviation = { 0.2, 0.2 },
          east_position = { 1.1, -2.6 },
          frequency = 1,
          name = "smoke",
          north_position = { 0, 0 },
          offset = 0.99
        } },
      type = "generator",
      vertical_animation = {
        filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
        frame_count = 32,
        frame_height = 222,
        frame_width = 180,
        line_length = 8,
        shift = { 1.2, 1 }
      }
    }
  },
  ["generator-equipment"] = {
    ["fusion-reactor-equipment"] = {
      energy_source = {
        output_priority = "primary",
        type = "electric"
      },
      name = "fusion-reactor-equipment",
      power = "750W",
      shape = {
        height = 4,
        type = "full",
        width = 4
      },
      sprite = {
        filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
        height = 128,
        priority = "medium",
        width = 128
      },
      type = "generator-equipment"
    }
  },
  ghost = {
    ghost = {
      name = "ghost",
      type = "ghost"
    }
  },
  ["gui-style"] = {
    default = {
      ability_slot_style = {
        parent = "slot_button_style",
        type = "button_style"
      },
      available_preview_technology_slot_style = {
        height = 68,
        parent = "available_technology_slot_style",
        scalable = false,
        type = "button_style",
        width = 68
      },
      available_technology_slot_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 185,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 111,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 148,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "slot_button_style",
        scalable = false,
        type = "button_style"
      },
      battery_progressbar_style = {
        parent = "health_progressbar_style",
        type = "progressbar_style"
      },
      bonus_progressbar_style = {
        parent = "production_progressbar_style",
        smooth_color = {
          b = 0.8,
          r = 0.8
        },
        type = "progressbar_style"
      },
      burning_progressbar_style = {
        smooth_color = {
          r = 1
        },
        type = "progressbar_style"
      },
      button_style = {
        align = "center",
        bottom_padding = 5,
        clicked_font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        clicked_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 0, 16 },
          type = "composition"
        },
        default_font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        default_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 0, 0 },
          type = "composition"
        },
        font = "default-button",
        hovered_font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        hovered_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 0, 8 },
          type = "composition"
        },
        left_padding = 5,
        pie_progress_color = {
          b = 1,
          g = 1,
          r = 1
        },
        right_padding = 5,
        top_padding = 5,
        type = "button_style"
      },
      campaign_levels_listbox_style = {
        height = 350,
        type = "listbox_style",
        width = 300
      },
      campaigns_listbox_style = {
        height = 450,
        type = "listbox_style",
        width = 300
      },
      caption_label_style = {
        font = "default-bold",
        font_color = {
          b = 0.22,
          g = 0.66,
          r = 0.98
        },
        parent = "label_style",
        type = "label_style"
      },
      checkbox_style = {
        checked = {
          filename = "__core__/graphics/gui.png",
          height = 16,
          width = 16,
          x = 94,
          y = 17
        },
        clicked_background = {
          filename = "__core__/graphics/gui.png",
          height = 16,
          width = 16,
          x = 77,
          y = 17
        },
        default_background = {
          filename = "__core__/graphics/gui.png",
          height = 16,
          width = 16,
          x = 43,
          y = 17
        },
        font = "default",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        hovered_background = {
          filename = "__core__/graphics/gui.png",
          height = 16,
          width = 16,
          x = 60,
          y = 17
        },
        type = "checkbox_style"
      },
      circuit_condition_sign_button_style = {
        bottom_padding = 1,
        left_padding = 5,
        parent = "button_style",
        right_padding = 5,
        top_padding = 0,
        type = "button_style"
      },
      console_input_textfield_style = {
        font = "default-game",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        graphical_set = {
          bottom_monolith_border = 2,
          left_monolith_border = 0,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 1,
            width = 1,
            x = 8,
            y = 16
          },
          right_monolith_border = 0,
          top_monolith_border = 2,
          type = "monolith"
        },
        type = "textfield_style"
      },
      control_settings_table_style = {
        horizontal_spacing = 5,
        top_padding = 20,
        type = "table_style",
        vertical_spacing = 7
      },
      controls_settings_button_style = {
        align = "left",
        bottom_padding = 0,
        default_font_color = {},
        default_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 8, 8 },
          type = "composition"
        },
        font = "default-bold",
        left_padding = 2,
        minimal_width = 225,
        parent = "button_style",
        right_padding = 2,
        top_padding = 0,
        type = "button_style"
      },
      crafting_queue_slot_style = {
        parent = "slot_button_style",
        pie_progress_color = {
          a = 0.5,
          b = 0.22,
          g = 0.66,
          r = 0.98
        },
        scalable = false,
        type = "button_style"
      },
      cursor_box = {
        copy = { {
            max_side_length = 0.4,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.46875, 0.46875 },
              width = 32,
              x = 128,
              y = 96
            }
          }, {
            max_side_length = 0.7,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 96,
              y = 96
            }
          }, {
            max_side_length = 1.05,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 64,
              y = 96
            }
          }, {
            max_side_length = 2,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 32,
              y = 96
            }
          }, {
            max_side_length = 3,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 0,
              y = 96
            }
          } },
        electricity = { {
            max_side_length = 0.4,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.46875, 0.46875 },
              width = 32,
              x = 128,
              y = 64
            }
          }, {
            max_side_length = 0.7,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 96,
              y = 64
            }
          }, {
            max_side_length = 1.05,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 64,
              y = 64
            }
          }, {
            max_side_length = 2,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 32,
              y = 64
            }
          }, {
            max_side_length = 3,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 0,
              y = 64
            }
          } },
        logistics = { {
            max_side_length = 0.4,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.46875, 0.46875 },
              width = 32,
              x = 128,
              y = 64
            }
          }, {
            max_side_length = 0.7,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 96,
              y = 64
            }
          }, {
            max_side_length = 1.05,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 64,
              y = 64
            }
          }, {
            max_side_length = 2,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 32,
              y = 64
            }
          }, {
            max_side_length = 3,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 0,
              y = 64
            }
          } },
        not_allowed = { {
            max_side_length = 0.4,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.46875, 0.46875 },
              width = 32,
              x = 128,
              y = 32
            }
          }, {
            max_side_length = 0.7,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 96,
              y = 32
            }
          }, {
            max_side_length = 1.05,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 64,
              y = 32
            }
          }, {
            max_side_length = 2,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 32,
              y = 32
            }
          }, {
            max_side_length = 3,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 0,
              y = 32
            }
          } },
        pair = { {
            max_side_length = 0.4,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.46875, 0.46875 },
              width = 32,
              x = 128,
              y = 64
            }
          }, {
            max_side_length = 0.7,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 96,
              y = 64
            }
          }, {
            max_side_length = 1.05,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 64,
              y = 64
            }
          }, {
            max_side_length = 2,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 32,
              y = 64
            }
          }, {
            max_side_length = 3,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 0,
              y = 64
            }
          } },
        regular = { {
            max_side_length = 0.4,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.46875, 0.46875 },
              width = 32,
              x = 128,
              y = 0
            }
          }, {
            max_side_length = 0.7,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 96,
              y = 0
            }
          }, {
            max_side_length = 1.05,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 64,
              y = 0
            }
          }, {
            max_side_length = 2,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 32,
              y = 0
            }
          }, {
            max_side_length = 2.5,
            sprite = {
              filename = "__core__/graphics/cursor-boxes.png",
              height = 32,
              shift = { 0.5, 0.5 },
              width = 32,
              x = 0,
              y = 0
            }
          } }
      },
      custom_games_listbox_style = {
        height = 250,
        type = "listbox_style",
        width = 300
      },
      description_flow_style = {
        parent = "flow_style",
        type = "flow_style",
        vertical_spacing = 2
      },
      description_label_style = {
        font = "default-semibold",
        parent = "label_style",
        type = "label_style"
      },
      description_title_label_style = {
        font = "default-bold",
        parent = "description_label_style",
        type = "label_style"
      },
      dialog_button_style = {
        minimal_height = 30,
        minimal_width = 100,
        parent = "button_style",
        type = "button_style"
      },
      disabled_technology_slot_style = {
        parent = "slot_button_style",
        scalable = false,
        type = "button_style",
        visible = false
      },
      dropdown_style = {
        bottom_padding = 3,
        clicked_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 0, 16 },
          type = "composition"
        },
        default_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 0, 0 },
          type = "composition"
        },
        font = "default",
        hovered_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 0, 8 },
          type = "composition"
        },
        left_padding = 6,
        listbox_style = {
          font = "default"
        },
        right_padding = 6,
        top_padding = 3,
        triangle_image = {
          filename = "__core__/graphics/gui.png",
          height = 5,
          width = 10,
          x = 36,
          y = 6
        },
        type = "dropdown_style"
      },
      electric_network_sections_table_style = {
        cell_padding = 5,
        column_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 8, 0 },
          type = "composition"
        },
        horizontal_spacing = 0,
        type = "table_style",
        vertial_spacing = 0
      },
      electric_usage_label_style = {
        parent = "label_style",
        type = "label_style",
        width = 70
      },
      flow_style = {
        horizontal_spacing = 8,
        type = "flow_style",
        vertical_spacing = 8
      },
      frame_caption_label_style = {
        font = "default-frame",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        parent = "label_style",
        type = "label_style"
      },
      frame_in_right_container_style = {
        minimal_width = 220,
        type = "frame_style"
      },
      frame_style = {
        bottom_padding = 8,
        flow_style = {
          horizontal_spacing = 8,
          vertical_spacing = 8
        },
        font = "default-frame",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 8, 0 },
          type = "composition"
        },
        left_padding = 8,
        right_padding = 8,
        title_bottom_padding = 15,
        title_left_padding = 0,
        title_right_padding = 0,
        title_top_padding = 0,
        top_padding = 2,
        type = "frame_style"
      },
      goal_frame_style = {
        parent = "frame_style",
        type = "frame_style"
      },
      goal_label_style = {
        font = "scenario-message-dialog",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        parent = "label_style",
        type = "label_style",
        width = 400
      },
      graph_style = {
        background_color = {
          a = 0.9,
          b = 0.1,
          g = 0.1,
          r = 0.1
        },
        height = 200,
        line_colors = { {
            b = 0.69,
            g = 0.41,
            r = 0.22
          }, {
            b = 0.18,
            g = 0.48,
            r = 0.85
          }, {
            b = 0.31,
            g = 0.58,
            r = 0.24
          }, {
            b = 0.16,
            g = 0.1,
            r = 0.8
          }, {
            b = 0.32,
            g = 0.31,
            r = 0.32
          }, {
            b = 0.6,
            g = 0.29,
            r = 0.41
          }, {
            b = 0.15,
            g = 0.14,
            r = 0.57
          }, {
            b = 0.23,
            g = 0.54,
            r = 0.58
          } },
        type = "graph_style",
        width = 550
      },
      green_circuit_network_content_slot_style = {
        parent = "researched_technology_slot_style",
        type = "button_style"
      },
      health_progressbar_style = {
        font = "default",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        smooth_bar = {
          filename = "__core__/graphics/gui.png",
          height = 11,
          priority = "extra-high",
          width = 1,
          x = 223
        },
        smooth_bar_background = {
          filename = "__core__/graphics/gui.png",
          height = 13,
          priority = "extra-high",
          width = 1,
          x = 224
        },
        smooth_color = {
          g = 1
        },
        smooth_size = 500,
        type = "progressbar_style"
      },
      image_tab_selected_slot_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 75,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 75,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        height = 61,
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 75,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "image_tab_slot_style",
        scalable = false,
        type = "button_style",
        width = 61
      },
      image_tab_slot_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 111
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        height = 61,
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 111
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "slot_button_style",
        scalable = false,
        type = "button_style",
        width = 61
      },
      inner_frame_in_outer_frame_style = {
        title_bottom_padding = 5,
        type = "frame_style"
      },
      inner_frame_style = {
        bottom_padding = 0,
        graphical_set = {
          type = "none"
        },
        left_padding = 0,
        right_padding = 0,
        title_bottom_padding = 5,
        top_padding = 0,
        type = "frame_style"
      },
      label_style = {
        font = "default",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        type = "label_style"
      },
      listbox_item_style = {
        default = {
          background_color = {},
          font_color = {
            b = 1,
            g = 1,
            r = 1
          }
        },
        hovered = {
          background_color = {
            b = 0.4,
            g = 0.4,
            r = 0.4
          },
          font_color = {
            b = 1,
            g = 1,
            r = 1
          }
        },
        selected = {
          background_color = {
            b = 0.22,
            g = 0.66,
            r = 0.98
          },
          font_color = {}
        },
        type = "listbox_item_style"
      },
      listbox_style = {
        font = "default-listbox",
        item_style = {
          parent = "listbox_item_style"
        },
        type = "listbox_style"
      },
      load_game_mod_disabled_listbox_item_style = {
        default = {
          background_color = {
            a = 0,
            b = 0,
            g = 0,
            r = 0
          },
          font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          }
        },
        hovered = {
          background_color = {
            a = 0,
            b = 0,
            g = 0,
            r = 0
          },
          font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          }
        },
        parent = "listbox_item_style",
        selected = {
          background_color = {
            a = 0,
            b = 0,
            g = 0,
            r = 0
          },
          font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          }
        },
        type = "listbox_item_style"
      },
      load_game_mod_invalid_listbox_item_style = {
        default = {
          background_color = {
            a = 0,
            b = 0,
            g = 0,
            r = 0
          },
          font_color = {
            b = 0.3,
            g = 0.2,
            r = 1
          }
        },
        hovered = {
          background_color = {
            a = 0,
            b = 0,
            g = 0,
            r = 0
          },
          font_color = {
            b = 0.3,
            g = 0.2,
            r = 1
          }
        },
        parent = "listbox_item_style",
        selected = {
          background_color = {
            a = 0,
            b = 0,
            g = 0,
            r = 0
          },
          font_color = {
            b = 0.3,
            g = 0.2,
            r = 1
          }
        },
        type = "listbox_item_style"
      },
      load_game_mods_listbox_style = {
        font = "default",
        item_style = {
          default = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = {
              b = 1,
              g = 1,
              r = 1
            }
          },
          hovered = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = {
              b = 1,
              g = 1,
              r = 1
            }
          },
          parent = "listbox_item_style",
          selected = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = {
              b = 1,
              g = 1,
              r = 1
            }
          }
        },
        parent = "listbox_style",
        type = "listbox_style"
      },
      logistic_button_selected_slot_style = {
        height = 32,
        parent = "image_tab_selected_slot_style",
        scalable = false,
        type = "button_style",
        width = 32
      },
      logistic_button_slot_style = {
        parent = "slot_button_style",
        type = "button_style"
      },
      machine_frame_style = {
        flow_style = {
          horizontal_spacing = 5
        },
        parent = "inner_frame_in_outer_frame_style",
        type = "frame_style"
      },
      machine_right_part_flow_style = {
        type = "flow_style",
        vertical_spacing = 5
      },
      map_settings_dropdown_style = {
        minimal_width = 200,
        parent = "dropdown_style",
        type = "dropdown_style"
      },
      menu_button_style = {
        font = "default-button",
        hovered_font_color = {
          b = 0,
          g = 0,
          r = 0
        },
        minimal_height = 50,
        minimal_width = 300,
        parent = "button_style",
        type = "button_style"
      },
      menu_frame_style = {
        flow_style = {
          vertical_spacing = 0
        },
        type = "frame_style"
      },
      mining_progressbar_style = {
        parent = "health_progressbar_style",
        smooth_color = {
          b = 0.22,
          g = 0.66,
          r = 0.98
        },
        type = "progressbar_style"
      },
      mod_dependency_invalid_label_style = {
        font_color = {
          b = 0.3,
          g = 0.2,
          r = 1
        },
        parent = "label_style",
        type = "label_style"
      },
      mod_disabled_listbox_item_style = {
        default = {
          font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          }
        },
        hovered = {
          font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          }
        },
        parent = "listbox_item_style",
        selected = {
          font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          }
        },
        type = "listbox_item_style"
      },
      mod_info_flow_style = {
        minimal_width = 500,
        type = "listbox_style"
      },
      mod_invalid_listbox_item_style = {
        default = {
          font_color = {
            b = 0.3,
            g = 0.2,
            r = 1
          }
        },
        hovered = {
          font_color = {
            b = 0.3,
            g = 0.2,
            r = 1
          }
        },
        parent = "listbox_item_style",
        selected = {
          font_color = {
            b = 0.3,
            g = 0.2,
            r = 1
          }
        },
        type = "listbox_item_style"
      },
      mod_list_label_style = {
        font = "default-bold",
        font_color = {
          b = 0.1,
          g = 0.9,
          r = 0.9
        },
        parent = "label_style",
        type = "label_style"
      },
      mods_listbox_style = {
        height = 350,
        type = "listbox_style",
        width = 300
      },
      naked_frame_style = {
        parent = "inner_frame_style",
        title_bottom_padding = 0,
        type = "frame_style"
      },
      name = "default",
      not_available_preview_technology_slot_style = {
        height = 68,
        parent = "not_available_technology_slot_style",
        scalable = false,
        type = "button_style",
        width = 68
      },
      not_available_slot_button_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 185,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 111,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 148,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "slot_button_style",
        type = "button_style"
      },
      not_available_technology_slot_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 185,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 111,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 148,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "slot_button_style",
        scalable = false,
        type = "button_style"
      },
      number_textfield_style = {
        minimal_width = 50,
        type = "textfield_style"
      },
      outer_frame_style = {
        bottom_padding = 0,
        flow_style = {
          horizontal_spacing = 0,
          vertical_spacing = 0
        },
        graphical_set = {
          type = "none"
        },
        left_padding = 0,
        right_padding = 0,
        title_bottom_padding = 0,
        top_padding = 0,
        type = "frame_style"
      },
      partially_promised_crafting_queue_slot_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 257,
            y = 108
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 257,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 257,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "crafting_queue_slot_style",
        scalable = false,
        type = "button_style"
      },
      production_progressbar_style = {
        type = "progressbar_style"
      },
      progressbar_style = {
        diode_count = 10,
        diode_empty = {
          filename = "__core__/graphics/diode-grey.png",
          height = 20,
          priority = "extra-high",
          width = 20
        },
        diode_full = {
          filename = "__core__/graphics/diode-green.png",
          height = 20,
          priority = "extra-high",
          width = 20
        },
        font = "default",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        progressbar_type = "smooth",
        smooth_bar = {
          filename = "__core__/graphics/gui.png",
          height = 5,
          priority = "extra-high",
          width = 1,
          x = 221
        },
        smooth_bar_background = {
          filename = "__core__/graphics/gui.png",
          height = 7,
          priority = "extra-high",
          width = 1,
          x = 222
        },
        smooth_color = {
          g = 1
        },
        smooth_size = 200,
        type = "progressbar_style"
      },
      promised_crafting_queue_slot_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 221,
            y = 108
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 221,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 221,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "crafting_queue_slot_style",
        scalable = false,
        type = "button_style"
      },
      quick_bar_frame_style = {
        top_padding = 8,
        type = "frame_style"
      },
      radiobutton_style = {
        clicked_background = {
          filename = "__core__/graphics/gui.png",
          height = 10,
          width = 10,
          x = 65,
          y = 34
        },
        default_background = {
          filename = "__core__/graphics/gui.png",
          height = 10,
          width = 10,
          x = 43,
          y = 34
        },
        font = "default",
        font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        hovered_background = {
          filename = "__core__/graphics/gui.png",
          height = 10,
          width = 10,
          x = 54,
          y = 34
        },
        selected = {
          filename = "__core__/graphics/gui.png",
          height = 10,
          width = 10,
          x = 75,
          y = 34
        },
        type = "radiobutton_style"
      },
      recipe_tooltip_cannot_craft_label_style = {
        font_color = {
          b = 0.3,
          g = 0.2,
          r = 1
        },
        parent = "tooltip_label_style",
        type = "label_style"
      },
      recipe_tooltip_transitive_craft_label_style = {
        font_color = {
          b = 0.22,
          g = 0.66,
          r = 0.98
        },
        parent = "tooltip_label_style",
        type = "label_style"
      },
      red_circuit_network_content_slot_style = {
        parent = "not_available_slot_button_style",
        type = "button_style"
      },
      researched_preview_technology_slot_style = {
        height = 68,
        parent = "researched_technology_slot_style",
        scalable = false,
        type = "button_style",
        width = 68
      },
      researched_technology_slot_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 185,
            y = 108
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 111,
            y = 108
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 148,
            y = 108
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "slot_button_style",
        scalable = false,
        type = "button_style"
      },
      saves_listbox_style = {
        height = 500,
        type = "listbox_style",
        width = 300
      },
      scenario_message_dialog_frame_style = {
        graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 16, 0 },
          type = "composition"
        },
        top_padding = 8,
        type = "frame_style"
      },
      scenario_message_dialog_label_style = {
        font = "scenario-message-dialog",
        font_color = {
          b = 0,
          g = 0,
          r = 0
        },
        parent = "label_style",
        type = "label_style"
      },
      scrollbar_style = {
        background_color = {
          b = 0.5,
          g = 0.5,
          r = 0.5
        },
        type = "scrollbar_style"
      },
      second_quickbar_slot_button_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 221,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 221,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 221,
            y = 36
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "slot_button_style",
        type = "button_style"
      },
      selected_slot_button_style = {
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 75,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 75,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 75,
            y = 72
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        parent = "slot_button_style",
        type = "button_style"
      },
      shield_progressbar_style = {
        parent = "health_progressbar_style",
        smooth_color = {
          b = 0.8,
          g = 0.2,
          r = 0.8
        },
        type = "progressbar_style"
      },
      slider_style = {
        button_style = {
          bottom_padding = 0,
          clicked_graphical_set = {
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 15,
              width = 15,
              x = 79
            },
            type = "monolith"
          },
          default_graphical_set = {
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 15,
              width = 15,
              x = 47
            },
            type = "monolith"
          },
          height = 15,
          hovered_graphical_set = {
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 15,
              width = 15,
              x = 63
            },
            type = "monolith"
          },
          left_padding = 0,
          right_padding = 0,
          top_padding = 0,
          width = 15
        },
        height = 15,
        left_side_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 0, 8 },
          type = "composition"
        },
        right_side_graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 16, 0 },
          type = "composition"
        },
        type = "slider_style",
        width = 300
      },
      slot_button_style = {
        bottom_padding = 1,
        clicked_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 185
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        default_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 111
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        height = 36,
        hovered_graphical_set = {
          bottom_monolith_border = 1,
          left_monolith_border = 1,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 36,
            width = 36,
            x = 148
          },
          right_monolith_border = 1,
          top_monolith_border = 1,
          type = "monolith"
        },
        left_padding = 1,
        parent = "button_style",
        pie_progress_color = {
          a = 0.5,
          b = 0.22,
          g = 0.66,
          r = 0.98
        },
        right_padding = 1,
        scalable = false,
        top_padding = 1,
        type = "button_style",
        width = 36
      },
      slot_table_style = {
        horizontal_spacing = 2,
        type = "table_style",
        vertical_spacing = 2
      },
      statistics_progressbar_style = {
        parent = "progressbar_style",
        smooth_size = 180,
        type = "progressbar_style"
      },
      tab_style = {
        border_color = {
          b = 0.6,
          g = 0.6,
          r = 0.6
        },
        bottom_padding = 8,
        default_font_color = {
          b = 1,
          g = 1,
          r = 1
        },
        font = "default-bold",
        left_padding = 8,
        right_padding = 8,
        selected_font_color = {
          b = 0.22,
          g = 0.66,
          r = 0.98
        },
        top_padding = 8,
        type = "tab_style"
      },
      table_spacing_flow_style = {
        horizontal_spacing = 5,
        type = "flow_style",
        vertical_spacing = 5
      },
      table_style = {
        horizontal_spacing = 5,
        type = "table_style",
        vertical_spacing = 5
      },
      textbox_style = {
        font = "default",
        font_color = {},
        graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 16, 0 },
          type = "composition"
        },
        selection_background_color = {
          b = 0.83,
          g = 0.7,
          r = 0.66
        },
        type = "textbox_style"
      },
      textfield_style = {
        font = "default",
        font_color = {},
        graphical_set = {
          corner_size = { 3, 3 },
          filename = "__core__/graphics/gui.png",
          position = { 16, 0 },
          type = "composition"
        },
        left_padding = 3,
        minimal_width = 150,
        right_padding = 2,
        selection_background_color = {
          b = 0.83,
          g = 0.7,
          r = 0.66
        },
        type = "textfield_style"
      },
      tool_bar_frame_style = {
        top_padding = 8,
        type = "frame_style"
      },
      tool_equip_gui_label_style = {
        parent = "description_label_style",
        type = "label_style"
      },
      tooltip_frame_style = {
        graphical_set = {
          bottom_monolith_border = 0,
          left_monolith_border = 0,
          monolith_image = {
            filename = "__core__/graphics/gui.png",
            height = 1,
            width = 1,
            x = 11,
            y = 3
          },
          right_monolith_border = 0,
          top_monolith_border = 0,
          type = "monolith"
        },
        type = "frame_style"
      },
      tooltip_label_style = {
        parent = "description_label_style",
        type = "label_style"
      },
      tooltip_title_label_style = {
        font = "default-bold",
        parent = "description_label_style",
        type = "label_style"
      },
      train_station_listbox_style = {
        height = 150,
        type = "listbox_style",
        width = 250
      },
      train_station_schedule_listbox_style = {
        parent = "train_station_listbox_style",
        type = "listbox_style"
      },
      type = "gui-style",
      vehicle_health_progressbar_style = {
        parent = "health_progressbar_style",
        smooth_color = {
          b = 0.8,
          g = 0.8,
          r = 0.8
        },
        type = "progressbar_style"
      }
    }
  },
  gun = {
    ["combat-shotgun"] = {
      attack_parameters = {
        ammo_category = "shotgun-shell",
        cooldown = 30,
        damage_modifier = 1.2,
        explosion = "explosion-gunshot",
        movement_slow_down_factor = 0.5,
        projectile_creation_distance = 0.6,
        range = 20,
        sound = { {
            filename = "__base__/sound/pump-shotgun.wav",
            volume = 0.5
          } }
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/combat-shotgun.png",
      name = "combat-shotgun",
      order = "e-b-b",
      stack_size = 4,
      type = "gun"
    },
    ["flame-thrower"] = {
      attack_parameters = {
        ammo_category = "flame-thrower",
        cooldown = 2,
        movement_slow_down_factor = 0.6,
        projectile_creation_distance = 0.6,
        range = 15
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/flame-thrower.png",
      name = "flame-thrower",
      order = "e-d",
      stack_size = 4,
      type = "gun"
    },
    pistol = {
      attack_parameters = {
        ammo_category = "bullet",
        cooldown = 10,
        movement_slow_down_factor = 0.7,
        projectile_creation_distance = 0.6,
        range = 15,
        shell_particle = {
          center = { 0, 0.6 },
          creation_distance = 0.6,
          direction_deviation = 0.1,
          name = "shell-particle",
          speed = 0.1,
          speed_deviation = 0.03,
          starting_frame_speed = 0.4,
          starting_frame_speed_deviation = 0.1
        },
        sound = { {
            filename = "__base__/sound/gunshot.wav",
            volume = 0.3
          } }
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/pistol.png",
      name = "pistol",
      order = "e-a",
      stack_size = 4,
      type = "gun"
    },
    railgun = {
      attack_parameters = {
        ammo_category = "railgun",
        cooldown = 180,
        movement_slow_down_factor = 0.6,
        projectile_creation_distance = 0.6,
        range = 20,
        sound = { {
            filename = "__base__/sound/railgun.wav",
            volume = 0.8
          } }
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/railgun.png",
      name = "railgun",
      order = "e-c-b",
      stack_size = 4,
      type = "gun"
    },
    ["rocket-launcher"] = {
      attack_parameters = {
        ammo_category = "rocket",
        cooldown = 60,
        movement_slow_down_factor = 0.8,
        projectile_creation_distance = 0.6,
        range = 22
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/rocket-launcher.png",
      name = "rocket-launcher",
      order = "e-c-a",
      stack_size = 4,
      type = "gun"
    },
    shotgun = {
      attack_parameters = {
        ammo_category = "shotgun-shell",
        cooldown = 60,
        explosion = "explosion-gunshot",
        movement_slow_down_factor = 0.6,
        projectile_creation_distance = 0.6,
        range = 20,
        sound = { {
            filename = "__base__/sound/pump-shotgun.wav",
            volume = 0.5
          } }
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/shotgun.png",
      name = "shotgun",
      order = "e-b-a",
      stack_size = 4,
      type = "gun"
    },
    ["submachine-gun"] = {
      attack_parameters = {
        ammo_category = "bullet",
        cooldown = 4,
        movement_slow_down_factor = 0.7,
        projectile_creation_distance = 0.6,
        range = 15,
        shell_particle = {
          center = { 0, 0.6 },
          creation_distance = 0.6,
          direction_deviation = 0.1,
          name = "shell-particle",
          speed = 0.1,
          speed_deviation = 0.03,
          starting_frame_speed = 0.4,
          starting_frame_speed_deviation = 0.1
        },
        sound = { {
            filename = "__base__/sound/gunshot.wav",
            volume = 0.2
          } }
      },
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/submachine-gun.png",
      name = "submachine-gun",
      order = "e-b",
      stack_size = 1,
      type = "gun"
    }
  },
  inserter = {
    ["basic-inserter"] = {
      collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
      corpse = "small-remnants",
      energy_per_movement = 5,
      energy_per_rotation = 5,
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      extension_speed = 0.028,
      fast_replaceable_group = "inserter",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      hand_base_picture = {
        filename = "__base__/graphics/entity/basic-inserter/basic-inserter-hand-base.png",
        height = 34,
        priority = "extra-high",
        width = 8
      },
      hand_closed_picture = {
        filename = "__base__/graphics/entity/basic-inserter/basic-inserter-hand-closed.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      hand_open_picture = {
        filename = "__base__/graphics/entity/basic-inserter/basic-inserter-hand-open.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      icon = "__base__/graphics/icons/basic-inserter.png",
      insert_distance = 0.85,
      max_health = 40,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "basic-inserter"
      },
      name = "basic-inserter",
      pickup_distance = 1,
      platform_picture = {
        height = 46,
        priority = "extra-high",
        sheet = "__base__/graphics/entity/basic-inserter/basic-inserter-platform.png",
        width = 46
      },
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      rotation_speed = 0.014,
      selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
      type = "inserter"
    },
    ["burner-inserter"] = {
      collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
      corpse = "small-remnants",
      energy_per_movement = 100,
      energy_per_rotation = 100,
      energy_source = {
        effectivity = 1,
        fuel_inventory_size = 1,
        smoke = { {
            deviation = { 0.1, 0.1 },
            frequency = 0.3,
            name = "smoke"
          } },
        type = "burner"
      },
      extension_speed = 0.02,
      fast_replaceable_group = "inserter",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      hand_base_picture = {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png",
        height = 34,
        priority = "extra-high",
        width = 8
      },
      hand_closed_picture = {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      hand_open_picture = {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      icon = "__base__/graphics/icons/burner-inserter.png",
      insert_distance = 0.85,
      max_health = 40,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "burner-inserter"
      },
      name = "burner-inserter",
      pickup_distance = 1,
      platform_picture = {
        height = 46,
        priority = "extra-high",
        sheet = "__base__/graphics/entity/burner-inserter/burner-inserter-platform.png",
        width = 46
      },
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      rotation_speed = 0.01,
      selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
      type = "inserter"
    },
    ["fast-inserter"] = {
      collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
      corpse = "small-remnants",
      energy_per_movement = 5,
      energy_per_rotation = 5,
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      extension_speed = 0.07,
      fast_replaceable_group = "inserter",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      hand_base_picture = {
        filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-base.png",
        height = 34,
        priority = "extra-high",
        width = 8
      },
      hand_closed_picture = {
        filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-closed.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      hand_open_picture = {
        filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-open.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      icon = "__base__/graphics/icons/fast-inserter.png",
      insert_distance = 0.85,
      max_health = 40,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "fast-inserter"
      },
      name = "fast-inserter",
      pickup_distance = 1,
      platform_picture = {
        height = 46,
        priority = "extra-high",
        sheet = "__base__/graphics/entity/fast-inserter/fast-inserter-platform.png",
        width = 46
      },
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      rotation_speed = 0.035,
      selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
      type = "inserter"
    },
    ["long-handed-inserter"] = {
      collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
      corpse = "small-remnants",
      energy_per_movement = 5,
      energy_per_rotation = 5,
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      extension_speed = 0.04,
      fast_replaceable_group = "inserter",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      hand_base_picture = {
        filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
        height = 34,
        priority = "extra-high",
        width = 8
      },
      hand_closed_picture = {
        filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      hand_open_picture = {
        filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      icon = "__base__/graphics/icons/long-handed-inserter.png",
      insert_distance = 1.85,
      max_health = 40,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "long-handed-inserter"
      },
      name = "long-handed-inserter",
      pickup_distance = 2,
      platform_picture = {
        height = 46,
        priority = "extra-high",
        sheet = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
        width = 46
      },
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      rotation_speed = 0.02,
      selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
      type = "inserter"
    },
    ["smart-inserter"] = {
      collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
      corpse = "small-remnants",
      energy_per_movement = 7,
      energy_per_rotation = 7,
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      extension_speed = 0.07,
      fast_replaceable_group = "inserter",
      filter_count = 5,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      hand_base_picture = {
        filename = "__base__/graphics/entity/smart-inserter/smart-inserter-hand-base.png",
        height = 34,
        priority = "extra-high",
        width = 8
      },
      hand_closed_picture = {
        filename = "__base__/graphics/entity/smart-inserter/smart-inserter-hand-closed.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      hand_open_picture = {
        filename = "__base__/graphics/entity/smart-inserter/smart-inserter-hand-open.png",
        height = 41,
        priority = "extra-high",
        width = 13
      },
      icon = "__base__/graphics/icons/smart-inserter.png",
      insert_distance = 0.85,
      max_health = 40,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "smart-inserter"
      },
      name = "smart-inserter",
      pickup_distance = 1,
      platform_picture = {
        height = 46,
        priority = "extra-high",
        sheet = "__base__/graphics/entity/smart-inserter/smart-inserter-platform.png",
        width = 46
      },
      programmable = true,
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      rotation_speed = 0.035,
      selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
      type = "inserter",
      uses_arm_movement = "basic-inserter"
    }
  },
  item = {
    ["advanced-circuit"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/advanced-circuit.png",
      name = "advanced-circuit",
      order = "c-h",
      stack_size = 128,
      type = "item"
    },
    ["alien-artifact"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/alien-artifact.png",
      name = "alien-artifact",
      order = "l",
      stack_size = 500,
      type = "item"
    },
    ["alien-science-pack"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/alien-science-pack.png",
      name = "alien-science-pack",
      order = "j-d",
      stack_size = 256,
      type = "item"
    },
    ["assembling-machine-1"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      name = "assembling-machine-1",
      order = "h-f-a",
      place_result = "assembling-machine-1",
      stack_size = 64,
      type = "item"
    },
    ["assembling-machine-2"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      name = "assembling-machine-2",
      order = "h-f-b",
      place_result = "assembling-machine-2",
      stack_size = 64,
      type = "item"
    },
    ["assembling-machine-3"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      name = "assembling-machine-3",
      order = "h-f-c",
      place_result = "assembling-machine-3",
      stack_size = 64,
      type = "item"
    },
    ["basic-accumulator"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/basic-accumulator.png",
      name = "basic-accumulator",
      order = "h-h-g",
      place_result = "basic-accumulator",
      stack_size = 32,
      type = "item"
    },
    ["basic-beacon"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/basic-beacon.png",
      name = "basic-beacon",
      order = "l",
      place_result = "basic-beacon",
      stack_size = 8,
      type = "item"
    },
    ["basic-electric-discharge-defense-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-electric-discharge-defense-equipment.png",
      name = "basic-electric-discharge-defense-equipment",
      order = "f-d-d-b",
      placed_as_equipment_result = "basic-electric-discharge-defense-equipment",
      stack_size = 16,
      type = "item"
    },
    ["basic-exoskeleton-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-exoskeleton-equipment.png",
      name = "basic-exoskeleton-equipment",
      order = "f-d-e-a",
      placed_as_equipment_result = "basic-exoskeleton-equipment",
      stack_size = 4,
      type = "item"
    },
    ["basic-inserter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/basic-inserter.png",
      name = "basic-inserter",
      order = "h-e-b",
      place_result = "basic-inserter",
      stack_size = 64,
      type = "item"
    },
    ["basic-laser-defense-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-laser-defense-equipment.png",
      name = "basic-laser-defense-equipment",
      order = "f-d-d-a",
      placed_as_equipment_result = "basic-laser-defense-equipment",
      stack_size = 16,
      type = "item"
    },
    ["basic-mining-drill"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/basic-mining-drill.png",
      name = "basic-mining-drill",
      order = "h-c-b",
      place_result = "basic-mining-drill",
      stack_size = 64,
      type = "item"
    },
    ["basic-splitter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/basic-splitter.png",
      name = "basic-splitter",
      order = "h-d-g",
      place_result = "basic-splitter",
      stack_size = 64,
      type = "item"
    },
    ["basic-transport-belt"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/basic-transport-belt.png",
      name = "basic-transport-belt",
      order = "h-d-a",
      place_result = "basic-transport-belt",
      stack_size = 64,
      type = "item"
    },
    ["basic-transport-belt-to-ground"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/basic-transport-belt-to-ground.png",
      name = "basic-transport-belt-to-ground",
      order = "h-d-d",
      place_result = "basic-transport-belt-to-ground",
      stack_size = 64,
      type = "item"
    },
    ["battery-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/battery-equipment.png",
      name = "battery-equipment",
      order = "f-d-b-a",
      placed_as_equipment_result = "battery-equipment",
      stack_size = 16,
      type = "item"
    },
    ["battery-mk2-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/battery-mk2-equipment.png",
      name = "battery-mk2-equipment",
      order = "f-d-b-b",
      placed_as_equipment_result = "battery-mk2-equipment",
      stack_size = 16,
      type = "item"
    },
    ["big-electric-pole"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/big-electric-pole.png",
      name = "big-electric-pole",
      order = "h-h-e",
      place_result = "big-electric-pole",
      stack_size = 32,
      type = "item"
    },
    ["biter-spawner"] = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/biter-spawner.png",
      name = "biter-spawner",
      order = "h-j-f",
      place_result = "biter-spawner",
      stack_size = 32,
      type = "item"
    },
    boiler = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/boiler.png",
      name = "boiler",
      order = "h-g-d",
      place_result = "boiler",
      stack_size = 32,
      type = "item"
    },
    ["burner-inserter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/burner-inserter.png",
      name = "burner-inserter",
      order = "h-e-a",
      place_result = "burner-inserter",
      stack_size = 64,
      type = "item"
    },
    ["burner-mining-drill"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/burner-mining-drill.png",
      name = "burner-mining-drill",
      order = "h-c-a",
      place_result = "burner-mining-drill",
      stack_size = 64,
      type = "item"
    },
    car = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/car.png",
      name = "car",
      order = "h-k-a",
      place_result = "car",
      stack_size = 1,
      type = "item"
    },
    ["cargo-wagon"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/cargo-wagon.png",
      name = "cargo-wagon",
      order = "h-i-b",
      place_result = "cargo-wagon",
      stack_size = 8,
      type = "item"
    },
    coal = {
      flags = { "goes-to-main-inventory" },
      fuel_value = "8KJ",
      group = "production",
      icon = "__base__/graphics/icons/coal.png",
      name = "coal",
      order = "a-a",
      stack_size = 64,
      type = "item"
    },
    coin = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/coin.png",
      name = "coin",
      order = "y",
      stack_size = 100000,
      type = "item"
    },
    computer = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/computer.png",
      name = "computer",
      order = "i",
      stack_size = 1,
      type = "item"
    },
    ["construction-robot"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/construction-robot.png",
      name = "construction-robot",
      order = "k-b",
      place_result = "construction-robot",
      stack_size = 32,
      type = "item"
    },
    ["copper-cable"] = {
      flags = { "goes-to-main-inventory" },
      group = "energy",
      icon = "__base__/graphics/icons/copper-cable.png",
      name = "copper-cable",
      order = "c-f",
      stack_size = 256,
      type = "item"
    },
    ["copper-ore"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/copper-ore.png",
      name = "copper-ore",
      order = "a-d",
      stack_size = 64,
      type = "item"
    },
    ["copper-plate"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/copper-plate.png",
      name = "copper-plate",
      order = "b-b",
      stack_size = 128,
      type = "item"
    },
    ["curved-rail"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/curved-rail.png",
      name = "curved-rail",
      order = "h-i-c",
      place_result = "curved-rail",
      stack_size = 64,
      type = "item"
    },
    ["diesel-locomotive"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/diesel-locomotive.png",
      name = "diesel-locomotive",
      order = "h-i-a",
      place_result = "diesel-locomotive",
      stack_size = 8,
      type = "item"
    },
    ["electric-furnace"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/electric-furnace.png",
      name = "electric-furnace",
      order = "h-b-b",
      place_result = "electric-furnace",
      stack_size = 64,
      type = "item"
    },
    ["electronic-circuit"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/electronic-circuit.png",
      name = "electronic-circuit",
      order = "c-g",
      stack_size = 256,
      type = "item"
    },
    ["energy-shield-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/energy-shield-equipment.png",
      name = "energy-shield-equipment",
      order = "f-d-a-a",
      placed_as_equipment_result = "energy-shield-equipment",
      stack_size = 16,
      type = "item"
    },
    ["energy-shield-mk2-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/energy-shield-mk2-equipment.png",
      name = "energy-shield-mk2-equipment",
      order = "f-d-a-b",
      placed_as_equipment_result = "energy-shield-mk2-equipment",
      stack_size = 16,
      type = "item"
    },
    ["express-splitter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/express-splitter.png",
      name = "express-splitter",
      order = "h-d-i",
      place_result = "express-splitter",
      stack_size = 64,
      type = "item"
    },
    ["express-transport-belt"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/express-transport-belt.png",
      name = "express-transport-belt",
      order = "h-d-c",
      place_result = "express-transport-belt",
      stack_size = 64,
      type = "item"
    },
    ["express-transport-belt-to-ground"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/express-transport-belt-to-ground.png",
      name = "express-transport-belt-to-ground",
      order = "h-d-f",
      place_result = "express-transport-belt-to-ground",
      stack_size = 64,
      type = "item"
    },
    ["fast-inserter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/fast-inserter.png",
      name = "fast-inserter",
      order = "h-e-d",
      place_result = "fast-inserter",
      stack_size = 64,
      type = "item"
    },
    ["fast-splitter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/fast-splitter.png",
      name = "fast-splitter",
      order = "h-d-h",
      place_result = "fast-splitter",
      stack_size = 64,
      type = "item"
    },
    ["fast-transport-belt"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/fast-transport-belt.png",
      name = "fast-transport-belt",
      order = "h-d-b",
      place_result = "fast-transport-belt",
      stack_size = 64,
      type = "item"
    },
    ["fast-transport-belt-to-ground"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/fast-transport-belt-to-ground.png",
      name = "fast-transport-belt-to-ground",
      order = "h-d-e",
      place_result = "fast-transport-belt-to-ground",
      stack_size = 64,
      type = "item"
    },
    ["fusion-reactor-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
      name = "fusion-reactor-equipment",
      order = "f-d-c-b",
      placed_as_equipment_result = "fusion-reactor-equipment",
      stack_size = 16,
      type = "item"
    },
    ["green-wire"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/green-wire.png",
      name = "green-wire",
      order = "h-a-f",
      stack_size = 256,
      type = "item"
    },
    ["gun-turret"] = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/gun-turret.png",
      name = "gun-turret",
      order = "h-j-c",
      place_result = "gun-turret",
      stack_size = 64,
      type = "item"
    },
    ["iron-chest"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/iron-chest.png",
      name = "iron-chest",
      order = "h-a-b",
      place_result = "iron-chest",
      stack_size = 64,
      type = "item"
    },
    ["iron-gear-wheel"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/iron-gear-wheel.png",
      name = "iron-gear-wheel",
      order = "c-d",
      stack_size = 128,
      type = "item"
    },
    ["iron-ore"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/iron-ore.png",
      name = "iron-ore",
      order = "a-e",
      stack_size = 64,
      type = "item"
    },
    ["iron-plate"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/iron-plate.png",
      name = "iron-plate",
      order = "b-c",
      stack_size = 128,
      type = "item"
    },
    ["iron-stick"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/iron-stick.png",
      name = "iron-stick",
      order = "c-c",
      stack_size = 128,
      type = "item"
    },
    lab = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/lab.png",
      name = "lab",
      order = "j",
      place_result = "lab",
      stack_size = 8,
      type = "item"
    },
    ["land-mine"] = {
      damage_radius = 5,
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/land-mine.png",
      name = "land-mine",
      order = "e-e",
      place_result = "land-mine",
      stack_size = 16,
      trigger_radius = 1,
      type = "item"
    },
    ["laser-turret"] = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/laser-turret.png",
      name = "laser-turret",
      order = "h-j-e",
      place_result = "laser-turret",
      stack_size = 32,
      type = "item"
    },
    ["logistic-chest-provider"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/logistic-chest-provider.png",
      name = "logistic-chest-provider",
      order = "k-b",
      place_result = "logistic-chest-provider",
      stack_size = 64,
      type = "item"
    },
    ["logistic-chest-requester"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/logistic-chest-requester.png",
      name = "logistic-chest-requester",
      order = "k-d",
      place_result = "logistic-chest-requester",
      stack_size = 64,
      type = "item"
    },
    ["logistic-chest-storage"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/logistic-chest-storage.png",
      name = "logistic-chest-storage",
      order = "k-c",
      place_result = "logistic-chest-storage",
      stack_size = 64,
      type = "item"
    },
    ["logistic-robot"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/logistic-robot.png",
      name = "logistic-robot",
      order = "k-a",
      place_result = "logistic-robot",
      stack_size = 32,
      type = "item"
    },
    ["long-handed-inserter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/long-handed-inserter.png",
      name = "long-handed-inserter",
      order = "h-e-c",
      place_result = "long-handed-inserter",
      stack_size = 64,
      type = "item"
    },
    ["medium-electric-pole"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/medium-electric-pole.png",
      name = "medium-electric-pole",
      order = "h-h-d",
      place_result = "medium-electric-pole",
      stack_size = 32,
      type = "item"
    },
    ["medium-worm-turret"] = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/rocket-turret.png",
      name = "medium-worm-turret",
      order = "h-j-d",
      place_result = "medium-worm-turret",
      stack_size = 64,
      type = "item"
    },
    ["night-vision-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/night-vision-equipment.png",
      name = "night-vision-equipment",
      order = "f-d-1-a",
      placed_as_equipment_result = "night-vision-equipment",
      stack_size = 16,
      type = "item"
    },
    pipe = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/pipe.png",
      name = "pipe",
      order = "h-g-b",
      place_result = "pipe",
      stack_size = 32,
      type = "item"
    },
    ["pipe-to-ground"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/pipe-to-ground.png",
      name = "pipe-to-ground",
      order = "h-g-c",
      place_result = "pipe-to-ground",
      stack_size = 64,
      type = "item"
    },
    ["player-port"] = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/player-port.png",
      name = "player-port",
      order = "h-j-a",
      place_result = "player-port",
      stack_size = 64,
      type = "item"
    },
    pump = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/pump.png",
      name = "pump",
      order = "h-g-a",
      place_result = "pump",
      stack_size = 32,
      type = "item"
    },
    radar = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/radar.png",
      name = "radar",
      order = "h-j-b",
      place_result = "radar",
      stack_size = 64,
      type = "item"
    },
    ["rail-signal"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/rail-signal.png",
      name = "rail-signal",
      order = "j-b",
      place_result = "rail-signal",
      stack_size = 32,
      type = "item"
    },
    ["raw-wood"] = {
      flags = { "goes-to-main-inventory" },
      fuel_value = "4KJ",
      group = "production",
      icon = "__base__/graphics/icons/raw-wood.png",
      name = "raw-wood",
      order = "a-b",
      stack_size = 64,
      type = "item"
    },
    ["red-wire"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/red-wire.png",
      name = "red-wire",
      order = "h-a-e",
      stack_size = 256,
      type = "item"
    },
    roboport = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/roboport.png",
      name = "roboport",
      order = "x-a",
      place_result = "roboport",
      stack_size = 4,
      type = "item"
    },
    ["rocket-defense"] = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/rocket-defense.png",
      name = "rocket-defense",
      order = "x",
      place_result = "rocket-defense",
      stack_size = 4,
      type = "item"
    },
    ["science-pack-1"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/science-pack-1.png",
      name = "science-pack-1",
      order = "j-a",
      stack_size = 256,
      type = "item"
    },
    ["science-pack-2"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/science-pack-2.png",
      name = "science-pack-2",
      order = "j-b",
      stack_size = 256,
      type = "item"
    },
    ["science-pack-3"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/science-pack-3.png",
      name = "science-pack-3",
      order = "j-c",
      stack_size = 256,
      type = "item"
    },
    ["small-electric-pole"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/small-electric-pole.png",
      name = "small-electric-pole",
      order = "h-h-c",
      place_result = "small-electric-pole",
      stack_size = 32,
      type = "item"
    },
    ["small-lamp"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/small-lamp.png",
      name = "small-lamp",
      order = "h-e-f",
      place_result = "small-lamp",
      stack_size = 64,
      type = "item"
    },
    ["small-worm-turret"] = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/basic-turret.png",
      name = "small-worm-turret",
      order = "h-j-c",
      place_result = "small-worm-turret",
      stack_size = 64,
      type = "item"
    },
    ["smart-chest"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/smart-chest.png",
      name = "smart-chest",
      order = "h-a-d",
      place_result = "smart-chest",
      stack_size = 32,
      type = "item"
    },
    ["smart-inserter"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/smart-inserter.png",
      name = "smart-inserter",
      order = "h-e-e",
      place_result = "smart-inserter",
      stack_size = 64,
      type = "item"
    },
    ["solar-panel"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/solar-panel.png",
      name = "solar-panel",
      order = "h-h-b",
      place_result = "solar-panel",
      stack_size = 32,
      type = "item"
    },
    ["solar-panel-equipment"] = {
      flags = { "goes-to-main-inventory" },
      group = "combat",
      icon = "__base__/graphics/icons/solar-panel-equipment.png",
      name = "solar-panel-equipment",
      order = "f-d-c-a",
      placed_as_equipment_result = "solar-panel-equipment",
      stack_size = 16,
      type = "item"
    },
    ["steam-engine"] = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/steam-engine.png",
      name = "steam-engine",
      order = "h-h-a",
      place_result = "steam-engine",
      stack_size = 8,
      type = "item"
    },
    ["steel-chest"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/steel-chest.png",
      name = "steel-chest",
      order = "h-a-c",
      place_result = "steel-chest",
      stack_size = 64,
      type = "item"
    },
    ["steel-furnace"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/steel-furnace.png",
      name = "steel-furnace",
      order = "h-b-b",
      place_result = "steel-furnace",
      stack_size = 64,
      type = "item"
    },
    ["steel-plate"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/steel-plate.png",
      name = "steel-plate",
      order = "b-c-a",
      stack_size = 128,
      type = "item"
    },
    stone = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/stone.png",
      name = "stone",
      order = "a-c",
      stack_size = 64,
      type = "item"
    },
    ["stone-brick"] = {
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/stone-brick.png",
      name = "stone-brick",
      order = "b-d",
      stack_size = 128,
      type = "item"
    },
    ["stone-furnace"] = {
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/stone-furnace.png",
      name = "stone-furnace",
      order = "h-b-a",
      place_result = "stone-furnace",
      stack_size = 64,
      type = "item"
    },
    ["straight-rail"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/straight-rail.png",
      name = "straight-rail",
      order = "h-i-b",
      place_result = "straight-rail",
      stack_size = 64,
      type = "item"
    },
    substation = {
      flags = { "goes-to-quickbar" },
      group = "energy",
      icon = "__base__/graphics/icons/substation.png",
      name = "substation",
      order = "h-h-f",
      place_result = "substation",
      stack_size = 32,
      type = "item"
    },
    ["train-stop"] = {
      flags = { "goes-to-quickbar" },
      group = "logistics",
      icon = "__base__/graphics/icons/train-stop.png",
      name = "train-stop",
      order = "j-a",
      place_result = "train-stop",
      stack_size = 8,
      type = "item"
    },
    wall = {
      flags = { "goes-to-quickbar" },
      group = "combat",
      icon = "__base__/graphics/icons/wall.png",
      name = "wall",
      order = "h-j-g",
      place_result = "wall",
      stack_size = 64,
      type = "item"
    },
    wood = {
      flags = { "goes-to-main-inventory" },
      fuel_value = "0.6KJ",
      group = "production",
      icon = "__base__/graphics/icons/wood.png",
      name = "wood",
      order = "b-a",
      stack_size = 64,
      type = "item"
    },
    ["wooden-chest"] = {
      flags = { "goes-to-quickbar" },
      fuel_value = "6KJ",
      group = "logistics",
      icon = "__base__/graphics/icons/wooden-chest.png",
      name = "wooden-chest",
      order = "h-a-a",
      place_result = "wooden-chest",
      stack_size = 64,
      type = "item"
    }
  },
  ["item-entity"] = {
    ["item-on-ground"] = {
      collision_box = { { -0.14, -0.14 }, { 0.14, 0.14 } },
      flags = { "placeable-off-grid" },
      name = "item-on-ground",
      selection_box = { { -0.17, -0.17 }, { 0.17, 0.17 } },
      type = "item-entity"
    }
  },
  ["item-group"] = {
    combat = {
      icon = "__base__/graphics/technology/military.png",
      name = "combat",
      order = "e",
      type = "item-group"
    },
    energy = {
      icon = "__base__/graphics/technology/solar-energy.png",
      name = "energy",
      order = "d",
      type = "item-group"
    },
    logistics = {
      icon = "__base__/graphics/technology/logistics.png",
      name = "logistics",
      order = "b",
      type = "item-group"
    },
    other = {
      icon = "__core__/graphics/questionmark.png",
      name = "other",
      order = "f",
      type = "item-group"
    },
    production = {
      icon = "__base__/graphics/technology/automation.png",
      name = "production",
      order = "c",
      type = "item-group"
    }
  },
  lab = {
    lab = {
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      corpse = "big-remnants",
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage = "60W",
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/lab.png",
      inputs = { "science-pack-1", "science-pack-2", "science-pack-3", "alien-science-pack" },
      light = {
        intensity = 0.75,
        size = 8
      },
      max_health = 150,
      minable = {
        mining_time = 1,
        result = "lab"
      },
      module_slots = 2,
      name = "lab",
      off_animation = {
        filename = "__base__/graphics/entity/lab/lab.png",
        frame_count = 1,
        frame_height = 91,
        frame_width = 113,
        shift = { 0.2, 0.15 }
      },
      on_animation = {
        filename = "__base__/graphics/entity/lab/lab.png",
        frame_count = 33,
        frame_height = 91,
        frame_width = 113,
        line_length = 11,
        shift = { 0.2, 0.15 }
      },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "lab"
    }
  },
  lamp = {
    ["small-lamp"] = {
      collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
      corpse = "small-remnants",
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage_per_tick = 0.2,
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/small-lamp.png",
      light = {
        intensity = 0.9,
        size = 40
      },
      max_health = 55,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "small-lamp"
      },
      name = "small-lamp",
      picture_off = {
        filename = "__base__/graphics/entity/small-lamp/small-lamp.png",
        height = 75,
        priority = "high",
        shift = { 0, -0.1 },
        width = 83
      },
      picture_on = {
        filename = "__base__/graphics/entity/small-lamp/small-lamp.png",
        height = 75,
        priority = "high",
        shift = { 0, -0.1 },
        width = 83,
        x = 83
      },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "lamp"
    }
  },
  ["land-mine"] = {
    ["land-mine"] = {
      action = {
        action_delivery = {
          source_effects = { {
              action = {
                action_delivery = {
                  target_effects = {
                    damage = {
                      amount = 40,
                      type = "explosion"
                    },
                    type = "damage"
                  },
                  type = "instant"
                },
                collision_mask = { "player-layer" },
                perimeter = 6,
                type = "area"
              },
              affects_target = true,
              type = "nested-result"
            }, {
              entity_name = "explosion",
              type = "create-entity"
            }, {
              damage = {
                amount = 1000,
                type = "explosion"
              },
              type = "damage"
            } },
          type = "instant"
        },
        type = "direct"
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      dying_explosion = "explosion-gunshot",
      flags = { "placeable-player", "placeable-enemy", "player-creation", "placeable-off-grid" },
      icon = "__base__/graphics/icons/land-mine.png",
      max_health = 15,
      minable = {
        mining_time = 1,
        result = "land-mine"
      },
      name = "land-mine",
      picture_safe = {
        filename = "__base__/graphics/entity/land-mine/land-mine.png",
        height = 32,
        priority = "medium",
        width = 32
      },
      picture_set = {
        filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
        height = 32,
        priority = "medium",
        width = 32
      },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      trigger_radius = 2.5,
      type = "land-mine"
    }
  },
  locomotive = {
    ["diesel-locomotive"] = {
      air_resistance = 0.002,
      braking_force = 10,
      collision_box = { { -0.6, -2.6 }, { 0.9, 2.6 } },
      connection_distance = 3.3,
      corpse = "medium-remnants",
      drawing_box = { { -1, -4 }, { 1, 3 } },
      energy_per_hit_point = 5,
      energy_source = {
        effectivity = 1,
        fuel_inventory_size = 3,
        smoke = { {
            deviation = { 0.1, 0.1 },
            frequency = 20,
            name = "smoke",
            position = { 0, 0 },
            slow_down_factor = 0.9,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5
          } },
        type = "burner"
      },
      flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
      friction_force = 0.0015,
      icon = "__base__/graphics/icons/diesel-locomotive.png",
      joint_distance = 4.6,
      light = { {
          intensity = 0.6,
          minimum_darkness = 0.3,
          picture = {
            filename = "__core__/graphics/light-cone.png",
            height = 400,
            priority = "medium",
            width = 400
          },
          shift = { -0.6, -16 },
          size = 2,
          type = "oriented"
        }, {
          intensity = 0.6,
          minimum_darkness = 0.3,
          picture = {
            filename = "__core__/graphics/light-cone.png",
            height = 400,
            priority = "medium",
            width = 400
          },
          shift = { 0.6, -16 },
          size = 2,
          type = "oriented"
        } },
      max_health = 1000,
      max_power = 10,
      max_speed = 1.2,
      minable = {
        mining_time = 1,
        result = "diesel-locomotive"
      },
      name = "diesel-locomotive",
      pictures = {
        axially_symmetrical = false,
        direction_count = 256,
        filenames = { "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png" },
        frame_height = 248,
        frame_width = 346,
        line_length = 4,
        lines_per_file = 8,
        priority = "very-low",
        shift = { 0.9, -0.45 }
      },
      rail_category = "regular",
      selection_box = { { -0.7, -2.5 }, { 1, 2.5 } },
      type = "locomotive",
      weight = 2000
    }
  },
  ["logistic-container"] = {
    ["logistic-chest-provider"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "container",
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/logistic-chest-provider.png",
      inventory_size = 48,
      logistic_mode = "provider",
      max_health = 150,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "logistic-chest-provider"
      },
      name = "logistic-chest-provider",
      picture = {
        filename = "__base__/graphics/entity/logistic-chest/logistic-chest-provider.png",
        height = 32,
        priority = "extra-high",
        shift = { 0.1, 0 },
        width = 38
      },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "logistic-container"
    },
    ["logistic-chest-requester"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "container",
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/logistic-chest-requester.png",
      inventory_size = 48,
      logistic_mode = "requester",
      max_health = 150,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "logistic-chest-requester"
      },
      name = "logistic-chest-requester",
      picture = {
        filename = "__base__/graphics/entity/logistic-chest/logistic-chest-requester.png",
        height = 32,
        priority = "extra-high",
        shift = { 0.1, 0 },
        width = 38
      },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "logistic-container"
    },
    ["logistic-chest-storage"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "container",
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/logistic-chest-storage.png",
      inventory_size = 48,
      logistic_mode = "storage",
      max_health = 150,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "logistic-chest-storage"
      },
      name = "logistic-chest-storage",
      picture = {
        filename = "__base__/graphics/entity/logistic-chest/logistic-chest-storage.png",
        height = 32,
        priority = "extra-high",
        shift = { 0.1, 0 },
        width = 38
      },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "logistic-container"
    }
  },
  ["logistic-robot"] = {
    ["logistic-robot"] = {
      collision_box = { { 0, 0 }, { 0, 0 } },
      energy_per_move = "1J",
      energy_per_tick = "0.01J",
      flags = { "placeable-player", "player-creation", "placeable-off-grid" },
      icon = "__base__/graphics/icons/logistic-robot.png",
      max_energy = "300J",
      max_health = 100,
      max_payload_size = 1,
      max_to_charge = 0.95,
      min_to_charge = 0.2,
      minable = {
        hardness = 0.1,
        mining_time = 0.1,
        result = "logistic-robot"
      },
      name = "logistic-robot",
      picture = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
        height = 34,
        priority = "high",
        width = 37
      },
      selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
      shadow = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
        height = 37,
        priority = "high",
        width = 52
      },
      speed = 0.05,
      transfer_distance = 0.5,
      type = "logistic-robot"
    }
  },
  ["map-settings"] = {
    ["map-settings"] = {
      enemy_evolution = {
        destroy_factor = 0.005,
        enabled = true,
        pollution_factor = 3e-05,
        time_factor = 8e-06
      },
      enemy_expansion = {
        enabled = true,
        max_expansion_cooldown = 216000,
        max_expansion_distance = 5,
        min_base_spacing = 3,
        min_expansion_cooldown = 18000,
        min_player_base_distance = 3,
        settler_group_max_size = 20,
        settler_group_min_size = 5
      },
      name = "map-settings",
      path_finder = {
        cache_absolute_path_credit = 1,
        cache_accept_path_end_distance_ratio = 0.15,
        cache_accept_path_start_distance_ratio = 0.2,
        cache_ageing = 0.05,
        cache_keep_path_threshold = 0.5,
        cache_last_connection_point = 50,
        cache_last_connection_point_ratio = 0.2,
        cache_max_age_spacing = 600,
        cache_max_connect_to_cache_steps = 100,
        cache_num_connection_points = 5,
        cache_path_end_distance_rating_multiplier = 20,
        cache_path_start_distance_rating_multiplier = 10,
        cache_per_node_path_credit = 0.001,
        enemy_with_different_destination_collision_penalty = 20,
        fwd2bwd_ratio = 5,
        general_entity_collision_penalty = 10,
        goal_pressure_ratio = 2,
        ignore_moving_enemy_collision_distance = 5,
        long_cache_min_cacheable_distance = 30,
        long_cache_path_max_age = 108000,
        long_cache_size = 25,
        max_steps_worked_per_tick = 100,
        short_cache_min_algo_steps_to_cache = 50,
        short_cache_min_cacheable_distance = 10,
        short_cache_path_max_age = 600,
        short_cache_size = 5,
        stale_enemy_with_same_destination_collision_penalty = 20,
        use_path_cache = true
      },
      pollution = {
        ageing = 0.55,
        diffusion_ratio = 0.02,
        enabled = true,
        expected_max_per_chunk = 7000,
        min_to_diffuse = 15,
        min_to_show_per_chunk = 700
      },
      steering = {
        default = {
          force_unit_fuzzy_goto_behavior = false,
          radius = 1.2,
          separation_factor = 1.2,
          separation_force = 0.005
        },
        moving = {
          force_unit_fuzzy_goto_behavior = false,
          radius = 3,
          separation_factor = 3,
          separation_force = 0.01
        }
      },
      type = "map-settings",
      unit_group = {
        max_group_gathering_time = 36000,
        max_group_radius = 30,
        max_member_speedup_when_behind = 1.4,
        max_wait_time_for_late_members = 7200,
        min_group_gathering_time = 3600,
        min_group_radius = 5,
        tick_tolerance_when_member_arrives = 60
      }
    }
  },
  market = {
    market = {
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      corpse = "big-remnants",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/market.png",
      max_health = 150,
      name = "market",
      order = "d-a-a",
      picture = {
        filename = "__base__/graphics/entity/market/market.png",
        height = 127,
        shift = { 0.95, 0.2 },
        width = 156
      },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "market"
    }
  },
  ["mining-drill"] = {
    ["basic-mining-drill"] = {
      animations = {
        east = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-mining-drill/east.png",
          frame_count = 64,
          frame_height = 100,
          frame_width = 129,
          line_length = 8,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.45, 0 }
        },
        north = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-mining-drill/north.png",
          frame_count = 64,
          frame_height = 114,
          frame_width = 110,
          line_length = 8,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.2, -0.2 }
        },
        south = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-mining-drill/south.png",
          frame_count = 64,
          frame_height = 111,
          frame_width = 109,
          line_length = 8,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.15, 0 }
        },
        west = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-mining-drill/west.png",
          frame_count = 64,
          frame_height = 100,
          frame_width = 128,
          line_length = 8,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.25, 0 }
        }
      },
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      corpse = "big-remnants",
      energy_source = {
        emissions = 0.1,
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage = "90W",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/basic-mining-drill.png",
      max_health = 300,
      minable = {
        mining_time = 1,
        result = "basic-mining-drill"
      },
      mining_power = 3,
      mining_speed = 0.5,
      module_slots = 3,
      name = "basic-mining-drill",
      pipe_length = 2,
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
        height = 12,
        width = 12
      },
      resource_searching_radius = 2.49,
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "mining-drill",
      vector_to_place_result = { 0, -1.85 }
    },
    ["burner-mining-drill"] = {
      animations = {
        east = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/burner-mining-drill/east.png",
          frame_count = 32,
          frame_height = 74,
          frame_width = 94,
          line_length = 4,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.45, -0.1 }
        },
        north = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/burner-mining-drill/north.png",
          frame_count = 32,
          frame_height = 76,
          frame_width = 110,
          line_length = 4,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.7, -0.1 }
        },
        south = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/burner-mining-drill/south.png",
          frame_count = 32,
          frame_height = 88,
          frame_width = 89,
          line_length = 4,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.4, 0 }
        },
        west = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/burner-mining-drill/west.png",
          frame_count = 32,
          frame_height = 78,
          frame_width = 91,
          line_length = 4,
          priority = "extra-high",
          run_mode = "forward-then-backward",
          shift = { 0.1, -0.05 }
        }
      },
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      corpse = "medium-remnants",
      energy_source = {
        effectivity = 1,
        emissions = 0.033333333333333,
        fuel_inventory_size = 1,
        smoke = { {
            deviation = { 0.1, 0.1 },
            frequency = 1,
            name = "smoke"
          } },
        type = "burner"
      },
      energy_usage = "300W",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/burner-mining-drill.png",
      max_health = 100,
      minable = {
        mining_time = 1,
        result = "burner-mining-drill"
      },
      mining_power = 2.5,
      mining_speed = 0.35,
      name = "burner-mining-drill",
      pipe_length = 1,
      resource_searching_radius = 0.99,
      selection_box = { { -1, -1 }, { 1, 1 } },
      type = "mining-drill",
      vector_to_place_result = { -0.5, -1.3 }
    }
  },
  ["mining-tool"] = {
    ["iron-axe"] = {
      action = {
        action_delivery = {
          target_effects = {
            damage = {
              amount = 5,
              type = "physical"
            },
            type = "damage"
          },
          type = "instant"
        },
        type = "direct"
      },
      durability = 4000,
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/iron-axe.png",
      name = "iron-axe",
      order = "d-b",
      speed = 2.5,
      stack_size = 32,
      type = "mining-tool"
    },
    ["steel-axe"] = {
      action = {
        action_delivery = {
          target_effects = {
            damage = {
              amount = 8,
              type = "physical"
            },
            type = "damage"
          },
          type = "instant"
        },
        type = "direct"
      },
      durability = 5000,
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/steel-axe.png",
      name = "steel-axe",
      order = "d-b",
      speed = 4,
      stack_size = 32,
      type = "mining-tool"
    }
  },
  module = {
    ["effectivity-module"] = {
      effect = {
        consumption = {
          bonus = -0.4
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/effectivity-module.png",
      name = "effectivity-module",
      order = "m-c-a",
      stack_size = 64,
      type = "module"
    },
    ["effectivity-module-2"] = {
      effect = {
        consumption = {
          bonus = -0.6
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/effectivity-module-2.png",
      name = "effectivity-module-2",
      order = "m-c-b",
      stack_size = 64,
      type = "module"
    },
    ["effectivity-module-3"] = {
      effect = {
        consumption = {
          bonus = -0.8
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/effectivity-module-3.png",
      name = "effectivity-module-3",
      order = "m-c-c",
      stack_size = 64,
      type = "module"
    },
    ["productivity-module"] = {
      effect = {
        consumption = {
          bonus = 0.5
        },
        pollution = {
          bonus = 0.3
        },
        productivity = {
          bonus = 0.05
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/productivity-module.png",
      name = "productivity-module",
      order = "m-b-a",
      stack_size = 64,
      type = "module"
    },
    ["productivity-module-2"] = {
      effect = {
        consumption = {
          bonus = 0.7
        },
        pollution = {
          bonus = 0.4
        },
        productivity = {
          bonus = 0.1
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/productivity-module-2.png",
      name = "productivity-module-2",
      order = "m-b-b",
      stack_size = 64,
      type = "module"
    },
    ["productivity-module-3"] = {
      effect = {
        consumption = {
          bonus = 0.9
        },
        pollution = {
          bonus = 0.5
        },
        productivity = {
          bonus = 0.15
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/productivity-module-3.png",
      name = "productivity-module-3",
      order = "m-b-c",
      stack_size = 64,
      type = "module"
    },
    ["speed-module"] = {
      effect = {
        consumption = {
          bonus = 0.5
        },
        speed = {
          bonus = 0.2
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/speed-module.png",
      name = "speed-module",
      order = "m-a-a",
      stack_size = 64,
      type = "module"
    },
    ["speed-module-2"] = {
      effect = {
        consumption = {
          bonus = 0.6
        },
        speed = {
          bonus = 0.3
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/speed-module-2.png",
      name = "speed-module-2",
      order = "m-a-b",
      stack_size = 64,
      type = "module"
    },
    ["speed-module-3"] = {
      effect = {
        consumption = {
          bonus = 0.7
        },
        speed = {
          bonus = 0.5
        }
      },
      flags = { "goes-to-main-inventory" },
      group = "production",
      icon = "__base__/graphics/icons/speed-module-3.png",
      name = "speed-module-3",
      order = "m-a-c",
      stack_size = 64,
      type = "module"
    }
  },
  ["movement-bonus-equipment"] = {
    ["basic-exoskeleton-equipment"] = {
      energy_consumption = "200W",
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      movement_bonus = 0.3,
      name = "basic-exoskeleton-equipment",
      shape = {
        height = 4,
        type = "full",
        width = 2
      },
      sprite = {
        filename = "__base__/graphics/equipment/basic-exoskeleton-equipment.png",
        height = 128,
        priority = "medium",
        width = 64
      },
      type = "movement-bonus-equipment"
    }
  },
  ["night-vision-equipment"] = {
    ["night-vision-equipment"] = {
      energy_input = "10W",
      energy_source = {
        buffer_capacity = "120J",
        input_flow_limit = "120W",
        input_priority = "primary",
        type = "electric"
      },
      name = "night-vision-equipment",
      shape = {
        height = 2,
        type = "full",
        width = 3
      },
      sprite = {
        filename = "__base__/graphics/equipment/night-vision-equipment.png",
        height = 64,
        priority = "medium",
        width = 96
      },
      type = "night-vision-equipment"
    }
  },
  ["noise-layer"] = {
    coal = {
      name = "coal",
      type = "noise-layer"
    },
    ["copper-ore"] = {
      name = "copper-ore",
      type = "noise-layer"
    },
    dirt = {
      name = "dirt",
      type = "noise-layer"
    },
    ["dry-trees"] = {
      name = "dry-trees",
      type = "noise-layer"
    },
    ["enemy-base"] = {
      name = "enemy-base",
      type = "noise-layer"
    },
    grass = {
      name = "grass",
      type = "noise-layer"
    },
    ["grass-dry"] = {
      name = "grass-dry",
      type = "noise-layer"
    },
    ["iron-ore"] = {
      name = "iron-ore",
      type = "noise-layer"
    },
    sand = {
      name = "sand",
      type = "noise-layer"
    },
    stone = {
      name = "stone",
      type = "noise-layer"
    },
    ["terrain-dark"] = {
      name = "terrain-dark",
      type = "noise-layer"
    },
    trees = {
      name = "trees",
      type = "noise-layer"
    }
  },
  particle = {
    ["coal-particle"] = {
      flags = {},
      life_time = 180,
      name = "coal-particle",
      pictures = { {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-2.png",
          frame_count = 1,
          frame_height = 6,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-3.png",
          frame_count = 1,
          frame_height = 6,
          frame_width = 3,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-4.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 4,
          priority = "extra-high"
        } },
      shadows = { {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-2.png",
          frame_count = 1,
          frame_height = 6,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-3.png",
          frame_count = 1,
          frame_height = 6,
          frame_width = 3,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-4.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 6,
          priority = "extra-high"
        } },
      type = "particle"
    },
    ["copper-ore-particle"] = {
      flags = {},
      life_time = 180,
      name = "copper-ore-particle",
      pictures = { {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-2.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 6,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-3.png",
          frame_count = 1,
          frame_height = 8,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-4.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 6,
          priority = "extra-high"
        } },
      shadows = { {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-2.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 6,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-3.png",
          frame_count = 1,
          frame_height = 8,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-4.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 6,
          priority = "extra-high"
        } },
      type = "particle"
    },
    ["iron-ore-particle"] = {
      flags = {},
      life_time = 180,
      name = "iron-ore-particle",
      pictures = { {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-2.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-3.png",
          frame_count = 1,
          frame_height = 7,
          frame_width = 6,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-4.png",
          frame_count = 1,
          frame_height = 8,
          frame_width = 9,
          priority = "extra-high"
        } },
      shadows = { {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-2.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-3.png",
          frame_count = 1,
          frame_height = 7,
          frame_width = 6,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-4.png",
          frame_count = 1,
          frame_height = 8,
          frame_width = 9,
          priority = "extra-high"
        } },
      type = "particle"
    },
    ["shell-particle"] = {
      flags = {},
      life_time = 600,
      name = "shell-particle",
      pictures = { {
          filename = "__base__/graphics/entity/shell-particle/shell-particle-1.png",
          frame_count = 5,
          frame_height = 6,
          frame_width = 6,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/shell-particle/shell-particle-2.png",
          frame_count = 5,
          frame_height = 7,
          frame_width = 5,
          priority = "extra-high"
        } },
      shadows = { {
          filename = "__base__/graphics/entity/shell-particle/shell-particle-shadow-1.png",
          frame_count = 5,
          frame_height = 7,
          frame_width = 9,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/shell-particle/shell-particle-shadow-2.png",
          frame_count = 5,
          frame_height = 8,
          frame_width = 7,
          priority = "extra-high"
        } },
      type = "particle"
    },
    ["stone-particle"] = {
      flags = {},
      life_time = 180,
      name = "stone-particle",
      pictures = { {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-1.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-2.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 4,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-3.png",
          frame_count = 1,
          frame_height = 6,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-4.png",
          frame_count = 1,
          frame_height = 7,
          frame_width = 7,
          priority = "extra-high"
        } },
      shadows = { {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-1.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-2.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 4,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-3.png",
          frame_count = 1,
          frame_height = 6,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-4.png",
          frame_count = 1,
          frame_height = 7,
          frame_width = 7,
          priority = "extra-high"
        } },
      type = "particle"
    },
    ["wooden-particle"] = {
      flags = {},
      life_time = 180,
      name = "wooden-particle",
      pictures = { {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-2.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 6,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-3.png",
          frame_count = 1,
          frame_height = 8,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-4.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 6,
          priority = "extra-high"
        } },
      shadows = { {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-1.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 5,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-2.png",
          frame_count = 1,
          frame_height = 4,
          frame_width = 6,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-3.png",
          frame_count = 1,
          frame_height = 8,
          frame_width = 7,
          priority = "extra-high"
        }, {
          filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-4.png",
          frame_count = 1,
          frame_height = 5,
          frame_width = 6,
          priority = "extra-high"
        } },
      type = "particle"
    }
  },
  pipe = {
    pipe = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "pipe",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/pipe.png",
      max_health = 50,
      max_liquid_amount = 10,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "pipe"
      },
      name = "pipe",
      pictures = {
        corner_down_left = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-down-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        corner_down_right = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-down-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        corner_up_left = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-up-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        corner_up_right = {
          filename = "__base__/graphics/entity/pipe/pipe-corner-up-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        cross = {
          filename = "__base__/graphics/entity/pipe/pipe-cross.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_down = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-down.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_left = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_right = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        ending_up = {
          filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_horizontal = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_horizontal_window = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal-window.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_vertical = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        straight_vertical_window = {
          filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-window.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_down = {
          filename = "__base__/graphics/entity/pipe/pipe-t-down.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_left = {
          filename = "__base__/graphics/entity/pipe/pipe-t-left.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_right = {
          filename = "__base__/graphics/entity/pipe/pipe-t-right.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        t_up = {
          filename = "__base__/graphics/entity/pipe/pipe-t-up.png",
          height = 32,
          priority = "extra-high",
          width = 32
        },
        water_flow = {
          filename = "__base__/graphics/entity/pipe/water-flow.png",
          height = 20,
          priority = "extra-high",
          width = 128
        },
        water_flow_background = {
          filename = "__base__/graphics/entity/pipe/water-flow-background.png",
          height = 20,
          priority = "extra-high",
          width = 32
        }
      },
      resistances = { {
          percent = 90,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "pipe"
    }
  },
  ["pipe-to-ground"] = {
    ["pipe-to-ground"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/pipe-to-ground.png",
      max_health = 50,
      max_liquid_amount = 10,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "pipe-to-ground"
      },
      name = "pipe-to-ground",
      pictures = {
        down = {
          filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
          height = 32,
          priority = "high",
          width = 32
        },
        left = {
          filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
          height = 38,
          priority = "high",
          shift = { 0, 0.1 },
          width = 34
        },
        right = {
          filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
          height = 38,
          priority = "high",
          shift = { 0.1, 0.1 },
          width = 34
        },
        up = {
          filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
          height = 32,
          priority = "high",
          width = 32
        }
      },
      resistances = { {
          percent = 80,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "pipe-to-ground",
      underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        height = 32,
        priority = "high",
        width = 32
      }
    }
  },
  player = {
    player = {
      collision_box = { { -0.2, -0.2 }, { 0.2, 0.2 } },
      crafting_categories = { "crafting" },
      distance_per_frame = 0.13,
      eat = { {
          filename = "__base__/sound/eat.wav",
          volume = 1
        } },
      flags = { "pushable", "placeable-player", "placeable-off-grid", "breaths-air", "not-repairable" },
      healing_per_tick = 0.01,
      heartbeat = { {
          filename = "__base__/sound/heartbeat.ogg",
          volume = 1.5
        } },
      icon = "__base__/graphics/icons/player.png",
      idle_animation = {
        direction_count = 5,
        frame_count = 120,
        frame_height = 66,
        frame_width = 48,
        priority = "medium",
        shift = { 0, -0.6 },
        stripes = { {
            filename = "__base__/graphics/entity/player/character-idle-1.png",
            width_in_frames = 40
          }, {
            filename = "__base__/graphics/entity/player/character-idle-2.png",
            width_in_frames = 40
          }, {
            filename = "__base__/graphics/entity/player/character-idle-3.png",
            width_in_frames = 40
          } }
      },
      idle_with_gun_animation = {
        direction_count = 5,
        frame_count = 120,
        frame_height = 66,
        frame_width = 48,
        priority = "medium",
        shift = { 0, -0.6 },
        stripes = { {
            filename = "__base__/graphics/entity/player/character-idle-with-gun-1.png",
            width_in_frames = 40
          }, {
            filename = "__base__/graphics/entity/player/character-idle-with-gun-2.png",
            width_in_frames = 40
          }, {
            filename = "__base__/graphics/entity/player/character-idle-with-gun-3.png",
            width_in_frames = 40
          } }
      },
      inventory_size = 60,
      light = { {
          intensity = 0.4,
          minimum_darkness = 0.3,
          size = 25
        }, {
          intensity = 0.6,
          minimum_darkness = 0.3,
          picture = {
            filename = "__core__/graphics/light-cone.png",
            height = 400,
            priority = "medium",
            width = 400
          },
          shift = { 0, -13 },
          size = 2,
          type = "oriented"
        } },
      max_health = 100,
      maximum_corner_sliding_distance = 0.7,
      mining_speed = 0.01,
      mining_with_hands_animation = {
        direction_count = 5,
        frame_count = 80,
        frame_height = 66,
        frame_width = 48,
        priority = "medium",
        shift = { 0, -0.6 },
        stripes = { {
            filename = "__base__/graphics/entity/player/character-mine-with-hands-1.png",
            width_in_frames = 40
          }, {
            filename = "__base__/graphics/entity/player/character-mine-with-hands-2.png",
            width_in_frames = 40
          } }
      },
      mining_with_hands_particles_animation_positions = { 29, 63 },
      mining_with_tool_animation = {
        direction_count = 5,
        frame_count = 48,
        frame_height = 88,
        frame_width = 64,
        priority = "medium",
        shift = { 0, -0.6 },
        stripes = { {
            filename = "__base__/graphics/entity/player/character-mine-with-tool-1.png",
            width_in_frames = 24
          }, {
            filename = "__base__/graphics/entity/player/character-mine-with-tool-2.png",
            width_in_frames = 24
          } }
      },
      mining_with_tool_particles_animation_positions = { 28 },
      name = "player",
      order = "a",
      running_aim = {
        direction_count = 18,
        filename = "__base__/graphics/entity/player/character-clothes-run-aim.png",
        frame_count = 30,
        frame_height = 72,
        frame_width = 58,
        priority = "medium",
        shift = { 0, -0.6 }
      },
      running_animation = {
        direction_count = 5,
        filename = "__base__/graphics/entity/player/character-clothes-run.png",
        frame_count = 30,
        frame_height = 66,
        frame_width = 48,
        priority = "medium",
        shift = { 0, -0.6 }
      },
      running_mask_animation = {
        direction_count = 5,
        filename = "__base__/graphics/entity/player/character-clothes-run-mask.png",
        frame_count = 30,
        frame_height = 66,
        frame_width = 48,
        priority = "medium",
        shift = { 0, -0.6 }
      },
      running_sound_animation_positions = { 14, 29 },
      running_speed = 0.15,
      selection_box = { { -0.2, -0.2 }, { 0.2, 0.2 } },
      type = "player"
    }
  },
  ["player-port"] = {
    ["player-port"] = {
      animation = {
        filename = "__base__/graphics/entity/player-port/player-port-animation.png",
        frame_count = 2,
        frame_height = 64,
        frame_width = 64
      },
      collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/player-port.png",
      max_health = 50,
      minable = {
        mining_time = 1,
        result = "player-port"
      },
      name = "player-port",
      selection_box = { { -1, -1 }, { 1, 1 } },
      type = "player-port"
    }
  },
  projectile = {
    ["acid-projectile-purple"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "acid-splash-purple",
              type = "create-entity"
            }, {
              damage = {
                amount = 10,
                type = "acid"
              },
              type = "damage"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple.png",
        frame_count = 33,
        frame_height = 18,
        frame_width = 16,
        line_length = 5,
        priority = "high"
      },
      name = "acid-projectile-purple",
      rotatable = false,
      shadow = {
        filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple-shadow.png",
        frame_count = 33,
        frame_height = 16,
        frame_width = 28,
        line_length = 5,
        priority = "high",
        shift = { -0.09, 0.395 }
      },
      type = "projectile"
    },
    ["basic-grenade"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "huge-explosion",
              type = "create-entity"
            }, {
              action = {
                action_delivery = {
                  target_effects = { {
                      damage = {
                        amount = 25,
                        type = "explosion"
                      },
                      type = "damage"
                    }, {
                      entity_name = "explosion",
                      type = "create-entity"
                    } },
                  type = "instant"
                },
                perimeter = 5,
                type = "area"
              },
              type = "nested-result"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/basic-grenade/basic-grenade.png",
        frame_count = 1,
        frame_height = 24,
        frame_width = 24,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "basic-grenade",
      shadow = {
        filename = "__base__/graphics/entity/basic-grenade/basic-grenade-shadow.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 24,
        priority = "high"
      },
      type = "projectile"
    },
    ["blue-laser"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "laser-bubble",
              type = "create-entity"
            }, {
              damage = {
                amount = 10,
                type = "laser"
              },
              type = "damage"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/blue-laser/blue-laser.png",
        frame_count = 1,
        frame_height = 14,
        frame_width = 7,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 10
      },
      name = "blue-laser",
      speed = 0.15,
      type = "projectile"
    },
    ["defender-capsule"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "defender",
              type = "create-entity"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/combat-robot-capsule/defender-capsule.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "defender-capsule",
      shadow = {
        filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      smoke = { {
          deviation = { 0.15, 0.15 },
          frequency = 1,
          name = "smoke-fast",
          position = { 0, 0 },
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        } },
      type = "projectile"
    },
    ["destroyer-capsule"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "destroyer",
              offset = { -0.7, -0.7 },
              type = "create-entity"
            }, {
              entity_name = "destroyer",
              offset = { -0.7, 0.7 },
              type = "create-entity"
            }, {
              entity_name = "destroyer",
              offset = { 0.7, -0.7 },
              type = "create-entity"
            }, {
              entity_name = "destroyer",
              offset = { 0.7, 0.7 },
              type = "create-entity"
            }, {
              entity_name = "destroyer",
              offset = { 0, 0 },
              type = "create-entity"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "destroyer-capsule",
      shadow = {
        filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      smoke = { {
          deviation = { 0.15, 0.15 },
          frequency = 1,
          name = "smoke-fast",
          position = { 0, 0 },
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        } },
      type = "projectile"
    },
    ["distractor-capsule"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "distractor",
              offset = { 0.5, -0.5 },
              type = "create-entity"
            }, {
              entity_name = "distractor",
              offset = { -0.5, -0.5 },
              type = "create-entity"
            }, {
              entity_name = "distractor",
              offset = { 0, 0.5 },
              type = "create-entity"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "distractor-capsule",
      shadow = {
        filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      smoke = { {
          deviation = { 0.15, 0.15 },
          frequency = 1,
          name = "smoke-fast",
          position = { 0, 0 },
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        } },
      type = "projectile"
    },
    ["explosive-rocket"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "explosion",
              type = "create-entity"
            }, {
              action = {
                action_delivery = {
                  target_effects = { {
                      damage = {
                        amount = 40,
                        type = "explosion"
                      },
                      type = "damage"
                    }, {
                      entity_name = "explosion",
                      type = "create-entity"
                    } },
                  type = "instant"
                },
                perimeter = 6,
                type = "area"
              },
              type = "nested-result"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/rocket/rocket.png",
        frame_count = 1,
        frame_height = 30,
        frame_width = 10,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "explosive-rocket",
      shadow = {
        filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
        frame_count = 1,
        frame_height = 30,
        frame_width = 10,
        priority = "high"
      },
      smoke = { {
          deviation = { 0.15, 0.15 },
          frequency = 1,
          name = "smoke-fast",
          position = { 0, 0 },
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        } },
      type = "projectile"
    },
    laser = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "laser-bubble",
              type = "create-entity"
            }, {
              damage = {
                amount = 5,
                type = "laser"
              },
              type = "damage"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/laser/laser.png",
        frame_count = 1,
        frame_height = 14,
        frame_width = 7,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 10
      },
      name = "laser",
      speed = 0.15,
      type = "projectile"
    },
    ["piercing-shotgun-pellet"] = {
      acceleration = 0,
      action = {
        action_delivery = {
          target_effects = {
            damage = {
              amount = 6,
              type = "physical"
            },
            type = "damage"
          },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
        frame_count = 1,
        frame_height = 50,
        frame_width = 3,
        priority = "high"
      },
      collision_box = { { -0.05, -1 }, { 0.05, 1 } },
      direction_only = true,
      name = "piercing-shotgun-pellet",
      type = "projectile"
    },
    ["poison-capsule"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = {
            entity_name = "poison-cloud",
            type = "create-entity"
          },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/poison-capsule/poison-capsule.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "poison-capsule",
      shadow = {
        filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      smoke = { {
          deviation = { 0.15, 0.15 },
          frequency = 1,
          name = "smoke-fast",
          position = { 0, 0 },
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        } },
      type = "projectile"
    },
    rocket = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = { {
              entity_name = "explosion",
              type = "create-entity"
            }, {
              damage = {
                amount = 60,
                type = "explosion"
              },
              type = "damage"
            } },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/rocket/rocket.png",
        frame_count = 1,
        frame_height = 30,
        frame_width = 10,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "rocket",
      shadow = {
        filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
        frame_count = 1,
        frame_height = 30,
        frame_width = 10,
        priority = "high"
      },
      smoke = { {
          deviation = { 0.15, 0.15 },
          frequency = 1,
          name = "smoke-fast",
          position = { 0, 0 },
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        } },
      type = "projectile"
    },
    ["shotgun-pellet"] = {
      acceleration = 0,
      action = {
        action_delivery = {
          target_effects = {
            damage = {
              amount = 4,
              type = "physical"
            },
            type = "damage"
          },
          type = "instant"
        },
        type = "direct"
      },
      animation = {
        filename = "__base__/graphics/entity/bullet/bullet.png",
        frame_count = 1,
        frame_height = 50,
        frame_width = 3,
        priority = "high"
      },
      collision_box = { { -0.05, -1 }, { 0.05, 1 } },
      direction_only = true,
      name = "shotgun-pellet",
      type = "projectile"
    },
    ["slowdown-capsule"] = {
      acceleration = 0.005,
      action = {
        action_delivery = {
          target_effects = {
            sticker = "slowdown-sticker",
            type = "create-sticker"
          },
          type = "instant"
        },
        perimeter = 9,
        type = "area"
      },
      animation = {
        filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      light = {
        intensity = 0.5,
        size = 4
      },
      name = "slowdown-capsule",
      shadow = {
        filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule-shadow.png",
        frame_count = 1,
        frame_height = 32,
        frame_width = 32,
        priority = "high"
      },
      smoke = { {
          deviation = { 0.15, 0.15 },
          frequency = 1,
          name = "smoke-fast",
          position = { 0, 0 },
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        } },
      type = "projectile"
    }
  },
  pump = {
    pump = {
      collision_box = { { -0.6, -0.3 }, { 0.6, 0.3 } },
      corpse = "small-remnants",
      flags = { "placeable-neutral", "player-creation", "filter-directions" },
      icon = "__base__/graphics/icons/pump.png",
      max_health = 80,
      minable = {
        mining_time = 1,
        result = "pump"
      },
      name = "pump",
      picture = {
        height = 102,
        priority = "high",
        sheet = "__base__/graphics/entity/pump/pump.png",
        shift = { 0.9, 0.05 },
        width = 160
      },
      resistances = { {
          percent = 70,
          type = "fire"
        } },
      selection_box = { { -1, -0.49 }, { 1, 1.49 } },
      tile_width = 1,
      type = "pump"
    }
  },
  radar = {
    radar = {
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      corpse = "big-remnants",
      energy_per_nearby_scan = "500J",
      energy_per_sector = "20KJ",
      energy_source = {
        input_priority = "secondary",
        type = "electric"
      },
      energy_usage = "600W",
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/radar.png",
      max_distance_of_sector_revealed = 14,
      max_health = 150,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "radar"
      },
      name = "radar",
      pictures = {
        axially_symmetrical = false,
        direction_count = 64,
        filename = "__base__/graphics/entity/radar/radar.png",
        frame_height = 140,
        frame_width = 169,
        line_length = 8,
        priority = "low",
        shift = { 1.15, 0.75 }
      },
      resistances = { {
          percent = 70,
          type = "fire"
        } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "radar"
    }
  },
  rail = {
    ["curved-rail"] = {
      bending_type = "turn",
      collision_box = { { -0.75, -0.65 }, { 0.75, 1.7 } },
      corpse = "curved-rail-remnants",
      flags = { "placeable-neutral", "player-creation", "building-direction-8-way" },
      icon = "__base__/graphics/icons/curved-rail.png",
      max_health = 200,
      minable = {
        mining_time = 1,
        result = "curved-rail"
      },
      name = "curved-rail",
      pictures = {
        curved_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-backplates.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties.png",
            height = 128,
            priority = "extra-high",
            width = 256
          }
        },
        curved_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-backplates.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties.png",
            height = 256,
            priority = "extra-high",
            width = 128
          }
        },
        straight_rail_diagonal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-backplates.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-backplates.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-backplates.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        }
      },
      rail_category = "regular",
      secondary_collision_box = { { -0.85, -2.6 }, { 0.85, 2.6 } },
      selection_box = { { -1.7, -0.8 }, { 1.7, 0.8 } },
      type = "rail"
    },
    ["straight-rail"] = {
      bending_type = "straight",
      collision_box = { { -0.7, -0.8 }, { 0.7, 0.8 } },
      corpse = "straight-rail-remnants",
      flags = { "placeable-neutral", "player-creation", "building-direction-8-way" },
      icon = "__base__/graphics/icons/straight-rail.png",
      max_health = 100,
      minable = {
        mining_time = 1,
        result = "straight-rail"
      },
      name = "straight-rail",
      pictures = {
        curved_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-backplates.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties.png",
            height = 128,
            priority = "extra-high",
            width = 256
          }
        },
        curved_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-backplates.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties.png",
            height = 256,
            priority = "extra-high",
            width = 128
          }
        },
        straight_rail_diagonal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-backplates.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-backplates.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-backplates.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        }
      },
      rail_category = "regular",
      selection_box = { { -0.7, -0.8 }, { 0.7, 0.8 } },
      type = "rail"
    }
  },
  ["rail-category"] = {
    regular = {
      name = "regular",
      type = "rail-category"
    }
  },
  ["rail-remnants"] = {
    ["curved-rail-remnants"] = {
      bending_type = "turn",
      flags = { "placeable-neutral", "building-direction-8-way" },
      icon = "__base__/graphics/icons/curved-rail-remnants.png",
      name = "curved-rail-remnants",
      order = "c-e",
      pictures = {
        curved_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties-remnants.png",
            height = 128,
            priority = "extra-high",
            width = 256
          }
        },
        curved_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties-remnants.png",
            height = 256,
            priority = "extra-high",
            width = 128
          }
        },
        straight_rail_diagonal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        }
      },
      selectable_in_game = false,
      selection_box = { { -1.7, -0.8 }, { 1.7, 0.8 } },
      tile_height = 8,
      tile_width = 4,
      time_before_removed = 162000,
      time_before_shading_off = 3600,
      type = "rail-remnants"
    },
    ["straight-rail-remnants"] = {
      bending_type = "straight",
      flags = { "placeable-neutral", "building-direction-8-way" },
      icon = "__base__/graphics/icons/straight-rail-remnants.png",
      name = "straight-rail-remnants",
      order = "c-d",
      pictures = {
        curved_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
            height = 128,
            priority = "extra-high",
            width = 256
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties-remnants.png",
            height = 128,
            priority = "extra-high",
            width = 256
          }
        },
        curved_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          metals = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          stone_path = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
            height = 256,
            priority = "extra-high",
            width = 128
          },
          ties = {
            filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties-remnants.png",
            height = 256,
            priority = "extra-high",
            width = 128
          }
        },
        straight_rail_diagonal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_horizontal = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        },
        straight_rail_vertical = {
          backplates = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          metals = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          stone_path = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
            height = 64,
            priority = "extra-high",
            width = 64
          },
          ties = {
            filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties-remnants.png",
            height = 64,
            priority = "extra-high",
            width = 64
          }
        }
      },
      selectable_in_game = false,
      selection_box = { { -0.6, -0.8 }, { 0.6, 0.8 } },
      tile_height = 2,
      tile_width = 2,
      time_before_removed = 162000,
      time_before_shading_off = 3600,
      type = "rail-remnants"
    }
  },
  ["rail-signal"] = {
    ["rail-signal"] = {
      animation = {
        axially_symmetrical = false,
        direction_count = 8,
        filename = "__base__/graphics/entity/rail-signal/rail-signal.png",
        frame_count = 3,
        frame_height = 46,
        frame_width = 70,
        priority = "high"
      },
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      corpse = "small-remnants",
      flags = { "placeable-neutral", "player-creation", "building-direction-8-way", "filter-directions" },
      green_light = {
        color = {
          g = 1
        },
        intensity = 0.2,
        size = 4
      },
      icon = "__base__/graphics/icons/rail-signal.png",
      max_health = 80,
      minable = {
        mining_time = 1,
        result = "rail-signal"
      },
      name = "rail-signal",
      orange_light = {
        color = {
          g = 0.5,
          r = 1
        },
        intensity = 0.2,
        size = 4
      },
      red_light = {
        color = {
          r = 1
        },
        intensity = 0.2,
        size = 4
      },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "rail-signal"
    }
  },
  recipe = {
    ["advanced-circuit"] = {
      enabled = "false",
      energy_required = 3,
      ingredients = { { "electronic-circuit", 4 }, { "copper-cable", 4 } },
      name = "advanced-circuit",
      result = "advanced-circuit",
      type = "recipe"
    },
    ["alien-science-pack"] = {
      enabled = "false",
      energy_required = 12,
      ingredients = { { "alien-artifact", 1 } },
      name = "alien-science-pack",
      result = "alien-science-pack",
      result_count = 10,
      type = "recipe"
    },
    ["assembling-machine-1"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 3 }, { "iron-gear-wheel", 5 }, { "iron-plate", 9 } },
      name = "assembling-machine-1",
      result = "assembling-machine-1",
      type = "recipe"
    },
    ["assembling-machine-2"] = {
      enabled = "false",
      ingredients = { { "iron-plate", 9 }, { "electronic-circuit", 3 }, { "iron-gear-wheel", 5 }, { "assembling-machine-1", 1 } },
      name = "assembling-machine-2",
      result = "assembling-machine-2",
      type = "recipe"
    },
    ["assembling-machine-3"] = {
      enabled = "false",
      ingredients = { { "speed-module", 4 }, { "assembling-machine-2", 2 } },
      name = "assembling-machine-3",
      result = "assembling-machine-3",
      type = "recipe"
    },
    ["basic-accumulator"] = {
      enabled = "false",
      ingredients = { { "iron-plate", 2 }, { "copper-plate", 5 }, { "electronic-circuit", 20 } },
      name = "basic-accumulator",
      result = "basic-accumulator",
      type = "recipe"
    },
    ["basic-armor"] = {
      enabled = "false",
      energy_required = 3,
      ingredients = { { "iron-plate", 40 } },
      name = "basic-armor",
      result = "basic-armor",
      type = "recipe"
    },
    ["basic-beacon"] = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "electronic-circuit", 20 }, { "advanced-circuit", 20 }, { "steel-plate", 10 }, { "copper-cable", 10 } },
      name = "basic-beacon",
      result = "basic-beacon",
      type = "recipe"
    },
    ["basic-bullet-magazine"] = {
      energy_required = 2,
      ingredients = { { "iron-plate", 2 } },
      name = "basic-bullet-magazine",
      result = "basic-bullet-magazine",
      result_count = 1,
      type = "recipe"
    },
    ["basic-electric-discharge-defense-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "speed-module", 5 }, { "steel-plate", 20 }, { "laser-turret", 10 } },
      name = "basic-electric-discharge-defense-equipment",
      result = "basic-electric-discharge-defense-equipment",
      type = "recipe"
    },
    ["basic-electric-discharge-defense-remote"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 1 } },
      name = "basic-electric-discharge-defense-remote",
      result = "basic-electric-discharge-defense-remote",
      type = "recipe"
    },
    ["basic-exoskeleton-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "speed-module", 10 }, { "steel-plate", 20 }, { "iron-gear-wheel", 30 } },
      name = "basic-exoskeleton-equipment",
      result = "basic-exoskeleton-equipment",
      type = "recipe"
    },
    ["basic-grenade"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "iron-plate", 5 }, { "coal", 10 } },
      name = "basic-grenade",
      result = "basic-grenade",
      type = "recipe"
    },
    ["basic-inserter"] = {
      ingredients = { { "electronic-circuit", 1 }, { "iron-gear-wheel", 1 }, { "iron-plate", 1 } },
      name = "basic-inserter",
      result = "basic-inserter",
      type = "recipe"
    },
    ["basic-laser-defense-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "speed-module", 1 }, { "steel-plate", 5 }, { "laser-turret", 5 } },
      name = "basic-laser-defense-equipment",
      result = "basic-laser-defense-equipment",
      type = "recipe"
    },
    ["basic-mining-drill"] = {
      energy_required = 2,
      ingredients = { { "electronic-circuit", 3 }, { "iron-gear-wheel", 5 }, { "iron-plate", 10 } },
      name = "basic-mining-drill",
      result = "basic-mining-drill",
      type = "recipe"
    },
    ["basic-modular-armor"] = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "advanced-circuit", 30 }, { "speed-module", 5 }, { "steel-plate", 50 } },
      name = "basic-modular-armor",
      result = "basic-modular-armor",
      type = "recipe"
    },
    ["basic-splitter"] = {
      enabled = "false",
      energy_required = 1,
      ingredients = { { "electronic-circuit", 5 }, { "iron-plate", 10 }, { "basic-transport-belt", 4 } },
      name = "basic-splitter",
      result = "basic-splitter",
      type = "recipe"
    },
    ["basic-transport-belt"] = {
      ingredients = { { "iron-plate", 1 }, { "iron-gear-wheel", 1 } },
      name = "basic-transport-belt",
      result = "basic-transport-belt",
      result_count = 2,
      type = "recipe"
    },
    ["basic-transport-belt-to-ground"] = {
      enabled = "false",
      energy_required = 1,
      ingredients = { { "iron-plate", 20 }, { "basic-transport-belt", 6 } },
      name = "basic-transport-belt-to-ground",
      result = "basic-transport-belt-to-ground",
      result_count = 2,
      type = "recipe"
    },
    ["battery-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "speed-module", 5 }, { "steel-plate", 10 } },
      name = "battery-equipment",
      result = "battery-equipment",
      type = "recipe"
    },
    ["battery-mk2-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "battery-equipment", 10 }, { "speed-module-2", 5 } },
      name = "battery-mk2-equipment",
      result = "battery-mk2-equipment",
      type = "recipe"
    },
    ["big-electric-pole"] = {
      enabled = "false",
      ingredients = { { "steel-plate", 5 }, { "copper-plate", 5 } },
      name = "big-electric-pole",
      result = "big-electric-pole",
      type = "recipe"
    },
    boiler = {
      ingredients = { { "stone-furnace", 1 }, { "pipe", 1 } },
      name = "boiler",
      result = "boiler",
      type = "recipe"
    },
    ["burner-inserter"] = {
      ingredients = { { "iron-plate", 1 }, { "iron-gear-wheel", 1 } },
      name = "burner-inserter",
      result = "burner-inserter",
      type = "recipe"
    },
    ["burner-mining-drill"] = {
      energy_required = 2,
      ingredients = { { "iron-gear-wheel", 3 }, { "stone-furnace", 1 }, { "iron-plate", 3 } },
      name = "burner-mining-drill",
      result = "burner-mining-drill",
      type = "recipe"
    },
    car = {
      enabled = "false",
      ingredients = { { "iron-stick", 5 }, { "electronic-circuit", 5 }, { "iron-gear-wheel", 10 }, { "iron-plate", 20 } },
      name = "car",
      result = "car",
      type = "recipe"
    },
    ["cargo-wagon"] = {
      enabled = "false",
      ingredients = { { "iron-gear-wheel", 10 }, { "iron-plate", 20 }, { "steel-plate", 5 } },
      name = "cargo-wagon",
      result = "cargo-wagon",
      type = "recipe"
    },
    ["combat-shotgun"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "steel-plate", 15 }, { "iron-gear-wheel", 5 }, { "copper-plate", 10 }, { "wood", 10 } },
      name = "combat-shotgun",
      result = "combat-shotgun",
      type = "recipe"
    },
    ["construction-robot"] = {
      enabled = "false",
      ingredients = { { "steel-plate", 4 }, { "iron-gear-wheel", 5 }, { "advanced-circuit", 2 } },
      name = "construction-robot",
      result = "construction-robot",
      type = "recipe"
    },
    ["copper-cable"] = {
      ingredients = { { "copper-plate", 1 } },
      name = "copper-cable",
      result = "copper-cable",
      result_count = 2,
      type = "recipe"
    },
    ["copper-plate"] = {
      category = "smelting",
      energy_required = 100,
      ingredients = { { "copper-ore", 1 } },
      name = "copper-plate",
      result = "copper-plate",
      type = "recipe"
    },
    ["curved-rail"] = {
      enabled = "false",
      ingredients = { { "stone", 4 }, { "iron-stick", 4 }, { "steel-plate", 4 } },
      name = "curved-rail",
      result = "curved-rail",
      result_count = 2,
      type = "recipe"
    },
    ["defender-capsule"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "piercing-bullet-magazine", 1 }, { "advanced-circuit", 1 }, { "iron-gear-wheel", 3 } },
      name = "defender-capsule",
      result = "defender-capsule",
      type = "recipe"
    },
    ["destroyer-capsule"] = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "distractor-capsule", 4 }, { "speed-module", 1 } },
      name = "destroyer-capsule",
      result = "destroyer-capsule",
      type = "recipe"
    },
    ["diesel-locomotive"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 5 }, { "iron-gear-wheel", 20 }, { "iron-plate", 20 }, { "steel-plate", 15 } },
      name = "diesel-locomotive",
      result = "diesel-locomotive",
      type = "recipe"
    },
    ["distractor-capsule"] = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "defender-capsule", 4 }, { "advanced-circuit", 3 } },
      name = "distractor-capsule",
      result = "distractor-capsule",
      type = "recipe"
    },
    ["effectivity-module"] = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
      name = "effectivity-module",
      result = "effectivity-module",
      type = "recipe"
    },
    ["effectivity-module-2"] = {
      enabled = "false",
      energy_required = 30,
      ingredients = { { "effectivity-module", 5 }, { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
      name = "effectivity-module-2",
      result = "effectivity-module-2",
      type = "recipe"
    },
    ["effectivity-module-3"] = {
      enabled = "false",
      energy_required = 60,
      ingredients = { { "effectivity-module-2", 5 }, { "advanced-circuit", 5 }, { "electronic-circuit", 5 }, { "alien-artifact", 1 } },
      name = "effectivity-module-3",
      result = "effectivity-module-3",
      type = "recipe"
    },
    ["electric-furnace"] = {
      enabled = "false",
      energy_required = 5,
      ingredients = { { "steel-plate", 15 }, { "advanced-circuit", 5 }, { "stone-brick", 10 } },
      name = "electric-furnace",
      result = "electric-furnace",
      type = "recipe"
    },
    ["electronic-circuit"] = {
      ingredients = { { "iron-plate", 1 }, { "copper-cable", 3 } },
      name = "electronic-circuit",
      result = "electronic-circuit",
      type = "recipe"
    },
    ["energy-shield-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "speed-module", 5 }, { "steel-plate", 10 } },
      name = "energy-shield-equipment",
      result = "energy-shield-equipment",
      type = "recipe"
    },
    ["energy-shield-mk2-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "energy-shield-equipment", 10 }, { "effectivity-module", 10 } },
      name = "energy-shield-mk2-equipment",
      result = "energy-shield-mk2-equipment",
      type = "recipe"
    },
    ["explosive-rocket"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "rocket", 1 }, { "coal", 5 } },
      name = "explosive-rocket",
      result = "explosive-rocket",
      type = "recipe"
    },
    ["express-splitter"] = {
      enabled = "false",
      energy_required = 2,
      ingredients = { { "advanced-circuit", 10 }, { "iron-gear-wheel", 20 }, { "express-transport-belt", 4 } },
      name = "express-splitter",
      result = "express-splitter",
      type = "recipe"
    },
    ["express-transport-belt"] = {
      enabled = "false",
      ingredients = { { "iron-gear-wheel", 10 }, { "fast-transport-belt", 1 } },
      name = "express-transport-belt",
      result = "express-transport-belt",
      type = "recipe"
    },
    ["express-transport-belt-to-ground"] = {
      enabled = "false",
      ingredients = { { "express-transport-belt", 6 }, { "iron-plate", 20 } },
      name = "express-transport-belt-to-ground",
      result = "express-transport-belt-to-ground",
      result_count = 2,
      type = "recipe"
    },
    ["fast-inserter"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 2 }, { "iron-plate", 2 }, { "basic-inserter", 1 } },
      name = "fast-inserter",
      result = "fast-inserter",
      type = "recipe"
    },
    ["fast-splitter"] = {
      enabled = "false",
      energy_required = 2,
      ingredients = { { "electronic-circuit", 10 }, { "iron-gear-wheel", 10 }, { "fast-transport-belt", 4 } },
      name = "fast-splitter",
      result = "fast-splitter",
      type = "recipe"
    },
    ["fast-transport-belt"] = {
      enabled = "false",
      ingredients = { { "iron-gear-wheel", 5 }, { "basic-transport-belt", 1 } },
      name = "fast-transport-belt",
      result = "fast-transport-belt",
      type = "recipe"
    },
    ["fast-transport-belt-to-ground"] = {
      enabled = "false",
      ingredients = { { "iron-plate", 20 }, { "fast-transport-belt", 6 } },
      name = "fast-transport-belt-to-ground",
      result = "fast-transport-belt-to-ground",
      result_count = 2,
      type = "recipe"
    },
    ["flame-thrower"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "steel-plate", 40 }, { "iron-gear-wheel", 20 } },
      name = "flame-thrower",
      result = "flame-thrower",
      type = "recipe"
    },
    ["flame-thrower-ammo"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "coal", 10 }, { "steel-plate", 5 } },
      name = "flame-thrower-ammo",
      result = "flame-thrower-ammo",
      type = "recipe"
    },
    ["fusion-reactor-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "speed-module-2", 10 }, { "productivity-module-2", 10 }, { "alien-artifact", 30 } },
      name = "fusion-reactor-equipment",
      result = "fusion-reactor-equipment",
      type = "recipe"
    },
    ["green-wire"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 1 }, { "copper-cable", 1 } },
      name = "green-wire",
      result = "green-wire",
      type = "recipe"
    },
    ["gun-turret"] = {
      enabled = "false",
      energy_required = 5,
      ingredients = { { "iron-gear-wheel", 5 }, { "copper-plate", 5 }, { "iron-plate", 10 } },
      name = "gun-turret",
      result = "gun-turret",
      type = "recipe"
    },
    ["heavy-armor"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "copper-plate", 100 }, { "steel-plate", 50 } },
      name = "heavy-armor",
      result = "heavy-armor",
      type = "recipe"
    },
    ["iron-axe"] = {
      ingredients = { { "iron-stick", 2 }, { "iron-plate", 3 } },
      name = "iron-axe",
      result = "iron-axe",
      type = "recipe"
    },
    ["iron-chest"] = {
      enabled = "true",
      ingredients = { { "iron-plate", 8 } },
      name = "iron-chest",
      result = "iron-chest",
      type = "recipe"
    },
    ["iron-gear-wheel"] = {
      ingredients = { { "iron-plate", 2 } },
      name = "iron-gear-wheel",
      result = "iron-gear-wheel",
      type = "recipe"
    },
    ["iron-plate"] = {
      category = "smelting",
      energy_required = 100,
      ingredients = { { "iron-ore", 1 } },
      name = "iron-plate",
      result = "iron-plate",
      type = "recipe"
    },
    ["iron-stick"] = {
      ingredients = { { "iron-plate", 1 } },
      name = "iron-stick",
      result = "iron-stick",
      result_count = 2,
      type = "recipe"
    },
    lab = {
      energy_required = 5,
      ingredients = { { "electronic-circuit", 10 }, { "iron-gear-wheel", 10 }, { "basic-transport-belt", 4 } },
      name = "lab",
      result = "lab",
      type = "recipe"
    },
    ["land-mine"] = {
      enabled = "false",
      energy_required = 5,
      ingredients = { { "steel-plate", 1 }, { "flame-thrower-ammo", 1 } },
      name = "land-mine",
      result = "land-mine",
      result_count = 4,
      type = "recipe"
    },
    ["laser-turret"] = {
      enabled = "false",
      energy_required = 5,
      ingredients = { { "steel-plate", 5 }, { "electronic-circuit", 5 }, { "iron-gear-wheel", 5 } },
      name = "laser-turret",
      result = "laser-turret",
      type = "recipe"
    },
    ["logistic-chest-provider"] = {
      enabled = "false",
      ingredients = { { "smart-chest", 1 }, { "advanced-circuit", 1 } },
      name = "logistic-chest-provider",
      result = "logistic-chest-provider",
      type = "recipe"
    },
    ["logistic-chest-requester"] = {
      enabled = "false",
      ingredients = { { "smart-chest", 1 }, { "advanced-circuit", 1 } },
      name = "logistic-chest-requester",
      result = "logistic-chest-requester",
      type = "recipe"
    },
    ["logistic-chest-storage"] = {
      enabled = "false",
      ingredients = { { "smart-chest", 1 }, { "advanced-circuit", 1 } },
      name = "logistic-chest-storage",
      result = "logistic-chest-storage",
      type = "recipe"
    },
    ["logistic-robot"] = {
      enabled = "false",
      ingredients = { { "steel-plate", 4 }, { "iron-gear-wheel", 5 }, { "advanced-circuit", 2 } },
      name = "logistic-robot",
      result = "logistic-robot",
      type = "recipe"
    },
    ["long-handed-inserter"] = {
      enabled = "false",
      ingredients = { { "iron-gear-wheel", 1 }, { "iron-plate", 1 }, { "basic-inserter", 1 } },
      name = "long-handed-inserter",
      result = "long-handed-inserter",
      type = "recipe"
    },
    ["medium-electric-pole"] = {
      enabled = "false",
      ingredients = { { "steel-plate", 2 }, { "copper-plate", 2 } },
      name = "medium-electric-pole",
      result = "medium-electric-pole",
      type = "recipe"
    },
    ["night-vision-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "advanced-circuit", 5 }, { "steel-plate", 10 } },
      name = "night-vision-equipment",
      result = "night-vision-equipment",
      type = "recipe"
    },
    ["piercing-bullet-magazine"] = {
      enabled = "false",
      energy_required = 3,
      ingredients = { { "copper-plate", 5 }, { "steel-plate", 1 } },
      name = "piercing-bullet-magazine",
      result = "piercing-bullet-magazine",
      type = "recipe"
    },
    ["piercing-shotgun-shell"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "copper-plate", 2 }, { "steel-plate", 2 } },
      name = "piercing-shotgun-shell",
      result = "piercing-shotgun-shell",
      type = "recipe"
    },
    pipe = {
      ingredients = { { "iron-plate", 1 } },
      name = "pipe",
      result = "pipe",
      type = "recipe"
    },
    ["pipe-to-ground"] = {
      ingredients = { { "pipe", 1 }, { "iron-plate", 1 } },
      name = "pipe-to-ground",
      result = "pipe-to-ground",
      type = "recipe"
    },
    pistol = {
      energy_required = 1,
      ingredients = { { "copper-plate", 5 }, { "iron-plate", 5 } },
      name = "pistol",
      result = "pistol",
      type = "recipe"
    },
    ["player-port"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 10 }, { "iron-gear-wheel", 5 }, { "iron-plate", 1 } },
      name = "player-port",
      result = "player-port",
      type = "recipe"
    },
    ["poison-capsule"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "steel-plate", 3 }, { "electronic-circuit", 3 }, { "coal", 10 } },
      name = "poison-capsule",
      result = "poison-capsule",
      type = "recipe"
    },
    ["power-armor"] = {
      enabled = "false",
      energy_required = 20,
      ingredients = { { "effectivity-module-2", 5 }, { "speed-module-2", 5 }, { "steel-plate", 50 }, { "alien-artifact", 10 } },
      name = "power-armor",
      result = "power-armor",
      type = "recipe"
    },
    ["power-armor-mk2"] = {
      enabled = "false",
      energy_required = 25,
      ingredients = { { "effectivity-module-3", 5 }, { "speed-module-3", 5 }, { "steel-plate", 50 }, { "alien-artifact", 50 } },
      name = "power-armor-mk2",
      result = "power-armor-mk2",
      type = "recipe"
    },
    ["productivity-module"] = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
      name = "productivity-module",
      result = "productivity-module",
      type = "recipe"
    },
    ["productivity-module-2"] = {
      enabled = "false",
      energy_required = 30,
      ingredients = { { "productivity-module", 5 }, { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
      name = "productivity-module-2",
      result = "productivity-module-2",
      type = "recipe"
    },
    ["productivity-module-3"] = {
      enabled = "false",
      energy_required = 60,
      ingredients = { { "productivity-module-2", 5 }, { "advanced-circuit", 5 }, { "electronic-circuit", 5 }, { "alien-artifact", 1 } },
      name = "productivity-module-3",
      result = "productivity-module-3",
      type = "recipe"
    },
    pump = {
      ingredients = { { "electronic-circuit", 2 }, { "pipe", 1 }, { "iron-gear-wheel", 1 } },
      name = "pump",
      result = "pump",
      type = "recipe"
    },
    radar = {
      ingredients = { { "electronic-circuit", 5 }, { "iron-gear-wheel", 5 }, { "iron-plate", 10 } },
      name = "radar",
      result = "radar",
      type = "recipe"
    },
    ["rail-signal"] = {
      enabled = "false",
      ingredients = { { "advanced-circuit", 1 }, { "iron-plate", 5 } },
      name = "rail-signal",
      result = "rail-signal",
      type = "recipe"
    },
    railgun = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "steel-plate", 15 }, { "copper-plate", 15 }, { "electronic-circuit", 10 }, { "advanced-circuit", 5 } },
      name = "railgun",
      result = "railgun",
      type = "recipe"
    },
    ["railgun-dart"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "steel-plate", 5 }, { "electronic-circuit", 5 } },
      name = "railgun-dart",
      result = "railgun-dart",
      type = "recipe"
    },
    ["red-wire"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 1 }, { "copper-cable", 1 } },
      name = "red-wire",
      result = "red-wire",
      type = "recipe"
    },
    ["repair-pack"] = {
      ingredients = { { "electronic-circuit", 1 }, { "iron-gear-wheel", 1 } },
      name = "repair-pack",
      result = "repair-pack",
      type = "recipe"
    },
    roboport = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "steel-plate", 45 }, { "iron-gear-wheel", 45 }, { "advanced-circuit", 45 } },
      name = "roboport",
      result = "roboport",
      type = "recipe"
    },
    rocket = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "electronic-circuit", 2 }, { "iron-gear-wheel", 3 }, { "iron-plate", 5 } },
      name = "rocket",
      result = "rocket",
      type = "recipe"
    },
    ["rocket-defense"] = {
      enabled = "false",
      ingredients = { { "rocket", 100 }, { "advanced-circuit", 256 }, { "speed-module-3", 50 }, { "productivity-module-3", 50 } },
      name = "rocket-defense",
      result = "rocket-defense",
      type = "recipe"
    },
    ["rocket-launcher"] = {
      enabled = "false",
      energy_required = 5,
      ingredients = { { "iron-plate", 5 }, { "iron-gear-wheel", 5 } },
      name = "rocket-launcher",
      result = "rocket-launcher",
      type = "recipe"
    },
    ["science-pack-1"] = {
      energy_required = 5,
      ingredients = { { "copper-plate", 1 }, { "iron-gear-wheel", 1 } },
      name = "science-pack-1",
      result = "science-pack-1",
      type = "recipe"
    },
    ["science-pack-2"] = {
      energy_required = 6,
      ingredients = { { "electronic-circuit", 1 }, { "basic-transport-belt", 1 } },
      name = "science-pack-2",
      result = "science-pack-2",
      type = "recipe"
    },
    ["science-pack-3"] = {
      enabled = "false",
      energy_required = 12,
      ingredients = { { "rocket", 1 }, { "steel-plate", 1 }, { "smart-inserter", 1 }, { "advanced-circuit", 1 } },
      name = "science-pack-3",
      result = "science-pack-3",
      type = "recipe"
    },
    shotgun = {
      enabled = "false",
      energy_required = 4,
      ingredients = { { "iron-plate", 15 }, { "iron-gear-wheel", 5 }, { "copper-plate", 10 }, { "wood", 5 } },
      name = "shotgun",
      result = "shotgun",
      type = "recipe"
    },
    ["shotgun-shell"] = {
      enabled = "false",
      energy_required = 3,
      ingredients = { { "copper-plate", 2 }, { "iron-plate", 2 } },
      name = "shotgun-shell",
      result = "shotgun-shell",
      type = "recipe"
    },
    ["slowdown-capsule"] = {
      enabled = "false",
      energy_required = 8,
      ingredients = { { "steel-plate", 2 }, { "electronic-circuit", 2 }, { "coal", 5 } },
      name = "slowdown-capsule",
      result = "slowdown-capsule",
      type = "recipe"
    },
    ["small-electric-pole"] = {
      ingredients = { { "wood", 2 }, { "copper-cable", 2 } },
      name = "small-electric-pole",
      result = "small-electric-pole",
      result_count = 2,
      type = "recipe"
    },
    ["small-lamp"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 1 }, { "iron-stick", 3 }, { "iron-plate", 1 } },
      name = "small-lamp",
      result = "small-lamp",
      type = "recipe"
    },
    ["smart-chest"] = {
      enabled = "false",
      ingredients = { { "steel-chest", 1 }, { "electronic-circuit", 3 } },
      name = "smart-chest",
      result = "smart-chest",
      type = "recipe"
    },
    ["smart-inserter"] = {
      enabled = "false",
      ingredients = { { "fast-inserter", 1 }, { "electronic-circuit", 4 } },
      name = "smart-inserter",
      result = "smart-inserter",
      type = "recipe"
    },
    ["solar-panel"] = {
      enabled = "false",
      ingredients = { { "steel-plate", 5 }, { "electronic-circuit", 15 }, { "copper-plate", 5 } },
      name = "solar-panel",
      result = "solar-panel",
      type = "recipe"
    },
    ["solar-panel-equipment"] = {
      enabled = "false",
      energy_required = 10,
      ingredients = { { "speed-module", 1 }, { "steel-plate", 5 }, { "solar-panel", 5 } },
      name = "solar-panel-equipment",
      result = "solar-panel-equipment",
      type = "recipe"
    },
    ["speed-module"] = {
      enabled = "false",
      energy_required = 15,
      ingredients = { { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
      name = "speed-module",
      result = "speed-module",
      type = "recipe"
    },
    ["speed-module-2"] = {
      enabled = "false",
      energy_required = 30,
      ingredients = { { "speed-module", 5 }, { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
      name = "speed-module-2",
      result = "speed-module-2",
      type = "recipe"
    },
    ["speed-module-3"] = {
      enabled = "false",
      energy_required = 60,
      ingredients = { { "speed-module-2", 5 }, { "advanced-circuit", 5 }, { "electronic-circuit", 5 }, { "alien-artifact", 1 } },
      name = "speed-module-3",
      result = "speed-module-3",
      type = "recipe"
    },
    ["steam-engine"] = {
      ingredients = { { "iron-gear-wheel", 5 }, { "pipe", 5 }, { "iron-plate", 5 } },
      name = "steam-engine",
      result = "steam-engine",
      type = "recipe"
    },
    ["steel-axe"] = {
      enabled = "false",
      ingredients = { { "steel-plate", 5 }, { "iron-stick", 2 } },
      name = "steel-axe",
      result = "steel-axe",
      type = "recipe"
    },
    ["steel-chest"] = {
      enabled = "false",
      ingredients = { { "steel-plate", 8 } },
      name = "steel-chest",
      result = "steel-chest",
      type = "recipe"
    },
    ["steel-furnace"] = {
      enabled = "false",
      energy_required = 3,
      ingredients = { { "steel-plate", 8 }, { "stone-brick", 10 } },
      name = "steel-furnace",
      result = "steel-furnace",
      type = "recipe"
    },
    ["steel-plate"] = {
      category = "smelting",
      enabled = "false",
      energy_required = 500,
      ingredients = { { "iron-plate", 5 } },
      name = "steel-plate",
      result = "steel-plate",
      type = "recipe"
    },
    ["stone-brick"] = {
      category = "smelting",
      enabled = "true",
      energy_required = 100,
      ingredients = { { "stone", 2 } },
      name = "stone-brick",
      result = "stone-brick",
      type = "recipe"
    },
    ["stone-furnace"] = {
      ingredients = { { "stone", 5 } },
      name = "stone-furnace",
      result = "stone-furnace",
      type = "recipe"
    },
    ["straight-rail"] = {
      enabled = "false",
      ingredients = { { "stone", 1 }, { "iron-stick", 1 }, { "steel-plate", 1 } },
      name = "straight-rail",
      result = "straight-rail",
      result_count = 2,
      type = "recipe"
    },
    ["submachine-gun"] = {
      enabled = "false",
      energy_required = 3,
      ingredients = { { "iron-gear-wheel", 10 }, { "copper-plate", 5 }, { "iron-plate", 10 } },
      name = "submachine-gun",
      result = "submachine-gun",
      type = "recipe"
    },
    substation = {
      enabled = "false",
      ingredients = { { "steel-plate", 10 }, { "advanced-circuit", 5 }, { "copper-plate", 5 } },
      name = "substation",
      result = "substation",
      type = "recipe"
    },
    ["train-stop"] = {
      enabled = "false",
      ingredients = { { "electronic-circuit", 5 }, { "iron-plate", 10 }, { "steel-plate", 3 } },
      name = "train-stop",
      result = "train-stop",
      type = "recipe"
    },
    wall = {
      enabled = "true",
      ingredients = { { "stone-brick", 5 } },
      name = "wall",
      result = "wall",
      type = "recipe"
    },
    wood = {
      ingredients = { { "raw-wood", 1 } },
      name = "wood",
      result = "wood",
      result_count = 2,
      type = "recipe"
    },
    ["wooden-chest"] = {
      ingredients = { { "wood", 4 } },
      name = "wooden-chest",
      result = "wooden-chest",
      type = "recipe"
    }
  },
  ["recipe-category"] = {
    crafting = {
      name = "crafting",
      type = "recipe-category"
    },
    smelting = {
      name = "smelting",
      type = "recipe-category"
    }
  },
  ["repair-tool"] = {
    ["repair-pack"] = {
      durability = 100,
      flags = { "goes-to-quickbar" },
      group = "production",
      icon = "__base__/graphics/icons/repair-pack.png",
      name = "repair-pack",
      order = "d-e",
      speed = 1,
      stack_size = 64,
      type = "repair-tool"
    }
  },
  resource = {
    coal = {
      autoplace = {
        control = "coal",
        peaks = { {
            influence = 0.2,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.65,
            noise_layer = "coal",
            noise_octaves_difference = -1.9,
            noise_persistence = 0.35,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.3,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.5,
            noise_layer = "coal",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.4,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "copper-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "iron-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "stone",
            noise_octaves_difference = -3,
            noise_persistence = 0.45
          } },
        richness_base = 350,
        richness_multiplier = 13000,
        sharpness = 1
      },
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/coal.png",
      map_color = {
        b = 0,
        g = 0,
        r = 0
      },
      minable = {
        hardness = 0.9,
        mining_particle = "coal-particle",
        mining_time = 2,
        result = "coal"
      },
      name = "coal",
      order = "a-b-c",
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
      stages = {
        direction_count = 8,
        filename = "__base__/graphics/entity/coal/coal.png",
        frame_count = 4,
        frame_height = 38,
        frame_width = 38,
        priority = "extra-high"
      },
      type = "resource"
    },
    ["copper-ore"] = {
      autoplace = {
        control = "copper-ore",
        peaks = { {
            influence = 0.2,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.65,
            noise_layer = "copper-ore",
            noise_octaves_difference = -1.9,
            noise_persistence = 0.3,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.3,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.53,
            noise_layer = "copper-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.4,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "iron-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "coal",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "stone",
            noise_octaves_difference = -3,
            noise_persistence = 0.45
          } },
        richness_base = 350,
        richness_multiplier = 13000,
        sharpness = 1
      },
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/copper-ore.png",
      map_color = {
        b = 0.215,
        g = 0.388,
        r = 0.803
      },
      minable = {
        hardness = 0.9,
        mining_particle = "copper-ore-particle",
        mining_time = 2,
        result = "copper-ore"
      },
      name = "copper-ore",
      order = "a-b-a",
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
      stages = {
        direction_count = 8,
        filename = "__base__/graphics/entity/copper-ore/copper-ore.png",
        frame_count = 4,
        frame_height = 38,
        frame_width = 38,
        priority = "extra-high"
      },
      type = "resource"
    },
    ["iron-ore"] = {
      autoplace = {
        control = "iron-ore",
        peaks = { {
            influence = 0.2,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.3,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.65,
            noise_layer = "iron-ore",
            noise_octaves_difference = -1.9,
            noise_persistence = 0.3,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.55,
            noise_layer = "iron-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.4,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "copper-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "coal",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "stone",
            noise_octaves_difference = -3,
            noise_persistence = 0.45
          } },
        richness_base = 350,
        richness_multiplier = 15000,
        sharpness = 1
      },
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/iron-ore.png",
      map_color = {
        b = 0.427,
        g = 0.419,
        r = 0.337
      },
      minable = {
        hardness = 0.9,
        mining_particle = "iron-ore-particle",
        mining_time = 2,
        result = "iron-ore"
      },
      name = "iron-ore",
      order = "a-b-b",
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
      stages = {
        direction_count = 8,
        filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
        frame_count = 4,
        frame_height = 38,
        frame_width = 38,
        priority = "extra-high"
      },
      type = "resource"
    },
    stone = {
      autoplace = {
        control = "stone",
        peaks = { {
            influence = 0.2,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.55,
            noise_layer = "stone",
            noise_octaves_difference = -3,
            noise_persistence = 0.45,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.25,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.6,
            noise_layer = "stone",
            noise_octaves_difference = -4,
            noise_persistence = 0.45,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "copper-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "iron-ore",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          }, {
            influence = -0.2,
            max_influence = 0,
            noise_layer = "coal",
            noise_octaves_difference = -2.3,
            noise_persistence = 0.45
          } },
        richness_base = 200,
        richness_multiplier = 9000,
        sharpness = 1
      },
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      flags = { "placeable-neutral" },
      icon = "__base__/graphics/icons/stone.png",
      map_color = {
        b = 0.317,
        g = 0.45,
        r = 0.478
      },
      minable = {
        hardness = 0.4,
        mining_particle = "stone-particle",
        mining_time = 2,
        result = "stone"
      },
      name = "stone",
      order = "a-b-d",
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
      stages = {
        direction_count = 8,
        filename = "__base__/graphics/entity/stone/stone.png",
        frame_count = 4,
        frame_height = 38,
        frame_width = 38,
        priority = "extra-high"
      },
      type = "resource"
    }
  },
  roboport = {
    roboport = {
      base_animation = {
        animation_speed = 0.5,
        filename = "__base__/graphics/entity/roboport/roboport.png",
        frame_count = 8,
        frame_height = 151,
        frame_width = 143,
        priority = "medium",
        shift = { 0.5, 0 }
      },
      charge_approach_distance = 5,
      charging_energy = "200W",
      charging_offsets = { { -1.5, -0.5 }, { 1.5, -0.5 }, { 1.5, 1.5 }, { -1.5, 1.5 } },
      collision_box = { { -1.7, -1.7 }, { 1.7, 1.7 } },
      corpse = "big-remnants",
      door_animation = {
        filename = "__base__/graphics/entity/roboport/roboport-door.png",
        frame_count = 16,
        frame_height = 39,
        frame_width = 52,
        priority = "medium",
        shift = { 0, -0.6 }
      },
      energy_source = {
        buffer_capacity = "48KJ",
        input_flow_limit = "2KW",
        input_priority = "primary",
        type = "electric"
      },
      energy_usage = "200W",
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/roboport.png",
      material_slots_count = 7,
      max_health = 500,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "roboport"
      },
      name = "roboport",
      radius = 25,
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
        height = 12,
        width = 12
      },
      recharge_minimum = "20KJ",
      recharging_animation = {
        animation_speed = 0.5,
        filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
        frame_count = 16,
        frame_height = 35,
        frame_width = 37,
        priority = "high",
        scale = 1.5
      },
      recharging_light = {
        intensity = 0.4,
        size = 5
      },
      request_to_open_door_timeout = 15,
      robot_slots_count = 7,
      selection_box = { { -2, -2 }, { 2, 2 } },
      spawn_and_station_height = 0.33,
      stationing_offset = { 0, 0 },
      type = "roboport"
    }
  },
  ["rocket-defense"] = {
    ["rocket-defense"] = {
      collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
      corpse = "big-remnants",
      energy_source = {
        buffer_capacity = "100KJ",
        input_priority = "primary",
        type = "electric"
      },
      flags = { "placeable-player", "player-creation" },
      icon = "__base__/graphics/icons/rocket-defense.png",
      max_health = 5000,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "rocket-defense"
      },
      name = "rocket-defense",
      picture = {
        filename = "__base__/graphics/entity/rocket-defense/rocket-defense.png",
        height = 160,
        priority = "low",
        width = 160
      },
      selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
      type = "rocket-defense"
    }
  },
  ["smart-container"] = {
    ["smart-chest"] = {
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      connection_point = {
        shadow = {
          green = { 0.7, -0.3 },
          red = { 0.7, -0.3 }
        },
        wire = {
          green = { 0.3, -0.8 },
          red = { 0.3, -0.8 }
        }
      },
      corpse = "small-remnants",
      fast_replaceable_group = "container",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/smart-chest.png",
      inventory_size = 48,
      max_health = 150,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "smart-chest"
      },
      name = "smart-chest",
      picture = {
        filename = "__base__/graphics/entity/smart-chest/smart-chest.png",
        height = 41,
        priority = "extra-high",
        shift = { 0.4, -0.13 },
        width = 62
      },
      resistances = { {
          percent = 70,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "smart-container"
    }
  },
  smoke = {
    ["poison-cloud"] = {
      action = {
        action_delivery = {
          target_effects = {
            action = {
              action_delivery = {
                target_effects = {
                  damage = {
                    amount = 4,
                    type = "poison"
                  },
                  type = "damage"
                },
                type = "instant"
              },
              entity_flags = { "breaths-air" },
              perimeter = 11,
              type = "area"
            },
            type = "nested-result"
          },
          type = "instant"
        },
        type = "direct"
      },
      action_frequency = 30,
      animation = {
        animation_speed = 3,
        filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
        frame_count = 45,
        frame_height = 256,
        frame_width = 256,
        line_length = 7,
        priority = "low",
        scale = 3
      },
      color = {
        b = 0.2,
        g = 0.9,
        r = 0.2
      },
      cyclic = true,
      duration = 1200,
      fade_away_duration = 120,
      name = "poison-cloud",
      slow_down_factor = 0,
      spread_duration = 10,
      type = "smoke",
      wind_speed_factor = 0
    },
    smoke = {
      animation = {
        animation_speed = 12,
        filename = "__base__/graphics/entity/smoke/smoke.png",
        frame_count = 39,
        frame_height = 78,
        frame_width = 88,
        line_length = 7,
        priority = "high"
      },
      name = "smoke",
      type = "smoke"
    },
    ["smoke-fast"] = {
      animation = {
        animation_speed = 1,
        filename = "__base__/graphics/entity/smoke-fast/smoke-fast.png",
        frame_count = 16,
        frame_height = 50,
        frame_width = 50,
        priority = "high"
      },
      name = "smoke-fast",
      type = "smoke"
    }
  },
  ["solar-panel"] = {
    ["solar-panel"] = {
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      corpse = "big-remnants",
      energy_source = {
        input_priority = "none",
        output_priority = "primary",
        type = "electric"
      },
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/solar-panel.png",
      max_health = 100,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "solar-panel"
      },
      name = "solar-panel",
      picture = {
        filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
        height = 96,
        priority = "high",
        width = 104
      },
      production = "60W",
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      type = "solar-panel"
    }
  },
  ["solar-panel-equipment"] = {
    ["solar-panel-equipment"] = {
      energy_source = {
        output_priority = "primary",
        type = "electric"
      },
      name = "solar-panel-equipment",
      power = "10W",
      shape = {
        height = 1,
        type = "full",
        width = 1
      },
      sprite = {
        filename = "__base__/graphics/equipment/solar-panel-equipment.png",
        height = 32,
        priority = "medium",
        width = 32
      },
      type = "solar-panel-equipment"
    }
  },
  splitter = {
    ["basic-splitter"] = {
      animation_speed_coefficient = 64,
      belt_horizontal = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      belt_vertical = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 32
      },
      collision_box = { { -0.9, -0.1 }, { 0.9, 0.1 } },
      corpse = "medium-remnants",
      ending_bottom = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 96
      },
      ending_side = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 128
      },
      ending_top = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 64
      },
      fast_replaceable_group = "splitter",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/basic-splitter.png",
      max_health = 80,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "basic-splitter"
      },
      name = "basic-splitter",
      resistances = { {
          percent = 60,
          type = "fire"
        } },
      selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
      speed = 0.03125,
      starting_bottom = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 192
      },
      starting_side = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 224
      },
      starting_top = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 160
      },
      structure = {
        east = {
          filename = "__base__/graphics/entity/basic-splitter/basic-splitter-east.png",
          frame_count = 32,
          frame_height = 81,
          frame_width = 46,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.075, 0 }
        },
        north = {
          filename = "__base__/graphics/entity/basic-splitter/basic-splitter-north.png",
          frame_count = 32,
          frame_height = 35,
          frame_width = 80,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.225, 0 }
        },
        south = {
          filename = "__base__/graphics/entity/basic-splitter/basic-splitter-south.png",
          frame_count = 32,
          frame_height = 36,
          frame_width = 82,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.075, 0 }
        },
        west = {
          filename = "__base__/graphics/entity/basic-splitter/basic-splitter-west.png",
          frame_count = 32,
          frame_height = 79,
          frame_width = 47,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.25, 0.05 }
        }
      },
      structure_animation_movement_cooldown = 10,
      structure_animation_speed_coefficient = 0.7,
      type = "splitter"
    },
    ["express-splitter"] = {
      animation_speed_coefficient = 64,
      belt_horizontal = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      belt_vertical = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 32
      },
      collision_box = { { -0.9, -0.1 }, { 0.9, 0.1 } },
      corpse = "medium-remnants",
      ending_bottom = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 96
      },
      ending_side = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 128
      },
      ending_top = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 64
      },
      fast_replaceable_group = "splitter",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/express-splitter.png",
      max_health = 80,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "express-splitter"
      },
      name = "express-splitter",
      resistances = { {
          percent = 60,
          type = "fire"
        } },
      selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
      speed = 0.09375,
      starting_bottom = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 192
      },
      starting_side = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 224
      },
      starting_top = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 160
      },
      structure = {
        east = {
          filename = "__base__/graphics/entity/express-splitter/express-splitter-east.png",
          frame_count = 32,
          frame_height = 81,
          frame_width = 46,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.075, 0 }
        },
        north = {
          filename = "__base__/graphics/entity/express-splitter/express-splitter-north.png",
          frame_count = 32,
          frame_height = 35,
          frame_width = 80,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.225, 0 }
        },
        south = {
          filename = "__base__/graphics/entity/express-splitter/express-splitter-south.png",
          frame_count = 32,
          frame_height = 36,
          frame_width = 82,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.075, 0 }
        },
        west = {
          filename = "__base__/graphics/entity/express-splitter/express-splitter-west.png",
          frame_count = 32,
          frame_height = 79,
          frame_width = 47,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.25, 0.05 }
        }
      },
      structure_animation_movement_cooldown = 10,
      structure_animation_speed_coefficient = 1.2,
      type = "splitter"
    },
    ["fast-splitter"] = {
      animation_speed_coefficient = 64,
      belt_horizontal = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      belt_vertical = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 32
      },
      collision_box = { { -0.9, -0.1 }, { 0.9, 0.1 } },
      corpse = "medium-remnants",
      ending_bottom = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 96
      },
      ending_side = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 128
      },
      ending_top = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 64
      },
      fast_replaceable_group = "splitter",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/fast-splitter.png",
      max_health = 80,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "fast-splitter"
      },
      name = "fast-splitter",
      resistances = { {
          percent = 60,
          type = "fire"
        } },
      selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
      speed = 0.0625,
      starting_bottom = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 192
      },
      starting_side = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 224
      },
      starting_top = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 160
      },
      structure = {
        east = {
          filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east.png",
          frame_count = 32,
          frame_height = 81,
          frame_width = 46,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.075, 0 }
        },
        north = {
          filename = "__base__/graphics/entity/fast-splitter/fast-splitter-north.png",
          frame_count = 32,
          frame_height = 35,
          frame_width = 80,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.225, 0 }
        },
        south = {
          filename = "__base__/graphics/entity/fast-splitter/fast-splitter-south.png",
          frame_count = 32,
          frame_height = 36,
          frame_width = 82,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.075, 0 }
        },
        west = {
          filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west.png",
          frame_count = 32,
          frame_height = 79,
          frame_width = 47,
          line_length = 16,
          priority = "extra-high",
          shift = { 0.25, 0.05 }
        }
      },
      structure_animation_movement_cooldown = 10,
      structure_animation_speed_coefficient = 1.2,
      type = "splitter"
    }
  },
  sticker = {
    ["slowdown-sticker"] = {
      animation = {
        animation_speed = 0.4,
        filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
        frame_count = 13,
        frame_height = 11,
        frame_width = 11,
        priority = "extra-high"
      },
      duration_in_ticks = 1800,
      flags = {},
      magnitude = 0.5,
      name = "slowdown-sticker",
      type = "sticker"
    }
  },
  technology = {
    ["advanced-chemistry"] = {
      icon = "__base__/graphics/technology/advanced-chemistry.png",
      name = "advanced-chemistry",
      order = "a-e-b",
      prerequisites = { "chemistry" },
      type = "technology",
      unit = {
        count = 75,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 25
      }
    },
    ["advanced-electronics"] = {
      effects = { {
          recipe = "smart-chest",
          type = "unlock-recipe"
        }, {
          recipe = "red-wire",
          type = "unlock-recipe"
        }, {
          recipe = "green-wire",
          type = "unlock-recipe"
        }, {
          recipe = "advanced-circuit",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/advanced-electronics.png",
      name = "advanced-electronics",
      order = "a-d-b",
      prerequisites = { "electronics" },
      type = "technology",
      unit = {
        count = 40,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["advanced-electronics-2"] = {
      icon = "__base__/graphics/technology/advanced-electronics.png",
      name = "advanced-electronics-2",
      order = "a-d-c",
      prerequisites = { "advanced-electronics" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["advanced-material-processing"] = {
      effects = { {
          recipe = "steel-furnace",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/advanced-material-processing.png",
      name = "advanced-material-processing",
      order = "c-c-a",
      prerequisites = { "steel-processing" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["advanced-material-processing-2"] = {
      effects = { {
          recipe = "electric-furnace",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/advanced-material-processing.png",
      name = "advanced-material-processing-2",
      order = "c-c-b",
      prerequisites = { "advanced-material-processing", "advanced-electronics" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["alien-technology"] = {
      effects = { {
          recipe = "alien-science-pack",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/alien-technology.png",
      name = "alien-technology",
      order = "e-f",
      prerequisites = { "advanced-chemistry" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["armor-making"] = {
      effects = { {
          recipe = "basic-armor",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/armor-making.png",
      name = "armor-making",
      order = "g-a-a",
      type = "technology",
      unit = {
        count = 10,
        ingredients = { { "science-pack-1", 1 } },
        time = 5
      }
    },
    ["armor-making-2"] = {
      effects = { {
          recipe = "heavy-armor",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/armor-making.png",
      name = "armor-making-2",
      order = "g-a-b",
      prerequisites = { "armor-making", "steel-processing" },
      type = "technology",
      unit = {
        count = 30,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      }
    },
    ["armor-making-3"] = {
      effects = { {
          recipe = "basic-modular-armor",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/armor-making.png",
      name = "armor-making-3",
      order = "g-a-c",
      prerequisites = { "armor-making-2", "speed-module" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["automated-rail-transportation"] = {
      effects = { {
          recipe = "train-stop",
          type = "unlock-recipe"
        }, {
          recipe = "cargo-wagon",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/automated-rail-transportation.png",
      name = "automated-rail-transportation",
      order = "c-g-b",
      prerequisites = { "railway" },
      type = "technology",
      unit = {
        count = 70,
        ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
        time = 20
      }
    },
    automation = {
      effects = { {
          recipe = "assembling-machine-1",
          type = "unlock-recipe"
        }, {
          recipe = "long-handed-inserter",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/automation.png",
      name = "automation",
      order = "a-b-a",
      type = "technology",
      unit = {
        count = 10,
        ingredients = { { "science-pack-1", 1 } },
        time = 10
      }
    },
    ["automation-2"] = {
      effects = { {
          recipe = "assembling-machine-2",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/automation.png",
      name = "automation-2",
      order = "a-b-b",
      prerequisites = { "electronics" },
      type = "technology",
      unit = {
        count = 40,
        ingredients = { { "science-pack-1", 2 } },
        time = 15
      }
    },
    ["automation-3"] = {
      effects = { {
          recipe = "assembling-machine-3",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/automation.png",
      name = "automation-3",
      order = "a-b-c",
      prerequisites = { "electronics", "modules", "automation-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      }
    },
    automobilism = {
      effects = { {
          recipe = "car",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/automobilism.png",
      name = "automobilism",
      order = "e-b",
      prerequisites = { "logistics-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
        time = 20
      }
    },
    ["basic-electric-discharge-defense-equipment"] = {
      effects = { {
          recipe = "basic-electric-discharge-defense-equipment",
          type = "unlock-recipe"
        }, {
          recipe = "basic-electric-discharge-defense-remote",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/basic-electric-discharge-defense-equipment.png",
      name = "basic-electric-discharge-defense-equipment",
      order = "g-o",
      prerequisites = { "armor-making-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      }
    },
    ["basic-exoskeleton-equipment"] = {
      effects = { {
          recipe = "basic-exoskeleton-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/basic-exoskeleton-equipment.png",
      name = "basic-exoskeleton-equipment",
      order = "g-h",
      prerequisites = { "solar-panel-equipment" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["basic-laser-defense-equipment"] = {
      effects = { {
          recipe = "basic-laser-defense-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/basic-laser-defense-equipment.png",
      name = "basic-laser-defense-equipment",
      order = "g-m",
      prerequisites = { "armor-making-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["battery-equipment"] = {
      effects = { {
          recipe = "battery-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/battery-equipment.png",
      name = "battery-equipment",
      order = "g-i-a",
      prerequisites = { "armor-making-3" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["battery-mk2-equipment"] = {
      effects = { {
          recipe = "battery-mk2-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/battery-mk2-equipment.png",
      name = "battery-mk2-equipment",
      order = "g-i-b",
      prerequisites = { "battery-equipment" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["bullet-damage-1"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/bullet-damage.png",
      name = "bullet-damage-1",
      order = "e-l-a",
      prerequisites = { "military" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["bullet-damage-2"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/bullet-damage.png",
      name = "bullet-damage-2",
      order = "e-l-b",
      prerequisites = { "bullet-damage-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["bullet-damage-3"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/bullet-damage.png",
      name = "bullet-damage-3",
      order = "e-l-c",
      prerequisites = { "bullet-damage-2" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["bullet-damage-4"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/bullet-damage.png",
      name = "bullet-damage-4",
      order = "e-l-d",
      prerequisites = { "bullet-damage-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["bullet-damage-5"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/bullet-damage.png",
      name = "bullet-damage-5",
      order = "e-l-e",
      prerequisites = { "bullet-damage-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["bullet-damage-6"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.4",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/bullet-damage.png",
      name = "bullet-damage-6",
      order = "e-l-f",
      prerequisites = { "bullet-damage-5" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["bullet-speed-1"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/bullet-speed.png",
      name = "bullet-speed-1",
      order = "e-l-g",
      prerequisites = { "military" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["bullet-speed-2"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/bullet-speed.png",
      name = "bullet-speed-2",
      order = "e-l-h",
      prerequisites = { "bullet-speed-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["bullet-speed-3"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/bullet-speed.png",
      name = "bullet-speed-3",
      order = "e-l-i",
      prerequisites = { "bullet-speed-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["bullet-speed-4"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/bullet-speed.png",
      name = "bullet-speed-4",
      order = "e-l-j",
      prerequisites = { "bullet-speed-3" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["bullet-speed-5"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/bullet-speed.png",
      name = "bullet-speed-5",
      order = "e-l-k",
      prerequisites = { "bullet-speed-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["bullet-speed-6"] = {
      effects = { {
          ammo_category = "bullet",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/bullet-speed.png",
      name = "bullet-speed-6",
      order = "e-l-l",
      prerequisites = { "bullet-speed-5" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["character-logistic-slots-1"] = {
      effects = { {
          modifier = 5,
          type = "character-logistic-slots"
        } },
      icon = "__base__/graphics/technology/character-logistic-slots.png",
      name = "character-logistic-slots-1",
      order = "c-k-k",
      prerequisites = { "logistic-robotics" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["character-logistic-slots-2"] = {
      effects = { {
          modifier = 5,
          type = "character-logistic-slots"
        } },
      icon = "__base__/graphics/technology/character-logistic-slots.png",
      name = "character-logistic-slots-2",
      order = "c-k-l",
      prerequisites = { "character-logistic-slots-1" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["character-logistic-slots-3"] = {
      effects = { {
          modifier = 5,
          type = "character-logistic-slots"
        } },
      icon = "__base__/graphics/technology/character-logistic-slots.png",
      name = "character-logistic-slots-3",
      order = "c-k-m",
      prerequisites = { "character-logistic-slots-2" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["character-logistic-slots-4"] = {
      effects = { {
          modifier = 5,
          type = "character-logistic-slots"
        } },
      icon = "__base__/graphics/technology/character-logistic-slots.png",
      name = "character-logistic-slots-4",
      order = "c-k-n",
      prerequisites = { "character-logistic-slots-3" },
      type = "technology",
      unit = {
        count = 250,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    chemistry = {
      icon = "__base__/graphics/technology/chemistry.png",
      name = "chemistry",
      order = "a-e-a",
      type = "technology",
      unit = {
        count = 40,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["combat-robot-damage-1"] = {
      effects = { {
          ammo_category = "combat-robot-laser",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/combat-robot-damage.png",
      name = "combat-robot-damage-1",
      order = "e-p-c",
      prerequisites = { "combat-robotics" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["combat-robot-damage-2"] = {
      effects = { {
          ammo_category = "combat-robot-laser",
          modifier = "0.15",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/combat-robot-damage.png",
      name = "combat-robot-damage-2",
      order = "e-p-d",
      prerequisites = { "combat-robot-damage-1" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["combat-robot-damage-3"] = {
      effects = { {
          ammo_category = "combat-robot-laser",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/combat-robot-damage.png",
      name = "combat-robot-damage-3",
      order = "e-p-e",
      prerequisites = { "combat-robot-damage-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 2 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["combat-robot-damage-4"] = {
      effects = { {
          ammo_category = "combat-robot-laser",
          modifier = "0.25",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/combat-robot-damage.png",
      name = "combat-robot-damage-4",
      order = "e-p-f",
      prerequisites = { "combat-robot-damage-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 2 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["combat-robot-damage-5"] = {
      effects = { {
          ammo_category = "combat-robot-laser",
          modifier = "0.3",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/combat-robot-damage.png",
      name = "combat-robot-damage-5",
      order = "e-p-g",
      prerequisites = { "combat-robot-damage-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 2 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["combat-robotics"] = {
      effects = { {
          recipe = "defender-capsule",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/combat-robotics.png",
      name = "combat-robotics",
      order = "e-p-a",
      prerequisites = { "robotics", "military" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["combat-robotics-2"] = {
      effects = { {
          recipe = "distractor-capsule",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/combat-robotics.png",
      name = "combat-robotics-2",
      order = "e-p-b-a",
      prerequisites = { "combat-robotics", "military-3" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["combat-robotics-3"] = {
      effects = { {
          recipe = "destroyer-capsule",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/combat-robotics.png",
      name = "combat-robotics-3",
      order = "e-p-b-b",
      prerequisites = { "combat-robotics-2" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      }
    },
    ["construction-robotics"] = {
      effects = { {
          recipe = "roboport",
          type = "unlock-recipe"
        }, {
          recipe = "logistic-chest-provider",
          type = "unlock-recipe"
        }, {
          recipe = "construction-robot",
          type = "unlock-recipe"
        }, {
          modifier = 18000,
          type = "ghost-time-to-live"
        } },
      icon = "__base__/graphics/technology/construction-robotics.png",
      name = "construction-robotics",
      order = "c-k-a",
      prerequisites = { "robotics", "flying" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["effect-transmission"] = {
      effects = { {
          recipe = "basic-beacon",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/effect-transmission.png",
      name = "effect-transmission",
      order = "i-i",
      prerequisites = { "modules", "advanced-electronics-2" },
      type = "technology",
      unit = {
        count = 75,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["effectivity-module"] = {
      effects = { {
          recipe = "effectivity-module",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/effectivity-module.png",
      name = "effectivity-module",
      order = "i-g-a",
      prerequisites = { "modules" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["effectivity-module-2"] = {
      effects = { {
          recipe = "effectivity-module-2",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/effectivity-module.png",
      name = "effectivity-module-2",
      order = "i-g-b",
      prerequisites = { "effectivity-module" },
      type = "technology",
      unit = {
        count = 75,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["effectivity-module-3"] = {
      effects = { {
          recipe = "effectivity-module-3",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/effectivity-module.png",
      name = "effectivity-module-3",
      order = "i-g-c",
      prerequisites = { "effectivity-module-2" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 60
      }
    },
    ["electric-energy-accumulators-1"] = {
      effects = { {
          recipe = "basic-accumulator",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/electric-energy-acumulators.png",
      name = "electric-energy-accumulators-1",
      order = "c-e-a",
      prerequisites = { "electric-energy-distribution-1" },
      type = "technology",
      unit = {
        count = 60,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["electric-energy-distribution-1"] = {
      effects = { {
          recipe = "medium-electric-pole",
          type = "unlock-recipe"
        }, {
          recipe = "big-electric-pole",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/electric-energy-distribution.png",
      name = "electric-energy-distribution-1",
      order = "c-e-b",
      prerequisites = { "electronics", "steel-processing" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["electric-energy-distribution-2"] = {
      effects = { {
          recipe = "substation",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/electric-energy-distribution.png",
      name = "electric-energy-distribution-2",
      order = "c-e-c",
      prerequisites = { "electric-energy-distribution-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 45
      }
    },
    electronics = {
      effects = { {
          recipe = "smart-inserter",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/electronics.png",
      name = "electronics",
      order = "a-d-a",
      prerequisites = { "automation" },
      type = "technology",
      unit = {
        count = 30,
        ingredients = { { "science-pack-1", 1 } },
        time = 15
      }
    },
    ["energy-shield-equipment"] = {
      effects = { {
          recipe = "energy-shield-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/energy-shield-equipment.png",
      name = "energy-shield-equipment",
      order = "g-e-a",
      prerequisites = { "armor-making-3" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["energy-shield-mk2-equipment"] = {
      effects = { {
          recipe = "energy-shield-mk2-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
      name = "energy-shield-mk2-equipment",
      order = "g-e-b",
      prerequisites = { "energy-shield-equipment" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["explosive-rocketry"] = {
      effects = { {
          recipe = "explosive-rocket",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/explosive-rocketry.png",
      name = "explosive-rocketry",
      order = "e-h",
      prerequisites = { "rocketry" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 20
      }
    },
    explosives = {
      icon = "__base__/graphics/technology/explosives.png",
      name = "explosives",
      order = "a-e-c",
      prerequisites = { "chemistry" },
      type = "technology",
      unit = {
        count = 60,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["flame-thrower"] = {
      effects = { {
          recipe = "flame-thrower",
          type = "unlock-recipe"
        }, {
          recipe = "flame-thrower-ammo",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/flame-thrower.png",
      name = "flame-thrower",
      order = "e-c-b",
      prerequisites = { "flammables", "military-2" },
      type = "technology",
      unit = {
        count = 20,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    flammables = {
      icon = "__base__/graphics/technology/flammables.png",
      name = "flammables",
      order = "e-c-a",
      prerequisites = { "chemistry" },
      type = "technology",
      unit = {
        count = 60,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    flying = {
      icon = "__base__/graphics/technology/flying.png",
      name = "flying",
      order = "c-h",
      prerequisites = { "rocketry", "advanced-electronics" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["follower-robot-count-1"] = {
      effects = { {
          modifier = 1,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-1",
      order = "e-p-b-c",
      prerequisites = { "combat-robotics" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-10"] = {
      effects = { {
          modifier = 5,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-10",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-9" },
      type = "technology",
      unit = {
        count = 600,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-11"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-11",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-10" },
      type = "technology",
      unit = {
        count = 800,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-12"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-12",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-11" },
      type = "technology",
      unit = {
        count = 1000,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-13"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-13",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-12" },
      type = "technology",
      unit = {
        count = 1200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-14"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-14",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-13" },
      type = "technology",
      unit = {
        count = 1400,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-15"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-15",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-14" },
      type = "technology",
      unit = {
        count = 1600,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-16"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-16",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-15" },
      type = "technology",
      unit = {
        count = 1800,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-17"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-17",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-16" },
      type = "technology",
      unit = {
        count = 2000,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-18"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-18",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-17" },
      type = "technology",
      unit = {
        count = 2200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-19"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-19",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-18" },
      type = "technology",
      unit = {
        count = 2400,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-2"] = {
      effects = { {
          modifier = 1,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-2",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-20"] = {
      effects = { {
          modifier = 10,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-20",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-19" },
      type = "technology",
      unit = {
        count = 2600,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-3"] = {
      effects = { {
          modifier = 2,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-3",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-2" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-4"] = {
      effects = { {
          modifier = 2,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-4",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-3" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-5"] = {
      effects = { {
          modifier = 2,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-5",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-4" },
      type = "technology",
      unit = {
        count = 250,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-6"] = {
      effects = { {
          modifier = 5,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-6",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-5" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-7"] = {
      effects = { {
          modifier = 5,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-7",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-6" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-8"] = {
      effects = { {
          modifier = 5,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-8",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-7", "combat-robotics-3" },
      type = "technology",
      unit = {
        count = 400,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["follower-robot-count-9"] = {
      effects = { {
          modifier = 5,
          type = "maximum-following-robots-count"
        } },
      icon = "__base__/graphics/technology/follower-robots.png",
      name = "follower-robot-count-9",
      order = "e-p-b-c",
      prerequisites = { "follower-robot-count-8" },
      type = "technology",
      unit = {
        count = 500,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["fusion-reactor-equipment"] = {
      effects = { {
          recipe = "fusion-reactor-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
      name = "fusion-reactor-equipment",
      order = "g-l",
      prerequisites = { "solar-panel-equipment" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["gun-turret-damage-1"] = {
      effects = { {
          modifier = "0.1",
          turret_id = "gun-turret",
          type = "turret-attack"
        } },
      icon = "__base__/graphics/technology/gun-turret-damage.png",
      name = "gun-turret-damage-1",
      order = "e-o-a",
      prerequisites = { "turrets" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["gun-turret-damage-2"] = {
      effects = { {
          modifier = "0.1",
          turret_id = "gun-turret",
          type = "turret-attack"
        } },
      icon = "__base__/graphics/technology/gun-turret-damage.png",
      name = "gun-turret-damage-2",
      order = "e-o-b",
      prerequisites = { "gun-turret-damage-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["gun-turret-damage-3"] = {
      effects = { {
          modifier = "0.2",
          turret_id = "gun-turret",
          type = "turret-attack"
        } },
      icon = "__base__/graphics/technology/gun-turret-damage.png",
      name = "gun-turret-damage-3",
      order = "e-o-c",
      prerequisites = { "gun-turret-damage-2" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["gun-turret-damage-4"] = {
      effects = { {
          modifier = "0.2",
          turret_id = "gun-turret",
          type = "turret-attack"
        } },
      icon = "__base__/graphics/technology/gun-turret-damage.png",
      name = "gun-turret-damage-4",
      order = "e-o-d",
      prerequisites = { "gun-turret-damage-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["gun-turret-damage-5"] = {
      effects = { {
          modifier = "0.2",
          turret_id = "gun-turret",
          type = "turret-attack"
        } },
      icon = "__base__/graphics/technology/gun-turret-damage.png",
      name = "gun-turret-damage-5",
      order = "e-o-e",
      prerequisites = { "gun-turret-damage-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["gun-turret-damage-6"] = {
      effects = { {
          modifier = "0.4",
          turret_id = "gun-turret",
          type = "turret-attack"
        } },
      icon = "__base__/graphics/technology/gun-turret-damage.png",
      name = "gun-turret-damage-6",
      order = "e-o-f",
      prerequisites = { "gun-turret-damage-5" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["inserter-stack-size-bonus-1"] = {
      effects = { {
          modifier = 1,
          type = "inserter-stack-size-bonus"
        } },
      icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
      name = "inserter-stack-size-bonus-1",
      order = "c-o-a",
      prerequisites = { "logistics" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["inserter-stack-size-bonus-2"] = {
      effects = { {
          modifier = 1,
          type = "inserter-stack-size-bonus"
        } },
      icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
      name = "inserter-stack-size-bonus-2",
      order = "c-o-b",
      prerequisites = { "inserter-stack-size-bonus-1" },
      type = "technology",
      unit = {
        count = 60,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["inserter-stack-size-bonus-3"] = {
      effects = { {
          modifier = 1,
          type = "inserter-stack-size-bonus"
        } },
      icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
      name = "inserter-stack-size-bonus-3",
      order = "c-o-c",
      prerequisites = { "inserter-stack-size-bonus-2" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["inserter-stack-size-bonus-4"] = {
      effects = { {
          modifier = 1,
          type = "inserter-stack-size-bonus"
        } },
      icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
      name = "inserter-stack-size-bonus-4",
      order = "c-o-d",
      prerequisites = { "inserter-stack-size-bonus-3" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 2 } },
        time = 30
      },
      upgrade = "true"
    },
    ["land-mine"] = {
      effects = { {
          recipe = "land-mine",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/land-mine.png",
      name = "land-mine",
      order = "e-e",
      prerequisites = { "explosives", "military-2" },
      type = "technology",
      unit = {
        count = 20,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    laser = {
      icon = "__base__/graphics/technology/laser.png",
      name = "laser",
      order = "a-h-b",
      prerequisites = { "optics", "advanced-electronics" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["laser-turret-damage-1"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/laser-turret-damage.png",
      name = "laser-turret-damage-1",
      order = "e-n-a",
      prerequisites = { "laser-turrets" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["laser-turret-damage-2"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/laser-turret-damage.png",
      name = "laser-turret-damage-2",
      order = "e-n-b",
      prerequisites = { "laser-turret-damage-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["laser-turret-damage-3"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/laser-turret-damage.png",
      name = "laser-turret-damage-3",
      order = "e-n-c",
      prerequisites = { "laser-turret-damage-2" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turret-damage-4"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/laser-turret-damage.png",
      name = "laser-turret-damage-4",
      order = "e-n-d",
      prerequisites = { "laser-turret-damage-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turret-damage-5"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/laser-turret-damage.png",
      name = "laser-turret-damage-5",
      order = "e-n-e",
      prerequisites = { "laser-turret-damage-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turret-damage-6"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.4",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/laser-turret-damage.png",
      name = "laser-turret-damage-6",
      order = "e-n-f",
      prerequisites = { "laser-turret-damage-5" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turret-speed-1"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/laser-turret-speed.png",
      name = "laser-turret-speed-1",
      order = "e-n-g",
      prerequisites = { "laser-turrets" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["laser-turret-speed-2"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/laser-turret-speed.png",
      name = "laser-turret-speed-2",
      order = "e-n-h",
      prerequisites = { "laser-turret-speed-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["laser-turret-speed-3"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/laser-turret-speed.png",
      name = "laser-turret-speed-3",
      order = "e-n-i",
      prerequisites = { "laser-turret-speed-2" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turret-speed-4"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/laser-turret-speed.png",
      name = "laser-turret-speed-4",
      order = "e-n-j",
      prerequisites = { "laser-turret-speed-3" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turret-speed-5"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/laser-turret-speed.png",
      name = "laser-turret-speed-5",
      order = "e-n-k",
      prerequisites = { "laser-turret-speed-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turret-speed-6"] = {
      effects = { {
          ammo_category = "laser-turret",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/laser-turret-speed.png",
      name = "laser-turret-speed-6",
      order = "e-n-l",
      prerequisites = { "laser-turret-speed-5" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["laser-turrets"] = {
      effects = { {
          recipe = "laser-turret",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/laser-turrets.png",
      name = "laser-turrets",
      order = "a-j-b",
      prerequisites = { "turrets", "laser" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["logistic-robot-speed-1"] = {
      effects = { {
          modifier = "0.35",
          type = "logistic-robot-speed"
        } },
      icon = "__base__/graphics/technology/logistic-robot-speed.png",
      name = "logistic-robot-speed-1",
      order = "c-k-c",
      prerequisites = { "logistic-robotics" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["logistic-robot-speed-2"] = {
      effects = { {
          modifier = "0.4",
          type = "logistic-robot-speed"
        } },
      icon = "__base__/graphics/technology/logistic-robot-speed.png",
      name = "logistic-robot-speed-2",
      order = "c-k-d",
      prerequisites = { "logistic-robot-speed-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["logistic-robot-speed-3"] = {
      effects = { {
          modifier = "0.45",
          type = "logistic-robot-speed"
        } },
      icon = "__base__/graphics/technology/logistic-robot-speed.png",
      name = "logistic-robot-speed-3",
      order = "c-k-e",
      prerequisites = { "logistic-robot-speed-2" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["logistic-robot-speed-4"] = {
      effects = { {
          modifier = "0.55",
          type = "logistic-robot-speed"
        } },
      icon = "__base__/graphics/technology/logistic-robot-speed.png",
      name = "logistic-robot-speed-4",
      order = "c-k-f",
      prerequisites = { "logistic-robot-speed-3" },
      type = "technology",
      unit = {
        count = 250,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["logistic-robot-speed-5"] = {
      effects = { {
          modifier = "0.65",
          type = "logistic-robot-speed"
        } },
      icon = "__base__/graphics/technology/logistic-robot-speed.png",
      name = "logistic-robot-speed-5",
      order = "c-k-g",
      prerequisites = { "logistic-robot-speed-4" },
      type = "technology",
      unit = {
        count = 500,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["logistic-robot-storage-1"] = {
      effects = { {
          modifier = "1",
          type = "logistic-robot-storage"
        } },
      icon = "__base__/graphics/technology/logistic-robot-storage.png",
      name = "logistic-robot-storage-1",
      order = "c-k-h",
      prerequisites = { "logistic-robotics" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["logistic-robot-storage-2"] = {
      effects = { {
          modifier = "1",
          type = "logistic-robot-storage"
        } },
      icon = "__base__/graphics/technology/logistic-robot-storage.png",
      name = "logistic-robot-storage-2",
      order = "c-k-i",
      prerequisites = { "logistic-robot-storage-1" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["logistic-robot-storage-3"] = {
      effects = { {
          modifier = "1",
          type = "logistic-robot-storage"
        } },
      icon = "__base__/graphics/technology/logistic-robot-storage.png",
      name = "logistic-robot-storage-3",
      order = "c-k-j",
      prerequisites = { "logistic-robot-storage-2" },
      type = "technology",
      unit = {
        count = 450,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["logistic-robotics"] = {
      effects = { {
          recipe = "roboport",
          type = "unlock-recipe"
        }, {
          recipe = "logistic-chest-provider",
          type = "unlock-recipe"
        }, {
          recipe = "logistic-chest-storage",
          type = "unlock-recipe"
        }, {
          recipe = "logistic-chest-requester",
          type = "unlock-recipe"
        }, {
          recipe = "logistic-robot",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/logistic-robotics.png",
      name = "logistic-robotics",
      order = "c-k-b",
      prerequisites = { "robotics", "flying" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    logistics = {
      effects = { {
          recipe = "basic-transport-belt-to-ground",
          type = "unlock-recipe"
        }, {
          recipe = "fast-inserter",
          type = "unlock-recipe"
        }, {
          recipe = "basic-splitter",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/logistics.png",
      name = "logistics",
      order = "a-f-a",
      type = "technology",
      unit = {
        count = 20,
        ingredients = { { "science-pack-1", 1 } },
        time = 15
      }
    },
    ["logistics-2"] = {
      effects = { {
          recipe = "fast-transport-belt",
          type = "unlock-recipe"
        }, {
          recipe = "fast-transport-belt-to-ground",
          type = "unlock-recipe"
        }, {
          recipe = "fast-splitter",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/logistics.png",
      name = "logistics-2",
      order = "a-f-b",
      prerequisites = { "logistics" },
      type = "technology",
      unit = {
        count = 40,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["logistics-3"] = {
      effects = { {
          recipe = "express-transport-belt",
          type = "unlock-recipe"
        }, {
          recipe = "express-transport-belt-to-ground",
          type = "unlock-recipe"
        }, {
          recipe = "express-splitter",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/logistics.png",
      name = "logistics-3",
      order = "a-f-c",
      prerequisites = { "logistics-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 15
      }
    },
    military = {
      effects = { {
          recipe = "submachine-gun",
          type = "unlock-recipe"
        }, {
          recipe = "shotgun",
          type = "unlock-recipe"
        }, {
          recipe = "shotgun-shell",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/military.png",
      name = "military",
      order = "e-a-a",
      type = "technology",
      unit = {
        count = 10,
        ingredients = { { "science-pack-1", 1 } },
        time = 15
      }
    },
    ["military-2"] = {
      effects = { {
          recipe = "piercing-bullet-magazine",
          type = "unlock-recipe"
        }, {
          recipe = "basic-grenade",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/military.png",
      name = "military-2",
      order = "e-a-b",
      prerequisites = { "military", "steel-processing" },
      type = "technology",
      unit = {
        count = 20,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["military-3"] = {
      effects = { {
          recipe = "poison-capsule",
          type = "unlock-recipe"
        }, {
          recipe = "slowdown-capsule",
          type = "unlock-recipe"
        }, {
          recipe = "combat-shotgun",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/military.png",
      name = "military-3",
      order = "e-a-c",
      prerequisites = { "military-2", "laser", "rocketry" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 2 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["military-4"] = {
      effects = { {
          recipe = "piercing-shotgun-shell",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/military.png",
      name = "military-4",
      order = "e-a-d",
      prerequisites = { "military-3" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 2 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 45
      }
    },
    modules = {
      icon = "__base__/graphics/technology/module.png",
      name = "modules",
      order = "i-a",
      prerequisites = { "advanced-electronics" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["night-vision-equipment"] = {
      effects = { {
          recipe = "night-vision-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/night-vision-equipment.png",
      name = "night-vision-equipment",
      order = "g-g",
      prerequisites = { "armor-making-3" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    optics = {
      effects = { {
          recipe = "small-lamp",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/optics.png",
      name = "optics",
      order = "a-h-a",
      type = "technology",
      unit = {
        count = 10,
        ingredients = { { "science-pack-1", 1 } },
        time = 15
      }
    },
    ["power-armor"] = {
      effects = { {
          recipe = "power-armor",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/power-armor.png",
      name = "power-armor",
      order = "g-c-a",
      prerequisites = { "armor-making-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["power-armor-2"] = {
      effects = { {
          recipe = "power-armor-mk2",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/power-armor-mk2.png",
      name = "power-armor-2",
      order = "g-c-b",
      prerequisites = { "power-armor" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 3 } },
        time = 30
      }
    },
    ["productivity-module"] = {
      effects = { {
          recipe = "productivity-module",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/productivity-module.png",
      name = "productivity-module",
      order = "i-e-a",
      prerequisites = { "modules" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["productivity-module-2"] = {
      effects = { {
          recipe = "productivity-module-2",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/productivity-module.png",
      name = "productivity-module-2",
      order = "i-e-b",
      prerequisites = { "productivity-module" },
      type = "technology",
      unit = {
        count = 75,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["productivity-module-3"] = {
      effects = { {
          recipe = "productivity-module-3",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/productivity-module.png",
      name = "productivity-module-3",
      order = "i-e-c",
      prerequisites = { "productivity-module-2" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 60
      }
    },
    ["rail-signals"] = {
      effects = { {
          recipe = "rail-signal",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/rail-signals.png",
      name = "rail-signals",
      order = "c-g-c",
      prerequisites = { "automated-rail-transportation" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    railway = {
      effects = { {
          recipe = "straight-rail",
          type = "unlock-recipe"
        }, {
          recipe = "curved-rail",
          type = "unlock-recipe"
        }, {
          recipe = "diesel-locomotive",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/railway.png",
      name = "railway",
      order = "c-g-a",
      prerequisites = { "logistics-2", "steel-processing" },
      type = "technology",
      unit = {
        count = 70,
        ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
        time = 20
      }
    },
    ["research-effectivity-1"] = {
      effects = { {
          modifier = 0.2,
          type = "laboratory-speed"
        } },
      icon = "__base__/graphics/technology/research-effectivity.png",
      name = "research-effectivity-1",
      order = "c-m-a",
      prerequisites = { "electronics" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["research-effectivity-2"] = {
      effects = { {
          modifier = 0.3,
          type = "laboratory-speed"
        } },
      icon = "__base__/graphics/technology/research-effectivity.png",
      name = "research-effectivity-2",
      order = "c-m-b",
      prerequisites = { "research-effectivity-1" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["research-effectivity-3"] = {
      effects = { {
          modifier = 0.4,
          type = "laboratory-speed"
        } },
      icon = "__base__/graphics/technology/research-effectivity.png",
      name = "research-effectivity-3",
      order = "c-m-c",
      prerequisites = { "research-effectivity-2" },
      type = "technology",
      unit = {
        count = 250,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["research-effectivity-4"] = {
      effects = { {
          modifier = 0.5,
          type = "laboratory-speed"
        } },
      icon = "__base__/graphics/technology/research-effectivity.png",
      name = "research-effectivity-4",
      order = "c-m-d",
      prerequisites = { "research-effectivity-3" },
      type = "technology",
      unit = {
        count = 500,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    robotics = {
      icon = "__base__/graphics/technology/robotics.png",
      name = "robotics",
      order = "c-i",
      prerequisites = { "advanced-electronics-2", "rocketry" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["rocket-damage-1"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/rocket-damage.png",
      name = "rocket-damage-1",
      order = "e-j-a",
      prerequisites = { "rocketry", "alien-technology" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["rocket-damage-2"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/rocket-damage.png",
      name = "rocket-damage-2",
      order = "e-j-b",
      prerequisites = { "rocket-damage-1" },
      type = "technology",
      unit = {
        count = 250,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["rocket-damage-3"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/rocket-damage.png",
      name = "rocket-damage-3",
      order = "e-j-c",
      prerequisites = { "rocket-damage-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["rocket-damage-4"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/rocket-damage.png",
      name = "rocket-damage-4",
      order = "e-j-d",
      prerequisites = { "rocket-damage-3" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["rocket-damage-5"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/rocket-damage.png",
      name = "rocket-damage-5",
      order = "e-j-e",
      prerequisites = { "rocket-damage-4" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["rocket-defense"] = {
      effects = { {
          recipe = "rocket-defense",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/rocket-defense.png",
      name = "rocket-defense",
      order = "k-a",
      prerequisites = { "rocketry", "advanced-electronics-2", "rocket-speed-5" },
      type = "technology",
      unit = {
        count = 1000,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      }
    },
    ["rocket-speed-1"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/rocket-speed.png",
      name = "rocket-speed-1",
      order = "e-j-f",
      prerequisites = { "rocketry", "alien-technology" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["rocket-speed-2"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/rocket-speed.png",
      name = "rocket-speed-2",
      order = "e-j-g",
      prerequisites = { "rocket-speed-1" },
      type = "technology",
      unit = {
        count = 250,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["rocket-speed-3"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/rocket-speed.png",
      name = "rocket-speed-3",
      order = "e-j-h",
      prerequisites = { "rocket-speed-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["rocket-speed-4"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/rocket-speed.png",
      name = "rocket-speed-4",
      order = "e-j-i",
      prerequisites = { "rocket-speed-3" },
      type = "technology",
      unit = {
        count = 150,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["rocket-speed-5"] = {
      effects = { {
          ammo_category = "rocket",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/rocket-speed.png",
      name = "rocket-speed-5",
      order = "e-j-j",
      prerequisites = { "rocket-speed-4" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["rocket-travel"] = {
      enabled = false,
      icon = "__base__/graphics/technology/rocket-travel.png",
      name = "rocket-travel",
      order = "e-h",
      prerequisites = { "rocket-speed-2", "logistics-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 2 } },
        time = 15
      }
    },
    rocketry = {
      effects = { {
          recipe = "rocket-launcher",
          type = "unlock-recipe"
        }, {
          recipe = "rocket",
          type = "unlock-recipe"
        }, {
          recipe = "science-pack-3",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/rocketry.png",
      name = "rocketry",
      order = "e-g",
      prerequisites = { "electronics", "flammables", "explosives", "steel-processing" },
      type = "technology",
      unit = {
        count = 80,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["shotgun-shell-damage-1"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-damage.png",
      name = "shotgun-shell-damage-1",
      order = "e-n-a",
      prerequisites = { "military" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["shotgun-shell-damage-2"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.1",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-damage.png",
      name = "shotgun-shell-damage-2",
      order = "e-n-b",
      prerequisites = { "shotgun-shell-damage-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["shotgun-shell-damage-3"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-damage.png",
      name = "shotgun-shell-damage-3",
      order = "e-n-c",
      prerequisites = { "shotgun-shell-damage-2" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["shotgun-shell-damage-4"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-damage.png",
      name = "shotgun-shell-damage-4",
      order = "e-n-d",
      prerequisites = { "shotgun-shell-damage-3" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["shotgun-shell-damage-5"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.2",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-damage.png",
      name = "shotgun-shell-damage-5",
      order = "e-n-e",
      prerequisites = { "shotgun-shell-damage-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["shotgun-shell-damage-6"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.4",
          type = "ammo-damage"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-damage.png",
      name = "shotgun-shell-damage-6",
      order = "e-n-f",
      prerequisites = { "shotgun-shell-damage-5" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["shotgun-shell-speed-1"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-speed.png",
      name = "shotgun-shell-speed-1",
      order = "e-n-g",
      prerequisites = { "military" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["shotgun-shell-speed-2"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.2",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-speed.png",
      name = "shotgun-shell-speed-2",
      order = "e-n-h",
      prerequisites = { "shotgun-shell-speed-1" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 } },
        time = 30
      },
      upgrade = "true"
    },
    ["shotgun-shell-speed-3"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-speed.png",
      name = "shotgun-shell-speed-3",
      order = "e-n-i",
      prerequisites = { "shotgun-shell-speed-2" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["shotgun-shell-speed-4"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-speed.png",
      name = "shotgun-shell-speed-4",
      order = "e-n-j",
      prerequisites = { "shotgun-shell-speed-3" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["shotgun-shell-speed-5"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-speed.png",
      name = "shotgun-shell-speed-5",
      order = "e-n-k",
      prerequisites = { "shotgun-shell-speed-4" },
      type = "technology",
      unit = {
        count = 200,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["shotgun-shell-speed-6"] = {
      effects = { {
          ammo_category = "shotgun-shell",
          modifier = "0.3",
          type = "gun-speed"
        } },
      icon = "__base__/graphics/technology/shotgun-shell-speed.png",
      name = "shotgun-shell-speed-6",
      order = "e-n-l",
      prerequisites = { "shotgun-shell-speed-5" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 60
      },
      upgrade = "true"
    },
    ["solar-energy"] = {
      effects = { {
          recipe = "solar-panel",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/solar-energy.png",
      name = "solar-energy",
      order = "a-h-c",
      prerequisites = { "optics", "advanced-electronics" },
      type = "technology",
      unit = {
        count = 100,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["solar-panel-equipment"] = {
      effects = { {
          recipe = "solar-panel-equipment",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/solar-panel-equipment.png",
      name = "solar-panel-equipment",
      order = "g-k",
      prerequisites = { "armor-making-3" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 15
      }
    },
    ["speed-module"] = {
      effects = { {
          recipe = "speed-module",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/speed-module.png",
      name = "speed-module",
      order = "i-c-a",
      prerequisites = { "modules" },
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    ["speed-module-2"] = {
      effects = { {
          recipe = "speed-module-2",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/speed-module.png",
      name = "speed-module-2",
      order = "i-c-b",
      prerequisites = { "speed-module" },
      type = "technology",
      unit = {
        count = 75,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
        time = 30
      }
    },
    ["speed-module-3"] = {
      effects = { {
          recipe = "speed-module-3",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/speed-module.png",
      name = "speed-module-3",
      order = "i-c-c",
      prerequisites = { "speed-module-2" },
      type = "technology",
      unit = {
        count = 300,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
        time = 60
      }
    },
    ["steel-processing"] = {
      effects = { {
          recipe = "steel-plate",
          type = "unlock-recipe"
        }, {
          recipe = "steel-chest",
          type = "unlock-recipe"
        }, {
          recipe = "steel-axe",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/steel-processing.png",
      name = "steel-processing",
      order = "c-a",
      type = "technology",
      unit = {
        count = 20,
        ingredients = { { "science-pack-1", 1 } },
        time = 5
      }
    },
    toolbelt = {
      effects = { {
          modifier = 2,
          type = "num-quick-bars"
        } },
      icon = "__base__/graphics/technology/toolbelt.png",
      name = "toolbelt",
      order = "c-k-m",
      type = "technology",
      unit = {
        count = 50,
        ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
        time = 30
      }
    },
    turrets = {
      effects = { {
          recipe = "gun-turret",
          type = "unlock-recipe"
        } },
      icon = "__base__/graphics/technology/turrets.png",
      name = "turrets",
      order = "a-j-a",
      type = "technology",
      unit = {
        count = 10,
        ingredients = { { "science-pack-1", 1 } },
        time = 10
      }
    }
  },
  tile = {
    deepwater = {
      allowed_neighbors = { "water" },
      autoplace = {
        peaks = { {
            elevation_max_range = 5000,
            elevation_optimal = -5250,
            elevation_range = 5000,
            influence = 1000000,
            noise_persistence = 0.7
          }, {
            influence = -1050000
          }, {
            influence = -1000000,
            noise_layer = "terrain-dark",
            noise_octaves_difference = 2,
            noise_persistence = 0.7
          } }
      },
      collision_mask = { "water-tile", "resource-layer", "item-layer", "player-layer" },
      layer = 45,
      map_color = {
        b = 0.345,
        g = 0.2823,
        r = 0.0941
      },
      name = "deepwater",
      type = "tile",
      variants = {
        inner_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/deepwater/deepwater-inner-corner.png"
        },
        main = { {
            count = 8,
            picture = "__base__/graphics/terrain/deepwater/deepwater1.png",
            size = 1
          }, {
            count = 8,
            picture = "__base__/graphics/terrain/deepwater/deepwater2.png",
            size = 2
          }, {
            count = 6,
            picture = "__base__/graphics/terrain/deepwater/deepwater4.png",
            size = 4
          } },
        outer_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/deepwater/deepwater-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/deepwater/deepwater-side.png"
        }
      }
    },
    ["deepwater-green"] = {
      allowed_neighbors = { "water-green" },
      autoplace = {
        peaks = { {
            elevation_max_range = 5000,
            elevation_optimal = -5250,
            elevation_range = 5000,
            influence = 1000000,
            noise_persistence = 0.7
          }, {
            influence = -1050000
          }, {
            influence = 1000000,
            noise_layer = "terrain-dark",
            noise_octaves_difference = 2,
            noise_persistence = 0.7
          } }
      },
      collision_mask = { "water-tile", "resource-layer", "item-layer", "player-layer" },
      layer = 45,
      map_color = {
        b = 0.066,
        g = 0.149,
        r = 0.0941
      },
      name = "deepwater-green",
      type = "tile",
      variants = {
        inner_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/deepwater-green/deepwater-green-inner-corner.png"
        },
        main = { {
            count = 8,
            picture = "__base__/graphics/terrain/deepwater-green/deepwater-green1.png",
            size = 1
          }, {
            count = 8,
            picture = "__base__/graphics/terrain/deepwater-green/deepwater-green2.png",
            size = 2
          }, {
            count = 6,
            picture = "__base__/graphics/terrain/deepwater-green/deepwater-green4.png",
            size = 4
          } },
        outer_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/deepwater-green/deepwater-green-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/deepwater-green/deepwater-green-side.png"
        }
      }
    },
    dirt = {
      autoplace = {
        control = "dirt",
        peaks = { {
            noise_layer = "dirt"
          }, {
            influence = -1,
            noise_layer = "terrain-dark",
            noise_octaves_difference = -1,
            noise_persistence = 0.5
          } }
      },
      collision_mask = { "ground-tile" },
      layer = 25,
      map_color = {
        b = 34,
        g = 91,
        r = 132
      },
      name = "dirt",
      type = "tile",
      variants = {
        inner_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/dirt/dirt-inner-corner.png"
        },
        main = { {
            count = 22,
            picture = "__base__/graphics/terrain/dirt/dirt1.png",
            size = 1,
            weights = { 0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045, 0.005, 0.005, 0.005, 0.005, 0.003, 0.005 }
          }, {
            count = 30,
            picture = "__base__/graphics/terrain/dirt/dirt2.png",
            probability = 1,
            size = 2,
            weights = { 0.07, 0.07, 0.025, 0.07, 0.07, 0.07, 0.007, 0.025, 0.07, 0.05, 0.015, 0.026, 0.03, 0.005, 0.07, 0.027, 0.022, 0.032, 0.02, 0.02, 0.03, 0.005, 0.01, 0.002, 0.013, 0.007, 0.007, 0.01, 0.03, 0.03 }
          }, {
            count = 21,
            line_length = 11,
            picture = "__base__/graphics/terrain/dirt/dirt4.png",
            probability = 1,
            size = 4,
            weights = { 0.07, 0.07, 0.07, 0.07, 0.07, 0.07, 0.015, 0.07, 0.07, 0.07, 0.015, 0.05, 0.07, 0.07, 0.065, 0.07, 0.07, 0.05, 0.05, 0.05, 0.05 }
          } },
        outer_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/dirt/dirt-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/dirt/dirt-side.png"
        }
      },
      walking_sound = { {
          filename = "__base__/sound/walking/dirt-02.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/dirt-03.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/dirt-04.wav",
          volume = 0.8
        } }
    },
    ["dirt-dark"] = {
      autoplace = {
        control = "dirt",
        peaks = { {
            noise_layer = "dirt"
          }, {
            influence = 1,
            noise_layer = "terrain-dark",
            noise_octaves_difference = -1,
            noise_persistence = 0.5
          } }
      },
      collision_mask = { "ground-tile" },
      layer = 26,
      map_color = {
        b = 29,
        g = 80,
        r = 115
      },
      name = "dirt-dark",
      type = "tile",
      variants = {
        inner_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/dirt-dark/dirt-dark-inner-corner.png"
        },
        main = { {
            count = 22,
            picture = "__base__/graphics/terrain/dirt-dark/dirt-dark1.png",
            size = 1,
            weights = { 0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045, 0.005, 0.005, 0.005, 0.005, 0.003, 0.005 }
          }, {
            count = 30,
            picture = "__base__/graphics/terrain/dirt-dark/dirt-dark2.png",
            probability = 0.94,
            size = 2,
            weights = { 0.07, 0.07, 0.025, 0.07, 0.07, 0.07, 0.007, 0.025, 0.07, 0.05, 0.015, 0.026, 0.03, 0.005, 0.07, 0.027, 0.022, 0.032, 0.02, 0.02, 0.03, 0.005, 0.01, 0.002, 0.013, 0.007, 0.007, 0.01, 0.03, 0.03 }
          }, {
            count = 21,
            line_length = 11,
            picture = "__base__/graphics/terrain/dirt-dark/dirt-dark4.png",
            probability = 1,
            size = 4,
            weights = { 0.07, 0.07, 0.07, 0.07, 0.07, 0.07, 0.015, 0.07, 0.07, 0.07, 0.015, 0.05, 0.07, 0.07, 0.065, 0.07, 0.07, 0.05, 0.05, 0.05, 0.05 }
          } },
        outer_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/dirt-dark/dirt-dark-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/dirt-dark/dirt-dark-side.png"
        }
      },
      walking_sound = { {
          filename = "__base__/sound/walking/dirt-02.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/dirt-03.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/dirt-04.wav",
          volume = 0.8
        } }
    },
    grass = {
      autoplace = {
        control = "grass",
        peaks = { {
            influence = 1,
            noise_layer = "grass",
            noise_persistence = 0.6
          }, {
            influence = -1,
            noise_layer = "terrain-dark",
            noise_octaves_difference = -1,
            noise_persistence = 0.5
          }, {
            available_water_max_range = 0.5,
            available_water_optimal = 1,
            available_water_range = 0,
            influence = 0.3,
            min_influence = 0
          } }
      },
      collision_mask = { "ground-tile" },
      layer = 20,
      map_color = {
        b = 17,
        g = 51,
        r = 61
      },
      name = "grass",
      type = "tile",
      variants = {
        inner_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/grass/grass-inner-corner.png"
        },
        main = { {
            count = 16,
            picture = "__base__/graphics/terrain/grass/grass1.png",
            size = 1
          }, {
            count = 20,
            picture = "__base__/graphics/terrain/grass/grass2.png",
            probability = 0.91,
            size = 2,
            weights = { 0.15, 0.15, 0.15, 0.15, 0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01 }
          }, {
            count = 20,
            line_length = 10,
            picture = "__base__/graphics/terrain/grass/grass4.png",
            probability = 1,
            size = 4,
            weights = { 0.1, 0.8, 0.8, 0.1, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
          } },
        outer_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/grass/grass-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/grass/grass-side.png"
        }
      },
      walking_sound = { {
          filename = "__base__/sound/walking/grass-01.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-02.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-03.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-04.wav",
          volume = 0.8
        } }
    },
    ["grass-dry"] = {
      autoplace = {
        control = "grass",
        peaks = { {
            influence = 1,
            noise_layer = "grass-dry",
            noise_persistence = 0.6
          } }
      },
      collision_mask = { "ground-tile" },
      layer = 4,
      map_color = {
        b = 14,
        g = 38,
        r = 53
      },
      name = "grass-dry",
      type = "tile",
      variants = {
        inner_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/grass-dry/grass-dry-inner-corner.png"
        },
        main = { {
            count = 8,
            picture = "__base__/graphics/terrain/grass-dry/grass-dry1.png",
            size = 1
          }, {
            count = 16,
            picture = "__base__/graphics/terrain/grass-dry/grass-dry2.png",
            probability = 0.91,
            size = 2,
            weights = { 0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01 }
          }, {
            count = 20,
            line_length = 10,
            picture = "__base__/graphics/terrain/grass-dry/grass-dry4.png",
            probability = 1,
            size = 4,
            weights = { 0.1, 0.8, 0.8, 0.1, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
          } },
        outer_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/grass-dry/grass-dry-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/grass-dry/grass-dry-side.png"
        }
      },
      walking_sound = { {
          filename = "__base__/sound/walking/grass-01.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-02.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-03.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-04.wav",
          volume = 0.8
        } }
    },
    ["grass-medium"] = {
      autoplace = {
        control = "grass",
        peaks = { {
            influence = 1,
            noise_layer = "grass",
            noise_persistence = 0.6
          }, {
            influence = 1,
            noise_layer = "terrain-dark",
            noise_octaves_difference = -1,
            noise_persistence = 0.5
          } }
      },
      collision_mask = { "ground-tile" },
      layer = 5,
      map_color = {
        b = 19,
        g = 47,
        r = 58
      },
      name = "grass-medium",
      type = "tile",
      variants = {
        inner_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/grass-medium/grass-medium-inner-corner.png"
        },
        main = { {
            count = 8,
            picture = "__base__/graphics/terrain/grass-medium/grass-medium1.png",
            size = 1
          }, {
            count = 20,
            picture = "__base__/graphics/terrain/grass-medium/grass-medium2.png",
            probability = 0.91,
            size = 2,
            weights = { 0.15, 0.15, 0.15, 0.15, 0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01 }
          }, {
            count = 20,
            line_length = 10,
            picture = "__base__/graphics/terrain/grass-medium/grass-medium4.png",
            probability = 1,
            size = 4,
            weights = { 0.1, 0.8, 0.8, 0.1, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
          } },
        outer_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/grass-medium/grass-medium-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/grass-medium/grass-medium-side.png"
        }
      },
      walking_sound = { {
          filename = "__base__/sound/walking/grass-01.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-02.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-03.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/grass-04.wav",
          volume = 0.8
        } }
    },
    ["out-of-map"] = {
      collision_mask = { "ground-tile", "water-tile", "resource-layer", "floor-layer", "item-layer", "object-layer", "player-layer" },
      layer = 60,
      map_color = {
        b = 0,
        g = 0,
        r = 0
      },
      name = "out-of-map",
      type = "tile",
      variants = {
        inner_corner = {
          count = 0,
          picture = "__base__/graphics/terrain/out-of-map-inner-corner.png"
        },
        main = { {
            count = 1,
            picture = "__base__/graphics/terrain/out-of-map.png",
            size = 1
          } },
        outer_corner = {
          count = 0,
          picture = "__base__/graphics/terrain/out-of-map-outer-corner.png"
        },
        side = {
          count = 0,
          picture = "__base__/graphics/terrain/out-of-map-side.png"
        }
      }
    },
    sand = {
      autoplace = {
        control = "sand",
        peaks = { {
            noise_layer = "sand"
          }, {
            influence = -1,
            noise_layer = "terrain-dark",
            noise_octaves_difference = -1,
            noise_persistence = 0.5
          } }
      },
      collision_mask = { "ground-tile" },
      layer = 35,
      map_color = {
        b = 54,
        g = 126,
        r = 160
      },
      name = "sand",
      type = "tile",
      variants = {
        inner_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/sand/sand-inner-corner.png"
        },
        main = { {
            count = 16,
            picture = "__base__/graphics/terrain/sand/sand1.png",
            size = 1
          }, {
            count = 16,
            picture = "__base__/graphics/terrain/sand/sand2.png",
            probability = 0.39,
            size = 2,
            weights = { 0.025, 0.01, 0.013, 0.025, 0.025, 0.1, 0.1, 0.005, 0.01, 0.01, 0.005, 0.005, 0.001, 0.015, 0.02, 0.02 }
          }, {
            count = 22,
            line_length = 11,
            picture = "__base__/graphics/terrain/sand/sand4.png",
            probability = 1,
            size = 4,
            weights = { 0.09, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.01, 0.1, 0.1, 0.01, 0.02, 0.02, 0.01, 0.1, 0.025, 0.1, 0.1, 0.1 }
          } },
        outer_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/sand/sand-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/sand/sand-side.png"
        }
      },
      walking_sound = { {
          filename = "__base__/sound/walking/sand-01.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/sand-02.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/sand-03.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/sand-04.wav",
          volume = 0.8
        } }
    },
    ["sand-dark"] = {
      autoplace = {
        control = "sand",
        peaks = { {
            influence = 1,
            noise_layer = "sand"
          }, {
            influence = 1,
            noise_layer = "terrain-dark",
            noise_octaves_difference = -1,
            noise_persistence = 0.5
          } }
      },
      collision_mask = { "ground-tile" },
      layer = 36,
      map_color = {
        b = 39,
        g = 104,
        r = 139
      },
      name = "sand-dark",
      type = "tile",
      variants = {
        inner_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/sand-dark/sand-dark-inner-corner.png"
        },
        main = { {
            count = 16,
            picture = "__base__/graphics/terrain/sand-dark/sand-dark1.png",
            size = 1
          }, {
            count = 16,
            picture = "__base__/graphics/terrain/sand-dark/sand-dark2.png",
            probability = 0.39,
            size = 2,
            weights = { 0.025, 0.01, 0.013, 0.025, 0.025, 0.1, 0.1, 0.005, 0.01, 0.01, 0.005, 0.005, 0.001, 0.015, 0.02, 0.02 }
          }, {
            count = 22,
            line_length = 11,
            picture = "__base__/graphics/terrain/sand-dark/sand-dark4.png",
            probability = 1,
            size = 4,
            weights = { 0.09, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.01, 0.1, 0.1, 0.01, 0.02, 0.02, 0.01, 0.1, 0.025, 0.1, 0.1, 0.1 }
          } },
        outer_corner = {
          count = 8,
          picture = "__base__/graphics/terrain/sand-dark/sand-dark-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/sand-dark/sand-dark-side.png"
        }
      },
      walking_sound = { {
          filename = "__base__/sound/walking/sand-01.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/sand-02.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/sand-03.wav",
          volume = 0.8
        }, {
          filename = "__base__/sound/walking/sand-04.wav",
          volume = 0.8
        } }
    },
    water = {
      allowed_neighbors = { "grass" },
      autoplace = {
        peaks = { {
            elevation_max_range = 5000,
            elevation_optimal = -5000,
            elevation_range = 5000,
            influence = 1000000,
            noise_persistence = 0.7
          }, {
            influence = -1060000
          }, {
            influence = -1000000,
            noise_layer = "terrain-dark",
            noise_octaves_difference = 2,
            noise_persistence = 0.7
          } }
      },
      collision_mask = { "water-tile", "item-layer", "resource-layer", "player-layer" },
      layer = 40,
      map_color = {
        b = 0.4196,
        g = 0.3568,
        r = 0.0941
      },
      name = "water",
      type = "tile",
      variants = {
        inner_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/water/water-inner-corner.png"
        },
        main = { {
            count = 8,
            picture = "__base__/graphics/terrain/water/water1.png",
            size = 1
          }, {
            count = 8,
            picture = "__base__/graphics/terrain/water/water2.png",
            size = 2
          }, {
            count = 6,
            picture = "__base__/graphics/terrain/water/water4.png",
            size = 4
          } },
        outer_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/water/water-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/water/water-side.png"
        }
      }
    },
    ["water-green"] = {
      allowed_neighbors = { "grass" },
      autoplace = {
        peaks = { {
            elevation_max_range = 5000,
            elevation_optimal = -5000,
            elevation_range = 5000,
            influence = 1000000,
            noise_persistence = 0.7
          }, {
            influence = -1060000
          }, {
            influence = 1000000,
            noise_layer = "terrain-dark",
            noise_octaves_difference = 2,
            noise_persistence = 0.7
          } }
      },
      collision_mask = { "water-tile", "item-layer", "resource-layer", "player-layer" },
      layer = 40,
      map_color = {
        b = 18,
        g = 48,
        r = 31
      },
      name = "water-green",
      type = "tile",
      variants = {
        inner_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/water-green/water-green-inner-corner.png"
        },
        main = { {
            count = 8,
            picture = "__base__/graphics/terrain/water-green/water-green1.png",
            size = 1
          }, {
            count = 8,
            picture = "__base__/graphics/terrain/water-green/water-green2.png",
            size = 2
          }, {
            count = 6,
            picture = "__base__/graphics/terrain/water-green/water-green4.png",
            size = 4
          } },
        outer_corner = {
          count = 6,
          picture = "__base__/graphics/terrain/water-green/water-green-outer-corner.png"
        },
        side = {
          count = 8,
          picture = "__base__/graphics/terrain/water-green/water-green-side.png"
        }
      }
    }
  },
  ["train-stop"] = {
    ["train-stop"] = {
      animation_ticks_per_frame = 20,
      animations = {
        east = {
          filename = "__base__/graphics/entity/train-stop/train-stop-east.png",
          frame_count = 2,
          frame_height = 128,
          frame_width = 173,
          priority = "high",
          shift = { 1.7, -1.5 }
        },
        north = {
          filename = "__base__/graphics/entity/train-stop/train-stop-north.png",
          frame_count = 2,
          frame_height = 136,
          frame_width = 180,
          priority = "high",
          shift = { 1.65, -0.9 }
        },
        south = {
          filename = "__base__/graphics/entity/train-stop/train-stop-south.png",
          frame_count = 2,
          frame_height = 132,
          frame_width = 155,
          priority = "high",
          shift = { 1.7, -1.4 }
        },
        west = {
          filename = "__base__/graphics/entity/train-stop/train-stop-west.png",
          frame_count = 2,
          frame_height = 126,
          frame_width = 173,
          priority = "high",
          shift = { 2, -0.8 }
        }
      },
      collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      corpse = "medium-remnants",
      drawing_box = { { -0.5, -3 }, { 0.5, 0.5 } },
      flags = { "placeable-neutral", "player-creation", "filter-directions" },
      icon = "__base__/graphics/icons/train-stop.png",
      max_health = 150,
      minable = {
        mining_time = 1,
        result = "train-stop"
      },
      name = "train-stop",
      selection_box = { { -0.6, -0.6 }, { 0.6, 0.6 } },
      type = "train-stop"
    }
  },
  ["transport-belt"] = {
    ["basic-transport-belt"] = {
      animation_speed_coefficient = 64,
      animations = {
        direction_count = 12,
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "transport-belt",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/basic-transport-belt.png",
      max_health = 50,
      minable = {
        hardness = 0.2,
        mining_time = 0.3,
        result = "basic-transport-belt"
      },
      name = "basic-transport-belt",
      resistances = { {
          percent = 60,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      speed = 0.03125,
      type = "transport-belt"
    },
    ["express-transport-belt"] = {
      animation_speed_coefficient = 64,
      animations = {
        direction_count = 12,
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "transport-belt",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/express-transport-belt.png",
      max_health = 50,
      minable = {
        hardness = 0.2,
        mining_time = 0.3,
        result = "express-transport-belt"
      },
      name = "express-transport-belt",
      resistances = { {
          percent = 50,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      speed = 0.09375,
      type = "transport-belt"
    },
    ["fast-transport-belt"] = {
      animation_speed_coefficient = 64,
      animations = {
        direction_count = 12,
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "small-remnants",
      fast_replaceable_group = "transport-belt",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/fast-transport-belt.png",
      max_health = 50,
      minable = {
        hardness = 0.2,
        mining_time = 0.3,
        result = "fast-transport-belt"
      },
      name = "fast-transport-belt",
      resistances = { {
          percent = 50,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      speed = 0.0625,
      type = "transport-belt"
    }
  },
  ["transport-belt-to-ground"] = {
    ["basic-transport-belt-to-ground"] = {
      animation_speed_coefficient = 64,
      belt_horizontal = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      belt_vertical = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 32
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.05 } },
      corpse = "small-remnants",
      ending_bottom = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 96
      },
      ending_side = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 128
      },
      ending_top = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 64
      },
      fast_replaceable_group = "transport-belt-to-ground",
      flags = { "placeable-neutral", "player-creation", "fast-replaceable-no-rotate-only" },
      icon = "__base__/graphics/icons/basic-transport-belt-to-ground.png",
      max_health = 70,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "basic-transport-belt-to-ground"
      },
      name = "basic-transport-belt-to-ground",
      resistances = { {
          percent = 60,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      speed = 0.03125,
      starting_bottom = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 192
      },
      starting_side = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 224
      },
      starting_top = {
        filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 160
      },
      structure = {
        direction_in = {
          height = 43,
          priority = "extra-high",
          sheet = "__base__/graphics/entity/basic-transport-belt-to-ground/basic-transport-belt-to-ground-structure.png",
          shift = { 0.26, 0 },
          width = 57
        },
        direction_out = {
          height = 43,
          priority = "extra-high",
          sheet = "__base__/graphics/entity/basic-transport-belt-to-ground/basic-transport-belt-to-ground-structure.png",
          shift = { 0.26, 0 },
          width = 57,
          y = 43
        }
      },
      type = "transport-belt-to-ground",
      underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        height = 32,
        priority = "high",
        width = 32,
        x = 32
      }
    },
    ["express-transport-belt-to-ground"] = {
      animation_speed_coefficient = 64,
      belt_horizontal = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      belt_vertical = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 32
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.05 } },
      corpse = "small-remnants",
      ending_bottom = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 96
      },
      ending_side = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 128
      },
      ending_top = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 64
      },
      fast_replaceable_group = "transport-belt-to-ground",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/express-transport-belt-to-ground.png",
      max_health = 60,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "express-transport-belt-to-ground"
      },
      name = "express-transport-belt-to-ground",
      resistances = { {
          percent = 60,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      speed = 0.09375,
      starting_bottom = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 192
      },
      starting_side = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 224
      },
      starting_top = {
        filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 160
      },
      structure = {
        direction_in = {
          height = 43,
          priority = "extra-high",
          sheet = "__base__/graphics/entity/express-transport-belt-to-ground/express-transport-belt-to-ground-structure.png",
          shift = { 0.26, 0 },
          width = 57
        },
        direction_out = {
          height = 43,
          priority = "extra-high",
          sheet = "__base__/graphics/entity/express-transport-belt-to-ground/express-transport-belt-to-ground-structure.png",
          shift = { 0.26, 0 },
          width = 57,
          y = 43
        }
      },
      type = "transport-belt-to-ground",
      underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        height = 32,
        priority = "high",
        width = 32,
        x = 32
      }
    },
    ["fast-transport-belt-to-ground"] = {
      animation_speed_coefficient = 64,
      belt_horizontal = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high"
      },
      belt_vertical = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 32
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.05 } },
      corpse = "small-remnants",
      ending_bottom = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 96
      },
      ending_side = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 128
      },
      ending_top = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 64
      },
      fast_replaceable_group = "transport-belt-to-ground",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/fast-transport-belt-to-ground.png",
      max_health = 60,
      minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "fast-transport-belt-to-ground"
      },
      name = "fast-transport-belt-to-ground",
      resistances = { {
          percent = 60,
          type = "fire"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      speed = 0.0625,
      starting_bottom = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 192
      },
      starting_side = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 224
      },
      starting_top = {
        filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
        frame_count = 32,
        frame_height = 32,
        frame_width = 32,
        priority = "extra-high",
        y = 160
      },
      structure = {
        direction_in = {
          height = 43,
          priority = "extra-high",
          sheet = "__base__/graphics/entity/fast-transport-belt-to-ground/fast-transport-belt-to-ground-structure.png",
          shift = { 0.26, 0 },
          width = 57
        },
        direction_out = {
          height = 43,
          priority = "extra-high",
          sheet = "__base__/graphics/entity/fast-transport-belt-to-ground/fast-transport-belt-to-ground-structure.png",
          shift = { 0.26, 0 },
          width = 57,
          y = 43
        }
      },
      type = "transport-belt-to-ground",
      underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        height = 32,
        priority = "high",
        width = 32,
        x = 32
      }
    }
  },
  tree = {
    ["big-tree"] = {
      autoplace = {
        control = "forest",
        peaks = { {
            influence = 0.2,
            water_max_range = 0.4,
            water_optimal = 0.3,
            water_range = 0.2
          }, {
            influence = 0.9,
            noise_layer = "trees",
            noise_persistence = 0.5
          } },
        sharpness = 0.5
      },
      collision_box = { { -0.7, -0.8 }, { 0.7, 0.8 } },
      drawing_box = { { -0.8, -2.8 }, { 0.8, 0.8 } },
      emissions_per_tick = -0.0005,
      flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
      icon = "__base__/graphics/icons/big-tree.png",
      max_health = 50,
      minable = {
        count = 5,
        mining_particle = "wooden-particle",
        mining_time = 2,
        result = "raw-wood"
      },
      name = "big-tree",
      order = "a-b",
      pictures = { {
          filename = "__base__/graphics/entity/big-tree/big-tree-01.png",
          height = 118,
          priority = "extra-high",
          shift = { 1.1, -1 },
          width = 155
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-02.png",
          height = 169,
          priority = "extra-high",
          shift = { 1.2, -0.8 },
          width = 144
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-03.png",
          height = 131,
          priority = "extra-high",
          shift = { 0.8, -0.7 },
          width = 151
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-04.png",
          height = 131,
          priority = "extra-high",
          shift = { 2, -1 },
          width = 167
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-05.png",
          height = 154,
          priority = "extra-high",
          shift = { 1.5, -1.7 },
          width = 156
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-06.png",
          height = 111,
          priority = "extra-high",
          shift = { 0.7, -0.9 },
          width = 113
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-07.png",
          height = 125,
          priority = "extra-high",
          shift = { 1, -0.7 },
          width = 116
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-08.png",
          height = 129,
          priority = "extra-high",
          shift = { 1.4, -1.3 },
          width = 162
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-09.png",
          height = 164,
          priority = "extra-high",
          shift = { 1.7, -1.1 },
          width = 156
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-10.png",
          height = 129,
          priority = "extra-high",
          shift = { 1.1, -1.1 },
          width = 196
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-11.png",
          height = 129,
          priority = "extra-high",
          shift = { 1.3, -1.4 },
          width = 196
        }, {
          filename = "__base__/graphics/entity/big-tree/big-tree-12.png",
          height = 164,
          priority = "extra-high",
          shift = { 1.6, -1.2 },
          width = 175
        } },
      selection_box = { { -0.8, -2.2 }, { 0.8, 0.8 } },
      type = "tree"
    },
    ["dry-tree"] = {
      autoplace = {
        control = "forest",
        peaks = { {
            influence = 0.05,
            water_max_range = 0.5,
            water_optimal = 0,
            water_range = 0
          }, {
            influence = 0.2,
            noise_layer = "dry-trees",
            noise_persistence = 0.9,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = -0.05,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.05,
            water_max_range = 0.5,
            water_optimal = 0.2,
            water_range = 0.1
          }, {
            influence = 0.09,
            noise_layer = "trees",
            noise_persistence = 0.5,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0
          }, {
            influence = 0.02,
            noise_layer = "trees",
            noise_persistence = 0.5,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          } },
        sharpness = 0.2
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      emissions_per_tick = -0.0001,
      flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
      icon = "__base__/graphics/icons/dry-tree.png",
      max_health = 20,
      minable = {
        mining_particle = "wooden-particle",
        mining_time = 1,
        result = "raw-wood"
      },
      name = "dry-tree",
      order = "a-a",
      pictures = { {
          filename = "__base__/graphics/entity/tree/tree-a01.png",
          height = 64,
          priority = "extra-high",
          shift = { 0.7, -0.7 },
          width = 84
        }, {
          filename = "__base__/graphics/entity/tree/tree-a02.png",
          height = 85,
          priority = "extra-high",
          shift = { 0.9, -0.6 },
          width = 96
        }, {
          filename = "__base__/graphics/entity/tree/tree-a03.png",
          height = 84,
          priority = "extra-high",
          shift = { 0, -0.7 },
          width = 88
        }, {
          filename = "__base__/graphics/entity/tree/tree-a04.png",
          height = 82,
          priority = "extra-high",
          shift = { 0.7, -0.6 },
          width = 85
        }, {
          filename = "__base__/graphics/entity/tree/tree-a05.png",
          height = 81,
          priority = "extra-high",
          shift = { 0.2, -0.8 },
          width = 95
        }, {
          filename = "__base__/graphics/entity/tree/tree-a06.png",
          height = 68,
          priority = "extra-high",
          shift = { 0, -0.6 },
          width = 91
        }, {
          filename = "__base__/graphics/entity/tree/tree-a07.png",
          height = 78,
          priority = "extra-high",
          shift = { 0.5, -0.8 },
          width = 92
        }, {
          filename = "__base__/graphics/entity/tree/tree-a08.png",
          height = 94,
          priority = "extra-high",
          shift = { 0.5, -0.8 },
          width = 105
        } },
      selection_box = { { -0.6, -1.5 }, { 0.5, 0.4 } },
      type = "tree"
    }
  },
  turret = {
    ["big-worm-turret"] = {
      attack_parameters = {
        ammo_category = "rocket",
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "acid-projectile-purple",
              starting_speed = 0.5,
              type = "projectile"
            },
            type = "direct"
          },
          category = "biological"
        },
        cooldown = 100,
        damage_modifier = 6,
        projectile_creation_distance = 2.1,
        range = 25
      },
      autoplace = {
        control = "enemy-base",
        force = "enemy",
        peaks = { {
            influence = -10,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.15,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5
          }, {
            influence = 0.3,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5,
            tier_from_start_max_range = 20,
            tier_from_start_optimal = 10,
            tier_from_start_top_property_limit = 10
          } },
        sharpness = 0.3
      },
      collision_box = { { -1.4, -1.2 }, { 1.4, 1.2 } },
      corpse = "big-worm-corpse",
      ending_attack_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 8,
        frame_height = 207,
        frame_width = 270,
        run_mode = "backward",
        shift = { 0.596875, -0.55 },
        stripes = { {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-1.png",
            height_in_frames = 8,
            width_in_frames = 4
          }, {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-2.png",
            height_in_frames = 8,
            width_in_frames = 4
          }, {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-3.png",
            height_in_frames = 8,
            width_in_frames = 4
          }, {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-4.png",
            height_in_frames = 8,
            width_in_frames = 4
          } }
      },
      ending_attack_speed = 0.03,
      flags = { "placeable-player", "placeable-enemy", "not-repairable" },
      folded_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/big-worm-turret/folded.png",
        frame_count = 15,
        frame_height = 104,
        frame_width = 142,
        line_length = 5,
        priority = "medium",
        shift = { -0.121875, 0.153125 }
      },
      folded_speed = 0.01,
      folding_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/big-worm-turret/preparing.png",
        frame_count = 27,
        frame_height = 148,
        frame_width = 207,
        line_length = 7,
        priority = "medium",
        run_mode = "backward",
        shift = { 0.89375, -0.534375 }
      },
      folding_speed = 0.015,
      healing_per_tick = 0.02,
      icon = "__base__/graphics/icons/rocket-turret.png",
      inventory_size = 2,
      max_health = 500,
      name = "big-worm-turret",
      order = "b-b-f",
      prepare_range = 30,
      prepared_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/big-worm-turret/prepared.png",
        frame_count = 11,
        frame_height = 157,
        frame_width = 194,
        line_length = 4,
        priority = "medium",
        run_mode = "forward-then-backward",
        shift = { 0.690625, -0.70625 }
      },
      prepared_speed = 0.01,
      preparing_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/big-worm-turret/preparing.png",
        frame_count = 27,
        frame_height = 148,
        frame_width = 207,
        line_length = 7,
        priority = "medium",
        shift = { 0.89375, -0.534375 }
      },
      preparing_speed = 0.025,
      resistances = { {
          decrease = 8,
          type = "physical"
        }, {
          decrease = 10,
          percent = 30,
          type = "explosion"
        } },
      rotation_speed = 1,
      selection_box = { { -1.4, -1.2 }, { 1.4, 1.2 } },
      starting_attack_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 8,
        frame_height = 207,
        frame_width = 270,
        shift = { 0.596875, -0.55 },
        stripes = { {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-1.png",
            height_in_frames = 8,
            width_in_frames = 4
          }, {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-2.png",
            height_in_frames = 8,
            width_in_frames = 4
          }, {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-3.png",
            height_in_frames = 8,
            width_in_frames = 4
          }, {
            filename = "__base__/graphics/entity/big-worm-turret/starting-attack-4.png",
            height_in_frames = 8,
            width_in_frames = 4
          } }
      },
      starting_attack_speed = 0.03,
      type = "turret"
    },
    ["medium-worm-turret"] = {
      attack_parameters = {
        ammo_category = "rocket",
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "acid-projectile-purple",
              starting_speed = 0.5,
              type = "projectile"
            },
            type = "direct"
          },
          category = "biological"
        },
        cooldown = 100,
        damage_modifier = 3,
        projectile_creation_distance = 1.9,
        range = 20
      },
      autoplace = {
        control = "enemy-base",
        force = "enemy",
        peaks = { {
            influence = -10,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.22,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5
          }, {
            influence = 0.3,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5,
            tier_from_start_max_range = 20,
            tier_from_start_optimal = 10,
            tier_from_start_top_property_limit = 10
          } },
        sharpness = 0.3
      },
      collision_box = { { -1.1, -1 }, { 1.1, 1 } },
      corpse = "medium-worm-corpse",
      ending_attack_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 8,
        frame_height = 175,
        frame_width = 229,
        line_length = 1,
        priority = "medium",
        run_mode = "backward",
        shift = { 0.527344, -0.4875 },
        stripes = { {
            filename = "__base__/graphics/entity/medium-worm-turret/starting-attack-1.png",
            height_in_frames = 8,
            width_in_frames = 8
          }, {
            filename = "__base__/graphics/entity/medium-worm-turret/starting-attack-2.png",
            height_in_frames = 8,
            width_in_frames = 8
          } }
      },
      ending_attack_speed = 0.03,
      flags = { "placeable-player", "placeable-enemy", "not-repairable" },
      folded_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/medium-worm-turret/folded.png",
        frame_count = 15,
        frame_height = 88,
        frame_width = 120,
        line_length = 5,
        priority = "medium",
        shift = { -0.0835938, 0.1101563 }
      },
      folded_speed = 0.01,
      folding_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/medium-worm-turret/preparing.png",
        frame_count = 27,
        frame_height = 125,
        frame_width = 175,
        line_length = 7,
        priority = "medium",
        run_mode = "backward",
        shift = { 0.779688, -0.474219 }
      },
      folding_speed = 0.015,
      healing_per_tick = 0.015,
      icon = "__base__/graphics/icons/rocket-turret.png",
      max_health = 350,
      name = "medium-worm-turret",
      order = "b-b-e",
      prepare_range = 30,
      prepared_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/medium-worm-turret/prepared.png",
        frame_count = 11,
        frame_height = 133,
        frame_width = 164,
        line_length = 4,
        priority = "medium",
        run_mode = "forward-then-backward",
        shift = { 0.607031, -0.620312 }
      },
      prepared_speed = 0.01,
      preparing_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/medium-worm-turret/preparing.png",
        frame_count = 27,
        frame_height = 125,
        frame_width = 175,
        line_length = 7,
        priority = "medium",
        shift = { 0.779688, -0.474219 }
      },
      preparing_speed = 0.025,
      resistances = { {
          decrease = 4,
          type = "physical"
        }, {
          decrease = 5,
          percent = 15,
          type = "explosion"
        } },
      rotation_speed = 1,
      selection_box = { { -1.1, -1 }, { 1.1, 1 } },
      starting_attack_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 8,
        frame_height = 175,
        frame_width = 229,
        line_length = 1,
        priority = "medium",
        shift = { 0.527344, -0.4875 },
        stripes = { {
            filename = "__base__/graphics/entity/medium-worm-turret/starting-attack-1.png",
            height_in_frames = 8,
            width_in_frames = 8
          }, {
            filename = "__base__/graphics/entity/medium-worm-turret/starting-attack-2.png",
            height_in_frames = 8,
            width_in_frames = 8
          } }
      },
      starting_attack_speed = 0.03,
      type = "turret"
    },
    ["small-worm-turret"] = {
      attack_parameters = {
        ammo_category = "bullet",
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "acid-projectile-purple",
              starting_speed = 0.5,
              type = "projectile"
            },
            type = "direct"
          },
          category = "biological"
        },
        cooldown = 15,
        projectile_creation_distance = 1.8,
        range = 17
      },
      autoplace = {
        control = "enemy-base",
        force = "enemy",
        peaks = { {
            influence = -10,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.31,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5
          }, {
            influence = 0.1,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5,
            tier_from_start_max_range = 20,
            tier_from_start_optimal = 10,
            tier_from_start_top_property_limit = 10
          } },
        sharpness = 0.3
      },
      collision_box = { { -0.9, -0.8 }, { 0.9, 0.8 } },
      corpse = "small-worm-corpse",
      ending_attack_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 8,
        frame_height = 144,
        frame_width = 189,
        line_length = 1,
        priority = "medium",
        run_mode = "backward",
        shift = { 0.457812, -0.425 },
        stripes = { {
            filename = "__base__/graphics/entity/small-worm-turret/starting-attack-1.png",
            height_in_frames = 8,
            width_in_frames = 8
          }, {
            filename = "__base__/graphics/entity/small-worm-turret/starting-attack-2.png",
            height_in_frames = 8,
            width_in_frames = 8
          } }
      },
      ending_attack_speed = 0.03,
      flags = { "placeable-enemy", "not-repairable" },
      folded_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/small-worm-turret/folded.png",
        frame_count = 15,
        frame_height = 72,
        frame_width = 99,
        line_length = 5,
        priority = "medium",
        shift = { -0.0453125, 0.0671875 }
      },
      folded_speed = 0.01,
      folding_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/small-worm-turret/preparing.png",
        frame_count = 27,
        frame_height = 103,
        frame_width = 144,
        line_length = 7,
        priority = "medium",
        run_mode = "backward",
        shift = { 0.665625, -0.414062 }
      },
      folding_speed = 0.015,
      healing_per_tick = 0.01,
      icon = "__base__/graphics/icons/basic-turret.png",
      max_health = 200,
      name = "small-worm-turret",
      order = "b-b-d",
      prepare_range = 25,
      prepared_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/small-worm-turret/prepared.png",
        frame_count = 11,
        frame_height = 109,
        frame_width = 135,
        line_length = 4,
        priority = "medium",
        run_mode = "forward-then-backward",
        shift = { 0.523437, -0.534375 }
      },
      prepared_speed = 0.015,
      preparing_animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/small-worm-turret/preparing.png",
        frame_count = 27,
        frame_height = 103,
        frame_width = 144,
        line_length = 7,
        priority = "medium",
        shift = { 0.665625, -0.414062 }
      },
      preparing_speed = 0.025,
      selection_box = { { -0.9, -0.8 }, { 0.9, 0.8 } },
      starting_attack_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 8,
        frame_height = 144,
        frame_width = 189,
        line_length = 1,
        priority = "medium",
        shift = { 0.457812, -0.425 },
        stripes = { {
            filename = "__base__/graphics/entity/small-worm-turret/starting-attack-1.png",
            height_in_frames = 8,
            width_in_frames = 8
          }, {
            filename = "__base__/graphics/entity/small-worm-turret/starting-attack-2.png",
            height_in_frames = 8,
            width_in_frames = 8
          } }
      },
      starting_attack_speed = 0.03,
      type = "turret"
    }
  },
  unit = {
    ["big-biter"] = {
      attack_parameters = {
        ammo_category = "melee",
        ammo_type = {
          action = {
            action_delivery = {
              target_effects = {
                damage = {
                  amount = 30,
                  type = "physical"
                },
                type = "damage"
              },
              type = "instant"
            },
            type = "direct"
          },
          category = "melee",
          target_type = "entity"
        },
        animation = {
          axially_symmetrical = false,
          direction_count = 16,
          frame_count = 11,
          frame_height = 184,
          frame_width = 279,
          shift = { 1.74609, -0.644531 },
          stripes = { {
              filename = "__base__/graphics/entity/big-biter/big-biter-attack-1.png",
              height_in_frames = 8,
              width_in_frames = 6
            }, {
              filename = "__base__/graphics/entity/big-biter/big-biter-attack-2.png",
              height_in_frames = 8,
              width_in_frames = 5
            }, {
              filename = "__base__/graphics/entity/big-biter/big-biter-attack-3.png",
              height_in_frames = 8,
              width_in_frames = 6
            }, {
              filename = "__base__/graphics/entity/big-biter/big-biter-attack-4.png",
              height_in_frames = 8,
              width_in_frames = 5
            } }
        },
        cooldown = 35,
        range = 1.5
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      corpse = "big-biter-corpse",
      distance_per_frame = 0.2,
      distraction_cooldown = 300,
      dying_sound = { {
          filename = "__base__/sound/creeper-death-1.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-2.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-3.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-4.wav",
          volume = 0.7
        } },
      flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
      healing_per_tick = 0.02,
      icon = "__base__/graphics/icons/creeper.png",
      max_health = 375,
      movement_speed = 0.17,
      name = "big-biter",
      order = "b-b-c",
      pollution_to_join_attack = 1000,
      resistances = { {
          decrease = 8,
          type = "physical"
        }, {
          percent = 10,
          type = "explosion"
        } },
      run_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        frame_count = 16,
        frame_height = 117,
        frame_width = 169,
        shift = { 0.714844, -0.304688 },
        still_frame = 4,
        stripes = { {
            filename = "__base__/graphics/entity/big-biter/big-biter-run-1.png",
            height_in_frames = 16,
            width_in_frames = 8
          }, {
            filename = "__base__/graphics/entity/big-biter/big-biter-run-2.png",
            height_in_frames = 16,
            width_in_frames = 8
          } }
      },
      selection_box = { { -0.7, -1.5 }, { 0.7, 0.3 } },
      sticker_box = { { -0.6, -0.8 }, { 0.6, 0 } },
      type = "unit",
      vision_distance = 30
    },
    ["medium-biter"] = {
      attack_parameters = {
        ammo_category = "melee",
        ammo_type = {
          action = {
            action_delivery = {
              target_effects = {
                damage = {
                  amount = 15,
                  type = "physical"
                },
                type = "damage"
              },
              type = "instant"
            },
            type = "direct"
          },
          category = "melee",
          target_type = "entity"
        },
        animation = {
          axially_symmetrical = false,
          direction_count = 16,
          frame_count = 11,
          frame_height = 132,
          frame_width = 200,
          shift = { 1.25719, -0.464063 },
          stripes = { {
              filename = "__base__/graphics/entity/medium-biter/medium-biter-attack-1.png",
              height_in_frames = 8,
              width_in_frames = 6
            }, {
              filename = "__base__/graphics/entity/medium-biter/medium-biter-attack-2.png",
              height_in_frames = 8,
              width_in_frames = 5
            }, {
              filename = "__base__/graphics/entity/medium-biter/medium-biter-attack-3.png",
              height_in_frames = 8,
              width_in_frames = 6
            }, {
              filename = "__base__/graphics/entity/medium-biter/medium-biter-attack-4.png",
              height_in_frames = 8,
              width_in_frames = 5
            } }
        },
        cooldown = 35,
        range = 1
      },
      collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
      corpse = "medium-biter-corpse",
      distance_per_frame = 0.15,
      distraction_cooldown = 300,
      dying_sound = { {
          filename = "__base__/sound/creeper-death-1.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-2.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-3.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-4.wav",
          volume = 0.7
        } },
      flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
      healing_per_tick = 0.01,
      icon = "__base__/graphics/icons/creeper.png",
      max_health = 75,
      movement_speed = 0.185,
      name = "medium-biter",
      order = "b-b-b",
      pollution_to_join_attack = 1000,
      resistances = { {
          decrease = 4,
          type = "physical"
        }, {
          percent = 10,
          type = "explosion"
        } },
      run_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        filename = "__base__/graphics/entity/medium-biter/medium-biter-run.png",
        frame_count = 16,
        frame_height = 84,
        frame_width = 122,
        shift = { 0.514688, -0.219375 },
        still_frame = 4
      },
      selection_box = { { -0.7, -1.5 }, { 0.7, 0.3 } },
      sticker_box = { { -0.3, -0.5 }, { 0.3, 0.1 } },
      type = "unit",
      vision_distance = 30
    },
    ["small-biter"] = {
      attack_parameters = {
        ammo_category = "melee",
        ammo_type = {
          action = {
            action_delivery = {
              target_effects = {
                damage = {
                  amount = 6,
                  type = "physical"
                },
                type = "damage"
              },
              type = "instant"
            },
            type = "direct"
          },
          category = "melee",
          target_type = "entity"
        },
        animation = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/small-biter/small-biter-attack.png",
          frame_count = 11,
          frame_height = 93,
          frame_width = 139,
          shift = { 0.84375, -0.3125 }
        },
        cooldown = 35,
        range = 0.5
      },
      collision_box = { { -0.2, -0.2 }, { 0.2, 0.2 } },
      corpse = "small-biter-corpse",
      distance_per_frame = 0.1,
      distraction_cooldown = 300,
      dying_sound = { {
          filename = "__base__/sound/creeper-death-1.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-2.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-3.wav",
          volume = 0.7
        }, {
          filename = "__base__/sound/creeper-death-4.wav",
          volume = 0.7
        } },
      flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air" },
      healing_per_tick = 0.01,
      icon = "__base__/graphics/icons/creeper.png",
      max_health = 15,
      movement_speed = 0.2,
      name = "small-biter",
      order = "b-b-a",
      pollution_to_join_attack = 200,
      run_animation = {
        axially_symmetrical = false,
        direction_count = 16,
        filename = "__base__/graphics/entity/small-biter/small-biter-run.png",
        frame_count = 16,
        frame_height = 59,
        frame_width = 86,
        shift = { 0.359375, -0.15625 },
        still_frame = 4
      },
      selection_box = { { -0.4, -0.7 }, { 0.7, 0.4 } },
      type = "unit",
      vision_distance = 30
    }
  },
  ["unit-spawner"] = {
    ["biter-spawner"] = {
      animations = { {
          animation_speed = 0.18,
          axially_symmetrical = false,
          frame_count = 8,
          frame_height = 188,
          frame_width = 257,
          run_mode = "forward-then-backward",
          shift = { 0.359375, -0.125 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-1.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 0
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-2.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 0
            } }
        }, {
          animation_speed = 0.18,
          axially_symmetrical = false,
          frame_count = 8,
          frame_height = 188,
          frame_width = 257,
          run_mode = "forward-then-backward",
          shift = { 0.359375, -0.125 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-1.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 188
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-2.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 188
            } }
        }, {
          animation_speed = 0.18,
          axially_symmetrical = false,
          frame_count = 8,
          frame_height = 188,
          frame_width = 257,
          run_mode = "forward-then-backward",
          shift = { 0.359375, -0.125 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-1.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 376
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-2.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 376
            } }
        }, {
          animation_speed = 0.18,
          axially_symmetrical = false,
          frame_count = 8,
          frame_height = 188,
          frame_width = 257,
          run_mode = "forward-then-backward",
          shift = { 0.359375, -0.125 },
          stripes = { {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-1.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 564
            }, {
              filename = "__base__/graphics/entity/biter-spawner/biter-spawner-2.png",
              height_in_frames = 4,
              width_in_frames = 4,
              y = 564
            } }
        } },
      autoplace = {
        control = "enemy-base",
        force = "enemy",
        peaks = { {
            influence = 0,
            richness_influence = 100,
            tier_from_start_max_range = 40,
            tier_from_start_optimal = 20,
            tier_from_start_top_property_limit = 20
          }, {
            influence = -10,
            starting_area_weight_max_range = 2,
            starting_area_weight_optimal = 1,
            starting_area_weight_range = 0
          }, {
            influence = 0.425,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5
          }, {
            influence = 0.5,
            noise_layer = "enemy-base",
            noise_octaves_difference = -1.8,
            noise_persistence = 0.5,
            tier_from_start_max_range = 40,
            tier_from_start_optimal = 20,
            tier_from_start_top_property_limit = 20
          } },
        richness_base = 0,
        richness_multiplier = 1,
        sharpness = 0.4
      },
      collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
      corpse = "biter-spawner-corpse",
      flags = { "placeable-player", "placeable-enemy", "not-repairable" },
      healing_per_tick = 0.02,
      icon = "__base__/graphics/icons/biter-spawner.png",
      loot = { {
          count_max = 10,
          count_min = 2,
          item = "alien-artifact",
          probability = 1
        } },
      max_health = 350,
      max_richness_for_spawn_shift = 100,
      max_spawn_shift = 0.65,
      maximum_count_of_owned_units = 7,
      minable = {
        mining_time = 1,
        result = "biter-spawner"
      },
      name = "biter-spawner",
      order = "b-b-g",
      pollution_cooldown = 10,
      resistances = { {
          decrease = 2,
          type = "physical"
        }, {
          decrease = 5,
          percent = 15,
          type = "explosion"
        } },
      result_units = { { "small-biter", 0.3 }, { "medium-biter", 0.3 }, { "big-biter", 0.4 } },
      selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
      spawning_cooldown = { 300, 150 },
      spawning_radius = 10,
      spawning_spacing = 3,
      type = "unit-spawner"
    }
  },
  wall = {
    wall = {
      collision_box = { { -0.49, -0.49 }, { 0.49, 0.49 } },
      corpse = "wall-remnants",
      flags = { "placeable-neutral", "player-creation" },
      icon = "__base__/graphics/icons/wall.png",
      max_health = 350,
      minable = {
        mining_time = 1,
        result = "wall"
      },
      name = "wall",
      pictures = {
        corner_left_down = { {
            filename = "__base__/graphics/entity/wall/wall-corner-left-down.png",
            height = 42,
            priority = "extra-high",
            shift = { 0.21875, -0.15625 },
            width = 46
          } },
        corner_left_up = { {
            filename = "__base__/graphics/entity/wall/wall-corner-left-up.png",
            height = 58,
            priority = "extra-high",
            shift = { 0.296875, 0.03125 },
            width = 51
          } },
        corner_right_down = { {
            filename = "__base__/graphics/entity/wall/wall-corner-right-down.png",
            height = 42,
            priority = "extra-high",
            shift = { 0, -0.15625 },
            width = 32
          } },
        corner_right_up = { {
            filename = "__base__/graphics/entity/wall/wall-corner-right-up.png",
            height = 53,
            priority = "extra-high",
            shift = { 0, 0.171875 },
            width = 32
          } },
        cross = { {
            filename = "__base__/graphics/entity/wall/wall-cross.png",
            height = 38,
            priority = "extra-high",
            shift = { 0, -0.09375 },
            width = 32
          } },
        ending_down = { {
            filename = "__base__/graphics/entity/wall/wall-ending-down.png",
            height = 36,
            priority = "extra-high",
            shift = { 0.296875, -0.0625 },
            width = 51
          } },
        ending_left = { {
            filename = "__base__/graphics/entity/wall/wall-ending-left.png",
            height = 57,
            priority = "extra-high",
            shift = { 0.1875, 0.078125 },
            width = 44
          } },
        ending_right = { {
            filename = "__base__/graphics/entity/wall/wall-ending-right.png",
            height = 58,
            priority = "extra-high",
            shift = { 0, 0.0625 },
            width = 32
          } },
        ending_up = { {
            filename = "__base__/graphics/entity/wall/wall-ending-up.png",
            height = 47,
            priority = "extra-high",
            shift = { 0.5, 0.234375 },
            width = 64
          } },
        single = { {
            filename = "__base__/graphics/entity/wall/wall-single.png",
            height = 58,
            priority = "extra-high",
            shift = { 0.1, 0.1 },
            width = 33
          } },
        straight_horizontal = { {
            filename = "__base__/graphics/entity/wall/wall-straight-horizontal-1.png",
            height = 57,
            priority = "extra-high",
            shift = { 0, 0.078125 },
            width = 32
          }, {
            filename = "__base__/graphics/entity/wall/wall-straight-horizontal-2.png",
            height = 57,
            priority = "extra-high",
            shift = { 0, 0.078125 },
            width = 32
          }, {
            filename = "__base__/graphics/entity/wall/wall-straight-horizontal-3.png",
            height = 55,
            priority = "extra-high",
            shift = { 0, 0.078125 },
            width = 32
          } },
        straight_vertical = { {
            filename = "__base__/graphics/entity/wall/wall-straight-vertical-1.png",
            height = 32,
            priority = "extra-high",
            shift = { 0.296875, 0 },
            width = 51
          }, {
            filename = "__base__/graphics/entity/wall/wall-straight-vertical-2.png",
            height = 32,
            priority = "extra-high",
            shift = { 0.296875, 0 },
            width = 51
          } },
        straight_vertical_under_ending = { {
            filename = "__base__/graphics/entity/wall/wall-straight-vertical-under-ending.png",
            height = 32,
            priority = "extra-high",
            shift = { 0.296875, 0 },
            width = 51
          } },
        t_down = { {
            filename = "__base__/graphics/entity/wall/wall-t-down.png",
            height = 53,
            priority = "extra-high",
            shift = { 0, 0.140625 },
            width = 32
          } },
        t_left = { {
            filename = "__base__/graphics/entity/wall/wall-t-left.png",
            height = 38,
            priority = "extra-high",
            shift = { 0, -0.09375 },
            width = 32
          } },
        t_right = { {
            filename = "__base__/graphics/entity/wall/wall-t-right.png",
            height = 38,
            priority = "extra-high",
            shift = { 0.296875, -0.09375 },
            width = 51
          } },
        t_up = { {
            filename = "__base__/graphics/entity/wall/wall-t-up.png",
            height = 44,
            priority = "extra-high",
            shift = { 0, -0.1875 },
            width = 32
          } }
      },
      resistances = { {
          decrease = 3,
          percent = 20,
          type = "physical"
        }, {
          decrease = 10,
          percent = 30,
          type = "explosion"
        }, {
          percent = 100,
          type = "fire"
        }, {
          percent = 70,
          type = "laser"
        } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      type = "wall"
    }
  }
}

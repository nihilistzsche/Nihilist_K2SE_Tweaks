local function fix_crafting_recipe_category(recipe)
    local recipe_table = data.raw.recipe[recipe]
    log("Attempting to fix: " .. recipe)
    if recipe_table then
        log("Fixing: " .. recipe)
        recipe_table.category = "basic-crafting"
    end
end
fix_crafting_recipe_category("stone-tablet")
fix_crafting_recipe_category("motor")
fix_crafting_recipe_category("aluminum-cable")
fix_crafting_recipe_category("burner-lab")
fix_crafting_recipe_category("gold-cable")
fix_crafting_recipe_category("electric-motor")
fix_crafting_recipe_category("burner-assembling-machine")
local function fix_collision_mask(upgrade, base, _type)
    local tbl = data.raw[_type][upgrade]
    if tbl then
        tbl.collision_mask = table.deepcopy(data.raw[_type][base].collision_mask)
    end
end
fix_collision_mask("kr-advanced-transport-belt-beltbox", "express-transport-belt-beltbox", "furnace")
fix_collision_mask("kr-superior-transport-belt-beltbox", "express-transport-belt-beltbox", "furnace")
fix_collision_mask("kr-advanced-transport-belt-loader", "express-transport-belt-loader", "loader-1x1")
fix_collision_mask("kr-superior-transport-belt-loader", "express-transport-belt-loader", "loader-1x1")


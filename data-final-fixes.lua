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

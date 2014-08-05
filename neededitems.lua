--
-- http://www.factorioforums.com/forum/viewtopic.php?f=6&t=4397&p=33012#p33012
--


package.path = package.path .. ';data/core/lualib/?.lua;data/base/?.lua'
require "dataloader"
require "data.base.data"

data.raw.recipe["empty-crude-oil-barrel"].hidden_from_recipe_tree = true;
data.raw.recipe["advanced-oil-processing"].hidden_from_recipe_tree = true;
data.raw.recipe["heavy-oil-cracking"].hidden_from_recipe_tree = true;
data.raw.recipe["light-oil-cracking"].hidden_from_recipe_tree = true;

function getRecipe(item)
    local count = 1
    for i,recipe in pairs(data.raw.recipe) do
        if (recipe.results) then
            for j,product in pairs(recipe.results) do
                if (product.name == item) then
                    if (not recipe.hidden_from_recipe_tree) then
                        return recipe
                    end
                end
            end
        end

        if (recipe.result == item) then
            if (not recipe.hidden_from_recipe_tree) then
                return recipe
            end
        end
    end

    return nil
end

function getIngredients(recipe)
    local ingredients = {}
    for i,ingredient in pairs(recipe.ingredients) do
        local name, amount = 0
        if (ingredient.type) then
            name = ingredient.name
            amount = ingredient.amount
        elseif (ingredient[1] and ingredient[2]) then
            name = ingredient[1]
            amount = ingredient[2]
        end
        if (amount > 0) then
            local subrecipe = getRecipe(name)
            local multiple = 1;
            if (subrecipe and subrecipe.results) then
                for j,product in pairs(subrecipe.results) do
                    if (product.name == name) then
                        multiple = product.amount
                    end
                end
            elseif (subrecipe and subrecipe.result == name and subrecipe.result_count) then
                multiple = subrecipe.result_count
            end

            if (subrecipe == nil) then
                ingredients[name] = amount / multiple
            else
                for subname,subamount in pairs(getIngredients(subrecipe)) do
                    if (ingredients[subname]) then
                        ingredients[subname] = ingredients[subname] + subamount * amount / multiple
                    else
                        ingredients[subname] = subamount * amount / multiple
                    end
                end
            end
        end
    end

    return ingredients
end

function round(num, idp)
    return tonumber(string.format("%." .. (idp or 0) .. "f", num))
end

for k,recipe in pairs(data.raw.recipe) do
    print(k)
    local ingredients = getIngredients(recipe)
    for name,amount in pairs(ingredients) do
        print(round(amount, 1) .. "x " .. name)
    end
    print ""
end


-----------------------


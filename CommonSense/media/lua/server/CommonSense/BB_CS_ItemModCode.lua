-- **************************************************
-- ██████  ██████   █████  ██    ██ ███████ ███    ██ 
-- ██   ██ ██   ██ ██   ██ ██    ██ ██      ████   ██ 
-- ██████  ██████  ███████ ██    ██ █████   ██ ██  ██ 
-- ██   ██ ██   ██ ██   ██  ██  ██  ██      ██  ██ ██ 
-- ██████  ██   ██ ██   ██   ████   ███████ ██   ████
-- **************************************************

require "recipecode"

local cologneItem = ScriptManager.instance:getItem("Base.Cologne")
if cologneItem then
    cologneItem:getTags():add("Disinfectant")
    cologneItem:DoParam("Type = Drainable")
    cologneItem:DoParam("AlcoholPower = 3")
    cologneItem:DoParam("UseDelta = 0.5")
end

local recipes = getScriptManager():getAllRecipes()
for i = 0, recipes:size() - 1 do
    local recipe = recipes:get(i)
    local recipeName = recipe:getOriginalname()
    if string.match(recipeName, "Open Jar of ") then
        recipe:setLuaCreate("Recipe.OnCreate.OpenJarredFood")
    end

    if string.match(recipeName, "Open Canned")
    or recipeName == "Open Dog Food"
    or recipeName == "Open Condensed Milk" then
        recipe:setLuaTest("Recipe.OnTest.HasCanOpener")
    end
end
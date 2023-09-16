local Players = game:GetService("Players")

local function highlightPlayer(player)
  -- Create a new Highlight instance.
  local highlight = Instance.new("Highlight")

  -- Set the adornee of the highlight to the player's character.
  highlight.Adornee = player.Character

  -- Set the color of the highlight.
  highlight.OutlineColor = Color3.new(1, 1, 0.8) -- yellow
  highlight.OutlineTransparency = 0

  -- Parent the highlight to the player's character.
  highlight.Parent = player.Character
end

-- Loop through all of the players in the game.
for _, player in pairs(Players:GetPlayers()) do
  -- Highlight the player.
  highlightPlayer(player)
end

local UserInputService = game:GetService("UserInputService")
local Client  = game:GetService('Players').LocalPlayer
UserInputService.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.F10 then
      local Character = Client.Character
      local http = game:GetService("HttpService")
      local src = [[
          game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
          repeat wait() until game:GetService('Players').LocalPlayer
          loadstring(game:HttpGet('%s',true))();
      ]]
      srcf = string.format('nil')
      queue_on_teleport(srcf)
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, Client)
    end
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "TOCHIPYRO_UI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 250)
frame.Position = UDim2.new(0.5, -200, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BackgroundTransparency = 0.5
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "TOCHIPYRO Script"
title.Font = Enum.Font.GothamBold
title.TextScaled = true
title.Parent = frame

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255,0,0)),
    ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255,255,0)),
    ColorSequenceKeypoint.new(0.4, Color3.fromRGB(0,255,0)),
    ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0,255,255)),
    ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0,0,255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255,0,255))
}
gradient.Parent = title

local visualButton = Instance.new("TextButton")
visualButton.Size = UDim2.new(0, 180, 0, 45)
visualButton.Position = UDim2.new(0.5, -90, 0, 70)
visualButton.Text = "VISUAL CLONE"
visualButton.Parent = frame

Instance.new("UICorner", visualButton)

local moreButton = Instance.new("TextButton")
moreButton.Size = UDim2.new(0, 180, 0, 45)
moreButton.Position = UDim2.new(0.5, -90, 0, 130)
moreButton.Text = "MORE"
moreButton.Parent = frame

Instance.new("UICorner", moreButton)

local moreFrame = Instance.new("Frame")
moreFrame.Size = UDim2.new(0, 280, 0, 180)
moreFrame.Position = UDim2.new(0.5, -140, 0.5, -90)
moreFrame.BackgroundColor3 = Color3.fromRGB(90, 0, 140)
moreFrame.BackgroundTransparency = 0.5
moreFrame.Visible = false
moreFrame.Parent = gui

Instance.new("UICorner", moreFrame)

local moreTitle = Instance.new("TextLabel")
moreTitle.Size = UDim2.new(1, 0, 0, 40)
moreTitle.BackgroundTransparency = 1
moreTitle.Text = "MORE MENU"
moreTitle.TextScaled = true
moreTitle.TextColor3 = Color3.new(1,1,1)
moreTitle.Parent = moreFrame

local effectsButton = Instance.new("TextButton")
effectsButton.Size = UDim2.new(0, 180, 0, 45)
effectsButton.Position = UDim2.new(0.5, -90, 0, 60)
effectsButton.Text = "VISUAL EFFECTS"
effectsButton.Parent = moreFrame

Instance.new("UICorner", effectsButton)

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 180, 0, 45)
closeButton.Position = UDim2.new(0.5, -90, 0, 115)
closeButton.Text = "CLOSE UI"
closeButton.Parent = moreFrame

Instance.new("UICorner", closeButton)

moreButton.MouseButton1Click:Connect(function()
    moreFrame.Visible = not moreFrame.Visible
end)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

visualButton.MouseButton1Click:Connect(function()
    print("Visual effect only.")
end)

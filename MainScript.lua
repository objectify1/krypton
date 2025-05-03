-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a second Frame (slightly larger rectangle)
local outerRectangle = Instance.new("Frame")
outerRectangle.Size = UDim2.new(0, 981, 0, 662) -- 2 pixels larger in width and height
outerRectangle.Position = UDim2.new(0.5, -452, 0.5, -332) -- Adjusted to keep it centered
outerRectangle.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
outerRectangle.ZIndex = 1 -- Set ZIndex lower to place it behind
outerRectangle.Parent = screenGui

-- Add UICorner for rounded corners to the second rectangle
local outerUiCorner = Instance.new("UICorner")
outerUiCorner.CornerRadius = UDim.new(0, 20) -- Less rounded corners
outerUiCorner.Parent = outerRectangle

-- Create a Frame (rectangle)
local rectangle = Instance.new("Frame")
rectangle.Size = UDim2.new(0, 977, 0, 658) -- Width: 900px, Height: 700px
rectangle.Position = UDim2.new(0.5, -450, 0.5, -330) -- Centered on the screen
rectangle.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
rectangle.ZIndex = 2 -- Set ZIndex higher to place it in front
rectangle.Parent = screenGui

-- Add UICorner for rounded corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 20) -- Less rounded corners
uiCorner.Parent = rectangle

-- Create another Frame inside the main rectangle
local innerRectangle = Instance.new("Frame")
innerRectangle.Size = UDim2.new(0, 938, 0, 580) -- Adjust size as needed
innerRectangle.Position = UDim2.new(0.5, -449, 0.5, -250) -- Centered inside the main rectangle
innerRectangle.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
innerRectangle.ZIndex = 3 -- Set ZIndex higher to place it in front of the main rectangle
innerRectangle.Parent = rectangle

-- Add UICorner for rounded corners to the inner rectangle
local innerUiCorner = Instance.new("UICorner")
innerUiCorner.CornerRadius = UDim.new(0, 20) -- Adjust the radius as needed
innerUiCorner.Parent = innerRectangle

local cornerMaskSize = UDim2.new(0, 20, 0, 20) -- Adjust size as needed
local cornerMaskColor = Color3.fromRGB(39, 39, 39) -- Same color as the outer rectangle

-- topLeftMask
local topLeftMask = Instance.new("Frame")
topLeftMask.Size = cornerMaskSize
topLeftMask.Position = UDim2.new(1, -938, 0, 82)
topLeftMask.BorderColor3 = cornerMaskColor
topLeftMask.BackgroundColor3 = cornerMaskColor
topLeftMask.ZIndex = 3
topLeftMask.Parent = outerRectangle

-- topRightMask
local topRightMask = Instance.new("Frame")
topRightMask.Size = cornerMaskSize
topRightMask.Position = UDim2.new(1, -21, 0, 82)
topRightMask.BorderColor3 = cornerMaskColor
topRightMask.BackgroundColor3 = cornerMaskColor
topRightMask.ZIndex = 3
topRightMask.Parent = outerRectangle

-- bottomLeftMask
local bottomLeftMask = Instance.new("Frame")
bottomLeftMask.Size = cornerMaskSize
bottomLeftMask.Position = UDim2.new(1, -938, 0, 640)
bottomLeftMask.BorderColor3 = cornerMaskColor
bottomLeftMask.BackgroundColor3 = cornerMaskColor
bottomLeftMask.ZIndex = 3
bottomLeftMask.Parent = outerRectangle

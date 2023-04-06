local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = true, IntroEnabled = false, })

OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "You are Logged in as "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

getgenv().Key = "Dev" -- the key for the script 
getgenv().Keyinput = "string"

function MakeScriptHub()
if game.PlaceId == 3652625463 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Develeper Version of NSD HUB's Lifting Simulator", HidePremium = false, IntroEnabled = false,IntroText = "Welcome Back NSD", SaveConfig = true, ConfigFolder = "LiftingTest"})
                
    --Values
    getgenv().autoTool = true -- (Active)
    getgenv().autoLift = true -- (Active)
    getgenv().autoSell = true -- (Active)
    getgenv().autobuyStage = true -- (Active)
    getgenv().autobuyGenetics = true -- (in Work)
    getgenv().autobuyWeights = true -- (in Work)
    --Functions
                
    
    function autoLift()
        while getgenv().autoLift == true do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
        wait(0.5)        
     end
    end
        
    function autoSell()	
        while getgenv().autoSell == true do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
        wait(0.5)        
     end
    end	
        
     
    function autobuyGenetics()
        while getgenv().autobuyGenetics == true do
       -- loadstring(game:HttpGet((''),true))()
     end
    end
            
    function autobuyWeights()
        while getgenv().autobuyWeights == true do
        -- loadstring(game:HttpGet((''),true))()
     end
    end    
    
    
    -- Tabs
    local FarmTab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
     
    FarmTab:AddToggle({
        Name = "-- Auto Tool (Active)",
        Default = false,
        Callback = function(Value)
            getgenv().autoTool = Value
            spawn(function()
            while wait() do
            if autoTool then
            
            for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
            if v:isA("Tool") and v:FindFirstChild("Income_Tool_Script") then
            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(v)
            end
            end
            for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
            if v:isA("Tool") and v:FindFirstChild("Income_Tool_Script") then
            v:Activate()
            end
            end
            
            end
            end
            end)
        end
    })
        
    -- Toggle 
    FarmTab:AddToggle({
        Name = "-- Auto Lift (Active)",
        Default = false,
        Callback = function(Value)
            getgenv().autoLift = Value
            autoLift()
        end
    })
        
    -- Toggle
    FarmTab:AddToggle({
        Name = "-- Auto Sell (Active)",
        Default = false,
        Callback = function(Value)
            getgenv().autoSell = Value
            autoSell()
        end
    })
    
    -- Button
    FarmTab:AddButton({
        Name = "-- Auto Buy Stage (Active)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NotSlayerDemon/Script-Auto-Buy-Stage/main/Script.lua"))()
        end
    })
        
    -- Toggle 
    FarmTab:AddToggle({
        Name = "-- Auto Buy Genetics (Inactive)",
        Default = false,
        Callback = function(Value)
            getgenv().autobuyGenetics = Value
            autobuyGenetics()
        end
    })
    
    -- Toggle 
    FarmTab:AddToggle({
        Name = "-- Auto Buy Weights (Inactive)",
        Default = false,
        Callback = function(Value)
            getgenv().autobuyWeights = Value
            autobuyWeights()
        end
    })
    
    
    local SetTab = Window:MakeTab({
        Name = "SetSize/SetSpeed",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    SetTab:AddButton({
        Name = "Conceal = true",
        Callback = function()
            local args = {
                [1] = {
                    [1] = "ChangeSetting",
                    [2] = "ConcealEnabled",
                    [3] = true
                }
            }
            
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        
        end 
    })
    
    SetTab:AddButton({
        Name = "Coneceal = false",
        Callback = function()
            local args = {
                [1] = {
                    [1] = "ChangeSetting",
                    [2] = "ConcealEnabled",
                    [3] = false
                }
            }
            
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end 
    })
    
    SetTab:AddButton({
        Name = "Set Size 4Vg",
        Callback = function()
            local args = {
                [1] = {
                    [1] = "ChangeSetting",
                    [2] = "MuscleReveal",
                    [3] = 4.7272727272725146e+63
                }
            }
            
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end 
    })
    
    SetTab:AddButton({
        Name = "Set Size 59Dc -- SpinMode:Activated() == true",
        Callback = function()
            local args = {
                [1] = {
                    [1] = "ChangeSetting",
                    [2] = "MuscleReveal",
                    [3] = 5.9090909090908565e+34
                }
            }
            
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end 
    })
    
    SetTab:AddButton({
        Name = "Set Size 40T",
        Callback = function()
            local args = {
                [1] = {
                    [1] = "ChangeSetting",
                    [2] = "MuscleReveal",
                    [3] = 40000000000000
                }
            }
            
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end 
    })
    
    SetTab:AddButton({
        Name = "Set Size 69420",
        Callback = function()
        local args = {
            [1] = {
                [1] = "ChangeSetting",
                [2] = "MuscleReveal",
                [3] = 69420
            }
        }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })
    SetTab:AddButton({
        Name = "Set Size 69",
        Callback = function()
        local args = {
            [1] = {
                [1] = "ChangeSetting",
                [2] = "MuscleReveal",
                [3] = 69
            }
        }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })

    SetTab:AddButton({
        Name = "Set Size 1",
        Callback = function()
        local args = {
            [1] = {
                [1] = "ChangeSetting",
                [2] = "MuscleReveal",
                [3] = 1
            }
        }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })

    SetTab:AddButton({
        Name = "SetSpeed (1k)",
        Callback = function()
        local args = {
            [1] = {
                [1] = "ChangeSetting",
                [2] = "SpeedReveal",
                [3] = 1000
            }
        }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })

    SetTab:AddButton({
        Name = "SetSpeed (4k)",
        Callback = function()
        local args = {
            [1] = {
                [1] = "ChangeSetting",
                [2] = "SpeedReveal",
                [3] = 4000
            }
        }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })

    SetTab:AddButton({
        Name = "SetSpeed (2k)",
        Callback = function()
        local args = {
            [1] = {
                [1] = "ChangeSetting",
                [2] = "SpeedReveal",
                [3] = 2000
            }
        }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })


    SetTab:AddButton({
        Name = "SetSpeed (666)",
        Callback = function()
        local args = {
            [1] = {
                [1] = "ChangeSetting",
                [2] = "SpeedReveal",
                [3] = 666
            }
        }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    })

    local TpLocationTab = Window:MakeTab({
        Name = "Teleport To",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    TpLocationTab:AddButton({
        Name = "Boss #1",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(1337.77783203125, -55.674137115478516, 1889.0390625))
            wait(0)
            teleport(TpLocation)
        end
    })
    TpLocationTab:AddButton({
        Name = "Boss #2",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(4064.661865234375, -55.66917037963867, 1904.29833984375))
            wait(0)
            teleport(TpLocation)
        end
    })
    TpLocationTab:AddButton({
        Name = "Boss #3",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(9262.822265625, -55.66917037963867, 1892.105224609375))
            wait(0)
            teleport(TpLocation)
        end
    })
    TpLocationTab:AddButton({
        Name = "Boss #4",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(12046.7763671875, -55.66917419433594, 1866.70361328125))
            wait(0)
            teleport(TpLocation)
        end
    })
    TpLocationTab:AddButton({
        Name = "Boss #5",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(14636.7900390625, -55.66917037963867, 1883.5072021484375))
            wait(0)
            teleport(TpLocation)
        end
    })
    TpLocationTab:AddButton({
        Name = "Boss #6",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(17153.341796875, -55.66917419433594, 1907.96044921875))
            wait(0)
            teleport(TpLocation)
        end
    })
    TpLocationTab:AddButton({
        Name = "Boss #7",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(19706.34765625, -55.66434097290039, 1933.410888671875))
            wait(0)
            teleport(TpLocation)
        end
    })
    TpLocationTab:AddButton({
        Name = "Boss #8",
        Callback = function()
            local player = game.Players.LocalPlayer
            local TpLocation
            -- function

            function teleport(loc) -- Nymphoria on v3rmillion.net
              bLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
              wait()
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = loc
            end

            teleport(CFrame.new(22267.2890625, -55.57325744628906, 1918.364990234375))
            wait(0)
            teleport(TpLocation)
        end
    })




    local ScriptsTab = Window:MakeTab({
        Name = "Script",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    ScriptsTab:AddButton({
        Name = "Anti AFK",
        Callback = function()
         loadstring(game:HttpGet(('https://raw.githubusercontent.com/NotSlayerDemon/Anti-afk/main/Anti%20AFK.lua')))()
        end
    })
        
    ScriptsTab:AddButton({
        Name = "Rox Hub",
        Callback = function()
            Rox_Hub = true
            loadstring(game:HttpGet("https://gist.githubusercontent.com/HaxxV1/d7cfdb5090e819a84a8db22fb113f39d/raw"))()
        end
    })
    
    local NSDTab = Window:MakeTab({
        Name = "NSD Only scripts",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    NSDTab:AddButton({
        Name = "Rox Hub",
        Callback = function()
             Rox_Hub = true
             loadstring(game:HttpGet("https://gist.githubusercontent.com/HaxxV1/d7cfdb5090e819a84a8db22fb113f39d/raw"))()
        end
    })
       NSDTab:AddButton({
        Name = "Dark Dex v3",
        Callback = function()
             loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
        end    
    })
       NSDTab:AddButton({
        Name = "Turtle Spy",
        Callback = function()
             loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
        end    
    })
       NSDTab:AddButton({
        Name = "infinite Yield",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end    
    })
    
    NSDTab:AddButton({
         Name = "SimpleSpy",
         Callback = function()
             loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
        end    
    })





   NSDTab:AddButton({
       Name = "Auto Clicker",
       Callback = function()
        getgenv().Settings = {
            ["Auto Click Keybind"] = "V", -- Use an UpperCase letter or KeyCode Enum. Ex: Enum.KeyCode.Semicolon
            ["Lock Mouse Position Keybind"] = "B",
            ["Right Click"] = false,
            ["GUI"] = true,
            ["Delay"] = 0 -- 0 for RenderStepped, other numbers go to regular wait timings.
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BimbusCoder/Script/main/Auto%20Clicker.lua"))()
        end
    })

   OrionLib:MakeNotification({
       Name = "Ty for using the my script",
       Content = "You Executed me "..Player.Name..".",
       Image = "rbxassetid://4483345998",
       Time = 5
   })
   end
   OrionLib:Init()-- End of this script
end   
    function CorrectKeyNotification()
        orionLib:MakeNotification({
            Name = "Correct Key",
            Content = "You have entered the correct key!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end

    function incorrectKeyNotification()
        OrionLib:MakeNotification({
            Name = "InCorrect Key",
            Content = "You have entered the Incorrect key!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
        
    local KeyTab = Window:MakeTab({
        Name = "Key",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
        
    KeyTab:AddTextbox({
        Name = "Enter Key",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            getgenv().Keyinput = Value
        end	  
    })
        
    KeyTab:AddButton({
        Name = "Ceack Key",
        Callback = function()
            if getgenv().Keyinput == getgenv().Key then
            MakeScriptHub()
            CorrectKeyNotification() 
            else
                incorrectKeyNotification()
            end	
        end    
    })

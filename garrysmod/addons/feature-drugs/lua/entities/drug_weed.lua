AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "drug_ent"

ENT.PrintName = L.marijuana -- dont change anything here except for this name
ENT.Author = "LegendofRobbo"
ENT.Contact = ""
ENT.Purpose = ""
ENT.Instructions = ""
ENT.Category = "Drugmod"

ENT.Spawnable = true


---------------- EDIT THIS STUFF FOR CUSTOM DRUGS ----------------
ENT.DrugModel = "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl"
ENT.DrugModelColor = Color(255,255,255)
ENT.DrugSound = "player/suit_sprint.wav" -- the sound the drug makes when you use it
ENT.DrugEffect = "Weed" -- what effect it gives you
ENT.DrugTime = 45 -- how much effect duration it gives you, effect duration can stack with multiple doses
-- clientside only
ENT.DrugColor = Color(95,255,95) -- the colour of the title text
ENT.DrugDescription = L.description_marijuana -- its description, remember to use newline (/n) to make multiple lines
ENT.DrugLegal = false -- is this a counterfeit drug or an over-the-counter pharmacy drug
------------------------------------------------------------------




---------------- DONT MESS WITH THIS UNLESS YOU KNOW HOW TO CODE ----------------
if SERVER then

function ENT:Initialize()
	self:SetModel( self.DrugModel )
 	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
 	self:SetColor( self.DrugModelColor )
	self:SetUseType( SIMPLE_USE )
	self:SetCollisionGroup( COLLISION_GROUP_WEAPON )

	local PhysAwake = self:GetPhysicsObject()
	if ( PhysAwake:IsValid() ) then
		PhysAwake:Wake()
	end
end

function ENT:Use( activator, caller )
if activator:HasBuff( "Overdose" ) then return end
if activator.bleeding then
	activator:Notify('warning', 'Ты при смерти')
	return
end
activator:AddBuff( self.DrugEffect, self.DrugTime )
activator:EmitSound(self.DrugSound, 75, 100)
self:Remove()
end


end

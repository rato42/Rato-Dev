function Unit:VpUseCombatStim(action_id, cost_ap, args)
    local action = CombatActions[action_id]
    self.ActionPoints = self.ActionPoints + cost_ap
    local item = action:GetAttackWeapons(self)
    InventoryUseItem(self, item, self, "Inventory")

end

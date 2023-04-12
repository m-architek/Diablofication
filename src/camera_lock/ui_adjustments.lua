function %lock_scroll_lua_fn%()
    if EEex_Active then
        local id = EEex_GameObject_GetUnderCursorID()

        if not EEex_GameObject_IsSpriteID(id) then
            id = -1
        end

        if id ~= -1 then 
            local sprite = EEex_GameObject_GetUnderCursor()
            local portrait = EEex_Sprite_GetPortraitIndex(sprite)
            if portrait == -1 then 
                id = -1
            end
        end

        EngineGlobals.g_pBaldurChitin.m_pEngineWorld.m_scrollLockId = id
    else
        C:Eval('LockScroll()')
    end

end

function %lock_scroll_on_leader_lua_fn%()
    if EEex_Active then
        local id = EEex_Sprite_GetSelectedID()

        if id ~= -1 then 
            local sprite = EEex_Sprite_GetSelected()
            local portrait = EEex_Sprite_GetPortraitIndex(sprite)
            if portrait == -1 then 
                id = -1
            end
        end

        EngineGlobals.g_pBaldurChitin.m_pEngineWorld.m_scrollLockId = id
    end
end

function %unlock_scroll_lua_fn%()
    if EEex_Active then
        EngineGlobals.g_pBaldurChitin.m_pEngineWorld.m_scrollLockId = -1
    else
        C:Eval('UnlockScroll()')
    end
end

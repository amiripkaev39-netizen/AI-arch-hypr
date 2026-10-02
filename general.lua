-- general.lua
-- Общее поведение: зазоры, границы, раскладка.

hl.config({
    general = {
        gaps_in = 5,              -- зазор между окнами
        gaps_out = 20,            -- зазор от окон до краёв экрана
        border_size = 2,          -- толщина рамки вокруг окна

        -- Цвета рамок (формат ARGB)
        col = {
            active_border   = "rgba(5289E2ee)",  -- активное окно
            inactive_border = "rgba(595959aa)",  -- неактивное окно
        },

        -- Раскладка
        layout = "dwindle",       -- основная раскладка (dwindle — «дерево»)

        -- Прочее
        resize_on_border = false,
        allow_tearing = false,
    },
})

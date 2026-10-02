-- autostart.lua
-- Что запускать при старте Hyprland.

hl.on("hyprland.start", function()
    -- Панель
    hl.exec_cmd("waybar")

    -- Обои
    hl.exec_cmd("hyprpaper")

    -- Уведомления
    hl.exec_cmd("dunst")

    -- Поликит-агент (для запроса пароля в GUI)
    hl.exec_cmd("hyprpolkitagent")

    -- Буфер обмена (менеджер истории)
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Менеджер сети (апплет)
    hl.exec_cmd("nm-applet --indicator")

    -- Блютуз
    hl.exec_cmd("blueman-applet")
end)

-- windowrules.lua
-- Правила для конкретных окон.

-- ============================================================
-- FLOATING ОКНА (диалоги и утилиты)
-- ============================================================

-- Регулятор звука
hl.window_rule({
    name = "pavucontrol",
    match = { class = "^(pavucontrol)$" },
    float = true,
    size = { 800, 600 },
    center = true,
})

-- Менеджер Bluetooth
hl.window_rule({
    name = "blueman-manager",
    match = { class = "^(blueman-manager)$" },
    float = true,
    size = { 800, 600 },
    center = true,
})

-- Настройки сети
hl.window_rule({
    name = "nm-connection-editor",
    match = { class = "^(nm-connection-editor)$" },
    float = true,
    size = { 800, 600 },
    center = true,
})

-- Диалоги открытия/сохранения файлов
hl.window_rule({
    name = "thunar-dialogs",
    match = { class = "^(thunar)$", title = "^(.*)(Open|Save)(.*)$" },
    float = true,
    center = true,
})

-- ============================================================
-- ПРИЛОЖЕНИЯ С ОСОБЫМ ПОВЕДЕНИЕМ
-- ============================================================

-- Qutebrowser — отключаем блюр, чтобы текст не «плыл»
hl.window_rule({
    name = "qutebrowser-no-blur",
    match = { class = "^(qutebrowser)$" },
    no_blur = true,
})

-- Steam игры — отключаем анимации и блюр для производительности
hl.window_rule({
    name = "steam-games",
    match = { class = "^(steam_app_.*)$" },
    no_anim = true,
    no_blur = true,
})

-- ============================================================
-- XWAYLAND ОКНА
-- ============================================================

-- Иногда XWayland-окна не получают фокус — форсируем
hl.window_rule({
    name = "xwayland-focus",
    match = { xwayland = true },
    focus_on_activate = true,
})

-- input.lua
-- Клавиатура, мышь, тачпад.

hl.config({
    input = {
        kb_layout  = "us,ru",       -- две раскладки: английская и русская
        kb_variant = "",            -- вариант раскладки (пусто = стандартный)
        kb_model   = "",            -- модель клавиатуры (пусто = авто)
        kb_options = "grp:alt_shift_toggle",  -- переключение: Alt+Shift
        kb_rules   = "",

        follow_mouse = 1,           -- фокус следует за мышью
        sensitivity = 0,            -- чувствительность мыши (0 = нейтрально)

        touchpad = {
            natural_scroll = true,  -- натуральная прокрутка (как на Mac)
        },
    },
})

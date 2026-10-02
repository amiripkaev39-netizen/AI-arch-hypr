-- animations.lua
-- Кривые Безье и правила анимаций.

-- Сначала определяем кривые (bezier).
-- Каждая кривая — это 4 числа: две контрольные точки для кубической кривой.

-- "Плавный старт, мягкое торможение" — универсальная кривая для большинства анимаций
hl.curve("smooth", { type = "bezier", points = { {0.25, 0.1}, {0.25, 1.0} } })

-- "Быстрый старт, резкое торможение" — для окон, которые должны появляться быстро
hl.curve("quick", { type = "bezier", points = { {0.15, 0.0}, {0.1, 1.0} } })

-- "С лёгким перелётом" — окно чуть проскакивает и возвращается
hl.curve("overshoot", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.1} } })

-- Теперь сами анимации.
-- speed = 1 означает 100ms. speed = 3 = 300ms.

-- Окна: появление и исчезновение
hl.animation({ leaf = "windows",     enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 2, bezier = "quick" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "smooth" })

-- Рабочие столы: переключение с лёгким сдвигом
hl.animation({ leaf = "workspaces",  enabled = true, speed = 4, bezier = "smooth", style = "slide" })

-- Затухание (fade) для окон и слоёв (waybar, rofi и т.д.)
hl.animation({ leaf = "fade",        enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 2, bezier = "smooth" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 2, bezier = "quick" })

-- Слои (панели, лаунчеры)
hl.animation({ leaf = "layers",      enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "layersIn",    enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "layersOut",   enabled = true, speed = 2, bezier = "quick" })

-- Граница: плавная смена цвета при смене активного окна
hl.animation({ leaf = "border",      enabled = true, speed = 5, bezier = "smooth" })

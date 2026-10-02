-- environment.lua
-- Переменные окружения для Wayland-сессии.

-- Toolkit: заставляем GTK/Qt приложения работать через Wayland
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG: чтобы порталы и приложения знали, что мы в Wayland
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Курсор
hl.env("XCURSOR_SIZE", "24")

-- NVIDIA (раскомментируй, если у тебя NVIDIA)
-- hl.env("GBM_BACKEND", "nvidia-drm")
-- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
-- hl.env("LIBVA_DRIVER_NAME", "nvidia")

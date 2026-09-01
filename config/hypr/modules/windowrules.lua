-- ======================================================
-- SYSTEM / QUIRKS
-- ======================================================

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- ======================================================
-- UTILITY POPUPS -> sempre flottanti, centrati
-- ======================================================

hl.window_rule({
    name  = "float-btop",
    match = { class = "kitty", title = "btm" },
    float = true,
    size  = "900 600",
    center = true,
})

hl.window_rule({
    name  = "float-wlctl",
    match = { class = "kitty", title = "wlctl" },
    float = true,
    size  = "800 600",
    center = true,
})

hl.window_rule({
    name  = "float-blueman",
    match = { class = ".blueman-manager-wrapped" },
    float = true,
    size  = "800 500",
    center = true,
})

hl.window_rule({
    name  = "float-ncpamixer",
    match = { class = "kitty", title = "ncpamixer" },
    float = true,
    size  = "800 500",
    center = true,
})

hl.window_rule({
    name  = "float-satty",
    match = { class = "com.gabm.satty" },
    float = true,
    size  = "800 600",
    center = true,
})

hl.window_rule({
    name  = "float-ristretto",
    match = { class = "org.xfce.ristretto" },
    float = true,
    size  = "1000 700",
    center = true,
})

hl.window_rule({
    name  = "float-galculator",
    match = { class = "galculator" },
    float = true,
    size  = "300 400",
    center = true,
})

-- hl.window_rule({
--     name  = "float-disks",
--     match = { class = "gnome-disks" },
--     float = true,
--     size  = "900 600",
--     center = true,
-- })

-- hl.window_rule({
--     name  = "float-atril",
--     match = { class = "atril" },
--     float = true,
--     size  = "1000 750",
--     center = true,
-- })

-- Tutte le finestre Steam sono flottanti di default (popup, chat, impostazioni, negozio...)
hl.window_rule({
    name  = "float-steam-all",
    match = { class = "steam" },
    float = true,
    size  = "800 600",
    center = true,
})

-- Eccezione: la finestra principale del client resta tiled
hl.window_rule({
    name  = "tile-steam-main",
    match = { class = "steam", title = "^Steam$" },
    float = false,
})

hl.window_rule({
    name  = "float-thunar-dialogs",
    match = {
        class = "^thunar$",
        title = "negative:.* - Thunar$",
    },
    float  = true,
    size   = "650 400",
    center = true,
})
-- ======================================================
-- WORKSPACE: 1 BROWSER
-- ======================================================

hl.window_rule({
    name  = "ws-browser-firefox",
    match = { class = "firefox" },
    workspace = "1",
})

-- ======================================================
-- WORKSPACE: 3 DEV
-- ======================================================

hl.window_rule({
    name  = "ws-dev-vscode",
    match = { class = "code" },
    workspace = "3",
})

hl.window_rule({
    name  = "ws-vmware",
    match = { class = "Vmware" },
    workspace = "3",
})

-- ======================================================
-- WORKSPACE: 4 OFFICE
-- ======================================================

hl.window_rule({
    name  = "ws-office",
    match = { class = "ONLYOFFICE" },
    workspace = "4",
})

-- ======================================================
-- WORKSPACE: 5 COMMUNICATION
-- ======================================================

hl.window_rule({
    name  = "ws-ferdium",
    match = { class = "ferdium" },
    workspace = "5 silent",
})

-- ======================================================
-- WORKSPACE: 6 GAMING (futuro: Steam, Minecraft)
-- ======================================================

hl.window_rule({
    name  = "ws-gaming-steam",
    match = { class = "steam" },
    workspace = "6",
})

hl.window_rule({
    name  = "ws-gaming-heroic",
    match = { class = "heroic" },
    workspace = "6",
})

hl.window_rule({
    name  = "ws-gaming-minecraft-bedrock",
    match = { class = "io.mrarm." },
    workspace = "6",
})

hl.window_rule({
    name  = "ws-gaming-minecraft-java",
    match = { class = "org.prismlauncher.PrismLauncher" },
    workspace = "6",
})

-- hl.window_rule({
--     name  = "ws-gaming-minecraft",
--     match = { class = "^Minecraft.*" },
--     workspace = "6 silent",
-- })

-- hl.window_rule({
--     name  = "no-blur-gaming",
--     match = { class = "steam", fullscreen = true },
--     no_blur = true,
-- })

-- ======================================================
-- WORKSPACE: 9 MEDIA
-- ======================================================

hl.window_rule({
    name  = "ws-media-spotify",
    match = { class = "spotify" },
    workspace = "9",
})

-- ======================================================
-- FIREFOX PICTURE-IN-PICTURE
-- ======================================================

hl.window_rule({
    name  = "firefox-pip",
    match = { title = "Picture-in-Picture" },
    float = true,
    pin   = true,
    size  = "350 200",
    move  = "1920-675 1080-382",
    opacity = "1.0 override"
})

-- ======================================================
-- LAYER RULES
-- ======================================================

hl.layer_rule({
    name = "rofi",
    match = { namespace = "rofi" },
    animation = "slide right",
    dim_around = true,
})

hl.layer_rule({
    name = "notification",
    match = { namespace = "swaync-control-center" },
    animation = "slide right",
    dim_around = true,
})

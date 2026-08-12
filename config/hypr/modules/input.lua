hl.config({
    input = {
        kb_layout  = "it",
        kb_variant = "us",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.device({
    name        = "corsair-corsair-harpoon-rgb-wireless-gaming-dongle",
    sensitivity = -0.9,
})
hl.device({
    name        = "corsair-corsair-harpoon-rgb-wireless-gaming-mouse",
    sensitivity = -0.9,
})

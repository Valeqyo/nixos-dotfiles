hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@59.94Hz",
    position = "auto",
    scale    = "1.20",
})
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
})

for i = 1, 6 do
   hl.workspace_rule({
       workspace = tostring(i),
       monitor = "HDMI-A-1",
       persistent = true
   })
end

hl.workspace_rule({
    workspace = "9",
    monitor = "HDMI-A-1",
    persistent = true
})

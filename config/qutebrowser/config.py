import rosepine

# Usa solo questo file (niente autoconfig.yml)
config.load_autoconfig(False)

# Tema
rosepine.setup(c, 'rose-pine', True)

# =============================================================
#  Configurazione "da utente Firefox"
#  Obiettivo: scorciatoie e comportamento familiari, mantenendo
#  i tasti vim di qutebrowser come extra (f = hint, j/k = scroll).
# =============================================================

# ---------- Interfaccia stile Firefox ----------
c.tabs.position = "top"
c.tabs.show = "always"
c.tabs.favicons.show = "always"
c.tabs.title.format = "{audio}{current_title}"
c.tabs.max_width = 240
c.tabs.min_width = 80
c.tabs.padding = {"top": 6, "bottom": 6, "left": 8, "right": 8}
c.tabs.wrap = True
c.tabs.mousewheel_switching = True      # rotella sulla barra = cambia scheda
c.tabs.background = True                # click centrale = scheda in background
c.tabs.last_close = "close"             # chiudere l'ultima scheda chiude la finestra
c.tabs.select_on_remove = "next"
c.tabs.new_position.related = "next"
c.tabs.new_position.unrelated = "last"

c.statusbar.show = "always"             # serve per vedere la modalita' attiva
c.scrolling.smooth = True
c.scrolling.bar = "overlay"
c.completion.show = "always"            # suggerimenti mentre scrivi, come la barra di Firefox
c.completion.shrink = True
c.completion.height = "30%"

# ---------- Comportamento ----------
c.auto_save.session = True              # riapre le schede dell'ultima sessione
c.session.lazy_restore = True           # le schede ripristinate si caricano solo quando le apri
c.confirm_quit = ["downloads"]
# Pagina usata quando non c'e' una sessione da ripristinare e per le schede nuove senza indirizzo
c.url.start_pages = ["https://start.duckduckgo.com"]
c.url.default_page = "https://start.duckduckgo.com"
c.search.ignore_case = "always"
c.search.incremental = True

# Campi di testo: entra/esci dalla modalita' di scrittura in automatico
c.input.insert_mode.auto_enter = True
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = True    # se il sito mette il focus su un campo (es. Google), scrivi subito

# ---------- Ricerca (puoi usarle dalla barra: "yt gatti") ----------
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "g": "https://www.google.com/search?q={}",
    "yt": "https://www.youtube.com/results?search_query={}",
}

# ---------- Download e PDF ----------
c.downloads.location.prompt = True      # chiede dove salvare ogni file
c.downloads.location.directory = "~/Downloads"   # cartella proposta nella finestra di salvataggio (in italiano potrebbe essere ~/Scaricati)
c.downloads.position = "bottom"
c.content.pdfjs = True                  # PDF aperti nel browser

# ---------- Privacy e contenuti (simile alla protezione antitracciamento di Firefox) ----------
c.content.cookies.accept = "no-3rdparty"
c.content.headers.do_not_track = True
c.content.headers.accept_language = "it-IT,it;q=0.9,en;q=0.8"
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
c.content.autoplay = False
c.content.blocking.enabled = True
# Per un adblock vero installa il pacchetto python "adblock" e poi decommenta:
# c.content.blocking.method = "both"

# Correttore ortografico (servono i dizionari installati, vedi documentazione qutebrowser)
# c.spellcheck.languages = ["it-IT", "en-US"]

# ---------- Tema scuro sui siti ----------
# L'interfaccia di qutebrowser e' gia' scura grazie a rosepine: qui si tratta le pagine web.
c.colors.webpage.preferred_color_scheme = "dark"   # i siti con tema scuro nativo lo usano
c.colors.webpage.darkmode.enabled = True           # gli altri vengono scuriti dal browser
c.colors.webpage.darkmode.policy.images = "smart"  # scurisce le immagini solo quando serve
c.colors.webpage.bg = "#191724"                    # sfondo durante il caricamento (base di rose-pine), niente lampo bianco
# Se un sito viene male, disattivalo solo per lui, ad esempio:
# config.set("colors.webpage.darkmode.enabled", False, "*://esempio.com/*")

# ---------- Risorse e avvio ----------
c.qt.chromium.process_model = "process-per-site-instance"
c.content.cache.size = 52428800         # 50 MB
# Se l'avvio resta lento, prova a decommentare UNA di queste alla volta:
# c.qt.args = ["disable-gpu"]
# c.qt.force_software_rendering = "chromium"

# =============================================================
#  Scorciatoie stile Firefox
#  Valgono sia in modalita' normale sia quando scrivi in un campo.
# =============================================================
def bind_ff(key, command):
    for mode in ("normal", "insert"):
        config.bind(key, command, mode=mode)

# Schede
bind_ff("<Ctrl-t>", "cmd-set-text -s :open -t")
bind_ff("<Ctrl-w>", "tab-close")
bind_ff("<Ctrl-Shift-t>", "undo")
bind_ff("<Ctrl-Tab>", "tab-next")
bind_ff("<Ctrl-Shift-Tab>", "tab-prev")
bind_ff("<Ctrl-PgDown>", "tab-next")
bind_ff("<Ctrl-PgUp>", "tab-prev")
bind_ff("<Ctrl-Shift-PgDown>", "tab-move +")
bind_ff("<Ctrl-Shift-PgUp>", "tab-move -")
for i in range(1, 9):
    bind_ff(f"<Ctrl-{i}>", f"tab-focus {i}")
bind_ff("<Ctrl-9>", "tab-focus -1")

# Finestre
bind_ff("<Ctrl-n>", "open -w")
bind_ff("<Ctrl-Shift-n>", "open -p")    # finestra privata
bind_ff("<Ctrl-q>", "quit")

# Barra degli indirizzi e navigazione
bind_ff("<Ctrl-l>", "cmd-set-text -s :open")
bind_ff("<F6>", "cmd-set-text -s :open")
bind_ff("<Ctrl-k>", "cmd-set-text -s :open")
bind_ff("<Alt-Left>", "back")
bind_ff("<Alt-Right>", "forward")
bind_ff("<Alt-Home>", "home")
bind_ff("<F5>", "reload")
bind_ff("<Ctrl-r>", "reload")
bind_ff("<Ctrl-Shift-r>", "reload -f")
bind_ff("<Ctrl-F5>", "reload -f")

# Ricerca nella pagina
bind_ff("<Ctrl-f>", "cmd-set-text /")
bind_ff("<Ctrl-g>", "search-next")
bind_ff("<Ctrl-Shift-g>", "search-prev")
bind_ff("<F3>", "search-next")
bind_ff("<Shift-F3>", "search-prev")

# Segnalibri, cronologia, varie
bind_ff("<Ctrl-d>", "bookmark-add")
bind_ff("<Ctrl-Shift-o>", "open -t qute://bookmarks")
bind_ff("<Ctrl-h>", "open -t qute://history")
bind_ff("<Ctrl-Shift-Delete>", "history-clear")
bind_ff("<Ctrl-p>", "print")
bind_ff("<Ctrl-u>", "view-source")
bind_ff("<F12>", "devtools")
bind_ff("<Ctrl-Shift-i>", "devtools")
bind_ff("<F11>", "fullscreen")

# Zoom
bind_ff("<Ctrl-+>", "zoom-in")
bind_ff("<Ctrl-=>", "zoom-in")
bind_ff("<Ctrl-->", "zoom-out")
bind_ff("<Ctrl-0>", "zoom")

# Extra tuoi
# config.bind(",v", "spawn mpv {url}")

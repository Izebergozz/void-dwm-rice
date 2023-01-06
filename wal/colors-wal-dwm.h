static const char norm_fg[] = "#d8d8d5";
static const char norm_bg[] = "#0c0c0c";
static const char norm_border[] = "#979795";

static const char sel_fg[] = "#d8d8d5";
static const char sel_bg[] = "#956A50";
static const char sel_border[] = "#d8d8d5";

static const char urg_fg[] = "#d8d8d5";
static const char urg_bg[] = "#8C5837";
static const char urg_border[] = "#8C5837";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

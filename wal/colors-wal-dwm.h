static const char norm_fg[] = "#dbdeeb";
static const char norm_bg[] = "#1c2543";
static const char norm_border[] = "#999ba4";

static const char sel_fg[] = "#dbdeeb";
static const char sel_bg[] = "#90A0CE";
static const char sel_border[] = "#dbdeeb";

static const char urg_fg[] = "#dbdeeb";
static const char urg_bg[] = "#9897BA";
static const char urg_border[] = "#9897BA";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

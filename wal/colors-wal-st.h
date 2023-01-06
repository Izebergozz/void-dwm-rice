const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0c0c0c", /* black   */
  [1] = "#8C5837", /* red     */
  [2] = "#956A50", /* green   */
  [3] = "#798181", /* yellow  */
  [4] = "#8F9C9D", /* blue    */
  [5] = "#98A4A4", /* magenta */
  [6] = "#B2B6B1", /* cyan    */
  [7] = "#d8d8d5", /* white   */

  /* 8 bright colors */
  [8]  = "#979795",  /* black   */
  [9]  = "#8C5837",  /* red     */
  [10] = "#956A50", /* green   */
  [11] = "#798181", /* yellow  */
  [12] = "#8F9C9D", /* blue    */
  [13] = "#98A4A4", /* magenta */
  [14] = "#B2B6B1", /* cyan    */
  [15] = "#d8d8d5", /* white   */

  /* special colors */
  [256] = "#0c0c0c", /* background */
  [257] = "#d8d8d5", /* foreground */
  [258] = "#d8d8d5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

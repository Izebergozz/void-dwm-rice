const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1c2543", /* black   */
  [1] = "#9897BA", /* red     */
  [2] = "#90A0CE", /* green   */
  [3] = "#ABB4D8", /* yellow  */
  [4] = "#ACBBE3", /* blue    */
  [5] = "#BBC2DE", /* magenta */
  [6] = "#B9C4E5", /* cyan    */
  [7] = "#dbdeeb", /* white   */

  /* 8 bright colors */
  [8]  = "#999ba4",  /* black   */
  [9]  = "#9897BA",  /* red     */
  [10] = "#90A0CE", /* green   */
  [11] = "#ABB4D8", /* yellow  */
  [12] = "#ACBBE3", /* blue    */
  [13] = "#BBC2DE", /* magenta */
  [14] = "#B9C4E5", /* cyan    */
  [15] = "#dbdeeb", /* white   */

  /* special colors */
  [256] = "#1c2543", /* background */
  [257] = "#dbdeeb", /* foreground */
  [258] = "#dbdeeb",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

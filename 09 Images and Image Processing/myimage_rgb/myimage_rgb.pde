
void setup() {
  // display image the really hard way
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int i = x + y * w; // indexing
      stroke(myImageR[i], myImageG[i], myImageB[i]);
      point(x, y);
    }
  }
}

// image size
int w = 48;
int h = 48;

// RGB image data (in three arrays)
int[] myImageR = {
 229,221,220,220,219,220,221,219,221,218,212,207,207,126,37,124,196,167,135,105,86,73,86,111,141,111,25,37,56,34,30,32,37,38,38,36,37,37,37,36,36,33,31,29,27,37,55,77,
209,199,199,199,204,206,207,210,211,211,204,199,193,83,69,193,185,137,96,52,76,90,27,51,100,132,53,16,60,32,12,17,24,27,28,30,30,28,25,25,24,23,19,13,10,31,51,62,
182,171,173,180,188,191,198,201,198,201,204,204,203,172,191,212,199,189,175,157,155,173,114,88,101,129,102,11,53,48,18,17,21,20,23,29,29,29,29,24,24,26,25,16,11,33,56,66,
134,106,101,106,114,118,115,129,182,223,236,238,237,242,239,231,228,228,229,229,225,219,217,206,194,185,178,138,137,73,21,21,22,22,24,23,22,20,27,44,61,75,81,76,62,61,70,81,
64,39,34,32,35,26,42,157,240,252,247,243,240,239,239,237,233,233,232,233,232,228,222,217,214,212,214,230,213,57,22,28,27,28,29,24,27,19,40,115,145,150,152,149,141,127,112,107,
56,39,36,35,25,50,191,255,253,245,244,241,240,238,237,237,234,234,232,234,234,232,228,223,220,218,216,232,171,26,25,30,26,26,24,24,21,20,23,87,168,172,164,163,160,153,140,134,
56,39,37,25,48,197,255,250,245,241,241,241,239,235,234,234,232,230,229,230,231,230,228,225,223,219,220,228,109,18,31,30,29,28,27,25,23,21,18,12,69,158,165,157,155,151,143,140,
70,71,78,81,186,255,248,244,241,239,237,233,229,227,224,224,222,224,225,228,228,228,227,226,223,217,221,204,58,25,35,31,28,27,27,25,26,24,22,19,8,58,147,148,145,143,137,135,
137,140,138,182,255,246,240,239,236,233,231,228,222,217,213,214,214,214,217,221,224,226,226,225,220,213,218,185,42,32,32,26,25,29,34,31,23,17,19,19,18,6,72,133,123,121,117,118,
162,153,155,232,249,236,233,230,224,222,223,218,214,211,207,203,203,207,211,214,218,223,224,222,217,207,214,142,28,30,44,88,129,143,151,150,132,95,45,12,16,16,19,69,77,70,66,74,
165,154,185,246,236,228,223,218,215,214,208,203,198,192,191,191,192,194,198,203,209,216,219,217,209,201,211,107,22,93,164,182,176,168,164,163,170,177,159,93,19,10,13,24,33,27,23,36,
167,157,208,243,231,224,218,213,210,199,189,181,170,161,162,168,175,178,186,195,205,209,212,211,202,200,196,64,106,198,182,153,137,127,124,122,131,143,159,171,118,24,14,16,23,17,14,36,
156,154,221,247,220,199,179,153,124,107,90,74,65,67,66,61,72,80,93,116,146,174,190,204,204,210,125,86,204,181,144,126,111,90,74,86,102,115,131,147,166,103,25,14,33,44,57,94,
143,151,194,162,122,91,82,80,80,86,89,93,94,99,104,101,97,94,88,80,77,84,97,111,145,173,69,161,192,152,125,106,63,66,89,53,71,89,110,132,146,147,45,8,27,81,139,161,
125,142,83,70,102,86,92,99,95,88,82,79,78,81,89,98,105,109,115,125,133,136,130,116,106,65,91,197,170,142,119,81,40,32,129,113,44,71,94,115,132,150,89,4,11,70,157,171,
93,126,133,138,140,138,112,66,48,48,63,69,64,59,57,56,58,63,70,87,108,133,147,159,181,83,136,195,167,143,116,73,42,20,117,149,38,60,82,104,121,139,116,16,6,45,137,164,
71,96,142,158,165,149,93,48,34,38,120,176,171,158,145,130,117,101,88,83,86,106,131,155,151,65,174,189,172,147,121,88,46,79,136,66,39,57,77,96,110,125,124,33,2,27,116,160,
82,91,137,156,145,82,33,32,36,37,128,192,199,197,196,193,190,186,177,164,148,135,133,152,82,73,195,187,177,156,131,104,78,67,50,43,54,63,79,91,104,118,122,42,9,21,92,154,
151,151,158,161,150,111,68,32,22,25,119,185,190,190,186,183,183,183,183,179,174,165,149,138,67,139,197,186,182,171,150,125,105,84,71,73,72,77,87,95,106,117,120,37,24,57,74,111,
168,161,160,154,150,155,145,96,43,41,96,175,185,191,188,183,181,179,176,171,166,157,145,130,120,168,192,189,187,184,169,146,131,116,105,99,97,99,104,107,112,120,122,35,26,83,72,78,
162,156,155,152,146,146,148,140,116,65,40,131,182,184,187,186,182,177,174,168,162,154,142,126,114,139,191,194,192,191,182,169,156,141,135,128,124,123,124,127,127,129,125,37,16,48,52,76,
158,151,149,146,141,141,143,138,140,89,13,43,149,180,180,181,183,180,174,166,161,152,137,123,112,119,186,200,197,195,190,184,174,164,156,149,147,145,146,145,140,136,126,28,33,43,15,51,
147,135,140,145,148,152,149,149,151,115,24,0,51,144,173,167,171,176,174,166,159,148,131,116,103,109,187,202,200,198,196,191,185,178,172,166,162,160,159,156,148,142,121,14,66,104,14,25,
140,131,141,149,153,154,156,156,159,136,46,0,0,40,121,158,165,171,168,159,150,137,118,101,80,133,199,201,201,200,198,194,189,184,179,176,174,170,164,161,150,147,116,6,73,152,47,23,
136,143,153,159,159,160,163,161,153,138,87,27,0,0,16,70,118,144,147,140,130,114,91,54,86,184,199,201,202,201,198,195,191,188,185,181,180,176,167,160,151,151,105,0,72,171,97,32,
102,120,129,134,146,151,150,156,143,133,126,87,35,12,1,0,15,40,57,60,58,48,23,34,163,195,198,202,205,204,199,196,193,192,189,186,182,177,170,159,153,152,88,0,72,168,130,44,
100,110,119,117,134,146,148,154,167,143,111,76,44,33,24,13,0,0,0,0,1,0,0,131,198,194,200,203,208,206,200,197,196,194,191,188,182,177,170,160,153,150,61,0,69,163,140,66,
92,91,98,104,124,140,153,164,160,90,41,33,27,20,24,47,45,28,21,10,6,0,72,197,193,198,201,205,211,205,201,200,198,195,193,190,183,178,169,160,154,141,33,0,49,153,138,96,
80,78,79,96,117,135,153,149,82,33,35,34,31,27,17,29,61,78,61,58,59,64,163,203,195,200,202,210,212,204,203,202,200,197,194,189,183,177,168,158,155,125,15,5,22,127,146,100,
78,93,92,97,115,138,137,68,35,34,28,29,39,44,37,23,23,53,50,51,59,114,205,200,198,200,205,211,209,205,206,203,199,198,193,187,182,174,165,156,155,111,6,9,7,114,157,71,
82,98,98,98,122,119,73,43,31,27,30,32,33,48,49,27,17,29,56,53,45,132,216,203,200,202,207,209,206,206,205,204,201,196,192,188,181,172,163,154,155,90,3,9,4,97,123,33,
79,92,105,106,102,63,47,46,37,32,28,23,26,32,22,17,21,34,66,70,67,157,223,209,204,206,207,207,205,207,205,203,201,197,191,188,180,171,162,154,152,58,2,10,9,39,30,21,
76,86,108,112,58,29,41,50,35,16,13,10,12,9,7,17,18,34,61,69,65,166,230,218,212,210,209,208,207,207,207,204,201,197,192,187,179,169,161,157,141,31,3,9,11,6,1,27,
72,77,106,103,30,26,73,90,98,103,101,93,85,67,42,22,14,40,57,67,48,170,234,226,223,219,215,214,213,211,209,206,201,197,194,188,179,169,162,161,114,10,6,10,10,12,8,26,
67,72,101,108,75,124,168,162,164,173,169,169,167,160,148,121,74,44,52,67,37,124,238,228,230,229,222,214,221,220,217,213,208,203,199,190,180,172,165,156,63,0,9,10,10,13,9,26,
84,79,99,127,156,156,164,153,138,153,155,156,158,157,150,159,163,100,66,98,52,39,203,239,230,232,231,228,232,231,227,223,218,213,205,195,183,171,167,120,14,7,11,11,10,10,6,24,
118,93,96,142,164,140,156,161,138,151,164,155,152,157,161,143,154,166,126,117,59,3,96,236,236,231,233,238,238,236,234,231,227,221,208,196,178,171,149,42,4,14,13,9,10,10,9,24,
122,105,102,150,163,148,148,165,155,145,165,155,157,151,158,162,142,160,165,128,60,12,16,130,236,235,232,237,238,236,235,232,229,221,207,189,176,151,54,0,9,14,17,13,11,14,17,24,
116,108,101,154,167,159,147,156,171,159,153,165,164,162,151,167,156,150,168,155,60,10,16,14,100,214,246,242,237,235,233,230,228,219,208,191,142,46,0,7,8,11,12,13,12,16,14,22,
107,95,79,115,172,165,162,152,159,174,167,159,163,169,163,165,169,166,167,154,72,3,15,16,7,50,150,215,237,243,242,240,240,219,184,103,19,0,8,9,10,12,12,14,13,17,13,23,
95,81,78,77,128,165,171,168,161,162,169,171,168,171,174,172,174,176,170,144,103,29,5,16,19,11,8,46,102,140,156,159,146,100,40,2,4,9,9,8,11,13,14,15,15,20,14,24,
86,73,77,57,63,120,161,174,176,171,167,171,173,177,176,173,173,168,162,147,114,63,25,15,12,16,16,8,5,9,14,15,10,4,5,11,11,9,9,10,13,16,18,14,27,27,17,27,
85,74,79,69,54,73,115,149,164,168,166,167,170,158,164,162,154,161,167,147,133,97,45,36,32,13,14,15,14,13,13,14,14,14,13,11,9,8,9,13,18,19,13,19,40,30,21,37,
83,72,75,74,51,59,86,118,149,139,126,150,167,148,145,170,139,145,174,158,150,139,74,52,65,25,9,11,11,12,13,16,15,14,11,9,9,9,11,16,17,11,11,29,41,51,77,120,
75,60,68,77,64,60,81,106,122,141,117,143,165,164,140,159,161,140,154,165,139,117,81,68,62,28,9,8,9,11,11,13,13,13,11,10,9,11,13,8,16,32,54,59,89,133,158,180,
71,60,68,78,70,56,73,90,99,120,129,126,160,161,156,143,163,160,81,59,53,40,38,33,37,24,14,21,17,10,9,9,9,10,9,9,9,6,10,42,95,109,113,140,165,181,188,195,
70,63,71,67,63,52,62,77,108,109,140,117,150,153,152,161,144,93,39,37,40,42,41,37,22,13,13,23,27,22,17,16,14,9,8,7,7,18,88,145,132,152,178,185,193,194,195,196,
86,76,81,76,73,70,70,87,104,118,132,135,137,149,153,140,80,48,54,54,64,67,53,50,44,36,31,31,50,53,54,66,60,48,42,39,67,134,161,170,170,192,201,198,200,203,202,201 
}; 


int[] myImageG = {
97,81,84,91,102,114,127,138,146,151,151,155,166,113,42,127,207,205,200,195,172,152,167,162,159,110,24,29,39,32,32,39,47,49,48,48,47,47,45,43,44,41,37,33,26,28,40,60,
77,65,71,82,96,110,120,129,137,142,145,154,163,78,71,190,197,187,188,139,101,104,94,147,145,139,51,8,26,19,13,17,29,34,36,41,41,39,34,32,32,32,27,16,9,19,32,45,
76,69,74,86,102,114,122,130,135,141,138,126,109,62,73,92,82,79,79,57,53,88,67,112,125,131,96,9,17,20,16,18,21,21,26,34,37,37,35,32,32,32,27,16,8,25,38,51,
74,64,65,71,81,82,83,94,108,103,82,65,57,60,57,51,53,53,55,64,76,89,105,110,116,121,123,94,88,46,20,21,22,21,24,22,22,21,26,35,43,50,51,43,29,29,38,56,
62,49,48,50,53,50,49,67,83,80,73,68,65,63,62,62,62,65,72,84,102,119,130,135,137,137,141,159,156,49,24,28,27,29,30,24,27,20,33,78,92,93,92,83,66,45,32,43,
69,59,56,53,52,58,82,91,90,86,82,76,71,68,67,68,67,71,78,94,113,129,142,147,146,147,150,166,128,26,27,30,26,26,24,24,22,20,22,63,114,112,104,98,84,61,37,37,
70,61,54,47,51,75,93,98,98,97,93,89,84,78,74,74,75,76,86,102,119,135,145,151,152,154,158,169,86,22,31,31,29,28,27,25,23,21,19,16,52,105,105,95,87,71,49,44,
69,68,72,76,75,93,111,113,106,105,104,101,99,96,88,86,86,87,97,111,127,139,149,155,155,155,162,157,51,29,34,32,29,28,27,25,26,25,22,20,13,43,92,90,84,75,59,54,
108,108,115,99,89,130,132,115,105,102,104,102,101,98,93,96,99,103,111,124,136,144,153,157,156,155,164,145,40,34,31,25,25,30,34,29,22,17,18,20,19,10,48,81,74,71,60,58,
131,121,115,87,124,135,106,95,91,92,97,97,98,96,96,98,104,112,123,134,143,151,156,157,157,157,167,118,30,31,45,92,140,160,167,160,140,102,45,12,16,16,19,46,50,47,41,47,
137,132,103,106,129,86,78,80,81,85,85,84,86,88,94,99,109,120,130,139,148,155,159,158,156,156,171,92,25,93,171,205,208,205,202,199,200,196,169,94,19,10,13,22,28,26,22,33,
134,130,98,114,92,71,70,71,72,68,65,70,72,76,85,92,105,118,132,144,153,159,161,158,154,159,162,58,103,200,206,195,194,198,197,189,186,182,179,178,117,23,14,14,21,19,16,33,
117,101,93,100,72,60,53,47,40,38,37,37,39,46,51,48,58,66,78,96,117,135,150,158,162,173,106,81,197,200,193,194,196,173,164,186,185,178,170,166,170,99,22,13,25,31,40,66,
107,90,71,55,44,34,34,33,35,42,48,55,62,69,77,82,87,92,91,85,79,78,85,94,121,146,65,156,200,192,193,192,112,77,100,119,180,175,169,162,155,146,42,9,21,57,93,109,
89,89,44,36,49,44,49,53,54,56,60,63,67,73,81,88,97,106,114,120,125,125,119,110,100,59,88,196,191,191,199,148,38,28,126,114,140,174,165,158,150,154,86,4,12,54,112,122,
65,79,90,95,95,97,91,72,59,57,56,65,70,69,70,72,75,80,89,100,113,128,135,145,161,74,133,199,192,191,198,141,39,18,119,143,128,170,160,157,150,147,115,13,7,38,102,121,
51,57,89,107,116,115,98,79,69,66,55,90,135,143,140,131,121,107,95,91,95,109,125,148,135,60,169,195,192,190,191,179,81,74,127,105,158,162,159,156,145,142,128,31,3,25,89,120,
61,63,93,108,110,86,65,65,70,61,50,82,133,163,178,185,186,182,175,162,145,133,129,146,77,72,190,191,189,188,187,188,176,143,127,155,167,162,158,152,145,139,130,40,9,21,71,113,
133,133,140,139,131,111,83,56,51,45,49,65,95,131,155,169,175,179,180,178,172,162,144,128,61,132,189,186,188,188,188,186,185,184,178,176,168,165,158,156,148,139,128,37,23,43,45,75,
151,144,143,137,132,134,126,91,60,68,53,52,65,97,130,153,164,169,170,168,162,152,138,118,104,153,182,186,190,191,191,188,185,183,179,178,172,168,162,160,151,141,127,34,24,51,32,40,
144,136,134,130,123,123,122,115,103,83,39,41,54,64,93,125,146,157,161,160,155,146,130,111,94,118,179,187,190,193,192,191,188,186,186,181,175,170,168,163,153,142,125,34,12,27,24,38,
139,128,125,120,115,114,117,113,113,76,19,19,44,49,59,83,111,134,145,144,143,134,117,101,84,87,170,191,194,195,194,194,193,190,187,182,178,174,169,165,152,141,122,27,26,31,10,32,
123,108,114,118,121,124,124,126,127,94,19,2,21,42,47,50,66,90,109,114,115,108,91,78,58,64,172,196,196,197,198,196,193,189,185,181,180,175,169,164,150,141,115,12,58,82,9,24,
115,106,116,123,128,131,133,133,137,111,32,0,3,18,37,42,45,54,65,70,72,67,55,46,28,98,189,196,197,200,200,196,193,189,185,184,182,178,169,162,150,143,108,6,66,128,34,21,
99,108,123,133,135,137,139,138,125,97,54,17,1,3,12,26,34,39,41,41,40,37,31,12,58,167,192,196,200,201,198,196,193,190,189,184,182,177,167,160,149,145,97,0,66,150,78,25,
59,69,78,86,100,110,108,115,98,84,80,52,22,9,4,5,10,17,20,20,20,18,7,24,138,183,193,199,203,204,198,196,194,193,190,187,183,176,170,158,148,143,79,0,65,148,108,36,
59,60,63,60,77,97,101,107,121,96,73,59,37,24,15,9,4,3,3,5,5,4,1,94,171,188,196,201,205,205,201,197,196,193,190,188,182,176,169,156,147,141,54,0,62,140,116,54,
54,47,52,55,69,90,107,117,124,86,59,53,40,28,22,29,25,19,14,8,6,0,40,146,181,192,197,203,209,205,200,199,197,195,193,190,182,176,167,154,145,130,29,1,44,131,116,80,
45,39,42,52,65,84,103,113,90,65,65,56,46,41,30,28,37,48,39,35,35,33,94,167,187,194,198,207,209,202,202,201,200,197,194,189,182,174,164,151,145,112,13,6,21,106,125,87,
45,49,50,54,65,82,94,75,67,62,52,53,65,69,58,39,28,39,42,41,43,59,125,177,188,195,202,208,205,202,203,201,199,197,192,186,180,171,159,146,143,98,7,9,8,100,137,61,
47,51,52,53,67,73,74,76,59,52,57,59,60,79,77,42,28,36,55,56,51,67,136,177,187,195,202,204,201,202,202,201,198,195,190,185,177,166,154,143,140,76,3,9,5,85,102,27,
45,47,56,55,63,69,78,76,65,61,53,44,48,56,36,26,33,43,67,71,68,76,137,173,184,191,196,198,196,200,199,199,196,192,186,183,173,161,150,140,131,47,2,9,9,32,24,19,
45,43,56,61,53,60,73,83,62,38,32,27,28,21,20,33,34,41,64,76,68,74,130,161,172,181,191,192,193,197,196,197,194,189,184,178,167,154,143,133,113,25,5,9,11,7,1,24,
43,37,53,58,38,47,82,89,88,91,86,78,74,67,56,37,25,40,62,76,54,72,118,138,153,167,177,178,188,191,192,193,190,186,181,173,160,145,133,122,79,8,6,9,10,11,7,23,
39,35,52,60,60,102,137,123,122,138,131,131,129,122,119,102,65,47,60,71,42,57,107,115,131,145,141,144,174,178,181,182,179,177,172,159,143,129,113,94,36,4,9,10,10,11,6,21,
57,48,53,77,116,109,134,120,93,121,119,119,123,120,106,116,133,83,56,86,48,25,87,102,105,114,123,132,146,155,160,162,162,159,148,132,114,96,79,50,10,9,9,10,10,10,5,20,
89,69,56,100,134,91,122,132,91,113,134,118,113,122,133,104,114,138,106,98,51,12,46,95,94,94,103,111,115,122,128,131,133,128,111,95,76,62,47,18,8,13,12,10,10,10,7,21,
87,72,66,116,136,105,105,139,119,99,137,118,120,112,126,139,102,131,143,110,54,14,20,58,89,85,86,89,91,95,98,101,102,93,76,62,50,38,17,8,9,13,15,13,11,11,9,21,
85,75,67,122,138,132,105,121,148,123,113,137,132,128,108,145,123,117,148,133,51,10,18,19,44,74,81,80,77,78,78,78,77,68,55,44,31,15,7,8,9,10,11,13,11,10,7,21,
77,64,49,82,144,142,138,114,124,150,139,124,128,141,128,140,146,135,149,130,53,5,15,18,16,28,56,70,71,73,70,68,70,59,42,26,11,7,8,8,10,11,11,12,11,10,7,21,
66,53,49,43,97,140,149,147,129,124,143,150,143,148,153,151,156,158,149,111,73,20,7,16,18,17,16,25,39,48,49,49,45,32,19,10,9,8,9,8,11,12,13,13,11,11,7,21,
59,45,50,30,33,81,132,154,156,148,140,148,155,159,157,153,147,135,119,104,82,43,19,14,12,16,17,15,16,17,18,19,17,15,12,12,10,8,9,10,13,14,14,11,15,15,9,20,
57,45,50,38,25,37,76,115,132,142,139,134,139,121,122,114,99,107,113,99,99,70,30,27,27,13,13,15,15,15,15,17,16,16,13,11,9,9,9,12,15,15,12,12,21,15,7,24,
56,43,45,42,25,31,47,73,104,92,74,103,124,97,92,117,80,92,124,104,103,105,54,35,49,23,10,12,12,13,14,16,15,15,13,10,9,9,12,14,14,10,9,15,18,30,55,98,
51,34,38,46,36,32,44,63,80,92,70,95,121,117,92,113,107,74,101,125,107,94,69,52,45,22,9,9,10,11,12,13,13,13,11,10,10,11,13,10,15,25,35,37,66,111,133,151,
47,33,40,46,40,27,39,50,63,81,85,83,106,110,105,92,107,100,76,78,74,68,67,49,37,24,18,20,19,11,8,10,9,10,10,10,9,7,11,30,68,80,92,113,140,158,164,173,
45,35,41,38,34,25,30,43,66,70,90,78,96,97,96,101,102,90,73,77,83,80,79,73,44,25,23,30,36,28,21,20,15,10,7,6,7,17,68,114,104,125,149,149,161,170,166,160,
61,48,51,47,46,42,41,54,66,75,92,95,94,99,100,98,89,81,94,99,111,109,87,79,69,54,40,41,58,64,61,71,68,58,52,48,66,111,131,144,140,163,167,163,171,168,155,155 
};


int[] myImageB = { 
56,26,19,16,14,14,14,14,14,14,14,14,14,34,49,110,191,209,213,219,201,179,192,176,158,104,22,21,29,31,30,26,27,24,21,21,21,21,20,20,20,20,19,19,19,20,21,38,
25,1,0,0,0,0,0,0,0,0,0,0,3,27,64,151,184,197,212,168,111,110,121,184,158,133,45,2,8,12,14,16,22,20,14,12,10,9,8,7,7,6,5,3,3,7,9,24,
21,3,0,0,0,0,0,0,0,0,0,0,3,12,25,38,35,40,47,25,13,47,36,107,119,116,84,10,5,9,15,18,22,20,20,22,18,16,16,14,13,10,9,6,5,10,13,28,
17,4,3,2,2,3,4,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,11,22,8,3,11,20,20,20,21,23,22,21,19,18,14,10,6,4,3,4,7,11,28,
21,6,8,8,9,11,11,7,0,1,1,2,3,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,21,29,25,25,26,26,22,23,17,15,6,0,0,0,0,0,0,1,19,
28,16,15,11,10,9,1,3,16,21,24,23,17,11,4,6,4,1,0,0,0,0,1,0,0,0,0,0,6,27,31,28,27,25,23,22,19,17,16,8,1,0,0,0,0,0,0,14,
37,29,19,14,12,2,18,50,58,58,55,49,43,34,25,22,13,2,1,0,0,0,0,0,0,0,0,0,16,33,32,31,29,28,25,24,21,18,17,16,12,1,0,0,0,0,0,14,
30,18,18,22,4,30,84,93,83,81,79,74,73,65,49,42,32,12,3,0,0,0,0,0,0,0,0,2,26,37,34,32,29,28,26,25,25,23,19,17,16,11,1,0,0,0,0,14,
33,21,26,11,27,115,126,102,86,79,79,75,72,66,56,54,47,29,15,3,0,0,0,0,0,0,0,5,34,38,33,28,25,29,34,30,22,17,18,16,15,14,7,0,0,0,0,14,
35,22,19,15,103,131,88,74,64,65,71,68,65,60,53,48,41,31,21,8,0,0,0,0,0,0,0,14,41,36,41,80,128,154,163,158,138,100,44,10,12,15,13,6,2,2,2,17,
35,24,10,67,118,59,45,47,48,55,54,48,46,41,39,36,33,27,15,5,0,0,0,0,0,0,0,22,42,64,128,181,199,203,204,203,200,195,166,91,18,8,12,10,4,3,2,18,
38,25,20,87,62,32,29,31,33,28,26,27,24,25,28,24,21,11,7,1,0,0,0,0,0,0,1,34,56,116,169,185,194,207,210,203,197,188,180,173,111,21,12,9,5,5,4,21,
38,20,27,50,18,16,13,12,10,11,13,14,15,22,25,18,19,16,13,10,7,4,1,0,0,0,18,52,86,148,180,196,210,191,182,209,205,195,178,164,160,93,22,10,11,9,5,19,
38,19,5,9,11,11,7,6,7,8,10,12,10,9,10,8,4,4,5,9,12,13,11,11,8,8,41,71,120,169,191,202,126,83,108,136,208,197,183,166,150,136,39,8,14,10,0,14,
33,22,15,10,5,1,0,1,3,4,4,5,2,2,1,1,2,1,0,0,0,1,4,6,13,30,50,91,142,178,201,161,44,28,126,122,165,203,185,168,150,146,81,2,10,10,0,14,
26,19,30,34,28,23,22,19,13,11,7,8,14,10,2,0,0,0,0,0,0,0,0,0,0,23,68,118,156,180,205,157,44,19,117,150,155,202,183,172,154,143,108,13,7,13,2,13,
22,11,22,33,34,31,32,31,26,23,7,5,70,116,117,103,83,59,36,14,0,0,0,0,3,31,90,139,161,182,197,197,94,77,130,118,192,193,183,173,152,140,121,29,3,12,4,13,
26,14,23,27,27,26,23,25,30,22,4,0,35,119,170,185,187,182,172,152,121,89,50,8,3,41,111,150,164,182,191,202,198,165,149,185,201,191,182,171,155,141,125,38,6,14,5,13,
65,57,60,58,52,42,30,20,19,18,7,0,0,42,116,155,168,174,180,181,176,167,145,101,37,49,112,152,167,175,186,195,203,207,208,207,197,190,180,174,159,141,123,35,15,30,10,19,
72,61,65,62,58,57,50,32,24,42,22,0,0,3,47,109,144,157,162,164,160,148,130,112,79,52,99,147,168,172,184,193,196,198,200,200,195,188,179,175,159,142,122,32,15,34,17,26,
65,54,56,54,48,48,47,42,41,42,21,3,0,0,1,34,87,124,142,147,146,136,117,89,68,49,95,145,166,176,186,189,191,196,198,197,190,185,179,173,157,140,119,32,7,19,14,25,
61,47,46,43,40,39,42,41,42,26,9,9,1,0,0,0,13,50,87,103,107,100,81,60,41,29,98,147,170,183,188,190,194,195,195,192,187,182,176,170,154,137,113,25,10,18,7,24,
51,35,39,40,42,45,46,47,48,35,9,6,8,1,0,0,0,0,13,29,36,33,25,19,8,11,116,163,179,190,198,196,194,192,188,187,186,179,171,164,148,134,102,15,22,31,8,21,
46,34,38,41,45,48,50,51,54,39,10,1,7,8,3,0,0,0,0,0,0,0,0,0,0,48,148,172,187,195,199,196,193,190,186,186,184,180,169,161,146,132,96,9,26,45,16,20,
35,29,40,45,48,49,50,51,43,25,12,6,1,5,10,6,2,1,0,0,0,0,0,0,30,122,168,182,193,197,194,195,193,190,189,186,183,177,166,158,142,134,86,5,25,51,29,22,
23,10,12,14,20,24,23,24,16,14,15,12,7,4,5,8,8,7,5,5,4,4,2,9,87,155,182,190,197,199,196,194,193,193,188,186,183,175,168,154,141,130,68,1,25,49,37,25,
24,10,6,4,9,16,16,17,20,17,14,14,12,8,5,4,4,5,6,6,5,5,0,34,126,174,185,193,201,202,198,195,194,192,189,188,181,173,165,149,138,125,46,0,24,45,38,31,
23,12,13,11,8,17,20,20,26,21,20,20,12,7,6,8,6,7,6,4,5,3,0,65,163,182,188,198,206,201,196,196,195,194,192,189,181,172,161,147,133,112,25,2,18,43,35,38,
23,12,15,13,9,16,22,24,31,25,27,25,17,12,7,6,8,10,8,7,7,5,5,110,176,184,193,203,206,200,198,198,199,197,194,189,180,171,157,141,129,94,11,5,11,34,39,41,
24,16,16,13,10,13,21,20,26,24,17,19,29,34,26,12,6,7,5,5,5,1,23,135,177,188,198,205,203,198,199,197,198,198,194,184,176,165,147,132,123,79,6,8,7,34,43,32,
24,16,15,13,11,10,25,45,23,16,17,20,23,43,44,15,7,7,5,6,5,0,26,125,170,190,196,202,199,197,199,197,194,192,188,180,171,158,139,124,112,58,3,8,6,31,33,20,
21,14,15,13,15,30,51,47,31,22,18,12,15,22,14,6,10,10,5,6,9,2,7,92,158,172,181,188,188,192,191,192,190,187,182,176,162,148,131,117,95,33,3,7,7,14,9,16,
20,12,14,14,17,36,52,62,39,11,8,7,10,7,6,10,10,7,3,6,14,6,0,37,99,132,162,168,175,182,184,186,185,177,171,163,150,132,113,96,68,15,5,7,7,5,1,18,
18,10,14,14,12,18,31,28,15,13,12,14,13,13,14,11,6,5,4,5,12,5,0,0,13,62,110,123,147,159,168,171,172,164,158,150,130,106,85,61,31,7,6,8,8,7,3,17,
17,7,15,15,16,18,14,14,16,13,13,17,17,18,19,18,11,5,5,14,20,8,0,0,0,3,7,34,80,95,110,124,127,129,124,105,81,59,40,20,8,7,8,6,7,7,3,16,
22,10,15,17,15,15,10,13,15,14,15,16,17,17,20,21,21,15,23,45,32,14,2,0,0,0,0,0,6,11,25,38,46,52,43,27,13,5,1,0,7,10,7,6,6,6,2,16,
29,13,15,16,9,13,10,9,14,15,15,18,20,19,20,22,23,21,33,66,38,15,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,9,10,9,6,6,6,3,17,
33,16,16,12,8,12,12,12,13,18,17,20,22,21,22,22,22,22,19,43,44,12,19,10,0,0,1,0,0,0,0,0,0,0,0,0,0,1,6,9,8,10,11,8,6,6,3,17,
40,25,21,11,8,13,17,18,14,18,22,22,22,22,22,22,23,23,23,26,23,11,18,21,14,2,0,0,0,0,0,0,0,0,0,0,1,6,9,8,7,6,6,7,6,4,2,16,
39,25,22,12,9,12,16,20,22,17,19,23,24,23,23,26,27,24,24,27,14,6,14,19,21,18,10,2,0,0,0,0,0,0,2,5,9,9,8,8,6,6,6,6,5,4,2,16,
37,24,24,15,15,11,11,16,21,20,20,21,22,24,25,24,27,28,27,25,18,7,9,17,18,19,21,17,14,10,8,8,8,11,13,12,10,8,8,7,6,7,7,5,5,5,2,18,
34,22,25,12,11,17,17,15,10,17,21,20,22,23,24,24,24,25,22,21,17,12,9,12,14,16,17,18,20,21,21,21,21,18,14,11,10,7,7,7,6,7,7,6,8,7,4,17,
33,22,22,13,6,10,18,24,19,20,21,18,23,25,19,20,20,18,20,20,24,17,9,12,17,13,14,14,15,16,17,18,17,15,12,10,9,6,6,6,7,6,5,5,9,7,2,18,
32,18,16,14,7,7,10,18,21,18,16,21,23,30,25,22,31,22,21,20,20,24,16,13,21,15,11,11,12,12,13,15,15,14,12,10,9,6,7,7,7,5,4,7,8,11,15,37,
28,11,12,14,11,8,10,14,26,21,20,25,21,22,37,29,34,27,16,24,23,25,23,17,14,12,9,9,11,11,11,13,13,11,10,8,7,7,6,6,6,7,10,13,22,31,36,50,
28,10,12,14,12,7,9,10,26,42,38,37,17,19,28,32,29,27,22,20,23,21,22,16,12,8,6,8,12,12,10,10,10,9,7,7,7,5,7,7,12,17,29,31,40,52,53,67,
27,12,12,10,8,6,5,10,14,38,30,40,13,20,21,27,31,23,15,16,25,27,27,23,13,6,5,6,7,10,9,12,9,9,9,8,8,11,18,30,30,39,47,40,46,60,56,53,
44,27,25,22,21,21,21,24,27,33,41,47,38,32,34,36,36,32,32,38,54,58,40,32,31,25,22,21,21,21,21,21,21,22,23,22,28,43,43,49,46,64,61,56,62,56,39,47
};


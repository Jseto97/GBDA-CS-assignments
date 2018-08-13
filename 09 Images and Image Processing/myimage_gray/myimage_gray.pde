
void setup() {
  // display image the really hard way
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int i = x + y * w; // indexing
      stroke(myImage[i]);
      point(x, y);
    }
  }
}

// image size
int w = 64;
int h = 64;

// grayscale image data
int[] myImage = { 162, 148, 144, 145, 146, 152, 157, 163, 173, 179, 184, 190, 192, 194, 192, 192, 195, 184, 75, 43, 97, 217, 247, 234, 226, 220, 211, 191, 179, 188, 180, 174, 174, 161, 58, 22, 31, 43, 38, 33, 34, 37, 41, 43, 44, 43, 43, 43, 42, 43, 44, 43, 42, 41, 41, 38, 34, 33, 31, 27, 29, 37, 48, 68, 
  140, 126, 124, 127, 131, 137, 145, 153, 160, 165, 173, 177, 180, 179, 178, 179, 187, 156, 38, 51, 194, 255, 235, 222, 214, 203, 154, 124, 94, 94, 152, 153, 150, 158, 110, 16, 14, 31, 29, 20, 16, 16, 21, 29, 31, 31, 33, 33, 33, 31, 30, 27, 25, 26, 26, 25, 24, 20, 14, 13, 18, 29, 35, 48, 
  128, 115, 114, 118, 123, 132, 140, 149, 154, 162, 169, 173, 178, 178, 180, 183, 194, 129, 37, 120, 221, 207, 192, 180, 177, 150, 58, 85, 161, 52, 89, 148, 141, 144, 146, 52, 9, 30, 34, 22, 17, 17, 20, 25, 27, 29, 31, 35, 37, 35, 34, 31, 29, 29, 30, 29, 26, 20, 13, 12, 21, 35, 37, 50, 
  115, 102, 102, 106, 115, 127, 135, 143, 150, 157, 163, 166, 171, 175, 165, 154, 145, 120, 114, 127, 126, 120, 119, 116, 112, 109, 101, 93, 116, 102, 86, 116, 123, 128, 139, 97, 10, 20, 33, 24, 18, 17, 18, 21, 18, 20, 25, 29, 30, 30, 30, 29, 27, 26, 29, 27, 25, 21, 13, 13, 22, 37, 41, 54, 
  102, 84, 80, 81, 88, 97, 103, 106, 110, 119, 126, 140, 153, 152, 145, 141, 139, 140, 140, 136, 135, 133, 132, 132, 131, 132, 133, 137, 139, 145, 149, 148, 146, 144, 144, 140, 90, 76, 77, 37, 20, 18, 18, 20, 18, 20, 20, 21, 20, 20, 21, 24, 29, 33, 41, 44, 46, 43, 34, 27, 30, 39, 46, 60, 
  71, 50, 46, 42, 41, 43, 43, 39, 34, 43, 93, 146, 156, 154, 149, 146, 144, 143, 141, 141, 140, 137, 136, 137, 139, 140, 146, 154, 161, 166, 166, 167, 170, 169, 170, 174, 187, 199, 163, 33, 25, 25, 24, 26, 26, 29, 26, 21, 25, 21, 17, 33, 60, 76, 85, 92, 93, 89, 80, 68, 56, 52, 50, 61, 
  58, 43, 42, 43, 44, 48, 50, 50, 58, 118, 163, 162, 157, 154, 150, 146, 145, 144, 144, 141, 141, 139, 140, 141, 143, 146, 154, 163, 171, 177, 182, 179, 179, 178, 178, 182, 188, 212, 120, 20, 26, 26, 24, 24, 24, 25, 24, 22, 25, 24, 20, 34, 90, 126, 123, 124, 122, 118, 110, 98, 84, 71, 60, 65, 
  67, 54, 51, 47, 43, 43, 41, 52, 133, 165, 163, 161, 157, 157, 154, 150, 148, 145, 144, 143, 143, 141, 141, 143, 144, 150, 160, 169, 178, 186, 188, 190, 188, 188, 190, 192, 196, 211, 72, 21, 26, 27, 26, 25, 25, 24, 22, 22, 20, 18, 20, 20, 42, 114, 137, 127, 124, 120, 115, 105, 93, 80, 71, 73, 
  69, 56, 55, 46, 41, 38, 50, 133, 165, 166, 165, 163, 162, 158, 157, 154, 152, 148, 144, 144, 144, 144, 141, 143, 146, 152, 162, 171, 179, 187, 191, 195, 192, 194, 192, 195, 208, 180, 34, 26, 27, 27, 27, 25, 26, 25, 24, 24, 21, 21, 20, 20, 16, 29, 99, 132, 122, 118, 114, 106, 97, 85, 75, 77, 
  59, 48, 51, 50, 51, 58, 127, 166, 167, 169, 170, 165, 166, 165, 162, 158, 156, 153, 150, 146, 145, 145, 141, 144, 149, 156, 165, 174, 182, 188, 194, 196, 195, 195, 192, 197, 213, 111, 22, 33, 30, 30, 27, 26, 25, 25, 25, 25, 24, 22, 21, 20, 20, 16, 22, 88, 122, 111, 107, 103, 97, 88, 77, 80, 
  81, 80, 88, 95, 99, 124, 162, 170, 182, 180, 173, 166, 165, 166, 161, 158, 156, 154, 149, 144, 145, 145, 145, 148, 153, 160, 169, 178, 186, 191, 196, 199, 197, 194, 194, 195, 211, 78, 25, 31, 30, 30, 27, 26, 25, 27, 25, 24, 25, 25, 24, 21, 20, 17, 14, 20, 85, 105, 98, 97, 93, 86, 77, 78, 
  128, 124, 128, 129, 131, 157, 173, 196, 188, 177, 167, 163, 160, 160, 158, 156, 153, 150, 143, 143, 144, 146, 149, 150, 156, 163, 174, 182, 187, 194, 197, 199, 196, 192, 191, 197, 203, 56, 29, 34, 34, 30, 26, 22, 25, 29, 29, 25, 20, 17, 20, 24, 20, 18, 18, 13, 31, 88, 85, 81, 80, 75, 68, 72, 
  148, 135, 131, 128, 143, 166, 197, 191, 167, 161, 153, 149, 146, 152, 153, 150, 148, 146, 144, 144, 143, 144, 146, 153, 160, 170, 177, 184, 191, 196, 199, 197, 197, 195, 190, 200, 167, 37, 34, 35, 27, 41, 85, 133, 161, 174, 180, 166, 139, 97, 48, 18, 16, 20, 18, 17, 16, 41, 59, 52, 52, 50, 46, 56, 
  154, 141, 139, 131, 157, 194, 184, 153, 148, 145, 143, 140, 143, 144, 137, 137, 136, 135, 135, 132, 133, 139, 146, 154, 163, 170, 175, 184, 192, 197, 199, 196, 192, 187, 188, 205, 124, 31, 33, 43, 112, 196, 242, 246, 241, 238, 237, 233, 234, 233, 209, 132, 42, 13, 17, 17, 17, 18, 33, 30, 30, 27, 26, 38, 
  158, 149, 148, 137, 170, 186, 149, 140, 137, 132, 131, 133, 131, 128, 126, 126, 123, 119, 120, 129, 133, 136, 144, 149, 157, 167, 175, 184, 191, 196, 196, 196, 190, 187, 190, 209, 106, 25, 61, 186, 246, 235, 225, 224, 222, 220, 218, 214, 214, 214, 209, 212, 187, 75, 13, 14, 13, 16, 22, 22, 21, 20, 18, 31, 
  153, 144, 143, 145, 175, 157, 139, 133, 127, 126, 127, 126, 119, 115, 111, 112, 109, 106, 109, 112, 118, 129, 139, 149, 160, 167, 174, 182, 186, 191, 194, 191, 188, 184, 194, 194, 52, 63, 204, 238, 225, 221, 218, 216, 214, 213, 209, 204, 208, 208, 199, 195, 194, 194, 95, 14, 20, 14, 17, 21, 18, 17, 21, 37, 
  136, 124, 120, 150, 167, 145, 136, 128, 120, 111, 97, 80, 69, 59, 48, 41, 38, 38, 44, 46, 39, 47, 58, 64, 82, 109, 136, 163, 183, 188, 190, 187, 183, 187, 204, 114, 46, 196, 238, 222, 221, 214, 212, 214, 213, 205, 211, 201, 197, 199, 191, 187, 183, 182, 186, 69, 29, 16, 17, 26, 26, 27, 38, 67, 
  126, 115, 111, 145, 144, 111, 84, 63, 51, 39, 30, 30, 37, 39, 44, 50, 54, 60, 65, 69, 67, 68, 71, 69, 63, 55, 52, 58, 75, 106, 133, 163, 183, 203, 179, 44, 126, 238, 225, 220, 213, 211, 217, 163, 95, 76, 94, 182, 194, 190, 187, 183, 182, 177, 174, 144, 26, 17, 14, 29, 46, 72, 92, 115, 
  110, 114, 102, 93, 51, 50, 48, 39, 48, 58, 64, 67, 68, 68, 71, 72, 73, 77, 82, 90, 94, 99, 102, 110, 116, 119, 116, 109, 93, 75, 63, 56, 68, 132, 98, 52, 208, 226, 218, 213, 209, 214, 154, 38, 47, 144, 115, 71, 186, 183, 183, 179, 175, 169, 165, 173, 68, 10, 13, 20, 51, 109, 129, 139, 
  89, 106, 89, 33, 41, 71, 64, 55, 58, 61, 59, 55, 55, 55, 58, 61, 64, 67, 73, 77, 81, 90, 97, 102, 107, 114, 122, 132, 144, 152, 148, 141, 118, 72, 30, 119, 233, 220, 217, 212, 208, 211, 80, 39, 29, 43, 231, 93, 123, 183, 175, 173, 169, 163, 161, 166, 118, 14, 13, 13, 37, 109, 133, 141, 
  69, 82, 102, 103, 105, 101, 99, 99, 88, 68, 55, 50, 48, 48, 51, 51, 52, 54, 56, 63, 68, 71, 78, 82, 89, 97, 105, 119, 131, 140, 143, 154, 184, 156, 37, 186, 228, 221, 217, 213, 207, 207, 76, 42, 34, 16, 207, 141, 110, 177, 171, 167, 166, 163, 158, 154, 146, 29, 10, 14, 26, 92, 128, 140, 
  59, 61, 90, 111, 124, 133, 135, 135, 116, 88, 65, 55, 55, 56, 81, 106, 120, 116, 105, 93, 82, 73, 68, 67, 68, 76, 86, 101, 116, 132, 143, 154, 186, 93, 59, 221, 221, 220, 220, 212, 207, 211, 126, 29, 42, 116, 224, 77, 150, 169, 166, 165, 166, 160, 150, 148, 152, 52, 8, 13, 21, 73, 123, 137, 
  55, 46, 75, 103, 116, 128, 127, 106, 75, 61, 58, 58, 58, 58, 98, 135, 174, 197, 208, 213, 208, 197, 182, 157, 133, 112, 98, 95, 102, 119, 139, 157, 169, 34, 105, 233, 220, 222, 220, 214, 209, 201, 194, 102, 94, 127, 71, 111, 175, 166, 165, 165, 161, 154, 146, 146, 150, 76, 8, 14, 14, 56, 115, 133, 
  68, 59, 82, 111, 123, 124, 107, 72, 56, 54, 56, 61, 52, 51, 95, 120, 150, 173, 190, 201, 211, 214, 220, 222, 222, 216, 200, 179, 161, 144, 139, 160, 98, 18, 163, 222, 220, 221, 218, 213, 211, 203, 200, 195, 157, 131, 157, 183, 170, 167, 167, 163, 160, 154, 149, 144, 143, 84, 8, 21, 18, 39, 99, 127, 
  144, 140, 149, 156, 157, 152, 132, 98, 71, 50, 44, 46, 38, 44, 94, 111, 131, 154, 171, 188, 199, 203, 205, 208, 208, 207, 203, 197, 190, 173, 154, 145, 50, 64, 209, 211, 218, 221, 220, 216, 213, 207, 201, 196, 196, 192, 186, 182, 177, 171, 170, 163, 163, 161, 152, 143, 143, 80, 3, 31, 41, 35, 69, 92, 
  174, 162, 162, 158, 153, 149, 149, 148, 129, 85, 44, 37, 47, 50, 86, 103, 112, 133, 154, 171, 186, 195, 200, 203, 201, 199, 195, 187, 178, 161, 149, 133, 99, 145, 207, 209, 218, 224, 224, 221, 220, 212, 208, 201, 200, 192, 187, 188, 183, 177, 175, 166, 169, 162, 153, 143, 144, 78, 3, 37, 61, 42, 43, 54, 
  166, 156, 157, 157, 152, 143, 140, 141, 140, 132, 98, 67, 77, 58, 63, 98, 102, 115, 132, 150, 167, 182, 188, 194, 195, 194, 190, 182, 173, 157, 141, 123, 110, 120, 194, 211, 217, 225, 225, 225, 225, 217, 213, 209, 204, 200, 197, 194, 188, 183, 179, 175, 174, 167, 154, 145, 144, 75, 3, 29, 50, 41, 39, 50, 
  165, 150, 149, 146, 145, 137, 136, 137, 132, 124, 120, 110, 84, 42, 29, 80, 99, 102, 112, 128, 146, 162, 173, 180, 184, 184, 179, 173, 165, 149, 132, 115, 105, 94, 161, 216, 220, 225, 228, 230, 228, 225, 220, 216, 211, 211, 205, 200, 194, 190, 186, 183, 179, 174, 158, 148, 145, 72, 7, 20, 29, 25, 31, 50, 
  157, 145, 144, 137, 132, 127, 120, 123, 127, 124, 114, 120, 84, 30, 13, 37, 84, 97, 101, 109, 119, 137, 152, 162, 170, 169, 165, 163, 154, 139, 122, 107, 97, 85, 126, 220, 222, 229, 233, 233, 231, 231, 228, 224, 218, 214, 212, 204, 200, 197, 190, 187, 184, 175, 160, 148, 146, 63, 5, 31, 29, 14, 17, 41, 
  152, 131, 129, 132, 132, 132, 136, 136, 132, 136, 133, 132, 98, 34, 10, 12, 39, 82, 94, 97, 99, 109, 123, 136, 146, 149, 148, 145, 136, 120, 105, 93, 84, 69, 106, 224, 226, 234, 238, 235, 235, 235, 233, 229, 222, 216, 214, 207, 205, 201, 196, 190, 190, 175, 160, 146, 145, 48, 0, 63, 72, 16, 12, 30, 
  129, 114, 110, 122, 127, 131, 136, 141, 140, 141, 141, 143, 123, 48, 7, 7, 12, 37, 78, 89, 88, 90, 98, 110, 118, 120, 119, 116, 112, 95, 84, 73, 65, 51, 115, 230, 230, 234, 241, 239, 243, 239, 233, 229, 225, 218, 214, 212, 209, 207, 199, 192, 187, 175, 161, 148, 144, 38, 3, 77, 129, 31, 12, 25, 
  128, 112, 119, 128, 135, 141, 143, 144, 148, 148, 148, 149, 131, 64, 14, 3, 7, 10, 29, 64, 82, 85, 90, 94, 97, 95, 93, 92, 84, 72, 61, 55, 43, 63, 186, 229, 234, 237, 243, 242, 241, 238, 234, 231, 226, 221, 218, 216, 213, 211, 203, 191, 186, 177, 160, 153, 139, 29, 5, 80, 158, 73, 17, 27, 
  120, 124, 135, 146, 153, 156, 154, 157, 158, 160, 154, 146, 116, 75, 37, 13, 3, 7, 9, 18, 41, 64, 77, 84, 82, 78, 75, 71, 64, 55, 46, 33, 34, 150, 214, 228, 235, 242, 245, 243, 241, 237, 237, 230, 228, 226, 222, 217, 213, 213, 201, 192, 184, 173, 162, 156, 127, 21, 3, 81, 169, 124, 31, 29, 
  73, 81, 99, 107, 118, 126, 133, 137, 135, 140, 133, 103, 99, 90, 63, 37, 14, 7, 7, 8, 10, 16, 29, 43, 51, 52, 51, 47, 41, 33, 21, 12, 107, 200, 218, 233, 239, 243, 247, 246, 241, 237, 235, 230, 229, 226, 222, 220, 216, 211, 200, 195, 180, 171, 162, 157, 112, 16, 4, 80, 163, 148, 63, 27, 
  65, 67, 81, 77, 80, 93, 110, 115, 111, 119, 131, 116, 95, 101, 88, 63, 37, 22, 13, 8, 8, 8, 9, 10, 13, 14, 14, 14, 14, 10, 0, 59, 183, 204, 229, 235, 241, 246, 251, 247, 242, 238, 234, 235, 235, 230, 226, 222, 218, 209, 203, 196, 182, 170, 162, 156, 89, 8, 7, 78, 157, 148, 89, 30, 
  69, 63, 77, 77, 72, 84, 101, 115, 119, 119, 131, 144, 118, 82, 71, 50, 34, 27, 24, 20, 13, 9, 7, 5, 5, 8, 8, 8, 9, 4, 21, 152, 194, 217, 231, 238, 242, 250, 252, 250, 246, 241, 239, 237, 234, 229, 228, 225, 217, 208, 204, 192, 179, 169, 161, 154, 59, 5, 7, 72, 153, 144, 101, 44, 
  65, 54, 64, 67, 64, 80, 88, 109, 123, 126, 136, 146, 102, 54, 43, 39, 33, 26, 20, 21, 30, 27, 18, 14, 12, 8, 7, 5, 4, 1, 90, 184, 204, 226, 233, 241, 246, 255, 255, 248, 243, 242, 242, 238, 235, 233, 230, 226, 217, 209, 201, 190, 178, 166, 158, 146, 34, 8, 7, 51, 153, 131, 115, 67, 
  58, 43, 48, 46, 56, 73, 84, 106, 116, 133, 140, 97, 56, 51, 60, 47, 37, 33, 26, 21, 26, 39, 43, 44, 38, 29, 25, 24, 20, 38, 152, 195, 217, 230, 235, 241, 248, 255, 255, 246, 245, 245, 245, 242, 239, 235, 231, 225, 216, 209, 201, 190, 177, 165, 157, 126, 17, 10, 9, 26, 132, 118, 131, 77, 
  52, 46, 52, 51, 63, 68, 82, 97, 112, 120, 88, 67, 59, 50, 48, 39, 42, 43, 37, 29, 25, 26, 39, 52, 38, 41, 47, 52, 54, 102, 175, 208, 224, 230, 238, 243, 255, 255, 250, 247, 248, 245, 245, 243, 239, 234, 229, 224, 216, 207, 199, 183, 170, 161, 156, 105, 12, 12, 12, 14, 97, 137, 133, 64, 
  50, 54, 63, 56, 60, 72, 81, 97, 110, 76, 52, 58, 52, 43, 41, 44, 56, 63, 61, 48, 37, 26, 24, 38, 39, 37, 37, 42, 58, 133, 188, 214, 224, 231, 241, 247, 255, 255, 248, 247, 248, 247, 243, 242, 239, 235, 226, 221, 214, 203, 192, 178, 166, 160, 154, 90, 8, 10, 12, 9, 89, 158, 118, 41, 
  51, 55, 65, 58, 59, 76, 81, 89, 75, 65, 65, 48, 39, 42, 47, 51, 51, 58, 77, 67, 39, 27, 24, 31, 47, 46, 46, 41, 67, 149, 194, 213, 225, 233, 242, 247, 251, 251, 246, 248, 247, 247, 243, 241, 235, 231, 225, 218, 211, 200, 187, 174, 163, 154, 149, 65, 4, 12, 12, 7, 68, 153, 72, 25, 
  52, 51, 63, 65, 60, 75, 77, 61, 56, 76, 58, 43, 48, 52, 46, 41, 38, 52, 59, 39, 25, 24, 27, 37, 60, 63, 67, 61, 86, 158, 195, 212, 222, 233, 239, 242, 247, 242, 243, 247, 246, 245, 242, 238, 234, 229, 222, 218, 209, 194, 183, 173, 161, 149, 140, 38, 7, 10, 12, 9, 41, 78, 18, 24, 
  52, 47, 63, 68, 67, 68, 54, 65, 78, 63, 67, 63, 48, 41, 34, 31, 37, 41, 26, 18, 21, 27, 30, 37, 59, 63, 64, 63, 90, 161, 192, 208, 220, 224, 230, 235, 238, 237, 242, 245, 241, 241, 239, 237, 231, 224, 221, 214, 201, 188, 179, 165, 157, 144, 120, 18, 9, 10, 12, 13, 14, 10, 8, 26, 
  51, 44, 58, 68, 76, 59, 39, 52, 56, 76, 77, 42, 27, 26, 24, 21, 21, 18, 18, 22, 29, 30, 26, 37, 55, 67, 71, 60, 93, 162, 184, 200, 208, 212, 225, 230, 233, 234, 237, 239, 239, 241, 237, 234, 228, 221, 217, 208, 197, 182, 171, 160, 145, 139, 92, 9, 12, 10, 12, 12, 12, 8, 10, 26, 
  50, 39, 52, 65, 71, 46, 30, 35, 58, 73, 64, 73, 78, 75, 71, 59, 55, 50, 37, 35, 29, 25, 26, 39, 51, 67, 69, 46, 94, 162, 174, 187, 195, 203, 216, 226, 224, 228, 233, 235, 237, 237, 233, 230, 225, 218, 213, 204, 191, 173, 162, 150, 135, 129, 52, 5, 10, 10, 10, 12, 13, 10, 10, 26, 
  47, 38, 51, 63, 73, 44, 35, 88, 135, 145, 135, 153, 158, 150, 145, 148, 148, 145, 131, 105, 67, 35, 30, 43, 52, 60, 63, 29, 77, 161, 161, 174, 184, 194, 200, 188, 187, 217, 224, 226, 228, 228, 228, 222, 220, 214, 208, 192, 178, 163, 154, 139, 124, 102, 20, 9, 10, 12, 12, 12, 13, 12, 10, 25, 
  47, 37, 50, 63, 77, 77, 109, 141, 157, 149, 116, 124, 148, 144, 140, 140, 136, 126, 127, 140, 149, 131, 76, 44, 52, 56, 76, 33, 37, 145, 157, 162, 171, 177, 183, 178, 170, 201, 211, 213, 214, 216, 213, 211, 209, 203, 192, 175, 162, 146, 135, 118, 106, 54, 8, 10, 10, 12, 10, 12, 12, 10, 9, 25, 
  67, 55, 56, 65, 82, 131, 133, 110, 148, 145, 123, 98, 136, 133, 132, 132, 141, 148, 129, 109, 114, 146, 146, 80, 54, 77, 95, 34, 16, 81, 158, 153, 158, 162, 167, 174, 178, 187, 191, 199, 200, 201, 199, 197, 195, 184, 173, 154, 140, 127, 112, 99, 78, 17, 10, 13, 10, 12, 12, 12, 12, 9, 9, 24, 
  97, 78, 65, 65, 101, 150, 135, 98, 143, 146, 141, 93, 128, 152, 145, 137, 119, 131, 154, 149, 116, 109, 158, 148, 106, 98, 103, 35, 17, 26, 123, 156, 152, 153, 157, 161, 169, 173, 174, 179, 182, 182, 180, 180, 177, 162, 148, 133, 118, 106, 95, 86, 33, 9, 12, 13, 13, 12, 12, 12, 13, 9, 12, 24, 
  101, 80, 68, 64, 115, 150, 145, 101, 126, 150, 150, 114, 110, 160, 141, 123, 149, 124, 127, 157, 154, 114, 119, 165, 158, 107, 101, 38, 17, 17, 42, 143, 152, 148, 149, 154, 157, 158, 161, 162, 163, 165, 165, 165, 158, 143, 129, 116, 102, 90, 88, 39, 12, 12, 13, 16, 16, 13, 12, 12, 12, 13, 12, 24, 
  95, 82, 80, 75, 135, 150, 148, 129, 105, 148, 157, 150, 107, 132, 165, 135, 122, 153, 116, 136, 161, 148, 107, 148, 163, 149, 105, 44, 14, 18, 17, 50, 131, 150, 144, 148, 150, 150, 152, 153, 153, 153, 152, 148, 141, 129, 116, 103, 92, 84, 39, 10, 12, 10, 10, 12, 14, 16, 12, 12, 12, 13, 12, 24, 
  94, 81, 78, 65, 133, 157, 149, 152, 126, 115, 154, 167, 156, 118, 133, 166, 158, 148, 144, 115, 165, 163, 122, 139, 160, 165, 122, 33, 13, 17, 20, 18, 31, 102, 146, 149, 145, 145, 145, 146, 144, 141, 141, 139, 131, 119, 110, 101, 76, 31, 9, 10, 10, 10, 12, 13, 12, 12, 14, 13, 13, 12, 10, 24, 
  86, 69, 69, 50, 77, 156, 157, 153, 160, 133, 120, 154, 177, 166, 139, 129, 145, 154, 166, 132, 150, 171, 152, 152, 162, 162, 115, 38, 8, 14, 17, 18, 17, 20, 58, 120, 148, 145, 141, 143, 137, 139, 135, 140, 127, 118, 102, 58, 18, 10, 10, 10, 10, 12, 12, 12, 12, 13, 14, 12, 13, 13, 10, 24, 
  80, 59, 60, 52, 50, 118, 156, 161, 160, 167, 144, 126, 145, 171, 175, 165, 153, 150, 167, 167, 163, 173, 174, 170, 167, 157, 107, 64, 14, 9, 14, 18, 18, 17, 17, 24, 48, 90, 120, 133, 136, 137, 133, 129, 102, 67, 26, 10, 10, 10, 10, 10, 10, 10, 13, 13, 13, 14, 13, 13, 14, 12, 12, 22, 
  71, 51, 55, 54, 41, 47, 99, 149, 166, 169, 170, 166, 144, 137, 157, 169, 171, 175, 177, 177, 174, 174, 178, 178, 170, 129, 102, 81, 37, 12, 12, 14, 17, 17, 17, 17, 16, 17, 25, 33, 39, 43, 42, 34, 22, 14, 12, 12, 12, 12, 10, 12, 12, 13, 13, 13, 14, 14, 13, 14, 16, 13, 12, 24, 
  67, 46, 50, 51, 39, 24, 51, 82, 136, 166, 177, 175, 177, 165, 160, 165, 173, 177, 180, 178, 174, 170, 158, 144, 131, 126, 111, 80, 52, 26, 21, 14, 13, 16, 16, 17, 17, 16, 17, 17, 17, 18, 17, 17, 16, 16, 13, 13, 12, 12, 10, 12, 12, 13, 14, 16, 16, 14, 13, 21, 18, 14, 13, 26, 
  64, 48, 51, 52, 46, 29, 39, 50, 81, 126, 143, 156, 167, 180, 165, 165, 166, 152, 145, 146, 135, 128, 123, 131, 133, 124, 111, 106, 73, 37, 25, 29, 18, 13, 14, 14, 16, 17, 16, 16, 16, 17, 17, 16, 16, 14, 13, 13, 12, 12, 12, 12, 13, 14, 14, 16, 14, 12, 18, 24, 20, 17, 16, 25, 
  63, 48, 50, 51, 47, 37, 27, 42, 52, 86, 94, 135, 111, 110, 98, 127, 143, 127, 94, 126, 131, 106, 86, 128, 145, 124, 101, 120, 110, 58, 30, 31, 61, 29, 10, 13, 14, 13, 14, 14, 14, 16, 16, 16, 16, 14, 13, 12, 12, 12, 12, 13, 13, 16, 16, 16, 12, 13, 24, 25, 22, 21, 29, 69, 
  61, 44, 43, 46, 46, 42, 24, 42, 46, 73, 82, 118, 114, 68, 99, 122, 143, 141, 110, 99, 153, 126, 94, 102, 140, 146, 123, 115, 129, 86, 48, 39, 37, 34, 14, 13, 13, 13, 13, 13, 14, 14, 16, 16, 14, 14, 13, 12, 10, 10, 12, 13, 14, 16, 13, 10, 14, 20, 22, 27, 48, 82, 115, 154, 
  56, 38, 38, 43, 46, 52, 31, 41, 47, 60, 80, 84, 114, 92, 81, 115, 133, 145, 124, 106, 118, 145, 110, 88, 111, 128, 157, 105, 98, 76, 61, 54, 54, 27, 14, 12, 10, 12, 12, 13, 13, 13, 13, 13, 14, 13, 12, 12, 10, 12, 13, 14, 14, 12, 20, 30, 44, 42, 48, 89, 133, 149, 158, 174, 
  52, 37, 39, 43, 48, 51, 38, 31, 48, 46, 71, 63, 85, 110, 81, 103, 126, 127, 129, 120, 102, 116, 126, 115, 80, 65, 71, 61, 56, 51, 42, 31, 35, 30, 18, 16, 18, 17, 14, 12, 12, 12, 13, 13, 13, 12, 12, 10, 12, 13, 13, 12, 17, 39, 86, 75, 78, 106, 124, 158, 174, 180, 191, 204, 
  52, 38, 41, 46, 44, 42, 38, 26, 38, 43, 59, 81, 71, 101, 97, 82, 123, 118, 123, 120, 119, 112, 135, 110, 63, 61, 63, 64, 63, 71, 77, 54, 30, 22, 17, 21, 27, 25, 26, 16, 12, 13, 12, 12, 10, 12, 12, 12, 10, 10, 8, 41, 92, 102, 111, 115, 149, 162, 162, 186, 192, 196, 201, 199, 
  50, 38, 42, 44, 41, 37, 38, 30, 31, 48, 48, 81, 72, 95, 110, 82, 105, 116, 105, 109, 118, 127, 80, 64, 64, 68, 76, 82, 78, 63, 58, 61, 47, 30, 22, 20, 22, 33, 34, 34, 30, 27, 30, 22, 17, 13, 12, 12, 13, 25, 59, 120, 154, 128, 119, 178, 182, 183, 180, 199, 203, 196, 186, 183, 
  73, 56, 56, 58, 54, 52, 52, 50, 43, 63, 61, 76, 93, 80, 123, 105, 106, 118, 118, 124, 109, 93, 73, 78, 90, 90, 94, 107, 110, 92, 77, 71, 63, 56, 46, 39, 37, 47, 63, 59, 58, 71, 76, 69, 64, 59, 55, 54, 68, 127, 150, 148, 162, 166, 180, 200, 199, 199, 196, 205, 203, 188, 188, 191
}; 

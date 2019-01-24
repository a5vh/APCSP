/*******************************************
 *                                         * 
 * Raster Image Starter Code               *
 *                                         *
 * UTeach CSP                              *
 * Bradley Beth                            *
 * rev. 20161123                           * 
 *                                         *
 * Extend this code to change pixels'      *
 * color values.                           *
 *******************************************/

String pathToImage = 
  "http://i.imgur.com/l4KxhqF.jpg"; //Change this to load a different image
PImage img;                         //Variable to store an image
float r, g, b;                      //red, green, blue floating point 
                                    //"decimal" variables
void setup()
{
  img = loadImage(pathToImage);              //load the image
  size(img.width, img.height);    //set the window size to match the image
}

void draw()
{
  image(img, 0, 0);   //draw the image on the screen at position (0,0)
  loadPixels();       //'pixels' is now a list of all the pixels in img (in order)
                      //left to right, top to bottom
                      
  int location = 0;                    //start at the first pixel
  while (location < pixels.length) 
  {
    // Get the R, G, B values from the image
    r = red  (pixels[location]);
    g = green(pixels[location]);
    b = blue (pixels[location]);
    
    
    if (keyPressed)
    {
      if (key == 'r')
      {
         r = r/2;
      }
      
      if (key == 'g')
      {
        g = g/2;
      }
      
      if (key == 'b')
      {
        b = b/2;
      }
      
      if (key == 't')
      {
        r = r/2;
        g = g/2;
      }
    }
    
    color newColor = color(r/2, g/2, b/2);   //create a new color
    pixels[location] = newColor;       //store the new color  
    location = location + 1;           //next pixel!
  }
  
    updatePixels();   //update the image
}

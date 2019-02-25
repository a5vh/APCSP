/*******************************************
 *                                         * 
 * Warhol Grid Generator starter code      *
 *                                         *
 * UTeach CSP                              *
 * Bradley Beth                            *
 * rev. 20160831                           * 
 *                                         *
 *******************************************/

PImage imgOrig, imgVar1, imgVar2, imgVar3;

void setup()
{
  textSize(16);                   //set font size
  fill(240, 240, 120);            //set font color
  
  //Load image(s)
  imgOrig = loadImage("original.png");
  imgVar1 = imgOrig.get();
  imgVar2 = imgOrig.get();
  imgVar3 = imgOrig.get();
  
  //Set window size
  size(1, 1);
  frame.setResizable(true);
  size(imgOrig.width * 2, imgOrig.height * 2);
  
  /*************************
  Place STATIC filters here
  * ex: imgVar1.filter(...);
  *************************/
  
  imgVar3.filter(ERODE);

  
  
  /************************/
  
}

void draw()
{
  /*************************
  Place DYNAMIC filters here
  *************************/
  

  
  
  /************************/
   
  //Draw original image
  image(imgOrig, 0, 0);
  fill(0,0,0);
  text("original - No Filter", imgOrig.width / 4, imgOrig.height - 10); 

  //Draw image variant 1
  image(imgVar1, imgVar1.width, 0);
  text("variant 1 - Posterize", 5 * imgVar1.width / 4, imgVar1.height - 10);
  imgVar1.filter(POSTERIZE, 2);
  
  
  //Draw image variant 2
  image(imgVar2, 0, imgVar2.height);
  fill(0,0,0);
  text("variant 2 - Gray", imgVar2.width / 4, (2 * imgVar2.height) - 10);
  imgVar2.filter(GRAY);

  
  //Draw image variant 3
  image(imgVar3, imgVar3.width, imgVar3.height);
  text("variant 3 - Thresh and Erode", 5 * imgVar3.width / 4.5, (2 * imgVar3.height) - 10);
  imgVar3.filter(THRESHOLD);
  
  save("2x2.png");
}

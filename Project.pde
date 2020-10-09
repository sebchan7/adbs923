PFont font;
import java.io.File;
import processing.sound.*;
SoundFile sound;
boolean play;
String menuMessage="Guess The Song";
String songs[]=new String[5];
int currentSong;
int last = 0;
int m = 0;
String answer[]=new String[5];
String input= "";
int score;
int inputchar;
PImage menuPicture1;
PImage menuPicture2;
PImage menuPicture3;
PImage menuPicture4;
PImage menuPicture5;

void setup()
{
  size(1000, 1000);
  play = false;
  textMode(CENTER);
  rectMode(CENTER);
  currentSong = 0;
  songs[0]="lemonade instrumental.mp3";
  songs[1]="lucid dreams instrumental.mp3";
  songs[2]="life is good instrumental.mp3";
  songs[3]="sicko mode instrumental.mp3";
  songs[4]="drip too hard intrumental.mp3";
  score = 0;
  answer[0]="lemonade";
  answer[1]="lucid dreams";
  answer[2]="life is good";
  answer[3]="sicko mode";
  answer[4]="drip too hard";
  menuPicture1 = loadImage("astroworld cover.jpg");
  menuPicture1.resize(width/5, height/5);
  menuPicture2 = loadImage("antisocial cover.jpg");
  menuPicture2.resize(width/5, height/5);
  menuPicture3 = loadImage("hoodie coer.jpg");
  menuPicture3.resize(width/5, height/5);
  menuPicture4 = loadImage("scorpion cover.jpg");
  menuPicture4.resize(width/5, height/5);
  menuPicture5 = loadImage("drip harder.jpg");
  menuPicture5.resize(width/5, height/5);
  font = loadFont("fonterson.vlw");
  textFont(font);
}

void mouseClicked()
{
  if ((mouseX>375)&&(mouseY > 425)&&(mouseX <500+250)&&(mouseY <500+125))
  {
    play = true;
    last=millis();
    Quiz();    
    sound = new SoundFile(this, songs[currentSong]);
    sound.amp(0.5);
    sound.play();
  }
  if ((mouseX>775)&&(mouseY > 818)&(mouseX <850+150)&&(mouseY <850+65))//rect(500, 500, 250, 125);
  {
    exit();
  }
  if ((mouseX>725)&&(mouseY > 108)&(mouseX <875)&&(mouseY <150+55)) //rect(800, 150, 150, 85
  {
    sound.stop();   
    currentSong++;
    if (currentSong<5)
    {     
      sound = new SoundFile(this, songs[currentSong]);
      sound.play();
    }
  }
}

void keyPressed()
{
  if (key == RETURN || key == ENTER)
  {
    if (input.equals(answer[currentSong])) 
    {
      println(answer[currentSong]);
      println("correct");
      score++;
      input = "";
    } else 
    {
      println("wrong");
    }
    currentSong++;
    input = "";
    sound.stop();
    if (currentSong <5)
    {
      sound = new SoundFile(this, songs[currentSong]);
      sound.play();
    }
  } else if (key == BACKSPACE)
  {
    if (input.length() > 0 )
      input = input.substring(0, input.length()-1);
    ;
    println(input);
  } else 
  {
    input += key;
    println(input);
  }
}

void Quiz()
{
  textSize(75);
  background(#7D817D);
  if (currentSong == 0)
  {
    text("Round 1", 340, 175);
    strokeWeight(10);
    textSize(40);
    for (int i = 0, x = 110; i < input.length(); i++, x+=105)
    {
      text(input.charAt(i), x, 275);
    }
    line(100, 300, 153, 300);
    line(206, 300, 259, 300);
    line(312, 300, 365, 300);
    line(418, 300, 471, 300);
    line(524, 300, 577, 300);
    line(630, 300, 683, 300);
    line(736, 300, 789, 300);
    line(842, 300, 895, 300);
    if ((mouseX>725)&&(mouseY > 108)&(mouseX <875)&&(mouseY <150+55))
    {
      fill(#730D93);
    } 
    else
    {
      fill(#8803FF);
    }
    {
      rect(800, 150, 150, 85);
      fill(0);
      text("Skip", 750, 165);
    }
  }
  if (currentSong == 1)
  {
    text("Round 2", 340, 175);
    textSize(40);
    for (int i = 0, x = 110; i < input.length(); i++, x+=72)
    {
      text(input.charAt(i), x, 275);
    }
    line(100, 300, 136, 300);
    line(172, 300, 208, 300);
    line(244, 300, 280, 300);
    line(316, 300, 352, 300);
    line(388, 300, 424, 300);
    line(460, 300, 496, 300);
    line(532, 300, 568, 300);
    line(604, 300, 640, 300);
    line(676, 300, 712, 300);
    line(748, 300, 784, 300);
    line(820, 300, 856, 300);
    line(892, 300, 928, 300);
    if ((mouseX>725)&&(mouseY > 108)&(mouseX <875)&&(mouseY <150+55))
    {
      fill(#730D93);
    }
    else
    {
      fill(#8803FF);
    }
    rect(800, 150, 150, 85);
    fill(0);
    text("Skip", 750, 165);
   }
  if (currentSong == 2)
   {
     text("Round 3", 340, 175);
     textSize(40);
     for (int i = 0, x = 110; i < input.length(); i++, x+=72)
       {
        text(input.charAt(i), x, 275);
       }
     line(100, 300, 136, 300);
     line(172, 300, 208, 300);
     line(244, 300, 280, 300);
     line(316, 300, 352, 300);
     line(388, 300, 424, 300);
     line(460, 300, 496, 300);
     line(532, 300, 568, 300);
     line(604, 300, 640, 300);
     line(676, 300, 712, 300);
     line(748, 300, 784, 300);
     line(820, 300, 856, 300);
     line(892, 300, 928, 300);
     if ((mouseX>725)&&(mouseY > 108)&(mouseX <875)&&(mouseY <150+55))
     {
       fill(#730D93);
     }
     else
     {
       fill(#8803FF);
     }
     rect(800, 150, 150, 85);
     fill(0);
     text("Skip", 750, 165);
   }
  if (currentSong == 3)
   {
    text("Round 4", 340, 175);
    textSize(40);
    for (int i = 0, x = 110; i < input.length(); i++, x+=86)
     {
       text(input.charAt(i), x, 275);
     }
     line(100, 300, 142, 300);
     line(184, 300, 226, 300);
     line(268, 300, 310, 300);
     line(332, 300, 394, 300);
     line(436, 300, 478, 300);
     line(520, 300, 562, 300);
     line(604, 300, 646, 300);
     line(688, 300, 730, 300);
     line(772, 300, 814, 300);
     line(856, 300, 898, 300);
     if ((mouseX>725)&&(mouseY > 108)&(mouseX <875)&&(mouseY <150+55))
      {
       fill(#730D93);
      }
      else
      {
       fill(#8803FF);
      }
      rect(800, 150, 150, 85);
      fill(0);
      text("Skip", 750, 165);
    }
   if (currentSong == 4)
    {
     text("Final Round", 80, 175);
     textSize(40);
     for (int i = 0, x = 110; i < input.length(); i++, x+=65)
      {
       text(input.charAt(i), x, 275);
      }
      line(100, 300, 132, 300);
      line(164, 300, 208, 300);
      line(228, 300, 260, 300);
      line(292, 300, 324, 300);
      line(356, 300, 388, 300);
      line(420, 300, 452, 300);
      line(484, 300, 516, 300);
      line(548, 300, 580, 300);
      line(612, 300, 644, 300);
      line(676, 300, 708, 300);
      line(740, 300, 772, 300);
      line(804, 300, 836, 300);
      line(868, 300, 900, 300);
      if ((mouseX>725)&&(mouseY > 108)&(mouseX <875)&&(mouseY <150+55))
      {
       fill(#730D93);
      }
      else
      {
       fill(#8803FF);
      }
      rect(800, 150, 150, 85);
      fill(0);
      text("Skip", 750, 165);
     }
    if (currentSong ==5)
     {
      text("Game Finished", 200, 175);
      text("Final Score:"+(score)+"/5", 170, 300);
     }
  }

void Menu()
 {
   textSize(75);
   background(#90908D);
   image(menuPicture1, 700, 700);
   image(menuPicture2, 50, 50);
   image(menuPicture3, 600, 50);
   image(menuPicture4, 150, 500);
   image(menuPicture5, 800, 450);  
   fill(0);
   text("Guess The Song", 225, 300);
   if ((mouseX>375)&&(mouseY > 425)&&(mouseX <500+125)&&(mouseY <500+75))
     {
       fill(#298E31);
     } 
     else
     {
      fill(#1AD33D);
     }
     textSize(45);
     rect(500, 500, 250, 125);
     fill(0);
     text("Play", 455, 520);
     if ((mouseX>775)&&(mouseY > 818)&(mouseX <850+75)&&(mouseY <850+32))
     {
       fill(#810D17);
     }
     {
       fill(#D11525);
     }
     textSize(35);
     rect(850, 850, 150, 65);
     fill(0);
     text("Quit", 815, 863);
   }

void draw()
 {
   if (play == false)
     {
       Menu();
     } 
     else
     {
       Quiz();
       last=millis();
     }
}

#include <LiquidCrystal.h>
// cerner_2^5_2017
// Another First Hand Submission, this time with Arduino!!
LiquidCrystal lcd(10,11,12,2,3,4,5);
void setup()
{
  lcd.begin(16,2);
  lcd.print("First Hand!!");
}
void loop()
{
  lcd.setCursor(0,1);
  lcd.print(millis()/1000);
}

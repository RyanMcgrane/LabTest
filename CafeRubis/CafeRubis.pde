/* Ryan Mcgrane
   C16419862
   date: 14/11/2017
--------------------------------- */

//Declaration of ArrayLists..
ArrayList<Product> products;
ArrayList<Product> bill;
  
void setup()
{
   size(800,600); 
   loadData();
   printProducts();
}


void loadData()
{
    Table table = loadTable("cafe.csv", "header");
    
    for(TableRow row:table.rows())
    {
        Product product = new Product(row);
       // products.add(product);
     }
}

void printProducts()
{
   float x = 2.5;
   float y = 2.8;
  
   fill(0);
  // for(Product p :products)
   //{
    // println(p);
     
  // }
}

void displayProducts()
{
  
  // Left hand side of the menu
  float xr1 = 20;
  float yr1 = 40;
  int list = 7;
  

  for(int i = 0; i < list; i++ )
  {
    fill(255);
    rect(xr1, yr1, 220 ,50);
    
    yr1 = yr1 + 60;
  }
  
   fill(0);
   textSize(16);
   int x3 = 33;
   int y3 = 75;
   text("                                    Americano                 2.50 ", x3, y3);
   text("                                      Cappuchino               2.80 ", x3, y3 + 65);
   text("                                      Latte                        2.80 ", x3, y3 + 130);
   text("                                     Roibois Tea              2.90 ", x3, y3 + 185);
   text("                                      Lemon & ginger tea  2.90 ", x3, y3 + 240);
   text("                                    Chardonnay               6.50 ", x3, y3 + 300);
   text("                                      Prosecco                   7.20 ", x3, y3 + 360);
  
   
   
      
}

void displayBill()
{
  float x2r2 = 420;
  float y2r2 = 40;
  
  fill(255);
  rect(x2r2, y2r2, 350, 520);
  
  fill(0);
  textSize(16);
  textAlign(CENTER);
  text("Your Bill", 600 , 60);  
  
  
}

void mousePressed()
{
    
}


void draw()
{
   background(123);
   displayProducts(); 
   displayBill();
   
}
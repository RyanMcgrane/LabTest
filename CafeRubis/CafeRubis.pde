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
    
    for(TableRow row: table.rows())
    {
        Product product = new Product(row);
      //  products.add(product);
     }
}

void printProducts()
{
   for(Product products:products)
   {
      println(products); 
   }
}
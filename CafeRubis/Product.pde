class Product 
{
    String name;
    Float price;
    
    Product(TableRow row)
    {
      name = row.getString("Name");
      price = row.getFloat("Price");
    }
    
    
    String toString()
    {
       return name + "," + price;
    }
    
    
  
}
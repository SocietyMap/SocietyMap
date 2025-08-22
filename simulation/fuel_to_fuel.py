def simulate_grocery_price(diesel_price, base_delivery=50.0, base_grocery=100.0):
    delivery_cost = diesel_price * 1.2 + base_delivery
    grocery_price = delivery_cost * 1.1 + base_grocery
    return round(grocery_price, 2)

# Example usage
if __name__ == "__main__":
    diesel = 2.5
    price = simulate_grocery_price(diesel)
    print(f"Grocery price at ${diesel}/L diesel: ${price}")

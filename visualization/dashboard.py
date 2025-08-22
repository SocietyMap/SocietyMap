import streamlit as st
from simulation.fuel_to_food import simulate_grocery_price

st.title("Fuel-to-Food Price Simulator")

diesel_price = st.slider("Diesel Price ($/L)", min_value=1.0, max_value=3.0, value=2.0, step=0.1)
grocery_price = simulate_grocery_price(diesel_price)

st.metric(label="Estimated Grocery Price", value=f"${grocery_price}")
st.caption("Based on delivery cost ripple effect from diesel pricing.")


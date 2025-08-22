## Hi there 👋

<!--
**SocietyMap/SocietyMap** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->

# Society Map Prototype: Fuel-to-Food Chain

This project models the economic ripple effect from fuel prices to grocery costs using:

- Terraform (AWS Neptune)
- Python (simulation logic)
- Streamlit (visual dashboard)

## Setup

1. Configure AWS credentials
2. Update `terraform.tfvars` with your VPC ID and IP
3. Run `terraform init && terraform apply`
4. Launch `dashboard.py` with `streamlit run dashboard.py`

# Step 1: Use a base image
FROM python:3.10

# Step 2: Set a working directory in the container
WORKDIR /app

# Step 3: Copy everything from your project folder into the container
COPY . /app

# Step 4: Install system dependencies (like cmake or SDL needed for ViZDoom)
RUN apt-get update && apt-get install -y \
    cmake libboost-all-dev libsdl2-dev zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Step 5: Install Python libraries
RUN pip install pip==24.0
RUN pip install -r requirements.txt || cat requirements.txt
RUN pip install jupyter

# Step 6: Open ports for Jupyter (optional)
EXPOSE 8888

# Step 7: Default command (you can change this)
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
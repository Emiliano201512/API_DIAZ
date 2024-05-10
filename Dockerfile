# Use a Rust base image
FROM rust:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the entire project directory into the container
COPY . .

# Build and cache dependencies
RUN cargo build --release

# Set the startup command
CMD ["./target/release/mi_programa"]

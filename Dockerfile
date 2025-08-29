# Use official Playwright image with all browsers installed
FROM mcr.microsoft.com/playwright:v1.55.0-jammy

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy your test code
COPY . .

# Run tests by default (you can override this in CI)
CMD ["npx", "playwright", "test"]

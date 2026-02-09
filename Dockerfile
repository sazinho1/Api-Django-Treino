# THERE ARE COMMENTS ON THIS FILE FOR ME TO UNDERSTEAND BETTER WHAT EVERYTHING DOES IN THIS FILE :)

# Simple base python image
FROM python:3.10-slim

# Prohibits any .pyc archive creation
ENV PYTHONDONTWRITEBYTECODE 1
# Instant log aparrel in the terminal
ENV PYTHONUNBUFFERED 1

# Work folder inside of the container
WORKDIR /app

# Copies the dependencies archive and installs it
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copies the rest of the project code to insde the container
COPY . /app/

# Informs to docker that the application uses the port 8000
EXPOSE 8000

# Command to initiate the server when the container runs
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
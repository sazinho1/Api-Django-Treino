# API Django - Post Management

This is a RESTful API built with **Django** and **Django Rest Framework** for managing posts. 

---

## Requirements

To run this project locally, you will need:

* [Python 3.10+](https://www.python.org/downloads/)
* [Git](https://git-scm.com/)

---

## 🚀 Setting up the project

Follow the steps below to clone and configure the development environment:

1. **Clone the repository:**
   ```shell
   git clone [https://github.com/YOUR_USERNAME/Api-Django-Treino.git](https://github.com/YOUR_USERNAME/Api-Django-Treino.git)
   cd Api-Django-Treino
```

2. **Create and activate a virtual environment:**

    ```shell
    # Windows
    python -m venv .venv
    .venv\Scripts\activate
```

    ```shell
    # Linux/Mac
    python3 -m venv .venv
    source .venv/bin/activate
```

3. **Install Dependencies:**

    ```shell
    pip install -r requirements.txt
```

4. **Run migrations (Database Setup):**
    ```shell
    python manage.py migrate
```

5. **Running the Server:**
    To start the local development server:
```shell
    python manage.py runserver
```
    The API will be available at: http://127.0.0.1:8000/

# API Endpoints:

|   Method    |   Endpoint    |       Description       |
| ----------- | ------------- | ----------------------- |
| **GET**     |   `/posts/`   |     List all posts      |
| **POST**    |   `/posts/`   |    Create a new post    |
| **GET**     | `/posts/<id>/`| Retrieve a specific post|
| **PATCH**   | `/posts/<id>/`| Partially update a post |
| **DELETE**  | `/posts/<id>/`|      Delete a post      |

# Useful Resources:
- [Django Documentation](https://docs.djangoproject.com/en/6.0/)
- [Django REST Framework](https://www.django-rest-framework.org/)`

# 📦 Project Structure
- api_root/: Global project settings (settings, main urls).

- api_rest/: Main application containing business logic.

    - models.py: Database schema (Post table).

    - serializers.py: Data transformation (Model <-> JSON).

    - views.py: API logic (ViewSet).

    - urls.py: App-specific routes.
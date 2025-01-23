TodoApp
- An efficient task management application showcasing backend development expertise with modern technologies like Node.js, Express, PostgreSQL, Prisma, and Docker.

🛠️ Technologies Used
- Node.js & Express.js: Built a scalable REST API with proper routing and middleware.
- PostgreSQL: Used as the relational database to store users and todos.
- Prisma ORM: Simplified database interaction with an elegant and type-safe query system.
- Docker: Deployed the app with containerisation for consistent and portable runtime environments.
- JWT Authentication: Secured API endpoints with JSON Web Tokens for authentication and session management.

🚀 Features
User Authentication:
- Secure user registration and login with hashed passwords using bcrypt.
- JWT-based authentication for protected routes.

Todo Management:
- Create, read, update, and delete tasks with user-specific data segregation.
- Default task created upon user registration.

Containerised Deployment:
- Dockerised app for consistency across environments.
- Database and app run in isolated containers using Docker Compose.

Database Interaction:
- Prisma ORM for structured database schema and seamless migrations.
- PostgreSQL backend to handle relational data efficiently.

Scalability & Modularity:
- Clean code architecture with separation of concerns (routes, middleware, and database models).


📦 Installation & Setup
Follow these steps to run the app locally or deploy it yourself:

Prerequisites
- Docker installed on your machine.
- Run Locally

Clone the repository:
- bash
- Copy
- Edit
- git clone https://github.com/tomlhennessy/todoApp.git
- cd todoApp

Create a .env file:
- env
- Copy
- Edit
- JWT_SECRET=your_jwt_secret_key
- DATABASE_URL=your_database_connection_string
- PORT=3000

Build and run the app using Docker Compose:
- bash
- Copy
- Edit
- docker compose up --build
- The server will start on http://localhost:3000.

API Endpoints
Authentication:
- POST /auth/register: Register a new user.
- POST /auth/login: Authenticate and receive a token.

Todos:
- GET /todos: Fetch all todos for the logged-in user.
- POST /todos: Add a new todo.
- PUT /todos/:id: Mark a todo as complete.
- DELETE /todos/:id: Delete a todo.

🖼️ Demo
The app is deployed and live here: https://todo-app-kded.onrender.com

📚 What I Learned
This project showcases my backend development skills and my ability to:
- Securely handle user authentication and data.
- Write clean, modular, and maintainable code.
- Work with containerisation for robust deployment workflows.
- Use ORMs like Prisma to manage relational data with migrations.
- Build production-ready applications with Docker and PostgreSQL.
  

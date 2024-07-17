# User Management API Operations

## Get All Users

**Description**: Retrieves a list of all users.

**HTTP Method**: GET

**Endpoint**: `/users`

**CURL Example**:

```bash
curl -X GET "http://localhost:8080/users" -H "accept: application/json"
```

## Create a New User

**Description**: Creates a new user with the provided name, surname, and email.

**HTTP Method**: POST

**Endpoint**: [`/users`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2Fhome%2Fdsanchor%2Fprojects%2Finternal%2Fcopilot%2Fjava%2F1707%2Fusers%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/home/dsanchor/projects/internal/copilot/java/1707/users")

**CURL Example**:

```bash
curl -X POST "http://localhost:8080/users" -H "Content-Type: application/json" -d "{\"name\":\"John\", \"surname\":\"Doe\", \"email\":\"john.doe@example.com\"}"
```

## Get User by ID

**Description**: Retrieves a user by their unique ID.

**HTTP Method**: GET

**Endpoint**: `/users/{userId}`

**CURL Example**:

```bash
curl -X GET "http://localhost:8080/users/1" -H "accept: application/json"
```

## Update a User by ID

**Description**: Updates the details of an existing user identified by their unique ID.

**HTTP Method**: PUT

**Endpoint**: `/users/{userId}`

**CURL Example**:

```bash
curl -X PUT "http://localhost:8080/users/1" -H "Content-Type: application/json" -d "{\"name\":\"Jane\", \"surname\":\"Doe\", \"email\":\"jane.doe@example.com\"}"
```

## Delete a User by ID

**Description**: Deletes a user identified by their unique ID.

**HTTP Method**: DELETE

**Endpoint**: `/users/{userId}`

**CURL Example**:

```bash
curl -X DELETE "http://localhost:8080/users/1"
```

## Containerize the Application

### Build the Docker Image

```bash
docker build -t user-management-api .
```

### Run the Docker Container

```bash
docker run -p 8080:8080 user-management-api
```


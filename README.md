# Zeropoint

Zeropoint is an experimental version of the Zeropoint project, focusing on model optimization and ONNX registry.

## Getting Started

These instructions will help you set up and run the Zeropoint Experimental locally.

### Prerequisites

- Docker
- Docker Compose

### Running the App

1. Build the Docker images:

   ```bash
   make build
   ```
   
2. Run the Docker containers:
    ```
    make run
    ```
3. Apply initial migrations
    ```
   make migrate
   ```
4. To stop the app and remove the containers:
   ```
   make stop
   ```

### Development
1. Run Django tests :
```commandline
make test
```

2. Create new Django app:
```commandline
make create-app APP_NAME=myapp
```

### Contributing

Feel free to contribute by submitting issues or pull requests.
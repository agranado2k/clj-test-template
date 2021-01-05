# Deploy: tell Tilt what YAML to deploy
k8s_yaml('deployment.yaml')

# Build: tell Tilt what images to build from which directories
docker_build('agranado2k/pipeline:0.0.1-SNAPSHOT', '.')

# Watch: tell Tilt how to connect locally (optional)
k8s_resource('clj-pipeline', port_forwards=8080)
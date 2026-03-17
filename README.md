# crane-docker-image

Docker image containing Google's crane CLI tool for container registry operations.

## About

This image provides [crane](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md) - a tool for interacting with remote container images and registries. It's a faster and simpler alternative to tools like skopeo.

## Contents

- Alpine Linux base image
- Google crane CLI (from go-containerregistry)
- AWS CLI v2

## Usage

This image is used internally by CloudBees Platform workflows for container image operations, particularly for promoting images between ECR registries.

### Example Commands

```bash
# Copy an image between registries
crane copy source/image:tag destination/image:tag

# List tags for an image
crane ls registry.example.com/image

# Get image manifest
crane manifest registry.example.com/image:tag

# Pull image as tarball
crane pull registry.example.com/image:tag image.tar
```

## Migration from skopeo-docker-image

This image replaces the deprecated [skopeo-docker-image](https://github.com/calculi-corp/skopeo-docker-image) repository.

**Related Ticket:** [CBP-34809](https://cloudbees.atlassian.net/browse/CBP-34809)

## Building Locally

```bash
docker build -t crane-docker-image .
```

## Links

- [Crane Documentation](https://github.com/google/go-containerregistry/blob/main/cmd/crane/doc/crane.md)
- [go-containerregistry GitHub](https://github.com/google/go-containerregistry)
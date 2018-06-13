load("@io_bazel_rules_docker//java:image.bzl", "java_image")

java_image(
    name = "my-image-root",
    main_class = "server.Server",
    runtime_deps = [
        "//my-service:my-server",
    ],
)

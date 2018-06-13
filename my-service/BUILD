load("@io_bazel_rules_docker//java:image.bzl", "java_image")

java_library(
    name = "server",
    srcs = glob(["src/main/java/server/Server.java"]),
    deps = [],
)

java_binary(
    name = "my-server",
    main_class = "server.Server",
    runtime_deps = [
        ":server",
    ],
    visibility = ["//visibility:public"],
)

java_image(
    name = "my-image",
    main_class = "server.Server",
    runtime_deps = [
        ":server",
    ],
)

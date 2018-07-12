package(default_visibility = ["//visibility:public"])

load("@bazel_gazelle//:def.bzl", "gazelle")

gazelle(
    name = "gazelle",
    prefix = "github.com/ohedin/baffold",
)

filegroup(
    name = "node_modules",
    srcs = glob(["node_modules/**/*"]),
)

load("@io_bazel_rules_docker//java:image.bzl", "java_image")

java_image(
    name = "baffold-java-root",
    main_class = "server.Server",
    runtime_deps = [
        "//baffold-java:server",
    ],
)

load("@io_bazel_rules_docker//go:image.bzl", "go_image")

go_image(
    name = "baffold-go-root",
    embed = ["//baffold-go:baffold-go_linux_bin"],
    goarch = "amd64",
    goos = "linux",
    static = "on",
)

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_image",
)

container_image(
    name = "baffold-js-root",
    base = "@node_base//image",
    cmd = [
        "node",
        "main.js",
    ],
    files = ["//baffold-js:main.js"],
)

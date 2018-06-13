load("@bazel_gazelle//:def.bzl", "gazelle")

gazelle(
    name = "gazelle",
    # you project name here!
    prefix = "github.com/brendanjryan/groupcache-bazel",
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
#    importpath = "github.com/ohedin/baffold/baffold-go",
#    srcs = ["baffold-go/main.go"],
    goos = "linux",
    goarch = "amd64",
    static = "on",
)

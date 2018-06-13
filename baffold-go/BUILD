load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/ohedin/baffold/baffold-go",
    visibility = ["//visibility:public"],
    deps = [
    ],
)

go_binary(
    name = "baffold-go_linux_bin",
    importpath = "github.com/ohedin/baffold/baffold-go",
    srcs = ["main.go"],
    goos = "linux",
    goarch = "amd64",
    static = "on",
    visibility = ["//visibility:public"],
)

load("@io_bazel_rules_docker//go:image.bzl", "go_image")

go_image(
    name = "baffold-go",
    srcs = ["main.go"],
    goos = "linux",
    goarch = "amd64",
    static = "on",
)

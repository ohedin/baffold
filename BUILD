package(default_visibility = ["//visibility:public"])

load("@bazel_gazelle//:def.bzl", "gazelle")

gazelle(
    name = "gazelle",
    prefix = "github.com/ohedin/baffold",
)

#load("@build_bazel_rules_nodejs//:defs.bzl", "npm_install")

#npm_install(
#    name = "npm_deps",
#    package_json = "//:package.json",
#    package_lock_json = "//:package-lock.json",
#)

filegroup(name = "node_modules", srcs = glob(["node_modules/**/*"]))

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
    goos = "linux",
    goarch = "amd64",
    static = "on",
)

#load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_binary")

#nodejs_binary(
#    name = "js",
#    entry_point = "baffold/baffold-js/main.js",
#)

load("@io_bazel_rules_docker//nodejs:image.bzl", "nodejs_image")

#nodejs_image(
#    name = "baffold-js-root",
#    entry_point = "baffold/baffold-js/main.js",
#    data = ["//baffold-js:js"],
#    node_modules = "@//:node_modules",
#)

nodejs_image(
    name = "baffold-js-root",
    data = [
            "//baffold-js:main.js",
        ],
    entry_point = "baffold/baffold-js/main.js",
    node_modules = "@npm_deps//:node_modules",
)


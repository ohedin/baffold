package(default_visibility = ["//visibility:public"])

load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_binary")

nodejs_binary(
    name = "baffold-js-bin",
    data = [
        "main.js",
    ],
    entry_point = "baffold/baffold-js/main.js",
)

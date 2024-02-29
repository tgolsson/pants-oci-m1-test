go_binary(
    name="bin",
)

go_package()

oci_pull_image(
    name="alpine",
    repository="docker.io/library/alpine",
    digest="28ef97b8686a0b5399129e9b763d5b7e5ff03576aa5580d6f4182a49c5fe1913",
    architecture="amd64",
    os="linux",
)

oci_layer(
    name="layer",
    packages=[":bin"],
)

oci_image_build(
    name="image",
    layers=[":layer"],
    base=[":alpine"],
    entrypoint="/src.go.cmd.hello/bin",
)

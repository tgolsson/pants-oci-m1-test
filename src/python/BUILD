oci_pull_image(
    name="python3.10-buster",
    repository="docker.io/library/python",
    digest="1cf0c63d9f573d17be9200c9940a4ce3b18971674b8bf1a596ffe5441802f647",
    architecture="amd64",
    os="linux",
)

python_sources()

pex_binary(
    name="pex",
    entry_point="main.py",
)

oci_layer(
    name="layer",
    packages=[":pex"],
)

oci_image_build(
    name="image",
    layers=[":layer"],
    base=[":python3.10-buster"],
    entrypoint="/src.python/pex.pex",
)

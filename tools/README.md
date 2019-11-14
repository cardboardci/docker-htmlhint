# Tooling

## Version pinning

The list of dependencies are stored in files in `provision/`. These are pinned to versions of the dependencies. The scripts will determine the latest versions of these dependencies.

### apt-get

Run from the root of the repository.

```bash
docker run --rm -v `pwd`:/workspace --workdir /workspace ubuntu:latest bash tools/upgrade.bash
```
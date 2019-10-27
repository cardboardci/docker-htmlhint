FROM alpine:3.10.3
COPY rootfs/ /

##
## Image Metadata
##
ARG build_date
ARG version
ARG vcs_ref
LABEL maintainer = "CardboardCI" \
    \
    org.label-schema.schema-version = "1.0" \
    \
    org.label-schema.name = "htmlhint" \
    org.label-schema.version = "${version}" \
    org.label-schema.build-date = "${build_date}" \
    org.label-schema.release= = "CardboardCI version:${version} build-date:${build_date}" \
    org.label-schema.vendor = "cardboardci" \
    org.label-schema.architecture = "amd64" \
    \
    org.label-schema.summary = "HTML linter" \
    org.label-schema.description = "The static code analysis tool you need for your HTML" \
    \
    org.label-schema.url = "https://gitlab.com/cardboardci/images/htmlhint" \
    org.label-schema.changelog-url = "https://gitlab.com/cardboardci/images/htmlhint/releases" \
    org.label-schema.authoritative-source-url = "https://cloud.docker.com/u/cardboardci/repository/docker/cardboardci/htmlhint" \
    org.label-schema.distribution-scope = "public" \
    org.label-schema.vcs-type = "git" \
    org.label-schema.vcs-url = "https://gitlab.com/cardboardci/images/htmlhint" \
    org.label-schema.vcs-ref = "${vcs_ref}" \
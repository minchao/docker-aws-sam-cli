FROM alpine:3.9

RUN set -eux; \
	apk add --no-cache \
		gcc \
		jq \
		python3 \
		python3-dev \
		make \
		musl-dev \
	; \
	pip3 install --upgrade \
		pip \
		awscli \
		aws-sam-cli

CMD ["sam"]

build:
	openapi-generator generate \
		--api-package OktaSdk \
		--generator-name swift5 \
		--git-host github.com \
		--git-repo-id okta-sdk-swift \
		--git-user-id okta \
		--config openapi-config.yaml \
		--input-spec management.yaml \
		--template-dir openapi-template \
		--output .

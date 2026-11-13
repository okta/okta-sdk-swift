# Changelog

## 0.1.1

### Security
- Percent-encode path parameter values when expanding endpoint paths. Previously, values were substituted verbatim, so a value containing `/` or a `..` dot-segment could traverse the path and retarget an authenticated request to a different endpoint. Each value is now encoded as a single path segment, with reserved characters percent-encoded and bare `.` / `..` segments encoded as `%2E`. (OKTA-1251804)

### Other
- Migrated CircleCI to M4 Pro executors and added CODEOWNERS (#19).
- Run Snyk scan with HTTPS code checkout (#18).
- Moved CircleCI security scans away from orb usage (#16).
- Removed the podspec; Swift Package Manager is the supported distribution method (#15).

## 0.1.0

- Initial release.

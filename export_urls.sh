#!/bin/bash

main() {
  local target_dir="${1:?'target dir is required'}"
  WERCKER_REPORT_ARTIFACTS_DIR=${WERCKER_REPORT_ARTIFACTS_DIR:-"$PWD"}
  cd "$target_dir"
  find "articles" -type f -name '*.html' | tee "$WERCKER_REPORT_ARTIFACTS_DIR/urls.txt"
}

main $@;

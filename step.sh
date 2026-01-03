#!/bin/bash
set -ex

# Install mobsfscan tool
pip3 install --upgrade mobsfscan

# Build command

cmd=(python3 -m mobsfscan)

if [[ "$report_file_path" != "" ]]; then
  cmd+=(--output "$report_file_path")
fi

if [[ "$output_format" != "txt" ]]; then
  cmd+=(--"$output_format")
fi

if [[ "$config_file" != "" ]]; then
  cmd+=(--config "$config_file")
fi

cmd+=(--type "$project_type")

cmd+=(--multiprocessing "$multiprocessing")

if [[ "$fail_on_warning" == "yes" ]]; then
  cmd+=(--exit-warning)
fi

if [[ "$no_fail" == "yes" ]]; then
  cmd+=(--no-fail)
fi

cmd+=("$project_path")

# Run analysis
"${cmd[@]}"
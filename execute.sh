#!/bin/bash
set -euo pipefail
./ps | jq -s '
	[ .[] | . += {"combined": (.system + .user)} ]
	| sort_by("combined")
	| reverse
'

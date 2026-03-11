#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <title> <content_html> [cover_image]" >&2
  exit 1
fi

TITLE="$1"
CONTENT_HTML="$2"
COVER_IMAGE="${3:-}"

if [ -n "$COVER_IMAGE" ]; then
  python3 /root/.openclaw/workspace/scripts/wechat_mp_draft.py "$TITLE" "$CONTENT_HTML" --cover "$COVER_IMAGE"
else
  python3 /root/.openclaw/workspace/scripts/wechat_mp_draft.py "$TITLE" "$CONTENT_HTML"
fi

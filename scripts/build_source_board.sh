#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ] || [ "$#" -gt 6 ]; then
  echo "Usage: build_source_board.sh OUTPUT SOURCE1 [SOURCE2 ... SOURCE5]" >&2
  exit 2
fi

output=$1
shift

for source_path in "$@"; do
  if [ ! -f "$source_path" ]; then
    echo "Source not found: $source_path" >&2
    exit 2
  fi
done

if command -v magick >/dev/null 2>&1; then
  convert_cmd=(magick)
  montage_cmd=(magick montage)
elif command -v convert >/dev/null 2>&1 && command -v montage >/dev/null 2>&1; then
  convert_cmd=(convert)
  montage_cmd=(montage)
else
  echo "ImageMagick is required to build the source board." >&2
  exit 3
fi

temp_dir=$(mktemp -d)
cleanup() {
  find "$temp_dir" -type f -delete
  rmdir "$temp_dir"
}
trap cleanup EXIT

index=1
for source_path in "$@"; do
  tile_path=$(printf '%s/source-%02d.jpg' "$temp_dir" "$index")
  "${convert_cmd[@]}" "$source_path" -auto-orient \
    -thumbnail '900x700>' -background '#f5f1e8' -gravity center \
    -extent 900x700 -gravity south -splice 0x60 -fill '#303030' \
    -pointsize 26 -annotate +0+16 "SOURCE $index" "$tile_path"
  index=$((index + 1))
done

"${montage_cmd[@]}" "$temp_dir"/source-*.jpg -tile 3x2 -geometry +24+24 \
  -background '#f5f1e8' "$output"

printf '%s\n' "$output"

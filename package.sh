#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$ROOT/implementation/output/text" "$ROOT/output"

pushd "$ROOT/implementation/output/text" >/dev/null

packager \
  "input=$ROOT/implementation/inputs/en_r116.vtt,stream=text,lang=en,dash_label=English - United States 116,init_segment=s4_1.mp4,segment_template=s4_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/en_r401_a.vtt,stream=text,lang=en,dash_label=English - United States 401A,init_segment=s5_1.mp4,segment_template=s5_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/en_r401_b.vtt,stream=text,lang=en,dash_label=English - United States 401B,init_segment=s6_1.mp4,segment_template=s6_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/ru_r394.vtt,stream=text,lang=ru,dash_label=Русский - Россия 394,init_segment=s0_1.mp4,segment_template=s0_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/ru_r400.vtt,stream=text,lang=ru,dash_label=Русский - Россия 400,init_segment=s1_1.mp4,segment_template=s1_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/uk_r394.vtt,stream=text,lang=uk,dash_label=Українська - Україна 394,init_segment=s2_1.mp4,segment_template=s2_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/uk_r400.vtt,stream=text,lang=uk,dash_label=Українська - Україна 400,init_segment=s3_1.mp4,segment_template=s3_\$Number\$.mp4" \
  --segment_duration 6 \
  --start_segment_number 2 \
  --generate_static_live_mpd \
  --mpd_output "$ROOT/output/manifest_subtitles_only_new6.mpd"


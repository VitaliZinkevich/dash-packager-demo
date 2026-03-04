#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$ROOT/implementation/output/text" "$ROOT/output"

packager \
  "input=$ROOT/implementation/inputs/en_r116.vtt,stream=text,lang=en,dash_label=English - United States 116,init_segment=$ROOT/implementation/output/text/s4_1.mp4,segment_template=$ROOT/implementation/output/text/s4_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/en_r401_a.vtt,stream=text,lang=en,dash_label=English - United States 401A,init_segment=$ROOT/implementation/output/text/s5_1.mp4,segment_template=$ROOT/implementation/output/text/s5_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/en_r401_b.vtt,stream=text,lang=en,dash_label=English - United States 401B,init_segment=$ROOT/implementation/output/text/s6_1.mp4,segment_template=$ROOT/implementation/output/text/s6_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/ru_r394.vtt,stream=text,lang=ru,dash_label=Русский - Россия 394,init_segment=$ROOT/implementation/output/text/s0_1.mp4,segment_template=$ROOT/implementation/output/text/s0_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/ru_r400.vtt,stream=text,lang=ru,dash_label=Русский - Россия 400,init_segment=$ROOT/implementation/output/text/s1_1.mp4,segment_template=$ROOT/implementation/output/text/s1_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/uk_r394.vtt,stream=text,lang=uk,dash_label=Українська - Україна 394,init_segment=$ROOT/implementation/output/text/s2_1.mp4,segment_template=$ROOT/implementation/output/text/s2_\$Number\$.mp4" \
  "input=$ROOT/implementation/inputs/uk_r400.vtt,stream=text,lang=uk,dash_label=Українська - Україна 400,init_segment=$ROOT/implementation/output/text/s3_1.mp4,segment_template=$ROOT/implementation/output/text/s3_\$Number\$.mp4" \
  --segment_duration 6 \
  --start_segment_number 2 \
  --generate_static_live_mpd \
  --mpd_output "$ROOT/output/manifest_subtitles_only_new6.mpd"


# to adjust patch for output
text_prefix="$ROOT/implementation/output/text/"
sed -i \
  -e "s#initialization=\"$text_prefix#initialization=\"#g" \
  -e "s#media=\"$text_prefix#media=\"#g" \
  "$ROOT/output/manifest_subtitles_only_new6.mpd"

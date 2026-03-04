# DASH subtitles packaging

This command packages subtitle-only DASH output from `.vtt` inputs.

## Inputs (sorted)

| Language | Label | Input file |
| --- | --- | --- |
| en | English - United States 116 | `implementation/inputs/en_r116.vtt` |
| en | English - United States 401A | `implementation/inputs/en_r401_a.vtt` |
| en | English - United States 401B | `implementation/inputs/en_r401_b.vtt` |
| ru | Русский - Россия 394 | `implementation/inputs/ru_r394.vtt` |
| ru | Русский - Россия 400 | `implementation/inputs/ru_r400.vtt` |
| uk | Українська - Україна 394 | `implementation/inputs/uk_r394.vtt` |
| uk | Українська - Україна 400 | `implementation/inputs/uk_r400.vtt` |

## Run

```bash
mkdir -p /home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text /home/oem/Downloads/dash-pakager/hello-dash/output && packager \
"input=/home/oem/Downloads/dash-pakager/hello-dash/implementation/inputs/en_r116.vtt,stream=text,lang=en,dash_label=English - United States 116,init_segment=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s4_init.mp4,segment_template=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s4_\$Number\$.mp4" \
"input=/home/oem/Downloads/dash-pakager/hello-dash/implementation/inputs/en_r401_a.vtt,stream=text,lang=en,dash_label=English - United States 401A,init_segment=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s5_init.mp4,segment_template=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s5_\$Number\$.mp4" \
"input=/home/oem/Downloads/dash-pakager/hello-dash/implementation/inputs/en_r401_b.vtt,stream=text,lang=en,dash_label=English - United States 401B,init_segment=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s6_init.mp4,segment_template=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s6_\$Number\$.mp4" \
"input=/home/oem/Downloads/dash-pakager/hello-dash/implementation/inputs/ru_r394.vtt,stream=text,lang=ru,dash_label=Русский - Россия 394,init_segment=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s0_init.mp4,segment_template=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s0_\$Number\$.mp4" \
"input=/home/oem/Downloads/dash-pakager/hello-dash/implementation/inputs/ru_r400.vtt,stream=text,lang=ru,dash_label=Русский - Россия 400,init_segment=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s1_init.mp4,segment_template=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s1_\$Number\$.mp4" \
"input=/home/oem/Downloads/dash-pakager/hello-dash/implementation/inputs/uk_r394.vtt,stream=text,lang=uk,dash_label=Українська - Україна 394,init_segment=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s2_init.mp4,segment_template=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s2_\$Number\$.mp4" \
"input=/home/oem/Downloads/dash-pakager/hello-dash/implementation/inputs/uk_r400.vtt,stream=text,lang=uk,dash_label=Українська - Україна 400,init_segment=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s3_init.mp4,segment_template=/home/oem/Downloads/dash-pakager/hello-dash/implementation/output/text/s3_\$Number\$.mp4" \
--segment_duration 6 \
--generate_static_live_mpd \
--mpd_output /home/oem/Downloads/dash-pakager/hello-dash/output/manifest_subtitles_only_new6.mpd
```

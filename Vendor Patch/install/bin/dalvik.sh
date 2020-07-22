#!/sbin/sh

# Detect Source type, AB or not
sourcetype="Aonly"
if [[ -e "/system/init.rc" ]]; then
    sourcetype="AB"
fi

if [ "$sourcetype" == "Aonly" ]; then
	busybox echo "
" >> /system/build.prop;
	busybox echo "# Hizproplari by @erdilS " >> /system/build.prop;
	busybox echo "debug.performance.tuning=1)" >> /system/build.prop;
	busybox echo "video.accelerate.hw=1" >> /system/build.prop;
	busybox echo "debug.egl.profiler=1" >> /system/build.prop;
	busybox echo "debug.egl.hw=1" >> /system/build.prop;
	busybox echo "debug.composition.type=gpu" >> /system/build.prop;
	busybox echo "debug.enable.sglscale=1" >> /system/build.prop;
	busybox echo "debug.sf.early_phase_offset_ns=1500000" >> /system/build.prop;
	busybox echo "debug.sf.early_app_phase_offset_ns=1500000" >> /system/build.prop;
	busybox echo "debug.sf.early_gl_phase_offset_ns=3000000" >> /system/build.prop;
	busybox echo "debug.sf.early_gl_app_phase_offset_ns=15000000" >> /system/build.prop;
	busybox echo "debug.sf.latch_unsignaled=1" >> /system/build.prop;
	busybox echo "debug.sf.disable_backpressure=1" >> /system/build.prop;
	busybox echo "debug.sf.enable_gl_backpressure=1" >> /system/build.prop;
	busybox echo "debug.sf.high_fps_early_phase_offset_ns=6100000" >> /system/build.prop;
	busybox echo "debug.sf.high_fps_early_gl_phase_offset_ns=9000000" >> /system/build.prop;
	busybox echo "debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000" >> /system/build.prop;
	busybox echo "sys.use_fifo_ui=0" >> /system/build.prop;
	busybox echo "ro.surface_flinger.protected_contents=true" >> /system/build.prop;
	busybox echo "ro.surface_flinger.use_smart_90_for_video=true" >> /system/build.prop;
	busybox echo "ro.surface_flinger.set_display_power_timer_ms=10000" >> /system/build.prop;
	busybox echo "ro.surface_flinger.set_touch_timer_ms=5000" >> /system/build.prop;
	busybox echo "ro.surface_flinger.set_idle_timer_ms=9000" >> /system/build.prop;
else
	busybox echo "
" >> /system/system/build.prop;
	busybox echo "# Hizproplari by @erdilS " >> /system/system/build.prop;
	busybox echo "debug.performance.tuning=1)" >> /system/system/build.prop;
	busybox echo "video.accelerate.hw=1" >> /system/system/build.prop;
	busybox echo "debug.egl.profiler=1" >> /system/system/build.prop;
	busybox echo "debug.egl.hw=1" >> /system/system/build.prop;
	busybox echo "debug.composition.type=gpu" >> /system/system/build.prop;
	busybox echo "debug.enable.sglscale=1" >> /system/system/build.prop;
	busybox echo "debug.sf.early_phase_offset_ns=1500000" >> /system/system/build.prop;
	busybox echo "debug.sf.early_app_phase_offset_ns=1500000" >> /system/system/build.prop;
	busybox echo "debug.sf.early_gl_phase_offset_ns=3000000" >> /system/system/build.prop;
	busybox echo "debug.sf.early_gl_app_phase_offset_ns=15000000" >> /system/system/build.prop;
	busybox echo "debug.sf.latch_unsignaled=1" >> //system/system/build.prop;
	busybox echo "debug.sf.disable_backpressure=1" >> /system/system/build.prop;
	busybox echo "debug.sf.enable_gl_backpressure=1" >> /system/system/build.prop;
	busybox echo "debug.sf.high_fps_early_phase_offset_ns=6100000" >> /system/system/build.prop;
	busybox echo "debug.sf.high_fps_early_gl_phase_offset_ns=9000000" >> /system/system/build.prop;
	busybox echo "debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000" >> /system/system/build.prop;
	busybox echo "sys.use_fifo_ui=0" >> /system/system/build.prop;
	busybox echo "ro.surface_flinger.protected_contents=true" >> /system/system/build.prop;
	busybox echo "ro.surface_flinger.use_smart_90_for_video=true" >> /system/system/build.prop;
	busybox echo "ro.surface_flinger.set_display_power_timer_ms=10000" >> /system/system/build.prop;
	busybox echo "ro.surface_flinger.set_touch_timer_ms=5000" >> /system/system/build.prop;
	busybox echo "ro.surface_flinger.set_idle_timer_ms=9000" >> /system/system/build.prop;
fi

exit 0;
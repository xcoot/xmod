.class public final Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field public static isDumped:Z

.field public static lastSyncCount:J

.field public static mAllocatedMemory:J

.field public static mContext:Landroid/content/Context;

.field public static mCurrentBlockGcCount:J

.field public static mCurrentTimeWaitingForGc:J

.field public static mFdLeakThreshold:J

.field public static mMaxHeap:J

.field public static mMinHeap:J

.field public static mPrevTotalBlockingGcCount:J

.field public static mPrevTotalTimeWaitingForGc:J

.field public static mTotalMemory:J

.field public static sWatchdog:Lcom/android/server/Watchdog;

.field public static syncCount:J


# instance fields
.field public final fdWatcher:Lcom/android/server/FileDescriptorWatcher;

.field public final hdWatcher:Lcom/android/server/HeapdumpWatcher;

.field public mActivity:Lcom/android/server/am/ActivityManagerService;

.field public mAllowRestart:Z

.field public mController:Landroid/app/IActivityController;

.field public mControllerDescription:Ljava/lang/String;

.field public final mHandlerCheckers:Ljava/util/ArrayList;

.field public final mInterestingJavaPids:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public final mThread:Ljava/lang/Thread;

.field public final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field public volatile mWatchdogTimeoutMillis:J

.field public final softdog:Lcom/android/server/WatchdogSoftdog;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    const-class v0, Lcom/android/server/Watchdog;

    .line 3
    const-string/jumbo v0, "ro.product.cpu.abilist64"

    .line 6
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string/jumbo v0, "dalvik.vm.dex2oat64.enabled"

    .line 20
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v2, "true"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v1

    .line 33
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    const-string v0, "/apex/com.android.art/bin/dex2oat64"

    .line 37
    :goto_1
    move-object/from16 v25, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string v0, "/apex/com.android.art/bin/dex2oat32"

    .line 42
    goto :goto_1

    .line 43
    :goto_2
    const-string/jumbo v28, "webview_zygote"

    .line 46
    const-string v29, "/vendor/bin/hw/vendor.samsung.hardware.camera.provider-service_64"

    .line 48
    const-string v2, "/system/bin/audioserver"

    .line 50
    const-string v3, "/system/bin/cameraserver"

    .line 52
    const-string v4, "/system/bin/drmserver"

    .line 54
    const-string v5, "/system/bin/keystore2"

    .line 56
    const-string v6, "/system/bin/mediadrmserver"

    .line 58
    const-string v7, "/system/bin/mediaserver"

    .line 60
    const-string v8, "/system/bin/mediaserver32"

    .line 62
    const-string v9, "/system/bin/mediaserver64"

    .line 64
    const-string v10, "/system/bin/netd"

    .line 66
    const-string v11, "/system/bin/sdcard"

    .line 68
    const-string v12, "/system/bin/servicemanager"

    .line 70
    const-string v13, "/system/bin/surfaceflinger"

    .line 72
    const-string v14, "/system/bin/vold"

    .line 74
    const-string v15, "/system/bin/installd"

    .line 76
    const-string/jumbo v16, "media.extractor"

    .line 79
    const-string/jumbo v17, "media.metrics"

    .line 82
    const-string/jumbo v18, "media.codec"

    .line 85
    const-string/jumbo v19, "media.swcodec"

    .line 88
    const-string/jumbo v20, "media.transcoding"

    .line 91
    const-string/jumbo v21, "com.android.bluetooth"

    .line 94
    const-string v22, "/apex/com.android.art/bin/artd"

    .line 96
    const-string v23, "/apex/com.android.os.statsd/bin/statsd"

    .line 98
    const-string v24, "/apex/com.samsung.android.spqr/bin/spqr"

    .line 100
    const-string/jumbo v26, "zygote64"

    .line 103
    const-string/jumbo v27, "zygote"

    .line 106
    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 112
    const-string v26, "android.hardware.vr@1.0::IVr"

    .line 114
    const-string v27, "android.system.suspend@1.0::ISystemSuspend"

    .line 116
    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    .line 118
    const-string v3, "android.hardware.audio@5.0::IDevicesFactory"

    .line 120
    const-string v4, "android.hardware.audio@6.0::IDevicesFactory"

    .line 122
    const-string v5, "android.hardware.audio@7.0::IDevicesFactory"

    .line 124
    const-string v6, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 126
    const-string v7, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 128
    const-string v8, "android.hardware.bluetooth@1.0::IBluetoothHci"

    .line 130
    const-string v9, "android.hardware.camera.provider@2.7::ICameraProvider"

    .line 132
    const-string v10, "android.hardware.gnss@1.0::IGnss"

    .line 134
    const-string v11, "android.hardware.graphics.allocator@2.0::IAllocator"

    .line 136
    const-string v12, "android.hardware.graphics.allocator@4.0::IAllocator"

    .line 138
    const-string v13, "android.hardware.graphics.composer@2.1::IComposer"

    .line 140
    const-string v14, "android.hardware.health@2.0::IHealth"

    .line 142
    const-string v15, "android.hardware.light@2.0::ILight"

    .line 144
    const-string v16, "android.hardware.media.c2@1.0::IComponentStore"

    .line 146
    const-string v17, "android.hardware.media.omx@1.0::IOmx"

    .line 148
    const-string v18, "android.hardware.media.omx@1.0::IOmxStore"

    .line 150
    const-string v19, "android.hardware.neuralnetworks@1.0::IDevice"

    .line 152
    const-string v20, "android.hardware.power@1.0::IPower"

    .line 154
    const-string v21, "android.hardware.power.stats@1.0::IPowerStats"

    .line 156
    const-string v22, "android.hardware.sensors@1.0::ISensors"

    .line 158
    const-string v23, "android.hardware.sensors@2.0::ISensors"

    .line 160
    const-string v24, "android.hardware.sensors@2.1::ISensors"

    .line 162
    const-string v25, "android.hardware.vibrator@1.0::IVibrator"

    .line 164
    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 174
    const-string v22, "android.system.suspend.ISystemSuspend/"

    .line 176
    const-string v23, "android.hardware.thermal.IThermal/"

    .line 178
    const-string v2, "android.hardware.audio.core.IModule/"

    .line 180
    const-string v3, "android.hardware.audio.core.IConfig/"

    .line 182
    const-string v4, "android.hardware.audio.effect.IFactory/"

    .line 184
    const-string v5, "android.hardware.biometrics.face.IFace/"

    .line 186
    const-string v6, "android.hardware.biometrics.fingerprint.IFingerprint/"

    .line 188
    const-string v7, "android.hardware.bluetooth.IBluetoothHci/"

    .line 190
    const-string v8, "android.hardware.camera.provider.ICameraProvider/"

    .line 192
    const-string v9, "android.hardware.drm.IDrmFactory/"

    .line 194
    const-string v10, "android.hardware.gnss.IGnss/"

    .line 196
    const-string v11, "android.hardware.graphics.allocator.IAllocator/"

    .line 198
    const-string v12, "android.hardware.graphics.composer3.IComposer/"

    .line 200
    const-string v13, "android.hardware.health.IHealth/"

    .line 202
    const-string v14, "android.hardware.input.processor.IInputProcessor/"

    .line 204
    const-string v15, "android.hardware.light.ILights/"

    .line 206
    const-string v16, "android.hardware.neuralnetworks.IDevice/"

    .line 208
    const-string v17, "android.hardware.power.IPower/"

    .line 210
    const-string v18, "android.hardware.power.stats.IPowerStats/"

    .line 212
    const-string v19, "android.hardware.sensors.ISensors/"

    .line 214
    const-string v20, "android.hardware.vibrator.IVibrator/"

    .line 216
    const-string v21, "android.hardware.vibrator.IVibratorManager/"

    .line 218
    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    .line 224
    const-wide/16 v2, 0x0

    .line 226
    sput-wide v2, Lcom/android/server/Watchdog;->syncCount:J

    .line 228
    const-wide/16 v2, 0x1388

    .line 230
    sput-wide v2, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    .line 232
    const-wide/16 v2, 0x0

    .line 234
    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    .line 236
    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    .line 238
    sput-wide v2, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    .line 240
    sput-wide v2, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 242
    sput-wide v2, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 244
    sput-wide v2, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 246
    const-wide v2, 0x7fffffffffffffffL

    .line 251
    sput-wide v2, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 253
    const-wide/16 v2, 0x0

    .line 255
    sput-wide v2, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 257
    sput-boolean v1, Lcom/android/server/Watchdog;->isDumped:Z

    .line 259
    const-wide/16 v0, 0x0

    .line 261
    sput-wide v0, Lcom/android/server/Watchdog;->lastSyncCount:J

    .line 263
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 21
    const/4 v3, 0x1

    .line 22
    iput-boolean v3, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 24
    const-wide/32 v4, 0xea60

    .line 27
    iput-wide v4, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v4, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 36
    iput-object v2, p0, Lcom/android/server/Watchdog;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 38
    new-instance v2, Ljava/lang/Thread;

    .line 40
    new-instance v5, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;

    .line 42
    invoke-direct {v5, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/Watchdog;)V

    .line 45
    const-string/jumbo v6, "watchdog"

    .line 48
    invoke-direct {v2, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 51
    iput-object v2, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    .line 53
    const-string/jumbo v2, "watchdog.monitor"

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static {v5, v2, v3}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 60
    move-result-object v2

    .line 61
    new-instance v6, Lcom/android/server/Watchdog$HandlerChecker;

    .line 63
    new-instance v7, Landroid/os/Handler;

    .line 65
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    const-string/jumbo v2, "monitor thread"

    .line 75
    invoke-direct {v6, v7, v2, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iput-object v6, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 80
    invoke-static {v6}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 89
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 92
    move-result-object v6

    .line 93
    const-string/jumbo v7, "foreground thread"

    .line 96
    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 108
    new-instance v6, Landroid/os/Handler;

    .line 110
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 113
    move-result-object v7

    .line 114
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    const-string/jumbo v7, "main thread"

    .line 120
    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 132
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 135
    move-result-object v6

    .line 136
    const-string/jumbo v7, "ui thread"

    .line 139
    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 151
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 154
    move-result-object v6

    .line 155
    const-string/jumbo v7, "i/o thread"

    .line 158
    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 170
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    .line 173
    move-result-object v6

    .line 174
    const-string/jumbo v7, "display thread"

    .line 177
    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 189
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    .line 192
    move-result-object v6

    .line 193
    const-string v7, "animation thread"

    .line 195
    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 207
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    .line 210
    move-result-object v6

    .line 211
    const-string/jumbo v7, "surface animation thread"

    .line 214
    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    .line 226
    invoke-direct {v0, v5}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 229
    iput-object v0, p0, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 231
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 234
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    .line 236
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 242
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 245
    move-result v0

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v0, Lcom/android/server/FileDescriptorWatcher;

    .line 255
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput v5, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 260
    iput-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 262
    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    .line 264
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 269
    new-instance v0, Lcom/android/server/HeapdumpWatcher;

    .line 271
    invoke-direct {v0}, Lcom/android/server/HeapdumpWatcher;-><init>()V

    .line 274
    iput-object v0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 276
    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 278
    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/android/server/WatchdogSoftdog;

    .line 282
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/16 v1, 0x64

    .line 287
    iput v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    .line 289
    iput-boolean v3, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 291
    sput-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 293
    :cond_0
    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    .line 295
    iput-object v0, p0, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 297
    return-void
.end method

.method public static describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x80

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    move-object v2, p0

    .line 10
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v1, v3, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_0

    .line 24
    const-string v3, ", "

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 35
    iget-object v3, v2, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 37
    if-nez v3, :cond_1

    .line 39
    const-string v3, "Blocked in handler"

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    const-string v4, "Blocked in monitor "

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    :goto_1
    iget-object v4, v2, Lcom/android/server/Watchdog$HandlerChecker;->mClock:Ljava/time/Clock;

    .line 58
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    .line 61
    move-result-wide v4

    .line 62
    iget-wide v6, v2, Lcom/android/server/Watchdog$HandlerChecker;->mStartTimeMillis:J

    .line 64
    sub-long/2addr v4, v6

    .line 65
    const-wide/16 v6, 0x3e8

    .line 67
    div-long/2addr v4, v6

    .line 68
    const-string v6, " on "

    .line 70
    invoke-static {v3, v6}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object v3

    .line 74
    iget-object v6, v2, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 76
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v6, " ("

    .line 81
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v2, v2, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, ") for "

    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v2, "s"

    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method public static doSysRq(C)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 3
    const-string v1, "/proc/sysrq-trigger"

    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    goto :goto_2

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception v0

    .line 25
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :goto_1
    const-string v0, "Watchdog"

    .line 31
    const-string v1, "Failed to write to /proc/sysrq-trigger"

    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_2
    return-void
.end method

.method public static getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 13
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/Watchdog;

    .line 7
    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    .line 10
    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 14
    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    array-length v3, v1

    .line 15
    move v4, v2

    .line 16
    :goto_0
    if-ge v4, v3, :cond_3

    .line 18
    aget-object v5, v1, v4

    .line 20
    sget-object v6, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    .line 22
    array-length v7, v6

    .line 23
    move v8, v2

    .line 24
    :goto_1
    if-ge v8, v7, :cond_2

    .line 26
    aget-object v9, v6, v8

    .line 28
    iget-object v10, v5, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    .line 30
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    move-result v9

    .line 34
    if-eqz v9, :cond_1

    .line 36
    iget v9, v5, Landroid/os/ServiceDebugInfo;->debugPid:I

    .line 38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v1

    .line 63
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_6

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 75
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 77
    const/4 v5, -0x1

    .line 78
    if-ne v4, v5, :cond_4

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    sget-object v4, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 83
    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 85
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_5

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    iget v3, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_3

    .line 102
    :catch_0
    move-exception v1

    .line 103
    const-string v3, "Watchdog"

    .line 105
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :cond_6
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 110
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_7

    .line 116
    array-length v3, v1

    .line 117
    :goto_4
    if-ge v2, v3, :cond_7

    .line 119
    aget v4, v1, v2

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 130
    goto :goto_4

    .line 131
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    return-object v1
.end method

.method public static getPsInfo()V
    .locals 10

    .line 1
    const-string v0, "Watchdog"

    .line 3
    const-string v1, "/data/log/watchdog_ps"

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 8
    move-result-object v2

    .line 9
    const-string/jumbo v3, "ps -A -o PID,PPID,S,NAME"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    const-wide/16 v4, 0x5

    .line 20
    invoke-virtual {v2, v4, v5, v3}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 26
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 34
    new-instance v6, Ljava/io/InputStreamReader;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 39
    move-result-object v7

    .line 40
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 45
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :try_start_2
    new-instance v6, Ljava/io/FileWriter;

    .line 50
    invoke-direct {v6, v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    :try_start_3
    new-instance v7, Ljava/lang/StringBuffer;

    .line 55
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 61
    move-result-object v8

    .line 62
    if-eqz v8, :cond_1

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/16 v8, 0xa

    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v7

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 97
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 100
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 103
    new-instance v0, Ljava/io/File;

    .line 105
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_2

    .line 120
    :goto_1
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 123
    goto :goto_6

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    goto :goto_7

    .line 126
    :catchall_2
    move-exception v6

    .line 127
    goto :goto_4

    .line 128
    :goto_2
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 131
    goto :goto_3

    .line 132
    :catchall_3
    move-exception v6

    .line 133
    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    :goto_3
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 137
    :goto_4
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 140
    goto :goto_5

    .line 141
    :catchall_4
    move-exception v5

    .line 142
    :try_start_a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    :goto_5
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 146
    :catch_0
    :try_start_b
    const-string v5, "Failed to write watchdog_ps"

    .line 148
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 151
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 154
    new-instance v0, Ljava/io/File;

    .line 156
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 168
    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 169
    if-eqz v1, :cond_2

    .line 171
    goto :goto_1

    .line 172
    :catch_1
    :cond_2
    :goto_6
    return-void

    .line 173
    :goto_7
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 176
    new-instance v2, Ljava/io/File;

    .line 178
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 196
    :catch_2
    :cond_3
    throw v0

    .line 197
    :catch_3
    const-string v1, "Failed to get ps info"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public static writeTimeoutHistory(Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    const-string v0, ","

    .line 3
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 9
    const-string v1, "/data/system/watchdog-timeout-history.txt"

    .line 11
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    const-string/jumbo v1, "ro.boottime.zygote"

    .line 19
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 26
    const-string v1, ":"

    .line 28
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    :goto_1
    const-string v0, "Watchdog"

    .line 52
    const-string v1, "Failed to write file /data/system/watchdog-timeout-history.txt"

    .line 54
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_2
    return-void
.end method


# virtual methods
.method public final addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 6
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final addThread(Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addThread(Landroid/os/Handler;J)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    new-instance p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    .line 9
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "WatchdogTimeoutMillis="

    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 11
    return-void
.end method

.method public final getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 15
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 23
    iget-object v2, v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 25
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    .line 28
    move-result v3

    .line 29
    if-ne v3, p1, :cond_0

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method public final pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 22
    iget-object v1, v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 30
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 44
    iget v2, v1, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 46
    const/4 v3, 0x1

    .line 47
    add-int/2addr v2, v3

    .line 48
    iput v2, v1, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 50
    iput-boolean v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    const-string v3, "Pausing HandlerChecker: "

    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 61
    const-string v4, " for reason: "

    .line 63
    const-string v5, ". Pause count: "

    .line 65
    invoke-static {v2, v3, v4, p1, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v1, v1, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 70
    const-string v3, "Watchdog"

    .line 72
    invoke-static {v2, v1, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final pauseWatchingCurrentThreadFor(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 22
    iget-object v1, v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 30
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final printLogAndCheckStatus()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, 0x100000

    .line 12
    div-long/2addr v0, v2

    .line 13
    sput-wide v0, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    .line 22
    move-result-wide v4

    .line 23
    div-long/2addr v4, v2

    .line 24
    sub-long/2addr v0, v4

    .line 25
    sput-wide v0, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 27
    iget-object v2, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 29
    iput-wide v0, v2, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 31
    iget-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v1, Ljava/io/File;

    .line 38
    const-string v2, "/proc/self/fd"

    .line 40
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 49
    array-length v1, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, -0x1

    .line 52
    :goto_0
    iput v1, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 54
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 56
    const-wide/16 v2, 0x1

    .line 58
    add-long/2addr v0, v2

    .line 59
    sput-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 63
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 66
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    const-string v2, " ["

    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/util/Date;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    move-result-wide v3

    .line 82
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 85
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "]"

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v0, p0, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 99
    iget-boolean v0, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 101
    if-eqz v0, :cond_1

    .line 103
    const-string v0, " softdog disabled"

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const-string v0, ""

    .line 108
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    sget-wide v1, Lcom/android/server/Watchdog;->syncCount:J

    .line 117
    const-wide/16 v3, 0x14

    .line 119
    rem-long/2addr v1, v3

    .line 120
    const-wide/16 v3, 0x0

    .line 122
    cmp-long v1, v1, v3

    .line 124
    const-string v2, "Watchdog"

    .line 126
    if-lez v1, :cond_2

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    const-string v5, "!@Sync: "

    .line 132
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    sget-wide v5, Lcom/android/server/Watchdog;->syncCount:J

    .line 137
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    const-string v5, " heap(MB): "

    .line 142
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 147
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    const-string v5, " / "

    .line 152
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sget-wide v5, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 157
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    const-string v5, " FD: "

    .line 162
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v5, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 167
    iget v5, v5, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 169
    invoke-static {v1, v5, v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    goto/16 :goto_2

    .line 174
    :cond_2
    const-string v1, "art.gc.total-time-waiting-for-gc"

    .line 176
    invoke-static {v1}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 183
    move-result-wide v5

    .line 184
    const-string v1, "art.gc.blocking-gc-count"

    .line 186
    invoke-static {v1}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 193
    move-result-wide v7

    .line 194
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    sget-wide v9, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    .line 198
    sub-long v9, v5, v9

    .line 200
    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 203
    move-result-wide v9

    .line 204
    sput-wide v9, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    .line 206
    sget-wide v9, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    .line 208
    sub-long v9, v7, v9

    .line 210
    sput-wide v9, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 212
    sput-wide v5, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    .line 214
    sput-wide v7, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    const-string v5, "Sync:\t"

    .line 220
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    sget-wide v5, Lcom/android/server/Watchdog;->syncCount:J

    .line 225
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    const-string v5, "\theap(MB):\t"

    .line 230
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 235
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    const-string v5, "\t/\t"

    .line 240
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    sget-wide v5, Lcom/android/server/Watchdog;->mTotalMemory:J

    .line 245
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    const-string v5, "\tnative(MB):\t"

    .line 250
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v5, Landroid/os/Debug$MemoryInfo;

    .line 255
    invoke-direct {v5}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 258
    invoke-static {v5}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 261
    iget v6, v5, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 263
    iget v5, v5, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 265
    add-int/2addr v6, v5

    .line 266
    div-int/lit16 v6, v6, 0x400

    .line 268
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v5, "\tFD:\t"

    .line 273
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v5, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 278
    iget v5, v5, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 280
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v5, "\tWaitTime:\t"

    .line 285
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    sget-wide v5, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    .line 290
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 293
    const-string v5, " ms\tGCcnt:\t"

    .line 295
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    sget-wide v5, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    .line 300
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    const-string v5, "\tFullGC:\t"

    .line 305
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v5, "art.gc.pre-oome-gc-count"

    .line 310
    invoke-static {v5}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    move-result-object v5

    .line 314
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v1

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    .line 323
    const-string v6, "!@"

    .line 325
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    const-string v6, "\t"

    .line 330
    const-string v7, " "

    .line 332
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 346
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 351
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 353
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 356
    move-result-wide v0

    .line 357
    sput-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 359
    sget-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 361
    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    .line 363
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 366
    move-result-wide v0

    .line 367
    sput-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 369
    :goto_2
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    .line 371
    const-wide/16 v5, 0x2d0

    .line 373
    rem-long/2addr v0, v5

    .line 374
    cmp-long v0, v0, v3

    .line 376
    if-lez v0, :cond_3

    .line 378
    goto :goto_3

    .line 379
    :cond_3
    new-instance v0, Lcom/android/server/Watchdog$1;

    .line 381
    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 387
    :goto_3
    iget-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    .line 389
    iget v0, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    .line 391
    int-to-long v0, v0

    .line 392
    sget-wide v5, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    .line 394
    cmp-long v0, v0, v5

    .line 396
    const/4 v1, 0x1

    .line 397
    const-string v2, "Watchdog:HeapdumpWatcher"

    .line 399
    if-ltz v0, :cond_7

    .line 401
    sget-boolean v0, Lcom/android/server/Watchdog;->isDumped:Z

    .line 403
    if-eqz v0, :cond_4

    .line 405
    goto :goto_4

    .line 406
    :cond_4
    sget-wide v5, Lcom/android/server/Watchdog;->lastSyncCount:J

    .line 408
    cmp-long v0, v5, v3

    .line 410
    if-nez v0, :cond_5

    .line 412
    sget-wide v3, Lcom/android/server/Watchdog;->syncCount:J

    .line 414
    sput-wide v3, Lcom/android/server/Watchdog;->lastSyncCount:J

    .line 416
    goto :goto_5

    .line 417
    :cond_5
    sget-wide v3, Lcom/android/server/Watchdog;->syncCount:J

    .line 419
    sub-long/2addr v3, v5

    .line 420
    const-wide/16 v5, 0xa

    .line 422
    cmp-long v0, v3, v5

    .line 424
    if-gez v0, :cond_6

    .line 426
    goto :goto_5

    .line 427
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    .line 429
    new-instance v3, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher;

    .line 431
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 434
    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 437
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 440
    iget-object v0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    const-string v3, "FDs are overused. Creating heapdump."

    .line 447
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v0}, Lcom/android/server/HeapdumpWatcher;->makeHeapDump()V

    .line 453
    sput-boolean v1, Lcom/android/server/Watchdog;->isDumped:Z

    .line 455
    goto :goto_5

    .line 456
    :cond_7
    :goto_4
    sput-wide v3, Lcom/android/server/Watchdog;->lastSyncCount:J

    .line 458
    :goto_5
    iget-object p0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    .line 460
    iget-wide v3, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 462
    long-to-double v3, v3

    .line 463
    sget-wide v5, Lcom/android/server/HeapdumpWatcher;->THRESHOLD_OF_HEAPDUMP:D

    .line 465
    cmpg-double v0, v3, v5

    .line 467
    if-gez v0, :cond_8

    .line 469
    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 472
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    .line 474
    goto :goto_6

    .line 475
    :cond_8
    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 477
    add-int/2addr v0, v1

    .line 478
    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    .line 482
    const-string v1, "!@ The heap has been allocated excessively. OverThresholdCnt : "

    .line 484
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    iget v1, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 489
    invoke-static {v0, v1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 492
    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    .line 494
    const/16 v1, 0x14

    .line 496
    if-ge v0, v1, :cond_9

    .line 498
    const/4 v1, 0x2

    .line 499
    if-ne v0, v1, :cond_c

    .line 501
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->makeHeapDump()V

    .line 504
    goto :goto_6

    .line 505
    :cond_9
    iget-wide v0, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 507
    long-to-double v0, v0

    .line 508
    sget-wide v2, Lcom/android/server/HeapdumpWatcher;->THRESHOLD_OF_SLUGGISH:D

    .line 510
    cmpg-double v0, v0, v2

    .line 512
    if-gez v0, :cond_a

    .line 514
    goto :goto_6

    .line 515
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkScreenOff()Z

    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_c

    .line 521
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkBackgroundAudio()Z

    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_c

    .line 527
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkCall()Z

    .line 530
    move-result v0

    .line 531
    if-nez v0, :cond_b

    .line 533
    goto :goto_6

    .line 534
    :cond_b
    new-instance v0, Ljava/lang/OutOfMemoryError;

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    .line 538
    const-string v2, "HeapFull, "

    .line 540
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    iget-wide v2, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    .line 545
    const-string p0, "MB was used"

    .line 547
    invoke-static {v1, v2, v3, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 550
    move-result-object p0

    .line 551
    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 554
    throw v0

    .line 555
    :cond_c
    :goto_6
    return-void
.end method

.method public final processStarted(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string/jumbo v0, "com.android.phone"

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    :cond_0
    const-string v0, "Watchdog"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "Interesting Java process "

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p2, " started. Pid "

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p2, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 47
    monitor-enter p2

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit p2

    .line 60
    :cond_1
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 22
    iget-object v1, v1, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 30
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final setActivityController(Landroid/app/IActivityController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

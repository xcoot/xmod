.class public final Lcom/android/server/display/BrightnessTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COLOR_SAMPLE_DURATION:J

.field public static final DEBUG:Z

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final MAX_EVENT_AGE:J


# instance fields
.field public mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

.field public final mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

.field public mBroadcastReceiver:Lcom/android/server/display/BrightnessTracker$Receiver;

.field public mColorSamplingEnabled:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

.field public mEvents:Lcom/android/internal/util/RingBuffer;

.field public mEventsDirty:Z

.field public final mEventsLock:Ljava/lang/Object;

.field public mFrameRate:F

.field public final mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

.field public mLastBatteryLevel:F

.field public mLastBrightness:F

.field public mLightSensor:Landroid/hardware/Sensor;

.field public mNoFramesToSample:I

.field public mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

.field public mSensorRegistered:Z

.field public mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

.field public mShouldCollectColorSample:Z

.field public mStarted:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public volatile mWriteBrightnessTrackerStateScheduled:Z


# direct methods
.method public static -$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    goto/16 :goto_7

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto/16 :goto_9

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-boolean v0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    const-string v0, "BrightnessTracker"

    .line 21
    const-string v1, "Background start"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 28
    monitor-enter v1

    .line 29
    const/4 v0, 0x1

    .line 30
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 32
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 34
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 37
    const-string/jumbo v2, "brightness_events.xml"

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->getFileWithLegacyFallback(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    .line 47
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v3, :cond_2

    .line 51
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 54
    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 55
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/android/server/display/BrightnessTracker;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 58
    :goto_0
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    goto :goto_3

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto/16 :goto_8

    .line 65
    :catchall_2
    move-exception p0

    .line 66
    move-object v4, v3

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v5

    .line 69
    goto :goto_1

    .line 70
    :catchall_3
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :catch_1
    move-exception v5

    .line 73
    move-object v3, v4

    .line 74
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 77
    const-string v2, "BrightnessTracker"

    .line 79
    const-string v6, "Failed to read change mEvents."

    .line 81
    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 84
    goto :goto_0

    .line 85
    :goto_2
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 88
    throw p0

    .line 89
    :cond_2
    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 90
    new-instance v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 92
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 94
    invoke-direct {v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;-><init>(Landroid/os/UserManager;)V

    .line 97
    iput-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 99
    const-string v1, "ambient_brightness_stats.xml"

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/server/display/BrightnessTracker;->getFileWithLegacyFallback(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_3

    .line 111
    :try_start_7
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 114
    move-result-object v4

    .line 115
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 117
    monitor-enter v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 118
    :try_start_8
    iget-object v3, v2, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 120
    invoke-virtual {v3, v4}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->readFromXML(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 123
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 124
    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 127
    goto :goto_6

    .line 128
    :catchall_4
    move-exception v3

    .line 129
    :try_start_a
    monitor-exit v2

    .line 130
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 131
    :catchall_5
    move-exception p0

    .line 132
    goto :goto_5

    .line 133
    :catch_2
    move-exception v2

    .line 134
    :try_start_b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 137
    const-string v1, "BrightnessTracker"

    .line 139
    const-string v3, "Failed to read ambient brightness stats."

    .line 141
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 144
    goto :goto_4

    .line 145
    :goto_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    throw p0

    .line 149
    :cond_3
    :goto_6
    new-instance v1, Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 151
    invoke-direct {v1, p0}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    .line 154
    iput-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 156
    new-instance v1, Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 158
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 160
    invoke-direct {v1, p0, v2}, Lcom/android/server/display/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V

    .line 163
    iput-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 165
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 167
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 169
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    const-string/jumbo v2, "screen_brightness_mode"

    .line 175
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 178
    move-result-object v2

    .line 179
    const/4 v4, 0x0

    .line 180
    const/4 v5, -0x1

    .line 181
    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 187
    new-instance v1, Landroid/content/IntentFilter;

    .line 189
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    new-instance v2, Lcom/android/server/display/BrightnessTracker$Receiver;

    .line 214
    invoke-direct {v2, p0}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    .line 217
    iput-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Lcom/android/server/display/BrightnessTracker$Receiver;

    .line 219
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 221
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    const/4 v3, 0x2

    .line 227
    invoke-virtual {v4, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 232
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    invoke-static {v2}, Lcom/android/server/display/BrightnessIdleJob;->scheduleJob(Landroid/content/Context;)V

    .line 240
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 242
    monitor-enter v2

    .line 243
    :try_start_c
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 245
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 247
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 248
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 251
    :goto_7
    return-void

    .line 252
    :catchall_6
    move-exception p0

    .line 253
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 254
    throw p0

    .line 255
    :goto_8
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 256
    throw p0

    .line 257
    :goto_9
    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 258
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "BrightnessTracker"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 11
    const-wide/16 v1, 0x1e

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 21
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 23
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    const-wide/16 v1, 0xa

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 35
    move-result-wide v0

    .line 36
    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 13
    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    .line 15
    const/16 v2, 0x64

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 20
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mShouldCollectColorSample:Z

    .line 25
    const/16 v0, -0x2710

    .line 27
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 36
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 38
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    .line 42
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 44
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    new-instance v0, Lcom/android/server/display/BrightnessTracker$Injector;

    .line 54
    invoke-direct {v0}, Lcom/android/server/display/BrightnessTracker$Injector;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 59
    new-instance v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 61
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$TrackerHandler;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V

    .line 72
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 74
    const-class v0, Landroid/os/UserManager;

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/os/UserManager;

    .line 82
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 84
    return-void
.end method


# virtual methods
.method public final disableColorSampling()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 19
    const/4 v1, 0x4

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    .line 24
    iput-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 26
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 32
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 40
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 46
    :cond_1
    sget-boolean p0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 48
    if-eqz p0, :cond_2

    .line 50
    const-string p0, "BrightnessTracker"

    .line 52
    const-string/jumbo v0, "turning off color sampling"

    .line 55
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "  mEvents.size="

    .line 3
    const-string v1, "  mEventsDirty="

    .line 5
    const-string v2, "  mLastBrightness="

    .line 7
    const-string v3, "  mLastBatteryLevel="

    .line 9
    const-string v4, "  mLightSensor="

    .line 11
    const-string v5, "  mStarted="

    .line 13
    const-string v6, "BrightnessTracker state:"

    .line 15
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget-object v6, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 20
    monitor-enter v6

    .line 21
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 28
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget v3, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 92
    monitor-enter v2

    .line 93
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 120
    move-result v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 139
    const/4 v1, 0x0

    .line 140
    move v3, v1

    .line 141
    :goto_0
    array-length v4, v0

    .line 142
    if-ge v3, v4, :cond_2

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const-string v5, "    "

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    sget-object v5, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 156
    new-instance v6, Ljava/util/Date;

    .line 158
    aget-object v7, v0, v3

    .line 160
    iget-wide v7, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 162
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 165
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string v5, ", userId="

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    aget-object v5, v0, v3

    .line 191
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    const-string v5, ", "

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    aget-object v5, v0, v3

    .line 215
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 220
    const-string v5, "->"

    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    aget-object v5, v0, v3

    .line 227
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    const-string v5, ", isUserSetBrightness="

    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    aget-object v5, v0, v3

    .line 251
    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    const-string v5, ", powerBrightnessFactor="

    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    aget-object v5, v0, v3

    .line 275
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    const-string v5, ", isDefaultBrightnessConfig="

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    aget-object v5, v0, v3

    .line 299
    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    const-string v4, ", recent lux values="

    .line 313
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string v4, " {"

    .line 318
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    move v4, v1

    .line 322
    :goto_1
    aget-object v5, v0, v3

    .line 324
    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 326
    array-length v5, v5

    .line 327
    if-ge v4, v5, :cond_1

    .line 329
    if-eqz v4, :cond_0

    .line 331
    const-string v5, ", "

    .line 333
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    goto :goto_2

    .line 337
    :catchall_0
    move-exception p0

    .line 338
    goto :goto_4

    .line 339
    :cond_0
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    const-string v6, "("

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    aget-object v6, v0, v3

    .line 351
    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 353
    aget v6, v6, v4

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 358
    const-string v6, ","

    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    aget-object v6, v0, v3

    .line 365
    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 367
    aget-wide v6, v6, v4

    .line 369
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 372
    const-string v6, ")"

    .line 374
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    move-result-object v5

    .line 381
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    add-int/lit8 v4, v4, 0x1

    .line 386
    goto :goto_1

    .line 387
    :cond_1
    const-string/jumbo v4, "}"

    .line 390
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    add-int/lit8 v3, v3, 0x1

    .line 395
    goto/16 :goto_0

    .line 397
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    .line 400
    const-string v1, "  mWriteBrightnessTrackerStateScheduled="

    .line 402
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 407
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 412
    new-instance v1, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;

    .line 414
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    .line 417
    const-wide/16 v2, 0x3e8

    .line 419
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 422
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 424
    if-eqz v0, :cond_3

    .line 426
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 429
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 431
    monitor-enter p0

    .line 432
    :try_start_2
    const-string v0, "AmbientBrightnessStats:"

    .line 434
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 439
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    monitor-exit p0

    .line 443
    goto :goto_3

    .line 444
    :catchall_1
    move-exception p1

    .line 445
    monitor-exit p0

    .line 446
    throw p1

    .line 447
    :cond_3
    :goto_3
    return-void

    .line 448
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 449
    throw p0

    .line 450
    :catchall_2
    move-exception p0

    .line 451
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 452
    throw p0
.end method

.method public final enableColorSampling()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string/jumbo v1, "screen_brightness_mode"

    .line 11
    const/4 v2, -0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_4

    .line 20
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 22
    const-class v2, Landroid/os/PowerManager;

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/os/PowerManager;

    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 36
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 38
    if-nez v0, :cond_4

    .line 40
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mShouldCollectColorSample:Z

    .line 42
    if-nez v0, :cond_0

    .line 44
    goto/16 :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 48
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 56
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 66
    const/4 v2, 0x0

    .line 67
    cmpg-float v2, v0, v2

    .line 69
    const-string v4, "BrightnessTracker"

    .line 71
    if-gtz v2, :cond_1

    .line 73
    const-string p0, "Default display has a zero or negative framerate."

    .line 75
    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 79
    :cond_1
    sget-wide v5, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    .line 81
    long-to-float v2, v5

    .line 82
    mul-float/2addr v0, v2

    .line 83
    float-to-int v0, v0

    .line 84
    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 86
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 88
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 94
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    .line 97
    move-result-object v0

    .line 98
    sget-boolean v2, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 100
    if-eqz v2, :cond_2

    .line 102
    if-eqz v0, :cond_2

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    const-string v6, "Color sampling mask=0x"

    .line 108
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    .line 114
    move-result v6

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v6, " dataSpace=0x"

    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getDataspace()I

    .line 130
    move-result v6

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v6, " pixelFormat=0x"

    .line 140
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    .line 146
    move-result v6

    .line 147
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v5

    .line 158
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    .line 166
    move-result v5

    .line 167
    const/16 v6, 0x37

    .line 169
    if-ne v5, v6, :cond_3

    .line 171
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    .line 174
    move-result v0

    .line 175
    const/4 v5, 0x4

    .line 176
    and-int/2addr v0, v5

    .line 177
    if-eqz v0, :cond_3

    .line 179
    iget v0, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 181
    const-class v6, Landroid/hardware/display/DisplayManagerInternal;

    .line 183
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Landroid/hardware/display/DisplayManagerInternal;

    .line 189
    invoke-virtual {v6, v3, v1, v5, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    .line 192
    move-result v0

    .line 193
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 195
    if-eqz v2, :cond_3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v1, "turning on color sampling for "

    .line 202
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, " frames, success="

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 217
    invoke-static {v4, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 220
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 222
    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 226
    if-nez v0, :cond_4

    .line 228
    new-instance v0, Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 230
    invoke-direct {v0, p0}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    .line 233
    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 235
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 237
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 239
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 245
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 247
    invoke-virtual {v1, v0, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 250
    :cond_4
    :goto_0
    return-void
.end method

.method public final getFileWithLegacyFallback(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p0, Landroid/util/AtomicFile;

    .line 8
    new-instance v0, Ljava/io/File;

    .line 10
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 20
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/util/AtomicFile;

    .line 28
    new-instance v1, Ljava/io/File;

    .line 30
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 40
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    const-string p0, "Reading "

    .line 48
    const-string v1, " from old location"

    .line 50
    const-string v2, "BrightnessTracker"

    .line 52
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v0

    .line 56
    :cond_0
    return-object p0
.end method

.method public readEventsLocked(Ljava/io/InputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "BrightnessTracker"

    .line 5
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 7
    const-string v3, ","

    .line 9
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 12
    move-result-object v4

    .line 13
    :goto_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v5, v6, :cond_0

    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v5, v7, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    const-string/jumbo v7, "events"

    .line 31
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_c

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v7

    .line 44
    sget-wide v9, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 46
    sub-long/2addr v7, v9

    .line 47
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 50
    move-result v5

    .line 51
    :cond_1
    :goto_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 54
    move-result v9

    .line 55
    if-eq v9, v6, :cond_b

    .line 57
    const/4 v10, 0x3

    .line 58
    if-ne v9, v10, :cond_2

    .line 60
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 63
    move-result v11

    .line 64
    if-le v11, v5, :cond_b

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_5

    .line 70
    :cond_2
    :goto_2
    if-eq v9, v10, :cond_1

    .line 72
    const/4 v10, 0x4

    .line 73
    if-ne v9, v10, :cond_3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 79
    move-result-object v9

    .line 80
    const-string/jumbo v10, "event"

    .line 83
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_1

    .line 89
    new-instance v9, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 91
    invoke-direct {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 94
    const-string/jumbo v10, "nits"

    .line 97
    const/4 v11, 0x0

    .line 98
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 101
    move-result v10

    .line 102
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 105
    const-string/jumbo v10, "timestamp"

    .line 108
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 111
    move-result-wide v12

    .line 112
    invoke-virtual {v9, v12, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 115
    const-string/jumbo v10, "packageName"

    .line 118
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 125
    iget-object v10, v1, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 127
    const-string/jumbo v12, "user"

    .line 130
    invoke-interface {v4, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move-result v12

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    invoke-virtual {v10, v12}, Landroid/os/UserManager;->getUserHandle(I)I

    .line 140
    move-result v10

    .line 141
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 144
    const-string/jumbo v10, "uniqueDisplayId"

    .line 147
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v10

    .line 151
    if-nez v10, :cond_4

    .line 153
    const-string v10, ""

    .line 155
    :cond_4
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 158
    const-string v10, "batteryLevel"

    .line 160
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 163
    move-result v10

    .line 164
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 167
    const-string/jumbo v10, "nightMode"

    .line 170
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    move-result v10

    .line 174
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 177
    const-string/jumbo v10, "colorTemperature"

    .line 180
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-result v10

    .line 184
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 187
    const-string/jumbo v10, "reduceBrightColors"

    .line 190
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    move-result v10

    .line 194
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 197
    const-string/jumbo v10, "reduceBrightColorsStrength"

    .line 200
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-result v10

    .line 204
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 207
    const-string/jumbo v10, "reduceBrightColorsOffset"

    .line 210
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 213
    move-result v10

    .line 214
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 217
    const-string/jumbo v10, "lastNits"

    .line 220
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 223
    move-result v10

    .line 224
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 227
    const-string/jumbo v10, "lux"

    .line 230
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object v10

    .line 234
    const-string/jumbo v12, "luxTimestamps"

    .line 237
    invoke-interface {v4, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v12

    .line 241
    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 244
    move-result-object v10

    .line 245
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 248
    move-result-object v12

    .line 249
    array-length v13, v10

    .line 250
    array-length v14, v12

    .line 251
    if-eq v13, v14, :cond_5

    .line 253
    goto/16 :goto_1

    .line 255
    :cond_5
    array-length v13, v10

    .line 256
    new-array v14, v13, [F

    .line 258
    array-length v15, v10

    .line 259
    new-array v15, v15, [J

    .line 261
    const/4 v6, 0x0

    .line 262
    :goto_3
    if-ge v6, v13, :cond_6

    .line 264
    aget-object v17, v10, v6

    .line 266
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 269
    move-result v17

    .line 270
    aput v17, v14, v6

    .line 272
    aget-object v17, v12, v6

    .line 274
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 277
    move-result-wide v17

    .line 278
    aput-wide v17, v15, v6

    .line 280
    add-int/lit8 v6, v6, 0x1

    .line 282
    goto :goto_3

    .line 283
    :cond_6
    invoke-virtual {v9, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 286
    invoke-virtual {v9, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 289
    const-string/jumbo v6, "defaultConfig"

    .line 292
    const/4 v10, 0x0

    .line 293
    invoke-interface {v4, v11, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 296
    move-result v6

    .line 297
    invoke-virtual {v9, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 300
    const-string/jumbo v6, "powerSaveFactor"

    .line 303
    const/high16 v10, 0x3f800000    # 1.0f

    .line 305
    invoke-interface {v4, v11, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 308
    move-result v6

    .line 309
    invoke-virtual {v9, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 312
    const-string/jumbo v6, "userPoint"

    .line 315
    const/4 v10, 0x0

    .line 316
    invoke-interface {v4, v11, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 319
    move-result v6

    .line 320
    invoke-virtual {v9, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 323
    const-string/jumbo v6, "colorSampleDuration"

    .line 326
    const-wide/16 v12, -0x1

    .line 328
    invoke-interface {v4, v11, v6, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 331
    move-result-wide v14

    .line 332
    const-string/jumbo v6, "colorValueBuckets"

    .line 335
    invoke-interface {v4, v11, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    move-result-object v6

    .line 339
    cmp-long v11, v14, v12

    .line 341
    if-eqz v11, :cond_8

    .line 343
    if-eqz v6, :cond_8

    .line 345
    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 348
    move-result-object v6

    .line 349
    array-length v11, v6

    .line 350
    new-array v12, v11, [J

    .line 352
    :goto_4
    if-ge v10, v11, :cond_7

    .line 354
    aget-object v13, v6, v10

    .line 356
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 359
    move-result-wide v16

    .line 360
    aput-wide v16, v12, v10

    .line 362
    add-int/lit8 v10, v10, 0x1

    .line 364
    goto :goto_4

    .line 365
    :cond_7
    invoke-virtual {v9, v12, v14, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 368
    :cond_8
    invoke-virtual {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    .line 371
    move-result-object v6

    .line 372
    sget-boolean v9, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 374
    if-eqz v9, :cond_9

    .line 376
    new-instance v9, Ljava/lang/StringBuilder;

    .line 378
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    const-string v10, "Read event "

    .line 383
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget v10, v6, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 388
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 391
    const-string v10, " "

    .line 393
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v10, v6, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 398
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    move-result-object v9

    .line 405
    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_9
    iget v9, v6, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 410
    const/4 v10, -0x1

    .line 411
    if-eq v9, v10, :cond_a

    .line 413
    iget-wide v9, v6, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 415
    cmp-long v9, v9, v7

    .line 417
    if-lez v9, :cond_a

    .line 419
    iget-object v9, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 421
    array-length v9, v9

    .line 422
    if-lez v9, :cond_a

    .line 424
    iget-object v9, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 426
    invoke-virtual {v9, v6}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 429
    :cond_a
    const/4 v6, 0x1

    .line 430
    goto/16 :goto_1

    .line 432
    :cond_b
    return-void

    .line 433
    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    const-string v4, "Events not found in brightness tracker file "

    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v3

    .line 452
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 455
    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_5
    new-instance v3, Lcom/android/internal/util/RingBuffer;

    .line 458
    const-class v4, Landroid/hardware/display/BrightnessChangeEvent;

    .line 460
    const/16 v5, 0x64

    .line 462
    invoke-direct {v3, v4, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 465
    iput-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 467
    const-string v1, "Failed to parse brightness event"

    .line 469
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    new-instance v1, Ljava/io/IOException;

    .line 474
    const-string/jumbo v2, "failed to parse file"

    .line 477
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    throw v1
.end method

.method public final startSensorListener()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 15
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-class v0, Landroid/os/PowerManager;

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/os/PowerManager;

    .line 28
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 36
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string/jumbo v0, "screen_brightness_mode"

    .line 44
    const/4 v2, -0x2

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x1

    .line 51
    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 58
    iput-boolean v3, v2, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 60
    iget-object v3, v2, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    .line 62
    invoke-interface {v3}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 65
    move-result-wide v3

    .line 66
    iput-wide v3, v2, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 68
    iput-boolean v1, v2, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    .line 71
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 73
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 75
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 77
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 79
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mLightSensor:Landroid/hardware/Sensor;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 87
    move-result-object v0

    .line 88
    const-class v3, Landroid/hardware/SensorManager;

    .line 90
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/hardware/SensorManager;

    .line 96
    const/4 v3, 0x3

    .line 97
    invoke-virtual {v1, v2, p0, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    monitor-exit v0

    .line 103
    throw p0

    .line 104
    :cond_0
    :goto_0
    return-void
.end method

.method public final stopSensorListener()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 10
    iget-boolean v1, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    iget-object v1, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 16
    iget v2, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    .line 18
    iget-object v3, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 26
    move-result-object v3

    .line 27
    iget v4, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    .line 29
    iget-object v5, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 31
    iget-boolean v6, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 33
    if-eqz v6, :cond_0

    .line 35
    iget-object v6, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    .line 37
    invoke-interface {v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 40
    move-result-wide v6

    .line 41
    iget-wide v8, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 43
    sub-long/2addr v6, v8

    .line 44
    long-to-double v5, v6

    .line 45
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 50
    div-double/2addr v5, v7

    .line 51
    double-to-float v5, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v5, 0x0

    .line 54
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    .line 62
    const/4 v2, 0x0

    .line 63
    iput-boolean v2, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 65
    const/high16 v1, -0x40800000    # -1.0f

    .line 67
    iput v1, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    .line 70
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 72
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 74
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    const-class v0, Landroid/hardware/SensorManager;

    .line 81
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/hardware/SensorManager;

    .line 87
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 90
    iput-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    monitor-exit v0

    .line 94
    throw p0

    .line 95
    :cond_2
    :goto_3
    return-void
.end method

.method public writeEventsLocked(Ljava/io/OutputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-interface {v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 20
    const-string/jumbo v2, "events"

    .line 23
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 28
    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 34
    iget-object v5, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 36
    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 39
    sget-boolean v5, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 41
    if-eqz v5, :cond_0

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    const-string v6, "Writing events "

    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    array-length v6, v4

    .line 51
    const-string v7, "BrightnessTracker"

    .line 53
    invoke-static {v5, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 56
    :cond_0
    iget-object v5, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 58
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    move-result-wide v6

    .line 65
    sget-wide v8, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 67
    sub-long/2addr v6, v8

    .line 68
    const/4 v8, 0x0

    .line 69
    move v9, v8

    .line 70
    :goto_0
    array-length v10, v4

    .line 71
    if-ge v9, v10, :cond_8

    .line 73
    iget-object v10, v0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 75
    aget-object v11, v4, v9

    .line 77
    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 85
    move-result v10

    .line 86
    const/4 v11, -0x1

    .line 87
    if-eq v10, v11, :cond_7

    .line 89
    aget-object v11, v4, v9

    .line 91
    iget-wide v12, v11, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 93
    cmp-long v12, v12, v6

    .line 95
    if-lez v12, :cond_7

    .line 97
    iget-object v12, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 99
    invoke-virtual {v12, v11}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 102
    const-string/jumbo v11, "event"

    .line 105
    invoke-interface {v1, v3, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    aget-object v12, v4, v9

    .line 110
    iget v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 112
    const-string/jumbo v13, "nits"

    .line 115
    invoke-interface {v1, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    aget-object v12, v4, v9

    .line 120
    iget-wide v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 122
    const-string/jumbo v14, "timestamp"

    .line 125
    invoke-interface {v1, v3, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    aget-object v12, v4, v9

    .line 130
    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 132
    const-string/jumbo v13, "packageName"

    .line 135
    invoke-interface {v1, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    const-string/jumbo v12, "user"

    .line 141
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    aget-object v10, v4, v9

    .line 146
    iget-object v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    .line 148
    if-nez v10, :cond_1

    .line 150
    const-string v10, ""

    .line 152
    :cond_1
    const-string/jumbo v12, "uniqueDisplayId"

    .line 155
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    aget-object v10, v4, v9

    .line 160
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 162
    const-string v12, "batteryLevel"

    .line 164
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    aget-object v10, v4, v9

    .line 169
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 171
    const-string/jumbo v12, "nightMode"

    .line 174
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    aget-object v10, v4, v9

    .line 179
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 181
    const-string/jumbo v12, "colorTemperature"

    .line 184
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    aget-object v10, v4, v9

    .line 189
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    .line 191
    const-string/jumbo v12, "reduceBrightColors"

    .line 194
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    aget-object v10, v4, v9

    .line 199
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    .line 201
    const-string/jumbo v12, "reduceBrightColorsStrength"

    .line 204
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    aget-object v10, v4, v9

    .line 209
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    .line 211
    const-string/jumbo v12, "reduceBrightColorsOffset"

    .line 214
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    aget-object v10, v4, v9

    .line 219
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 221
    const-string/jumbo v12, "lastNits"

    .line 224
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    aget-object v10, v4, v9

    .line 229
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 231
    const-string/jumbo v12, "defaultConfig"

    .line 234
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    aget-object v10, v4, v9

    .line 239
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 241
    const-string/jumbo v12, "powerSaveFactor"

    .line 244
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    aget-object v10, v4, v9

    .line 249
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 251
    const-string/jumbo v12, "userPoint"

    .line 254
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    new-instance v10, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    new-instance v12, Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    move v13, v8

    .line 268
    :goto_1
    aget-object v14, v4, v9

    .line 270
    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 272
    array-length v14, v14

    .line 273
    const/16 v15, 0x2c

    .line 275
    if-ge v13, v14, :cond_3

    .line 277
    if-lez v13, :cond_2

    .line 279
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_2
    aget-object v14, v4, v9

    .line 287
    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 289
    aget v14, v14, v13

    .line 291
    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 294
    move-result-object v14

    .line 295
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    aget-object v14, v4, v9

    .line 300
    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 302
    aget-wide v14, v14, v13

    .line 304
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 307
    move-result-object v14

    .line 308
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v13, v13, 0x1

    .line 313
    goto :goto_1

    .line 314
    :cond_3
    const-string/jumbo v13, "lux"

    .line 317
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v10

    .line 321
    invoke-interface {v1, v3, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    const-string/jumbo v10, "luxTimestamps"

    .line 327
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object v12

    .line 331
    invoke-interface {v1, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    aget-object v10, v4, v9

    .line 336
    iget-object v12, v10, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 338
    if-eqz v12, :cond_6

    .line 340
    array-length v12, v12

    .line 341
    if-lez v12, :cond_6

    .line 343
    const-string/jumbo v12, "colorSampleDuration"

    .line 346
    iget-wide v13, v10, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 348
    invoke-interface {v1, v3, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    new-instance v10, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    move v12, v8

    .line 357
    :goto_2
    aget-object v13, v4, v9

    .line 359
    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 361
    array-length v13, v13

    .line 362
    if-ge v12, v13, :cond_5

    .line 364
    if-lez v12, :cond_4

    .line 366
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :cond_4
    aget-object v13, v4, v9

    .line 371
    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 373
    aget-wide v13, v13, v12

    .line 375
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 378
    move-result-object v13

    .line 379
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v12, v12, 0x1

    .line 384
    goto :goto_2

    .line 385
    :cond_5
    const-string/jumbo v12, "colorValueBuckets"

    .line 388
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object v10

    .line 392
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    :cond_6
    invoke-interface {v1, v3, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 400
    goto/16 :goto_0

    .line 402
    :cond_8
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 408
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 411
    return-void
.end method

.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COLOR_SAMPLE_DURATION:J

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final MAX_EVENT_AGE:J


# instance fields
.field public mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

.field public mAdaptiveBrightnessStatsTrackerStarted:Z

.field public final mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

.field public mColorSamplingEnabled:Z

.field public final mComparatorAscendingForLux:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

.field public final mComparatorDecsendingForWeight:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

.field public mEvents:Lcom/android/internal/util/RingBuffer;

.field public mEventsDirty:Z

.field public final mEventsLock:Ljava/lang/Object;

.field public mFrameRate:F

.field public final mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

.field public mLastAmbientLux:F

.field public mLastBatteryLevel:F

.field public mLastBrightness:F

.field public mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

.field public mLastBrightnessSpline:Landroid/util/Spline;

.field public final mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

.field public final mMaxBrightnessForNonHbmLux:F

.field public final mMaximumBrightnessLimitCount:[I

.field public final mMaximumBrightnessLimitLux:[F

.field public final mMaximumBrightnessSpline:Landroid/util/Spline;

.field public final mMinimumBrightnessSpline:Landroid/util/Spline;

.field public mNoFramesToSample:I

.field public mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

.field public mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

.field public mStarted:Z

.field public mTestModeEnabled:Z

.field public final mUserActivityStateListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;

.field public final mUserManager:Landroid/os/UserManager;

.field public volatile mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z


# direct methods
.method public static -$$Nest$mbackgroundStart(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "brightness_events_sec.xml"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->getFileWithLegacyFallback(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :catchall_1
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v4

    .line 43
    :try_start_3
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 44
    .line 45
    .line 46
    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 47
    .line 48
    const-string v5, "Failed to read change mEvents."

    .line 49
    .line 50
    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_0
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readAdaptiveBrightnessStats()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 65
    .line 66
    invoke-direct {v0, p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Handler;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v2, "screen_brightness_mode"

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, -0x1

    .line 87
    invoke-virtual {v3, v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    .line 91
    .line 92
    .line 93
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->registerUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    .line 107
    .line 108
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Landroid/content/IntentFilter;

    .line 132
    .line 133
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string/jumbo v3, "package"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    invoke-direct {v3, p0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;I)V

    .line 151
    .line 152
    .line 153
    iput-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 154
    .line 155
    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 156
    .line 157
    const/4 v4, 0x1

    .line 158
    invoke-direct {v3, p0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;I)V

    .line 159
    .line 160
    .line 161
    iput-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 162
    .line 163
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 164
    .line 165
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 176
    .line 177
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 188
    .line 189
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {v2}, Lcom/android/server/display/BrightnessIdleJob;->scheduleJob(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 198
    .line 199
    monitor-enter v2

    .line 200
    :try_start_5
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 201
    .line 202
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 203
    .line 204
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 205
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :catchall_2
    move-exception p0

    .line 210
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 211
    throw p0

    .line 212
    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 213
    throw p0
.end method

.method public static -$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;FZFZZJLjava/lang/String;Landroid/util/Spline;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const-string/jumbo v5, "handleBrightnessChanged: brightness: "

    .line 7
    .line 8
    .line 9
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v6

    .line 12
    :try_start_0
    iget-boolean v7, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 13
    .line 14
    if-nez v7, :cond_0

    .line 15
    .line 16
    monitor-exit v6

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    iget v7, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 23
    .line 24
    iput v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 25
    .line 26
    move-object/from16 v8, p9

    .line 27
    .line 28
    iput-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 29
    .line 30
    const-string v8, "AdaptiveBrightnessLongtermModelBuilder"

    .line 31
    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, " userInitiated: "

    .line 41
    .line 42
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    .line 58
    .line 59
    .line 60
    monitor-exit v6

    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_1
    new-instance v5, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 64
    .line 65
    invoke-direct {v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 69
    .line 70
    .line 71
    move-wide/from16 v8, p6

    .line 72
    .line 73
    invoke-virtual {v5, v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 74
    .line 75
    .line 76
    move v8, p3

    .line 77
    invoke-virtual {v5, p3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 78
    .line 79
    .line 80
    move/from16 v8, p4

    .line 81
    .line 82
    invoke-virtual {v5, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 83
    .line 84
    .line 85
    move/from16 v8, p5

    .line 86
    .line 87
    invoke-virtual {v5, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 88
    .line 89
    .line 90
    move-object/from16 v8, p8

    .line 91
    .line 92
    invoke-virtual {v5, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 93
    .line 94
    .line 95
    iget-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 96
    .line 97
    iget v9, v8, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    .line 98
    .line 99
    new-array v10, v4, [F

    .line 100
    .line 101
    aput v9, v10, v3

    .line 102
    .line 103
    iget-wide v8, v8, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    .line 104
    .line 105
    new-array v11, v4, [J

    .line 106
    .line 107
    aput-wide v8, v11, v3

    .line 108
    .line 109
    invoke-virtual {v5, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 113
    .line 114
    .line 115
    iget v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    .line 116
    .line 117
    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 121
    .line 122
    .line 123
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-interface {v3}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    iget-object v6, v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 140
    .line 141
    if-eqz v6, :cond_3

    .line 142
    .line 143
    iget v6, v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 146
    .line 147
    .line 148
    iget-object v3, v3, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .line 156
    .line 157
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 158
    .line 159
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    const-class v3, Landroid/hardware/display/ColorDisplayManager;

    .line 165
    .line 166
    invoke-virtual {v6, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroid/hardware/display/ColorDisplayManager;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 177
    .line 178
    .line 179
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 180
    .line 181
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    const-class v3, Landroid/hardware/display/ColorDisplayManager;

    .line 187
    .line 188
    invoke-virtual {v6, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Landroid/hardware/display/ColorDisplayManager;

    .line 193
    .line 194
    invoke-virtual {v3}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 199
    .line 200
    .line 201
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 202
    .line 203
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    const-class v3, Landroid/hardware/display/ColorDisplayManager;

    .line 209
    .line 210
    invoke-virtual {v6, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Landroid/hardware/display/ColorDisplayManager;

    .line 215
    .line 216
    invoke-virtual {v3}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 221
    .line 222
    .line 223
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 224
    .line 225
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    const-class v3, Landroid/hardware/display/ColorDisplayManager;

    .line 231
    .line 232
    invoke-virtual {v6, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    check-cast v3, Landroid/hardware/display/ColorDisplayManager;

    .line 237
    .line 238
    invoke-virtual {v3}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsStrength()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 243
    .line 244
    .line 245
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 246
    .line 247
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    const-class v3, Landroid/hardware/display/ColorDisplayManager;

    .line 253
    .line 254
    invoke-virtual {v6, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    check-cast v3, Landroid/hardware/display/ColorDisplayManager;

    .line 259
    .line 260
    invoke-virtual {v3}, Landroid/hardware/display/ColorDisplayManager;->getReduceBrightColorsOffsetFactor()F

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    mul-float/2addr v3, v1

    .line 265
    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 266
    .line 267
    .line 268
    iget-boolean v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 269
    .line 270
    if-eqz v1, :cond_2

    .line 271
    .line 272
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 273
    .line 274
    iget v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 280
    .line 281
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 286
    .line 287
    int-to-long v6, v3

    .line 288
    const-wide/16 v8, 0x0

    .line 289
    .line 290
    const/4 v3, 0x0

    .line 291
    move-object p3, v1

    .line 292
    move/from16 p4, v3

    .line 293
    .line 294
    move-wide/from16 p5, v6

    .line 295
    .line 296
    move-wide/from16 p7, v8

    .line 297
    .line 298
    invoke-virtual/range {p3 .. p8}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-eqz v1, :cond_2

    .line 303
    .line 304
    sget-object v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 305
    .line 306
    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    if-eqz v6, :cond_2

    .line 311
    .line 312
    invoke-virtual {v1}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    .line 313
    .line 314
    .line 315
    move-result-wide v6

    .line 316
    long-to-float v6, v6

    .line 317
    iget v7, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    .line 318
    .line 319
    div-float/2addr v6, v7

    .line 320
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 321
    .line 322
    mul-float/2addr v6, v7

    .line 323
    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    int-to-long v6, v3

    .line 332
    invoke-virtual {v5, v1, v6, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 333
    .line 334
    .line 335
    :cond_2
    invoke-virtual {v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const-string v3, "AdaptiveBrightnessLongtermModelBuilder"

    .line 340
    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v6, "Event "

    .line 344
    .line 345
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget v6, v1, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 349
    .line 350
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v6, " "

    .line 354
    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget-object v6, v1, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 359
    .line 360
    invoke-static {v5, v6, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 364
    .line 365
    monitor-enter v3

    .line 366
    :try_start_2
    iput-boolean v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 367
    .line 368
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 369
    .line 370
    invoke-virtual {v4, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    iput-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    .line 375
    .line 376
    invoke-virtual {p0, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    .line 377
    .line 378
    .line 379
    goto :goto_0

    .line 380
    :catchall_1
    move-exception v0

    .line 381
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 382
    throw v0

    .line 383
    :cond_3
    :try_start_4
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 384
    .line 385
    const-string v1, "Ignoring event due to null focusedTask."

    .line 386
    .line 387
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 388
    .line 389
    .line 390
    :catch_0
    :goto_0
    return-void

    .line 391
    :goto_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1e

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 v1, 0xa

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    sput-wide v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->COLOR_SAMPLE_DURATION:J

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 12
    .line 13
    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    .line 14
    .line 15
    const/16 v2, 0xf0

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 28
    .line 29
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    .line 32
    .line 33
    const/high16 v0, -0x40800000    # -1.0f

    .line 34
    .line 35
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 36
    .line 37
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorDecsendingForWeight:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-direct {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorAscendingForLux:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    .line 68
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 74
    .line 75
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 76
    .line 77
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Looper;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 89
    .line 90
    const-class v0, Landroid/os/UserManager;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/os/UserManager;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    .line 99
    .line 100
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 106
    .line 107
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 108
    .line 109
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;

    .line 115
    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const p2, 0x1070113

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    const v0, 0x1070124

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const v1, 0x1070121

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    array-length v1, p2

    .line 162
    new-array v1, v1, [F

    .line 163
    .line 164
    array-length v2, p2

    .line 165
    new-array v2, v2, [F

    .line 166
    .line 167
    const/4 v3, 0x0

    .line 168
    move v4, v3

    .line 169
    :goto_0
    array-length v5, p2

    .line 170
    if-ge v4, v5, :cond_0

    .line 171
    .line 172
    iget v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    .line 173
    .line 174
    aget v6, v0, v4

    .line 175
    .line 176
    mul-float/2addr v6, v5

    .line 177
    aput v6, v1, v4

    .line 178
    .line 179
    aget v6, p1, v4

    .line 180
    .line 181
    mul-float/2addr v5, v6

    .line 182
    aput v5, v2, v4

    .line 183
    .line 184
    add-int/lit8 v4, v4, 0x1

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 192
    .line 193
    invoke-static {p2, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessSpline:Landroid/util/Spline;

    .line 198
    .line 199
    array-length p1, p2

    .line 200
    const/4 v0, 0x1

    .line 201
    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    .line 206
    .line 207
    array-length p1, p1

    .line 208
    new-array p1, p1, [I

    .line 209
    .line 210
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    .line 211
    .line 212
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 11
    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    aput v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method


# virtual methods
.method public final disableColorSampling()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    .line 22
    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 45
    .line 46
    :cond_1
    const-string p0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 47
    .line 48
    const-string/jumbo v0, "turning off color sampling"

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "  mEvents.size="

    .line 2
    .line 3
    const-string v1, "  mEventsDirty="

    .line 4
    .line 5
    const-string v2, "  mLastLightData.timestamp="

    .line 6
    .line 7
    const-string v3, "  mLastLightData.lux="

    .line 8
    .line 9
    const-string v4, "  mLastBrightness="

    .line 10
    .line 11
    const-string v5, "  mLastBatteryLevel="

    .line 12
    .line 13
    const-string v6, "  mStarted="

    .line 14
    .line 15
    const-string v7, "AdaptiveBrightnessLongtermModelBuilder state:"

    .line 16
    .line 17
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v7

    .line 23
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v6, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 29
    .line 30
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    .line 46
    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 80
    .line 81
    iget v3, v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 99
    .line 100
    iget-wide v4, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    .line 101
    .line 102
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 114
    .line 115
    monitor-enter v2

    .line 116
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    move v3, v1

    .line 164
    :goto_0
    array-length v4, v0

    .line 165
    if-ge v3, v4, :cond_2

    .line 166
    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v5, "    "

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    sget-object v5, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 178
    .line 179
    new-instance v6, Ljava/util/Date;

    .line 180
    .line 181
    aget-object v7, v0, v3

    .line 182
    .line 183
    iget-wide v7, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 184
    .line 185
    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v5, ", userId="

    .line 208
    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    aget-object v5, v0, v3

    .line 213
    .line 214
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 215
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v5, ", "

    .line 232
    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    aget-object v5, v0, v3

    .line 237
    .line 238
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v5, "->"

    .line 244
    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    aget-object v5, v0, v3

    .line 249
    .line 250
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 251
    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v5, ", isUserSetBrightness="

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    aget-object v5, v0, v3

    .line 273
    .line 274
    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 275
    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string v5, ", powerBrightnessFactor="

    .line 292
    .line 293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    aget-object v5, v0, v3

    .line 297
    .line 298
    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 299
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v5, ", isDefaultBrightnessConfig="

    .line 316
    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    aget-object v5, v0, v3

    .line 321
    .line 322
    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 323
    .line 324
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string v4, " {"

    .line 335
    .line 336
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    move v4, v1

    .line 340
    :goto_1
    aget-object v5, v0, v3

    .line 341
    .line 342
    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 343
    .line 344
    array-length v5, v5

    .line 345
    if-ge v4, v5, :cond_1

    .line 346
    .line 347
    if-eqz v4, :cond_0

    .line 348
    .line 349
    const-string v5, ", "

    .line 350
    .line 351
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :catchall_0
    move-exception p0

    .line 356
    goto/16 :goto_8

    .line 357
    .line 358
    :cond_0
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v6, "("

    .line 364
    .line 365
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    aget-object v6, v0, v3

    .line 369
    .line 370
    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 371
    .line 372
    aget v6, v6, v4

    .line 373
    .line 374
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v6, ","

    .line 378
    .line 379
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    aget-object v6, v0, v3

    .line 383
    .line 384
    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 385
    .line 386
    aget-wide v6, v6, v4

    .line 387
    .line 388
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v6, ")"

    .line 392
    .line 393
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    add-int/lit8 v4, v4, 0x1

    .line 404
    .line 405
    goto :goto_1

    .line 406
    :cond_1
    const-string/jumbo v4, "}"

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    add-int/lit8 v3, v3, 0x1

    .line 413
    .line 414
    goto/16 :goto_0

    .line 415
    .line 416
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v2, "  mMinimumBrightnessSpline="

    .line 420
    .line 421
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 425
    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v2, "  mMaximumBrightnessSpline="

    .line 439
    .line 440
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessSpline:Landroid/util/Spline;

    .line 444
    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const-string v0, "  mMaximumBrightnessLimitLux=["

    .line 456
    .line 457
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    move v0, v1

    .line 461
    :goto_3
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    .line 462
    .line 463
    array-length v2, v2

    .line 464
    if-ge v0, v2, :cond_4

    .line 465
    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    .line 472
    .line 473
    aget v3, v3, v0

    .line 474
    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitLux:[F

    .line 479
    .line 480
    array-length v3, v3

    .line 481
    add-int/lit8 v3, v3, -0x1

    .line 482
    .line 483
    if-eq v0, v3, :cond_3

    .line 484
    .line 485
    const-string v3, ", "

    .line 486
    .line 487
    goto :goto_4

    .line 488
    :cond_3
    const-string v3, "]"

    .line 489
    .line 490
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    add-int/lit8 v0, v0, 0x1

    .line 501
    .line 502
    goto :goto_3

    .line 503
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 504
    .line 505
    .line 506
    const-string v0, "  mMaximumBrightnessLimitCount=["

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :goto_5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    .line 512
    .line 513
    array-length v0, v0

    .line 514
    if-ge v1, v0, :cond_6

    .line 515
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    .line 522
    .line 523
    aget v2, v2, v1

    .line 524
    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaximumBrightnessLimitCount:[I

    .line 529
    .line 530
    array-length v2, v2

    .line 531
    add-int/lit8 v2, v2, -0x1

    .line 532
    .line 533
    if-eq v1, v2, :cond_5

    .line 534
    .line 535
    const-string v2, ", "

    .line 536
    .line 537
    goto :goto_6

    .line 538
    :cond_5
    const-string v2, "]"

    .line 539
    .line 540
    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    add-int/lit8 v1, v1, 0x1

    .line 551
    .line 552
    goto :goto_5

    .line 553
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 554
    .line 555
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v1, "  mMaxBrightnessForNonHbmLux="

    .line 559
    .line 560
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    .line 564
    .line 565
    const-string v2, "  mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled="

    .line 566
    .line 567
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 572
    .line 573
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 574
    .line 575
    .line 576
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 577
    .line 578
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;

    .line 579
    .line 580
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Ljava/io/PrintWriter;)V

    .line 581
    .line 582
    .line 583
    const-wide/16 v2, 0x3e8

    .line 584
    .line 585
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 586
    .line 587
    .line 588
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 589
    .line 590
    if-eqz v0, :cond_7

    .line 591
    .line 592
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 593
    .line 594
    .line 595
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 596
    .line 597
    monitor-enter p0

    .line 598
    :try_start_2
    const-string v0, "AdaptiveBrightnessStats:"

    .line 599
    .line 600
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 604
    .line 605
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 606
    .line 607
    .line 608
    monitor-exit p0

    .line 609
    goto :goto_7

    .line 610
    :catchall_1
    move-exception p1

    .line 611
    monitor-exit p0

    .line 612
    throw p1

    .line 613
    :cond_7
    :goto_7
    return-void

    .line 614
    :goto_8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 615
    throw p0

    .line 616
    :catchall_2
    move-exception p0

    .line 617
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 618
    throw p0
.end method

.method public final enableColorSampling()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "screen_brightness_mode"

    .line 9
    .line 10
    .line 11
    const/4 v2, -0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-class v2, Landroid/os/PowerManager;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/os/PowerManager;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 37
    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    cmpg-float v2, v0, v2

    .line 74
    .line 75
    const-string v4, "AdaptiveBrightnessLongtermModelBuilder"

    .line 76
    .line 77
    if-gtz v2, :cond_1

    .line 78
    .line 79
    const-string p0, "Default display has a zero or negative framerate."

    .line 80
    .line 81
    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    sget-wide v5, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->COLOR_SAMPLE_DURATION:J

    .line 86
    .line 87
    long-to-float v2, v5

    .line 88
    mul-float/2addr v0, v2

    .line 89
    float-to-int v0, v0

    .line 90
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    .line 91
    .line 92
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v5, "Color sampling mask=0x"

    .line 109
    .line 110
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v5, " dataSpace=0x"

    .line 125
    .line 126
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getDataspace()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v5, " pixelFormat=0x"

    .line 141
    .line 142
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_2
    if-eqz v0, :cond_3

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    const/16 v5, 0x37

    .line 170
    .line 171
    if-ne v2, v5, :cond_3

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const/4 v2, 0x4

    .line 178
    and-int/2addr v0, v2

    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    .line 182
    .line 183
    const-class v5, Landroid/hardware/display/DisplayManagerInternal;

    .line 184
    .line 185
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    .line 190
    .line 191
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string/jumbo v1, "turning on color sampling for "

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, " frames, success="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 216
    .line 217
    invoke-static {v4, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 218
    .line 219
    .line 220
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 221
    .line 222
    if-eqz v0, :cond_4

    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 225
    .line 226
    if-nez v0, :cond_4

    .line 227
    .line 228
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 229
    .line 230
    invoke-direct {v0, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 231
    .line 232
    .line 233
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 234
    .line 235
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 236
    .line 237
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 244
    .line 245
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 246
    .line 247
    invoke-virtual {v1, v0, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 248
    .line 249
    .line 250
    :cond_4
    :goto_0
    return-void
.end method

.method public final getFileWithLegacyFallback(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/util/AtomicFile;

    .line 17
    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const-string p0, "Reading "

    .line 37
    .line 38
    const-string v1, " from old location"

    .line 39
    .line 40
    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 41
    .line 42
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_0
    return-object p0
.end method

.method public final readAdaptiveBrightnessStats()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;-><init>(Landroid/os/UserManager;Lcom/android/server/display/BrightnessMappingStrategy;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 11
    .line 12
    const-string v0, "adaptive_brightness_stats_sec.xml"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->getFileWithLegacyFallback(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 30
    .line 31
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->readFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    :try_start_3
    monitor-exit p0

    .line 44
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    :try_start_4
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 49
    .line 50
    .line 51
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 52
    .line 53
    const-string v2, "Failed to read ambient brightness stats."

    .line 54
    .line 55
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_0
    :goto_2
    return-void
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

    .line 2
    .line 3
    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 4
    .line 5
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 6
    .line 7
    const-string v3, ","

    .line 8
    .line 9
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    :goto_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v5, v6, :cond_0

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v5, v7, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string/jumbo v7, "events"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_b

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    sget-wide v9, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    .line 45
    .line 46
    sub-long/2addr v7, v9

    .line 47
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    :cond_1
    :goto_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eq v9, v6, :cond_a

    .line 56
    .line 57
    const/4 v10, 0x3

    .line 58
    if-ne v9, v10, :cond_2

    .line 59
    .line 60
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-le v11, v5, :cond_a

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_2
    :goto_2
    if-eq v9, v10, :cond_1

    .line 71
    .line 72
    const/4 v10, 0x4

    .line 73
    if-ne v9, v10, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    const-string/jumbo v10, "event"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    new-instance v9, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 90
    .line 91
    invoke-direct {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v10, "nits"

    .line 95
    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 103
    .line 104
    .line 105
    const-string/jumbo v10, "timestamp"

    .line 106
    .line 107
    .line 108
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v12

    .line 112
    invoke-virtual {v9, v12, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 113
    .line 114
    .line 115
    const-string/jumbo v10, "packageName"

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 123
    .line 124
    .line 125
    iget-object v10, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    .line 126
    .line 127
    const-string/jumbo v12, "user"

    .line 128
    .line 129
    .line 130
    invoke-interface {v4, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v12}, Landroid/os/UserManager;->getUserHandle(I)I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 142
    .line 143
    .line 144
    const-string/jumbo v10, "uniqueDisplayId"

    .line 145
    .line 146
    .line 147
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    if-nez v10, :cond_4

    .line 152
    .line 153
    const-string v10, ""

    .line 154
    .line 155
    :cond_4
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 156
    .line 157
    .line 158
    const-string v10, "batteryLevel"

    .line 159
    .line 160
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 165
    .line 166
    .line 167
    const-string/jumbo v10, "nightMode"

    .line 168
    .line 169
    .line 170
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 175
    .line 176
    .line 177
    const-string/jumbo v10, "colorTemperature"

    .line 178
    .line 179
    .line 180
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 185
    .line 186
    .line 187
    const-string/jumbo v10, "reduceBrightColors"

    .line 188
    .line 189
    .line 190
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 195
    .line 196
    .line 197
    const-string/jumbo v10, "reduceBrightColorsStrength"

    .line 198
    .line 199
    .line 200
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 205
    .line 206
    .line 207
    const-string/jumbo v10, "reduceBrightColorsOffset"

    .line 208
    .line 209
    .line 210
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 215
    .line 216
    .line 217
    const-string/jumbo v10, "lastNits"

    .line 218
    .line 219
    .line 220
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 225
    .line 226
    .line 227
    const-string/jumbo v10, "lux"

    .line 228
    .line 229
    .line 230
    invoke-interface {v4, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    const-string/jumbo v12, "luxTimestamps"

    .line 235
    .line 236
    .line 237
    invoke-interface {v4, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    array-length v13, v10

    .line 250
    array-length v14, v12

    .line 251
    if-eq v13, v14, :cond_5

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_5
    array-length v13, v10

    .line 256
    new-array v14, v13, [F

    .line 257
    .line 258
    array-length v15, v10

    .line 259
    new-array v15, v15, [J

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    :goto_3
    if-ge v6, v13, :cond_6

    .line 263
    .line 264
    aget-object v17, v10, v6

    .line 265
    .line 266
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 267
    .line 268
    .line 269
    move-result v17

    .line 270
    aput v17, v14, v6

    .line 271
    .line 272
    aget-object v17, v12, v6

    .line 273
    .line 274
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 275
    .line 276
    .line 277
    move-result-wide v17

    .line 278
    aput-wide v17, v15, v6

    .line 279
    .line 280
    add-int/lit8 v6, v6, 0x1

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_6
    invoke-virtual {v9, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 287
    .line 288
    .line 289
    const-string/jumbo v6, "defaultConfig"

    .line 290
    .line 291
    .line 292
    const/4 v10, 0x0

    .line 293
    invoke-interface {v4, v11, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    invoke-virtual {v9, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 298
    .line 299
    .line 300
    const-string/jumbo v6, "powerSaveFactor"

    .line 301
    .line 302
    .line 303
    const/high16 v10, 0x3f800000    # 1.0f

    .line 304
    .line 305
    invoke-interface {v4, v11, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    invoke-virtual {v9, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 310
    .line 311
    .line 312
    const-string/jumbo v6, "userPoint"

    .line 313
    .line 314
    .line 315
    const/4 v10, 0x0

    .line 316
    invoke-interface {v4, v11, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    invoke-virtual {v9, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 321
    .line 322
    .line 323
    const-string/jumbo v6, "colorSampleDuration"

    .line 324
    .line 325
    .line 326
    const-wide/16 v12, -0x1

    .line 327
    .line 328
    invoke-interface {v4, v11, v6, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 329
    .line 330
    .line 331
    move-result-wide v14

    .line 332
    const-string/jumbo v6, "colorValueBuckets"

    .line 333
    .line 334
    .line 335
    invoke-interface {v4, v11, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    cmp-long v11, v14, v12

    .line 340
    .line 341
    if-eqz v11, :cond_8

    .line 342
    .line 343
    if-eqz v6, :cond_8

    .line 344
    .line 345
    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    array-length v11, v6

    .line 350
    new-array v12, v11, [J

    .line 351
    .line 352
    :goto_4
    if-ge v10, v11, :cond_7

    .line 353
    .line 354
    aget-object v13, v6, v10

    .line 355
    .line 356
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 357
    .line 358
    .line 359
    move-result-wide v16

    .line 360
    aput-wide v16, v12, v10

    .line 361
    .line 362
    add-int/lit8 v10, v10, 0x1

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_7
    invoke-virtual {v9, v12, v14, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 366
    .line 367
    .line 368
    :cond_8
    invoke-virtual {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    new-instance v9, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v10, "Read event "

    .line 378
    .line 379
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    iget v10, v6, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 383
    .line 384
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v10, " "

    .line 388
    .line 389
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v10, v6, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    iget v9, v6, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 405
    .line 406
    const/4 v10, -0x1

    .line 407
    if-eq v9, v10, :cond_9

    .line 408
    .line 409
    iget-wide v9, v6, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 410
    .line 411
    cmp-long v9, v9, v7

    .line 412
    .line 413
    if-lez v9, :cond_9

    .line 414
    .line 415
    iget-object v9, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 416
    .line 417
    array-length v9, v9

    .line 418
    if-lez v9, :cond_9

    .line 419
    .line 420
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 421
    .line 422
    invoke-virtual {v9, v6}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_9
    const/4 v6, 0x1

    .line 426
    goto/16 :goto_1

    .line 427
    .line 428
    :cond_a
    return-void

    .line 429
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 430
    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v4, "Events not found in brightness tracker file "

    .line 437
    .line 438
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_5
    new-instance v3, Lcom/android/internal/util/RingBuffer;

    .line 453
    .line 454
    const-class v4, Landroid/hardware/display/BrightnessChangeEvent;

    .line 455
    .line 456
    const/16 v5, 0x14

    .line 457
    .line 458
    invoke-direct {v3, v4, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 459
    .line 460
    .line 461
    iput-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 462
    .line 463
    const-string v1, "Failed to parse brightness event"

    .line 464
    .line 465
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .line 467
    .line 468
    new-instance v1, Ljava/io/IOException;

    .line 469
    .line 470
    const-string/jumbo v2, "failed to parse file"

    .line 471
    .line 472
    .line 473
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    .line 475
    .line 476
    throw v1
.end method

.method public final startAdaptiveBrightnessStatsTracker()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-class v0, Landroid/os/PowerManager;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/os/PowerManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "screen_brightness_mode"

    .line 34
    .line 35
    .line 36
    const/4 v2, -0x2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastUserActivityState()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ne v0, v1, :cond_0

    .line 64
    .line 65
    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v0, v3

    .line 68
    :goto_0
    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v4, v2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 70
    .line 71
    iput-boolean v3, v4, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 72
    .line 73
    iput-boolean v3, v4, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    iput v3, v4, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-object v0, v4, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    .line 81
    .line 82
    invoke-interface {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    iput-wide v5, v4, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 87
    .line 88
    iput-boolean v1, v4, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    :cond_1
    monitor-exit v2

    .line 91
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit v2

    .line 96
    throw p0

    .line 97
    :cond_2
    :goto_1
    return-void
.end method

.method public final stopAdaptiveBrightnessStatsTracker()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 15
    .line 16
    iget v2, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 24
    .line 25
    .line 26
    iget v5, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    .line 27
    .line 28
    iget v6, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec()F

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iget-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;

    .line 37
    .line 38
    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    iput-boolean v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 57
    .line 58
    iput-boolean v2, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    iput v3, v1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 62
    .line 63
    const/high16 v1, -0x40800000    # -1.0f

    .line 64
    .line 65
    iput v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    iput-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    monitor-exit v0

    .line 72
    throw p0

    .line 73
    :cond_1
    :goto_2
    return-void
.end method

.method public final updateAdaptiveBrightnessStats(Z)V
    .locals 13

    .line 1
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "updateAdaptiveBrightnessStats: l:"

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " b:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " u: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    .line 44
    .line 45
    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 46
    .line 47
    iget-object v11, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 48
    .line 49
    iget-object v8, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 53
    .line 54
    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    iget p0, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 62
    .line 63
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 64
    .line 65
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 71
    .line 72
    .line 73
    iget v4, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    .line 74
    .line 75
    iget v5, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    .line 76
    .line 77
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec()F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;

    .line 84
    .line 85
    iget-object v9, v3, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 86
    .line 87
    invoke-virtual {v3, p0, v9}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    move-object v9, v11

    .line 92
    move v10, p1

    .line 93
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    iput v12, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    .line 100
    .line 101
    :goto_0
    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    .line 102
    .line 103
    iget-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    xor-int/2addr p1, v3

    .line 107
    iput-boolean v12, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 108
    .line 109
    iput-boolean v12, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    iput v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 113
    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    iput-wide v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 123
    .line 124
    iput-boolean v3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 125
    .line 126
    :cond_1
    iput v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    .line 127
    .line 128
    iput v2, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightness:F

    .line 129
    .line 130
    iput-object v11, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentScreenBrightnessSpline:Landroid/util/Spline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 134
    :goto_1
    monitor-exit v0

    .line 135
    throw p0
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

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-interface {v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "events"

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    .line 25
    .line 26
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 33
    .line 34
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 37
    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v6, "Writing events "

    .line 42
    .line 43
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    array-length v6, v4

    .line 47
    const-string v7, "AdaptiveBrightnessLongtermModelBuilder"

    .line 48
    .line 49
    invoke-static {v5, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    sget-wide v8, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    .line 62
    .line 63
    sub-long/2addr v6, v8

    .line 64
    const/4 v8, 0x0

    .line 65
    move v9, v8

    .line 66
    :goto_0
    array-length v10, v4

    .line 67
    if-ge v9, v10, :cond_7

    .line 68
    .line 69
    iget-object v10, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    .line 70
    .line 71
    aget-object v11, v4, v9

    .line 72
    .line 73
    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    const/4 v11, -0x1

    .line 83
    if-eq v10, v11, :cond_6

    .line 84
    .line 85
    aget-object v11, v4, v9

    .line 86
    .line 87
    iget-wide v12, v11, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 88
    .line 89
    cmp-long v12, v12, v6

    .line 90
    .line 91
    if-lez v12, :cond_6

    .line 92
    .line 93
    iget-object v12, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 94
    .line 95
    invoke-virtual {v12, v11}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v11, "event"

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v3, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    .line 103
    .line 104
    aget-object v12, v4, v9

    .line 105
    .line 106
    iget v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 107
    .line 108
    const-string/jumbo v13, "nits"

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    .line 113
    .line 114
    aget-object v12, v4, v9

    .line 115
    .line 116
    iget-wide v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 117
    .line 118
    const-string/jumbo v14, "timestamp"

    .line 119
    .line 120
    .line 121
    invoke-interface {v1, v3, v14, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    aget-object v12, v4, v9

    .line 125
    .line 126
    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    const-string/jumbo v13, "packageName"

    .line 129
    .line 130
    .line 131
    invoke-interface {v1, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    .line 133
    .line 134
    const-string/jumbo v12, "user"

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    .line 139
    .line 140
    aget-object v10, v4, v9

    .line 141
    .line 142
    iget-object v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    .line 143
    .line 144
    if-nez v10, :cond_0

    .line 145
    .line 146
    const-string v10, ""

    .line 147
    .line 148
    :cond_0
    const-string/jumbo v12, "uniqueDisplayId"

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    .line 153
    .line 154
    aget-object v10, v4, v9

    .line 155
    .line 156
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 157
    .line 158
    const-string v12, "batteryLevel"

    .line 159
    .line 160
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    .line 162
    .line 163
    aget-object v10, v4, v9

    .line 164
    .line 165
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 166
    .line 167
    const-string/jumbo v12, "nightMode"

    .line 168
    .line 169
    .line 170
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    aget-object v10, v4, v9

    .line 174
    .line 175
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 176
    .line 177
    const-string/jumbo v12, "colorTemperature"

    .line 178
    .line 179
    .line 180
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    .line 182
    .line 183
    aget-object v10, v4, v9

    .line 184
    .line 185
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    .line 186
    .line 187
    const-string/jumbo v12, "reduceBrightColors"

    .line 188
    .line 189
    .line 190
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    .line 192
    .line 193
    aget-object v10, v4, v9

    .line 194
    .line 195
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    .line 196
    .line 197
    const-string/jumbo v12, "reduceBrightColorsStrength"

    .line 198
    .line 199
    .line 200
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    .line 202
    .line 203
    aget-object v10, v4, v9

    .line 204
    .line 205
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    .line 206
    .line 207
    const-string/jumbo v12, "reduceBrightColorsOffset"

    .line 208
    .line 209
    .line 210
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    .line 212
    .line 213
    aget-object v10, v4, v9

    .line 214
    .line 215
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 216
    .line 217
    const-string/jumbo v12, "lastNits"

    .line 218
    .line 219
    .line 220
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    .line 222
    .line 223
    aget-object v10, v4, v9

    .line 224
    .line 225
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 226
    .line 227
    const-string/jumbo v12, "defaultConfig"

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    .line 232
    .line 233
    aget-object v10, v4, v9

    .line 234
    .line 235
    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 236
    .line 237
    const-string/jumbo v12, "powerSaveFactor"

    .line 238
    .line 239
    .line 240
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    .line 242
    .line 243
    aget-object v10, v4, v9

    .line 244
    .line 245
    iget-boolean v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 246
    .line 247
    const-string/jumbo v12, "userPoint"

    .line 248
    .line 249
    .line 250
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    .line 252
    .line 253
    new-instance v10, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    new-instance v12, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    move v13, v8

    .line 264
    :goto_1
    aget-object v14, v4, v9

    .line 265
    .line 266
    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 267
    .line 268
    array-length v14, v14

    .line 269
    const/16 v15, 0x2c

    .line 270
    .line 271
    if-ge v13, v14, :cond_2

    .line 272
    .line 273
    if-lez v13, :cond_1

    .line 274
    .line 275
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    :cond_1
    aget-object v14, v4, v9

    .line 282
    .line 283
    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 284
    .line 285
    aget v14, v14, v13

    .line 286
    .line 287
    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v14

    .line 291
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    aget-object v14, v4, v9

    .line 295
    .line 296
    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 297
    .line 298
    aget-wide v14, v14, v13

    .line 299
    .line 300
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v14

    .line 304
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    add-int/lit8 v13, v13, 0x1

    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_2
    const-string/jumbo v13, "lux"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    invoke-interface {v1, v3, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    .line 319
    .line 320
    const-string/jumbo v10, "luxTimestamps"

    .line 321
    .line 322
    .line 323
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    invoke-interface {v1, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    .line 329
    .line 330
    aget-object v10, v4, v9

    .line 331
    .line 332
    iget-object v12, v10, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 333
    .line 334
    if-eqz v12, :cond_5

    .line 335
    .line 336
    array-length v12, v12

    .line 337
    if-lez v12, :cond_5

    .line 338
    .line 339
    const-string/jumbo v12, "colorSampleDuration"

    .line 340
    .line 341
    .line 342
    iget-wide v13, v10, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 343
    .line 344
    invoke-interface {v1, v3, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    .line 346
    .line 347
    new-instance v10, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    move v12, v8

    .line 353
    :goto_2
    aget-object v13, v4, v9

    .line 354
    .line 355
    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 356
    .line 357
    array-length v13, v13

    .line 358
    if-ge v12, v13, :cond_4

    .line 359
    .line 360
    if-lez v12, :cond_3

    .line 361
    .line 362
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    :cond_3
    aget-object v13, v4, v9

    .line 366
    .line 367
    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 368
    .line 369
    aget-wide v13, v13, v12

    .line 370
    .line 371
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v13

    .line 375
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    add-int/lit8 v12, v12, 0x1

    .line 379
    .line 380
    goto :goto_2

    .line 381
    :cond_4
    const-string/jumbo v12, "colorValueBuckets"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-interface {v1, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    .line 390
    .line 391
    :cond_5
    invoke-interface {v1, v3, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    .line 393
    .line 394
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :cond_7
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    .line 400
    .line 401
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 402
    .line 403
    .line 404
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 405
    .line 406
    .line 407
    return-void
.end method

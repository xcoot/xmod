.class public final Lcom/android/server/media/projection/MediaProjectionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field static final MEDIA_PROJECTION_PREVENTS_REUSING_CONSENT:J = 0xfddea07L


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

.field public final mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mDeathEaters:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

.field public mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

.field public final mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field public mProjectionToken:Landroid/os/IBinder;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v2, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p0, Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :try_start_4
    throw p0

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    throw p0
.end method

.method public static -$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MediaProjectionManagerService"

    .line 6
    .line 7
    const-string v1, "Content Recording: Stopped MediaProjection to start new incoming projection"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x6

    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string/jumbo v1, "desktopmode"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-string/jumbo v1, "display"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x2

    .line 76
    if-ne v1, v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 90
    :goto_0
    if-eqz v0, :cond_2

    .line 91
    .line 92
    new-instance v1, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    invoke-direct {v2, p0, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    new-instance v0, Landroid/os/Handler;

    .line 111
    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$3;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$3;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-virtual {p1}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    .line 150
    .line 151
    check-cast v1, Landroid/util/ArrayMap;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 178
    .line 179
    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;

    .line 180
    .line 181
    const/4 v6, 0x1

    .line 182
    invoke-direct {v5, v6}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;-><init>(I)V

    .line 183
    .line 184
    .line 185
    iput-object v3, v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 186
    .line 187
    iput-object v2, v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 188
    .line 189
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    goto :goto_3

    .line 195
    :cond_4
    monitor-exit v0

    .line 196
    return-void

    .line 197
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    throw p0
.end method

.method public static -$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "MediaProjectionManagerService"

    .line 5
    .line 6
    const-string v1, "Content Recording: Stopped active MediaProjection and dispatching stop to callbacks"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    move v5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, -0x2

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 24
    .line 25
    iget v4, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 26
    .line 27
    iget v1, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousState:I

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    :goto_2
    move v8, v1

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    goto :goto_2

    .line 37
    :goto_3
    const-string v1, "MediaProjectionMetricsLogger"

    .line 38
    .line 39
    const-string/jumbo v2, "logStopped: wasCaptureInProgress="

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v1, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x7

    .line 52
    const/4 v6, -0x1

    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v1, v0

    .line 55
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIII)V

    .line 56
    .line 57
    .line 58
    if-eqz v8, :cond_2

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string/jumbo v3, "media_projection_timestamp_key"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    .line 90
    .line 91
    monitor-exit v1

    .line 92
    goto :goto_4

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_2
    :goto_4
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v0

    .line 106
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 107
    .line 108
    check-cast v1, Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/media/projection/IMediaProjectionCallback;

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    new-instance v4, Lcom/android/server/media/projection/MediaProjectionManagerService$3;

    .line 133
    .line 134
    invoke-direct {v4}, Lcom/android/server/media/projection/MediaProjectionManagerService$3;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v2, v4, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :catchall_1
    move-exception p0

    .line 144
    goto :goto_7

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    .line 146
    .line 147
    check-cast v1, Landroid/util/ArrayMap;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_4

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 174
    .line 175
    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;

    .line 176
    .line 177
    const/4 v6, 0x0

    .line 178
    invoke-direct {v5, v6}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;-><init>(I)V

    .line 179
    .line 180
    .line 181
    iput-object v3, v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 182
    .line 183
    iput-object v2, v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_4
    monitor-exit v0

    .line 190
    return-void

    .line 191
    :goto_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mInjector:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance p2, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mClock:Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    .line 10
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    .line 11
    new-instance p2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 13
    invoke-direct {p2, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 14
    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 15
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 17
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 18
    const-string/jumbo p2, "media_router"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaRouter;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 19
    new-instance p2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    invoke-direct {p2, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    .line 20
    sget-object p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    if-nez p2, :cond_2

    .line 21
    new-instance p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    new-instance v0, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v2, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 25
    new-instance v2, Ljava/io/File;

    .line 26
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "media_projection_session_id"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 29
    new-instance v4, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-direct {v4, v2}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v4, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 30
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v4, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 32
    :try_start_1
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Ljava/io/File;

    .line 34
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "media_projection_timestamp"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 37
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    invoke-static {}, Ljava/time/InstantSource;->system()Ljava/time/InstantSource;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;-><init>(Landroid/content/SharedPreferences;Ljava/time/InstantSource;)V

    sput-object v1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    sget-object p1, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    invoke-direct {p2, v0, v2, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;-><init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V

    sput-object p2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    goto :goto_4

    .line 40
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 41
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 42
    :cond_2
    :goto_4
    sget-object p1, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 43
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 44
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$2;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v2, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    .line 35
    .line 36
    check-cast v2, Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    :try_start_3
    const-string v0, "MediaProjectionManagerService"

    .line 44
    .line 45
    const-string v2, "Unable to link to death for media projection monitoring callback"

    .line 46
    .line 47
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    const/4 p0, 0x0

    .line 62
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    return-object p0

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    :try_start_5
    throw p0

    .line 67
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    throw p0
.end method

.method public createProjectionInternal(ILjava/lang/String;IZLandroid/os/UserHandle;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move-object/from16 v9, p2

    .line 3
    .line 4
    const-string v10, "MediaProjectionManagerService"

    .line 5
    .line 6
    :try_start_0
    iget-object v0, v8, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object/from16 v2, p5

    .line 15
    .line 16
    invoke-virtual {v0, v9, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v11

    .line 24
    :try_start_1
    new-instance v13, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 25
    .line 26
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    move-object v1, v13

    .line 33
    move-object v2, p0

    .line 34
    move/from16 v3, p3

    .line 35
    .line 36
    move v4, p1

    .line 37
    move-object/from16 v5, p2

    .line 38
    .line 39
    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V

    .line 40
    .line 41
    .line 42
    if-eqz p4, :cond_0

    .line 43
    .line 44
    iget-object v0, v8, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 45
    .line 46
    iget v1, v13, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 47
    .line 48
    iget-object v2, v13, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    const/16 v4, 0x2e

    .line 52
    .line 53
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    :try_start_2
    iget-object v0, v8, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    const/16 v1, 0x40

    .line 65
    .line 66
    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Package not found: "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v10, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    :goto_1
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    .line 94
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 95
    .line 96
    and-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    const-string/jumbo v0, "ro.csc.country_code"

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "CHINA"

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    :try_start_3
    const-string v0, "appops"

    .line 116
    .line 117
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    move-object v1, v0

    .line 126
    check-cast v1, Lcom/android/server/appop/AppOpsService;

    .line 127
    .line 128
    iget-object v0, v8, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/16 v7, 0x258

    .line 135
    .line 136
    const/16 v2, 0x3e8

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    move v3, p1

    .line 140
    move-object/from16 v4, p2

    .line 141
    .line 142
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v10, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    :cond_1
    :goto_2
    return-object v13

    .line 155
    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    const-string v1, "No package matching :"

    .line 162
    .line 163
    invoke-static {v1, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0
.end method

.method public final dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v1, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v4, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;

    .line 33
    .line 34
    invoke-direct {v4, v2, p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;-><init>(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public getProjectionInternal(ILjava/lang/String;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .locals 11

    .line 1
    const-string v0, "Package not found: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_3

    .line 14
    .line 15
    iget-object v4, v4, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    .line 16
    .line 17
    if-eqz v4, :cond_3

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 28
    .line 29
    iget v6, v4, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 30
    .line 31
    if-ne v6, p1, :cond_2

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    const-string v4, "MediaProjectionManagerService"

    .line 42
    .line 43
    const-string v6, "Reusing token: getProjection can reuse the current projection"

    .line 44
    .line 45
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    const/16 v6, 0x40

    .line 51
    .line 52
    invoke-virtual {v4, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception v4

    .line 60
    :try_start_3
    const-string v6, "MediaProjectionManagerService"

    .line 61
    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v6, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    :goto_0
    if-eqz v5, :cond_1

    .line 78
    .line 79
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 80
    .line 81
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 82
    .line 83
    and-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    const-string v0, "CHINA"

    .line 88
    .line 89
    const-string/jumbo v4, "ro.csc.country_code"

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    :try_start_4
    const-string v0, "appops"

    .line 103
    .line 104
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    move-object v4, v0

    .line 113
    check-cast v4, Lcom/android/server/appop/AppOpsService;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    const/16 v10, 0x258

    .line 122
    .line 123
    const/16 v5, 0x3e8

    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    move v6, p1

    .line 127
    move-object v7, p2

    .line 128
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_1
    move-exception p1

    .line 133
    :try_start_5
    const-string p2, "MediaProjectionManagerService"

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 143
    .line 144
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_2
    :try_start_6
    const-string p0, "MediaProjectionManagerService"

    .line 150
    .line 151
    const-string p1, "Reusing token: Not possible to reuse the current projection instance due to package details mismatching"

    .line 152
    .line 153
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    .line 159
    .line 160
    return-object v5

    .line 161
    :cond_3
    :goto_2
    :try_start_7
    const-string p0, "MediaProjectionManagerService"

    .line 162
    .line 163
    const-string p1, "Reusing token: Not possible to reuse the current projection instance"

    .line 164
    .line 165
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    return-object v5

    .line 173
    :goto_3
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 174
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 175
    :catchall_1
    move-exception p0

    .line 176
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    .line 178
    .line 179
    throw p0
.end method

.method public isCurrentProjection(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final monitor()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public notifyAppSelectorDisplayed(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "MediaProjectionMetricsLogger"

    .line 7
    .line 8
    const-string/jumbo v1, "logAppSelectorDisplayed"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x3

    .line 21
    const/4 v4, -0x2

    .line 22
    const/4 v5, -0x1

    .line 23
    const/4 v6, 0x0

    .line 24
    move v3, p1

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIII)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public notifyPermissionRequestCancelled(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 2
    .line 3
    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    const/4 v4, -0x2

    .line 12
    const/4 v5, -0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    move v3, p1

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public notifyPermissionRequestDisplayed(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "MediaProjectionMetricsLogger"

    .line 7
    .line 8
    const-string/jumbo v1, "logPermissionRequestDisplayed"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v4, -0x2

    .line 22
    const/4 v5, -0x1

    .line 23
    const/4 v6, 0x0

    .line 24
    move v3, p1

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIII)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public notifyPermissionRequestInitiated(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "MediaProjectionMetricsLogger"

    .line 7
    .line 8
    const-string/jumbo v1, "logInitiated"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string/jumbo v3, "media_projection_timestamp_key"

    .line 22
    .line 23
    .line 24
    const-wide/16 v4, -0x1

    .line 25
    .line 26
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    cmp-long v4, v2, v4

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    move-object v2, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    if-nez v2, :cond_1

    .line 42
    .line 43
    monitor-exit v1

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_4

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v2, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_1
    if-nez v5, :cond_2

    .line 59
    .line 60
    const/4 p0, -0x1

    .line 61
    :goto_2
    move v5, p0

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-virtual {v5}, Ljava/time/Duration;->toSeconds()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    long-to-int p0, v1

    .line 68
    goto :goto_2

    .line 69
    :goto_3
    iget-object p0, v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v2

    .line 74
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string/jumbo v3, "media_projection_session_id_key"

    .line 87
    .line 88
    .line 89
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    .line 95
    .line 96
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    const/4 v2, 0x1

    .line 98
    const/4 v4, -0x2

    .line 99
    move v3, p1

    .line 100
    move v6, p2

    .line 101
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIII)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    throw p0

    .line 108
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    throw p0
.end method

.method public notifyWindowingModeChanged(III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "MediaProjectionManagerService"

    .line 9
    .line 10
    const-string p1, "Cannot log MediaProjectionTargetChanged atom due to null projection"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 19
    .line 20
    iget v5, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v1, "MediaProjectionMetricsLogger"

    .line 26
    .line 27
    const-string/jumbo v2, "logChangedWindowingMode"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->contentToRecordToTargetType(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {p0, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->windowingModeToTargetWindowingMode(I)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/16 v2, 0x2da

    .line 53
    .line 54
    move v6, p2

    .line 55
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 56
    .line 57
    .line 58
    :goto_0
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final onStart()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string/jumbo v2, "media_projection"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string p2, "MediaProjectionManagerService"

    .line 18
    .line 19
    const-string v0, "Content Recording: Stopped MediaProjection due to user switching"

    .line 20
    .line 21
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p1

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public requestConsentForInvalidProjection()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x1040376

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string/jumbo v2, "extra_media_projection_user_consent_required"

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    const-string/jumbo v3, "extra_media_projection_package_reusing_consent"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/high16 v2, 0x10800000

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 56
    .line 57
    iget v2, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 58
    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const-string v0, "MediaProjectionManagerService"

    .line 61
    .line 62
    const-string v3, "Reusing token: Reshow dialog for due to invalid projection."

    .line 63
    .line 64
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z
    .locals 10

    .line 1
    const-string v0, "Content Recording: Stopped MediaProjection due to failing to set ContentRecordingSession - id= "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getContentToRecord()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string/jumbo p1, "none"

    .line 32
    .line 33
    .line 34
    :goto_0
    const-string v1, "MediaProjectionManagerService"

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 42
    .line 43
    iget v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "type="

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 67
    .line 68
    .line 69
    :cond_1
    monitor-exit v2

    .line 70
    const/4 p0, 0x0

    .line 71
    return p0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iput-object p1, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionMetricsLogger:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 81
    .line 82
    iget v6, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getTargetUid()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const-string v0, "MediaProjectionMetricsLogger"

    .line 92
    .line 93
    const-string/jumbo v1, "logInProgress"

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object v0, v3, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v5, 0x4

    .line 107
    const/4 v8, -0x1

    .line 108
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIII)V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    monitor-exit v2

    .line 121
    const/4 p0, 0x1

    .line 122
    return p0

    .line 123
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method

.method public final setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Reusing token: Processed consent so set the session "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "MediaProjectionManagerService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    const-string p0, "Reusing token: Failed to set session for reused consent, so stop"

    .line 40
    .line 41
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public setUserReviewGrantedConsentResult(ILandroid/media/projection/IMediaProjection;)V
    .locals 8

    .line 1
    const-string v0, "Reusing token: Ignore consent result "

    .line 2
    .line 3
    const-string v1, "Content Recording: Stopped MediaProjection due to user consent result of CANCEL - id= "

    .line 4
    .line 5
    const-string v2, "Reusing token: Handling user consent result "

    .line 6
    .line 7
    const-string v3, "Reusing token: Ignore consent result of "

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eq p1, v6, :cond_0

    .line 16
    .line 17
    if-ne p1, v5, :cond_2

    .line 18
    .line 19
    :cond_0
    if-nez p2, :cond_1

    .line 20
    .line 21
    move-object p2, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :try_start_0
    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isCurrentProjection(Landroid/os/IBinder;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    const-string p0, "MediaProjectionManagerService"

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " for a token that isn\'t current"

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    monitor-exit v4

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    const-string p0, "MediaProjectionManagerService"

    .line 65
    .line 66
    const-string p1, "Reusing token: Can\'t review consent with no ongoing projection."

    .line 67
    .line 68
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    monitor-exit v4

    .line 72
    return-void

    .line 73
    :cond_3
    iget-object p2, p2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mSession:Landroid/view/ContentRecordingSession;

    .line 74
    .line 75
    if-eqz p2, :cond_a

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/view/ContentRecordingSession;->isWaitingForConsent()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const-string p2, "MediaProjectionManagerService"

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    const/4 p2, -0x1

    .line 102
    if-eq p1, p2, :cond_8

    .line 103
    .line 104
    if-eqz p1, :cond_8

    .line 105
    .line 106
    if-eq p1, v6, :cond_7

    .line 107
    .line 108
    if-eq p1, v5, :cond_5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-nez p1, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v7, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 127
    .line 128
    :goto_1
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 129
    .line 130
    iget p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTaskId:I

    .line 131
    .line 132
    invoke-static {v7, p1}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    const/4 p1, 0x0

    .line 141
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/server/media/projection/MediaProjectionManagerService;->setReviewedConsentSessionLocked(Landroid/view/ContentRecordingSession;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 153
    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    const-string p1, "MediaProjectionManagerService"

    .line 157
    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 164
    .line 165
    iget v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    .line 166
    .line 167
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 180
    .line 181
    .line 182
    :cond_9
    :goto_2
    monitor-exit v4

    .line 183
    return-void

    .line 184
    :cond_a
    :goto_3
    const-string p0, "MediaProjectionManagerService"

    .line 185
    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p1, " if not waiting for the result."

    .line 195
    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    monitor-exit v4

    .line 207
    return-void

    .line 208
    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    throw p0
.end method

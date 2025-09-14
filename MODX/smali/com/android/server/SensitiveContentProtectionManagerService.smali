.class public final Lcom/android/server/SensitiveContentProtectionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mExemptedPackages:Landroid/util/ArraySet;

.field public mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

.field mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

.field public final mOnWindowRemovedListener:Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

.field public mProjectionActive:Z

.field public final mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

.field public mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field public final mSensitiveContentProtectionLock:Ljava/lang/Object;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$monProjectionStart(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/media/projection/MediaProjectionInfo;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v1, "projection session is exempted, package ="

    .line 6
    iget-object v2, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_4

    .line 22
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object v5

    .line 34
    const-string v6, "android.permission.RECORD_SENSITIVE_CONTENT"

    .line 36
    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 50
    move-result v2

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    move-result-object v6

    .line 63
    const-string v7, "autofill_service"

    .line 65
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    if-nez v2, :cond_2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 75
    move-result-object v2

    .line 76
    if-nez v2, :cond_3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_5

    .line 85
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 91
    :cond_4
    :goto_0
    move v2, v3

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    :goto_1
    move v2, v4

    .line 94
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    move-result-object v5

    .line 102
    const-string/jumbo v6, "disable_screen_share_protections_for_apps_and_notifications"

    .line 105
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_6

    .line 111
    move v5, v3

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    move v5, v4

    .line 114
    :goto_3
    iget-object v6, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 127
    move-result v8

    .line 128
    const-wide/16 v9, 0x0

    .line 130
    invoke-virtual {v6, v7, v9, v10, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 133
    move-result v6

    .line 134
    iget-object v7, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 136
    monitor-enter v7

    .line 137
    :try_start_0
    new-instance v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 139
    if-nez v2, :cond_7

    .line 141
    if-eqz v5, :cond_8

    .line 143
    :cond_7
    move v4, v3

    .line 144
    :cond_8
    new-instance v9, Ljava/util/Random;

    .line 146
    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 149
    invoke-virtual {v9}, Ljava/util/Random;->nextLong()J

    .line 152
    move-result-wide v9

    .line 153
    invoke-direct {v8, v6, v9, v10, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;-><init>(IJZ)V

    .line 156
    iput-object v8, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 158
    iget-wide v12, v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    .line 160
    iget v14, v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    .line 162
    iget-boolean v15, v8, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    .line 164
    const/16 v17, 0x2

    .line 166
    const/16 v11, 0x33e

    .line 168
    const/16 v16, 0x1

    .line 170
    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V

    .line 173
    if-nez v2, :cond_d

    .line 175
    if-eqz v5, :cond_9

    .line 177
    goto :goto_5

    .line 178
    :cond_9
    iput-boolean v3, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 180
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveContentMetricsBugfix()Z

    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_a

    .line 186
    iget-object v1, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 188
    iget-object v2, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 190
    iget-wide v2, v2, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    .line 192
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setBlockScreenCaptureForAppsSessionId(J)V

    .line 195
    goto :goto_4

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    goto :goto_7

    .line 198
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_b

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture()V

    .line 207
    :cond_b
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_c

    .line 213
    iget-object v1, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 215
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 218
    move-result v1

    .line 219
    if-lez v1, :cond_c

    .line 221
    iget-object v1, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 223
    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 225
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 228
    :cond_c
    monitor-exit v7

    .line 229
    goto :goto_6

    .line 230
    :cond_d
    :goto_5
    const-string v0, "SensitiveContentProtect"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", isFeatureDisabled="

    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v7

    .line 260
    :goto_6
    return-void

    .line 261
    :goto_7
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    .line 7
    new-instance p1, Ljava/lang/Object;

    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 14
    new-instance p1, Landroid/util/ArraySet;

    .line 16
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 24
    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$1;

    .line 26
    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$1;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    .line 29
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

    .line 31
    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mOnWindowRemovedListener:Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    .line 38
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 44
    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    .line 46
    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    .line 49
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/media/projection/MediaProjectionManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/pm/PackageManagerInternal;Landroid/util/ArraySet;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 9
    iput-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 11
    iput-object p3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 13
    iput-object p4, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mExemptedPackages:Landroid/util/ArraySet;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 22
    move-result-object p2

    .line 23
    iget-object p3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

    .line 25
    invoke-virtual {p1, p3, p2}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 28
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p2

    .line 40
    new-instance p3, Landroid/content/ComponentName;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p4

    .line 46
    const-class v0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    .line 48
    invoke-direct {p3, p4, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const/4 p4, -0x1

    .line 52
    invoke-virtual {p1, p2, p3, p4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    :cond_0
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 63
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mOnWindowRemovedListener:Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerOnWindowRemovedListener(Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;)V

    .line 68
    :cond_1
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const-class v0, Landroid/media/projection/MediaProjectionManager;

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    .line 18
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 20
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 26
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 28
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 34
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 37
    move-result-object v2

    .line 38
    iget-object v2, v2, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 40
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/SensitiveContentProtectionManagerService;->init(Landroid/media/projection/MediaProjectionManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/pm/PackageManagerInternal;Landroid/util/ArraySet;)V

    .line 43
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 49
    new-instance p1, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;

    .line 51
    invoke-direct {p1, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder;-><init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    .line 54
    const-string/jumbo v0, "sensitive_content_protection_service"

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionCallback:Lcom/android/server/SensitiveContentProtectionManagerService$1;

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjectionManager;->removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    .line 18
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->onProjectionEnd()V

    .line 28
    :cond_2
    return-void
.end method

.method public final onProjectionEnd()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 7
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    iget-wide v3, v1, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    .line 13
    iget v5, v1, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    .line 15
    iget-boolean v6, v1, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    .line 17
    const/4 v7, 0x2

    .line 18
    const/4 v8, 0x2

    .line 19
    const/16 v2, 0x33e

    .line 21
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V

    .line 24
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveContentImprovements()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 32
    iget-object v2, v1, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    .line 34
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 37
    move-result v2

    .line 38
    iget-object v3, v1, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    .line 40
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 43
    move-result v3

    .line 44
    iget-wide v4, v1, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    .line 46
    const/16 v1, 0x33f

    .line 48
    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->clearBlockedApps()V

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 8

    .line 1
    const-string v0, "Unexpectedly large number of sensitive windows, count: "

    .line 3
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    .line 8
    invoke-direct {v2, p3, p1, p2}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 11
    if-eqz p4, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 15
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 20
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 23
    move-result p1

    .line 24
    const/16 p2, 0x64

    .line 26
    if-le p1, p2, :cond_1

    .line 28
    const-string p1, "SensitiveContentProtect"

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    .line 56
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mProjectionActive:Z

    .line 61
    if-nez p1, :cond_2

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :cond_2
    new-instance p1, Landroid/util/ArraySet;

    .line 67
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 70
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    if-eqz p4, :cond_3

    .line 75
    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 77
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 80
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 82
    if-eqz p0, :cond_4

    .line 84
    iget v6, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    .line 86
    iget-wide v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    .line 88
    const/4 v7, 0x1

    .line 89
    const/16 v2, 0x343

    .line 91
    move v5, p3

    .line 92
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 98
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 101
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    .line 103
    if-eqz p0, :cond_4

    .line 105
    iget v6, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    .line 107
    iget-wide v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    .line 109
    const/4 v7, 0x2

    .line 110
    const/16 v2, 0x343

    .line 112
    move v5, p3

    .line 113
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 116
    :cond_4
    :goto_1
    monitor-exit v1

    .line 117
    return-void

    .line 118
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0
.end method

.method public final updateAppsThatShouldBlockScreenCapture()V
    .locals 3

    .line 1
    const-string v0, "SensitiveContentProtect"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    const-string v2, "SensitiveContentProtectionManagerService doesn\'t have access."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 3
    const-string p0, "Ranking map not initialized."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/SensitiveContentProtectionManagerService;->updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public final updateAppsThatShouldBlockScreenCapture(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 11

    .line 5
    const-string v0, "SensitiveContentProtect"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mNotificationListener:Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    const-string v3, "SensitiveContentProtectionManagerService doesn\'t have access."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    new-array v2, v1, [Landroid/service/notification/StatusBarNotification;

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveContentImprovements()Z

    move-result v3

    const-string v4, "Unable to parse null notification"

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mMediaProjectionSession:Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    if-eqz v3, :cond_2

    .line 9
    array-length v5, v2

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    if-nez v7, :cond_0

    .line 10
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 12
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 13
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 14
    iget-object v8, v3, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v8, v3, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 17
    iget-object v8, v3, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 18
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 19
    array-length v5, v2

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, v2, v6

    if-nez v7, :cond_3

    .line 20
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 21
    :cond_3
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 22
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->hasSensitiveContent()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 23
    new-instance v8, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    .line 24
    invoke-direct {v8, v7, v9, v10}, Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;-><init>(ILandroid/os/IBinder;Ljava/lang/String;)V

    move-object v9, v8

    :cond_5
    if-eqz v9, :cond_6

    .line 25
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 27
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    :cond_8
    return-void
.end method
